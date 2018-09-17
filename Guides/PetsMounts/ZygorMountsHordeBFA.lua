local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Highmountain Thunderhoof",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, achievement, horde"},
mounts={258060},
model={81113},
condition_end=function() return hasmount(258060) end,
description="This mount is acquired by completing the \"Allied Races: Highmountain Tauren\" achievement.",
},[[
step
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
step
Load the "Highmountain" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Highmountain"
|tip Click the line above to load the guide.
|tip You must progress through the Highmountain guide until you earn the "Ain't No Mountain High Enough" achievement.
Earn the "Ain't No Mountain High Enough" Achievement |achieve 10059
step
Load the "Highmountain" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Highmountain"
|tip Click the line above to load the guide.
|tip Completing certain quests in Highmountain award reputation with the Highmountain Tribe.
Load the "World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests in Highmountain award reputation with the Highmountain Tribe.
Use Highmountain Tribe Reputation Insignias
|tip These are awarded from Order Hall missions, Highmountain Tribe emissary quests, and world quests in Highmountain.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##141341 |only if itemcount(141341) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##139024 |only if itemcount(139024) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##146944 |only if itemcount(146944) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##146938 |only if itemcount(146938) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##141990 |only if itemcount(141990) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##147412 |only if itemcount(147412) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##150928 |only if itemcount(150928) >= 1
Gain Exalted Reputation with the Highmountain Tribe |achieve 12292
step
talk Lady Sylvanas Windrunner##126065
accept A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine About the Highmountain Tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Highmountain Tauren.
Choose an Ally to Pursue |q 50242/3 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
accept A Second Ally For the Cause##50254 |goto Orgrimmar/1 37.77,81.15
|only if completedq(49614)
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Highmountain Tauren.
Choose an Ally to Pursue |q 50254/1 |goto 37.77,81.15
|only if completedq(49614)
step
talk Lady Sylvanas Windrunner##126065
turnin A Second Ally For the Cause##50254 |goto 37.77,81.15
|only if completedq(49614)
step
talk Baine Bloodhoof##125285
accept A Feast for Our Kin##48066 |goto 38.17,81.10
step
Enter the building |goto Thunder Bluff/0 59.84,51.69 < 7 |walk
talk Baine Bloodhoof##93844
turnin A Feast for Our Kin##48066 |goto 61.65,52.10
step
talk Baine Bloodhoof##129914
|tip Wait for the dialogue to complete.
accept Shadow Over Thunder Bluff##48067 |goto Thunder Bluff/0 61.52,51.75
step
kill Shadow of Uul##125141+ |q 48067/2 |goto 55.36,51.33
kill Dark Tendril##125136+ |q 48067/1 |goto 55.36,51.33
step
talk Baine Bloodhoof##130773
|tip Next to you.
turnin Shadow Over Thunder Bluff##48067 |goto 55.20,51.05
accept Dark Forces##49756 |goto 55.20,51.05
step
kill Qy'telek##130726
|tip He walks around.
Slay Qy'telek |q 49756/1 |goto 38.17,61.81
step
talk Baine Bloodhoof##130773
|tip Next to you.
turnin Dark Forces##49756 |goto 38.04,60.65
accept Return to Highmountain##48079 |goto 38.04,60.65
step
talk Mayla Highmountain##108434
turnin Return to Highmountain##48079 |goto Thunder Totem/6 68.82,71.21
step
talk Spiritwalker Graysky##105085
accept Dark Tales##41884 |goto 68.38,72.97
step
Follow the path |goto Highmountain/0 36.58,65.92 < 10 |only if walking
Follow the path |goto 37.43,66.55 < 15 |only if walking
Follow the path |goto 38.73,67.99 < 15 |only if walking
Enter the building |goto 38.65,68.66 < 7 |walk
talk Spiritwalker Graysky##125454
turnin Dark Tales##41884 |goto 38.51,69.10
accept Walking in Their Footsteps##41764 |goto 38.51,69.10
step
click Water of Vision##248865
Use the Water of Vision |q 41764/1 |goto 38.53,69.17
step
Leave the building |goto 38.66,68.64 < 7 |walk
Follow the path |goto 39.57,69.43 < 7 |walk
Follow the path |goto 40.28,71.22 < 15 |only if walking
Enter the cave |goto 41.45,72.57 < 10 |walk
Follow the path |goto 42.01,72.77 < 10 |walk
Follow the path |goto 42.34,72.33 < 10 |walk
kill Shadow of Uul##125141+ |q 41764/3 |goto 43.52,73.29
kill Shadow Lurker##105069+ |q 41764/2 |goto 43.52,73.29
step
Follow the path |goto 43.67,74.02 < 10 |walk
Follow the path up |goto 44.19,74.95 < 7 |walk
Follow the path |goto 44.12,75.96 < 7 |walk
Follow the path |goto 44.98,76.40 < 10 |walk
Follow the path |goto 45.64,75.85 < 10 |walk
Follow the path |goto 46.25,74.80 < 10 |walk
click Bitestone Ward
Place the Bitestone Ward |q 41764/4 |goto 46.16,73.66
step
talk Spiritwalker Graysky##125454
turnin Walking in Their Footsteps##41764 |goto 38.51,69.10
accept Shadow of the Sepulcher##48185 |goto 38.51,69.10
step
Follow the path |goto 53.17,45.95 < 10 |only if walking
Follow the path |goto 54.36,46.73 < 10 |only if walking
Follow the path down |goto 54.63,45.69 < 10 |only if walking
Follow the path |goto 56.31,45.61 < 10 |only if walking
Enter the building |goto 56.81,46.05 < 7 |walk
talk Spiritwalker Graysky##125459
turnin Shadow of the Sepulcher##48185 |goto 57.01,46.21
accept Minions of the Darkness##41799 |goto 57.01,46.21
step
click Water of Vision##248865
Use the Water of Vision |q 41799/1 |goto 57.05,46.16
step
kill Dark Spirit##104872+
|tip Use the abilities on your bar.
Slay #12# Dark Spirits |q 41799/2 |goto 55.98,45.52
step
Enter the cave |goto 55.15,44.27 < 7 |walk
Follow the path |goto 54.61,43.62 < 7 |walk
Follow the path |goto 54.46,43.11 < 7 |walk
Follow the path |goto 54.65,42.71 < 7 |walk
Follow the path |goto 55.11,41.88 < 7 |walk
Follow the path |goto 54.53,41.71 < 7 |walk
Follow the path |goto 54.37,42.83 < 7 |walk
Follow the path |goto 54.98,43.34 < 7 |walk
Follow the path |goto 55.31,42.14 < 7 |walk
Follow the path |goto 55.01,41.24 < 7 |walk
kill Shadowy Tendril##130418+ |q 41799/3 |goto 54.74,41.15
step
Enter the cave |goto 55.21,41.84 < 7 |walk
kill Shadow of the Darkness##132090 |q 41799/4 |goto 55.36,40.85
step
click Sepulcher Ward
Place the Sepulcher Ward |q 41799/5 |goto 54.74,40.62
step
talk Spiritwalker Graysky##125459
turnin Minions of the Darkness##41799 |goto 57.01,46.21
accept Huln's Mountain##48190 |goto 57.01,46.21
step
Follow the path |goto 58.56,64.47 < 7 |only if walking
Cross the bridge |goto 57.92,63.60 < 7 |only if walking
Follow the path up |goto 57.22,63.34 < 10 |only if walking
Follow the path up |goto 56.11,63.55 < 10 |only if walking
Follow the path up |goto 54.83,63.69 < 10 |only if walking
Follow the path |goto 53.42,63.46 < 10 |only if walking
talk Spiritwalker Graysky##125466
turnin Huln's Mountain##48190 |goto 53.32,64.01
accept Servants of the Darkness##41800 |goto 53.32,64.01
step
clicknpc Spiritwalker Graysky##125829
Use the Water of Vision |q 41800/1 |goto 53.32,64.01
step
Follow the path |goto 53.97,64.84 < 10 |only if walking
Cross the bridge |goto 53.70,65.84 < 7 |only if walking
kill Necrodark Defiler##104888+ |q 41800/2 |goto 53.16,66.45
step
Follow the path |goto 52.63,66.61 < 10 |walk
kill Necrogg the Darkspeaker##104890
|tip He patrols up and down the hill
Slay Necrogg the Darkspeaker |q 41800/3 |goto 52.46,67.44
step
Follow the path up |goto 52.39,69.08 < 10 |only if walking
Follow the path up |goto 52.98,69.43 < 10 |only if walking
Enter the building |goto 53.23,69.35 < 7 |only if walking
click Snowmane Ward##3365
Place the Snowmane Ward |q 41800/4 |goto 53.33,69.48
step
talk Spiritwalker Graysky##125466
turnin Servants of the Darkness##41800 |goto 53.32,64.01
accept How Fares Ebonhorn?##48434 |goto 53.32,64.01
step
talk Spiritwalker Ebonhorn##124252
turnin How Fares Ebonhorn?##48434 |goto Thunder Totem/6 67.77,71.40
step
talk Mayla Highmountain##108434
accept Curse of the Necrodark##41815 |goto 68.72,71.03
step
Follow the path down |goto Highmountain/0 56.00,85.20 < 7 |only if walking
Cross the water |goto 55.34,84.21 < 15 |only if walking
Follow the path up |goto 56.07,82.00 < 10 |only if walking
Follow the path |goto 56.46,80.99 < 10 |only if walking
Follow the path |goto 56.03,80.03 < 10 |only if walking
Follow the path |goto 54.61,80.33 < 10 |only if walking
Follow the path up |goto 52.38,83.64 < 10 |only if walking
Follow the path up |goto 52.38,85.75 < 10 |only if walking
Follow the path up |goto 53.60,87.50 < 10 |only if walking
Cross the bridge |goto 56.22,89.05 < 7 |only if walking
talk Baine Bloodhoof##130423
turnin Curse of the Necrodark##41815 |goto 56.49,89.23
accept Ice and Shadow##41840 |goto 56.49,89.23
step
talk Jale Rivermane##97662
accept Whispers of the Darkness##41882 |goto 56.46,89.33
stickystart "Collect_Shadowice_Shards"
step
clicknpc Highmountain Protector##132212+
Free #6# Highmountain Protectors |q 41882/1 |goto 57.01,90.90
step
label "Collect_Shadowice_Shards"
Kill Necrodark enemies around this area
collect Shadowice Shard##136400 |q 41840/1 |goto 57.67,92.72
step
talk Spiritwalker Ebonhorn##105213
turnin Whispers of the Darkness##41882 |goto 57.55,92.34
turnin Ice and Shadow##41840 |goto 57.55,92.34
accept The Final Ward##41841 |goto 57.55,92.34
step
Enter the cave |goto 57.40,92.28 < 7 |walk
Follow the path |goto 57.12,92.13 < 7 |walk
click Summit Ward
Place the Summit Ward |q 41841/1 |goto 56.49,91.44
step
talk Spiritwalker Ebonhorn##105213
turnin The Final Ward##41841 |goto 56.81,92.02
accept The Darkness##48403 |goto 56.81,92.02
step
Leave the cave |goto 57.49,92.32 < 7 |walk
kill Uul'gyneth##126001 |q 48403/1 |goto 57.87,91.07
step
Follow the path |goto 57.43,92.71 < 7 |only if walking
Follow the path up |goto 57.10,92.17 < 7 |only if walking
Follow the path up |goto 56.86,92.63 < 7 |only if walking
talk Mayla Highmountain##104997
turnin The Darkness##48403 |goto 56.66,92.71
step
talk Baine Bloodhoof##126134
accept Together We Are the Horde!##48433 |goto 56.71,92.76
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin Together We Are the Horde!##48433 |goto 37.77,81.16
step
learnmount Highmountain Thunderhoof##258060 |use Highmountain Thunderhoof##155662 |future
step
_Congratulations!_
You Collected the "Highmountain Thunderhoof" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Nightborne Manasaber",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, achievement, horde"},
mounts={258845},
model={74032},
condition_end=function() return hasmount(258845) end,
description="This mount is acquired by completing the \"Allied Races: Nightborne\" achievement.",
},[[
step
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
step
Load the "Suramar (110)" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Suramar (110)"
|tip Click the line above to load the guide.
|tip You must progress through the Suramar guide until you earn the Insurrection achievement.
Earn the "Insurrection" Achievement |achieve 11340
step
Load the "World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Complete world quests in Suramar to gain reputation.
About Ancient Mana:
|tip Click various objects on the ground all around Suramar to collect Ancient Mana.
|tip You can track the objects on your minimap by using the Mana Divining Stone.
|tip You get the Mana Divining Stone as a quest reward shortly into the Suramar (110) leveling guide.
|tip The best area of Suramar to collect Ancient Mana is Twilight Vineyards.
Feed Ancient Mana to These Nightfallen NPC's:
|tip First Arcanist Thalyssra
|tip Arcanist Valtrois
|tip Chief Telemancer Oculeth
|tip Their locations change as you complete quests in the Suramar (110) leveling guide.
Gain Exalted Reputation with the Nightfallen |goto Suramar/0 36.51,46.80 |region suramar_shalaran |achieve 10778
step
talk Lady Sylvanas Windrunner##126065
accept A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine About the Highmountain tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Nightborne Elves.
Choose an Ally to Pursue |q 50242/3 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
accept A Second Ally For the Cause##50254 |goto Orgrimmar/1 37.77,81.15
|only if completedq(48433)
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Nightborne Elves.
Choose an Ally to Pursue |q 50254/1 |goto 37.77,81.15
|only if completedq(48433)
step
talk Lady Sylvanas Windrunner##126065
turnin A Second Ally For the Cause##50254 |goto 37.77,81.15
|only if completedq(48433)
step
talk Lady Liadrin##126062
accept Thalyssra's Estate##49973 |goto 37.98,80.56
step
talk Lady Liadrin##131478
turnin Thalyssra's Estate##49973 |goto Suramar/0 65.88,63.72
accept Silvermoon City##49613 |goto 65.88,63.72
step
talk Lady Liadrin##130133
turnin Silvermoon City##49613 |goto Silvermoon City/0 58.12,19.88
accept Remember the Sunwell##49354 |goto 58.12,19.88
step
click Portal to the Sunwell |goto 53.95,19.49
Enter the Scenario |scenariostart |q 49354 |future |q 49354 |future
step
Meet with Liadrin |scenariogoal Meet with Liadrin.##1/38106 |goto Shrine of the Eclipse/1 61.10,71.48 |q 49354 |future
step
Follow the path |goto 56.52,73.29 < 7 |walk
Walk with Thalyssra |scenariogoal Walk with Thalyssra##2/38160 |goto 50.09,66.13 |q 49354 |future
step
Kill enemies around this area
Defeat the Sunwell Guardians |scenariogoal Defeat the Sunwell Guardians##3/38161 |goto 50.09,66.13 |q 49354 |future
step
kill Aruun the Darkener##129659 |scenariogoal Aruun the Darkener slain##4/38162 |goto 48.69,66.06 |q 49354 |future
step
Close the Void Rift |scenariogoal Void rift closed##5/38519 |q 49354 |future
|tip Wait for the dialogue to complete.
step
Follow the path |goto 58.09,65.52 < 7 |walk
click Silvermoon Translocator |goto 62.30,67.03
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |q 49354 |future
step
click Silvermoon Translocator |goto 62.30,67.03
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |goto Silvermoon City/0 58.25,19.35 < 1000 |noway |c |q 49354 |future
step
talk Lady Liadrin##130133
turnin Remember the Sunwell##49354 |goto 58.45,19.09
accept The Nightborne##49614 |goto 58.45,19.09
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Nightborne##49614 |goto 37.77,81.16
step
learnmount Nightborne Manasaber##258845 |use Nightborne Manasaber##156487 |future
step
_Congratulations!_
You Collected the "Nightborne Manasaber" Mount.
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
startlevel=120.0,
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
Learn the Sharkbait Mount |learnmount Shark Bait##254813
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
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Undercity Plaguebat",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth, quest, horde"},
mounts={272472},
model={85886},
condition_end=function() return hasmount(272472) end,
description="This mount is acquired by completing the \"Burning of Teldrassil\" event.",
},[[
step
accept The Warchief Awaits##50476
|tip You will automatically accept this quest.
step
Follow the path |goto Undercity/0 52.05,64.52 < 5 |walk
Continue following the path |goto 46.32,72.88 < 5 |walk
Continue following the path |goto 45.29,78.11 < 5 |walk
Continue following the path |goto 46.20,83.81 < 5 |walk
Continue following the path |goto 48.81,87.79 < 5 |walk
talk Lady Sylvanas Windrunner##134554
turnin The Warchief Awaits##50476 |goto 58.14,91.88
accept The Warchief Commands##50642 |goto 58.10,91.88
step
talk High Overlord Saurfang##134574
turnin The Warchief Commands##50642 |goto Northern Barrens/0 50.88,46.00
accept A Quick Diversion##50646 |goto 50.88,46.00
step
talk Lorash##134573
turnin A Quick Diversion##50646 |goto Ashenvale/0 38.91,55.30
accept Everybody Has a Price##50647 |goto Ashenvale/0 38.91,55.30
step
Cross the bridge |goto 37.45,53.69 |walk
|tip Dismount before crossing.
kill Astranaar Sentinel##134645+
|tip Use the "Marked!" ability on guards around this area.
Eliminate #10# Guards |q 50647/1 |goto 36.62,51.99
step
talk Lorash##134573
turnin Everybody Has a Price##50647 |goto 38.91,55.29
accept A Timely Arrival##50738 |goto 38.91,55.29
step
talk Lady Sylvanas Windrunner##135003
turnin A Timely Arrival##50738 |goto 37.83,56.30
accept Zoram'gar Outpost##50740 |goto 37.83,56.30
step
Enter the building |goto 12.86,34.12 < 3 |walk
talk Innkeeper Duras##43606
|tip Inside the building.
Tell her _"The warchief needs rations and lodging for an incoming army."_
Speak with the Innkeeper |q 50740/2 |goto 12.99,34.16
step
Leave the building |goto 12.86,34.12 < 3 |walk
Enter the building |goto 11.67,35.00 < 5 |walk
talk Dagrun Ragehammer##34303
|tip He walks around inside the building.
Tell him _"Warchief Sylvanas Windrunner requires your aid repairing her soldiers' weapons."_
Speak with the Weaponsmith |q 50740/3 |goto 11.56,35.36
step
Leave the building |goto 11.65,35.07 < 5 |walk
talk Commander Grimfang##34122
Tell him _"Commander, the warchief asks that you prepare your outpost for an incoming army."_
Speak with Commander Grimfang |q 50740/1 |goto 12.11,33.86
step
talk High Overlord Saurfang##134574
turnin Zoram'gar Outpost##50740 |goto 35.17,49.44
accept On The Prowl##50772 |goto 35.17,49.44
step
Meet Sylvanas Near the Entrance to Darkshore |q 50772/1 |goto Darkshore/0 44.07,90.46
step
talk Lady Sylvanas Windrunner##134554
turnin On The Prowl##50772 |goto 44.08,90.50
accept Into the Woods##50800 |goto 44.08,90.50
step
kill 6 Ashenvale Huntress##135350 |q 50800/1 |goto 44.11,90.49
step
talk Lady Sylvanas Windrunner##134554
turnin Into the Woods##50800 |goto 44.07,90.49
accept Ripe for the Picking##50823 |goto 44.07,90.49
step
turnin Ripe for the Picking##50823 |goto Ashenvale/0 12.13,33.75
step
talk Lady Sylvanas Windrunner##134554
accept A Quick Flyover##50837 |goto 12.02,33.77
step
talk Zarvik Blastwix##135501
Speak with Zarvik Blastwix |q 50837/1 |goto 11.82,33.26
step
talk Zarvik Blastwix##135501
Tell him _"Let's Fly."_
Board the Bombardier |invehicle |goto 11.82,33.26 |q 50837
stickystart "Destroy_30_Wisps"
step
kill Marked Tree##140924+
|tip Use the "Anti-Air Canon" ability on your action bar.
Fell #3# Marked Trees |q 50837/2 |goto Darkshore/0 40.83,90.64
step
label "Destroy_30_Wisps"
kill Wisp##141268+
|tip Use the "Anti-Air Canon" ability on your action bar.
Destroy #30# Wisps |q 50837/3 |goto 42.35,90.41
step
talk Lady Sylvanas Windrunner##134554
turnin A Quick Flyover##50837 |goto Ashenvale/0 12.02,33.78
accept An Unstoppable Force##50880 |goto 12.02,33.78
step
Meet Sylvanas at the Wall |q 50880/1 |goto Darkshore/0 44.00,90.18
step
Pass Through the Wall |q 50880/2 |goto 43.81,89.77
step
talk Lady Sylvanas Windrunner##134554
turnin An Unstoppable Force##50880 |goto 42.84,87.43
accept Clearing Them Out##53604 |goto 42.84,87.43
accept A Glaive Misunderstanding##53605 |goto 42.84,87.43
stickystart "Kill_6_Darnassian_Archers"
step
use the Everburning Torch##158937
Burn #4# Glaive Throwers |q 53605/1 |goto 40.67,83.88
step
label "Kill_6_Darnassian_Archers"
Kill enemies around this area
Defeat #7# of the Night Elf Forces |q 53604/1 |goto 40.67,83.88
step
talk Lady Sylvanas Windrunner##134554
turnin Clearing Them Out##53604 |goto 42.43,82.06
turnin A Glaive Misunderstanding##53605 |goto 42.43,82.06
accept Blurred Vision##50878 |goto 42.43,82.06
stickystart "Kill_10_Frenzied_Blackwood_Furbolg"
step
kill 8 Sentry Owl##141359 |q 50878/1 |goto 42.36,78.18
step
label "Kill_10_Frenzied_Blackwood_Furbolg"
kill 10 Frenzied Blackwood Furbolg##140686 |q 50878/2 |goto 42.36,78.18
step
talk Lady Sylvanas Windrunner##135003
turnin Blurred Vision##50878 |goto 43.30,75.67
accept The Trees Have Ears##50879 |goto 43.30,75.67
step
kill Burning Ancient##141365 |q 50879/1 |goto 44.31,75.17
step
talk Lady Sylvanas Windrunner##135003
turnin The Trees Have Ears##50879 |goto 43.30,75.67
step
talk Lady Sylvanas Windrunner##135003
accept The Blackwood Den##52436 |goto 43.30,75.67
accept Aggressive Inspiration##53606 |goto 43.30,75.67
stickystart "Slay_10_Blackwood_Furbolgs"
step
click Horde Banner##289540
Plant the Northern Banner |q 53606/1 |goto 45.10,83.68
step
click Horde Banner##289540
Plant the Center Banner |q 53606/2 |goto 44.61,85.10
step
click Horde Banner##289540
Plant the Southern Banner |q 53606/3 |goto 44.39,86.53
step
label "Slay_10_Blackwood_Furbolgs"
Kill Blackwood enemies around this area
Slay #10# Blackwood Furbolgs |q 52436/1
step
talk Lady Sylvanas Windrunner##134554
turnin The Blackwood Den##52436 |goto 43.32,84.71
turnin Aggressive Inspiration##53606 |goto 43.32,84.71
accept The Start of Something Good##52437 |goto 43.32,84.71
step
Meet Sylvanas at Nazj'vel |q 52437/1 |goto 35.81,84.77
step
talk Jux Burstkix##144346
turnin The Start of Something Good##52437 |goto 35.82,84.84
accept Fueling the Horde War Machine##53608 |goto 35.82,84.84
accept A Very Clear Message##53609 |goto 35.82,84.84
stickystart "Slay_10_Night_Elves"
step
click Azerite Deposit##297790+
|tip They look like small multicolored rocks on the ground around this area.
Collect #6# Azerite |q 53608/1 |goto 32.63,84.08
step
label "Slay_10_Night_Elves"
Kill enemies around this area
Slay #10# Night Elves |q 53609/1 |goto32.63,84.08
step
talk Jux Burstkix##144346
turnin Fueling the Horde War Machine##53608 |goto 35.82,84.84
turnin A Very Clear Message##53609 |goto 35.82,84.84
accept A Gift of Azerite##53627 |goto 35.82,84.84
step
talk Zarvik Blastwix##135501
|tip He walks around this area.
turnin A Gift of Azerite##53627 |goto 44.60,86.54
accept A Wild Ride##52438 |goto 44.60,86.54
step
clicknpc Goblin Hellion##141847
Use the Goblin Hellion |q 52438/1 |goto 44.76,83.45
step
Ride the Goblin Hellion to Wildbend River |q 52438/2 |goto 41.15,69.32
stickystart "Slay_20_Kaldorei_Forces"
step
kill Awakened Ancient##140741+
|tip Use the abilities on your action bar.
Slay #5# Awakened Ancients |q 52438/3 |goto 40.34,68.01
step
label "Slay_20_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei forces |q 52438/4 |goto 41.01,67.80
step
talk Lady Sylvanas Windrunner##134554
turnin A Wild Ride##52438 |goto 42.70,67.75
accept A Looming Threat##52806 |goto 42.70,67.75
step
talk Lady Sylvanas Windrunner##134554
Ask her _"Where do we go from here, Warchief?"_
Speak with Sylvanas at the Blackwood Den |q 52806/1 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
turnin A Looming Threat##52806 |goto 44.70,86.78
accept Saurfang Returns##52967 |goto 44.70,86.78
step
talk High Overlord Saurfang##142310
turnin Saurfang Returns##52967 |goto 52.16,22.46
accept No Small Mercy##52970 |goto 52.16,22.46
accept Driving Them Out##53610 |goto 52.16,22.46
accept Seaside Rendezvous##52971 |goto 52.16,22.46
stickystart "Secure_8_Civilians"
stickystart "Slay_15_Lor'danel_defenders"
step
kill Ariel Stagguard##144345 |q 52971/2 |goto 51.66,17.80
step
kill Caranne Briarbow##142749 |q 52971/1 |goto 46.73,18.79
step
label "Secure_8_Civilians"
clicknpc Lor'danel Citizen##142408
Tell them _"Come with us to safety. We will not harm you."_
Secure #8# Civilians |q 52970/1 |goto 50.75,20.27
step
label "Slay_15_Lor'danel_defenders"
Kill enemies around this area
Slay #15# Lor'danel Defenders |q 53610/1 |goto 50.23,18.67
step
talk High Overlord Saurfang##142310
turnin No Small Mercy##52970 |goto 52.16,22.45
turnin Driving Them Out##53610 |goto 52.16,22.45
turnin Seaside Rendezvous##52971 |goto 52.16,22.45
accept Killer Queen##52981 |goto 52.16,22.45
step
Find Saurfang in Northern Darkshore |q 52981/1 |goto 45.93,23.55
step
Watch the dialogue
Assist the Warchief |q 52981/2 |goto 46.13,24.40
step
Watch the dialogue
Follow Saurfang |q 52981/3 |goto 46.12,24.28
step
talk Lady Sylvanas Windrunner##144466
Tell her _"I am ready."_ |q 52981/4 |goto 45.52,18.25
step
talk Lady Sylvanas Windrunner##144466
turnin Killer Queen##52981 |goto 45.51,18.24
step
use the War-Torn Reins of the Undercity Plaguebat##163128
learnmount Undercity Plaguebat##272472
step
_Congratulations!_
You Collected the "Undercity Plaguebat" Mount.
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
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Voldunai\\Alabaster Hyena",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={237287},
model={75323},
description="This mount is acquired by becoming Exalted with the Voldunai then buying the mount for 10,000 gold.",
},[[
step
Load the "Voldunai" Reputation Guide |confirm |next "Zygor's Reputations Guides\\Battle for Azeroth\\Voldunai"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Voldunai |condition rep('Voldunai')==Exalted
step
talk Hoarder Jena##135804
buy Reins of the Alabaster Hyena##161773 |n
use the Reins of the Alabaster Hyena##161773
Learn the "Alabaster Hyena" Mount |learnmount Alabaster Hyena##237287 |goto Vol'dun/0 56.69,49.74
step
_Congratulations!_
You Collected the "Alabaster Hyena" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Talanji's Expedition\\Expedition Bloodswarmer",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={275841},
model={76708},
description="This mount is acquired by becoming Exalted with the Talanji's Expedition then buying the mount for 10,000 gold.",
},[[
step
Load the "Talanji's Expedition" Reputation Guide |confirm |next "Zygor's Reputations Guides\\Battle for Azeroth\\Talanji's Expedition"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Talanji's Expedition |condition rep('Talanji\'s Expedition')==Exalted
step
talk Provisioner Lija##135459
buy Reins of the Expedition Bloodswarmer##161774 |n
use the Reins of the Expedition Bloodswarmer##161774
Learn the "Expedition Bloodswarmer" Mount |learnmount Expedition Bloodswarmer##275841 |goto Nazmir/0 39.07,79.51
step
_Congratulations!_
You Collected the "Expedition Bloodswarmer" Mount.
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
talk Talutu##125879
buy Reins of the Mighty Caravan Brutosaur##163042 |n
|tip You will need 5,000,000 gold.
use the Reins of the Mighty Caravan Brutosaur##163042
Learn the "Mighty Caravan Brutosaur" Mount |learnmount Mighty Caravan Brutosaur##264058 |goto Dazar'alor/0 48.58,87.09
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
talk Talutu##125879
buy Reins of the Palehide Direhorn##163589 |n
|tip You will need 500,000 gold.
use the Reins of the Palehide Direhorn##163589
Learn the "Palehide Direhorn" Mount |learnmount Palehide Direhorn##279474 |goto Dazar'alor/0 48.58,87.09
step
_Congratulations!_
You Collected the "Palehide Direhorn" Mount.
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Zandalari Empire\\Cobalt Pterrordax",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={275837},
model={87045},
description="This mount is acquired by becoming Exalted with the Zandalari Empire.",
},[[
step
Load the "Zandalari Empire" Reputation Guide |confirm |next "Zygor's Reputations Guides\\Battle for Azeroth\\Zandalari Empire"
|tip Click the line above to load the guide.
Reach Exalted Reputation with the Zandalari Empire |condition rep('Zandalari Empire')==Exalted
step
Enter the building |goto Dazar'alor/0 49.93,42.16 < 5 |only if walking
Run up the stairs |goto Dazar'alor/1 55.16,45.93 < 5 |only if walking
talk Natal'hakata##131287
buy Reins of the Cobalt Pterrordax##161665 |n |goto Dazar'alor/2 67.22,71.68
|tip This costs 10,000 gold.
use the  Reins of the Cobalt Pterrordax##161665
Learn the "Cobalt Pterrordax" Mount |learnmount Cobalt Pterrordax##275837
step
_Congratulations!_
You Collected the "Cobalt Pterrordax" Mount.
]])
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
Load the "Zandalari Engineering" Leveling Guide |confirm |next "Zygor's Profession Guides\\Engineering\\Leveling Guides\\Zandalari Engineering 1-150 Leveling Guide"
|tip Click the line above to load the guide.
Reach Level 150 Zandalari Engineering |skill Zandalari Engineering,150
step
Equip a pair of "AZ3-R1-T3" Headgear
|tip This is a crafted item.
|tip You will need to have the 3 levels of Azerite Upgrades available.
|tip For the first slot, choose the upgrade that grants +25 Zandalari Engineering.
|tip For the third slot, choose the upgrade that grants +30 Zandalari Engineering.
|tip The higher your Zandalari Engineering skill, the higher the chance for drops later.
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
You can find the Shred-Master Mk1 here [Dazar'alor/0 45.03,39.93]
step
Open Your Zandalari Engineering Crafting Panel:
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
mounts={280730},
model={83664},
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
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Broken Highland Mustang",{
author="support@zygorguides.com",
startlevel=120.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279457},
model={87773},
description="This mount is acquired from Knight-Captain Aldrin while the Horde controls the Stromgarde War Front.",
},[[
step
kill Knight-Captain Aldrin##142739
|tip He only appears when the Horde controls Stromgarde.
collect Broken Highland Mustang##163578 |n
use the Broken Highland Mustang##163578
Learn the "Broken Highland Mustang" Mount |learnmount Broken Highland Mustang##279457 |goto Arathi Highlands/0 49.27,40.05
step
_Congratulations!_
You Collected the "Broken Highland Mustang" Mount.
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
