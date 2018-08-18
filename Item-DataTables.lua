local ZGV = ZygorGuidesViewer

local ItemScore = {}
ZGV.ItemScore = ItemScore

-- Stat keywords:
-- Only stats defined in this table are valid. Use entry in blizz when filling rule sets

ItemScore.Keywords = {
	[1]  = {blizz="AGILITY", zgvdisplay="Agility", pawn="Agility"},
	[2]  = {blizz="ATTACK_POWER", zgvdisplay="Attack Power", pawn="Ap"},
	[3]  = {blizz="ARMOR", zgvdisplay="Armor", pawn="Armor"}, -- base armor on gear
	[4]  = {blizz="AVOIDANCE", zgvdisplay="Avoidance", pawn="Avoidance"},
	[5]  = {blizz="CRIT", zgvdisplay="Crit", pawn="CritRating"},
	[6]  = {blizz="DAMAGE_PER_SECOND", zgvdisplay="Dps", pawn="Dps"},
	[7]  = {blizz="HASTE", zgvdisplay="Haste", pawn="HasteRating"},
	[8]  = {blizz="STURDINESS", zgvdisplay="Indestructible", pawn="Indestructible"},
	[9]  = {blizz="INTELLECT", zgvdisplay="Intellect", pawn="Intellect"},
	[10] = {blizz="LIFESTEAL", zgvdisplay="Leech", pawn="Leech"},
	[11] = {blizz="MASTERY", zgvdisplay="Mastery", pawn="MasteryRating"},
	[12] = {blizz="SPEED", zgvdisplay="Movement Speed", pawn="MovementSpeed"},
	[13] = {blizz="RESILIENCE", zgvdisplay="Resilience", pawn="ResilienceRating"},
	[14] = {blizz="WEAPONSPEED", zgvdisplay="Weapon Speed", pawn="Speed"},
	[15] = {blizz="SPELL_POWER", zgvdisplay="Spell Power", pawn="SpellPower"},
	[16] = {blizz="STAMINA", zgvdisplay="Stamina", pawn="Stamina"},
	[17] = {blizz="STRENGTH", zgvdisplay="Strength", pawn="Strength"},
	[18] = {blizz="VERSATILITY", zgvdisplay="Versatility", pawn="Versatility"},
}

-- Gear keywords:
-- Only gear defined in this table are valid. Use second entry when filling item sets

ItemScore.Gear_PawnToZygor = {
	IsCloth="CLOTH",
	IsLeather="LEATHER",
	IsMail="MAIL",
	IsPlate="PLATE",
	IsShield="SHIELD",
	IsAxe="AXE",
	Is2HAxe="TH_AXE",
	IsBow="BOW",
	IsCrossbow="CROSSBOW",
	IsDagger="DAGGER",
	IsFist="FIST",
	IsGun="GUN",
	IsMace="MACE",
	Is2HMace="TH_MACE",
	IsPolearm="TH_POLE",
	IsStaff="TH_STAFF",
	IsSword="SWORD",
	Is2HSword="TH_SWORD",
	IsWand="WAND",
	IsOffHand="OFFHAND",
	IsFrill="MISCARM",
	IsWarglaive="WARGLAIVE",
}

