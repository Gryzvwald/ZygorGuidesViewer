local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L
local G = _G

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe
local Gratuity = LibStub("LibGratuity-3.0")

local ItemScore = ZGV.ItemScore
LibStub("AceHook-3.0"):Embed(ItemScore)

local item_weapon_types = ItemScore.Item_Weapon_Types
local item_armor_types = ItemScore.Item_Armor_Types
local item_gem_types = ItemScore.Item_Gem_Types

local ItemCache = {}
ItemScore.ItemCache = ItemCache

local function strip_link(itemlink)
	local _,itemstring,_ = itemlink:match("(.*)item:([0-9-:]*)(.*)")
	if itemstring then 	
		return "item:"..itemstring:gsub(":0:","::")
	end
	return false
end
ItemScore.strip_link = strip_link
	
function ItemScore:Initialise()
	-- apply lower armor types as viable
	for class,classrules in pairs(ItemScore.rules) do
		for spec,rule in pairs(classrules) do
			local stats = rule["stats"]
			local types = rule["itemtypes"]

			stats.DAMAGE_PER_SECOND = stats.DPS stats.DPS = nil -- Switch DPS to the full string.

			-- You can always wear lower tier items. Just not higher.
			if types["PLATE"] then types["MAIL"] = types["MAIL"] or -1 end
			if types["MAIL"] then types["LEATHER"] = types["LEATHER"] or -1 end
			if types["LEATHER"] then types["CLOTH"] = types["CLOTH"] or -1 end
			types["JEWELERY"] = 1 -- rings, trinkets, necklaces
		end
	end

	-- register all needed events
	self.eventFrame=CreateFrame("Frame")
	ZGV.ChainCall(self.eventFrame)
		:RegisterEvent("LOADING_SCREEN_DISABLED")

		:RegisterEvent("PLAYER_LEVEL_UP")
		:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
		:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")

		:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
		:RegisterEvent("BAG_UPDATE_DELAYED")

		:RegisterEvent("PLAYER_REGEN_DISABLED")
		:RegisterEvent("PLAYER_REGEN_ENABLED")

		:SetScript("OnEvent",function(self,event,...) ItemScore:OnEvent(event,...) end)
		:Show()

	-- create item popup
	ItemScore.Upgrades:CreatePopup()

	-- trim gem database, only keep those from expansions user owns
	ItemScore:TrimGemsDatabase()

	-- set up initial data
	ItemScore:RefreshUserData()
end

function ItemScore:OnEvent(event,arg1,arg2,...)
	if event == "PLAYER_LEVEL_UP" or event == "ACTIVE_TALENT_GROUP_CHANGED" or event == "PLAYER_SPECIALIZATION_CHANGED" then
		-- using timer as delay, since in the same frame PLAYER_LEVEL_UP player is still on previous level
		-- and to run it only once, as both PLU and PSC can fire more than once
		ItemScore:DelayedRefreshUserData()
	elseif event == "LOADING_SCREEN_DISABLED" then -- user logged in, see what upgrades we have
		ItemScore.EquipTimer = ItemScore.EquipTimer or ZGV:ScheduleTimer(function() 
			ItemScore.Upgrades:ScoreEquippedItems()
			ItemScore.Upgrades:ScanBagsForUpgrades()
		end,0.5)
	elseif event == "PLAYER_EQUIPMENT_CHANGED" or event == "BAG_UPDATE_DELAYED" then -- bags or equipment changed, see what upgrades we have
		-- on timer to run it only once, since equip/unequip fires both events, and we would get spammed
		ItemScore.EquipTimer = ItemScore.EquipTimer or ZGV:ScheduleTimer(function() 
			ItemScore.Upgrades:ScoreEquippedItems()
			ItemScore.Upgrades:ScanBagsForUpgrades()
		end,0.5)
	elseif event == "PLAYER_REGEN_DISABLED" then -- combat started, kill all upgrade popups
		if ItemScore.Upgrades.EquipPopup then ItemScore.Upgrades.EquipPopup:Hide() end
	elseif event == "PLAYER_REGEN_ENABLED" then -- combat ended, check if anything is waiting for equip
		ItemScore.Upgrades:ProcessPossibleUpgrades()
	end

	if event == "PLAYER_EQUIPMENT_CHANGED" then
		ItemScore.GearFinder:ClearResults()
	end
end

