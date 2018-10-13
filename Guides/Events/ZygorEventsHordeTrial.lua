local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("EventsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\World Events\\Battle for Azeroth (110-120)\\The Burning of Teldrassil",{
author="support@zygorguides.com",
description="This guide will help you assault Teldrassil on behalf of the Horde.",
condition_suggested=function() return level == 110 and not completedq(52981) end,
},[[
step
accept The Warchief Awaits##50476
|tip You will automatically accept this quest.
step
Follow the path |goto Undercity/0 52.05,64.52 < 5 |walk
Continue following the path |goto Undercity/0 46.32,72.88 < 5 |walk
Continue following the path |goto Undercity/0 45.29,78.11 < 5 |walk
Continue following the path |goto Undercity/0 46.20,83.81 < 5 |walk
Continue following the path |goto Undercity/0 48.81,87.79 < 5 |walk
Continue following the path |goto Undercity/0 52.44,89.43 < 5 |walk
Run up the stairs |goto 53.97,90.40 |goto Undercity/0 53.97,90.40 |only if walking
Follow the path |goto Undercity/0 54.76,94.39 < 5 |only if walking
Run up the stairs |goto Undercity/0 56.19,95.51 < 5 |only if walking
Run up the stairs |goto Undercity/0 57.19,93.29 < 5 |only if walking
talk Lady Sylvanas Windrunner##134554
turnin The Warchief Awaits##50476 |goto Undercity/0 58.14,91.88
accept The Warchief Commands##50642 |goto Undercity/0 58.10,91.88
step
talk High Overlord Saurfang##134574
turnin The Warchief Commands##50642 |goto Northern Barrens/0 50.88,46.00
accept A Quick Diversion##50646 |goto Northern Barrens/0 50.88,46.00
step
talk Lorash##134573
turnin A Quick Diversion##50646 |goto Ashenvale/0 38.91,55.30
accept Everybody Has a Price##50647 |goto Ashenvale/0 38.91,55.30
step
Eliminate #10# Guards |q 50647/1 |goto 36.15,50.64
|tip Use the "Marked!" ability on guards around this area.
|tip It appears as a button on the screen.
|tip You will be stealthed, so enemies won't attack you.
|tip You must not be mounted to do this.
step
Watch the dialogue
Return to the Outskirts of Astranaar |goto 38.92,55.35 < 7 |noway |c |q 50647
step
talk Lorash##134573
turnin Everybody Has a Price##50647 |goto 38.91,55.29
accept A Timely Arrival##50738 |goto 38.91,55.29
step
talk Lady Sylvanas Windrunner##135003
|tip She walks to this location.
turnin A Timely Arrival##50738 |goto 37.83,56.30
accept Zoram'gar Outpost##50740 |goto 37.83,56.30
step
Enter the building |goto 11.67,35.00 < 5 |walk
talk Dagrun Ragehammer##34303
|tip He walks around this area inside the building.
Tell him _"Warchief Sylvanas Windrunner requires your aid repairing her soldiers' weapons."_
Speak with the Weaponsmith |q 50740/3 |goto 11.56,35.36
step
Leave the building |goto 11.67,35.00 < 5 |walk
talk Commander Grimfang##34122
Tell him _"Commander, the warchief asks that you prepare your outpost for an incoming army."_
Speak with Commander Grimfang |q 50740/1 |goto 12.11,33.86
step
Enter the building |goto 12.86,34.12 < 3 |walk
talk Innkeeper Duras##43606
|tip Inside the building.
Tell her _"The warchief needs rations and lodging for an incoming army."_
Speak with the Innkeeper |q 50740/2 |goto 12.99,34.16
step
talk High Overlord Saurfang##134574
turnin Zoram'gar Outpost##50740 |goto 35.17,49.44
accept On The Prowl##50772 |goto 35.17,49.44
step
Meet Sylvanas Near the Entrance to Darkshore |q 50772/1 |goto Darkshore/0 44.07,90.46
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin On The Prowl##50772 |goto 44.08,90.50
accept Into the Woods##50800 |goto 44.08,90.50
step
Kill the enemies that attack in waves
Defeat #6# Ashenvale Huntresses |q 50800/1 |goto 44.08,90.50
step
talk Lady Sylvanas Windrunner##134554
turnin Into the Woods##50800 |goto 44.07,90.49
accept Ripe for the Picking##50823 |goto 44.07,90.49
step
talk High Overlord Saurfang##135443
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
stickystart "Destroy_Wisps"
step
kill Marked Tree##140924+
|tip Use the ability on your action bar.
|tip Aim near the bottom of them.
Fell #3# Marked Trees |q 50837/2 |goto Darkshore/0 41.60,90.63
step
label "Destroy_Wisps"
kill Wisp##141268+
|tip Use the ability on your action bar.
Destroy #30# Wisps |q 50837/3 |goto 41.60,90.63
step
Return to Zoram'gar Outpost |goto Ashenvale/0  12.23,33.21 < 7 |c |q 50837 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Quick Flyover##50837 |goto 12.02,33.78
accept An Unstoppable Force##50880 |goto 12.02,33.78
step
Meet Sylvanas at the Wall |q 50880/1 |goto Darkshore/0 44.00,90.18
step
Pass Through the Wall |q 50880/2 |goto 43.81,89.77
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin An Unstoppable Force##50880 |goto 42.84,87.43
accept Clearing Them Out##53604 |goto 42.84,87.43
accept A Glaive Misunderstanding##53605 |goto 42.84,87.43
stickystart "Kill_Darnassian_Archers"
step
use the Everburning Torch##158937
|tip Use it on Glaive Throwers around this area.
|tip They look like wooden artillery machines with purple wings on the ground around this area.
Burn #4# Glaive Throwers |q 53605/1 |goto 40.40,83.39
step
label "Kill_Darnassian_Archers"
Kill enemies around this area
Defeat #7# Night Elf Forces |q 53604/1 |goto 40.40,83.39
step
talk Lady Sylvanas Windrunner##134554
turnin Clearing Them Out##53604 |goto 42.43,82.06
turnin A Glaive Misunderstanding##53605 |goto 42.43,82.06
accept Blurred Vision##50878 |goto 42.43,82.06
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
kill 8 Sentry Owl##141359 |q 50878/1 |goto 42.36,78.18
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 50878/2 |goto 42.36,78.18
step
talk Lady Sylvanas Windrunner##135003
turnin Blurred Vision##50878 |goto 43.30,75.67
accept The Trees Have Ears##50879 |goto 43.30,75.67
step
kill Burning Ancient##141365 |q 50879/1 |goto 44.40,75.11
|tip You may need help with this.
step
talk Lady Sylvanas Windrunner##135003
turnin The Trees Have Ears##50879 |goto 43.30,75.67
step
Watch the dialogue
talk Lady Sylvanas Windrunner##135003
accept The Blackwood Den##52436 |goto 43.30,75.67
accept Aggressive Inspiration##53606 |goto 43.30,75.67
stickystart "Slay_Blackwood_Furbolgs"
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
label "Slay_Blackwood_Furbolgs"
Kill enemies around this area
Slay #10# Blackwood Furbolgs |q 52436/1 |goto 44.74,84.01
step
talk Lady Sylvanas Windrunner##134554
turnin The Blackwood Den##52436 |goto 43.32,84.71
turnin Aggressive Inspiration##53606 |goto 43.32,84.71
accept The Start of Something Good##52437 |goto 43.32,84.71
step
Meet Sylvanas at Nazj'vel |q 52437/1 |goto 35.78,84.79
step
talk Jux Burstkix##144346
turnin The Start of Something Good##52437 |goto 35.82,84.84
accept Fueling the Horde War Machine##53608 |goto 35.82,84.84
accept A Very Clear Message##53609 |goto 35.82,84.84
stickystart "Slay_Night_Elves"
step
click Azerite Deposit##297790+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53608/1 |goto 32.63,84.08
step
label "Slay_Night_Elves"
Kill enemies around this area
Slay #10# Night Elves |q 53609/1 |goto 32.63,84.08
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
Use the Goblin Hellion |q 52438/1 |goto 44.76,86.42
step
Ride the Goblin Hellion to Wildbend River |q 52438/2 |goto 41.15,69.32 |notravel
stickystart "Slay_Kaldorei_Forces"
step
kill 5 Awakened Ancient##140741 |q 52438/3 |goto 41.86,66.77
|tip Use the abilities on your action bar.
step
label "Slay_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei Forces |q 52438/4 |goto 41.86,66.77
step
Return to Lady Sylvanas Windrunner |goto 42.74,67.95 < 7 |c |q 52438 |notravel
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
step
talk Lady Sylvanas Windrunner##134554
accept Saurfang Returns##52967 |goto 44.70,86.78
step
talk High Overlord Saurfang##142310
turnin Saurfang Returns##52967 |goto 52.16,22.46
accept No Small Mercy##52970 |goto 52.16,22.46
accept Driving Them Out##53610 |goto 52.16,22.46
accept Seaside Rendezvous##52971 |goto 52.16,22.46
stickystart "Secure_Civilians"
stickystart "Slay_Lordanel_Defenders"
step
kill Ariel Stagguard##144345 |q 52971/2 |goto 51.73,17.76
|tip She walks around this area.
step
kill Caranne Briarbow##142749 |q 52971/1 |goto 46.73,18.79
step
label "Secure_Civilians"
talk Lor'danel Citizen##142408+
|tip They look like neutral NPCs cowering in fear on the ground around this area.
Tell them _"Come with us to safety. We will not harm you."_
Secure #8# Civilians |q 52970/1 |goto 50.80,19.30
step
label "Slay_Lordanel_Defenders"
Kill enemies around this area
Slay #15# Lor'danel Defenders |q 53610/1 |goto 49.00,19.56
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
Assist the Warchief |q 52981/2 |goto 46.07,24.31
step
Watch the dialogue
Follow Saurfang |q 52981/3 |goto 46.07,24.31
step
talk Lady Sylvanas Windrunner##144466
Tell her _"I am ready."_
Watch the dialogue
Speak with Sylvanas |q 52981/4 |goto 45.52,18.25
step
talk Lady Sylvanas Windrunner##144466
turnin Killer Queen##52981 |goto 45.51,18.24
step
_Lordaeron is under attack!_
Click Here to Load the "Battle for Lordaeron" Leveling Guide |confirm |next "Zygor's Events Guides\\World Events\\Battle for Azeroth (110-120)\\The Battle for Lordaeron"
|only if not completedq(51796)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Pilgrim's Bounty\\Pilgrim's Bounty Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.",
},[[
step
It's suggested that you have at least _300 skill level in Cooking_ before you begin the quests for this
|tip Refer to Zygor's Cooking Guide for assistance in leveling up to 300 in Cooking.
confirm |only if skill('Cooking') < 300
step
talk Bountiful Feast Hostess##34654
accept Sharing a Bountiful Feast##14065 |goto Undercity 65.6,8.1
step
clicknpc The Turkey Chair##34812
Use the first ability on your hotbar to Pass the food to other players who are sitting at the table
|tip You must target the other players and use the Pass the Food ability. Do this repeatedly until you get an achievement.
Start a Food Fight! |achieve 3579 |goto 64.7,7.9
step
Use the other abilities on your hotbar to eat the food
|tip You will only be able to eat certain foods at each place on the table. Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair. Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
Eat each type of food 5 times in a row
|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
Gain the Spirit of Sharing |q 14065/1 |goto 64.7,7.9
step
talk Bountiful Feast Hostess##34654
turnin Sharing a Bountiful Feast##14065 |goto 65.6,8.1
step
talk Roberta Carter##34712
skillmax Cooking,75
learn Spice Bread##37836 |goto 63.2,8.9
step
talk Rose Standish##34683
buy 1 Bountiful Cookbook##46810 |condition itemcount(46810) >= 1 |goto 63.9,11.1
step
use Bountiful Cookbook##46810
collect Recipe: Spice Bread Stuffing##46803
collect Recipe: Pumpkin Pie##46804
collect Recipe: Cranberry Chutney##46805
collect Recipe: Candied Sweet Potato##46806
collect Recipe: Slow-Roasted Turkey##46807
step
use Recipe: Spice Bread Stuffing##46803
learn Spice Bread Stuffing##66038
step
talk Miles Standish##34677
accept Spice Bread Stuffing##14037 |goto 63.9,11.5
step
talk Rose Standish##34683
buy 10 Simple Flour##30817 |condition itemcount(30817) >= 10 |goto 63.9,11.1
buy 10 Mild Spices##2678 |condition itemcount(2678) >= 10 |goto 63.9,11.1
buy 10 Autumnal Herbs##44835 |condition itemcount(44835) >= 10 |goto 63.9,11.1
only if not completedq(14037)
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 10 Spice Bread##37836,Cooking,10 total |goto Undercity 63.2,8.3
only if not completedq(14037)
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 5 Spice Bread Stuffing##66038,Cooking,10 total |q 14037/1 |goto Undercity 63.2,8.3
collect 5 Spice Bread Stuffing##44837 |q 14037/2 |goto Undercity 63.2,8.3
only if not completedq(14037)
step
use Recipe: Pumpkin Pie##46804
|tip You will need to be at least 100 in Cooking to learn this.
learn Pumpkin Pie##66036
step
talk William Mullins##34768
turnin Spice Bread Stuffing##14037 |goto 65.3,14.3
accept Pumpkin Pie##14040 |goto 65.3,14.3
step
talk Rose Standish##34683
buy 5 Ripe Tirisfal Pumpkin##46796 |condition itemcount(46796) >= 5 |goto 63.9,11.1
buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 63.9,11.1
only if not completedq(14040)
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 5 Pumpkin Pie##66036,Cooking,5 total |q 14040/1 |goto Undercity 63.2,8.3
collect 5 Pumpkin Pie##44836 |q 14040/2 |goto Undercity 63.2,8.3
only if not completedq(14040)
step
use Recipe: Cranberry Chutney##46805
|tip You will need to be at least 160 in Cooking to learn this.
learn Cranberry Chutney##66035
step
talk Francis Eaton##34679
turnin Pumpkin Pie##14040 |goto Durotar 46.6,13.8
accept Cranberry Chutney##14041 |goto Durotar 46.6,13.8
step
talk Dalni Tallgrass##34685
buy 10 Tangy Southfury Cranberries##46793 |condition itemcount(46793) >= 10 |goto 46.6,13.8
buy 10 Honey##44853 |condition itemcount(44853) >= 10 |goto 46.6,13.8
only if not completedq(14041)
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 10 Cranberry Chutney##66035,Cooking,10 total |q 14041/1 |goto Durotar 46.4,13.8
collect 10 Cranberry Chutney##44840 |q 14041/2 |goto Durotar 46.4,13.8
only if not completedq(14041)
step
talk Dokin Farplain##34678
turnin Cranberry Chutney##14041 |goto Thunder Bluff 30.9,63.7
accept Candied Sweet Potatoes##14043 |goto Thunder Bluff 30.9,63.7
step
use Recipe: Candied Sweet Potatoes##46806
|tip You will need to be at least 160 in Cooking to learn this.
learn Candied Sweet Potatoes##66034
step
talk Laha Farplain##34684
buy 5 Mulgore Sweet Potato##46797 |condition itemcount(46797) >= 5 |goto 31.1,63.4
buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto 31.1,63.4
buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 31.1,63.4
only if not completedq(14043)
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 5 Candied Sweet Potatoes##66034,Cooking,5 total |q 14043/1 |goto Thunder Bluff 30.5,70.1
collect 5 Candied Sweet Potatoes##44839 |q 14043/2 |goto Thunder Bluff 30.5,70.1
only if not completedq(14043)
step
use Recipe: Slow-Roasted Turkey##46807
|tip You will need to be at least 160 in Cooking to learn this.
learn Slow-Roasted Turkey##66037
step
talk Francis Eaton##34679
turnin Candied Sweet Potatoes##14043 |goto Durotar 46.6,13.8
accept Undersupplied in the Undercity##14044 |goto Durotar 46.6,13.8
step
talk Rose Standish##34683
buy 5 Honey##44853 |condition itemcount(44853) >= 5 |goto Undercity 64.2,10.9
buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 64.2,10.9
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 5 Cranberry Chutney##66035,Cooking,5 total |goto Undercity 63.1,8.3
create 5 Spice Bread Stuffing##66038,Cooking,5 total |goto Undercity 63.1,8.3
step
talk Miles Standish##34677
turnin Undersupplied in the Undercity##14044 |goto Undercity 63.9,11.5
accept Slow-roasted Turkey##14047 |goto Undercity 63.9,11.5
step
kill Wild Turkey##32820+
|tip You can find these all around Tirisfal Glades, so you are not limited to staying in this area. Ride around Tirisfal Glades and look for Wild Turkeys, you should be able to find them easily if you ride around.
collect 20 Wild Turkey##44834 |q 14047 |goto Tirisfal Glades 62.2,56.4
step
talk Rose Standish##34683
buy 10 Honey##44853 |condition itemcount(44853) >= 10 |goto Undercity 63.9,11.1
buy 5 Autumnal Herbs##44835 |condition itemcount(44835) >= 5 |goto 63.9,11.1
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 5 Slow-Roasted Turkey##66037,Cooking,5 total |q 14047/1 |goto 63.1,8.3
collect 5 Slow-Roasted Turkey##44838 |q 14047/2 |goto 63.1,8.3
step
talk Francis Eaton##34679
turnin Slow-roasted Turkey##14047 |goto Durotar 46.6,13.8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Events Guides\\Pilgrim's Bounty\\Pilgrim's Bounty Achievements and Dailies",{
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
},[[
step
label "start"
clicknpc The Turkey Chair##34812
Eat each type of food 5 times in a row
|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
Gain the Spirit of Sharing |achieve 3557/2 |goto Eversong Woods 55.7,53.2
Earn the Pilgrim's Paunch Achievement |achieve 3557/2 |goto Eversong Woods 55.7,53.2
step
While still at the table, go to each of the chairs
While in each of the chairs, press 1
Pass the Candied Sweet Potatoes |achieve 3558/1
Pass the Cranberry Chutney |achieve 3558/2
Pass the Pumpkin Pie |achieve 3558/3
Pass the Slow-Roasted Turkey |achieve 3558/4
Pass the Spice Bread Stuffing |achieve 3558/5
Earn the Sharing is Caring Achievement |achieve 3558
step
talk William Mullins##34768
accept She Says Potato##14058 |goto Undercity 65.2,14.2
step
talk Roberta Carter##34712
accept We're Out of Cranberry Chutney Again?##14059 |goto Undercity 63.2,9.0
step
talk Rose Standish##34683
buy 20 Ripe Tirisfal Pumpkin##46796 |condition itemcount(46796) >= 20 |goto 63.9,11.1
buy 20 Simple Flour##30817 |condition itemcount(30817) >= 20 |goto 63.9,11.1
buy 20 Mild Spices##2678 |condition itemcount(2678) >= 20 |goto 63.9,11.1
buy 20 Autumnal Herbs##44835 |condition itemcount(44835) >= 20 |goto 63.9,11.1
step
kill Wild Turkey##32820+
|tip You can find these all around Tirisfal Glades, so you are not limited to staying in this area. Ride around Tirisfal Glades and look for Wild Turkeys, you should be able to find them easily if you ride around.
collect 20 Wild Turkey##44834 |goto Tirisfal Glades 62.2,56.4
step
talk Ondani Greatmill##34713
accept Can't Get Enough Turkey##14061 |goto Durotar 46.4,13.9
accept Don't Forget The Stuffing!##14062 |goto Durotar 46.4,13.9
step
talk Dalni Tallgrass##34685
buy 20 Tangy Southfury Cranberries##46793 |condition itemcount(46793) >= 20 |goto Durotar 46.6,13.8
step
talk Laha Farplain##34684
buy 20 Mulgore Sweet Potato##46797 |condition itemcount(46797) >= 20 |goto Thunder Bluff 31.0,63.3
buy 20 Honey##44853 |condition itemcount(44853) >= 20 |goto Thunder Bluff 31.0,63.3
step
talk Mahara Goldwheat##34714
accept Easy As Pie##14060 |goto Thunder Bluff 30.9,69.7
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 20 Pumpkin Pie##66036,Cooking,20 total |q 14060/1 |goto Thunder Bluff 30.5,70.2
step
talk Mahara Goldwheat##34714
turnin Easy As Pie##14060 |achieve 3597/3 |goto Thunder Bluff 30.9,69.7
collect Pilgrim's Hat##46723
|tip You need the hat for a later achievement.
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 20 Spice Bread##37836,Cooking,20 total |n
create 20 Spice Bread Stuffing##66038,Cooking,20 total |q 14062/1 |goto Durotar 46.4,13.9
step
talk Dalni Tallgrass##34685
buy 40 Honey##44853 |condition itemcount(44853) >= 40 |goto Durotar 46.6,13.8
buy 20 Autumnal Herbs##44835 |condition itemcount(44835) >= 20 |goto Durotar 46.6,13.8
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 20 Slow-Roasted Turkey##66037+,Cooking,20 total |q 14061/1 |goto 46.4,13.9
step
talk Ondani Greatmill##34713
turnin Can't Get Enough Turkey##14061 |achieve 3597/1 |goto Durotar 46.4,13.9
collect Pilgrim's Attire##46800 |or |goto Durotar 46.4,13.9
|tip You only need this, the Dress or the Robes, not all 3.
collect Pilgrim's Dress##44785 |or |goto Durotar 46.4,13.9
|tip You only need this, the Attire or the Robes, not all 3.
collect Pilgrim's Robe##46824 |or |goto Durotar 46.4,13.9
|tip You only need this, the Attire or the Dress, not all 3.
step
talk Ondani Greatmill##34713
turnin Don't Forget The Stuffing!##14062 |achieve 3597/2 |goto Durotar 46.4,13.9
collect Pilgrim's Bounty##116404 |goto Durotar 46.4,13.9
step
use Pilgrim's Bounty##116404
collect 1 Turkey Shooter##44812
|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
step
talk Rose Standish##34683
buy 40 Honey##44853 |condition itemcount(44853) >= 40 |goto Undercity 63.9,11.1
buy 20 Autumnal Herbs##44835 |condition itemcount(44835) >= 20 |goto Undercity 63.9,11.1
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 20 Candied Sweet Potato##66034,Cooking,20 total |q 14058/1 |goto Undercity 63.2,8.4
step
Cook next to the Pilgrim's Bounty Cooking Fire
create 20 Cranberry Chutney##66035,Cooking,20 total |q 14059/1 |goto Undercity 63.2,8.4
step
talk Roberta Carter##34712
turnin We're Out of Cranberry Chutney Again?##14059 |achieve 3597/5 |goto Undercity 63.2,8.9
collect Pilgrim's Bounty##116404 |goto Undercity 63.2,8.9
step
use Pilgrim's Bounty##116404
collect 2 Turkey Shooter##44812
|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
step
talk William Mullins##34768
turnin She Says Potato##14058 |achieve 3597/4 |goto 65.2,14.2
collect Pilgrim's Bounty##116404 |goto 65.2,14.2
step
use Pilgrim's Bounty##116404
collect 3 Turkey Shooter##44812
|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
step
Earn the Pilgrim's Progress Achievement |achieve 3597
step
Kill 40 turkeys without letting your Turkey Tracker Buff expire
|tip You will need to fly around Tirisfal Glades. You will be given 30 seconds for each kill to find a new turkey.
kill Wild Turkey##32820+ |n
Earn the Turkinator Achievement |achieve 3578 |goto Tirisfal Glades 62.5,57.8
step
Enter Sethekk Halls |goto Sethekk Halls/1 73.4,36.5 < 15
Fight to the end of the Instance
Before Engaging Talon King Ikiss, equip
Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or
Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824 |or
Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
Kill Talon King Ikiss while wearing these items |goto Sethekk Halls/2 33.3,30.0
Earn the Terokkar Turkey Time Achievement |achieve 3582
step
clicknpc The Turkey Chair##34812
Eat each type of food 5 times in a row
|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
Acquire the Spirit of Sharing |achieve 3557/1 |goto Durotar 46.4,14.6
step
clicknpc The Turkey Chair##34812
Eat each type of food 5 times in a row
|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
Acquire the Spirit of Sharing |achieve 3557/3 |goto Thunder Bluff 29.1,62.5
step
clicknpc The Turkey Chair##34812
Eat each type of food 5 times in a row
|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
Acquire the Spirit of Sharing |achieve 3557/2 |goto Eversong Woods/0 55.5,53.1
step
clicknpc The Turkey Chair##34812
Eat each type of food 5 times in a row
|tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
Acquire the Spirit of Sharing |achieve 3557/4 |goto Undercity/0 67.6,14.5
step
Earn the Pilgrim's Paunch Achievement |achieve 3557
step
You should have a few Turkey Shooters from your daily quests, if you don't, you will need to do more dailies when possible for more
use Turkey Shooter##44812
|tip While in Dun Morogh, shoot Alliance Rogues with your Turkey Shooter.
Shoot a Dwarf Rogue |achieve 3559/2 |goto Dun Morogh 54.0,48.0
Shoot a Gnome Rogue |achieve 3559/3 |goto Dun Morogh 54.0,48.0
Shoot a Human Rogue |achieve 3559/5 |goto Dun Morogh 54.0,48.0
Shoot a Night Elf Rogue |achieve 3559/6 |goto Dun Morogh 54.0,48.0
Shoot a Worgen Rogue |achieve 3559/10 |goto Dun Morogh 54.0,48.0
step
You should have a few Turkey Shooters from your daily quests, if you don't, you will need to do more dailies when possible for more
use Turkey Shooter##44812
|tip While in Durotar, shoot Horde Rogues with your Turkey Shooter.
Shoot a Blood Elf Rogue |achieve 3559/1 |goto Durotar 46.2,15.1
Shoot a Orc Rogue |achieve 3559/7 |goto Durotar 46.2,15.1
Shoot a Troll Rogue |achieve 3559/8 |goto Durotar 46.2,15.1
Shoot a Undead Rogue |achieve 3559/9 |goto Durotar 46.2,15.1
Shoot a Goblin Rogue |achieve 3559/4 |goto Durotar 46.2,15.1
step
Ride the boat to the Exodar |goto Teldrassil 52.0,89.0 < 20 |walk
clicknpc The Turkey Chair##34812
Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or
Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824 |or
Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
Take a Seat at the Exodar's Bountiful Table |achieve 3581/2 |goto The Exodar 75.7,52.3
step
clicknpc The Turkey Chair##34812
Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or
Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824 |or
Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
Take a Seat at Darnassus' Bountiful Table |achieve 3581/1 |goto Darnassus 62.8,48.2
step
clicknpc The Turkey Chair##34812
Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or
Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824 |or
Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
Take a Seat at Ironforge's Bountiful Table |achieve 3581/3 |goto Dun Morogh 59.9,34.6
step
clicknpc The Turkey Chair##34812
Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or
Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824 |or
Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
Take a Seat at Stormwind's Bountiful Table |achieve 3581/4 |goto Elwynn Forest 34.3,51.1
step
Achieve Pilgrim's Peril |achieve 3581
step
label "daily"
talk William Mullins##34768
accept She Says Potato##14058 |goto Undercity 65.2,14.2
step
talk Roberta Carter##34712
accept We're Out of Cranberry Chutney Again?##14059 |goto Undercity 63.2,9.0
step
talk Rose Standish##34683
buy 20 Ripe Tirisfal Pumpkin##46796 |goto 63.9,11.1
buy 20 Simple Flour##30817 |goto 63.9,11.1
buy 20 Mild Spices##2678 |goto 63.9,11.1
buy 20 Autumnal Herbs##44835 |goto 63.9,11.1
step
kill Wild Turkey##32820+
|tip You can find these all around Tirisfal Glades, so you are not limited to staying in this area. Ride around Tirisfal Glades and look for Wild Turkeys, you should be able to find them easily if you ride around.
collect 20 Wild Turkey##44834 |goto Tirisfal Glades 62.2,56.4
step
talk Ondani Greatmill##34713
accept Can't Get Enough Turkey##14061 |goto Durotar 46.4,13.9
accept Don't Forget The Stuffing!##14062 |goto Durotar 46.4,13.9
step
talk Dalni Tallgrass##34685
buy 20 Tangy Southfury Cranberries##46793 |goto Durotar 46.6,13.8
step
talk Laha Farplain##34684
buy 20 Mulgore Sweet Potato##46797 |goto Thunder Bluff 31.0,63.3
buy 20 Honey##44853 |goto Thunder Bluff 31.0,63.3
step
talk Mahara Goldwheat##34714
accept Easy As Pie##14060 |goto Thunder Bluff 30.9,69.7
step
create 20 Pumpkin Pie##66036,Cooking,20 total |q 14060/1
step
talk Mahara Goldwheat##34714
turnin Easy As Pie##14060 |goto Thunder Bluff 30.9,69.7
step
collect Turkey Shooter##44812
|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
step
create 20 Spice Bread##37836,Cooking,20 total |n |goto Durotar 46.4,13.9
create 20 Spice Bread Stuffing##66038,Cooking,20 total |q 14062/1 |goto Durotar 46.4,13.9
step
talk Dalni Tallgrass##34685
buy 40 Honey##44853 |goto Durotar 46.6,13.8
buy 20 Autumnal Herbs##44835 |goto Durotar 46.6,13.8
step
create 20 Slow-Roasted Turkey##66037,Cooking,20 total |q 14061/1 |goto 46.4,13.9
step
talk Ondani Greatmill##34713
turnin Can't Get Enough Turkey##14061 |achieve 3597/1 |goto Durotar 46.4,13.9
step
collect Turkey Shooter##44812
|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
step
talk Ondani Greatmill##34713
turnin Don't Forget The Stuffing!##14062 |achieve 3597/2 |goto Durotar 46.4,13.9
step
collect Turkey Shooter##44812
|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
step
talk Rose Standish##34683
buy 40 Honey##44853 |goto Undercity 63.9,11.1
buy 20 Autumnal Herbs##44835 |goto Undercity 63.9,11.1
step
create 20 Candied Sweet Potato##66034,Cooking,20 total |q 14058/1 |goto Undercity 63.2,8.4
step
create 20 Cranberry Chutney##66035,Cooking,20 total |q 14059/1
step
talk Roberta Carter##34712
turnin We're Out of Cranberry Chutney Again?##14059 |achieve 3597/5 |goto Undercity 63.2,8.9
step
use Pilgrim's Bounty##116404
collect Turkey Shooter##44812
|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
step
talk William Mullins##34768
turnin She Says Potato##14058 |achieve 3597/4  |goto 65.2,14.2
step
collect Turkey Shooter##44812
|tip Collect Turkey Shooters. You will need at least 8 for an Achievement.
step
For the achievement _Turkey Lurkey_, you have to hit 8 difference races of rogues with the Turkey shooter
use Turkey Shooter##44812
Shoot a Dwarf Rogue |achieve 3559/2 |goto Elwynn Forest 34.7,50.6
Shoot a Gnome Rogue |achieve 3559/3 |goto Elwynn Forest 34.7,50.6
Shoot a Human Rogue |achieve 3559/4 |goto Elwynn Forest 34.7,50.6
Shoot a Night Elf Rogue |achieve 3559/5 |goto Elwynn Forest 34.7,50.6
|tip You can look for the get a maximum of 5 Turkey Shooters per day, so it will take 2 days to do this if you don't have any already.
step
For the achievement _Turkey Lurkey_, you have to hit 8 difference races of rogues with the Turkey shooter.
Shoot a Blood Elf Rogue |achieve 3559/1 |goto Durotar 46.5,14.6
Shoot a Orc Rogue |achieve 3559/6 |goto Durotar 46.5,14.6
Shoot a Troll Rogue |achieve 3559/7 |goto Durotar 46.5,14.6
Shoot an Undead Rogue |achieve 3559/8 |goto Durotar 46.5,14.6
|tip You can look for the get a maximum of 5 Turkey Shooters per day, so it will take 2 days to do this if you don't have any already.
step
Click here to return to the start of the Daily quests |next "daily" |confirm |only if not achieved(3478)
|next "finish" |only if achieved(3478)
step
label "finish"
Congratulations, you have completed the Pilgrim achievement!
]])