ItemScore.rules = {
	["DEATHKNIGHT"] = {
		--PLATE is at 1 because DKs start at level 55
		[1] = { --BLOOD
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=25.84, STAMINA=25.84, VERSATILITY=14.09, HASTE=12.81, MASTERY=12.56, CRIT=11.67 },
		},
		[2] = { --FROST
			itemtypes={ AXE=1, SWORD=1, MACE=1, PLATE=1 },
			stats = { STRENGTH=1.48, MASTERY=0.89, HASTE=0.77, CRIT=0.76, VERSATILITY=0.74 },
		},
		[3] = { --UNHOLY
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=1.45, MASTERY=0.87, CRIT=0.83, HASTE=0.80, VERSATILITY=0.78 },
		}
	},
	["DEMONHUNTER"] = {
		[1] = { -- HAVOC
			itemtypes={ WARGLAIVE=1, DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=1, LEATHER=1 },
			stats = { AGILITY=1.65, HASTE=0.98, CRIT=0.84, VERSATILITY=0.83, MASTERY=0.74 },
		},
		[2] = { -- VENGEANCE
			itemtypes={ WARGLAIVE=1,DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=1, LEATHER=1 },
			stats = {AGILITY=25.84, STAMINA=25.84, HASTE=14.09, VERSATILITY=12.81, MASTERY=12.56, CRIT=11.67 },
		},
	},
	["DRUID"] = {
		[1] = { --BALANCE
			itemtypes={ DAGGER=1, MACE=1, MISCARM=1, TH_STAFF=1, LEATHER=1 },
			stats = { INTELLECT=1.47, HASTE=0.98, CRIT=0.81, VERSATILITY=0.78 , MASTERY=0.66 },
		},
		[2] = { --FERAL
			itemtypes={ TH_POLE=1, TH_STAFF=1, TH_MACE=1, LEATHER=1 },
			stats = { AGILITY=1.18, HASTE=1.10, CRIT=0.68, VERSATILITY=0.61, MASTERY=0.55 },
		},
		[3] = { --GUARDIAN
			itemtypes={ TH_POLE=1,TH_STAFF=1, TH_MACE=1, LEATHER=1 },
			stats = { AGILITY=25.84, STAMINA=25.84, MASTERY=14.09, VERSATILITY=12.81, HASTE=12.56, CRIT=11.67 },
		},
		[4] = { --RESTORATION
			itemtypes={ DAGGER=1,MACE=1,MISCARM=1, TH_STAFF=1, LEATHER=1 },
			stats = { INTELLECT=1.27, HASTE=0.75, CRIT=0.66, VERSATILITY=0.63 , MASTERY=0.39 },
		}
	},
	["HUNTER"] = {
		[1] = { -- BEAST MASTERY
			itemtypes={BOW=1, CROSSBOW=1, GUN=1, MAIL=1 },
			stats = { AGILITY=1.37, MASTERY=0.88, CRIT=0.80, HASTE=0.71, VERSATILITY=0.66 },
		},
		[2] = { -- MARKSMANSHIP
			itemtypes={BOW=1, CROSSBOW=1, GUN=1, MAIL=1 },
			stats = { AGILITY=1.22, MASTERY=0.74, HASTE=0.73, CRIT=0.72, VERSATILITY=0.62 },
		},
		[3] = { -- SURVIVAL
			itemtypes={AXE=1, SWORD=1, DAGGER=1, FIST=1, TH_AXE=1, TH_SWORD=1, TH_STAFF=1, TH_POLE=1, MAIL=1 },
			stats = { AGILITY=1.48, HASTE=1.06, CRIT=0.83, VERSATILITY=0.75, MASTERY=0.67 },
		},
	},
	["MAGE"] = {
		[1] = { -- Arcane
			itemtypes={ TH_STAFF=2, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=1.71, CRIT=0.91, VERSATILITY=0.90, HASTE=0.84, MASTERY=0.80 },
		},
		[2] = { -- Fire
			itemtypes={ TH_STAFF=2, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=1.62, MASTERY=0.93, VERSATILITY=0.87, HASTE=0.86, CRIT=0.83 },
		},
		[3] = { -- Frost
			itemtypes={ TH_STAFF=2, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=1.75, HASTE=0.98, CRIT=0.95, VERSATILITY=0.92 , MASTERY=0.91 },
		}
	},
	["MONK"] = {
		[1] = { --BREWMASTER-TANK
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, LEATHER=1 },
			stats = { AGILITY=25.84, STAMINA=25.84, VERSATILITY=14.09, CRIT=14.09, MASTERY=12.81, HASTE=12.56 },
		},
		[2] = { --MISTWEAVER-HEAL
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, LEATHER=1 },
			stats = { INTELLECT=1.27, CRIT=0.75, VERSATILITY=0.66, HASTE=0.63, MASTERY=0.39 },
		},
		[3] = { --WINDWALKER-DPS
			itemtypes={ FIST=1, AXE=1, SWORD=1, MACE=1, LEATHER=1 },
			stats = { AGILITY=1.29, VERSATILITY=0.88, HASTE=0.84, MASTERY=0.75, CRIT=0.69 },
		}
	},
	["PALADIN"] = {
		[1] = { --HOLY
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, AXE=1, MACE=1, SWORD=1, MISCARM=1, PLATE=1 },
			stats = { INTELLECT=1.20, CRIT=0.77, HASTE=0.75, VERSATILITY=0.66, MASTERY=0.01 },
		},
		[2] = { --PROTECTION
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, AXE=1, MACE=1, SWORD=1, SHIELD=1, PLATE=1 },
			stats = { STRENGTH=25.84, STAMINA=25.84, HASTE=14.09, MASTERY=13.81, VERSATILITY=11.56, CRIT=9.67 },
		},
		[3] = { --RETRIBUTION
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=1.59, HASTE=1.16, VERSATILITY=0.90, MASTERY=0.88, CRIT=0.87 },
		}
	},
	["PRIEST"] = {
		[1] = { -- DISCIPLINE
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=2, WAND=1, MISCARM=1, CLOTH=1 },
			stats = {  INTELLECT=0.69, HASTE=0.42, CRIT=0.38, VERSATILITY=0.34, MASTERY=0.12 },
		},
		[2] = { -- HOLY
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=2, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.27, CRIT=0.75, VERSATILITY=0.66, HASTE=0.63, MASTERY=0.39 },
		},
		[3] = { --SHADOW
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=2, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.49, HASTE=1.40, CRIT=0.97, MASTERY=0.81, VERSATILITY=0.79 },
		}
	},
	["ROGUE"] = {
		[1] = { --ASSASSINATION
			itemtypes={ DAGGER=2,LEATHER=1 },
			stats = { AGILITY=1.53, HASTE=1.13, CRIT=0.98, MASTERY=0.94, VERSATILITY=0.78 },
		},
		[2] = { --OUTLAW
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,SWORD=2, LEATHER=1 },
			stats = { AGILITY=1.48, HASTE=0.88, CRIT=0.78, VERSATILITY=0.73, MASTERY=0.70 },
		},
		[3] = { --SUBTLETY
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,SWORD=2, LEATHER=1 },
			stats = { AGILITY=1.59, CRIT=0.89, MASTERY=0.88, HASTE=0.87, VERSATILITY=0.80 },
		}
	},
	["SHAMAN"] = {
		[1] = { -- ELEMENTAL
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, MISCARM=1, SHIELD=1, LEATHER=1, MAIL=1 },
			stats = { INTELLECT=1.58, HASTE=1.01, MASTERY=0.98, CRIT=0.92, VERSATILITY=0.80 },
		},
		[2] = { -- ENHANCEMENT:
			itemtypes={ DAGGER=2, FIST=2, AXE=2, MACE=2, MISCARM=1, LEATHER=1, MAIL=1 },
			stats = { AGILITY=1.62, HASTE=1.10, CRIT=0.92, MASTERY=0.82, VERSATILITY=0.80 },
		},
		[3] = { -- RESTORATION
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, MISCARM=1, SHIELD=1, LEATHER=1, MAIL=1 },
			stats = { INTELLECT=1.27, CRIT=0.75, VERSATILITY=0.66, HASTE=0.63, MASTERY=0.39 },
		}
	},
	["WARLOCK"] = {
		[1] = { --AFFLICTION
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.50, HASTE=1.16, MASTERY=0.96, VERSATILITY=0.83, CRIT=0.82  },
		},
		[2] = { --DEMONOLOGY
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.49, HASTE=0.82, CRIT=0.82, VERSATILITY=0.78, MASTERY=0.77  },
		},
		[3] = { --DESTRUCTION
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.45, HASTE=0.95, MASTERY=0.95, CRIT=0.88, VERSATILITY=0.75  },
		}
	},
	["WARRIOR"] = {
		[1] = { --ARMS
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=1.31, CRIT=1.02, HASTE=0.86, VERSATILITY=0.86, MASTERY=0.15 },
		},
		[2] = { --FURY
			itemtypes={ TH_POLE=1, TH_AXE=10, TH_MACE=10, TH_SWORD=10, DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, PLATE=1 },  -- duals...
			stats = { STRENGTH=1.14, HASTE=1.00, MASTERY=0.86, CRIT=0.82, VERSATILITY=0.80 },
		},
		[3] = { --PROT
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, SHIELD=1, PLATE=1, SHIELD=1 },
			stats = { STRENGTH=25.84, STAMINA=25.84, HASTE=14.09, MASTERY=12.81, VERSATILITY=12.56, CRIT=11.67 },
		}
	},
}