function ItemScore:DelayedRefreshUserData()
	ItemScore.RefreshTimer = ItemScore.RefreshTimer or ZGV:ScheduleTimer(function() 
		ItemScore:RefreshUserData()
		-- TODO: outleveled heirloom popup
	end,0.5)
end

function ItemScore:RefreshUserData()
	ItemScore.RefreshTimer = nil
	ItemScore:SetStatWeights()
	ItemScore.Upgrades:ScoreEquippedItems()
	ItemScore.Upgrades:ScanBagsForUpgrades()
end

function ItemScore:SetStatWeights(playerclass,playerspec,playerlevel)
	self.playerclass = playerclass or (select(2,UnitClass("player")))
	self.playerclassName = (select(1,UnitClass("player")))
	self.playerspec = playerspec or GetSpecialization() or 1 -- fallback if something goes wrong. spec is now set at level 1, even if hidden from player
	self.playerspecName = (select(2,GetSpecializationInfo(self.playerspec)))
	self.playerlevel = playerlevel or UnitLevel("player")
	self.playerfaction = UnitFactionGroup("player")

	ZGV.db.profile.gear_selected_class = select(3,UnitClass("player"))
	ZGV.db.profile.gear_selected_spec = self.playerspec

	ZGV.db.char.badupgrade[self.playerspec] = ZGV.db.char.badupgrade[self.playerspec] or {}
	ItemScore.Upgrades.BadUpgrades = ZGV.db.char.badupgrade[self.playerspec]

	-- create a copy so that the arrays in datatables are left untouched, as we will need them to handle custom weights resets
	self.ActiveRuleSet = {
		itemtypes = {},
		stats = {},
		primary = {},
	}

	-- Copy values from our rules
	for i,v in pairs(ItemScore.rules[self.playerclass][self.playerspec].itemtypes) do self.ActiveRuleSet.itemtypes[i]=v end
	for i,v in pairs(ItemScore.rules[self.playerclass][self.playerspec].stats) do self.ActiveRuleSet.stats[i]=v end
	for i,v in pairs(ItemScore.rules[self.playerclass][self.playerspec].primary) do self.ActiveRuleSet.primary[i]=v end

	-- Update stats with users profile
	local saved_vars_prefix = "gear_"..self.playerclass.."_"..tostring(self.playerspec).."_"
	for index,stat in pairs(ZGV.ItemScore.Keywords) do
		if ZGV.db.profile[saved_vars_prefix..(stat.blizz)] then
			self.ActiveRuleSet.stats[(stat.blizz)]= tonumber(ZGV.db.profile[saved_vars_prefix..(stat.blizz)] or 0)
		end
	end

	-- Set dual wield 
	self.playerDualWield = false
	self.playerDualTwohanders = false
	if self.playerlevel>=10 then
		if self.playerclass=="DEATHKNIGHT" and self.playerspec==2 then-- Frost DK
			self.playerDualWield = true
		elseif self.playerclass=="ROGUE" then -- Rogue
			self.playerDualWield = true
		elseif self.playerclass=="DEMONHUNTER" then -- Demon Hunter
			self.playerDualWield = true
		elseif self.playerclass=="WARRIOR" and self.playerspec==2 then -- Fury Warriors
			self.playerDualWield = true
			self.playerDualTwohanders = true -- titans grip is baseline now
		elseif self.playerclass=="MONK" and self.playerspec==3 then -- Windwalker Monks
			self.playerDualWield = true
		elseif self.playerclass=="SHAMAN" and self.playerspec==2 then -- Enhancement Shaman
			self.playerDualWield = true
		elseif self.playerclass=="DRUID" and (self.playerspec==2 or self.playerspec==3) then -- Feral/Guardian Druid
			self.playerDualWield = true
		end
	end

	-- Recalculate gem scores
	ItemScore:ScoreGems()

	-- if anything in user info has changed, all cached scores are no longer valid, and item stats could have changed due to level scaling
	-- wipe cached data, we are starting anew
	table.wipe(ItemCache)

	ItemScore.GearFinder:ClearResults()
end

