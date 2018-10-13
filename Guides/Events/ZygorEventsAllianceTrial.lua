local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("EventsA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\World Events\\Battle for Azeroth (110-120)\\The Burning of Teldrassil",{
author="support@zygorguides.com",
description="This guide will help to defend Teldrassil against the incoming Horde attack..",
condition_suggested=function() return level == 110 and not completedq(53310) end,
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
Watch the dialogue
talk Master Mathias Shaw##139798
|tip Inside the building.
turnin The Horde Uprising##52060 |goto 85.15,32.35
accept A Disturbance in Ashenvale##52062 |goto 85.15,32.35
step
Follow the path |goto 83.88,30.57 < 5 |walk
Run up the stairs |goto 83.48,29.81 < 5 |only if walking
Follow the path |goto 83.34,29.54 < 5 |only if walking
click Portal to Astranaar##297575
Take the Portal to Astranaar |q 52062/1 |goto 82.68,26.84
step
Find Delaryn Summermoon |q 52062/2 |goto Ashenvale/0 35.86,50.43
step
talk Captain Delaryn Summermoon##134578
turnin A Disturbance in Ashenvale##52062 |goto 35.86,50.43
accept The Light of Elune##52072 |goto 35.86,50.43
accept Knives of the Forsaken##53616 |goto 35.86,50.43
stickystart "Kill_Forsaken_Assassins"
step
clicknpc Astranaar Sentinel##144282+
|tip They look like Night Elf corpses on the ground around this area.
Honor #6# Fallen Soldiers |q 52072/1 |goto 35.88,50.20
step
label "Kill_Forsaken_Assassins"
kill 8 Forsaken Assassin##140801 |q 53616/1 |goto 36.06,50.26
|tip They are stealthed around this area.
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
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##140633+
|tip They look like friendly NPC's on the ground around this area.
|tip Some are shapeshifted in animal form and some look like night elves.
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52234/1 |goto 42.07,77.29
step
label "Kill_Frenzied_Blackwood_Furbolgs"
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
Enter the cave |goto 46.27,83.60 < 5 |walk
talk Gren Tornfur##140720
|tip Inside the cave.
Tell him _"Come with us to safety. We will not harm you."_
Rescue Gren Tornfur |q 52245/2 |goto 46.63,83.90
step
Leave the cave |goto 46.27,83.60 < 5 |walk
talk Elder Brownpaw##140721
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brownpaw |q 52245/3 |goto 46.47,85.73
step
label "Sabotage_Horde_Demolishers"
clicknpc Horde Demolisher##144103+
|tip They look like large siege vehicles on the ground around this area.
|tip Run away from them after you click them.
|tip Use the "Sleeping Powder" ability to put enemies to sleep.
|tip It appears as a button on the screen.
Sabotage #5# Horde Demolishers |q 53551/1 |goto 45.02,84.22
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
stickystart "Slay_Horde_Combatants"
step
click Azerite Deposit##292886+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53619/1 |goto 32.63,84.08
step
label "Slay_Horde_Combatants"
Kill enemies around this area
Slay #10# Horde Combatants |q 53621/1 |goto 32.63,84.08
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
Speak with Tree of Life |q 52257/1 |goto 42.09,66.86
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52257/2 |goto 42.17,69.08
step
Return to Malfurion Stormrage |goto 42.07,66.87 < 7 |noway |c |q 52257
step
talk Malfurion Stormrage##133693
turnin "Rock" The World##52257 |goto 42.30,66.80
accept Long Away##52197 |goto 42.30,66.80
step
talk Captain Delaryn Summermoon##134578
turnin Long Away##52197 |goto Darnassus/0 40.00,50.42
accept A Looming Threat##52279 |goto Darnassus/0 40.00,50.42
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
step
talk Malfurion Stormrage##140877
turnin A Threat from the North##52973 |goto Darkshore/0 50.42,20.01
accept Rescue Effort##52974 |goto 50.42,20.01
accept Defending Lor'danel##53622 |goto 50.42,20.01
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
accept Action This Day##52975 |goto 50.43,19.68
stickystart "Slay_Horde_Attackers"
step
talk Lor'danel Citizen##142408+
|tip They look like friendly NPCs cowering in fear on the ground around this area.
Tell them _"I have cleared a path - - you must escape now!"_
Rescue #8# Lor'danel Citizens |q 52974/1 |goto 50.80,19.30
step
kill Gormok Axefall##144364 |q 52975/1 |goto 47.67,20.42
step
kill Ragash Bloodwish##144365 |q 52975/2 |goto 46.82,18.82
step
label "Slay_Horde_Attackers"
Kill enemies around this area
Slay #15# Horde Attackers |q 53622/1 |goto 49.00,19.56
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
turnin Rescue Effort##52974 |goto 50.43,19.68
turnin Defending Lor'danel##53622 |goto 50.43,19.68
turnin Action This Day##52975 |goto 50.43,19.68
accept The Guidance of Our Shan'do##52977 |goto 50.43,19.68
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Travel to the Present |nobuff 609811 |goto 48.07,25.67 |q 52977
step
Find Malfurion in Darkshore |q 52977/1 |goto 46.17,24.42
step
Watch the dialogue
Assist Malfurion |q 52977/2 |goto 45.94,24.47
step
clicknpc Tamed Hippogryph##142110
Use Tyrande's Mount |q 52977/3 |goto 45.96,24.96
step
Return to Darnassus |goto Darnassus/0 43.01,73.09 < 7 |c |q 52977 |notravel
step
Enter the building |goto 43.01,74.83 < 5 |walk
talk Mia Greymane##142978
|tip Inside the building.
turnin The Guidance of Our Shan'do##52977 |goto 43.09,78.62
accept A Flicker of Hope##53095 |goto 43.09,78.62 |only if not completedq(53310)
step
Leave the building |goto 43.01,74.80 < 3 |walk
talk Darnassian Citizen##143409+
Tell them _"The flames are clear! Get to the Temple of the Moon!"_
Evacuate #982# Darnassian Citizens |q 53095/1 |goto 58.76,68.28 |only if not completedq(53310)
|tip Use the "Douse" ability on on fires around this area.
|tip It appears as a button on the screen.
|tip It is impossible to complete this objective, you will fail.
step
Return to the Temple of the Moon |goto 43.37,78.31 < 7 |c |q 53095 |notravel
step
Watch the dialogue
turnin A Flicker of Hope##53095 |goto 43.37,78.31
|tip You will turn in this quest automatically.
accept From the Ashes...##53310 |goto 43.37,78.31
|tip You will accept this quest automatically.
step
click Portal to Stormwind##303144 |goto 43.91,78.68
Teleport to Stormwind City |goto Stormwind City/0 49.59,86.53 < 7 |noway |c |q 53310
step
Enter the building |goto 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin From the Ashes...##53310 |goto 85.90,31.57
]])
ZygorGuidesViewer:RegisterGuide("Events\\Warlords of Draenor\\The Iron Horde Invasion",{
description="Take part in the opening event of the Warlords of Draenor!",
},[[
step
accept Iron Horde Invasion##36498 |goto Stormwind City 49.0,87.3
step
talk Vindicator Maraad##82270
turnin Iron Horde Invasion##36498 |goto Blasted Lands 66.6,28.2
accept Attack of the Iron Horde##35460 |goto Blasted Lands 66.6,28.2
accept Under Siege##35462 |goto Blasted Lands 66.6,28.2
step
accept Peeking into the Portal##36379 |goto 66.9,27.9
step
talk Araazi##85731
fpath Shattershore |goto Blasted Lands 67.7,28.0
stickystart "1"
step
click Telescope##237144
Use the telescope |q Peeking into the Portal##36379/1 |goto Blasted Lands 61.7,36.7
step
label "1"
clicknpc Iron Demolisher##82273
Destroy 3 Iron Demolishers |q Under Siege##35462/1
kill Ironmarch Grunt##76556+
Kill 8 Ironmarch Grunts |q Attack of the Iron Horde##35460/1 |goto Blasted Lands 64.7,35.2
step
talk Vindicator Maraad##82270
turnin Attack of the Iron Horde##35460 |goto Blasted Lands 66.6,28.2
turnin Under Siege##35462 |goto Blasted Lands 66.6,28.2
accept Subversive Scouts##35463 |goto Blasted Lands 66.6,28.2
step
talk Bodrick Grey##85213
turnin Peeking into the Portal##36379 |goto 66.9,27.9
accept Ending Execution##35464 |goto 66.9,27.9
stickystart "2"
step
kill Ironmarch Executioner##82774+
Stop 3 Executions |q Ending Execution##35464/1 |goto 59,29
step
label "2"
kill 5 Ironmarch Scout##76886 |q Stop the Executions##35463/1 |goto 68,30
|tip They are surrounding the entire encampment
step
talk Bodrick Grey##85213
turnin Ending Execution##35464 |goto Blasted Lands 66.9,27.9
step
talk Vindicator Maraad##82270
turnin Subversive Scouts##35463 |goto Blasted Lands 66.6,28.3
accept Investigating the Invasion##36307 |goto Blasted Lands 66.6,28
step
talk Vindicator Maraad##84929
turnin Investigating the Invasion##36307 |goto Blasted Lands 51.9,28.6
accept Lunatic Lieutenants##35486 |goto Blasted Lands 51.9,28.6
accept For Nethergarde!##35492 |goto Blasted Lands 51.9,28.6
step
talk Commander Vines##82447
accept Mementos of the Fallen##35494 |goto Blasted Lands 52.0,28.5
step
kill Rukah the Machinist##73458 |tip She walks around the front of Nethergarde Keep
collect Rukah's Battleplan##113400
Get Rukah's Battleplan |q Lunatic Lieutenants##35486/2 |goto Blasted Lands 57.4,16.8
step
click Keri's Mug##232576
collect Keri's Mug##113397 |q Mementos of the Fallen##35494/3 |goto Blasted Lands 59.4,17.9
step
click Krolan's Shield##232575
collect Krolan's Shield##113396 |q Mementos of the Fallen##35494/2 |goto Blasted Lands 60.6,20.0
step
click Strumner's Sword##232573
collect Strumner's Sword##113395 |q Mementos of the Fallen##35494/1 |goto Blasted Lands 61.8,14.9
step
kill Mokrik Blackfingers##73459
Get Mokrik's Battleplan |q Lunatic Lieutenants##35486/1 |goto Blasted Lands 62.9,13.1
step
click Alliance Flag##232532
Plant the Alliance Flag outside of the Main Keep |q For Nethergarde!##35492/3 |goto Blasted Lands 59.9,15.8
step
kill Gar Steelcrush##73446 |tip He's at the upstairs inside this Keep.
Gar's Battleplan  |q Lunatic Lieutenants##35486/3 |goto Blasted Lands 60.2,13.8
step
click Alliance Flag##232532
Plant the Alliance Flag at the Center of Nethergarde |q For Nethergarde!##35492/2 |goto Blasted Lands 61.6,18.5
step
click Alliance Flag##232532
Plant the Alliance Flag at the entrance to Nethergarde |q For Nethergarde!##35492/1 |goto Blasted Lands 63.0,22.5
step
talk Commander Vines##82447
turnin Mementos of the Fallen##35494 |goto Blasted Lands 52.0,28.5
step
talk Vindicator Maraad##82270
turnin Lunatic Lieutenants##35486 |goto Blasted Lands 51.9,28.6
turnin For Nethergarde!##35492 |goto Blasted Lands 51.9,28.6
accept Toothsmash the Annihilator##35495 |goto Blasted Lands 51.9,28.6
accept Death to the Dreadmaul##35488 |goto Blasted Lands 51.9,28.6
step
talk Enohar Thunderbrew##76111
accept Enohar's Revenge##35496 |goto Blasted Lands 51.8,28.7
step
kill Toothsmash the Annihilator##82451 |q Toothsmash the Annihilator##35495/1 |goto Blasted Lands 44.2,35.9
step
click Cooking Pot##232625
Poison the Cooking Pots |q Enohar's Revenge##35496/1 |goto Blasted Lands 44.3,35.6
You can find the _2nd Cooking Pot_ here: |goto Blasted Lands 43.5,37.0
You can find the _3rd Cooking Pot_ here: |goto Blasted Lands 43.9,31.0
step
kill 8 Dreadmaul Crusher##78345+ |q Death to the Dreadmaul##35488/1 |goto Blasted Lands 44.4,32.9
step
talk Enohar Thunderbrew##76111
turnin Enohar's Revenge##35496 |goto Blasted Lands 51.8,28.7
step
talk Vindicator Maraad##82270
turnin Toothsmash the Annihilator##35495 |goto Blasted Lands 51.9,28.6
turnin Death to the Dreadmaul##35488 |goto Blasted Lands 51.9,28.6
accept Gar'mak Bladetwist##35500 |goto Blasted Lands 51.9,28.6
step
kill Gar'mak Bladetwist##82918 |q Gar'mak Bladetwist##35500/1 |goto 40.1,11.3
|tip He's upstairs at the top of the Keep.
step
talk Vindicator Maraad##82270
turnin Gar'mak Bladetwist##35500 |goto Blasted Lands 51.9,28.6
accept Report to the King##36941 |goto Blasted Lands 51.9,28.6
step
talk King Varian Wrynn##29611
turnin Report to the King##36941 |goto Stormwind City 85.8,31.7
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Pilgrim's Bounty\\Pilgrim's Bounty Quests and Cooking 1-300 Guide",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.",
},[[
step
You will need to have 300 cooking in order to complete this guide
Open your cooking window before you continue, to detect your ability |cast cooking##2550
confirm
step
talk Human Commoner##18927
accept Pilgrim's Bounty##14022 |goto Stormwind City 61.7,74.1
step
talk Gregory Tabor##34675
turnin Pilgrim's Bounty##14022 |goto Elwynn Forest 34.1,51.5
step
talk Bountiful Table Hostess##34653
accept Sharing a Bountiful Feast##14064 |goto Elwynn Forest 34.2,51.1
step
clicknpc The Turkey Chair##34812
|tip They look like wooden chairs around a round white and green table with food on it.
Use the first ability on your hotbar to Pass the food to other players who are sitting at the table
|tip You must target the other players and use the Pass the Food ability. Do this repeatedly until you get an achievement.
Start a Food Fight! |achieve 3579 |goto 34.3,51.1
Use the other abilities on your hotbar to eat the food
|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair. Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
Eat each type of food 5 times in a row
|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
Gain the Spirit of Sharing |q 14064/1 |goto 34.3,51.1
step
talk Bountiful Table Hostess##34653
turnin Sharing a Bountiful Feast##14064 |goto 34.2,51.1
step
talk Ellen Moore##34710
skillmax Cooking,75
learn Spice Bread##37836 |goto 33.7,50.6
step
talk Wilmina Holbeck##34682
buy 1 Bountiful Cookbook##46809 |condition itemcount(46809) >= 1 |goto 34.1,51.5
step
Use your Bountiful Cookbook |use Bountiful Cookbook##46809
collect Recipe: Spice Bread Stuffing##44860 |future |q 14023
collect Recipe: Pumpkin Pie##44862 |future |q 14024
collect Recipe: Cranberry Chutney##44858 |future |q 14028
collect Recipe: Candied Sweet Potato##44859 |future |q 14030
collect Recipe: Slow-Roasted Turkey##44859 |future |q 14035
step
Use your Recipe: Spice Bread Stuffing to learn the recipe |use Recipe: Spice Bread Stuffing##44860
learn Spice Bread Stuffing##62050
step
talk Gregory Tabor##34675
accept Spice Bread Stuffing##14023 |goto 34.1,51.5
step
talk Wilmina Holbeck##34682
buy 5 Simple Flour##30817 |condition itemcount(30817) >= 5 |goto 34.1,51.5 < 5
buy 5 Mild Spices##2678 |condition itemcount(2678) >= 5 |goto 34.1,51.5 < 5
buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 34.1,51.5 < 5
step
Cook next to the Pilgrim's Bounty Cooking Fire Click Here |goto 33.8,50.8
create 5 Spice Bread##37836,Cooking,5 total |q 14023
step
create 5 Spice Bread Stuffing##62050,Cooking,5 total |q 14023/1 |goto 33.8,50.8
collect 5 Spice Bread Stuffing##44837 |q 14023/2 |goto 33.8,50.8
skill Cooking,100
|tip Keep creating the Spice Bread Stuffing until you reach level 100.
If you need to train your Cooking skill to allow a higher max level, click here to talk to Ellen Moore |goto 33.7,50.6
step
Use your Recipe: Pumpkin Pie to learn the recipe |use Recipe: Pumpkin Pie##44862
learn Pumpkin Pie##62044
step
talk Jasper Moore##34744
turnin Spice Bread Stuffing##14023
accept Pumpkin Pie##14024 |goto 33.9,50.8
step
talk Wilmina Holbeck##34682
buy 5 Ripe Elwynn Pumpkin##46784 |condition itemcount(46784) >= 5 |goto 34.1,51.5
buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 34.1,51.5
step
Cook next to the Pilgrim's Bounty Cooking Fire
create Pumpkin Pie##62044,Cooking,5 total |q 14024/1 |goto 33.8,50.8
collect 5 Pumpkin Pie##44836 |q 14024/2 |goto 33.8,50.8
create Pumpkin Pie##62044,Cooking,160 |goto 33.8,50.8
|tip Keep creating the Pumpkin Pie Recipe until you reach level 160.
If you need to train your Cooking skill to allow a higher max level, click here to talk to Ellen Moore |goto 33.7,50.6
step
Use your Recipe: Cranberry Chutney to learn the recipe |use Recipe: Cranberry Chutney##44858
learn Cranberry Chuntney##62049
step
talk Edward Winslow##34644
turnin Pumpkin Pie##14024
accept Cranberry Chutney##14028 |goto Dun Morogh,59.8,34.3
step
talk Elizabeth Barker Winslow##34645
buy 5 Tangy Southfury Cranberries##44854 |condition itemcount(44854) >= 5 |goto 59.77,34.34
buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 59.77,34.34
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 5 Cranberry Chutney##62049,Cooking,5 total |q 14028/1 |goto 59.61,34.94
collect 5 Cranberry Chutney##44840 |q 14028/2 |goto 59.61,34.94
create 5 Cranberry Chutney##62049,Cooking,220
If you need to train your Cooking skill to allow a higher max level, click here to talk to Caitrin Ironkettle |goto 52.9,36.1
step
talk Jasper Moore##34744
turnin Cranberry Chutney##14028 |goto Elwynn Forest 33.9,50.8
accept They're Ravenous In Darnassus##14030 |goto Elwynn Forest 33.9,50.8
step
Use your Recipe: Candied Sweet Potato to learn the recipe |use Recipe: Candied Sweet Potato##44859
learn Candied Sweet Potato##62051
step
talk Wilmina Holbeck##34682
buy 5 Ripe Elwynn Pumpkin##46784 |condition itemcount(46784) >= 5 |goto 34.1,51.5
buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 34.1,51.5
buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 34.1,51.5
buy 5 Mild Spices##2678 |condition itemcount(2678) >= 5 |goto 34.1,51.5
buy 5 Simple Flour##30817 |condition itemcount(30817) >= 5 |goto 34.1,51.5
step
Cook next to the Pilgrim's Bounty Cooking Fire
create Pumpkin Pie##62044,Cooking,5 total |q 14030 |goto 33.8,50.8
collect 5 Pumpkin Pie##44836 |q 14030/2 |goto 33.8,50.8
step
create 5 Spice Bread##37836,Cooking,5 total |n |goto 33.8,50.8
create 5 Spice Bread Stuffing##62050,Cooking,5 total |q 14030 |goto 33.8,50.8
collect 5 Spice Bread Stuffing##44837 |q 14030/1 |goto 33.8,50.8
step
talk Isaac Allerton##34676
turnin They're Ravenous In Darnassus##14030 |goto Darnassus 61.5,49.0
accept Candied Sweet Potatoes##14033 |goto Darnassus 61.5,49.0
step
talk Ikaneba Summerset##34681
buy 5 Teldrassil Sweet Potato##44855 |condition itemcount(44855 ) >= 5 |goto 61.5,49.0
buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 61.5,49.0
buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 61.5,49.0
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 5 Candied Sweet Potatoes##62051,Cooking,5 total |q 14033/1 |goto 62.10,48.99
collect 5 Candied Sweet Potatoes##44839 |q 14033/2 |goto 62.10,48.99
create 5 Candied Sweet Potatoes##62051,Cooking,280
If you need to train your Cooking skill to allow a higher max level, click here to talk to Mary Allerton |goto 66.5,35.1
step
talk Gregory Tabor##34675
turnin Candied Sweet Potatoes##14033 |goto Elwynn Forest,34.1,51.5
accept Slow-roasted Turkey##14035 |goto Elwynn Forest,34.1,51.5
step
Use your Recipe: Slow-Roasted Turkey to learn the recipe |use Recipe: Slow-Roasted Turkey##44861
learn Slow-Roasted Turkey##62045
step
kill Wild Turkey##32820+
|tip You can find these all around Elwynn Forest, so you are not limited to staying in this area. Ride around Elwynn Forest and look for Wild Turkeys, you should be able to find them easily if you ride around.
collect 5 Wild Turkey##44834 |q 14035 |goto 42.5,62.8
step
talk Wilmina Holbeck##34682
buy 10 Honey##44853 |condition itemcount(44853) >= 10 |goto 34.1,51.5
buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 34.1,51.5
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 5 Slow-Roasted Turkey##62045,Cooking,5 total |q 14035/1 |goto 33.8,50.8
collect 5 Slow-Roasted Turkey##44838 |q 14035/2 |goto 33.8,50.8
Earn the Now We're Cookin' Achievement |achieve 3576
create 5 Slow-Roasted Turkey##62045,Cooking,300
If you need to train your Cooking skill to allow a higher max level, click here to talk to Ellen Moore |goto 33.7,50.6
step
talk Isaac Allerton##34676
turnin Slow-roasted Turkey##14035 |goto Darnassus 61.5,49.1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Pilgrim's Bounty\\Pilgrim's Bounty Daily Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This quide will help run through the Pilgrims Bounty Dailies and Achievements to earn the Title Pilgrim.",
},[[
step
label "start"
These are the Dailies and Achievements for Pilgrim's Bounty. You can only do the Dailies once per day
You will need to have 300 cooking in order to complete this guide
Open your cooking window before you continue, to detect your ability |cast cooking##2550
confirm always
step
talk Innkeeper Allison##6740
home Trade District |q 14022 |future |goto Stormwind City,60.4,75.3
step
talk Human Commoner##18927
accept Pilgrim's Bounty##14022 |goto Stormwind City 61.7,74.1
step
talk Gregory Tabor##34675
turnin Pilgrim's Bounty##14022 |goto Elwynn Forest 34.1,51.5
step
clicknpc The Turkey Chair##34812
|tip They look like wooden chairs around a round white and green table with food on it.
Use the first ability on your hotbar to Pass the food to other players who are sitting at the table
|tip You must target the other players and use the Pass the Food ability. Do this repeatedly until you get an achievement.
Start a Food Fight! |achieve 3579 |goto Elwynn Forest 34.3,51.1
Use the other abilities on your hotbar to eat the food
|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair. Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
Earn the Pilgrims Paunch in Stormwind |achieve 3556/4 |goto Elwynn Forest 34.3,51.1
step
While still at the table, go to each of the chairs
While in each of the chairs, press 1
Pass the Candied Sweet Potatoes |achieve 3558/1 |goto Elwynn Forest 34.3,51.1
Pass the Cranberry Chutney |achieve 3558/2 |goto Elwynn Forest 34.3,51.1
Pass the Pumpkin Pie |achieve 3558/3 |goto Elwynn Forest 34.3,51.1
Pass the Slow-Roasted Turkey |achieve 3558/4 |goto Elwynn Forest 34.3,51.1
Pass the Spice Bread Stuffing |achieve 3558/5 |goto Elwynn Forest 34.3,51.1
Earn the Sharing is Caring Achievement |achieve 3558 |goto Elwynn Forest 34.3,51.1
step
talk Jasper Moore##34744
accept She Says Potato##14055 |goto Elwynn Forest 33.9,50.8
step
talk Ellen Moore##34710
accept We're Out of Cranberry Chutney Again?##14053 |goto 33.7,50.6
step
talk Wilmina Holbeck##34682
buy 20 Ripe Elwynn Pumpkin##46784 |condition itemcount(46784) >= 20 |q 14054/1 |goto Elwynn Forest,34.1,51.5
buy 20 Honey##44853 |condition itemcount(44853) >= 20 |q 14054/2 |goto Elwynn Forest 34.1,51.5
step
kill Wild Turkey##32820+
|tip You can find these all around Elwynn Forest, so you are not limited to staying in this area.
collect 20 Wild Turkey##44834 |q 14048 |future |goto 42.5,62.8
step
talk Mary Allerton##34711
accept Easy As Pie##14054 |goto Darnassus 61.9,46.2
step
create 20 Pumpkin Pie##62044,Cooking,20 total |q 14054/1 |goto 62.1,46.0
step
clicknpc The Turkey Chair##34812
|tip They look like wooden chairs around a round white and green table with food on it.
Use the other abilities on your hotbar to eat the food
|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair. Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
Eat each type of food 5 times in a row
|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
Earn the Pilgrims Paunch in Darnassus |achieve 3556/1 |goto Darnassus 62.8,48.2
step
talk Ikaneba Summerset##34681
buy 20 Teldrassil Sweet Potato##44855 |condition itemcount(44855) >= 20 |goto 61.7,49.1
buy 20 Honey##44853 |condition itemcount(44853) >= 20 |goto 61.7,49.1
buy 20 Autumnal Herbs##44835 |condition itemcount(44835) >= 20 |goto 61.7,49.1
step
talk Mary Allerton##34711
turnin Easy As Pie##14054 |goto Darnassus 61.9,46.2
Choose one of the following until you have all three pieces:
collect Pilgrim's Hat##46723
collect Pilgrim's Attire##46800
collect Turkey Shooter##44812
|tip You can collect multiple Turkey Shooters if you have the other 2 pieces.
Choose the Pilgrim's Bounty Bag and open it to get the Turkey Shooter |use Pilgrim's Bounty##116404
confirm
step
create 20 Candied Sweet Potato##62051,Cooking,20 total |q 14055/1 |goto 61.9,46.2
step
Go up the ramp in Exodar |goto The Exodar 53.2,33.9 < 20 |only if walking
Continue up the main ramp |goto The Exodar 64.8,35.5 < 20 |only if walking
clicknpc The Turkey Chair##34812
|tip They look like wooden chairs around a round white and green table with food on it.
Use the other abilities on your hotbar to eat the food
|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair. Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
Eat each type of food 5 times in a row
|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
Earn the Pilgrims Paunch in The Exodar |achieve 3556/2 |goto The Exodar,75.7,52.3
step
talk Caitrin Ironkettle##34708
accept Don't Forget The Stuffing!##14051 |goto Dun Morogh 60.1,34.3
accept Can't Get Enough Turkey##14048 |goto Dun Morogh 60.1,34.3
step
clicknpc The Turkey Chair##34812
|tip They look like wooden chairs around a round white and green table with food on it.
Use the other abilities on your hotbar to eat the food
|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair.  Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
Eat each type of food 5 times in a row
|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
Earn the Pilgrims Paunch in Ironforge |achieve 3556/3 |goto Dun Morogh 59.9,34.6
Earn the Pilgrims Paunch Achievement! |achieve 3556 |goto Dun Morogh 59.9,34.6
step
talk Elizabeth Barker Winslow##34645
buy 20 Tangy Wetland Cranberries##44854 |condition itemcount(44854) >= 20 |goto 59.8,34.3
buy 20 Mild Spices##2678 |condition itemcount(2678) >= 20 |goto 59.8,34.3
buy 20 Simple Flour##30817 |condition itemcount(30817) >= 20 |goto 59.8,34.3
buy 60 Honey##44853 |condition itemcount(44853) >= 60 |goto 59.8,34.3
buy 40 Autumnal Herbs##44835 |condition itemcount(44835) >= 40 |goto 59.8,34.3
buy 20 Tangy Wetland Cranberries##44854 |condition itemcount(44854) >= 20 |goto 59.8,34.3
step
create 20 Spice Bread##37836,Cooking,20 total |q 14051 |goto 60.0,34.4
step
create 20 Spice Bread Stuffing##62050,Cooking,20 total |q 14051/1 |goto 60.0,34.4
step
talk Caitrin Ironkettle##34708
turnin Don't Forget The Stuffing!##14051 |goto Dun Morogh 60.1,34.3
Choose one of the following until you have all three pieces:
collect Pilgrim's Hat##46723
collect Pilgrim's Attire##46800
collect Turkey Shooter##44812
|tip You can collect multiple Turkey Shooters if you have the other 2 pieces.
Choose the Pilgrim's Bounty Bag and open it to get the Turkey Shooter |use Pilgrim's Bounty##116404
confirm
step
create 20 Slow-Roasted Turkey##62045,Cooking,20 total |q 14048/1 |goto 60.0,34.4
step
talk Caitrin Ironkettle##34708
turnin Can't Get Enough Turkey##14048 |goto Dun Morogh 60.1,34.3
Choose one of the following until you have all three pieces:
collect Pilgrim's Hat##46723
collect Pilgrim's Attire##46800
collect Turkey Shooter##44812
|tip You can collect multiple Turkey Shooters if you have the other 2 pieces.
Choose the Pilgrim's Bounty Bag and open it to get the Turkey Shooter |use Pilgrim's Bounty##116404
confirm
step
create 20 Cranberry Chutney##62049,Cooking,20 total |q 14053/1 |goto 60.0,34.4
step
talk Jasper Moore##34744
turnin She Says Potato##14055 |goto Elwynn Forest 33.9,50.8
Choose one of the following until you have all three pieces:
collect Pilgrim's Hat##46723
collect Pilgrim's Attire##46800
collect Turkey Shooter##44812
|tip You can collect multiple Turkey Shooters if you have the other 2 pieces.
Choose the Pilgrim's Bounty Bag and open it to get the Turkey Shooter |use Pilgrim's Bounty##116404
confirm
step
talk Ellen Moore##34710
turnin We're Out of Cranberry Chutney Again?##14053 |goto 33.7,50.6
Choose one of the following until you have all three pieces:
collect Pilgrim's Hat##46723
collect Pilgrim's Attire##46800
collect Turkey Shooter##44812
|tip You can collect multiple Turkey Shooters if you have the other 2 pieces.
Choose the Pilgrim's Bounty Bag and open it to get the Turkey Shooter |use Pilgrim's Bounty##116404
confirm
Earn the Pilgrims Progress Achievement |achieve 3596
step
kill Wild Turkey##32820+
Quickly kill 40 Wild Turkeys and keep killing them until you earn the achievement:
|tip You can see how many turkeys you have killed with the Turkey Tracker buff.
|tip You can find more Turkeys all around Elwynn Forest.
The Turkinator! |achieve 3578 |goto 42.5,62.8
step
You should have three pieces of the Pilgrim's Attire now
Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
step
While wearing your Pilgrim's Attire, sit at any table's chair
Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
Pilgrim's Peril of Undercity |achieve 3580/4 |goto Undercity,68.6,6.7
step
While wearing your Pilgrim's Attire, sit at any table's chair
Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
Pilgrim's Peril of Silvermoon City |achieve 3580/2 |goto Eversong Woods 55.2,53.2
step
While wearing your Pilgrim's Attire, sit at any table's chair
Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
Pilgrim's Peril of Thunder Bluff |achieve 3580/3 |goto Thunder Bluff 28.6,62.8
step
While wearing your Pilgrim's Attire, sit at any table's chair
Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
Pilgrim's Peril of Orgrimmar |achieve 3580/1 |goto Durotar 46.2,15.1
Earn the Pilgrim's Peril Achievement! |achieve 3580 |goto Durotar 46.2,15.1
step
You should have a few Turkey Shooters from your daily quests, if you don't, you will need to do more dailies when possible for more
While in Durotar, shoot Horde Rogues with your Turkey Shooter |use Turkey Shooter##44812
Shoot a Blood Elf Rogue |achieve 3559/1 |goto Durotar 46.2,15.1
Shoot a Orc Rogue |achieve 3559/7 |goto Durotar 46.2,15.1
Shoot a Troll Rogue |achieve 3559/8 |goto Durotar 46.2,15.1
Shoot a Undead Rogue |achieve 3559/9 |goto Durotar 46.2,15.1
Shoot a Goblin Rogue |achieve 3559/4 |goto Durotar 46.2,15.1
step
You should have a few Turkey Shooters from your daily quests, if you don't, you will need to do more dailies when possible for more
While in Elwynn Forest, shoot Alliance Rogues with your Turkey Shooter |use Turkey Shooter##44812
Shoot a Dwarf Rogue |achieve 3559/2
Shoot a Gnome Rogue |achieve 3559/3
Shoot a Human Rogue |achieve 3559/5
Shoot a Night Elf Rogue |achieve 3559/6
Shoot a Worgen Rogue |achieve 3559/10
step
Equip your Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800
Equip your Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
kill Talon King Ikiss##18473
Earn the Achievment Terokkar Turkey Time |achieve 3582 |goto Sethekk Halls/2 32.5,39.5
step
You have reached the End of this guide, you can only do the Dailys Once per day
Click here to start the Dailys over |confirm always
|next "end" |only if achieved(3478)
|next "start" |only if not achieved(3478)
step
label "end"
Congratualtions, you have earned the Pilgrim Achievement!
]])