ItemScore.possEquipSlots = {
	INVTYPE_WEAPON = 1,
		INVTYPE_WEAPONMAINHAND = 1,
			INVTYPE_RANGEDRIGHT = 1,
			INVTYPE_2HWEAPON = 1,
			INVTYPE_RANGED = 1,
		INVTYPE_WEAPONOFFHAND = 1,
			INVTYPE_SHIELD = 1,
			INVTYPE_HOLDABLE = 1,

	INVTYPE_HEAD = 1,
	INVTYPE_NECK = 1,
	INVTYPE_SHOULDER = 1,
	INVTYPE_CLOAK = 1,
	INVTYPE_CHEST = 1,
		INVTYPE_ROBE = 1,
	INVTYPE_WRIST = 1,
	INVTYPE_HAND = 1,
	INVTYPE_WAIST = 1,
	INVTYPE_LEGS = 1,
	INVTYPE_FEET = 1,
	INVTYPE_FINGER = 1,
	INVTYPE_TRINKET = 1,
}

ItemScore.HeirloomNoExpBonusSlot = { -- hlooms in those slots do not have exp bonus
	INVTYPE_WEAPON = true,
	INVTYPE_WEAPONMAINHAND = true,
	INVTYPE_RANGEDRIGHT = true,
	INVTYPE_2HWEAPON = true,
	INVTYPE_RANGED = true,
	INVTYPE_WEAPONOFFHAND = true,
	INVTYPE_SHIELD = true,
	INVTYPE_HOLDABLE = true,
	INVTYPE_NECK = true,
	INVTYPE_TRINKET = true,
	}