-- converts ITEM_MOD_CRIT_RATING_SHORT to CRIT
local name_cache = {}
function ItemScore:NormaliseStatName(statname)
	if name_cache[statname] then return name_cache[statname] end

	-- primary and secondary stats
	statname = statname:gsub("_RATING_SHORT$","")
	statname = statname:gsub("_SHORT$","")
	statname = statname:gsub("^ITEM_MOD_","")

	-- tertiary stats
	statname = statname:gsub("^CR_","")

	-- element resist gear
	statname = statname:gsub("_NAME$","")
	
	-- specific case: armor
	if statname=="RESISTANCE0" then statname="ARMOR" end

	name_cache[statname] = statname
	return statname
end

function ItemScore:GetItemDetails(itemlink)
	if not itemlink then return false end
	local itemlinkfull = itemlink
	itemlink = strip_link(itemlink)
	if not itemlink then return false end

	-- if item is not yet cached, grab its data
	if not ItemCache[itemlink] then
		-- that is a new one
		stats = GetItemStats(itemlink)
		local itemName,_,itemRarity,_,itemMinLevel,_,_,_,itemEquipLoc,texture,_,itemClassID,itemSubClassID = ZGV:GetItemInfo(itemlink) 
		local itemlvl,_,baseitemlvl = GetDetailedItemLevelInfo(itemlink) 
		if not (stats and itemName) then return false end

		-- class, spec check, and level check. we need to scan tooltip for those. meh.
		local playerclass, playerspec
		Gratuity:SetHyperlink(itemlink)
		for num=1,Gratuity:NumLines() do
			local line=Gratuity:GetLine(num)

			if not line then break end
			local found_class = line:match( gsub(ITEM_CLASSES_ALLOWED,"%%s","(.*)")) 
			if found_class then playerclass = found_class end

			local found_spec = line:match( gsub(ITEM_REQ_SPECIALIZATION,"%%s","(.*)"))
			if found_spec then playerspec = found_spec end
			
			-- gg blizz. some of itemlink from encounter journal report min level 120, even if tooltips states 110. 
			local found_level = line:match( gsub(ITEM_MIN_LEVEL,"%%d","(.*)"))
			if found_level then itemMinLevel = tonumber(found_level) end
		end

		-- ok, got everything, cache it
		ItemCache[itemlink] = { 
			stats = stats, 
			itemlink = itemlink,
			itemid = ZGV.ItemLink.GetItemID(itemlink),
			itemlinkfull = itemlinkfull,
			minlevel = itemMinLevel,
			type = itemEquipLoc,
			class = itemClassID,
			subclass = itemSubClassID,
			quality = itemRarity,
			validated = false,
			texture = texture,
			itemlvl = itemlvl,
			playerclass = playerclass,
			playerspec = playerspec,
		}

		local slot_1, slot_2, twohander = ItemScore:GetValidSlots(ItemCache[itemlink])
		ItemCache[itemlink].slot = slot_1
		ItemCache[itemlink].slot_2 = slot_2
		ItemCache[itemlink].twohander = twohander

	end
	return ItemCache[itemlink]
end

-- checks what slots can this item be equipped to. automatically called as part of GetItemDetails, but may be called as standalone
-- params:
--	item - array - item object
-- returns:
--	first slot - int/false - main slot for this item
--	second slot - int/false - optional second slot for the item (offhand, rings, trinkets)
--	twohander - bool - is item twohander
local function get_slots_by_type(type)
	if type=="INVTYPE_WEAPON" then return INVSLOT_MAINHAND,INVSLOT_OFFHAND end
	if type=="INVTYPE_2HWEAPON" then return INVSLOT_MAINHAND,INVSLOT_OFFHAND end
	if type=="INVTYPE_FINGER" then return INVSLOT_FINGER1,INVSLOT_FINGER2 end
	if type=="INVTYPE_TRINKET" then return INVSLOT_TRINKET1,INVSLOT_TRINKET2 end
	if type=="INVTYPE_RANGED" then return INVSLOT_MAINHAND,false end
	if type=="INVTYPE_RANGEDRIGHT" then return INVSLOT_MAINHAND,false end
	return ItemScore.TypeToSlot[type], false
end

local rogue_offhand_only = {
	[0] = "AXE",
	[4] = "MACE",
	[7] = "SWORD",
	[13] = "FIST",
	}

