local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DailiesCBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Darkshore World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Darkshore.",
condition_suggested=function() return level>=110 and completedq(52279) end,
condition_valid=function() return level>=110 and completedq(52279) end,
condition_valid_msg="You have not unlocked Darkshore world quests!\n"..
"Complete the quest \"A Looming Threat\" in \"The Burning of Teldrassil\" event guide.",
startlevel=110.0,
worldquestzone=62,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-52182
accept The Azerite Stuff##52182 |goto Darkshore/0 32.85,84.09
|tip You will accept this quest automatically.
step
click Small Azerite Deposit##297605+
|tip They look like multicolored mining viens on the ground around this area.
Kill enemies around this area
collect 100 Azerite Crystal##164382 |q 52182/1 |goto 32.85,84.09
|next "Tortollan_Seekers_WQ"
step
label quest-52895
accept Arboria##52895 |goto Darkshore/0 44.03,75.29
|tip You will accept this quest automatically.
step
kill Monstrous Shredder##143562 |q 52895/1 |goto 44.03,75.29
|next "Tortollan_Seekers_WQ"
step
label quest-52207
accept The Azerite Stuff##52207 |goto Darkshore/0 32.48,84.44
|tip You will accept this quest automatically.
step
click Small Azerite Deposit##297605+
|tip They look like multicolored mining viens on the ground around this area.
Kill enemies around this area
collect 100 Azerite Crystal##164382 |q 52207/1 |goto 44.03,75.29
|next "Tortollan_Seekers_WQ"
step
label quest-52883
accept Breakthru##52883 |goto Darkshore/0 40.98,83.99
|tip You will accept this quest automatically.
stickystart "Kill_Darnassian_Scouts"
step
use the Everburning Torch##162602
|tip Use it on Glaive Throwers.
|tip They look like artillery machines on the ground around this area.
Burn #4# Glaive Throwers |q 52883/2 |goto 40.98,83.99
step
label "Kill_Darnassian_Scouts"
Kill enemies around this area
Slay #10# Night Elf Forces |q 52883/1 |goto 40.98,83.99
|next "Tortollan_Seekers_WQ"
step
label quest-52506
accept Blunt the Spikes##52506 |goto Darkshore/0 39.11,42.36
|tip You will accept this quest automatically.
stickystart "Kill_Darkshore_Invaders"
step
Enter the building |goto 38.87,41.91 < 5 |walk
kill Lieutenant Oogra##141352
|tip Inside the building.
|tip He walks around the area.
Slay Lieutenant Oogra |q 52506/2 |goto 38.62,42.20
step
label "Kill_Darkshore_Invaders"
kill 8 Darkshore Invader##143909 |q 52506/1 |goto 39.11,42.36
|next "Tortollan_Seekers_WQ"
step
label quest-53497
accept Break Free##53497 |goto Darkshore/0 50.45,19.62
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Occupiers"
step
clicknpc Darnassian Archer##143976+
|tip They look like wounded elves on the ground around this area.
Heal #8# Darnassian Archers |q 53497/1 |goto 50.45,19.62
step
label "Slay_Horde_Occupiers"
Kill enemies around this area
Slay #12# Horde Occupiers |q 53497/2 |goto 50.45,19.62
|next "Tortollan_Seekers_WQ"
step
label quest-52894
accept Don't Stop Me Now##52894 |goto Darkshore/0 44.24,74.95
|tip You will accept this quest automatically.
step
kill Burning Ancient##141365 |q 52894/1 |goto 44.24,74.95
|next "Tortollan_Seekers_WQ"
step
label quest-53520
accept Detonate!##53520 |goto Darkshore/0 39.90,25.71
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Occupiers"
step
clicknpc Keg of Azerite Powder##144023+
|tip They look like wooden barrels underwater around this area.
Detonate #8# Azerite Powder Kegs |q 53520/1 |goto 39.90,25.71
step
label "Slay_Horde_Occupiers"
Kill enemies around this area
|tip On the ships and underwater around this area.
Slay #10# Horde Occupiers |q 53520/2 |goto 39.90,25.71
|next "Tortollan_Seekers_WQ"
step
label quest-52312
accept Extinguish the Lights##52312 |goto 44.21,58.72
|tip You will accept this quest automatically.
stickystart "Calm_Frenzied_Wisps"
stickystart "Kill_Possessing_Spirits"
step
clicknpc Entranced Grunt##143945+
|tip They look like charmed Orcs around this area.
Rescue #5# Entranced Sentinels |q 52312/2 |goto 44.21,58.72
step
label "Calm_Frenzied_Wisps"
clicknpc Frenzied Wisp##140956+
|tip They look like floating blue balls around this area.
Calm #6# Frenzied Wisps |q 52312/3 |goto 44.21,58.72
step
label "Kill_Possessing_Spirits"
kill 10 Possessing Spirit##140715 |q 52312/1 |goto 44.21,58.72
|next "Tortollan_Seekers_WQ"
step
label quest-52243
accept Fuel for the Demolishers##52243 |goto Darkshore/0 40.29,61.39
|tip You will accept this quest automatically.
stickystart "Kill_Darnassian_Scouts"
step
kill Enraged Fire Elemental##140588+
collect 6 Elemental Pitch##161436 |q 52243/1 |goto 40.29,61.39
step
label "Kill_Darnassian_Scouts"
kill 7 Darnassian Scout##143674
|tip They ride nightsabers around the crater.
Slay #7# Darnassian Scouts |q 52243/2 |goto 40.29,61.39
|next "Tortollan_Seekers_WQ"
step
label quest-53009
accept Hang On In There##53009 |goto Darkshore/0 62.39,9.74
|tip You will accept this quest automatically.
step
clicknpc Horde Combatant##143457+
|tip They look like wounded soldiers on the ground around this area.
Kill Darkshore enemies around this area
Defend the War Camp |q 53009/1 |goto 62.39,9.74
|next "Tortollan_Seekers_WQ"
step
label quest-52890
accept It's a Kind of Magic##52890 |goto Darkshore/0 41.97,78.16
|tip You will accept this quest automatically.
stickystart "Slay_Frenzied_Blackwood_Furbolgs"
step
kill 8 Sentry Owl##141359+ |q 52890/1 |goto 41.97,78.16
step
label "Slay_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686+ |q 52890/2 |goto 41.97,78.16
|next "Tortollan_Seekers_WQ"
step
label quest-52984
accept I Want It All##52984 |goto Darkshore/0 32.92,84.05
|tip You will accept this quest automatically.
step
kill Azerite Fury##142387 |q 52984/1 |goto 32.92,84.05
|next "Tortollan_Seekers_WQ"
step
label quest-52983
accept I Want It All##52983 |goto Darkshore/0 32.92,84.05
|tip You will accept this quest automatically.
step
kill Azerite Fury##142387 |q 52983/1 |goto 32.92,84.05
|next "Tortollan_Seekers_WQ"
step
label quest-53010
accept No Turning Back##53010 |goto Darkshore/0 62.36,9.58
|tip You will accept this quest automatically.
step
Kill Horde enemies around this area
click Horde War Supplies
|tip They look like brown wooden crates on the ground around this area.
click Wooden Cage##270999+
|tip They look like wooden cages holding night elf prisoners around this area.
Assault the War Camp |q 53010/1 |goto 62.36,9.58
|next "Tortollan_Seekers_WQ"
step
label quest-53320
accept Ours For the Taking##53320 |goto Darkshore/0 61.08,18.07
|tip You will accept this quest automatically.
step
clicknpc Damaged Shredder##143452+
|tip They look like broken mechanical shredders on the ground around this area.
Kill Darkshore enemies around this area
click Wood Pile##297480+
|tip They look like small bundles of wood on the ground around this area.
Control the Ruins of Mathystra |q 53320/1 |goto 61.08,18.07
|next "Tortollan_Seekers_WQ"
step
label quest-52893
accept One Vision##52893 |goto Darkshore/0 41.97,78.16
|tip You will accept this quest automatically.
stickystart "Slay_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##143938
|tip You can find them near trees around this area
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52893/1 |goto 41.97,78.16
step
label "Slay_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686+ |q 52893/2 |goto 41.97,78.16
|next "Tortollan_Seekers_WQ"
step
label quest-53319
accept Our Sacred Forest##53319 |goto Darkshore/0 60.82,18.17
|tip You will accept this quest automatically.
step
click Wood Pile##297480+
|tip They look like bundles of wood on the ground around this area.
kill Horde Combatant##143456+
Protect the Ruins of Mathystra |q 53319/1 |goto 59.12,16.69
|next "Tortollan_Seekers_WQ"
step
label quest-52505
accept Pruning the Thorns##52505 |goto Darkshore/0 39.56,39.83
|tip You will accept this quest automatically.
stickystart "Kill_Auberdine_Guardians"
step
kill Lieutenant Aylissa Silverarrow##141346
|tip She walks around this area.
Slay Lieutenant Aylissa Silverarrow |q 52505/2 |goto 39.56,39.83
step
label "Kill_Auberdine_Guardians"
kill 8 Auberdine Guardian##143902 |q 52505/1 |goto 39.14,42.41
|next "Tortollan_Seekers_WQ"
step
label quest-53498
accept Staying Power##53498 |goto Darkshore/0 50.31,19.93
|tip You will accept this quest automatically.
stickystart "Slay_Darnassian_Reinforcements"
step
click Lunar Ward##299019
|tip They look like pedestals with glowing blue fire and a moon over them on the ground around this area.
Destroy #3# Lunar Wards |q 53498/1 |goto 50.31,19.93
step
label "Slay_Darnassian_Reinforcements"
Kill enemies around this area
Slay #15# Darnassian Reinforcements |q 53498/2 |goto 50.31,19.93
|next "Tortollan_Seekers_WQ"
step
label quest-52307
accept Spiritual Aid##52307 |goto Darkshore/0 44.01,58.96
|tip You will accept this quest automatically.
stickystart "Calm_Frenzied_Wisps"
stickystart "Kill_Possessing_Spirits"
step
clicknpc Entranced Sentinel##143930+
|tip They look like charmed Night Elves around this area.
Rescue #5# Entranced Sentinels |q 52307/2 |goto 44.01,58.96
step
label "Calm_Frenzied_Wisps"
clicknpc Frenzied Wisp##140956+
|tip They look like floating blue balls around this area.
Calm #6# Frenzied Wisps |q 52307/3 |goto 44.01,58.96
step
label "Kill_Possessing_Spirits"
kill 10 Possessing Spirit##140715 |q 52307/1 |goto 44.01,58.96
|next "Tortollan_Seekers_WQ"
step
label quest-52504
accept So We Meat Again##52504 |goto Darkshore/0 39.31,51.93
|tip You will accept this quest automatically.
stickystart "Kill_Horde_Poachers"
step
Kill enemies around this area
|tip Beasts will count for this objective.
collect 10 Haunch of Meat##162013 |q 52504/1 |goto 39.31,51.93
step
label "Kill_Horde_Poachers"
kill 8 Horde Poacher##142673 |q 52504/2 |goto 39.31,51.93
|next "Tortollan_Seekers_WQ"
step
label quest-52244
accept Stop the Drilling##52244 |goto Darkshore/0 40.53,62.56
|tip You will accept this quest automatically.
stickystart "Slay_Bilgewater_Forces"
step
click Oil Pump##292903
Disable the Oil Pump |q 52244/2 |goto 40.44,64.16 |count 1
step
click Oil Pump##292903
Disable the Oil Pump |q 52244/2 |goto 39.15,64.09 |count 2
step
click Oil Pump##292903
Disable the Oil Pump |q 52244/2 |goto 40.75,59.20 |count 3
step
label "Slay_Bilgewater_Forces"
Kill Bilgewater enemies around this area
Slay #7# Bilgewater Forces |q 52244/1 |goto Darkshore/0 40.53,62.56
|next "Tortollan_Seekers_WQ"
step
label quest-52343
accept They Eat Like Orcs##52343 |goto Darkshore/0 39.22,51.52
|tip You will accept this quest automatically.
stickystart "Kill_Druids_of_the_Claw"
step
Kill enemies around this area
|tip Whitetail Stags, Moonstalkers, and Displaced Chimaeras count for this objective.
|tip Moonstalkers are stealthed around this area.
|tip Displaced Chimaeras fly around this area.
collect 15 Haunch of Meat##162013 |q 52343/1 |goto 39.22,51.52
step
label "Kill_Druids_of_the_Claw"
kill 8 Druid of the Claw##142677 |q 52343/2 |goto 39.22,51.52
|next "Tortollan_Seekers_WQ"
step
label quest-52896
accept Under Pressure##52896 |goto Darkshore/0 42.82,68.40
|tip You will accept this quest automatically.
step
clicknpc Goblin Hellion##143952
Use the Goblin Hellion |q 52896/1 |goto 42.82,68.40
stickystart "Slay_Kaldorei_Forces"
step
kill Awakened Ancient##140741+
|tip Use the abilities on your action bar.
Slay #5# Awakened Ancients |q 52896/2 |goto 42.04,66.75
step
label "Slay_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei Forces |q 52896/3 |goto 42.04,66.75
step
Click the "Exit" Button on Your Action Bar |outvehicle |q 52896
|next "Tortollan_Seekers_WQ"
step
label quest-53552
accept Wicked Kegger##53552 |goto Darkshore/0 39.90,25.71
|tip You will accept this quest automatically.
stickystart "Kill_Darkshore_Invaders"
step
clicknpc Keg of Azerite Powder##144023+
|tip They look like wooden barrels underwater around this area.
Claim #8# Azerite Powder Kegs |q 53552/1 |goto 39.90,25.71
step
label "Kill_Darkshore_Invaders"
Kill enemies around this area
|tip On the ships and underwater around this area.
Slay #10# Alliance Defenders |q 53552/2 |goto 39.90,25.71
|next "Tortollan_Seekers_WQ"
step
label quest-52897
accept We Will "Rock" You##52897 |goto Darkshore/0 42.09,66.86
|tip You will accept this quest automatically.
step
clicknpc Tree of Life##144413
Speak with the Tree of Life |q 52897/1 |goto 42.09,66.86
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52897/2 |goto 42.88,68.16
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\BFA World Quest Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking world quests in Kul Tiras and Zandalar.\n\n"..
"To accomplish this, you will need to earn \"Friendly\" reputation with the follwing factions:\n\n"..
"Order of Embers\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n",
condition_suggested=function() return level >= 120 and not completedq(51918) end,
condition_valid=function() return level >= 120 end,
condition_valid_msg="You must be level 120 to unlock world quests in Battle for Azeroth!",
condition_end=function() return completedq(51918) end,
startlevel=120.0,
},[[
step
accept A Mission of Unity##53063
|tip You will accept this quest automatically upon reaching level 120.
step
Earn "Friendly" Reputation with the Order of Embers |q 53063/3
|tip Use the "Drustvar" Leveling Guide to accomplish this.
step
Earn "Friendly" Reputation with the Proudmoore Admiralty |q 53063/1
|tip Use the "Tiragarde Sound" Leveling Guide to accomplish this.
step
Earn "Friendly" Reputation with Storm's Wake |q 53063/2
|tip Use the "Stormsong Valley" Leveling Guide to accomplish this.
step
accept Uniting Kul Tiras##51918 |goto Boralus/0 69.26,26.99
|tip You will accept this quest automatically upon reaching level 120.
step
talk Halford Wyrmbane##135612
turnin Uniting Kul Tiras##51918 |goto Boralus/0 69.26,26.99
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Drustvar World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Drustvar, Kul Tiras.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone=896,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-51576
accept Any Witch Way But Dead##51576 |goto Drustvar/0 24.09,50.74
|tip You will accept this quest automatically.
stickystart "Slay_Witch_Forces"
step
click Cage##182094+
|tip They look like cages made of branches on the ground around this area.
Free #10# Imprisoned Villagers |q 51576/1 |goto 24.09,50.74
step
label "Slay_Witch_Forces"
Kill enemies around this area
Slay #10# Witch Forces |q 51576/2 |goto 24.09,50.74
|next "Tortollan_Seekers_WQ"
step
label quest-51541
accept Arclight##51541 |goto Drustvar/0 29.21,69.01
|tip You will accept this quest automatically.
step
kill Arclight##137824 |q 51541/1 |goto 29.21,69.01
|next "Tortollan_Seekers_WQ"
step
label quest-51466
Follow the path up |goto Drustvar/0 27.31,70.60 < 7 |only if walking
Continue up the path |goto 27.81,68.88 < 7 |only if walking
Continue up the path |goto 27.37,67.72 < 7 |only if walking
Continue up the path |goto 28.39,66.54 < 7 |only if walking
Continue up the path |goto 27.79,66.57 < 7 |only if walking
Continue up the path |goto 27.80,64.22 < 10 |only if walking
Follow the road |goto 28.67,62.95 < 10 |only if walking
Continue following the road |goto 29.52,62.28 < 10 |only if walking
Continue following the road |goto 30.62,62.73 < 10 |only if walking
Continue following the road |goto 31.51,64.19 < 10 |only if walking
Cross the bridge |goto 31.72,65.40 < 7 |only if walking
Follow the road |goto 31.89,67.36 < 7 |only if walking
Continue following the road |goto 32.70,67.86 < 10 |only if walking
Continue following the road |goto 34.42,67.31 < 10 |only if walking
accept Arvon the Betrayed##51466 |goto Drustvar/0 35.47,68.43
|tip You will accept this quest automatically.
step
Follow the path |goto 35.47,68.43 < 5 |only if walking
Continue following the path |goto 35.45,68.93 < 7 |only if walking
kill Arvon the Betrayed##137529 |q 51466/1 |goto 34.88,69.21
|next "Tortollan_Seekers_WQ"
step
label quest-51542
accept Avalanche##51542 |goto Drustvar/0 43.23,86.77
|tip You will accept this quest automatically.
step
kill Avalanche##137825 |q 51542/1 |goto 43.75,88.02
|tip It flies around this hill and sometimes lands.
|next "Tortollan_Seekers_WQ"
step
label quest-52862
Follow the road |goto Drustvar/0 32.29,31.32 < 10 |only if walking
Continue following the road |goto 31.36,32.39 < 10 |only if walking
Follow the path |goto 24.99,30.21 < 10 |only if walking
Follow the path down |goto 25.01,28.49 < 10 |only if walking
Continue down the path |goto 24.44,27.85 < 7 |only if walking
Continue down the path |goto 23.64,28.17 < 7 |only if walking
Continue down the path |goto 22.49,27.35 < 10 |only if walking
Enter the cave |goto 21.58,29.97 < 10 |walk
accept Azerite Empowerment##52862 |goto Drustvar/0 22.17,30.37
|tip You will accept this quest automatically.
step
Enter the cave |goto 21.58,29.97 < 10 |walk
kill Rotbough##141970
|tip Inside the cave.
Slay Rotbough |q 52862/1 |goto 22.17,30.37
|next "Tortollan_Seekers_WQ"
step
label quest-51612
accept Azerite Empowerment##51612 |goto Drustvar/0 40.30,37.83
|tip You will accept this quest automatically.
step
kill Sister Hilga##138295 |q 51612/1 |goto 39.83,37.76
|next "Tortollan_Seekers_WQ"
step
label quest-51608
accept Azerite Madness##51608 |goto Drustvar/0 40.92,38.91
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51608/1 |goto 40.92,38.91
|next "Tortollan_Seekers_WQ"
step
label quest-52872
accept Azerite Mining##52872 |goto Drustvar/0 58.47,52.40
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 52872/1 |goto 58.47,52.40
|next "Tortollan_Seekers_WQ"
step
label quest-51615
accept Azerite Mining##51615 |goto Drustvar/0 41.26,39.36
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51615/1 |goto 40.49,38.21
|next "Tortollan_Seekers_WQ"
step
label quest-51609
Follow the road |goto Drustvar/0 40.96,46.60 < 30 |only if walking
accept Azerite Wounds##51609 |goto Drustvar/0 41.36,40.34
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 51609/1 |goto 40.58,37.85
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "Tortollan_Seekers_WQ"
step
label quest-51491
Follow the road |goto Drustvar/0 56.33,34.88 < 10 |only if walking
Continue following the road |goto 56.86,34.36 < 7 |only if walking
Cross the bridge |goto 56.98,33.06 < 7 |only if walking
Follow the path |goto 57.20,32.42 < 7 |only if walking
Continue up the path |goto 56.53,31.66 < 10 |only if walking
Continue up the path |goto 56.56,30.31 < 7 |only if walking
accept Balethorn##51491 |goto Drustvar/0 57.09,29.46
|tip You will accept this quest automatically.
step
kill Balethorn##130143
|tip It walks around the area.
Slay Balethorn |q 51491/1 |goto 56.61,29.16
|next "Tortollan_Seekers_WQ"
step
label quest-51506
Enter the cave |goto Drustvar/0  58.88,18.39 < 10 |only if walking
accept Barbthorn Queen##51506 |goto Drustvar/0 58.98,17.50
|tip You will accept this quest automatically.
step
kill Barbthorn Queen##127333 |q 51506/1 |goto 59.12,16.69
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51681
accept Basic Witch##51681 |goto Drustvar/0 70.31,62.65
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Captured Villager##126629+
|tip They look like humans bound to posts around this area.
Reclaim Fletcher's Hollow |q 51681/1 |goto 70.31,62.65
|next "Tortollan_Seekers_WQ"
step
label quest-51637
accept Beachhead##51637 |goto Drustvar/0 21.61,26.54
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##138478
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51637/1 |goto 21.63,26.68
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #12# Juvenile Turtles Reach the Ocean |q 51637/2 |goto 21.61,26.54
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "Tortollan_Seekers_WQ"
step
label quest-50000
accept Beastly Dealings##50000 |goto Drustvar/0 25.84,69.60
|tip You will accept this quest automatically.
step
click Witch Banner##290443+
click Antlered Skull##290449+
click Hanging WItch Effigy##290445
click Summoning Circle##290446+
kill Briarwood Invader##131373+
Destroy the Signs of Witchcraft |q 50000/1 |goto 25.84,69.60
|next "Tortollan_Seekers_WQ"
step
label quest-51917
Enter the cave |goto 51.17,29.66 < 10 |walk
accept Beshol##51917 |goto Drustvar/0 51.17,29.66
|tip You will accept this quest automatically.
step
Enter the cave |goto 51.17,29.66 < 7 |walk
click Obviously Safe Chest##278432
|tip Inside the cave.
kill Beshol##129805 |q 51917/1 |goto 50.54,30.06
|next "Tortollan_Seekers_WQ"
step
label quest-51741
accept Bombarbment##51741 |goto Drustvar/0 61.06,17.71
|tip You will accept this quest automatically.
step
Kill Barbthorn enemies around this area
clicknpc Barbthorn Hive##127038+
|tip They look like yellow bee hives hanging in trees around this area.
Clear Out Barbthorn Ridge |q 51741/1 |goto 61.06,17.71
|next "Tortollan_Seekers_WQ"
step
label quest-51512
accept Bilefang Mother##51512 |goto Drustvar/0 35.04,33.24
|tip You will accept this quest automatically.
step
kill Bilefang Mother##132319 |q 51512/1 |goto 35.04,33.24
|next "Tortollan_Seekers_WQ"
step
label quest-51699
accept Blighted Monstrosity##51699 |goto Drustvar/0 36.01,11.10
|tip You will accept this quest automatically.
step
kill Blighted Monstrosity##138667 |q 51699/1 |goto 36.01,11.10
|next "Tortollan_Seekers_WQ"
step
label quest-53272
Follow the path |goto Drustvar/0 27.24,70.84 < 7 |only if walking
Continue following the path |goto 27.81,69.03 < 10 |only if walking
accept Blooming Siren's Sting##53272 |goto Drustvar/0 27.35,66.94
|tip You will accept this quest automatically.
step
clicknpc Blooming Siren's Sting##143732
Gather Blooming Siren's Sting |q 53272/1 |goto 27.35,66.94
|next "Tortollan_Seekers_WQ"
step
label quest-51709
Cross the bridge |goto Drustvar/0 62.73,23.26 < 7 |only if walking
Follow the road |goto 62.54,22.40 < 7 |only if walking
Continue following the road |goto 62.27,20.89 < 7 |only if walking
Continue following the road |goto 61.95,19.61 < 7 |only if walking
accept Bombarbment##51709 |goto Drustvar/0 61.06,17.71
|tip You will accept this quest automatically.
step
Follow the path |goto Drustvar/0 61.86,19.94 < 10 |only if walking
Kill Barbthorn enemies around this area
clicknpc Barbthorn Hive##127038+
|tip They look like yellow bee hives hanging in trees around this area.
Clear Out Barbthorn Ridge |q 51709/1 |goto 61.06,17.71
|next "Tortollan_Seekers_WQ"
step
label quest-51468
Follow the road |goto Drustvar/0 68.98,57.52 < 7 |only if walking
Continue following the road |goto 69.15,54.86 < 7 |only if walking
Follow the path up |goto 69.13,53.67 < 10 |only if walking
Continue up the path |goto 67.58,52.05 < 7 |only if walking
accept Bonesquall##51468 |goto Drustvar/0 66.77,50.81
|tip You will accept this quest automatically.
step
kill Bonesquall##126621 |goto 66.77,50.81
|next "Tortollan_Seekers_WQ"
step
label quest-53549
Follow the path up |goto Drustvar/0 27.24,71.07 < 7 |only if walking
Cross the water |goto 28.23,70.01 < 10 |only if walking
Follow the path up |goto 30.43,71.43 < 10 |only if walking
Continue up the path |goto 31.02,69.70 < 7 |only if walking
Continue up the path |goto 31.73,69.27 < 7 |only if walking
Continue up the path |goto 32.61,70.63 < 10 |only if walking
Follow the path |goto 34.11,70.72 < 7 |only if walking
Follow the path |goto 35.76,69.47 < 10 |only if walking
accept Bounty Bag##53549 |goto Drustvar/0 34.78,69.21
|tip You will accept this quest automatically.
step
kill Arvon the Betrayed##137529 |q 53549/1 |goto 25.84,69.60
|next "Tortollan_Seekers_WQ"
step
label quest-51737
accept Bruin Potions##51737 |goto Drustvar/0 19.66,55.97
|tip You will accept this quest automatically.
stickystart "Burn_Bloody_Banners"
stickystart "Kill_Enthralled_Wildlife"
step
kill Hexwood Sentry##138088+
collect 4 Caustic Sap##160442 |q 51737/3 |goto 18.89,56.86
step
label "Burn_Bloody_Banners"
kill Hexed Brambleback##133501+
collect 6 Bear Heart##157545 |q 51737/1 |goto 18.89,56.86
step
label "Kill_Enthralled_Wildlife"
click Hearthbloom##281252+
|tip They look like small flowers on the ground around this area.
collect 10 Hearthbloom Petals##157546 |q 51737/2 |goto 18.89,56.86
|next "Tortollan_Seekers_WQ"
step
label quest-51989
accept Braedan Whitewall##51989 |goto Drustvar/0 27.64,59.59
|tip You will accept this quest automatically.
step
kill Braedan Whitewall##139321 |q 51989/1 |goto 27.64,59.59
|next "Tortollan_Seekers_WQ"
step
label quest-50369
Follow the path |goto Drustvar/0 25.94,70.83 < 7 |only if walking
Continue up the path |goto 24.78,67.07 < 10 |only if walking
Continue up the path |goto 24.54,61.86 < 10 |only if walking
Jump down here |goto 24.02,59.69 < 7 |only if walking
Jump down here |goto 23.17,57.08 < 7 |only if walking
accept Bruin Potions##50369 |goto Drustvar/0 18.89,56.86
|tip You will accept this quest automatically.
stickystart "Burn_Bloody_Banners"
stickystart "Kill_Enthralled_Wildlife"
step
kill Hexwood Sentry##138088+
collect 4 Caustic Sap##160442 |q 50369/3 |goto 18.89,56.86
step
label "Burn_Bloody_Banners"
kill Hexed Brambleback##133501+
collect 6 Bear Heart##157545 |q 50369/1 |goto 18.89,56.86
step
label "Kill_Enthralled_Wildlife"
click Hearthbloom##281252+
|tip They look like small flowers on the ground around this area.
collect 10 Hearthbloom Petals##157546 |q 50369/2 |goto 18.89,56.86
|next "Tortollan_Seekers_WQ"
step
label quest-53312
Cross the bridge |goto Drustvar/0 19.91,44.69 < 7 |only if walking
Follow the road up |goto 20.74,46.28 < 7 |only if walking
Continue following the road |goto 20.28,47.10 < 7 |only if walking
Continue following the road |goto 20.60,47.45 < 5 |only if walking
Continue following the road |goto 21.77,45.81 < 7 |only if walking
Follow the path |goto 22.38,46.23 < 10 |only if walking
Continue up the path |goto 22.19,48.88 < 7 |only if walking
Continue up the path |goto 21.12,49.74 < 7 |only if walking
accept Burnished Platinum##53312 |goto Drustvar/0 20.82,50.93
|tip You will accept this quest automatically.
step
click Burnished Platinum Deposit##297472
collect Burnished Platinum##163624 |q 53312/1 |goto 20.82,50.93
|next "Tortollan_Seekers_WQ"
step
label quest-51970
accept The Caterer##51970 |goto Drustvar/0 25.70,16.54
|tip You will accept this quest automatically.
step
click Ruined Wedding Cake##291272
kill The Caterer##139358 |q 51970/1 |goto 25.13,16.23
|next "Tortollan_Seekers_WQ"
step
label quest-51920
Follow the road |goto Drustvar/0 54.54,35.49 < 7 |only if walking
Cross the bridge |goto 54.55,36.55 < 7 |only if walking
Follow the path |goto 54.59,37.61 < 7 |only if walking
Continue following the path |goto 53.88,39.02 < 10 |only if walking
Continue following the path |goto 54.15,41.87 < 7 |only if walking
Continue following the path |goto 53.88,43.79 < 10 |only if walking
Continue following the path |goto 54.39,46.43 < 10 |only if walking
Enter the cave |goto 52.54,46.71 7 |walk
accept Cottontail Matron##51920 |goto Drustvar/0 52.15,46.92
|tip You will accept this quest automatically.
step
kill Cottontail Matron##129904
|tip Inside the cave.
Slay the Cottontail Matron |q 51920/1 |goto 52.15,46.92
|next "Tortollan_Seekers_WQ"
step
label quest-52009
accept Crab People##52009 |goto Drustvar/0 21.40,66.45
|tip You will accept this quest automatically.
step
talk Captain Hermes##139489
Tell him _"Begin pet battle."_
Defeat Captain Hermes |q 52009/1 |goto 21.40,66.45
|next "Tortollan_Seekers_WQ"
step
label quest-51706
Follow the road |goto Drustvar/0 26.58,64.16 < 15 |only if walking
accept Deadwood##51706 |goto Drustvar/0 22.97,62.11
|tip You will accept this quest automatically.
step
Follow the path down |goto 23.82,59.63 < 15 |only if walking
use the Greater Control Charm##160584
|tip Use it next to the Crimson Demolisher.
Control the Crimson Demolisher |q 51706/1 |goto 27.19,57.91
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy the Witch Forces |q 51706/2 |goto 25.31,56.41
|next "Tortollan_Seekers_WQ"
step
label quest-51747
accept Early Warning##51747 |goto Drustvar/0 20.20,10.06
|tip You will accept this quest automatically.
stickystart "Burn_Alliance_Supplies"
stickystart "Kill_Alliance_Forces"
step
Enter the cave |goto 19.35,8.31 < 10 |walk
kill Amaeas Starbough##138791 |q 51747/3 |goto 19.04,8.36
|tip Inside the cave.
step
label "Burn_Alliance_Supplies"
click Alliance Supplies##291040+
|tip They look like stacks of wooden crates and barrels on the ground around this area.
Burn #10# Alliance Supplies |q 51747/1 |goto 19.80,8.94
step
label "Kill_Alliance_Forces"
Kill enemies around this area
Kill #9# Alliance Forces |q 51747/2 |goto 19.80,8.94
|next "Tortollan_Seekers_WQ"
step
label quest-51919
Follow the path up |goto Drustvar/0 61.46,39.22 < 10 |only if walking
Continue up the path |goto 62.63,40.81 < 10 |only if walking
accept Emily Mayville##51919 |goto Drustvar/0 63.41,40.10
|tip You will accept this quest automatically.
step
talk Emily Mayville##129995
Ask her _"Why are you crying?"_
kill Emily Mayville##129995 |q 51919/1 |goto 63.41,40.10
|next "Tortollan_Seekers_WQ"
step
label quest-51761
accept Familiar Foes##51761 |goto Drustvar/0 58.09,28.01
|tip You will accept this quest automatically.
stickystart "Burn_Bloody_Banners"
stickystart "Kill_Enthralled_Wildlife"
step
click Lesser Effigy##290612+
|tip They look like totems with antlers atop them on the ground around this area.
Destroy #4# Lesser Effigies |q 51761/1 |goto 58.09,28.01
step
label "Burn_Bloody_Banners"
click Bloody Banner##302779+
|tip They look like banners with writing in blood on the ground around this area.
Burn #5# Bloody Banners |q 51761/3 |goto 58.09,28.01
step
label "Kill_Enthralled_Wildlife"
Kill enemies around this area
Slay #10# Enthralled Wildlife |q 51761/2 |goto 58.09,28.01
|next "Tortollan_Seekers_WQ"
step
label quest-51588
accept Familiar Foes##51588 |goto Drustvar/0 58.09,28.01
|tip You will accept this quest automatically.
stickystart "Burn_Bloody_Banners"
stickystart "Kill_Enthralled_Wildlife"
step
click Lesser Effigy##290612+
|tip They look like totems with antlers atop them on the ground around this area.
Destroy #4# Lesser Effigies |q 51588/1 |goto 58.09,28.01
step
label "Burn_Bloody_Banners"
click Bloody Banner##302779+
|tip They look like banners with writing in blood on the ground around this area.
Burn #5# Bloody Banners |q 51588/3 |goto 58.09,28.01
step
label "Kill_Enthralled_Wildlife"
Kill enemies around this area
Slay #10# Enthralled Wildlife |q 51588/2 |goto 58.09,28.01
|next "Tortollan_Seekers_WQ"
step
label quest-51616
Follow the road |goto Drustvar/0 69.88,41.52 < 7 |only if walking
Continue following the road |goto 68.97,43.25 < 7 |only if walking
Continue following the road |goto 67.93,43.73 < 10 |only if walking
Continue following the road |goto 66.90,44.76 < 7 |only if walking
Continue following the road |goto 65.13,44.63 < 10 |only if walking
Follow the path up |goto 64.25,46.56 < 10 |only if walking
accept A Final Rest##51616 |goto Drustvar/0 61.25,47.22
|tip You will accept this quest automatically.
stickystart "Kill_Enraged_Spirits"
stickystart "Kill_Soulgorged_Gravestalkers"
step
clicknpc Lost Soul##138320+
|tip They look like ghostly people around this area.
Release #5# Lost Souls |q 51616/3 |goto 61.25,47.22
step
label "Kill_Enraged_Spirits"
kill 5 Enraged Spirit##126264 |q 51616/1 |goto 61.25,47.22
step
label "Kill_Soulgorged_Gravestalkers"
kill 3 Soulgorged Gravestalker##126263 |q 51616/2 |goto 61.25,47.22
|next "Tortollan_Seekers_WQ"
step
label quest-51658
Follow the path |goto Drustvar/0 32.36,30.15 < 7 |only if walking
accept Fly the Coop!##51658 |goto Drustvar/0 31.86,24.43
|tip You will accept this quest automatically.
stickystart "Kill_Hexthralled_Falconers_1"
stickystart "Kill_Cursed_Falcons"
step
kill Hexthralled Falconer##133736+
collect 5 Falconer's Key##157840 |goto 31.86,24.43 |q 51658
step
click Falcon Cage##290746+
|tip They look like small bird cages on the ground around this area.
Open #5# Falcon Cages |q 51658/1 |goto 31.86,24.43
step
label "Kill_Hexthralled_Falconers_1"
kill Hexthralled Falconer##133736 |q 51658/2 |goto 31.86,24.43
step
label "Kill_Cursed_Falcons"
kill 5 Cursed Falcon##131518 |q 51658/3 |goto 31.86,24.43
|next "Tortollan_Seekers_WQ"
step
label quest-51507
Follow the road |goto Drustvar/0 54.51,35.57 < 7 |only if walking
Cross the bridge |goto 54.55,36.57 < 7 |only if walking
Follow the road |goto 54.74,38.51 < 7 |only if walking
Continue following the road |goto 55.59,39.37 < 7 |only if walking
Follow the path |goto 56.25,41.84 < 7 |only if walking
accept Gorehorn##51507 |goto Drustvar/0 57.12,44.30
|tip You will accept this quest automatically.
step
kill Gorehorn##129835 |q 51507/1 |goto 57.12,44.30
|next "Tortollan_Seekers_WQ"
step
label quest-51874
Follow the path |goto Drustvar/0 31.22,30.48 < 7 |only if walking
Jump down here |goto 30.75,29.99 < 5 |only if walking
Jump down here |goto 30.30,30.35 < 5 |only if walking
Jump down here |goto 29.93,30.01 < 7 |only if walking
Follow the path |goto 28.68,27.63 < 10 |only if walking
accept Gorged Boar##51874 |goto 28.01,25.98
|tip You will accept this quest automatically.
step
kill Gorged Boar##138675 |q 51874/1 |goto 28.01,25.98
|next "Tortollan_Seekers_WQ"
step
label quest-51909
accept Grozgore##51909 |goto Drustvar/0 50.33,20.69
|tip You will accept this quest automatically.
step
kill Grozgore##127129 |q 51909/1 |goto 50.33,20.69
|next "Tortollan_Seekers_WQ"
step
label quest-51764
accept Hunters Hunted##51764 |goto Drustvar/0 55.48,42.16
|tip You will accept this quest automatically.
step
click Disturbing Charm##277193+
click Bewitching Fetish##271176+
Kill Hexcrazed enemies around this area
Purge the Woods |q 51764/1 |goto 54.48,45.01
|next "Tortollan_Seekers_WQ"
step
label quest-51740
accept Hunting for Truffle Hunters##51740 |goto Drustvar/0 25.67,41.51
|tip You will accept this quest automatically.
stickystart "Slay_Funggarians"
step
clicknpc Lost Piglet##138610+
|tip They look like tiny pigs on the ground around this area.
Save #5# Lost Piglets |q 51740/2 |goto 25.67,41.51
step
label "Slay_Funggarians"
Kill Bloodbough enemies around this area
Slay #8# Funggarians |q 51740/1 |goto 25.67,41.51
|next "Tortollan_Seekers_WQ"
step
label quest-51884
accept Haywire Golem##51884 |goto Drustvar/0 23.97,30.48
|tip You will accept this quest automatically.
step
kill Haywire Golem##138618 |q 51884/1 |goto 23.97,30.48
|tip It walks around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-51467
accept Hyo'gi##51467 |goto Drustvar/0 22.93,49.48
|tip You will accept this quest automatically.
step
kill Hyo'gi##134754 |q 51467/1 |goto 22.93,49.48
|next "Tortollan_Seekers_WQ"
step
label quest-51604
Follow the road |goto Drustvar/0 54.52,35.53 < 7 |only if walking
Cross the bridge |goto 54.56,36.55 < 5 |only if walking
Follow the road |goto 54.61,37.43 < 7 |only if walking
Follow the path |goto 54.68,38.97 < 7 |only if walking
accept Hunters Hunted##51604 |goto Drustvar/0 55.48,42.16
|tip You will accept this quest automatically.
step
click Disturbing Charm##277193+
click Bewitching Fetish##271176+
Kill Hexcrazed enemies around this area
Purge the Woods |q 51604/1 |goto 54.48,45.01
|next "Tortollan_Seekers_WQ"
step
label quest-51697
Follow the path |goto Drustvar/0 19.90,44.60 < 7 |only if walking
Cross the bridge |goto 20.72,46.22 < 7 |only if walking
Cross the bridge |goto 20.28,47.11 < 7 |only if walking
Follow the path |goto 20.59,47.45 < 7 |only if walking
Continue up the path |goto 21.69,45.85 < 7 |only if walking
Continue up the path |goto 23.30,45.65 < 10 |only if walking
accept Hunting for Truffle Hunters##51697 |goto Drustvar/0 25.67,41.51
|tip You will accept this quest automatically.
stickystart "Slay_Funggarians"
step
clicknpc Lost Piglet##138610+
|tip They look like tiny pigs on the ground around this area.
Save #5# Lost Piglets |q 51697/2 |goto 25.67,41.51
step
label "Slay_Funggarians"
Kill Bloodbough enemies around this area
Slay #8# Funggarians |q 51697/1 |goto 25.67,41.51
|next "Tortollan_Seekers_WQ"
step
label quest-51742
accept Intercepting the Irontide##51742 |goto Drustvar/0 28.38,14.07
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Pirate Grog##284451+
|tip They look like large bottles on the ground around this area.
click Plundered Supplies##284473+
|tip They look like small white chests on the ground around this area.
Drive Back the Irontide |q 51742/1 |goto 28.38,14.07
|next "Tortollan_Seekers_WQ"
step
label quest-51693
Follow the path down |goto Drustvar/0 25.39,16.97 < 7 |only if walking
Follow the path |goto 26.25,18.33 < 10 |only if walking
Follow the path down |goto 27.31,15.68 < 10 |only if walking
accept Intercepting the Irontide##51693 |goto Drustvar/0 28.38,14.07
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Pirate Grog##284451+
|tip They look like large bottles on the ground around this area.
click Plundered Supplies##284473+
|tip They look like small white chests on the ground around this area.
Drive Back the Irontide |q 51693/1 |goto 28.38,14.07
|next "Tortollan_Seekers_WQ"
step
label quest-51972
Follow the path up |goto Drustvar/0 67.22,55.64 < 10 |only if walking
Continue up the path |goto 65.71,56.06 < 10 |only if walking
Continue up the path |goto 63.97,57.43 < 10 |only if walking
Continue up the path |goto 63.02,59.42 < 10 |only if walking
Follow the path |goto 61.16,62.14 < 10 |only if walking
Continue following the path |goto 59.97,64.34 < 10 |only if walking
Continue following the path |goto 60.47,67.50 < 10 |only if walking
Continue following the path |goto 61.76,69.22 < 7 |only if walking
accept Lost Goat##51972 |goto Drustvar/0 63.07,69.67
|tip You will accept this quest automatically.
step
talk Lost Goat##127979
Tell it _"Dumb goat. Let's go before you get eaten by monsters."_
kill Gluttonous Yeti##127844 |q 51972/1 |goto 63.07,69.67
|next "Tortollan_Seekers_WQ"
step
label quest-51743
accept More Valuable Than Gold##51743 |goto Drustvar/0 35.06,30.43
|tip You will accept this quest automatically.
stickystart "Slay_Bilefang_Hunters"
step
click Silver Nugget##290975+
|tip They look like small pieces of silver on the ground around this area.
collect 6 Silver Nugget##160577 |q 51743/1 |goto 35.06,30.43
step
label "Slay_Bilefang_Hunters"
kill 8 Bilefang Hunter##132317 |q 51743/2 |goto 35.06,30.43
|next "Tortollan_Seekers_WQ"
step
label quest-51433
accept Matron Morana##51433 |goto Drustvar/0 34.84,19.87
|tip You will accept this quest automatically.
step
kill Matron Morana##137704 |q 51433/1 |goto 34.84,19.87
|next "Tortollan_Seekers_WQ"
step
label quest-51707
Follow the road |goto Drustvar/0 32.29,31.26 < 10 |only if walking
Continue following the road |goto 33.02,30.69 < 7 |only if walking
Continue following the road |goto 33.98,30.82 < 7 |only if walking
Continue following the road |goto 34.37,29.89 < 7 |only if walking
accept More Valuable Than Gold##51707 |goto Drustvar/0 35.06,30.43
|tip You will accept this quest automatically.
stickystart "Slay_Bilefang_Hunters"
step
click Silver Nugget##290975+
|tip They look like small pieces of silver on the ground around this area.
collect 6 Silver Nugget##160577 |q 51707/1 |goto 35.06,30.43
step
label "Slay_Bilefang_Hunters"
kill 8 Bilefang Hunter##132317 |q 51707/2 |goto 35.06,30.43
|next "Tortollan_Seekers_WQ"
step
label quest-51768
accept Natural Resources##51768 |goto Drustvar/0 69.06,40.57
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Venom_Glands"
stickystart "Collect_Pristine_Quilrat_Quills"
step
clicknpc Questionable Tuber##138356+
|tip They look like small bushes on the ground around this area.
|tip After clicking one, run away from it to collect the tuber.
Collect #5# Questionable Tubers |q 51768/1 |goto 67.13,41.59
step
label "Collect_Intact_Venom_Glands"
kill Shallows Saurolisk##125452+
collect 5 Intact Venom Gland##151935 |q 51768/2 |goto 69.06,40.57
step
label "Collect_Pristine_Quilrat_Quills"
kill Invasive Quillrat##125401+
collect 3 Pristine Quillrat Quill##160516 |q 51768/3 |goto 67.13,41.59
|next "Tortollan_Seekers_WQ"
step
label quest-51620
accept Natural Resources##51620 |goto Drustvar/0 69.06,40.57
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Venom_Glands"
stickystart "Collect_Pristine_Quilrat_Quills"
step
clicknpc Questionable Tuber##138356+
|tip They look like small bushes on the ground around this area.
|tip After clicking one, run away from it to collect the tuber.
Collect #5# Questionable Tubers |q 51620/1 |goto 67.13,41.59
step
label "Collect_Intact_Venom_Glands"
kill Shallows Saurolisk##125452+
collect 5 Intact Venom Gland##151935 |q 51620/2 |goto 69.06,40.57
step
label "Collect_Pristine_Quilrat_Quills"
kill Invasive Quillrat##125401+
collect 3 Pristine Quillrat Quill##160516 |q 51620/3 |goto 67.13,41.59
|next "Tortollan_Seekers_WQ"
step
label quest-51908
accept Nevermore##51908 |goto Drustvar/0 59.80,45.17
|tip You will accept this quest automatically.
step
kill Nevermore##130138 |q 51908/1 |goto 59.95,45.48
|next "Tortollan_Seekers_WQ"
step
label quest-52218
accept Night Horrors##52218 |goto Drustvar/0 63.60,59.70
|tip You will accept this quest automatically.
step
talk Dilbert McClint##140461
Tell him _"Begin pet battle."_
Defeat Dilbert McClint |q 52218/1 |goto 63.60,59.70
|next "Tortollan_Seekers_WQ"
step
label quest-51454
Follow the path |goto Drustvar/0 38.52,52.53 < 7 |only if walking
Continue following the path |goto 38.38,53.74 < 7 |only if walking
Continue up the path |goto 37.60,55.04 < 7 |only if walking
accept Once More Into Battle##51454 |goto Drustvar/0 38.55,56.80
|tip You will accept this quest automatically.
step
clicknpc Weary Spirit##137788+
|tip They look like kneeling ghosts on the ground around this area.
click Ancient Cairne##289662
|tip They look like big rocks on the ground around this area.
Kill enemies around this area
Join In the Endless Battle |q 51454/1 |goto 38.21,59.18
|next "Tortollan_Seekers_WQ"
step
label quest-51505
accept Quillrat Matriarch##51505 |goto Drustvar/0 66.58,42.73
|tip You will accept this quest automatically.
step
kill Quillrat Matriarch##125453 |q 51505/1 |goto 66.58,42.73
|tip Inside the building.
|next "Tortollan_Seekers_WQ"
step
label quest-51585
accept Quit Your Witchin'##51585 |goto Drustvar/0 55.56,35.07
|tip You will accept this quest automatically.
step
Follow the path |goto 56.32,35.11 < 7 |only if walking
Follow the path |goto 57.39,35.86 < 7 |only if walking
Kill enemies around this area
click Tainted Pig Feed##277380+
|tip They look like green glowing sacks on the ground around this area.
Cleanse Fallhaven |q 51585/1 |goto 80.17,47.85
|next "Tortollan_Seekers_WQ"
step
label quest-51897
Enter the cave |goto Drustvar/0 59.78,70.04 < 15 |walk
accept Rimestone##51897 |goto Drustvar/0 59.63,70.70
|tip You will accept this quest automatically.
step
kill Rimestone##128707 |q 51897/1 |goto 59.62,71.82
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51739
accept Rise of the Yetis##51739 |goto Drustvar/0 44.68,35.98
|tip You will accept this quest automatically.
stickystart "Kill_Chillfur_Yetis_51739"
stickystart "Kill_Awakened_Dead_51739"
step
click Lost Supplies##302770+
|tip They look like groups of 3 tan bags on the ground around this area.
collect 5 Lost Supplies##164309 |q 51739/3 |goto 44.94,30.47
step
label "Kill_Awakened_Dead_51739"
kill 4 Awakened Dead##136490 |q 51739/2 |goto 44.68,35.98
step
label "Kill_Chillfur_Yetis_51739"
kill 6 Chillfur Yeti##127682 |q 51739/1 |goto 44.41,32.47
|next "Tortollan_Seekers_WQ"
step
label quest-51710
accept Rise of the Yetis##51710 |goto Drustvar/0 44.68,35.98
|tip You will accept this quest automatically.
stickystart "Kill_Chillfur_Yetis_51710"
stickystart "Kill_Awakened_Dead_51710"
step
click Lost Supplies##302770+
|tip They look like groups of 3 tan bags on the ground around this area.
collect 5 Lost Supplies##164309 |q 51710/3 |goto 44.94,30.47
step
label "Kill_Awakened_Dead_51710"
kill 4 Awakened Dead##136490 |q 51710/2 |goto 44.68,35.98
step
label "Kill_Chillfur_Yetis_51710"
kill 6 Chillfur Yeti##127682 |q 51710/1 |goto 44.41,32.47
|next "Tortollan_Seekers_WQ"
step
label quest-51746
accept The Shadows of Corlain##51746 |goto Drustvar/0 32.53,20.58
|tip You will accept this quest automatically.
stickystart "Slay_Witches"
step
Follow the path |goto 32.53,20.58 < 7 |only if walking
click Dark Fissure##290822+
|tip They look like dark rifts and summoning circles on the ground around this area.
|tip They will appear on your minimap as a yellow dot.
kill 8 Blighted Echo##138543 |q 51746/1 |goto 31.85,17.07
step
label "Slay_Witches"
Kill enemies around this area
|tip Coven Hexcallers and Heartsbane Disciples count towards this objective.
Slay #8# Witches |q 51746/2 |goto 31.85,17.07
|next "Tortollan_Seekers_WQ"
step
label quest-51745
accept A Smelly Solution##51745 |goto Drustvar/0 29.26,27.31
|tip You will accept this quest automatically.
step
use the Pungent Onion##160557
|tip Use it on Cursed Gyrfalcons around this area.
|tip They are flying in the air around this area.
Hit #8# Cursed Gyrfalcons |q 51745/1 |goto 29.26,27.31
|next "Tortollan_Seekers_WQ"
step
label quest-49397
Follow the path |goto Drustvar/0 63.01,24.05 < 7 |only if walking
Continue following the path |goto 63.83,25.71 < 7 |only if walking
accept Sausage Party##49397 |goto Drustvar/0 64.20,29.34
|tip You will accept this quest automatically.
stickystart "Rescue_Transformed_Workers"
stickystart "Kill_Hexed_Howler"
step
click Witch Effigy##290810+
|tip They look like burning banners with antlers atop them on the ground around this area.
Destroy #5# Effigies |q 49397/3 |goto 64.20,29.34
step
label "Rescue_Transformed_Workers"
clicknpc Transformed Worker##137859
|tip They look like white pigs on the ground around this area.
Burn #5# Bloody Banners |q 49397/1 |goto 64.20,29.34
step
label "Kill_Hexed_Howler"
kill 8 Hexed Howler##124814 |q 49397/2 |goto 64.20,29.34
|next "Tortollan_Seekers_WQ"
step
label quest-51690
Follow the path |goto Drustvar/0 32.34,28.84 < 10 |only if walking
Continue following the path |goto 32.15,27.80 < 10 |only if walking
Continue following the path |goto 32.38,25.73 < 10 |only if walking
Continue following the path |goto 33.44,21.51 < 7 |only if walking
accept The Shadows of Corlain##51690 |goto Drustvar/0 32.53,20.58
|tip You will accept this quest automatically.
stickystart "Slay_Witches"
step
Follow the path |goto 32.53,20.58 < 7 |only if walking
click Dark Fissure##290822+
|tip They look like dark rifts and summoning circles on the ground around this area.
|tip They will appear on your minimap as a yellow dot.
kill 8 Blighted Echo##138543 |q 51690/1 |goto 31.85,17.07
step
label "Slay_Witches"
Kill enemies around this area
|tip Coven Hexcallers and Heartsbane Disciples count towards this objective.
Slay #8# Witches |q 51690/2 |goto 31.85,17.07
|next "Tortollan_Seekers_WQ"
step
label quest-51625
Follow the path |goto Drustvar/0 25.41,17.08 < 7 |only if walking
Continue following the path |goto 25.38,20.03 < 7 |only if walking
Jump down here |goto 24.91,19.91 < 7 |only if walking
Follow the path down |goto 23.45,20.07 < 10 |only if walking
Cross the water |goto 22.24,21.91 < 10 |only if walking
accept Shell Game##51625 |goto Drustvar/0 21.80,22.32
|tip You will accept this quest automatically.
step
talk Collector Kojo##138476
Tell him _"I am ready."_
Speak to Collector Kojo |q 51625/1 |goto 21.80,22.32
step
click Shell
|tip Click the shells to reveal matching objects.
|tip Shell objects will match in pairs.
Complete Collector Kojo's Shell Game |q 51625/2 |goto 21.80,22.32
|next "Tortollan_Seekers_WQ"
step
label quest-51683
accept Slash and Burn Tactics##51683 |goto Drustvar/0 71.22,58.85
|tip You will accept this quest automatically.
stickystart "Kill_Curseformed_Familiars"
stickystart "Burn_Witch_Banners"
step
clicknpc Frightened Woodsman##138525+
|tip They look like humangs cowering on the ground around this area.
Rally #6# Frightened Woodsmen |q 51683/1 |goto 71.22,58.85
step
label "Kill_Curseformed_Familiars"
kill 8 Curseformed Familiar##126151 |q 51683/2 |goto 71.22,58.85
step
label "Burn_Witch_Banners"
click Witch Banner##290443
Burn #8# Witch Banners |q 51683/3 |goto 71.22,58.85
|next "Tortollan_Seekers_WQ"
step
label quest-51687
accept A Smelly Solution##51687 |goto Drustvar/0 29.26,27.31
|tip You will accept this quest automatically.
step
use the Pungent Onion##160557
|tip Use it on Cursed Gyrfalcons around this area.
|tip They are flying in the air around this area.
Hit #8# Cursed Gyrfalcons |q 51687/1 |goto 29.26,27.31
|next "Tortollan_Seekers_WQ"
step
label quest-51431
Follow the path up |goto Drustvar/0 20.68,46.34 < 10 |only if walking
Follow the road |goto Drustvar/0 23.11,47.03 < 15 |only if walking
accept Soul Goliath##51431 |goto Drustvar/0 24.36,54.14
|tip You will accept this quest automatically when you are near him.
|tip He walks along the roads around this area.
|tip Wait here for him to walk here, or you can search for him.
step
kill Soul Goliath##137665 |q 51431/1 |goto 24.36,54.14
|next "Tortollan_Seekers_WQ"
step
label quest-51434
accept Stone Golem##51434 |goto Drustvar/0 49.81,43.70
|tip You will accept this quest automatically.
step
kill Stone Golem##137708 |q 51434/1 |goto 49.81,43.70
|next "Tortollan_Seekers_WQ"
step
label quest-52381
collect 20 Lane Snapper##152546 |q 52381 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Lane Snapper##52381 |goto Drustvar/0 37.91,48.94
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Supplies Needed: Lane Snapper##52381 |goto 37.91,48.94
|next "Tortollan_Seekers_WQ"
step
label quest-51765
accept Tangled Webs##51765 |goto Drustvar/0 65.11,53.55
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Only enemies that look like spiders will count for this quest goal.
|tip You can walk over the tiny spiders to kill them.
kill Cocooned Victim##144215+
|tip They like large white eggs on the ground near trees around this area.
click Egg Sac##290754+
|tip They look like small white eggs on the ground near trees around this area.
Kill Spiders and Egg Sacs |q 51765/1 |goto 65.11,53.55
|next "Tortollan_Seekers_WQ"
step
label quest-51767
accept Trapline##51767 |goto Drustvar/0 68.20,44.90
|tip You will accept this quest automatically.
stickystart "Kill_Watchful_Ravens"
stickystart "Kill_Darkmaw_Prowlers"
step
Follow the road |goto 69.86,41.49 < 10 |only if walking
click Place Trap##290718+
|tip They look like small bear traps on the ground around this area.
Place #6# Traps |q 51767/3 |goto 68.20,44.90
step
label "Kill_Watchful_Ravens"
kill 4 Watchful Raven##125411 |q 51767/1 |goto 68.20,44.90
step
label "Kill_Darkmaw_Prowlers"
kill 6 Darkmaw Prowler##125464 |q 51767/2 |goto 68.20,44.90
|next "Tortollan_Seekers_WQ"
step
label quest-51529
accept Talon##51529 |goto Drustvar/0 31.71,40.61
|tip You will accept this quest automatically.
step
kill Talon##129950 |q 51529/1 |goto 31.93,40.63
|next "Tortollan_Seekers_WQ"
step
label quest-51672
accept Tangled Webs##51672 |goto Drustvar/0 65.11,53.55
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Only enemies that look like spiders will count for this quest goal.
|tip You can walk over the tiny spiders to kill them.
kill Cocooned Victim##144215+
|tip They like large white eggs on the ground near trees around this area.
click Egg Sac##290754+
|tip They look like large white eggs on the ground near trees around this area.
Kill Spiders and Egg Sacs |q 51672/1 |goto 65.11,53.55
|next "Tortollan_Seekers_WQ"
step
label quest-51667
accept This Bird You Cannot Change##51667 |goto Drustvar/0 31.85,24.67
|tip You will accept this quest automatically.
stickystart "Kill_Hexthralled_Falconers_2"
step
use the Falconer's Whistle##157845
|tip Use the ability on your action bar on Wicker Charms around this area.
|tip They look like dreamcatcher objects hanging from the buildings around this area.
Destroy #7# Wicker Charms |q 51667/1 |goto 31.85,24.67
step
label "Kill_Hexthralled_Falconers_2"
kill 5 Hexthralled Falconer##131519 |q 51667/2 |goto 31.85,24.67
|next "Tortollan_Seekers_WQ"
step
label quest-51619
Follow the road |goto Drustvar/0 69.86,41.49 < 10 |only if walking
accept Trapline##51619 |goto Drustvar/0 68.20,44.90
|tip You will accept this quest automatically.
stickystart "Kill_Watchful_Ravens"
stickystart "Kill_Darkmaw_Prowlers"
step
Follow the road |goto 69.86,41.49 < 10 |only if walking
click Place Trap##290718+
|tip They look like small bear traps on the ground around this area.
Place #6# Traps |q 51619/3 |goto 68.20,44.90
step
label "Kill_Watchful_Ravens"
kill 4 Watchful Raven##125411 |q 51619/1 |goto 68.20,44.90
step
label "Kill_Darkmaw_Prowlers"
kill 6 Darkmaw Prowler##125464 |q 51619/2 |goto 68.20,44.90
|next "Tortollan_Seekers_WQ"
step
label quest-51397
Follow the road |goto Drustvar/0 32.29,31.26 < 10 |only if walking
Continue following the road |goto 33.02,30.69 < 7 |only if walking
Follow the path |goto 34.92,31.70 < 10 |only if walking
accept Up In Your Drill##51397 |goto Drustvar/0 36.36,35.67
|tip You will accept this quest automatically.
step
click Silver Nugget##290975+
Commandeer the Mining Machine |q 51397/1 |goto 36.36,35.67
step
kill 8 Bilefang Hunter##132317 |q 51397/2 |goto 36.36,35.67
|next "Tortollan_Seekers_WQ"
step
label quest-51508
accept Vicemaul##51508 |goto Drustvar/0 72.27,60.82
|tip You will accept this quest automatically.
step
click Untended Fishing Rod##127652
Reel in Vicemaul |q 51508/1 |goto 72.84,60.49
step
kill Vicemaul##127651 |q 51508/2 |goto 72.84,60.49
|next "Tortollan_Seekers_WQ"
step
label quest-51769
accept What a Gull Wants##51769 |goto Drustvar/0 70.63,52.17
|tip You will accept this quest automatically.
stickystart "Collect_Mudfish_Innards_51769"
stickystart "Kill_Ravenous_Gulls_51769"
step
click Fishing Rod+
|tip They look like fishing poles propped up on the shore around this area.
Reel in #5# Fishing Rods |q 51769/3 |goto 70.95,53.18
step
label "Collect_Mudfish_Innards_51769"
click Intact Mudfish##290775+
|tip They look like small dead fish on the ground around this area.
collect 9 Mudfish Innards##152845 |q 51769/2 |goto 70.63,52.17
step
label "Kill_Ravenous_Gulls_51769"
kill 10 Ravenous Gull##127530 |q 51769/1 |goto 70.63,52.17
|next "Tortollan_Seekers_WQ"
step
label quest-51530
accept Wedding Crashers##51530 |goto Drustvar/0 24.65,14.39
|tip You will accept this quest automatically.
stickystart "Collect_Wedding_Gifts"
stickystart "Slay_Invaders"
step
clicknpc Terrified Guest##137909+
|tip They look like cowering humans around this area.
Rescue #12# Terrified Guests |q 51530/1 |goto 23.84,14.25
step
label "Collect_Wedding_Gifts"
click Wedding Gift##290133+
|tip They look like small presents around this area.
Collect #6# Wedding Gifts |q 51530/2 |goto 23.84,14.25
step
label "Slay_Invaders"
Kill Invading enemies around this area
Slay #10# Invaders |q 51530/3 |goto 23.84,14.25
|next "Tortollan_Seekers_WQ"
step
label quest-51457
Follow the path |goto Drustvar/0 63.41,22.13 < 10 |only if walking
accept Whargarble the Ill-Tempered##51457 |goto Drustvar/0 64.98,21.37
|tip You will accept this quest automatically.
step
kill Whargarble the Ill-Tempered##128973 |q 51457/1 |goto 64.98,21.37
|next "Tortollan_Seekers_WQ"
step
label quest-51676
Follow the path |goto Drustvar/0 71.18,42.99 < 7 |only if walking
Cross the water |goto 70.62,46.15 < 10 |only if walking
Follow the path |goto 70.15,47.34 < 10 |only if walking
accept What a Gull Wants##51676 |goto Drustvar/0 70.47,50.33
|tip You will accept this quest automatically.
stickystart "Collect_Mudfish_Innards"
stickystart "Collect_Snapclaw_Meat"
step
kill 10 Ravenous Gull##127530 |q 51676/1 |goto 70.47,50.33
step
label "Collect_Mudfish_Innards"
click Intact Mudfish##290775+
|tip They look like small dead fish on the ground around this area.
collect 9 Mudfish Innards##152845 |q 51676/2 |goto 70.47,50.33
step
label "Collect_Snapclaw_Meat"
kill Scavenging Snapclaw##127526+
|tip They can be found along the water around this area.
collect 15 Snapclaw Meat##152865 |q 51676/3 |goto 70.47,50.33
|next "Tortollan_Seekers_WQ"
step
label quest-52297
accept What's the Buzz?##52297 |goto Drustvar/0 61.06,17.71
|tip You will accept this quest automatically.
step
talk Michael Skarn##140880
Tell him _"Begin pet battle."_
Defeat Michael Skarn |q 52297/1 |goto 61.06,17.71
|next "Tortollan_Seekers_WQ"
step
label quest-51686
accept Where My Witches at?##51686 |goto Drustvar/0 69.93,60.39
|tip You will accept this quest automatically.
step
clicknpc Dormant Ravager##138532
Control the Dormant Ravager |q 51686/1 |goto 69.93,60.39
step
Kill enemies around this area
|tip Use the abilities on your hotbar.
Slay Heartsbane Minions |q 51686/2 |goto 69.49,62.81
|next "Tortollan_Seekers_WQ"
step
label quest-51694
accept Which Witch?##51694 |goto Drustvar/0 38.15,50.97
|tip You will accept this quest automatically.
stickystart "Destroy_Heartsbane_Objects"
step
clicknpc Corlain Refugee##129641+
use Lucille's Sewing Needle##160571
|tip Use it on refugees around this area.
Test #10# Corlain Refugees |q 51694/1 |goto 38.15,50.97
step
label "Destroy_Heartsbane_Objects"
click Heartsbane Grimoire##290896+
|tip They look like small books around this area.
click Heartsbane Scrolls##290898+
|tip They look like bundles of scrolls around this area.
click Heartsbane Focus##290897+
|tip They look like hanging idols on buildings around this area.
Destroy #10# Heartsbane Objects |q 51694/2 |goto 38.15,50.97
|next "Tortollan_Seekers_WQ"
step
label quest-51738
accept Witches by the Dozen##51738 |goto Drustvar/0 31.44,18.66
|tip You will accept this quest automatically.
stickystart "Slay_Witches"
step
kill 4 Blighted Horror##137568 |q 51738/1 |goto 31.44,18.66
step
label "Slay_Witches"
Kill enemies around this area
|tip Hexbane Disciples and Coven Hexcallers count for this objective.
Slay #12# Witches |q 51738/2 |goto 31.44,18.66
|next "Tortollan_Seekers_WQ"
step
label quest-51988
accept Whitney "Steelclaw" Ramsay##51988 |goto Drustvar/0 29.34,63.89
|tip You will accept this quest automatically.
step
kill Whitney "Steelclaw" Ramsay##139322 |q 51988/1 |goto 29.50,64.10
|next "Tortollan_Seekers_WQ"
step
label quest-51682
Follow the path |goto Drustvar/0 32.37,29.25 < 10 |only if walking
Continue following the path |goto 32.12,27.48 < 10 |only if walking
Continue following the path |goto 32.41,25.85 < 10 |only if walking
Continue following the path |goto 33.14,23.74 < 10 |only if walking
Continue following the path |goto 30.95,20.80 < 7 |only if walking
Continue following the path |goto 34.76,20.73 < 7 |only if walking
accept Witches by the Dozen##51682 |goto Drustvar/0 31.44,18.66
|tip You will accept this quest automatically.
stickystart "Slay_12_Witches"
step
kill 4 Blighted Horror##137568 |q 51682/1 |goto 31.44,18.66
step
label "Slay_12_Witches"
Kill enemies around this area
|tip Hexbane Disciples and Coven Hexcallers count for this objective.
Slay #12# Witches |q 51682/2 |goto 31.44,18.66
|next "Tortollan_Seekers_WQ"
step
label quest-52357
collect 3 Enchant Weapon - Quick Navigation##159786 |q 52357 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Weapon - Quick Navigation##52357 |goto Drustvar/0 37.91,48.94
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Enchant Weapon - Quick Navigation##52357 |goto 37.91,48.94
|next "Tortollan_Seekers_WQ"
step
label quest-50987
collect 40 Monelite Ore##152512 |q 50987 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Work Order: Monelite Ore##50987 |goto Drustvar/0 37.91,48.94
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Monelite Ore##50987 |goto 37.91,48.94
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Nazmir World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Nazmir, Zandalar.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone=863,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-50718
accept Agent of Death##50718 |goto Nazmir/0 39.58,38.74
|tip You will accept this quest automatically.
step
Killl enemies around this area
Repel the Assault on the Necroplois |q 50718/1 |goto 39.58,38.74
|next "Tortollan_Seekers_WQ"
step
label quest-50549
accept Absolutely Barbaric##50549 |goto Nazmir/0 61.64,55.80
|tip You will accept this quest automatically.
step
Kill enemies around this area
Raze Zal'amak |q 50549/1 |goto 61.64,55.80
|next "Tortollan_Seekers_WQ"
step
label quest-51131
accept Absolutely Barbaric##51131 |goto Nazmir/0 61.64,55.80
|tip You will accept this quest automatically.
step
Kill enemies around this area
Raze Zal'amak |q 51131/1 |goto 61.64,55.80
|next "Tortollan_Seekers_WQ"
step
label quest-52803
accept Accidental Dread##52803 |goto Nazmir/0 43.02,38.86
|tip You will accept this quest automatically.
step
talk Korval Darkbeard##141814
Tell him _"Begin pet battle."_
Defeat Korval Darkbeard |q 52803/1 |goto 43.02,38.86
|next "Tortollan_Seekers_WQ"
step
label quest-50488
accept Ancient Jawbreaker##50488 |goto Nazmir/0 67.82,29.39
|tip You will accept this quest automatically.
step
kill Ancient Jawbreaker##125250 |q 50488/1 |goto 67.81,29.51
|next "Tortollan_Seekers_WQ"
step
label quest-52832
accept Azerite Empowerment##52832 |goto Nazmir/0 67.20,23.12
|tip You will accept this quest automatically.
step
Enter the cave |goto 67.66,21.84 < 5 |walk
kill Zebast the Everliving##141905 |q 52832/1 |goto 67.67,21.09
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-50564
accept Azerite Infused Slag##50564 |goto Nazmir/0 33.19,26.97
|tip You will accept this quest automatically.
step
kill Azerite-Infused Slag##134293 |q 50564/1 |goto 33.19,26.97
|next "Tortollan_Seekers_WQ"
step
label quest-51412
accept Azerite Empowerment##51412 |goto Nazmir/0 23.50,62.81
|tip You will accept this quest automatically.
step
kill Chaka the Infused##137663 |q 51412/1 |goto 23.50,62.81
|next "Tortollan_Seekers_WQ"
step
label quest-51415
accept Azerite Madness##51415 |goto Nazmir/0 23.04,63.83
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51415/1 |goto 23.09,64.00
|next "Tortollan_Seekers_WQ"
step
label quest-51411
accept Azerite Mining##51411 |goto Nazmir/0 23.04,63.83
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##136722+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##287086+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51411/1 |goto 23.09,64.00
|next "Tortollan_Seekers_WQ"
step
label quest-52884
accept Azerite Wounds##52884 |goto Nazmir/0 26.64,80.19
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 52884/1 |goto 26.64,80.19|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "Tortollan_Seekers_WQ"
step
label quest-50511
accept Bajiatha##50511 |goto Nazmir/0 42.83,60.53
|tip You will accept this quest automatically.
step
kill Bajiatha##126142 |q 50511/1 |goto 42.83,60.53
|next "Tortollan_Seekers_WQ"
step
label quest-50572
accept Bloody Intrusion##50572 |goto Nazmir/0 46.79,78.05
|tip You will accept this quest automatically.
stickystart "Slay_Troll_Invaders"
step
use the Ceremonial Torch##154724
|tip Use it on Zandalari Casualties on the ground around this area.
Burn #8# Troll Corpses |q 50572/1 |goto 46.79,78.05
step
label "Slay_Troll_Invaders"
Kill Blood Troll enemies around this area
Slay #10# Troll Invaders |q 50572/2 |goto 46.79,78.05
|next "Tortollan_Seekers_WQ"
step
label quest-50648
accept Bubbles and Trouble##50648 |goto Nazmir/0 32.60,54.97
|tip You will accept this quest automatically.
stickystart "Slay_Empowered_Worshippers"
step
clicknpc Corruption Source##134583+
Destroy #3# Corruption Sources |q 50648/2 |goto 32.60,54.97
step
label "Slay_Empowered_Worshippers"
kill 12 Empowered Worshipper##127224 |q 50648/1 |goto 32.60,54.97
|next "Tortollan_Seekers_WQ"
step
label quest-50735
accept Burial Detail##50735 |goto Nazmir/0 45.85,47.39
|tip You will accept this quest automatically.
stickystart "Slay_Craven_Spirits"
step
clicknpc Cracked Vessel##134995
|tip They looks like small urns on the ground around this area.
Purify #6# Cracked Vessels |q 50735/1 |goto 45.85,47.39
step
label "Slay_Craven_Spirits"
Kill Craven enemies around this area
Slay #8# Craven Spirits |q 50735/2 |goto 45.85,47.39
|next "Tortollan_Seekers_WQ"
step
label quest-51640
accept Beachhead##51640 |goto Nazmir/0 74.19,10.08
|tip You will accept this quest automatically.
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #15# Juvenile Turtles Reach the Ocean |q 51640/1 |goto 74.19,10.08
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "Tortollan_Seekers_WQ"
step
label quest-51550
accept Bubbles and Trouble##51550 |goto Nazmir/0 32.60,54.97
|tip You will accept this quest automatically.
stickystart "Kill_Empowered_Worshippers"
step
clicknpc Corruption Source##134583+
|tip They look like large red floating blood bubbles.
|tip They will appear on your minimap as yellow dots.
Destroy #3# Corruption Sources |q 51550/2 |goto 32.60,54.97
step
label "Kill_Empowered_Worshippers"
kill 12 Empowered Worshipper##127224 |q 51550/1 |goto 32.60,54.97
|next "Tortollan_Seekers_WQ"
step
label quest-50813
accept Cargo Reclamation##50813 |goto Nazmir/0 60.16,67.71
|tip You will accept this quest automatically.
stickystart "Collect_Ransacked_Supplies"
step
click Rope Ladder##294168 |goto 60.77,69.12
kill Xuxuga the Plunderer##135377 |q 50813/1 |goto 61.33,68.57
step
label "Collect_Ransacked_Supplies"
collect 6 Ransacked Supplies## |q 50813/2 |goto 59.71,68.61
|next "Tortollan_Seekers_WQ"
step
label quest-50665
accept Cancel the Blood Troll Apocalypse##50665 |goto Nazmir/0 53.77,76.03
|tip You will accept this quest automatically.
step
talk Patch##134758
|tip On top of the A.F.M.O.D.
Tell him _"Let's get in the A.F.M.O.D and stop that blood troll army."_
Speak with Patch to Board the A.F.M.O.D. |q 50665/1 |goto 53.77,76.03
step
Kill Blood Troll enemies around this area
|tip Use the abilities on your action bar.
Slay #80# Blood Trolls |q 50665/2 |goto 46.79,78.05
|next "Tortollan_Seekers_WQ"
step
label quest-50962
accept Cargo Reclamation##50962 |goto Nazmir/0 60.16,67.71
|tip You will accept this quest automatically.
stickystart "Collect_Ransacked_Supplies"
step
kill Xuxuga the Plunderer##135377 |q 50962/2 |goto 61.33,68.57
|tip At the top of the ship.
|tip Click the Rope Ladder on the side of the ship, in the water, to board the ship.
step
label "Collect_Ransacked_Supplies"
click Ransacked Supplies+
|tip They look like wooden boxes on the ground around this area.
collect 6 Ransacked Supplies##158878 |q 50962/1 |goto 59.71,68.61
|next "Tortollan_Seekers_WQ"
step
label quest-50568
accept Chag's Challenge##50568 |goto Nazmir/0 68.92,20.06
|tip You will accept this quest automatically.
step
talk Chag##134297
Tell him _"I'll fight your summoned creature."_
Watch the dialogue
kill Lucille##134296 |q 50568/1 |goto 67.99,19.81
|next "Tortollan_Seekers_WQ"
step
label quest-52779
accept Crawg in the Bog##52779 |goto Nazmir/0 46.65,73.79
|tip You will accept this quest automatically.
step
clicknpc Bloodtusk##141588
Defeat Bloodtusk |q 52779/1 |goto 46.65,73.79
|next "Tortollan_Seekers_WQ"
step
label quest-50492
accept Cursed Chest##50492 |goto Nazmir/0 81.80,30.54
|tip You will accept this quest automatically.
step
click Cursed Chest##272631
Choose _<Attempt to open the chest.>_
kill Captain Mu'kala##125232 |q 50492/1 |goto 81.80,30.54
|next "Tortollan_Seekers_WQ"
step
label quest-50717
accept Don't Stalk Me, Troll##50717 |goto Nazmir/0 35.70,76.42
|tip You will accept this quest automatically.
step
use Talanji's Mojo##158324
Use Talanji's Mojo Potion |q 50717/1 |goto 35.70,76.42
step
Kill Blood Troll enemies around this area
Slay #12# Blood Troll Invaders |q 50717/2 |goto 35.70,76.42
|next "Tortollan_Seekers_WQ"
step
label quest-50443
accept Down to the Roots##50443 |goto Nazmir/0 46.74,33.74
|tip You will accept this quest automatically.
stickystart "Destroy_Bloodlasher_Seedlings"
step
Follow the path |goto Nazmir/0 47.67,34.44 < 10 |only if walking
Continue following the path |goto 48.46,33.10 < 7 |only if walking
Cross the bridge |goto 49.18,31.53 < 7 |only if walking
Follow the path |goto 48.38,29.93 < 7
Continue down the path |goto 48.28,28.90 < 7 |only if walking
kill Root-Hexxer Ib'aka##131596 |q 50443/2 |goto 48.85,28.53
step
label "Destroy_Bloodlasher_Seedlings"
clicknpc Bloodlasher Seedling##133860+
|tip They look like small carnivorious plants on the ground around this area.
Destroy #15# Bloodlasher Seedlings |q 50443/1 |goto 49.07,34.32
|next "Tortollan_Seekers_WQ"
step
label quest-50899
accept Don't Stalk Me, Troll##50899 |goto Nazmir/0 38.45,74.83
|tip You will accept this quest automatically.
step
use the Portable Revealing Occular##158924
Use the Portable Revealing Occular |q 50899/1 |goto 38.45,74.83
step
Kill Blood Troll enemies around this area
|tip They will appear on your minimap as red dots.
Slay #12# Blood Troll Invaders |q 50899/2 |goto 35.70,76.42
|next "Tortollan_Seekers_WQ"
step
label quest-51166
accept Down to the Roots##51166 |goto Nazmir/0 48.85,28.53
|tip You will accept this quest automatically.
stickystart "Destroy_Bloodlasher_Seedlings"
step
kill Root-Hexxer Ib'aka##131596 |q 51166/2 |goto 48.85,28.53
step
label "Destroy_Bloodlasher_Seedlings"
clicknpc Bloodlasher Seedling##133860+
|tip They look like blue and red plants with teeth on the ground around this area.
Destroy #15# Bloodlasher Seedlings |q 51166/1 |goto 49.07,34.32
|next "Tortollan_Seekers_WQ"
step
label quest-52007
accept Engines of War##52007 |goto Nazmir/0 74.02,10.70
|tip You will accept this quest automatically.
stickystart "Destroy_Amphibious_Assault_Obliterators"
stickystart "Slay_7th_Legion_Forces"
step
kill Captain Quarterflash##139510 |q 52007/3 |goto 70.37,15.56
step
label "Destroy_Amphibious_Assault_Obliterators"
use the Goblin Incendiary Rocket Launcher##160988
|tip Use it on Amphibious Assault Obliterators.
|tip They look like large siege vehicles on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #3# Amphibious Assault Obliterators |q 52007/2 |goto 72.12,15.44
step
label "Slay_7th_Legion_Forces"
Kill 7th Legion enemies around this area
Slay 7th Legion Forces |q 52007/1 |goto 72.12,15.44
|next "Tortollan_Seekers_WQ"
step
label quest-50545
accept Forked Lightning##50545 |goto Nazmir/0 29.24,38.53
|tip You will accept this quest automatically.
step
Kill Sethrak enemies around this area
collect 25 Skycaller Gem Chip##157861 |q 50545/1 |goto 27.14,39.10
step
click Gemcaller Matrix##136001
|tip Inside the building.
Restore the Skycaller Gem |q 50545/2 |goto 27.25,39.41
|next "Tortollan_Seekers_WQ"
step
label quest-51172
accept Forked Lightning##51172 |goto Nazmir/0 29.24,38.53
|tip You will accept this quest automatically.
step
Kill Sethrak enemies around this area
collect 25 Skycaller Gem Chip##157861 |q 51172/1 |goto 27.14,39.10
step
click Gemcaller Matrix##136001
|tip Inside the building.
Restore the Skycaller Gem |q 51172/2 |goto 27.25,39.41
|next "Tortollan_Seekers_WQ"
step
label quest-50559
accept Getting Out of Hand##50559 |goto Nazmir/0 62.67,13.99
|tip You will accept this quest automatically.
step
Use the special action button on-screen
Become the Hand of Fate |invehicle |goto 62.67,13.99
step
Kill enemies around this area
|tip Use the abilities on your vehicle bar.
Destroy #40# Undead |q 50559/1 |goto 62.67,13.99
|next "Tortollan_Seekers_WQ"
step
label quest-50496
accept Glompmaw##50496 |goto Nazmir/0 68.68,57.45
|tip You will accept this quest automatically.
step
kill Glompmaw##121242 |q 50496/1 |goto 68.68,57.45
|tip He swims underwater around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-50499
Follow the path up |goto Nazmir/0 33.39,82.74 < 15 |only if walking
accept Gwugnug##50499 |goto Nazmir/0 33.16,84.16
|tip You will accept this quest automatically.
step
Follow the path |goto 32.94,86.03 < 10 |only if walking
Enter the cave |goto 33.47,87.11 < 7 |only if walking
kill Gwugnug the Cursed##127001 |q 50499/1 |goto 33.80,85.99
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51127
accept Getting Out of Hand##51127 |goto Nazmir/0 59.11,14.78
|tip You will accept this quest automatically.
step
Become the Hand of Fate |invehicle |goto 59.11,14.78 |q 51127
|tip Use the "Scroll of Fate's Hand" ability.
|tip It appears as a button on the screen.
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy #40# Undead |q 51127/1 |goto 62.67,13.99
|next "Tortollan_Seekers_WQ"
step
label quest-50498
accept Gutrip##50498 |goto Nazmir/0 32.80,43.10
|tip You will accept this quest automatically.
step
kill Gutrip##128426 |q 50498/1 |goto 32.80,43.10
|tip It walks around this area.
|tip It will appear on your minimap as a yellow star.
|next "Tortollan_Seekers_WQ"
step
label quest-50695
accept It's Never Time for Cannibalism##50695 |goto Nazmir/0 49.67,35.43
|tip You will accept this quest automatically.
stickystart "Slay_Natha'vor_Cannibals"
step
clicknpc Zandalari Sacrifice##134761+
|tip They look like tied up trolls around this area.
Rescue #4# Zandalari Sacrifices |q 50695/2 |goto 49.67,35.43
step
label "Slay_Natha'vor_Cannibals"
kill Natha'vor Cannibal##124688+ |q 50695/1 |goto 49.67,35.43
|next "Tortollan_Seekers_WQ"
step
label quest-50689
accept It's the Pits##50689 |goto Nazmir/0 24.68,47.71
|tip You will accept this quest automatically.
stickystart "Kill_Bone_Raptors"
step
clicknpc Goblin Prospector##134759+
|tip They look like tar-covered goblins in tar pits around this area.
Rescue #4# Goblin Prospectors |q 50689/2 |goto 24.68,47.71
step
label "Kill_Bone_Raptors"
kill 8 Bone Raptor##130735+ |q 50689/1 |goto 24.68,47.71
|next "Tortollan_Seekers_WQ"
step
label quest-51546
accept It's the Pits##51546 |goto Nazmir/0 24.68,47.71
|tip You will accept this quest automatically.
stickystart "Kill_Bone_Raptors"
step
clicknpc Goblin Prospector##134759+
|tip They look like tar-covered goblins in tar pits around this area.
Rescue #4# Surveyors |q 51546/2 |goto 24.68,47.71
step
label "Kill_Bone_Raptors"
kill 8 Bone Raptor##130735+ |q 51546/1 |goto 24.68,47.71
|next "Tortollan_Seekers_WQ"
step
label quest-50503
accept Juba the Scarred##50503 |goto Nazmir/0 28.12,34.11
|tip You will accept this quest automatically.
step
kill Juba the Scarred##133527 |q 50503/1 |goto 28.12,34.11
|tip He walks around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-50505
accept Kal'draxa##50505 |goto Nazmir/0 52.90,13.15
|tip You will accept this quest automatically.
step
kill Kal'draxa##124397 |q 50505/1 |goto 52.90,13.15
|next "Tortollan_Seekers_WQ"
step
label quest-50497
accept Krag'wa's Favor##50497 |goto Nazmir/0 75.29,46.26
|tip You will accept this quest automatically.
step
Kill Frogmarsh enemies around this area
collect Chunky Meat##151040 |n
click Raptor Egg##201974+
|tip They look like large speckled half-buried eggs on the ground around this area.
clicknpc Beautiful Glowfly##123259
|tip They look like small butterflies in the air around this area.
Collect Offerings for Krag'wa |q 50497/1 |goto 75.29,46.26
|next "Tortollan_Seekers_WQ"
step
label quest-50506
accept King Kooba##50506 |goto Nazmir/0 53.42,42.84
|tip You will accept this quest automatically.
step
kill King Kooba##129005 |q 50506/1 |goto 53.42,42.84
|next "Tortollan_Seekers_WQ"
step
label quest-50507
accept Krubbs##50507 |goto Nazmir/0 76.10,36.64
|tip You will accept this quest automatically.
step
kill Krubbs##125214 |q 50507/1 |goto 75.71,35.95
|tip Inside the building.
|next "Tortollan_Seekers_WQ"
step
label quest-50509
accept Lo'kuno##50509 |goto Nazmir/0 77.72,45.16
|tip You will accept this quest automatically.
step
kill Lo'kuno##133539 |q 50509/1 |goto 77.72,45.16
|next "Tortollan_Seekers_WQ"
step
label quest-50566
accept Lost Scroll##50566 |goto Nazmir/0 81.68,61.07
|tip You will accept this quest automatically.
step
click Lost Scroll##134295
kill Vilescale Guardian##125393 |q 50566/1 |goto 81.68,61.07
|next "Tortollan_Seekers_WQ"
step
label quest-50517
accept Mala'kili and Rohnkor##50517 |goto Nazmir/0 53.77,53.31
|tip You will accept this quest automatically.
step
kill Mala'kili##128935 |q 50517/1 |goto 53.77,53.31
|tip He runs around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-52754
accept Marshdwellers##52754 |goto Nazmir/0 72.83,49.04
|tip You will accept this quest automatically.
step
Enter the cave |goto 72.84,48.97 < 5 |walk
talk Lozu##141529
|tip Inside the cave.
Tell her _"Begin pet battle."_
Defeat Lozu |q 52754/1 |goto 72.85,48.60
|next "Tortollan_Seekers_WQ"
step
label quest-50587
accept Nagative Feedback##50587 |goto Nazmir/0 77.05,50.52
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Infused Trident Rack##287159+
|tip They look like large weapon racks on the ground around this area.
click Empowering Totem##134372+
|tip The look like small idols on the ground around this area.
Disrupt the Naga Encampment |q 50587/1 |goto 75.29,46.26
You can find more around [81.37,52.08]
|next "Tortollan_Seekers_WQ"
step
label quest-51548
accept Nagative Feedback##51548 |goto Nazmir/0 69.61,46.43
|tip You will accept this quest automatically.
step
Follow the path up |goto 74.71,51.74 < 15 |only if walking
Kill enemies around this area
click Infused Trident Rack##287159+
|tip They look like large weapon racks on the ground around this area.
click Empowering Totem##134372+
|tip The look like small blue-glowing metal cups on the ground around this area.
Disrupt the Naga Encampment |q 51548/1 |goto 81.37,52.08
|next "Tortollan_Seekers_WQ"
step
label quest-50474
accept The Other Side##50474 |goto Nazmir/0 39.55,55.04
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 6 Spirit Essence##157833 |goto 39.55,55.04
step
clicknpc Fettered Spirit##133962+
|tip They look like kneeling spirits on the ground around this area.
Liberate #6# Fettered Spirits |q 50474/1 |goto 39.55,55.04
|next "Tortollan_Seekers_WQ"
step
label quest-50510
Jump down here |goto Nazmir/0 66.73,44.11 < 7 |only if walking
Follow the path |goto 63.86,47.01 < 10 |only if walking
Continue following the path |goto 61.80,53.50 < 10 |only if walking
Continue following the path |goto 61.86,58.81 < 10 |only if walking
accept Overstuffed Saurolisk##50510 |goto Nazmir/0 62.10,65.21
|tip You will accept this quest automatically.
step
kill Overstuffed Saurolisk##124375 |q 50510/1 |goto 62.10,65.21
|next "Tortollan_Seekers_WQ"
step
label quest-50667
accept Past Due##50667 |goto Nazmir/0 68.45,35.34
|tip You will accept this quest automatically.
step
click Ancient Texts##287161+
|tip They look like large tablets on the ground around this area.
|tip If you have trouble finding them, check inside buildings.
Examine #8# Ancient Text |q 50667/1 |goto 68.45,35.34
|next "Tortollan_Seekers_WQ"
step
label quest-52006
accept Preemptive Assault##52006 |goto Nazmir/0 72.04,16.42
|tip You will accept this quest automatically.
stickystart "Burn_Barricades"
stickystart "Slay_10_7th_Legion_Forces"
step
Follow the path |goto 71.02,16.75 < 10 |only if walking
kill Houndmaster Leopold##139554 |q 52006/3 |goto 70.43,15.54
step
label "Burn_Barricades"
click Barricade##281000+
|tip They look like piles of wooden rubble on the ground around this area.
|tip They appear on your minimap as a yellow dot.
Burn #5# Barricades |q 52006/2 |goto 71.01,15.51
step
label "Slay_10_7th_Legion_Forces"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Forces |q 52006/1 |goto 71.01,15.51
|next "Tortollan_Seekers_WQ"
step
label quest-52799
accept Pack Leader##52799 |goto Nazmir/0 35.93,54.59
|tip You will accept this quest automatically.
step
talk Grady Prett##141799
Tell him _"Begin pet battle."_
Defeat Grady Prett |q 52799/1 |goto 35.93,54.59
|next "Tortollan_Seekers_WQ"
step
label quest-51154
accept Past Due##51154 |goto Nazmir/0 68.45,35.34
|tip You will accept this quest automatically.
step
click Ancient Texts##287161+
|tip They look like brown stone tablets on the ground around this area.
|tip They can also be inside the buildings around this area.
Examine #8# Ancient Text |q 51154/1 |goto 68.45,35.34
|next "Tortollan_Seekers_WQ"
step
label quest-50786
accept Revenge of Krag'wa##50786 |goto Nazmir/0 63.77,52.37
|tip You will accept this quest automatically.
step
talk Krag'wa the Huge##134976
Tell it _"I am ready to fight the blood trolls."_
Meet Krag'wa Outside Zal'amak |q 50786/1 |goto 63.77,52.37
step
Kill Bloodhunter enemies around this area
|tip Use the abilities on your hotbar to kill trolls around this area.
Slay #150# Blood Trolls |q 50786/2 |goto 63.77,52.37
|next "Tortollan_Seekers_WQ"
step
label quest-50676
accept River Toll##50676 |goto Nazmir/0 68.66,47.11
|tip You will accept this quest automatically.
stickystart "Slay_Bloodhunter_Trolls"
step
use the Ceremonial Torch##154724
|tip Use it on Zandalari Casualties on the ground around this area.
Destroy #8# Bloodhunter War Supplies |q 50676/2 |goto 68.30,49.82
step
label "Slay_Bloodhunter_Trolls"
Kill Bloodhunter enemies around this area
Slay #12# Bloodhunter Trolls |q 50676/1 |goto 68.30,49.82
|next "Tortollan_Seekers_WQ"
step
label quest-50634
accept Save Our Scrolls!##50634 |goto Nazmir/0 61.32,26.40
|tip You will accept this quest automatically.
step
click Grimy Scroll##281722+
|tip They look like small glowing scrolls on the ground around this area.
collect 12 Intact Tortollan Scroll##158176 |q 50634/1 |goto 61.32,26.40
|next "Tortollan_Seekers_WQ"
step
label quest-51109
accept Scorched Earth##51109 |goto Nazmir/0 31.69,75.18
|tip You will accept this quest automatically.
stickystart "Kill_Dreadtick_Latchers_1"
step
use the X-P100D##159745
|tip Use it on Dreadtick Latcher Nests around this area.
|tip They look like white pods with red bumps on them on the ground around this area.
Destroy #8# Dreadtick Latcher Nests |q 51109/1 |goto 30.59,75.28
step
label "Kill_Dreadtick_Latchers_1"
use the X-P100D##159745
|tip Use it on Dreadtick Latchers around this area.
kill 25 Dreadtick Latcher##126749 |q 51109/2 |goto 30.59,75.28
|next "Tortollan_Seekers_WQ"
step
label quest-50961
accept Save Our Scrolls!##50961 |goto Nazmir/0 61.32,26.40
|tip You will accept this quest automatically.
step
click Grimy Scroll##281722+
|tip They look like small glowing scrolls on the ground around this area.
collect 12 Intact Tortollan Scroll##158176 |q 50961/1 |goto 61.32,26.40
|next "Tortollan_Seekers_WQ"
step
label quest-50512
accept Scout Skrasniss##50512 |goto Nazmir/0 59.15,38.72
|tip You will accept this quest automatically.
step
kill Scout Skrasniss##127820 |q 50512/1 |goto 59.15,38.72
|next "Tortollan_Seekers_WQ"
step
label quest-51628
accept Shell Game##51628 |goto Nazmir/0 72.22,40.52
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51628/1 |goto 72.22,40.52
step
click Shell
|tip Click the shells to reveal objects.
|tip Match the objects in pairs.
Complete Collector Kojo's Shell Game |q 51628/2 |goto 72.22,40.52
|next "Tortollan_Seekers_WQ"
step
label quest-50650
accept Smashing Zalamar##50650 |goto Nazmir/0 32.56,45.62
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Repulsive Container##281835+
|tip They look like large dark-colored urns on the ground around this area.
Disrupt Zalamar |q 50650/1 |goto 32.56,45.62
|next "Tortollan_Seekers_WQ"
step
label quest-50468
accept Shul-Nagruth##50468 |goto Nazmir/0 48.41,66.86
|tip You will accept this quest automatically.
step
kill Maw of Shul-Nagruth##128610 |q 50468/1 |goto 49.86,67.21
|next "Tortollan_Seekers_WQ"
step
label quest-52785
accept Smashing Zalamar##52785 |goto Nazmir/0 32.56,45.62
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Repulsive Container##281835+
|tip They look like large dark-colored urns on the ground around this area.
Disrupt Zalamar |q 52785/1 |goto 32.56,45.62
|next "Tortollan_Seekers_WQ"
step
label quest-52181
accept Smoke and Shadow##52181 |goto Nazmir/0 35.43,32.18
|tip You will accept this quest automatically.
step
kill T'zane##132701 |q 52181/1 |goto 35.43,32.18
|tip Do not stand in front of T'zane during "Terror Wail." |grouprole EVERYONE
|tip Do not touch any "Coalesced Essences." |grouprole EVERYONE
|tip Do not stand near other players when affected by "Consuming Spirits." |grouprole HEALER
|tip Do not stand near other players when affected by "Consuming Spirits." |grouprole DAMAGE
|next "Tortollan_Seekers_WQ"
step
label quest-50936
Follow the path |goto Nazmir/0 62.11,41.40 < 5 |only if walking
Continue following the path |goto 61.96,42.36 < 7 |only if walking
Continue following the path |goto 62.74,43.29 < 10 |only if walking
Cross the water |goto 63.59,43.66 < 7 |only if walking
Cross the water |goto 64.78,45.18 < 10 |only if walking
Follow the path |goto 66.73,44.39 < 7 |only if walking
Continue following the path |goto 68.20,44.95 < 7 |only if walking
Continue following the path |goto 68.77,44.69 < 7 |only if walking
Continue following the path |goto 71.78,45.98 < 7 |only if walking
Continue following the path |goto 72.03,47.40 < 7 |only if walking
Continue following the path |goto 71.78,49.36 < 10 |only if walking
Continue following the path |goto 72.27,54.51 < 7 |only if walking
Continue up the path |goto 72.37,56.66 < 7 |only if walking
accept Survival Strategy##50936 |goto Nazmir/0 73.19,58.56
|tip You will accept this quest automatically.
stickystart "Collect_Diremaw_Hides"
stickystart "Collect_Pterrordax_Claws"
step
Kill Shore Saurid enemies around this area
collect 30 Saurid Feather##158191 |q 50936/1 |goto 73.21,60.44
step
label "Collect_Diremaw_Hides"
kill Diremaw##128620+
|tip You can find plenty of them in the water.
collect 5 Diremaw Hide##158193 |q 50936/2 |goto 73.39,62.88
step
label "Collect_Pterrordax_Claws"
Kill Seaspray enemies around this area
collect 3 Pterrordax Wingclaw##158192 |q 50936/3 |goto 73.21,60.44
|next "Tortollan_Seekers_WQ"
step
label quest-50529
accept The Spirits Within##50529 |goto Nazmir/0 39.60,29.93
|tip You will accept this quest automatically.
step
kill Reanimated Horror##122684+
Return #12# Spirits to the Necropolis |q 50529/1 |goto 39.60,29.93
Return sprits to [39.57,27.89]
|next "Tortollan_Seekers_WQ"
step
label quest-50513
accept Tainted Guardian##50513 |goto Nazmir/0 32.21,37.86
|tip You will accept this quest automatically.
step
kill Tainted Guardian##126460 |q 50513/1 |goto 31.51,38.20
|next "Tortollan_Seekers_WQ"
step
label quest-50514
accept Totem Maker Jash'ga##50514 |goto Nazmir/0 48.88,38.42
|tip You will accept this quest automatically.
step
kill Totem Maker Jash'ga##126056 |q 50514/1 |goto 49.42,37.69
|tip Inside the building.
|next "Tortollan_Seekers_WQ"
step
label quest-50577
accept Unaccounted For##50577 |goto Nazmir/0 35.99,83.03
|tip You will accept this quest automatically.
stickystart "Slay_Primal_Skyterrors"
step
clicknpc Darkspear Scout##134326+
|tip They look like injured trolls on the ground around this area.
Rescue #6# Injured Darkspear Scouts |q 50577/2 |goto 35.48,84.48
step
label "Slay_Primal_Skyterrors"
use the Grappling Hook##159761
|tip Use it on flying Primal Skyterrors.
kill Primal Skyterror##126702+
Slay #10# Primal Skyterrors |q 50577/1 |goto 35.48,84.48
|next "Tortollan_Seekers_WQ"
step
label quest-51176
accept Unaccounted For##51176 |goto Nazmir/0 35.99,83.03
|tip You will accept this quest automatically.
stickystart "Slay_Primal_Skyterrors"
step
clicknpc Advance Scout##136681+
|tip They look like injured Alliance scouts on the ground around this area.
Rescue #6# Injured Advance Scouts |q 51176/2 |goto 35.48,84.48
step
label "Slay_Primal_Skyterrors"
use the Grappling Hook##159761
|tip Use it on flying Primal Skyterrors.
kill Primal Skyterror##126702+
Slay #10# Primal Skyterrors |q 51176/1 |goto 35.48,84.48
|next "Tortollan_Seekers_WQ"
step
label quest-50483
accept Underlord Xerxiz##50483 |goto Nazmir/0 55.36,57.61
|tip You will accept this quest automatically.
step
kill Underlord Xerxiz##134002 |q 50483/1 |goto 55.36,57.61
|next "Tortollan_Seekers_WQ"
step
label quest-50490
accept Uroku the Bound##50490 |goto Nazmir/0 44.27,48.78
|tip You will accept this quest automatically.
step
kill Uroku the Bound##128965 |q 50490/1 |goto 44.27,48.78
|next "Tortollan_Seekers_WQ"
step
label quest-50515
accept Venomjaw##50515 |goto Nazmir/0 29.51,50.80
|tip You will accept this quest automatically.
step
kill Venomjaw##126926 |q 50515/1 |goto 29.51,50.80
|tip He walks around this area.
|tip Pull him away, out of the cloud of green spores, they hurt.
|next "Tortollan_Seekers_WQ"
step
label quest-50459
accept Vugthuth##50459 |goto Nazmir/0 46.74,33.74
|tip You will accept this quest automatically.
step
kill Vugthuth##128584 |q 50459/1 |goto 46.74,33.74
|next "Tortollan_Seekers_WQ"
step
label quest-50516
accept Wardrummer Zurula##50516 |goto Nazmir/0 47.66,49.55
|tip You will accept this quest automatically.
step
kill Wardrummer Zurula##126907 |q 50516/1 |goto 48.96,50.77
|next "Tortollan_Seekers_WQ"
step
label quest-52410
collect 10 Solstone##153703 |q 52410 |future
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Solstone##52410 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Solstone##52410 |goto 39.07,79.52
|next "Tortollan_Seekers_WQ"
step
label quest-50518
accept Zanxib##50518 |goto Nazmir/0 38.74,71.43
|tip You will accept this quest automatically.
step
kill Zanxib##133812 |q 50518/1 |goto 38.74,71.43
|tip He walks around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-50461
accept Zujothgul##50461 |goto Nazmir/0 39.59,50.83
|tip You will accept this quest automatically.
step
kill Zujothgul##128578 |q 50461/1 |goto 39.59,50.83
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Stormsong Valley World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Stormsong Valley, Kul Tiras.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone=942,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-51855
Follow the path |goto Stormsong Valley/0 41.64,57.96 < 7 |only if walking
accept A Pirate's Life For Me##51855 |goto Stormsong Valley/0 38.59,57.23
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 6 Irontide Key##160895 |goto 36.89,54.91 |q 51855
step
click Irontide Cage##291196+
|tip They look like wooden cages witch children inside around this area.
Rescue #6# Children |q 51855/1 |goto 36.89,54.91
|next "Tortollan_Seekers_WQ"
step
label quest-52165
accept Automated Chaos##52165 |goto Stormsong Valley/0 36.53,33.64
|tip You will accept this quest automatically.
step
talk Eddie Fixit##140315
Tell him _"Begin pet battle."_
Defeat Eddie Fixit |q 52165/1 |goto 36.53,33.64
|next "Tortollan_Seekers_WQ"
step
label quest-51617
Follow the path up |goto Stormsong Valley/0 72.89,75.93 < 20 |only if walking
accept Azerite Empowerment##51617 |goto Stormsong Valley/0 70.80,85.80
|tip You will accept this quest automatically.
step
kill Tidesage Morris##138332 |q 51617/1 |goto 70.80,85.80
|next "Tortollan_Seekers_WQ"
step
label quest-52871
accept Azerite Empowerment##52871 |goto Stormsong Valley/0 72.36,52.49
|tip You will accept this quest automatically.
step
Enter the cave |goto 72.85,51.09 < 10 |walk
kill Herald Zaxuthril##141985 |q 52871/1 |goto 72.19,52.10
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51618
Follow the path |goto Stormsong Valley/0 59.94,71.33 < 10 |only if walking
Continue following the path |goto 62.87,74.18 < 10 |only if walking
Follow the path up |goto 64.36,78.41 < 7 |only if walking
Continue up the path |goto 65.12,79.58 < 10 |only if walking
Continue up the path |goto 64.78,80.91 < 10 |only if walking
Continue up the path |goto 66.34,81.16 < 7 |only if walking
Continue up the path |goto 67.63,81.84 < 7 |only if walking
accept Azerite Madness##51618 |goto Stormsong Valley/0 68.15,83.06
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51618/1 |goto 70.23,85.41
|next "Tortollan_Seekers_WQ"
step
label quest-52873
accept Azerite Mining##52873 |goto Stormsong Valley/0 36.22,67.50
|tip You will accept this quest automatically.
step
Enter the cave |goto 36.22,67.50 < 5 |only if walking
Kill enemies around this area
|tip Inside the cave.
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area inside the cave.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area inside the cave.
Recover Azerite |q 52873/1 |goto 35.99,69.93
|next "Tortollan_Seekers_WQ"
step
label quest-51644
Follow the path up |goto Stormsong Valley/0 73.24,77.11 < 30 |only if walking
accept Azerite Mining##51644 |goto Stormsong Valley/0 71.17,85.40
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51644/1 |goto 71.17,85.40
|next "Tortollan_Seekers_WQ"
step
label quest-51623
Follow the path up |goto Stormsong Valley/0 72.89,75.93 < 20 |only if walking
accept Azerite Wounds##51623 |goto Stormsong Valley/0 73.04,82.52
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 51623/1 |goto 70.77,85.33
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "Tortollan_Seekers_WQ"
step
label quest-51639
accept Beachhead##51639 |goto Stormsong Valley/0 30.34,56.81
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##144359
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51639/1 |goto 30.34,56.81
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #15# Juvenile Turtles Reach the Ocean |q 51639/2 |goto 30.34,56.81
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "Tortollan_Seekers_WQ"
step
label quest-52117
accept Briarback Mountain##52117 |goto Stormsong Valley/0 47.70,72.32
|tip You will accept this quest automatically.
stickystart "Borrow_Battle_Piglets"
step
Jump down here |goto 47.00,72.31 < 5 |only if walking
Follow the path |goto 46.58,72.82 < 7 |only if walking
Continue up the path |goto 45.90,72.66 < 7 |only if walking
Continue up the path |goto 46.05,74.21 < 7 |only if walking
Continue up the path |goto 46.57,74.52 < 7 |only if walking
click Stormsong Supplies##292557+
|tip They look like brown crates on the ground around this area.
collect 10 Stormsong Supplies##161123 |q 52117/1 |goto 45.85,76.75
step
label "Borrow_Battle_Piglets"
clicknpc Rooting Battle-Piglet##139903+
|tip They look like tiny pigs walking on the ground around this area.
Borrow #8# Battle-Piglets |q 52117/2 |goto 45.85,76.75
|next "Tortollan_Seekers_WQ"
step
label quest-52330
accept Beehemoth##52330 |goto Stormsong Valley/0 68.12,74.57
|tip You will accept this quest automatically.
step
kill Beehemoth##134147 |q 52330/1 |goto 68.16,74.84
|next "Tortollan_Seekers_WQ"
step
label quest-52865
Follow the road up |goto Stormsong Valley/0 51.58,70.14 < 7 |only if walking
Follow the path |goto 52.26,72.90 < 7 |only if walking
Cross the bridge |goto 52.46,74.41 < 7 |only if walking
Follow the path up |goto 52.90,75.25 < 7 |only if walking
Continue following the path |goto 54.31,77.59 < 7 |only if walking
Continue up the path |goto 55.64,78.53 < 10 |only if walking
Follow the road |goto 56.81,81.05 < 7 |only if walking
accept Blockade Runner##52865 |goto Stormsong Valley/0 57.12,83.03
|tip You will accept this quest automatically.
step
talk Stormsong Sentinel##137985
Tell them _"Open this pass at once."_
Route #8# Stormsong Blockades |q 52865/1 |goto 57.57,83.61
|next "Tortollan_Seekers_WQ"
step
label quest-53286
Cross the bridge |goto Stormsong Valley/0 66.86,45.95 < 10 |only if walking
Follow the path |goto 66.94,44.19 < 7 |only if walking
Run up the stairs |goto 67.36,44.14 < 7 |only if walking
Follow the path |goto 67.22,42.59 < 7 |only if walking
Jump down here |goto 67.45,42.56 < 7 |only if walking
accept Blooming Siren's Sting##53286 |goto Stormsong Valley/0 68.57,41.38
|tip You will accept this quest automatically.
step
click Blooming Siren's Sting##143727
Gather a Blooming Siren's Sting |q 53286/1 |goto 68.57,41.38
|next "Tortollan_Seekers_WQ"
step
label quest-52045
Follow the path up |goto Stormsong Valley/0 50.10,69.45 < 7 |only if walking
accept Boarder Patrol##52045 |goto Stormsong Valley/0 48.21,70.16
|tip You will accept this quest automatically.
step
clicknpc Ornery Battleboar##139707
Ride an Ornery Battleboar |q 52045/1 |goto 48.21,70.16
step
Kill enemies around this area.
|tip Run through them while riding the boar.
Slay #50# Briaback Quilboars. |q 52045/2 |goto 45.43,72.22
|next "Tortollan_Seekers_WQ"
step
label quest-52180
Cross the bridge |goto Stormsong Valley/0 58.05,67.48 < 10 |only if walking
accept A Brennadam Shame##52180 |goto Stormsong Valley/0 56.43,62.98
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Sapper Charge##103512+
|tip They look like bombs ready to explode on the ground around this area.
click Horde Mortar##292815+
|tip They look like  small cannons on the ground around this area.
Defend Brennadam |q 52180/1 |goto 56.43,62.98
|next "Tortollan_Seekers_WQ"
step
label quest-52071
Follow the path up |goto Stormsong Valley/0 50.02,69.42 < 10 |only if walking
Continue up the path |goto 48.39,70.13 < 7 |only if walking
Continue down the path |goto 47.63,70.64 < 7 |only if walking
accept Briarback Mountain##52071 |goto Stormsong Valley/0 47.56,70.74
|tip You will accept this quest automatically.
stickystart "Borrow_Battle_Piglets"
step
Continue down the path |goto 47.63,70.64 < 7 |only if walking
Continue up the path |goto 46.96,71.78 < 7 |only if walking
Continue up the path |goto 46.56,72.78 < 7 |only if walking
Continue following the path |goto 45.96,72.72 < 7 |only if walking
Continue up the path |goto 46.02,74.22 < 7 |only if walking
Continue up the path |goto 46.56,74.59 < 7 |only if walking
click Stormsong Supplies##292557+
|tip They look like brown crates on the ground around this area.
collect 10 Stormsong Supplies##161123 |q 52071/1 |goto 45.85,76.75
step
label "Borrow_Battle_Piglets"
clicknpc Rooting Battle-Piglet##139903+
|tip They look like tiny pigs walking on the ground around this area.
Borrow #8# Battle-Piglets |q 52071/2 |goto 45.85,76.75
|next "Tortollan_Seekers_WQ"
step
label quest-52325
Follow the path down |goto Stormsong Valley/0 77.84,27.53 < 10 |only if walking
Continue following the path |goto 77.36,29.06 < 7 |only if walking
accept Captured Evil##52325 |goto Stormsong Valley/0 77.17,29.16
|tip You will accept this quest automatically.
step
talk Leana Darkwind##141046
Tell her _"Begin pet battle."_
Defeat Leana Darkwind |q 52325/1 |goto 77.17,29.16
|next "Tortollan_Seekers_WQ"
step
label quest-52310
Follow the path |goto Stormsong Valley/0 50.41,69.99 < 5 |only if walking
Follow the path up |goto 49.97,69.40 < 10 |only if walking
Continue up the path |goto 49.49,71.04 < 10 |only if walking
accept Corrupted Tideskipper##52310 |goto Stormsong Valley/0 67.11,49.71
|tip You will accept this quest automatically.
step
kill Corrupted Tideskipper##139968
|tip It swims underwater around this area.
Slay the Corrupted Tideskipper |q 52310/1 |goto 67.11,49.71
|next "Tortollan_Seekers_WQ"
step
label quest-52306
accept Croaker##52306 |goto Stormsong Valley/0 62.81,35.30
|tip You will accept this quest automatically.
step
kill Croaker##140938 |q 52306/1 |goto 62.93,32.83
|next "Tortollan_Seekers_WQ"
step
label quest-53025
Cross the bridge |goto Stormsong Valley/0 77.56,26.79 < 7 |only if walking
Cross the bridge |goto 76.62,26.74 < 7 |only if walking
Run down the stairs |goto 75.56,26.32 < 10 |only if walking
Run down the stairs |goto 75.35,25.14 < 7 |only if walking
accept The Culling##53025 |goto Stormsong Valley/0 73.00,23.71
|tip You will accept this quest automatically.
stickystart "Slay_Abyssal_Forces"
step
kill Brother Haines##142516 |q 53025/2 |goto 73.00,23.71
step
label "Slay_Abyssal_Forces"
Follow the path up |goto 73.29,24.72 < 7 |only if walking
Enter the building |goto 74.43,28.30 < 7 |only if walking
Follow the path |goto 74.88,30.06 < 10 |only if walking
Leave the building |goto 74.32,30.61 < 5 |only if walking
Kill enemies around this area
Slay #25# Abyssal Forces |q 53025/1 |goto 73.14,30.67
|next "Tortollan_Seekers_WQ"
step
label quest-51777
accept Dagrus the Scorned##51777 |goto Stormsong Valley/0 66.91,41.29
|tip You will accept this quest automatically.
step
kill Dagrus the Scorned##134897 |q 51777/1 |goto 67.86,39.83
|next "Tortollan_Seekers_WQ"
step
label quest-51778
accept Deepfang##51778 |goto Stormsong Valley/0 53.06,52.80
|tip You will accept this quest automatically.
step
Follow the path up |goto 53.22,52.45 < 15 |only if walking
kill Deepfang##139385 |q 51778/1 |goto 53.19,50.61
|next "Tortollan_Seekers_WQ"
step
label quest-53318
Run down the stairs |goto Stormsong Valley/0 42.89,57.47 < 5 |only if walking
Jump down here |goto 43.74,57.92 < 7 |only if walking
Follow the path |goto 44.16,57.96 < 7 |only if walking
accept Ductile Platinum##53318 |goto Stormsong Valley/0 49.22,53.85
|tip You will accept this quest automatically.
step
click Ductile Platinum Deposit##297474
collect Ductile Platinum##163630 |q 53318/1 |goto 49.22,53.85
|next "Tortollan_Seekers_WQ"
step
label quest-51996
accept Earthcaller's Abode##51996 |goto Stormsong Valley/0 53.14,54.39
|tip You will accept this quest automatically.
step
kill Earthcaller Gulgort##134775 |q 51996/1 |goto 50.02,56.24
step
label "Destroy_Binding_Crystals"
click Binding Crystals##139451
|tip They look like giant purple crystals hovering above the ground around this area.
Destroy #6# Binding Crystals |q 51996/3 |goto 47.83,56.56
step
label "Kill_Restless_Stones"
kill 10 Restless Stone##134966 |q 51996/2 |goto 47.83,56.56
|next "Tortollan_Seekers_WQ"
step
label quest-53027
accept Edge of Glory##53027 |goto Stormsong Valley/0 73.00,23.71
|tip You will accept this quest automatically.
stickystart "Slay_Abyssal_Forces"
step
kill Brother Haines##142516 |q 53027/2 |goto 73.00,23.71
step
label "Slay_Abyssal_Forces"
Follow the path up |goto 73.29,24.72 < 7 |only if walking
Enter the building |goto 74.43,28.30 < 7 |only if walking
Follow the path |goto 74.88,30.06 < 10 |only if walking
Leave the building |goto 74.32,30.61 < 5 |only if walking
Kill enemies around this area
Slay #25# Abyssal Forces |q 53027/1 |goto 73.14,30.67
|next "Tortollan_Seekers_WQ"
step
label quest-51981
accept Earthcaller's Abode##51981 |goto Stormsong Valley/0 47.24,56.76
|tip You will accept this quest automatically.
step
Follow the path up |goto 48.25,56.23 < 10 |only if walking
Continue up the path |goto 49.05,55.03 < 7 |only if walking
kill Earthcaller Gulgort##134775 |q 51981/1 |goto 50.02,56.24
step
label "Destroy_Binding_Crystals"
click Binding Crystals##139451
|tip They look like giant purple crystals hovering above the ground around this area.
Destroy #6# Binding Crystals |q 51981/3 |goto 47.83,56.56
step
label "Kill_Restless_Stones"
kill 10 Restless Stone##134966 |q 51981/2 |goto 47.83,56.56
|next "Tortollan_Seekers_WQ"
step
label quest-52972
accept Favored Grandchild##52972 |goto Stormsong Valley/0 30.77,66.62
|tip You will accept this quest automatically.
step
Follow the path |goto 31.05,67.76 < 7 |only if walking
Continue following the path |goto 31.93,68.64 < 7 |only if walking
talk Shepherd Milbrooke##136414
Ask her _"Do you have an extra milk pail handy?"_
Speak to Shepherd Milbrooke |q 52972/1 |goto 31.86,69.52
stickystart "Collect_6_Pristine_Razorclaw_Pelts"
step
click Mother Goat##136939+
|tip They look like white goats around this area.
collect 6 Mountain Goat Milk##159781 |q 52972/2 |goto 29.70,74.34
step
label "Collect_6_Pristine_Razorclaw_Pelts"
kill Feral Razorclaw##136416+
collect 6 Pristine Razorclaw Pelt##162647 |q 52972/3 |goto 29.70,74.34
|next "Tortollan_Seekers_WQ"
step
label quest-52011
Follow the path |goto Stormsong Valley/0 51.90,67.96 < 10 |only if walking
accept Fiendish Fields##52011 |goto Stormsong Valley/0 51.58,65.93
|tip You will accept this quest automatically.
step
click Repaired Farmhand##132297
Pilot the Repaired Farmhand |q 52011/1 |goto 51.58,65.93
step
kill Razorspine Planterror##139577
|tip Use the abilities on your action bar to defeat it.
Slay the Razorspine Planterror |q 52011/4 |goto 48.70,64.55
step
kill Razorspine Thornling##132204+
|tip Use the abilities on your action bar to defeat them.
Slay #18# Razorspine Thornlings |q 52011/2 |goto 49.45,65.07
step
kill Grasping Thorns##132206+
|tip Use the abilities on your action bar to defeat them.
Slay #12# Grasping Thorns |q 52011/3 |goto 49.45,65.07
step
Exit the Repaired Farmhand |outvehicle
|tip Click the yellow Exit arrow on your vehicle bar.
|next "Tortollan_Seekers_WQ"
step
label quest-51781
accept Foreman Scripps##51781 |goto Stormsong Valley/0 64.43,65.92
|tip You will accept this quest automatically.
step
kill Foreman Scripps##131404 |q 51781/1 |goto 64.43,65.92
|next "Tortollan_Seekers_WQ"
step
label quest-52179
accept Fortified Resistance##52179 |goto Stormsong Valley/0 32.86,46.50
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Zeth'jir Banner##292807+
|tip They look like green banners staked in the ground around this area.
Defend Fort Daelin |q 52179/1 |goto 32.86,46.50
|next "Tortollan_Seekers_WQ"
step
label quest-51776
Follow the path |goto Stormsong Valley/0 65.64,49.10 < 7 |only if walking
Cross the bridge |goto 67.16,52.49 < 7 |only if walking
Follow the path |goto 68.84,54.29 < 7 |only if walking
accept Galestorm##51776 |goto Stormsong Valley/0 71.45,54.35
|tip You will accept this quest automatically.
step
kill Galestorm##132007 |q 51776/1 |goto 71.45,54.35
|next "Tortollan_Seekers_WQ"
step
label quest-52133
accept Good Boy!##52133 |goto Stormsong Valley/0 51.02,68.62
|tip You will accept this quest automatically.
stickystart "Slay_Panicked_Tunnelers"
step
Enter the cave |goto 51.02,68.62 < 7 |walk
kill 4 Briarback Enforcer##140150
|tip Inside the cave.
Slay #4# Briarback Enforcers |q 52133/2 |goto 50.80,68.16
step
label "Slay_Panicked_Tunnelers"
Leave the cave |goto 51.02,68.62 < 7 |walk
kill Galestorm##132007
|tip Use the "Go Get Them!" ability onscreen on quilboar traps.
|tip They look like rumbling patches of earth on the ground around this area.
Slay #8# Panicked Tunnelers |q 52133/1 |goto 52.88,69.38
|next "Tortollan_Seekers_WQ"
step
label quest-51779
Follow the path |goto Stormsong Valley/0 60.00,71.45 < 10 |only if walking
accept Grimscowl the Hairbrained##51779 |goto Stormsong Valley/0 62.07,73.89
|tip You will accept this quest automatically.
step
kill Grimscowl the Harebrained##141059 |q 51779/1 |goto 62.07,73.89
|next "Tortollan_Seekers_WQ"
step
label quest-52463
accept Haegol the Hammer##52463 |goto Stormsong Valley/0 34.89,77.93
|tip You will accept this quest automatically.
step
kill Haegol the Hammer##141226 |q 52463/1 |goto 35.25,77.76
|tip It walks around.
|next "Tortollan_Seekers_WQ"
step
label quest-53316
Follow the path |goto Stormsong Valley/0 68.44,67.70 < 10 |only if walking
Continue following the path |goto 69.74,69.16 < 7 |only if walking
accept Hardened Monelite##53316 |goto Stormsong Valley/0 70.15,70.17
|tip You will accept this quest automatically.
step
click Hardened Monelite Deposit##297468
collect Hardened Monelite##163628 |q 53316/1 |goto 70.15,70.17
|next "Tortollan_Seekers_WQ"
step
label quest-52988
Follow the road up |goto Stormsong Valley/0 65.29,47.56 < 7 |only if walking
Follow the path up |goto 64.84,46.40 < 10 |only if walking
Continue up the path |goto 63.23,42.99 < 7 |only if walking
accept House Cleaning##52988 |goto Stormsong Valley/0 61.70,41.24
|tip You will accept this quest automatically.
step
click Mysterious Book##211522
|tip They look like books floating in the air around this area.
Kill enemies around this area
Cleanse Sagehold |q 52988/1 |goto 60.99,40.88
|next "Tortollan_Seekers_WQ"
step
label quest-52115
accept In the Shadow of the Kracken##52115 |goto Stormsong Valley/0 81.43,60.69
|tip You will accept this quest automatically.
step
Follow the path |goto 81.63,60.12 < 7 |only if walking
Continue following the path |goto 81.39,59.32 < 7 |only if walking
kill Stormrider Telmin##139930 |q 52115/1 |goto 81.46,58.09
|next "Tortollan_Seekers_WQ"
step
label quest-51854
accept I Am the Shark##51854 |goto Stormsong Valley/0 35.02,47.67
|tip You will accept this quest automatically.
step
talk Rikal##131014
Talk with Rikal |q 51854/1 |goto 35.02,47.67
step
talk Rikal##131014
Tell him _"Start casting the spell, Rikal."_
Begin Hunting Naga |havebuff 294472 |goto 35.02,47.67
step
kill Zeth'jir Deepfighter##135125+
|tip They swim in schools underwater around this area.
|tip Swim through them to kill them.
Slay #25# Zeth'jir Deepfighters |q 51854/2 |goto 27.61,35.61
step
Click the "Cancel Shark Form" Button |outvehicle
|next "Tortollan_Seekers_WQ"
step
label quest-52328
Follow the path |goto Stormsong Valley/0 60.46,77.25 < 10 |only if walking
Continue following the path |goto 62.00,78.43 < 7 |only if walking
Continue up the path |goto 64.63,78.95 < 10 |only if walking
Continue up the path |goto 65.18,79.57 < 10 |only if walking
Continue up the path |goto 64.52,81.24 < 7 |only if walking
accept Ice Sickle##52328 |goto Stormsong Valley/0 63.42,82.19
|tip You will accept this quest automatically.
step
kill Ice Sickle##141039 |q 52328/1 |goto 63.53,83.56
|next "Tortollan_Seekers_WQ"
step
label quest-52168
Cross the bridge |goto Stormsong Valley/0 58.05,67.41 < 10 |only if walking
accept It's Lit##52168 |goto Stormsong Valley/0 57.02,65.14
|tip You will accept this quest automatically.
stickystart "Kill_Sapper_Technicians"
step
Follow the path |goto 56.06,64.49 < 10 |only if walking
click Water Bucket##201298+
|tip They look like small buckets of water near the pond.
|tip Use the button that appears onscreen to extinguish fires around this area.
Extinguish #12# Fires |q 52168/1 |goto 55.89,63.36
step
label "Kill_Sapper_Technicians"
kill 7 Sapper Technician##134426+ |q 52168/2 |goto 64.83,59.98
|next "Tortollan_Seekers_WQ"
step
label quest-52321
Follow the path |goto Stormsong Valley/0 30.84,66.08 < 7 |only if walking
accept Kickers##52321 |goto Stormsong Valley/0 31.30,61.70
|tip You will accept this quest automatically.
step
kill Kickers##141029 |q 52321/1 |goto 31.30,61.70
|next "Tortollan_Seekers_WQ"
step
label quest-52239
accept Loose Change##52239 |goto Stormsong Valley/0 51.26,59.78
|tip You will accept this quest automatically.
step
use the Magnetized Metal Collector##158226
|tip Use it near "Could be coins here!" signs on the ground around this area.
|tip They will appear as yellow areas on your minimap.
|tip Coins look like small sparkling dots on the ground around this area.
Find #60# Loose Coins |q 52239/1 |goto 51.26,59.78
You can find more around:
[52.33,56.15]
[47.56,57.31]
[49.92,52.93]
[46.73,53.23]
|next "Tortollan_Seekers_WQ"
step
label quest-52987
Follow the path up |goto Stormsong Valley/0 40.59,38.18 < 10 |only if walking
Continue following the path |goto 41.58,40.27 < 10 |only if walking
Continue up the path |goto 41.58,42.06 < 7 |only if walking
Continue up the path |goto 42.06,42.13 < 7 |only if walking
Continue up the path |goto 42.39,41.24 < 7 |only if walking
Continue up the path |goto 43.02,40.41 < 7 |only if walking
Continue up the path |goto 43.06,38.36 < 7 |only if walking
Continue up the path |goto 43.35,38.37 < 5 |only if walking
Continue up the path |goto 44.56,38.27 < 7 |only if walking
Jump down carefully here |goto 45.85,38.15 < 7 |only if walking
accept Let's Burn!##52987 |goto Stormsong Valley/0 47.02,36.63
|tip You will accept this quest automatically.
step
kill Goblin Engineer##137936+
collect Welding Torch##163120 |q 52987/1 |goto 47.02,36.63
stickystart "Burn_Lumber_Piles"
stickystart "Slay_Warfang_Lumberjacks"
step
clicknpc Siege Tower##142394
|tip Use the "Flamethrower" ability that appears onscreen.
Burn the Siege Tower |q 52987/4 |goto 48.96,37.86 |count 1
step
clicknpc Siege Tower##142394
|tip Use the "Flamethrower" ability that appears onscreen.
Burn the Siege Tower |q 52987/4 |goto 49.57,38.33 |count 2
step
label "Burn_Lumber_Piles"
Burn #6# Lumber Piles |q 52987/3 |goto 49.56,37.56
|tip Use the "Flamethrower" ability that appears onscreen.
|tip They look like stacked logs on the ground around this area.
step
label "Slay_Warfang_Lumberjacks"
kill Warfang Lumberjack##135981
|tip Use the "Flamethrower" ability that appears onscreen.
Slay #12# Warfang Lumberjacks |q 52987/2 |goto 49.56,37.56
|next "Tortollan_Seekers_WQ"
step
label quest-52476
Follow the path up |goto Stormsong Valley/0 51.56,70.18 < 7 |only if walking
Continue following the path |goto 52.26,72.91 < 7 |only if walking
Cross the bridge |goto 52.46,74.39 < 7 |only if walking
Follow the path |goto 52.91,75.24 < 7 |only if walking
Continue following the path |goto 52.73,77.92 < 7 |only if walking
|tip Watch out for the Horde guards.
accept The Lichen King##52476 |goto Stormsong Valley/0 51.81,78.72
|tip You will accept this quest automatically.
step
Enter the cave |goto 51.78,79.23 < 5 |walk
kill The Lichen King##136189 |q 52476/1 |goto 51.78,79.77
|next "Tortollan_Seekers_WQ"
step
label quest-52941
Cross the bridge |goto Stormsong Valley/0 66.23,47.14 < 7 |only if walking
accept Light in the Darkness##52941 |goto Stormsong Valley/0 67.13,45.58
|tip You will accept this quest automatically.
step
click Abyssal Beacon##294126
collect Abyssal Beacon##162635 |q 52941/1 |goto 67.13,45.58
stickystart "Slay_Assembly_Forces"
step
use the Abyssal Beacon##162635
Dispel the Southerm Grasp |q 52941/2 |goto 67.44,44.37
step
Follow the path |goto 66.00,44.33 < 7 |only if walking
Continue following the path |goto 65.96,42.96 < 7 |only if walking
Run up the stairs |goto 66.26,42.38 < 5 |only if walking
Follow the path |goto 65.79,42.18 < 5 |only if walking
use the Abyssal Beacon##162635
Dispel the Western Grasp |q 52941/3 |goto 66.02,41.86
step
Jump down here |goto 66.13,41.95 < 3 |only if walking
Follow the path |goto 66.46,42.20 < 7 |only if walking
Continue following the path |goto 67.26,42.15 < 7 |only if walking
use the Abyssal Beacon##162635
Dispel the Eastern Grasp |q 52941/4 |goto 67.66,42.33
step
label "Slay_Assembly_Forces"
Kill enemies around this area
Slay #12# Assembly Forces |q 52941/5 |goto 66.84,41.09
|next "Tortollan_Seekers_WQ"
step
label quest-52794
Follow the path |goto Stormsong Valley/0 59.82,71.10 < 7 |only if walking
accept Lizards and Ledgers##52794 |goto Stormsong Valley/0 61.67,73.33
|tip You will accept this quest automatically.
stickystart "Collect_Lost_Supplies"
stickystart "Kill_Stonejaw_Saurolisks"
step
Follow the path |goto 62.69,73.29 < 10 |only if walking
Follow the path up |goto 63.47,76.17 < 10 |only if walking
kill Rottail##141832 |q 52794/3 |goto 64.34,74.61
step
label "Collect_Lost_Supplies"
click Lost Supplies##293771+
|tip They look like small boxes/baskets of fruit and barrels on the ground around this area.
collect 8 Lost Supplies##162540 |q 52794/1 |goto 62.94,74.71
step
label "Kill_Stonejaw_Saurolisks"
Kill Stonejaw enemies around this area
Slay #8# Stonejaw Saurolisks |q 52794/2 |goto 62.94,74.71
|next "Tortollan_Seekers_WQ"
step
label quest-52230
Run down the stairs |goto Stormsong Valley/0 42.89,57.47 < 5 |only if walking
Jump down here |goto 43.74,57.92 < 7 |only if walking
Follow the path |goto 44.16,57.96 < 7 |only if walking
accept Loose Change##52230 |goto Stormsong Valley/0 47.20,55.67
|tip You will accept this quest automatically.
step
use the Magnetized Metal Collector##158226
|tip Use it near treasure locations.
|tip They will appear as yellow areas on your minimap.
|tip Coins look like small sparkling dots on the ground around this area.
Find #60# Loose Coins |q 52230/1 |goto 31.30,61.70
|next "Tortollan_Seekers_WQ"
step
label quest-51633
accept Make Loh Go##51633 |goto Stormsong Valley/0 23.30,69.86
|tip You will accept this quest automatically.
step
talk Toki##144361
Tell him _"I am ready."_
Speak to Toki |q 51633/1 |goto 22.65,70.96
step
Guide Loh to the Goal |q 51633/2 |goto 22.65,70.96
|tip Use the arrows to guide Loh to the flags.
|tip You cannot cross your own path or you will have to start over.
|next "Tortollan_Seekers_WQ"
step
label quest-52924
accept Mead Some Help?##52924 |goto Stormsong Valley/0 68.50,67.75
|tip You will accept this quest automatically.
stickystart "Kill_Flowing_Honey"
step
Follow the path |goto Stormsong Valley/0 68.50,67.75 < 7 |only if walking
kill 6 Bubbling Mead##133429 |q 52924/1 |goto 69.74,69.32
step
label "Kill_Flowing_Honey"
kill 8 Flowing Honey##131663 |q 52924/2 |goto 69.74,69.32
|next "Tortollan_Seekers_WQ"
step
label quest-52880
accept Milden Mud Snout##52880 |goto Stormsong Valley/0 50.00,79.18
|tip You will accept this quest automatically.
step
kill Milden Mud Snout##141977 |q 52880/1 |goto 50.00,79.18
|tip Underwater.
|next "Tortollan_Seekers_WQ"
step
label quest-52935
Cross the bridge |goto Stormsong Valley/0 68.14,64.97 < 7 |only if walking
Follow the path |goto 66.73,63.45 < 10 |only if walking
Jump down here |goto 66.18,62.81 < 7 |only if walking
accept A New Era##52935 |goto Stormsong Valley/0 64.83,59.98
|tip You will accept this quest automatically.
stickystart "Destroy_Anchors_Of_Binding"
step
Kill enemies around this area
use the Dead Ringer##155919
|tip Use it on slain enemies around this area.
Recover #12# Souls |q 52935/1 |goto 64.83,59.98
step
label "Destroy_Anchors_Of_Binding"
clicknpc Anchor of Binding##142214
|tip They look like large pedestals with water coming out of them on the ground around this area.
Destroy #8# Anchors of Binding |q 52935/2 |goto 64.83,59.98
|next "Tortollan_Seekers_WQ"
step
label quest-51820
accept Oily Mess##51820 |goto Stormsong Valley/0 40.13,38.85
|tip You will accept this quest automatically.
step
Kill Venture Co. enemies around this area
clicknpc Oily Sandbill Piper##139214+
|tip They look like small birds covered in oil running around this area.
click Oil Drum##291148+
|tip They look like orange barrels on the ground around this area.
Clean the Coastline |q 51820/1 |goto 39.06,42.16
|next "Tortollan_Seekers_WQ"
step
label quest-51840
accept Oily Mess##51840 |goto Stormsong Valley/0 40.13,38.85
|tip You will accept this quest automatically.
step
Kill Venture Co. enemies around this area
clicknpc Oily Sandbill Piper##139214+
|tip They look like small birds covered in oil running around this area.
click Oil Drum##291148+
|tip They look like orange barrels on the ground around this area.
Clean the Coastline |q 51840/1 |goto 39.06,42.16
|next "Tortollan_Seekers_WQ"
step
label quest-52939
Cross the bridge |goto Stormsong Valley/0 65.64,49.08 < 7 |only if walking
Follow the path |goto 67.26,52.68 < 7 |only if walking
accept Ordnance Orders##52939 |goto Stormsong Valley/0 69.34,51.41
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Tidal Blade##280925+
|tip They look like swords around this area.
click Thundershot Rifle##280927
|tip They look like double-barrel rifles around this area.
click Harpoons##280545
|tip They look like a rack of harpoons on the ground around this area.
click Abyssal Spear##
|tip They look like single barbed spears around this area.
collect 20 Stormfused Weapon##162629 |q 52939/1 |goto 69.34,51.41
|next "Tortollan_Seekers_WQ"
step
label quest-52464
accept Osca the Bloodied##52464 |goto Stormsong Valley/0 42.26,63.24
|tip You will accept this quest automatically.
step
kill Osca the Bloodied##141239 |q 52464/1 |goto 42.26,63.24
|next "Tortollan_Seekers_WQ"
step
label quest-53288
Follow the path down |goto Stormsong Valley/0 77.84,27.54 < 10 |only if walking
Jump down here |goto 74.97,30.54 < 7 |only if walking
Jump down here |goto 74.33,29.78 < 7 |only if walking
Jump down carefully here |goto 73.67,29.48 < 7 |only if walking
accept Overgrown Anchor Weed##53288 |goto Stormsong Valley/0 72.64,30.84
|tip You will accept this quest automatically.
step
click Overgrown Anchor Weed
collect Overgrown Anchor Weed##163601 |q 53288/1 |goto 72.64,30.84
|next "Tortollan_Seekers_WQ"
step
label quest-52936
accept Plagued Earth Policy##52936 |goto Stormsong Valley/0 62.15,60.45
|tip You will accept this quest automatically.
step
click Plague Barrel Sack
collect Plague Barrel Sack##162627 |q 52936/1 |goto 62.15,60.45
stickystart "Slay_Stormsong_Forces_52936"
step
click Plague Bomb
Plague the Western Shrine |q 52936/3 |goto 63.25,59.56
step
click Plague Bomb
Plague the Northern Shrine |q 52936/4 |goto 64.76,57.91
step
click Plague Bomb
Plague the Eastern Shrine |q 52936/5 |goto 66.82,60.71
step
label "Slay_Stormsong_Forces_52936"
Kill enemies around this area
Slay #12# Stormsong Forces |q 52936/2 |goto 65.84,59.28
|next "Tortollan_Seekers_WQ"
step
label quest-52964
accept Pest Problem##52964 |goto Stormsong Valley/0 30.60,67.10
|tip You will accept this quest automatically.
step
clicknpc Bug Zapper##142580
Collect a Bug Zapper |q 52964/1 |goto 30.60,67.10
stickystart "Slay_Volatile_Rats"
stickystart "Collect_Bilge_Rats"
step
kill Cellar Crawler##137000+
|tip Around the building.
Slay #6# Cellar Crawlers |q 52964/2 |goto 80.17,47.85
step
label "Slay_Volatile_Rats"
kill 6 Volatile Rat##137126 |q 52964/3 |goto 28.13,66.48
step
label "Collect_Bilge_Rats"
clicknpc Bilge Rat##136686+
|tip Use the extra action button on-screen to stun them first.
Collect #6# Bilge Rats |q 52964/4 |goto 28.13,66.48
|next "Tortollan_Seekers_WQ"
step
label quest-51806
accept Pest Remover Mk. II##51806 |goto Stormsong Valley/0 35.98,37.02
|tip You will accept this quest automatically when you get near it.
|tip It will appear on your minimap as a yellow star.
|tip It walks around this area.
step
kill Pest Remover Mk. II##137649 |q 51806/1 |goto 35.98,37.02
|tip It will appear on your minimap as a yellow star.
|tip It walks around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-53012
Follow the path up |goto Stormsong Valley/0 40.59,38.18 < 10 |only if walking
Continue following the path |goto 41.58,40.27 < 10 |only if walking
Continue up the path |goto 41.58,42.06 < 7 |only if walking
Continue up the path |goto 42.06,42.13 < 7 |only if walking
Continue up the path |goto 42.39,41.24 < 7 |only if walking
Continue up the path |goto 43.02,40.41 < 7 |only if walking
Continue up the path |goto 43.06,38.36 < 7 |only if walking
Continue up the path |goto 43.35,38.37 < 5 |only if walking
Continue up the path |goto 44.56,38.27 < 7 |only if walking
accept Put Away Your Toys##53012 |goto Stormsong Valley/0 49.96,36.34
|tip You will accept this quest automatically.
stickystart "Kill_Forsaken_Keenblades"
step
clicknpc Prototype Shredder MK-03##138904
Pilot the Prototype Shredder MK-03 |q 53012/1 |goto 51.25,36.72
step
label "Kill_Forsaken_Keenblades"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #60# Horde Soldiers |q 53012/2 |goto 50.35,33.17
|next "Tortollan_Seekers_WQ"
step
label quest-52160
accept Restocking##52160 |goto Stormsong Valley/0 49.80,72.24
|tip You will accept this quest automatically.
stickystart "Collect_Handfuls_of_Scrap"
step
Kill enemies around this area
|tip Click the corpses after looting to carve out the ammunition.
collect 20 Salvaged Azerite Ammunition##156583 |q 52160/1 |goto 49.80,72.24
step
label "Collect_Handfuls_of_Scrap"
click Discarded Toolbox##292765+
|tip They look like small boxes on the ground around this area.
click Metal Scraps##292764+
|tip They look like small pieces of scrap on the ground around this area.
collect 15 Handful of Scraps##161216 |q 52160/2 |goto 49.80,72.24
|next "Tortollan_Seekers_WQ"
step
label quest-51774
Follow the path up |goto Stormsong Valley/0 50.02,69.42 < 10 |only if walking
Continue up the path |goto 48.39,70.13 < 7 |only if walking
Continue down the path |goto 47.63,70.64 < 7 |only if walking
Continue up the path |goto 46.96,71.78 < 7 |only if walking
Continue up the path |goto 46.56,72.78 < 7 |only if walking
Continue following the path |goto 45.96,72.72 < 7 |only if walking
Continue up the path |goto 46.02,74.22 < 7 |only if walking
Continue up the path |goto 46.56,74.59 < 7 |only if walking
Continue following the path |goto 45.84,77.00 < 7 |only if walking
Continue up the path |goto 45.54,77.93 < 7 |only if walking
Continue up the path |goto 44.56,77.82 < 7 |only if walking
Continue following the path |goto 43.63,77.51 < 7 |only if walking
Continue following the path |goto 42.88,76.64 < 7 |only if walking
accept Ragna##51774 |goto Stormsong Valley/0 42.25,75.24
|tip You will accept this quest automatically.
step
kill Ragna##134884 |q 51774/1 |goto 41.60,74.35
|next "Tortollan_Seekers_WQ"
step
label quest-52211
Follow the road |goto Stormsong Valley/0 65.16,48.21 < 7 |only if walking
Cross the bridge |goto 64.58,49.37 < 7 |only if walking
accept Red Sunrise##52211 |goto Stormsong Valley/0 63.55,52.41
|tip You will accept this quest automatically.
stickystart "Kill_Forsaken_Keenblades"
step
kill Meat Shield##140534 |q 52211/2 |goto 62.45,51.22
step
label "Kill_Forsaken_Keenblades"
kill 8 Forsaken Keenblade##136439 |q 52211/1 |goto 61.80,51.10
|next "Tortollan_Seekers_WQ"
step
label quest-51905
Follow the path |goto Stormsong Valley/0 65.64,49.10 < 7 |only if walking
Cross the bridge |goto 67.16,52.49 < 7 |only if walking
Follow the path |goto 68.01,52.26 < 7 |only if walking
Continue following the path |goto 69.65,50.85 < 7 |only if walking
accept Reinforced Hullbreaker##51905 |goto Stormsong Valley/0 70.57,51.54
|tip You will accept this quest automatically.
step
kill Reinforced Hullbreaker##132047
|tip It walks around a the village.
|tip It will appear on your minimap as a yellow dot.
Slay the Reinforced Hullbreaker |q 51905/1 |goto 70.57,51.54
|next "Tortollan_Seekers_WQ"
step
label quest-52142
Follow the path |goto Stormsong Valley/0 50.41,69.99 < 5 |only if walking
Follow the path up |goto 49.97,69.40 < 10 |only if walking
Continue up the path |goto 49.49,71.04 < 10 |only if walking
accept Restocking##52142 |goto Stormsong Valley/0 49.80,72.24
|tip You will accept this quest automatically.
stickystart "Collect_Handfuls_of_Scrap"
step
Kill enemies around this area
|tip Click the corpses after looting to carve out the ammunition.
collect 20 Salvaged Azerite Ammunition##156583 |q 52142/1 |goto 49.80,72.24
step
label "Collect_Handfuls_of_Scrap"
click Discarded Toolbox##292765+
|tip They look like small boxes on the ground around this area.
click Metal Scraps##292764+
|tip They look like small pieces of scrap on the ground around this area.
collect 15 Handful of Scraps##161216 |q 52142/2 |goto 49.80,72.24
|next "Tortollan_Seekers_WQ"
step
label quest-52979
accept Ritual Cleansing##52979 |goto Stormsong Valley/0 66.98,45.54
|tip You will accept this quest automatically.
step
Run up the stairs |goto Stormsong Valley/0 66.93,44.19 < 7 |only if walking
click Tidal Kris##130913
|tip They look like small knives stabbed into the wooden rail along the edges of the ship.
|tip They will appear on your minimap as yellow dots.
Retrieve a Tidal Kris |q 52979/1 |goto 67.33,43.87
stickystart "Slay_K'thir"
step
use the Tidal Kris##162650
|tip Use it next to Fanatical Acolytes around this area.
|tip They look like humans kneeling on purple flaming runes on the ground around this area on the ship.
Disrupt #6# Rituals |q 52979/3 |goto 67.24,43.33
step
label "Slay_K'thir"
Kill enemies around this area
|tip On the ship.
Slay #15# K'thir |q 52979/2 |goto 67.24,43.33
|next "Tortollan_Seekers_WQ"
step
label quest-52164
Follow the path up |goto Stormsong Valley/0 42.45,57.73 < 7 |only if walking
Continue following the path |goto 41.62,57.68 < 7 |only if walking
accept Rum- Paaaage!##52164 |goto Stormsong Valley/0 39.01,55.42
|tip You will accept this quest automatically.
stickystart "Destroy_Irontide_Rum_Stash"
stickystart "Kill_Ookin_Rum_Guards"
step
Follow the path |goto 37.23,54.40 < 10 |only if walking
kill Barrel Master Jojo##140446 |q 52164/3 |goto 35.70,54.88
step
label "Destroy_Irontide_Rum_Stash"
kill Irontide Rum Stash##140365+
|tip They look like clusters of wooden barrels on the ground around this area.
|tip Use the action button that appears onscreen.
Destroy #8# Irontide Rum Stashes |q 52164/1 |goto 35.87,54.84
step
label "Kill_Ookin_Rum_Guards"
kill 6 Ookin Rum Guard##140209 |q 52164/2 |goto 35.87,54.84
|next "Tortollan_Seekers_WQ"
step
label quest-51977
Cross the water |goto Stormsong Valley/0 36.37,34.19 < 10 |only if walking
Enter the cave |goto 34.96,32.64 < 7 |only if walking
accept Sabertron##51977 |goto Stormsong Valley/0 34.55,32.34
|tip You will accept this quest automatically.
step
kill Sabertron Technician##139334
|tip Killing this mob will spawn Sabertron.
kill Sabertron##139335 |q 51977/1 |goto 34.11,32.10
|next "Tortollan_Seekers_WQ"
step
label quest-52309
accept SandFang##52309 |goto Stormsong Valley/0 72.80,61.01
|tip You will accept this quest automatically.
step
kill Sandfang##139988 |q 52309/1 |goto 73.52,60.65
|next "Tortollan_Seekers_WQ"
step
label quest-52316
accept Sea Creatures Are Weird##52316 |goto Stormsong Valley/0 65.02,50.82
|tip You will accept this quest automatically.
step
talk Ellie Vern##141002
Tell her _"Begin pet battle."_
Defeat Ellie Vern |q 52316/1 |goto 65.02,50.82
|next "Tortollan_Seekers_WQ"
step
label quest-52315
Follow the road |goto Stormsong Valley/0 29.31,68.58 < 10 |only if walking
Follow the path up |goto 27.86,69.90 < 10 |only if walking
Follow the path |goto 26.11,70.21 < 10 |only if walking
Follow the path up |goto 23.63,71.30 < 10 |only if walking
accept Severus the Outcast##52315 |goto Stormsong Valley/0 22.58,73.21
|tip You will accept this quest automatically.
step
Jump down here |goto 22.20,71.11 < 7 |only if walking
Follow the path up |goto 21.70,71.57 < 10 |only if walking
Continue up the path |goto 22.05,72.58 < 7 |only if walking
kill Severus the Outcast##140997 |q 52315/1 |goto 22.58,73.21
|next "Tortollan_Seekers_WQ"
step
label quest-51627
accept Shell Game##51627 |goto Stormsong Valley/0 40.37,34.26
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51627/1 |goto 40.37,34.26
step
click Shell
|tip Click the shells to reveal objects.
|tip Match the objects in pairs.
Complete Collector Kojo's Shell Game |q 51627/2 |goto 40.37,34.26
|next "Tortollan_Seekers_WQ"
step
label quest-52446
accept Sister Absinthe##52446 |goto Stormsong Valley/0 61.57,57.06
|tip You will accept this quest automatically.
step
kill Sister Absinthe##141143 |q 52446/1 |goto 61.57,57.06
|next "Tortollan_Seekers_WQ"
step
label quest-51921
accept Slickspill##51921 |goto Stormsong Valley/0 41.80,28.47
|tip You will accept this quest automatically.
step
kill Slickspill##139319 |q 51921/1 |goto 41.80,28.47
|next "Tortollan_Seekers_WQ"
step
label quest-52174
Follow the path |goto Stormsong Valley/0 29.45,65.01 < 10 |only if walking
accept Snakes in the Shallows##52174 |goto Stormsong Valley/0 27.83,60.36
|tip You will accept this quest automatically.
stickystart "Zeth'jir Conduit"
stickystart "Slay_Zeth'jir_Tidecallers"
step
kill Bound Seasurge##134340+
collect 4 Energized Tidecore##161313 |q 52174/3 |goto 27.83,60.36
step
label "Zeth'jir Conduit"
click Zeth'jir Conduit##292530+
|tip They look like purple stones floating above the ground around this area.
Destroy #5# Zeth'jir Conduits |q 52174/2 |goto 27.83,60.36
step
label "Slay_Zeth'jir_Tidecallers"
Kill Zeth'jir enemies around this area
Slay #8# Zeth'jir Tidecallers |q 52174/1 |goto 27.83,60.36
|next "Tortollan_Seekers_WQ"
step
label quest-50591
accept Son of a Bee##50591 |goto Stormsong Valley/0 68.54,65.19
|tip You will accept this quest automatically.
stickystart "Collect_Rich_Honey"
stickystart "Kill_Hive_Guardians"
step
Follow the path |goto Stormsong Valley/0 68.89,66.58 < 7 |only if walking
Continue up the path |goto 70.52,66.47 < 7 |only if walking
Continue up the path |goto 72.27,67.89 < 7 |only if walking
Continue up the path |goto 73.47,67.16 < 7 |only if walking
Enter the cave |goto 74.14,66.92 < 7 |only if walking
kill Dire Barb##140275 |q 50591/3 |goto 74.52,66.77
step
label "Collect_Rich_Honey"
click Bee Hive##296231+
|tip They look like small beehives around this area.
collect Rich Honey##161220 |q 50591/1 |goto 73.00,68.63
step
label "Kill_Hive_Guardians"
kill Hive Guardian##131377+ |q 50591/2 |goto 73.00,68.63
|next "Tortollan_Seekers_WQ"
step
label quest-52452
accept Song Mistress Dadalea##52452 |goto Stormsong Valley/0 70.86,32.23
|tip You will accept this quest automatically.
step
kill Song Mistress Dadalea##141175 |q 52452/1 |goto 70.86,32.23
|next "Tortollan_Seekers_WQ"
step
label quest-53040
Follow the path up |goto Stormsong Valley/0 68.31,62.94 < 10 |only if walking
accept Squall Squelching##53040 |goto Stormsong Valley/0 69.62,58.56
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 3 Surging Mote##163033 |goto 69.62,58.56 |q 53040
step
click Anchor of Binding##294541
Empower the Southern Anchor |q 53040/1 |goto 69.88,58.57
step
click Anchor of Binding##294541
Empower the Eastern Anchor |q 53040/3 |goto 70.76,57.67
step
click Anchor of Binding##294541
Empower the Western Anchor |q 53040/2 |goto 69.87,57.07
|next "Tortollan_Seekers_WQ"
step
label quest-52507
Follow the path |goto Stormsong Valley/0 50.41,69.99 < 5 |only if walking
Follow the path up |goto 49.97,69.40 < 10 |only if walking
Continue up the path |goto 49.49,71.04 < 10 |only if walking
accept Sticky Mess##52507 |goto Stormsong Valley/0 43.20,55.99
|tip You will accept this quest automatically.
stickystart "Remove_12_Parasites"
step
click Parasite Crate
|tip They look like wood crates full of purple parasites on the ground around this area.
|tip If you become disoriented, use the button on your action bar multiple times to free yourself.
Seal #4# Crates |q 52507/2 |goto 43.20,55.99
step
label "Remove_12_Parasites"
clicknpc Deadwash Worker##143880+
|tip They look like frightened creatures with purple parasites on their head running around this area.
|tip You can also find the individual parasites around this area.
|tip Click them and then run away to remove them.
|tip If you become disoriented, use the button on your action bar multiple times to free yourself.
Remove #12# Parasites |q 52507/1 |goto 43.20,55.99
|next "Tortollan_Seekers_WQ"
step
label quest-51982
Cross the bridge |goto Stormsong Valley/0 64.61,49.32 < 7 |only if walking
Follow the road |goto 64.26,50.26 < 10 |only if walking
Continue following the road |goto 63.94,52.02 < 10 |only if walking
Continue following the road |goto 62.95,53.64 < 10 |only if walking
Cross the bridge |goto 61.62,53.92 < 7 |only if walking
Follow the road |goto 60.91,53.41 < 10 |only if walking
accept Storm's Rage##51982 |goto Stormsong Valley/0 58.80,55.98
|tip You will accept this quest automatically.
step
clicknpc Storm's Feather##139615
Ride Storm's Feather |q 51982/1 |goto 58.80,55.98
step
Kill enemies around this area
|tip Use the "Bomb Toss" ability on your action bar.
Destroy the Horde Forces |q 51982/2 |goto 49.51,32.44
|next "Tortollan_Seekers_WQ"
step
label quest-52380
collect 20 Frenzied Fangtooth##152545 |q 52380 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Frenzied Fangtooth##52380 |goto Stormsong Valley/0 59.28,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Supplies Needed: Frenzied Fangtooth##52380 |goto 59.28,69.33
|next "Tortollan_Seekers_WQ"
step
label quest-52236
accept A Thorny Problem##52236 |goto Stormsong Valley/0 49.58,66.90
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Bramble Pod##132207+
|tip They look like small tangles of roots on the ground around this area.
Clear the Fields |q 52236/1 |goto 48.58,64.97
|next "Tortollan_Seekers_WQ"
step
label quest-52322
accept Taja the Tidehowler##52322 |goto Stormsong Valley/0 59.95,45.87
|tip You will accept this quest automatically.
step
kill Taja the Tidehowler##139980 |q 52322/1 |goto 59.95,45.87
|next "Tortollan_Seekers_WQ"
step
label quest-52126
Follow the path up |goto Stormsong Valley/0 50.02,69.42 < 10 |only if walking
Continue up the path |goto 48.39,70.13 < 7 |only if walking
Continue down the path |goto 47.63,70.64 < 7 |only if walking
Continue up the path |goto 46.96,71.78 < 7 |only if walking
Continue up the path |goto 46.56,72.78 < 7 |only if walking
Continue down the path |goto 47.63,70.64 < 7 |only if walking
Continue up the path |goto 46.02,74.22 < 7 |only if walking
Continue up the path |goto 46.56,74.59 < 7 |only if walking
Continue following the path |goto 45.84,77.00 < 7 |only if walking
Continue up the path |goto 45.54,77.93 < 7 |only if walking
Continue up the path |goto 44.56,77.82 < 7 |only if walking
Continue following the path |goto 43.63,77.51 < 7 |only if walking
Continue following the path |goto 42.88,76.64 < 7 |only if walking
accept This Little Piggy Has Sharp Tusks##52126 |goto Stormsong Valley/0 42.53,76.77
|tip You will accept this quest automatically.
step
clicknpc Bristlespine##139987
Defeat Bristlespine |q 52126/1 |goto 42.53,76.77
|next "Tortollan_Seekers_WQ"
step
label quest-52140
Follow the path |goto Stormsong Valley/0 50.25,68.23 < 7 |only if walking
Jump down here |goto 49.76,67.52 < 7 |only if walking
accept A Thorny Problem##52140 |goto Stormsong Valley/0 49.58,66.90
|tip You will accept this quest automatically.
step
clicknpc Bramble Pod##132207+
|tip They look like small tangles of roots on the ground around this area.
Kill enemies around this area
Clear the Fields |q 52140/1 |goto 48.58,64.97
|next "Tortollan_Seekers_WQ"
step
label quest-52054
Follow the road up |goto Stormsong Valley/0 32.62,65.00 < 10 |only if walking
accept Too Much To Bear##52054 |goto Stormsong Valley/0 35.87,65.33
|tip You will accept this quest automatically.
stickystart "Collect_Barbedclaw_Flank"
step
clicknpc Injured Hunter##139801+
|tip They look like injured humans laying on the ground around this area.
Rescue #7# Injured Hunters |q 52054/2 |goto 38.00,63.85
step
label "Collect_Barbedclaw_Flank"
kill Barbedclaw Grizzly##139793+
collect 5 Barbedclaw Flank##161114 |q 52054/1 |goto 38.00,63.85
|next "Tortollan_Seekers_WQ"
step
label quest-51817
Cross the water |goto Stormsong Valley/0 36.02,34.86 < 10 |only if walking
Cross the water |goto 33.25,35.03 < 10 |only if walking
accept Trapped Tortollans##51817 |goto Stormsong Valley/0 32.67,35.08
|tip You will accept this quest automatically.
stickystart "Slay_8_Zeth'jir_Naga"
step
clicknpc Trapped Tortollan##139086+
|tip They look like white spheres with turtles inside floating above the ground around this area.
Free #8# Trapped Tortollans |q 51817/1 |goto 31.56,32.75
step
label "Slay_8_Zeth'jir_Naga"
Kill Zeth'jir enemies around this area
Slay #8# Zeth'jir Naga |q 51817/2 |goto 31.56,32.75
|next "Tortollan_Seekers_WQ"
step
label quest-52200
Cross the water |goto Stormsong Valley/0 39.64,36.71 < 7 |only if walking
accept Turtle Tactics##52200 |goto Stormsong Valley/0 37.32,29.32
|tip You will accept this quest automatically.
step
Follow the path |goto 37.32,29.32 < 10 |only if walking
clicknpc Ai'twen##137560
Mount Ai'twen |q 52200/1 |goto 34.40,26.13
step
Kill Venture Co. enemies around this area
|tip Use the "Sea Mine Toss" ability on your action bar.
Slay #40# Venture Co. Forces |q 52200/2 |goto 37.67,23.95
step
Dismount Ai'twen |outvehicle |q 52200
|tip Click the yellow arrow on your action bar.
|next "Tortollan_Seekers_WQ"
step
label quest-52301
Follow the path |goto Stormsong Valley/0 51.01,69.17 < 7 |only if walking
Enter the cave |goto 50.99,68.67 < 7 |walk
accept Vinespeaker Ratha##52301 |goto Stormsong Valley/0 50.93,68.36
|tip You will accept this quest automatically.
step
Enter the cave |goto 50.99,68.67 < 7 |walk
Enter the cave |goto 50.74,68.22 < 7 |walk
Follow the path down |goto 50.25,68.35 < 7 |walk
kill Vinespeaker Ratha##135939
|tip Inside the cave.
Slay Vinespeaker Ratha |q 52301/1 |goto 47.26,65.85
|next "Tortollan_Seekers_WQ"
step
label quest-52300
accept Wagga Snarltusk##52300 |goto Stormsong Valley/3 40.98,51.71
|tip You will accept this quest automatically.
step
Follow the path |goto 40.98,51.71 < 10 |walk
kill Wagga Snarltusk##130079 |q 52300/1 |goto 11.77,28.81
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-52986
accept A Wicked Vessel##52986 |goto Stormsong Valley/0 66.98,45.54
|tip You will accept this quest automatically.
step
Run up the stairs |goto 66.95,44.19 < 5 |only if walking
Cross the bridge |goto 67.34,44.16 < 5 |only if walking
click Tidal Kris##130913
|tip It will appear on your minimap as a yellow dot.
Retrieve the Tidal Kris |q 52986/1 |goto 67.31,43.62
stickystart "Slay_K'thir"
step
use the Tidal Kris##162650
|tip Use it on Fanatical Acolytes around this area.
|tip They look like humans subdued in purple flame around this area.
Disrupt #6# Rituals |q 52986/3 |goto 67.24,43.33
step
label "Slay_K'thir"
Kill enemies around this area
Slay #15# K'thir |q 52986/2 |goto 67.24,43.33
|next "Tortollan_Seekers_WQ"
step
label quest-52394
collect 5 Contract: Champions of Azeroth##153668 |q 52394 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Contract: Champions of Azeroth##52394 |goto Stormsong Valley/0 40.54,36.41
|tip You will accept this quest automatically.
step
Follow the path |goto 40.48,36.96 < 7 |only if walking
talk Collector Kojo##135793
turnin Work Order: Contract: Champions of Azeroth##52394 |goto 40.54,36.41
|next "Tortollan_Seekers_WQ"
step
label quest-52891
accept Wendigo to Sleep##52891 |goto Stormsong Valley/0 69.31,68.86
|tip You will accept this quest automatically.
step
click Bee Pheromones##
|tip It looks like a tiny orange jar around this area.
Collect Bee Pheromones |q 52891/1 |goto 69.31,68.86
stickystart "Kill_Highlands_Maulers"
step
Follow the path |goto 69.84,70.55 < 10 |only if walking
Continue following the path |goto 69.57,72.64 < 10 |only if walking
Continue following the path |goto 70.01,73.94 < 7 |only if walking
Enter the cave |goto 70.95,75.08 < 5 |walk
kill Ironbeard##142106 |q 52891/3 |goto 71.10,75.70
step
label "Kill_Highlands_Maulers"
kill 12 Honey-Crazed Mauler##131568 |q 52891/2 |goto 69.84,73.57
|next "Tortollan_Seekers_WQ"
step
label quest-52299
Follow the path |goto Stormsong Valley/0 51.99,67.77 < 10 |only if walking
Continue following the path |goto 51.21,66.10 < 10 |only if walking
Continue following the path |goto 49.78,65.58 < 7 |only if walking
accept Whiplash##52299 |goto Stormsong Valley/0 48.49,66.08
|tip You will accept this quest automatically.
step
Jump down here |goto 47.99,65.55 < 7 |only if walking
Enter the cave |goto 47.34,65.35 < 5 |walk
kill Whiplash##129803
|tip Inside the cave.
Slay Whiplash |q 52299/1 |goto 47.29,65.96
|next "Tortollan_Seekers_WQ"
step
label quest-52459
Follow the path up |goto Stormsong Valley/0 40.59,38.18 < 10 |only if walking
Continue following the path |goto 41.58,40.27 < 10 |only if walking
Continue up the path |goto 41.58,42.06 < 7 |only if walking
Continue up the path |goto 42.06,42.13 < 7 |only if walking
Continue up the path |goto 42.39,41.24 < 7 |only if walking
Continue up the path |goto 43.02,40.41 < 7 |only if walking
Continue up the path |goto 43.06,38.36 < 7 |only if walking
Continue up the path |goto 43.35,38.37 < 5 |only if walking
Continue up the path |goto 44.56,38.27 < 7 |only if walking
Continue down the path |goto 45.24,38.34 < 7 |only if walking
Jump down carefully here |goto 46.18,39.60 < 7 |only if walking
accept Whirlwing##52459 |goto Stormsong Valley/0 46.90,42.14
|tip You will accept this quest automatically.
step
kill Whirlwing##142088
|tip It flies around this area.
Slay Whirlwing |q 52459/1 |goto 46.90,42.141
|next "Tortollan_Seekers_WQ"
step
label quest-52344
collect 20 Kul Tiramisu##154881 |q 52344 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Kul Tiramisu##52344 |goto Stormsong Valley/0 40.54,36.41
|tip You will accept this quest automatically.
step
Follow the path |goto 40.48,36.96 < 7 |only if walking
talk Collector Kojo##135793
turnin Work Order: Kul Tiramisu##52344 |goto 40.54,36.41
|next "Tortollan_Seekers_WQ"
step
label quest-50989
collect 40 Storm Silver Ore##152579 |q 50989 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Work Order: Storm Silver Ore##50989 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Storm Silver Ore##50989 |goto 59.29,69.33
|next "Tortollan_Seekers_WQ"
step
label quest-52352
accept Zeritarj##52352 |goto Stormsong Valley/0 31.59,55.08
|tip You will accept this quest automatically.
step
kill Zeritarj##140398 |q 52352/1 |goto 31.59,55.08
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Tiragarde Sound World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Tiragarde Sound, Kul Tiras.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone={895,1161},
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-50322
accept A Feathery Fad##50322 |goto Tiragarde Sound/0 76.67,65.43
|tip You will accept this quest automatically.
stickystart "Collect_Pristine_Skyhunter_Feather"
step
kill Rustfur Matriarch##141051 |q 50322/2 |goto 75.72,62.19
step
label "Collect_Pristine_Skyhunter_Feather"
kill Tiragarde Skyhunter##141049+
|tip They can be flying in the air around this area.
collect 8 Pristine Skyhunter Feather##157538 |q 50322/1 |goto 75.06,62.35
|next "Tortollan_Seekers_WQ"
step
label quest-52057
accept Against the Storm##52057 |goto Boralus/0 63.57,88.30
|tip You will accept this quest automatically.
step
Follow the path up |goto 63.62,86.05 < 7 |only if walking
Continue following the path |goto 65.40,85.48 < 7 |only if walking
Continue following the path |goto 66.48,83.00 < 7 |only if walking
Kill enemies around this area
clicknpc Drowned Scriptures##139699+
|tip They look like floating books around this area.
Disrupt the Monastic Rituals |q 52057/1 |goto 64.35,79.39
|next "Tortollan_Seekers_WQ"
step
label quest-51610
accept Adhara White##51610 |goto Tiragarde Sound/0 85.55,43.39
|tip You will accept this quest automatically.
step
kill Adhara White##138279 |q 51610/1 |goto 85.55,43.39
|next "Tortollan_Seekers_WQ"
step
label quest-52047
Jump down here |goto Boralus/0 76.13,73.77 < 7 |only if walking
Follow the path |goto 75.78,73.89 < 5 |only if walking
Cross the water |goto 71.50,76.13 < 7 |only if walking
accept Against the Storm##52047 |goto Boralus/0 69.02,76.30
|tip You will accept this quest automatically.
step
Follow the path |goto 67.44,75.06 < 7 |only if walking
Kill enemies around this area
clicknpc Drowned Scriptures##139699+
|tip They look like floating books around this area.
Disrupt the Monastic Rituals |q 52047/1 |goto 70.40,55.72
|next "Tortollan_Seekers_WQ"
step
label quest-51225
Follow the path |goto Boralus/0 76.42,72.06 < 5 |only if walking
Continue following the path |goto 69.57,61.91 < 7 |only if walking
Continue following the path |goto 68.21,57.85 < 7 |only if walking
accept Albatrocity##51225 |goto Boralus/0 64.50,60.86
|tip You will accept this quest automatically.
step
clicknpc Terrified Civilian##136284
|tip They look like frightened humans around this area.
Calm #8# Terrified Civillians |q 51225/1 |goto 64.50,60.86
|next "Tortollan_Seekers_WQ"
step
label quest-51653
Run down the stairs |goto Tiragarde Sound/0 77.09,83.36 < 5 |only if walking
Jump down here |goto 76.76,83.48 < 7 |only if walking
Follow the path |goto 76.49,83.45 < 7 |only if walking
Continue following the path |goto 75.54,83.28 < 7 |only if walking
Cross the bridge |goto 75.56,82.58 < 5 |only if walking
accept Auditor Dolp##51653 |goto Tiragarde Sound/0 75.68,78.54
|tip You will accept this quest automatically.
step
Follow the path |goto 75.53,78.13 < 7 |only if walking
kill Auditor Dolp##132182 |q 51653/1 |goto 74.91,78.95
|next "Tortollan_Seekers_WQ"
step
label quest-51586
accept Azerite Empowerment##51586 |goto Tiragarde Sound/0 60.57,47.28
|tip You will accept this quest automatically.
step
kill Tidesage Bankson##138226 |q 51586/1 |goto 60.57,47.28
|next "Tortollan_Seekers_WQ"
step
label quest-52869
accept Azerite Empowerment##52869 |goto Tiragarde Sound/0 52.65,21.66
|tip You will accept this quest automatically.
step
Enter the cave |goto 52.65,21.66 < 5 |walk
kill Alchemist Pitts##141980 |q 52869/1 |goto 53.69,20.26
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51584
accept Azerite Madness##51584 |goto Tiragarde Sound/0 60.89,47.75
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51584/1 |goto 60.89,47.75
|next "Tortollan_Seekers_WQ"
step
label quest-51581
accept Azerite Mining##51581 |goto Tiragarde Sound/0 60.02,47.35
|tip You will accept this quest automatically.
step
Kill Company enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51581/1 |goto 60.02,47.35
|next "Tortollan_Seekers_WQ"
step
label quest-52874
Enter the cave |goto 78.77,53.25 < 10 |walk
accept Azerite Mining##52874 |goto Tiragarde Sound/0 78.89,53.23
|tip You will accept this quest automatically.
step
Enter the cave |goto 78.77,53.25 < 10 |walk
Kill Company enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 52874/1 |goto 78.87,53.21
|next "Tortollan_Seekers_WQ"
step
label quest-51583
accept Azerite Empowerment##51583 |goto Tiragarde Sound/0 60.57,47.28
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 51583/1 |goto 60.57,47.28
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "Tortollan_Seekers_WQ"
step
label quest-51669
accept Black-Eyed Bart##51669 |goto Tiragarde Sound/0 56.27,69.94
|tip You will accept this quest automatically.
|tip Inside the crumbled tower.
step
kill Black-Eyed Bart##132086 |q 51669/1 |goto 56.27,69.94
|tip He walks around this area inside the crumbled tower.
|next "Tortollan_Seekers_WQ"
step
label quest-51652
accept Barman Bill##51652 |goto Tiragarde Sound/0 76.10,82.88
|tip You will accept this quest automatically.
step
Jump down here |goto 76.71,83.11 < 7 |only if walking
kill Barman Bill##129181 |q 51652/1 |goto 76.10,82.88
|next "Tortollan_Seekers_WQ"
step
label quest-51666
accept Bashmu##51666 |goto Tiragarde Sound/0 34.51,30.34
|tip You will accept this quest automatically.
step
kill Bashmu##132068 |q 51666/1 |goto 34.51,30.34
|next "Tortollan_Seekers_WQ"
step
label quest-51638
accept Beachhead##51638 |goto Tiragarde Sound/0 58.06,76.22
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##144356
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51638/1 |goto 58.06,76.22
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #15# Juvenile Turtles Reach the Ocean |q 51638/2 |goto 58.06,76.22
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "Tortollan_Seekers_WQ"
step
label quest-51241
Follow the road |goto Tiragarde Sound/0 67.48,23.51 < 10 |only if walking
Jump down here |goto 69.13,21.37 < 7 |only if walking
Run up the stairs |goto 69.26,19.45 < 5 |only if walking
Cross the bridge |goto 69.44,19.23 < 5 |only if walking
accept The Bear Witch Project##51241 |goto Tiragarde Sound/0 71.09,17.84
|tip You will accept this quest automatically.
step
kill 10 Enthralled Ashclaw##130085 |q 51241/1 |goto 71.09,17.84
|next "Tortollan_Seekers_WQ"
step
label quest-51671
accept Billy Goat Barber##51671 |goto Tiragarde Sound/0 44.15,20.68
|tip You will accept this quest automatically.
step
click Gentle Goat##129110+
collect 6 Goat Fur##155681 |q 51671/1 |goto 44.15,20.68
|next "Tortollan_Seekers_WQ"
step
label quest-50296
accept Billy Goat Barber##50296 |goto Tiragarde Sound/0 44.15,20.68
|tip You will accept this quest automatically.
step
click Gentle Goat##129110+
collect 6 Goat Fur##155681 |q 50296/1 |goto 44.15,20.68
|next "Tortollan_Seekers_WQ"
step
label quest-51841
Jump down here |goto Tiragarde Sound/0 86.29,80.82 < 7 |only if walking
Follow the path |goto 86.02,80.61 < 7 |only if walking
Continue following the path |goto 86.13,79.42 < 10 |only if walking
Continue following the path |goto 85.68,76.57 < 10 |only if walking
Continue up the path |goto 84.59,75.28 < 10 |only if walking
accept Blackthorne##51841 |goto Tiragarde Sound/0 84.38,73.75
|tip You will accept this quest automatically.
step
Follow the path up |goto 84.02,72.48 < 7 |only if walking
Continue up the path |goto 84.29,72.40 < 7 |only if walking
kill Blackthorne##139145 |q 51841/1 |goto 85.27,73.44
|next "Tortollan_Seekers_WQ"
step
label quest-51613
accept Bloodmaw##51613 |goto Tiragarde Sound/0 58.88,33.40
|tip You will accept this quest automatically.
step
kill Bloodmaw##138299 |q 51613/1 |goto 58.88,33.40
|next "Tortollan_Seekers_WQ"
step
label quest-52755
accept Bringing the Heat##52755 |goto Tiragarde Sound/0 44.81,15.02
|tip You will accept this quest automatically.
stickystart "Kill_Steam_Elementals_52755"
step
kill Prince Rathaw##129590 |q 52755/2 |goto 48.67,14.62
step
label "Kill_Steam_Elementals_52755"
kill 5 Steam Elemental##129484 |q 52755/1 |goto 46.63,14.41
|next "Tortollan_Seekers_WQ"
step
label quest-51665
accept Broodmother Razora##51665 |goto Tiragarde Sound/0 83.54,44.83
|tip You will accept this quest automatically.
step
kill Broodmother Razora##130508 |q 51665/1 |goto 83.54,44.83
|next "Tortollan_Seekers_WQ"
step
label quest-51848
Follow the path |goto Tiragarde Sound/0 42.06,22.42 < 7 |only if walking
Continue down the path |goto 41.60,22.39 < 7 |only if walking
Continue following the path |goto 40.73,22.97 < 7 |only if walking
Continue following the path |goto 38.92,22.21 < 7 |only if walking
Enter the cave |goto 38.73,21.86 < 7 |walk
accept Captain Wintersail##51848 |goto Tiragarde Sound/0 38.82,22.03
|tip You will accept this quest automatically.
step
Enter the cave |goto 38.73,21.86 < 7 |walk
Follow the path |goto 38.52,20.95 < 5 |walk
click Smuggler's Cache##280649
|tip Inside the cave.
Watch the dialogue
kill Barman Bill##129181 |q 51848/1 |goto 38.44,20.71
|next "Tortollan_Seekers_WQ"
step
label quest-51842
accept Carla Smirk##51842 |goto Tiragarde Sound/0 72.65,81.46
|tip You will accept this quest automatically.
step
kill Carla Smirk##139152 |q 51842/1 |goto 88.62,80.20
|next "Tortollan_Seekers_WQ"
step
label quest-53314
Follow the path |goto Tiragarde Sound/0 67.30,22.88 < 7 |only if walking
Continue following the path |goto 67.62,21.35 < 7 |only if walking
Continue following the path |goto 67.75,20.19 < 10 |only if walking
accept Coarse Storm Silver##53314 |goto Tiragarde Sound/0 68.29,18.93
|tip You will accept this quest automatically.
step
click Coarse Storm Silver Deposit
collect Coarse Storm Silver##163626 |q 53314/1 |goto 68.29,18.93
|next "Tortollan_Seekers_WQ"
step
label quest-51405
Cross the water |goto Tiragarde Sound/0 73.07,42.04 < 10 |only if walking
accept Corruption in the Bay##51405 |goto Tiragarde Sound/0 32.62,25.68
|tip You will accept this quest automatically.
step
Kill enemies around this area
Purge the Corruption |q 51405/1 |goto 32.62,25.68
|next "Tortollan_Seekers_WQ"
step
label quest-50234
accept Crews of Freehold##50234 |goto Tiragarde Sound/0 76.37,83.26
|tip You will accept this quest automatically.
stickystart "Collect_Cutwater_Corsair_Orders"
stickystart "Collect_Blackwater_Bruiser_Orders"
step
Kill enemies around this area
collect Bilge Rat Orders##153680 |q 50234/1 |goto 76.37,83.26
step
label "Collect_Cutwater_Corsair_Orders"
Kill enemies around this area
collect Cutwater Corsair Orders##153681 |q 50234/2 |goto 76.37,83.26
step
label "Collect_Blackwater_Bruiser_Orders"
Kill enemies around this area
collect Blacktooth Bruiser Orders##153682 |q 50234/3 |goto 76.37,83.26
|next "Tortollan_Seekers_WQ"
step
label quest-51579
Cross the water |goto Tiragarde Sound/0 64.04,30.73 < 10 |only if walking
Follow the path up |goto Boralus/0 33.11,53.11 < 5 |only if walking
Continue up the path |goto 33.92,55.78 < 5 |only if walking
Follow the path |goto 34.07,58.37 < 7 |only if walking
accept Dark Ranger Clea##51579 |goto Boralus/0 31.77,63.71
|tip You will accept this quest automatically.
step
Continue up the path |goto 33.92,55.78 < 5 |only if walking
Follow the path |goto 34.07,58.37 < 7 |only if walking
Continue following the path |goto 33.42,62.20 < 10 |only if walking
kill Dark Ranger Clea##138039 |q 51579/1 |goto 31.77,63.71
|next "Tortollan_Seekers_WQ"
step
label quest-51577
accept Defending the Academy##51577 |goto Boralus/0 30.25,64.00
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Fallen Marine##138166+
|tip They look like dead human soldiers on the ground around this area.
click Harpoon Rack##297580+
|tip They look like weapon racks with spears on them on the ground around this area.
|tip You will pick up a harpoon.
click Harpoon Cannon+
|tip They look like gray metal cannons mounted on the edges of walls on the ground around this area.
|tip They will fire and sometimes pull an enemy out of the sky for you to kill.
Hold Back the Horde |q 51577/1 |goto 26.02,63.20
|next "Tortollan_Seekers_WQ"
step
label quest-53076
accept Foundry Meltdown##53076 |goto Tiragarde Sound/0 77.56,49.62
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Experimental Azerite Weapons##295817+
|tip They look like a trio of glowing bombs on the ground around this area.
click Unfinished Irontide Cannon##296064+
|tip They look like large cannons on the ground around this area.
Delay the Foundry Production |q 53076/1 |goto 80.17,47.85
|next "Tortollan_Seekers_WQ"
step
label quest-51284
Follow the path |goto Tiragarde Sound/0 53.15,29.26 < 7 |only if walking
Continue following the path |goto 53.58,29.24 < 7 |only if walking
Continue following the path |goto 53.95,28.68 < 7 |only if walking
Jump down here |goto 54.23,28.05 < 7 |only if walking
Follow the path |goto 55.35,27.60 < 7 |only if walking
Follow the path up |goto 55.72,27.34 < 7 |only if walking
accept Falcon Hunt##51284 |goto Tiragarde Sound/0 57.72,26.40
|tip You will accept this quest automatically.
step
clicknpc Hollowbeak Falcon##126626+
|tip They look like birds flying in the air around this area.
use the Bola Launcher##152643
|tip Use it on Hollowbeak Falcons.
Shoot Down #8# Hollowbeak Falcons |q 51284/1 |goto 57.72,26.40
|next "Tortollan_Seekers_WQ"
step
label quest-50776
Run down the stairs |goto Boralus/0 67.33,16.26 < 5 |only if walking
Follow the path |goto 65.84,20.41 < 7 |only if walking
Run down the stairs |goto 62.95,20.38 < 7 |only if walking
Follow the path |goto 62.58,23.38 < 10 |only if walking
Run up the stairs |goto 62.90,27.74 < 7 |only if walking
Run down the stairs |goto 60.16,30.23 < 7 |only if walking
accept False Prophets##50776 |goto Boralus/0 60.08,34.99
|tip You will accept this quest automatically.
step
clicknpc Tidesage Doomspeaker##134845+
|tip They look like hooded humans around this area.
kill 3 Corrupted Surge##142556 |q 50776/1 |goto 85.55,43.39
|next "Tortollan_Seekers_WQ"
step
label quest-52144
Follow the path |goto Tiragarde Sound/0 76.04,49.14 < 7 |only if walking
Follow the road |goto 76.61,48.96 < 7 |only if walking
Continue following the road |goto 77.30,49.47 < 10 |only if walking
accept Foundry Meltdown##52144 |goto Tiragarde Sound/0 78.74,49.67
|tip You will accept this quest automatically.
step
Follow the path |goto 79.68,49.76 < 10 |only if walking
Kill enemies around this area
click Experimental Azerite Weapons##295817+
|tip They look like a trio of glowing bombs on the ground around this area.
click Unfinished Irontide Cannon##296064+
|tip They look like large cannons on the ground around this area.
Delay the Foundry Production |q 52144/1 |goto 80.17,47.85
|next "Tortollan_Seekers_WQ"
step
label quest-51654
accept Fowlmouth##51654 |goto Tiragarde Sound/0 90.45,77.11
|tip You will accept this quest automatically.
step
kill Fowlmouth##132211 |q 51654/1 |goto 90.45,77.11
|next "Tortollan_Seekers_WQ"
step
label quest-51662
Follow the path up |goto Tiragarde Sound/0 63.71,30.02 < 7 |only if walking
Continue up the path |goto 62.49,28.08 < 7 |only if walking
Continue up the path |goto 61.81,28.53 < 7 |only if walking
Continue up the path |goto 60.67,28.43 < 7 |only if walking
Continue following the path |goto 60.27,28.02 < 7 |only if walking
Continue following the path |goto 59.74,27.80 < 7 |only if walking
Continue up the path |goto 59.54,27.09 < 7 |only if walking
Continue up the path |goto 60.21,26.62 < 7 |only if walking
Continue down the path |goto 60.50,24.71 < 7 |only if walking
accept Foxhollow Skyterror##51662 |goto Tiragarde Sound/0 60.11,22.18
|tip You will accept this quest automatically.
step
kill Foxhollow Skyterror##132127 |q 51662/1 |goto 60.11,22.18
|next "Tortollan_Seekers_WQ"
step
label quest-53188
Jump down here |goto Tiragarde Sound/0 75.63,64.21 < 7 |only if walking
Follow the road |goto 75.46,63.29 < 10 |only if walking
Follow the path |goto 72.51,63.83 < 10 |only if walking
Continue up the path |goto 70.55,64.27 < 10 |only if walking
Continue up the path |goto 69.79,65.46 < 7 |only if walking
Continue up the path |goto 68.84,66.98 < 7 |only if walking
Continue up the path |goto 68.98,67.74 < 3 |only if walking
Continue up the path |goto 69.31,67.74 < 7 |only if walking
Continue up the path |goto 69.28,68.27 < 7 |only if walking
accept Frozen Freestyle##53188 |goto Tiragarde Sound/0 68.50,68.73
|tip You will accept this quest automatically.
step
talk Pengling Sledding Barker##131575
Talk to the Penguing Sledding Barker |q 53188/1 |goto 63.49,74.49
step
clicknpc Racing Pengling##131523
|tip Avoid the small mounds of snow on the ground around this area.
Ride the Pengling to the Goal |q 53188/2 |goto 63.49,74.49
|next "Tortollan_Seekers_WQ"
step
label quest-52119
accept Goblin Azerite Extraction##52119 |goto Tiragarde Sound/0 75.74,55.30
|tip You will accept this quest automatically.
step
Kill the enemies that attack in waves
Protect the Azerite Extractor |q 52119/1 |goto 75.74,55.30
|next "Tortollan_Seekers_WQ"
step
label quest-51611
accept Ghost of the Deep##51611 |goto Tiragarde Sound/0 69.20,47.08
|tip You will accept this quest automatically.
step
kill Ghost of the Deep##138288 |q 51611/1 |goto 69.60,46.73
|next "Tortollan_Seekers_WQ"
step
label quest-52120
Follow the road |goto Tiragarde Sound/0 76.30,64.61 < 10 |walk
Jump down here |goto 76.69,62.96 < 7 |only if walking
Follow the path down |goto 76.59,61.02 < 7 |only if walking
Jump down here |goto 76.16,60.03 < 7 |only if walking
Follow the path |goto 76.61,58.85 < 7 |only if walking
accept Gnomish Azerite Extraction##52120 |goto Tiragarde Sound/0 77.60,58.87
|tip You will accept this quest automatically.
step
Kill Azerite enemies around this area
|tip They will periodically attack the Azerite Extractor
Protect the Azerite Extractor |q 52120/1 |goto 77.60,58.87
|next "Tortollan_Seekers_WQ"
step
label quest-51317
Jump down here |goto Tiragarde Sound/0 53.13,27.51 < 10 |only if walking
Follow the path |goto 53.18,26.18 < 10 |only if walking
Continue following the path |goto 54.03,21.21 < 10 |only if walking
Continue following the path |goto 54.59,19.53 < 10 |only if walking
accept Grounding the Grimestone##51317 |goto Tiragarde Sound/0 56.27,17.37
|tip You will accept this quest automatically.
step
Kill Grimstone enemies around this area
Slay #12# Grimstone Troggs |q 51317/1 |goto 57.16,16.92
|next "Tortollan_Seekers_WQ"
step
label quest-50299
accept Gryphon Wranglin'##50299 |goto Tiragarde Sound/0 43.98,21.39
|tip You will accept this quest automatically.
step
clicknpc Wild Gryphon##129001
|tip It flies around this area.
use the Tether Shot##156928
|tip Use it on a Wild Gryphon.
Mount the Wild Gryphon |invehicle |goto 43.98,21.39 |q 50299
step
Fight the gryphon
|tip Use all of the abilites on your action bar as soon as they are available.
Wrangle a Wild Gryphon |q 50299/2 |goto 43.98,21.39
|next "Tortollan_Seekers_WQ"
step
label quest-51844
accept Gulliver##51844 |goto Tiragarde Sound/0 57.84,55.91
|tip You will accept this quest automatically.
step
kill Gulliver##139233 |q 51844/1 |goto 57.84,55.91
|next "Tortollan_Seekers_WQ"
step
label quest-52145
Jump down here |goto Tiragarde Sound/0 76.98,82.96 < 3 |only if walking
Jump down here |goto 76.90,82.28 < 7 |only if walking
Follow the path |goto 77.06,81.41 < 7 |only if walking
Cross the water |goto 77.02,80.05 < 7 |only if walking
Follow the path |goto 76.96,78.74 < 7 |only if walking
accept Heave-Ho!##52145 |goto Tiragarde Sound/0 76.80,77.21
|tip You will accept this quest automatically.
step
Cross the water |goto 76.61,77.06 < 7 |only if walking
click Tangled Rigging##276243
|tip Each time you click it, run away from the post.
click "Sea Dog" Grog##276235
|tip Eventually, you will pull this in.
collect "Sea Dog" Grog##152667 |q 52145/1 |goto 77.04,76.28
|next "Tortollan_Seekers_WQ"
step
label quest-51245
Follow the path up |goto Tiragarde Sound/0 67.32,22.82 < 7 |only if walking
Continue following the path |goto 67.60,21.40 < 7 |only if walking
accept I'm a Lumberjack and I'm Okay##51245 |goto Tiragarde Sound/0 68.31,18.42
|tip You will accept this quest automatically.
stickystart "Slay_Wicker_Invaders"
step
clicknpc Entangled Lumberjack##143791+
|tip They look like humans tangled in vines on the ground around this area.
Free #4# Entangled Lumberjacks |q 51245/1 |goto 68.31,18.42
step
label "Slay_Wicker_Invaders"
Kill enemies around this area
Slay #8# Wicker Invaders |q 51245/2 |goto 68.31,18.42
|next "Tortollan_Seekers_WQ"
step
label quest-51664
accept Kulett the Ornery##51664 |goto Tiragarde Sound/0 47.81,22.28
|tip You will accept this quest automatically.
step
kill Kulett the Ornery##131520 |q 51664/1 |goto 47.81,22.28
|next "Tortollan_Seekers_WQ"
step
label quest-52805
accept Like Pulling Teeth##52805 |goto Tiragarde Sound/0 41.76,14.74
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Wendigo_Teeth"
step
Enter the cave |goto 43.11,13.42 < 10 |walk
kill Gore Horn##140404 |q 52805/2 |goto 43.62,12.65
step
label "Collect_Intact_Wendigo_Teeth"
Kill Wendigo enemies around this area
collect 25 Intact Wendigo Tooth##161312 |q 52805/1 |goto 41.76,14.74
|next "Tortollan_Seekers_WQ"
step
label quest-50295
accept Like Pulling Teeth##50295 |goto Tiragarde Sound/0 41.76,14.74
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Wendigo_Teeth"
step
Enter the cave |goto 43.11,13.42 < 10 |walk
kill Gore Horn##140404 |q 50295/2 |goto 43.62,12.65
step
label "Collect_Intact_Wendigo_Teeth"
Kill Wendigo enemies around this area
collect 25 Intact Wendigo Tooth##161312 |q 50295/1 |goto 41.76,14.74
|next "Tortollan_Seekers_WQ"
step
label quest-51406
Follow the path |goto Tiragarde Sound/0 53.14,29.29 < 7 |only if walking
Continue following the path |goto 53.64,29.18 < 7 |only if walking
Jump down here |goto 53.93,28.60 < 7 |only if walking
Jump down here |goto 54.13,28.35 < 7 |only if walking
Jump down here |goto 54.32,28.09 < 7 |only if walking
Follow the path up |goto 55.35,27.53 < 7 |only if walking
accept The Lord's Hunt##51406 |goto Tiragarde Sound/0 57.41,26.07
|tip You will accept this quest automatically.
step
Kill enemies around this area
Join in the Hunt! |q 51406/1 |goto 76.10,82.88
|next "Tortollan_Seekers_WQ"
step
label quest-51895
accept Maison the Portable##51895 |goto Tiragarde Sound/0 58.16,50.09
|tip You will accept this quest automatically.
step
kill Maison the Portable##139290 |q 51895/1 |goto 58.16,50.09
|tip He walks around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-51632
accept Make Loh Go##51632 |goto Tiragarde Sound/0 61.80,31.36
|tip You will accept this quest automatically.
step
talk Toki##144361
Tell him _"I am ready."_
Speak to Toki |q 51632/1 |goto 61.74,31.41
step
Guide Loh to the Goal |q 51632/2 |goto 61.80,31.36
|tip Use the arrows to guide Loh to the flags.
|tip You cannot cross your own path or you will have to start over.
|next "Tortollan_Seekers_WQ"
step
label quest-51659
Follow the path |goto Tiragarde Sound/0 42.67,22.51 < 7 |only if walking
Continue following the path |goto 43.20,22.42 < 7 |only if walking
Follow the path up |goto 43.89,21.68 < 7 |only if walking
Continue up the path |goto 44.27,20.12 < 7 |only if walking
Follow the path |goto 43.92,18.31 < 7 |only if walking
Enter the cave |goto 43.45,17.16 < 10 |walk
accept Ghost of the Deep##51659 |goto Tiragarde Sound/0 69.20,47.08
|tip You will accept this quest automatically.
step
Enter the cave |goto 43.45,17.16 < 10 |walk
kill Merianae##131252
|tip Inside the cave.
Slay Merianae |q 51659/1 |goto 43.06,16.78
|next "Tortollan_Seekers_WQ"
step
label quest-50315
Follow the path |goto Tiragarde Sound/0 66.20,50.82 < 10 |only if walking
Follow the path up |goto 67.06,51.99 < 10 |only if walking
accept Not On the Itinerary##50315 |goto Tiragarde Sound/0 67.22,54.73
|tip You will accept this quest automatically.
step
click Volatile Bubble##278479+
|tip They look like shimmering bubbles floating above the ground around this area.
clicknpc Terrified Guest##133419+
|tip They look like frightened people running around this area.
Kill enemies around this area
kill Tort Jaw##139235 |q 50315/1 |goto 67.32,55.65
|next "Tortollan_Seekers_WQ"
step
label quest-52430
accept Not So Bad Down Here##52430 |goto Tiragarde Sound/0 86.21,38.63
|tip You will accept this quest automatically.
step
talk Kwint##141077
|tip Underwater.
Tell him _"Begin pet battle."_
Defeat Kwint |q 52430/1 |goto 86.21,38.63
|next "Tortollan_Seekers_WQ"
step
label quest-50324
accept Picturesque Fizzsprings Resort##50324 |goto Tiragarde Sound/0 64.45,53.46
|tip You will accept this quest automatically.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the 3 pools of water nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Secluded Spring |q 50324/4 |goto 64.44,53.43
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 50324
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and an Enriched Rockshell are on the screen.
|tip They look like turtles on the ground around this area.
|tip Use the "Take Selfie" ability on your action bar.
Capture an Enriched Rockshell |q 50324/1 |goto 66.54,55.71
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 50324
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the building nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Resort Lodge |q 50324/2 |goto 67.14,56.09
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 50324
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and a Midland Fawn are on the screen.
|tip They look like tiny deer on the ground around this area.
|tip Use the "Take Selfie" ability on your action bar.
Capture a Midland Fawn |q 50324/3 |goto 69.16,54.44
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
|next "Tortollan_Seekers_WQ"
step
label quest-51843
accept P4-N73R4##51843 |goto Tiragarde Sound/0 64.77,63.32
|tip You will accept this quest automatically.
step
kill P4-N73R4##139205 |q 51843/1 |goto 38.90,15.30
|next "Tortollan_Seekers_WQ"
step
label quest-51462
accept Paratroopers##51462 |goto Tiragarde Sound/0 67.09,21.38
|tip You will accept this quest automatically.
step
talk Paratrooper Ort##139434
Receive Orders from Paratrooper Ort |q 51462/1 |goto 67.09,21.38
step
talk Paratrooper Ort##139434
Tell him _"I need to infiltrate the Proudmoore Barracks."_
Mount the Grand Wyvern |invehicle |goto 67.09,21.38
step
Drop Into Proudmoore Academy |outvehicle |goto Boralus/0 38.59,38.55
|tip Use the "Drop Glider" ability on your action bar.
stickystart "Slay_Proudmoore_Barracks_Guards"
step
kill Drill Sergeant Smithson##137790 |q 51462/3 |goto 35.71,37.90
|tip Inside the building.
step
label "Slay_Proudmoore_Barracks_Guards"
Kill Proudmoore enemies around this area
Slay #10# Proudmoore Barracks Guards |q 51462/2 |goto 38.59,38.55
|next "Tortollan_Seekers_WQ"
step
label quest-51646
accept Polly Want A Cracker?##51646 |goto Tiragarde Sound/0 76.94,83.19
|tip You will accept this quest automatically.
step
clicknpc Runaway Macaw##132339
|tip They look like bright colored birds flying around this area.
use Rodrigo's Birdseed Biscuit##154878
|tip Use it on Runaway Macaws.
Feed #6# Runaway Macaws |q 51646/1 |goto 76.94,83.19
|next "Tortollan_Seekers_WQ"
step
label quest-51660
Enter the cave |goto 39.88,14.90 < 10 |walk
accept Pack Leader Asenya##51660 |goto Tiragarde Sound/0 69.20,47.08
|tip You will accept this quest automatically.
step
Enter the cave |goto 39.88,14.90 < 10 |walk
kill Pack Leader Asenya##131262 |q 51660/1 |goto 38.90,15.30
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51092
accept Picturesque Boralus##51092 |goto Boralus/0 47.91,65.32
|tip You will accept this quest automatically.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the guard.
Capture the Admiral's Elite Guard |q 51092/6 |goto 49.73,64.15
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the steps.
Capture the Proudmoore Keep Steps |q 51092/3 |goto 49.46,62.64
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the fountain.
Capture the Upper Square |q 51092/5 |goto 51.03,62.80
step
Run up the stairs |goto 48.91,62.54 < 10 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the door.
Capture the Proudmoore Keep Door |q 51092/2 |goto 44.89,62.60
step
Follow the path |goto 44.73,67.21 < 7 |only if walking
Run up the stairs |goto 43.38,67.79 < 7 |only if walking
Follow the path |goto 42.81,72.54 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the hedge maze.
Capture the Maze Fountain |q 51092/4 |goto 40.80,75.53
step
Jump down here |goto 43.78,75.67 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the plaza statue.
Capture the Embassy Plaza |q 51092/1 |goto 46.07,77.52
|next "Tortollan_Seekers_WQ"
step
label quest-51090
accept Picturesque Norwington Estate##51090 |goto Tiragarde Sound/0 52.85,28.67
|tip You will accept this quest automatically.
step
Follow the road up |goto Tiragarde Sound/0 52.66,29.03 < 7 |only if walking
Continue following the road |goto 52.76,30.12 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the building entrance.
Capture the Estate Entrance |q 51090/1 |goto 53.00,30.48
step
Enter the building |goto 53.26,30.85 < 3 |walk
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from Lady Norwington.
|tip She walks around.
Capture Lady Norwington |q 51090/4 |goto 53.72,31.37
step
Leave the building |goto 53.27,30.85 < 3 |only if walking
Follow the road down |goto 52.67,29.97 < 7 |only if walking
Jump down here |goto 52.49,28.09 < 7 |only if walking
Follow the path |goto 52.36,27.54 < 7 |only if walking
Continue following the path |goto 51.96,26.67 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from Magoo.
Capture Magoo |q 51090/5 |goto 51.40,25.82
step
Follow the road |goto 51.21,25.93 < 7 |only if walking
Continue following the road |goto 50.84,25.64 < 7 |only if walking
Run up the stairs |goto 50.37,26.07 < 7 |only if walking
Follow the path |goto 49.95,25.41 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the Award Podium.
Capture the Award Podium |q 51090/3 |goto 50.18,24.92
step
Jump down here |goto 49.27,24.36 < 10 |only if walking
Jump down here |goto 48.58,24.12 < 7 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Use it facing away from the huge waterfall.
Capture the Tall Waterfall |q 51090/2 |goto 48.06,23.73
|next "Tortollan_Seekers_WQ"
step
label quest-50164
accept Polly Want A Cracker?##50164 |goto Tiragarde Sound/0 76.94,83.19
|tip You will accept this quest automatically.
step
clicknpc Runaway Macaw##132339
|tip They look like bright colored birds flying around this area.
use Rodrigo's Birdseed Biscuit##154878
|tip Use it on Runaway Macaws.
Feed #6# Runaway Macaws |q 50164/1 |goto 76.94,83.19
|next "Tortollan_Seekers_WQ"
step
label quest-51580
accept Rear Admiral Hainsworth##51580 |goto Tiragarde Sound/0 70.99,49.44
|tip You will accept this quest automatically.
step
talk Paratrooper Jacobs##139776
Receive Orders from Paratrooper Jacobs |q 51580/1 |goto 70.99,49.44
step
talk Paratrooper Jacobs##139776
Tell him _"I need to infiltrate the Proudmoore Academy."_
Mount the Riding Bat |invehicle |goto 70.99,49.44
step
Drop Into Proudmoore Academy |outvehicle |goto Boralus/0 31.44,63.99
|tip Use the "Drop Glider" ability on your action bar.
step
kill Rear Admiral Hainsworth##137983 |q 51580/2 |goto 31.44,63.99
|next "Tortollan_Seekers_WQ"
step
label quest-51661
accept Raging Swell##51661 |goto Tiragarde Sound/0 64.74,58.66
|tip You will accept this quest automatically.
step
kill Raging Swell##132179 |q 51661/1 |goto 64.74,58.66
|next "Tortollan_Seekers_WQ"
step
label quest-51890
Follow the road |goto Tiragarde Sound/0 76.37,63.54 < 10 |only if walking
Continue following the road |goto 74.19,63.07 < 10 |only if walking
Continue following the road |goto 73.44,62.42 < 10 |only if walking
Continue following the road |goto 71.38,63.05 < 10 |only if walking
Follow the path |goto 69.85,62.63 < 7 |only if walking
accept Ranja the Last Chillpaw##51890 |goto Tiragarde Sound/0 68.31,63.54
|tip You will accept this quest automatically.
step
kill Ranja##139278 |q 51890/1 |goto 68.31,63.54
|next "Tortollan_Seekers_WQ"
step
label quest-53313
Follow the path |goto Tiragarde Sound/0 66.17,22.65 < 10 |only if walking
Cross the water |goto 65.77,22.37 < 10 |only if walking
Follow the path |goto 65.03,21.99 < 10 |only if walking
accept Rough Monelite##53313 |goto Tiragarde Sound/0 62.72,18.37
|tip You will accept this quest automatically.
step
click Rough Monelite Deposit##297467
collect Monelite Ore##152512 |q 53313/1 |goto 62.65,17.78
|next "Tortollan_Seekers_WQ"
step
label quest-51578
accept The Sea Runs Red##51578 |goto Tiragarde Sound/0 70.99,49.44
|tip You will accept this quest automatically.
step
clicknpc Paratrooper Jacobs##139776
Receive Orders from Paratrooper Jacobs |q 51578/1 |goto 70.99,49.44
step
talk Paratrooper Jacobs##139776
Tell him _"I need to infiltrate the Proudmoore Academy."_
Mount the Riding Bat |invehicle |goto 70.99,49.44
step
Drop Into Proudmoore Academy |outvehicle |goto Boralus/0 32.07,67.53
|tip Use the "Drop Glider" ability on your action bar.
step
click Military Documents##290532+
|tip They look like small stacks of papers on tables around this area.
Kill enemies around this area
Siege the Academy and Alliance Forces |q 51578/2 |goto 32.07,67.53
|next "Tortollan_Seekers_WQ"
step
label quest-51656
Follow the road |goto Tiragarde Sound/0 66.21,22.59 < 7 |only if walking
Continue following the road |goto 65.86,21.37 < 7 |only if walking
Continue following the road |goto 64.50,18.62 < 7 |only if walking
Jump down here |goto 63.75,18.09 < 7 |only if walking
Follow the path |goto 61.91,16.46 < 10 |only if walking
accept Saurolisk Tamer Mugg##51656 |goto Tiragarde Sound/0 60.81,17.31
|tip You will accept this quest automatically.
step
click Suspicious Pile of Meat##281172
|tip Kill the wave of enemies that spawns.
kill Mugg##127290 |q 51656/1 |goto 60.81,17.31
|next "Tortollan_Seekers_WQ"
step
label quest-51893
accept Sawtooth##51893 |goto Boralus/0 78.15,46.22
|tip You will accept this quest automatically.
step
kill Sawtooth##139287
|tip It swims around underwater around this area.
Slay Sawtooth |q 51893/1 |goto 78.15,46.22
|next "Tortollan_Seekers_WQ"
step
label quest-50767
Run down the stairs |goto Boralus/0 67.33,16.21 < 7 |only if walking
Follow the path |goto 65.93,20.44 < 7 |only if walking
Continue following the path |goto 63.08,20.56 < 7 |only if walking
Continue following the path |goto 59.03,22.82 < 7 |only if walking
Continue following the path |goto 57.98,24.95 < 7 |only if walking
Run up the stairs |goto 57.72,30.04 < 7 |only if walking
Follow the path |goto 58.36,35.95 < 7 |only if walking
Follow the path |goto 56.88,38.36 < 7 |only if walking
accept The Scrimshaw Gang##50767 |goto Tiragarde Sound/0 70.49,29.58
|tip You will accept this quest automatically.
stickystart "Destroy_Bootleg_Weapon_Crates"
step
Follow the path |goto 70.17,29.72 < 7 |only if walking
Continue following the path |goto 70.20,30.87 < 10 |only if walking
Enter the building |goto 70.56,30.65 < 3 |walk
Run down the stairs |goto 70.85,30.33 < 5 |walk
kill Don Adams##138603
|tip Inside the building.
Slay Don Adams |q 50767/2 |goto 70.62,30.33
step
label "Destroy_Bootleg_Weapon_Crates"
Kill Scrimshaw enemies around this area
collect Scrimshaw Ledger##158677 |q 50767/1 |goto 70.15,30.67
|next "Tortollan_Seekers_WQ"
step
label quest-51626
accept Shell Game##51626 |goto Tiragarde Sound/0 63.55,57.25
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51626/1 |goto 63.55,57.25
step
click Shell+
|tip Click the shells to reveal objects.
|tip Match the objects in pairs.
Complete Collector Kojo's Shell Game |q 51626/2 |goto 63.55,57.25
|next "Tortollan_Seekers_WQ"
step
label quest-51892
accept Shiverscale the Toxic##51892 |goto Tiragarde Sound/0 55.11,32.40
|tip You will accept this quest automatically.
step
kill Shiverscale the Toxic##139285 |q 51892/1 |goto 55.11,32.40
|next "Tortollan_Seekers_WQ"
step
label quest-53331
accept Show-Off##53331 |goto Tiragarde Sound/0 51.65,26.20
|tip You will accept this quest automatically.
step
clicknpc Cooper##127718
Mount Cooper |q 53331/1 |goto 51.65,26.20
step
Score 300 Points |q 53331/2 |goto 51.65,26.20
|tip Jump over fences to keep the stacks of Style as high as possible.
|tip Use the "Harpoon Jab" ability on your action bar while facing Targets around this area.
|tip They look like a yellow puppets in wooden barrels on the ground around this area.
|tip You will hear "Zeppelin out!" yelled nearby, then a Paper Zeppelin will appear, flying overhead.
|tip Use the "Bolas" ability on your action bar on the Paper Zeppelins.
|tip They look like small blimps flying in the air around this area.
|tip The zeppelins count for a lot of points, so don't miss any.
step
Click the "Exit" Button on Your Action Bar |outvehicle
|next "Tortollan_Seekers_WQ"
step
label quest-51906
Follow the path |goto Drustvar/0 37.58,51.80 < 7 |only if walking
Continue following the path |goto 36.72,51.16 < 7 |only if walking
Continue up the path |goto 36.41,51.72 < 7 |only if walking
Continue up the path |goto 36.03,52.47 < 7 |only if walking
Jump down here |goto 35.38,53.49 < 7 |only if walking
Follow the path up |goto 35.31,54.04 < 7 |only if walking
Continue down the path |goto 35.65,54.45 < 7 |only if walking
Jump down here |goto 35.48,54.97 < 7 |only if walking
Follow the path |goto 35.38,55.61 < 7 |only if walking
Jump down here |goto 35.05,56.24 < 7 |only if walking
Follow the path down |goto 34.82,56.76 < 7 |only if walking
Jump down here |goto 34.39,59.15 < 7 |only if walking
Jump down here |goto 34.31,59.46 < 7 |only if walking
Jump down here |goto 33.68,59.42 < 7 |only if walking
Jump down here |goto 33.27,58.22 < 7 |only if walking
accept Sister Martha##51906 |goto Drustvar/0 33.16,57.57
|tip You will accept this quest automatically.
step
Enter the building |goto 33.08,57.32 < 5 |walk
kill Sister Martha##138863
|tip Inside the building.
Slay Sister Martha |q 51906/1 |goto 32.99,57.13
|next "Tortollan_Seekers_WQ"
step
label quest-49994
Follow the road up |goto Tiragarde Sound/0 67.41,23.64 < 7 |only if walking
Continue following the road |goto 68.30,22.37 < 10 |only if walking
Follow the path |goto 68.83,19.50 < 7 |only if walking
Cross the bridge |goto 69.33,19.28 < 7 |only if walking
Follow the path |goto 70.64,18.67 < 10 |only if walking
Continue up the path |goto 71.11,17.73 < 7 |only if walking
Continue up the path |goto 71.93,17.48 < 10 |only if walking
Continue up the path |goto 72.28,16.09 < 10 |only if walking
Continue up the path |goto 74.46,13.16 < 7 |only if walking
Continue up the path |goto 74.93,13.07 < 7 |only if walking
Continue up the path |goto 74.83,12.11 < 7 |only if walking
accept Sliding with Style##49994 |goto Tiragarde Sound/0 75.23,11.94
|tip You will accept this quest automatically.
step
talk Pengling Sledding Barker##131575
Talk to the Penguing Sledding Barker |q 49994/1 |goto 75.23,11.94
step
clicknpc Racing Pengling##131523
|tip Avoid the small mounds of snow on the ground around this area.
Ride the Pengling to the Goal |q 49994/2 |goto 82.61,10.57
|next "Tortollan_Seekers_WQ"
step
label quest-53189
Follow the path |goto Tiragarde Sound/0 76.55,65.69 < 7 |only if walking
Continue following the path |goto 77.07,66.61 < 10 |only if walking
Continue following the path |goto 78.91,67.42 < 10 |only if walking
Continue up the path |goto 79.64,67.47 < 10 |only if walking
accept Slippery Slopes##53189 |goto Tiragarde Sound/0 79.84,66.57
|tip You will accept this quest automatically.
step
talk Rodrigo##129098
Talk to the Penguing Sledding Barker |q 53189/1 |goto 79.84,66.57
step
clicknpc Racing Pengling##131523
|tip Avoid the small mounds of snow on the ground around this area.
Ride the Pengling to the Goal |q 53189/2 |goto 79.84,66.57
|next "Tortollan_Seekers_WQ"
step
label quest-52143
Follow the path |goto Tiragarde Sound/0 75.96,49.09 < 7 |only if walking
Follow the path up |goto 76.68,48.94 < 7 |only if walking
Continue up the path |goto 77.64,49.59 < 7 |only if walking
accept Smaller Haulers##52143 |goto Tiragarde Sound/0 80.19,47.84
|tip You will accept this quest automatically.
stickystart "Kill_Ashvane_Company_Workers"
step
talk Urchin Worker##142727
Tell them _"Head down to the water. There is a boat waiting to take you to safety."_
Free #8# Urchin Workers |q 52143/1 |goto 80.19,47.84
step
label "Kill_Ashvane_Company_Workers"
Kill Company enemies around this area
Slay #8# Ashvane Company Workers |q 52143/2 |goto 80.19,47.84
|next "Tortollan_Seekers_WQ"
step
label quest-53315
Run up the stairs |goto Tiragarde Sound/0 66.58,50.19 < 7 |only if walking
Follow the road |goto 66.20,50.61 < 7 |only if walking
Continue following the road |goto 65.39,50.11 < 7 |only if walking
Follow the path |goto 64.12,50.43 < 10 |only if walking
Continue following the path |goto 62.76,47.68 < 10 |only if walking
Continue following the path |goto 61.73,47.35 < 10 |only if walking
accept Smooth Platinum##53315 |goto Tiragarde Sound/0 60.89,47.75
|tip You will accept this quest automatically.
step
click Smooth Platinum Deposit##297473
collect Smooth Platinum##163627 |q 53315/1 |goto 63.67,50.34
|next "Tortollan_Seekers_WQ"
step
label quest-50977
Follow the road up |goto Tiragarde Sound/0 75.50,43.55 < 7 |only if walking
Follow the path |goto 76.91,41.83 < 7 |only if walking
Follow the road |goto 76.85,38.87 < 10 |only if walking
Continue following the road |goto 76.74,38.66 < 7 |only if walking
Continue following the road |goto 76.74,38.66 < 10 |only if walking
accept Smuggler Shakedown##50977 |goto Tiragarde Sound/0 76.74,38.66
|tip You will accept this quest automatically.
stickystart "Destroy_Bootleg_Weapon_Crates"
step
Run up the stairs |goto 76.74,38.66 < 5 |only if walking
Follow the path |goto 76.74,38.66 < 7 |only if walking
Run down the stairs |goto 76.74,38.66 < 7 |only if walking
kill Mattius "The Gun" Grubb##136198 |q 50977/2 |goto 76.74,38.66
step
label "Destroy_Bootleg_Weapon_Crates"
click Bootleg Weapon Crate##287091+
|tip They look like large brown boxes on the ground around this area.
collect 5 Bootleg Weapon Crate##159673 |q 50977/1 |goto 76.74,38.66
|next "Tortollan_Seekers_WQ"
step
label quest-50421
Jump down here |goto Tiragarde Sound/0 76.73,83.14 < 7 |only if walking
Follow the path |goto 74.83,83.23 < 10 |only if walking
Continue following the path |goto 74.49,81.71 < 7 |only if walking
Jump down here |goto 74.18,81.52 < 7 |only if walking
Follow the path |goto 72.73,81.50 < 7 |only if walking
Cross the bridge |goto 72.54,81.38 < 5 |only if walking
accept Sparring on the Spar##50421 |goto Tiragarde Sound/0 72.10,81.37
|tip You will accept this quest automatically.
step
click Strong Rope##281297
Climb the Mast |q 50421/1 |goto 72.10,81.37
step
Push the Opponent Off the Spar |q 50421/2 |goto 72.04,81.36
|tip "Lunge" is your primary attack.
|tip "Flourish" is a feint that interrupts your opponent's "Riposte" ability.
|tip "Riposte" is a short duration defensive cooldown.
|next "Tortollan_Seekers_WQ"
step
label quest-51651
Cross the bridge |goto Tiragarde Sound/0 77.12,83.52 < 5 |only if walking
Follow the path |goto 77.33,83.73 < 7 |only if walking
Cross the bridge |goto 77.84,84.26 < 7 |only if walking
accept Squacks##51651 |goto Tiragarde Sound/0 79.86,82.10
|tip You will accept this quest automatically.
step
Run up the stairs |goto 79.91,82.87 < 5 |only if walking
Continue up the stairs |goto 80.08,83.08 < 5 |only if walking
Follow the path |goto 80.22,82.88 < 7 |only if walking
kill Squacks##132280 |q 51651/1 |goto 80.91,82.82
|next "Tortollan_Seekers_WQ"
step
label quest-51839
accept Squirgle of the Depths##51839 |goto Tiragarde Sound/0 48.90,37.02
|tip You will accept this quest automatically.
step
kill Squirgle of the Depths##139135 |q 51839/1 |goto 48.90,37.02
|next "Tortollan_Seekers_WQ"
step
label quest-51388
Follow the path |goto Tiragarde Sound/0 42.11,30.03 < 7 |only if walking
accept Stopping the Infestation##51388 |goto Tiragarde Sound/0 70.49,29.58
|tip You will accept this quest automatically.
stickystart "Slay_Parasitic_Mindstealers"
step
click Infested Cargo##289363+
|tip They look like small crates underwater around this area.
Burn #5# Infested Cargo |q 51388/1 |goto 41.10,29.53
step
label "Slay_Parasitic_Mindstealers"
kill 5 Parasitic Mindstealer##125959
|tip Underwater.
Slay #5# Parasitic Mindstealers |q 51388/2 |goto 41.10,29.53
|next "Tortollan_Seekers_WQ"
step
label quest-52804
accept Something Stirs in the Depths##52804 |goto Tiragarde Sound/0 32.50,25.36
|tip You will accept this quest automatically.
stickystart "Slay_Corrupted_Wildlife"
step
click Abyss Idol##141782
|tip They look like stone statues with a purple flame inside underwater around this area.
|tip They appear on your minimap as a yellow dot.
Destroy #5# Abyss Idols |q 52804/1 |goto 32.50,25.36
step
label "Slay_Corrupted_Wildlife"
Kill Proudmoore enemies around this area
|tip Underwater.
Slay #8# Corrupted Wildlife |q 52804/2 |goto 32.50,25.36
|next "Tortollan_Seekers_WQ"
step
label quest-53196
accept Swab This!##53196 |goto Tiragarde Sound/0 77.06,82.91
|tip You will accept this quest automatically.
step
clicknpc Riding Macaw##143068
Mount the Riding Macaw |invehicle |goto 77.06,82.62 |q 53196
step
Kill enemies around this area
|tip Use the "Vile Bombardment" ability on your action bar to accomplish this.
Bomb #100# Pirates |q 53196/1 |goto 76.41,83.52
|next "Tortollan_Seekers_WQ"
step
label quest-52751
accept Strange Looking Dogs##52751 |goto Tiragarde Sound/0 67.72,12.85
|tip You will accept this quest automatically.
step
talk Burly##141479
Tell him _"Begin pet battle."_
Defeat Burly |q 52751/1 |goto 67.72,12.85
|next "Tortollan_Seekers_WQ"
step
label quest-51024
collect 40 Akunda's Bite##152507 |q 51024 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Akunda's Bite##51024 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Akunda's Bite##51024 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51044
collect 40 Blood-Stained Bone##154164 |q 51044 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Blood-Stained Bone##51044 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Blood-Stained Bone##51044 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51046
collect 40 Coarse Leather##152541 |q 51046 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Coarse Leather##51046 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Coarse Leather##51046 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51051
collect 40 Deep Sea Satin##152577 |q 51051 |future
|tip Farm them from humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Deep Sea Satin##51051 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Deep Sea Satin##51051 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-52387
collect 20 Frenzied Fangtooth##152545 |q 52387 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Frenzied Fangtooth##52387 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Frenzied Fangtooth##52387 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-52388
collect 20 Lane Snapper##152546 |q 52388 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Lane Snapper##52388 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Lane Snapper##52388 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51049
collect 40 Mistscale##153051 |q 51049 |future
|tip Farm them with Leatherworking or purchase them from the Auction House.
step
accept Supplies Needed: Mistscale##51049 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Mistscale##51049 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51042
collect 40 Monelite Ore##152512 |q 51042 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Supplies Needed: Monelite Ore##51042 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Monelite Ore##51042 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51036
collect 40 Riverbud##152505 |q 51036 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Riverbud##51036 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Riverbud##51036 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-52383
collect 20 Sand Shifter##152543 |q 52383 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
Enter the building |goto Dazar'alor/0 49.92,41.91 < 10 |walk
accept Supplies Needed: Sand Shifter##52383 |goto Dazar'alor/2 67.16,71.62
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Supplies Needed: Sand Shifter##52383 |goto 67.16,71.62
|next "Tortollan_Seekers_WQ"
step
label quest-51048
collect 40 Shimmerscale##153050 |q 51048 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Shimmerscale##51048 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Shimmerscale##51048 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51040
collect 40 Siren's Pollen##152509 |q 51040 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Siren's Pollen##51040 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Siren's Pollen##51040 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51037
collect 40 Star Moss##152506 |q 51037 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Star Moss##51037 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Star Moss##51037 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51043
collect 40 Storm Silver Ore##152579 |q 51043 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Supplies Needed: Storm Silver Ore##51043 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Storm Silver Ore##51043 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51050
collect 40 Tidespray Linen##152576 |q 51050 |future
|tip Farm them by killing humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Tidespray Linen##51050 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Tidespray Linen##51050 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-51028
collect 40 Blood-Stained Bone##154164 |q 51028 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Blood-Stained Bone##51028 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Blood-Stained Bone##51028 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51029
collect 40 Calcified Bone##154165 |q 51029 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Calcified Bone##51029 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Calcified Bone##51029 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51030
collect 40 Coarse Leather##152541 |q 51030 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Coarse Leather##51030 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Coarse Leather##51030 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51035
collect 40 Deep Sea Satin##152577 |q 51035 |future
|tip Farm them from humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Deep Sea Satin##51035 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Deep Sea Satin##51035 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-52375
collect 40 Great Sea Catfish##152547 |q 52375 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Great Sea Catfish##52375 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Coarse Leather##52375 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51033
collect 40 Mistscale##153051 |q 51033 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Mistscale##51033 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Monelite Ore##51033 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51017
collect 40 Monelite Ore##152512 |q 51017 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Supplies Needed: Monelite Ore##51017 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Monelite Ore##51017 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-52379
collect 20 Redtail Loach##152549 |q 52379 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Redtail Loach##52379 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Redtail Loach##52379 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51027
collect 40 Sea Stalk##152511 |q 51027 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Sea Stalk##51027 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Sea Stalk##51027 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51032
collect 40 Shimmerscale##153050 |q 51032 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Shimmerscale##51032 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Shimmerscale##51032 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51026
collect 40 Siren's Pollen##152509 |q 51026 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Siren's Pollen##51026 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Siren's Pollen##51026 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-52378
collect 20 Slimy Mackerel##152544 |q 52378 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Slimy Mackerel##52378 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Slimy Mackerel##52378 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51023
collect 40 Star Moss##152506 |q 51023 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Star Moss##51023 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Star Moss##51023 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51021
collect 40 Storm Silver Ore##152579 |q 51021 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Supplies Needed: Storm Silver Ore##51021 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Storm Silver Ore##51021 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51031
collect 40 Tempest Hide##154722 |q 51031 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Tempest Hide##51031 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Tempest Hide##51031 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51034
collect 40 Tidespray Linen##152576 |q 51034 |future
|tip Farm them from Humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Tidespray Linen##51034 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Tidespray Linen##51034 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-52377
collect 20 Tiragarde Perch##152548 |q 52377 |future
|tip Farm them from Humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Tiragarde Perch##52377 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Tiragarde Perch##52377 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51025
collect 40 Winter's Kiss##152508 |q 51025 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Winter's Kiss##51025 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Winter's Kiss##51025 |goto 73.22,11.34
|next "Tortollan_Seekers_WQ"
step
label quest-51385
accept A Supply of Stingers##51385 |goto Tiragarde Sound/0 41.09,29.54
|tip You will accept this quest automatically.
step
kill Barbtail Stingray##128676+
|tip Underwater.
collect 6 Intact Venomous Barb##153486 |q 51385/1 |goto 41.09,29.54
|next "Tortollan_Seekers_WQ"
step
label quest-52159
accept Swab This!##52159 |goto Tiragarde Sound/0 77.06,82.91
|tip You will accept this quest automatically.
step
clicknpc Riding Macaw##143068
Mount the Riding Macaw |invehicle |goto 77.06,82.62 |q 52159
step
Kill enemies around this area
|tip Use the "Vile Bombardment" ability on your action bar to accomplish this.
Bomb #100# Pirates |q 52159/1 |goto 76.41,83.52
|next "Tortollan_Seekers_WQ"
step
label quest-51891
accept Sythian the Swift##51891 |goto Tiragarde Sound/0 66.85,13.89
|tip You will accept this quest automatically.
step
kill Sythian the Swift##139280 |q 51891/1 |goto 66.85,13.89
|tip He runs a small path around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-50792
Run down the stairs |goto Boralus/0 67.40,16.04 < 5 |only if walking
Follow the path |goto 65.96,20.48 < 7 |only if walking
Continue following the path |goto 65.04,21.29 < 7 |only if walking
Continue following the path |goto 64.76,23.24 < 7 |only if walking
Continue following the path |goto 63.21,25.25 < 10 |only if walking
Continue following the path |goto 63.90,30.51 < 7 |only if walking
accept Taking Bribes##50792 |goto Boralus/0 64.13,33.05
|tip You will accept this quest automatically.
step
Follow the path |goto 60.43,32.76 < 7 |only if walking
talk Dubious Guard##134847+
Ask them _"Why aren't you at your post?"_
|tip One or more of them may attack you.
Question #5# Dubious Guards |q 50792/1 |goto 61.65,37.57
|next "Tortollan_Seekers_WQ"
step
label quest-52056
accept The Tendrils of Fate##52056 |goto Boralus/0 70.43,76.93
|tip You will accept this quest automatically.
stickystart "Kill_Tidesage_Archivist"
step
kill Sister Adrianna##136174 |q 52056/3 |goto 68.13,74.68
step
kill Brother Matthew##136166
|tip He walks up and down the path around this area.
Slay Brother Matthew |q 52056/2 |goto 68.18,80.80
step
kill Sister Celicia##136177 |q 52056/1 |goto 63.67,87.80
step
label "Kill_Tidesage_Archivist"
kill 6 Tidesage Archivist##136158 |q 52056/4 |goto 74.69,76.24
|next "Tortollan_Seekers_WQ"
step
label quest-51849
accept Tempestria##51849 |goto Tiragarde Sound/0 60.81,17.31
|tip You will accept this quest automatically.
step
click Suspicious Pile of Meat##281172
|tip Kill the wave of enemies that spawns.
kill Tempestria##133356 |q 51849/1 |goto 60.81,17.31
|next "Tortollan_Seekers_WQ"
step
label quest-52010
Jump down here |goto Boralus/0 76.40,73.12 < 3 |only if walking
Run down the stairs |goto 75.89,74.87 < 5 |only if walking
Cross the water |goto 74.66,76.14 < 5 |only if walking
accept The Tendrils of Fate##52010 |goto Boralus/0 70.43,76.93
|tip You will accept this quest automatically.
stickystart "Kill_Tidesage_Archivist"
step
Follow the path up |goto 68.82,76.07 < 7 |only if walking
kill Sister Adrianna##136174 |q 52010/3 |goto 68.13,74.68
step
Follow the path |goto 66.97,75.65 < 7 |only if walking
Continue following the path |goto 67.47,77.90 < 5 |only if walking
Continue following the path |goto 68.79,79.81 < 7 |only if walking
kill Brother Matthew##136166
|tip He walks up and down the path around this area.
Slay Brother Matthew |q 52010/2 |goto 68.18,80.80
step
Follow the path |goto 69.47,82.88 < 7 |only if walking
Continue following the path |goto 67.97,85.12 < 7 |only if walking
Continue following the path |goto 66.16,84.19 < 7 |only if walking
Continue following the path |goto 64.58,85.70 < 7 |only if walking
kill Sister Celicia##136177 |q 52010/1 |goto 63.67,87.80
step
label "Kill_Tidesage_Archivist"
kill 6 Tidesage Archivist##136158 |q 52010/4 |goto 74.69,76.24
|next "Tortollan_Seekers_WQ"
step
label quest-51894
accept Tentulos the Drifter##51894 |goto Tiragarde Sound/0 55.32,51.53
|tip You will accept this quest automatically.
step
kill Tentulos the Drifter##139289
|tip Underwater.
Slay Tentulos the Drifter |q 51894/1 |goto 55.32,51.53
|next "Tortollan_Seekers_WQ"
step
label quest-51655
accept Teres##51655 |goto Tiragarde Sound/0 63.67,50.34
|tip You will accept this quest automatically.
step
kill Teres##131389 |q 51655/1 |goto 63.66,50.36
|next "Tortollan_Seekers_WQ"
step
label quest-52471
accept That's a Big Carcass##52471 |goto Tiragarde Sound/0 59.58,33.31
|tip You will accept this quest automatically.
step
talk Delia Hanako##141292
Tell her _"Begin pet battle."_
Defeat Delia Hanako |q 52471/1 |goto 59.58,33.31
|next "Tortollan_Seekers_WQ"
step
label quest-51621
Cross the water |goto Tiragarde Sound/0 73.07,42.04 < 10 |only if walking
accept Tidal Teachings##51621 |goto Tiragarde Sound/0 73.07,42.04
|tip You will accept this quest automatically.
step
Kill enemies around this area
Click Here After Disrupting the First Ritual |confirm
step
Follow the path up |goto 73.01,42.03 < 7 |only if walking
Continue up the path |goto 73.01,42.03 < 7 |only if walking
Kill enemies around this area
|tip Kill all of the channeling enemies around this area.
|tip Grasp from Beyond will spawn after.
Stop the Ritual |q 51621/1 |goto 73.01,42.03
|next "Tortollan_Seekers_WQ"
step
label quest-53078
accept Treasure in the Tides##53078 |goto Tiragarde Sound/0 88.54,79.05
|tip You will accept this quest automatically.
stickystart "Kill_Wailing_Sirens"
step
click Washed Up Cargo##296159+
|tip They look like brown crates on the ground around this area.
collect 8 Proudmoore Supply Crate##163099 |q 53078/1 |goto 88.54,79.05
step
label "Kill_Wailing_Sirens"
kill 6 Wailing Siren##126440 |q 53078/2 |goto 88.54,79.05
|next "Tortollan_Seekers_WQ"
step
label quest-51847
accept Tort Jaw##51847 |goto Tiragarde Sound/0 70.40,55.72
|tip You will accept this quest automatically.
step
kill Tort Jaw##139235 |q 51847/1 |goto 70.40,55.72
|next "Tortollan_Seekers_WQ"
step
label quest-52155
Jump down here |goto Tiragarde Sound/0 86.79,80.39 < 7 |only if walking
accept Treasure in the Tides##52155 |goto Tiragarde Sound/0 88.54,79.05
|tip You will accept this quest automatically.
stickystart "Kill_Wailing_Sirens"
step
click Washed Up Cargo##296159+
|tip They look like brown crates on the ground around this area.
collect 8 Proudmoore Supply Crate##163099 |q 52155/1 |goto 88.54,79.05
step
label "Kill_Wailing_Sirens"
kill 6 Wailing Siren##126440 |q 52155/2 |goto 88.54,79.05
|next "Tortollan_Seekers_WQ"
step
label quest-53346
accept Trogg Tromping##53346 |goto Tiragarde Sound/0 51.65,26.20
|tip You will accept this quest automatically.
step
clicknpc Cooper##127718
Mount Cooper |q 53346/1 |goto 51.65,26.20
step
Kill Grimestone enemies around this area
|tip Use the abilities on your action bar.
Disrupt the Trogg Attack |q 53346/2 |goto 51.03,26.85
step
Click the "Exit" Button on Your Action Bar |outvehicle
|next "Tortollan_Seekers_WQ"
step
label quest-51657
accept Twin-Hearted Construct##51657 |goto Tiragarde Sound/0 70.29,12.81
|tip You will accept this quest automatically.
step
Enter the cave |goto 70.29,12.81 < 10 |walk
click Ritual Effigy##280603
|tip Inside the cave.
kill Twin-hearted Construct##131984 |q 51657/1 |goto 70.34,12.49
|next "Tortollan_Seekers_WQ"
step
label quest-52455
accept Unbreakable##52455 |goto Tiragarde Sound/0 88.62,80.20
|tip You will accept this quest automatically.
step
clicknpc Chitara##141215
kill Chitara##141215
Defeat Chitara |q 52455/1 |goto 88.62,80.20
|next "Tortollan_Seekers_WQ"
step
label quest-52752
accept Vigilant Lookouts##52752 |goto Tiragarde Sound/0 54.15,58.07
|tip You will accept this quest automatically.
step
click Vigil Hill Documents##293688
|tip Inside the tent.
collect Vigil Hill Documents##162449 |q 52752/2 |goto 53.51,57.17
step
Follow the path up |goto 53.59,57.91 < 7 |only if walking
Continue up the path |goto 54.00,58.03 < 7 |only if walking
Run up the stairs |goto 54.14,57.36 < 7 |only if walking
Enter the building |goto 54.07,56.91 < 5 |walk
kill Commander Hallewell##141510
|tip Inside the building.
collect Daelin's Gate Dossier##162448 |q 52752/1 |goto 54.04,56.52
|next "Tortollan_Seekers_WQ"
step
label quest-51758
Follow the path |goto Boralus/0 49.45,64.55 < 7 |only if walking
Follow the path |goto 52.48,58.44 < 7 |only if walking
Jump down here |goto 52.43,57.13 < 7 |only if walking
Cross the water |goto 53.57,52.70 < 5 |only if walking
accept Weapons Shipment##51758 |goto Boralus/0 53.24,51.34
|tip You will accept this quest automatically.
step
Run up the stairs |goto 53.06,52.51 < 7 |only if walking
Follow the path |goto 53.55,50.19 < 7 |only if walking
Continue following the path |goto 51.26,48.44 < 7 |only if walking
Run up the stairs |goto 52.01,47.08 < 7 |only if walking
click Azerite Bombs##291059
|tip They look like small wooden crates on the ground around this area.
Kill enemies around this area
collect 40 Unstable Azerite Bomb##160667 |q 51758/1 |goto 52.68,44.10
|next "Tortollan_Seekers_WQ"
step
label quest-52163
Follow the path |goto Tiragarde Sound/0 66.99,23.84 < 7 |only if walking
Cross the bridge |goto 66.34,24.87 < 7 |only if walking
Follow the road |goto 65.53,25.93 < 7 |only if walking
Continue following the path |goto 64.05,28.21 < 10 |only if walking
Follow the path up |goto 63.18,29.17 < 7 |only if walking
Continue up the path |goto 62.51,28.08 < 7 |only if walking
Continue up the path |goto 61.73,28.44 < 7 |only if walking
Continue up the path |goto 60.85,28.45 < 7 |only if walking
Continue up the path |goto 59.52,27.52 < 7 |only if walking
Continue up the path |goto 59.63,27.01 < 7 |only if walking
Continue up the path |goto 60.65,26.38 < 10 |only if walking
accept The Winged Typhoon##52163 |goto Tiragarde Sound/0 61.60,26.41
|tip You will accept this quest automatically.
step
Follow the path up |goto 62.04,25.71 < 7 |only if walking
kill Azurethos##136385
|tip Run away during "Azurethos' Fury." |grouprole EVERYONE
|tip During "Azurethos' Fury," dodge the tornados on the ground. |grouprole EVERYONE
|tip When Azurethos casts Gale Force, don't stand in the path of the intended target. |grouprole EVERYONE
|tip Avoid "Wing Buffet" whenever possible. |grouprole TANK
|tip When affected by "Wing Buffet," re-establish threat quickly. |grouprole TANK
Slay Azurethos |q 52163/1 |goto 62.68,23.37
|next "Tortollan_Seekers_WQ"
step
label quest-53281
Follow the path |goto Tiragarde Sound/0 43.05,22.31 < 10 |only if walking
Follow the path up |goto 43.58,20.71 < 10 |only if walking
Continue up the path |goto 43.38,18.95 < 7 |only if walking
Continue up the path |goto 42.15,17.37 < 7 |only if walking
accept Winter's Kiss Cluster##53281 |goto Tiragarde Sound/0 41.57,14.69
|tip You will accept this quest automatically.
step
Follow the path |goto 41.91,13.92 < 7 |only if walking
Continue following the path |goto 41.81,13.35 < 7 |only if walking
Continue following the path |goto 41.28,13.32 < 7 |only if walking
clicknpc Winter's Kiss Cluster##143725
Gather from the Winter's Kiss Cluster |q 53281/1 |goto 41.58,13.89
|next "Tortollan_Seekers_WQ"
step
label quest-50983
collect 40 Akunda's Bite##152507 |q 50983 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Akunda's Bite##50983 |goto Tiragarde Sound/0 73.68,24.99
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Akunda's Bite##50983 |goto 73.68,24.99
|next "Tortollan_Seekers_WQ"
step
label quest-50984
collect 40 Winter's Kiss##152508 |q 50984 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Winter's Kiss##50984 |goto Tiragarde Sound/0 73.68,24.99
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Winter's Kiss##50984 |goto 73.68,24.99
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Vol'dun World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Vol'dun, Zandalar.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone=864,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-51238
accept Abandoned in the Burrows##51238 |goto Vol'dun/0 63.47,30.08
|tip You will accept this quest automatically.
stickystart "Slay_Sethrak"
step
click Sethrak Cage##277876+
|tip They look like large round cages on the ground around this area.
Rescue #6# Vulpera Captives |q 51238/1 |goto 63.60,33.03
step
label "Slay_Sethrak"
Kill Sethrak enemies around this area
Slay #12# Sethrak |q 51238/2 |goto 63.60,33.03
|next "Tortollan_Seekers_WQ"
step
label quest-51105
accept Ak'tar##51105 |goto Vol'dun/0 50.71,80.90
|tip You will accept this quest automatically.
step
kill Ak'tar##135852 |q 51105/1 |goto 50.33,81.64
|next "Tortollan_Seekers_WQ"
step
label quest-51096
accept Azer'tor##51096 |goto Vol'dun/0 47.88,88.15
|tip You will accept this quest automatically.
step
Enter the cave |goto 47.88,88.15 < 20 |walk
Follow the path down |goto 48.64,89.05 < 10 |walk
kill Azer'tor##128553 |q 51096/1 |goto 49.03,89.03
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51185
accept Azerite Empowerment##51185 |goto Vol'dun/0 60.67,62.51
|tip You will accept this quest automatically.
step
kill Skithis the Infused##136732 |q 51185/1 |goto 60.67,62.51
|next "Tortollan_Seekers_WQ"
step
label quest-52849
Follow the path |goto Vol'dun/0 39.43,34.39 < 15 |only if walking
Continue following the path |goto 41.91,32.17 < 15 |only if walking
Follow the path |goto 44.45,27.58 < 15 |only if walking
Follow the path |goto 45.06,19.93 < 15 |only if walking
accept Azerite Empowerment##52849 |goto 46.84,18.52
|tip You will accept this quest automatically.
step
Enter the cave |goto 47.05,18.62 < 5 |walk
kill Warlord Dagu##141931 |q 52849/1 |goto 47.68,20.22
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51422
accept Azerite Madness##51422 |goto Vol'dun/0 57.47,60.95
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51422/1 |goto 59.34,61.24
|next "Tortollan_Seekers_WQ"
step
label quest-50975
accept Azerite Mining##50975 |goto Vol'dun/0 35.09,60.22
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 50975/1 |goto 34.65,63.00
You can find more in the cave at [34.27,62.77]
|next "Tortollan_Seekers_WQ"
step
label quest-52875
accept Azerite Mining##52875 |goto Vol'dun/0 35.09,60.22
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 52875/1 |goto 34.65,63.00
You can find more in the cave at [34.27,62.77]
|next "Tortollan_Seekers_WQ"
step
label quest-51428
accept Azerite Wounds##51428 |goto Vol'dun/0 59.88,60.97
|tip You will accept this quest automatically.
step
Heal #5# Azerite Wounds |q 51428/1 |goto 59.88,60.97
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "Tortollan_Seekers_WQ"
step
label quest-51097
accept Bloated Ruincrawler##51097 |goto Vol'dun/0 48.97,49.90
|tip You will accept this quest automatically.
step
kill Bloated Krolusk##129476 |q 51097/1 |goto 48.97,49.89
|tip It walks around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-51117
accept Bajiani the Slick##51117 |goto Vol'dun/0 31.09,80.95
|tip You will accept this quest automatically.
step
kill Bajiani the Slick##128497 |q 51117/1 |goto 31.00,81.09
|next "Tortollan_Seekers_WQ"
step
label quest-51641
accept Beachhead##51641 |goto Vol'dun/0 66.61,21.54
|tip You will accept this quest automatically.
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #15# Juvenile Turtles Reach the Ocean |q 51641/1 |goto 66.61,21.54
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "Tortollan_Seekers_WQ"
step
label quest-51210
accept Blast Back the Siege##51210 |goto Vol'dun/0 27.82,50.55
|tip You will accept this quest automatically.
step
clicknpc Sethrak Cannon##143720
Control the Cannon |q 51210/1 |goto 28.07,50.58
step
Kill Faithless enemies around this area
|tip Use the "Ball Lightning" ability on your action bar.
Slay #30# Faithless Attackers |q 51210/2 |goto 28.07,50.58
|next "Tortollan_Seekers_WQ"
step
label quest-49345
accept Buried Treasure##49345 |goto Vol'dun/0 45.44,53.73
|tip You will accept this quest automatically.
step
kill Ancient Exile##136997+
|tip Use the "Soulreaping Totem" ability that appears onscreen.
|tip Stand near the totem and kill the enemies that spawn.
collect 10 Ancient Coin##159828 |q 49345/1 |goto 45.72,50.70
|next "Tortollan_Seekers_WQ"
step
label quest-51791
accept Bubbling Totem Testing##51791 |goto Vol'dun/0 48.60,43.64
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51791/1 |goto 47.49,44.61
|next "Tortollan_Seekers_WQ"
step
label quest-51118
accept Bloodwing Bonepicker##51118 |goto Vol'dun/0 56.07,53.57
|tip You will accept this quest automatically.
step
clicknpc Enormous Egg##136390
kill Bloodwing Bonepicker##136393 |q 51118/1 |goto 56.07,53.57
|next "Tortollan_Seekers_WQ"
step
label quest-51155
accept Brgl-Lrgl the Basher##51155 |goto Vol'dun/0 30.41,45.60
|tip You will accept this quest automatically.
step
Enter the cave |goto 29.99,46.27 < 5 |walk
kill Brgl-Lrgl the Basher##134643 |q 51155/1 |goto 29.77,46.48
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51793
accept Bubbling Totem Testing##51793 |goto Vol'dun/0 48.81,43.65
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51793/1 |goto 47.48,44.17
|next "Tortollan_Seekers_WQ"
step
label quest-51559
accept Damaged Goods##51559 |goto Vol'dun/0 44.31,88.97
|tip You will accept this quest automatically.
stickystart "Slay_Ashvane_Pirates"
step
use the Torch##160923
|tip Use it on Ashvane Cargo around this area.
|tip They look like stacks of crates and barrels on the ground around this area.
Destroy #10# Ashvane Cargo |q 51559/1 |goto 44.31,88.97
step
label "Slay_Ashvane_Pirates"
Kill enemies around this area
Slay #8# Ashvane Pirates |q 51559/2 |goto 44.31,88.97
|next "Tortollan_Seekers_WQ"
step
label quest-52878
accept Desert Survivors##52878 |goto Vol'dun/0 45.13,46.43
|tip You will accept this quest automatically.
step
talk Kusa##142054
Tell her _"Begin pet battle."_
Defeat Kusa |q 52878/1 |goto 45.13,46.43
|next "Tortollan_Seekers_WQ"
step
label quest-51562
accept Damaged Goods##51562 |goto Vol'dun/0 44.31,88.97
|tip You will accept this quest automatically.
stickystart "Slay_Ashvane_Pirates"
step
use the Torch##160923
|tip Use it on Ashvane Cargo around this area.
|tip They look like stacks of crates and barrels on the ground around this area.
Destroy #10# Ashvane Cargo |q 51562/1 |goto 44.31,88.97
step
label "Slay_Ashvane_Pirates"
Kill enemies around this area
Slay #8# Ashvane Pirates |q 51562/2 |goto 44.31,88.97
|next "Tortollan_Seekers_WQ"
step
label quest-51792
accept Erupting Totem Testing##51792 |goto Vol'dun/0 45.26,45.34
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51792/1 |goto 47.48,44.17
|next "Tortollan_Seekers_WQ"
step
label quest-51794
accept Erupting Totem Testing##51794 |goto Vol'dun/0 45.26,45.34
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51794/1 |goto 47.48,44.17
|next "Tortollan_Seekers_WQ"
step
label quest-51900
accept Faithless Follow-Through##51900 |goto Vol'dun/0 53.94,34.95
|tip You will accept this quest automatically.
step
click Faithless War Banner##281656+
|tip They look like banners attached to poles around this area.
click Faithless Cannon##281643+
|tip They look like large yellow cannons on the cliffs around this area.
Kill Faithless enemies around this area
Disrupt the Faithless Army |q 51900/1 |goto 53.94,34.95
|next "Tortollan_Seekers_WQ"
step
label quest-51156
accept Fangcaller Xorreth##51156 |goto Vol'dun/0 52.93,35.43
|tip You will accept this quest automatically.
step
kill Fangcaller Xorreth##136323 |q 51156/1 |goto 53.64,34.57
|next "Tortollan_Seekers_WQ"
step
label quest-51198
accept Fertilizer Duty##51198 |goto Vol'dun/0 53.22,15.75
|tip You will accept this quest automatically.
step
clicknpc Fertilizer##136770+
|tip Use the extra action button onscreen to feed meat to Dustmane hyenas.
|tip After a short pause, they will leave "fertilizer."
|tip They look like small brown mounds on the ground around this area.
Collect #10# Fertilizer |q 51198/1 |goto 53.22,15.75
|next "Tortollan_Seekers_WQ"
step
label quest-52798
accept A Few More Charges##52798 |goto Vol'dun/0 30.23,69.41
|tip You will accept this quest automatically.
step
Follow the path |goto 30.06,69.07 < 7 |only if walking
Continue down the path |goto 29.17,67.94 < 7 |only if walking
Continue up the path |goto 28.64,68.46 < 5 |only if walking
click Lectric Frequency Modulator##292647
Use the Lectric Frequency Modulator |q 52798/1 |goto 28.66,68.71
step
Roll over Lashers
|tip Avoid the cacti, whirlwinds, and Big Mama.
|tip Big Mama is the giant lasher half-buried in the ground around this area.
Feed Lashers to the Ranishu |q 52798/2 |goto 31.00,81.09
|next "Tortollan_Seekers_WQ"
step
label quest-51565
Run down the stairs |goto Vol'dun/0 36.70,36.57 < 7 |only if walking
accept Feeding Frenzy##51565 |goto Vol'dun/0 36.22,40.75
|tip You will accept this quest automatically.
step
Follow the path up |goto 36.12,41.33 < 5 |only if walking
Follow the path up |goto 36.22,41.57 < 5 |only if walking
clicknpc Gulch Beetle##137077
|tip They look like small dark colored beetles on the ground around this area.
clicknpc King Rakataka##137069
|tip Use the extra action button onscreen to feed him.
|tip When his yellow energy bar filles up, he will die.
|tip He walks around this area.
Feed King Rakataka to Death |q 51565/1 |goto 53.64,34.57
|next "Tortollan_Seekers_WQ"
step
label quest-51564
Follow the path up |goto Vol'dun/0 53.22,15.75 < 15 |only if walking
accept Fertilizer Duty##51564 |goto Vol'dun/0 53.22,15.75
|tip You will accept this quest automatically.
step
clicknpc Fertilizer##136770+
|tip Use the "Feed Hyena" ability on Dustmane enemies around this area.
|tip It appears as a button on the screen.
|tip They will walk a bit and then leave "Fertilizer" on the ground.
Collect #10# Fertilizer |q 51564/1 |goto 53.22,15.75
|next "Tortollan_Seekers_WQ"
step
label quest-51157
accept Golanar##51157 |goto Vol'dun/0 59.51,8.49
|tip You will accept this quest automatically.
step
kill Golanar##129027 |q 51157/1 |goto 59.51,8.49
|tip It walks around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-51099
accept Gut-Gut the Glutton##51099 |goto Vol'dun/0 62.74,47.40
|tip You will accept this quest automatically.
step
Enter the cave |goto 63.96,47.98 < 10 |walk
kill Gut-Gut the Glutton##128674 |q 51099/1 |goto 64.02,47.50
|next "Tortollan_Seekers_WQ"
step
label quest-51108
accept Hivemother Kraxi##51108 |goto Vol'dun/0 53.93,51.74
|tip You will accept this quest automatically.
step
Enter the cave |goto 53.93,51.74 < 10 |walk
kill Hivemother Kraxi##130443 |q 51108/1 |goto 53.60,53.70
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51228
accept Instant Meat, Ready to Eat##51228 |goto Vol'dun/0 44.74,23.91
|tip You will accept this quest automatically.
stickystart "Collect_Steaming_Crab_Meat"
step
use the Meatification Potion##159796
|tip Use it on buzzards around this area.
click Bonebeak Scavenger Meat##288190+
|tip They look like little pieces of bird meat on the ground around this area.
collect 15 Broiled Buzzard Meat##159794 |q 51228/1 |goto 43.40,23.35
step
label "Collect_Steaming_Crab_Meat"
use the Meatification Potion##159796
|tip Use it on crabs around this area.
Kill Brineclaw enemies around this area
click Brineclaw Meat##288190+
|tip They look like little pieces of purple meat on the ground around this area.
collect 15 Steaming Crab Meat##159795 |q 51228/2 |goto 43.40,23.35
|next "Tortollan_Seekers_WQ"
step
label quest-51180
accept Instructions Not Included##51180 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51180/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51239
accept Instructions Not Included##51239 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Ranishu Swarmshooter" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51239/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51181
accept Instructions Not Included##51181 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51181/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51174
accept Instructions Not Included##51174 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51174/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51933
accept Instructions Not Included##51933 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Ranishu Swarmshooter" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51933/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51928
accept Instructions Not Included##51928 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #8# Brine Basin Wildlife |q 51928/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51931
accept Instructions Not Included##51931 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Stormstrike" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51931/1 |goto 58.85,41.67
|next "Tortollan_Seekers_WQ"
step
label quest-51100
accept Jumbo Sandsnapper##51100 |goto Vol'dun/0 37.46,84.95
|tip You will accept this quest automatically.
step
kill Jumbo Sandsnapper##129283 |q 51100/1 |goto 37.46,84.95
|tip He walks underwater around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-49013
accept A Jolt of Power##49013 |goto Vol'dun/0 53.87,88.76
|tip You will accept this quest automatically.
stickystart "Kill_Ranishu_Gorger"
step
clicknpc Stormhide Calf##134743
|tip They look like injured Stormhides on the ground around this area.
|tip Use the "Blessing of Akunda" ability onscreen to revive them.
Revive #6# Stormhide Lizards |q 49013/1 |goto 54.60,88.20
step
label "Kill_Ranishu_Gorger"
kill 8 Ranishu Gorger##133565 |q 49013/2 |goto 54.60,88.20
|next "Tortollan_Seekers_WQ"
step
label quest-51125
accept Jungleweb Hunter##51125 |goto Vol'dun/0 59.65,17.12
|tip You will accept this quest automatically.
step
kill Jungleweb Hunter##136341 |q 51125/1 |goto 60.37,18.08
|next "Tortollan_Seekers_WQ"
step
label quest-51102
accept Kamid the Trapper##51102 |goto Vol'dun/0 34.55,50.68
|tip You will accept this quest automatically.
step
Enter the cave |goto 35.25,51.54 < 10 |walk
kill Kamid the Trapper##128686 |q 51102/1 |goto 35.07,51.83
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-52850
accept Keeyo's Champions of Vol'dun##52850 |goto Vol'dun/0 57.13,48.96
|tip You will accept this quest automatically.
step
talk Keeyo##141879
Tell him _"Begin pet battle."_
Defeat Keeyo |q 52850/1 |goto 57.13,48.96
|next "Tortollan_Seekers_WQ"
step
label quest-51252
accept Kiro's Desert Flower##51252 |goto Vol'dun/0 55.45,67.75
|tip You will accept this quest automatically.
step
Follow the path |goto 56.25,67.78 < 5 |only if walking
talk Kiro##137027
Tell him _"I am ready."_
Kill Sandstinger enemies around this area
|tip Several waves of enemies will attack.
Assist Kiro |q 51252/1 |goto 55.45,67.75
step
kill Crimson Gnarlvine##137046 |q 51252/2 |goto 55.43,67.42
|next "Tortollan_Seekers_WQ"
step
label quest-51635
accept Make Loh Go##51635 |goto Vol'dun/0 63.36,23.51
|tip You will accept this quest automatically.
step
talk Toki##138480
Tell him _"I am ready."_
Speak to Toki |q 51635/1 |goto 63.36,23.51
step
Guide Loh to the Goal |q 51635/2 |goto 63.36,23.51
|tip Move Loh to each flag, then to the finish line without crossing your own path.
|tip Use the abilities on your action bar.
|next "Tortollan_Seekers_WQ"
step
label quest-51153
accept Mor'fani the Exile##51153 |goto Vol'dun/0 36.40,88.36
|tip You will accept this quest automatically.
step
Follow the path up |goto 36.41,89.11 < 15 |only if walking
Enter the building |goto 37.45,88.46 < 5 |walk
kill Mor'fani the Exile##134694 |q 51153/1 |goto 37.44,89.10
|tip Inside the building.
|next "Tortollan_Seekers_WQ"
step
label quest-51103
accept Nez'ara##51103 |goto Vol'dun/0 44.67,86.70
|tip You will accept this quest automatically.
step
Enter the cave |goto 43.99,87.20 < 10 |walk
click Stake##58701+
|tip They look like wooden stakes stuck in the ground around this area inside the cave.
kill Nez'ara##128951 |q 51103/1 |goto 43.76,86.24
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51834
accept No Negotiations##51834 |goto Vol'dun/0 40.29,76.22
|tip You will accept this quest automatically.
stickystart "Kill_Zandalari_Exiles_1"
step
click Prisoner Cage##228536+
|tip They look like thin wooden cages on the ground around this area.
Free #5# 7th Legion Soldiers |q 51834/1 |goto 40.19,75.95
step
label "Kill_Zandalari_Exiles_1"
kill 8 Zandalari Exile##135311 |q 51834/2 |goto 40.19,75.95
|next "Tortollan_Seekers_WQ"
step
label quest-51850
accept Preserve the Oasis##51850 |goto Vol'dun/0 41.46,62.07
|tip You will accept this quest automatically.
stickystart "Slay_Whistlebloom_Predators"
step
click Fertile Soil##291206+
|tip They look like mounds of fresh dirt on the ground around this area.
Water #6# Fertile Soil |q 51850/2 |goto 41.46,62.07
step
label "Slay_Whistlebloom_Predators"
Kill Whistlebloom enemies around this area
Kill #6# Whistlebloom Predators |q 51850/1 |goto 41.46,62.07
|next "Tortollan_Seekers_WQ"
step
label quest-51853
accept Preserve the Oasis##51853 |goto Vol'dun/0 41.46,62.07
|tip You will accept this quest automatically.
stickystart "Slay_Whistlebloom_Predators"
step
click Fertile Soil##291206+
|tip They look like mounds of fresh dirt on the ground around this area.
Water #6# Fertile Soil |q 51853/2 |goto 41.46,62.07
step
label "Slay_Whistlebloom_Predators"
Kill Whistlebloom enemies around this area
Kill #8# Whistlebloom Predators |q 51853/1 |goto 41.46,62.07
|next "Tortollan_Seekers_WQ"
step
label quest-47704
accept Ranishu Feeding Frenzy##47704 |goto Vol'dun/0 54.25,60.21
|tip You will accept this quest automatically.
stickystart "Stomp_Ranishu_Grubs"
step
kill 8 Frenzied Ranishu##137208 |q 47704/1 |goto 54.25,60.21
step
label "Stomp_Ranishu_Grubs"
clicknpc Ranishu Grub##137194+
|tip They look like small worms on the ground around this area.
Stomp #40# Ranishu Grubs |q 47704/2 |goto 54.25,60.21
|next "Tortollan_Seekers_WQ"
step
label quest-51760
accept Ranishu Feeding Frenzy##51760 |goto Vol'dun/0 54.25,60.21
|tip You will accept this quest automatically.
stickystart "Stomp_Ranishu_Grubs"
step
kill 8 Frenzied Ranishu##137208 |q 51760/1 |goto 54.25,60.21
step
label "Stomp_Ranishu_Grubs"
clicknpc Ranishu Grub##137194+
|tip They look like small worms on the ground around this area.
Stomp #40# Ranishu Grubs |q 51760/2 |goto 54.25,60.21
|next "Tortollan_Seekers_WQ"
step
label quest-51124
accept Relic Hunter Hazaak##51124 |goto Vol'dun/0 48.87,71.77
|tip You will accept this quest automatically.
step
kill Relic Hunter Hazaak##136340 |q 51124/1 |goto 48.88,72.11
|tip Inside the building.
|next "Tortollan_Seekers_WQ"
step
label quest-51330
accept Resilient Seeds##51330 |goto Vol'dun/0 43.40,78.82
|tip You will accept this quest automatically.
step
Kill Withered enemies around this area
collect 12 Resilient Seed##159909 |q 51330/1 |goto 43.46,80.61
|next "Tortollan_Seekers_WQ"
step
label quest-51173
accept Sandfishing##51173 |goto Vol'dun/0 52.22,59.75
|tip You will accept this quest automatically.
step
kill Ravenous Sandworm##136653+
|tip Use the "Sandfishing" ability around this area.
|tip It appears as a button on the screen.
collect 8 Sandworm Fang##159767 |q 51173/1 |goto 52.22,59.75
|next "Tortollan_Seekers_WQ"
step
label quest-51116
Follow the path up |goto Vol'dun/0 54.92,36.78 < 20 |only if walking
Follow the path up |goto Vol'dun/0 53.32,35.48 < 20 |only if walking
accept Skycarver Krakit##51116 |goto Vol'dun/0 52.23,36.20
|tip You will accept this quest automatically.
step
kill Skycarver Krakit##134745 |q 51116/1 |goto 51.29,36.46
|next "Tortollan_Seekers_WQ"
step
label quest-51123
Follow the path down |goto Vol'dun/0 26.86,54.04 < 15 |only if walking
Follow the path up |goto Vol'dun/0 27.53,67.08 < 15 |only if walking
Cross the bridge |goto Vol'dun/0 27.56,69.10 < 20 |only if walking
accept Sirokar##51123 |goto Vol'dun/0 24.57,68.45
|tip You will accept this quest automatically.
step
kill Sirokar##136338 |q 51123/1 |goto 24.57,68.45
|next "Tortollan_Seekers_WQ"
step
label quest-52196
accept Sandswept Bones##52196 |goto Vol'dun/0 44.37,56.06
|tip You will accept this quest automatically.
step
kill Dunegorger Kraulok##138794 |q 52196/1 |goto 44.37,56.06
|tip Pick up Ravenous Ranishu quickly. |grouprole TANK
|tip Quickly kill adds that spawn. |grouprole DAMAGER
|tip Avoid standing in front of Kraulok during "Bellows." |grouprole EVERYONE
|tip Quickly move out of earth-rumbling areas on the ground. |grouprole EVERYONE
|next "Tortollan_Seekers_WQ"
step
label quest-51107
accept Scaleclaw Broodmother##51107 |goto Vol'dun/0 44.18,79.35
|tip You will accept this quest automatically.
step
kill Scaleclaw Broodmother##127776 |q 51107/1 |goto 44.54,80.20
|next "Tortollan_Seekers_WQ"
step
label quest-51629
accept Shell Game##51629 |goto Vol'dun/0 27.34,50.21
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51629/1 |goto 27.34,50.21
step
click Shell+
|tip Click the shells to reveal objects.
|tip Match the objects in pairs.
Complete Collector Kojo's Shell Game |q 51629/2 |goto 27.34,50.21
|next "Tortollan_Seekers_WQ"
step
label quest-51104
Follow the path |goto Vol'dun/0 39.43,34.39 < 10 |only if walking
Continue following the path |goto 41.91,32.17 < 10 |only if walking
Enter the cave |goto 46.38,27.14 < 5 |walk
accept Skycaller Teskris##51104 |goto 46.65,27.12
|tip You will accept this quest automatically inside the cave.
step
kill Skycaller Teskris##134571 |q 51104/1 |goto 46.96,25.15
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51558
accept Spider Scorching##51558 |goto Vol'dun/0 45.44,78.94
|tip You will accept this quest automatically.
step
use the Torch##160870
|tip Use it on small white clutches of spider eggs on the ground around this area.
Burn #25# Sandspinner Eggs |q 51558/1 |goto 45.44,78.94
|next "Tortollan_Seekers_WQ"
step
label quest-52856
Enter the building |goto Vol'dun/0 27.22,51.40 < 10 |only if walking
Leave the building |goto 27.21,53.72 < 10 |only if walking
accept Snakes on a Terrace##52856 |goto Vol'dun/0 26.59,54.92
|tip You will accept this quest automatically.
step
talk Sizzik##141945
Tell him _"Begin pet battle."_
Defeat Sizzik |q 52856/1 |goto 26.59,54.92
|next "Tortollan_Seekers_WQ"
step
label quest-51120
accept Stef "Marrow" Quin##51120 |goto Vol'dun/0 41.38,24.20
|tip You will accept this quest automatically.
step
kill Captain Stef "Marrow" Quin##136346 |q 51120/1 |goto 41.38,24.20
|tip She walks around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-51997
accept Thar She Sinks##51997 |goto Vol'dun/0 37.80,83.01
|tip You will accept this quest automatically.
step
clicknpc Stolen Canoe##139582
Board the Stolen Canoe |q 51997/1 |goto 37.80,83.01
stickystart "Destroy_Cannons"
stickystart "Slay_Pirates"
step
clicknpc Stolen Canoe##139582
|tip Use the "Throw Torch" ability on canoes floating in the water around this area.
Sink #8# Canoes |q 51997/2 |goto 32.98,84.19
step
label "Destroy_Cannons"
|tip Use the "Throw Torch" ability on cannons along the piers around this area.
Destroy #8# Cannons |q 51997/3 |goto 32.98,84.19
step
label "Slay_Pirates"
|tip Use the "Release Depth Charges" ability above the pirates underwater around this area.
Slay #50# Pirates |q 51997/4 |goto 32.98,84.19
|next "Tortollan_Seekers_WQ"
step
label quest-52059
accept Thar She Sinks##52059 |goto Vol'dun/0 37.80,83.01
|tip You will accept this quest automatically.
step
clicknpc Stolen Canoe##139582
Board the Stolen Canoe |q 52059/1 |goto 37.80,83.01
stickystart "Destroy_Cannons"
stickystart "Slay_Pirates"
step
clicknpc Stolen Canoe##139582
|tip Use the "Throw Torch" ability on canoes floating in the water around this area.
Sink #8# Canoes |q 52059/2 |goto 32.98,84.19
step
label "Destroy_Cannons"
|tip Use the "Throw Torch" ability on cannons along the piers around this area.
Destroy #8# Cannons |q 52059/3 |goto 32.98,84.19
step
label "Slay_Pirates"
|tip Use the "Release Depth Charges" ability above the pirates underwater around this area.
Slay #50# Pirates |q 52059/4 |goto 32.98,84.19
|next "Tortollan_Seekers_WQ"
step
label quest-51983
accept Vorrik's Vengeance##51983 |goto Vol'dun/0 47.26,35.17
|tip You will accept this quest automatically.
step
clicknpc Rakjan the Unbroken##139454
Mount Rakjan the Unbroken |q 51983/1 |goto 47.16,39.38
step
Slay #50# Faithless |q 51983/2 |goto 47.76,32.25
|next "Tortollan_Seekers_WQ"
step
label quest-51995
accept Vorrik's Vengeance##51995 |goto Vol'dun/0 47.26,35.17
|tip You will accept this quest automatically.
step
clicknpc Rakjan the Unbroken##139454
Mount Rakjan the Unbroken |q 51995/1 |goto 47.16,39.38
step
Slay #50# Faithless |q 51995/2 |goto 47.76,32.25
|next "Tortollan_Seekers_WQ"
step
label quest-51316
accept Walking in a Spiderweb##51316 |goto Vol'dun/0 59.64,17.11
|tip You will accept this quest automatically.
stickystart "Kill_Jungleweb_Crawlers"
stickystart "Kill_Jungleweb_Hatchlings"
step
kill Jungleweb Victim##137167
Free #5# Tortaka |q 51316/1 |goto 60.66,17.08
step
label "Kill_Jungleweb_Crawlers"
kill 5 Jungleweb Crawler##123813 |q 51316/2 |goto 60.66,17.08
step
label "Kill_Jungleweb_Hatchlings"
kill 30 Jungleweb Hatchling##123826 |q 51316/3 |goto 60.66,17.08
|next "Tortollan_Seekers_WQ"
step
label quest-51114
Follow the path up |goto Vol'dun/0 54.93,36.55 < 15 |only if walking
Follow the path up |goto Vol'dun/0 53.34,35.46 < 20 |only if walking
Cross the bridge |goto Vol'dun/0 51.88,34.41 < 20 |only if walking
accept Warmother Captive##51114 |goto Vol'dun/0 51.92,32.15
|tip You will accept this quest automatically.
step
kill Warmother Captive##134625 |q 51114/1 |goto 50.71,30.88
|next "Tortollan_Seekers_WQ"
step
label quest-51112
Follow the road |goto Vol'dun/0 30.69,50.16 < 15 |only if walking
accept Warbringer Hozzik##51112 |goto Vol'dun/0 35.77,45.82
|tip You will accept this quest automatically.
step
Follow the path up |goto 36.27,46.77 < 15 |only if walking
kill Warbringer Hozzik##129180 |q 51112/1 |goto 37.07,46.05
|next "Tortollan_Seekers_WQ"
step
label quest-51113
accept Warlord Zothix##51113 |goto Vol'dun/0 30.20,52.56
|tip You will accept this quest automatically.
step
kill Warlord Zothix##134638 |q 51113/1 |goto 30.20,52.56
|next "Tortollan_Seekers_WQ"
step
label quest-51315
accept Wild Flutterbies##51315 |goto Vol'dun/0 52.72,87.76
|tip You will accept this quest automatically.
step
|tip Use the extra action button onscreen to capture Flutterbies.
Collect #10# Vale Flutterbies |q 51315/1 |goto 51.53,86.14
|next "Tortollan_Seekers_WQ"
step
label quest-51322
accept Wings and Stingers##51322 |goto Vol'dun/0 40.64,68.32
|tip You will accept this quest automatically.
stickystart "Collect_Buzzard_Wings"
step
Kill Oasis enemies around this area
collect 5 Oasis Stinger##159924 |q 51322/2 |goto 40.64,68.32
step
label "Collect_Buzzard_Wings"
kill Bonebleach Buzzard##137209+
collect 3 Buzzard Wing##159925 |q 51322/1 |goto 40.64,68.32
|next "Tortollan_Seekers_WQ"
step
label quest-52397
collect 5 Contract: Voldunai##153666 |q 52397 |future
|tip Create them with Inscription or purchase them from the Auction House.
step
accept Work Order: Contract: Voldunai##52397 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Contract: Voldunai##52397 |goto 56.69,49.73
|next "Tortollan_Seekers_WQ"
step
label quest-52412
collect 40 Rubellite##153701 |q 52412 |future
|tip Create them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Rubellite##52412 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Rubellite##52412 |goto 56.69,49.73
|next "Tortollan_Seekers_WQ"
step
label quest-51957
accept The Wrath of Vorrik##51957 |goto Vol'dun/0 50.02,27.28
|tip You will accept this quest automatically.
step
Expunge #100# Faithless |q 51957/1 |goto 50.02,27.28
|tip Collect the small white crackling orbs that spawn to renew your lightning power.
|next "Tortollan_Seekers_WQ"
step
label quest-52864
accept What Do You Mean, Mind Controlling Plants?##52864 |goto Vol'dun/0 30.52,61.95
|tip You will accept this quest automatically.
step
clicknpc Spineleaf##141969
Defeat Spineleaf |q 52864/1 |goto 30.52,61.95
|next "Tortollan_Seekers_WQ"
step
label quest-51963
Cross the bridge |goto Vol'dun/0 51.87,34.60 < 7 |only if walking
Run up the stairs |goto 51.95,31.18 < 10 |only if walking
Follow the path |goto 51.92,29.25 < 10 |only if walking
Run up the stairs |goto 50.98,28.42 < 7 |only if walking
accept The Wrath of Vorrik##51963 |goto Vol'dun/0 50.02,27.28
|tip You will accept this quest automatically.
step
Expunge #100# Faithless |q 51963/1 |goto 50.02,27.28
|tip Collect the small white crackling orbs that spawn to renew your lightning power.
|next "Tortollan_Seekers_WQ"
step
label quest-51763
accept Zem'lan Rescue##51763 |goto Vol'dun/0 38.46,78.98
|tip You will accept this quest automatically.
stickystart "Slay_Zem'lan_Pirates"
step
clicknpc Captured Exile##138976+
|tip They look like bound Trolls around this area.
Free #4# Prisoners |q 51763/1 |goto 36.62,79.29
step
label "Slay_Zem'lan_Pirates"
Kill enemies around this area
Slay #10# Zem'lan Pirates |q 51763/2 |goto 36.62,79.29
|next "Tortollan_Seekers_WQ"
step
label quest-51783
accept Zem'lan Rescue##51783 |goto Vol'dun/0 37.70,81.98
|tip You will accept this quest automatically.
stickystart "Slay_Zem'lan_Pirates"
step
clicknpc Captured NPC's
|tip They look like human soldiers sitting on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Free #4# Prisoners |q 51783/1 |goto 36.28,80.56
step
label "Slay_Zem'lan_Pirates"
Kill enemies around this area
Slay #10# Zem'lan Pirates |q 51783/2 |goto 36.28,80.56
|next "Tortollan_Seekers_WQ"
step
label quest-51115
accept Zunashi the Exile##51115 |goto Vol'dun/0 44.35,52.41
|tip You will accept this quest automatically.
step
Enter the cave |goto 43.97,52.49 < 10 |walk
kill Zunashi the Exile##129411 |q 51115/1 |goto 43.92,54.01
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Zuldazar World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Zuldazar, Zandalar.",
condition_suggested=function() return level>=120 and completedq(51918) end,
condition_valid=function() return level>=120 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=120.0,
worldquestzone=862,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-50864
Jump down here |goto Zuldazar/0 77.35,15.45 < 3 |only if walking
Follow the path |goto 78.59,17.07 < 10 |only if walking
Continue following the path |goto 78.39,18.43 < 7 |only if walking
clicknpc Fishing Canoe##139838
Take the Canoe to the Ship |invehicle |goto Zuldazar/0 79.01,19.13
step
Exit the Canoe |outvehicle |goto 80.69,20.73
|tip Click the red arrow button to leave the canoe when you reach the ship.
|tip The canoe will return to shore after a few seconds.
step
click Rope##204427 |goto 80.83,20.48 < 3 |only if walking
Climb Up the Rope |goto 80.85,20.29 < 3 |only if walking |c |noway
step
click Rope##204427 |goto 80.85,20.29 < 3 |only if walking
Climb Up the Rope |goto 80.88,20.39 < 3 |only if walking |c |noway
step
accept Atal'zul Gotaka##50864 |goto 81.80,37.66
|tip You will accept this quest automatically.
step
kill Atal'zul Gotaka##129961 |q 50864/1 |goto 80.97,21.61
|next "Tortollan_Seekers_WQ"
step
label quest-52923
accept Add More to the Collection##52923 |goto Zuldazar/0 48.42,35.17
|tip You will accept this quest automatically.
step
talk Talia Sparkbrow##142114
Tell her _"Begin pet battle."_
Defeat Talia Sparkbrow |q 52923/1 |goto 48.42,35.17
|next "Tortollan_Seekers_WQ"
step
label quest-50863
accept Avatar of Xolotal##50863 |goto Zuldazar/0 49.31,58.15
|tip You will accept this quest automatically.
step
Enter the cave |goto 49.57,59.00 < 10 |walk
kill Avatar of Xolotal##129343 |q 50863/1 |goto 49.83,57.42
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-52858
accept Azerite Empowerment##52858 |goto Zuldazar/0 75.91,41.54
|tip You will accept this quest automatically.
step
Enter the cave |goto 75.32,41.75 < 10 |only if walking
kill Hex Priest Haraka##141959 |q 52858/1 |goto 75.27,42.26
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51444
accept Azerite Empowerment##51444 |goto Zuldazar/0 57.49,24.04
|tip You will accept this quest automatically.
step
kill Zu'shin the Infused##136702 |q 51444/1 |goto 56.81,23.10
|next "Tortollan_Seekers_WQ"
step
label quest-51179
accept Azerite Madness##51179 |goto Zuldazar/0 57.94,24.21
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51179/1 |goto 57.94,24.21
|next "Tortollan_Seekers_WQ"
step
label quest-52877
accept Azerite Mining##52877 |goto Zuldazar/0 41.54,70.19
|tip You will accept this quest automatically.
step
Enter the cave |goto 41.47,69.88 < 10 |only if walking
Kill enemies around this area
|tip Inside the cave.
click Azerite Chunk##290611+
|tip They look like large yellow and blue ore crystal nodes on the ground around this area inside the cave.
click Azerite Node##290723+
|tip They look like small yellow and blue ore crystal nodes on the ground around this area inside the cave.
Recover Azerite |q 52877/1 |goto 40.90,69.00
|next "Tortollan_Seekers_WQ"
step
label quest-51450
accept Azerite Mining##51450 |goto Zuldazar/0 56.81,23.10
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Inside the cave.
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51450/1 |goto 56.05,23.25
|next "Tortollan_Seekers_WQ"
step
label quest-51175
accept Azerite Wounds##51175 |goto Zuldazar/0 57.16,23.85
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 51175/1 |goto 56.15,22.96
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "Tortollan_Seekers_WQ"
step
label quest-50652
accept Biting the Hand that Feeds Them##50652 |goto Zuldazar/0 70.47,39.99
|tip You will accept this quest automatically.
step
kill Savagemane Ravasaur##122504+
collect 5 Fresh Meat##158184 |goto 70.47,39.99 |q 50652
step
clicknpc Savagemane Hatchling##134619+
|tip They look like little baby dinosaurs on the ground around this area.
Feed #5# Savagemane Hatchlings |q 50652/1 |goto 70.47,39.99
|next "Tortollan_Seekers_WQ"
step
label quest-51642
Follow the path |goto Zuldazar/0 66.94,69.76 < 30 |only if walking
accept Beachhead##51642 |goto Zuldazar/0 63.61,68.69
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##144359
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51642/1 |goto 63.61,68.68
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #12# Juvenile Turtles Reach the Ocean |q 51642/2 |goto 63.61,68.69
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "Tortollan_Seekers_WQ"
step
label quest-50578
accept Bring Ruin Again##50578 |goto Zuldazar/0 49.74,44.51
|tip You will accept this quest automatically.
stickystart "Kill_Disciples_Of_Zul"
step
Follow the path |goto 49.62,43.84 < 7 |only if walking
Run up the stairs |goto 49.75,42.49 < 7 |only if walking
kill 5 Kao-Tien Battlemaster##129515 |q 50578/1 |goto 49.75,41.03
step
label "Kill_Disciples_Of_Zul"
kill 8 Disciple of Zul##129504 |q 50578/2 |goto 49.75,41.03
|next "Tortollan_Seekers_WQ"
step
label quest-51475
accept Brutal Escort##51475 |goto Zuldazar/0 51.92,45.67
|tip You will accept this quest automatically.
step
kill Dazarian Stalker##137829
|tip Follow Roughneck, killing any stalkers that attack.
Escort Roughneck |q 51475/1 |goto 51.92,45.67
|next "Tortollan_Seekers_WQ"
step
label quest-50862
accept Bloodbulge##50862 |goto Zuldazar/0 59.84,18.29
|tip You will accept this quest automatically.
step
kill Bloodbulge##128699 |q 50862/1 |goto 59.84,18.29
|next "Tortollan_Seekers_WQ"
step
label quest-50966
accept Cleanup Crew##50966 |goto Zuldazar/0 76.67,50.53
|tip You will accept this quest automatically.
stickystart "Slay_7th_Legion_Sailors"
step
click 7th Legion Supply Crate##284468+
|tip They look like small wooden crates on the ground around this area.
collect 5 Bundle of Supplies##160703 |q 50966/2 |goto 76.67,50.53
step
label "Slay_7th_Legion_Sailors"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Sailors |q 50966/1 |goto 76.67,50.53
|next "Tortollan_Seekers_WQ"
step
label quest-52892
accept Critters are Friends, Not Food##52892 |goto Zuldazar/0 70.56,29.59
|tip You will accept this quest automatically.
step
talk Karaga##142096
Tell him _"Begin pet battle."_
Defeat Karaga |q 52892/1 |goto 70.56,29.59
|next "Tortollan_Seekers_WQ"
step
label quest-50871
accept Daggerjaw##50871 |goto Zuldazar/0 74.28,39.44
|tip You will accept this quest automatically.
step
kill Daggerjaw##133190 |q 50871/1 |goto 74.28,39.44
|tip Underwater.
|next "Tortollan_Seekers_WQ"
step
label quest-51084
accept Dark Chronicler##51084 |goto Zuldazar/0 43.28,76.39
|tip You will accept this quest automatically.
step
Enter the cave |goto 43.28,76.39 < 10 |walk
kill Dark Chronicler##136428 |q 51084/1 |goto 44.12,76.51
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-50875
accept Darkspeaker Jo'la##50875 |goto Zuldazar/0 65.38,10.24
|tip You will accept this quest automatically.
step
kill Darkspeaker Jo'la##134760 |q 50875/1 |goto 65.38,10.24
|next "Tortollan_Seekers_WQ"
step
label quest-50571
accept Eggstermination##50571 |goto Zuldazar/0 64.54,18.60
|tip You will accept this quest automatically.
step
kill 20 Feathered Viper Egg##132413 |q 50571/1 |goto 64.54,18.60
|next "Tortollan_Seekers_WQ"
step
label quest-50548
accept Enforcing the Will of the King##50548 |goto Zuldazar/0 63.26,31.92
|tip You will accept this quest automatically.
step
Kill enemies around this area
Enforce the Will of the Rastakhan |q 50548/1 |goto 63.66,31.10
|next "Tortollan_Seekers_WQ"
step
label quest-51815
accept Eggstermination##51815 |goto Zuldazar/0 64.54,18.60
|tip You will accept this quest automatically.
step
kill 20 Feathered Viper Egg##132413 |q 51815/1 |goto 64.54,18.60
|next "Tortollan_Seekers_WQ"
step
label quest-50969
Follow the path down |goto Zuldazar/0 77.61,55.23 < 7 |only if walking
accept Emergency Management##50969 |goto Zuldazar/0 81.05,55.11
|tip You will accept this quest automatically.
stickystart "Kill_Forsaken_Deathguards"
step
clicknpc Injured Shipwrecked Sailor##136897
|tip They look like wounded sailors laying on the ground around this area.
Heal #5# Injured Sailors |q 50969/2 |goto 81.05,55.11
step
label "Kill_Forsaken_Deathguards"
kill 10 Forsaken Deathguard##135886 |q 50969/1 |goto 81.05,55.11
|next "Tortollan_Seekers_WQ"
step
label quest-50857
accept Golrakahn##50857 |goto Zuldazar/0 73.43,28.20
|tip You will accept this quest automatically.
step
Run up the stairs |goto 73.43,28.20 < 10 |only if walking
kill Golrakahn##124185 |q 50857/1 |goto 74.12,28.49
|next "Tortollan_Seekers_WQ"
step
label quest-50870
accept G'Naat##50870 |goto Zuldazar/0 79.98,35.96
|tip You will accept this quest automatically.
step
kill G'Naat##133155 |q 50870/1 |goto 79.98,35.96
|next "Tortollan_Seekers_WQ"
step
label quest-50877
accept Gahz'ralka##50877 |goto Zuldazar/0 63.52,32.94
|tip You will accept this quest automatically.
step
kill Gahz'ralka##129954 |q 50877/1 |goto 64.24,32.73
|tip In the water under the bridge.
|next "Tortollan_Seekers_WQ"
step
label quest-50765
accept Herding Children##50765 |goto Dazar'alor/0 52.76,89.04
|tip You will accept this quest automatically.
step
Chase #3# Orphans |q 50765/1 |goto 52.76,89.04
|tip They look like small children around this area.
|tip Chase them to caretakers, which appear on the map as a yellow dot.
|next "Tortollan_Seekers_WQ"
step
label quest-51497
accept Hex Education##51497 |goto Dazar'alor/0 49.07,21.44
|tip You will accept this quest automatically.
step
clicknpc Zanchuli Acolyte##126586
use Raal's Hexing Stick##160307
|tip use it on the Acolytes.
Hex #12# Priests |q 51497/1 |goto 50.81,16.05
|next "Tortollan_Seekers_WQ"
step
label quest-51232
accept Hundred Troll Holdout##51232 |goto Zuldazar/0 66.25,30.67
|tip You will accept this quest automatically.
step
kill Gurubashi Attacker##136699+
|tip Stand near the totems for huge buffs.
|tip Each buff lasts for 45 seconds.
Slay #100# Gurubashi Attackers |q 51232/1 |goto 65.51,30.15
|next "Tortollan_Seekers_WQ"
step
label quest-50846
Follow the path |goto Zuldazar/0 62.45,16.14 < 15 |only if walking
accept Headhunter Lee'za##50846 |goto Zuldazar/0 62.42,15.09
|tip You will accept this quest automatically.
stickystart "Kill_Coati"
step
Follow the path |goto 62.59,14.31 < 20 |only if walking
kill Headhunter Lee'za##134637 |q 50846/1 |goto 63.15,14.04
step
label "Kill_Coati"
kill Coati##131704 |q 50846/2 |goto 63.15,14.04
|next "Tortollan_Seekers_WQ"
step
label quest-50874
accept Hakbi the Risen##50874 |goto Zuldazar/0 42.79,35.92
|tip You will accept this quest automatically.
step
kill Hakbi the Risen##134738 |q 50874/1 |goto 42.04,36.22
|next "Tortollan_Seekers_WQ"
step
label quest-53327
accept Hardened Monelite##53327 |goto Zuldazar/0 47.13,29.47
|tip You will accept this quest automatically.
step
click Hardened Monelite Deposit##297624
collect Hardened Monelite##163628 |q 53327/1 |goto 47.13,29.47
|next "Tortollan_Seekers_WQ"
step
label quest-51178
Follow the path |goto Zuldazar/0 70.59,29.90 < 7 |only if walking
Jump down carefully here |goto 69.53,30.30 < 10 |only if walking
Follow the path up |goto 68.28,30.50 < 10 |only if walking
accept Hundred Troll Holdout##51178 |goto Zuldazar/0 66.25,30.67
|tip You will accept this quest automatically.
step
kill Gurubashi Attacker##136699+
|tip Stand near the totems for huge buffs.
|tip Each buff lasts for 45 seconds.
Slay #100# Gurubashi Attackers |q 51178/1 |goto 65.51,30.15
|next "Tortollan_Seekers_WQ"
step
label quest-50859
Enter the cave |goto 68.84,47.14 < 10 |only if walking
accept Kandak##50859 |goto Zuldazar/0 69.00,47.64
|tip You will accept this quest automatically.
step
kill Kandak##126637 |q 50859/1 |goto 68.67,48.74
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-51084
accept Kiboku##50869 |goto Zuldazar/0 75.63,35.91
|tip You will accept this quest automatically.
step
kill Kiboku##132244 |q 51084/1 |goto 75.63,35.91
|next "Tortollan_Seekers_WQ"
step
label quest-50547
accept Knives of Zul##50547 |goto Zuldazar/0 79.54,16.27
|tip You will accept this quest automatically.
stickystart "Slay_Followers_of_Zul"
step
clicknpc Zeb'ahari Fishermon##132706+
|tip They look like cowering Trolls along the beach around this area.
Rescue #9# Zeb'ahari Villagers |q 50547/2 |goto 79.54,16.27
step
label "Slay_Followers_of_Zul"
Kill Atal'zul enemies around this area
Slay #12# Zul Followers |q 50547/1 |goto 79.54,16.27
|next "Tortollan_Seekers_WQ"
step
label quest-51496
accept Loa Your Standards##51496 |goto Dazar'alor/0 47.48,23.49
|tip You will accept this quest automatically.
step
click Idol of Gonk##293876+
|tip They look like small green statues around this area.
click Greater Idol of Gonk##293878+
|tip They look like large green statues around this area.
kill Raptari Druid##141891+
Prank #10# Raptari Druids |q 51496/1 |goto 50.47,17.00
|next "Tortollan_Seekers_WQ"
step
label quest-50876
Follow the path |goto Zuldazar/0 67.27,69.68 < 15 |only if walking
Continue following the path |goto Zuldazar/0 63.87,69.60 < 15 |only if walking
accept Murderbeak##50876 |goto Zuldazar/0 60.68,66.19
|tip You will accept this quest automatically.
step
click Chum Bucket
Choose _"Toss the chum into the sea."_
Kill the enemies that attack
kill Murderbeak##134782 |q 50876/1 |goto 60.68,66.19
|next "Tortollan_Seekers_WQ"
step
label quest-51636
Enter the building |goto 81.78,37.90 < 10 |walk
accept Make Loh Go##51636 |goto Zuldazar/0 81.80,37.66
|tip You will accept this quest automatically.
step
Guide Loh to the Goal |q 51636/1 |goto 81.80,37.66
|tip Use the arrows to guide Loh to the flags.
|tip You cannot cross your own path or you will have to start over.
|next "Tortollan_Seekers_WQ"
step
label quest-52169
accept The Matriarch##52169 |goto Zuldazar/0 69.61,34.13
|tip You will accept this quest automatically.
step
kill Ji'arak##132253 |q 52169/1 |goto 69.61,34.13
|tip Pick up Broodlings following Matriarch's Call. |grouprole TANK
|tip Heavy AoE healing is required during "Storm Wing." |grouprole HEALER
|tip Crowd control Broodlings channeling "Clutch" before it expires. |grouprole EVERYONE
|tip Don't stand in areas targeted by Hurricane Crash or you will die. |grouprole EVERYONE
|next "Tortollan_Seekers_WQ"
step
label quest-51495
accept Old Rotana##51495 |goto Zuldazar/0 61.11,20.52
|tip You will accept this quest automatically.
step
clicknpc Old Rotana##137855
Ride Old Rotana |q 51495/1 |goto 61.11,20.52
step
Kill Blood Troll enemies around this area
|tip Use the abilities on your action bar.
Destroy Blood Troll Forces |q 51495/2 |goto 59.79,20.15
|next "Tortollan_Seekers_WQ"
step
label quest-50855
Cross the bridge |goto Zuldazar/0 53.20,49.14 < 20 |only if walking
Run up the stairs |goto Dazar'alor/0 45.90,63.09 < 15 |only if walking
Run up the stairs |goto Dazar'alor/0 47.20,60.32 < 15 |only if walking
accept Old R'gal##50855 |goto Dazar'alor/0 47.17,60.34
|tip You will accept this quest automatically.
step
kill Old R'gal##122639 |q 50855/1 |goto 49.91,59.59
|next "Tortollan_Seekers_WQ"
step
label quest-50633
accept Pterrible Ingredients##50633 |goto Zuldazar/0 68.05,34.02
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 12 Pterrordax Salivary Gland##158177 |q 50633/1 |goto 67.28,32.66
|next "Tortollan_Seekers_WQ"
step
label quest-51816
accept Pterrible Ingredients##51816 |goto Zuldazar/0 67.75,34.30
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 12 Pterrordax Salivary Gland##158177 |q 51816/1 |goto 67.28,32.66
|next "Tortollan_Seekers_WQ"
step
label quest-50524
accept Purify the Temple##50524 |goto Zuldazar/0 73.34,27.91
|tip You will accept this quest automatically.
step
click Blasphemous Writing##281675+
|tip They look like scrolls on the ground around this area.
Kill enemies around this area
Purify the Temple Grounds |q 50524/1 |goto 73.59,25.60
|next "Tortollan_Seekers_WQ"
step
label quest-49068
accept Quelling the Cove##49068 |goto Zuldazar/0 73.51,65.01
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt Dreadpearl |q 49068/1 |goto 73.51,65.01
|tip Run next to Squallfin Tadpoles to scare them.
|tip They look like small friendly Squallfin murlocs on the ground around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-51821
accept Quelling the Cove##51821 |goto Zuldazar/0 73.51,65.01
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt Dreadpearl |q 51821/1 |goto 73.51,65.01
|tip Run next to Squallfin Tadpoles to scare them.
|tip They look like small friendly Squallfin murlocs on the ground around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-50540
accept Rally the Rastari##50540 |goto Zuldazar/0 47.55,63.65
|tip You will accept this quest automatically.
stickystart "Slay_Mogu"
step
use the Rastari Skull Whistle##157858
|tip Use it near Rastari Defender's around this area
Rally #6# Rastari Defenders |q 50540/1 |goto 47.55,63.65
step
label "Slay_Mogu"
Kill enemies around this area
Slay #8# Mogu |q 50540/2 |goto 47.55,63.65
|next "Tortollan_Seekers_WQ"
step
label quest-50636
accept Ravoracious##50636 |goto Zuldazar/0 70.95,37.45
|tip You will accept this quest automatically.
step
kill Savagemane Ravasaur##122504+
collect 12 Ravasaur Stomach Lining##159755 |q 50636/1 |goto 70.51,39.42
|next "Tortollan_Seekers_WQ"
step
label quest-51814
accept Ravoracious##51814 |goto Zuldazar/0 70.95,37.45
|tip You will accept this quest automatically.
step
kill Savagemane Ravasaur##122504+
collect 12 Ravasaur Stomach Lining##159755 |q 51814/1 |goto 70.51,39.42
|next "Tortollan_Seekers_WQ"
step
label quest-50744
accept Refresh Their Memory##50744 |goto Dazar'alor/0 56.17,87.40
|tip You will accept this quest automatically.
step
click Ancient Gong##297883
|tip Clicking it will summon an Amani Disciple.
|tip Click it again after defeating a Disciple to summon another.
Defeat #4# Amani Disciples |q 50744/1 |goto 56.17,87.40
|next "Tortollan_Seekers_WQ"
step
label quest-50964
accept Ritual Combat##50964 |goto Dazar'alor/0 43.63,7.37
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Each Loa champion will spawn after the last one dies.
Defeat #4# Loa Champions |q 50964/1 |goto 43.63,7.37
|next "Tortollan_Seekers_WQ"
step
label quest-50737
Cross the bridge |goto Zuldazar/0 53.21,49.16 < 20 |only if walking
Run down the stairs |goto Dazar'alor/0 49.73,64.05 < 15 |only if walking
accept Silence the Speakers##50737 |goto Dazar'alor/0 48.69,70.72
|tip You will accept this quest automatically.
step
Kill Speaker enemies around this area
Slay #12# Speakers |q 50737/1 |goto 48.69,70.72
|next "Tortollan_Seekers_WQ"
step
label quest-52250
accept Saving Xibala##52250 |goto Zuldazar/0 40.40,71.70
|tip You will accept this quest automatically.
step
clicknpc Wildhammer Gryphon##141793
Ride the Gryphon |q 52250/1 |goto 40.40,71.70
step
clicknpc Forsaken Blight Thrower##141640
|tip On the deck of the ship.
Destroy the Forsaken Blight Thrower |q 52250/3 |goto 35.73,74.58
step
label "Slay_Horde_Forces"
Kill enemies around this area
|tip Use the "Wild Hammer" ability on you action bar.
Slay #50# Horde Forces |q 52250/2 |goto 35.73,74.58
|next "Tortollan_Seekers_WQ"
step
label quest-50581
accept Scrolls and Scales##50581 |goto Zuldazar/0 82.20,39.91
|tip You will accept this quest automatically.
stickystart "Slay_Dreadcoil Seekers"
step
click Scroll of Gral##281652+
|tip They look like large scrollcases on the ground around this area.
collect 4 Scroll of Gral##158068 |q 50581/2 |goto 82.20,39.91
step
label "Slay_Dreadcoil Seekers"
kill 8 Dreadcoil Seeker##125174 |q 50581/1 |goto 82.20,39.91
|next "Tortollan_Seekers_WQ"
step
label quest-49413
Follow the path |goto Zuldazar/0 66.44,69.77 < 30 |only if walking and Alliance
Continue following the path |goto Zuldazar/0 62.49,68.15 < 30 |only if walking and Alliance
Enter the tunnel |goto Zuldazar/0 61.93,62.73 < 15 |only if walking and Alliance
Leave the tunnel |goto Dazar'alor/0 58.03,92.79 < 15 |only if walking and Alliance
accept Scamps With Scrolls##49413 |goto Dazar'alor/0 54.62,90.71
|tip You will accept this quest automatically.
step
clicknpc Scheming Street Scamp##129394+
|tip They look like green long neck dinosaurs and raptors on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Dispel #5# Scheming Street Scamps |q 49413/1 |goto 54.62,90.71
|next "Tortollan_Seekers_WQ"
step
label quest-51822
accept Scrolls and Scales##51822 |goto Zuldazar/0 82.20,39.91
|tip You will accept this quest automatically.
stickystart "Slay_Dreadcoil Seekers"
step
click Scroll of Gral##281652+
|tip They look like large scrollcases on the ground around this area.
collect 4 Scroll of Gral##158068 |q 51822/2 |goto 82.20,39.91
step
label "Slay_Dreadcoil Seekers"
kill 8 Dreadcoil Seeker##125174 |q 51822/1 |goto 82.20,39.91
|next "Tortollan_Seekers_WQ"
step
label quest-52248
accept The Shores of Xibala##52248 |goto Zuldazar/0 39.29,73.08
|tip You will accept this quest automatically.
step
Kill Dark Iron enemies around this area
Slay #12# Dark Iron Dwarves |q 52248/1 |goto 39.29,73.08
|next "Tortollan_Seekers_WQ"
step
label quest-51630
accept Shell Game##51630 |goto Zuldazar/0 37.78,78.89
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51630/1 |goto 37.84,78.83
step
click Shell+
|tip Click the shells to reveal matching objects.
|tip Shell objects will match in pairs.
Complete Collector Kojo's Shell Game |q 51630/2 |goto 37.84,78.83
|next "Tortollan_Seekers_WQ"
step
label quest-52249
Follow the path |goto Zuldazar/0 44.26,69.93 < 30 |only if walking
accept The Shores of Xibala##52249 |goto Zuldazar/0 46.49,71.14
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #12# Nightborne or Zandalari |q 52249/1 |goto 46.49,71.14
|next "Tortollan_Seekers_WQ"
step
label quest-51038
collect 40 Akunda's Bite##152507 |q 51038 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Akunda's Bite##51038 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Akunda's Bite##51038 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-52938
accept Small Beginnings##52938 |goto Zuldazar/0 50.56,23.90
|tip You will accept this quest automatically.
step
talk Zujai##142234
Tell her _"Begin pet battle."_
Defeat Zujai |q 52938/1 |goto 50.56,23.90
|next "Tortollan_Seekers_WQ"
step
label quest-51081
accept Syrawon the Dominus##51081 |goto Zuldazar/0 54.01,45.51
|tip You will accept this quest automatically.
step
Enter the cave |goto 53.89,44.92 < 10 |only if walking
kill Syrawon the Dominus##136413 |q 51081/1 |goto 53.36,44.61
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-50867
accept Tambano##50867 |goto Zuldazar/0 77.71,10.18
|tip You will accept this quest automatically.
step
kill Tambano##131687 |q 50867/1 |goto 77.71,10.18
|tip It walks around this area.
|next "Tortollan_Seekers_WQ"
step
label quest-50592
accept Tiny Terror##50592 |goto Zuldazar/0 46.13,24.47
|tip You will accept this quest automatically.
step
Kill Sethrak enemies around this area
Slay #15# Sethrak Invaders |q 50592/1 |goto 46.13,24.47
|next "Tortollan_Seekers_WQ"
step
label quest-50850
accept Tia'Kawan##50850 |goto Zuldazar/0 64.63,23.00
|tip You will accept this quest automatically.
step
kill Tia'Kawan##133163 |q 50850/1 |goto 64.63,23.00
|next "Tortollan_Seekers_WQ"
step
label quest-50861
accept Torraske the Eternal##50861 |goto Zuldazar/0 46.66,65.23
|tip You will accept this quest automatically.
step
kill Torraske the Eternal##127939 |q 50861/1 |goto 46.66,65.23
|next "Tortollan_Seekers_WQ"
step
label quest-50847
Enter the cave |goto 76.44,27.10 < 10 |walk
accept Twisted Child of Rezan##50847 |goto Zuldazar/0 76.90,27.91
|tip You will accept this quest automatically.
step
kill Twisted Child of Rezan##130643 |q 50847/1 |goto 76.90,27.91
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-49444
accept Underfoot##49444 |goto Dazar'alor/0 43.31,31.48
|tip You will accept this quest automatically.
step
clicknpc Fragile Cargo##129646+
|tip They look like brown boxes near the Brutosaur around this area.
|tip Pay attention the cast time on the Frightened Brutosaur's Frightened Stomp.
|tip Collect the cargo between casts.
Recover #8# Fragile Cargo |q 49444/1 |goto 43.31,31.48
|next "Tortollan_Seekers_WQ"
step
label quest-50287
accept Unending Gorilla Warfare##50287 |goto Zuldazar/0 49.01,54.17
|tip You will accept this quest automatically.
step
click Gorilla Totem
|tip They look like totems made of sticks on the ground around this area.
Kill Da'kani enemies around this area
Disrupt Da'kani Gorillas |q 50287/1 |goto 49.01,54.17
|next "Tortollan_Seekers_WQ"
step
label quest-50853
accept Umbra'rix##50853 |goto Zuldazar/0 48.58,29.02
|tip You will accept this quest automatically.
step
kill Umbra'rix##134717 |q 50853/1 |goto 49.18,29.39
|next "Tortollan_Seekers_WQ"
step
label quest-51374
accept Unending Gorilla Warfare##51374 |goto Zuldazar/0 49.01,54.17
|tip You will accept this quest automatically.
step
Kill Da'kani enemies around this area
click Gorilla Totem+
|tip They look like clusters of sticks on the ground around this area.
Disrupt the Da'kani Gorillas |q 51374/1 |goto 49.01,54.17
|next "Tortollan_Seekers_WQ"
step
label quest-50872
accept Warcrawler Karkithiss##50872 |goto Zuldazar/0 44.26,25.18
|tip You will accept this quest automatically.
step
Enter the cave |goto 44.26,25.18 < 10 |walk
kill Warcrawler Karkithiss##133842 |q 50872/1 |goto 43.92,25.48
|tip Inside the cave.
|next "Tortollan_Seekers_WQ"
step
label quest-50619
accept What Goes Up##50619 |goto Zuldazar/0 39.22,72.89
|tip You will accept this quest automatically.
step
click Nightborne Trap##293683+
|tip They look like small glowing traps on the ground around this area.
Set #8# Traps |q 50619/1 |goto 39.22,72.89
|next "Tortollan_Seekers_WQ"
step
label quest-52394
collect 5 Contract: Champions of Azeroth##153668 |q 52394 |future
|tip Create them with Inscription or purchase them from the Auction House.
step
accept Work Order: Contract: Champions of Azeroth##52394 |goto Zuldazar/0 71.50,30.12
|tip You will accept this quest automatically.
step
talk Collector Kojo##134345
turnin Work Order: Contract: Champions of Azeroth##52394 |goto 71.50,30.34
|next "Tortollan_Seekers_WQ"
step
label quest-51013
collect 40 Mistscale##153051 |q 51013 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Mistscale##51013 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Mistscale##51013 |goto 67.25,71.57
|next "Tortollan_Seekers_WQ"
step
label quest-52398
collect 20 Ultramarine Pigment##153635 |q 52398 |future
|tip Mill it with Inscription or purchase them from the Auction House.
step
accept Work Order: Ultramarine Pigment##52398 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Work Order: Ultramarine Pigment##52398 |goto 44.26,32.26
|next "Tortollan_Seekers_WQ"
step
label quest-50957
accept Wrath of Rezan##50957 |goto Zuldazar/0 73.19,28.33
|tip You will accept this quest automatically.
step
clicknpc Old K'zlotec##135908
Climb Aboard Old K'zlotec |q 50957/1 |goto 73.19,28.33
step
Kill enemies around this area
Deliver Rezan's Wrath |q 50957/2 |goto 73.67,25.42
|next "Tortollan_Seekers_WQ"
step
label quest-51824
Follow the path |goto Zuldazar/0 40.94,71.09 < 7 |only if walking
Continue following the path |goto 43.18,71.31 < 10 |only if walking
Continue following the path |goto 44.67,71.04 < 10 |only if walking
accept You're Grounded##51824 |goto Zuldazar/0 46.65,71.24
|tip You will accept this quest automatically.
step
click Dark Iron Trap##293674
|tip They look like yellow boxes on the ground around this area.
Set #8# Traps |q 51824/1 |goto 46.65,71.24
|next "Tortollan_Seekers_WQ"
step
label quest-52937
accept You've Never Seen Jammer Upset##52937 |goto Zuldazar/0 68.05,34.02
|tip You will accept this quest automatically.
step
clicknpc Jammer##142151
Defeat Jammer |q 52937/1 |goto 68.05,34.02
|next "Tortollan_Seekers_WQ"
step
label quest-50866
accept Zayoos##50866 |goto Zuldazar/0 48.32,55.29
|tip You will accept this quest automatically.
step
kill Zayoos##131476 |q 50866/1 |goto 47.98,54.24
|next "Tortollan_Seekers_WQ"
step
label "Tortollan_Seekers_WQ"
#include "BFA_World_Quest_Emissaries"
]])