ItemScore.FixedLevelHeirloom = {
	-- Garrosh weapons
	[104399]=100, [104400]=100, [104403]=100, [104405]=100, [104406]=100, [104407]=100, [104408]=100, 
	[104409]=100, [105670]=100, [105673]=100, [105674]=100, [105676]=100, [105677]=100, [105679]=100, 
	[105680]=100, [105683]=100, [105684]=100, [105685]=100, [105686]=100, [105687]=100, [105688]=100,
	[105689]=100, [105690]=100, [105691]=100, [105692]=100, [105693]=100, 
	-- 6.2 trinkets
	[126948]=100, [126949]=100, [128318]=100,
	-- 6.2.3 mythic dungeon trinkets
	[133585]=110, [133595]=110, [133596]=110, [133597]=110, [133598]=110,
	}

ItemScore.HeirloomBonuses = { -- Max level depends on bonus
	[582] = 90,
	[583] = 100,
	[3592] = 110,
	[3617] = 110,
	}
setmetatable(ItemScore.HeirloomBonuses,{__index=function(t,index) return 60 end}) 

ItemScore.GemMatchesSocket = {
	BLUE = {BLUE=true,PRISMATIC=true},
	GREEN = {BLUE=true,YELLOW=true,PRISMATIC=true},
	META = {META=true},
	ORANGE = {RED=true,YELLOW=true,PRISMATIC=true},
	PURPLE = {BLUE=true,RED=true,PRISMATIC=true},
	RED = {RED=true,PRISMATIC=true},
	YELLOW = {YELLOW=true,PRISMATIC=true},
	PRISMATIC = {BLUE=true,RED=true,YELLOW=true,PRISMATIC=true},
}