function ItemScore:GetValidSlots(item)
	if not item then return end
	local s1, s2 = get_slots_by_type(item.type)

	if (self.playerclass=="ROGUE" and self.playerspec==3) and item.type=="INVTYPE_WEAPON" and rogue_offhand_only[item.subclass] then -- dual wield, 1 handed weapons are valid in offhand
		return s2, false, false
	end

	if item.type=="INVTYPE_WEAPON" and ItemScore.playerDualWield then -- dual wield, 1 handed weapons are valid in offhand
		return s1, s2, false
	end
	if item.type=="INVTYPE_2HWEAPON" and ItemScore.playerDualTwohanders then -- titans grip, 2 handed weapons are valid in offhand
		return s1, s2, true
	end
	if item.type=="INVTYPE_FINGER" then -- rings valid in both ring slots
		return s1, s2, false
	end
	if item.type=="INVTYPE_TRINKET" then -- trinkets valid in both trinket slots
		return s1, s2, false
	end
	if item.type=="INVTYPE_2HWEAPON" or item.type=="INVTYPE_RANGED" or item.type=="INVTYPE_RANGEDRIGHT" then -- two handed items go into main hand slot
		return s1, false, true
	end
	if item.type=="INVTYPE_WEAPON" and not ItemScore.playerDualWield then -- no dual wield, 1 handed weapons are valid only in mainhand
		return s1, false, false
	end

	-- rest valid in proper slots
	return s1, s2, false
end

-- calculates item score based on item stats and current weights. result is cached
-- params:
--	itemlink - string - item that we are checking
-- return:
--	score - int - -1 or score of given item
--	whitescore - int - -1 or score of given item if item is statless poor or common quality
--	success - bool - was item scored at all
--	comment - string - description
function ItemScore:GetItemScore(itemlink,verbose)
	local item = ItemScore:GetItemDetails(itemlink)
	if not item then return -1, -1, false, "no info yet" end

	local stats = item.stats
	local score,whitescore = 0, 0
	local statweights = self.ActiveRuleSet.stats

	-- calculate score based on stats
	for statname,statvalue in pairs(stats) do
		statname = ItemScore:NormaliseStatName(statname)
		local statweight = statweights[statname] or 0
		score = score + statvalue*statweight

		if verbose then table.insert(verbose,("  + |cff00ff00%.1f %s|r: |cffaaaaaa * %.1f = |cffffffff%.1f|r"):format(statvalue,statname, statweight, statvalue*statweight))  end
		
		if statname=="EMPTY_SOCKET_PRISMATIC" then
			local gemscore, gemstat, gemvalue = ItemScore:ScoreSocket(item.itemlvl)
			score = score + gemscore
		end
	end

	-- use separate score for gray/white statless items, it will only be used to compare between those types
	if score==0 and item.quality < 2 then
		whitescore = whitescore + (item.stats.RESISTANCE0_NAME or 0) -- add armor at value 1
		whitescore = whitescore + (item.stats.ITEM_MOD_DAMAGE_PER_SECOND_SHORT or 0) -- add dps at value 1
		if verbose then 
			table.insert(verbose,("  + |cff00ff00%.1f %s|r: |cffaaaaaa * %.1f = |cffffffff%.1f|r"):format(statvalue,"ARMOR", 1, item.stats.RESISTANCE0_NAME))
			table.insert(verbose,("  + |cff00ff00%.1f %s|r: |cffaaaaaa * %.1f = |cffffffff%.1f|r"):format(statvalue,"DPS", 1, item.stats.ITEM_MOD_DAMAGE_PER_SECOND_SHORT))  
		end
	end

	if item.quality==7 then
		local has_bonus, max_level = ItemScore:GetHeirloomInfo(itemlink)
		if has_bonus then score = score + 10000 end
	end

	-- record scores
	item.score = score
	item.whitescore = whitescore

	return score, whitescore, true, "scored ok"
end

-- checks if given item is a heirloom that should be protected
-- params:
--	itemlink - string - item that we are checking
-- return:
--	is_protected - bool - whenever item is heirloom not outleveled by user
--	max_level - int - up to what level this item is valid heirloom
function ItemScore:GetHeirloomInfo(itemlink)
	local item = ItemScore:GetItemDetails(itemlink)
	if not item then return false,0 end
	if item.quality ~= 7 then return false,0 end

	local itemid = item.itemid
	local max_level = 60 -- default for all looms

	-- if it is one of items with hardcoded max levels
	max_level =  ItemScore.FixedLevelHeirloom[itemid] or max_level
		
	for bonus,_ in pairs(ZGV.ItemLink.GetItemBonuses(itemlink)) do
		max_level = math.max(max_level,ItemScore.HeirloomBonuses[tonumber(bonus)])
	end
	
	return self.playerlevel < max_level, max_level
