local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Lightforged Felcrusher",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, alliance, achievement"},
mounts={258022},
model={81114},
condition_end=function() return hasmount(258022) end,
description="This mount is acquired by completing the \"Allied Races: Lightforged Draenei\" achievement.",
},[[
step
accept The Call for Allies##49929 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 52.82,14.59 < 7 |walk
talk Anduin Wrynn##126301
turnin The Call for Allies##49929 |goto 52.07,13.42
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip You must progress through the Argus Campaign guide until you earn the You Are Now Prepared! achievement.
Earn the _You Are Now Prepared!_ Achievement |achieve 12066
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip Completing certain quests in Argus reward reputation with the Army of the Light.
Load the "World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests that indicate Army of the Light award reputation with them.
Use Army of the Light reputation insignias
|tip These are awarded from Order Hall missions, Army of the Light emissary quests, and world quests.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use your Army of the Light Insignia |use Army of the Light Insignia##152957 |only if itemcount(152957) >= 1
Use your Army of the Light Insignia |use Army of the Light Insignia##152958 |only if itemcount(152958) >= 1
Use your Greater Army of the Light Insignia |use Greater Army of the Light Insignia##152956 |only if itemcount(152956) >= 1
Use your Greater Army of the Light Insignia |use Greater Army of the Light Insignia##152955 |only if itemcount(152955) >= 1
Load the "Argus Invasions" Scenario Guide |confirm |next "Zygor's Dungeon Guides\\Legion Scenarios\\Argus Invasions"
|tip Click the line above to load the guide.
|tip The weekly quests "Invasion Point Offensive," "Commander's Downfall," "Invasion Onslaught," and "Supplying the Antoran Campaign" reward reputation as well.
Gain Exalted Reputation with the Army of the Light |achieve 12081
step
talk Anduin Wrynn##126301
accept A Choice of Allies##50239 |goto 52.07,13.42
step
talk Alleria Windrunner##126321
Ask her _"What do we know about the void elves?"_
Speak with Alleria About the Void Elves |q 50239/2 |goto 52.24,13.51
step
talk High Exarch Turalyon##126319
Ask him _"What can you tell me about the Lightforged draenei?"_
Speak with Turalyon About the Lightforged Draenei |q 50239/1 |goto 52.12,13.71
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Lightforged Draenei.
Choose an Ally to Pursue |q 50239/3 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
turnin A Choice of Allies##50239 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
accept A Second Ally For the Cause##50248 |goto Stormwind City/0 52.08,13.42
|only if completedq(48962)
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Lightforged Draenei.
Choose an Ally to Pursue |q 50248/1 |goto 52.07,13.42
|only if completedq(48962)
step
talk Anduin Wrynn##126301
turnin A Second Ally For the Cause##50248 |goto 52.08,13.42
|only if completedq(48962)
step
talk High Exarch Turalyon##126319
accept The Lightforged##49698 |goto Stormwind City/0 52.12,13.70
step
Leave the building |goto 52.83,14.62 < 7 |walk
clicknpc Lightforged Beacon##130758 |goto 54.41,14.46
Board the Vindicaar |goto Vindicaar Scenario/1 49.97,46.22 |noway |c |q 49698 |future
step
talk Captain Fareeya##130549
turnin The Lightforged##49698 |goto 443.83,27.05
accept Forge of Aeons##49266 |goto 43.83,27.05
step
clicknpc Lightforged Beacon##130511
Enter the Scenario |scenariostart |goto 49.90,46.22 |q 49266 |future
step
Meet with T'paartos |scenariogoal Meet with T'paartos##1/37571 |goto Draenei Scenario/0 88.01,44.45 |q 49266 |future
step
Follow the path |goto 89.02,37.72 < 7 |walk
Enter the building |goto 87.71,29.59 < 7 |walk
Follow T'paartos |scenariogoal Follow T'paartos##2/37710 |goto 88.76,28.34 |q 49266 |future
step
See the Past |scenariogoal See the past##3/37711 |goto 88.76,28.34 |q 49266 |future
|tip Wait for the dialogue to complete.
step
Leave the building |goto 87.59,29.64 < 7 |walk
Enter the Swamp |scenariogoal Swamp entered##4/37712 |goto 83.67,32.38 |q 49266 |future
step
Go down the hill |goto Draenei Scenario/0 79.50,33.54 < 10 |walk
Follow the path |goto 72.26,22.78 < 7 |walk
Cross the bridge |goto 69.52,26.08 < 7 |walk
Find the Child |scenariogoal Child found##5/37718 |goto 66.79,29.70 |q 49266 |future
step
kill Swamp Serpent##128115 |scenariogoal Swamp Serpent slain##6/37717 |goto 66.79,29.70 |q 49266 |future
step
Cross the bridge |goto Draenei Scenario/0 61.85,31.98 < 7 |walk
Find the Refuge |scenariogoal Refuge found##7/37931 |goto 57.10,23.78 |q 49266 |future
step
Enter the tunnel |goto Draenei Scenario/0 52.98,26.33 < 7 |walk
clicknpc Crystal##128036
Collect the Crystal |scenariogoal Crystal collected##8/37932 |goto 47.01,27.36 |q 49266 |future
step
kill Crystal Fury##128038 |scenariogoal Crystal Fury slain##9/37968 |goto 47.55,27.88 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 51.85,27.05 < 7 |walk
Leave the tunnel |goto 56.98,23.63 < 7 |walk
Kill Doubt and Fear enemies around this area
Conquer #7# Doubts and Fears |scenariogoal Doubts and Fears conquered##10/37933 |goto 45.59,41.87 |q 49266 |future
step
Follow the path |goto 39.25,43.77 < 10 |walk
Follow the path |goto 22.67,37.22 < 10 |walk
Find the Cave |scenariogoal Cave found##11/38069 |goto 16.63,46.71 |q 49266 |future
step
Enter the tunnel |goto 13.36,49.96 < 7 |walk
kill Terror##128427 |scenariogoal Terror defeated##12/38070 |goto 8.61,50.26 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 12.77,50.31 < 7 |walk
Leave the cave |goto 17.01,46.38 < 7 |walk
Follow the path |goto 23.41,36.61 < 10 |walk
Follow the path |goto 39.32,44.45 < 10 |walk
Follow T'paartos |scenariogoal Follow T'paartos##13/38071 |goto 45.67,59.90 |q 49266 |future
step
clicknpc T'paartos##128424
Free T'paartos |scenariogoal T'paartos freed##14/38072 |goto 46.80,65.95 |q 49266 |future
step
Follow the path |goto 49.44,64.93 < 15 |walk
Follow the path |goto 57.56,71.50 < 15 |walk
Follow T'paartos |scenariogoal Follow T'paartos##15/38103 |goto 66.64,77.57 |q 49266 |future
step
clicknpc T'paartos##128550
|tip At the bottom of the ramp.
Free Kind |scenariogoal Kind##16/38082 |goto 68.44,77.13 |q 49266 |future
step
Follow the path |goto 67.03,73.01 < 7 |walk
Follow the path |goto 64.87,71.63 < 7 |walk
Follow the path |goto 61.21,72.99 < 7 |walk
Follow the path |goto 62.17,77.99 < 7 |walk
clicknpc T'paartos##128550
Free Brave |scenariogoal Brave##16/38084 |goto 65.72,73.60 |q 49266 |future
step
Follow the path |goto 65.44,81.63 < 7 |walk
clicknpc T'paartos##128550
Free Strong |scenariogoal Strong##16/38083 |goto 72.31,86.51 |q 49266 |future
step
Follow the path |goto 75.72,79.21 < 10 |walk
clicknpc T'paartos##128550
Free Boastful |scenariogoal Boastful##16/38085 |goto 69.63,68.26 |q 49266 |future
step
Follow the path |goto 66.43,71.90 < 7 |walk
Follow the path |goto 63.47,72.46 < 7 |walk
clicknpc T'paartos##128550
Free Frightened |scenariogoal Frightened##16/38086 |goto 63.02,74.48 |q 49266 |future
step
Follow the path |goto 62.05,78.82 < 7 |walk
Follow the path |goto 63.47,81.43 < 7 |walk
clicknpc T'paartos##128550
Free Inadequate |scenariogoal Inadequate##16/38087 |goto 69.57,77.86 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 67.85,87.10 < 10 |walk
kill T'paartos the Fallen##127924
|tip Wait for the dialogue to complete.
Help T'paartos |scenariogoal Help T'paartos##17/38088 |goto 73.72,94.30 |q 49266 |future
step
clicknpc Lightforged Beacon##127964 |goto 71.67,95.43
Leave the Forge of Aeons |goto Vindicaar Scenario/1 49.97,46.22 < 1000 |noway |c |q 49266 |future
step
talk Captain Fareeya##130549
turnin Forge of Aeons##49266 |goto 48.41,39.51
step
talk High Exarch Turalyon##130810
accept For the Light!##50071 |goto 47.53,40.22
step
Follow the path |goto 40.24,44.39 < 7 |walk
Go down the stairs |goto Vindicaar Scenario/2 49.59,60.56 < 7 |walk
Follow the path |goto 43.93,67.53 < 7 |walk
Follow the path |goto 35.22,52.53 < 7 |walk
click Portal to Stormwind |goto 43.29,24.97
Return to Stormwind |goto Stormwind City/0 53.62,15.77 < 1000 |noway |c |q 50071 |future
step
Enter the building |goto Stormwind City/0 52.79,14.53 < 7 |walk
talk Anduin Wrynn##126301
turnin For the Light!##50071 |goto 52.07,13.41
step
learnmount Lightforged Felcrusher##258022 |use Lightforged Felcrusher##155656 |future
step
_Congratulations!_
You Collected the "Lightforged Felcrusher" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Starcursed Voidstrider",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, alliance, achievement"},
mounts={259202},
model={81648},
condition_end=function() return hasmount(259202) end,
description="This mount is acquired by completing the \"Allied Races: Void Elf\" achievement.",
},[[
step
accept The Call for Allies##49929 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 52.82,14.59 < 7 |walk
talk Anduin Wrynn##126301
turnin The Call for Allies##49929 |goto 52.07,13.42
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip You must progress through the Argus Campaign guide until you earn the You Are Now Prepared! achievement.
Earn the "You Are Now Prepared!" Achievement |achieve 12066
step
Load the "Argus Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Argus Campaign"
|tip Click the line above to load the guide.
|tip Completing certain quests in Argus reward reputation with the Argussian Reach.
Load the "World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests that indicate Argussian Reach award reputation with them.
Use Argussian Reach Reputation Insignias
|tip These are awarded from Order Hall missions, Argussian Reach emissary quests, and world quests.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use Your Argussian Reach Insignia |use Argussian Reach Insignia##152959 |only if itemcount(152959) >= 1
Use Your Argussian Reach Insignia |use Argussian Reach Insignia##152960 |only if itemcount(152960) >= 1
Use Your Greater Argussian Reach Insignia |use Greater Argussian Reach##152961 |only if itemcount(152961) >= 1
Use Your Greater Argussian Reach Insignia |use Greater Argussian Reach##152954 |only if itemcount(152954) >= 1
Load the "Argus Invasions" Scenario Guide |confirm |next "Zygor's Dungeon Guides\\Legion Scenarios\\Argus Invasions"
|tip Click the line above to load the guide.
|tip The weekly quest for the Argussian Reach is "Fuel of a Doomed World."
Gain Exalted Reputation with the Argussian Reach |achieve 12076
step
talk Anduin Wrynn##126301
accept A Choice of Allies##50239 |goto 52.07,13.42
step
talk Alleria Windrunner##126321
Ask her _"What do we know about the void elves?"_
Speak with Alleria About the Void Elves |q 50239/2 |goto 52.24,13.51
step
talk High Exarch Turalyon##126319
Ask him _"What can you tell me about the Lightforged draenei?"_
Speak with Turalyon About the Lightforged Draenei |q 50239/1 |goto 52.12,13.71
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Void Elf.
Choose an Ally to Pursue |q 50239/3 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
turnin A Choice of Allies##50239 |goto 52.07,13.42
step
talk Anduin Wrynn##126301
accept A Second Ally For the Cause##50248 |goto Stormwind City/0 52.08,13.42
|only if completedq(50071)
step
talk Anduin Wrynn##126301
Tell him _"I am ready to pursue our next ally."_
|tip Select Void Elf.
Choose an Ally to Pursue |q 50248/1 |goto 52.07,13.42
|only if completedq(50071)
step
talk Anduin Wrynn##126301
turnin A Second Ally For the Cause##50248 |goto 52.08,13.42
|only if completedq(50071)
step
talk Alleria Windrunner##126321
accept The Ghostlands##49787 |goto 52.24,13.51
step
click Rift to Ghostlands
|tip Wait a moment for Alleria to open the rift.
Travel to the Ghostlands with Alleria |q 49787/1 |goto 52.33,13.34
step
Follow the path |goto Ghostlands/0 37.95,17.96 < 15 |only if walking
Follow the path |goto 38.05,21.59 < 15 |only if walking
Follow the path |goto 36.47,26.24 < 10 |only if walking
Follow the path |goto 34.57,31.64 < 10 |only if walking
Cross the water |goto 34.42,32.63 < 7 |only if walking
Enter the building |goto 33.70,33.59 < 7 |walk
click Umbric's Notes - Sanctum of the Moon
Locate Umbric's Notes - Sanctum of the Moon |q 49787/2 |goto 33.63,34.46
step
Leave the building |goto 33.81,33.43 < 7 |walk
Follow the path |goto 34.99,33.77 < 10 |only if walking
Follow the path |goto 37.08,38.28 < 10 |only if walking
Follow the path |goto 40.28,41.20 < 15 |only if walking
Go up the hill |goto 42.90,43.93 < 15 |only if walking
Follow the path |goto 43.89,45.62 < 10 |only if walking
Follow the path |goto 43.32,48.01 < 10 |only if walking
Follow the path |goto 43.41,50.28 < 10 |only if walking
Follow the path |goto 44.72,54.71 < 10 |only if walking
Follow the path |goto 46.49,56.57 < 10 |only if walking
Enter the building |goto 46.68,55.98 < 7 |walk
click Umbric's Notes - Andilien Estate
Locate Umbric's Notes - Andilien Estate |q 49787/3 |goto 46.87,54.97
step
Leave the building |goto 46.65,56.12 < 7 |walk
Follow the path |goto 47.62,58.41 < 15 |only if walking
Follow the path |goto 51.09,57.04 < 10 |only if walking
Follow the path |goto 57.84,58.56 < 10 |only if walking
Follow the path |goto 60.64,52.81 < 15 |only if walking
Follow the path |goto 66.26,45.04 < 15 |only if walking
Follow the path |goto 67.69,35.64 < 15 |only if walking
Follow the path |goto 70.52,33.79 < 10 |only if walking
|tip Avoid the Horde NPCs.
Follow the path |goto 73.82,34.20 < 10 |only if walking
Follow the path |goto 75.77,31.44 < 15 |only if walking
Follow the path |goto 76.96,27.30 < 15 |only if walking
Follow the path |goto 78.05,20.38 < 10 |only if walking
Enter the building |goto 78.81,19.83 < 7 |walk
click Teleportation Console |goto 79.65,17.57
click Umbric's Notes - Dawnstar Spire
|tip They're all the way at the top, up the spiral ramp.
Locate Umbric's Notes - Dawnstar Spire |q 49787/4
step
talk Alleria Windrunner##126321
turnin The Ghostlands##49787 |goto 79.69,19.62
accept Telogrus Rift##48962 |goto 79.69,19.62
step
click Rift to Telogrus
Enter the Rift to Telogrus |scenariostart |goto 79.64,19.86 |q 48962 |future
step
talk Magister Umbric##126646
Ask him _"What is this place?"_
Speak with Umbric |scenariogoal Speak with Umbric##1/37328 |goto Void Elf Scenario/0 47.83,73.88 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 49.59,73.87 < 10 |walk
Follow the path |goto 49.91,75.43 < 7 |walk
Walk with Umbric and Alleria |scenariogoal Walk with Umbric and Alleria.##2/37282 |goto 49.33,76.66 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 50.15,74.91 < 7 |walk
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##3/38503 |goto 48.97,72.91 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 41.30,60.12 < 10 |walk
Kill enemies around this area
|tip Avoid dark colored orbs.
Repel the Void |scenariogoal Void repelled##4/37283 |goto 39.30,54.49 |q 48962 |future
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##5/38971 |goto 37.32,49.26 |q 48962 |future
step
kill Dark Manifestation##126559+
Close the rift |scenariogoal Rift sealed##6/37295 |goto 28.92,40.34 |q 48962 |future
step
kill Nhr'ghesh##126589 |scenariogoal Nhr'ghesh defeated##7/37296 |goto 28.92,40.34 |q 48962 |future
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##8/38972 |goto 28.89,38.30 |q 48962 |future
step
click Voidforge
Shut Down the First Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 29.00,27.81 |count 1 |q 48962 |future
step
click Voidforge
Shut Down the Second Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 28.49,21.70 |count 2 |q 48962 |future
step
click Voidforge
Shut Down the Third Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 26.21,24.46 |count 3 |q 48962 |future
step
kill Nether-Prince Durzaan##126470 |scenariogoal Nether-Walker defeated##10/37284 |goto 27.90,24.09 |q 48962 |future
step
click Rift to Stormwind |goto 27.95,24.50
Leave the Telogrus Rift |goto Stormwind City/0 53.62,15.77 < 1000 |noway |c |q 48962 |future
step
Enter the building |goto 52.76,14.45 < 7 |walk
talk Anduin Wrynn##126301
turnin Telogrus Rift##48962 |goto 52.07,13.41
step
learnmount Starcursed Voidstrider##259202 |use Starcursed Voidstrider##156486 |future
step
_Congratulations!_
You Collected the "Starcursed Voidstrider" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Dune Scavenger",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={237286},
model={75324},
description="This mount is acquired by a random world drop.",
},[[
step
Kill enemies around this area
collect Captured Dune Scavenger##163576 |n
|tip This will drop randomly from the Snake enemies in the zone.
You can find more around [63.4,31.6]
You can find more around [55.6,41.2]
use the Captured Dun Scavenger##163576
Learn the "Dune Scavenger" Mount |learnmount Dune Scavenger##237286 |goto Vol'dun/0 49.4,75.8
step
_Congratulations!_
You Collected the "Dune Scavenger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Leaping Veinseeker",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={243795},
model={76706},
description="This mount is acquired by a random world drop.",
},[[
step
Kill Loa-Gutter enemies around this area
collect Reins of a Tamed Bloodfeaster##163575 |n
|tip This is a rare drop.
|tip It drops from any Blood Trolls found in Nazmir.
use the Reins of a Tamed Bloodfeaster##163575
Learn the "Leaping Veinseeker" Mount |learnmount Leaping Veinseeker##243795 |goto Nazmir/0 60.67,20.67
step
_Congratulations!_
You Collected the "Leaping Veinseeker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Sharkbait",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, dungeon, drop"},
mounts={254813},
model={80449},
condition_end=function() return hasmount(254813) end,
description="This mount is acquired by obtaining a random drop from Harlan Sweete in the Freehold dungeon on Mythic difficulty.",
},[[
step
Enter the Freehold Dungeon |goto Freehold/0 0.00,0.00 < 1000
step
kill Harlan Sweete##129440
collect 1 Sharkbait's Favorite Crackers##159842 |n
|tip This is a rare drop.
|tip This only can drop in Mythic difficulty.
use Sharkbait's Favorite Crackers##159842
Learn the Sharkbait Mount |learnmount Sharkbait##254813
step
_Congratulations!_
You Earned the "Sharkbait" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Terrified Pack Mule",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260174},
model={81694},
description="This mount is acquired by a random world drop.",
},[[
step
Kill enemies around this area
|tip Hexthralled Guardsman have a higher chance at the drop.
collect Chewed-On Reins of the Terrified Pack Mule##163574 |n
|tip This is a rare drop.
use the Chewed-On Reins of the Terrified Pack Mule##163574
Learn the "Terrified Pack Mule" Mount |learnmount Terrified Pack Mule##260174 |goto Drustvar/0 31,20
You can find more around [34.03,17.24]
step
_Congratulations!_
You Collected the "Terrified Pack Mule" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Tomb Stalker",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, dungeon, drop"},
mounts={266058},
model={84274},
condition_end=function() return hasmount(266058) end,
description="This mount is acquired by obtaining a random drop from Dazar, The First King in the King's Rest dungeon.",
},[[
step
Enter the King's Rest Dungeon |goto King's Rest/0 0.00,0.00 < 1000
step
kill King Dazar##136160
collect 1 Mummified Raptor Skull##159921 |n
|tip This is a rare drop.
|tip This only drops on Mythic difficulty.
use the Mummified Raptor Skull##159921
Learn the Tomb Stalker Mount |learnmount Mummified Raptor Skull##266058
step
_Congratulations!_
You Earned the "Tomb Stalker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Underrot Crawg",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, dungeon, drop"},
mounts={273541},
model={78860},
condition_end=function() return hasmount(273541) end,
description="This mount is acquired by obtaining a random drop from the Unbound Abomination in The Underrot dungeon.",
},[[
step
Enter The Underrot Dungeon |goto The Underrot/0 0.00,0.00 < 1000
step
kill Unbound Abomination##133007
collect 1 Underrot Crawg Harness##160829 |n
|tip This is a rare drop.
use the Underrot Crawg Harness##160829
Learn the Underrot Crawg Mount |learnmount Underrot Crawg##273541
step
_Congratulations!_
You Earned the "Underrot Crawg" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Island Expedition Mounts\\Surf Jelly",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"aquatic, mount, battle, of, azeroth, island, expeditions, drop"},
mounts={278979},
model={87747},
condition_end=function() return hasmount(278979) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
Jump down here |goto Dazar'alor/0 50.75,88.47 < 10 |only if walking
Run down the stairs |goto 49.63,90.91 < 7 |only if walking
Follow the road |goto 48.82,93.55 < 10 |only if walking
Continue following the road |goto 44.76,94.22 < 7 |only if walking
click Expedition Map
Queue for an Island Expedition |goto 44.55,95.27
|tip You need to complete the Island Expedition for a chance at the mount.
collect Surf Jelly##163585 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random and shares a loot table with 4 other mounts.
use the Surf Jelly##163585
Learn the Surf Jelly Mount |learnmount Surf Jelly##278979
step
_Congratulations!_
You Earned the "Surf Jelly" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Craghorn Chasm-Leaper",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop"},
mounts={279467},
model={87776},
condition_end=function() return hasmount(279467) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
Jump down here |goto Dazar'alor/0 50.75,88.47 < 10 |only if walking
Run down the stairs |goto 49.63,90.91 < 7 |only if walking
Follow the road |goto 48.82,93.55 < 10 |only if walking
Continue following the road |goto 44.76,94.22 < 7 |only if walking
click Expedition Map
Queue for an Island Expedition |goto 44.55,95.27
|tip You need to complete the Island Expedition for a chance at the mount.
collect Craghorn Chasm-Leaper##163583 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random and shares a loot table with 4 other mounts.
use the Craghorn Chasm-Leaper##163583
Learn the Craghorn Chasm-Leaper Mount |learnmount Craghorn Chasm-Leaper##279467
step
_Congratulations!_
You Earned the "Craghorn Chasm-Leaper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Qinsho's Eternal Hound",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop"},
mounts={279469},
model={45836},
condition_end=function() return hasmount(279469) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
Jump down here |goto Dazar'alor/0 50.75,88.47 < 10 |only if walking
Run down the stairs |goto 49.63,90.91 < 7 |only if walking
Follow the road |goto 48.82,93.55 < 10 |only if walking
Continue following the road |goto 44.76,94.22 < 7 |only if walking
click Expedition Map
Queue for an Island Expedition |goto 44.55,95.27
|tip You need to complete the Island Expedition for a chance at the mount.
collect Qinsho's Eternal Hound##163582 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random and shares a loot table with 4 other mounts.
use Qinsho's Eternal Hound##163582
Learn the Qinsho's Eternal Hound Mount |learnmount Qinsho's Eternal Hound##279469
step
_Congratulations!_
You Earned the "Qinsho's Eternal Hound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Squawks",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop"},
mounts={254811},
model={79916},
condition_end=function() return hasmount(254811) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
Jump down here |goto Dazar'alor/0 50.75,88.47 < 10 |only if walking
Run down the stairs |goto 49.63,90.91 < 7 |only if walking
Follow the road |goto 48.82,93.55 < 10 |only if walking
Continue following the road |goto 44.76,94.22 < 7 |only if walking
click Expedition Map
Queue for an Island Expedition |goto 44.55,95.27
|tip You need to complete the Island Expedition for a chance at the mount.
collect Squawks##163586 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random and shares a loot table with 4 other mounts.
use Squawks##163586
Learn the Squawks Mount |learnmount Squawks##254811
step
_Congratulations!_
You Earned the "Squawks" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Twilight Avenger",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, drop"},
mounts={279466},
model={87775},
condition_end=function() return hasmount(279466) end,
description="This mount is acquired by completing an Island Expeditions.",
},[[
step
Jump down here |goto Dazar'alor/0 50.75,88.47 < 10 |only if walking
Run down the stairs |goto 49.63,90.91 < 7 |only if walking
Follow the road |goto 48.82,93.55 < 10 |only if walking
Continue following the road |goto 44.76,94.22 < 7 |only if walking
click Expedition Map
Queue for an Island Expedition |goto 44.55,95.27
|tip You need to complete the Island Expedition for a chance at the mount.
collect Twilight Avenger##163584 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random and shares a loot table with 4 other mounts.
use the Twilight Avenger##163584
Learn the Twilight Avenger Mount |learnmount Twilight Avenger##279466
step
_Congratulations!_
You Earned the "Twilight Avenger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Teldrassil Hippogryph",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth, quest, alliance"},
mounts={274610},
model={86527},
condition_end=function() return hasmount(274610) end,
description="This mount is acquired by completing the \"Burning of Teldrassil\" event.",
},[[
step
accept A Short-Lived Peace##52058
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin A Short-Lived Peace##52058 |goto 85.90,31.57
accept The Horde Uprising##52060 |goto 85.90,31.57
step
talk Master Mathias Shaw##139798
|tip Inside the building.
turnin The Horde Uprising##52060 |goto 85.15,32.35
accept A Disturbance in Ashenvale##52062 |goto 85.15,32.35
step
Follow the path |goto 83.88,30.57 < 5 |only if walking
Run up the stairs |goto 83.25,29.36 < 5 |only if walking
click Portal to Astranaar##297575
Take the Portal to Astranaar |q 52062/1 |goto 82.68,26.84
step
Find Delaryn Summermoon |q 52062/2 |goto Ashenvale/0 35.79,49.99
step
talk Captain Delaryn Summermoon##134578
turnin A Disturbance in Ashenvale##52062 |goto 35.86,50.43
accept The Light of Elune##52072 |goto 35.86,50.43
accept Knives of the Forsaken##53616 |goto 35.86,50.43
stickystart "Slay_Forsaken_Assassins"
step
clicknpc Astranaar Sentinel##144282+
|tip They look like Night Elf corpses on the ground around this area.
Honor #6# Fallen Soldiers |q 52072/1 |goto 35.88,50.20
step
label "Slay_Forsaken_Assassins"
kill Forsaken Assassin##140801+
|tip They are stealthed around this area.
Slay #8# Forsaken Assassins |q 53616/1 |goto 36.06,50.26
step
talk Captain Delaryn Summermoon##134578
turnin The Light of Elune##52072 |goto 35.86,50.43
turnin Knives of the Forsaken##53616 |goto 35.86,50.43
accept A Soft Glow##52116 |goto 35.86,50.43
step
Meet Malfurion at the Entrance to Darkshore |q 52116/1 |goto Darkshore/0 43.82,89.82
step
Watch the dialogue
talk Malfurion Stormrage##133693
turnin A Soft Glow##52116 |goto 43.58,89.25
accept Hidden Amongst the Leaves##52234 |goto 43.58,89.25
accept Mercy for the Mad##53617 |goto 43.58,89.25
stickystart "Slay_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##140633+
|tip They look like friendly druids on the ground around this area.
|tip Some are shapeshifted in animal form and some aren't.
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52234/1 |goto 42.07,77.29
step
label "Slay_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 53617/1 |goto 41.72,76.89
step
talk Captain Delaryn Summermoon##134578
turnin Hidden Amongst the Leaves##52234 |goto 43.41,75.56
turnin Mercy for the Mad##53617 |goto 43.41,75.56
accept Garden Grove##52240 |goto 43.41,75.56
step
kill Monstrous Shredder##143562 |q 52240/1 |goto 43.98,75.34
|tip You may need help with this.
step
talk Captain Delaryn Summermoon##134578
turnin Garden Grove##52240 |goto 45.20,74.96
step
talk Onu##33072
accept Enraged Furbolgs##52245 |goto 45.41,74.85
step
talk Elder Brolg##140719
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brolg |q 52245/1 |goto 43.54,81.08
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
accept Elves in the Machine##53551
stickystart "Sabotage_Horde_Demolishers"
step
talk Elder Brownpaw##140721
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brownpaw |q 52245/3 |goto 46.47,85.73
step
Enter the cave |goto 46.43,83.73 < 5 |walk
talk Gren Tornfur##140720
|tip Inside the cave.
Tell him _"Come with us to safety. We will not harm you."_
Rescue Gren Tornfur |q 52245/2 |goto 46.63,83.90
step
label "Sabotage_Horde_Demolishers"
clicknpc Horde Demolisher##144103+
|tip They look like large siege vehicles on the ground around this area.
|tip Use the "Sleeping Powder" ability onscreen to put enemies to sleep.
Sabotage #5# Horde Demolishers |q 53551/1 |goto 45.07,85.52
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
turnin Elves in the Machine##53551
step
talk Onu##33072
turnin Enraged Furbolgs##52245 |goto 45.41,74.85
accept The Wake of Something New##52242 |goto 45.41,74.85
step
click Azerite Deposit##292886
Discover the Source of Onu's Pain |q 52242/1 |goto 34.66,85.17
step
talk Captain Delaryn Summermoon##134578
turnin The Wake of Something New##52242 |goto 34.73,85.11
accept Azerite Denial##53619 |goto 34.73,85.11
accept No Horde Allowed##53621 |goto 34.73,85.11
stickystart "Collect_Azerite"
step
Kill enemies around this area
Slay #10# Horde Combatants |q 53621/1 |goto 32.48,84.42
step
label "Collect_Azerite"
click Azerite Deposit##292886+
|tip They look like small blue crystals sticking out of the ground around this area.
Collect #6# Azerite |q 53619/1 |goto 32.50,84.24
step
talk Captain Delaryn Summermoon##134578
turnin Azerite Denial##53619 |goto 34.73,85.11
turnin No Horde Allowed##53621 |goto 34.73,85.11
accept Malfurion Returns##52256 |goto 34.73,85.11
step
talk Malfurion Stormrage##133693
turnin Malfurion Returns##52256 |goto 42.30,66.80
accept "Rock" The World##52257 |goto 42.30,66.80
step
clicknpc Tree of Life##143861
Speak with Tree of Life |q 52257/1 |goto 42.07,66.84
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52257/2 |goto 42.17,69.08
step
talk Malfurion Stormrage##133693
turnin "Rock" The World##52257 |goto 42.30,66.80
accept Long Away##52197 |goto 42.30,66.80
step
talk Captain Delaryn Summermoon##134578
turnin Long Away##52197 |goto Darnassus/0 40.00,50.42
accept A Looming Threat##52279 |goto 40.00,50.42
step
talk Janthes Shadeleaf##144146
Tell him _"The Horde have halted their advance at the Wildbend River! We must push them back at once!"_
Rally the Druids of the Claw |q 52279/2 |goto 45.61,35.93
step
talk Myara Sunsong##140498
Tell her _"Captain, the Horde have reached the Wildbend River! We cannot hold them for long!"_
Rally the Kaldorei Forces |q 52279/3 |goto 61.00,49.41
step
talk Astarii Starseeker##4090
Tell her _"Priestess, we require your aid to hold the Horde at Wildbend River."_
Rally the Priestesses of the Moon |q 52279/1 |goto 42.99,73.06
step
talk Malfurion Stormrage##140877
turnin A Looming Threat##52279 |goto Teldrassil/0 58.47,89.49
step
talk Captain Delaryn Summermoon##134578
accept A Threat from the North##52973 |goto 58.48,89.41
|tip You will accept this quest automatically.
step
talk Malfurion Stormrage##140877
turnin A Threat from the North##52973 |goto Darkshore/0 50.42,20.01
accept Rescue Effort##52974 |goto 50.42,20.01
accept Defending Lor'danel##53622 |goto 50.42,20.01
step
talk Captain Delaryn Summermoon##134578
accept Action This Day##52975 |goto 50.43,19.68
stickystart "Slay_Horde_Attackers"
step
talk Lor'danel Citizen##142408+
|tip They look like friendly NPCs cowering in fear on the ground around this area.
Tell them _"I have cleared a path - - you must escape now!"_
Rescue #8# Lor'danel Citizens |q 52974/1 |goto 50.75,19.24
step
label "Slay_Horde_Attackers"
Kill enemies around this area
Slay #15# Horde Attackers |q 53622/1 |goto 50.81,19.16
step
kill Gormok Axefall##144364 |q 52975/1 |goto 47.67,20.42
step
kill Ragash Bloodwish##144365 |q 52975/2 |goto 46.82,18.82
step
talk Captain Delaryn Summermoon##134578
turnin Rescue Effort##52974 |goto 50.43,19.68
turnin Action This Day##52975 |goto 50.43,19.68
turnin Defending Lor'danel##53622 |goto 50.43,19.68
accept The Guidance of Our Shan'do##52977 |goto 50.43,19.68
step
Find Malfurion in Darkshore |q 52977/1 |goto 46.24,24.23
step
Watch the dialogue
Assist Malfurion |q 52977/2 |goto 45.94,24.47
step
clicknpc Tamed Hippogryph##142110
Use Tyrande's Mount |q 52977/3 |goto 45.96,24.96
step
Return to Darnassus |goto Darnassus/0 43.01,73.09 < 5 |c |notravel |q 52977
step
Enter the building |goto 43.01,74.83 < 5 |walk
talk Mia Greymane##142978
|tip Inside the building.
turnin The Guidance of Our Shan'do##52977 |goto 43.09,78.62
accept A Flicker of Hope##53095 |goto 43.09,78.62 |only if not completedq(53310)
step
Leave the building |goto 43.01,74.80 < 3 |walk
Put out fires
|tip Use the "Douse" ability on your screen.
|tip Use it to put out fires around this area.
talk Darnassian Citizen##143409+
Tell them _"The flames are clear! Get to the Temple of the Moon!"_
Evacuate #982# Darnassian Citizens |q 53095/1 |goto 58.76,68.28 |only if not completedq(53310)
|tip You will fail this quest.
step
Watch the dialogue
accept From the Ashes...##53310 |goto 43.38,78.28
|tip You will accept this quest automatically.
step
click Portal to Stormwind##303144 |goto 43.91,78.68
Teleport to Stormwind |goto Stormwind City/0 49.59,86.53 < 5 |c |noway |q 53310
step
Enter the building |goto 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin From the Ashes...##53310 |goto 85.90,31.57
step
use the Smoldering Reins of the Teldrassil Hippogryph##163127
learnmount Teldrassil Hippogryph##274610
step
_Congratulations!_
You Collected the "Teldrassil Hippogryph" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Profession Mounts\\Great Sea Ray",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"aquatic, mount, battle, for, azeroth"},
mounts={278803},
model={73253},
description="This mount is acquired by a random world drop.",
},[[
step
Fish in any water on Kul Tiras or Zandalar
collect Great Sea Ray##163131 |n
|tip This comes from fishing in any water in BFA zones.
use the Great Sea Ray##163131
Learn the "Great Sea Ray" Mount |learnmount Great Sea Ray##278803 |goto Nazmir/0 60.67,20.67
step
_Congratulations!_
You Collected the "Great Sea Ray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Proudmoore Admiralty\\Admiralty Stallion",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={237287},
model={82148},
description="This mount is acquired by becoming Exalted with the Proudmoore Admiralty then buying the mount for 10,000 gold.",
},[[
step
Load the "Proudmoore Admiralty" Reputation Guide |confirm |next "Zygor's Reputations Guides\\Battle for Azeroth\\Proudmoore Admiralty"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Proudmoore Admiralty |condition rep('Order of Embers')==Exalted
step
Enter the building |goto Boralus/0 68.74,21.09 < 5 |walk
talk Provisioner Fray##135808
|tip Inside the building.
buy Reins of the Admiralty Stallion##161911 |n
use the Reins of the Admiralty Stallion##161911
Learn the "Admiralty Stallion" Mount |learnmount Admiralty Stallion##237287 |goto 67.51,21.56
step
_Congratulations!_
You Collected the "Admiralty Stallion" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Storm's Wake\\Dapple Gray Horse",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260172},
model={81693},
description="This mount is acquired by becoming Exalted with the Storm's Wake then buying the mount for 10,000 gold.",
},[[
step
Load the "Storm's Wake" Reputation Guide |confirm |next "Zygor's Reputations Guides\\Battle for Azeroth\\Storm's Wake"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Storm's Wake |condition rep('Storm\'s Wake')==Exalted
step
talk Sister Lilyana##135800
buy Reins of the Dapple Gray##161912 |n
use the Reins of the Dapple Gray##161912
Learn the "Dapple Gray Horse" Mount |learnmount Dapple Gray##260172 |goto Stormsong Valley/0 59.29,69.34
step
_Congratulations!_
You Collected the "Dapple Gray Horse" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Order of Embers\\Smoky Charger",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260173},
model={82161},
description="This mount is acquired by becoming Exalted with the Order of Embers then buying the mount for 10,000 gold.",
},[[
step
Load the "Order of Embers" Reputation Guide |confirm |next "Zygor's Reputations Guides\\Battle for Azeroth\\Order of Embers"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Order of Embers |condition rep('Order of Embers')==Exalted
step
talk Quartermaster Alcorn##135815
buy Reins of the Smoky Charger##161910 |n
use the Reins of the Smoky Charger##161910
Learn the "Smoky Charger" Mount |learnmount Smoky Charger##260173 |goto Drustvar/0 37.89,49.00
step
_Congratulations!_
You Collected the "Smoky Charger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Mighty Caravan Brutosaur",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={264058},
model={83632},
description="This mount is acquired by purchasing the mount for 5,000,000 gold.",
},[[
step
talk Tricky Nick##142691
buy Reins of the Mighty Caravan Brutosaur##163042 |n
|tip You will need 5,000,000 gold.
use the Reins of the Mighty Caravan Brutosaur##163042
Learn the "Mighty Caravan Brutosaur" Mount |learnmount Mighty Caravan Brutosaur##264058 |goto Boralus/0 56.77,47.08
step
_Congratulations!_
You Collected the "Mighty Caravan Brutosaur" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Palehide Direhorn",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279474},
model={87779},
description="This mount is acquired by purchasing the mount for 500,000 gold.",
},[[
step
talk Tricky Nick##142691
buy Reins of the Palehide Direhorn##163589 |n
|tip You will need 500,000 gold.
use the Reins of the Palehide Direhorn##163589
Learn the "Palehide Direhorn" Mount |learnmount Palehide Direhorn##279474 |goto Boralus/0 56.77,47.08
step
_Congratulations!_
You Collected the "Palehide Direhorn" Mount.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Goldenmane Horse",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260175},
model={81690},
description="This mount is acquired by completing Emissary World Quests.",
},[[
step
collect Goldenmane's Reins##163573 |n
|tip This can drop from any mob in Stormsong Valley.
use the Goldenmane's Reins##163573
Learn the "Goldenmane Horse" Mount |learnmount Goldmane##260175
step
_Congratulations!_
You Collected the "Goldenmane Horse" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Mecha-Mogul Mk2",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={274621},
model={},
description="This mount is acquired by a random world drop.",
},[[
step
Load the "Kul Tiran Engineering" Leveling Guide |confirm |next "Zygor's Profession Guides\\Engineering\\Leveling Guides\\Kul Tiran Engineering 1-150 Leveling Guide"
|tip Click the line above to load the guide.
Reach Level 150 Kul Tiran Engineering |skill Kul Tiran Engineering,150
step
Equip a pair of "AZ3-R1-T3" Headgear
|tip This is a crafted item.
|tip You will need to have the 3 levels of Azerite Upgrades available.
|tip For the first slot, choose the upgrade that grants +25 Kul Tiran Engineering.
|tip For the third slot, choose the upgrade that grants +30 Kul Tiran Engineering.
|tip The higher your Kul Tiran Engineering skill, the higher the chance for drops later.
Click here to continue |confirm
step
Load the "Platinum Ore" guide |confirm |next "Zygor's Profession Guides\\Mining\\Farming Guides\\Platinum"
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 50 Platinum Ore##152513
|tip You can also purchase them from the Auction House.
step
Load the "Storm Silver Ore" guide |confirm |next "Zygor's Profession Guides\\Mining\\Farming Guides\\Storm Silver"
|tip Click the line above to load the guide.
|tip You will need the "Mining" skill in order to utilize the guide.
collect 100 Storm Silver Ore##152579
|tip You can also purchase them from the Auction House.
step
You will need to kill Mogul Razdunk on "Mythic difficulty"
|tip You need a premade group in order to do Mythic dungeons.
Enter The MOTHERLODE!! |goto King's Rest/0 0.00,0.00 < 1000
step
Kill trash mobs inside of The MOTHERLODE!!
collect Azerite Inspir-A-Geneering Elixir##161138 |n
|tip You can also buy this from the Auction House.
use the Azerite Inspir-A-Geneering Elixir##161138
Gain the Azerite Inspir-A-Geneering buff |havebuff Time Travelling##133214
stickystart "Collect_Blast-Fired_Electric_Servomotor"
stickystart "Collect_Crush_Resistant_Stabilizer"
stickystart "Collect_Barely_Stable_Azerite_Reactor"
stickystart "Collect_Mecha-Mogul_Mk1_Remote_Activation_Device"
step
collect 20 Azerite Forged Protection Plating##161136
|tip These come from Shredders between the last two bosses.
|tip You must have the "Kul Turan Skinning" skill in order to collect these.
step
label "Collect_Blast-Fired_Electric_Servomotor"
collect 20 Blast-Fired Electric Servomotor##161137
|tip These come from Venture Co. War Machines while having the Azerite Inspir-A-Geneering buff.
step
label "Collect_Crush_Resistant_Stabilizer"
collect 20 Crush Resistant Stabilizer##161132
|tip These come from mechanical enemies in the MOTHERLODE!! on Mythic difficulty.
step
label "Collect_Barely_Stable_Azerite_Reactor"
collect 1 Barely Stable Azerite Reactor##161131
|tip This comes from Dr Boom in the MOTHERLODE!! on Mythic difficulty.
|tip He is found before the first boss.
step
label "Collect_Mecha-Mogul_Mk1_Remote_Activation_Device"
collect 1 Mecha-Mogul Mk1 Remote Activation Device##161129
|tip This comes from Mogul Razdunk, the last boss of The MOTHERLODE!! on Mythic difficulty.
step
kill Mogul Razdunk##132713
|tip He's the last boss of the instance.
collect Schematic: Mecha-Mogul Mk2##161135 |n
use the Schematic: Mecha-Mogul Mk2##161135
Learn the "Mecha-Mogul Mk2" Recipe |learn Mecha-Mogul Mk2##274621
step
collect 20 Expulsom##152668
|tip These are obtained from World Quests, Salvaging Gear, Milling Herbs and Disenchanting magical items.
You can find the Shred-Master Mk1 here [Boralus/0 77.13,16.34]
step
Open Your Kul Tiran Engineering Crafting Panel:
_<Create a Mecha-Mogul Mk2>_
collect Mecha-Mogul Mk2##161134 |n
use the Mecha-Mogul Mk2##161134
Learn the "Mecha-Mogul Mk2" Mount |learnmount Mecha-Mogul Mk2##274621
step
_Congratulations!_
You Collected the "Mecha-Mogul Mk2" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Frenzied Feltalon",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={280729},
model={},
description="This mount is acquired by collect 400 mounts.",
},[[
step
Collect 400 different mounts
|tip Use our various mount guides to accomplish this.
Earn the "A Horde of Hoofbeats" Achievement |achieve 12933
step
use the Frenzied Feltalon##163981
Learn the "Frenzied Feltalon" Mount |learnmount Frenzied Feltalon##280729
step
_Congratulations!_
You Collected the "Frenzied Feltalon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Pureheart Courser",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={280730},
model={83664},
description="This mount is acquired by collect 400 mounts.",
},[[
step
Earn Exalted with 100 Reputations
|tip Use our various Reputation guides to accomplish this.
Earn the "100 Exalted Reputations" Achievement |achieve 12866
step
use the Pureheart Courser##163982
|tip It is collected from a mailbox.
Learn the "Pureheart Courser" Mount |learnmount Pureheart Courser##280730
step
_Congratulations!_
You Collected the "Pureheart Courser" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Bloodgorged Crawg",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth, bloodgorged, crawg"},
mounts={250735},
model={78858},
description="This mount is acquired by collect 400 mounts.",
},[[
step
Load the "Elevator Music" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Elevator Music"
|tip Click the line above to load the guide.
Earn the "Elevator Music" Achievement |achieve 12937
step
Load the "Parental Controls" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Parental Controls"
|tip Click the line above to load the guide.
Earn the "Parental Controls" Achievement |achieve 12938
step
Load the "Thrash Mouth - All Stars" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Thrash Mouth - All Stars"
|tip Click the line above to load the guide.
Earn the "Thrash Mouth - All Stars" Achievement |achieve 12823
step
Load the "What's in the Box?" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\What's in the Box?"
|tip Click the line above to load the guide.
Earn the "What's in the Box?" Achievement |achieve 12828
step
Load the "Now We Got Bad Blood" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Now We Got Bad Blood"
|tip Click the line above to load the guide.
Earn the "Now We Got Bad Blood" Achievement |achieve 12772
step
Load the "Edgelords" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Edgelords"
|tip Click the line above to load the guide.
Earn the "Edgelords" Achievement |achieve 12830
step
Load the "Existential Crisis" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Existential Crisis"
|tip Click the line above to load the guide.
Earn the "Existential Crisis" Achievement |achieve 12836
step
Load the "Double Dribble" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Double Dribble"
|tip Click the line above to load the guide.
Earn the "Double Dribble" Achievement |achieve 12551
step
collect Bloodgorged Crawg##163216 |n
use the Bloodgorged Crawg##163216
Learn the "Bloodgorged Crawg" Mount |learnmount Bloodgorged Crawg##250735
step
_Congratulations!_
You Collected the "Bloodgorged Crawg" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Highland Mustang",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279456},
model={87774},
description="This mount is acquired from Doomrider Helgrim while the Alliance controls the Stromgarde War Front.",
},[[
step
kill Doomrider Helgrim##142741
|tip He only appears when the Alliance controls Stromgarde.
collect Highland Mustang##163579 |n
use the Highland Mustang##163579
Learn the "Highland Mustang" Mount |learnmount Highland Mustang##279456 |goto Arathi Highlands/0 53.97,56.96
step
_Congratulations!_
You Collected the "Highland Mustang" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Lil' Donkey",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279608},
model={87773},
description="This mount is acquired from Knight-Captain Aldrin while the Horde controls the Stromgarde War Front.",
},[[
step
Enter the cave |goto Arathi Highlands/0 33.44,36.94 < 10
kill Overseer Krix##142423
|tip Inside the cave.
|tip He's on a spawn timer.
|tip He will appear once after Horde or Alliance take control of Stromgarde.
collect Lil' Donkey##163646 |n
use the Lil' Donkey##163646
Learn the "Lil' Donkey" Mount |learnmount Lil'Donkey##279608 |goto 33.04,37.49
step
_Congratulations!_
You Collected the "Lil' Donkey" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Skullripper",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279611},
model={87848},
description="This mount is acquired from the Skullripper rare spawn within the Arathi Basin Warfront.",
},[[
step
kill Skullripper##142437
|tip He's on a spawn timer.
|tip He will appear once after Horde or Alliance take control of Stromgarde.
collect Skullripper##163645 |n
use Skullripper##163645
Learn the "Skullripper" Mount |learnmount Skullripper##279611 |goto Arathi Basin/0 57.15,45.75
step
_Congratulations!_
You Collected the "Skullripper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Swift Albino Raptor",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279569},
model={14345},
description="This mount is acquired from the Skullripper rare spawn within the Arathi Basin Warfront.",
},[[
step
kill Beastrider Kama##142709
|tip He's on a spawn timer.
|tip He will appear once after Horde or Alliance take control of Stromgarde.
collect Skullripper##163644 |n
use Swift Albino Raptor##163644
Learn the "Swift Albino Raptor" Mount |learnmount Swift Albino Raptor##279569 |goto Arathi Basin/0 67.06,65.89
step
_Congratulations!_
You Collected the "Swift Albino Raptor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Nazjatar Blood Serpent",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={275623},
model={14345},
description="This mount is acquired from a series of events mostly taking place in Stormsong Valley.",
},[[
step
Kill Zeth'jir enemies around this area
collect 20 Abyssal Fragment##161344 |n
|tip These have a low drop rate.
|tip You can also buy these from the auction house.
use the Abyssal Fragment##161344
collect Abhorrent Essence of the Abyss##161345 |goto Stormsong Valley/0 31.91,41.50
step
Enter the cave |goto 73.63,23.35 < 5 |walk
use the Abhorrent Essence of the Abyss##161345 |goto 74.69,21.75
|tip Use it at the Altar of the Abyss.
Click here to continue |confirm
step
Enter the mine |goto 46.53,36.11 < 5 |walk
click Abyssal Icon
|tip This will summon the Adherent of the Abyss.
kill Adherent of the Abyss##140474
|tip You will likely need a group to kill this.
collect Nazjatar Blood Serpent##161479 |n
use Nazjatar Blood Serpent##161479
Learn the "Nazjatar Blood Serpent" Mount |learnmount Nazjatar Blood Serpent##275623
step
_Congratulations!_
You Collected the "Nazjatar Blood Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Obsidian Krolusk",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={239049},
model={75600},
description="This mount is acquired from a series of events taking place during Mythic Dungeons.",
},[[
step
Load the "Pecking Order" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Pecking Order"
|tip Click the line above to load the guide.
Earn the "Pecking Order" Achievement |achieve 12550
step
Load the "I'm in Charge Now!" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\I'm in Charge Now!"
|tip Click the line above to load the guide.
Earn the "I'm in Charge Now!" Achievement |achieve 12548
step
Load the "That Sweete Booty" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\That Sweete Booty"
|tip Click the line above to load the guide.
Earn the "That Sweete Booty" Achievement |achieve 12998
step
Load the "Losing My Profession" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Losing My Profession"
|tip Click the line above to load the guide.
Earn the "Losing My Profession" Achievement |achieve 12489
step
Load the "Run Wild Like a Man On Fire" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Run Wild Like a Man On Fire"
|tip Click the line above to load the guide.
Earn the "Run Wild Like a Man On Fire" Achievement |achieve 12495
step
Load the "Alchemical Romance" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Alchemical Romance"
|tip Click the line above to load the guide.
Earn the "Alchemical Romance" Achievement |achieve 12490
step
Load the "Breath of the Shrine" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Breath of the Shrine"
|tip Click the line above to load the guide.
Earn the "Breath of the Shrine" Achievement |achieve 12600
step
Load the "The Void Lies Sleeping" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\The Void Lies Sleeping"
|tip Click the line above to load the guide.
Earn the "The Void Lies Sleeping" Achievement |achieve 12601
step
Load the "Trust No One" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Trust No One"
|tip Click the line above to load the guide.
Earn the "Trust No One" Achievement |achieve 12602
step
Load the "Bringing Hexy Back" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Bringing Hexy Back"
|tip Click the line above to load the guide.
Earn the "Bringing Hexy Back" Achievement |achieve 12270
step
Load the "Gold Fever" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Gold Fever"
|tip Click the line above to load the guide.
Earn the "Gold Fever" Achievement |achieve 12272
step
Load the "It's Lit!" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\It's Lit!"
|tip Click the line above to load the guide.
Earn the "It's Lit!" Achievement |achieve 12273
step
Load the "Not a Fun Guy" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Not a Fun Guy"
|tip Click the line above to load the guide.
Earn the "Not a Fun Guy" Achievement |achieve 12549
step
Load the "Taint Nobody Got Time For That" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Taint Nobody Got Time For That"
|tip Click the line above to load the guide.
Earn the "Taint Nobody Got Time For That" Achievement |achieve 12498
step
Load the "Sporely Alive" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Sporely Alive"
|tip Click the line above to load the guide.
Earn the "Sporely Alive" Achievement |achieve 12499
step
Load the "Snake Eyes" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Snake Eyes"
|tip Click the line above to load the guide.
Earn the "Snake Eyes" Achievement |achieve 12503
step
Load the "Snake Eater" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Snake Eater"
|tip Click the line above to load the guide.
Earn the "Snake Eater" Achievement |achieve 12507
step
Load the "Good Night, Sweet Prince" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Good Night, Sweet Prince"
|tip Click the line above to load the guide.
Earn the "Good Night, Sweet Prince" Achievement |achieve 12508
step
Load the "Remix to Ignition" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Remix to Ignition"
|tip Click the line above to load the guide.
Earn the "Remix to Ignition" Achievement |achieve 12457
step
Load the "Shot Through the Heart" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Shot Through the Heart"
|tip Click the line above to load the guide.
Earn the "Shot Through the Heart" Achievement |achieve 12462
step
Load the "Pitch Invasion" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Pitch Invasion"
|tip Click the line above to load the guide.
Earn the "Pitch Invasion" Achievement |achieve 12855
step
Load the "Ready for Raiding VI" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Ready for Raiding VI"
|tip Click the line above to load the guide.
Earn the "Ready for Raiding VI" Achievement |achieve 12854
step
Load the "Stand by Me" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Stand By Me"
|tip Click the line above to load the guide.
Earn the "Stand by Me" Achievement |achieve 12727
step
Load the "A Fish Out of Water" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\A Fish Out of Water"
|tip Click the line above to load the guide.
Earn the "A Fish Out of Water" Achievement |achieve 12726
step
Load the "It Belongs In a Mausoleum!" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\It Belongs in a Mausoleum!"
|tip Click the line above to load the guide.
Earn the "It Belongs In a Mausoleum!" Achievement |achieve 12722
step
Load the "How to Keep a Mummy" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\How to Keep a Mummy"
|tip Click the line above to load the guide.
Earn the "How to Keep a Mummy" Achievement |achieve 12723
step
Load the "Wrap God" Achievement Guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Dungeon\\Wrap God"
|tip Click the line above to load the guide.
Earn the "Wrap God" Achievement |achieve 12721
step
collect Reins of the Obsidian Krolusk##161215 |n
use the Reins of the Obsidian Krolusk##161215
Learn the "Obsidian Krolusk" Mount |learnmount Obsidian Krolusk##239049
step
_Congratulations!_
You Collected the "Obsidian Krolusk" Mount.
]])
ZGV.BETAEND()