-- Best gems of given combinations, per gem colour, per ilvl required
ItemScore.GemData = {
	[0] = {
		["BLUE"] = {
			[34831]={STAMINA=15},
			[40125]={CRIT=20},
			[40120]={SPIRIT=20},
		},
		["GREEN"] = {
			[40166]={CRIT=10,DODGE=10},
			[40177]={CRIT=10,HASTE=10},
			[40171]={CRIT=10,SPIRIT=10},
			[40165]={CRIT=10,STAMINA=8},
			[40167]={DODGE=10,STAMINA=8},
			[40169]={HASTE=10,STAMINA=8},
			[40095]={CRIT=8,SPIRIT=8},
		},
		["META"] = {
			[32409]={AGILITY=12},
			[35503]={INTELLECT=12},
			[41380]={STAMINA=16},
			[41385]={HASTE=21},
			[41376]={SPIRIT=21},
			[25898]={DODGE=24},
			[25890]={CRIT=28},
		},
		["ORANGE"] = {
			[40160]={DODGE=10,PARRY=10},
			[40163]={HASTE=10,DODGE=10},
			[40147]={AGILITY=5,CRIT=10},
			[40150]={AGILITY=5,HASTE=10},
			[40152]={INTELLECT=5,CRIT=10},
			[40155]={INTELLECT=5,HASTE=10},
			[40142]={STRENGTH=5,CRIT=10},
			[40144]={STRENGTH=5,DODGE=10},
			[40146]={STRENGTH=5,HASTE=10},
		},
		["PURPLE"] = {
			[40162]={HASTE=10,CRIT=10},
			[40141]={HASTE=10,STAMINA=8},
			[40139]={PARRY=10,STAMINA=8},
			[40157]={AGILITY=5,CRIT=10},
			[40130]={AGILITY=5,STAMINA=8},
			[40153]={INTELLECT=5,CRIT=10},
			[40133]={INTELLECT=5,SPIRIT=10},
			[40164]={INTELLECT=5,STAMINA=8},
			[40143]={STRENGTH=5,CRIT=10},
			[40129]={STRENGTH=5,STAMINA=8},
		},
		["RED"] = {
			[40112]={AGILITY=10},
			[40113]={INTELLECT=10},
			[40111]={STRENGTH=10},
			[40118]={HASTE=20},
			[40116]={PARRY=20},
		},
		["YELLOW"] = {
			[40124]={CRIT=20},
			[40115]={DODGE=20},
			[40128]={HASTE=20},
		},
	},
	[285] = {
		["BLUE"] = {
			[52242]={STAMINA=12},
			[52235]={CRIT=16},
			[52244]={SPIRIT=16},
		},
		["GREEN"] = {
			[52135]={CRIT=20},
			[52223]={CRIT=8,STAMINA=6},
			[52233]={DODGE=8,STAMINA=6},
			[52227]={DODGE=8,CRIT=8},
			[52218]={HASTE=8,STAMINA=6},
			[52225]={HASTE=8,CRIT=8},
			[52231]={MASTERY=8,STAMINA=6},
			[52237]={MASTERY=8,CRIT=8},
			[52250]={MASTERY=8,SPIRIT=8},
		},
		["META"] = {
			[68778]={AGILITY=11},
			[52296]={INTELLECT=11},
			[68779]={STRENGTH=11},
			[52293]={STAMINA=16},
			[52294]={STAMINA=16},
			[52291]={CRIT=22},
			[52289]={MASTERY=22},
			[52297]={SPIRIT=22},
		},
		["ORANGE"] = {
			[52209]={AGILITY=4,CRIT=8},
			[52229]={AGILITY=4,DODGE=8},
			[52211]={AGILITY=4,HASTE=8},
			[52204]={AGILITY=4,MASTERY=8},
			[52239]={INTELLECT=4,CRIT=8},
			[52208]={INTELLECT=4,HASTE=8},
			[52205]={INTELLECT=4,MASTERY=8},
			[52222]={STRENGTH=4,CRIT=8},
			[52214]={STRENGTH=4,HASTE=8},
			[52240]={STRENGTH=4,MASTERY=8},
			[52249]={HASTE=8,DODGE=8},
			[52224]={HASTE=8,MASTERY=8},
			[52215]={PARRY=8,MASTERY=8},
		},
		["PURPLE"] = {
			[52238]={AGILITY=4,STAMINA=6},
			[52220]={AGILITY=4,CRIT=8},
			[52248]={INTELLECT=4,STAMINA=6},
			[52217]={INTELLECT=4,CRIT=8},
			[52236]={INTELLECT=4,SPIRIT=8},
			[52243]={STRENGTH=4,STAMINA=6},
			[52213]={STRENGTH=4,CRIT=8},
			[52221]={HASTE=8,STAMINA=6},
			[52203]={HASTE=8,CRIT=8},
			[52210]={PARRY=8,STAMINA=4},
			[52234]={PARRY=8,CRIT=8},
		},
		["RED"] = {
			[52230]={HASTE=16},
			[52216]={PARRY=16},
			[52212]={AGILITY=8},
			[52207]={INTELLECT=8},
			[52206]={STRENGTH=8},
		},
		["YELLOW"] = {
			[52241]={CRIT=16},
			[52247]={DODGE=16},
			[52232]={HASTE=16},
			[52219]={MASTERY=16},
		},
	},
	[300] = {
		["BLUE"] = {
			[71820]={STAMINA=15},
			[71817]={CRIT=20},
			[71819]={SPIRIT=20},
		},
		["GREEN"] = {
			[71837]={CRIT=10,DODGE=10},
			[71825]={CRIT=10,MASTERY=10},
			[71834]={CRIT=10,STAMINA=8},
			[71835]={DODGE=10,STAMINA=8},
			[71824]={HASTE=10,CRIT=10},
			[71833]={HASTE=10,SPIRIT=10},
			[71836]={HASTE=10,STAMINA=8},
			[71838]={MASTERY=10,STAMINA=8},
			[71822]={SPIRIT=10,CRIT=10},
			[71827]={SPIRIT=10,MASTERY=10},
			[71823]={CRIT=20},
		},
		["ORANGE"] = {
			[71841]={HASTE=10,CRIT=10},
			[71845]={HASTE=10,DODGE=10},
			[71853]={HASTE=10,MASTERY=10},
			[71846]={PARRY=10,DODGE=10},
			[71855]={PARRY=10,MASTERY=10},
			[71840]={AGILITY=5,CRIT=10},
			[71844]={AGILITY=5,DODGE=10},
			[71848]={AGILITY=5,HASTE=10},
			[71852]={AGILITY=5,MASTERY=10},
			[71842]={INTELLECT=5,CRIT=10},
			[71850]={INTELLECT=5,HASTE=10},
			[71854]={INTELLECT=5,MASTERY=10},
			[71843]={STRENGTH=5,CRIT=10},
			[71847]={STRENGTH=5,DODGE=10},
			[71851]={STRENGTH=5,HASTE=10},
			[71856]={STRENGTH=5,MASTERY=10},
		},
		["PURPLE"] = {
			[71863]={HASTE=10,CRIT=10},
			[71870]={HASTE=10,STAMINA=8},
			[71865]={PARRY=10,CRIT=10},
			[71872]={PARRY=10,STAMINA=8},
			[71862]={AGILITY=5,CRIT=10},
			[71869]={AGILITY=5,STAMINA=8},
			[71864]={INTELLECT=5,CRIT=10},
			[71868]={INTELLECT=5,SPIRIT=10},
			[71871]={INTELLECT=5,STAMINA=8},
			[71866]={STRENGTH=5,CRIT=10},
			[71873]={STRENGTH=5,STAMINA=8},
		},
		["RED"] = {
			[71879]={AGILITY=10},
			[71881]={INTELLECT=10},
			[71883]={STRENGTH=10},
			[71880]={HASTE=20},
			[71882]={PARRY=20},
		},
		["YELLOW"] = {
			[71874]={CRIT=20},
			[71875]={DODGE=20},
			[71876]={HASTE=20},
			[71877]={MASTERY=20},
		},
	},
	[417] = {
		["BLUE"] = {
			[76573]={STAMINA=15},
			[76636]={CRIT=20},
			[76638]={SPIRIT=20},
		},
		["GREEN"] = {
			[93705]={CRIT=10,DODGE=10},
			[76577]={CRIT=10,MASTERY=10},
			[76655]={CRIT=10,STAMINA=8},
			[76653]={DODGE=10,STAMINA=8},
			[76642]={HASTE=10,CRIT=10},
			[76651]={HASTE=10,SPIRIT=10},
			[76654]={HASTE=10,STAMINA=8},
			[76656]={MASTERY=10,STAMINA=8},
			[76640]={SPIRIT=10,CRIT=10},
			[76645]={SPIRIT=10,MASTERY=10},
			[76575]={CRIT=20},
			[76520]={CRIT=8,STAMINA=6},
			[93706]={CRIT=8,DODGE=8},
			[76510]={CRIT=8,MASTERY=8},
			[76521]={DODGE=8,STAMINA=6},
			[76522]={HASTE=8,STAMINA=6},
			[76509]={HASTE=8,CRIT=8},
			[76519]={HASTE=8,SPIRIT=8},
			[76524]={MASTERY=8,STAMINA=6},
			[76512]={SPIRIT=8,MASTERY=5},
			[76507]={SPIRIT=8,CRIT=8},
		},
		["META"] = {
			[76884]={AGILITY=14},
			[76885]={INTELLECT=14},
			[76886]={STRENGTH=14},
			[76895]={STAMINA=20},
			[76890]={CRIT=27},
			[76896]={DODGE=27},
			[76887]={MASTERY=27},
			[76888]={SPIRIT=27},
		},
		["ORANGE"] = {
			[76659]={HASTE=10,CRIT=10},
			[76663]={HASTE=10,DODGE=10},
			[76671]={HASTE=10,MASTERY=10},
			[76664]={PARRY=10,DODGE=10},
			[76673]={PARRY=10,MASTERY=10},
			[76667]={HASTE=20},
			[76658]={AGILITY=5,CRIT=10},
			[76662]={AGILITY=5,DODGE=10},
			[76666]={AGILITY=5,HASTE=10},
			[76670]={AGILITY=5,MASTERY=10},
			[76660]={INTELLECT=5,CRIT=10},
			[76668]={INTELLECT=5,HASTE=10},
			[76672]={INTELLECT=5,MASTERY=10},
			[76661]={STRENGTH=5,CRIT=10},
			[76665]={STRENGTH=5,DODGE=10},
			[76669]={STRENGTH=5,HASTE=10},
			[76674]={STRENGTH=5,MASTERY=10},
			[76527]={HASTE=8,CRIT=8},
			[76531]={HASTE=8,DODGE=8},
			[76539]={HASTE=8,MASTERY=8},
			[76532]={PARRY=8,DODGE=8},
			[76541]={PARRY=8,MASTERY=8},
		},
		["PURPLE"] = {
			[76681]={HASTE=10,CRIT=10},
			[76688]={HASTE=10,STAMINA=8},
			[76683]={PARRY=10,CRIT=10},
			[76690]={PARRY=10,STAMINA=8},
			[76680]={AGILITY=5,CRIT=10},
			[76687]={AGILITY=5,STAMINA=8},
			[76682]={INTELLECT=5,CRIT=10},
			[76686]={INTELLECT=5,SPIRIT=10},
			[76689]={INTELLECT=5,STAMINA=8},
			[76684]={STRENGTH=5,CRIT=10},
			[76691]={STRENGTH=5,STAMINA=8},
			[76556]={HASTE=8,STAMINA=6},
			[76549]={HASTE=8,CRIT=8},
			[76558]={PARRY=8,STAMINA=6},
			[76551]={PARRY=8,CRIT=8},
		},
		["RED"] = {
			[76692]={AGILITY=10},
			[76694]={INTELLECT=10},
			[76696]={STRENGTH=10},
			[76693]={HASTE=20},
			[76695]={PARRY=20},
		},
		["YELLOW"] = {
			[76697]={CRIT=20},
			[76698]={DODGE=20},
			[76699]={HASTE=20},
			[76700]={MASTERY=20},
		},
	},
	[600] = {
		["PRISMATIC"] = { -- for low level gear, use rare gems
			[115809]={CRIT=50},
			[115811]={HASTE=50},
			[115812]={MASTERY=50},
			[115813]={MULTISTRIKE=50},
			[115815]={STAMINA=50},
			[115814]={VERSATILITY=50},
		},
	},
	[695] = {
		["PRISMATIC"] = { -- for high raid gear, use epic gems
			[127760]={CRIT=75},
			[127761]={HASTE=75},
			[127762]={MASTERY=75},
			[127763]={MULTISTRIKE=75},
			[127765]={STAMINA=75},
			[127764]={VERSATILITY=75},
		},
	},
}

ItemScore.KeywordsPawnToRules = {} for i,v in pairs(ItemScore.Keywords) do ItemScore.KeywordsPawnToRules[v.pawn]=v.blizz end
ItemScore.KeywordsZygorToPawn = {} for i,v in pairs(ItemScore.Keywords) do ItemScore.KeywordsZygorToPawn[v.blizz]=v.pawn end
ItemScore.Gear_ZygorToPawn = {} for i,v in pairs(ItemScore.Gear_PawnToZygor) do ItemScore.Gear_ZygorToPawn[v]=i end