end


-- checks if item can be equipped by player at the moment. result is cached
-- params:
--	itemlink - string
--	future - anything - for checks for future upgrades. if set, level restriction is not checked
-- returns: 
--	is valid - bool - is item valid for current player
--	is final - bool - was validity really checked (and not skipped due to no gii info)
--	comment - string - verbose description of result
function ItemScore:IsValidItem(itemlink, future)
	if not itemlink then return false, false, "No itemlink" end

	local item = ItemScore:GetItemDetails(itemlink)
	if not item then return false, false, "No info" end

	if item.validated then return item.valid, true, item.validstatus end

	if not item.slot then 
		item.validated = true
		item.valid = false
		item.validstatus = "not equipment"
		return false, true, "not equipment"
	end

	local types = self.ActiveRuleSet.itemtypes
	if not types then return false, false, "No info" end

	-- is something that can be equipped
	local subclass
	if item.class == LE_ITEM_CLASS_ARMOR then
		subclass = item_armor_types[item.subclass]
	elseif item.class == LE_ITEM_CLASS_WEAPON then
		subclass = item_weapon_types[item.subclass]
	else
		item.validated = true
		item.valid = false
		item.validstatus = "not equipment"
		return false, true, "not equipment"
	end

	-- can equip at current level, cloaks are cloth, but valid for all classes
	local useble_since_level = types[subclass] or (item.type=="INVTYPE_CLOAK" and 1)

	if not useble_since_level then
		item.validated = true
		item.valid = false
		item.validstatus = ("%s is not valid for %s %s"):format(subclass,self.playerclassName,self.playerspecName)
		return false, true, item.validstatus
	elseif not future and self.playerlevel < useble_since_level then
		item.validated = true
		item.valid = false
		item.validstatus = ("required level %d to use"):format(useble_since_level)
		return false, true, item.validstatus
	end
	
	-- player class
	if item.playerclass and item.playerclass ~= self.playerclassName then
		item.validated = true
		item.valid = false
		item.validstatus = "wrong class"
		return false, true, item.validstatus
	end

	-- player spec
	if item.playerspec and item.playerspec ~= self.playerspecName then
		item.validated = true
		item.valid = false
		item.validstatus = "wrong spec"
		return false, true, item.validstatus
	end

	-- player level
	if not future and item.minlevel and item.minlevel > self.playerlevel then 
		item.validated = true
		item.valid = false
		item.validstatus = ("required level %d to equip"):format(item.minlevel)
		return false, true, item.validstatus
	end

	-- if we are here, it means that none of conditions forced early exit. wheeee have an upgrade
	item.validated = true
	item.valid = true
	item.validstatus = "ok"
	return true, true, "ok"
end

-- removes data from gem database that will not be valid for player based on owned expansions
-- executed once, during startup
-- no params
-- no returns
function ItemScore:TrimGemsDatabase()
	local expansion = GetExpansionLevel()

	-- remove gems from expansions user does not own
	for expnum,_ in pairs(ItemScore.GemStatsByExp) do
		if expnum>expansion then ItemScore.GemStatsByExp[expnum]=nil end
	end

	for gemrarity,expansions in pairs(ItemScore.GemData) do
		for expnum,_ in pairs(expansions) do
			if expnum>expansion then expansions[expnum]=nil end
		end
	end
end

-- checks gems for best stats (tbc-mop have primary and secondary stats, wod+ only secondary) 
-- then calculates gem budgets scaled to player level and scores them using best stats weight
-- no params
-- no returns
local best_stats = {}
function ItemScore:ScoreGems()
	table.wipe(best_stats)

	local statweights = ItemScore.ActiveRuleSet.stats
	local playerlevel = ItemScore.playerlevel

	-- get bests stats for gems per expansion
	for expnum,gemstats in pairs(ItemScore.GemStatsByExp) do
		local best_stat, best_weight = nil, 0
		for _,stat in pairs(gemstats) do
			local statweight = statweights[stat] or 0
			if statweight > best_weight then
				best_weight = statweight
				best_stat = stat
			end
		end
		if best_stat then best_stats[expnum] = best_stat end
	end

	-- with known best stat, score gems
	for gemrarity,expansions in pairs(ItemScore.GemData) do
		for expnum,gemdata in pairs(expansions) do
			local point_value
			for lvl,point in pairs(gemdata.points) do
				if playerlevel>=lvl then point_value=point end
			end
			gemdata.gemValue = point_value
			gemdata.gemStat = best_stats[expnum]
			gemdata.gemScore = (statweights[best_stats[expnum]] or 0)*point_value
		end
	end
