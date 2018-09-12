local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AchievementsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\A Fish Out of Water",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to kick fifteen Gasping Flounders back into the water then defeat Viq'Goth in the Siege of Boralus on Mythic difficulty.",
achieveid={12726},
startlevel=120,
endlevel=120,
keywords={"Siege, of, Boralus, Dread, Captain, Lockwood, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must kick fifteen Gasping Flounders back into the water then defeat Viq'Goth in the Siege of Boralus on Mythic difficulty
Viq'Goth will cast Call of the Deep which will spawn a few Gasping Flounders
Kick the flounders back into the water after each cast until you've kicked in 15 of them, then defeat the boss
Earn the _A Fish Out of Water_ Achievement |achieve 12726
step
_Congratulations!_
You Earned the "A Fish Out of Water" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Alchemical Romance",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to destroy three Deathtouched Slavers' corspes using a single Alchemical Fire before defeating Gorak Tul on Mythic Difficulty in Waycrest Manor.",
achieveid={12490},
startlevel=120,
endlevel=120,
keywords={"Waycrest, Manor, Gorak, Tul, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you will need to destroy three Deathtouched Slavers' corpses using a single Alchemical Fire, then defeat Gorak Tul in Waycrest Manor on Mythic difficulty
During the Gorak Tul fight he will occasionally throw out Alchemical Fire which can be picked up and used on Deathtouched Slavers
Wait for three Deathtouched Slavers to spawn, kill them at the same time and then burn all three corpses with a single Alchemical Fire, then kill the boss
Earn the _Alchemical Romance_ Achievement |achieve 12490
step
_Congratulations!_
You Earned the "Alchemical Romance" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Atal'Dazar",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Yazma in Atal'Dazar.",
achieveid={12824},
startlevel=120,
endlevel=120,
keywords={"Yazma, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Atal'Dazar
Click here to load the "Atal'Dazar" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Atal'Dazar"
Defeat Yazma in Atal'Dazar |achieve 12824
step
_Congratulations!_
You Earned the "Atal'Dazar" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Battle for Azeroth Keymaster",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to complete all Battle for Azeroth dungeons using a Mythic Keystone.",
achieveid={13075},
startlevel=120,
endlevel=120,
keywords={"Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must complete all Battle for Azeroth dungeons using a Mythic Keystone
Complete each BFA dungeon on at least Mythic+1 difficulty or higher
Freehold |achieve 13075/1
Waycrest Manor |achieve 13075/2
Shrine of the Storm |achieve 13075/3
Atal'Dazar |achieve 13075/4
The Underrot |achieve 13075/5
Temple of Sethraliss |achieve 13075/6
Tol Dagor |achieve 13075/7
The MOTHERLODE!! |achieve 13075/8
Siege of Boralus |achieve 13075/9
Kings' Rest |achieve 13075/10
Earn the _Battle for Azeroth Keymaster_ Achievement |achieve 13075
step
_Congratulations!_
You Earned the "Battle for Azeroth Keymaster" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Breath of the Shrine",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to light the ceremonial fires within the temple using the Shrine's Breath in Shrine of the Storm on Mythic difficulty",
achieveid={12600},
startlevel=120,
endlevel=120,
keywords={"Breath, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must light the ceremonial fires within the temple using the Shrine's Breath in Shrine of the Storm on Mythic difficulty
The Shrine's Breath buff is gained from clicking the left pillar in the first room of the dungeon
|tip Killing the first boss will make this unclickable.
Taking any frost damage will remove the buff
You must preserve the Shrine's Breath buff and use it to light the fire in the room with the third boss
|tip You can either stealth through the dungeon or clear the trash while skipping the bosses and then go back to the first room and pick up the buff.
Earn the _Breath of the Shrine_ Achievement |achieve 12600
step
_Congratulations!_
You Earned the "Breath of the Shrine" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Bringing Hexy Back",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat all bosses in Atal'Dazar on Mythic difficulty with at least one party member affected by Unstable Hex.",
achieveid={12270},
startlevel=120,
endlevel=120,
keywords={"Atal'Dazar, Unstable, Hex, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you will need to defeat all bosses in Atal'Dazar on Mythic difficulty while a party member affected by Unstable Hex
As you clear trash before each boss, leave one of the Zanchuli Witch-Doctors alive and pull it into the boss room
Keep it CC'd until the boss is at about 10% health and then allow it to cast Unstable Hex, then kill the boss
|tip If you can't keep it CC'd just keep interrupting Unstable Hex until you're ready to kill the boss.
Earn the _Bringing Hexy Back_ Achievement |achieve 12270
step
_Congratulations!_
You Earned the "Bringing Hexy Back" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Freehold",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Harlan Sweete in Freehold.",
achieveid={12831},
startlevel=110,
endlevel=120,
keywords={"Harlan, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Freehold
Click here to load the "Freehold" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Freehold"
Defeat Harlan Sweete in Freehold |achieve 12831
step
_Congratulations!_
You Earned the "Freehold" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Gold Fever",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Priestess Alun'za after destroying the Fatal Corruption in Atal'Dazar on Mythic difficulty.",
achieveid={12272},
startlevel=120,
endlevel=120,
keywords={"Atal'Dazar, Priestess, Alun'za, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Priestess Alun'za after defeating the Fatal Corruption in Atal'Dazar on Mythic difficulty
Priestess Alun'za will use Spirit of Gold to spawn an add. The add will run to nearby Tainted Blood pools and absorb them
Allow the add to absorb 8 pools of Tainted Blood and it will turn into a Fatal Corruption
Kill the Fatal Corruption and then kill the boss
Earn the _Gold Fever_ Achievement |achieve 12272
step
_Congratulations!_
You Earned the "Gold Fever" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Good Night, Sweet Prince",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you must restore the Avatar of Sethraliss with the Prince active in the Temple of Sethraliss on Mythic difficulty.",
achieveid={12508},
startlevel=120,
endlevel=120,
keywords={"Temple, of, Sethraliss, Prince, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must restore the Avatar of Sethraliss with the Prince active in the Temple of Sethraliss on Mythic difficulty
Doing this achievement is easiest if you have a "/kiss" macro
During the phases that Plague Toads spawn, click the toads and use the kiss macro, eventually one of the toads will spawn the Prince
|tip The Prince looks like Trade Prince Gallywix.
Once the Prince has been spawned just finished the encounter
Earn the _Good Night, Sweet Prince_ Achievement |achieve 12508
step
_Congratulations!_
You Earned the "Good Night, Sweet Prince" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Heroic: Atal'Dazar",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Yazma in Atal'Dazar on Heroic difficulty or higher.",
achieveid={12825},
startlevel=120,
endlevel=120,
keywords={"Yazma, Dungeon, Heroic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Atal'Dazar on Heroic difficulty or higher
Click here to load the "Atal'Dazar" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Atal'Dazar"
Defeat Yazma in Atal'Dazar on Heroic difficulty or higher |achieve 12825
step
_Congratulations!_
You Earned the "Heroic: Atal'Dazar" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Heroic: Freehold",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Harlan Sweete in Freehold on Heroic difficulty or higher.",
achieveid={12832},
startlevel=120,
endlevel=120,
keywords={"Harlan, Dungeon, Heroic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Freehold on Heroic difficulty or higher
Click here to load the "Freehold" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Freehold"
Defeat Harlan Sweete in Freehold on Heroic difficulty or higher |achieve 12832
step
_Congratulations!_
You Earned the "Heroic: Freehold" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Heroic: Shrine of the Storm",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Vol'zith the Whisperer in Shrine of the Storm on Heroic difficulty or higher.",
achieveid={12837},
startlevel=120,
endlevel=120,
keywords={"Vol'zith, Dungeon, Heroic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Shrine of the Storm on Heroic difficulty or higher
Click here to load the "Shrine of the Storm" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Shrine of the Storm"
Defeat Vol'zith the Whisperer in Shrine of the Storm on Heroic difficulty or higher |achieve 12837
step
_Congratulations!_
You Earned the "Heroic: Shrine of the Storm" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Heroic: The Temple of Sethraliss",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to restore the Avatar of Sethraliss in the Temple of Sethraliss on Heroic difficulty or higher.",
achieveid={12505},
startlevel=120,
endlevel=120,
keywords={"Avatar, Dungeon, Heroic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete the Temple of Sethraliss on Heroic difficulty or higher
Click here to load the "Temple of Sethraliss" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Temple of Sethraliss"
Complete the Avatar of Sethraliss encounter in the Temple of Sethraliss on Heroic difficulty or higher |achieve 12505
step
_Congratulations!_
You Earned the "Heroic: The Temple of Sethraliss" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Heroic: The MOTHERLODE!!",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Mogul Razdunk in The MOTHERLODE!! on Heroic difficulty or higher.",
achieveid={12845},
startlevel=120,
endlevel=120,
keywords={"Razdunk, Dungeon, Heroic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete The MOTHERLODE!! on Heroic difficulty or higher
Click here to load "The MOTHERLODE!!" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\The MOTHERLODE!!"
Defeat Mogul Razdunk in The MOTHERLODE!! on Heroic difficulty or higher |achieve 12845
step
_Congratulations!_
You Earned the "Heroic: The MOTHERLODE!!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Heroic: Tol Dagor",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Overseer Korgus in Tol Dagor on Heroic difficulty or higher.",
achieveid={12841},
startlevel=120,
endlevel=120,
keywords={"Korgus, Dungeon, Heroic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Tol Dagor on Heroic difficulty or higher
Click here to load the "Tol Dagor" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Tol Dagor"
Defeat Overseer Korgus in Tol Dagor on Heroic difficulty or higher |achieve 12841
step
_Congratulations!_
You Earned the "Heroic: Tol Dagor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Heroic: Underrot",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat the Unbound Abomination in Underrot on Heroic difficulty or higher.",
achieveid={12501},
startlevel=120,
endlevel=120,
keywords={"Unbound, Abomination, Heroic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete the Underrot on Heroic difficulty or higher
Click here to load the "Underrot" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\The Underrot"
Defeat the Unbound Abomination in the Underrot on Heroic difficulty or higher |achieve 12501
step
_Congratulations!_
You Earned the "Heroic: Underrot" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Heroic: Waycrest Manor",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat the Gorak Tul in Waycrest Manor on Heroic difficulty or higher.",
achieveid={12484},
startlevel=120,
endlevel=120,
keywords={"Gorak, Tul, Heroic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Waycrest Manor on Heroic difficulty or higher
Click here to load the "Waycrest Manor" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Waycrest Manor"
Defeat Gorak Tul in Waycrest Manor on Heroic difficulty or higher |achieve 12484
step
_Congratulations!_
You Earned the "Heroic: Waycrest Manor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\How to Keep a Mummy",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to free Miimii the Mummy in Kings' Rest on Mythic difficulty.",
achieveid={12723},
startlevel=120,
endlevel=120,
keywords={"Kings', Rest, Miimii, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must free Miimii the Mummy in Kings' Rest on Mythic difficulty
When fighting the final dungeon boss, King Dazar, there will be two large upright sarcophagi on the west side of the room
Have a party member stand next to each of them during the fight
Lights will start filling up at the bottom of each sarcophagus and then the northern one will begin to shake
Once this happens the players next to the sarcophagi can move and you can defeat the boss
Earn the _How to Keep a Mummy_ Achievement |achieve 12723
step
_Congratulations!_
You Earned the "How to Keep a Mummy" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\I'm in Charge Now!",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Skycap'n Kragg after summoning and defeating Patches on Mythic difficulty in Freehold.",
achieveid={12548},
startlevel=120,
endlevel=120,
keywords={"Skycap'n, Kragg, Patches, Freehold, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Skycap'n Kragg after summoning and defeating Patches in Freehold on Mythic difficulty
Patches is summed by using the Hearthstone Board toy before engaging the boss
Kill Patches and then defeat the boss
Earn the _I'm in Charge Now!_ Achievement |achieve 12548
step
_Congratulations!_
You Earned the "I'm in Charge Now!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\It Belongs in a Mausoleum!",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to find four ancient trinkets in Kings' Rest on Mythic difficulty.",
achieveid={12722},
startlevel=120,
endlevel=120,
keywords={"Kings', Rest, trinkets, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must find four ancient trinkets in Kings' Rest on Mythic difficulty
The frist trinket is in the center of the first room of the dungeon, underneath a small pile of baskets
Find the First Trinket |achieve 12722/1
step
The second trinket is sitting on stairs at the end of the platform before the fist boss room
Find the Second Trinket |achieve 12722/2
step
The third trinket is in the room to the left of the second boss room, when looking at your dungeon map
It is up on a high platform
There is an enemy that patrols this room that has a large AoE knockback
Use its knockback to launch yourself up onto the upper platform to reach the trinket
Find the Third Trinket |achieve 12722/3
step
The fourth trinket is sitting up on the right pillar as you enter the final boss room
Climb up the pillar to reach the trinket, you can click the trinket while falling/jumping so you don't have to climb all the way up
Find the Fourth Trinket |achieve 12722/4
step
Earn the _It Belongs in a Mausoleum!_ Achievement |achieve 12722
step
_Congratulations!_
You Earned the "It Belongs in a Mausoleum!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\It's Lit!",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Yazma while all four Shadowflame Sconces are lit in Atal'Dazar on Mythic difficulty",
achieveid={12273},
startlevel=120,
endlevel=120,
keywords={"Yazma, Atal'Dazar, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Yazma while all four Shadowflame Sconces are lit in Atal'Dazar on Mythic difficulty
When the boss is at about 10% health, each party member (except the tank) needs to stand next to one of the Shadowflame Sconces when the boss casts Soulrend
Soulrend will cause the Shadowflame Sconces to light, then kill the boss
|tip The Shadowflame Sconces stay lit for about 25 seconds.
Earn the _It's Lit!_ Achievement |achieve 12273
step
_Congratulations!_
You Earned the "It's Lit!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Losing My Profession",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to find and kill the following dungeon creatures in Waycrest Manor on Mythic difficulty:\n\nGoverness Tabitha\nGroundskeeper Lilith\nHuntmaster Grath\nHead Vintner Justin\nSeamstress Johanna",
achieveid={12489},
startlevel=120,
endlevel=120,
keywords={"Waycrest, Manor, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must use Kul Tiran professions to summon and defeat all of the enemies in Waycrest Manor and Siege of Boralus listed below on Mythic difficulty
Waycrest Manor dungeon:
Inscription/Enchanting:
clicknpc Ancient Tome##135513
|tip It looks like a small brown book with an owl on the cover in a bookshelf on the first floor, on the left side just before you go down to the cellar.
|tip A skill of at least 75 in Kul Tiran Inscription or Enchanting is required to summon this boss.
kill Governess Tabitha##131595 |achieve 12489/1
step
Waycrest Manor dungeon:
Cooking:
clicknpc Vinegared Wine##135714
|tip It looks like a small cluster of wine bottles in the southern section of the cellar, next to a large brown wooden barrel.
|tip A skill of at least 75 in Kul Tiran Cooking is required to summon this boss.
kill Head Vintner Justin##131615 |achieve 12489/2
step
Waycrest Manor dungeon:
Herbalism:
clicknpc Vile Pod##135713
|tip It looks like a red-orange flower with purple pedals in the fountain across from the Soulbound Goliath.
|tip A skill of at least 75 in Kul Tiran Herbalism is required to summon this boss.
kill Groundskeeper Lilith##131617 |achieve 12489/3
step
Waycrest Manor dungeon:
Tailoring:
clicknpc Cursed Loom##135725
|tip It looks like a bolt of cloth upstairs in the Banquet Hall.
|tip A skill of at least 75 in Kul Tiran Tailoring is required to summon this boss.
kill Seamstress Johanna##131619 |achieve 12489/4
step
Waycrest Manor dungeon:
Leatherworking:
clicknpc Hunting Map##135711
|tip It looks like a small map on a table in the corner of the fireplace room.
|tip A skill of at least 75 in Kul Tiran Leatherworking is required to summon this boss.
kill Huntmaster Grath##131853 |achieve 12489/5
step
Siege of Boralus dungeon:
kill Threshanator 3000##141805 |achieve 12489/6
|tip The Threshanator 3000 is found right at the start of the dungeon.
step
Siege of Boralus dungeon:
Blacksmithing:
clicknpc Worn Auto Hammer##141827
|tip It looks like a small hammer and anvil down the stairs by the docks.
|tip A skill of at least 75 in Kul Tiran Blacksmithing is required to summon this boss.
kill Brutik Blackanvil##141800 |achieve 12489/7
step
Siege of Boralus dungeon:
Alchemy:
clicknpc Strange Vial##141825
|tip It looks like a small vial sitting on a table to the east of Proudmoore Keep.
|tip A skill of at least 75 in Kul Tiran Alchemy is required to summon this boss.
kill Liz Vilepot##141792 |achieve 12489/8
step
Earn the _Losing My Profession_ Achievement |achieve 12489
step
_Congratulations!_
You Earned the "Losing My Profession" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Mythic: Atal'Dazar",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Yazma in Atal'Dazar on Mythic difficulty or higher.",
achieveid={12826},
startlevel=120,
endlevel=120,
keywords={"Yazma, Dungeon, Mythic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Atal'Dazar on Mythic difficulty or higher
Click here to load the "Atal'Dazar" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Atal'Dazar"
Defeat Yazma in Atal'Dazar on Mythic difficulty or higher |achieve 12826
step
_Congratulations!_
You Earned the "Mythic: Atal'Dazar" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Mythic: Freehold",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Harlan Sweete in Freehold on Mythic difficulty or higher.",
achieveid={12833},
startlevel=120,
endlevel=120,
keywords={"Harlan, Dungeon, Mythic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Freehold on Mythic difficulty or higher
Click here to load the "Freehold" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Freehold"
Defeat Harlan Sweete in Freehold on Mythic difficulty or higher |achieve 12833
step
_Congratulations!_
You Earned the "Mythic: Freehold" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Mythic: Shrine of the Storm",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Vol'zith the Whisperer in Shrine of the Storm on Mythic difficulty or higher.",
achieveid={12838},
startlevel=120,
endlevel=120,
keywords={"Vol'zith, Dungeon, Mythic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Shrine of the Storm on Mythic difficulty or higher
Click here to load the "Shrine of the Storm" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Shrine of the Storm"
Defeat Vol'zith the Whisperer in Shrine of the Storm on Mythic difficulty or higher |achieve 12838
step
_Congratulations!_
You Earned the "Mythic: Shrine of the Storm" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Mythic: The Temple of Sethraliss",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to restore the Avatar of Sethraliss in the Temple of Sethraliss on Mythic difficulty or higher.",
achieveid={12506},
startlevel=120,
endlevel=120,
keywords={"Avatar, Dungeon, Mythic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete the Temple of Sethraliss on Mythic difficulty or higher
Click here to load the "Temple of Sethraliss" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Temple of Sethraliss"
Complete the Avatar of Sethraliss encounter in the Temple of Sethraliss on Mythic difficulty or higher |achieve 12506
step
_Congratulations!_
You Earned the "Mythic: The Temple of Sethraliss" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Mythic: The MOTHERLODE!!",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Mogul Razdunk in The MOTHERLODE!! on Mythic difficulty or higher.",
achieveid={12846},
startlevel=120,
endlevel=120,
keywords={"Razdunk, Dungeon, Mythic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete The MOTHERLODE!! on Mythic difficulty or higher
Click here to load "The MOTHERLODE!!" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\The MOTHERLODE!!"
Defeat Mogul Razdunk in The MOTHERLODE!! on Mythic difficulty or higher |achieve 12846
step
_Congratulations!_
You Earned the "Mythic: The MOTHERLODE!!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Mythic: Tol Dagor",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Overseer Korgus in Tol Dagor on Mythic difficulty or higher.",
achieveid={12842},
startlevel=120,
endlevel=120,
keywords={"Korgus, Dungeon, Mythic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Tol Dagor on Mythic difficulty or higher
Click here to load the "Tol Dagor" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Tol Dagor"
Defeat Overseer Korgus in Tol Dagor on Mythic difficulty or higher |achieve 12842
step
_Congratulations!_
You Earned the "Mythic: Tol Dagor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Mythic: Underrot",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat the Unbound Abomination in Underrot on Mythic difficulty or higher.",
achieveid={12502},
startlevel=120,
endlevel=120,
keywords={"Unbound, Abomination, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete the Underrot on Mythic difficulty or higher
Click here to load the "Underrot" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\The Underrot"
Defeat the Unbound Abomination in the Underrot on Mythic difficulty or higher |achieve 12502
step
_Congratulations!_
You Earned the "Mythic: Underrot" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Mythic: Waycrest Manor",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat the Gorak Tul in Waycrest Manor on Mythic difficulty or higher.",
achieveid={12488},
startlevel=120,
endlevel=120,
keywords={"Gorak, Tul, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Waycrest Manor on Mythic difficulty or higher
Click here to load the "Waycrest Manor" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Waycrest Manor"
Defeat Gorak Tul in Waycrest Manor on Mythic difficulty or higher |achieve 12488
step
_Congratulations!_
You Earned the "Mythic: Waycrest Manor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Not a Fun Guy",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Musashitake, then defeat Sporecaller Zancha in Underrot on Mythic difficulty.",
achieveid={12549},
startlevel=120,
endlevel=120,
keywords={"Musashitake, Sporecaller, Zancha, Underrot, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Musashitake, then defeat Sporecaller Zancha in Underrot on Mythic difficulty
Musashitake is found in the top left part of the boss room and is spawned by facing the boss toward it when he uses Shockwave
Defeat Musashitake then kill the boss
Earn the _Not a Fun Guy_ Achievement |achieve 12549
step
_Congratulations!_
You Earned the "Not a Fun Guy" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Pecking Order",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to serve Sharkbait his favorite meal in Freehold on Heroic difficulty or higher.",
achieveid={12550},
startlevel=120,
endlevel=120,
keywords={"Freehold, Sharkbait, Skycap'n, Kragg, Heroic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must serve Sharkbait his favorite meal in Freehold on Mythic difficulty
There are three items you must pick up throughout the instance
The first item is Sharkbait's Empty Dish which spawns in the nest by the first boss once it has been defeated
The second item is Gourmet Parrot Chow which spawns at the top of a platform in the southern section of The Rum Quarter
The final item is where you Serve Sharkbait's Meal located by a red parrot northwest of the Ring of Booty
Earn the _Pecking Order_ Achievement |achieve 12550
step
_Congratulations!_
You Earned the "Pecking Order" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Pitch Invasion",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat the Coin-Operated Crowd Pummeler after defeating Ledley the Bold in The MOTHERLODE!! on Mythic difficulty.",
achieveid={12855},
startlevel=120,
endlevel=120,
keywords={"Ledley, Coin-Operated, Crowd, Pummeler, Dungeon, Mythic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat the Coin-Operated Crowd Pummeler after defeating Ledley the Bold in The MOTHERLODE!! on Mythic difficulty
Pick up the Extra-Strength Kaja'Cola, which is found next to the right gate right before the Coin-Operated Crowd Pummeler
Throw the Extra-Strength Kaja'Cola at Ledley the Bold after engaging the boss
|tip Interrupt Ledley's Red Card ability.
Defeat Ledley then defeat the Coin-Operated Crowd Pummeler
Earn the _Pitch Invasion_ Achievement |achieve 12855
step
_Congratulations!_
You Earned the "Pitch Invasion" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Ready for Raiding VI",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Mogul Razdunk in The MOTHERLODE!! on Mythic difficulty without being struck by:\n\nGatling Gun\nMicro Missiles\nBig Red Rocket\nA direct hit from Drill Smash.",
achieveid={12854},
startlevel=120,
endlevel=120,
keywords={"Razdunk, Dungeon, Mythic, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Mogul Razdunk without being struck by Gatling Gun, Micro Missiles, Big Red Rocket, or a direct hit from Drill Smash in The MOTHERLODE!! on Mythic difficulty
Tank the boss by the stairs at the beginning of the encounter which should allow you to ignore Homing Missles
Gear with Speed stat increases also help to avoid these abilities
Earn the _Ready for Raiding VI_ Achievement |achieve 12854
step
_Congratulations!_
You Earned the "Ready for Raiding VI" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Remix to Ignition",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Knight Captain Valyri without detonating any Munitions in Tol Dagor on Mythic difficulty.",
achieveid={12457},
startlevel=120,
endlevel=120,
keywords={"Knight, Captain, Valyri, Tol, Dagor, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Knight Captain Valyri without detonating any Munitions in Tol Dagor on Mythic difficulty
Tank the boss in the center of the room and have one party member in each corner of the room along with an explosive barrel
Each party member is responsible for the explosive barrel in their corner
When the boss turns towards a party member and targets them Cinderflame they must pick up their barrel and move it out of the way, then move the barrel back to their corner after the cast and continue damaging the boss or healing
When the boss casts Ignition all party members must move their barrel out of the AoE cirlces on the ground if their barrel is inside one of them
Earn the _Remix to Ignition_ Achievement |achieve 12457
step
_Congratulations!_
You Earned the "Remix to Ignition" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Run Wild Like a Man On Fire",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat the Soulbound Goliath without it gaining 12 stacks of Soul Harvest in Waycrest Manor.",
achieveid={12495},
startlevel=120,
endlevel=120,
keywords={"Soulbound, Goliath, Waycrest, Manor, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat the Soulbound Goliath without it gaining 12 stacks of Soul Harvest in Waycrest Manor on Mythic difficulty
The Soulbound Goliath gains 2 stacks of Soul Harvest every 2 seconds
Kite the boss through Wildfire to keep the stacks of Soul Harvest low as you fight
Earn the _Run Wild Like a Man On Fire_ Achievement |achieve 12495
step
_Congratulations!_
You Earned the "Run Wild Like a Man On Fire" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Shot Through the Heart",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Overseer Korgus after all party members have been stunned by Heartstopper Venom at the same time in Tol Dagor on Mythic difficulty.",
achieveid={12462},
startlevel=120,
endlevel=120,
keywords={"Overseer, Korgus, Tol, Dagor, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Overseer Korgus after all party members have been stunned by Heartstopper Venom at the same time in Tol Dagor on Mythic difficulty
Once the fight start you'll get a Heartstopper Venom bar on your screen that increases when you move and will stun you for 8 seconds if the bar completely fills
Have all party members move around at the beginning of the fight to trigger the Heartstopper stun and then defeat the boss
Earn the _Shot Through the Heart_ Achievement |achieve 12462
step
_Congratulations!_
You Earned the "Shot Through the Heart" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Shrine of the Storm",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Vol'zith the Whisperer in Shrine of the Storm.",
achieveid={12835},
startlevel=110,
endlevel=120,
keywords={"Vol'zith, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Shrine of the Storm
Click here to load the "Shrine of the Storm" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Shrine of the Storm"
Defeat Vol'zith the Whisperer in Shrine of the Storm |achieve 12835
step
_Congratulations!_
You Earned the "Shrine of the Storm" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Snake Eater",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you must force the Solid Egg to hatch during the Merektha encounter, defeat the Solid Snake, and become the Snake Eater in the Temple of Sethraliss on Mythic difficulty.",
achieveid={12507},
startlevel=120,
endlevel=120,
keywords={"Temple, of, Sethraliss, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must force the Solid Egg to hatch during the Merektha encounter, defeat the Solid Snake, and become the Snake Eater in the Temple of Sethraliss on Mythic difficulty
The egg is found on top of the large skeletal spine and must be revealed by a Flare or other AoE ability
The easiest way to get it is to have a Death Knight Death Grip it down to the ground
During the fight the Solid Egg must be hit by the boss' Noxious Breath and Blinding Sand abilities, which will cause the egg to hatch into the Solid Snake
Kill the Solid Snake and then each party member must click its corpse to gain the achievement before killing Merektha
|tip The "Looting" cast takes three seconds and the Solid Snake's corpse will disappear when Merektha is killed.
Earn the _Snake Eater_ Achievement |achieve 12507
step
_Congratulations!_
You Earned the "Snake Eater" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Snake Eyes",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to activate both of the eyes to exit the Bazaar in the Temple of Sethraliss within 10 seconds on Mythic difficulty.",
achieveid={12503},
startlevel=120,
endlevel=120,
keywords={"Temple, of, Sethraliss, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must activate both of the eyes to exit the Bazaar in the Temple of Sethraliss within 10 seconds on Mythic difficulty
Clear the room to collect each Orb, then bring them to the skeletal head at the same time
|tip Prioritize Orb Guardians because they will steal the Orbs from you.
Earn the _Snake Eyes_ Achievement |achieve 12503
step
_Congratulations!_
You Earned the "Snake Eyes" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Sporely Alive",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat the Unbound Abomination without any Rotting Spores dying in Underrot on Mythic difficulty.",
achieveid={12499},
startlevel=120,
endlevel=120,
keywords={"Underrot, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn the achievement, you must defeat the Unbound Abomination without any Rotting Spores dying in Underrot on Mythic difficulty
Kite the boss around the outside of the room in a circular motion, which will make the spores come to you and give you time to kill the boss
You can use CC's and AoE CC's to slow the spores
After you've kited the boss around the whole room there will be a lot of spores floating around, be careful not to hit them with any AoE abilities, but the boss should be almost dead at this point
|tip This achievement is a minor DPS check.
Earn the _Sporely Alive_ Achievement |achieve 12499
step
_Congratulations!_
You Earned the "Sporely Alive" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Stand By Me",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to never let Dread Captain Lockwood leap away while she has the evasive aura before defeating her in the Siege of Boralus on Mythic difficulty.",
achieveid={12727},
startlevel=120,
endlevel=120,
keywords={"Siege, of, Boralus, Dread, Captain, Lockwood, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must never let Dread Captain Lockwood leap away while she has the evasive aura before defeating her in the Siege of Boralus on Mythic difficulty
Don't stand where Dread Captain Lockwood jump when starting the fight
Use a slow debuff on her for phase 1 of the fight, and she will then jump back onto the ship for phase 2
Once on the boat she will spawn adds, kill the Ashvane Cannoneer as fast as possible
Click the cannon it drops when dead to interrupt the boss and she will jump off the ship, then finish her off
Earn the _Stand By Me_ Achievement |achieve 12727
step
_Congratulations!_
You Earned the "Stand By Me" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Taint Nobody Got Time For That",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Elder Leaxa without any party member receiving the Taint of G'huun in Underrot on Mythic difficulty.",
achieveid={12498},
startlevel=120,
endlevel=120,
keywords={"Elder, Leaxa, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Elder Leaxa without any party member receiving the Taint of G'huun in Underrot on Mythic difficulty
Players to be affected by Taint of G'huun if they are struck by any of Elder Leaxa's abilities
Interrupt Blood Bolt and move out of the way of Creeping Rot
Earn the _Taint Nobody Got Time For That_ Achievement |achieve 12498
step
_Congratulations!_
You Earned the "Taint Nobody Got Time For That" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\That Sweete Booty",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Harlan Sweete after destroying three Chests o' Booty in Freehold on Mythic Difficulty",
achieveid={12998},
startlevel=120,
endlevel=120,
keywords={"Harlan, Sweete, Freehold, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Harlan Sweete after destroying three Chests o' Booty in Freehold on Mythic Difficulty
The Chests o' Booty look like large piles of treasure chests and gold found around Harlan Sweete
The first two piles are in the front of the boss to the left and right and the third pile is directly to the left of the boss
When targeted by Cannon Barrage run over the Chests o' Booty and the barrage will destroy them
Once all three Chests o' Booty have been destroyed, kill the boss
Earn the _That Sweete Booty_ Achievement |achieve 12998
step
_Congratulations!_
You Earned the "That Sweete Booty" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\The MOTHERLODE!!",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Mogul Razdunk in The MOTHERLODE!!.",
achieveid={12844},
startlevel=120,
endlevel=120,
keywords={"Razdunk, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete The MOTHERLODE!!
Click here to load "The MOTHERLODE!!" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\The MOTHERLODE!!"
Defeat Mogul Razdunk in The MOTHERLODE!! |achieve 12844
step
_Congratulations!_
You Earned the "The MOTHERLODE!!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\The Temple of Sethraliss",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to restore the Avatar of Sethraliss in the Temple of Sethraliss.",
achieveid={12504},
startlevel=120,
endlevel=120,
keywords={"Avatar, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete the Temple of Sethraliss
Click here to load the "Temple of Sethraliss" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Temple of Sethraliss"
Complete the Avatar of Sethraliss encounter in the Temple of Sethraliss |achieve 12504
step
_Congratulations!_
You Earned the "The Temple of Sethraliss" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\The Void Lies Sleeping",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Lord Stormsong without coming into contact with any Awoken Void in Shrine of the Storm on Mythic difficulty",
achieveid={12601},
startlevel=120,
endlevel=120,
keywords={"Stormsong, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Lord Stormsong without coming into contact with any Awoken Void in Shrine of the Storm on Mythic difficulty
Lord Stormsong will cast Waken the Void which will spawn an Awoken Void add which will target and pursue players
Kite the Awoken Void adds around the room throughout the fight to avoid being touched by them
Earn _The Void Lies Sleeping_ Achievement |achieve 12601
step
_Congratulations!_
You Earned "The Void Lies Sleeping" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Tol Dagor",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Overseer Korgus in Tol Dagor.",
achieveid={12840},
startlevel=115,
endlevel=120,
keywords={"Korgus, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Tol Dagor
Click here to load the "Tol Dagor" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Tol Dagor"
Defeat Overseer Korgus in Tol Dagor |achieve 12840
step
_Congratulations!_
You Earned the "Tol Dagor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Trust No One",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Vol'zith the Whisperer while all party members are afflicted with Maddening Dreams in Shrine of the Storm on Mythic difficulty",
achieveid={12602},
startlevel=120,
endlevel=120,
keywords={"Vol'zith, Whisperer, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Vol'zith the Whisperer while all party members are afflicted with Maddening Dreams in Shrine of the Storm on Mythic difficulty
The Maddening Dreams debuff is gained from Void orbs that are deep down in the water around the boss
This debuff will make you hostile to your group members for 24 seconds, then friendly for 6 seconds and then repeats
|tip Healing can only be done during the 6 seconds your group members are friendly, so you must minimize the damage you take as much as possible.
Try not to use AoE's when fighting the boss as they will also damage your party members
When the boss uses Call of the Abyss it will summon 5 Manifestation of the Deep adds, which must be killed for CC'ed as they cannot be allowed to reach the boss
|tip If a group member dies and loses their Maddening Dreams debuff they can swim back down into the water to the Void orbs and get the debuff again.
Earn the _Trust No One_ Achievement |achieve 12602
step
_Congratulations!_
You Earned the "Trust No One" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Underrot",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat the Unbound Abomination in Underrot.",
achieveid={12500},
startlevel=120,
endlevel=120,
keywords={"Unbound, Abomination, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete the Underrot
Click here to load the "Underrot" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\The Underrot"
Defeat the Unbound Abomination in the Underrot |achieve 12500
step
_Congratulations!_
You Earned the "Underrot" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Waycrest Manor",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat the Gorak Tul in Waycrest Manor.",
achieveid={12483},
startlevel=110,
endlevel=120,
keywords={"Gorak, Tul, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, complete Waycrest Manor
Click here to load the "Waycrest Manor" dungeon guide |confirm |next "Zygor's Dungeon Guides\\Battle for Azeroth Dungeons\\Waycrest Manor"
Defeat Gorak Tul in Waycrest Manor |achieve 12483
step
_Congratulations!_
You Earned the "Waycrest Manor" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Wrap God",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to defeat Mchimba the Embalmer without him finishing a cast of Open Coffin and with entombed players using Struggle no more than once per cast of Entomb in Kings' Rest on Mythic Difficulty.",
achieveid={12721},
startlevel=120,
endlevel=120,
keywords={"Kings', Rest, Mchimba, Embalmer, Mythic, Dungeon, BFA, Battle, for, Azeroth"},
},[[
step
To earn this achievement, you must defeat Mchimba the Embalmer without him finishing a cast of Open Coffin and with entombed players using Struggle no more than once per cast of Entomb in Kings' Rest on Mythic difficulty
Assign party members to a specific coffin
Mchimba the Embalmer will cast Entomb and trap a player in one of the coffins, then he will start casting Open Coffin
Whoever is entombed can use Struggle to help alert the rest of the party to their location, and the party member assigned to that coffin can free them
|tip If you are entombed wait for Mchimba to start casting Open Cofffin before you use Struggle.
|tip Trying to use Struggle before Mchimba starts casting Open Coffin can cause the achievement to bug.
Earn the _Wrap God_ Achievement |achieve 12721
step
_Congratulations!_
You Earned the "Wrap God" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Double Dribble",{
author="support@zygorguides.com",
description="This mount will walk you through earning the Double Dribble achievement.",
achieveid={12551},
startlevel=120,
endlevel=120,
keywords={"Uldir, Raid, BFA, Battle, for, Azeroth, Double, Dribble"},
},[[
step
kill G'huun##144218
|tip During the encounter, "Power Matrices" will spawn.
|tip This achievement is earned by not moving while in possession of the "Power Matrices".
|tip Do not move when if/when you pick up the Power Matrices to earn the achievement.
Earn the "Double Dribble" Achievement |achieve 12551
step
_Congratulations!_
You Earned the "Double Dribble" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Elevator Music",{
author="support@zygorguides.com",
description="This mount will walk you through earning the Elevator Music achievement.",
achieveid={12937},
startlevel=120,
endlevel=120,
keywords={"Uldir, Raid, BFA, Battle, for, Azeroth, Elevator, Music"},
},[[
step
kill Taloc##122276
|tip During the encounter, Orbs will spawn around the room.
|tip To earn this achievement, activate all Orbs of Harmony as they appear.
Earn the "Elevator Music" Achievement |achieve 12937
step
_Congratulations!_
You Earned the "Elevator Music" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Parental Controls",{
author="support@zygorguides.com",
description="This mount will walk you through earning the Parental Controls achievement.",
achieveid={12938},
startlevel=120,
endlevel=120,
keywords={"Uldir, Raid, BFA, Battle, for, Azeroth, Parental, Controls"},
},[[
step
kill MOTHER##135452
|tip There are two buttons in each chamber during the encounter.
|tip To earn the achievement, click on all of them when they become available before defeating MOTHER.
Earn the "Parental Controls" Achievement |achieve 12938
step
_Congratulations!_
You Earned the "Parental Controls" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Thrash Mouth - All Stars",{
author="support@zygorguides.com",
description="This mount will walk you through earning the Thrash Mouth - All Stars achievement.",
achieveid={12823},
startlevel=120,
endlevel=120,
keywords={"Uldir, Raid, BFA, Battle, for, Azeroth, Thrash, Mouth, All, Stars"},
},[[
step
kill Fetid Devourer##133298
|tip After every four melee attacks, the Fetid Devourer will cast Terrible Thrash on the target closest to the current tank.
|tip To earn this achievement, you will need to cycle raid members to stand next to the main tank either 10 or 25 times, depending on your raid size.
|tip Once everyone has been hit, defeat the Fetid Devourer for the achievement.
Earn the "Thrash Mouth - All Stars" Achievement |achieve 12823
step
_Congratulations!_
You Earned the "Thrash Mouth - All Stars" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\What's in the Box?",{
author="support@zygorguides.com",
description="This mount will walk you through earning the What's in the Box? achievement.",
achieveid={12828},
startlevel=120,
endlevel=120,
keywords={"Uldir, Raid, BFA, Battle, for, Azeroth, What's, in, the, Box?"},
},[[
step
kill Zek'voz##134445
|tip You will need to have at least one person in the raid to have the Archaeology skill leveled to the max in order to earnt his achievement.
|tip During the encounter, you will need to use your Archaeology skill to unearth the Puzzle Box of Yogg-Saron.
|tip Once it is found, you will need to present it to the Projection of Yogg-Saron.
|tip Defeat Zek'voz after this for the achievement.
Earn the "What's in the Box?" Achievement |achieve 12828
step
_Congratulations!_
You Earned the "What's in the Box?" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Now We Got Bad Blood",{
author="support@zygorguides.com",
description="This mount will walk you through earning the Now We Got Bad Blood achievement.",
achieveid={12772},
startlevel=120,
endlevel=120,
keywords={"Uldir, Raid, BFA, Battle, for, Azeroth, Now, We, Got, Bad, Blood"},
},[[
step
kill Vectis##134442
|tip You will need to infect Warmother Rakkali with the Plague Blomb ability during the fight.
|tip To earn this achievement, have the raid stand with the Warmother Rakkali.
|tip When Plague Bomb is cast, be sure that she is within 6 yards of the affected area.
|tip Once she is afflicted, kill Vectis for the achievement.
Earn the "Now We Got Bad Blood" Achievement |achieve 12772
step
_Congratulations!_
You Earned the "Now We Got Bad Blood" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Edgelords",{
author="support@zygorguides.com",
description="This mount will walk you through earning the Edgelords achievement.",
achieveid={12830},
startlevel=120,
endlevel=120,
keywords={"Uldir, Raid, BFA, Battle, for, Azeroth, Edgelords"},
},[[
step
kill Zul, Reborn##138967
|tip During the first phase, a portal will open that summons adds.
|tip To earn this achievement, defeat Zul without any raid member stepping onto the inner ring of the Oblivion Door.
Earn the "Edgelords" Achievement |achieve 12830
step
_Congratulations!_
You Earned the "Edgelords" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Existential Crisis",{
author="support@zygorguides.com",
description="This mount will walk you through earning the Edgelords achievement.",
achieveid={12836},
startlevel=120,
endlevel=120,
keywords={"Uldir, Raid, BFA, Battle, for, Azeroth, Existential, Crisis"},
},[[
step
kill Mythrax the Unraveler##136383
|tip During the encounter, Existence Fragments will spawn on players who recently gained a stack of Annihilation.
|tip To earn the achievement, you will need to defeat Mythrax without anyone in the raid touching the Existence Fragment.
|tip This will be a DPS race, as the more stacks of Annihilation you get, the less your health pool will be and the more damage over time you will take.
Earn the "Existential Crisis" Achievement |achieve 12836
step
_Congratulations!_
You Earned the "Existential Crisis" Achievement.
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Tiragarde Sound",{
achieveid={12556},
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
condition_end=function() return achieved(12556) end,
keywords={"explore, tiragarde, sound"},
description="This guide will walk you through completing the \"Explore Tiragarde Sound\" achievement.",
},[[
step
Explore Boralus |achieve 12556/2 |goto Boralus/0 67.73,15.44
step
Explore Fernwood Ridge |achieve 12556/3 |goto Tiragarde Sound/0 70.85,18.30
step
Explore Norwington Estate |achieve 12556/5 |goto 51.71,27.28
step
Follow the path up |goto 43.59,20.81 < 15 |only if walking
Explore Waning Glacier |achieve 12556/11 |goto 42.14,16.53
step
Explore Anglepoint Wharf |achieve 12556/1 |goto 41.67,26.82
step
Explore Krakenbane Cove |achieve 12556/6 |goto 35.65,29.32
step
Explore Vigil Hill |achieve 12556/10 |goto 57.36,61.70
step
Explore Abandoned Junkheap |achieve 12556/7 |goto 63.73,62.19
step
Explore Kennings Lodge |achieve 12556/8 |goto 76.42,63.58
step
Explore The Wailing Tideway |achieve 12556/9 |goto 87.62,79.33
step
Explore Freehold |achieve 12556/4 |goto 76.99,82.46
step
_Congratulations!_
You Earned the "Explore Tiragarde Sound" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Drustvar",{
achieveid={12557},
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
condition_end=function() return achieved(12557) end,
keywords={"explore, drustvar"},
description="This guide will walk you through completing the \"Explore Drustvar\" achievement.",
},[[
step
Explore Fallhaven |achieve 12557/6 |goto Drustvar/0 55.55,35.07
step
Cross the bridge |goto 54.55,36.50 < 15 |only if walking
Follow the path up |goto 57.57,39.81 < 15 |only if walking
Continue up the path |goto 57.40,42.33 < 15 |only if walking
Explore Barrowknoll Cemetery |achieve 12557/2 |goto 59.47,45.76
step
Explore Carver's Harbor |achieve 12557/3 |goto 64.41,29.68
step
Explore Highroad Pass |achieve 12557/9 |goto 48.41,30.95
step
Explore Arom's Stand |achieve 12557/1 |goto 37.85,50.16
step
Explore Crimson Forest |achieve 12557/5 |goto 24.20,54.15
step
Explore Fletcher's Hollow |achieve 12557/7 |goto 69.71,62.99
step
Follow the path up |goto 67.16,55.57 < 15 |only if walking
Explore Gol Koval |achieve 12557/8 |goto 61.62,61.26
step
Follow the path up |goto 62.03,68.19 < 7 |only if walking
Continue up the path |goto 62.79,70.02 < 15 |only if walking
Continue up the path |goto 60.97,70.67 < 5 |only if walking
Explore Iceveil Glacier |achieve 12557/11 |goto 54.24,73.57
step
Explore Corlain |achieve 12557/4 |goto 29.22,28.50
step
Follow the path up |goto 30.77,22.67 < 15 |only if walking
Follow the path |goto 31.00,20.34 < 15 |only if walking
Explore Waycrest Manor |achieve 12557/12 |goto 31.81,17.13
step
Explore Western Watch |achieve 12557/10 |goto 20.05,8.94
step
_Congratulations!_
You Earned the "Explore Drustvar" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Stormsong Valley",{
achieveid={12558},
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
condition_end=function() return achieved(12558) end,
keywords={"explore, stormsong, valley"},
description="This guide will walk you through completing the \"Explore Stormsong Valley\" achievement.",
},[[
step
Explore Brenndam |achieve 12558/1 |goto Stormsong Valley/0 59.20,69.69
step
Follow the path up |goto 50.08,69.27 < 15 |only if walking
Explore Briarback Kraul |achieve 12558/2 |goto 47.82,70.41
step
Explore Millstone Hamlet |achieve 12558/9 |goto 30.84,67.14
step
Explore Fort Daelin |achieve 12558/6 |goto 38.43,48.87
step
Explore Deadwash |achieve 12558/5 |goto 44.38,52.92
step
Explore Warfang Hold |achieve 12558/4 |goto 52.29,32.93
step
Explore Sagehold |achieve 12558/7 |goto 61.56,41.22
step
Explore Mariner's Strand |achieve 12558/3 |goto 68.53,55.43
step
Explore Shrine of the Storm |achieve 12558/8 |goto 77.81,27.25
step
_Congratulations!_
You Earned the "Explore Stormsong Valley" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Zuldazar",{
achieveid={12559},
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
condition_end=function() return achieved(12559) end,
keywords={"explore, zuldazar"},
description="This guide will walk you through completing the \"Explore Zuldazar\" achievement.",
},[[
step
Explore Xibala |achieve 12559/11 |goto Zuldazar/0 40.76,71.02
step
Cross the bridge |goto 53.02,49.12 < 15 |only if walking
Explore Dazar'alor |achieve 12559/4 |goto Dazar'alor/0 41.46,60.88
step
Follow the path up |goto Zuldazar/0 46.06,38.50 < 15 |only if walking
Continue up the path |goto 44.96,37.79 < 15 |only if walking
Explore Atal'Dazar |achieve 12559/1 |goto 43.56,39.47
step
Follow the path |goto 46.50,30.60 < 15 |only if walking
Cross the bridge |goto 46.60,28.58 < 7 |only if walking
Follow the path down |goto 46.62,27.54 < 15 |only if walking
Explore Garden of the Loa |achieve 12559/6 |goto 48.38,26.87
step
Explore Blood Gate |achieve 12559/3 |goto 61.02,22.24
step
Explore The Sliver |achieve 12559/8 |goto 61.10,27.37
step
Follow the path |goto 61.11,26.11 < 15 |only if walking
Continue following the path |goto 62.23,24.58 < 15 |only if walking
Follow the path up |goto 64.44,24.45 < 15 |only if walking
Explore Savagelands |achieve 12559/7 |goto 66.87,25.38
step
Explore Zeb'ahari |achieve 12559/12 |goto 74.35,20.59
step
Explore Atal'Gral |achieve 12559/2 |goto 78.70,38.72
step
Explore Talanji's Rebuke |achieve 12559/10 |goto 77.62,49.91
step
Explore Dreadpearl Shallows |achieve 12559/5 |goto 72.35,66.27
step
Explore Tusk Isle |achieve 12559/9 |goto 59.38,77.95
step
_Congratulations!_
You Earned the "Explore Zuldazar" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Nazmir",{
achieveid={12561},
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
condition_end=function() return achieved(12561) end,
keywords={"explore, nazmir"},
description="This guide will walk you through completing the \"Explore Nazmir\" achievement.",
},[[
step
Explore Nazwatha |achieve 12561/7 |goto Nazmir/0 65.14,40.21
step
Explore Torga's Rest |achieve 12561/6 |goto 61.66,29.99
step
Explore The Frogmarsh |achieve 12561/9 |goto 67.69,48.00
step
Explore Zal'amak |achieve 12561/8 |goto 63.62,52.97
step
Explore The Necropolis |achieve 12561/4 |goto 39.53,33.52
step
Explore Zalamar |achieve 12561/5 |goto 35.74,46.45
step
Explore Primal Wetlands |achieve 12561/1 |goto 35.42,72.52
step
Explore The Rivermarsh |achieve 12561/3 |goto 41.54,77.60
step
Follow the path |goto 54.13,63.02 < 5 |walk
Explore Heart of Darkness |achieve 12561/2 |goto 53.89,62.71
step
_Congratulations!_
You Earned the "Explore Nazmir" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Vol'dun",{
achieveid={12560},
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
condition_end=function() return achieved(12560) end,
keywords={"explore, vol'dun"},
description="This guide will walk you through completing the \"Explore Vol'dun\" achievement.",
},[[
step
Explore Shatterstone Harbor |achieve 12560/5 |goto Vol'dun/0 38.28,34.53
step
Explore Slithering Gulch |achieve 12560/6 |goto 50.61,33.09
step
Explore The Brine Basin |achieve 12560/10 |goto 57.08,39.55
step
Follow the path up |goto 59.12,35.82 < 15 |only if walking
Cross the bridge |goto 61.49,24.76 < 15 |only if walking
Explore Tortaka Refuge |achieve 12560/12 |goto 61.79,22.04
step
Explore Darkwood Shoal |achieve 12560/2 |goto 62.91,26.82
step
Explore The Bone Pit |achieve 12560/9 |goto 43.44,49.80
step
Explore Atul'Aman |achieve 12560/1 |goto 44.92,58.99
step
Follow the path down |goto 44.21,61.99 < 15 |only if walking
Explore Whistlebloom Oasis |achieve 12560/13 |goto 42.88,61.42
step
Explore Terrace of the Devoted |achieve 12560/8 |goto 30.46,54.65
step
Explore The Cracked Coast |achieve 12560/11 |goto 27.12,57.41
step
Explore Port of Zem'lan |achieve 12560/3 |goto 33.03,76.82
step
Explore Redrock Harbor |achieve 12560/4 |goto 41.23,84.98
step
Explore Temple of Akunda |achieve 12560/7 |goto 53.17,89.37
step
_Congratulations!_
You Earned the "Explore Vol'dun" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Battle for Azeroth Explorer",{
achieveid={12988},
author="support@zygorguides.com",
startlevel=110,
keywords={"Battle","for","Azeroth","Explorer"},
description="This guide will walk you through completing the \"Battle for Azeroth Explorer\" Achievement.",
},[[
step
Explore Tiragarde Sound |achieve 12988/1
|tip Use the "Explore Tiragarde Sound" achievement guide to accomplish this.
Click here to load the "Explore Tiragarde Sound" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Tiragarde Sound"
step
Explore Drustvar |achieve 12988/2
|tip Use the "Explore Drustvar" achievement guide to accomplish this.
Click here to load the "Explore Drustvar" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Drustvar"
step
Explore Stormsong Valley |achieve 12988/3
|tip Use the "Explore Stormsong Valley" achievement guide to accomplish this.
Click here to load the "Explore Stormsong Valley" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Stormsong Valley"
step
Explore Zuldazar |achieve 12988/4
|tip Use the "Explore Zuldazar" achievement guide to accomplish this.
Click here to load the "Explore Zuldazar" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Zuldazar"
step
Explore Nazmir |achieve 12988/5
|tip Use the "Explore Nazmir" achievement guide to accomplish this.
Click here to load the "Explore Nazmir" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Nazmir"
step
Explore Vol'dun |achieve 12988/6
|tip Use the "Explore Vol'dun" achievement guide to accomplish this.
Click here to load the "Explore Vol'dun" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Explore Vol'dun"
step
_Congratulations!_
You Earned the "Battle for Azeroth Explorer" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Battle for Azeroth Pathfinder, Part One",{
achieveid={12989},
author="support@zygorguides.com",
startlevel=110,
keywords={"Battle","for","Azeroth","Pathfinder","Part","One"},
description="This guide will walk you through completing the \"Battle for Azeroth Pathfinder, Part One\" Achievement.",
},[[
step
Earn the _Battle for Azeroth Explorer_ achievement |achieve 12989/1 |or
|tip Use the "Battle for Azeroth Explorer" achievement guide to accomplish this.
Click here to load the "Battle for Azeroth Explorer" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Battle for Azeroth\\Battle for Azeroth Explorer" |or
step
Earn the _Azerothian Diplomat_ achievement |achieve 12989/2 |or
|tip Use the "Azerothian Diplomat" achievement guide to accomplish this.
Click here to load the "Azerothian Diplomat" guide |confirm |next "Zygor's Achievement Guides\\Reputations\\Battle for Azeroth\\Azerothian Diplomat" |or
step
Earn the _Wide World of Quests_ achievement |achieve 12989/3 |or
|tip Use the "Wide World of Quests" achievement guide to accomplish this.
Click here to load the "Wide World of Quests" guide |confirm |next "Zygor's Achievement Guides\\Quests\\Battle for Azeroth\\Wide World of Quests" |or
step
Earn the _Kul Tourist_ achievement |achieve 12989/4 |or
|tip Use the "Kul Tourist" achievement guide to accomplish this.
Click here to load the "Kul Tourist" guide |confirm |next "Zygor's Achievement Guides\\Quests\\Battle for Azeroth\\Kul Tourist" |or
step
Earn the _Ready for War_ achievement |achieve 12989/5 |or
|tip Use the "War Campaign" leveling guide to accomplish this.
Click here to load the "War Campaign" guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\War Campaign" |or
step
_Congratulations!_
You Earned the "Battle for Azeroth Pathfinder, Part One" Achievement.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Feats of Strength\\Allied Races: Void Elf",{
achieveid={12242},
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
condition_end=function() return achieved(12242) end,
keywords={"battle, of, azeroth, preorder"},
description="To acquire this achievement, you must purchase the Battle of Azeroth collector's edition.",
},[[
step
Load the "Void Elf Race Unlock" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth\\Void Elf Race Unlock"
|tip Click the line above to load the guide.
|tip Completing this guide will grant you this achievment.
Earn the "Allied Races: Void Elf" Achievement |achieve 12242
step
_Congratulations!_
You Earned the "Allied Races: Void Elf" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Feats of Strength\\Allied Races: Lightforged Draenei",{
achieveid={12243},
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
condition_end=function() return achieved(12243) end,
keywords={"battle, of, azeroth, preorder"},
description="To acquire this achievement, you must purchase the Battle of Azeroth collector's edition.",
},[[
step
Load the "Lightforged Draenei Race Unlock" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth\\Lightforged Draenei Race Unlock"
|tip Click the line above to load the guide.
|tip Completing this guide will grant you this achievment.
Earn the "Allied Races: Lightforged Draenei" Achievement |achieve 12243
step
_Congratulations!_
You Earned the "Allied Races: Lightforged Draenei" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Battle for Azeroth\\The Pride of Kul Tiras",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you must first earn the \"Kul Tourist\" achievement.\nYou will then complete a string of quests to rescue Jaina Proudmoore.",
achieveid={12997},
startlevel=120,
endlevel=120,
keywords={"Kul, Tiras, BFA, Battle, Azeroth, Pride, Jaina, Proudmoore"},
},[[
step
Complete the "A Sound Plan" Achievement |achieve 12473
|tip Use the "Tirigarde Sound" Leveling guide to accomplish this.
step
Complete the "Drust Do It." Achievement |achieve 12497
|tip Use the "Drustvar" Leveling guide to accomplish this.
step
Complete the "Stormsong and Dance" Achievement |achieve 12496
|tip Use the "Stormsong Valley" Leveling guide to accomplish this.
step
talk Cyrus Crestfall##122370
|tip Inside the building.
accept What You May Regret##52194 |goto Boralus/0 67.99,21.91
step
Run up the stairs |goto Boralus/0 48.74,62.58 < 20 |only if walking
Cross the bridge |goto Boralus/0 40.97,72.19 < 15 |only if walking
talk Genn Greymane##140649
Choose _<Give Genn a moment to speak with Katherine.>_
Speak with Genn Greymane |q 52194/1 |goto Tiragarde Sound/0 67.30,36.23
step
Watch the dialogue
talk Katherine Proudmoore##140495
turnin What You May Regret##52194 |goto Tiragarde Sound/0 66.96,36.23
accept Lost Shipment##52246 |goto Tiragarde Sound/0 66.96,36.23
step
Run down the stairs |goto Boralus/0 67.27,16.24 < 20 |only if walking
Follow the path |goto 62.27,27.05 < 20 |only if walking
Run up the stairs |goto 56.18,33.55 < 20 |only if walking
click Shipping Contracts
|tip Inside the building.
Search the Ashvane Offices |q 52246/1 |goto Boralus/0 53.53,35.47
step
Watch the dialogue
|tip Inside the building.
kill Emery Camden##140744 |q 52246/2 |goto 53.53,34.73
step
Run up the stairs |goto Boralus/0 48.74,62.58 < 20 |only if walking
Cross the bridge |goto Boralus/0 40.97,72.19 < 15 |only if walking
talk Katherine Proudmoore##140495
Tell her _"I found this clue in Ashvane's offices."_
Watch the dialogue
Speak to Katherine Proudmoore |q 52246/3 |goto Tiragarde Sound/0 66.96,36.23
step
talk Katherine Proudmoore##140495
turnin Lost Shipment##52246 |goto Tiragarde Sound/0 66.96,36.23
step
talk Genn Greymane##140649
accept A Local Guide##52762 |goto Tiragarde Sound/0 66.96,36.19
step
Enter the building |goto Boralus/0 68.82,21.09 < 10 |walk
talk Flynn Fairwind##140732
|tip Inside the building.
Tell him _"Lady Katherine has asked me to look for her daughter. This is the only clue I have so far."_
Watch the dialogue
Show Flynn the Contract |q 52762/1 |goto Boralus/0 67.59,22.15
step
talk Flynn Fairwind##140732
|tip Inside the building.
turnin A Local Guide##52762 |goto 67.59,22.14
accept An Explosive Entrance##52252 |goto 67.59,22.14
step
Kill Company enemies around this area
click Large Azerite Grenade+
|tip They look like single grey round metal balls on the ground around this area.
click Box of Large Azerite Grenades+
|tip They look like wooden boxes filled with grey round metal balls on the ground around this area.
collect 100 Large Azerite Grenade##161438 |q 52252/1 |goto Tiragarde Sound/0 79.50,48.27
step
talk Flynn Fairwind##140732
turnin An Explosive Entrance##52252 |goto 76.93,82.84
accept The Keys to Success in Freehold##52253 |goto 76.93,82.84
step
kill Beckett 'Salty Dog' Ogden##140914
|tip He walks around this area.
|tip Use the "Call in Airstrike" ability on him.
|tip It appears as a button on the screen.
collect Beckett's Strongbox Key##161477 |q 52253/2 |goto 77.77,80.47
step
Follow the path up |goto 75.64,81.66 < 20 |only if walking
Run up the stairs |goto 74.92,84.53 < 15 |only if walking
kill Luna 'Stabby' Roscoe##140915
|tip Use the "Call in Airstrike" ability on her.
|tip It appears as a button on the screen.
collect Luna's Strongbox Key##161478 |q 52253/3 |goto 75.14,84.37
step
Enter the building |goto 73.40,84.11 < 10 |walk
kill Reed 'The Flirt' Fisc##140913
|tip Inside the building.
|tip Lure him outside, so you can use the "Call in Airstrike" ability on him.
|tip It appears as a button on the screen.
collect Reed's Strongbox Key##161476 |q 52253/1 |goto 73.28,84.29
step
_Next to you:_
talk Flynn Fairwind
turnin The Keys to Success in Freehold##52253
accept Sweete's Strongbox##52311
step
Cross the bridge |goto 75.56,82.58 < 10 |only if walking
Find the Strongbox |q 52311/1 |goto 74.63,78.53
step
click Sweete's Lockbox
Open Sweete's Strongbox |q 52311/2 |goto 74.52,78.59
step
talk Flynn Fairwind##141136
Ask him _"I assume you have a plan for getting out of here with that?"_
Talk to Flynn |q 52311/3 |goto 74.53,78.61
step
Jump down here |goto 75.01,77.54 < 15 |walk
Watch the dialogue
Make a Daring Escape |q 52311/4 |goto 75.30,76.62
step
talk Flynn Fairwind##140732
turnin Sweete's Strongbox##52311 |goto 75.35,48.86
accept Tol Dagor: The Fourth Key##52445 |goto 75.35,48.86
stickystart "Kill_Overseer_Korgus"
step
click Ashvane Skeleton Keys##293959
|tip It looks like a metal ring with keys on it on the wall of the room with Knight Captain Valyri.
|tip He's the third boss in the Tol Dagor dungeon.
|tip Use the Group Finder to enter the dungeon.
|tip Use the Tol Dagor dungeon guide to accomplish this.
collect Ashvane Skeleton Key##162008 |q 52445/2
step
label "Kill_Overseer_Korgus"
kill Overseer Korgus##127503 |q 52445/1
|tip He is the final boss inside the Tol Dagor dungeon.
|tip Use the Group Finder to enter the dungeon.
|tip Use the Tol Dagor dungeon guide to accomplish this.
step
Enter the building |goto Boralus/0 68.82,21.09 < 10 |walk
talk Flynn Fairwind##140732
|tip Inside the building.
Tell him _"Here, I have the last key!"_
Watch the dialogue
Speak with Flynn Fairwind at the Habormaster's Office |q 52445/3 |goto Boralus/0 68.10,22.58
step
talk Flynn Fairwind##140732
|tip Inside the building.
turnin Tol Dagor: The Fourth Key##52445 |goto 68.10,22.58
accept The Mysterious Island##52449 |goto 68.10,22.58
step
Run up the stairs |goto 48.67,62.63 < 20 |only if walking
Follow the path |goto 42.53,72.97 < 30 |only if walking
talk Katherine Proudmoore##140495
Tell her _"Your daughter was taken to Fate's End."_
Watch the dialogue
Report to Katherine Proudmoore in Boralus |q 52449/1 |goto 36.33,62.91
step
talk Katherine Proudmoore##140495
turnin The Mysterious Island##52449 |goto 36.33,62.91
accept A Forlorn Hope##52453 |goto 36.33,62.91
step
talk Brother Pike##141223
turnin A Forlorn Hope##52453 |goto Stormsong Valley/0 70.36,36.38
accept The Strength of the Storm##52509 |goto Stormsong Valley/0 70.36,36.38
accept Ritual Effects##52508 |goto Stormsong Valley/0 70.36,36.38
stickystart "Collect_Ritual_Lantern"
stickystart "Collect_Ritual_Robes"
stickystart "Gather_Stormsurges"
step
Follow the path up |goto 73.65,37.75 < 30 |only if walking
Kill enemies around this area
|tip Only enemies wearing purple clothes will drop this quest item.
collect Ritual Knife##162423 |q 52508/1 |goto 74.18,34.54
step
label "Collect_Ritual_Lantern"
Kill enemies around this area
|tip Only enemies wearing purple clothes will drop this quest item.
collect Ritual Lantern##162425 |q 52508/2 |goto 74.18,34.54
step
label "Collect_Ritual_Robes"
Kill enemies around this area
|tip Only enemies wearing purple clothes will drop this quest item.
collect Ritual Robes##162429 |q 52508/3 |goto 74.18,34.54
step
label "Gather_Stormsurges"
Kill enemies around this area
|tip Only enemies that look like elementals will count for this quest goal.
use the Staff of Storms##162446
|tip Use it next to their corpses.
Gather #6# Stormsurges |q 52509/1 |goto 74.18,34.54
step
talk Brother Pike##137691
turnin The Strength of the Storm##52509 |goto 78.33,28.78
turnin Ritual Effects##52508 |goto 78.33,28.78
accept Shrine of the Storm: The Missing Ritual##52510 |goto 78.33,28.78
stickystart "Kill_Volzith_The_Whisperer"
step
use the Staff of Storms##162462
|tip Use it next to the Scroll of Safe Passage.
click Scroll of Safe Passage##293699
|tip It looks like a dark piece of paper floating in a pink orb inside the building after you kill Brother Ironhull.
|tip He is the second boss in the Shrine of the Storm dungeon.
|tip Use the Group Finder to enter the dungeon.
|tip Use the Shrine of the Storm dungeon guide to accomplish this.
collect Ritual of Safe Passage##162456 |q 52510/1
step
label "Kill_Volzith_The_Whisperer"
kill Vol'zith the Whisperer##134069 |q 52510/2
|tip He is the final boss inside the Shrine of the Storm dungeon.
|tip Use the Group Finder to enter the dungeon.
|tip Use the Shrine of the Storm dungeon guide to accomplish this.
step
talk Brother Pike##141223
turnin Shrine of the Storm: The Missing Ritual##52510 |goto Stormsong Valley/0 21.37,69.61
accept Opening the Way##52511 |goto Stormsong Valley/0 21.37,69.61
step
talk Brother Pike##141223
Tell him _"I am ready to begin."_
Speak with Brother Pike to Begin |q 52511/1 |goto 21.37,69.61
step
Ring the Ritual Bell
|tip Stand in the blue circle on the ground.
|tip Use the "Forlorn Toll" ability.
|tip It appears as a button on the screen.
Watch the dialogue
Click Here After Ringing the Ritual Bell |confirm |goto 21.37,69.39 |q 52511
step
Use the Ritual Knife
|tip Stand in the blue circle on the ground.
|tip Use the "Drop of Blood" ability.
|tip It appears as a button on the screen.
Watch the dialogue
Click Here After Using the Ritual Knife |confirm |goto 21.49,69.39 |q 52511
step
Lift the Ritual Lantern
|tip Stand in the blue circle on the ground.
|tip Use the "Light on the Waters" ability.
|tip It appears as a button on the screen.
Watch the dialogue
Perform the Ritual in the Correct Order |q 52511/2 |goto 21.21,69.42
step
talk Brother Pike##141223
turnin Opening the Way##52511 |goto 21.37,69.61
accept Fate's End##52512 |goto 21.37,69.61
step
click Boat to Fate's End
Begin Riding in the Boat |invehicle |goto 21.47,69.05 |q 52512
step
Watch the dialogue
Take the Boat to Fate's End |q 52512/1 |goto 6.51,31.41 |notravel
step
click Jaina's Staff
Search for Signs of Jaina |q 52512/2 |goto 6.51,30.55
step
kill Herald of Gorak Tul##139993 |q 52512/3 |goto 6.51,30.56
step
talk Brother Pike##141223
turnin Fate's End##52512 |goto 6.67,31.62
accept Lost in Darkness##52513 |goto 6.67,31.62
step
Run up the stairs |goto Boralus/0 48.67,62.63 < 20 |only if walking
Follow the path |goto Boralus/0 42.53,72.97 < 30 |only if walking
talk Katherine Proudmoore##140495
turnin Lost in Darkness##52513 |goto Boralus/0 36.33,62.91
accept Of Myth and Fable##52481 |goto Boralus/0 36.33,62.91
step
Enter the building |goto Drustvar/0 37.14,50.19 < 10 |walk
talk Lucille Waycrest##129642
|tip Inside the building.
turnin Of Myth and Fable##52481 |goto Drustvar/0 36.86,50.11
accept The Old Bear##52482 |goto Drustvar/0 36.86,50.11
step
Follow the road |goto 40.56,47.70 < 30 |only if walking
Follow the path up |goto 44.85,39.94 < 15 |only if walking
Follow the path up |goto 46.75,39.46 < 15 |only if walking
Enter the cave |goto 46.03,45.33 < 15 |walk
talk Ulfar##141894
|tip Inside the cave.
Tell him _"I'm looking for a way into the Blighted Lands."_
Watch the dialogue
Speak with Ulfar |q 52482/1 |goto 45.21,45.85
step
Kill the enemies that attack in waves
Watch the dialogue
Defend Ulfar |q 52482/2 |goto 46.25,45.11
step
talk Ulfar##141894
|tip Inside the cave.
turnin The Old Bear##52482 |goto 45.22,45.83
accept Nightmare Catcher##52483 |goto 45.22,45.83
accept Buried Power##52484 |goto 45.22,45.83
accept Hatred's Focus##52485 |goto 45.22,45.83
step
Follow the path up |goto 39.79,52.57 < 20 |only if walking
click Korvash's Bones
Unearth Korvash's Bones |q 52485/1 |goto 39.34,65.53
stickystart "Collect_Intact_Drust_Bones"
stickystart "Collect_Ancient_Sinew"
stickystart "Collect_Drust_Runestones"
step
Watch the dialogue
kill Korvash##142097
collect Korvash's Skull##162527 |q 52485/2 |goto 39.34,65.53
step
label "Collect_Intact_Drust_Bones"
Kill enemies around this area
|tip Only enemies that look like skeletons will drop this quest item.
collect 4 Intact Drust Bone##162524 |q 52483/1 |goto 38.26,61.90
step
label "Collect_Ancient_Sinew"
Kill enemies around this area
|tip Only enemies that look like skeletons will drop this quest item.
collect 9 Ancient Sinew##162525 |q 52483/2 |goto 38.26,61.90
step
label "Collect_Drust_Runestones"
click Snow Mound+
|tip Walk around this area and look for small black circles that appear on the ground.
|tip Walk close to them and they will turn into white piles of snow.
collect 6 Drust Runestone##162526 |q 52484/1 |goto 38.26,61.90
step
Follow the road |goto 40.56,47.70 < 30 |only if walking
Follow the path up |goto 44.85,39.94 < 15 |only if walking
Follow the path up |goto 46.75,39.46 < 15 |only if walking
Enter the cave |goto 46.03,45.33 < 15 |walk
talk Ulfar##141894
|tip Inside the cave.
turnin Nightmare Catcher##52483 |goto 45.22,45.83
turnin Buried Power##52484 |goto 45.22,45.83
turnin Hatred's Focus##52485 |goto 45.22,45.83
accept Waycrest Manor: Draining the Heartsbane##52486 |goto 45.22,45.83
stickystart "Defeat_Gorak_Tul"
step
Empower Korvash's Skull |q 52486/1
|tip Use the "Empower" ability.
|tip It appears as a button on the screen when you are in the room with Lord and Lady Waycrest
|tip They are the fourth bosses in the Waycrest Manor dungeon.
|tip Use the Group Finder to enter the dungeon.
|tip Use the Waycrest Manor dungeon guide to accomplish this.
step
label "Defeat_Gorak_Tul"
kill Gorak Tul##144324
|tip He is the final boss inside the Waycrest Manor dungeon.
|tip Use the Group Finder to enter the dungeon.
|tip Use the Waycrest Manor dungeon guide to accomplish this.
Defeat Gorak Tul |q 52486/2
step
Enter the building |goto Drustvar/0 37.14,50.19 < 10 |walk
talk Lucille Waycrest##129642
|tip Inside the building.
turnin Waycrest Manor: Draining the Heartsbane##52486 |goto 36.86,50.11
accept Into Darkness##52487 |goto 36.86,50.11
step
talk Ensign Josey##141783
Tell him _"Send word to Katherine Proudmoore to meet me at Gol Inath."_
Send the Message to Katherine |q 52487/1 |goto 38.67,52.71
step
Follow the path |goto 26.78,64.86 < 30 |only if walking
Meet with Katherine |q 52487/2 |goto 26.91,58.41
step
Enter the cave |goto 27.03,58.47 < 5 |walk
Follow the path down |goto 27.36,59.32 < 10 |walk
click Drust Effigy
|tip Downstairs inside the cave.
Place the Effigy |q 52487/3 |goto 27.57,58.76
step
_Next to you:_
talk Katherine Proudmoore
turnin Into Darkness##52487
accept Runic Resistance##52488
step
click Runic Ward+
|tip They look like floating purple balls with white symbols in them downstairs inside the cave.
|tip The correct order to click them in is:
|tip Right, Up, Down, Left.
Unlock the Runic Wards |q 52488/1 |goto 27.57,58.76
step
talk Katherine Proudmoore##141785
|tip Downstairs inside the cave.
turnin Runic Resistance##52488 |goto 27.51,58.94
accept Thros, the Blighted Lands##51445 |goto 27.51,58.94
step
click Portal to the Blighted Lands
|tip Downstairs inside the cave.
Begin the "Thros, the Blighted Lands" Scenario |scenariostart |goto 27.57,58.76 |q 51445
step
Watch the dialogue
Follow Katherine |scenariostage 1 |goto Drustvar/1 26.77,57.97 |q 51445
step
Watch the dialogue
Follow Jaina |scenariostage 2 |goto 23.65,55.69 |q 51445
step
Watch the dialogue
Kill the enemies that attack
clicknpc Jaina##138197
Find the Image of Jaina |scenariogoal 3/40524 |goto 21.43,56.53 |q 51445 |count 1
step
Watch the dialogue
kill King Varian Wrynn##142986
clicknpc Jaina##138197
Find the Image of Jaina |scenariogoal 3/40524 |goto 26.23,52.48 |q 51445 |count 2
step
Watch the dialogue
Kill the enemies that attack
clicknpc Jaina##138197
Find the Image of Jaina |scenariogoal 3/40524 |goto 25.24,50.14 |q 51445 |count 3
step
Watch the dialogue
kill Daelin Proudmoore##143009
clicknpc Jaina##138197
Find the Real Jaina |scenariostage 4 |goto 19.36,53.68 |q 51445
step
kill Gorak Tul##143020
Watch the dialogue
talk Lady Jaina Proudmoore##140589
Tell her _"I'm ready to leave."_
Escape the Blighted Lands |scenarioend |goto 19.49,53.69 |q 51445
step
talk Katherine Proudmoore##141785
turnin Thros, the Blighted Lands##51445 |goto Boralus/0 44.64,62.77
accept Siege of Boralus: Lady Ashvane's Return##52153 |goto Boralus/0 44.64,62.77
step
_Congratulations!_
You Earned the "Pride of Kul Tiras" Achievement.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Battle for Azeroth\\Wide World of Quests",{
author="support@zygorguides.com",
description="This guide will walk you through completing the \"Wide World of Quests\" Achievement.",
achieveid={13144},
startlevel=110,
keywords={"Wide, World, of, Quests"},
},[[
step
Complete 100 World Quests in Kul Tiras and Zandalar |achieve 13144
|tip Use the Battle for Azeroth "World Quests" guides to complete this.
step
_Congratulations!_
You Earned the "Wide World of Quests" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Battle for Azeroth\\Kul Tourist",{
author="support@zygorguides.com",
description="\nTo earn this achievement, you will be required to complete the following achievements in Zandalar:\n\nA Sound Plan\nDrust Do It.\nStormsong and Dance",
achieveid={12593},
startlevel=110,
keywords={"Kul, Tourist"},
},[[
step
Earn the _A Sound Plan_ achievement |achieve 12593/1
|tip Use the "Tiragarde Sound" leveling guide to accomplish this.
Click here to load the "Tiragarde Sound" leveling guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Tiragarde Sound"
step
Earn the _Drust Do It._ achievement |achieve 12593/2
|tip Use the "Drustvar" leveling guide to accomplish this.
Click here to load the "Drustvar" leveling guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Drustvar"
step
Earn the _Stormsong and Dance_ achievement |achieve 12593/3
|tip Use the "Stormsong Valley" leveling guide to accomplish this.
Click here to load the "Stormsong Valley" leveling guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Kul Tiras\\Stormsong Valley"
step
_Congratulations!_
You Earned the "Kul Tourist" Achievement.
]])
ZGV.BETAEND()
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Reputations\\Battle for Azeroth\\Azerothian Diplomat",{
achieveid={12947},
author="support@zygorguides.com",
startlevel=110,
keywords={"Azerothian","Diplomat"},
description="This guide will walk you through completing the \"Azerothian Diplomat\" Achievement.",
},[[
step
Reach _Revered_ reputation with the _Proudmoore Admiralty_ |achieve 12947/1
|tip Use the "Tiragarde Sound" leveling guide to accomplish this.
|tip Use the Battle for Azeroth "World Quests" guides to complete "Proudmoore Admiralty" world quests.
|tip Complete Missions at your mission table that reward reputation with the Proudmoore Admiralty.
step
Reach _Revered_ reputation with the _Order of Embers_ |achieve 12947/2
|tip Use the "Drustvar" leveling guide to accomplish this.
|tip Use the Battle for Azeroth "World Quests" guides to complete "Order of Embers" world quests.
|tip Complete Missions at your mission table that reward reputation with the Order of Embers.
step
Reach _Revered_ reputation with the _Storm's Wake_ |achieve 12947/3
|tip Use the "Stormsong Valley" leveling guide to accomplish this.
|tip Use the Battle for Azeroth "World Quests" guides to complete "Storm's Wake" world quests.
|tip Complete Missions at your mission table that reward reputation with the Storm's Wake.
step
Reach _Revered_ reputation with the _7th Legion_ |achieve 12947/4
|tip Use the Battle for Azeroth "World Quests" guides to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
|tip Complete Missions at your mission table that reward reputation with the 7th Legion.
step
Reach _Revered_ reputation with the _Champions of Azeroth_ |achieve 12947/5
|tip Use the Battle for Azeroth "World Quests" guides to complete "Champions of Azeroth" world quests.
|tip Complete Missions at your mission table that reward reputation with the Champions of Azeroth.
step
Reach _Revered_ reputation with the _Tortollan Seekers_ |achieve 12947/6
|tip Use the Battle for Azeroth "World Quests" guides to complete "Tortollan Seekers" world quests.
|tip Complete Missions at your mission table that reward reputation with the Tortollan Seekers.
step
_Congratulations!_
You Earned the "Azerothian Diplomat" Achievement.
]])
ZGV.BETAEND()
