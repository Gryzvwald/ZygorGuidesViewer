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
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[2] = { --FROST
			itemtypes={ AXE=1, SWORD=1, MACE=1, PLATE=1 },
			stats = { STRENGTH=1.48, MASTERY=0.89, HASTE=0.77, CRIT=0.76, VERSATILITY=0.74 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[3] = { --UNHOLY
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=1.45, MASTERY=0.87, CRIT=0.83, HASTE=0.80, VERSATILITY=0.78 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		}
	},
	["DEMONHUNTER"] = {
		[1] = { -- HAVOC
			itemtypes={ WARGLAIVE=1, DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=1, LEATHER=1 },
			stats = { AGILITY=1.65, HASTE=0.98, CRIT=0.84, VERSATILITY=0.83, MASTERY=0.74 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { -- VENGEANCE
			itemtypes={ WARGLAIVE=1,DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, CLOTH=1, LEATHER=1 },
			stats = {AGILITY=25.84, STAMINA=25.84, HASTE=14.09, VERSATILITY=12.81, MASTERY=12.56, CRIT=11.67 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
	},
	["DRUID"] = {
		[1] = { --BALANCE
			itemtypes={ DAGGER=1, MACE=1, MISCARM=1, TH_STAFF=1, LEATHER=1 },
			stats = { INTELLECT=1.47, HASTE=0.98, CRIT=0.81, VERSATILITY=0.78 , MASTERY=0.66 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { --FERAL
			itemtypes={ TH_POLE=1, TH_STAFF=1, TH_MACE=1, LEATHER=1 },
			stats = { AGILITY=1.18, HASTE=1.10, CRIT=0.68, VERSATILITY=0.61, MASTERY=0.55 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { --GUARDIAN
			itemtypes={ TH_POLE=1,TH_STAFF=1, TH_MACE=1, LEATHER=1 },
			stats = { AGILITY=25.84, STAMINA=25.84, MASTERY=14.09, VERSATILITY=12.81, HASTE=12.56, CRIT=11.67 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[4] = { --RESTORATION
			itemtypes={ DAGGER=1,MACE=1,MISCARM=1, TH_STAFF=1, LEATHER=1 },
			stats = { INTELLECT=1.27, HASTE=0.75, CRIT=0.66, VERSATILITY=0.63 , MASTERY=0.39 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		}
	},
	["HUNTER"] = {
		[1] = { -- BEAST MASTERY
			itemtypes={BOW=1, CROSSBOW=1, GUN=1, MAIL=1 },
			stats = { AGILITY=1.37, MASTERY=0.88, CRIT=0.80, HASTE=0.71, VERSATILITY=0.66 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { -- MARKSMANSHIP
			itemtypes={BOW=1, CROSSBOW=1, GUN=1, MAIL=1 },
			stats = { AGILITY=1.22, MASTERY=0.74, HASTE=0.73, CRIT=0.72, VERSATILITY=0.62 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { -- SURVIVAL
			itemtypes={AXE=1, SWORD=1, DAGGER=1, FIST=1, TH_AXE=1, TH_SWORD=1, TH_STAFF=1, TH_POLE=1, MAIL=1 },
			stats = { AGILITY=1.48, HASTE=1.06, CRIT=0.83, VERSATILITY=0.75, MASTERY=0.67 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
	},
	["MAGE"] = {
		[1] = { -- Arcane
			itemtypes={ TH_STAFF=2, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=1.71, CRIT=0.91, VERSATILITY=0.90, HASTE=0.84, MASTERY=0.80 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { -- Fire
			itemtypes={ TH_STAFF=2, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=1.62, MASTERY=0.93, VERSATILITY=0.87, HASTE=0.86, CRIT=0.83 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { -- Frost
			itemtypes={ TH_STAFF=2, WAND=1, MISCARM=1, SWORD=1, DAGGER=1, CLOTH=1 },
			stats = { INTELLECT=1.75, HASTE=0.98, CRIT=0.95, VERSATILITY=0.92 , MASTERY=0.91 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		}
	},
	["MONK"] = {
		[1] = { --BREWMASTER-TANK
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, LEATHER=1 },
			stats = { AGILITY=25.84, STAMINA=25.84, VERSATILITY=14.09, CRIT=14.09, MASTERY=12.81, HASTE=12.56 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { --MISTWEAVER-HEAL
			itemtypes={ TH_POLE=1, TH_STAFF=1, FIST=1, AXE=1, SWORD=1, MACE=1, LEATHER=1 },
			stats = { INTELLECT=1.27, CRIT=0.75, VERSATILITY=0.66, HASTE=0.63, MASTERY=0.39 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { --WINDWALKER-DPS
			itemtypes={ FIST=1, AXE=1, SWORD=1, MACE=1, LEATHER=1 },
			stats = { AGILITY=1.29, VERSATILITY=0.88, HASTE=0.84, MASTERY=0.75, CRIT=0.69 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		}
	},
	["PALADIN"] = {
		[1] = { --HOLY
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, AXE=1, MACE=1, SWORD=1, MISCARM=1, PLATE=1 },
			stats = { INTELLECT=1.20, CRIT=0.77, HASTE=0.75, VERSATILITY=0.66, MASTERY=0.01 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { --PROTECTION
			itemtypes={ AXE=1, MACE=1, SWORD=1, SHIELD=1, PLATE=1 },
			stats = { STRENGTH=25.84, STAMINA=25.84, HASTE=14.09, MASTERY=13.81, VERSATILITY=11.56, CRIT=9.67 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[3] = { --RETRIBUTION
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=1.59, HASTE=1.16, VERSATILITY=0.90, MASTERY=0.88, CRIT=0.87 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		}
	},
	["PRIEST"] = {
		[1] = { -- DISCIPLINE
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=2, WAND=1, MISCARM=1, CLOTH=1 },
			stats = {  INTELLECT=0.69, HASTE=0.42, CRIT=0.38, VERSATILITY=0.34, MASTERY=0.12 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { -- HOLY
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=2, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.27, CRIT=0.75, VERSATILITY=0.66, HASTE=0.63, MASTERY=0.39 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { --SHADOW
			itemtypes={ DAGGER=1, MACE=1, TH_STAFF=2, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.49, HASTE=1.40, CRIT=0.97, MASTERY=0.81, VERSATILITY=0.79 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		}
	},
	["ROGUE"] = {
		[1] = { --ASSASSINATION
			itemtypes={ DAGGER=2,LEATHER=1 },
			stats = { AGILITY=1.53, HASTE=1.13, CRIT=0.98, MASTERY=0.94, VERSATILITY=0.78 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[2] = { --OUTLAW
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,SWORD=2, LEATHER=1 },
			stats = { AGILITY=1.48, HASTE=0.88, CRIT=0.78, VERSATILITY=0.73, MASTERY=0.70 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { --SUBTLETY
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,SWORD=2, LEATHER=1 },
			stats = { AGILITY=1.59, CRIT=0.89, MASTERY=0.88, HASTE=0.87, VERSATILITY=0.80 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		}
	},
	["SHAMAN"] = {
		[1] = { -- ELEMENTAL
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, MISCARM=1, SHIELD=1, LEATHER=1, MAIL=1 },
			stats = { INTELLECT=1.58, HASTE=1.01, MASTERY=0.98, CRIT=0.92, VERSATILITY=0.80 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { -- ENHANCEMENT:
			itemtypes={ DAGGER=2, FIST=2, AXE=2, MACE=2, MISCARM=1, LEATHER=1, MAIL=1 },
			stats = { AGILITY=1.62, HASTE=1.10, CRIT=0.92, MASTERY=0.82, VERSATILITY=0.80 },
			primary = { STRENGTH=0, AGILITY=1, INTELLECT=0 },
		},
		[3] = { -- RESTORATION
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, TH_STAFF=1, MISCARM=1, SHIELD=1, LEATHER=1, MAIL=1 },
			stats = { INTELLECT=1.27, CRIT=0.75, VERSATILITY=0.66, HASTE=0.63, MASTERY=0.39 },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		}
	},
	["WARLOCK"] = {
		[1] = { --AFFLICTION
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.50, HASTE=1.16, MASTERY=0.96, VERSATILITY=0.83, CRIT=0.82  },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[2] = { --DEMONOLOGY
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.49, HASTE=0.82, CRIT=0.82, VERSATILITY=0.78, MASTERY=0.77  },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		},
		[3] = { --DESTRUCTION
			itemtypes={ SWORD=1, DAGGER=1, TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1.45, HASTE=0.95, MASTERY=0.95, CRIT=0.88, VERSATILITY=0.75  },
			primary = { STRENGTH=0, AGILITY=0, INTELLECT=1 },
		}
	},
	["WARRIOR"] = {
		[1] = { --ARMS
			itemtypes={ TH_POLE=1, TH_AXE=1, TH_MACE=1, TH_SWORD=1, PLATE=1 },
			stats = { STRENGTH=1.31, CRIT=1.02, HASTE=0.86, VERSATILITY=0.86, MASTERY=0.15 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[2] = { --FURY
			itemtypes={ TH_POLE=1, TH_AXE=10, TH_MACE=10, TH_SWORD=10, DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, PLATE=1 },  -- duals...
			stats = { STRENGTH=1.14, HASTE=1.00, MASTERY=0.86, CRIT=0.82, VERSATILITY=0.80 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		},
		[3] = { --PROT
			itemtypes={ DAGGER=1, FIST=1, AXE=1, MACE=1, SWORD=1, SHIELD=1, PLATE=1, SHIELD=1 },
			stats = { STRENGTH=25.84, STAMINA=25.84, HASTE=14.09, MASTERY=12.81, VERSATILITY=12.56, CRIT=11.67 },
			primary = { STRENGTH=1, AGILITY=0, INTELLECT=0 },
		}
	},
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

ItemScore.Unique_Equipped_Families = { -- those items are unique equipped, but do not return GetItemUniqueness values
	 -- wod rings
	[10001] = {[124636]=1,[124635]=1,[124638]=1,[124634]=1,[124637]=1},

	-- Legion legendary non-weapons gear
	[357] = {[132369]=2,[132378]=2,[132410]=2,[132449]=2,[132452]=2,[132460]=2,[133973]=2,[133974]=2,[137037]=2,[137038]=2,[137039]=2,[137040]=2,[137041]=2,[137042]=2,[137043]=2,[137044]=2,[137045]=2,[137046]=2,[137047]=2,[137048]=2,[137049]=2,[137050]=2,[137051]=2,[137052]=2,[137054]=2,[137055]=2,[137220]=2,[137223]=2,[137276]=2,[137382]=2,[138854]=2,[144249]=2, [144258]=2, [144259]=2, [150936]=2,[151636]=2,[151639]=2,[151640]=2,[151641]=2,[151642]=2,[151643]=2,[151644]=2,[151646]=2,[151647]=2,[151649]=2,[151650]=2,[152626]=2}, 

	-- ghost pirate ring heirlooms
	[10002] = {[128169]=1,[128172]=1,[128173]=1},
	}

-- what stats are available on gems depending on source expansion
ItemScore.GemStatsByExp = {
	[1] = {"STRENGTH", "INTELLECT", "AGILITY", "STAMINA", "HASTE", "VERSATILITY", "MASTERY", "CRIT", "PARRY", "DODGE"}, -- tbc
	[2] = {"STRENGTH", "INTELLECT", "AGILITY", "STAMINA", "HASTE", "VERSATILITY", "MASTERY", "CRIT", "PARRY", "DODGE"}, -- wotlk
	[3] = {"STRENGTH", "INTELLECT", "AGILITY", "STAMINA", "HASTE", "VERSATILITY", "MASTERY", "CRIT", "PARRY", "DODGE"}, -- cata
	[4] = {"STRENGTH", "INTELLECT", "AGILITY", "STAMINA", "HASTE", "VERSATILITY", "MASTERY", "CRIT", "PARRY", "DODGE"}, -- mop
	[5] = {"MASTERY", "VERSATILITY", "HASTE", "CRIT"}, -- wod
	[6] = {"MASTERY", "VERSATILITY", "HASTE", "CRIT"}, -- legion
	[7] = {"MASTERY", "VERSATILITY", "HASTE", "CRIT"}, -- bfa
}

-- details about gems based on expansions and rarity. ilvl of socketed item required for gem to fit it, and how point budget changes with player level
ItemScore.GemData = { -- from level [a] gem gives b points
	[2] = { -- uncommon
		[1] = { ilvl=1,   points={[1]=3, [59]=4}}, -- tbc
		[2] = { ilvl=70,  points={[1]=3, [59]=4}}, -- wotlk
		[3] = { ilvl=102, points={[1]=3, [59]=4, [81]=5}}, -- cata
		[4] = { ilvl=114, points={[1]=3, [59]=4, [81]=5}}, -- mop
		[5] = { ilvl=80,  points={[1]=3, [59]=4, [81]=5, [91]=6}}, -- wod
		[6] = { ilvl=81,  points={[1]=3, [59]=4, [81]=5, [91]=6, [101]=7}}, -- legion
		[7] = { ilvl=100, points={[1]=3, [59]=4, [81]=5, [91]=6, [101]=7, [111]=30}}, -- bfa
	},
	[3] = { -- rare
		[1] = { ilvl=1,   points={[1]=4, [59]=5}}, -- tbc
		[2] = { ilvl=80,  points={[1]=4, [59]=5}}, -- wotlk
		[3] = { ilvl=102, points={[1]=4, [59]=5, [81]=6}}, -- cata
		[4] = { ilvl=114, points={[1]=4, [59]=5, [81]=6}}, -- mop
		[5] = { ilvl=80,  points={[1]=4, [59]=5, [81]=6, [91]=7}}, -- wod
		[6] = { ilvl=81,  points={[1]=4, [59]=5, [81]=6, [91]=7, [101]=9}}, -- legion
		[7] = { ilvl=100, points={[1]=4, [59]=5, [81]=6, [91]=7, [101]=9, [111]=40}}, -- bfa
	},
	[4] = { -- epic
		[1] = { ilvl=1,   points={[1]=5, [59]=6}}, -- tbc
		[2] = { ilvl=80,  points={[1]=5, [59]=6}}, -- wotlk
		[3] = { ilvl=102, points={[1]=5, [59]=6, [81]=7}}, -- cata
		-- no boe epics for pandas
		[5] = { ilvl=80,  points={[1]=5, [59]=6, [81]=7, [91]=8}}, -- wod
		[6] = { ilvl=81,  points={[1]=5, [59]=6, [81]=7, [91]=8, [101]=11}}, -- legion
		-- no boe epics for bfa
	}
}

ItemScore.Item_Weapon_Types = {
	[0] = "AXE",
	[1] = "TH_AXE",
	[2] = "BOW",
	[3] = "GUN",
	[4] = "MACE",
	[5] = "TH_MACE",
	[6] = "TH_POLE",
	[7] = "SWORD",
	[8] = "TH_SWORD",
	[9] = "WARGLAIVE",
	[10] = "TH_STAFF",
	[11] = "DRUID_BEAR",
	[12] = "DRUID_CAT",
	[13] = "FIST",
	[14] = "MISCWEAP",
	[15] = "DAGGER",
	[16] = "THROWN",
	[17] = "SPEAR",
	[18] = "CROSSBOW",
	[19] = "WAND",
	[20] = "FISHPOLE",
	}

ItemScore.Item_Armor_Types = {
	[0] = "JEWELERY", -- necklace, rings and trinkets, also some cosmetic armor
	[1] = "CLOTH",
	[2] = "LEATHER",
	[3] = "MAIL",
	[4] = "PLATE",
	[5] = "COSMETIC",
	[6] = "SHIELD",
	}

ItemScore.TypeToSlot = {
	INVTYPE_WEAPON = INVSLOT_MAINHAND, -- dual wield handled in GetValidSlots
	INVTYPE_WEAPONMAINHAND = INVSLOT_MAINHAND,
	INVTYPE_2HWEAPON = INVSLOT_MAINHAND, -- titan fury hanndled in GetValidSlots
	INVTYPE_WEAPONOFFHAND = INVSLOT_OFFHAND,
	INVTYPE_SHIELD = INVSLOT_OFFHAND,
	INVTYPE_RANGED = INVSLOT_MAINHAND,
	INVTYPE_RANGEDRIGHT = INVSLOT_MAINHAND,
	INVTYPE_HOLDABLE = INVSLOT_OFFHAND,
	INVTYPE_HEAD = INVSLOT_HEAD,
	INVTYPE_NECK = INVSLOT_NECK,
	INVTYPE_SHOULDER = INVSLOT_SHOULDER,
	INVTYPE_CLOAK = INVSLOT_BACK,
	INVTYPE_CHEST = INVSLOT_CHEST,
	INVTYPE_ROBE = INVSLOT_CHEST,
	INVTYPE_WRIST = INVSLOT_WRIST,
	INVTYPE_HAND = INVSLOT_HAND,
	INVTYPE_WAIST = INVSLOT_WAIST,
	INVTYPE_LEGS = INVSLOT_LEGS,
	INVTYPE_FEET = INVSLOT_FEET,
	INVTYPE_FINGER = INVSLOT_FINGER1, -- second slot handled in GetValidSlots
	INVTYPE_TRINKET = INVSLOT_TRINKET1, -- second slot handled in GetValidSlots
}

ItemScore.KeywordsPawnToRules = {} for i,v in pairs(ItemScore.Keywords) do ItemScore.KeywordsPawnToRules[v.pawn]=v.blizz end
ItemScore.KeywordsZygorToPawn = {} for i,v in pairs(ItemScore.Keywords) do ItemScore.KeywordsZygorToPawn[v.blizz]=v.pawn end
ItemScore.Gear_ZygorToPawn = {} for i,v in pairs(ItemScore.Gear_PawnToZygor) do ItemScore.Gear_ZygorToPawn[v]=i end

-- Build simpler defaults table for use in options
ItemScore.Defaults = {}
for class,specs in pairs(ItemScore.rules) do
    ZGV.ItemScore.Defaults[class] = {}
    for spec,data in pairs(specs) do
	ZGV.ItemScore.Defaults[class][spec] = {}

	for name,v in pairs(data.stats) do
		table.insert(ZGV.ItemScore.Defaults[class][spec],{name=name,weight=v})
	end
	sort(ZGV.ItemScore.Defaults[class][spec],function(a,b) return a.name<b.name end)
    end
end 