end

-- checks what the best gem can be socketed into item of given itemlevel
-- params
--	ilvl - int - item level we are checking for
-- returns
--	score - int - score of found gem
--	stat - string - name of stat we suggest
--	value - int - how many points gem gives
local stat_display_names = {
	STAMINA = _G.ITEM_MOD_STAMINA_SHORT, 
	MASTERY = _G.ITEM_MOD_MASTERY_RATING_SHORT,  
	VERSATILITY = _G.ITEM_MOD_VERSATILITY,
	HASTE = _G.ITEM_MOD_HASTE_RATING_SHORT, 
	CRIT = _G.ITEM_MOD_CRIT_RATING_SHORT,
	STRENGTH = _G.ITEM_MOD_STRENGTH_SHORT, 
	AGILITY = _G.ITEM_MOD_AGILITY_SHORT, 
	INTELLECT = _G.ITEM_MOD_INTELLECT_SHORT, 
}

function ItemScore:ScoreSocket(itemlevel)
	local bestValue, bestStat, bestScore = 0,"",0
	for gemrarity,expansions in pairs(ItemScore.GemData) do
		if ZGV.db.profile.gear_maxGem>=gemrarity then
			for expnum,gemdata in pairs(expansions) do
				if itemlevel>=gemdata.ilvl then
					if gemdata.gemScore > bestScore then
						bestValue = gemdata.gemValue
						bestStat = stat_display_names[gemdata.gemStat]
						bestScore = gemdata.gemScore
					end
				end
			end
		end
	end

	return  bestScore, bestStat, bestValue
end

-- returns items equipped in requested slots, used by pointer
-- params:
--	slot - int - numeric identificator of slot to check
-- returns
--	itemlink - string - itemlink of item in first possible slot
--	itemlink2 - string, optional - itemlink of item in second possible slot
function ItemScore:GetItemInSlot(itemslot)
	local s1, s2 = get_slots_by_type(itemslot)

	local itemlink1,itemlink2
	if s1 then itemlink1 = GetInventoryItemLink("player",s1) end
	if s2 then itemlink2 = GetInventoryItemLink("player",s2) end

	return itemlink1 and itemlink1:match("item[:%d]+"),itemlink2 and itemlink2:match("item[:%d]+"), itemlink1,itemlink2
end


-- set of functions to add zygor item info to tooltip
local function get_change(old,new) 
	if old and old>0 then 
		return math.floor(((new*100/old)-100)*100)/100
	else 
		return 100 
	end 
end

local function ItemScore_SetTooltipData(tooltip, tooltipobj)
	if not ZGV.db.profile.autogear then return end
	tooltipobj=tooltipobj or GameTooltip -- we patch either gametooltip or itemreftooltip

	if not ItemScore.TooltipPatched then
		local itemName,itemlink = tooltipobj:GetItem()
		if not itemlink then ItemScore.TooltipPatched  = true return end

		local item = ItemScore:GetItemDetails(itemlink,"temporary") -- temporary item data will be purged 60 seconds after we are done with tooltip
		if not item then ItemScore.TooltipPatched  = true return end

		local fulllink = itemlink
		local itemlink = item.itemlink

		local score, white, success, scorecomment = ItemScore:GetItemScore(itemlink)
		if not success then ItemScore.TooltipPatched  = true return end

		local valid, final, validcomment = ItemScore:IsValidItem(itemlink)
		if not final then ItemScore.TooltipPatched  = true return end

		local heirloom_protected,heirloom_max = ItemScore:GetHeirloomInfo(itemlink)
		
		if ZGV.db.profile.debug_display then
			tooltip:AddLine(" ")
			tooltip:AddLine("|r|cfffe6100Zygor debug:|r ")
			tooltip:AddLine("link "..fulllink)
			tooltip:AddLine("stripped "..itemlink)
			if white>0 then
				tooltip:AddLine("white score "..white)
			else
				tooltip:AddLine("score "..score)
			end
			tooltip:AddLine("valid "..(valid and "yes " or "no ")..validcomment)
			tooltip:AddLine("protected heirloom "..(heirloom_protected and "yes " or "no ")..heirloom_max)
			tooltip:AddLine("stats:")
			for i,v in pairs(item.stats) do
				tooltip:AddLine(i.." "..v)
			end
		end
		
		local slot_1,slot_2 = item.slot, item.slot_2
		local equipped_item_1, equipped_item_2, change_1, change_2
		if slot_1 then 
			equipped_item_1 = ItemScore.Upgrades.EquippedItems[slot_1]
			change_1 = get_change(equipped_item_1.artifactscore or equipped_item_1.score,score)
		end
		if slot_2 then 
			equipped_item_2 = ItemScore.Upgrades.EquippedItems[slot_2] 
			change_2 = get_change(equipped_item_2.artifactscore or equipped_item_2.score,score)
		end

		if valid then
			if (equipped_item_1 and equipped_item_1.score) or (equipped_item_2 and equipped_item_2.score) then -- item can replace something
				local mh, oh, th
				if item.class == LE_ITEM_CLASS_WEAPON then
					ItemScore.Upgrades:ResetWeaponQueue("onlytemp")
					ItemScore.Upgrades:QueueWeapon(itemlink)
					mh, oh, th = ItemScore.Upgrades:ProcessWeaponQueue()
				end

				tooltip:AddLine(" ")
				tooltip:AddLine("|cfffe6100Zygor ItemScore:|r")
				local slotinfo1 = slot_2 and "Slot 1: " or ""
				local slotinfo2 = slot_2 and "Slot 2: " or ""

				-- item in slot 1
				if equipped_item_1.score then
					if itemlink~=equipped_item_1.itemlink then
						local comment = "|r "..slotinfo1..((change_1 > 0) and "Upgrade |cff00ff00" or "Downgrade |cffff0000")
						if ZGV.db.profile.debug then comment = comment..(score-equipped_item_1.score).." " end
						tooltip:AddLine(comment..change_1.."% ")
						if change_1<0 and (mh and mh.itemlink==itemlink) and (oh and oh.itemlink) then
							tooltip:AddLine("       Upgrade with "..oh.itemlinkfull)
						end
					else
						tooltip:AddLine("|r "..slotinfo1.."Equipped")
					end
				else
					tooltip:AddLine("|r "..slotinfo1.."Upgrade |cff00ff00100% ")
				end

				if slot_2 and equipped_item_2.score then
					if itemlink~=equipped_item_2.itemlink then
						local comment = "|r "..slotinfo2..((change_2 > 0) and "Upgrade |cff00ff00" or "Downgrade |cffff0000")
						if ZGV.db.profile.debug then comment = comment..(score-equipped_item_2.score).." " end
						tooltip:AddLine(comment..change_2.."% ")
						if change_2<0 and (mh and mh.itemlink) and (oh and oh.itemlink==itemlink) then
							tooltip:AddLine("       Upgrade with "..mh.itemlinkfull)
						end
					else
						tooltip:AddLine("|r "..slotinfo2.."Equipped")
					end
				elseif slot_2 then
					tooltip:AddLine("|r "..slotinfo2.."Upgrade |cff00ff00100% ")
				end
			elseif score>0 then
				tooltip:AddLine(" ")
				tooltip:AddLine("|cfffe6100Zygor ItemScore:|r")
				tooltip:AddLine("|r  Upgrade |cff00ff00100% ")
			end
			for statname,statvalue in pairs(item.stats) do
				if statname=="EMPTY_SOCKET_PRISMATIC" then
					local gemscore, gemstat, gemvalue = ItemScore:ScoreSocket(item.itemlvl)
					if gemscore>0 then
						tooltip:AddLine("|cfffe6100Suggested gem: |r"..gemvalue.." "..gemstat)
					end
					break
				end
			end
		else
			tooltip:AddLine(" ")
			tooltip:AddLine("|cfffe6100Zygor ItemScore:|r")
			tooltip:AddLine("|r  Not a valid item")
		end

		ItemScore.TooltipPatched  = true
	end
	if tooltipobj==ItemRefTooltip then ItemRefTooltip:Show() end -- update to new height, have to do it by hand since IRT is called just once
end
local function ItemScore_ClearTooltipData(tooltip, ...) ItemScore.TooltipPatched = false end

-- functions that support itemscore/gearfinder options panel
function ItemScore:UsesCustomWeights(class,spec)
	local statset = ZGV.ItemScore.rules[class][spec].stats
	local prefix = 'gear_'..class..'_'..spec..'_'
	local profile = ZGV.db.profile

	for index=1,#ZGV.ItemScore.Keywords do
		local statname = ZGV.ItemScore.Keywords[index].blizz

		if not profile[prefix..statname] and statset[statname] then
		
		elseif tonumber(profile[prefix..statname]) and not statset[statname] then
			return true
		elseif tonumber(profile[prefix..statname]) and tonumber(statset[statname])~=tonumber(profile[prefix..statname]) then
			return true
		end
	end
	return false
end

function ItemScore:ImportPawn(datastring)
	if not datastring then return end
	local unknowns = false

	if not datastring:find("Pawn: v1:") then 
		ZGV:Print("Import: Incorrect pawn string") 
		return
	end

	datastring = datastring:gsub(" [)]",""):gsub("(.*): ","")

	local stattable = {}
	for statstring in string.gmatch(datastring, "([^,]+)") do
		local statname,statval = statstring:match("(%w+)=([-0-9%.]+)")
		if statname and statval then
			stattable[statname] = (tonumber(statval)~=0 and statval or nil)
		end
	end

	for statname,statval in pairs(stattable) do
		if not ItemScore.Gear_PawnToZygor[statname] and not ItemScore.KeywordsPawnToRules[statname] then
			unknowns = true
			stattable[statname]=nil
		end
	end

	if unknowns then
		ZGV:Print("Import: Some of Pawn stat names are not supported by Zygor, and have been skipped.") 
	end


	local name,tag,id = GetClassInfo(ZGV.db.profile.gear_selected_class)
	local groupname = 'gear_'..tag..'_'..ZGV.db.profile.gear_selected_spec

	for index,stat in pairs(ZGV.ItemScore.Keywords) do -- wipe
		ZGV.db.profile[groupname.."_"..stat.blizz] = nil
	end

	for statname,statval in pairs(stattable) do
		if not ItemScore.Gear_PawnToZygor[statname] then
			ZGV.db.profile[groupname.."_"..ItemScore.KeywordsPawnToRules[statname]] = statval
		end
	end
end

function ItemScore:ExportPawn(datastring)
	local class, spec = ZGV.db.profile.gear_selected_class, ZGV.db.profile.gear_selected_spec
	local name,tag,id = GetClassInfo(class)
	local specname = ZGV.SpecByNumber[tag][spec] -- values taken from parser.lua classtalents
	local ruleset = ItemScore.rules[tag][spec]

	local returnstring = '( Pawn: v1: "Zygor: '
	returnstring = returnstring..name..' '..specname..'": '

	local data = {}

	for namez,namep in pairs(ItemScore.Gear_ZygorToPawn) do
		if not ruleset.itemtypes[namez] then
			table.insert(data,namep.."=-1000000")
		else
			table.insert(data,namep.."="..ruleset.itemtypes[namez])
		end
	end

	local playermask = "gear_"..tag.."_"..spec.."_"
	for index,stat in pairs(ZGV.ItemScore.Keywords) do
		table.insert(data,stat.pawn.."="..(ZGV.db.profile[playermask..(stat.blizz)] or ruleset.stats[stat.blizz] or 0))
	end
	
	returnstring = returnstring.." "..table.concat(data, ", ") 
	returnstring = returnstring..")"

	ZGV.ItemScore.lastPawnString = returnstring
end

tinsert(ZGV.startups,{"ItemScore",function(self)
	ZGV.db.char.badupgrade = ZGV.db.char.badupgrade or {}
	ItemScore:Initialise()
	ItemScore.GearFinder:Initialise()

	GameTooltip:HookScript("OnTooltipSetItem", ItemScore_SetTooltipData)
	GameTooltip:HookScript("OnTooltipCleared", ItemScore_ClearTooltipData)
	ItemRefTooltip:HookScript("OnTooltipCleared", ItemScore_ClearTooltipData)
	hooksecurefunc (GameTooltip, "SetHyperlink", function(tip) ItemScore_SetTooltipData(tip,GameTooltip) end)
	hooksecurefunc (ItemRefTooltip, "SetHyperlink", function(tip) ItemScore_SetTooltipData(tip,ItemRefTooltip) end)
end})