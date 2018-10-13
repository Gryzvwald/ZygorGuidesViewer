local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
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
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following:\n"..
"\nBattle for Azeroth \"The Battle for Lordaeron\" introduction scenario\n"..
"\nObtaining the Heart of Azeroth\n"..
"\nChoosing which zones to complete quests in to level your character\n",
condition_suggested=function() return level >= 110 and level <= 120 end,
startlevel=110.0,
endlevel=120.0,
image=ZGV.DIR.."\\Guides\\Images\\BfAIntro",
},[[
step
Starting Guide |next "Fresh_Start_BFA" |only if not completedq(52131)
Starting Guide |next "Choose_Next_Questing_Zone_BFA" |only if completedq(52131)
step
label "Fresh_Start_BFA"
accept Hour of Reckoning##53372
|tip Relog if you do not automatically accept this quest.
step
Enter the building |goto Orgrimmar/1 49.88,75.54 < 10 |walk
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Hour of Reckoning##53372 |goto Orgrimmar/1 48.52,70.73
accept The Battle for Lordaeron##51796 |goto Orgrimmar/1 48.52,70.73
step
talk Isabella##139093
|tip Inside the building.
Tell her _"I am ready to go to the Undercity."_
Travel to Lordaeron |scenariostart |goto 47.79,71.69 |q 51796 |or |next "Intro_Scenario"
|tip It may take a moment to enter the scenario.
_Or_
Tell her _"I've heard this tale before... <Skip the scenario and begin your next mission.>"_
|tip This will allow you to skip the intro scenario if you've already completed it on another character.
Skip the Battle for Lordaeron |condition readyq(51796) |goto 47.79,71.69 |or |future |next "Intro_Scenario_Completed"
step
label "Intro_Scenario"
Watch the dialogue
Report to High Overlord Saurfang |scenariogoal 1/38253 |goto Undercity BFA/0 84.42,25.60 |q 51796
step
talk Friendly NPCs
|tip They have various names, and are highlighted around this area inside the building.
|tip They appear on your minimap as yellow dots.
Tell them "_The Undercity is under attack! Get to the mage portal!"_
kill SI:7 Operative##131137+
Secure the Mage Distrct |scenariostage 2 |goto 75.33,30.32 |q 51796
step
Follow the path |goto 79.69,43.74 < 15 |only if walking
Watch the dialogue
|tip Follow High Overlord Saurfang as he walks.
Follow Saurfang to the Heart of the City |scenariogoal 3/38468 |goto 69.60,49.58 |q 51796
step
talk Friendly NPCs
|tip They have various names, and are highlighted around this area inside the building.
Tell them "_The Undercity is under attack! Get to the mage portal!"_
Evacuate the Remainder of Undercity |scenariostage 4 |goto 67.21,46.18 |q 51796
step
clicknpc Portal to Lordaeron##131087 |goto 67.08,45.95
|tip Inside the building.
Teleport to the Ruins of Lordaeron |goto Ruins of Lordaeron/0 48.08,74.52 < 10 |noway |c |q 51796
step
Watch the dialogue
|tip Follow High Overlord Saurfang as he walks.
Follow Saurfang to Battle |scenariogoal 5/39077 |goto 48.13,68.72 |q 51796
step
Kill enemies around this area
Break Their Front Line |scenariostage 6 |goto 48.27,66.90 |q 51796
step
Watch the dialogue
Kill the enemies that attack in waves
Defeat #3# Waves of Attackers |scenariogoal 7/39562 |goto 47.84,61.98 |q 51796
step
talk Sludge Guard##133115
Tell him _"Gas mask and blight canister, please. I want to see what this thing can do."_
Request a Gas Mask and Blight Canister |havebuff 629984 |goto 48.31,67.58 |q 51796
step
Kill enemies around this area
|tip Use the "Blight Canister" ability.
|tip It appears as a button on the screen.
|tip Try to make them run north.
clicknpc Wounded Horde Soldier##127065+
|tip They look like Alliance soldiers standing with huge partially filled red bubbles above their heads around this area.
|tip They will appear on your minimap as yellow dots.
Use the Blight on Alliance Forces to Drive Them Away |scenariostage 8 |goto 48.34,59.90 |q 51796
step
Run up the stairs |goto 49.01,72.28 < 10 |only if walking
Follow the path |goto 50.27,72.78 < 15 |only if walking
Follow the path |goto 51.94,75.98 < 30 |only if walking
Continue following the path |goto 51.61,86.86 < 30 |only if walking
Watch the dialogue
|tip Follow Nathanos Blightcaller as he runs.
Follow Nathanos to the Keep |scenariostage 9 |goto 46.53,89.24 |q 51796
step
Watch the dialogue
Intercept the Alliance |scenariostage 10 |goto 46.53,89.24 |q 51796
step
Kill enemies around this area
Defeat King Anduin Wrynn and His Allies |scenariostage 11 |goto 46.82,89.35 |q 51796
step
Run up the stairs |goto 51.91,74.60 < 10 |only if walking
Follow the path |goto 50.81,72.81 < 15 |only if walking
Watch the dialogue
|tip Follow Nathanos Blightcaller as he walks.
Follow Nathanos to Safety |scenariostage 12 |goto 48.18,74.28 |q 51796
step
Enter the building |goto 48.71,76.64 < 10 |walk
Watch the dialogue
Follow Sylvanas Windrunner |scenarioend |goto 48.10,78.26 |q 51796
step
Return to Orgrimmar |goto Orgrimmar/1 49.02,91.80 < 10 |c |q 51796 |notravel
step
label "Intro_Scenario_Completed"
talk Nathanos Blightcaller##140176
|tip On top of the building.
turnin The Battle for Lordaeron##51796 |goto 48.90,91.51
step
accept A Dying World##53028 |goto 48.90,91.51
|tip You will automatically accept this quest.
step
click Portal to Uldum
Take the Portal to Uldum to Get Closer to Silithus |q 53028/1 |goto 48.87,38.55
step
Reach Silithus |q 53028/2 |goto Silithus/0 42.22,44.27
step
talk Magni Bronzebeard##142322
turnin A Dying World##53028 |goto 42.22,44.27
accept The Heart of Azeroth##51211 |goto 42.22,44.27
step
click Titan Translocator
Use the Device in Silithus to Travel to the Chamber of the Heart |q 51211/1 |goto 43.20,44.49
step
Travel to the Chamber of Heart |goto Chamber Of Heart/0 50.12,30.35 < 10 |noway |c |q 51211
step
click Titan Console
|tip Inside the building.
Choose _(View events that led to Azeroth's wound)_
Watch the dialogue
Witness Past Events on the Titan Console |q 51211/2 |goto 50.16,55.19
step
Watch the dialogue
talk Magni Bronzebeard##136907
|tip Inside the building.
Ask him _"What does Azeroth want of me, Magni?"_
Watch the dialogue
Speak to Magni Within the Chamber of Heart |q 51211/3 |goto 50.15,53.76
step
talk Magni Bronzebeard##136907
|tip Inside the building.
turnin The Heart of Azeroth##51211 |goto 50.14,53.76
accept Infusing the Heart##52428 |goto 50.14,53.76
step
Use the Heart of Azeroth
|tip Use it next to Azerite Cracks around this area.
|tip They look like blue glowing rock stumps inside the building on the ground around this area.
|tip It appears as a button on the screen.
Absorb the Azerite Wounds |q 52428/1 |goto 50.18,59.01
step
Use the Heart of Azeroth
|tip It appears as a button on the screen.
|tip Inside the building.
Watch the dialogue
Use the Heart of Azeroth to Mend the Seal |q 52428/3 |goto 50.14,63.94
step
talk Magni Bronzebeard##136907
|tip Inside the building.
turnin Infusing the Heart##52428 |goto 50.14,53.75
accept The Speaker's Imperative##53031 |goto 50.14,53.75
step
click Teleport Pad
|tip Inside the building.
Return to Orgrimmar |q 53031/1 |goto 50.12,30.40
step
talk Nathanos Blightcaller##140176
|tip On top of the building.
turnin The Speaker's Imperative##53031 |goto Orgrimmar/1 48.91,91.51
accept Mission Statement##51443 |goto Orgrimmar/1 48.91,91.51
step
Enter the building |goto 49.88,75.54 < 10 |walk
Watch the dialogue
|tip Inside the building.
Speak to Warchief Sylvanas Windrunner |q 51443/1 |goto 49.36,74.06
step
Leave the building |goto 49.87,75.51 < 10 |walk
Enter the building |goto 53.46,78.85 < 10 |walk
Watch the dialogue
|tip Inside the building.
Meet Your Team |q 51443/2 |goto 54.43,78.43
step
Watch the dialogue
talk Nathanos Blightcaller##135205
|tip Inside the building.
turnin Mission Statement##51443 |goto 54.44,78.42
accept The Stormwind Extraction##50769 |goto 54.44,78.42
step
click Blightcaller's Easy Death##289645
|tip Inside the building.
Take a Potion |q 50769/1 |goto 54.58,78.36 |or |next "Stormwind_Jail_Break"
_Or_
Click Here to Skip the Stormwind Extraction Scenario |or |confirm |next "Skip_Stormwind_Jail_Break"
|tip This will allow you to skip the intro scenario if you've already completed it on another character.
step
label "Skip_Stormwind_Jail_Break"
talk Nathanos Blightcaller##135205
|tip Inside the building.
Tell him _"I have heard this story before. (Skip the Scenario and port to Zuldazar Harbor in Zandalar)"_
Skip the Stormwind Extraction |condition readyq(50769) |goto 54.44,78.42 |or |future |next "Stormwind_Jail_Break_Completed"
step
label "Stormwind_Jail_Break"
Leave the building |goto 53.43,78.86 < 10 |walk
clicknpc Skyhorn Eagle##135211
|tip On top of the building.
Begin Flying with the Skyhorn Eagle |invehicle |goto 49.67,93.66 |q 50769
step
Take the Transport from the Ramparts |q 50769/2
step
Begin the "The Stormwind Extraction" Scenario |scenariostart |q 50769
step
Watch the dialogue
Infiltrate Stormwind City |scenariogoal 1/39765 |goto Stormwind City BFA/0 47.22,59.58 |q 50769 |notravel
step
clicknpc Padlock##134070+
|tip They look like dark metal locks on the wooden door on the ground in the water.
Open the Sewer Access Gate |scenariogoal 2/0 |goto 46.24,58.13 |q 50769
step
Enter the Stockades |scenariogoal 2/39766 |goto 46.27,58.09 |q 50769
|tip Jump down into the swirling portal.
step
Enter the Stormwind Stockades |goto Stockcades Scenario/0 25.18,52.52 < 7 |noway |c |q 50769
step
Follow the path |goto 31.80,62.16 < 10 |walk
Run up the stairs |goto 46.51,52.52 < 15 |walk
Meet Up With Rokhan |scenariostage 3 |goto 52.11,40.12 |q 50769
step
talk High Overlord Saurfang##134120
|tip Inside the building.
|tip Click the Cell Door to be able to reach him.
Ask him _"What do you mean?"_
Watch the dialogue
Release Saurfang |scenariostage 4 |goto 48.01,33.48 |q 50769
step
Follow the path |goto 59.80,59.49 < 10 |walk
click Cell Door
|tip Inside the building.
Release the Other Prisoners |scenariogoal 5/39781 |goto 55.98,64.10 |q 50769
step
Run down the stairs |goto 55.83,41.61 < 10 |walk
Watch the dialogue
|tip Follow your allies as they walk.
clicknpc Stormwind Sewer Access##139948
|tip Inside the building.
Escape the Stockades |scenariogoal 5/39786 |goto 87.05,23.22 |q 50769
step
talk Rokhan##134038
Tell him _"Let's go."_
Watch the dialogue
|tip Follow your allies as they walk.
|tip Stay within the circle on the ground beneath Rokhan as you walk.
Begin Following Rokhan |goto Stormwind City BFA/0 71.09,46.71 > 15 |c |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
|tip Stay within the circle on the ground beneath Rokhan as you walk.
|tip Jump off the bridge into the water when your allies tell you to.
|tip Talk to Rokhan again when he stops, to get him to continue walking.
Follow Rokhan |scenariostage 6 |goto Stormwind City BFA/0 55.81,56.85 |q 50769
step
Kill the enemies that attack
Defeat the Worgen Ambush |scenariogoal 7/39795 |goto 55.81,56.85 |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
talk Nathanos Blightcaller##134039
Tell him _"I'm ready."_
Escape Cathedral Square |scenariostage 7 |goto 45.44,43.18 |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
kill Icy Barrier##134881
Escape Jaina's Wrath |scenariostage 8 |goto 39.76,40.63 |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
Reach Talanji's Ship |scenariostage 9 |goto 20.60,25.75 |q 50769
step
Watch the dialogue
talk Princess Talanji##134092
|tip At the top of the ship.
Tell her _"Not at all."_
Escape Stormwind Harbor |scenarioend |goto 20.54,28.94 |q 50769
step
Complete the "The Stormwind Extraction" Scenario |q 50769/3 |next "Stormwind_Jail_Break_Completed"
step
label "Stormwind_Jail_Break_Completed"
Travel to Zuldazar |goto Zuldazar/0 57.98,62.80 < 10 |noway |c |q 50769
step
talk Nathanos Blightcaller##121210
turnin The Stormwind Extraction##50769 |goto Zuldazar/0 57.95,62.76
step
talk Princess Talanji##132332
accept Welcome to Zuldazar##46957 |goto 57.95,62.46
step
Watch the dialogue
|tip Follow Princess Talanji as she walks.
Follow Princess Talanji |q 46957/1 |goto Dazar'alor/0 49.98,82.60
step
talk General Jakra'zet##122661
turnin Welcome to Zuldazar##46957 |goto 49.98,82.33
accept Rastakhan##46930 |goto 49.98,82.33
step
Follow the path |goto 51.21,86.29 < 15 |only if walking
talk Ripa the Wind Ripper##121252
fpath Port of Zandalar |goto 52.10,90.12
step
clicknpc Enforcer's Pterrordax##135438
Ride the Enforcer's Pterrordax to the Throne |q 46930/1 |goto 49.98,82.17
step
Watch the dialogue
Ride to the Throne |goto 48.03,44.45 < 7 |c |q 46930 |notravel
step
talk Princess Talanji##135440
|tip On top of the building.
Tell her _"Take me to King Rastakhan."_
Speak with Princess Talanji |q 46930/2 |goto 48.82,44.64
step
Watch the dialogue
talk King Rastakhan##120740
|tip On top of the building.
turnin Rastakhan##46930 |goto 49.91,42.72
accept Speaker of the Horde##46931 |goto 49.91,42.72
step
Enter the building |goto Dazar'alor/2 29.17,59.39 < 10 |walk
Watch the dialogue
|tip Follow Zolani as she walks.
Follow Zolani |q 46931/1 |goto Dazar'alor/2 25.91,73.81
step
click Horde Banner
Summon the Horde |q 46931/2 |goto Dazar'alor/0 49.93,39.49
step
Enter the building |goto 49.94,42.14 < 10 |walk
Follow the path |goto Dazar'alor/1 58.14,35.76 < 10 |walk
Watch the dialogue
|tip Inside the building.
Explore the Hall of Ancient Paths |q 46931/4 |goto Dazar'alor/1 66.92,72.06
step
Watch the dialogue
|tip Inside the building.
Explore the Great Seal |q 46931/3 |goto 49.09,70.79
step
Watch the dialogue
|tip Inside the building.
Explore the Royal Treasury |q 46931/5 |goto Dazar'alor/0 48.76,45.89 |notravel
step
Follow the path |goto Dazar'alor/1 39.43,35.47 < 10 |walk
talk Chronicler To'kini##120168
|tip Inside the building.
turnin Speaker of the Horde##46931 |goto Dazar'alor/1 32.99,43.38
accept To Matters at Hand##52139 |goto Dazar'alor/1 32.99,43.38
step
talk Princess Talanji##133050
|tip Inside the building.
turnin To Matters at Hand##52139 |goto Dazar'alor/2 41.14,66.73
accept We Need Each Other##52131 |goto Dazar'alor/2 41.14,66.73
step
Watch the dialogue
talk Princess Talanji##133050
|tip Inside the building.
turnin We Need Each Other##52131 |goto 41.14,66.73
step
label "Choose_Next_Questing_Zone_BFA"
click Scouting Map |goto Dazar'alor/2 41.71,69.41
|tip Inside the building.
|tip You are choosing the zone you wish to do quests in next.
|tip Pick whichever you like, it doesn't matter.
accept Zuldazar##47514|or |next "Zuldazar_Start" |only if not completedq(47514)
accept Nazmir##47512 |or |next "Nazmir_Start" |only if not completedq(47512)
accept Vol'dun##47513 |or |next "Voldun_Start" |only if not completedq(47513)
Completing Guide |next "All_Zones_Completed_BFA" |only if completedq(47514) and completedq(47512) and completedq(47513)
step
label "Zuldazar_Start"
talk Princess Talanji##133050
|tip Inside the building.
turnin Zuldazar##47514 |goto Dazar'alor/2 41.14,66.73 |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Zuldazar"
step
label "Nazmir_Start"
talk Princess Talanji##133050
|tip Inside the building.
turnin Nazmir##47512 |goto Dazar'alor/2 41.14,66.73 |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Nazmir"
step
label "Voldun_Start"
talk Princess Talanji##133050
|tip Inside the building.
turnin Vol'dun##47513 |goto Dazar'alor/2 41.14,66.73 |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Vol'dun"
step
label "All_Zones_Completed_BFA"
_Congratulations!_
You unlocked all of the questing zones.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Zuldazar",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Zuldazar storylines:\n\nAudience with the King\nPort of Zandalar\nWeb of Lies\nThe Zanchuli Council\nPortents and Prophecies\nWarport Rastari\nAmong the People\nMarch of the Loa",
condition_suggested=function() return level >= 110 and not completedq(49681) and completedq(52131) end,
startlevel=110.0,
endlevel=120.0,
image=ZGV.DIR.."\\Guides\\Images\\Zuldazar",
},[[
step
talk Princess Talanji##133050
|tip Inside the building.
accept Trust of a King##49615 |goto Dazar'alor/2 41.19,66.74
step
talk Brillin the Beauty##122690
|tip Inside the building.
home The Great Seal |goto Dazar'alor/1 48.86,72.64 |q 47226 |future
step
Ride the Elevator Up |goto Dazar'alor/2 22.58,72.07 < 10 |walk
talk King Rastakhan##120740
|tip Outside, on top of the building.
turnin Trust of a King##49615 |goto Dazar'alor/0 49.93,46.61
accept Tal'gurub##49488 |goto Dazar'alor/0 49.93,46.61
step
talk Zolani##122915
|tip Outside, on top of the building.
accept The Port of Zandalar##50835 |goto 49.81,46.56
step
talk Yazma##122641
|tip Outside, on top of the building.
accept The Zanchuli Council##47445 |goto 49.72,46.51
step
talk Paku'ai Rokota##122689
fpath The Great Seal |goto Dazar'alor/0 51.91,41.20
step
talk Zolani##135441
turnin The Port of Zandalar##50835 |goto 50.06,85.07
accept Shakedown##46926 |goto 50.06,85.07
step
talk Yazma##126684
accept The Word of Zul##46846 |goto 50.05,84.76
step
talk Witch Doctor Jala##126148
accept The Red Market##48452 |goto 44.25,82.15
stickystart "Collect_Dark_Fetishes"
step
Run down the stairs |goto 42.83,80.86 < 10 |only if walking
Follow the path |goto 41.83,78.98 < 15 |only if walking
Enter the building |goto 42.80,83.58 < 10 |walk
click Chalice of Calling
|tip Inside the building.
Destroy the Chalice of Calling |q 48452/2 |goto 43.08,83.14
step
label "Collect_Dark_Fetishes"
Kill Crimson enemies around this area
collect 3 Dark Fetishes##152461 |q 48452/1 |goto 42.29,83.76
step
Run up the stairs |goto 42.81,78.72 < 10 |only if walking
Run up the stairs |goto 43.43,81.69 < 10 |only if walking
talk Witch Doctor Jala##126148
turnin The Red Market##48452 |goto 44.25,82.15
accept Evidence of Evil##48454 |goto 44.25,82.15
stickystart "Slay_Dockside_Thugs"
step
talk Dockmaster Cobo##126009
Choose _<Show him the Word of Zul.>_
Show Dockmaster Cobo the Message |q 46846/3 |goto 45.31,79.78
step
label "Slay_Dockside_Thugs"
Kill Thug enemies around this area
Slay #15# Dockside Thugs |q 46926/1 |goto 47.91,83.03
step
talk Zolani##135441
turnin Shakedown##46926 |goto 50.05,85.06
turnin Evidence of Evil##48454 |goto 50.07,85.07
accept Deterrent##46929 |goto 50.05,85.06
step
talk Yazma##126684
accept Punishment of Tal'farrak##46928 |goto 50.05,84.76
step
Follow the path |goto 51.22,85.69 < 15 |only if walking
talk Nokali the Scarred##125485
Choose _<Show him the Word of Zul.>_
Show Nokali the Message |q 46846/1 |goto 51.52,91.04
step
Jump down here |goto 53.49,89.73 < 10 |only if walking
talk Doomsayer Volkini##125489
Choose _<Show her the Word of Zul.>_
Show Volkini the Message |q 46846/2 |goto 53.90,91.10
step
talk Toki##134346
accept Make Loh Go##52472 |goto 56.15,91.58
step
talk Toki##135795
Tell him _"I am ready."_
Speak with Toki |q 52472/1 |goto 56.15,91.58
step
Guide Loh to the First Goal |q 52472/2 |goto 56.57,91.69
|tip Move Loh to the finish line marker in the middle of the piles of small boxes.
|tip Use the abilities on your action bar.
step
Guide Loh Through All the Points Without Crossing His Own Path |q 52472/3 |goto 56.57,91.69
|tip Move Loh to the treasure chest, then the finish line marker.
|tip Use the abilities on your action bar.
step
Click the Completed Quest Box:
turnin Make Loh Go##52472
step
talk Scrollsage Rooka##125312
accept The Scamps##48404 |goto 55.95,88.84
step
clicknpc Street Scamp##126034+
|tip They look like small blue children running on the ground around this area.
Stop #5# Street Scamps |q 48404/1 |goto 49.94,89.97
step
talk Scrollsage Rooka##125312
turnin The Scamps##48404 |goto 55.95,88.83
accept Mista Nice##48405 |goto 55.95,88.83
step
Run up the stairs |goto 57.50,90.72 < 7 |only if walking
Run up the stairs |goto 59.14,90.08 < 7 |only if walking
Enter the building |goto 57.20,87.96 < 5 |walk
Track Down Lair of the Scamps |q 48405/1 |goto 57.20,87.36
|tip Inside the building.
step
kill Mista Nice##125996 |q 48405/2 |goto 57.20,87.36
|tip Inside the building.
step
Leave the building |goto 57.20,87.92 < 3 |walk
Jump down here |goto 57.10,89.26 < 5 |only if walking
talk Scrollsage Rooka##125312
turnin Mista Nice##48405 |goto 55.95,88.83
step
Run up the stairs |goto 50.04,88.70 < 15 |only if walking
talk Yazma##126684
turnin The Word of Zul##46846 |goto 50.04,84.76
accept Punishment of Tal'aman##46927 |goto 50.04,84.76
stickystart "Collect_Amani_Heads"
step
Run up the stairs |goto 50.01,81.39 < 20 |only if walking
Follow the path |goto 50.64,77.93 < 15 |only if walking
Continue following the path |goto 56.21,81.37 < 15 |only if walking
click Ancient Gong
Watch the dialogue
kill Disciple of Jan'alai##120950
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 1
step
click Ancient Gong
Watch the dialogue
kill Disciple of Halazzi##120951
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 2
step
click Ancient Gong
Watch the dialogue
kill Disciple of Akil'zon##120946
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 3
step
click Ancient Gong
Watch the dialogue
kill Disciple of Nalorakk##120949
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 4
step
label "Collect_Amani_Heads"
Kill Amani enemies around this area
collect 6 Amani Head##160107 |q 46929/1 |goto 56.16,80.58
stickystart "Collect_Sandfury_Heads"
step
Follow the path |goto 51.95,77.93 < 20 |only if walking
Continue following the path |goto 46.84,77.05 < 20 |only if walking
click Ancient Gong##280611
kill Gahz'ragon
collect 3 Tongue of Gahz'ragon##152184 |q 46928/1 |goto 46.62,73.92
step
label "Collect_Sandfury_Heads"
Kill Sandfury enemies around this area
collect 6 Sandfury Head##158898 |q 46929/2 |goto 46.47,75.58
step
Run down the stairs |goto 49.72,78.71 < 20 |only if walking
talk Yazma##126684
turnin Punishment of Tal'aman##46927 |goto 50.05,84.76
turnin Punishment of Tal'farrak##46928 |goto 50.05,84.76
step
talk Zolani##135441
turnin Deterrent##46929 |goto 50.05,85.07
accept Royal Report##50881 |goto 50.05,85.07
step
Ride the Elevator Up |goto Dazar'alor/2 22.52,72.25 < 7 |walk
Leave the building |goto Dazar'alor/0 48.69,45.19 < 5 |walk
Follow the path |goto Dazar'alor/0 49.39,44.48 < 10 |only if walking
talk Habutu##125953
|tip On top of the building.
turnin Royal Report##50881 |goto Dazar'alor/0 50.04,46.54
step
Run down the stairs |goto 50.44,44.46 < 15 |only if walking
Enter the building |goto 51.21,45.19 < 10 |walk
Ride the Elevator Down |goto Dazar'alor/2 74.97,72.21 < 7 |walk
talk Natal'hakata##131287
|tip Inside the building.
accept The Missing Handler##50538 |goto Dazar'alor/2 67.30,71.66
step
Leave the building |goto Dazar'alor/0 49.94,42.12 < 10 |walk
Run down the stairs |goto Dazar'alor/0 50.96,40.32 < 15 |only if walking
Run down the stairs |goto Dazar'alor/0 56.26,29.56 < 15 |only if walking
Run down the stairs |goto Dazar'alor/0 57.29,22.65 < 15 |only if walking
Cross the bridge |goto Dazar'alor/0 54.28,25.31 < 20 |only if walking
Run up the stairs |goto Dazar'alor/0 51.88,20.29 < 15 |only if walking
talk Zena the Feeder##133242
fpath The Sliver |goto Dazar'alor/0 53.16,19.36
step
Run up the stairs |goto 51.75,19.06 < 15 |only if walking
Run up the stairs |goto 46.29,22.58 < 15 |only if walking
talk Wardruid Loti##126560
turnin The Zanchuli Council##47445 |goto 45.25,24.02
accept Forbidden Practices##47423 |goto 45.25,24.02
step
Follow the path |goto 42.03,23.12 < 20 |only if walking
talk Nokano##127665
accept Pests##47441 |goto 40.27,19.07
step
kill 8 Thieving Snapper##126331 |q 47441/1 |goto 39.28,19.45
step
Follow the path |goto 36.68,15.15 < 15 |only if walking
click Mysterious Trashpile##282667
Follow the Big One |q 47441/2 |goto 35.34,7.65
step
talk Jani##126334
turnin Pests##47441 |goto 35.34,7.65
accept Curse of Jani##47442 |goto 35.34,7.65
step
Follow the path |goto 36.67,15.39 < 15 |only if walking
Reach Nokano |q 47442/1 |goto 40.27,19.06
|tip Use the ability on your action bar.
|tip Avoid the trolls and spiders around this area.
step
kill Nokano##127669
Watch the dialogue
Bite Nokano |q 47442/2 |goto 40.27,19.06
step
Watch the dialogue
Return to Jani |goto 35.46,7.71 < 7 |noway |c |q 47442
step
talk Jani##126334
turnin Curse of Jani##47442 |goto 35.46,7.71
step
Follow the path |goto 36.49,14.63 < 20 |only if walking
Continue following the path |goto 41.96,23.16 < 20 |only if walking
Run down the stairs |goto 45.40,23.81 < 15 |only if walking
use Loti's Totem##152627
|tip Use it next to NPC's around this area.
|tip Some of them will turn into Crimson Cultists.
kill 9 Crimson Cultist##138249 |q 47423/1 |goto 50.68,16.48
step
talk Hexlord Raal##126564
turnin Forbidden Practices##47423 |goto 51.90,11.88
accept Offensively Defensive##47433 |goto 51.90,11.88
step
talk Hexlord Raal##126564
Tell him _"Ready to patrol."_
Speak with Hexlord Raal |q 47433/1 |goto 51.90,11.88
step
clicknpc Ata the Winglord##126822
Fly the Skies with Hexlord Raal |q 47433/2 |goto 53.06,11.63
step
Place #6# Farseer Totems |q 47433/3 |goto 58.83,1.60 |notravel
|tip Use the "Farseer Totem" ability on your action bar.
|tip Use it on the yellow circles on the ground as you fly.
step
Watch the dialogue
Return to Zanchul |goto 46.32,18.99 < 7 |c |q 47433 |notravel
step
talk Wardruid Loti##126560
turnin Offensively Defensive##47433 |goto 46.21,19.26
accept Pterrortorial Dispute##47435 |goto 46.21,19.26
accept Restraining Order##47434 |goto 46.21,19.26
stickystart "Slay_Bloodraged_Pterrordaxes"
step
Shoo #20# Pterrordax Hatchlings |q 47434/1 |goto 41.73,16.97
|tip They look like smaller red dinosaur birds flying low to the ground around this area.
|tip Walk next to them.
step
label "Slay_Bloodraged_Pterrordaxes"
kill 6 Bloodraged Pterrordax##126618 |q 47435/1 |goto 41.73,16.97
step
Follow the path |goto 39.87,12.88 < 20 |only if walking
talk Hexlord Raal##126564
turnin Pterrortorial Dispute##47435 |goto 40.93,11.31
turnin Restraining Order##47434 |goto 40.93,11.31
accept Competitive Devotion##47437 |goto 40.93,11.31
step
Enter the building |goto 41.16,10.98 < 5 |walk
kill Guardian of the Tombs##127072 |q 47437/1 |goto Dazar'alor/4 65.51,69.04
|tip Inside the building.
step
Run up the stairs |goto 45.77,39.28 < 10 |walk
kill Guardian of the Rites##127073 |q 47437/2 |goto Dazar'alor/3 65.93,30.68
|tip Upstairs inside the building.
step
Follow the path |goto 64.21,66.43 < 10 |walk
Leave the building |goto 77.47,87.57 < 10 |walk
kill Guardian of the Dead##127074 |q 47437/3 |goto Dazar'alor/0 44.27,16.70
step
Run up the stairs |goto 46.03,16.14 < 15 |only if walking
talk Wardruid Loti##126560
turnin Competitive Devotion##47437 |goto 46.11,13.06
accept Dire Situation##47422 |goto 46.11,13.06
step
Run up the stairs |goto 46.10,11.85 < 15 |only if walking
kill Dregada##127079 |q 47422/1 |goto 43.63,7.38
|tip At the top of the building.
|tip Your allies will help you fight him.
step
talk Wardruid Loti##126560
|tip At the top of the building.
turnin Dire Situation##47422 |goto 42.29,9.10
accept Picking a Side##47438 |goto 42.29,9.10
step
_You Must Make a Choice:_
click Gonk
|tip Choosing Gonk will provide you with many totems around the city to allow you to run faster and take less falling damage in Dazar'alor.
_Or_
click Pa'ku
|tip Choosing Pa'ku will provide you with a few totems around the city to allow you to fly to certain locations around Dazar'alor.
Choose a Loa |q 47438/1 |goto 42.55,9.12
step
talk Wardruid Loti##126560
turnin Picking a Side##47438 |goto 42.29,9.10
step
_Which Loa Did You Choose?_
|tip Click the line with the name of loa you chose.
Gonk |confirm |next "Gonk" |or |q 47439 |future
Pa'ku |confirm |next "Paku" |or |q 47440 |future
step
label "Gonk"
talk Wardruid Loti##126560
accept Gonk, Lord of the Pack##47439 |goto 42.29,9.10
step
Jump down here |goto 41.76,9.06 < 10 |only if walking
Jump down here |goto 38.18,7.16 < 10 |only if walking
Follow the path up |goto 35.43,4.91 < 20 |only if walking
Follow the path |goto Zuldazar/0 50.62,30.63 < 20 |only if walking
Follow the path |goto Zuldazar/0 49.32,31.36 < 20 |only if walking
talk Gonk##127444
Tell him _"We have a bargain."_
Bargain with Gonk |q 47439/1 |goto 48.17,32.27
step
Follow the road |goto 49.42,31.28 < 20 |only if walking
Follow the road |goto 50.80,30.58 < 20 |only if walking
Continue following the road |goto Dazar'alor/0 36.03,5.49 < 20 |only if walking
Continue following the road |goto Dazar'alor/0 36.53,15.17 < 20 |only if walking
Cross the bridge |goto Dazar'alor/0 42.33,26.94 < 20 |only if walking
Run up the stairs |goto Dazar'alor/0 44.40,30.57 < 15 |only if walking
Run up the stairs |goto Dazar'alor/0 45.10,36.21 < 15 |only if walking
Follow the path |goto Dazar'alor/0 47.03,37.50 < 15 |only if walking
talk Wardruid Loti##127576
turnin Gonk, Lord of the Pack##47439 |goto Dazar'alor/0 49.91,33.41
accept The Bargain is Struck##48897 |goto Dazar'alor/0 49.91,33.41
step
Run up the stairs |goto 49.85,35.41 < 15 |only if walking
Run up the stairs |goto 48.44,36.85 < 15 |only if walking
Run up the stairs |goto 50.22,37.74 < 15 |only if walking
talk Huntmaster Kil'ja##130785
accept Nesingwary's Trek##49768 |goto 52.00,41.39
step
Enter the building |goto 49.98,41.92 < 10 |only if walking
Ride the Elevator Up |goto Dazar'alor/2 22.94,72.17 < 7 |only if walking
Leave the building |goto Dazar'alor/0 48.68,45.19 < 7 |only if walking
Follow the path |goto Dazar'alor/0 49.38,44.43 < 10 |only if walking
talk King Rastakhan##120740
|tip Upstairs inside the building.
turnin The Bargain is Struck##48897 |goto 49.93,46.61
|next "Both_Loa_Continue"
step
label "Paku"
talk Hexlord Raal##126564
accept Pa'ku, Master of Winds##47440 |goto Dazar'alor/0 42.54,9.49
step
clicknpc Ata the Winglord##127414
Begin Riding Ata the Winglord |invehicle |goto 42.48,10.06 |q 47440
step
Ride Ata the Winglord |q 47440/1 |goto Zuldazar/0 70.45,49.07 |notravel
step
Follow the path up |goto Zuldazar/0 70.66,48.84 < 15 |only if walking
talk Pa'ku##127377
Bargain with Pa'ku |q 47440/2 |goto 71.50,49.32
step
Jump Off the Cliff |q 47440/3 |goto 71.82,49.24
|tip You won't die.
step
Watch the dialogue
Return to Dazar'alor |goto Dazar'alor/0 49.82,34.59 < 20 |c |q 47440 |notravel
step
talk Hexlord Raal##127489
turnin Pa'ku, Master of Winds##47440 |goto Dazar'alor/0 49.92,33.40
accept The Bargain is Struck##47432 |goto Dazar'alor/0 49.92,33.40
step
click Totem of Pa'ku |goto 49.54,32.83
Fly to the Top of the Building |goto 49.91,39.56 < 10 |noway |c |q 47432
step
Enter the building |goto 49.95,42.14 < 10 |walk
Ride the Elevator Up |goto Dazar'alor/2 23.06,72.35 < 7 |c |q 47432
step
Leave the building |goto 29.08,59.61 < 7 |walk
Run up the stairs |goto Dazar'alor/0 48.88,44.61 < 10 |only if walking
talk King Rastakhan##120740
|tip On top of the building.
turnin The Bargain is Struck##47432 |goto 49.93,46.62
|next "Both_Loa_Continue"
step
label "Both_Loa_Continue"
Cross the bridge |goto Dazar'alor/0 51.54,21.33 < 20 |only if walking
Run up the stairs |goto 54.98,25.49 < 20 |only if walking
Run down the stairs |goto 58.16,21.93 < 20 |only if walking
Jump down here |goto 59.44,9.93 < 10 |only if walking
talk Zul the Prophet##129907
turnin Tal'gurub##49488 |goto Zuldazar/0 62.82,32.56
accept Needs a Little Body##49489 |goto Zuldazar/0 62.82,32.56
accept The Urn of Voices##49490 |goto Zuldazar/0 62.82,32.56
step
talk Izita's Spirit##130706
accept Fuel for the Voodoo##49491 |goto 63.62,31.76
stickystart "Collect_Voodoo_Totems"
stickystart "Gather_Ounces_of_Soul"
step
Run up the stairs |goto 63.65,32.07 < 15 |only if walking
Enter the building |goto 64.93,33.11 < 10 |walk
clicknpc Atal'jamba Ungo##130089
|tip Inside the building.
"Improve" the Concoction |q 49489/1 |goto 65.02,32.99 |count 1
step
Cross the bridge |goto 64.39,33.17 < 15 |only if walking
Follow the path |goto 63.44,30.56 < 20 |only if walking
Enter the building |goto 63.07,29.06 < 10 |walk
clicknpc Atal'jamba Iri##130109
|tip Inside the building.
"Improve" the Concoction |q 49489/1 |goto 63.20,29.06 |count 2
step
label "Collect_Voodoo_Totems"
click Voodoo Totem##154901+
|tip They look like wooden glowing green totems on the ground around this area.
collect 8 Voodoo Totem##154901 |q 49491/1 |goto 63.56,30.85
step
label "Gather_Ounces_of_Soul"
Kill enemies around this area
Gather #30# Ounces of Soul |q 49490/1 |goto 63.56,30.85
step
click Brazier##278452
turnin Fuel for the Voodoo##49491 |goto 62.74,28.47
step
talk Zul the Prophet##129907
turnin Needs a Little Body##49489 |goto 62.86,28.24
turnin The Urn of Voices##49490 |goto 62.86,28.24
accept Arrogance of Vol'jamba##49492 |goto 62.86,28.24
step
clicknpc Voice of Vol'jamba##130209
Silence the Voice of Vol'jamba |q 49492/1 |goto 62.90,28.02
step
clicknpc Eyes of Vol'jamba##130208
Blind the Eyes of Vol'jamba |q 49492/2 |goto 63.55,28.07
step
clicknpc Spite of Vol'jamba##130197
Thwart the Spite of Vol'jamba |q 49492/3 |goto 64.12,28.38
step
Watch the dialogue
talk Zul the Prophet##129907
turnin Arrogance of Vol'jamba##49492 |goto 64.38,28.55
accept Zul's Ethical Dilemma##49493 |goto 64.38,28.55
accept Zuvembi Brew##49494 |goto 64.38,28.55
stickystart "Free_Mindslaves"
step
click Jambani Stockpile##290750
accept Preparing for the Fall##51663 |goto 65.28,28.22
stickystart "Destroy_Jambani_Stockpiles"
step
kill Zuvembi Brewer Zekal##130260 |q 49494/1 |goto 64.89,27.01
step
label "Free_Mindslaves"
use the Mindbreaker Chant##155458
|tip Use it next to Mindslaved enemies around this area.
Free #9# Mindslaves |q 49493/1 |goto 65.24,28.67
step
label "Destroy_Jambani_Stockpiles"
click Jambani Stockpile##290750+
|tip They look like stacks of brown baskets on the ground around this area.
Destroy #8# Jambani Stockpiles |q 51663/1 |goto 65.24,28.67
step
Run up the stairs |goto 65.32,29.09 < 20 |only if walking
talk Zul the Prophet##129907
turnin Zul's Ethical Dilemma##49493 |goto 65.71,30.21
turnin Zuvembi Brew##49494 |goto 65.71,30.21
turnin Preparing for the Fall##51663 |goto 65.71,30.21
accept Enforcing Fate##49495 |goto 65.71,30.21
step
click Gong of Command##279349
Place the Seal of Implacable Fate |q 49495/1 |goto 65.89,31.08
step
click Urn of Voices##279353
Place the Urn of Voices |q 49495/2 |goto 65.89,30.67
step
Watch the dialogue
click Urn of Voices##279353
Adjust the Urn of Voices |q 49495/3 |goto 65.86,30.65
step
click Mysterious Brew
Swap the Potion |q 49495/4 |goto 65.56,31.30
step
talk Zul the Prophet##129907
turnin Enforcing Fate##49495 |goto 65.70,30.21
accept Plot Twist##49905 |goto 65.70,30.21
step
Watch the dialogue
Confront Vol'jamba |q 49905/1 |goto 65.62,30.55
step
kill Vol'jamba##131241 |q 49905/2 |goto 65.68,31.03
step
talk Zul the Prophet##129907
turnin Plot Twist##49905 |goto 65.58,30.51
accept False Prophecies##49663 |goto 65.58,30.51
step
Follow the path up |goto 65.19,31.70 < 15 |only if walking
Jump down carefully here |goto 65.18,34.22 < 15 |only if walking
talk Witch Doctor Jangalar##130929
accept Monstrous Matchmaker##49810 |goto 64.13,35.38
step
use Jangalar's Voodoo Totem##155911
|tip Use it on Gentle Ben'jin.
Voo-doo Gentle Ben'jin |q 49810/1 |goto 63.06,37.12
step
use Jangalar's Voodoo Totem##155911
|tip Use it on the Irritable Maka'fon.
Voo-doo the Irritable Maka'fon |q 49810/2 |goto 64.21,39.37
step
talk Witch Doctor Jangalar##130929
turnin Monstrous Matchmaker##49810 |goto 64.13,35.38
accept The Scent for a Brutosaur##49814 |goto 64.13,35.38
accept They Say It's a Delicacy##50154 |goto 64.13,35.38
step
talk Cala Cruzpot##130905
accept Aggressive Mating Strategy##49801 |goto 64.07,35.47
stickystart "Collect_Partially_Digested_Pods"
step
click Zandalari Rushes+
|tip They look like green plants growing in and around the water on the ground around this area.
collect 7 Fragrant Rushes##155916 |q 49814/1 |goto 62.54,37.15
step
label "Collect_Partially_Digested_Pods"
Kill Diemetradon enemies around this area
collect 25 Partially Digested Pod##155917 |q 50154/1 |goto 62.54,37.15
step
kill Invasive Razorwing##131554+
collect 8 Razorwing Bile Sac##155904 |q 49801/1 |goto 63.44,41.96
step
talk Cala Cruzpot##130905
turnin Aggressive Mating Strategy##49801 |goto 64.07,35.47
step
talk Witch Doctor Jangalar##130929
turnin The Scent for a Brutosaur##49814 |goto 64.13,35.37
turnin They Say It's a Delicacy##50154 |goto 64.13,35.37
accept Setting the Mood##50150 |goto 64.13,35.37
step
talk Cala Cruzpot##130905
accept Brutal Boost##50074 |goto 64.07,35.46
step
use the Aggression Formula##156475
|tip Use it on Gentle Ben'jin.
Administer the Aggression Formula |q 50074/1 |goto 63.05,37.13
step
click Romantic Brutosaur Meal
Offer the Romantic Meal |q 50150/2 |goto 64.03,39.03
step
click Voodoo Lore Incense
Place the Voodoo Love Incense |q 50150/1 |goto 64.30,38.93
step
Watch the dialogue
Get Flung Away |goto 64.30,38.93 > 10 |c |q 50150
step
Land Safely |goto 63.63,35.90 < 7 |c |q 50150
step
talk Cala Cruzpot##130905
turnin Brutal Boost##50074 |goto 64.07,35.47
step
talk Witch Doctor Jangalar##130929
turnin Setting the Mood##50150 |goto 64.13,35.37
accept Mating Season Halftime##50252 |goto 64.13,35.37
step
talk Witch Doctor Jangalar##130929
Ask her _"Can Cala's science help?"_
Speak to Jangalar |q 50252/2 |goto 64.13,35.38
step
talk Cala Cruzpot##130905
Ask her _"Can you work with Jangalar to solve this problem?"_
Speak to Cala |q 50252/1 |goto 64.07,35.47
step
talk Witch Doctor Jangalar##130929
turnin Mating Season Halftime##50252 |goto 64.12,35.37
step
talk Cala Cruzpot##130905
accept Give it a Little Juice##50268 |goto 64.07,35.47
step
clicknpc Voodoo Cauldron##133167
Apply the Voodoo'ed Aggression Formula |q 50268/1 |goto 64.14,35.32
step
talk Cala Cruzpot##130905
turnin Give it a Little Juice##50268 |goto 64.07,35.47
accept Size Matters##49870 |goto 64.07,35.47
step
use the Voodoo'ed Aggression Formula##156867
|tip Use it on Tiny Sleeping Ben'jin.
Administer the Voodoo'ed Aggression Formula |q 49870/1 |goto 63.06,37.11
step
Travel to Gloomtail's Cave |q 49870/2 |goto 63.99,41.94
step
Enter the cave |goto 64.56,42.07 < 10 |walk
kill Gloomtail##131555
|tip Inside the cave.
collect Gloomtail's Head##156922 |q 49870/3 |goto 65.01,42.09
step
Leave the cave |goto 64.51,42.07 < 10 |walk
talk Witch Doctor Jangalar##130929
turnin Size Matters##49870 |goto 64.12,35.37
accept The Head of Her Enemy##50297 |goto 64.12,35.37
step
Follow Jangalar and Cala |q 50297/1 |goto 64.20,38.94
step
clicknpc Gloomtail's Head##133300
Offer Gloomtail's Head |q 50297/2 |goto 64.17,39.10
step
Watch the dialogue
Confirm the Brutosaur Match |q 50297/3 |goto 64.26,38.98
step
talk Witch Doctor Jangalar##130929
turnin The Head of Her Enemy##50297 |goto 64.12,35.37
step
Follow the road |goto 64.23,37.26 < 15 |only if walking
clicknpc Handler Bazkoji##139311
turnin The Missing Handler##50538 |goto 65.57,41.22
step
clicknpc Direhorn Hatchling##122939
accept The Orphaned Hatchling##47226 |goto 65.65,41.35
step
Follow the road |goto 65.35,43.43 < 20 |only if walking
Follow the road |goto 65.59,44.80 < 20 |only if walking
Cross the bridge |goto 66.48,43.81 < 15 |only if walking
talk Beastlord L'kala##121706
turnin The Orphaned Hatchling##47226 |goto 66.81,42.51
accept Direhorn Daycare##47259 |goto 66.81,42.51
accept Ravenous Landsharks##48527 |goto 66.81,42.51
step
talk Jes'tri##123062
|tip Inside the building.
home Beastcaller Inn |goto 66.56,42.35 |q 49917 |future
step
talk Paku'ai Verraki##123060
fpath Warbeast Kraal |goto 67.26,43.03
stickystart "Kill_Irritable_Diemetradons"
step
click Soothing Lilybud##270918+
|tip They look like small green plants on the ground around this area.
Sate the Direhorn Hatchling's Hunger |q 47259/1 |goto 68.76,44.83
step
label "Kill_Irritable_Diemetradons"
kill 9 Irritable Diemetradon##126562 |q 48527/1 |goto 68.76,44.83
step
Follow the path up |goto 67.91,42.39 < 15 |only if walking
talk Beastlord L'kala##121706
turnin Direhorn Daycare##47259 |goto 66.81,42.51
turnin Ravenous Landsharks##48527 |goto 66.81,42.51
accept Headbutting 101##47311 |goto 66.81,42.51
step
talk Trader Alexxi Cruzpot##122129
accept Direhorn Growth Hormone##47272 |goto 66.81,42.58
step
Follow the road |goto 68.53,42.24 < 15 |only if walking
click Wanted: Poacher
accept WANTED: Jabra'kan##51980 |goto 69.05,40.85
step
talk Wingrider Nivek##125486
accept Queenfeather##47312 |goto 69.02,40.69
stickystart "Collect_Steaming_Fresh_Carrion"
stickystart "Command_Hatchling_to_Fight"
step
kill Queenfeather##139365
|tip She walks around this area.
collect Queenfeather's Plume##160945 |q 47312/1 |goto 71.17,40.30
step
label "Collect_Steaming_Fresh_Carrion"
click Steaming Fresh Carrion##291235+
|tip They look like red piles of bones and organs on the ground around this area.
collect 10 Steaming Fresh Carrion##150347 |q 47272/1 |goto 70.58,40.04
step
label "Command_Hatchling_to_Fight"
Command the Hatchling to Fight #12# Times |q 47311/1 |goto 70.58,40.04
|tip Use the "Mark for Attack!" ability on enemies around this area.
|tip It appears as a button on the screen.
step
kill Jabra'kan the Poacher##139440 |q 51980/1 |goto 67.11,37.36
|tip He walks around this area.
|tip You may need help with this.
step
talk Wingrider Nivek##125486
turnin WANTED: Jabra'kan##51980 |goto 69.02,40.70
turnin Queenfeather##47312 |goto 69.02,40.70
step
Follow the road |goto 68.83,41.75 < 30 |only if walking
Follow the path up |goto 67.91,42.39 < 15 |only if walking
talk Trader Alexxi Cruzpot##122129
turnin Direhorn Growth Hormone##47272 |goto 66.81,42.58
step
talk Beastlord L'kala##121706
turnin Headbutting 101##47311 |goto 66.81,42.51
accept Wings for the Kraal##51990 |goto 66.81,42.51
step
talk Trader Alexxi Cruzpot##122129
accept DGH: Now With Real Direhorn##51998 |goto 66.81,42.58
stickystart "Collect_Partially_Digested_Direhorn_Flesh"
step
Follow the road |goto 68.53,42.24 < 20 |only if walking
Follow the path up |goto 68.13,34.89 < 20 |only if walking
click Nearly-hatching Pterrordax Egg##270040+
|tip They look like large white eggs on the ground around this area.
collect 8 Nearly-hatching Pterrordax Egg##150272 |q 51990/1 |goto 67.20,33.24
step
label "Collect_Partially_Digested_Direhorn_Flesh"
Kill enemies around this area
|tip Spider enemies will not drop the quest item.
collect 8 Partially Digested Direhorn Flesh##160975 |q 51998/1 |goto 67.20,33.24
step
Follow the path up |goto 69.69,31.89 < 15 |only if walking
talk Scroll of Flight##136331
fpath Scaletrader Post |goto 70.78,29.59
step
talk Beastlord L'kala##121706
turnin Wings for the Kraal##51990 |goto 66.81,42.51
step
talk Trader Alexxi Cruzpot##122129
turnin DGH: Now With Real Direhorn##51998 |goto 66.81,42.58
accept Growing Pains##47418 |goto 66.82,42.58
step
clicknpc Direhorn Hatchling##139643
Watch the dialogue
Feed the Hatchling DGH |q 47418/1 |goto 66.85,42.44
step
talk Trader Alexxi Cruzpot##122129
turnin Growing Pains##47418 |goto 66.81,42.58
step
talk Beastlord L'kala##121706
accept How to Train Your Direhorn##47261 |goto 66.81,42.51
step
talk Kraal Master B'khor##122009
Tell him _"I'm ready to train."_
Talk to Training Master B'khor |q 47261/1 |goto 67.56,43.45
step
Watch the dialogue
Meet Pinky |q 47261/2 |goto 69.14,45.13
step
Escape Out the North Gate |q 47261/3 |goto 69.72,43.85
step
Follow the path up |goto 70.12,43.32 < 20 |only if walking
Run For Help |q 47261/4 |goto 70.25,44.96
|tip Use the ability on your action bar as often as possible.
|tip Run over the green glowing plants on the ground to heal your Direhorn.
step
Cross the bridge |goto 69.60,46.74 < 15 |only if walking
Follow the path down |goto 68.48,47.53 < 15 |only if walking
Run For More Help |q 47261/5 |goto 67.18,44.18
|tip Use the abilities on your action bar as often as possible.
|tip Use the "Sprint" ability on your action bar to bust through the wooden gates.
|tip Run over the green glowing plants on the ground to heal your Direhorn.
step
Watch the dialogue
Return to Kraal Master B'khor |q 47261/6 |goto 67.56,43.45
step
Stop Riding the Direhorn |outvehicle |goto 67.56,43.45 |q 47261
|tip Click the red arrow on your action bar.
step
talk Kraal Master B'khor##122009
turnin How to Train Your Direhorn##47261 |goto 67.56,43.45
accept A Good Spanking##48581 |goto 67.56,43.45
step
kill Pinky##126732
Subdue Pinky |q 48581/1 |goto 67.84,44.89
step
Follow the path up |goto 67.91,42.39 < 15 |only if walking
talk Beastlord L'kala##121706
turnin A Good Spanking##48581 |goto 66.81,42.51
accept Naptime##47310 |goto 66.81,42.51
step
click Gate
Stable the Direhorn Juvenile |q 47310/1 |goto 68.22,42.09
step
Follow the path up |goto 67.91,42.39 < 15 |only if walking
talk Beastlord L'kala##121706
turnin Naptime##47310 |goto 66.81,42.51
step
Ride the Elevator Up |goto Dazar'alor/2 74.96,72.05 < 7 |walk
Follow the path |goto Dazar'alor/0 50.43,44.59 < 10 |only if walking
talk King Rastakhan##120740
|tip On top of the building.
turnin False Prophecies##49663 |goto Dazar'alor/0 49.93,46.61
accept A Port in Peril##49122 |goto Dazar'alor/0 49.93,46.61
step
Follow the road |goto Zuldazar/0 70.35,29.64 < 20 |only if walking
Follow the path up |goto Zuldazar/0 68.18,20.20 < 30 |only if walking
click Hunter's Board##271706
accept Hunt for King K'tal##47706 |goto Zuldazar/0 67.44,17.92
accept WANTED: Ten'gor and Nol'ixwan##51091 |goto Zuldazar/0 67.44,17.92
step
talk Hemet Nesingwary##123005
turnin Nesingwary's Trek##49768 |goto 67.50,17.71
accept He's Gone Mad!##50466 |goto 67.50,17.71
step
talk Tracker Burke##123022
accept Die, Die, Diemetradon##47583 |goto 67.57,17.73
step
talk Erak the Aloof##123026
accept A Thorn in the Side##47584 |goto 67.45,17.72
step
talk Lasa the Galerider##123006
fpath Nesingwary's Gameland |goto 66.19,17.60
step
talk Trapper Custer##123118
accept Predatory##47585 |goto 68.85,19.44
stickystart "Collect_Skull_Of_Ktal"
stickystart "Slay_Venemous_Diemetradons"
stickystart "Slay_Ankylodons"
step
clicknpc Marksman Julyen##123113
Find Marksman Julyen |q 47585/2 |goto 67.81,25.04
step
Follow the path up |goto 70.28,26.55 < 15 |only if walking
kill Wildtusk##123653 |q 50466/1 |goto 70.94,26.46
|tip He walks around this area.
step
clicknpc Ranger Paalu##123117
Find Ranger Paalu |q 47585/1 |goto 70.64,22.09
step
label "Collect_Skull_Of_Ktal"
kill King K'tal##123502
|tip He looks like a large brown and gold tyrannosarus rex that walks around this area.
|tip He will appear on your minimap as a yellow dot.
|tip You may need help with this.
collect Skull of K'tal##151169 |q 47706/1 |goto 70.19,22.51
step
label "Slay_Venemous_Diemetradons"
kill 8 Venomous Diemetradon##123098 |q 47583/1 |goto 68.25,25.06
step
label "Slay_Ankylodons"
Kill Ankylodon enemies around this area
Slay #12# Ankylodons |q 47584/1 |goto 68.56,23.01
step
Follow the path up |goto 68.20,20.12 < 20 |only if walking
click Tracker Burke's Hat##291013
turnin Die, Die, Diemetradon##47583 |goto 67.49,18.89
step
talk Erak the Aloof##141948
turnin A Thorn in the Side##47584 |goto 68.01,18.03
step
talk Huntmaster Vol'ka##123019
turnin He's Gone Mad!##50466 |goto 67.50,17.62
turnin Hunt for King K'tal##47706 |goto 67.50,17.62
turnin Predatory##47585 |goto 67.50,17.62
accept Hunting the Hunter##47586 |goto 67.50,17.62
step
accept Trouble in the Rootway##50178 |goto 65.70,18.51
|tip You will automatically accept this quest.
|only if level < 120
step
Kill enemies around this area
kill Feathered Viper Egg##132413+
|tip They look like white eggs on the ground around this area.
kill Feathered Viper Hatchling##132412+
|tip They appear when you break the Feathered Viper Eggs.
Cull Aggressive Wildlife |q 50178/1 |goto 64.79,18.64
|only if havequest(50178) or completedq(50178)
step
click Nesingwary's Campfire##293499
Find Nesingwary's Last Camp |q 47586/1 |goto 63.66,19.79 |goto 62.45,19.27
step
click Dwarf Trap##271561
Find the Suspicious Trap |q 47586/2 |goto 61.48,17.95
step
click Nesingwary's Favorite Rifle##271558
Find Nesingwary's Prized Possession |q 47586/3 |goto 62.32,16.87
step
Run up the stairs |goto 62.59,15.66 < 10 |only if walking
talk Hemet Nesingwary##138669
|tip Inside the building.
turnin Hunting the Hunter##47586 |goto 63.50,16.15
accept Headhunter Jo##47587 |goto 63.50,16.15
step
kill Headhunter Jo##123007 |q 47587/1 |goto 62.96,15.81
step
talk Hemet Nesingwary##138669
|tip Inside the building.
turnin Headhunter Jo##47587 |goto 63.50,16.15
stickystart "Slay_Tengor"
step
Follow the path down |goto 62.28,18.50 < 15 |only if walking
Follow the road |goto 61.06,21.25 < 20 |only if walking
kill Nol'ixwan##130741 |q 51091/1 |goto 61.69,25.44
|tip You may need help with this.
step
label "Slay_Tengor"
kill Ten'gor##130713 |q 51091/2 |goto 61.94,25.40
|tip You may need help with this.
step
Follow the path up |goto 63.08,22.45 < 15 |only if walking
Follow the road |goto 64.79,20.63 < 20 |only if walking
Follow the path up |goto 68.18,19.88 < 20 |only if walking
talk Huntmaster Vol'ka##123019
turnin WANTED: Ten'gor and Nol'ixwan##51091 |goto 67.50,17.62
step
Follow the path |goto Dazar'alor/0 51.18,85.38 < 20 |only if walking
Cross the bridge |goto Dazar'alor/0 42.59,81.74 < 20 |only if walking
Follow the road |goto Zuldazar/0 51.07,56.32 < 20 |only if walking
talk Zolani##127815
turnin A Port in Peril##49122 |goto Zuldazar/0 47.92,60.44
accept Wrath of the Zandalari##49144 |goto Zuldazar/0 47.92,60.44
step
talk Habutu##127814
accept No Troll Left Behind##49145 |goto 47.87,60.44
step
talk Paku'ai Ja'nessa##127818
fpath Warport Rastari |goto 48.22,60.34
step
Enter the tunnel |goto 47.38,59.70 < 15 |only if walking
Leave the tunnel |goto 45.49,61.58 < 15 |only if walking
Follow the road |goto 43.21,66.34 < 20 |only if walking
talk Examiner Tae'shara Bloodwatcher##131582
accept The Bloodwatcher Legacy##47329 |goto 43.91,72.11
step
clicknpc Dirt Pile##131799
Reveal the Fossil |q 47329/1 |goto 43.96,72.12 |count 11
step
clicknpc Carefully Calibrated Sweeper##131749
Watch the dialogue
Reveal the Fossil |q 47329/1 |goto 43.97,72.01
step
talk Apprentice Telemancer Astrandis##131580
turnin The Bloodwatcher Legacy##47329 |goto 43.91,72.14
accept Scrying for the Eye##47235 |goto 43.91,72.14
accept Archaeological Efficiency##50043 |goto 43.91,72.14
step
talk Examiner Tae'shara Bloodwatcher##131582
accept Xibalan Ecology##47228 |goto 43.91,72.11
step
click Wanted: Dark Chronicler##287229
accept WANTED: Dark Chronicler##51087 |goto 44.31,72.17
step
talk Alitha Duskwing##124458
home Xibala |goto 44.61,71.76 |q 51539 |future
step
talk Eliara Duskwing##123817
fpath Xibala |goto 44.84,72.25
stickystart "Collect_Xibalan_Fossil_Fragments"
stickystart "Slay_Xibalan_Predators"
step
clicknpc Essence Collector##136173
Complete the Outer Ruins Scrying |q 47235/1 |goto 42.49,72.24
step
clicknpc Essence Collector##136173
Complete the Inner Ruins Scrying |q 47235/2 |goto 42.82,73.90
step
label "Collect_Xibalan_Fossil_Fragments"
use the Sweeper Beacon##156596
|tip Use it near Dirt Piles on the ground around this area.
|tip They look like brown piles of dirt on the ground around this area.
Watch the dialogue
click Xibalan Fossil##280497+
|tip They look like piles of white bones on the ground around this area.
|tip They appear after you use the Sweeper Beacon next to the Dirt Piles.
collect 50 Xibalan Fossil Fragment##156597 |q 50043/1 |goto 42.14,73.84
step
label "Slay_Xibalan_Predators"
Kill Xibalan enemies around this area
Slay #8# Xibalan Predators |q 47228/1 |goto 42.14,73.84
step
Follow the path up |goto 42.11,74.23 < 20 |only if walking
clicknpc Essence Collector##136173
Complete "The Foot" Scrying |q 47235/3 |goto 41.37,75.40
step
Follow the path up |goto 41.90,76.05 < 15 |only if walking
Enter the tunnel |goto 43.25,76.40 < 5 |walk
kill Dark Chronicler##136428 |q 51087/1 |goto 44.12,76.50
|tip Inside the tunnel.
step
Leave the tunnel |goto 43.25,76.38 < 5 |walk
talk Examiner Tae'shara Bloodwatcher##131582
turnin Xibalan Ecology##47228 |goto 43.91,72.11
turnin WANTED: Dark Chronicler##51087 |goto 43.91,72.11
step
talk Apprentice Telemancer Astrandis##131580
turnin Scrying for the Eye##47235 |goto 43.91,72.14
turnin Archaeological Efficiency##50043 |goto 43.91,72.14
accept A Nose for Magic##48317 |goto 43.91,72.14
step
Follow the path up |goto 43.93,72.99 < 10 |only if walking
talk Apprentice Telemancer Astrandis##131878
Tell him _"Let's begin."_
Speak to Astrandis in the Western Ruins |q 48317/1 |goto 41.02,77.14
step
clicknpc Essence Collector##136173
Place the First Scrying Vessel |q 48317/2 |goto 40.70,76.89
step
Kill the enemies that attack
Complete the First Scrying |q 48317/3 |goto 40.70,76.89
step
clicknpc Essence Collector##136173
Place the Second Scrying Vessel |q 48317/4 |goto 40.31,77.06
step
Kill the enemies that attack
Complete the Second Scrying |q 48317/5 |goto 40.31,77.06
step
clicknpc Essence Collector##136173
Place the Third Scrying Vessel |q 48317/6 |goto 39.92,77.06
step
Kill the enemies that attack
Complete the Third Scrying Vessel |q 48317/7 |goto 39.92,77.06
step
Watch the dialogue
talk Apprentice Telemancer Astrandis##131580
turnin A Nose for Magic##48317 |goto 40.03,76.53
accept A Dark (Iron) Tide##48399 |goto 40.03,76.53
accept Grand Theft Telemancy##48400 |goto 40.03,76.53
stickystart "Slay_Dark_Iron_Dwarves"
step
kill Urda Direflame##132189 |q 48400/1 |goto 39.11,72.45
|tip She will appear on your minimap as a yellow dot.
step
clicknpc Telemancy Beacon##136179
Place the Telemancy Beacon |q 48400/2 |goto 39.10,72.45
step
label "Slay_Dark_Iron_Dwarves"
Kill enemies around this area
Slay #7# Dark Iron Dwarves |q 48399/1 |goto 38.92,72.72
step
talk Apprentice Telemancer Astrandis##131580
turnin A Dark (Iron) Tide##48399 |goto 44.42,72.11
turnin Grand Theft Telemancy##48400 |goto 44.42,72.11
step
talk Kaza'jin the Wavebinder##127837
accept Spirits' Belongings##49146 |goto 47.14,60.47
stickystart "Rally_Rastari_Defenders"
stickystart "Slay_Mogu_Invaders"
step
click Grimoire of the Other Side##277886
collect Grimoire of the Other Side##153526 |q 49146/2 |goto 46.80,61.87
step
Run up the stairs |goto 46.45,61.71 < 10 |only if walking
click Reclaimed Bijous##277444
collect Reclaimed Bijous##153525 |q 49146/1 |goto 45.61,60.36
step
click Venerated Remains##277447
collect Venerated Remains##153527 |q 49146/3 |goto 45.81,62.46
step
label "Rally_Rastari_Defenders"
click Crude Barricade+
|tip They look like wooden barriers in the entrances of buildings around this area.
use the Rastari Skull Whistle##153524
|tip Use it near Rastari Defenders around this area.
|tip They look like friendly Trolls standing on the ground around this area.
Rally #12# Rastari Defenders |q 49145/1 |goto 45.78,60.90
step
label "Slay_Mogu_Invaders"
Kill enemies around this area
Slay #8# Mogu Invaders |q 49144/1 |goto 45.78,60.90
step
talk Habutu##127814
turnin No Troll Left Behind##49145 |goto 47.87,60.44
step
talk Zolani##127815
turnin Wrath of the Zandalari##49144 |goto 47.92,60.44
step
talk Kaza'jin the Wavebinder##127837
turnin Spirits' Belongings##49146 |goto 48.08,60.38
accept Embrace the Voodoo##49149 |goto 48.08,60.38
step
talk Zolani##127815
accept Crumbling Apart##49148 |goto 47.92,60.44
step
talk Habutu##127814
accept Show of Strength##49147 |goto 47.87,60.44
stickystart "Kill_Stormbound_Conquerors"
step
Follow the path |goto 47.81,61.84 < 15 |only if walking
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.22,61.86 |count 1
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.97,63.07 |count 2
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 46.71,63.66 |count 3
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.45,65.14 |count 4
step
kill Jao-Ti the Thunderous##128474 |q 49147/1 |goto 48.12,64.49
step
Run up the stairs |goto 47.88,66.66 < 15 |only if walking
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.48,66.76 |count 5
step
kill Subjugator Zheng##128472 |q 49147/2 |goto 45.83,66.52
step
label "Kill_Stormbound_Conquerors"
kill Kao-Tien Stormbinder##127778+
collect Condensed Thunder##153529+ |n
|tip These will give you a "Thundering Blast" ability for a short time.
|tip Use the "Thundering Blast" ability on Stormbound Conquerors and Inert Conquerors around this area.
|tip It appears as a button on the screen.
kill 10 Stormbound Conqueror##128447 |q 49148/1 |goto 46.99,67.08
|tip Stand in the blue circles on the ground that appear while fighting them.
|tip These will help you kill them faster.
step
Run down the stairs |goto 47.86,67.28 < 15 |only if walking
talk Kaza'jin the Wavebinder##127837
turnin Embrace the Voodoo##49149 |goto 49.59,64.48
turnin Crumbling Apart##49148 |goto 49.59,64.48
turnin Show of Strength##49147 |goto 49.59,64.48
accept Thunder's Fall##49309 |goto 49.59,64.48
step
kill Warlord Kao##127766 |q 49309/1 |goto 50.20,65.37
step
talk Kaza'jin the Wavebinder##127837
turnin Thunder's Fall##49309 |goto 49.59,64.48
accept The Prophet's Ploy##49310 |goto 49.59,64.48
step
clicknpc Scarbeak##133960
Ride Scarbeak to King Rastakhan's Throne |q 49310/1 |goto 49.51,64.35
step
Watch the dialogue
Return to The Golden Throne |goto Dazar'alor/0 49.92,39.65 < 7 |c |notravel |q 49310
step
Enter the building |goto Dazar'alor/0 49.94,42.14 < 10 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin The Prophet's Ploy##49310 |goto Dazar'alor/2 41.45,72.29
accept Terrace of the Chosen##47509 |goto Dazar'alor/2 41.45,72.29
accept The Wounded King##51101 |goto Dazar'alor/2 41.45,72.29
step
talk Nok'tal##130932
|tip Inside the building.
accept Kaja'mite? Kaja'must!##49917 |goto 67.20,83.81
step
Leave the building |goto Dazar'alor/0 49.93,42.13 < 10 |walk
Run down the stairs |goto Dazar'alor/0 48.83,40.32 < 15 |only if walking
Run down the stairs |goto Dazar'alor/0 42.32,47.35 < 15 |only if walking
Jump down carefully here |goto Dazar'alor/0 42.41,59.54 < 10 |only if walking
Cross the bridge |goto Dazar'alor/0 41.07,60.91 < 20 |only if walking
Follow the road |goto Zuldazar/0 52.68,49.35 < 20 |only if walking
talk Bently Greaseflare##132267
turnin Kaja'mite? Kaja'must!##49917 |goto Zuldazar/0 51.60,50.57
accept Kaja'mite Ore Bust##49919 |goto Zuldazar/0 51.60,50.57
accept King Da'ka##49922 |goto Zuldazar/0 51.60,50.57
step
talk Shado##137331
|tip Inside the building.
home Village in the Vines |goto 51.28,51.24 |q 47738 |future
step
Follow the road |goto 52.42,51.85 < 20 |c |q 49919
step
accept Gorilla Gorge##49918 |goto 51.64,53.69
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Slay_Dakani_Gorillas"
step
talk Tsunga##130947
accept Gorilla Warfare##49920 |goto 50.18,54.57
stickystart "Scan_Kajamite_Steam_Vents"
stickystart "Release_Peace_Loving_Gorillas"
step
label "Scan_Kajamite_Steam_Vents"
click Kaja'mite Steam Vent##279389+
|tip They look like steam rising out of piles of grey rocks on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Scan #5# Kaja'mite Steam Vents |q 49919/1 |goto 49.15,54.07
step
label "Release_Peace_Loving_Gorillas"
click Cages
|tip They look like brown stick cages on the ground around this area.
Release #6# Peace-Loving Gorillas |q 49920/1 |goto 49.15,54.07
step
label "Slay_Dakani_Gorillas"
Kill enemies around this area
Slay Da'kani Gorillas |q 49918/1 |goto 49.15,54.07
|only if havequest(49918) or completedq(49918)
step
Follow the path up |goto 48.67,52.59 < 15 |only if walking
talk Tsunga##131258
turnin Gorilla Warfare##49920 |goto 47.42,52.43
step
Enter the cave |goto 47.15,51.59 < 7 |walk
kill King Da'ka##130948 |q 49922/1 |goto 46.73,50.47
|tip Inside the cave.
step
talk Bently Greaseflare##132617
turnin Kaja'mite Ore Bust##49919 |goto 51.60,50.57
turnin King Da'ka##49922 |goto 51.60,50.57
step
Follow the road |goto 51.58,48.98 < 20 |only if walking
click Wanted: Dangerous Beasts##287189
accept WANTED: Prime Thumpknuckle##51072 |goto 51.62,45.45
accept WANTED: Sabertusk Empress##51071 |goto 51.62,45.45
step
kill Prime Thumpknuckle##136334 |q 51072/1 |goto 52.68,45.00
|tip It walks around this area.
|tip It will appear on your minimap as a yellow dot.
|tip You may need help with this.
step
kill Sabertusk Empress##129323 |q 51071/1 |goto 52.41,47.76
|tip You may need help with this.
step
talk Shaz'ki##131187
turnin WANTED: Prime Thumpknuckle##51072 |goto 51.65,50.53
turnin WANTED: Sabertusk Empress##51071 |goto 51.65,50.53
step
Follow the road up |goto 51.59,48.88 < 20 |only if walking
Follow the road up |goto 52.11,43.88 < 20 |only if walking
talk Kaza the Skyblade##129483
fpath Temple of the Prophet |goto 49.81,44.59
step
Run up the stairs |goto Dazar'alor/0 51.75,19.08 < 15 |only if walking
Follow the path |goto Dazar'alor/0 45.37,23.80 < 15 |only if walking
talk Kaza'jin the Wavebinder##124629
turnin Terrace of the Chosen##47509 |goto Dazar'alor/0 42.64,21.42
accept Zanchuli Traitors##47897 |goto Dazar'alor/0 42.64,21.42
accept Rescuing the Taken##47915 |goto Dazar'alor/0 42.64,21.42
stickystart "Slay_Zanchuli_Traitors"
step
Run up the stairs |goto 41.48,19.35 < 15 |only if walking
kill Hexmother Kala##133297
collect Fetish of Loti##156923 |q 47915/1 |goto 43.52,17.68
step
label "Slay_Zanchuli_Traitors"
Kill enemies around this area
Slay #10# Zanchuli Traitors |q 47897/1 |goto 40.91,16.06
step
talk Wardruid Loti##123335
turnin Zanchuli Traitors##47897 |goto 39.29,13.84
turnin Rescuing the Taken##47915 |goto 39.29,13.84
step
_Next to you:_
talk Wardruid Loti
accept Raal##47518
accept Walls Have Ears##47520
stickystart "Slay_Eyes_and_Ears_of_Yazma"
step
Enter the building |goto 41.10,11.05 < 10 |walk
Run up the stairs |goto Dazar'alor/4 45.67,39.19 < 10 |walk
Follow the path |goto Dazar'alor/3 39.28,27.61 < 10 |c |q 47518
step
Follow the path |goto 64.33,66.36 < 10 |walk
Leave the building |goto 77.39,87.50 < 10 |walk
Run up the stairs |goto Dazar'alor/0 46.02,15.89 < 15 |only if walking
Run up the stairs |goto Dazar'alor/0 46.18,11.54 < 20 |only if walking
kill Crazzak the Heretic##124652 |q 47518/1 |goto Dazar'alor/0 43.46,7.06
|tip At the top of the building.
step
talk Hexlord Raal##133324
turnin Raal##47518 |goto 43.62,7.35
step
label "Slay_Eyes_and_Ears_of_Yazma"
Kill Yazma enemies around this area
|tip Inside and outside the building.
Slay #8# Eyes and Ears of Yazma |q 47520/1 |goto 43.46,7.06
step
_Next to you:_
talk Wardruid Loti
turnin Walls Have Ears##47520
step
talk Hexlord Raal##133324
accept Midnight in the Garden of the Loa##47521 |goto 42.55,9.49
step
clicknpc Ata the Winglord##127414
Mount Ata the Winglord |invehicle |goto 42.48,10.05 |q 47521
step
Ride with Ata the Winglord |q 47521/1 |goto Zuldazar/0 50.73,29.57 |notravel
step
Watch the dialogue
talk Wardruid Loti##122760
turnin Midnight in the Garden of the Loa##47521 |goto 50.70,29.65
accept Rituals of Heresy##47527 |goto 50.70,29.65 |only if level < 120
|tip You will automatically accept this quest. |only if level < 120
accept The Hunter##47522 |goto 50.70,29.65
step
talk Hexlord Raal##133653
accept The Ancient One##47963 |goto 50.69,29.57
stickystart "Disrupt_the_Blood_Rituals"
step
Rescue Gonk |q 47522/1 |goto 48.63,31.86
step
talk Gonk##124827
turnin The Hunter##47522 |goto 48.39,32.12
step
Run up the stairs |goto 50.50,31.76 < 15 |only if walking
kill Shadra Betrayer##133735+
|tip Kill all of the ones channeling on Pa'ku.
Rescue Pa'ku |q 47963/1 |goto 52.10,32.81
step
talk Pa'ku##124756
turnin The Ancient One##47963 |goto 52.10,32.81
step
_Next to you:_
talk Acolyte Mali
accept Mistress of Lies##47528
step
label "Disrupt_the_Blood_Rituals"
Kill Atal'Shadra enemies around this area
click Voodoo Pile##272401+
|tip They look like small piles of skulls on the ground around this area.
Disrupt the Blood Rituals |q 47527/1 |goto 50.35,31.06
|only if havequest(47527) or completedq(47527)
step
Run up the stairs |goto 49.12,30.52 < 15 |only if walking
Enter the building |goto 47.72,28.87 < 10 |walk
kill Vol'kaal##122866
|tip Inside the building.
Defeat Vol'kaal |q 47528/1 |goto 47.09,27.85
step
Watch the dialogue
Defeat Yazma |q 47528/2 |goto 47.21,27.72
step
Leave the building |goto 47.71,28.87 < 10 |walk
talk Wardruid Loti##122760
turnin Mistress of Lies##47528 |goto 48.58,26.78
step
talk Paku'ai Rip'nata##130787
fpath Garden of the Loa |goto 49.72,26.27
step
Follow the path down |goto 67.53,18.44 < 20 |only if walking
Follow the road |goto 70.43,22.13 < 30 |only if walking
Follow the path |goto 76.07,19.92 < 30 |only if walking
talk Zolani##124083
turnin The Wounded King##51101 |goto 76.69,16.26
accept In Bwonsamdi's Shadow##51680 |goto 76.69,16.26
step
talk Jamil Abul'housin##132637
|tip Inside the building.
Ask him _"How goes the mending?"_
Speak to Jamil Abul'housin |q 51680/1 |goto 76.47,16.00
step
talk Jol the Ancient##124063
|tip Inside the building.
Ask him _"How goes the mending?"_
Speak to Jol the Ancient |q 51680/2 |goto 76.44,16.16
step
talk Jol the Ancient##124063
|tip Inside the building.
turnin In Bwonsamdi's Shadow##51680 |goto 76.44,16.17
accept Ancient Tortollan Remedies##47735 |goto 76.44,16.17
step
talk Jamil Abul'housin##132637
|tip Inside the building.
accept The Scent of Vengeance##47739 |goto 76.47,16.00
step
talk Zolani##124083
accept No Safe Haven##50235 |goto 76.69,16.26
step
talk Paku'ai Jasi##124456
fpath Zeb'ahari |goto 77.36,15.35
stickystart "Rescue_Zebahari_Villagers"
stickystart "Collect_Traitors_Bloods"
step
clicknpc Laelani##132681
collect Brutosaur Scale##156824 |q 47735/2 |goto 78.59,13.13
step
label "Rescue_Zebahari_Villagers"
click Zeb'ahari NPC's
|tip They look like friendly blue trolls on the ground and fighting enemies around this area.
Rescue #12# Zeb'ahari Villagers |q 50235/1 |goto 80.19,14.76
step
talk Zeb'ahari Villager##138520
accept The Loa-Speaker's Betrayal##47733 |goto 79.35,16.77
step
clicknpc Spiny Puffer##133162
collect Envenomed Puffer Spine##156809 |q 47735/1 |goto 79.79,16.53
step
kill Loa-Speaker Kihara##132979 |q 47733/1 |goto 78.53,20.28
step
kill Ol' Bubbly##132650
collect Aged Crab Foam##156827 |q 47735/3 |goto 79.55,21.62
step
label "Collect_Traitors_Bloods"
Kill enemies around this area
collect 12 Traitor's Blood##156834 |q 47739/1 |goto 78.60,19.47
step
talk Zolani##124083
turnin No Safe Haven##50235 |goto 76.69,16.26
turnin The Loa-Speaker's Betrayal##47733 |goto 76.69,16.26
step
talk Jamil Abul'housin##132637
|tip Inside the building.
turnin The Scent of Vengeance##47739 |goto 76.47,16.00
step
talk Jol the Ancient##124063
|tip Inside the building.
turnin Ancient Tortollan Remedies##47735 |goto 76.44,16.16
accept Mending Body and Soul##51677 |goto 76.44,16.16
step
talk Jol the Ancient##124063
Tell him _"I am ready, Jol."_
Speak to Jol |q 51677/1 |goto 76.44,16.16
step
Watch the dialogue
click Astringent Spices
|tip Inside the building.
collect Astringent Spices##160566 |goto 76.56,15.95 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Astringent Spices>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 18
step
Watch the dialogue
click Sea Urchin Brine
|tip Inside the building.
collect Sea Urchin Brine##160567 |goto 76.46,16.25 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Sea Urchin Brine>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 36
step
Watch the dialogue
click Jol's Preserved Notes
|tip Inside the building.
collect Ancient Tortollan Scroll##160568 |goto 76.27,16.01 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Ancient Tortollan Scroll>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 54
step
Watch the dialogue
click Odoriferous Stew
|tip Inside the building.
Assist Jol |q 51677/2 |goto 76.49,15.93 |count 72
step
Watch the dialogue
click Clotting Powder
|tip Inside the building.
collect Clotting Powder##160569 |goto 76.36,16.16 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Clotting Powder>_
Assist Jol |q 51677/2 |goto 76.50,16.08 |count 90
step
Watch the dialogue
Assist Jol |q 51677/2 |goto 76.50,16.08 |count 100
step
talk Jol the Ancient##138598
|tip Inside the building.
turnin Mending Body and Soul##51677 |goto 76.44,16.17
step
talk Jamil Abul'housin##132637
|tip Inside the building.
accept The Will of the Loa##47738 |goto 76.47,16.00
step
click Idol of Rezan##281024
Place the Idol of Rezan |q 47738/1 |goto 76.85,13.23
step
Watch the dialogue
talk Rezan##133068
Tell him _"Rastakhan is injured and will not wake. We need your help."_
Speak to Rezan |q 47738/2 |goto 77.12,13.24
step
Watch the dialogue
clicknpc King Rastakhan##133107
Retrieve Rastakhan's Soul |q 47738/3 |goto 76.89,13.23
step
clicknpc King Rastakhan##132631
|tip Inside the building.
Restore Rastakhan's Soul to His Body |q 47738/4 |goto 76.46,16.07
step
Watch the dialogue
talk King Rastakhan##124062
turnin The Will of the Loa##47738 |goto 76.66,16.13
accept Zul's Mutiny##47742 |goto 76.66,16.13
accept Rastakhan's Might##51678 |goto 76.66,16.13
step
talk Zolani##124083
accept A Strange Port of Call##51679 |goto 76.65,16.18
step
talk Jol the Ancient##124063
|tip Inside the building.
home Zeb'ahari Inn |goto 76.42,16.08
stickystart "Slay_Mutinous_Zandalaris"
step
click Rope |goto 80.81,20.48
Climb Onto the Ship |goto 80.85,20.30 < 2 |noway |c |q 51678
step
click Rope |goto 80.85,20.29
Board the Ship |goto 80.88,20.39 < 2 |noway |c |q 51678
step
kill Windcaller Ula'jan##133140
|tip At the top of the ship.
collect Skull of Windcaller Ula'jan##156861 |q 51678/1 |goto 81.30,19.59
step
click Temple of Rezan Map##290996
|tip Inside the ship, on the deck level.
Search the Navigation Chamber |q 51679/1 |goto 81.27,19.74
step
Search the Hold |q 51679/2 |goto Zuldazar/1 52.51,77.91
|tip Downstairs one level inside the ship.
step
clicknpc Chronicler To'kini##138728
|tip Downstairs two levels inside the ship.
Search the Crew Quarters |q 51679/3 |goto Zuldazar/2 47.39,44.05
step
label "Slay_Mutinous_Zandalaris"
Kill enemies around this area
Slay #10# Mutinous Zandalari |q 47742/1 |goto 49.68,44.95
step
talk King Rastakhan##124062
turnin Zul's Mutiny##47742 |goto Zuldazar/0 76.66,16.13
turnin Rastakhan's Might##51678 |goto Zuldazar/0 76.66,16.13
turnin A Strange Port of Call##51679 |goto Zuldazar/0 76.66,16.13
accept The Temple of Rezan##47737 |goto Zuldazar/0 76.66,16.13
step
Follow the path up |goto 77.41,16.65 < 20 |only if walking
Follow the road |goto 75.72,20.17 < 30 |only if walking
talk King Rastakhan##124655
turnin The Temple of Rezan##47737 |goto 72.03,21.03
accept House of the King##47740 |goto 72.03,21.03
step
talk Zolani##124656
accept Heads Will Roll##47736 |goto 72.09,21.20
stickystart "Collect_Traitorous_Zandalari_Heads"
step
accept Occupation Hazard##47797 |goto 71.98,23.76
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Liberate_the_Temple_of_Rezan"
step
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the Hunter |q 47740/1 |goto 72.16,23.80
step
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the King |q 47740/3 |goto 73.82,22.94
step
Run up the stairs |goto 73.04,24.34 < 15 |only if walking
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the Conqueror |q 47740/2 |goto 73.68,25.76
step
label "Collect_Traitorous_Zandalari_Heads"
Kill enemies around this area
|tip Kao-Tien enemies will not count for this quest goal.
collect 12 Traitorous Zandalari Head##151384 |q 47736/1 |goto 73.61,25.18
step
label "Liberate_the_Temple_of_Rezan"
Kill Kao-Tien enemies around this area
clicknpc Priest of Rezan##124249+
|tip They look like groups of blue trolls standing or kneeling on the ground around this area.
click Training Gate##272388+
|tip They look like wooden barriers containing tyrannosaurus rexes on the ground around this area.
Liberate the Temple of Rezan |q 47797/1 |goto 72.00,23.76 |goto 73.61,25.18
|only if havequest(47797) or completedq(47797)
step
Run up the stairs |goto 74.33,24.94 < 15 |only if walking
talk Zolani##124656
turnin Heads Will Roll##47736 |goto 74.85,24.90
step
talk King Rastakhan##124655
turnin House of the King##47740 |goto 74.87,24.94
accept Partners in Heresy##47734 |goto 74.87,24.94
step
kill Darkweaver Ji'tan##124085 |q 47734/1 |goto 75.16,23.16
step
kill Soulrender Gao'tan##124088 |q 47734/2 |goto 75.12,26.56
|tip Inside the building.
|tip Stand in the blue circle when he casts it beneath his feet.
step
talk King Rastakhan##124655
turnin Partners in Heresy##47734 |goto 74.87,24.94
accept To Sacrifice a Loa##47741 |goto 74.87,24.94
step
Run up the stairs |goto 75.31,24.55 < 15 |only if walking
kill Vilnak'dor##133570 |q 47741/1 |goto 75.99,24.91
step
Watch the dialogue
Disrupt the Loa Sacrifice Ritual |q 47741/2 |goto 76.03,24.92
step
talk King Rastakhan##124655
Tell him _"Let's get out of here!"_
Watch the dialogue
Begin Following King Rastakhan |goto 76.06,24.90 > 10 |c |q 47741
step
Watch the dialogue
|tip Follow King Rastakhan as he walks.
Escape the Temple of Rezan |q 47741/3 |goto 73.37,28.20
step
talk Rezan##124948
turnin To Sacrifice a Loa##47741 |goto 70.83,29.90
step
talk King Rastakhan##124915
accept King or Prey##51111 |goto 70.98,29.91
step
Enter the building |goto Dazar'alor/0 49.99,41.88 < 10 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin King or Prey##51111 |goto Dazar'alor/2 41.43,72.44
accept Hunting Zul##49421 |goto Dazar'alor/2 41.43,72.44
accept Sending Out An SOS##52210 |goto Dazar'alor/2 41.43,72.44
accept Keep Them On Task##51555 |goto Dazar'alor/2 41.43,72.44
step
talk Brillin the Beauty##122690
|tip Inside the building.
home The Great Seal |goto Dazar'alor/1 48.65,71.99
step
Leave the building |goto Dazar'alor/0 49.94,42.14 < 7 |walk
talk Captain Grez'ko##140590
turnin Sending Out An SOS##52210 |goto Dazar'alor/0 46.15,94.59
accept Send the Signal!##49758 |goto Dazar'alor/0 46.15,94.59
step
clicknpc Fleet Scout##140566
Take the Fleet Scout to the Far Island |q 49758/1 |goto 46.40,94.63
step
Fly to the Isle of Fangs |goto Zuldazar/0 54.57,86.73 < 7 |c |q 49758 |notravel
step
talk Bo'tzun Maset##135576
turnin Send the Signal!##49758 |goto 54.42,87.01
accept Key to the Brig##49775 |goto 54.42,87.01
step
talk Paku'ai Leti##140650
fpath Isle of Fangs |goto 54.45,87.06
step
Follow the path |goto 52.00,87.03 < 5 |walk
kill Quartermaster Garza##130795
|tip She walks around this area inside the ship.
collect Brig Key##155882 |q 49775/1 |goto 51.56,86.88
step
Run down the stairs |goto 51.86,87.11 < 5 |walk
talk Wavemaster Lanfa##130821
|tip Downstairs inside the ship.
turnin Key to the Brig##49775 |goto Zuldazar/3 44.05,50.74
accept Not "Only Zul"##49754 |goto Zuldazar/3 44.05,50.74
step
Kill enemies around this area
|tip Anywhere on the ship.
Purge #10# of Zul's Forces |q 49754/1 |goto 41.99,44.51
step
talk Wavemaster Lanfa##130821
turnin Not "Only Zul"##49754 |goto Zuldazar/0 54.38,87.02
accept Against the Tide##49871 |goto Zuldazar/0 54.38,87.02
step
Follow the path up |goto 53.28,86.98 < 15 |only if walking
kill Warlord Xiar##130742 |q 49871/1 |goto 54.69,90.50
|tip He walks around this area.
|tip The Lightning Rods that line this path will stun you.
|tip Click the Lightning Rods to gain a stackable buff to help you kill him easier.
step
use the Empowered Fire Mojo##156473
Light the Signal Fire |q 49871/2 |goto 54.74,90.21
step
Watch the dialogue
talk Captain Grez'ko##130750
turnin Against the Tide##49871 |goto 54.69,89.71
accept Destroy the Weapon##49785 |goto 54.69,89.71
step
clicknpc Harli the Swift##130759
Ride with Harli the Swift |invehicle |goto 54.64,89.67 |q 49785
step
Fly to Tusk Isle |goto 59.38,78.09 < 7 |c |q 49785 |notravel
step
talk Paku'ai Jetar##140653
fpath Tusk Isle |goto 59.39,77.94
step
Investigate the Weapon |q 49785/1 |goto 57.92,76.53
step
kill Reo'kah##130725 |q 49785/2 |goto 57.44,75.60
step
talk Captain Grez'ko##130833
turnin Destroy the Weapon##49785 |goto 57.81,76.64
accept Hope's Blue Light##49884 |goto 57.81,76.64
step
clicknpc Captain Grez'ko##130833
Ride with Captain Grez'ko |invehicle |goto 57.81,76.64 |q 49884
step
Watch the dialogue
Light the Signal Fire |q 49884/1 |goto 60.82,75.25 |notravel
|tip Use the "Igniting..." ability on your action bar.
step
Return to the Port of Zandalar |goto Dazar'alor/0 45.98,94.38 < 7 |c |q 49884 |notravel
step
talk Captain Rez'okun##123000
turnin Hope's Blue Light##49884 |goto 44.48,95.46
step
talk Wavesinger De'zan##133538
Tell him _"Seeker's Outpost: Dreadpearl Shallows"_
Begin Riding the Boat |invehicle |goto 52.84,95.76 |q 49285 |future
step
Watch the dialogue
Ride the Boat to Seeker's Outpost |goto Zuldazar/0 69.86,65.88 < 10 |c |q 49285 |future |notravel
step
talk Koba##128888
|tip He walks around this area.
accept Tiny Treasures##49285 |goto Zuldazar/0 70.29,65.07
step
clicknpc Scroll of Flight##134008
fpath Seeker's Outpost |goto 70.45,65.31
step
talk Batu##129586
|tip He walks around this area.
accept Perfect Tidings##49284 |goto 70.54,65.21
step
accept Dreadpearl Collusion##49315 |goto 71.20,64.57
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Cleanse_Dreadpearl_Shallows"
step
click Tortollan Traveling Pack##278336
Find the First Clue |q 49284/1 |goto 71.20,64.57
step
click Amphibious Lab Enclosure##278231
collect Amphibious Lab Enclosure##156865 |q 49285/1 |goto 71.66,64.15
step
click Tortollan Scroll##278348
Find the Second Clue |q 49284/2 |goto 72.65,63.05
step
clicknpc Spitzy##133192
Find Spitzy |q 49285/3 |goto 73.08,64.86
step
click Hatchling's First Alchemy Stone##278233
collect Hatchling's First Alchemy Stone##156866 |q 49285/2 |goto 73.19,67.22
step
click Tortollan Scroll Case##278349
Find the Third Clue |q 49284/3 |goto 74.02,62.08
step
label "Cleanse_Dreadpearl_Shallows"
Kill enemies around this area
Cleanse the Dreadpearl Shallows |q 49315/1 |goto 73.55,62.51
|tip Run next to Squallfin Tadpoles to scare them.
|tip They look like small friendly Squallfin murlocs on the ground around this area.
|only if havequest(49315) or completedq(49315)
step
talk Choa##133417
turnin Tiny Treasures##49285 |goto 73.65,60.96
step
talk Deyon##128889
turnin Perfect Tidings##49284 |goto 73.65,60.96
accept Caged Wisdom##49286 |goto 73.65,60.96
step
Enter the cave |goto 73.61,60.70 < 5 |walk
kill Sli'thrus##128728
|tip He walks around this area inside the cave.
collect Nazeshi Cage Key##154708 |q 49286/1 |goto 74.48,59.80
step
Leave the cave |goto 73.60,60.78 < 5 |walk
click Jailer Cage##277859
Open the Cage |q 49286/2 |goto 73.66,60.97
step
talk Deyon##128889
turnin Caged Wisdom##49286 |goto 73.66,60.97
accept Lost Chelonians##49287 |goto 73.66,60.97
accept Scrollhunters##49288 |goto 73.66,60.97
stickystart "Recover_Tortollan_Scrolls"
step
click Nazeshi Cage##281219
Free Kono |q 49287/1 |goto 73.94,65.87
step
click Nazeshi Cage##281219
Free Rauloo |q 49287/2 |goto 75.15,66.53
step
click Nazeshi Cage##281219
Free Akru |q 49287/3 |goto 77.05,66.45
step
click Nazeshi Cage##281219
Free Crosh |q 49287/4 |goto 77.29,64.36
step
label "Recover_Tortollan_Scrolls"
kill Nazeshi Tempest-Wielder##128604+
Recover #5# Tortollan Scrolls |q 49288/1 |goto 76.91,64.94
step
Follow the path up |goto 75.59,62.17 < 10 |only if walking
talk Deyon##128925
turnin Lost Chelonians##49287 |goto 75.22,61.48
turnin Scrollhunters##49288 |goto 75.22,61.48
accept A Special Stone##49289 |goto 75.22,61.48
step
use the Scroll of Storm Control##157539
|tip Use it to gain the "Stormstruck" ability.
kill Tidemistress Nazesh##128712
|tip She walks around this area.
|tip Use the "Stormstruck" ability on her as you fight her.
|tip It appears as a button on the screen.
collect Report from Zuldazar##157543 |q 49289/1 |goto 76.64,61.22
step
click Fractured Azerite##289519
collect Stone Fragment##157554 |q 49289/2 |goto 76.68,61.39
step
talk Deyon##128925
turnin A Special Stone##49289 |goto 75.22,61.48
step
Watch the dialogue
talk Deyon##128925
accept Find Their Words##51407 |goto 75.22,61.48
step
Watch the dialogue
clicknpc Outpost Portal##140342 |goto 75.19,61.46
Teleport to Seeker's Outpost |goto 70.43,64.86 < 10 |noway |c |q 51407
step
talk Akru##129717
turnin Find Their Words##51407 |goto 70.56,64.89
accept A Different Outcome##50331 |goto 70.56,64.89
step
talk Wavesinger Zara##137645
Tell her _"Atal'Gral"_
Begin Riding the Boat to Atal'gral |invehicle |goto 69.49,66.99 |q 50331
step
Watch the dialogue
Take Boat Service to Atal'gral |q 50331/1 |goto 82.27,47.18 |notravel
step
talk Rokor##125047
turnin A Different Outcome##50331 |goto 81.35,45.79
accept The Scrolls of Gral##48015 |goto 81.35,45.79
accept Clear the Riffraff##48014 |goto 81.35,45.79
stickystart "Slay_Brackfin_Giblins"
step
click Waves of Power##272562
collect Waves of Power##151853 |q 48015/1 |goto 80.52,45.01
step
click Scroll of Purify##272561
collect Scroll of Purify##151854 |q 48015/2 |goto 79.99,44.45
step
click Edicts of Gral##272563
collect Edicts of Gral##151852 |q 48015/3 |goto 80.76,43.28
step
label "Slay_Brackfin_Giblins"
Kill Brackfin enemies around this area
Slay #6# Brackfin Gilbins |q 48014/1 |goto 80.72,43.96
step
Follow the path |goto 79.34,42.39 < 5 |only if walking
talk Trader Kro##125039
turnin Clear the Riffraff##48014 |goto 79.22,42.28
step
talk Scrollsage Goji##125041
turnin The Scrolls of Gral##48015 |goto 79.20,42.10
accept Saving for Later##48025 |goto 79.20,42.10
step
talk Trader Kro##125039
accept Awaken a God##49969 |goto 79.22,42.28
step
clicknpc Scroll of Flight##134011
fpath Atal'Gral |goto 79.97,41.40
stickystart "Collect_Chunks_of_Naga_Flesh"
step
use the Scroll of Illusion##151859
|tip Use it next to Gral's Tooth.
Disguise Gral's Tooth |q 48025/4 |goto 81.75,41.21
step
use the Scroll of Illusion##151859
|tip Use it next to the Voice of the Ocean.
|tip Underwater.
Disguise the Voice of the Ocean |q 48025/5 |goto 83.52,39.96
step
use the Scroll of Illusion##151859
|tip Use it next to the Cask of Blessed Water.
Disguise the Cask of Blessed Water |q 48025/3 |goto 81.38,39.00
step
use the Scroll of Illusion##151859
|tip Use it next to the Chest of Pearls.
|tip Underwater.
Disguise the Chest of Pearls |q 48025/2 |goto 79.67,36.73
step
use the Scroll of Illusion##151859
|tip Use it next to the Fetishes of Gral.
|tip Inside the tent.
Disguise the Fetishes of Gral |q 48025/1 |goto 78.56,37.62
step
label "Collect_Chunks_of_Naga_Flesh"
Follow the path |goto 78.48,37.94 < 10 |only if walking
Kill Dreadcoil enemies around this area
|tip Dreadcoil Brutes will not drop the quest item.
collect 12 Chunk of Naga Flesh##156539 |q 49969/1 |goto 78.72,38.51
step
talk Scrollsage Goji##125041
turnin Saving for Later##48025 |goto 79.20,42.10
step
click Offering Vessel##279705
|tip Underwater.
turnin Awaken a God##49969 |goto 82.77,42.32
step
clicknpc Shrine of Gral##131475
|tip Underwater.
accept Beneath the Waves##48026 |goto 82.85,42.33
stickystart "Slay_Summoner_Siavass"
step
kill Whispering Horror##131487 |q 48026/2 |goto 83.60,44.27
|tip Underwater.
step
label "Slay_Summoner_Siavass"
kill Summoner Siavass##125087 |q 48026/1 |goto 83.72,44.61
|tip Underwater.
step
_Next to you:_
talk Spirit of Gral##131461
turnin Beneath the Waves##48026
accept Word from the Deep##51538
step
talk Scrollsage Goji##125041
turnin Word from the Deep##51538 |goto 79.20,42.10
accept Inform the Horde!##51539 |goto 79.20,42.10
step
Follow the path |goto 79.46,45.03 < 20 |only if walking
talk Lieutenant Dennis Grimtale##137075
turnin Keep Them On Task##51555 |goto 76.61,48.53
accept The Wreckoning##51246 |goto 76.61,48.53
accept The Things They Carried##51247 |goto 76.61,48.53
step
talk Teekay Treadlebobbin##135855
accept Productive Pests##51248 |goto 76.42,48.71
step
talk J'eebi##135803
accept Crabulous Feast##51249 |goto 76.38,48.75
stickystart "Collect_Bugs"
stickystart "Collect_Large_Lump_Of_Crab_Meat"
stickystart "Slay_7th_Legion_Sailors"
step
kill Sergeant Wayne##137089
collect Ship's Manifest##159835 |q 51247/3 |goto 74.55,51.71
step
kill Sailor Jaseon##137084
collect Scouting Map##159836 |q 51247/2 |goto 76.69,50.98
step
kill Medic Hunt##137082
collect Unsent Letter##159837 |q 51247/1 |goto 76.50,52.75
step
label "Collect_Bugs"
clicknpc Mosquito##137200+
|tip They look like small flying bugs on the ground around this area.
clicknpc Sand Borer##137834+
|tip They look like small beetles on the ground around this area.
Collect #5# Bugs |q 51248/1 |goto 75.83,51.97
step
label "Collect_Large_Lump_Of_Crab_Meat"
kill Derelict Hexapod##137255+
collect 7 Large Lump of Crab Meat##159934 |q 51249/1 |goto 75.83,51.97
step
label "Slay_7th_Legion_Sailors"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Sailors |q 51246/1 |goto 75.83,51.97
step
talk J'eebi##135803
turnin Crabulous Feast##51249 |goto 76.38,48.75
step
talk Teekay Treadlebobbin##135855
turnin Productive Pests##51248 |goto 76.42,48.72
step
talk Lieutenant Dennis Grimtale##137075
turnin The Wreckoning##51246 |goto 76.61,48.52
turnin The Things They Carried##51247 |goto 76.61,48.52
accept Stop the Evacuation##51286 |goto 76.61,48.52
step
click Inconspicuous Seaforium Bomb
Place the Seaforium Bomb |q 51286/1 |goto 80.16,57.05
step
kill Captain Sarai Naut##141521 |q 51286/2 |goto 79.95,57.24
step
Follow the path up |goto 77.30,48.66 < 15 |only if walking
talk Lieutenant Dennis Grimtale##137075
turnin Stop the Evacuation##51286 |goto 76.61,48.53
step
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin Inform the Horde!##51539 |goto Dazar'alor/2 41.46,72.16
step
Leave the building |goto Dazar'alor/0 49.94,42.10 < 5 |walk
Run up the stairs |goto Dazar'alor/0 51.75,19.10 < 10 |only if walking
Follow the path |goto Dazar'alor/0 45.36,23.81 < 10 |only if walking
talk King Rastakhan##129491
turnin Hunting Zul##49421 |goto Dazar'alor/0 38.92,27.15
accept The Warpack##49965 |goto Dazar'alor/0 38.92,27.15
step
Watch the dialogue
clicknpc Wardruid Loti##134132
Ride with Wardruid Loti |invehicle |goto 38.81,27.02 |q 49965
step
Watch the dialogue
Ride with the Warpack |q 49965/1 |goto Zuldazar/0 49.19,44.79 |notravel
step
talk Gonk##129740
turnin The Warpack##49965 |goto 49.27,44.32
accept Heretics##49422 |goto 49.27,44.32
step
talk Wardruid Loti##129561
accept The Full Prophecy##49424 |goto 49.34,44.35
stickystart "Bring_Ruin"
step
click The Word of Zul III##280350
Read The Word of Zul III |q 49424/3 |goto 48.81,42.76
step
Run up the stairs |goto 49.75,42.48 < 15 |only if walking
click The Word of Zul II##280349
|tip Inside the building.
Read The Word of Zul II |q 49424/2 |goto 49.01,40.57
step
Cross the bridge |goto 49.73,40.44 < 10 |only if walking
click The Word of Zul I##280348
Read The Word of Zul I |q 49424/1 |goto 48.75,39.40
step
_Next to you:_
talk Wardruid Loti##132041
turnin The Full Prophecy##49424
step
label "Bring_Ruin"
Kill enemies around this area
clicknpc Skykiller Ballista##129540+
|tip They look like wooden crossbow machines on the ground around this area.
Bring Ruin |q 49422/1 |goto 49.07,39.36
step
talk Hexlord Raal##129703
turnin Heretics##49422 |goto 49.65,37.98
accept City of Gold##49425 |goto 49.65,37.98
step
clicknpc Ata the Winglord##129701
Ride Ata the Winglord |q 49425/1 |goto 49.64,37.91
step
Watch the dialogue
Kill enemies around this area
|tip Use the "Explosive Wrath Totem" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #75# Forces of Zul |q 49425/2 |goto 45.97,36.79
step
Watch the dialogue
Travel to Atal'Dazar |goto 43.77,39.08 < 7 |c |q 49425 |notravel
step
talk Rezan##131049
turnin City of Gold##49425 |goto 43.70,39.45
accept The King's Gambit##49426 |goto 43.70,39.45
step
March on Atal'Dazar |q 49426/1 |goto 42.10,39.28
step
talk King Rastakhan##131070
Ask him _"What now?"_
Watch the dialogue
Speak with King Rastakhan |q 49426/2 |goto 42.08,39.52
step
Run up the stairs |goto 42.10,38.71 < 10 |only if walking
Run up the stairs |goto 42.33,37.58 < 10 |only if walking
Watch the dialogue
Get Rastakhan to Safety |q 49426/3 |goto 42.73,37.65
step
talk King Rastakhan##129757
turnin The King's Gambit##49426 |goto 42.73,37.65
accept Atal'Dazar: Yazma the Fallen Priestess##49901 |goto 42.73,37.65
accept Of Dark Deeds and Dark Days##50963 |goto 42.73,37.65
step
Follow the path up |goto 42.64,35.85 < 15 |only if walking
Jump down carefully here |goto 43.79,36.93 < 15 |only if walking
Follow the road |goto 44.33,38.54 < 20 |only if walking
Cross the bridge |goto 46.12,38.00 < 15 |only if walking
talk Loz the Paku'ai##130790
fpath Atal'dazar |goto 46.16,35.81
step
Enter the building |goto Dazar'alor/0 49.95,42.14 < 5 |walk
talk Princess Talanji##133050
|tip Inside the building.
turnin Of Dark Deeds and Dark Days##50963 |goto Dazar'alor/2 41.26,66.71
step
talk Natal'hakata##131287
|tip Inside the building.
accept Sandscar Breach##49940 |goto 67.34,71.59
step
Leave the building |goto Dazar'alor/0 49.96,42.13 < 5 |walk
talk Bladeguard Sonji##130450
turnin Sandscar Breach##49940 |goto Zuldazar/0 47.25,24.95
accept I Spy a Spire##49678 |goto Zuldazar/0 47.25,24.95
accept Skycaller Soltok##49680 |goto Zuldazar/0 47.25,24.95
step
talk Beastmother Jabati##131354
accept The Sethrak Incursion##49679 |goto 47.33,25.14
stickystart "Destroy_Sethrak_Spires"
stickystart "Slay_Sethrak_Invaders"
step
Cross the bridge |goto 46.98,24.75 < 5 |only if walking
talk Lil' Tika##130468
accept Lil' Tika##49681 |goto 46.23,23.33
step
click Sethrak Cage##277876
Release Lil' Tika |q 49681/1 |goto 46.23,23.33
step
Follow the road up |goto 45.25,23.45 < 15 |only if walking
clicknpc Chief Chan'Tika##130482
|tip Inside the building.
Find Lil' Tika's Master |q 49681/2 |goto 45.37,26.40
step
kill Skycaller Soltok##130412 |q 49680/1 |goto 45.30,26.23
|tip Upstairs inside the building.
step
label "Destroy_Sethrak_Spires"
click Sethrak Spire##278583+
|tip They look like large stone pillars with enemies channeling lightning on them on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #4# Sethrak Spires |q 49678/1 |goto 45.22,25.42
step
label "Slay_Sethrak_Invaders"
Kill enemies around this area
Slay #12# Sethrak Invaders |q 49679/1 |goto 45.22,25.42
step
talk Bladeguard Sonji##130450
turnin I Spy a Spire##49678 |goto 47.25,24.95
turnin Skycaller Soltok##49680 |goto 47.25,24.95
step
talk Beastmother Jabati##131354
turnin The Sethrak Incursion##49679 |goto 47.33,25.14
turnin Lil' Tika##49681 |goto 47.33,25.14
step
_Congratulations!_
You completed the Zuldazar leveling guide.
Click Here to Continue |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
|tip This will load the "Intro & Quest Zone Choice" guide.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Nazmir",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Nazmir storylines:\n\nDeep in the Swamp\nUndercover Sista\nA Friend of the Frogs\nBring the Boom\nA Pact with Death\nTurtle Power\nEverything Contained\nBleeding the Blood Trolls",
condition_suggested=function() return level >= 110 and not completedq(50808) and completedq(52131) end,
startlevel=110.0,
endlevel=120.0,
image=ZGV.DIR.."\\Guides\\Images\\Nazmir",
},[[
step
talk Princess Talanji##133050
|tip Inside the building.
accept Journey to Nazmir##47103 |goto Dazar'alor/2 41.18,66.77
step
Leave the building |goto Dazar'alor/0 49.97,42.15 < 10 |walk
talk Rokhan##126549
turnin Journey to Nazmir##47103 |goto Dazar'alor/0 51.66,41.29
accept Nazmir, the Forbidden Swamp##48535 |goto Dazar'alor/0 51.66,41.29
step
talk Paku'ai Rokota##122689
Tell her _"Get me as close as you can to Nazmir."_
Take a Flight to Nazmir Outskirts |q 48535/1 |goto 51.91,41.20
step
Follow the path |goto Zuldazar/0 51.08,21.33 < 7 |only if walking
Follow the path down |goto Zuldazar/0 51.30,21.00 < 7 |only if walking
Follow the path |goto Zuldazar/0 52.57,20.80 < 5 |only if walking
Cross the bridge |goto Zuldazar/0 52.72,20.64 < 5 |only if walking
Follow the road |goto Zuldazar/0 53.55,19.80 < 5 |only if walking
Follow the road |goto Zuldazar/0 53.70,19.62 < 5 |only if walking
Cross the bridge |goto Zuldazar/0 53.74,18.88 < 5 |only if walking
Follow the path |goto Nazmir/0 43.39,87.00 < 5 |only if walking
Meet with Princess Talanji |q 48535/2 |goto Nazmir/0 43.36,86.52
step
talk Princess Talanji##120904
turnin Nazmir, the Forbidden Swamp##48535 |goto 43.00,86.03
accept Into The Darkness##47105 |goto 43.00,86.03
step
Follow the path down |goto 43.42,85.49 < 7 |only if walking
Follow the path |goto 43.85,83.90 < 7 |only if walking
Follow the path down |goto 44.60,82.73 < 7 |only if walking
Continue following the path |goto 45.77,81.23 < 7 |only if walking
Scout Ahead |q 47105/1 |goto 46.94,80.18
step
Follow the path |goto 46.94,80.18 < 5 |only if walking
talk Princess Talanji##130844
turnin Into The Darkness##47105 |goto 47.25,79.74
accept Leave None Standing##47264 |goto 47.25,79.74
accept Improper Burial##47130 |goto 47.25,79.74
stickystart "Slay_Blood_Trolls"
step
Follow the path |goto 47.07,79.02 < 5 |only if walking
Continue following the path |goto 47.74,78.60 < 7 |only if walking
use the Ceremonial Torch##154724
|tip Use it on Dead Zandalari around this area.
|tip They look like Troll corpses laying on the ground around this area.
Burn #5# Dead Zandalari |q 47130/1 |goto 48.96,78.41
step
label "Slay_Blood_Trolls"
Kill Blood Troll enemies around this area
Slay #8# Blood Trolls |q 47264/1 |goto 48.96,78.41
step
Follow the path |goto 47.83,78.53 < 7 |only if walking
Run up the stairs |goto 46.26,77.11 < 5 |only if walking
Follow the path |goto 46.23,76.80 < 5 |only if walking
talk Princess Talanji##121241
turnin Leave None Standing##47264 |goto 45.65,74.79
turnin Improper Burial##47130 |goto 45.65,74.79
accept Ending the Blood Trolls##47262 |goto 45.65,74.79
step
Run up the stairs |goto 45.61,73.48 < 5 |only if walking
Follow the path |goto 45.61,73.22 < 5 |only if walking
Run up the ramp |goto 44.99,71.75 < 5 |only if walking
kill Grand Ma'da Ateena##121504
|tip She will eventually escape.
Watch the dialogue
Slay Grand Ma'da Ateena |q 47262/1 |goto 44.91,71.65
step
Watch the dialogue
talk Princess Talanji##130844
turnin Ending the Blood Trolls##47262 |goto 45.21,71.04
accept A Time of Revelation##47263 |goto 45.21,71.04
step
Watch the dialogue
talk Princess Talanji##131146
Tell her _"We need to move, we shouldn't stay here."_
Speak with Talanji at the Overlook |q 47263/1 |goto 45.57,68.65
step
Watch the dialogue
Travel to Zul'jan Ruins |goto 39.41,76.65 < 7 |c |q 47263 |notravel
step
Follow the path |goto 39.84,77.06 < 7 |only if walking
Run up the stairs |goto 39.95,77.44 < 5 |only if walking
talk Princess Talanji##121288
turnin A Time of Revelation##47263 |goto 39.14,79.07
accept The Aid of the Loa##47188 |goto 39.14,79.07
step
talk Princess Talanji##121288
Tell her _"Let's discuss what we can do to fight the blood trolls."_
Watch the dialogue
Listen to Talanji and Rokhan |q 47188/1 |goto 39.15,79.07
step
talk Princess Talanji##121288
turnin The Aid of the Loa##47188 |goto 39.15,79.07
accept The Shadow of Death##47241 |goto 39.15,79.07
step
click Scouting Report##287232
accept WANTED: Tojek##51089 |goto 39.56,79.95
step
Run up the stairs |goto 39.00,78.66 < 5 |only if walking
Enter the building |goto 38.80,78.65 < 3 |walk
talk Crazy Vaza##121840
|tip Inside the building.
home Zul'jan Ruins |goto 38.62,78.66 |q 49902 |future
step
Leave the building |goto 38.80,78.65 < 3 |walk
Follow the path |goto 39.09,78.47 < 5 |only if walking
talk Zabar##121828
fpath Zul'jan |goto 38.85,78.14
step
talk Sur'jan##126713
accept Urok, Terror of the Wetlands##48669 |goto 38.83,77.71
step
talk Sur'jan##126713
Tell him _"Show me Urok, the Terror of the Wetlands."_
Watch the dialogue
Observe Urok, Terror of the Wetlands |q 48669/1 |goto 38.83,77.71
step
talk Sur'jan##126713
turnin Urok, Terror of the Wetlands##48669 |goto 38.83,77.71
accept Crocolisk Life##48573 |goto 38.83,77.71
accept Pulling Fangs##48574 |goto 38.83,77.71
stickystart "Collect_Saurid_Teeth"
step
Follow the path down |goto 38.51,77.44 < 7 |only if walking
kill Primal Snapjaw##126723+
use Sur'jan's Ritual Dagger##152596
|tip Use it near their corpses.
Absorb #8# Snapjaw Mojo |q 48573/1 |goto 36.33,75.99
step
label "Collect_Saurid_Teeth"
kill Sickly Saurid##126689+
collect 40 Saurid Teeth##152595 |q 48574/1 |goto 34.84,79.30
step
talk Sur'jan##126713
turnin Crocolisk Life##48573 |goto 34.08,78.57
turnin Pulling Fangs##48574 |goto 34.08,78.57
step
Watch the dialogue
talk Sur'jan##126713
accept Safe Flying##48576 |goto 34.08,78.57
accept Terrorizing their Eggs##48577 |goto 34.08,78.57
accept There's No Eye in Skyterror##48578 |goto 34.08,78.57
stickystart "kill_Primal_Skyterrors"
stickystart "Destroy_Skyterror_Eggs"
step
Follow the path |goto 33.76,80.18 < 7 |only if walking
Follow the path up |goto 33.35,82.58 < 7 |only if walking
Follow the path up |goto 33.50,83.52 < 7 |only if walking
Continue up the path |goto 34.39,84.06 < 7 |only if walking
Continue up the path |goto 34.91,84.61 < 5 |only if walking
Follow the path |goto 34.83,85.17 < 7 |only if walking
Follow the path up |goto 34.73,86.13 < 5 |only if walking
Follow the path up |goto 34.30,85.98 < 5 |only if walking
kill Jarkadiax##126703
collect Jarkadiax's Eye##152600 |q 48578/1 |goto 33.83,86.03
step
label "kill_Primal_Skyterrors"
use Sur'jan's Grappling Hook##152610
|tip Use it on Primal Skyterrors around this area.
|tip They are flying in the air around this area.
kill 8 Primal Skyterror##126702 |q 48576/1 |goto 34.19,84.02
step
label "Destroy_Skyterror_Eggs"
click Skyterror Egg##273827+
|tip They look like large white eggs in nests on the ground around this area.
Destroy #5# Skyterror Egg |q 48577/1 |goto 34.19,84.02
step
Follow the path down |goto 33.50,83.52 < 7 |only if walking
Follow the path |goto 33.39,82.45 < 7 |only if walking
talk Sur'jan##126713
turnin Safe Flying##48576 |goto 34.08,78.57
turnin Terrorizing their Eggs##48577 |goto 34.08,78.57
turnin There's No Eye in Skyterror##48578 |goto 34.08,78.57
accept The Blood of My Enemies##48584 |goto 34.08,78.57
accept My Head and Shoulders##48590 |goto 34.08,78.57
stickystart "Collect_Coagulated_Dreadtick_Blood"
step
Follow the path |goto 33.63,76.74 < 10 |only if walking
accept Purge the Infection##48588 |goto 31.43,74.77
|tip You will automatically accept this quest.
stickystart "Destroy_Infected_Saurolisks_and_Eggs"
step
Follow the path |goto 33.48,76.62 < 7 |only if walking
Follow the path up |goto 31.51,73.88 < 5 |only if walking
clicknpc Sur'jan's Helm##141728
collect Sur'jan's Helm##156621 |q 48590/1 |goto 31.62,73.48
step
Follow the path |goto 31.80,72.86 < 7 |only if walking
Follow the path |goto 31.54,72.09 < 5 |only if walking
Follow the path |goto 31.34,71.71 < 5 |only if walking
clicknpc Sur'jan's Left Shoulderpad##141858
collect Sur'jan's Left Shoulderpad##156620 |q 48590/2 |goto 31.05,71.38
step
Follow the path up |goto 30.61,71.22 < 5 |only if walking
Follow the path |goto 30.47,72.32 < 7 |only if walking
Follow the path |goto 29.29,73.73 < 7 |only if walking
Continue following the path |goto 29.27,75.20 < 7 |only if walking
Continue following the path |goto 28.91,76.72 < 5 |only if walking
clicknpc Sur'jan's Right Shoulderpad##141860
collect Sur'jan's Right Shoulderpad##156619 |q 48590/3 |goto 28.73,76.76
step
label "Collect_Coagulated_Dreadtick_Blood"
use Sur'jan's Dreadtick Gasser##156618
|tip Use it on Dreadtick Latchers around this area.
kill Dreadtick Latcher##126749+
collect 45 Coagulated Dreadtick Blood##152611 |q 48584/1 |goto 29.29,74.01
step
label "Destroy_Infected_Saurolisks_and_Eggs"
kill Infected Saurolisk##127132+
Destroy Infected Saurolisks and Eggs |q 48588/1 |goto 29.29,74.01
|tip Walk over Infected Saurolisk Eggs to break them.
|tip They look like small white eggs on the ground around this area.
step
talk Sur'jan##126713
turnin The Blood of My Enemies##48584 |goto 28.76,72.64
turnin My Head and Shoulders##48590 |goto 28.76,72.64
step
Watch the dialogue
talk Sur'jan##126713
accept Urok's True Death##48591 |goto 28.76,72.64
step
Follow the path |goto 28.07,72.59 < 7 |only if walking
Enter the cave |goto 26.85,73.16 < 5 |walk
kill Urok##123757 |q 48591/1 |goto 25.78,73.53
|tip Inside the cave.
step
Leave the cave |goto 26.90,73.11 < 5 |walk
Follow the path |goto 28.18,72.49 < 7 |only if walking
talk Sur'jan##131872
turnin Urok's True Death##48591 |goto 28.76,72.64
step
Follow the path up |goto 28.89,70.49 < 7 |only if walking
Follow the path up |goto 28.68,69.60 < 7 |only if walking
Follow the path |goto 28.05,68.70 < 7 |only if walking
Follow the path up |goto 27.82,67.83 < 7 |only if walking
kill Tojek##136381 |q 51089/1 |goto 26.98,67.13
|tip It looks like a large yellow and brown triceratops that walks around this area.
|tip You may need help with this.
step
Enter the building |goto 37.73,63.11 < 10 |walk		click Broken Spear##271170
|tip Inside the building.
Investigate the Abandoned Ruins |q 47241/2 |goto 37.50,63.06
step
Leave the building |goto 37.73,63.11 < 3 |walk
Follow the path |goto 38.16,63.14 < 7 |only if walking
Follow the path |goto 38.77,63.84 < 7 |only if walking
Follow the path |goto 39.49,65.07 < 5 |only if walking
click Weathered Shrine##270902
Investigate the Weathered Shrine |q 47241/1 |goto 39.61,64.97
step
Follow the path |goto 39.31,64.92 < 5 |only if walking
Cross the bridge |goto 39.08,63.72 < 7 |only if walking
Follow the path |goto 39.10,62.84 < 7 |only if walking
Follow the path |goto 38.82,62.17 < 7 |only if walking
talk Shinga Deathwalker##130481
accept Bwonsamdi's Deliverance##48468 |goto 39.06,60.67
accept Respecting the Rites##48473 |goto 39.06,60.67
stickystart "Light_Ritual_Torches"
stickystart "Burn_Defiled_Corpses"
step
Run up the stairs |goto 40.14,62.31 < 5 |only if walking
Run up the stairs |goto 40.29,62.69 < 5 |only if walking
Follow the path |goto 40.33,62.97 < 5 |only if walking
Run up the stairs |goto 40.50,63.23 < 5 |only if walking
Follow the path |goto 40.80,63.25 < 5 |only if walking
Follow the path |goto 41.28,62.99 < 5 |only if walking
click Ritual Powder##281361
collect Ritual Powder##157793 |q 48473/2 |goto 41.30,62.58
step
label "Light_Ritual_Torches"
click Ritual Torch##277693+
|tip They look like wooden sticks with red tips coming out of the ground around this area.
|tip They will appear on your minimap as yellow dots.
Light #5# Ritual Torches |q 48473/1 |goto 41.55,63.90
step
label "Burn_Defiled_Corpses"
Kill Defiled enemies around this area
use the Cremation Torch##153178
|tip Use it on their corpses.
|tip You can burn the corpses of enemies other players killed.
Burn #10# Defiled Corpses |q 48468/1 |goto 41.44,63.50
step
talk Shinga Deathwalker##126080
turnin Bwonsamdi's Deliverance##48468 |goto 38.93,59.91
turnin Respecting the Rites##48473 |goto 38.93,59.91
accept Kel'vax's Home##48478 |goto 38.93,59.91
step
talk Kol'jun Deathwalker##126079
accept Bones for Protection##48479 |goto 39.00,59.93
step
use Spirit Powder##154130
Begin the Spirit Journey |havebuff 134380 |goto 39.00,59.92 |q 48478
stickystart "Collect_Cursed_Bones"
step
click Ancient Phylactery##278341
collect Ancient Phylactery##154136 |q 48478/2 |goto 39.39,57.47
step
click Pristine Phylactery##278343
collect Pristine Phylactery##154137 |q 48478/3 |goto 38.32,54.39
step
click Repaired Phylactery##278337
collect Repaired Phylactery##152468 |q 48478/1 |goto 40.99,51.97
step
label "Collect_Cursed_Bones"
Kill enemies around this area
|tip Only the enemies that look like skeletons will drop the quest item.
collect 40 Cursed Bone##153346 |q 48479/1 |goto 39.52,55.43
step
talk Kol'jun Deathwalker##126079
turnin Bones for Protection##48479 |goto 39.00,59.92
step
talk Shinga Deathwalker##126080
turnin Kel'vax's Home##48478 |goto 38.93,59.92
accept The Fall of Kel'vax##48480 |goto 38.93,59.92
step
kill Kel'vax Deathwalker##126126 |q 48480/1 |goto 42.21,57.49
step
talk Shinga Deathwalker##126080
turnin The Fall of Kel'vax##48480 |goto 38.93,59.91
step
clicknpc Blood Scavenger##122094
Investigate the Shrine of Bones |q 47241/3 |goto 35.62,58.58
step
Watch the dialogue
talk Hanzabu##122102
turnin The Shadow of Death##47241 |goto 36.62,53.93
accept A Culling of Souls##47244 |goto 36.62,53.93
step
kill Blood Witch Najima##122204 |q 47244/1 |goto 38.55,49.98
step
talk Hanzabu##124428
turnin A Culling of Souls##47244 |goto 39.52,43.83
accept Spiritual Restoration##49278 |goto 39.52,43.83
step
clicknpc Drained Spirit##134363
Restore the Drained Spirit |q 49278/1 |goto 39.04,43.90 |count 1
step
clicknpc Drained Spirit##134363
Restore the Drained Spirit |q 49278/1 |goto 38.86,43.50 |count 2
step
talk Du'ba##122191
fpath Zo'bal Ruins |goto 40.18,42.83
step
clicknpc Drained Spirit##134363
|tip Inside the building.
Restore the Drained Spirit |q 49278/1 |goto 40.89,43.54 |count 3
step
talk Du'ba##122191
turnin Spiritual Restoration##49278 |goto 39.52,43.83
step
Watch the dialogue
talk Witch Doctor Kejabu##122795
accept Blood Troll on the Outside##49440 |goto 39.63,43.87
step
talk Witch Doctor Kejabu##122795
accept The Necropolis##47868 |goto 39.52,43.83
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.41,43.53 |count 1
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.57,43.74 |count 2
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.74,43.52 |count 3
step
talk Witch Doctor Kejabu##122795
Tell him _"I'm ready to begin the ritual to disguise myself as a blood troll."_
Watch the dialogue
Speak to Witch Doctor Kejabu to Complete the Ritual |q 49440/2 |goto 39.63,43.86
step
Watch the dialogue
talk Witch Doctor Kejabu##122795
turnin Blood Troll on the Outside##49440 |goto 39.63,43.86
accept Sneaking into Zalamar##48699 |goto 39.63,43.86
step
talk Hanzabu##124513
turnin The Necropolis##47868 |goto 39.58,32.58
accept A Tribute for Death##47880 |goto 39.58,32.58
step
Draw the Ritual Circle |q 47880/1 |goto 39.58,32.35
|tip Walk on top of the dashed lines on the ground to trace them.
step
click Drum of Spirits##270997
Sound the Drum of Spirits |q 47880/2 |goto 39.59,31.84
step
Enter the building |goto 39.56,26.73 < 10 |walk
Watch the dialogue
talk Bwonsamdi##122688
|tip Inside the building.
turnin A Tribute for Death##47880 |goto 39.57,24.66
accept Remnants of the Damned##47491 |goto 39.57,24.66
accept A Desecrated Temple##49348 |goto 39.57,24.66
accept That Which Haunts the Dead##47247 |goto 39.57,24.66
stickystart "Disrupt_Corrupted_Spirits"
stickystart "Collect_Decaying_Bloodstones"
step
Leave the building |goto 39.59,26.56 < 10 |c |q 47247
step
accept Mark of the Damned##48934 |goto 39.58,27.25
|tip You will accept this quest automatically.
|only if level < 120
step
talk Theurgist Salazae##122706
accept 'Til Death Do Us Part##47248 |goto 36.66,27.40
step
kill Hex Priestess Tizeja##122666 |q 47247/2 |goto 36.09,29.88
|tip Kill the enemies channeling on her to be able to attack her.
step
Enter the crypt |goto 40.37,28.80 < 10 |walk
click Ancient Urn##270991
|tip Inside the crypt.
collect Valjabu's Tusk Ring##150754 |q 47248/1 |goto 40.37,26.52
stickystart "Destroy_Vile_Desecrations"
step
Leave the crypt |goto 40.37,28.77 < 10 |walk
Run up the stairs |goto 39.58,29.15 < 15 |only if walking
kill Warlord Malaja##122664 |q 47247/1 |goto 43.42,30.02
step
talk Keula##126588
accept The Forlorn Soul##49432 |goto 42.58,31.46
step
label "Destroy_Vile_Desecrations"
clicknpc Vile Desecration##129086+
|tip They look like red bubbles on the walls around this area.
Destroy #5# Vile Desecration |q 49348/1 |goto 42.61,29.77
step
label "Disrupt_Corrupted_Spirits"
Kill enemies around this area
|tip Horror enemies will not count for this quest goal.
clicknpc Seeping Corruption##127738+
|tip They look like red balls floating above the ground around this area.
Disrupt the Corrupted Spirits |q 48934/1 |goto 42.61,29.77
|only if havequest(48934) or completedq(48934)
step
Enter the crypt |goto 39.59,31.66 < 10 |walk
click Sarcophagus Lid##278692
|tip Inside the crypt.
Find Keula's Mother |q 49432/1 |goto 39.59,34.95
step
Watch the dialogue
kill The Matron Shaazula##126616
|tip Inside the crypt.
Subdue Matron Shaazula |q 49432/2 |goto 39.65,35.00
step
Leave the crypt |goto 39.59,31.73 < 10 |c |q 47248
step
label "Collect_Decaying_Bloodstones"
Kill Horror enemies around this area
collect 6 Decaying Bloodstone##150753 |q 47491/1 |goto 39.60,30.29
step
talk Theurgist Salazae##122706
turnin 'Til Death Do Us Part##47248 |goto 36.66,27.40
step
Enter the building |goto 39.56,26.73 < 10 |walk
talk Bwonsamdi##122688
|tip Inside the building.
turnin Remnants of the Damned##47491 |goto 39.56,24.68
turnin A Desecrated Temple##49348 |goto 39.56,24.68
turnin That Which Haunts the Dead##47247 |goto 39.56,24.68
turnin The Forlorn Soul##49432 |goto 39.56,24.68
accept Soulbound##47249 |goto 39.56,24.68
step
Leave the building |goto 39.60,26.53 < 5 |walk
talk Bwonsamdi##126707
Tell him _"Let's begin."_
Watch the dialogue
Begin the Ritual |q 47249/1 |goto 39.58,30.21
step
Watch the dialogue
kill Grand Ma'da Ateena##122711 |q 47249/2 |goto 39.57,30.96
|tip She will eventually escape.
step
talk Bwonsamdi##122766
turnin Soulbound##47249 |goto 39.58,30.22
accept We'll Meet Again##47250 |goto 39.58,30.22
step
talk Rovash the One Eyed##135740
turnin WANTED: Tojek##51089 |goto 39.12,79.86
step
talk Hanzabu##127004
turnin We'll Meet Again##47250 |goto 39.52,43.83
step
talk Bloodseeker Jo'chunga##127128
Tell him _"Kejabu sent me."_
Find Bloodseeker Jo'chunga |q 48699/1 |goto 32.37,46.17
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Sneaking into Zalamar##48699 |goto 33.35,45.74
accept Isolating Zalamar##48801 |goto 33.35,45.74
accept How to Be a Blood Troll##48890 |goto 33.35,45.74
stickystart "Test_Unproven_Drudges"
step
talk Wardrummer Sheej##129380
|tip At the top of the tower.
Tell him _"Da camp be needin' more stone. Go an' recover only da purest of rocks within Nazmir. Sixty of dem."_
Remove Wardrummer Sheej |q 48801/2 |goto 35.30,46.80
step
talk Wardrummer Gix##129381
|tip At the top of the tower.
Tell him _"We be needin' fifty pristine crocolisk hides. Go an' retrieve dem, and don' be comin' back 'til you have dem all."_
Remove Wardrummer Gix |q 48801/3 |goto 31.16,49.75
step
label "Test_Unproven_Drudges"
clicknpc Unproven Drudge##126933+
|tip They look like blood trolls that are tied up to poles around this area.
Test #5# Unproven Drudge |q 48890/1 |goto 31.59,45.66
step
talk Wardrummer Saljo##127999
|tip At the top of the tower.
Tell him _"Da camp be needin' more wood. Go an' retrieve thirty pieces of only da most pristine lumber!"_
Remove Wardrummer Saljo |q 48801/1 |goto 31.49,43.26
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Isolating Zalamar##48801 |goto 33.35,45.74
turnin How to Be a Blood Troll##48890 |goto 33.35,45.74
step
Watch the dialogue
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
accept Poisoning the Brood##49078 |goto 33.35,45.74
accept Mark of the Bat##48800 |goto 33.35,45.74
stickystart "Poison_Tamed_Warspawns"
step
accept Zalamar Slaughter##49406 |goto 32.94,46.56
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Disrupt_Zalamar"
step
kill Blood Witch Yialu##126891
|tip Inside the building.
collect Yialu's Talisman##153671 |q 48800/1 |goto 33.65,49.33
step
kill Blood Priestess Zu'Anji##126890
|tip Inside the building.
collect Zu'Anji's Talisman##153674 |q 48800/3 |goto 32.68,49.51
step
kill Blood Witch Vashera##126888
|tip Inside the building.
collect Vashera's Talisman##153672 |q 48800/2 |goto 30.70,45.28
step
label "Poison_Tamed_Warspawns"
use the Poisoned Mojo Flask##153012
|tip Use it on Tamed Warspawns around this area.
|tip They look like large bats hanging upside down from poles and buildings around this area.
Poison #5# Tamed Warspawns |q 49078/1 |goto 31.02,48.14
step
label "Disrupt_Zalamar"
Kill enemies around this area
click Blood Troll Cage+
|tip They look like brown wood and bone cages on the ground around this area.
click Mojo Brewing Cauldron+
|tip They look like large stone bowls filled with blood on the ground around this area.
Disrupt Zalamar |q 49406/1 |goto 31.02,48.14
|only if havequest(49406) or completedq(49406)
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Poisoning the Brood##49078 |goto 33.35,45.74
turnin Mark of the Bat##48800 |goto 33.35,45.74
step
Watch the dialogue
talk Jo'chunga##129378
|tip Inside the building.
accept Hir'eek, the Bat Loa##49079 |goto 33.35,45.74
step
Reach the Blood Ritual Pool |goto 32.18,46.31 < 5 |c |q 49079
step
_Next to you:_
talk Jo'chunga##129378
Tell him _"Jo'chunga, I'm ready. Let's enact our plan to stop Hir'eek."_
Watch the dialogue
Speak with Jo'chunga Within the Blood Ritual Pool |q 49079/1 |goto 32.18,46.31
step
Watch the dialogue
Weaken Hir'eek |q 49079/2 |goto 31.99,46.30
|tip Use the ability on your action bar.
|tip Use it repeatedly.
step
Watch the dialogue
Fall into Hir'eek's Lair |goto 31.41,46.97 < 3 |c |q 49079
step
Watch the dialogue
talk Jo'chunga##128276
|tip Inside the cave.
turnin Hir'eek, the Bat Loa##49079 |goto 31.23,46.80
accept To Kill a Loa##49081 |goto 31.23,46.80
step
kill Hir'eek##128074 |q 49081/1 |goto 29.14,46.57
|tip Inside the cave.
step
talk Jo'chunga##128276
|tip Inside the cave.
turnin To Kill a Loa##49081 |goto 31.25,46.81
accept Upward and Onward##49082 |goto 31.25,46.81
step
clicknpc Hir'eek Spawnling##128291
|tip Inside the cave.
Secure a Flight Out of Hir'eek's Lair |q 49082/1 |goto 31.26,46.72
step
Reach the Outskirts of Zalamar |goto 36.11,47.65 < 7 |c |q 49082
step
talk Witch Doctor Kejabu##122795
Tell him _"Jo'chunga is alive, the loa Hir'eek though..."_
Inform Witch Doctor Kejabu |q 49082/2 |goto 39.63,43.86
step
talk Witch Doctor Kejabu##122795
turnin Upward and Onward##49082 |goto 39.63,43.86
accept Hunting Zardrax##49314 |goto 39.63,43.86
step
talk Princess Talanji##127961
accept Catching Up##49185 |goto 39.39,44.00
step
talk Princess Talanji##127961
Choose _(Tell Talanji about getting Bwonsamdi's aid and killing Hir'eek.)_
Tell Talanji About Bwonsamdi and Hir'eek |q 49185/1 |goto 39.40,44.00
step
talk Princess Talanji##127961
turnin Catching Up##49185 |goto 39.39,44.00
step
talk Lashk##127960
accept Torga, the Turtle Loa##49064 |goto 39.45,44.02
step
talk Shadow Hunter Da'jul##127215
turnin Hunting Zardrax##49314 |goto 31.05,52.08
step
talk Zardrax the Empowerer##127216
accept Offer of Power##48854 |goto 30.97,52.18
step
talk Zardrax the Empowerer##127216
Tell him _"Alright, lich, tell me your offer."_
Listen to Zardrax |q 48854/1 |goto 30.97,52.18
step
clicknpc Shadow Hunter Da'jul##127215
Break Free of Zardrax's Control |q 48854/2 |goto 30.97,52.17
step
talk Shadow Hunter Da'jul##127215
turnin Offer of Power##48854 |goto 31.05,52.08
accept Projection Destruction##48823 |goto 31.05,52.08
step
talk Kal'dran##127212
accept Power Denied##48825 |goto 30.92,52.03
step
accept Stopping Zardrax##48852 |goto 30.91,52.03
|tip You will automatically accept this quest.
|only if level < 120
step
talk Shadow Hunter Da'jul##127215
Tell him _"I'm ready to receive your fire mojo to destroy the burial mounds."_
Watch the dialogue
Gain the Fire Mojo |q 48823/1 |goto 31.05,52.08
stickystart "Weaken_Zardraxs_Followers"
step
use Da'jul's Fire Mojo##152727
Destroy the Skeletal Mound |q 48823/2 |goto 30.81,54.76 |count 1
step
use Da'jul's Fire Mojo##152727
Destroy the Skeletal Mound |q 48823/2 |goto 31.95,55.11 |count 2
step
use Da'jul's Fire Mojo##152727
Destroy the Skeletal Mound |q 48823/2 |goto 32.80,56.49 |count 3
step
kill Hexxer Nana'kwug##127225
collect Blood Fetish##153482 |q 48825/1 |goto 33.07,58.81
step
label "Weaken_Zardraxs_Followers"
Kill enemies around this area
|tip Not all enemies will count for this quest goal.
clicknpc Empowered Totem##127246+
|tip They look like wooden totems with red eyes and tongue on the ground around this area.
Weaken Zardrax's Followers |q 48852/1 |goto 31.66,55.34
|only if havequest(48852) or completedq(48852)
step
talk Shadow Hunter Da'jul##127215
turnin Projection Destruction##48823 |goto 31.05,52.08
turnin Power Denied##48825 |goto 31.05,52.08
accept Humbling the Terrors##48855 |goto Nazmir/0 31.05,52.08
accept Conduit Interruption##48856 |goto 31.05,52.08
step
talk Kal'dran##127212
accept All Hope is Lost##48857 |goto 30.91,52.04
step
talk Kal'dran##127212
Tell him _"Calm down, Kal'dran. We can still defeat Zardrax."_
Calm Down Kal'dran |q 48857/1 |goto 30.91,52.03
stickystart "Kill_Reconstructed_Terrors"
stickystart "Kill_Zardrax_Conduits"
step
Enter the cave |goto 29.36,57.00 < 5 |walk
kill Empowered Kal'dran##127394 |q 48857/2 |goto 29.09,56.74
|tip Inside the cave.
step
label "Kill_Reconstructed_Terrors"
use the Modified Blood Fetish##153483
|tip Use it on Reconstructed Terrors around this area.
|tip They will become easy to kill.
kill 3 Reconstructed Terror##127253 |q 48855/1 |goto 30.86,60.32
step
label "Kill_Zardrax_Conduits"
kill 8 Zardrax Conduit##127255 |q 48856/1 |goto 30.21,58.37
step
talk Shadow Hunter Da'jul##127215
turnin Humbling the Terrors##48855 |goto 30.96,52.12
turnin Conduit Interruption##48856 |goto 30.96,52.12
turnin All Hope is Lost##48857 |goto 30.96,52.12
accept Payback's a Lich##48869 |goto 30.96,52.12
step
Follow the path up |goto 30.89,56.16 < 15 |only if walking
kill Zardrax the Empowerer##127298 |q 48869/1 |goto 31.58,57.87
|tip Kill the enemies around him when he casts a bubble around himself.
step
talk Shadow Hunter Da'jul##127215
turnin Payback's a Lich##48869 |goto 30.96,52.12
step
clicknpc Imperial Guard##135784
accept An Unfortunate Event##50933 |goto 29.21,52.06
step
talk Zaluto##130930
turnin An Unfortunate Event##50933 |goto 24.13,53.20
accept On The Run##49777 |goto 24.13,53.20
step
talk Jin'Tiki##131231
accept Won't Leaf Him to Die##49774 |goto 24.11,53.14
accept No Problem Tar Can't Solve##49776 |goto 24.11,53.14
stickystart "Collect_Sticky_Tar"
stickystart "Collect_Sweetleaves"
step
talk Mojoba##131132
Tell him _"I know who you are, Mojoba. Proceed to Vol'dun and live out your exile in peace."_
Watch the dialogue
kill Mojoba##131132
Exile Mojoba |q 49777/2 |goto 23.59,47.68
step
clicknpc Teshyambi##131129
Choose _(Leave)_
Exile Teshyambi |q 49777/3 |goto 21.32,50.40
step
talk Razjuto##131135
Tell him _"I'm sorry, but you've been exiled to Vol'dun for your crimes."_
Exile Razjuto |q 49777/1 |goto 21.56,55.03
step
label "Collect_Sticky_Tar"
kill Tar Ooze##130720+
collect 6 Sticky Tar##155913 |q 49776/1 |goto 22.39,54.72
step
label "Collect_Sweetleaves"
click Sweetleaf Bush##279293+
|tip They look like green bushes on the ground around this area.
collect 8 Sweetleaf##155912 |q 49774/1 |goto 22.39,54.72
step
talk Jin'Tiki##131231
turnin Won't Leaf Him to Die##49774 |goto 24.11,53.15
turnin No Problem Tar Can't Solve##49776 |goto 24.11,53.15
step
talk Zaluto##130930
turnin On The Run##49777 |goto 24.13,53.20
step
talk Jin'Tiki##131231
accept Don't Go into the Light##49778 |goto 24.11,53.15
step
talk Zaluto##130930
Tell him _"Hold still, Zaluto. We are going to cure your infection."_
Watch the dialogue
Cure Zaluto |q 49778/1 |goto 24.13,53.20
step
talk Jin'Tiki##131231
turnin Don't Go into the Light##49778 |goto 24.11,53.14
accept Recovering Ancient Fire##49780 |goto 24.11,53.14
step
talk Zaluto##130930
accept Bad To The Bone##49779 |goto 24.13,53.20
stickystart "Kill_Bone_Raptors"
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 25.54,51.54 |count 1
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 24.70,50.18 |count 2
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 26.08,47.71 |count 3
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 24.81,45.15 |count 4
step
label "Kill_Bone_Raptors"
kill 10 Bone Raptor##130735 |q 49779/1 |goto 24.27,47.72
step
talk Jin'Tiki##131231
turnin Recovering Ancient Fire##49780 |goto 24.11,53.14
step
talk Zaluto##130930
turnin Bad To The Bone##49779 |goto 24.13,53.21
accept Catch Me if You Can##49781 |goto 24.13,53.21
step
clicknpc Riding Raptor##134395
Ride the Riding Raptor |invehicle |goto 24.17,53.37 |q 49781
step
Find Zulajin |goto 23.85,52.47 < 7 |c |q 49781
step
Get Zulajin's Attention |goto 23.85,52.47 > 10 |c |q 49781
|tip Use the ability on your action bar.
step
Watch the dialogue
kill Zulajin##134436
|tip Use the ability on your action bar on him.
|tip Spam it.
Ride Zaluto's Raptor to Defeat Zulajin |q 49781/1 |goto 28.24,52.06
step
Escape to Safety |goto 28.24,52.06 < 7 |c |q 49781
step
talk Jin'Tiki##130928
turnin Catch Me if You Can##49781 |goto 28.36,52.03
step
talk Chadwick Paxton##126289
accept Getting a Leg Up##48492 |goto 28.62,43.74
step
click Paxton's Legs
Recover Chadwick Paxton's Legs |q 48492/1 |goto 28.64,43.73
step
talk Chadwick Paxton##126289
Ask him _"Alright, I've got your... legs. What next?"_
Watch the dialogue
Fix Chadwick Paxton |q 48492/2 |goto 28.61,43.76
step
talk Chadwick Paxton##126346
turnin Getting a Leg Up##48492 |goto 28.62,43.78
accept Reuniting the Company##48496 |goto 28.62,43.78
accept Show of Force##48497 |goto 28.62,43.78
stickystart "Slay_Sethrak_Forces"
step
click Sethrak Cage
Rescue Clayton Backston |q 48496/3 |goto 27.40,41.22
step
click Sethrak Cage
Rescue Anna Bizrim |q 48496/1 |goto 26.16,40.46
step
click Sethrak Cage
Rescue Timothy Zartlin |q 48496/2 |goto 27.44,38.56
step
click Sethrak Cage
Rescue Ingrid Bellix |q 48496/4 |goto 26.60,37.92
step
talk Ingrid Bellix##126377
accept No Mercy for Sithis##48498 |goto 26.60,37.92
step
Enter the cave |goto 25.92,38.17 < 5 |walk
kill Fangcaller Sithis##126316
|tip Inside the cave.
collect Skycaller Gem##154892 |q 48498/1 |goto 25.40,37.65
step
Leave the cave |goto 25.98,38.16 < 5 |c |q 48497
step
label "Slay_Sethrak_Forces"
Kill Sethrak enemies around this area
Slay #10# Sethrak Forces |q 48497/1 |goto 26.52,38.69
step
talk Chadwick Paxton##126346
turnin Reuniting the Company##48496 |goto 25.82,36.02
turnin Show of Force##48497 |goto 25.82,36.02
turnin No Mercy for Sithis##48498 |goto 25.82,36.02
accept Didn't Stop to Think if They Should##49479 |goto 25.82,36.02
step
talk Ingrid Bellix##126376
Tell her _"I need you to empower the Skycaller Gem."_
Watch the dialogue
Empower the Skycaller Gem |q 49479/1 |goto 25.80,35.91
step
talk Chadwick Paxton##126346
turnin Didn't Stop to Think if They Should##49479 |goto 25.83,36.02
step
Watch the dialogue
talk Chadwick Paxton##126346
accept Return to Dust##48499 |goto 25.83,36.02
step
Kill Enraged Sethrak enemies around this area
|tip Use the "Skycaller Gem" ability.
|tip It appears as a button on the screen.
Slay #20# Enraged Sethraks |q 48499/1 |goto 26.66,38.88
step
Overload the Skycaller Gem |q 48499/2 |goto 26.66,38.88
|tip Use the "Overloaded Skycaller Gem" ability.
|tip It appears as a button on the screen.
step
talk Chadwick Paxton##126346
turnin Return to Dust##48499 |goto 25.82,36.02
step
Follow the path |goto 40.15,45.72 < 30 |only if walking
talk Kisha##127958
Tell her _"Lashk said you could tell me where I can find Torga."_
Meet Kisha |q 49064/1 |goto 55.65,39.40
step
talk Kajosh##124666
accept Profanity Filter##47924 |goto 55.15,36.71
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto 54.18,36.02 |count 1
step
accept Mawfiend Extermination##47996 |goto 54.19,35.31
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Eliminate_the_Mawfiend_Threat"
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto 54.32,33.42 |count 2
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto 54.16,32.34 |count 3
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto 53.23,31.70 |count 4
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto 52.68,33.61 |count 5
step
label "Eliminate_the_Mawfiend_Threat"
Kill Mawfiend enemies around this area
clicknpc Mawfiend Food##126017+
|tip They look like dead crocodiles on the ground around this area.
Eliminate the Mawfiend Threat |q 47996/1 |goto 52.95,32.69
|only if havequest(47996) or completedq(47996)
step
talk Kajosh##124933
Ask him _"Some of the totems are destroyed, will your spell work now?"_
Watch the dialogue
Complete Kajosh's Spell |q 47924/2 |goto 51.76,33.25
step
talk Kajosh##124933
turnin Profanity Filter##47924 |goto 51.76,33.24
accept Killing Cannibals##47998 |goto 51.76,33.24
accept Just Say No to Cannibalism##47919 |goto 51.76,33.24
accept Shoak's on the Menu##47925 |goto 51.76,33.24
stickystart "Kill_Nathavor_Cannibals"
step
kill Corpse Monger Nog'shra##124978 |q 47919/1 |goto 49.21,33.08
|tip Inside the building.
step
kill Corpse Monger Yon'gi##124977 |q 47919/2 |goto 50.70,35.67
|tip Inside the building.
step
kill Corpse Monger Jal'aka##124976 |q 47919/3 |goto 49.49,38.39
|tip Inside the building.
step
talk Shoak##124774
Tell him _"Kajosh sent me. I'll handle the mawfiends."_
Watch the dialogue
Kill the enemies that attack in waves
kill Poz'ga the Butcher Queen##124801
Rescue Shoak |q 47925/1 |goto 49.43,39.23
step
label "Kill_Nathavor_Cannibals"
kill 10 Natha'vor Cannibal##124688 |q 47998/1 |goto 50.15,39.04
step
Follow the path |goto 51.31,41.76 < 30 |only if walking
Follow the path |goto 55.44,37.82 < 30 |only if walking
talk Kajosh##125024
turnin Killing Cannibals##47998 |goto 55.84,32.35
turnin Just Say No to Cannibalism##47919 |goto 55.84,32.35
step
talk Shoak##124737
turnin Shoak's on the Menu##47925 |goto 55.81,32.24
step
Locate Torga |q 49064/2 |goto 55.59,28.59
step
Watch the dialogue
talk Princess Talanji##127961
turnin Torga, the Turtle Loa##49064 |goto 56.57,26.67
accept Beseeching Bwonsamdi##49067 |goto 56.57,26.67
step
talk Princess Talanji##127961
Tell her _"I'm ready to try and summon Bwonsamdi."_
Beseech Bwonsamdi for Aid |q 49067/1 |goto 56.57,26.67
step
talk Princess Talanji##127961
turnin Beseeching Bwonsamdi##49067 |goto 56.57,26.67
accept Cease all Summoning##49080 |goto 56.57,26.67
step
talk Lashk##127960
accept Dreadtick Combustion##49071 |goto 56.51,26.65
step
talk Bwonsamdi##128096
accept Souls for the Death Loa##49070 |goto 56.66,26.52
stickystart "Blow_Up_Dreadtick_Leechers"
stickystart "Claim_Blood_Troll_Souls"
step
Enter the cave |goto 58.71,24.64 < 15 |walk
kill Summoner Yarz##127935 |q 49080/1 |goto 61.05,18.08
|tip Inside the cave.
step
label "Blow_Up_Dreadtick_Leechers"
use the Scroll of Combustion##153024
|tip Use it on Dreadtick Leecher around this area inside the cave.
Blow Up #5# Dreadtick Leechers |q 49071/1 |goto 60.15,21.06
step
label "Claim_Blood_Troll_Souls"
Kill Loa-Gutter enemies around this area
|tip Inside the cave.
Claim #10# Blood Troll Souls |q 49070/1 |goto 60.15,21.06
step
Leave the cave |goto 58.70,24.87 < 15 |walk
talk Bwonsamdi##128096
turnin Souls for the Death Loa##49070 |goto 56.66,26.53
step
talk Princess Talanji##127961
turnin Cease all Summoning##49080 |goto 56.57,26.67
step
talk Lashk##127960
turnin Dreadtick Combustion##49071 |goto 56.52,26.65
step
talk Bwonsamdi##128096
accept Speaking with the Dead##49120 |goto 56.66,26.52
step
talk Bwonsamdi##128096
Tell him _"Bwonsamdi, we're ready for you to summon Torga's spirit."_
Watch the dialogue
Hear Torga's Wisdom |q 49120/1 |goto 56.66,26.52
step
talk Princess Talanji##127961
turnin Speaking with the Dead##49120 |goto 56.57,26.67
step
talk Kisha##127958
accept Negative Blood##49125 |goto 56.59,26.75
step
Watch the dialogue
accept Tortollan Rescue##51689 |goto 56.59,26.75
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Destroy_Corrupted_Loa_Blood"
stickystart "Thwart_The_Blood_Troll_Plans"
step
click Scroll of Fate's Hand##280347
collect Damaged Scroll of Fate's Hand##156568 |q 49125/2 |goto 62.28,24.58
step
label "Destroy_Corrupted_Loa_Blood"
use the Scroll of Purification##160559
|tip Use it on Corrupted Loa Blood around this area.
|tip They look like large red balls floating above the ground around this area.
Destroy #8# Corrupted Loa Blood |q 49125/1 |goto 62.23,24.06
step
label "Thwart_The_Blood_Troll_Plans"
Kill enemies around this area
clicknpc Tortollan Captive##128001+
|tip They look like friendly stunned turtle NPCs around this area.
Thwart the Blood Troll Plans |q 51689/1 |goto 62.23,24.06
|only if havequest(51689) or completedq(51689)
step
Enter the cave |goto 65.45,17.92 < 10 |walk
talk Kisha##127958
|tip Inside the cave.
turnin Negative Blood##49125 |goto 65.72,17.96
accept Forcing Fate's Hand##49126 |goto 65.72,17.96
step
Summon the Hand of Fate |q 49126/1 |goto 65.72,17.96
|tip Use the "Scroll of Fate's Hand" ability.
|tip It appears as a button on the screen.
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy #50# Undead |q 49126/2 |goto 63.16,15.57
step
Return to Kisha |goto 59.07,13.69 < 15 |c |q 49126
step
talk Kisha##127958
turnin Forcing Fate's Hand##49126 |goto 58.48,13.78
accept Loa-Free Diet##49130 |goto 58.48,13.78
step
talk Princess Talanji##127961
accept Sanctifying Ground##49131 |goto 58.47,13.85
step
talk Lashk##127960
accept Crushing the Skullcrushers##49132 |goto 58.52,13.88
stickystart "Collect_Parts_Of_Torga"
stickystart "Kill_Loa_Gutter_Skullcrushers"
step
clicknpc Sanctifying Totem##128179+
|tip They look like small wooden totems with red fire swirling around them on the ground around this area.
Place #4# Sanctifying Totem |q 49131/1 |goto 56.59,20.22
step
label "Collect_Parts_Of_Torga"
Kill Loa-Gutter enemies around this area
|tip Loa-Gutter Skullcrushers will not drop the quest item.
collect 6 Parts of Torga##153070 |q 49130/1 |goto 56.59,20.22
step
label "Kill_Loa_Gutter_Skullcrushers"
kill 4 Loa-Gutter Skullcrusher##127919 |q 49132/1 |goto 56.59,20.22
step
Follow the path |goto 55.31,23.72 < 20 |only if walking
talk Lashk##127960
turnin Crushing the Skullcrushers##49132 |goto 56.51,26.65
step
talk Princess Talanji##127961
turnin Sanctifying Ground##49131 |goto 56.57,26.67
step
talk Kisha##127958
turnin Loa-Free Diet##49130 |goto 56.59,26.76
step
talk Princess Talanji##127961
accept Jungo, Herald of G'huun##49136 |goto 56.57,26.67
step
Enter the cave |goto 58.72,24.55 < 15 |walk
Watch the dialogue
kill Jungo, Herald of the Blood God##128184 |q 49136/1 |goto 61.13,17.68
|tip Inside the cave.
step
Leave the cave |goto 58.70,24.87 < 15 |walk
talk Princess Talanji##127961
turnin Jungo, Herald of G'huun##49136 |goto 56.57,26.67
step
talk Lashk##127960
accept Torga's Eternal Return##49160 |goto 56.51,26.65
step
use the Scroll of Eternal Return##153131
Watch the dialogue
Put Torga's Spirit to Rest |q 49160/1 |goto 56.51,26.65
step
talk Kisha##127958
turnin Torga's Eternal Return##49160 |goto 56.59,26.75
accept To Gloom Hollow##49902 |goto 56.59,26.75
step
Follow the path |goto 55.59,28.61 < 30 |only if walking
talk Crez##131208
Choose _(Tell Crez about what happened to Torga, and the chance for new stories to be told if he goes to Gloom Hollow.)_
Recruit the Tortollan |q 49902/1 |goto 55.74,39.72 |count 1
step
talk Korkush##131209
Choose _(Tell Korkush there's a great story to be had if he helps the Horde fight the blood trolls and save the Zandalari.)_
Recruit the Tortollan |q 49902/1 |goto 60.23,46.18 |count 2
step
talk Yash##131210
Choose _(Tell Yash if he wants to live a crazy story that he should go to Gloom Hollow to help stop the blood trolls and their god.)_
Recruit the Tortollan |q 49902/1 |goto 63.87,47.74 |count 3
step
talk Rokhan##131213
turnin To Gloom Hollow##49902 |goto 67.43,42.31
accept Getting the Message##47245 |goto 67.43,42.31
step
talk Shadow Hunter Mutumba##122991
accept Staying Hidden##47525 |goto 67.41,42.06
step
talk Korkush##131988
|tip He walks around this area.
home Gloom Hollow |goto 67.76,41.85 |q 49382 |future
step
click Wanted Poster##282448
accept WANTED: Ayame##52477 |goto 67.23,40.82
step
clicknpc Cuja##121207
fpath Gloom Hollow |goto 66.98,43.78
step
click Message Rocket##272409
Investigate the Disturbance |q 47245/1 |goto 68.52,43.82
step
talk Rokhan##131213
turnin Getting the Message##47245 |goto 67.43,42.31
accept Rendezvous with the Libation##47631 |goto 67.43,42.31
step
Investigate The Frogmarsh |q 47525/1 |goto 68.58,46.51
step
talk Witch Doctor Zentimo##124376
turnin Staying Hidden##47525 |goto 68.59,46.74
accept Hunt the Hunter##47659 |goto 68.59,46.74
accept Fallen Idols##47660 |goto 68.59,46.74
stickystart "Collect_Stolen_Idols_of_Krag'wa"
step
clicknpc Mag'ash the Poisonous##126039
accept A Poisonous Touch##48402 |goto 69.16,50.46
stickystart "Poison_Bloodhunter_Trolls"
step
kill Warmother Boatema##123328 |q 47659/1 |goto 68.24,51.58
step
label "Collect_Stolen_Idols_of_Krag'wa"
click Stolen Idol of Krag'wa##271648+
|tip They look like stone statues on the ground around this area.
collect 8 Stolen Idol of Krag'wa##151113 |q 47660/1 |goto 68.45,50.66
step
label "Poison_Bloodhunter_Trolls"
Kill Bloodhunter enemies around this area
|tip Use the "Poison Tipped Dart" ability.
|tip It appears as a button on the screen.
Poison #6# Bloodhunter Trolls |q 48402/1 |goto 68.45,50.66
step
Enter the cave |goto 73.40,53.77 < 15 |walk
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Hunt the Hunter##47659 |goto 75.42,56.61
turnin Fallen Idols##47660 |goto 75.42,56.61
turnin A Poisonous Touch##48402 |goto 75.42,56.61
accept The Last Witch Doctor of Krag'wa##47623 |goto 75.42,56.61
step
clicknpc Scepter of Rebirth##133900
Retrieve the Scepter of Rebirth |q 47623/1 |goto 75.13,56.69
step
clicknpc Witch Doctor Zentimo##124559
Perform the Ritual |q 47623/2 |goto 75.13,56.70
step
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin The Last Witch Doctor of Krag'wa##47623 |goto 75.42,56.61
accept A True Loa Feast##47621 |goto 75.42,56.61
accept A Magical Glow##47622 |goto 75.42,56.61
stickystart "Collect_Chunky_Meat"
step
Leave the cave |goto 73.40,53.77 < 15 |walk
Follow the path up |goto 73.75,49.87 < 20 |only if walking
use the Glowfly Bottle##151237
|tip Use it next to Glowflies around this area.
|tip They look like small yellow and blue insects flying above the ground around this area.
Collect #25# Beautiful Glowflies |q 47622/1 |goto 75.89,45.98
step
label "Collect_Chunky_Meat"
Kill enemies around this area
collect 35 Chunky Meat##151040 |q 47621/1 |goto 75.77,45.37
step
Follow the path down |goto 73.71,48.66 < 20 |only if walking
Enter the cave |goto 73.40,53.77 < 15 |walk
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin A True Loa Feast##47621 |goto 75.43,56.62
turnin A Magical Glow##47622 |goto 75.43,56.62
accept Totemic Restoration##47540 |goto 75.43,56.62
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.21,56.69 |count 1
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.33,56.38 |count 2
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.65,56.35 |count 3
step
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Totemic Restoration##47540 |goto 75.42,56.62
accept Krag'wa the Terrible##47696 |goto 75.43,56.62
step
Leave the cave |goto 73.40,53.77 < 15 |walk
Meet Krag'wa at Razorjaw River |q 47696/1 |goto 67.14,56.16
step
talk Krag'wa the Huge##124637
Tell him _"I am ready to fight the blood trolls."_
Speak with Krag'wa the Huge |invehicle |goto 67.14,56.16 |q 47696
stickystart "Slay_Blood_Troll_Forces"
step
kill Ren'Zuli##124628 |q 47696/3 |goto 60.05,53.30
|tip He's mounted on a tyrannosaurus rex.
|tip Use the abilities on your action bar.
step
label "Slay_Blood_Troll_Forces"
Kill Bloodhunter enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Blood Troll Forces |q 47696/2 |goto 62.13,56.73
step
Watch the dialogue
Return to The Frogmarsh |goto 72.98,52.55 < 7 |c |q 47696
step
Enter the cave |goto 73.40,53.77 < 15 |walk
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Krag'wa the Terrible##47696 |goto 75.43,56.63
accept To Serve Krag'wa##47918 |goto 75.43,56.63
step
talk Shadow Hunter Mutumba##124641
|tip Inside the cave.
accept Krag'wa's Aid##47697 |goto 75.17,56.67
step
Leave the cave |goto 73.40,53.77 < 15 |walk
Follow the path up |goto 74.76,51.81 < 30 |only if walking
talk Shadow Hunter Narez##125317
turnin To Serve Krag'wa##47918 |goto 77.74,53.17
accept Krag'wa's Chosen##48090 |goto 77.74,53.17
accept Vengeance of the Frogs##48092 |goto 77.74,53.17
step
Watch the dialogue
accept Nagating the Threat##48093 |goto 77.74,53.17
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Disrupt_the_Naga_Encampment"
step
use the Empowerment Potion##158071
|tip Use it on Wok'grug the Clever.
Rescue Wok'grug the Clever |q 48090/3 |goto 79.37,53.85
step
use the Empowerment Potion##158071
|tip Use it on Krol'dra the Wise.
Rescue Krol'dra the Wise |q 48090/2 |goto 80.35,50.31
step
use the Empowerment Potion##158071
|tip Use it on Wag'shash the Bold.
Rescue Wag'shash the Bold |q 48090/1 |goto 82.36,55.79
step
kill Priestess Zaldraxia##125328 |q 48092/1 |goto 85.33,54.90
step
label "Disrupt_the_Naga_Encampment"
Kill enemies around this area
click Frog Container##272754+
|tip They look like glass tanks of water in golden stands on the ground around this area.
Disrupt the Naga Encampment |q 48093/1 |goto 81.77,53.28
|only if havequest(48093) or completedq(48093)
step
talk Shadow Hunter Narez##125317
turnin Krag'wa's Chosen##48090 |goto 77.74,53.17
turnin Vengeance of the Frogs##48092 |goto 77.74,53.17
step
Return to Gloom Hollow |q 47697/1 |goto 67.42,42.24
step
talk Princess Talanji##126213
turnin Krag'wa's Aid##47697 |goto 67.42,42.24
step
talk Yash##131993
accept A Chance Sighting##50934 |goto 66.84,41.94
step
Locate Patch |q 47631/1 |goto 74.59,38.86
step
talk Patch##123178
turnin Rendezvous with the Libation##47631 |goto 74.59,38.86
accept No Goblin Left Behind##47597 |goto 74.59,38.86
step
talk Ticker##123436
accept Revenge: Served Hot##47599 |goto 74.76,39.01
step
accept The Libation's Liberation##47756 |goto 76.02,36.85
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Kill_Vilescale_Behemoths"
stickystart "Defeat_the_Vilescale_Naga"
step
click Airtight Escape Pod##271664
Rescue Newt |q 47597/2 |goto 79.30,36.73
step
clicknpc Grit##123233
Rescue Grit |q 47597/1 |goto 76.99,32.65
step
click Naga Cage##279661
Rescue Volt |q 47597/3 |goto 79.97,32.39
step
label "Kill_Vilescale_Behemoths"
use Ticker's Rocket Launcher##151363
|tip Use it on Vilescale Behemoths around this area.
kill 4 Vilescale Behemoth##123461 |q 47599/1 |goto 79.96,33.05
step
label "Defeat_the_Vilescale_Naga"
Kill enemies around this area
clicknpc Injured Sailor##123539+
|tip They look like friendly Horde NPC's kneeling on the ground around this area.
Defeat the Vilescale Naga |q 47756/1 |goto 79.96,33.05
|only if havequest(47756) or completedq(47756)
step
talk Zibir the Wingmaster##122198
fpath Forlorn Ruins |goto 82.15,26.69
step
talk Patch##123544
|tip Inside the building.
turnin No Goblin Left Behind##47597 |goto 82.37,27.29
step
talk Ticker##123548
|tip Inside the building.
turnin Revenge: Served Hot##47599 |goto 82.39,27.20
accept There Is No Plan "B"##47596 |goto 82.39,27.20
step
talk Patch##123544
|tip Inside the building.
accept Head of the Viper##47711 |goto 82.37,27.30
step
talk Newt##123545
|tip Inside the building.
accept Pilfering and Fencing##47598 |goto 82.28,27.41
stickystart "Collect_Ancient_Titan_Relics"
step
click Broken Elevating Gear##271747
collect Broken Elevating Gears##151209 |q 47596/2 |goto 79.15,27.43
step
kill Lord Slithin##123550 |q 47711/1 |goto 78.64,25.15
step
click Damaged Artillery Barrel##271746
collect Damaged A.M.O.D. Barrel##151208 |q 47596/1 |goto 77.67,25.28
step
click Shattered Firing Mechanism##271748
collect Shattered Firing Mechanism##151210 |q 47596/3 |goto 79.57,22.25
step
label "Collect_Ancient_Titan_Relics"
Kill Vilescale enemies around this area
collect 20 Ancient Titan Relics##151202 |q 47598/1 |goto 79.14,22.83
step
talk Ticker##123548
|tip Inside the building.
turnin There Is No Plan "B"##47596 |goto 82.39,27.20
step
talk Patch##123544
|tip Inside the building.
turnin Head of the Viper##47711 |goto 82.37,27.29
step
talk Newt##123545
|tip Inside the building.
turnin Pilfering and Fencing##47598 |goto 82.28,27.41
step
talk Patch##123544
|tip Inside the building.
accept Field Evaluation##47601 |goto 82.37,27.30
step
clicknpc A.M.O.D.##123637
Mount the A.M.O.D. |q 47601/1 |goto 81.45,26.02
step
Watch the dialogue
Kill Vilescale enemies around this area
|tip Use the abilities on your action bar.
Slay #40# Naga Forces |q 47601/2
step
kill Grobathan##123486
|tip Use the abilities on your action bar.
Slay Grobathan |q 47601/3
step
talk Patch##123878
turnin Field Evaluation##47601 |goto 81.34,26.09
accept Ready For Action##47602 |goto 81.34,26.09
step
Watch the dialogue
clicknpc Newt's Emergency Rocket##125244
Choose _Let's ride out of here._
Obtain a Ride From Newt's Emergency Rocket |q 47602/1 |goto 81.31,26.22
step
Travel to Gloom Hollow |goto 67.16,43.42 < 7 |c |q 47602 |notravel
step
Return to Talanji |q 47602/2 |goto 67.42,42.24
step
talk Princess Talanji##126213
turnin Ready For Action##47602 |goto 67.42,42.24
step
talk Lashk##131978
accept Slumber No More##49932 |goto 67.49,41.96
step
clicknpc Deactivated Titan Keeper##131299
Awaken the Deactivated Titan Keeper |q 49932/1 |goto 66.91,38.87
step
click Titan Keeper Data Core##280480
collect Damaged Core##156593 |q 49932/2 |goto 66.95,38.79
step
clicknpc Deactivated Titan Keeper##131299
Install the Core |q 49932/3 |goto 66.92,38.86
step
Watch the dialogue
talk Titan Keeper Hezrel##131253
turnin Slumber No More##49932 |goto 66.90,38.91
accept Recovering Remnants##49937 |goto 66.90,38.91
accept Corrupted Earth##49938 |goto 66.90,38.91
accept How to Repair a Titan Keeper##49935 |goto 66.90,38.91
stickystart "Kill_Blood_Infused_Lashers"
stickystart "Collect_Titan_Plating"
step
click Keeper Shavras's Core##281417
collect Keeper Shavras's Core##156521 |q 49935/1 |goto 69.25,39.77
step
clicknpc Titan Keeper Bolcan##131256
Watch the dialogue
kill Titan Keeper Bolcan##131256
collect Keeper Bolcan's Core##156522 |q 49935/2 |goto 66.19,33.65
step
label "Kill_Blood_Infused_Lashers"
kill 25 Blood-Infused Lasher##131168 |q 49938/1 |goto 66.72,34.96
step
label "Collect_Titan_Plating"
kill Naz'wathan Spectre##131169+
collect 25 Titan Plating##156524 |q 49937/1 |goto 66.72,34.96
step
talk Titan Keeper Hezrel##131253
turnin Recovering Remnants##49937 |goto 68.68,35.11
turnin Corrupted Earth##49938 |goto 68.68,35.11
turnin How to Repair a Titan Keeper##49935 |goto 68.68,35.11
accept Bone Procession##49941 |goto 68.68,35.11
accept Unwelcome Undead##49949 |goto 68.68,35.11
stickystart "Slay_Naz'wathan_Undead"
step
clicknpc Minor Corruption##133941
accept Blood Purification##49950 |goto 69.25,33.81
stickystart "Collect_Reanimated_Monstrosity_Bones"
step
clicknpc Corrupted Energy##131286+
|tip They look like red orbs floating above the ground around this area.
Destroy #4# Corrupted Energy |q 49950/1 |goto 69.77,31.30
step
label "Slay_Naz'wathan_Undead"
Kill Naz'wathan enemies around this area
Slay #15# Naz'wathan Undead |q 49949/1 |goto 69.77,31.30
step
label "Collect_Reanimated_Monstrosity_Bones"
use the Titan Manipulator##156528
|tip Use it on Reanimated Monstrosities around this area.
kill Reanimated Monstrosity##131285+
collect 25 Reanimated Monstrosity Bone##156527 |q 49941/1 |goto 69.77,31.30
step
talk Titan Keeper Hezrel##131253
turnin Bone Procession##49941 |goto 68.68,35.11
turnin Unwelcome Undead##49949 |goto 68.68,35.11
turnin Blood Purification##49950 |goto 68.68,35.11
accept Not Fit for This Plane##49955 |goto 68.68,35.11
accept Void is Prohibited##49956 |goto 68.68,35.11
accept Protocol Recovery##49957 |goto 68.68,35.11
stickystart "Destroy_Faceless_Ones"
step
Run up the stairs |goto 70.68,31.75 < 15 |only if walking
use the Void Disruptor##156542
|tip Use it next to Void Portals around this area.
|tip They look like swirling purple and black portals on the ground around this area.
Seal #4# Void Portal |q 49956/1 |goto 71.63,30.72
step
label "Destroy_Faceless_Ones"
Kill Faceless enemies around this area
Destroy #6# Faceless Ones |q 49955/1 |goto 71.63,30.72
step
Enter the building |goto 71.89,30.29 < 10 |walk
kill Overlord Kraxis##131153
|tip Inside the building.
collect Containment Protocol##156537 |q 49957/1 |goto 72.83,28.94
step
Watch the dialogue
talk Titan Keeper Hezrel##131253
|tip Inside the building.
turnin Not Fit for This Plane##49955 |goto 72.47,29.37
turnin Void is Prohibited##49956 |goto 72.47,29.37
turnin Protocol Recovery##49957 |goto 72.47,29.37
accept Containment Procedure##49980 |goto 72.47,29.37
step
talk Titan Keeper Hezrel##131253
|tip Inside the building.
Tell him _"Hezrel, begin your scans to find a solution to the Old God corruption with Nazmir."_
Watch the dialogue
Speak to Titan Keeper Hezrel |q 49980/1 |goto 72.47,29.36
step
kill Grand Ma'da Ateena##131515 |q 49980/2 |goto 72.82,28.92
|tip Inside the building.
|tip Princess Talanji will help you fight her.
|tip Run inside the yellow bubble Titan Keeper Hezrel casts around himself during the fight.
step
talk Titan Keeper Hezrel##131253
|tip Inside the building.
turnin Containment Procedure##49980 |goto 72.47,29.36
accept Return to Gloom Hollow##49985 |goto 72.47,29.36
step
clicknpc Titan Keeper Hezrel##131501
Jump onto Titan Keeper Hezrel |invehicle |goto 71.85,30.39 |q 49985
step
Watch the dialogue
Ride Titan Keeper Hezrel back to Gloom Hollow |q 49985/1 |goto 66.01,39.13 |notravel
step
kill Ayame##133980
|tip It looks like a large snake that slithers around this area.
|tip You may need help with this.
collect Ayame's Head##162118 |q 52477/1 |goto 58.29,34.16
step
talk Korkush##131988
turnin WANTED: Ayame##52477 |goto 67.76,41.85
step
talk Princess Talanji##126213
turnin Return to Gloom Hollow##49985 |goto 67.43,42.24
accept Down by the Riverside##49569 |goto 67.43,42.24
step
click Vial of Antidote##278197
turnin A Chance Sighting##50934 |goto 64.01,50.39
accept Aid the Wounded##49366 |goto 64.01,50.39
step
use the Vial of Liquid##153676
|tip Use it next to Guard Satao.
Administer the Antidote |q 49366/1 |goto 63.99,50.39
step
Watch the dialogue
talk Guard Satao##129165
|tip Under the bridge.
turnin Aid the Wounded##49366 |goto 63.16,52.69
accept Rescue the Chronicler##49370 |goto 63.16,52.69
accept Bad Juju##49380 |goto 63.16,52.69
accept Off With Her Head##49377 |goto 63.16,52.69
step
click Cage Anchor##280952
Release Chronicler Jabari |q 49370/1 |goto 62.53,53.56
step
Watch the dialogue
talk Chronicler Jabari##129164
turnin Rescue the Chronicler##49370 |goto 62.72,53.58
accept Earn Their Trust##49378 |goto 62.72,53.58
accept Crawg Free Zone##49379 |goto 62.72,53.58
step
use the Sample Bottle##153678
Drain the Eastern Blood Orb |q 49380/2 |goto 62.17,54.40
step
clicknpc Crawgling##128808
Bond with a Crawgling |q 49378/1 |goto 61.80,52.53
stickystart "Feed_The_Crawgling"
stickystart "Kill_Battle_Crawgs"
step
use the Sample Bottle##153678
Drain the Western Blood Orb |q 49380/1 |goto 60.21,53.42
step
use the Sample Bottle##153678
Drain the Southern Blood Orb |q 49380/3 |goto 60.48,55.77
step
kill Warmother Nagla##128770
collect Nagla's Head##153572 |q 49377/1 |goto 62.15,57.34
step
label "Feed_The_Crawgling"
Kill enemies around this area
Feed the Crawgling #10# Times |q 49378/2 |goto 61.84,56.79
step
label "Kill_Battle_Crawgs"
kill 5 Battle Crawg##128780 |q 49379/1 |goto 61.84,56.79
step
talk Guard Satao##129165
|tip Under the bridge.
turnin Bad Juju##49380 |goto 63.15,52.70
turnin Off With Her Head##49377 |goto 63.15,52.70
step
talk Chronicler Jabari##129164
|tip Under the bridge.
turnin Earn Their Trust##49378 |goto 63.17,52.75
turnin Crawg Free Zone##49379 |goto 63.17,52.75
accept It Seems You've Made a Friend##49382 |goto 63.17,52.75
step
Enter the cave |goto 73.39,53.75 < 15 |walk
Seek Out Krag'wa |q 49382/1 |goto 74.72,55.95
|tip Inside the cave.
step
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin It Seems You've Made a Friend##49382 |goto 75.43,56.64
step
Leave the cave |goto 73.39,53.75 < 15 |walk
talk Patch##130056
Tell him _"I'm ready, let's hop on this barge and get back to Zul'jan."_
Speak with Patch to Board the Barge |q 49569/1 |goto 65.71,45.10
step
Watch the dialogue
Kill enemies around this area
|tip They are all along the river banks as you sail.
|tip Kill the hydra in the water when you stop sailing.
|tip Use the abilities on your action bar.
Sail Down the River |q 49569/2
step
Travel to the Shattered River |goto 39.89,84.92 < 7 |noway |c |q 49569
step
talk Crazy Vaza##121840
|tip Inside the building.
home Zul'jan Ruins |goto 38.62,78.66 |q 50808 |future
step
talk Princess Talanji##121288
turnin Down by the Riverside##49569 |goto 39.40,78.15
accept Rally the Warriors##50076 |goto 39.40,78.15
step
click Ancient Gong##280611
Ring the Ancient Gong |q 50076/1 |goto 39.37,77.48
step
Watch the dialogue
Hear Talanji's Speech |q 50076/2 |goto 39.34,77.68
step
talk Princess Talanji##121288
turnin Rally the Warriors##50076 |goto 39.34,77.69
accept The Battle of Bloodfire Ravine##50138 |goto 39.34,77.69
step
Meet Talanji at Bloodfire Ravine |q 50138/1 |goto 42.29,72.47
step
_Next to you:_
talk Princess Talanji
accept Undying Totems##50078
stickystart "Slay_Blood_Trolls_2"
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.46,72.26 |count 1
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.16,71.29 |count 2
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.75,71.19 |count 3
step
_Next to you:_
talk Princess Talanji##132624
turnin Undying Totems##50078
step
label "Slay_Blood_Trolls_2"
Kill Bloodfire enemies around this area
Slay #8# Blood Trolls |q 50138/2 |goto 43.56,71.26
step
Watch the dialogue
kill Warmother Molaka##132230 |q 50138/3 |goto 44.74,68.64
step
talk Princess Talanji##132333
turnin The Battle of Bloodfire Ravine##50138 |goto 44.95,68.62
accept The Road of Pain##50081 |goto 44.95,68.62
step
talk Patch##132988
accept Boom goes the Bomb##50079 |goto 44.97,68.34
stickystart "Heal_Zandalari_Soldiers"
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the First Barricade |q 50079/1 |goto 44.45,66.80
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the Second Barricade |q 50079/2 |goto 44.18,64.98
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the Third Barricade |q 50079/3 |goto 44.16,63.59
step
label "Heal_Zandalari_Soldiers"
clicknpc Zandalari Soldier##132985+
|tip They look like injured trolls laying on the ground around this area.
Heal #6# Zandalari Soldiers |q 50081/1 |goto 44.13,64.36
step
Watch the dialogue
talk Princess Talanji##133125
turnin The Road of Pain##50081 |goto 44.19,62.85
turnin Boom goes the Bomb##50079 |goto 44.19,62.85
accept Target of Opportunity##50082 |goto 44.19,62.85
step
Watch the dialogue
talk Princess Talanji##133401
Tell her _"I'm ready."_
Meet with Talanji |q 50082/1 |goto 44.98,60.95
step
Watch the dialogue
Kill the enemies that attack in waves
kill Decaying Hulk##133400
Confront Grand Ma'da Ateena |q 50082/2 |goto 45.58,59.85
step
talk Princess Talanji##133125
turnin Target of Opportunity##50082 |goto 45.21,60.54
step
Watch the dialogue
talk Princess Talanji##133125
accept Petitioning Krag'wa##52073 |goto 45.21,60.54
step
talk Rokhan##133471
accept The Crawg Ma'da##50083 |goto 45.40,58.59
step
kill Vicious War Crawg##133173+
collect Crawg Poison Gland##156868 |q 50083/1 |goto 46.71,55.59
step
use the Crawg Poison Gland##156868
|tip Use it on Amaka the Crawg Ma'da to weaken her.
kill Amaka the Crawg Ma'da##133172 |q 50083/2 |goto 46.91,54.11
|tip Inside the building.
step
talk Rokhan##133338
turnin The Crawg Ma'da##50083 |goto 48.31,53.54
accept A Message of Blood and Fire##50085 |goto 48.31,53.54
step
accept Raiding the Raiders##50080 |goto 48.60,52.31
|tip You will automatically accept this quest.
|only if level < 120
stickystart "Assault_Agwamar"
step
use the Wand of Embers##156931
|tip Use it on the buildings around this area.
Burn #8# Blood Troll Huts |q 50085/1 |goto 48.60,52.31
step
label "Assault_Agwamar"
Kill enemies around this area
clicknpc Zandalari Captive##133304+
|tip They look like trolls tied to wooden poles on the ground around this area.
click Supply Crate+
|tip They look like wooden boxes on the ground around this area.
Assault Agwamar |q 50080/1 |goto 48.60,52.31
|only if havequest(50080) or completedq(50080)
step
Follow the path up |goto 45.47,53.53 < 20 |only if walking
talk Rokhan##133475
turnin A Message of Blood and Fire##50085 |goto 44.35,54.10
step
Jump down here |goto 44.98,56.01 < 20 |only if walking
Follow the path up |goto 45.43,57.64 < 15 |only if walking
talk Krag'wa the Huge##140283
Tell him _"Krag'wa, the leader of the blood trolls has fled to the large structure in the distance. Please, lend us your assistance."_
Petition Krag'wa for Aid |q 52073/1 |goto 45.14,60.79
step
talk Krag'wa the Huge##140283
Tell him _"I am ready to go, Krag'wa."_
Ride with Krag'wa |invehicle |goto 45.19,60.70 |q 52073
step
Watch the dialogue
Ride Krag'wa |q 52073/2 |goto 48.85,56.54
step
talk Princess Talanji##133476
turnin Petitioning Krag'wa##52073 |goto 49.39,57.18
accept Ateena's Fall##50087 |goto 49.39,57.18
step
kill Grand Ma'da Ateena##133472 |q 50087/1 |goto 50.80,57.91
|tip Follow her when she teleports around.
|tip Avoid the pools of blood on the ground.
step
Watch the dialogue
talk Princess Talanji##133480
turnin Ateena's Fall##50087 |goto 50.60,58.47
step
Watch the dialogue
talk Rokhan##140656
accept What Rots Beneath##51244 |goto 50.51,58.34
step
talk Rokhan##140656
Tell him _"Let's fly down and meet with Titan Keeper Hezrel."_
Fly Down to the Altar of Rot |q 51244/1 |goto 50.51,58.35
step
Watch the dialogue
Fly with Rokhan |goto 53.14,69.22 < 10 |c |q 51244 |notravel
step
Follow the path down |goto 53.25,70.98 < 20 |only if walking
talk Titan Keeper Hezrel##137112
|tip Inside the cave.
Speak to Titan Keeper Hezrel |q 51244/2 |goto 51.75,65.70
step
talk Titan Keeper Hezrel##137112
|tip Inside the cave.
turnin What Rots Beneath##51244 |goto 51.75,65.70
accept The Underrot: Sealing G'huun's Corruption##51302 |goto 51.75,65.70
step
talk Rokhan##137113
|tip Inside the cave.
accept Halting the Empire's Fall##50808 |goto 51.89,65.54
step
talk Rokhan##137113
|tip Inside the cave.
Tell him _"Take me back to Zul'jan."_
Secure a Flight to Zul'jan |invehicle |goto 51.89,65.55 |q 50808
step
Fly Back to Zul'jan |goto 38.98,77.99 < 30 |c |q 50808 |notravel
step
Enter the building |goto Dazar'alor/0 49.97,42.11 < 10 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin Halting the Empire's Fall##50808 |goto Dazar'alor/2 41.41,72.22
step
_Congratulations!_
You completed the Nazmir leveling guide.
Click Here to Continue |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
|tip This will load the "Intro & Quest Zone Choice" guide.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Vol'dun",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Voldun storylines:\n\nDangers in the Desert\nA City of Secrets\nStorming the Spire\nUnlikely Allies\nThe Warguard's Fate\nThe Three Keepers\nAtul'Aman",
condition_suggested=function() return level >= 110 and not completedq(49040) and completedq(52131) end,
startlevel=110.0,
endlevel=120.0,
image=ZGV.DIR.."\\Guides\\Images\\Vol'dun",
},[[
step
talk Princess Talanji##133050
accept Discreet Discussions##47313 |goto Dazar'alor/2 41.14,66.73
step
Leave the building |goto Dazar'alor/0 49.96,42.14 < 10 |walk
talk Enforcer Sekal##122229
Ask her _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto Dazar'alor/0 50.09,37.45 |count 1
step
talk Enforcer Gortok##123243
Ask him _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto 52.19,37.52 |count 2
step
talk Enforcer Dakanji##122231
Ask him _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto 54.27,35.85 |count 3
step
Find Someone Willing to Talk |q 47313/2 |goto 51.58,31.82
step
talk Bladeguard Kaja##122817
turnin Discreet Discussions##47313 |goto 51.58,31.82
accept Rumors of Exile##47314 |goto 51.58,31.82
step
Watch the dialogue
|tip Follow Bladeguard Kaja as she walks.
talk Bladeguard Kaja##122320
turnin Rumors of Exile##47314 |goto 49.92,31.65
accept Into the Dunes##47315 |goto 49.92,31.65
step
clicknpc Pterrordax##122347
Mount the Pterrordax |q 47315/1 |goto 50.03,31.67
step
Watch the dialogue
Fly into Vol'dun |q 47315/2 |goto Vol'dun/0 66.08,36.43 |notravel
step
Watch the dialogue
talk Nisha##130455
|tip Inside the cave.
turnin Into the Dunes##47315 |goto 65.98,36.65
accept Armed and Ready##51357 |goto 65.98,36.65
step
click Sethrak Scythe
|tip Inside the cave.
Choose a Weapon |q 51357/1 |goto 65.95,36.65
step
talk Nisha##130455
|tip Inside the cave.
turnin Armed and Ready##51357 |goto 65.98,36.65
step
_Next to you:_
talk Nisha
accept Answering Their Attacks##47327
accept Dressed for Battle##49676
stickystart "Slay_Sethraks"
step
Follow the path up |goto 65.52,37.27 < 10 |walk
Leave the cave |goto 64.90,36.23 < 10 |walk
click Stolen Vulpera Banner##278686
Find the Banner |q 49676/1 |goto 64.67,33.91
step
click Sethrak Skull##278685
Find the Helmet |q 49676/2 |goto 63.63,32.70
step
click Explosives
Find the Explosives |q 49676/3 |goto 61.88,33.78
step
_Next to you:_
talk Nisha
turnin Dressed for Battle##49676
accept Plans for Attack##49677
step
label "Slay_Sethraks"
Kill Sethrak enemies around this area
Slay #12# Sethrak |q 47327/1 |goto 61.72,33.41
step
_Next to you:_
talk Nisha
turnin Answering Their Attacks##47327
step
kill Fangcaller Sraka##130466
collect Nisha's Attack Plans##158651 |q 49677/1 |goto 60.88,32.66
step
_Next to you:_
talk Nisha
turnin Plans for Attack##49677
accept An Explosive Exit##51364
step
Watch the dialogue
Find Nisha's Wagon |q 51364/1 |goto 60.06,34.58
step
clicknpc Nisha's Wagon##137492
Board Nisha's Wagon |q 51364/2 |goto 60.06,34.58
step
Watch the dialogue
|tip Use the "Volatile Potion" ability on the enemies that attack.
|tip It appears as a button on the screen.
Defend Nisha's Wagon |q 51364/3 |goto 58.23,40.55
step
Watch the dialogue
Ride to Vulpera Hideaway |q 51364/4 |goto 57.08,50.38 |notravel
step
talk Kiro##123586
turnin An Explosive Exit##51364 |goto 56.79,50.54
accept Restorative Venom##47319 |goto 56.79,50.54
step
talk Meerah##122583
accept Freshly Squeezed##51574 |goto 56.76,50.52
step
talk Hagashi##124108
home Vulpera Hideaway |goto 56.78,49.81 |q 48895 |future
step
talk Narishi##124107
fpath Vulpera Hideaway |goto 56.96,49.25
step
talk Vivi##135012
accept Missing Business##50739 |goto 55.20,48.38
stickystart "Revive_Sable_Polecats"
stickystart "Collect_Sandstinger_Venom_Glands"
step
clicknpc Vibrant Pricklevine##138107+
|tip They look like small red plants with teeth and green leaves on the ground around this area.
collect 8 Pricklevine Juice##160448 |q 51574/1 |goto 53.92,50.35
step
label "Revive_Sable_Polecats"
clicknpc Sable Polecat##135004+
|tip They look like sleeping cats on the ground around this area.
Revive #7# Sable Polecats |q 50739/1 |goto 53.92,50.35
step
label "Collect_Sandstinger_Venom_Glands"
Kill Sandstinger enemies around this area
collect 15 Sandstinger Venom Gland##160441 |q 47319/1 |goto 53.92,50.35
step
talk Vivi##135012
turnin Missing Business##50739 |goto 55.20,48.38
step
talk Meerah##122583
turnin Freshly Squeezed##51574 |goto 56.76,50.52
step
talk Kiro##123586
turnin Restorative Venom##47319 |goto 56.79,50.54
accept A Balm to Calm##47320 |goto 56.79,50.54
step
use the Restorative Balm##150759
|tip Use it on Bladeguard Kaja.
Apply the Restorative Balm |q 47320/1 |goto 56.83,50.53
step
Watch the dialogue
talk Bladeguard Kaja##130341
turnin A Balm to Calm##47320 |goto 56.83,50.52
accept Searching for Survivors##47317 |goto 56.83,50.52
step
talk Kiro##123586
accept Knickknack Takeback##47321 |goto 56.79,50.53
step
talk Meerah##122583
accept Secrets in the Sand##47316 |goto 56.76,50.53
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 55.78,48.68 |count 1
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 56.33,43.90 |count 2
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 52.80,46.41 |count 3
step
Follow the path |goto 51.62,43.03 < 15 |only if walking
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 52.78,41.80 |count 4
step
talk Neri##137631
accept Aided Escape##47322 |goto 54.69,42.49
step
talk Mekaru##137629
accept A Meal for Birds##50755 |goto 54.75,42.40
step
Kill enemies around this area
Feed the Buzzards #8# Times |q 50755/1 |goto 57.77,42.33
step
clicknpc Bladeguard Jorana##122729
Find Jorana |q 47317/2 |goto 57.42,40.62
stickystart "Collect_Knickknacks"
step
click Sethrak Cage##277876
Rescue Hakasi |q 47322/1 |goto 56.41,39.31
step
Rescue Kipp |q 47322/2 |goto 54.77,40.29
step
Enter the cave |goto 54.84,39.66 < 10 |walk
click Tarkaj's Warblade##271014
|tip Inside the cave.
Find Tarkaj |q 47317/1 |goto 54.61,39.38
step
label "Collect_Knickknacks"
Kill enemies around this area
Collect #6# Knickknacks |q 47321/1 |goto 55.11,40.05
step
talk Mekaru##137629
turnin A Meal for Birds##50755 |goto 54.75,42.40
step
talk Neri##137631
turnin Aided Escape##47322 |goto 54.69,42.49
step
talk Kiro##123586
turnin Knickknack Takeback##47321 |goto 56.79,50.54
step
talk Bladeguard Kaja##130341
turnin Searching for Survivors##47317 |goto 56.83,50.52
turnin Secrets in the Sand##47316 |goto 56.83,50.52
accept The Warguard's Trail##47959 |goto 56.83,50.52
step
talk Meerah##122583
Tell her _"We're ready to leave."_
Speak to Meerah |q 47959/1 |goto 56.76,50.53
step
Watch the dialogue
Ride Meerah's Caravan |q 47959/2 |goto 53.48,65.95 |notravel
step
talk Jorak##126696
turnin The Warguard's Trail##47959 |goto 52.97,66.53
accept Grozztok the Blackheart##48549 |goto 52.97,66.53
accept Stolen Satchels##48550 |goto 52.97,66.53
stickystart "Collect_Weathered_Satchels"
step
click Ranah's Wrench##291143
accept Ranah's Wrench##51829 |goto 50.70,64.66
step
Watch the dialogue
kill Grozztok the Blackheart##126697 |q 48549/1 |goto 49.19,64.74
step
label "Collect_Weathered_Satchels"
Kill Sandfury enemies around this area
collect 5 Weathered Satchel##152660 |q 48550/1 |goto 49.45,65.34
step
talk Bladeguard Kaja##122289
turnin Grozztok the Blackheart##48549 |goto 53.19,66.05
step
talk Jorak##126696
turnin Stolen Satchels##48550 |goto 53.34,66.00
step
talk Bladeguard Kaja##122289
accept On the Move##48684 |goto 53.19,66.06
step
Follow the path up |goto 53.53,66.96 < 20 |only if walking
talk Ranah##126814
turnin Ranah's Wrench##51829 |goto 53.87,69.39
accept We Can Salvage the Seeds##48555 |goto 53.87,69.39
accept Wither Without Water##48551 |goto 53.87,69.39
accept Let it Flow##48553 |goto 53.87,69.39
stickystart "Plant_Thistlevine_Seeds"
stickystart "Water_Withered_Thistlevines"
step
click Terrace Fountain##291008
Fix the North Fountain |q 48553/1 |goto 53.45,67.84
step
click Terrace Fountain##291008
Fix the South Fountain |q 48553/2 |goto 52.91,71.91
step
label "Plant_Thistlevine_Seeds"
Kill Carnivorous enemies around this area
collect Thistlevine Seeds##152644 |n
clicknpc Fertile Soil###126886+
|tip They look like brown piles of fresh dirt inside square planters on the ground around this area.
|tip You must have Thistlevine Seeds in order to plant them.
Plant #8# Thistlevine Seeds |q 48555/1 |goto 52.95,70.05
step
label "Water_Withered_Thistlevines"
use Ranah's Watering Can##152630
|tip Use it on Withered Thistlevines around this area.
|tip They look like small dead brown plants on the ground around this area.
Water #10# Withered Thistlevines |q 48551/1 |goto 52.95,70.05
step
talk Ranah##126814
turnin We Can Salvage the Seeds##48555 |goto 53.87,69.39
turnin Wither Without Water##48551 |goto 53.87,69.39
turnin Let it Flow##48553 |goto 53.87,69.39
accept The Source of the Problem##48554 |goto 53.87,69.39
step
Follow the path up |goto 53.74,68.76 < 15 |only if walking
Follow the path |goto 54.38,66.85 < 15 |only if walking
click Loose Boulder##273995
Inspect the Reservoir |q 48554/1 |goto 55.38,69.36
step
kill Colossal Water Cobra##127169 |q 48554/2 |goto 55.38,69.36
step
talk Ranah##126814
turnin The Source of the Problem##48554 |goto 53.87,69.39
step
talk Meerah##126235
Tell her _"We're ready to leave."_
Speak to Meerah |q 48684/1 |goto 53.22,66.04
step
Watch the dialogue
Ride Meerah's Caravan |q 48684/2 |goto 52.88,89.12 |notravel
step
talk Jorak##127691
turnin On the Move##48684 |goto 52.83,89.23
accept The Perfect Offering##48895 |goto 52.83,89.23
step
talk Akunda the Exalted##127992
turnin The Perfect Offering##48895 |goto 53.18,90.29
accept Powerful Conductors##48993 |goto 53.18,90.29
accept Sacred Remains##48992 |goto 53.18,90.29
accept Vile Infestation##48991 |goto 53.18,90.29
step
talk Jorak##127691
accept Fond Farewells##49040 |goto 52.83,89.23
step
talk Akunda the Bountiful##127431
|tip Inside the building.
home Temple of Akunda |goto 51.92,89.83 |q 50561 |future
step
talk Akunda the Tamer##127427
fpath Temple of Akunda |goto 53.72,89.17
stickystart "Collect_Sacred_Remains"
stickystart "Kill_Ranishu_Gorgers"
step
Enter the cave |goto 55.01,86.20 < 10 |walk
Follow the path down |goto 55.75,86.01 < 10 |walk
kill Rorgog the Devourer##134052
|tip Inside the cave.
collect Rorgog's Antennae##153029 |q 48993/1 |goto 56.12,83.45
step
Follow the path up |goto 55.75,86.01 < 10 |walk
Leave the cave |goto 55.04,86.20 < 10 |c |q 48992
step
label "Collect_Sacred_Remains"
click Sacred Remains##277285+
|tip They look like white bones on the ground around this area.
collect 6 Sacred Remains##153028 |q 48992/1 |goto 54.60,86.07
step
label "Kill_Ranishu_Gorgers"
kill 12 Ranishu Gorger##133565 |q 48991/1 |goto 54.60,86.07
step
talk Akunda the Exalted##127992
turnin Powerful Conductors##48993 |goto 53.18,90.29
turnin Sacred Remains##48992 |goto 53.18,90.29
turnin Vile Infestation##48991 |goto 53.18,90.29
accept Cleanse the Mind##48887 |goto 53.18,90.29
accept It Springs Eternal##48888 |goto 53.18,90.29
stickystart "Slay_Redrock_Scavenger"
step
Follow the path down |goto 53.11,84.99 < 15 |only if walking
Enter the cave |goto 52.16,83.78 < 10 |walk
click Shrine of Thunder##276460
|tip Inside the cave.
Meditate at the Shrine of Thunder |q 48887/1 |goto 52.17,83.36
step
label "Slay_Redrock_Scavenger"
Kill Redrock enemies around this area
Slay #8# Redrock Scavenger |q 48888/1 |goto 52.13,84.48
step
Follow the path down |goto 53.12,85.01 < 20 |only if walking
Follow the path up |goto 53.79,83.57 < 15 |only if walking
talk Akunda the Exalted##127992
turnin Cleanse the Mind##48887 |goto 53.18,90.30
turnin It Springs Eternal##48888 |goto 53.18,90.30
accept Trial of Truth##48894 |goto 53.18,90.30
step
talk Akunda the Exalted##127992
Tell him "_My name is Akunda the Nimble."_
|tip You can choose whichever Akunda name you like, it doesn't matter.
|tip You cannot choose to have your name remain unchanged.
Speak Your True Name to Akunda the Exalted |q 48894/1 |goto 53.18,90.29
step
talk Akunda the Exalted##127966
turnin Trial of Truth##48894 |goto 53.18,90.29
step
talk Bladeguard Kaja##127570
accept Akunda Awaits##48715 |goto 53.16,90.20
step
Watch the dialogue
|tip Inside the building.
Investigate the Temple of Akunda |q 48715/1 |goto 53.18,91.26
step
Watch the dialogue
talk Bladeguard Kaja##135066
|tip Inside the building.
turnin Akunda Awaits##48715 |goto 53.58,91.65
step
talk Akunda the Sensible##127980
|tip Inside the building.
accept Valley of Sorrows##48987 |goto 53.58,91.34
step
Follow the path down |goto 53.80,80.18 < 20 |only if walking
talk Meijani##127989
turnin Valley of Sorrows##48987 |goto 53.01,78.77
accept Memory Breach##48988 |goto 53.01,78.77
accept Shattered and Broken##49005 |goto 53.01,78.77
stickystart "Kill_Distorted_Memories"
stickystart "Kill_Fractured_Memories"
step
clicknpc Unwanted Memory##122683+
|tip They look like grey vases on the ground around this area.
Search #8# Unwanted Memories |q 48988/1 |goto 52.71,76.94
You can find more around [54.43,76.24]
step
label "Kill_Distorted_Memories"
kill 4 Distorted Memory##138198 |q 49005/1 |goto 53.49,76.85
step
label "Kill_Fractured_Memories"
kill 8 Fractured Memory##138199 |q 49005/2 |goto 53.49,76.85
step
talk Meijani##127989
turnin Memory Breach##48988 |goto 53.01,78.77
turnin Shattered and Broken##49005 |goto 53.01,78.77
accept Repairing the Past##48889 |goto 53.01,78.77
step
Enter the cave |goto 52.60,79.18 < 10 |walk
Kill the enemies that attack in waves
|tip Inside the cave.
Watch the dialogue
Protect Meijani |q 48889/1 |goto 52.31,79.74
step
talk Akunda##138382
|tip Inside the cave.
turnin Repairing the Past##48889 |goto 52.22,79.89
accept Ending the Madness##48996 |goto 52.22,79.89
step
Follow the path |goto 53.12,89.65 < 15 |only if walking
kill Akunda the Exalted##128147 |q 48996/1 |goto 53.18,91.25
|tip Inside the building.
|tip Use the "Tempest" ability.
|tip It appears as a button on the screen.
step
Watch the dialogue
talk Akunda##128152
|tip Inside the building.
turnin Ending the Madness##48996 |goto 53.19,91.65
accept Akunda's Blessing##50913 |goto 53.19,91.65
step
click Altar of Akunda##290773
|tip Inside the building.
Visit the Altar of Akunda |q 50913/1 |goto 53.18,92.12
step
talk Akunda##128152
|tip Inside the building.
turnin Akunda's Blessing##50913 |goto 53.19,91.65
step
talk Warguard Rakera##130660
|tip Inside the building.
accept Clearing the Fog##47874 |goto 53.61,91.66
step
Watch the dialogue
|tip Follow Warguard Rakera as she walks.
talk Warguard Rakera##130667
turnin Clearing the Fog##47874 |goto 52.81,89.24
accept Knowledge of the Past##48896 |goto 52.81,89.24
step
talk Meerah##126235
Tell her _"We're ready to leave."_
Speak to Meerah |q 48896/1 |goto 52.70,89.30
step
Watch the dialogue
Ride Meerah's Caravan |q 48896/2 |goto 47.91,82.38 |notravel
step
kill 3 Sandfury Assassin##128209 |q 48896/3 |goto 47.67,81.99
step
_Next to you:_
talk Warguard Rakera
turnin Knowledge of the Past##48896
accept Searching the Ruins##47716
step
Watch the dialogue
Search for Julwaba |q 47716/1 |goto 46.60,76.05
step
Enter the building |goto 46.77,75.72 < 20 |only if walking
Watch the dialogue
talk Julwaba##134162
|tip Inside the building.
turnin Searching the Ruins##47716 |goto 47.07,75.66
step
talk Kiro##135154
|tip Inside the building.
accept Creeping Death##48314 |goto 47.05,75.60
accept Nature's Remedy##48313 |goto 47.05,75.60
stickystart "Collect_Scorpashi_Stingers"
step
click Prickly Plum##273193
|tip They look like green spiky plants on the ground around this area.
collect 6 Prickly Plum Cactus##152393 |q 48313/1 |goto 46.00,73.43
step
label "Collect_Scorpashi_Stingers"
Kill Scorpashi enemies around this area
collect 7 Scorpashi Stinger##152397 |q 48314/1 |goto 46.00,73.43
step
Enter the building |goto 46.77,75.72 < 20 |only if walking
talk Kiro##135154
|tip Inside the building.
turnin Creeping Death##48314 |goto 47.06,75.60
turnin Nature's Remedy##48313 |goto 47.06,75.60
accept Effective Antivenom##50770 |goto 47.06,75.60
step
use the Antivenom##158678
|tip Use it on Serrik.
|tip Inside the building.
Apply the Restorative Balm |q 50770/1 |goto 47.06,75.72
step
Watch the dialogue
talk Serrik##134533
|tip Inside the building.
turnin Effective Antivenom##50770 |goto 47.06,75.71
accept The Secrets of Zul'Ahjin##50539 |goto 47.06,75.71
step
Run up the stairs |goto 46.87,74.21 < 15 |only if walking
talk Maaz##134148
|tip Inside the building.
accept Magic Decoder Device##50536 |goto 47.32,72.73
step
clicknpc Scepter of Prescience##134245
|tip Inside the building.
Test the Device |q 50536/1 |goto 47.36,72.66
step
Follow the path |goto 48.34,74.11 < 30 |only if walking
clicknpc Keeper Korthek##134089
Inspect the Statue of Korthek  |q 50536/2 |goto 48.05,74.97
step
clicknpc Keeper Vorrik##134067
Inspect the Statue of Vorrik |q 50536/3 |goto 48.89,76.34
step
clicknpc Keeper Sulthis##134090
Inspect the Statue of Sulthis |q 50536/4 |goto 49.74,74.98
step
click Crumbling Statue##281639
turnin The Secrets of Zul'Ahjin##50539 |goto 48.90,74.49
accept Hollow, Empty Eyes##48315 |goto 48.90,74.49
step
Run up the stairs |goto 49.44,76.12 < 15 |only if walking
talk Foreman Jethek##134408
|tip He walks around this area.
accept Exterminate the Vermin##50596 |goto 49.75,76.26
step
click Sethrak Shackle+
|tip They look like grey metal ball and chains tied to the legs of small fox men around this area.
Free #3# Excavators |q 50596/1 |goto 48.63,77.29
step
click Glittering Sapphire##281558
collect Glittering Sapphire##157864 |q 48315/1 |goto 49.85,73.19 |count 1
step
Run up the stairs |goto 50.46,71.81 < 15 |only if walking
click Glittering Sapphire##281558
collect Glittering Sapphire##157864 |q 48315/1 |goto 51.05,72.34 |count 2
step
click Crumbling Statue##281639
turnin Hollow, Empty Eyes##48315 |goto 48.90,74.49
step
Watch the dialogue
click Ancient Reliquary##281583
accept Sulthis' Stone##50561 |goto 48.90,74.25
step
talk Maaz##134148
|tip Inside the building.
turnin Magic Decoder Device##50536 |goto 47.32,72.73
accept Rescue the Relics##48871 |goto 47.32,72.73
step
talk Amre##134164
|tip He walks around this area inside the building.
turnin Exterminate the Vermin##50596 |goto 47.40,72.74
accept Expedite the Excavation##48872 |goto 47.40,72.74
stickystart "Slay_Sethraks_2"
step
click Relic of the Keepers##281608+
|tip They look like small blue orb-shaped stone statues on the ground around this area.
collect 8 Relic of the Keepers##152787 |q 48871/1 |goto 48.89,73.91
step
label "Slay_Sethraks_2"
Kill Sethrak enemies around this area
Slay #12# Sethraks |q 48872/1 |goto 48.89,73.91
step
talk Maaz##134148
|tip Inside the building.
turnin Rescue the Relics##48871 |goto 47.32,72.73
step
talk Amre##134164
|tip He walks around this area inside the building.
turnin Expedite the Excavation##48872 |goto 47.40,72.74
step
talk Maaz##134148
|tip Inside the building.
accept Power of the Overseer##50535 |goto 47.32,72.73
step
Run up the stairs |goto 47.28,77.26 < 15 |only if walking
kill Overseer Nerzet##134121
|tip He walks around this area.
collect Azerite Shard##157855 |q 50535/1 |goto 48.89,76.71
step
talk Maaz##134148
|tip Inside the building.
turnin Power of the Overseer##50535 |goto 47.32,72.74
step
Enter the building |goto 46.73,75.70 < 20 |walk
talk Serrik##134533
|tip Inside the building.
turnin Sulthis' Stone##50561 |goto 47.06,75.71
accept Unlikely Allies##47324 |goto 47.06,75.71
step
talk Julwaba##134162
|tip Inside the building.
accept Seeking Shelter##50794 |goto 47.07,75.66
step
talk Makaanji##135654
fpath Scorched Sands Outpost |goto 43.90,75.92
step
talk Mozesha##135655
home Scorched Sands Outpost |goto 43.04,76.46 |q 47324 |future
step
talk Razgaji##126576
turnin Seeking Shelter##50794 |goto 43.39,75.36
accept I've Got Your Back##51573 |goto 43.39,75.36
step
talk Razgaji##126576
Tell him _"I'm ready. Let's go."_
Speak with Razgaji |q 51573/1 |goto 43.40,75.36
step
Watch the dialogue
Escort Razgaji |q 51573/2 |goto 43.39,74.03
step
talk Razgaji##126576
|tip He walks to this spot.
turnin I've Got Your Back##51573 |goto 43.39,75.37
accept Hungry Mouths To Feed##48529 |goto 43.39,75.37
accept I Heard You Lost the Herd##48530 |goto 43.39,75.37
step
talk Sezahjin##126108
turnin Hungry Mouths To Feed##48529 |goto 43.70,76.78
accept Mystery Meat##48531 |goto 43.70,76.78
accept Vol'duni Fried Chicken##48533 |goto 43.70,76.78
step
talk Mugjabu##126085
turnin I Heard You Lost the Herd##48530 |goto 42.12,76.20
accept Alpacas Gone Wild##48532 |goto 42.12,76.20
step
use Sezahjin's Trusty Vulture Bow##152572
|tip Use it on Fattened Buzzard around this area.
|tip Some of them are flying in the air around this area.
kill Fattened Buzzard##126502+
collect 8 Roasted Buzzard##152571 |q 48533/1 |goto 43.43,74.30
step
talk Sezahjin##126108
turnin Vol'duni Fried Chicken##48533 |goto 43.70,76.78
stickystart "Collect_Dung_Beetle_Innards"
stickystart "Herd_Alpacas"
step
click Backpack##282438
accept Wasteland Survivor##48585 |goto 40.43,73.63
stickystart "Collect_Scavenged_Supplies"
step
label "Collect_Dung_Beetle_Innards"
kill Vol'duni Dunecrawler##126645+
collect 10 Dung Beetle Innards##152566 |q 48531/1 |goto 39.49,72.37
step
label "Herd_Alpacas"
use the Alpaca Whistle##152570
|tip Use it next to Lost Alpacas around this area.
Herd #6# Alpacas |q 48532/1 |goto 39.44,70.62
step
label "Collect_Scavenged_Supplies"
click Supply Pouch##273837+
|tip They look like tiny brown bags and boxes laying next to piles of bones on the ground around this area.
collect 10 Scavenged Supplies##152601 |q 48585/1 |goto 39.28,72.41
step
talk Mugjabu##126085
turnin Alpacas Gone Wild##48532 |goto 42.13,76.20
step
talk Sezahjin##126108
turnin Mystery Meat##48531 |goto 43.70,76.78
accept The Chef's Apprentice##48655 |goto 43.70,76.78
step
talk Razgaji##126576
turnin Wasteland Survivor##48585 |goto 43.39,75.37
step
talk Mugjabu##126085
accept Snarltooth's Last Laugh##48534 |goto 42.13,76.20
step
Enter the building |goto 43.40,79.20 < 10 |walk
click Junji##276187
|tip Inside the building.
turnin The Chef's Apprentice##48655 |goto 43.39,78.65
accept Savage Saurolisks##48656 |goto 43.39,78.65
accept They Might Be Delicious##48657 |goto 43.39,78.65
stickystart "Collect_Saurolisk_Eggs"
stickystart "Kill_Scaleclaw_Saurolisks"
step
Enter the cave |goto 43.44,82.49 < 10 |walk
kill Snarltooth##126644
|tip Inside the cave.
collect Snarltooth's Head##152573 |q 48534/1 |goto 42.82,84.36
step
label "Collect_Saurolisk_Eggs"
Leave the cave |goto 43.46,82.53 < 10 |walk
click Saurolisk Egg##275099+
|tip They look like large white eggs on the ground around this area.
collect 10 Saurolisk Egg##152647 |q 48657/1 |goto 43.69,81.21
step
label "Kill_Scaleclaw_Saurolisks"
kill 8 Scaleclaw Saurolisk##126984 |q 48656/1 |goto 43.69,81.21
step
Enter the building |goto 43.40,79.19 < 10 |walk
click Junji##276187
|tip Inside the building.
turnin Savage Saurolisks##48656 |goto 43.39,78.65
turnin They Might Be Delicious##48657 |goto 43.39,78.65
step
Run up the stairs |goto 42.97,79.31 < 15 |only if walking
talk Mugjabu##126085
turnin Snarltooth's Last Laugh##48534 |goto 42.13,76.20
step
talk Zauljin##125862
accept Liquid Motivation##48846 |goto 43.24,76.96
step
talk Taz'jin##127578
|tip Inside the building.
buy Zanchuli Reserve##160499 |q 48846/1 |goto 42.86,76.31
step
talk Zauljin##125862
Tell him _"Here's the rum. Tell me what you heard."_
Deliver the Rum to Zauljin |q 48846/2 |goto 43.24,76.96
step
talk Razgaji##126576
turnin Liquid Motivation##48846 |goto 43.39,75.37
accept Tongo##48850 |goto 43.39,75.37
accept Stolen Goods##48790 |goto 43.39,75.37
accept Bandit Blades##51602 |goto 43.39,75.37
stickystart "Collect_Sandworn_Blades"
stickystart "Collect_Stolen_Supplies"
step
Enter the building |goto 40.58,76.04 < 10 |walk
kill Tongo##135326
|tip Inside the building.
collect Tongo's Head##158875 |q 48850/1 |goto 40.85,76.02
step
label "Collect_Sandworn_Blades"
kill Zandalari Exile##135311+
click Sandworn Blade##290712+
|tip They look like swords sticking out of the ground around this area.
collect 8 Sandworn Blade##160515 |q 51602/1 |goto 40.15,75.89
step
label "Collect_Stolen_Supplies"
click Stolen Items
|tip They look like various shaped different named objects on the ground and inside buildings around this area.
|tip They will appear on your minimap as yellow dots.
Collect #6# Stolen Supplies |q 48790/1 |goto 40.15,75.89
step
talk Razgaji##126576
turnin Tongo##48850 |goto 43.39,75.37
turnin Stolen Goods##48790 |goto 43.39,75.37
turnin Bandit Blades##51602 |goto 43.39,75.37
accept Arming the Tribe##48847 |goto 43.39,75.37
step
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.86,76.08 |count 1
step
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.86,76.58 |count 2
step
talk Scorched Sands Outcast##138395
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 43.61,76.98 |count 3
step
talk Scorched Sands Outcast##138395
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 43.82,77.84 |count 4
step
talk Scorched Sands Outcast##138395
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.97,77.84 |count 5
step
talk Scorched Sands Outcast##138395
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.56,76.67 |count 6
step
talk Scorched Sands Outcast##138395
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.52,76.35 |count 7
step
talk Scorched Sands Outcast##138395
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.14,76.01 |count 8
step
talk Razgaji##126576
turnin Arming the Tribe##48847 |goto 43.39,75.37
accept Mojambo##51668 |goto 43.39,75.37
step
use Tongo's Head##160525
|tip Use it on Mojambo.
kill Mojambo##138113 |q 51668/1 |goto 43.41,73.87
step
talk Razgaji##126576
turnin Mojambo##51668 |goto 43.40,75.37
accept The Ashvane Threat##51773 |goto 43.40,75.37
step
click Wanted: Za'roco##287398
accept WANTED: Za'roco##51161 |goto 43.14,76.57
step
talk Sezahjin##126108
accept The Tortaka Tribe##51772 |goto 43.70,76.78
step
talk Mugjabu##126085
accept Camp Lastwind##51775 |goto 42.13,76.20
step
talk Norah##125904
turnin Camp Lastwind##51775 |goto 38.88,77.32
accept Lost in Zem'lan##48324 |goto 38.88,77.32
step
click Wanted: Taz'raka##287440
accept WANTED: Taz'raka the Traitor##51162 |goto 38.85,76.97
step
clicknpc Meeki##136287
turnin Lost in Zem'lan##48324 |goto 35.46,83.48
step
talk First Mate Jamboya##128261
accept The Day the Port Fell##51053 |goto 35.44,83.82
step
use First Mate Jamboya's Medallion##159747
Witness Jamboya's Memory |q 51053/1 |goto 34.11,85.48
step
talk First Mate Jamboya##128261
turnin The Day the Port Fell##51053 |goto 35.44,83.82
accept Overdue Mutiny##51054 |goto 35.44,83.82
step
clicknpc First Mate Jamboya##136583
Free First Mate Jamboya |q 51054/1 |goto 35.44,83.83
step
Watch the dialogue
talk First Mate Jamboya##136309
turnin Overdue Mutiny##51054 |goto 35.31,83.20
accept Monsters of Zem'lan##47647 |goto 35.31,83.20 |only if level < 120
|tip You will accept this quest automatically. |only if level < 120
accept The Yard Arm of the Law##51055 |goto 35.31,83.20
accept My Last Day Alive##51056 |goto 35.31,83.20
stickystart "Assault_The_Port_Of_Zemlan"
step
Enter the building |goto 36.92,78.62 < 20 |walk
clicknpc Quartermaster Tulmac##136434
|tip Inside the building.
Free Quartermaster Tulmac |q 51055/1 |goto 36.92,78.08
step
Enter the building |goto 35.92,78.21 < 10 |walk
use First Mate Jamboya's Medallion##159757
Witness the Throne Room Memory |q 51056/1 |goto 36.05,78.02
step
clicknpc Gunner Bosanya##136435
Free Gunner Bosanya |q 51055/2 |goto 35.13,77.98
step
Enter the building |goto 34.88,76.81 < 10 |walk
clicknpc Jukanga the Snitch##136441
|tip Inside the building.
Free Jukanga the Snitch |q 51055/3 |goto 34.65,77.13
step
use First Mate Jamboya's Medallion##159757
Witness the Battlefield Memory |q 51056/2 |goto 35.83,75.31
step
label "Assault_The_Port_Of_Zemlan"
Kill enemies around this area
clicknpc Captured Vulpera##128368
|tip They look like captive Vulpera on the ground around this area.
click Treasure Map+
|tip They look like tan pieces of paper on walls and on the ground around this area.
click Zem'lan Blackeye Brew+
|tip They look like glass bottles on the ground around this area.
Assault the Port of Zem'lan |q 47647/1 |goto 34.65,77.13
|only if level < 120
step
Enter the building |goto 35.72,70.77 < 10 |walk
kill Taz'raka the Traitor##136595 |q 51162/1 |goto 35.50,70.86
|tip Inside the building.
|tip You may need help with this.
step
talk Norah##125904
turnin WANTED: Taz'raka the Traitor##51162 |goto 38.88,77.31
step
talk First Mate Jamboya##136309
turnin The Yard Arm of the Law##51055 |goto 35.31,83.20
turnin My Last Day Alive##51056 |goto 35.31,83.20
accept The Grinning Idols##47499 |goto 35.31,83.20
accept Maroon 'em with Fire##51057 |goto 35.31,83.20
stickystart "Burn_Pillaging_Canoes"
step
click Captain Gulnaku's Treasure Map##289728
accept Captain Gulnaku's Treasure##49138 |goto 35.04,80.41
step
kill Quartermaster Boonzali##128346
collect Idol of Binding##153351 |q 47499/1 |goto 33.87,81.25
step
kill Da Cabin Boy##128454
collect Idol of Immortality##151021 |q 47499/2 |goto 34.36,77.60
step
kill Master Gunner Torwec##136446
|tip He walks around this area.
collect Idol of Sacrifice##153352 |q 47499/3 |goto 32.95,78.09
step
Find the Buried Treasure |q 49138/1 |goto 31.76,79.28
step
kill Captain Gulnaku##128299
collect Captain Gulnaku's Key##153419 |q 49138/2 |goto 31.75,79.26
step
click Captain Gulnaku's Treasure##277530
turnin Captain Gulnaku's Treasure##49138 |goto 31.76,79.28
step
label "Burn_Pillaging_Canoes"
use the Undying Torch##159774
|tip Use it on Pillaging Canoes around this area.
|tip They look like large wooden canoes in the water along the shore around this area.
Burn #8# Pillaging Canoes |q 51057/1 |goto 32.69,80.37
step
talk First Mate Jamboya##136310
|tip Under the bridge.
turnin The Grinning Idols##47499 |goto 33.28,81.77
turnin Maroon 'em with Fire##51057 |goto 33.28,81.77
accept The Golden Isle##51059 |goto 33.28,81.77
step
clicknpc Jamboya's Boat##136773
|tip Under the bridge.
Begin Riding Jamboya's Boat |invehicle |goto 33.25,81.85 |q 51059
step
Watch the dialogue
Ride Jamboya's Boat |q 51059/1 |goto 30.28,86.36 |notravel
step
talk First Mate Jamboya##136779
turnin The Golden Isle##51059 |goto 30.24,86.51
accept Our Share of the Plunder##51060 |goto 30.24,86.51
accept The First Time I Died##51061 |goto 30.24,86.51
stickystart "Collect_Cursed_Treasure_of_Zem'lan"
step
click Cursed Altar of Zem'lan##289734
Place the Idols on the Altar |q 51061/1 |goto 29.73,87.95
step
click Idol of Binding##288154
Attack the Idol of Binding |q 51061/2 |goto 29.71,87.98
step
_Next to you:_
talk First Mate Jamboya
turnin The First Time I Died##51061
step
label "Collect_Cursed_Treasure_of_Zem'lan"
Kill enemies around this area
click Cursed Treasure##287493+
|tip They look like large and small brown sacks with treasure in them on the ground around this area.
collect 12 Cursed Treasure of Zem'lan##152659 |q 51060/1 |goto 29.63,87.57
step
_Next to you:_
talk First Mate Jamboya
turnin Our Share of the Plunder##51060
accept This Be Mutiny##48326
step
click Gong of Zem'lan##289733
Ring the Gong of Zem'lan |q 48326/1 |goto 28.59,88.68
step
Watch the dialogue
kill Pirate-King Zem'lan##127025 |q 48326/2 |goto 28.58,88.37
step
talk First Mate Jamboya##136779
turnin This Be Mutiny##48326 |goto 30.24,86.51
accept Escaping Zem'lan##51062 |goto 30.24,86.51
step
clicknpc Jamboya's Boat##136773
Begin Riding Jamboya's Boat |invehicle |goto 30.27,86.32 |q 51062
step
Watch the dialogue
Ride Jamboya's Boat |q 51062/1 |goto 37.69,82.68 |notravel
step
talk Norah##125904
turnin Escaping Zem'lan##51062 |goto 38.88,77.31
accept A Strange Delivery##48327 |goto 38.88,77.31
step
Enter the building |goto 47.01,73.34 < 20 |walk
kill Za'roco the Grifter##136601 |q 51161/1 |goto 47.30,73.70
|tip Inside the building.
|tip You may need help with this.
step
talk Razgaji##126576
turnin WANTED: Za'roco##51161 |goto 43.39,75.37
step
Follow the path up |goto 45.08,82.46 < 15 |only if walking
talk Randall Redmond##124468
turnin The Ashvane Threat##51773 |goto 45.65,82.32
accept Dead Men Tell No Tales##47870 |goto 45.65,82.32
accept Seafaring Necessities##47871 |goto 45.65,82.32
stickystart "Collect_Ashvane_Garb"
step
Follow the path up |goto 45.53,83.93 < 20 |only if walking
kill Expedition Leader Augustus##124593
collect Seafaring Hat##151628 |q 47871/1 |goto 46.18,86.47
step
kill Gunner Erikson##124647 |q 47870/1 |goto 46.72,87.36
step
click Weathered Spyglass##272294
collect Weathered Spyglass##151631 |q 47871/3 |goto 46.72,87.29
step
kill First Mate Perry##124650 |goto 46.89,87.95
|tip She walks around this area.
step
kill Boatswain Hendricks##124648 |q 47870/2 |goto 48.08,86.90
step
click Nautical Map##272292
collect Nautical Map##151629 |q 47871/2 |goto 47.97,87.05
step
talk Keerin##128422
accept If the Key Fits...##47939 |goto 47.60,86.16
step
Kill enemies around this area
collect 6 Ashvane Trader Key##151777 |q 47939/1 |goto 47.52,87.23
step
label "Collect_Ashvane_Garb"
Kill enemies around this area
collect 5 Ashvane Garb##160735 |goto 47.52,87.23 |q 47939 |future
step
talk Keerin##128422
turnin If the Key Fits...##47939 |goto 47.60,86.15
accept The Master Key##49227 |goto 47.60,86.15
step
Enter the cave |goto 47.89,88.18 < 10 |walk
Follow the path down |goto 48.57,88.59 < 10 |walk
Follow the path |goto 49.21,87.77 < 10 |walk
kill Overseer Morrison##128418
|tip Inside the cave.
collect Morrison's Master Key##153420 |q 49227/1 |goto 49.67,88.35
step
use the Ashvane Garb##160735+
Click Here Once You Are Disguised |confirm |q 49227
step
clicknpc Vulpera Captive##128421+
|tip They look like friendly fox NPC's mining inside the cave around this area.
Free #8# Vulpera Captives |q 49227/2 |goto 48.50,88.90
step
Leave the cave |goto 47.87,88.11 < 10 |walk
talk Keerin##128422
turnin The Master Key##49227 |goto 47.60,86.15
step
talk Randall Redmond##124468
turnin Dead Men Tell No Tales##47870 |goto 44.65,86.99
turnin Seafaring Necessities##47871 |goto 44.65,86.99
accept Captain Hartford##51810 |goto 44.65,86.99
step
Kill enemies around this area
collect 5 Ashvane Garb##160735 |goto 45.24,88.25 |q 49261 |future
step
use the Ashvane Garb##160735+
Click Here Once You Are Disguised |confirm |q 49261 |future
step
talk Dockmaster Herrington##128618
accept Crabby Crew Stew##49261 |goto 44.60,88.23
accept Gang Bustin'##49262 |goto 44.60,88.23
step
talk Shady Deckhand##128617+
|tip Avoid Ashvane Overseers, they can see through your disguise.
Tell them _"I know you've been stealing from the company. I'm here to make sure it doesn't happen again..."_
Confront #8# Shady Deckhands |q 49262/1 |goto 45.05,90.68
step
kill Sand Scuttler##124567+
collect 8 Lumpy Crab Meat##151627 |q 49261/1 |goto 43.00,87.31
step
talk Dockmaster Herrington##128618
|tip If you can't talk to him, kill enemies around this area for "Ashvane Garb".
|tip Once you have 5 of them, use them to wear the disgusie.
turnin Crabby Crew Stew##49261 |goto 44.60,88.23
turnin Gang Bustin'##49262 |goto 44.60,88.23
step
Follow the path |goto 43.43,90.35 < 5 |walk
kill Captain Hartford##139164 |q 51810/1 |goto 43.14,90.80
|tip Inside the ship.
step
talk Captain Redmond##139070
|tip Upstairs inside the ship.
turnin Captain Hartford##51810 |goto 43.20,90.89
accept The Captain's Cache##47873 |goto 43.20,90.89
step
click Captain Hartford's Lockbox##282746
|tip Upstairs inside the ship.
turnin The Captain's Cache##47873 |goto 43.20,90.77
step
clicknpc Serrik's Pterrordax##134544
Mount the Pterrordax |q 47324/1 |goto 46.79,75.45
step
Watch the dialogue
Fly to the Sanctuary of the Devoted |q 47324/2 |goto 27.24,54.09 |notravel
step
Watch the dialogue
talk Serrik##128687
turnin Unlikely Allies##47324 |goto 27.22,53.94
accept A Powerful Prisoner##49334 |goto 27.22,53.94
step
talk Zissiah##128696
accept Break Their Ranks##50641 |goto 27.20,53.86
accept Push Them Back!##49327 |goto 27.20,53.86
step
click Wanted: Sandscout Vesarik##287441
|tip Inside the building.
accept WANTED: Sandscout Vesarik##51165 |goto 27.36,53.29
step
talk Issik##128693
|tip Inside the building.
home Sanctuary of the Devoted |goto 26.87,52.22 |q 51772 |future
step
talk Vethiss##128695
fpath Sanctuary of the Devoted |goto 27.65,50.33
stickystart "Burn_Sethrak_Banners"
stickystart "Crush_Sethrak_Cannons"
stickystart "Shatter_Sethrak_Spires"
stickystart "Slay_Faithless"
step
click Sethrak Cage##277910
Rescue Vorrik |q 49334/1 |goto 30.02,51.98
step
click Desert Flute##282498
accept A Lost Flute##50818 |goto 28.97,54.65
step
label "Burn_Sethrak_Banners"
click Sethrak War Banner##277899+
|tip They look like wooden poles with red flags on the ground around this area.
Burn #4# Banners |q 49327/1 |goto 29.38,53.59
step
label "Crush_Sethrak_Cannons"
clicknpc Sethrak Cannon##129076+
|tip They look like stone cannons on the ground around this area.
Crush #2# Cannons |q 49327/2 |goto 29.38,53.59
step
label "Shatter_Sethrak_Spires"
click Sethrak Spire##278583+
|tip They look like large stone towers with lighting striking them on the ground around this area.
Shatter #2# Spires |q 49327/3 |goto 29.38,53.59
step
label "Slay_Faithless"
Kill Faithless enemies around this area
Slay #10# Faithless |q 50641/1 |goto 29.38,53.59
step
Run up the stairs |goto 28.83,54.05 < 15 |only if walking
talk Zissiah##128696
turnin Break Their Ranks##50641 |goto 27.20,53.85
turnin Push Them Back!##49327 |goto 27.20,53.85
step
talk Vorrik##129519
|tip Inside the building.
turnin A Powerful Prisoner##49334 |goto 27.62,52.57
accept The Keepers' Keys##49340 |goto 27.62,52.57
step
talk Vorrik##129519
|tip Inside the building.
Choose _<Give Vorrik Sulthis' Stone.>_
Watch the dialogue
Speak to Vorrik |q 49340/1 |goto 27.62,52.57
step
talk Vorrik##128694
|tip Upstairs inside the building.
turnin The Keepers' Keys##49340 |goto 27.12,52.56
accept The Missing Key##49662 |goto 27.12,52.56
step
Jump down here |goto 29.98,55.38 < 20 |only if walking
Follow the path |goto 30.74,57.24 < 30 |only if walking
talk Jenoh##135400
turnin A Lost Flute##50818 |goto 29.52,59.35
accept A Charming Tail##50817 |goto 29.52,59.35
accept Just a Nip##50979 |goto 29.52,59.35
stickystart "Collect_Atrivax_Gel_Samples"
step
Follow the path up |goto 30.04,61.18 < 20 |only if walking
use the Charming Flute##158883
|tip Use it near Strand Cobra Hatchlings around this area.
|tip They look like small friendly snakes on the ground around this area.
Send #15# Strand Cobras Home |q 50817/1 |goto 29.14,63.02
step
label "Collect_Atrivax_Gel_Samples"
Kill Atrivax enemies around this area
collect 10 Atrivax Gel Sample##159675 |q 50979/1 |goto 29.14,63.02
step
talk Jenoh##135400
turnin A Charming Tail##50817 |goto 29.52,59.35
turnin Just a Nip##50979 |goto 29.52,59.35
accept My Hungry Neighbor##50980 |goto 29.52,59.35
step
Follow the path up |goto 30.04,61.18 < 20 |only if walking
kill Territorial Hydra##140050 |q 50980/1 |goto 27.92,61.20
step
talk Jenoh##135400
turnin My Hungry Neighbor##50980 |goto 29.52,59.35
accept Keep It Down!##50834 |goto 29.52,59.35
step
Follow the path |goto 29.57,58.21 < 20 |only if walking
Continue following the path |goto 25.73,57.97 < 20 |only if walking
Continue following the path |goto 23.82,68.70 < 20 |only if walking
talk Merd Archfeld##135179
turnin Keep It Down!##50834 |goto 26.20,73.65
accept Calldown: Cleaner##50771 |goto 26.20,73.65
accept Get Us Some Beach##50775 |goto 26.20,73.65
accept Power Problems##52129 |goto 26.20,73.65
stickystart "Collect_Piles_Of_Sand"
step
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 27.72,74.72 |count 1
step
Follow the path |goto 27.42,73.41 < 20 |only if walking
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 27.21,71.43 |count 2
step
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 25.44,70.24 |count 3
step
Follow the path |goto 23.83,68.76 < 20 |only if walking
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 24.20,66.49 |count 4
step
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 25.42,68.07 |count 5
step
label "Collect_Piles_Of_Sand"
kill Siroccan##135006+
collect 20 Pile of Sand##158707 |q 50775/1 |goto 25.68,67.24
step
Follow the path up |goto 27.53,67.08 < 15 |only if walking
talk Rozzy##140046
|tip She walks around this area.
turnin Power Problems##52129 |goto 28.45,68.59
accept Charging the Batteries##51991 |goto 28.45,68.59
step
clicknpc Lectric Frequency Modulator##143377
Use the Lectric Frequency Modulator |q 51991/1 |goto 28.66,68.69
step
Kill enemies around this area
|tip Roll over them to kill them.
Feed Lashers to the Ranishu |q 51991/2 |goto 29.45,67.68
step
talk Rozzy##140046
|tip She walks around this area.
turnin Charging the Batteries##51991 |goto 28.44,68.60
step
talk Merd Archfeld##135179
turnin Calldown: Cleaner##50771 |goto 26.20,73.65
turnin Get Us Some Beach##50775 |goto 26.20,73.65
step
talk Nerin Solvis##135180
accept Awakened Elements##50812 |goto 26.19,73.70
step
Follow the path |goto 23.78,68.84 < 20 |only if walking
Investigate the Disturbance to the North |q 50812/1 |goto 25.57,64.62
step
kill Enraged Azermental##135349 |q 50812/2 |goto 25.79,64.85
step
Follow the path |goto 24.16,65.83 < 20 |only if walking
Follow the path |goto 23.79,68.75 < 20 |only if walking
talk Nerin Solvis##135180
turnin Awakened Elements##50812 |goto 26.19,73.70
step
Cross the bridge |goto 30.64,50.20 < 20 |only if walking
talk Izarn##128691
accept Building Our Arsenal##49333 |goto 32.31,48.39
accept Skycaller Slaughter##49335 |goto 32.31,48.39
step
talk Seriah##134611
accept Risky Rescue##50656 |goto 32.68,48.44
stickystart "Collect_Sethrak_Weapons"
stickystart "Kill_Faithless_Skycallers"
step
Follow the path |goto 32.58,47.21 < 20 |only if walking
Follow the path up |goto 35.67,45.39 < 20 |only if walking
click Sethrak Cage##273680+
|tip They look like metal cages on the ground around this area.
Rescue #4# Temple Defenders |q 50656/1 |goto 36.65,47.58
step
label "Collect_Sethrak_Weapons"
click Sethrak Weapon##278190
|tip They look weapons on racks on the ground around this area.
collect 20 Sethrak Weapon##153556 |q 49333/1 |goto 36.65,47.58
step
label "Kill_Faithless_Skycallers"
kill 6 Faithless Skycaller##128678 |q 49335/1 |goto 36.65,47.58
step
Follow the path |goto 35.49,45.15 < 20 |only if walking
talk Izarn##128691
turnin Building Our Arsenal##49333 |goto 32.31,48.39
turnin Skycaller Slaughter##49335 |goto 32.31,48.39
step
talk Seriah##134611
turnin Risky Rescue##50656 |goto 32.68,48.44
step
Follow the path |goto 34.41,45.39 < 30 |only if walking
kill Sandscout Vesarik##136596 |q 51165/1 |goto 42.34,46.09
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
|tip You may need help with this.
step
talk Vorrik##137970
turnin The Missing Key##49662 |goto 42.92,35.75
accept Infiltrating the Empire##50745 |goto 42.92,35.75
step
Run up the stairs |goto 42.91,33.89 < 15 |only if walking
talk Lugo the Windrider##135385
fpath Vorrik's Sanctum |goto 47.30,35.23
step
Enter the cave |goto 47.95,35.57 < 10 |walk
talk Vorrik##135172
|tip Inside the cave.
turnin Infiltrating the Empire##50745 |goto 47.96,36.39
accept Allies in Anarchy##49664 |goto 47.96,36.39
step
talk Meerah##135355
|tip Inside the cave.
accept The Little Ones##49667 |goto 47.99,36.51
step
talk Zareen##134613
|tip He walks around this area inside the building.
turnin WANTED: Sandscout Vesarik##51165 |goto 26.79,52.86
step
talk Nisha##135090
turnin Allies in Anarchy##49664 |goto 46.14,33.22
accept Ready to Riot##49665 |goto 46.14,33.22
accept Make Them Fear Us##49666 |goto 46.14,33.22
stickystart "Plant_Vulpera_Banners"
stickystart "Arm_Slaves"
step
kill Appraiser Versik##130396 |q 49667/1 |goto 48.47,32.19
step
label "Plant_Vulpera_Banners"
Kill Faithless enemies around this area
use the Vulpera Banners##158884
|tip Use it near their corpses.
Plant #12# Vulpera Banners |q 49666/1 |goto 47.60,32.31
step
label "Arm_Slaves"
click Faithless Weapon Rack##287006+
|tip They look like wooden racks with weapons on them on the ground around this area.
collect Faithless Scimitar##159470+ |n
talk Vulpera Slave##130342+
Choose _<Free the slave and give them a weapon to fight with.>_
|tip They look like friendly fox NPCs around this area.
|tip You must have a Faithless Scimitar to be able to arm them.
Arm #8# Slaves |q 49665/1 |goto 47.60,32.31
step
Follow the path up |goto 47.17,33.86 < 15 |only if walking
talk Nisha##135090
turnin Ready to Riot##49665 |goto 46.15,33.22
turnin Make Them Fear Us##49666 |goto 46.15,33.22
accept Crater Conquered##50746 |goto 46.15,33.22
step
talk Kiro##137981
accept Light Up the Gulch##49668 |goto 46.10,33.26
step
Follow the path up |goto 46.86,34.71 < 20 |only if walking
Enter the cave |goto 47.95,35.61 < 10 |walk
talk Vorrik##135172
|tip Inside the cave.
turnin Crater Conquered##50746 |goto 47.96,36.39
accept Diplomacy and Dominance##49141 |goto 47.96,36.39
accept Don't Drop It... Yet##50748 |goto 47.96,36.39
step
talk Meerah##135355
|tip Inside the cave.
turnin The Little Ones##49667 |goto 47.99,36.51
stickystart "Collect_Volatile_Lightning_Bombs"
step
Leave the cave |goto 47.94,35.55 < 10 |walk
Follow the path up |goto 49.68,34.95 < 15 |only if walking
click Suppression Spire##290707+
|tip They look like tall stone towers on the ground around this area.
Drain #6# Suppression Spires |q 49141/1 |goto 47.80,36.98
step
label "Collect_Volatile_Lightning_Bombs"
Kill Ridge enemies around this area
collect 6 Volatile Lightning Bomb##154896 |q 50748/1 |goto 47.80,36.98
step
Follow the path up |goto 46.40,37.48 < 10 |only if walking
click Faithless Trapper's Spear##278447
|tip At the top of the mountain.
accept Forced Grounding##49002 |goto 47.10,38.71
step
use the Faithless Trapper's Spear##154893
|tip Use it on Hrillik's Pterrordax.
|tip He's flying in the air nearby.
|tip He will appear on your minimap as a yellow dot.
kill Hrillik's Pterrordax##129856
kill Fangcaller Hrillik##129848 |q 49002/1 |goto 47.33,38.54
step
talk Vorrik##135110
turnin Diplomacy and Dominance##49141 |goto 47.20,39.15
turnin Don't Drop It... Yet##50748 |goto 47.20,39.15
accept Vengeance From Above##49003 |goto 47.20,39.15
step
talk Rakjan the Unbroken##129763
turnin Forced Grounding##49002 |goto 47.16,39.34
step
clicknpc Rakjan the Unbroken##138547
Mount Rakjan the Unbroken |q 49003/1 |goto 47.16,39.34
step
Kill Faithless enemies around this area
|tip Use the "Lightning Bomb" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #60# Faithless |q 49003/2 |goto 48.13,32.14
step
Destroy the Spire Barrier |q 49003/3 |goto 51.95,32.61
|tip Use the "Vorrik's Barrage" ability on your action bar.
step
talk Vorrik##135111
turnin Vengeance From Above##49003 |goto 51.95,28.69
accept Infuriating the Emperor##50750 |goto 51.95,28.69
accept Relics of Sethraliss##50752 |goto 51.95,28.69
stickystart "Purge_Faithless"
step
click Rebirth Creed##282451
collect Rebirth Creed##158722 |q 50752/1 |goto 49.89,28.50
step
click Skull of the First Skycaller##290755
collect Skull of the First Skycaller##160526 |q 50752/2 |goto 50.25,26.69
step
click Sethraliss Sight Stone##290756
collect Sethraliss Sight Stone##160527 |q 50752/3 |goto 48.24,26.15
step
click Blood of the Fallen Loa##290757
collect Blood of the Fallen Loa##160528 |q 50752/4 |goto 49.56,24.36
step
label "Purge_Faithless"
Kill Faithless enemies around this area
|tip Run near them.
|tip Run over the Lightning Orbs that appear on the ground to recharge the ability bar.
Purge #75# Faithless |q 50750/1 |goto 49.66,25.28
step
talk Vorrik##135111
turnin Infuriating the Emperor##50750 |goto 51.94,28.69
turnin Relics of Sethraliss##50752 |goto 51.94,28.69
step
Watch the dialogue
talk Vorrik##135111
accept The Fall of Emperor Korthek##50550 |goto 51.94,28.69
step
talk Vorrik##138411
Tell him _"Vorrik, I'm ready to face Emperor Korthek."_
Watch the dialogue
Speak with Vorrik |q 50550/1 |goto 51.95,28.69
step
kill Emperor Korthek##134601 |q 50550/2 |goto 51.96,27.25
step
Watch the dialogue
talk Vorrik##135390
turnin The Fall of Emperor Korthek##50550 |goto 51.98,27.72
accept Sanctuary Under Siege##50751 |goto 51.98,27.72
step
accept Skycaller Shutdown##50805 |goto 51.97,26.83
|tip You will accept this quest automatically.
|only if level < 120
step
Follow the path |goto 52.12,26.89 < 10 |only if walking
Run down the stairs |goto 52.91,26.41 < 7 |only if walking
Kill Faithless enemies around this area
click Lightning Focus##282461+
|tip They look like big blue crystals around this area.
click Skycaller Staff##292650+
|tip They look like small staves around this area.
Disrupt the Skycallers' Spire |q 50805/1 |goto 53.66,26.38
|only if level < 120
step
Jump down carefully here |goto 51.67,32.21 < 15 |only if walking
use Kiro's Torch##158896
|tip Use it on the Jars of Oil.
Burn the West Slave Market |q 49668/1 |goto 50.75,32.84
step
use Kiro's Torch##158896
|tip Use it on the Jars of Oil.
Burn the Central Slave Market |q 49668/2 |goto 52.32,33.05
step
use Kiro's Torch##158896
|tip Use it on the Jars of Oil.
Burn the East Slave Market |q 49668/3 |goto 53.46,33.22
step
click Tattered Note##278368
accept Tattered Note##49437 |goto 54.36,34.27
step
talk Kiro##135099
turnin Light Up the Gulch##49668 |goto 55.43,35.03
accept Unleash the Beasts##49669 |goto 55.43,35.03
accept Untame Slaughter##50757 |goto 55.43,35.03
stickystart "Slay_Faithless_3"
step
Follow the path up |goto 55.91,34.19 < 20 |only if walking
kill Shath'kar##129754 |q 49437/1 |goto 54.46,33.16
|tip He walks around this area.
step
Enter the cave |goto 55.84,32.17 < 15 |walk
kill Crawg Tamer Traskniss##135042 |q 49669/1 |goto 55.29,30.75
|tip Inside the cave.
step
label "Slay_Faithless_3"
Kill Faithless enemies around this area
Slay #8# Faithless |q 50757/1 |goto 56.26,33.81
step
talk Kiro##135099
turnin Unleash the Beasts##49669 |goto 55.43,35.03
turnin Untame Slaughter##50757 |goto 55.43,35.03
accept Free Ride##50749 |goto 55.43,35.03
step
clicknpc Battle Krolusk##135998
Steal the Battle Krolusk |q 50749/1 |goto 55.24,35.22
step
Follow the path |goto 59.07,35.80 < 20 |only if walking
talk Torka##134098
turnin The Tortaka Tribe##51772 |goto 62.03,22.33
accept They Came From The Sea##47577 |goto 62.03,22.33
accept Hidden Motives##47570 |goto 62.03,22.33
step
talk Churka##134128
accept Crab Trapping##47943 |goto 61.98,22.15
step
talk Scroll of Flight##135387
fpath Tortaka Refuge |goto 61.90,21.66
step
talk Tuka##138917
home Tortaka Refuge |goto 61.50,20.54
stickystart "Trap_Clampclaw_Clackers"
stickystart "Interrogate_Spirits"
step
kill Overseer Zarjish##134250
collect Invasion Plans##157866 |q 47570/1 |goto 64.57,22.94
step
label "Trap_Clampclaw_Clackers"
use the Crab Trap##151763
|tip Use it on Clampclaw Clackers around this area.
|tip They look like red crabs on the ground around this area.
Trap #8# Clampclaw Clackers |q 47943/1 |goto 64.41,24.14
step
label "Interrogate_Spirits"
Kill Stormcoil enemies around this area
use the Soulcaller Scroll##160585
|tip Use it on their corpses.
Interrogate #8# Spirits |q 47577/1 |goto 64.41,24.14
step
Follow the path up |goto 62.45,23.22 < 15 |only if walking
talk Churka##134128
turnin Crab Trapping##47943 |goto 61.98,22.15
step
talk Torka##134098
turnin They Came From The Sea##47577 |goto 62.03,22.33
turnin Hidden Motives##47570 |goto 62.03,22.33
accept The Elder's Wisdom##47571 |goto 62.03,22.33
step
talk Elder Kuppaka##123063
Tell him _"Torka asked me to deliver this to you."_
Deliver the Plans |q 47571/1 |goto 61.60,20.54
step
talk Elder Kuppaka##123063
turnin The Elder's Wisdom##47571 |goto 61.60,20.54
accept The Ruined Temple##47965 |goto 61.60,20.54
step
Follow the path |goto 59.63,19.40 < 30 |only if walking
talk Teekcha##134133
turnin The Ruined Temple##47965 |goto 58.55,11.82
accept Blessing of Kimbul##47581 |goto 58.55,11.82
step
talk Tulu##134134
accept Jungleweb Infestation##47573 |goto 58.50,11.73
accept All Webbed Up##47574 |goto 58.50,11.73
stickystart "Squish_Hatchlings"
stickystart "Free_Tortakas"
stickystart "Kill_Jungleweb_Crawlers"
step
click Statue of Eraka No Kimbul##281536
|tip Inside the building.
Tell it _"I seek the loa's blessing."_
Tell it _"Act with courage in all matters."_
Tell it _"An indomitable will."_
Tell it _"A life lived with honor."_
Tell it _"They see that they belong to nature."_
Complete the Trial of Wisdom |q 47581/1 |goto 61.14,15.14
step
clicknpc Ring of Tides##138797
|tip Inside the building.
collect Ring of Tides##160657 |q 47581/2 |goto 61.15,15.16
step
label "Squish_Hatchlings"
Squish #30# Hatchlings |q 47573/2 |goto 60.76,14.54
|tip They look like small baby spiders on the ground around this area.
|tip Walk over them.
step
label "Free_Tortakas"
kill Jungleweb Victim##137167+
|tip They look like squirming white cocoons on the ground around this area.
|tip Some will contain enemies.
Free #8# Tortakas |q 47574/1 |goto 60.76,14.54
step
label "Kill_Jungleweb_Crawlers"
kill 6 Jungleweb Crawler##123813 |q 47573/1 |goto 60.76,14.54
step
Run up the stairs |goto 60.35,13.98 < 15 |only if walking
talk Tulu##134134
turnin Jungleweb Infestation##47573 |goto 58.50,11.73
turnin All Webbed Up##47574 |goto 58.50,11.73
step
talk Teekcha##134133
turnin Blessing of Kimbul##47581 |goto 58.55,11.82
accept Offering for the Loa##47928 |goto 58.55,11.82
step
Enter the building |goto 57.45,11.57 < 10 |walk
talk Kimbul##123052
|tip Inside the building.
Tell him _"Great loa, this offering is from the Tortaka tribe."_
Deliver the Offering |q 47928/1 |goto 56.57,10.24
step
talk Kimbul##123052
|tip Inside the building.
turnin Offering for the Loa##47928 |goto 56.57,10.24
accept The Curse of Mepjila##47580 |goto 56.57,10.24
step
use the Spirit Mask##151826
Wear the Spirit Mask |q 47580/1
step
Leave the building |goto 57.45,11.56 < 10 |walk
kill Summoner Mepjila##131633 |q 47580/2 |goto 60.89,13.19
step
Run up the stairs |goto 60.35,13.98 < 15 |only if walking
Return to the Realm of the Living |nobuff 135462 |goto 57.55,11.73 |q 47580
step
talk Kimbul##123052
|tip Inside the building.
turnin The Curse of Mepjila##47580 |goto 56.57,10.24
accept Wrath of the Tiger##47576 |goto 56.57,10.24
step
talk Kimbul##123052
|tip Inside the building.
Tell him _"Send me to the battlefield."_
Speak with Kimbul |q 47576/1 |goto 56.57,10.24
step
Watch the dialogue
Reach the Battlefield |goto 61.89,13.15 < 7 |c |q 47576 |notravel
step
Kill Stormcoil enemies around this area
|tip Use the abilities on your action bar.
Slay #45# Naga |q 47576/2 |goto 62.10,14.35
step
Watch the dialogue
Return to the Temple of Kimbul |goto 56.66,10.38 < 7 |c |q 47576 |notravel
step
talk Kimbul##123052
|tip Inside the building.
turnin Wrath of the Tiger##47576 |goto 56.57,10.24
accept Mark of the Loa##47578 |goto 56.57,10.24
step
Run up the stairs |goto 56.36,9.94 < 5 |walk
click Altar of Kimbul##292535
|tip Inside the building.
Receive the Blessing |q 47578/1 |goto 56.27,9.80
step
talk Kimbul##123052
|tip Inside the building.
turnin Mark of the Loa##47578 |goto 56.57,10.24
step
Enter the cave |goto 47.94,35.59 < 10 |walk
talk Kiro##137982
|tip Inside the cave.
turnin Free Ride##50749 |goto 48.02,36.44
step
talk Meerah##135355
|tip Inside the cave.
turnin Tattered Note##49437 |goto 47.98,36.51
step
talk Vorrik##129588
|tip Upstairs inside the building.
turnin Sanctuary Under Siege##50751 |goto 27.10,52.56
accept Atul'Aman##50617 |goto 27.10,52.56
step
talk Vorrik##135625
turnin Atul'Aman##50617 |goto 43.05,68.21
accept The Abandoned Passage##50904 |goto 43.05,68.21
step
talk Vorrik##135625
Tell him _"I'm ready. Let's go find the others."_
Speak with Vorrik |q 50904/1 |goto 43.05,68.21
step
Enter the cave |goto Vol'dun/1 30.77,82.26 < 10 |walk
Follow the path |goto Vol'dun/1 37.29,77.10 < 10 |walk
clicknpc Entangling Tendrils##135695
|tip Inside the cave.
Find Kaja |q 50904/2 |goto Vol'dun/1 42.87,91.97
step
Follow the path |goto 46.61,79.79 < 10 |walk
clicknpc Entangling Tendrils##135695
|tip Inside the cave.
Find Rakera |q 50904/3 |goto 51.65,67.31
step
talk Warguard Rakera##134803
|tip Inside the cave.
turnin The Abandoned Passage##50904 |goto 55.62,36.28
accept Defeat Jakra'zet##50702 |goto 55.62,36.28
step
Watch the dialogue
kill General Jakra'zet##134846 |q 50702/1 |goto 67.86,35.89
|tip Inside the cave.
step
Watch the dialogue
talk Warguard Rakera##135133
|tip Upstairs inside the building.
turnin Defeat Jakra'zet##50702 |goto Vol'dun/0 27.09,52.64
|tip You will only be able to accept one of these quests.
|tip Pick any one, it doesn't matter.
accept Informing the Horde##50703 |goto 27.09,52.64 |or
accept Informing the Horde##52023 |goto 27.09,52.64 |or
accept Informing the Horde##52024 |goto 27.09,52.64 |or
step
talk Vorrik##129588
|tip Upstairs inside the building.
accept Temple of Sethraliss: Avatar of the Loa##50551 |goto 27.09,52.56
step
Enter the cave |goto 43.08,60.82 < 10 |walk
talk Rhan'ka##122723
|tip Inside the cave.
turnin A Strange Delivery##48327 |goto 43.51,60.21
accept Meet the Goldtusk Gang##47497 |goto 43.51,60.21
step
click Volni##271744
|tip Inside the cave.
Ask her _"Umm... Hello?"_
Meet Volni |q 47497/2 |goto 43.38,60.15
step
click Man'zul##271792
|tip Inside the cave.
Tell him _"Your eyepatch is very fearsome."_
Meet Man'zul |q 47497/3 |goto 43.64,59.93
step
click Wanted: Cobra Excursion Participants##287442
|tip Inside the cave.
accept WANTED: Cobra Excursion Participants##51164 |goto 43.65,59.95
step
click Grenja##271793
|tip Inside the cave.
Tell her _"Well met!"_
Meet Grenja |q 47497/1 |goto 43.65,60.34
step
talk Rhan'ka##122723
|tip Inside the cave.
turnin Meet the Goldtusk Gang##47497 |goto 43.51,60.21
accept Dirty Work for Dirty Drinks##47501 |goto 43.51,60.21
accept Rhan'ka's Lost Friend##47498 |goto 43.51,60.21
step
kill Sevriss##136593 |q 51164/1 |goto 39.90,59.16
|tip It looks like a large orange and white snake that slithers around this area.
|tip It will appear on your minimap as a yellow dot.
|tip You may need help with this.
stickystart "Collect_Caustic_Scorpid_Blood"
step
Follow the path up |goto 36.80,55.55 < 20 |only if walking
Enter the cave |goto 36.69,50.77 < 10 |walk
click Zulsan##271794
|tip Inside the cave.
collect Zulsan's Cracked Skull##150916|q 47498/1 |goto 36.92,50.45
step
label "Collect_Caustic_Scorpid_Blood"
Kill Deathsnap enemies around this area
collect 20 Caustic Scorpid Blood##150923 |q 47501/1 |goto 36.43,51.42
step
talk Rhan'ka##138749
turnin Dirty Work for Dirty Drinks##47501 |goto 37.41,51.10
turnin Rhan'ka's Lost Friend##47498 |goto 37.41,51.10
accept The Great Cranium Caper##47502 |goto 37.41,51.10
accept Gozda'kun the Slaver##47503 |goto 37.41,51.10
accept The Best Honey In Vol'dun##51717 |goto 37.41,51.10
step
talk Rikati##133833
turnin The Best Honey In Vol'dun##51717 |goto 40.45,55.35
accept Harvesting "Honey"##51718 |goto 40.45,55.35
step
Kill Bilewing enemies around this area
collect 12 Bilewing Stinger##157541 |q 51718/1 |goto 40.57,56.14
step
talk Rikati##133833
turnin Harvesting "Honey"##51718 |goto 40.45,55.35
accept Unconventional Aromatics##50328 |goto 40.45,55.35
step
click Volni##271795
collect Volni's Skull##151219 |q 47502/2 |goto 46.46,57.87
step
click Grenja##271793
collect Grenja's Skull##151220 |q 47502/3 |goto 47.39,58.09
step
kill Gozda'kun the Slaver##133924 |q 47503/1 |goto 47.33,58.81
step
click Man'zul##271792
collect Man'zul's Skull##151218 |q 47502/1 |goto 47.09,59.74
step
Enter the cave |goto 43.10,60.79 < 10 |walk
talk Rhan'ka##122723
|tip Inside the cave.
turnin The Great Cranium Caper##47502 |goto 43.70,60.24
turnin WANTED: Cobra Excursion Participants##51164 |goto 43.70,60.24
turnin Gozda'kun the Slaver##47503 |goto 43.70,60.24
turnin Unconventional Aromatics##50328 |goto 43.70,60.24
step
Watch the dialogue
talk Rhan'ka##122723
|tip Inside the cave.
accept Powerful Spirits##47638 |goto 43.53,60.39
step
click Boiled Scorpid Blood##271869
|tip Inside the cave.
Drink the Boiled Scorpid Blood |q 47638/1 |goto 43.51,60.43
step
Watch the dialogue
talk Rhan'ka##122723
|tip Inside the cave.
turnin Powerful Spirits##47638 |goto 43.51,60.21
step
talk Man'zul##123730
|tip Inside the cave.
accept Creative Marketing##48321 |goto 43.58,59.88
step
talk Zulsan##122725
|tip Inside the cave.
accept Restocking the Buffet##47564 |goto 43.71,60.22
step
talk Volni##123729
accept The Best Kill is Overkill##48320 |goto 42.75,61.07
stickystart "Collect_Whistlebloom_Juicy_Fruit"
stickystart "Slay_Whistlebloom_Predators"
step
kill Bloodcrest##133853
|tip He will jump down onto you.
collect Bloodcrest's Giant Rib##153593 |q 48321/1 |goto 42.52,63.69
step
label "Collect_Whistlebloom_Juicy_Fruit"
click Whistlebloom Juicy Fruit##278242+
|tip They look like green plants with purple bulbs on them on the ground around this area.
collect 10 Whistlebloom Juicy Fruit##151022 |q 47564/1 |goto 42.45,62.35
step
label "Slay_Whistlebloom_Predators"
Kill Whistlebloom enemies around this area
Slay #15# Whistlebloom Predators |q 48320/1 |goto 42.45,62.35
step
talk Volni##123729
turnin The Best Kill is Overkill##48320 |goto 42.75,61.07
step
talk Volni##129365
fpath Goldtusk Inn |goto 42.75,61.07
step
Enter the cave |goto 43.10,60.79 < 10 |walk
talk Zulsan##122725
|tip Inside the cave.
turnin Restocking the Buffet##47564 |goto 43.71,60.22
step
talk Man'zul##123730
|tip Inside the cave.
turnin Creative Marketing##48321 |goto 43.58,59.88
step
talk Rhan'ka##122723
|tip Inside the cave.
accept A Goldtusk Greeting##48322 |goto 43.51,60.21
step
Leave the cave |goto 43.10,60.79 < 10 |walk
clicknpc Bladeguard Tarkaj##129319
Resuscitate Bladeguard Tarkaj |q 48322/1 |goto 43.17,61.51
step
Enter the cave |goto 43.10,60.79 < 10 |walk
click Oasis Water##278276
|tip Inside the cave.
Hydrate Bladeguard Tarkaj |q 48322/2 |goto 43.50,60.41
step
click Sandy Tortillas##278277
|tip Inside the cave.
Feed Bladeguard Tarkaj |q 48322/4 |goto 43.39,60.09
step
click Box of Slightly Used Bandages##278278
|tip Inside the cave.
Bandage Bladeguard Tarkaj |q 48322/3 |goto 43.67,60.08
step
click Very Uncomfortable Bed##278279
|tip Inside the cave.
Show Bladeguard Tarkaj His Bed |q 48322/5 |goto 43.41,59.96
step
talk Rhan'ka##122723
|tip Inside the cave.
turnin A Goldtusk Greeting##48322 |goto 43.51,60.21
accept Ruins-Level Marketing##48840 |goto 43.51,60.21
step
Leave the cave |goto 43.07,60.86 < 10 |walk
Follow the path |goto 44.26,61.72 < 30 |only if walking
talk Kenzou##129453
turnin Ruins-Level Marketing##48840 |goto 45.39,46.18
accept Inconvenient Spirits##49001 |goto 45.39,46.18
step
talk Tacha##129450
accept They've Got Golems##48334 |goto 45.39,46.15
step
talk Omi##129451
accept Ranishu Are Resources##48332 |goto 45.37,46.16
stickystart "Collect_Ranishu_Stomachs"
stickystart "Kill_Tortured_Spirits"
step
kill Malfunctioning Golem##138923
|tip It walks around this area.
Reveal the Golem Power Source |q 48334/1 |goto 47.05,50.54
step
label "Collect_Ranishu_Stomachs"
Kill Ranishu enemies around this area
collect 25 Ranishu Stomach##154713 |q 48332/1 |goto 46.66,49.27
step
label "Kill_Tortured_Spirits"
kill 8 Tortured Spirit##129672 |q 49001/1 |goto 46.66,49.27
step
talk Kenzou##129453
turnin Inconvenient Spirits##49001 |goto 45.39,46.18
step
talk Tacha##129450
turnin They've Got Golems##48334 |goto 45.39,46.15
step
talk Omi##129451
turnin Ranishu Are Resources##48332 |goto 45.37,46.16
accept An Army's Arsenal##49139 |goto 45.37,46.16
step
talk Tacha##129450
accept Siphoning Souls##48331 |goto 45.39,46.15
step
talk Kenzou##129453
accept The Strongest Rope in Vol'dun##48335 |goto 45.39,46.18
stickystart "Siphon_Golem_Souls"
stickystart "Collect_Sandspinner_Silk"
step
kill Specter of Mugabu##129506 |q 49139/2 |goto 46.11,42.69
|tip Inside the building.
step
kill Specter of Jam'jen##129507 |q 49139/1 |goto 48.33,44.41
|tip Inside the building.
step
label "Siphon_Golem_Souls"
use the Salvaged Soulcatcher Totem##154051
kill Soul-Trapped Guardian##129436+
|tip Kill them near the totems you place on the ground.
Siphon #5# Golem Souls |q 48331/1 |goto 47.73,44.41
step
label "Collect_Sandspinner_Silk"
Kill Sandspinner enemies around this area
collect 6 Sandspinner Silk##153699 |q 48335/1 |goto 47.73,44.41
step
talk Kenzou##129453
turnin The Strongest Rope in Vol'dun##48335 |goto 45.39,46.18
step
talk Tacha##129450
turnin Siphoning Souls##48331 |goto 45.39,46.15
step
talk Omi##129451
turnin An Army's Arsenal##49139 |goto 45.37,46.15
accept Zandalari Treasure Trove##48330 |goto 45.37,46.15
step
Watch the dialogue
kill Zak'rajan the Undying##129434 |q 48330/1 |goto 47.27,41.67
|tip Inside the building.
step
talk Omi##129451
turnin Zandalari Treasure Trove##48330 |goto 45.37,46.15
step
Run up the stairs |goto Dazar'alor/0 51.77,19.10 < 15 |only if walking
Follow the path |goto Dazar'alor/0 45.23,23.90 < 15 |only if walking
talk B'wizati##127664
turnin Fond Farewells##49040 |goto Dazar'alor/0 40.35,19.10
step
Run down the stairs |goto 45.40,23.75 < 15 |only if walking
Enter the building |goto 49.96,42.12 < 15 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin Informing the Horde##50703 |goto Dazar'alor/2 41.38,72.34 |only if havequest(50703) or completedq(50703)
turnin Informing the Horde##52023 |goto Dazar'alor/2 41.38,72.34 |only if havequest(52023) or completedq(52023)
turnin Informing the Horde##52024 |goto Dazar'alor/2 41.38,72.34 |only if havequest(52024) or completedq(52024)
step
_Congratulations!_
You completed the Vol'dun leveling guide.
Click Here to Continue |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
|tip This will load the "Intro & Quest Zone Choice" guide.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\War Campaign",{
author="support@zygorguides.com",
description="This guide will walk you through the Horde War Campaign for Battle for Azeroth.",
condition_suggested=function() return level >= 110 and level <= 120 and not completedq(53003) and completedq(52131) end,
image=ZGV.DIR.."\\Guides\\Images\\WarCampaign",
},[[
step
Unlock the War Campaign |condition completedq(52131)
|tip Use the "Intro & Quest Zone Choice" guide to accomplish this.
step
talk Nathanos Blightcaller##120170
|tip Inside the building.
accept The War Campaign##52749 |goto Dazar'alor/2 40.18,71.70
step
talk Nathanos Blightcaller##135691
turnin The War Campaign##52749 |goto Zuldazar/0 58.44,62.67
accept The War Cache##52746 |goto Zuldazar/0 58.44,62.67
step
Gather #100# War Resources |q 52746/1
|tip Gather these mainly from treasure chests.
|tip You will also occasionally get some from completing quests as you level.
|tip Treasure chests appear in random locations in leveling zones.
|tip As you complete quests, look for silver treasure chest icons on your minimap.
|tip Also look for silver arrows around the edge of your minimap.
|tip These silver arrows point you to nearby treasure chests.
step
Click the Complete Quest Box:
turnin The War Cache##52746
accept Time for War##53333
step
talk Nathanos Blightcaller##135691
turnin Time for War##53333 |goto 58.44,62.67
step
talk Nathanos Blightcaller##135691
accept Mission from the Warchief##51770 |goto 58.44,62.67
step
Watch the dialogue
talk Garona Halforcen##138708
|tip She walks to this spot on the deck of the ship.
turnin Mission from the Warchief##51770 |goto Dazar'alor/0 51.69,99.68
accept War of Shadows##51771 |goto Dazar'alor/0 51.69,99.68
step
clicknpc Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
Complete "The Shadow War" Mission |q 51771/1 |goto 51.60,99.55
|tip This mission will take 2 hours to complete.
step
talk Garona Halforcen##138708
turnin War of Shadows##51771 |goto 51.69,99.68
accept Reinforcements##53079 |goto 51.69,99.68
step
talk Garona Halforcen##138708
Tell her _"I require reinforcements."_
|tip Recruit 1 Horde Troop.
Order Troops |q 53079/1 |goto 51.69,99.69
step
talk Garona Halforcen##138708
turnin Reinforcements##53079 |goto 51.69,99.68
step
Reach Level 112 |ding 112
|tip You must be at least level 112 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
accept The Kul Tiras Campaign##51803 |goto Zuldazar/0 58.44,62.67
step
click Kul Tiras Campaign
|tip You will only be able to accept one of these quests.
|tip Pick whichever one you like, it doesn't matter.
#include "Choose_Foothold_1"
step
label "Tiragarde_Sound_Foothold_1"
#include "Tiragarde_Sound_Foothold_Quests"
step
|next "Reach_Level_114"
step
label "Drustvar_Foothold_1"
#include "Drustvar_Foothold_Quests"
step
|next "Reach_Level_114"
step
label "Stormsong_Valley_Foothold_1"
#include "Stormsong_Valley_Foothold_Quests"
step
|next "Reach_Level_114"
step
label "Reach_Level_114"
Reach Level 114 |ding 114
|tip You must be at least level 114 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Eitrigg##143913
accept Adapting Our Tactics##53602 |goto Zuldazar/0 58.56,62.72
step
talk Eitrigg##143913
Tell him _"Show me our research options."_
Choose an Upgrade to Pursue |q 53602/1 |goto 58.56,62.72
step
talk Eitrigg##143913
turnin Adapting Our Tactics##53602 |goto 58.56,62.72
step
talk Nathanos Blightcaller##135691
turnin Deeper Into Kul Tiras##53050 |goto 58.44,62.67 |only if havequest(53050) or completedq(53050)
accept The Ongoing Campaign##51979 |goto 58.44,62.67
step
click Kul Tiras Campaign
|tip You will only be able to accept one of these quests.
|tip Pick whichever one you like, it doesn't matter.
#include "Choose_Foothold_2"
step
label "Tiragarde_Sound_Foothold_2"
#include "Tiragarde_Sound_Foothold_Quests"
step
|next "Reach_Level_116"
step
label "Drustvar_Foothold_2"
#include "Drustvar_Foothold_Quests"
step
|next "Reach_Level_116"
step
label "Stormsong_Valley_Foothold_2"
#include "Stormsong_Valley_Foothold_Quests"
step
|next "Reach_Level_116"
step
label "Reach_Level_116"
Reach Level 116 |ding 116
|tip You must be at least level 116 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
turnin The Azerite Advantage##53062 |goto Zuldazar/0 58.44,62.67 |only if havequest(53062) or completedq(53062)
accept Island Expedition##51870 |goto Zuldazar/0 58.44,62.67 |or |next "Start_Island_Expedition_Intro"
|tip
_NOTE:_
|tip You can only complete the Island Expedition introduction quest on one character.
|tip You may not be able to accept this quest.
Click Here If You Are Unable to Accept the Quest |confirm |q 51888 |future |or |next "Reach_Level_118"
step
label "Start_Island_Expedition_Intro"
talk Captain Rez'okun##123000
turnin Island Expedition##51870 |goto Dazar'alor/0 44.80,95.46
accept Island Expedition##51888 |goto Dazar'alor/0 44.80,95.46
step
talk Captain Rez'okun##123000
Tell him _"Let's go!"_
Use the Expedition Map |q 51888/1 |goto 44.80,95.46
step
Watch the dialogue
|tip The waypoint arrow does not work on island expedition maps.
|tip Use your world map and minimap to complete the scenario objectives.
|tip The scenario is simple to do, everything is nearby and easy to find.
Explore the Uncharted Island |q 51888/2
step
talk Captain Rez'okun##123000
turnin Island Expedition##51888 |goto Dazar'alor/0 44.80,95.45
step
label "Reach_Level_118"
Reach Level 118 |ding 118
|tip You must be at least level 118 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
turnin Pushing Our Influence##53056 |goto Zuldazar/0 58.44,62.67 |only if havequest(53056) or completedq(53056)
accept The Final Foothold##52444 |goto Zuldazar/0 58.44,62.67
step
click Kul Tiras Campaign
|tip Pick the last available quest.
#include "Choose_Foothold_3"
step
label "Tiragarde_Sound_Foothold_3"
#include "Tiragarde_Sound_Foothold_Quests"
|next "Reach_Level_120"
step
label "Drustvar_Foothold_3"
#include "Drustvar_Foothold_Quests"
|next "Reach_Level_120"
step
label "Stormsong_Valley_Foothold_3"
#include "Stormsong_Valley_Foothold_Quests"
|next "Reach_Level_120"
step
label "Reach_Level_120"
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
accept Uniting Zandalar##51916 |goto Zuldazar/0 58.44,62.67
step
Reach Friendly Reputation with the Zandalari Empire in Zuldazar |q 51916/1
|tip Use the "Zuldazar" leveling guide to accomplish this.
step
Reach Friendly Reputation with Talanji's Expedition in Nazmir |q 51916/2
|tip Use the "Nazmir" leveling guide to accomplish this.
step
Reach Friendly Reputation with the Voldunai in Vol'dun |q 51916/3
|tip Use the "Vol'dun" leveling guide to accomplish this.
step
talk Nathanos Blightcaller##135691
turnin Uniting Zandalar##51916 |goto 58.44,62.67
step
talk Nathanos Blightcaller##135691
accept Breaking Kul Tiran Will##51589 |goto 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Tiragarde Sound."_
Speak with Tattersail to Sail to Tiragarde Sound |q 51589/1 |goto 58.46,62.98
step
Travel to Tirigarde Sound |goto Tiragarde Sound/0 88.20,51.16 < 7 |noway |c |q 51589
step
talk Nathanos Blightcaller##138285
turnin Breaking Kul Tiran Will##51589 |goto 87.37,50.51
accept Into the Heart of Tiragarde##51590 |goto 87.37,50.51
step
Follow the path up |goto 86.91,51.69 < 20 |only if walking
Follow the path down |goto 83.45,50.05 < 30 |only if walking
Follow the road |goto 74.15,53.08 < 30 |only if walking
Follow the path up |goto 70.60,49.00 < 20 |only if walking
talk Nathanos Blightcaller##138285
turnin Into the Heart of Tiragarde##51590 |goto 71.19,50.91
accept Our Mountain Now##51591 |goto 71.19,50.91
step
Kill Roughneck enemies around this area
Slay #10# Roughneck Goons |q 51591/1 |goto 71.95,51.67
step
Watch the dialogue
talk Nathanos Blightcaller##138285
turnin Our Mountain Now##51591 |goto 72.02,51.85
accept Making Ourselves at Home##51592 |goto 72.02,51.85
step
talk Lilian Voss##138287
accept Bridgeport Investigation##51593 |goto 72.05,51.77
step
talk Michaela Reed##133861
fpath Timberfell Outpost |goto 72.18,51.91
stickystart "Collect_Lenghts_of_Chain"
stickystart "Collect_Sail_Canvas"
step
Watch the dialogue
|tip Inside the building.
Investigate the Watchpost Cabin |q 51593/2 |goto 73.45,48.26
step
Jump down here |goto 74.26,49.34 < 15 |only if walking
Watch the dialogue
Investigate the Harbor Terrace |q 51593/1 |goto 74.63,49.68
step
Watch the dialogue
|tip Watch out for the Bridgeport Guards that patrol around this area.
Investigate the Outdoor Workshop |q 51593/3 |goto 75.31,51.13
step
label "Collect_Lenghts_of_Chain"
click Anchor Chains##290708+
|tip They look like brown rectangular boxes on the ground around this area.
click Anchor Chain+
|tip They look like metal chains with anchors hanging from them on the backs of boats and on the docks around this area.
collect 7 Length of Chain##160511 |q 51592/1 |goto 75.31,51.11
step
label "Collect_Sail_Canvas"
click Crate of Canvas##290709+
|tip They look like brown square boxes on the ground around this area.
click Canvas Bolt##290710+
|tip They look like purple pieces of fabric wrapped around planks of wood on the ground around this area.
collect 7 Sail Canvas##160512 |q 51592/2 |goto 75.31,51.11
step
talk Nathanos Blightcaller##138285
turnin Making Ourselves at Home##51592 |goto 72.02,51.85
step
talk Lilian Voss##138287
turnin Bridgeport Investigation##51593 |goto 72.05,51.77
accept Explosives in the Foundry##51594 |goto 72.05,51.77
step
talk Lilian Voss##138287
turnin Explosives in the Foundry##51594 |goto 77.50,49.93
accept Explosivity##51595 |goto 77.50,49.93
step
Test the Bomb's Explosiveness |q 51595/1 |goto 77.69,49.78
|tip Use the "Torch" ability.
|tip It appears as a button on the screen.
step
talk Lilian Voss##138287
turnin Explosivity##51595 |goto 77.50,49.93
accept Ammunition Acquisition##51596 |goto 77.50,49.93
accept Gunpowder Research##51597 |goto 77.50,49.93
accept A Bit of Chaos##51598 |goto 77.50,49.93
stickystart "Slay_Ashvane_Workers"
stickystart "Collect_Ashvane_Explosives"
step
kill Taskmaster Williams##123264
|tip He walks around this area inside the building.
collect Gunpowder Manufacturing Guide##160552 |q 51597/2 |goto 79.11,46.94
step
Run up the stairs |goto 80.38,49.03 < 15 |only if walking
kill Forgemaster Farthing##134328
|tip He walks around this area.
collect Ashvane Explosives Formula##160553 |q 51597/1 |goto 82.18,48.63
step
label "Slay_Ashvane_Workers"
Kill enemies around this area
Slay #15# Ashvane Workers |q 51598/1 |goto 81.78,49.02
step
label "Collect_Ashvane_Explosives"
click Gunpowder Crate##290776+
|tip They look like open brown crates with bombs in them on the ground around this area.
collect 8 Ashvane Explosives##160555 |q 51596/1 |goto 81.78,49.02
step
talk Lilian Voss##138287
turnin Ammunition Acquisition##51596 |goto 77.50,49.92
turnin Gunpowder Research##51597 |goto 77.50,49.92
turnin A Bit of Chaos##51598 |goto 77.50,49.92
accept Death Trap##51599 |goto 77.50,49.92
step
click Gunpowder Crate##290776+
Place #8# Gunpowder Crates |q 51599/1 |goto 74.24,52.93
step
talk Lilian Voss##138287
turnin Death Trap##51599 |goto 77.01,49.19
accept The Bridgeport Ride##51601 |goto 77.01,49.19
step
clicknpc Stolen Horse##138552
Ride the Stolen Horse |invehicle |goto 76.99,49.22 |q 51601
stickystart "Ride_Past_Captain_Amalia_Stone"
step
Follow the path |goto 76.44,48.96 < 20 |only if walking
Ride Past #10# Bridgeport Guards |q 51601/1 |goto 75.66,50.99
|tip Run next to guards around this area.
step
label "Ride_Past_Captain_Amalia_Stone"
Ride Past Captain Amalia Stone |q 51601/2 |goto 75.63,49.85
|tip You will likely ride near her while running around this area.
step
Cross the bridge |goto 75.65,51.79 < 20 |only if walking
Watch the dialogue
Complete the Bridgeport Ride |q 51601/3 |goto 74.49,53.29
step
talk Nathanos Blightcaller##138285
turnin The Bridgeport Ride##51601 |goto 72.02,51.85
step
Follow the road |goto 74.31,56.23 < 30 |only if walking
Follow the path |goto 77.34,64.11 < 30 |only if walking
Follow the path |goto 78.23,69.25 < 30 |only if walking
Follow the path down |goto 82.39,76.03 < 30 |only if walking
Follow the path up |goto 85.21,77.56 < 20 |only if walking
Cross the bridge |goto 85.75,80.74 < 15 |only if walking
talk Skinny Tim##128224
fpath Castaway Point |goto 86.42,80.81
step
Follow the path |goto 85.19,87.11 < 30 |only if walking
Follow the path |goto 83.76,88.69 < 30 |only if walking
Follow the path up |goto 78.82,86.02 < 20 |only if walking
talk Rodrigo##129098
|tip At the top of the tower.
fpath Freehold |goto 77.04,82.89
step
Cross the water |goto 68.22,46.97 < 30 |only if walking
Follow the path up |goto 48.34,36.47 < 20 |only if walking |notravel
Follow the road |goto 49.19,30.83 < 30 |only if walking
Follow the path up |goto 45.92,28.07 < 20 |only if walking
Follow the path |goto 43.53,24.03 < 20 |only if walking
Follow the path up |goto 41.29,23.13 < 20 |only if walking
talk Kip Wingnut##142740
fpath Waning Glacier |goto 39.68,18.55
step
talk Bertram##135025
fpath Whitegrove Chapel |goto Drustvar/0 25.75,16.56
step
Follow the path |goto Stormsong Valley/0 48.08,40.36 < 30 |only if walking
Follow the road |goto Stormsong Valley/0 49.62,50.56 < 30 |only if walking
Follow the path up |goto Stormsong Valley/0 54.95,50.89 < 20 |only if walking
talk Kudra Windblade##134848
fpath Diretusk Hollow |goto Stormsong Valley/0 54.27,49.35
step
Follow the road |goto 52.34,52.86 < 30 |only if walking
Follow the path |goto 40.35,49.02 < 30 |only if walking
talk Scroll of Flight##137318
fpath Seekers Vista |goto 40.02,37.32
step
Follow the path up |goto 66.54,57.22 < 30 |only if walking
Follow the path up |goto 72.48,61.76 < 20 |only if walking
Follow the path up |goto 74.81,64.70 < 20 |only if walking
talk Chulani Cloudbreath##134850
fpath Ironmaul Overlook |goto 75.87,64.14
step
Follow the path up |goto 70.81,28.28 < 20 |only if walking
Run up the stairs |goto 72.02,29.79 < 15 |only if walking
Enter the building |goto 74.34,30.61 < 15 |only if walking
Leave the building |goto 74.42,28.32 < 15 |only if walking
talk Dark Ranger Allanah##134853
fpath Shrine of the Storm |goto 77.90,24.06
step
Reach #4500# Reputation into Friendly with The Honorbound |condition repval('The Honorbound','Friendly')>=4500
|tip Use the "BFA World Quests Guide" to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Nathanos Blightcaller##135691
|tip On the deck of the ship.
turnin Operation: Grave Digger##53065 |goto Zuldazar/0 58.44,62.67 |only if havequest(53065) or completedq(53065)
accept A Stroll Through a Cemetery##51784 |goto Zuldazar/0 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Drustvar."_
Speak with Tattersail to Sail to Drustvar |q 51784/1 |goto 58.46,62.99
step
Follow the path |goto Drustvar/0 37.92,33.73 < 30 |only if walking
Follow the road |goto Drustvar/0 46.26,35.48 < 30 |only if walking
Follow the road |goto Drustvar/0 47.99,30.41 < 30 |only if walking
Meet Nathanos at Barrowknoll Cemetery |q 51784/2 |goto Drustvar/0 61.37,51.10
step
talk Nathanos Blightcaller##139061
turnin A Stroll Through a Cemetery##51784 |goto 61.37,51.09
accept Examining the Epitaphs##51785 |goto 61.37,51.09
accept State of Unrest##51786 |goto 61.37,51.09
step
talk Lilian Voss##139062
accept Our Lot in Life##51787 |goto 61.32,51.03
stickystart "Collect_Graveblooms"
stickystart "Kill_Enraged_Spirits"
step
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 61.11,48.87 |count 1
step
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 61.91,47.86 |count 2
step
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 59.55,47.30 |count 3
step
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 60.32,44.97 |count 4
step
label "Collect_Graveblooms"
click Gravebloom##273537+
|tip They look like small plants with blue flowers and purple leaves on the ground around this area.
collect 10 Gravebloom##152480 |q 51787/1 |goto 60.67,45.44
step
label "Kill_Enraged_Spirits"
kill 8 Enraged Spirit##126264 |q 51786/1 |goto 60.67,45.44
step
talk Nathanos Blightcaller##139061
turnin Examining the Epitaphs##51785 |goto 61.37,51.10
turnin State of Unrest##51786 |goto 61.37,51.10
step
talk Lilian Voss##139062
turnin Our Lot in Life##51787 |goto 61.32,51.03
step
talk Nathanos Blightcaller##139061
accept The Crypt Keeper##51788 |goto 61.37,51.09
step
kill Brutus Thornton##139136
|tip He walks around this area.
collect Valentine's Key##160736 |q 51788/1 |goto 59.17,49.19
step
talk Nathanos Blightcaller##139061
turnin The Crypt Keeper##51788 |goto 61.37,51.09
accept What Remains of Marshal M. Valentine##51789 |goto 61.37,51.09
step
click Crypt Door##278295
Open the Crypt Door |q 51789/1 |goto 61.11,48.87
step
Kill the enemies that attack in waves
kill Echo of Marshal M. Valentine##140124 |q 51789/2 |goto 61.13,48.63
step
Watch the dialogue
Search the Crypt |q 51789/3 |goto 61.11,48.87
step
Watch the dialogue
Uncover Valentine's Log |q 51789/4 |goto 61.11,48.87
step
click Valentine's Log##291277
|tip Inside the building.
collect Valentine's Log##160939 |q 51789/5 |goto 61.11,48.99
step
talk Nathanos Blightcaller##140105
turnin What Remains of Marshal M. Valentine##51789 |goto 61.18,48.74
step
Reach #3000# Reputation into Honored with The Honorbound |condition repval('The Honorbound','Honored')>=3000
|tip Use the "BFA World Quests Guide" to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Nathanos Blightcaller##135691
turnin Operation: Water Wise##53066 |goto Zuldazar/0 58.44,62.67 |only if havequest(53066) or completedq(53066)
accept Tracking Tidesages##51797 |goto Zuldazar/0 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Stormsong Valley."_
Speak with Tattersail to Sail to Stormsong Valley |q 51797/1 |goto 58.46,62.99
step
Follow the path up |goto Stormsong Valley/0 51.44,27.77 < 20 |only if walking
Enter the building |goto Stormsong Valley/0 51.78,33.56 < 10 |walk
talk Rexxar##138876
|tip Inside the building.
turnin Tracking Tidesages##51797 |goto Stormsong Valley/0 52.13,33.65
accept No Price Too High##51798 |goto Stormsong Valley/0 52.13,33.65
step
Follow the path |goto 52.52,32.85 < 20 |only if walking
talk Rexxar##139102
Ask him _"Any clues on where we can find a tidesage?"_
Watch the dialogue
Help Rexxar Locate a Tidesage |q 51798/1 |goto 59.30,30.18
step
talk Thomas Zelling##139098
Tell him _"I'm here to ask for your help, not to kill you."_
Watch the dialogue
Locate the Tidesage |q 51798/2 |goto 62.64,31.87
step
talk Lilian Voss##139101
turnin No Price Too High##51798 |goto 62.65,31.95
accept They Will Know Fear##51805 |goto 62.65,31.95
step
talk Thomas Zelling##139098
accept Commander and Captain##51818 |goto 62.64,31.88
step
talk Rexxar##139102
accept Scattering Our Enemies##51819 |goto 62.69,31.81
stickystart "Terrorize_Civilians"
step
Follow the path up |goto 59.50,36.39 < 15 |only if walking
Enter the building |goto 58.71,36.14 < 10 |walk
kill Commander Augustine##139143
|tip Inside the building.
collect Book of Forbidden Magics##160745 |q 51818/2 |goto 58.24,35.52
step
Leave the building |goto 58.72,36.16 < 10 |walk
kill Captain Malia##139133 |q 51818/1 |goto 62.69,39.54
step
label "Terrorize_Civilians"
use the Val'kyr Horn##160901
|tip Use it next to NPCs around this area.
|tip Only the non-hostile ones will count for this quest goal.
Terrorize #20# Civilians |q 51805/1 |goto 60.94,39.67
step
label "Slay_Alliance_And_Kul_Tiran_Forces"
Kill enemies around this area
Slay #10# Alliance and Kul Tiran Forces |q 51819/1 |goto 60.94,39.67
step
talk Rexxar##139102
turnin Scattering Our Enemies##51819 |goto 62.68,31.82
step
talk Thomas Zelling##139098
turnin Commander and Captain##51818 |goto 62.65,31.88
step
talk Lilian Voss##139101
turnin They Will Know Fear##51805 |goto 62.65,31.94
step
talk Thomas Zelling##139098
accept Zelling's Potential##51830 |goto 62.64,31.88
step
Kill enemies around this area
Fill the Void Font within Port Fogtide |q 51830/1 |goto 67.01,40.77
|tip It will appear as a blue bar on the screen.
step
Activate the Empowered Essence within Port Fogtide |q 51830/2 |goto 66.93,41.49
|tip Use the "Activate Void Essence" ability.
|tip It appears as a button on the screen.
step
Return to the Tidebreak Foothills |goto 64.76,38.20 < 30 |c |q 51830
step
talk Thomas Zelling##139098
turnin Zelling's Potential##51830 |goto 62.64,31.87
step
talk Lilian Voss##139101
accept Whatever Will Be##51837 |goto 62.65,31.94
step
talk Thomas Zelling##139098
Tell him _"Zelling, we need you to locate Marshal Valentine's corpse for us."_
Watch the dialogue
Speak to Thomas Zelling |q 51837/1 |goto 62.64,31.88
step
talk Lilian Voss##139101
turnin Whatever Will Be##51837 |goto 62.65,31.94
accept To Be Forsaken##52122 |goto 62.65,31.94
step
talk Lilian Voss##139991
Tell her _"Watch the encounter between Zelling and his family."_
Watch the dialogue
Find Thomas Zelling |q 52122/1 |goto 59.93,30.42
step
talk Nathanos Blightcaller##135691
turnin To Be Forsaken##52122 |goto Zuldazar/0 58.44,62.67
step
Reach #7500# Reputation into Honored with The Honorbound |condition repval('The Honorbound','Honored')>=7500
|tip Use the "BFA World Quests Guide" to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Nathanos Blightcaller##135691
turnin Operation: Bottom Feeder##53067 |goto Zuldazar/0 58.44,62.67 |only if havequest(53067) or completedq(53067)
accept Journey to the Middle of Nowhere##52764 |goto Zuldazar/0 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Take us to Marshal Valentine's shipwreck, in the middle of the Great Sea."_
Speak with Tattersail to Sail to the Great Sea |q 52764/1 |goto 58.46,62.99
step
talk Nathanos Blightcaller##141644
turnin Journey to the Middle of Nowhere##52764 |goto The Great Sea/0 40.29,67.27
accept Deep Dive##52765 |goto The Great Sea/0 40.29,67.27
step
talk Hobart Grapplehammer##141645
Tell him _"Yes, I'm paying attention."_
Speak with Hobart to Dive into the Great Sea |q 52765/1 |goto 41.63,67.62
step
Reach the Ocean Floor |q 52765/2 |goto 41.40,68.24
step
Test Your Headlamp |q 52765/3 |goto 41.40,68.24
|tip Use the "Headlamp" ability.
|tip It appears as a button on the screen.
step
Click the Completed Quest Box:
turnin Deep Dive##52765
accept Seafloor Shipwreck##52766
step
Find the Shipwreck |q 52766/1 |goto 47.02,69.07
step
Click the Completed Quest Box:
turnin Seafloor Shipwreck##52766
accept Checking Dog Tags##52767
step
clicknpc Drowned Sailor##141672
|tip Underwater.
Find the Ship's Captain |q 52767/1 |goto 48.66,70.79
step
Click the Completed Quest Box:
turnin Checking Dog Tags##52767
accept The Sunken Graveyard##52768
step
Find Another Shipwreck |q 52768/1 |goto 54.81,51.15
step
Click the Completed Quest Box:
turnin The Sunken Graveyard##52768
accept Captain By Captain##52769
stickystart "Accept_Biolumi_Nuisance"
stickystart "Slay_Bioluminescent_Creatures"
step
clicknpc Drowned Sailor##141673
|tip Floating higher up, near the top of the sunken ship mast.
Identify the First Sea Captain |q 52769/1 |goto 54.50,49.66
step
clicknpc Drowned Sailor##141674
Identify the Second Sea Captain |q 52769/2 |goto 56.44,45.03
step
clicknpc Drowned Sailor##141795
Identify the Third Sea Captain |q 52769/3 |goto 66.52,42.29
step
Click the Completed Quest Box:
turnin Captain By Captain##52769
step
label "Accept_Biolumi_Nuisance"
accept Biolumi-Nuisance##52770
|tip You will eventually automatically accept this quest.
step
label "Slay_Bioluminescent_Creatures"
Kill enemies around this area
Slay #10# Bioluminescent Creatures |q 52770/1 |goto 59.93,50.68
|only if havequest(52770) or completedq(52770)
step
Click the Completed Quest Box:
turnin Biolumi-Nuisance##52770
accept The Undersea Ledge##52772
step
Find the Shipwreck on the Ledge |q 52772/1 |goto 68.42,54.26
step
Click the Completed Quest Box:
turnin The Undersea Ledge##52772
accept Water-Breathing Dragon##52773
step
kill Daenistrasz##141677 |q 52773/1 |goto 68.38,55.07
step
Click the Completed Quest Box:
turnin Water-Breathing Dragon##52773
accept Grab and Go##52774
step
clicknpc Drowned Sailor##141686
Choose _<Gather Marshal Valentine's body.>_
Gather Marshal M. Valentine's Body |q 52774/1 |goto 68.25,55.58
step
clicknpc Drowned Sailor##141687
Choose _<Gather Derek Proudmoore's Body>_
Gather the Other Sailor's Body |q 52774/2 |goto 68.71,55.95
step
talk Lilian Voss##141654
|tip On the deck of the ship.
|tip Click the Rope Ladder on the side of the boat to board the ship.
|tip The Rope Ladder is at the surface of the water.
accept Siege of Boralus##53121 |goto 41.56,66.49
step
talk Nathanos Blightcaller##141644
|tip Downstairs inside the ship.
turnin Grab and Go##52774 |goto 40.12,68.00
accept With Prince in Tow##52978 |goto 40.12,68.00
step
talk Dread-Admiral Tattersail##141651
|tip At the top of the ship.
Tell her _"Let's return to Zuldazar."_
Speak with Dread-Admiral Tattersail to Return |q 52978/1 |goto 39.91,68.30
step
talk Nathanos Blightcaller##135691
turnin With Prince in Tow##52978 |goto Zuldazar/0 58.44,62.67
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound')>=Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Nathanos Blightcaller##135691
turnin Operation: Hook and Line##53068 |goto Zuldazar/0 58.44,62.67 |only if havequest(53068) or completedq(53068)
accept When a Plan Comes Together##52183 |goto Zuldazar/0 58.44,62.67
step
talk Nathanos Blightcaller##135691
Tell him _"Tell me your plan, Nathanos."_
Watch the dialogue
Listen to Nathanos' Plan |q 52183/1 |goto 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Tiragarde Sound."_
Speak with Tattersail to Sail to Tiragarde Sound |q 52183/2 |goto 58.46,62.99
step
Run up the stairs |goto Tiragarde Sound/0 87.62,51.39 < 15 |only if walking
Meet Nathanos in Plunder Harbor |q 52183/3 |goto Tiragarde Sound/0 87.04,52.86
step
talk Nathanos Blightcaller##140485
|tip Inside the cave.
turnin When a Plan Comes Together##52183 |goto 86.91,53.14
accept The Bulk of the Guard##52186 |goto 86.91,53.14
step
talk Captain Amalia Stone##140484
|tip Inside the cave.
accept Old Colleagues##52187 |goto 86.96,53.11
step
talk Hobart Grapplehammer##141010 |goto 87.23,52.72
Tell him _"Send me to the flagship."_
Fly to the Flagship |goto 92.18,49.79 < 10 |noway |c |q 52187
stickystart "Kill_Proudmoore_Guards"
step
kill Guard-Commander Trunksal##141122 |q 52187/2 |goto 92.09,49.65
|tip Downstairs, on the bottom floor, inside the ship.
step
Follow the path |goto 91.45,48.44 < 5 |walk
kill Captain Gastrod##141065 |q 52187/1 |goto 91.40,47.94
|tip Upstairs inside the ship.
step
talk Hobart Grapplehammer##141010 |goto 92.19,49.85
|tip On the deck of the ship.
Tell him _"Send me to the smaller ship."_
Fly to the Smaller Ship |goto 91.60,52.11 < 10 |noway |c |q 52187
step
kill Helmsman Miria##141099 |q 52187/3 |goto 92.27,51.12
|tip At the top of the ship.
step
label "Kill_Proudmoore_Guards"
kill 12 Proudmoore Guard##141035 |q 52186/1 |goto 92.06,51.38
step
Enter the cave |goto 87.05,52.86 < 15 |only if walking
talk Captain Amalia Stone##140484
|tip Inside the cave.
turnin Old Colleagues##52187 |goto 86.96,53.12
step
talk Nathanos Blightcaller##140485
|tip Inside the cave.
turnin The Bulk of the Guard##52186 |goto 86.91,53.14
accept A Well Placed Portal##52185 |goto 86.91,53.14
step
click Portal to Boralus
|tip Inside the building.
Take the Portal to Boralus |q 52185/1 |goto 86.94,52.47
step
talk Thomas Zelling##140487
|tip Inside the building.
turnin A Well Placed Portal##52185 |goto Boralus/0 71.19,84.76
accept Relics of Ritual##52184 |goto Boralus/0 71.19,84.76
accept Forfeit Souls##52189 |goto Boralus/0 71.19,84.76
accept Tidesage Teachings##52188 |goto Boralus/0 71.19,84.76
stickystart "Collect_Tomes_Of_Tidesage_Research"
stickystart "Slay_Tidesages"
step
Follow the path |goto 70.16,85.55 < 10 |walk
kill Archivist Medira##140606
collect Compass of Clarity##161336 |q 52184/1 |goto 67.69,81.73
step
kill Brother Marrin##140572
collect Curio of the Depths##161335 |q 52184/2 |goto 64.01,80.12
step
kill Unleashed Tidebreaker##140586
|tip Kill the enemies channeling on him to be able to attack him.
collect Key of the Sea##161334 |q 52184/3 |goto 59.66,86.44
step
label "Collect_Tomes_Of_Tidesage_Research"
click Tome of Tidesage Research+
|tip They look like thick books sitting on objects on the ground around this area.
collect Tome of Tidesage Research##162106 |q 52188/1 |goto 64.60,79.51
step
label "Slay_Tidesages"
Kill enemies around this area
|tip Boralus Militia will not count for this quest goal.
Slay #8# Tidesages |q 52189/1 |goto 64.60,79.51
step
Run down the stairs |goto 70.16,85.54 < 10 |walk
talk Thomas Zelling##140487
|tip Inside the building.
turnin Relics of Ritual##52184 |goto 71.18,84.77
turnin Forfeit Souls##52189 |goto 71.18,84.77
turnin Tidesage Teachings##52188 |goto 71.18,84.77
accept Gaining the Upper Hand##52190 |goto 71.18,84.77
step
talk Thomas Zelling##140487
|tip Inside the building.
Talk to Zelling |q 52190/1 |goto 71.18,84.77
step
Follow the path |goto 70.15,85.52 < 10 |walk
Enter the building |goto 70.66,82.23 < 10 |walk
click Key of the Sea
|tip Downstairs inside the building.
Begin the Ritual |q 52190/2 |goto 71.16,82.59
step
Watch the dialogue
|tip Downstairs inside the building.
Kill the enemies that attack in waves
Protect Zelling |q 52190/3 |goto 71.14,82.12
step
click Abyssal Scepter
|tip Downstairs inside the building.
collect Abyssal Scepter##162579 |q 52190/4 |goto 71.16,82.62
step
_Next to you:_
talk Thomas Zelling
turnin Gaining the Upper Hand##52190
accept Return to the Harbor##52990
step
Leave the building |goto 70.70,82.25 < 5 |walk
Run down the stairs |goto 70.15,85.52 < 10 |walk
click Portal to Plunder Harbor
|tip Downstairs inside the building.
Take the Portal to Plunder Harbor |q 52990/1 |goto 70.87,84.34
step
Enter the cave |goto Tiragarde Sound/0 87.05,52.85 < 10 |walk
talk Nathanos Blightcaller##140485
|tip Inside the cave.
turnin Return to the Harbor##52990 |goto Tiragarde Sound/0 86.91,53.15
accept Life Held Hostage##52191 |goto Tiragarde Sound/0 86.91,53.15
step
Watch the dialogue
|tip Follow Nathanos Blightcaller as he walks.
Walk with Nathanos |q 52191/1 |goto 87.21,52.12
step
kill General Cadarin##141808 |q 52191/2 |goto 87.52,52.12
step
Enter the cave |goto 87.04,52.86 < 15 |walk
talk Nathanos Blightcaller##140485
|tip Inside the cave.
turnin Life Held Hostage##52191 |goto 86.91,53.14
accept The Aid of the Tides##52192 |goto 86.91,53.14
step
talk Nathanos Blightcaller##140485
|tip Inside the cave.
Tell him _"Let's get out of here."_
Speak with Nathanos |q 52192/1 |goto 86.91,53.14
step
talk Nathanos Blightcaller##135691
turnin The Aid of the Tides##52192 |goto Zuldazar/0 58.44,62.67
accept A Cycle of Hatred##53003 |goto Zuldazar/0 58.44,62.67
step
talk Lilian Voss##141961
accept Champion: Lilian Voss##52861 |goto 58.41,62.73
step
Enter the building |goto Orgrimmar/1 49.92,75.64 < 10 |walk
talk Lady Sylvanas Windrunner##134711
|tip Inside the building.
turnin A Cycle of Hatred##53003 |goto Orgrimmar/1 48.33,71.16
step
_Congratulations!_
You completed the War Campaign.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Warfronts\\Warfronts Introduction Quests",{
author="support@zygorguides.com",
description="This guide will walk you through the Warfronts Introduction quests for Battle for Azeroth.",
condition_suggested=function() return level == 120 and not completedq(53212) end,
},[[
step
Reach Level 120 |ding 120
|tip Use the "Intro & Quest Zone Choice" and Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(52450)
|tip Use the "War Campaign" guide to accomplish this.
step
talk Throk##138949
turnin The Warfront Looms##53207 |goto Dazar'alor/0 52.93,94.49 |only if havequest(53207) or completedq(53207)
accept To the Front##53208 |goto Dazar'alor/0 52.93,94.49
step
Does the Horde Currently Control the Warfront?
|tip The following quests change slightly, depending if your faction controls the warfront or not.
Yes |confirm |or |next "Horde_Controls_Warfront" |q 53212
No |confirm |or |next "Horde_Doesnt_Control_Warfront" |q 53212
step
label "Horde_Controls_Warfront"
talk Druza Netherfang##143388 |goto Dazar'alor/0 51.83,94.46
Tell her _"Send me to Arathi Highlands!"_
Teleport to Ar'gorok |goto Arathi Highlands/0 27.40,29.97 < 10 |noway |c |q 53208
step
talk Wistel Silversnitch##143019
turnin To the Front##53208 |goto 27.53,31.84
accept Touring the Front##53210 |goto 27.53,31.84
step
talk Flightgineer Krazzle##143323
Tell him _"Wistel said you could give me a tour of the area."_
Begin Riding the Rocket |invehicle |goto 25.88,29.61 |q 53210
step
Watch the dialogue
View the Battleground with Flightgineer Krazzle |q 53210/3 |goto 25.68,35.79
step
Watch the dialogue
Return to the Ground |outvehicle |goto 25.89,29.97 |q 53210
step
Enter the mine |goto 33.80,36.64 < 10 |walk
Follow the path down |goto 34.23,35.03 < 10 |walk
Run down the stairs |goto 32.90,35.40 < 10 |walk
talk Foreman Drogg##143372
|tip Inside the mine.
Tell him _"Thank you."_
Check on Foreman Drogg |q 53210/1 |goto 33.25,38.04
step
Run up the stairs |goto 32.80,36.72 < 10 |walk
Follow the path up |goto 33.32,35.21 < 10 |walk
Leave the mine |goto 33.72,36.72 < 10 |c |q 53210
step
talk Graul##143373
Tell him _"Thank you."_
Check on Graul |q 53210/2 |goto 18.14,28.76
step
talk Wistel Silversnitch##143019
turnin Touring the Front##53210 |goto 27.53,31.84
accept Back to Zuldazar##53212 |goto 27.53,31.84
step
talk Druza Netherfang##143381 |goto 27.29,29.80
Tell her _"Send me to Zuldazar!"_
Return to Zuldazar |goto Dazar'alor/0 51.93,94.20 < 10 |noway |c |q 53212
|next "Warfront_Intro_End"
step
label "Horde_Doesnt_Control_Warfront"
talk Druza Netherfang##143388 |goto Dazar'alor/0 51.83,94.46
Tell her _"Send me to Arathi Highlands!"_
Teleport to Ar'gorok |goto Arathi Highlands/0 26.38,35.77 < 10 |noway |c |q 53208
step
talk Wistel Silversnitch##143019
turnin To the Front##53208 |goto 26.07,35.56
accept Touring the Front##53210 |goto 26.07,35.56
step
talk Flightgineer Krazzle##143323
Tell him _"Wistel said you could give me a tour of the area."_
Begin Riding the Rocket |invehicle |goto 25.96,36.12 |q 53210
step
Watch the dialogue
View the Battleground with Flightgineer Krazzle |q 53210/3 |goto 25.68,35.79
step
Watch the dialogue
Return to the Ground |outvehicle |goto 26.07,36.34 |q 53210
step
talk Foreman Drogg##143372
Tell him _"Thank you."_
Check on Foreman Drogg |q 53210/1 |goto 33.30,36.30
step
talk Graul##143373
Tell him _"Thank you."_
Check on Graul |q 53210/2 |goto 20.91,25.91
step
talk Wistel Silversnitch##143019
turnin Touring the Front##53210 |goto 26.07,35.56
accept Back to Zuldazar##53212 |goto 26.07,35.56
step
talk Druza Netherfang##143381 |goto 26.67,35.79
Tell her _"Send me to Zuldazar!"_
Return to Zuldazar |goto Dazar'alor/0 51.93,94.20 < 10 |noway |c |q 53212
|next "Warfront_Intro_End"
step
label "Warfront_Intro_End"
talk Throk##138949
turnin Back to Zuldazar##53212 |goto Dazar'alor/0 52.92,94.52
step
_Congratulations!_
You unlocked Warfronts.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Scouting Reports\\Swiftwind Post (Drustvar)",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Swiftwind Post outpost in Drustvar.",
condition_suggested=function() return level == 120 and rep('The Honorbound') >= Honored and not completedq(52276) end,
},[[
step
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Honored Reputation with The Honorbound |condition rep('The Honorbound')>=Honored
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Swiftwind Post##162536 |goto Zuldazar/0 58.06,62.65 |q 52275 |future
step
use the Scouting Report: Swiftwind Post##162536
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52275 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Swiftwind Post" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Swiftwind Post##52275 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Swiftwind Post##52275 |goto Zuldazar/0 58.44,62.67
accept Swiftwind Post##52276 |goto Zuldazar/0 58.44,62.67
step
Follow the path |goto Drustvar/0 38.27,34.55 < 30 |only if walking
Follow the road |goto Drustvar/0 46.13,35.82 < 30 |only if walking
Follow the road |goto Drustvar/0 47.91,30.36 < 30 |only if walking
Follow the road |goto Drustvar/0 61.70,39.96 < 30 |only if walking
click Horde Banner
Claim the Outpost |q 52276/1 |goto Drustvar/0 66.05,59.45
step
talk Windtamer Loka##140772
fpath Swiftwind Post |goto 66.46,59.32
step
talk Toska Eaglehorn##140778
turnin Swiftwind Post##52276 |goto 66.11,59.59
step
_Congratulations!_
You unlocked the Swiftwind Post outpost in Drustvar.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Scouting Reports\\Wolf's Den (Tiragarde Sound)",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Grimwatt's Crash outpost in Nazmir.",
condition_suggested=function() return level == 120 and rep('The Honorbound') >= Honored and not completedq(52127) end,
},[[
step
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Honored Reputation with The Honorbound |condition rep('The Honorbound')>=Honored
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Wolf's Den##162530 |goto Zuldazar/0 58.06,62.65 |q 52005 |future
step
use the Scouting Report: Wolf's Den##162530
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52005 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "The Wolf's Den" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: The Wolf's Den##52005 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: The Wolf's Den##52005 |goto Zuldazar/0 58.44,62.67
accept The Wolf's Den##52127 |goto Zuldazar/0 58.44,62.67
step
Follow the path |goto Tiragarde Sound/0 41.46,23.62 < 30 |only if walking
Follow the path |goto Tiragarde Sound/0 53.74,15.85 < 30 |only if walking
click Horde Banner
Claim the Outpost |q 52127/1 |goto Tiragarde Sound/0 62.24,13.46
step
talk Narkalt##133331
fpath Wolf's Den |goto 62.11,13.57
step
talk Mukkral Blackvein##139561
|tip Inside the cave.
turnin The Wolf's Den##52127 |goto 62.49,12.48
step
_Congratulations!_
You unlocked the Wolf's Den outpost in Tiragarde Sound.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Scouting Reports\\Hillcrest Pasture (Stormsong Valley)",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Hillcrest Pasture outpost in Stormsong Valley.",
condition_suggested=function() return level == 120 and rep('The Honorbound') >= Revered and not completedq(52479) end,
},[[
step
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound')>=Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Hillcrest Pasture##162533 |goto Zuldazar/0 58.06,62.65 |q 52478 |future
step
use the Scouting Report: Hillcrest Pasture##162533
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52478 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Hillcrest Pasture" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Hillcrest Pasture##52478 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Hillcrest Pasture##52478 |goto Zuldazar/0 58.44,62.67
accept Hillcrest Pasture##52479 |goto Zuldazar/0 58.44,62.67
step
Follow the road |goto Stormsong Valley/0 53.76,53.15 < 30 |only if walking
Continue following the road |goto Stormsong Valley/0 54.26,58.56 < 30 |only if walking
Continue following the road |goto Stormsong Valley/0 51.16,62.32 < 30 |only if walking
Follow the path |goto Stormsong Valley/0 52.92,75.36 < 30 |only if walking
click Horde Banner
Claim the Outpost |q 52479/1 |goto Stormsong Valley/0 53.42,77.66
step
Follow the path up |goto 53.51,79.73 < 20 |only if walking
talk Hosan Cloudhoof##134842
fpath Hillcrest Pasture |goto 52.76,80.13
step
talk Ruknoz Greyfang##141308
turnin Hillcrest Pasture##52479 |goto 54.19,78.65
step
_Congratulations!_
You unlocked the Hillcrest Pasture outpost in Stormsong Valley.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Scouting Reports\\Mudfisher Cove (Drustvar)",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Mudfisher Cove outpost in Drustvar.",
condition_suggested=function() return level == 120 and rep('The Honorbound') >= Revered and not completedq(52314) end,
},[[
step
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound')>=Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Mudfisher Cove##162535 |goto Zuldazar/0 58.06,62.65 |q 52313 |future
step
use the Scouting Report: Mudfisher Cove##162535
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52313 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Mudfisher Cove" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Mudfisher Cove##52313 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Mudfisher Cove##52313 |goto Zuldazar/0 58.44,62.67
accept Mudfisher Cove##52314 |goto Zuldazar/0 58.44,62.67
step
Follow the path |goto Tiragarde Sound/0 39.78,33.48 < 20 |only if walking
click Horde Banner
Claim the Outpost |q 52314/1 |goto Drustvar/0 61.83,16.32
step
talk Drasha Windspear##140939
fpath Mudfisher Cove |goto 62.03,16.88
step
talk Garn Blackwolf##140947
turnin Mudfisher Cove##52314 |goto 62.43,17.01
step
_Congratulations!_
You unlocked the Mudfisher Cove outpost in Drustvar.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Scouting Reports\\Stonefist Watch (Tiragarde Sound)",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Stonefist Watch outpost in Tiragarde Sound.",
condition_suggested=function() return level == 120 and rep('The Honorbound') >= Revered and not completedq(52222) end,
},[[
step
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound')>=Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Stonefist Watch##162531 |goto Zuldazar/0 58.06,62.65 |q 52221 |future
step
use the Scouting Report: Stonefist Watch##162531
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52221 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Stonefist Watch" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Stonefist Watch##52221 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Stonefist Watch##52221 |goto Zuldazar/0 58.44,62.67
accept Stonefist Watch##52222 |goto Zuldazar/0 58.44,62.67
step
Follow the path up |goto Tiragarde Sound/0 51.98,57.97 < 20 |only if walking
click Horde Banner
Claim the Outpost |q 52222/1 |goto Tiragarde Sound/0 53.29,63.26
step
talk Munovuth Boldcleaver##140533
fpath Stonefist Watch |goto 53.14,63.16
step
talk Kora Gorekill##140531
|tip Inside the cave.
turnin Stonefist Watch##52222 |goto 53.63,63.34
step
_Congratulations!_
You unlocked the Stonefist Watch outpost in Tiragarde Sound.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Scouting Reports\\Stonetusk Watch (Stormsong Valley)",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Stonetusk Watch outpost in Stormsong Valley.",
condition_suggested=function() return level == 120 and rep('The Honorbound') >= Revered and not completedq(52777) end,
},[[
step
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound')>=Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Stonetusk Watch##162534 |goto Zuldazar/0 58.06,62.65 |q 52776 |future
step
use the Scouting Report: Stonetusk Watch##162534
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52776 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Stonetusk Watch" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Stonetusk Watch##52776 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Stonetusk Watch##52776 |goto Zuldazar/0 58.44,62.67
accept Stonetusk Watch##52777 |goto Zuldazar/0 58.44,62.67
step
Follow the road |goto Stormsong Valley/0 53.77,53.29 < 30 |only if walking
Follow the road |goto Stormsong Valley/0 54.23,58.69 < 30 |only if walking
Follow the road |goto Stormsong Valley/0 50.81,61.84 < 30 |only if walking
Follow the path up |goto Stormsong Valley/0 39.62,63.44 < 30 |only if walking
Follow the path up |goto Stormsong Valley/0 39.08,65.32 < 20 |only if walking
Enter the cave |goto Stormsong Valley/0 39.11,67.00 < 15 |walk
click Horde Banner
|tip Inside the cave.
Claim the Outpost |q 52777/1 |goto Stormsong Valley/0 39.38,68.34
step
talk Rasha Stonetusk##141598
|tip Inside the cave.
turnin Stonetusk Watch##52777 |goto 39.41,68.59
step
Leave the cave |goto 39.06,66.93 < 10 |walk
talk Wyna Breezehorn##134844
fpath Stonetusk Watch |goto 38.84,66.64
step
_Congratulations!_
You unlocked the Stonetusk Watch outpost in Stormsong Valley.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Scouting Reports\\Windfall Cavern (Stormsong Valley)",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the Windfall Cavern outpost in Stormsong Valley.",
condition_suggested=function() return level == 120 and rep('The Honorbound') >= Revered and not completedq(52320) end,
},[[
step
Reach Level 120 |ding 120
|tip You must be at least level 120 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound')>=Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Windfall Cavern##162532 |goto Zuldazar/0 58.06,62.65 |q 52319 |future
step
use the Scouting Report: Windfall Cavern##162532
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52319 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Windfall Cavern" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Windfall Cavern##52319 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Windfall Cavern##52319 |goto Zuldazar/0 58.44,62.67
accept Windfall Cavern##52320 |goto Zuldazar/0 58.44,62.67
step
Follow the path |goto Stormsong Valley/0 52.50,32.84 < 20 |only if walking
Follow the path up |goto Stormsong Valley/0 59.53,29.97 < 30 |only if walking
Enter the cave |goto Stormsong Valley/0 60.68,26.73 < 15 |walk
click Horde Banner
|tip Inside the cave.
Claim the Outpost |q 52320/1 |goto Stormsong Valley/0 60.33,25.28
step
talk Morn Ironhorn##141087
|tip Inside the cave.
turnin Windfall Cavern##52320 |goto 60.21,24.97
step
Leave the cave |goto 60.69,26.69 < 10 |walk
talk Allabas##138251
fpath Windfall Cavern |goto 60.84,27.12
step
_Congratulations!_
You unlocked the Windfall Cavern outpost in Stormsong Valley.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Heart of Azeroth\\Heart of Azeroth Empowerment",{
author="support@zygorguides.com",
description="This guide will walk you through empowering your Heart of Azeroth necklace to increase its item level.",
condition_suggested=function() return level == 120 and rep('Champions of Azeroth') >= Friendly and not completedq(53406) end,
},[[
step
Reach Level 120 |ding 120
|tip Use the "Intro & Quest Zone Choice" and Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(52450)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Friendly Reputation with the Champions of Azeroth |condition rep('Champions of Azeroth')>=Friendly
|tip Use the Battle for Azeroth "World Quests" guides to complete "Champions of Azeroth" world quests.
|tip Complete Missions at your mission table that reward reputation with the Champions of Azeroth.
step
talk Magni Bronzebeard##130216
accept The Heart's Power##50973 |goto Silithus/0 42.22,44.27
step
talk Magni Bronzebeard##130216
Tell him _"Magni, I'm ready for you to empower the Heart of Azeroth."_
Watch the dialogue
Empower the Heart of Azeroth |q 50973/1 |goto 42.22,44.27
step
talk Magni Bronzebeard##130216
turnin The Heart's Power##50973 |goto 42.22,44.27
step
Reach Honored Reputation with the Champions of Azeroth |condition rep('Champions of Azeroth')>=Honored
|tip Use the Battle for Azeroth "World Quests" guides to complete "Champions of Azeroth" world quests.
|tip Complete Missions at your mission table that reward reputation with the Champions of Azeroth.
step
talk Magni Bronzebeard##130216
accept Unlocking the Heart's Potential##53405 |goto 42.22,44.27
step
talk Magni Bronzebeard##130216
Tell him _"Magni, I'm ready for you to empower the Heart of Azeroth."_
Watch the dialogue
Empower the Heart of Azeroth |q 53405/1 |goto 42.22,44.27
step
talk Magni Bronzebeard##130216
turnin Unlocking the Heart's Potential##53405 |goto 42.22,44.27
step
Reach Revered Reputation with the Champions of Azeroth |condition rep('Champions of Azeroth')>=Revered
|tip Use the Battle for Azeroth "World Quests" guides to complete "Champions of Azeroth" world quests.
|tip Complete Missions at your mission table that reward reputation with the Champions of Azeroth.
step
talk Magni Bronzebeard##130216
accept The Chamber of Heart##53406 |goto 42.22,44.27
step
talk Magni Bronzebeard##130216
accept The Chamber of Heart##53406 |goto 42.22,44.27
step
click Titan Translocator
Enter the Chamber of Heart |q 53406/1 |goto 43.19,44.50
step
talk Magni Bronzebeard##136907
|tip Inside the building.
Tell him _"Magni, I'm ready for you to empower the Heart of Azeroth."_
Empower the Heart of Azeroth within the Chamber of Heart |q 53406/2 |goto Chamber Of Heart/0 50.17,58.15
step
Watch the dialogue
Banish the Old God Incursion
|tip Use the "Unleash Heart of Azeroth" ability inside the building.
|tip It appears as a button on the screen.
Click Here After Unleashing the Heart of Azeroth |confirm |goto 50.00,64.78 |q 53406
step
talk Magni Bronzebeard##136907
|tip Inside the building.
turnin The Chamber of Heart##53406 |goto 50.16,58.14
step
_Congratulations!_
You Fully Empowered the Heart of Azeroth.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Allied Races\\Nightborne Race Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the new Nightborne allied race.",
condition_suggested=function() return level >= 110 and not completedq(49614) end,
image=ZGV.DIR.."\\Guides\\Images\\NightborneUnlock",
},[[
step
Load the "World Quests Unlock Quest Line" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests Unlock Quest Line"
|tip Click the line above to load the guide.
|tip You must complete the "Uniting the Isles" quest in this guide to start the Broken Shore Campaign.
|tip If you already have a character that has completed this quest, you can just talk to Khadgar to complete it.
Complete the "Uniting the Isles" Quest |condition completedq(43341) or completedq(45727) |goto Dalaran L/10 28.47,48.34
step
Load the "Broken Shore Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Broken Shore Campaign"
|tip Click the line above to load the guide.
|tip You must complete the first two quests in this guide to start the Argus Campaign.
Complete the "Assault on Broken Shore" Quest |condition completedq(46734)
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
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will automatically accept this quest.
|tip If not, press Shift + J and check your Adventure Journal.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
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
Congratulations!
You Unlocked the "Nightborne" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Allied Races\\Highmountain Tauren Race Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking the new Highmountain Tauren allied race.",
condition_suggested=function() return level >= 110 and not completedq(48433) end,
image=ZGV.DIR.."\\Guides\\Images\\HighmountainTaurenUnlock",
},[[
step
Load the "World Quests Unlock Quest Line" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests Unlock Quest Line"
|tip Click the line above to load the guide.
|tip You must complete the "Uniting the Isles" quest in this guide to start the Broken Shore Campaign.
|tip If you already have a character that has completed this quest, you can just talk to Khadgar to complete it.
Complete the "Uniting the Isles" Quest |condition completedq(43341) or completedq(45727) |goto Dalaran L/10 28.47,48.34
step
Load the "Broken Shore Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Broken Shore Campaign"
|tip Click the line above to load the guide.
|tip You must complete the first two quests in this guide to start the Argus Campaign.
Complete the "Assault on Broken Shore" Quest |condition completedq(46734)
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
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will automatically accept this quest.
|tip If not, press Shift + J and check your Adventure Journal.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
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
stickystart "Dark_Tendril"
step
kill Shadow of Uul##125141+ |q 48067/2 |goto 55.36,51.33
step
label "Dark_Tendril"
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
stickystart "Shadow_Lurker"
step
Leave the building |goto 38.66,68.64 < 7 |walk
Follow the path |goto 39.57,69.43 < 7 |walk
Follow the path |goto 40.28,71.22 < 15 |only if walking
Enter the cave |goto 41.45,72.57 < 10 |walk
Follow the path |goto 42.01,72.77 < 10 |walk
Follow the path |goto 42.34,72.33 < 10 |walk
kill Shadow of Uul##125141 |q 41764/3 |goto 43.52,73.29
step
label "Shadow_Lurker"
kill Shadow Lurker##105069 |q 41764/2 |goto 43.52,73.29
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
kill 6 Shadowy Tendril##130418 |q 41799/3 |goto 54.74,41.15
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
kill 10 Necrodark Defiler##104888 |q 41800/2 |goto 53.16,66.45
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
collect 20 Shadowice Shard##136400 |q 41840/1 |goto 57.67,92.72
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
_Congratulations!_
You Unlocked the "Highmountain Tauren" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Allied Races\\Mag'har Orc Race Unlock",{
author="support@zygorguides.com",
description="To unlock the new Mag'har Orc allied race, you will need to earn exalted reputation with The Honorbound and complete the Horde War Campaign.",
condition_suggested=function() return level == 120 and not achieved(12518) and completedq(52131) end,
condition_end=function() return achieved(12518) end,
image=ZGV.DIR.."\\Guides\\Images\\MagHarOrcUnlock",
},[[
step
Load the "BFA World Quest Unlock" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\BFA World Quest Unlock"
|tip Click the line above to load the guide.
|tip You must complete the "Uniting Zandalar" quest in this guide.
Complete the "Uniting Zandalar" Quest |condition completedq(51918) |goto Zuldazar/0 58.44,62.67
step
Load the "War Campaign" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\War Campaign"
|tip Click the line above to load the guide.
|tip You must complete all of the quests in this guide.
Complete the Quest "A Cycle of Hatred" |condition completedq(53003)
step
Load the "Zuldazar World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Battle for Azeroth\\Zuldazar World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests in Drustvar, Stormsong Valley, and Tiragarde Sound that indicate the 7th Legion award reputation with them.
|tip Completing the emissary quest "Horde War Effort" will award bonus reputation.
_Island Expeditions and Warfronts:_
|tip Each successful Warfront awards 500 reputation with the The Honorbound.
|tip Completing the island expedition quest "Azerite for the Horde" will award 1,500 reputation.
Gain Exalted Reputation with The Honorbound |achieve 12957
step
talk Eitrigg##126066
accept Vision of Time##53466 |goto Orgrimmar/1 37.79,80.53
step
talk Chief Telemancer Oculeth##131443
turnin Vision of Time##53466 |goto Dazar'alor/1 67.15,73.79
accept Caverns of Time##53467 |goto 67.15,73.79
step
talk Anachronos##15192
turnin Caverns of Time##53467 |goto Tanaris/18 41.83,49.75
accept Echo of Gul'dan##53354 |goto 41.83,49.75
step
click Time Rift
kill Echo of Gul'dan##143505 |q 53354/1 |goto Blasted Lands/0 54.4,50.4
step
talk Anachronos##143692
turnin Echo of Gul'dan##53354 |goto Blasted Lands/0 54.4,50.4
accept Echo of Warlord Zaela##53353 |goto 54.4,50.4
step
Enter the building |goto Kun-Lai Summit/0 68.63,45.98 < 10 |walk
click Time Rift
kill Echo of Warlord Zaela##143504 |q 53353/1 |goto 68.81,43.69
step
turnin Echo of Warlord Zaela##53353 |goto 68.89,43.95
accept Echo of Garrosh Hellscream##53355 |goto 68.89,43.95
step
talk Anachronos##144225
Tell him _"I am ready to seek the Echo of Garrosh."_
|tip You will be teleported to The Inner Sanctum.
Meet Anachronos outside Orgrimmar |q 53355/1 |goto Durotar/0 40.75,16.36
step
Jump down into the room
click Time Rift
kill Echo of Garrosh Hellscream##143425 |q 53355/2
step
talk Chief Telemancer Oculeth##131443
turnin Echo of Garrosh Hellscream##53355 |goto Dazar'alor/1 67.15,73.79
step
talk Eitrigg##126066
accept Restoring Old Bonds##52942 |goto 70.60,69.21
step
talk Chief Telemancer Oculeth##131443
Tell him _"(Quest) I am ready to go to Draenor."_
Speak with Oculeth to go to Draenor |q 52942/1 |goto 67.15,73.79
step
Follow Eitrigg
|tip A group of mounted Mag'har orcs will approach you.
Meet the Overlord |q 52942/2 |goto Gorgrond/0 41.4,16.6
step
talk Eitrigg##126066
turnin Restoring Old Bonds##52942 |goto 41.4,16.6
accept Calling Out the Clans##52943 |goto 41.4,16.6
step
Follow Eitrigg and Overlord Geya'rah
click Blackrock Banner
Pay homage to the Blackrock Clan Symbol |q 52943/1
step
Follow Eitrigg and Overlord Geya'rah
click Warsong Banner
Pay homage to the Warsong Clan Symbol |q 52943/2
step
Follow Eitrigg and Overlord Geya'rah
click Frostwolf Banner
Pay homage to the Frostwolf Clan Symbol |q 52943/3
step
talk Overlord Geya'rah##142109
|tip Next to you.
turnin Calling Out the Clans##52943
step
talk Grommash Hellscream
|tip Next to the bonfire.
accept Bonds Forged Through Battle##52945
step
Enter the cave |goto 38.51,67.40 < 10 |walk |goto 37.14,68.95
Kill Kor'gall enemies around this area
kill 10 Kor'gall Defectors |q 52945/1 |goto Gorgrond/0 43.72,58.93
step
Watch the dialogue
kill Kor'gall, Greatson of Kor'gal##140949 |q 52945/1
step
talk Overlord Geya'rah##142109
|tip Next to you.
turnin Bonds Forged Through Battle##52945
accept Tyranny of the Light##52955
step
step
_Congratulations!_
You Unlocked the "Mag'har Orc" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Zuldazar Loremaster (Story Quest Only)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Zuldazar storylines:\n\nAudience with the King\nPort of Zandalar\nWeb of Lies\nThe Zanchuli Council\nPortents and Prophecies\nWarport Rastari\nAmong the People\nMarch of the Loa",
condition_suggested=function() return level >= 110 and not achieved(11861) and completedq(52131) end,
condition_end=function() return achieved(11861) end,
startlevel=110.0,
endlevel=120.0,
image=ZGV.DIR.."\\Guides\\Images\\Zuldazar",
},[[
leechsteps "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice" 62-77
step
click Scouting Map
|tip Inside the building.
accept Zuldazar##47514 |goto Dazar'alor/2 41.71,69.41
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Zuldazar##47514 |goto 41.14,66.73
accept Trust of a King##49615 |goto 41.19,66.74
step
talk Brillin the Beauty##122690
|tip Inside the building.
home The Great Seal |goto Dazar'alor/1 48.86,72.64 |q 49615
step
Ride the Elevator Up |goto Dazar'alor/2 22.58,72.07 < 10 |walk
talk King Rastakhan##120740
|tip On top of the building.
turnin Trust of a King##49615 |goto Dazar'alor/0 49.93,46.61
accept Tal'gurub##49488 |goto Dazar'alor/0 49.93,46.61
step
talk Zolani##122915
|tip On top of the building.
accept The Port of Zandalar##50835 |goto 49.81,46.56
step
talk Yazma##122641
|tip On top of the building.
accept The Zanchuli Council##47445 |goto 49.72,46.51
step
talk Paku'ai Rokota##122689
fpath The Great Seal |goto 51.91,41.20
step
talk Zolani##135441
turnin The Port of Zandalar##50835 |goto 50.06,85.07
accept Shakedown##46926 |goto 50.06,85.07
step
talk Yazma##126684
accept The Word of Zul##46846 |goto 50.05,84.76
step
talk Witch Doctor Jala##126148
accept The Red Market##48452 |goto 44.25,82.15
stickystart "Collect_Dark_Fetishes"
step
Run down the stairs |goto 42.83,80.86 < 10 |only if walking
Follow the path |goto 41.83,78.98 < 15 |only if walking
Enter the building |goto 42.80,83.58 < 10 |walk
click Chalice of Calling
|tip Inside the building.
Destroy the Chalice of Calling |q 48452/2 |goto 43.08,83.14
step
label "Collect_Dark_Fetishes"
Kill Crimson enemies around this area
collect 3 Dark Fetishes##152461 |q 48452/1 |goto 42.29,83.76
step
Run up the stairs |goto 42.81,78.72 < 10 |only if walking
Run up the stairs |goto 43.43,81.69 < 10 |only if walking
talk Witch Doctor Jala##126148
turnin The Red Market##48452 |goto 44.25,82.15
accept Evidence of Evil##48454 |goto 44.25,82.15
stickystart "Slay_Dockside_Thugs"
step
talk Dockmaster Cobo##126009
Choose _<Show him the Word of Zul.>_
Show Dockmaster Cobo the Message |q 46846/3 |goto 45.31,79.78
step
label "Slay_Dockside_Thugs"
Kill Thug enemies around this area
Slay #15# Dockside Thugs |q 46926/1 |goto 47.91,83.03
step
talk Zolani##135441
turnin Shakedown##46926 |goto 50.05,85.06
turnin Evidence of Evil##48454 |goto 50.07,85.07
accept Deterrent##46929 |goto 50.05,85.06
step
talk Yazma##126684
accept Punishment of Tal'farrak##46928 |goto 50.05,84.76
step
Follow the path |goto 51.22,85.69 < 15 |only if walking
talk Nokali the Scarred##125485
Choose _<Show him the Word of Zul.>_
Show Nokali the Message |q 46846/1 |goto 51.52,91.04
step
Jump down here |goto 53.49,89.73 < 10 |only if walking
talk Doomsayer Volkini##125489
Choose _<Show her the Word of Zul.>_
Show Volkini the Message |q 46846/2 |goto 53.90,91.10
step
Run up the stairs |goto 50.04,88.70 < 15 |only if walking
talk Yazma##126684
turnin The Word of Zul##46846 |goto 50.04,84.76
accept Punishment of Tal'aman##46927 |goto 50.04,84.76
stickystart "Collect_Amani_Heads"
step
Run up the stairs |goto 50.01,81.39 < 20 |only if walking
Follow the path |goto 50.64,77.93 < 15 |only if walking
Continue following the path |goto 56.21,81.37 < 15 |only if walking
click Ancient Gong
Watch the dialogue
kill Disciple of Jan'alai##120950
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 1
step
click Ancient Gong
Watch the dialogue
kill Disciple of Halazzi##120951
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 2
step
click Ancient Gong
Watch the dialogue
kill Disciple of Akil'zon##120946
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 3
step
click Ancient Gong
Watch the dialogue
kill Disciple of Nalorakk##120949
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 4
step
label "Collect_Amani_Heads"
Kill Amani enemies around this area
collect 6 Amani Head##160107 |q 46929/1 |goto 56.16,80.58
stickystart "Collect_Sandfury_Heads"
step
Follow the path |goto 51.95,77.93 < 20 |only if walking
Continue following the path |goto 46.84,77.05 < 20 |only if walking
click Ancient Gong##280611
kill Gahz'ragon
collect 3 Tongue of Gahz'ragon##152184 |q 46928/1 |goto 46.62,73.92
step
label "Collect_Sandfury_Heads"
Kill Sandfury enemies around this area
collect 6 Sandfury Head##158898 |q 46929/2 |goto 46.47,75.58
step
Run down the stairs |goto 49.72,78.71 < 20 |only if walking
talk Yazma##126684
turnin Punishment of Tal'aman##46927 |goto 50.05,84.76
turnin Punishment of Tal'farrak##46928 |goto 50.05,84.76
step
talk Zolani##135441
turnin Deterrent##46929 |goto 50.05,85.07
accept Royal Report##50881 |goto 50.05,85.07
step
Ride the Elevator Up |goto Dazar'alor/2 22.52,72.25 < 7 |walk
Leave the building |goto Dazar'alor/0 48.69,45.19 < 5 |walk
Follow the path |goto Dazar'alor/0 49.39,44.48 < 10 |only if walking
talk Habutu##125953
|tip On top of the building.
turnin Royal Report##50881 |goto Dazar'alor/0 50.04,46.54
step
Run down the stairs |goto Dazar'alor/0 50.96,40.32 < 15 |only if walking
Run down the stairs |goto Dazar'alor/0 56.26,29.56 < 15 |only if walking
Run down the stairs |goto Dazar'alor/0 57.29,22.65 < 15 |only if walking
Cross the bridge |goto Dazar'alor/0 54.28,25.31 < 20 |only if walking
Run up the stairs |goto Dazar'alor/0 51.88,20.29 < 15 |only if walking
talk Zena the Feeder##133242
fpath The Sliver |goto Dazar'alor/0 53.16,19.36
step
Run up the stairs |goto 51.75,19.06 < 15 |only if walking
Run up the stairs |goto 46.29,22.58 < 15 |only if walking
talk Wardruid Loti##126560
turnin The Zanchuli Council##47445 |goto 45.25,24.02
accept Forbidden Practices##47423 |goto 45.25,24.02
step
use Loti's Totem##152627
|tip Use it next to NPC's around this area.
|tip Some of them will turn into Crimson Cultists.
kill 9 Crimson Cultist##138249 |q 47423/1 |goto 50.68,16.48
step
talk Hexlord Raal##126564
turnin Forbidden Practices##47423 |goto 51.90,11.88
accept Offensively Defensive##47433 |goto 51.90,11.88
step
talk Hexlord Raal##126564
Tell him _"Ready to patrol."_
Speak with Hexlord Raal |q 47433/1 |goto 51.90,11.88
step
clicknpc Ata the Winglord##126822
Fly the Skies with Hexlord Raal |q 47433/2 |goto 53.06,11.63
step
Place #6# Farseer Totems |q 47433/3 |goto 58.83,1.60 |notravel
|tip Use the "Farseer Totem" ability on your action bar.
|tip Use it on the yellow circles on the ground as you fly.
step
Watch the dialogue
Return to Zanchul |goto 46.32,18.99 < 7 |c |q 47433 |notravel
step
talk Wardruid Loti##126560
turnin Offensively Defensive##47433 |goto 46.21,19.26
accept Pterrortorial Dispute##47435 |goto 46.21,19.26
accept Restraining Order##47434 |goto 46.21,19.26
stickystart "Slay_Bloodraged_Pterrordaxes"
step
Shoo #20# Pterrordax Hatchlings |q 47434/1 |goto 41.73,16.97
|tip They look like smaller red dinosaur birds flying low to the ground around this area.
|tip Walk next to them.
step
label "Slay_Bloodraged_Pterrordaxes"
kill 6 Bloodraged Pterrordax##126618 |q 47435/1 |goto 41.73,16.97
step
Follow the path |goto 39.87,12.88 < 20 |only if walking
talk Hexlord Raal##126564
turnin Pterrortorial Dispute##47435 |goto 40.93,11.31
turnin Restraining Order##47434 |goto 40.93,11.31
accept Competitive Devotion##47437 |goto 40.93,11.31
step
Enter the building |goto 41.16,10.98 < 7 |walk
kill Guardian of the Tombs##127072 |q 47437/1 |goto Dazar'alor/4 65.51,69.04
|tip Inside the building.
step
Run up the stairs |goto 45.77,39.28 < 10 |walk
kill Guardian of the Rites##127073 |q 47437/2 |goto Dazar'alor/3 65.93,30.68
|tip Upstairs inside the building.
step
Follow the path |goto 64.21,66.43 < 10 |walk
Leave the building |goto 77.47,87.57 < 10 |walk
kill Guardian of the Dead##127074 |q 47437/3 |goto Dazar'alor/0 44.27,16.70
step
Run up the stairs |goto 46.03,16.14 < 15 |only if walking
talk Wardruid Loti##126560
turnin Competitive Devotion##47437 |goto 46.11,13.06
accept Dire Situation##47422 |goto 46.11,13.06
step
Run up the stairs |goto 46.10,11.85 < 15 |only if walking
kill Dregada##127079 |q 47422/1 |goto 43.63,7.38
|tip At the top of the building.
|tip Your allies will help you fight him.
step
talk Wardruid Loti##126560
|tip At the top of the building.
turnin Dire Situation##47422 |goto 42.29,9.10
accept Picking a Side##47438 |goto 42.29,9.10
step
_You Must Make a Choice:_
click Gonk
|tip Choosing Gonk will provide you with many totems around the city to allow you to run faster and take less falling damage in Dazar'alor.
_Or_
click Pa'ku
|tip Choosing Pa'ku will provide you with a few totems around the city to allow you to fly to certain locations around Dazar'alor.
Choose a Loa |q 47438/1 |goto 42.55,9.12
step
talk Wardruid Loti##126560
turnin Picking a Side##47438 |goto 42.29,9.10
step
_Which Loa Did You Choose?_
|tip Click the line with the name of loa you chose.
Gonk |confirm |next "Gonk" |or |q 47439 |future
Pa'ku |confirm |next "Paku" |or |q 47440 |future
step
label "Gonk"
talk Wardruid Loti##126560
accept Gonk, Lord of the Pack##47439 |goto 42.29,9.10
step
Jump down here |goto 41.76,9.06 < 10 |only if walking
Jump down here |goto 38.18,7.16 < 10 |only if walking
Follow the path up |goto 35.43,4.91 < 20 |only if walking
Follow the path |goto Zuldazar/0 50.62,30.63 < 20 |only if walking
Follow the path |goto Zuldazar/0 49.32,31.36 < 20 |only if walking
talk Gonk##127444
Tell him _"We have a bargain."_
Bargain with Gonk |q 47439/1 |goto 48.17,32.27
step
Follow the road |goto 49.42,31.28 < 20 |only if walking
Follow the road |goto 50.80,30.58 < 20 |only if walking
Continue following the road |goto Dazar'alor/0 36.03,5.49 < 20 |only if walking
Continue following the road |goto Dazar'alor/0 36.53,15.17 < 20 |only if walking
Cross the bridge |goto Dazar'alor/0 42.33,26.94 < 20 |only if walking
Run up the stairs |goto Dazar'alor/0 44.40,30.57 < 15 |only if walking
Run up the stairs |goto Dazar'alor/0 45.10,36.21 < 15 |only if walking
Follow the path |goto Dazar'alor/0 47.03,37.50 < 15 |only if walking
talk Wardruid Loti##127576
turnin Gonk, Lord of the Pack##47439 |goto Dazar'alor/0 49.91,33.41
accept The Bargain is Struck##48897 |goto Dazar'alor/0 49.91,33.41
step
Run up the stairs |goto 49.85,35.41 < 15 |only if walking
Run up the stairs |goto 48.44,36.85 < 15 |only if walking
Run up the stairs |goto 50.22,37.74 < 15 |only if walking
talk Huntmaster Kil'ja##130785
accept Nesingwary's Trek##49768 |goto 52.00,41.39
step
Enter the building |goto 49.98,41.92 < 10 |only if walking
Ride the Elevator Up |goto Dazar'alor/2 22.94,72.17 < 7 |only if walking
Leave the building |goto Dazar'alor/0 48.68,45.19 < 7 |only if walking
Follow the path |goto Dazar'alor/0 49.38,44.43 < 10 |only if walking
talk King Rastakhan##120740
|tip Upstairs inside the building.
turnin The Bargain is Struck##48897 |goto 49.93,46.61
|next "Both_Loa_Continue"
step
label "Paku"
talk Hexlord Raal##126564
accept Pa'ku, Master of Winds##47440 |goto Dazar'alor/0 42.54,9.49
step
clicknpc Ata the Winglord##127414
Begin Riding Ata the Winglord |invehicle |goto 42.48,10.06 |q 47440
step
Ride Ata the Winglord |q 47440/1 |goto Zuldazar/0 70.45,49.07 |notravel
step
Follow the path up |goto Zuldazar/0 70.66,48.84 < 15 |only if walking
talk Pa'ku##127377
Bargain with Pa'ku |q 47440/2 |goto 71.50,49.32
step
Jump Off the Cliff |q 47440/3 |goto 71.82,49.24
|tip You won't die.
step
Watch the dialogue
Return to Dazar'alor |goto Dazar'alor/0 49.82,34.59 < 20 |c |q 47440 |notravel
step
talk Hexlord Raal##127489
turnin Pa'ku, Master of Winds##47440 |goto Dazar'alor/0 49.92,33.40
accept The Bargain is Struck##47432 |goto Dazar'alor/0 49.92,33.40
step
click Totem of Pa'ku |goto 49.54,32.83
Fly to the Top of the Building |goto 49.91,39.56 < 10 |noway |c |q 47432
step
Enter the building |goto 49.95,42.14 < 10 |walk
Ride the Elevator Up |goto Dazar'alor/2 23.06,72.35 < 7 |c |q 47432
step
Leave the building |goto 29.08,59.61 < 7 |walk
Run up the stairs |goto Dazar'alor/0 48.88,44.61 < 10 |only if walking
talk King Rastakhan##120740
|tip On top of the building.
turnin The Bargain is Struck##47432 |goto 49.93,46.62
|next "Both_Loa_Continue"
step
label "Both_Loa_Continue"
Cross the bridge |goto Dazar'alor/0 51.54,21.33 < 20 |only if walking
Run up the stairs |goto 54.98,25.49 < 20 |only if walking
Run down the stairs |goto 58.16,21.93 < 20 |only if walking
Jump down here |goto 59.44,9.93 < 10 |only if walking
talk Zul the Prophet##129907
turnin Tal'gurub##49488 |goto Zuldazar/0 62.82,32.56
accept Needs a Little Body##49489 |goto Zuldazar/0 62.82,32.56
accept The Urn of Voices##49490 |goto Zuldazar/0 62.82,32.56
step
talk Izita's Spirit##130706
accept Fuel for the Voodoo##49491 |goto 63.62,31.76
stickystart "Collect_Voodoo_Totems"
stickystart "Gather_Ounces_of_Soul"
step
Run up the stairs |goto 63.65,32.07 < 15 |only if walking
Enter the building |goto 64.93,33.11 < 10 |walk
clicknpc Atal'jamba Ungo##130089
|tip Inside the building.
"Improve" the Concoction |q 49489/1 |goto 65.02,32.99 |count 1
step
Cross the bridge |goto 64.39,33.17 < 15 |only if walking
Follow the path |goto 63.44,30.56 < 20 |only if walking
Enter the building |goto 63.07,29.06 < 10 |walk
clicknpc Atal'jamba Iri##130109
|tip Inside the building.
"Improve" the Concoction |q 49489/1 |goto 63.20,29.06 |count 2
step
label "Collect_Voodoo_Totems"
click Voodoo Totem##154901+
|tip They look like wooden glowing green totems on the ground around this area.
collect 8 Voodoo Totem##154901 |q 49491/1 |goto 63.56,30.85
step
label "Gather_Ounces_of_Soul"
Kill enemies around this area
Gather #30# Ounces of Soul |q 49490/1 |goto 63.56,30.85
step
click Brazier##278452
turnin Fuel for the Voodoo##49491 |goto 62.74,28.47
step
talk Zul the Prophet##129907
turnin Needs a Little Body##49489 |goto 62.86,28.24
turnin The Urn of Voices##49490 |goto 62.86,28.24
accept Arrogance of Vol'jamba##49492 |goto 62.86,28.24
step
clicknpc Voice of Vol'jamba##130209
Silence the Voice of Vol'jamba |q 49492/1 |goto 62.90,28.02
step
clicknpc Eyes of Vol'jamba##130208
Blind the Eyes of Vol'jamba |q 49492/2 |goto 63.55,28.07
step
clicknpc Spite of Vol'jamba##130197
Thwart the Spite of Vol'jamba |q 49492/3 |goto 64.12,28.38
step
Watch the dialogue
talk Zul the Prophet##129907
turnin Arrogance of Vol'jamba##49492 |goto 64.38,28.55
accept Zul's Ethical Dilemma##49493 |goto 64.38,28.55
accept Zuvembi Brew##49494 |goto 64.38,28.55
stickystart "Free_Mindslaves"
step
click Jambani Stockpile##290750
accept Preparing for the Fall##51663 |goto 65.28,28.22
stickystart "Destroy_Jambani_Stockpiles"
step
kill Zuvembi Brewer Zekal##130260 |q 49494/1 |goto 64.89,27.01
step
label "Free_Mindslaves"
use the Mindbreaker Chant##155458
|tip Use it next to Mindslaved enemies around this area.
Free #9# Mindslaves |q 49493/1 |goto 65.24,28.67
step
label "Destroy_Jambani_Stockpiles"
click Jambani Stockpile##290750+
|tip They look like stacks of brown baskets on the ground around this area.
Destroy #8# Jambani Stockpiles |q 51663/1 |goto 65.24,28.67
step
Run up the stairs |goto 65.32,29.09 < 20 |only if walking
talk Zul the Prophet##129907
turnin Zul's Ethical Dilemma##49493 |goto 65.71,30.21
turnin Zuvembi Brew##49494 |goto 65.71,30.21
turnin Preparing for the Fall##51663 |goto 65.71,30.21
accept Enforcing Fate##49495 |goto 65.71,30.21
step
click Gong of Command##279349
Place the Seal of Implacable Fate |q 49495/1 |goto 65.89,31.08
step
click Urn of Voices##279353
Place the Urn of Voices |q 49495/2 |goto 65.89,30.67
step
Watch the dialogue
click Urn of Voices##279353
Adjust the Urn of Voices |q 49495/3 |goto 65.86,30.65
step
click Mysterious Brew
Swap the Potion |q 49495/4 |goto 65.56,31.30
step
talk Zul the Prophet##129907
turnin Enforcing Fate##49495 |goto 65.70,30.21
accept Plot Twist##49905 |goto 65.70,30.21
step
Watch the dialogue
Confront Vol'jamba |q 49905/1 |goto 65.62,30.55
step
kill Vol'jamba##131241 |q 49905/2 |goto 65.68,31.03
step
talk Zul the Prophet##129907
turnin Plot Twist##49905 |goto 65.58,30.51
accept False Prophecies##49663 |goto 65.58,30.51
step
Ride the Elevator Up |goto Dazar'alor/2 23.06,72.35 < 7 |walk
Leave the building |goto Dazar'alor/2 29.08,59.61 < 7 |walk
Run up the stairs |goto Dazar'alor/0 48.88,44.61 < 10 |only if walking
talk King Rastakhan##120740
|tip On top of the building.
turnin False Prophecies##49663 |goto Dazar'alor/0 49.93,46.61
accept A Port in Peril##49122 |goto Dazar'alor/0 49.93,46.61
step
Follow the path |goto Dazar'alor/0 51.18,85.38 < 20 |only if walking
Cross the bridge |goto Dazar'alor/0 42.59,81.74 < 20 |only if walking
Follow the road |goto Zuldazar/0 51.07,56.32 < 20 |only if walking
talk Zolani##127815
turnin A Port in Peril##49122 |goto Zuldazar/0 47.92,60.44
accept Wrath of the Zandalari##49144 |goto Zuldazar/0 47.92,60.44
step
talk Habutu##127814
accept No Troll Left Behind##49145 |goto 47.87,60.44
step
talk Paku'ai Ja'nessa##127818
fpath Warport Rastari |goto 48.22,60.34
step
Enter the tunnel |goto 47.38,59.70 < 15 |only if walking
Leave the tunnel |goto 45.49,61.58 < 15 |only if walking
Follow the road |goto 43.21,66.34 < 20 |only if walking
talk Eliara Duskwing##123817
fpath Xibala |goto 44.84,72.25
step
talk Kaza'jin the Wavebinder##127837
accept Spirits' Belongings##49146 |goto 47.14,60.47
stickystart "Rally_Rastari_Defenders"
stickystart "Slay_Mogu_Invaders"
step
click Grimoire of the Other Side##277886
collect Grimoire of the Other Side##153526 |q 49146/2 |goto 46.80,61.87
step
Run up the stairs |goto 46.45,61.71 < 10 |only if walking
click Reclaimed Bijous##277444
collect Reclaimed Bijous##153525 |q 49146/1 |goto 45.61,60.36
step
click Venerated Remains##277447
collect Venerated Remains##153527 |q 49146/3 |goto 45.81,62.46
step
label "Rally_Rastari_Defenders"
click Crude Barricade+
|tip They look like wooden barriers in the entrances of buildings around this area.
use the Rastari Skull Whistle##153524
|tip Use it near Rastari Defenders around this area.
|tip They look like friendly Trolls standing on the ground around this area.
Rally #12# Rastari Defenders |q 49145/1 |goto 45.78,60.90
step
label "Slay_Mogu_Invaders"
Kill enemies around this area
Slay #8# Mogu Invaders |q 49144/1 |goto 45.78,60.90
step
talk Habutu##127814
turnin No Troll Left Behind##49145 |goto 47.87,60.44
step
talk Zolani##127815
turnin Wrath of the Zandalari##49144 |goto 47.92,60.44
step
talk Kaza'jin the Wavebinder##127837
turnin Spirits' Belongings##49146 |goto 48.08,60.38
accept Embrace the Voodoo##49149 |goto 48.08,60.38
step
talk Zolani##127815
accept Crumbling Apart##49148 |goto 47.92,60.44
step
talk Habutu##127814
accept Show of Strength##49147 |goto 47.87,60.44
stickystart "Kill_Stormbound_Conquerors"
step
Follow the path |goto 47.81,61.84 < 15 |only if walking
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.22,61.86 |count 1
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.97,63.07 |count 2
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 46.71,63.66 |count 3
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.45,65.14 |count 4
step
kill Jao-Ti the Thunderous##128474 |q 49147/1 |goto 48.12,64.49
step
Run up the stairs |goto 47.88,66.66 < 15 |only if walking
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.48,66.76 |count 5
step
kill Subjugator Zheng##128472 |q 49147/2 |goto 45.83,66.52
step
label "Kill_Stormbound_Conquerors"
kill Kao-Tien Stormbinder##127778+
collect Condensed Thunder##153529+ |n
|tip These will give you a "Thundering Blast" ability for a short time.
|tip Use the "Thundering Blast" ability on Stormbound Conquerors and Inert Conquerors around this area.
|tip It appears as a button on the screen.
kill 10 Stormbound Conqueror##128447 |q 49148/1 |goto 46.99,67.08
|tip Stand in the blue circles on the ground that appear while fighting them.
|tip These will help you kill them faster.
step
Run down the stairs |goto 47.86,67.28 < 15 |only if walking
talk Kaza'jin the Wavebinder##127837
turnin Embrace the Voodoo##49149 |goto 49.59,64.48
turnin Crumbling Apart##49148 |goto 49.59,64.48
turnin Show of Strength##49147 |goto 49.59,64.48
accept Thunder's Fall##49309 |goto 49.59,64.48
step
kill Warlord Kao##127766 |q 49309/1 |goto 50.20,65.37
step
talk Kaza'jin the Wavebinder##127837
turnin Thunder's Fall##49309 |goto 49.59,64.48
accept The Prophet's Ploy##49310 |goto 49.59,64.48
step
clicknpc Scarbeak##133960
Ride Scarbeak to King Rastakhan's Throne |q 49310/1 |goto 49.51,64.35
step
Watch the dialogue
Return to The Golden Throne |goto Dazar'alor/0 49.92,39.65 < 7 |c |notravel |q 49310
step
Enter the building |goto Dazar'alor/0 49.94,42.14 < 10 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin The Prophet's Ploy##49310 |goto Dazar'alor/2 41.45,72.29
accept Terrace of the Chosen##47509 |goto Dazar'alor/2 41.45,72.29
accept The Wounded King##51101 |goto Dazar'alor/2 41.45,72.29
step
Cross the bridge |goto Dazar'alor/0 39.07,26.87 < 20 |only if walking
Cross the bridge |goto Zuldazar/0 52.68,40.69 < 20 |only if walking
Follow the road up |goto Zuldazar/0 51.96,43.85 < 30 |only if walking
talk Kaza the Skyblade##129483
fpath Temple of the Prophet |goto Zuldazar/0 49.81,44.59
step
Run up the stairs |goto Dazar'alor/0 51.75,19.08 < 15 |only if walking
Follow the path |goto Dazar'alor/0 45.37,23.80 < 15 |only if walking
talk Kaza'jin the Wavebinder##124629
turnin Terrace of the Chosen##47509 |goto Dazar'alor/0 42.64,21.42
accept Zanchuli Traitors##47897 |goto Dazar'alor/0 42.64,21.42
accept Rescuing the Taken##47915 |goto Dazar'alor/0 42.64,21.42
stickystart "Slay_Zanchuli_Traitors"
step
Run up the stairs |goto 41.48,19.35 < 15 |only if walking
kill Hexmother Kala##133297
collect Fetish of Loti##156923 |q 47915/1 |goto 43.52,17.68
step
label "Slay_Zanchuli_Traitors"
Kill enemies around this area
Slay #10# Zanchuli Traitors |q 47897/1 |goto 40.91,16.06
step
talk Wardruid Loti##123335
turnin Zanchuli Traitors##47897 |goto 39.29,13.84
turnin Rescuing the Taken##47915 |goto 39.29,13.84
step
_Next to you:_
talk Wardruid Loti
accept Raal##47518
accept Walls Have Ears##47520
stickystart "Slay_Eyes_and_Ears_of_Yazma"
step
Enter the building |goto 41.10,11.05 < 10 |walk
Run up the stairs |goto Dazar'alor/4 45.67,39.19 < 10 |walk
Follow the path |goto Dazar'alor/3 39.28,27.61 < 10 |c |q 47518
step
Follow the path |goto 64.33,66.36 < 10 |walk
Leave the building |goto 77.39,87.50 < 10 |walk
Run up the stairs |goto Dazar'alor/0 46.02,15.89 < 15 |only if walking
Run up the stairs |goto Dazar'alor/0 46.18,11.54 < 20 |only if walking
kill Crazzak the Heretic##124652 |q 47518/1 |goto Dazar'alor/0 43.46,7.06
|tip At the top of the building.
step
talk Hexlord Raal##133324
turnin Raal##47518 |goto 43.62,7.35
step
label "Slay_Eyes_and_Ears_of_Yazma"
Kill Yazma enemies around this area
|tip Inside and outside the building.
Slay #8# Eyes and Ears of Yazma |q 47520/1 |goto 43.46,7.06
step
_Next to you:_
talk Wardruid Loti
turnin Walls Have Ears##47520
step
talk Hexlord Raal##133324
accept Midnight in the Garden of the Loa##47521 |goto 42.55,9.49
step
clicknpc Ata the Winglord##127414
Mount Ata the Winglord |invehicle |goto 42.48,10.05 |q 47521
step
Ride with Ata the Winglord |q 47521/1 |goto Zuldazar/0 50.73,29.57 |notravel
step
Watch the dialogue
talk Wardruid Loti##122760
turnin Midnight in the Garden of the Loa##47521 |goto 50.70,29.65
accept The Hunter##47522 |goto 50.70,29.65
step
talk Hexlord Raal##133653
accept The Ancient One##47963 |goto 50.69,29.57
step
Rescue Gonk |q 47522/1 |goto 48.63,31.86
step
talk Gonk##124827
turnin The Hunter##47522 |goto 48.39,32.12
step
Run up the stairs |goto 50.50,31.76 < 15 |only if walking
kill Shadra Betrayer##133735+
|tip Kill all of the ones channeling on Pa'ku.
Rescue Pa'ku |q 47963/1 |goto 52.10,32.81
step
talk Pa'ku##124756
turnin The Ancient One##47963 |goto 52.10,32.81
step
_Next to you:_
talk Acolyte Mali
accept Mistress of Lies##47528
step
Run up the stairs |goto 49.12,30.52 < 15 |only if walking
Enter the building |goto 47.72,28.87 < 10 |walk
kill Vol'kaal##122866
|tip Inside the building.
Defeat Vol'kaal |q 47528/1 |goto 47.09,27.85
step
Watch the dialogue
Defeat Yazma |q 47528/2 |goto 47.21,27.72
step
Leave the building |goto 47.71,28.87 < 10 |walk
talk Wardruid Loti##122760
turnin Mistress of Lies##47528 |goto 48.58,26.78
step
talk Paku'ai Rip'nata##130787
fpath Garden of the Loa |goto 49.72,26.27
step
Cross the bridge |goto 53.55,23.67 < 20 |only if walking
Follow the road down |goto 54.60,28.16 < 30 |only if walking
Cross the bridge |goto 58.86,22.92 < 20 |only if walking
Follow the road |goto 61.56,24.52 < 30 |only if walking
Follow the path |goto 64.32,21.47 < 20 |only if walking
Follow the path |goto 64.75,20.67 < 30 |only if walking
Follow the path |goto 67.04,21.23 < 30 |only if walking
Follow the path up |goto 68.12,19.49 < 30 |only if walking
talk Lasa the Galerider##123006
fpath Nesingwary's Gameland |goto 66.19,17.60
step
Follow the path down |goto 67.53,18.44 < 20 |only if walking
Follow the road |goto 70.43,22.13 < 30 |only if walking
Follow the path |goto 76.07,19.92 < 30 |only if walking
talk Zolani##124083
turnin The Wounded King##51101 |goto 76.69,16.26
accept In Bwonsamdi's Shadow##51680 |goto 76.69,16.26
step
talk Jamil Abul'housin##132637
|tip Inside the building.
Ask him _"How goes the mending?"_
Speak to Jamil Abul'housin |q 51680/1 |goto 76.47,16.00
step
talk Jol the Ancient##124063
|tip Inside the building.
Ask him _"How goes the mending?"_
Speak to Jol the Ancient |q 51680/2 |goto 76.44,16.16
step
talk Jol the Ancient##124063
|tip Inside the building.
turnin In Bwonsamdi's Shadow##51680 |goto 76.44,16.17
accept Ancient Tortollan Remedies##47735 |goto 76.44,16.17
step
talk Jamil Abul'housin##132637
|tip Inside the building.
accept The Scent of Vengeance##47739 |goto 76.47,16.00
step
talk Zolani##124083
accept No Safe Haven##50235 |goto 76.69,16.26
step
talk Paku'ai Jasi##124456
fpath Zeb'ahari |goto 77.36,15.35
stickystart "Rescue_Zebahari_Villagers"
stickystart "Collect_Traitors_Bloods"
step
clicknpc Laelani##132681
collect Brutosaur Scale##156824 |q 47735/2 |goto 78.59,13.13
step
label "Rescue_Zebahari_Villagers"
click Zeb'ahari NPC's
|tip They look like friendly blue trolls on the ground and fighting enemies around this area.
Rescue #12# Zeb'ahari Villagers |q 50235/1 |goto 80.19,14.76
step
talk Zeb'ahari Villager##138520
accept The Loa-Speaker's Betrayal##47733 |goto 79.35,16.77
step
clicknpc Spiny Puffer##133162
collect Envenomed Puffer Spine##156809 |q 47735/1 |goto 79.79,16.53
step
kill Loa-Speaker Kihara##132979 |q 47733/1 |goto 78.53,20.28
step
kill Ol' Bubbly##132650
collect Aged Crab Foam##156827 |q 47735/3 |goto 79.55,21.62
step
label "Collect_Traitors_Bloods"
Kill enemies around this area
collect 12 Traitor's Blood##156834 |q 47739/1 |goto 78.60,19.47
step
talk Zolani##124083
turnin No Safe Haven##50235 |goto 76.69,16.26
turnin The Loa-Speaker's Betrayal##47733 |goto 76.69,16.26
step
talk Jamil Abul'housin##132637
|tip Inside the building.
turnin The Scent of Vengeance##47739 |goto 76.47,16.00
step
talk Jol the Ancient##124063
|tip Inside the building.
turnin Ancient Tortollan Remedies##47735 |goto 76.44,16.16
accept Mending Body and Soul##51677 |goto 76.44,16.16
step
talk Jol the Ancient##124063
Tell him _"I am ready, Jol."_
Speak to Jol |q 51677/1 |goto 76.44,16.16
step
Watch the dialogue
click Astringent Spices
|tip Inside the building.
collect Astringent Spices##160566 |goto 76.56,15.95 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Astringent Spices>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 18
step
Watch the dialogue
click Sea Urchin Brine
|tip Inside the building.
collect Sea Urchin Brine##160567 |goto 76.46,16.25 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Sea Urchin Brine>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 36
step
Watch the dialogue
click Jol's Preserved Notes
|tip Inside the building.
collect Ancient Tortollan Scroll##160568 |goto 76.27,16.01 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Ancient Tortollan Scroll>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 54
step
Watch the dialogue
click Odoriferous Stew
|tip Inside the building.
Assist Jol |q 51677/2 |goto 76.49,15.93 |count 72
step
Watch the dialogue
click Clotting Powder
|tip Inside the building.
collect Clotting Powder##160569 |goto 76.36,16.16 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Clotting Powder>_
Assist Jol |q 51677/2 |goto 76.50,16.08 |count 90
step
Watch the dialogue
Assist Jol |q 51677/2 |goto 76.50,16.08 |count 100
step
talk Jol the Ancient##138598
|tip Inside the building.
turnin Mending Body and Soul##51677 |goto 76.44,16.17
step
talk Jamil Abul'housin##132637
|tip Inside the building.
accept The Will of the Loa##47738 |goto 76.47,16.00
step
click Idol of Rezan##281024
Place the Idol of Rezan |q 47738/1 |goto 76.85,13.23
step
Watch the dialogue
talk Rezan##133068
Tell him _"Rastakhan is injured and will not wake. We need your help."_
Speak to Rezan |q 47738/2 |goto 77.12,13.24
step
Watch the dialogue
clicknpc King Rastakhan##133107
Retrieve Rastakhan's Soul |q 47738/3 |goto 76.89,13.23
step
clicknpc King Rastakhan##132631
|tip Inside the building.
Restore Rastakhan's Soul to His Body |q 47738/4 |goto 76.46,16.07
step
Watch the dialogue
talk King Rastakhan##124062
turnin The Will of the Loa##47738 |goto 76.66,16.13
accept Zul's Mutiny##47742 |goto 76.66,16.13
accept Rastakhan's Might##51678 |goto 76.66,16.13
step
talk Zolani##124083
accept A Strange Port of Call##51679 |goto 76.65,16.18
step
talk Jol the Ancient##124063
|tip Inside the building.
home Zeb'ahari Inn |goto 76.42,16.08 |q 51679
stickystart "Slay_Mutinous_Zandalaris"
step
click Rope |goto 80.81,20.48
Climb Onto the Ship |goto 80.85,20.30 < 2 |noway |c |q 51678
step
click Rope |goto 80.85,20.29
Board the Ship |goto 80.88,20.39 < 2 |noway |c |q 51678
step
kill Windcaller Ula'jan##133140
|tip At the top of the ship.
collect Skull of Windcaller Ula'jan##156861 |q 51678/1 |goto 81.30,19.59
step
click Temple of Rezan Map##290996
|tip Inside the ship, on the deck level.
Search the Navigation Chamber |q 51679/1 |goto 81.27,19.74
step
Search the Hold |q 51679/2 |goto Zuldazar/1 52.51,77.91
|tip Downstairs one level inside the ship.
step
clicknpc Chronicler To'kini##138728
|tip Downstairs two levels inside the ship.
Search the Crew Quarters |q 51679/3 |goto Zuldazar/2 47.39,44.05
step
label "Slay_Mutinous_Zandalaris"
Kill enemies around this area
Slay #10# Mutinous Zandalari |q 47742/1 |goto 49.68,44.95
step
talk King Rastakhan##124062
turnin Zul's Mutiny##47742 |goto Zuldazar/0 76.66,16.13
turnin Rastakhan's Might##51678 |goto Zuldazar/0 76.66,16.13
turnin A Strange Port of Call##51679 |goto Zuldazar/0 76.66,16.13
accept The Temple of Rezan##47737 |goto Zuldazar/0 76.66,16.13
step
Follow the path up |goto 77.41,16.65 < 20 |only if walking
Follow the road |goto 75.72,20.17 < 30 |only if walking
talk King Rastakhan##124655
turnin The Temple of Rezan##47737 |goto 72.03,21.03
accept House of the King##47740 |goto 72.03,21.03
step
talk Zolani##124656
accept Heads Will Roll##47736 |goto 72.09,21.20
stickystart "Collect_Traitorous_Zandalari_Heads"
step
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the Hunter |q 47740/1 |goto 72.16,23.80
step
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the King |q 47740/3 |goto 73.82,22.94
step
Run up the stairs |goto 73.04,24.34 < 15 |only if walking
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the Conqueror |q 47740/2 |goto 73.68,25.76
step
label "Collect_Traitorous_Zandalari_Heads"
Kill enemies around this area
|tip Kao-Tien enemies will not count for this quest goal.
collect 12 Traitorous Zandalari Head##151384 |q 47736/1 |goto 73.61,25.18
step
Run up the stairs |goto 74.33,24.94 < 15 |only if walking
talk Zolani##124656
turnin Heads Will Roll##47736 |goto 74.85,24.90
step
talk King Rastakhan##124655
turnin House of the King##47740 |goto 74.87,24.94
accept Partners in Heresy##47734 |goto 74.87,24.94
step
kill Darkweaver Ji'tan##124085 |q 47734/1 |goto 75.16,23.16
step
kill Soulrender Gao'tan##124088 |q 47734/2 |goto 75.12,26.56
|tip Inside the building.
|tip Stand in the blue circle when he casts it beneath his feet.
step
talk King Rastakhan##124655
turnin Partners in Heresy##47734 |goto 74.87,24.94
accept To Sacrifice a Loa##47741 |goto 74.87,24.94
step
Run up the stairs |goto 75.31,24.55 < 15 |only if walking
kill Vilnak'dor##133570 |q 47741/1 |goto 75.99,24.91
step
Watch the dialogue
Disrupt the Loa Sacrifice Ritual |q 47741/2 |goto 76.03,24.92
step
talk King Rastakhan##124655
Tell him _"Let's get out of here!"_
Watch the dialogue
Begin Following King Rastakhan |goto 76.06,24.90 > 10 |c |q 47741
step
Watch the dialogue
|tip Follow King Rastakhan as he walks.
Escape the Temple of Rezan |q 47741/3 |goto 73.37,28.20
step
talk Rezan##124948
turnin To Sacrifice a Loa##47741 |goto 70.83,29.90
step
talk King Rastakhan##124915
accept King or Prey##51111 |goto 70.98,29.91
step
talk Scroll of Flight##136331
fpath Scaletrader Post |goto 70.78,29.60
step
Enter the building |goto Dazar'alor/0 49.99,41.88 < 10 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin King or Prey##51111 |goto Dazar'alor/2 41.43,72.44
accept Hunting Zul##49421 |goto Dazar'alor/2 41.43,72.44
step
Leave the building |goto Dazar'alor/0 49.94,42.10 < 10 |walk
Run up the stairs |goto Dazar'alor/0 51.75,19.10 < 15 |only if walking
Follow the path |goto Dazar'alor/0 45.36,23.81 < 15 |only if walking
talk King Rastakhan##129491
turnin Hunting Zul##49421 |goto Dazar'alor/0 38.92,27.15
accept The Warpack##49965 |goto Dazar'alor/0 38.92,27.15
step
Watch the dialogue
clicknpc Wardruid Loti##134132
Ride with Wardruid Loti |invehicle |goto 38.81,27.02 |q 49965
step
Watch the dialogue
Ride with the Warpack |q 49965/1 |goto Zuldazar/0 49.19,44.79 |notravel
step
talk Gonk##129740
turnin The Warpack##49965 |goto 49.27,44.32
accept Heretics##49422 |goto 49.27,44.32
step
talk Wardruid Loti##129561
accept The Full Prophecy##49424 |goto 49.34,44.35
stickystart "Bring_Ruin"
step
click The Word of Zul III##280350
Read The Word of Zul III |q 49424/3 |goto 48.81,42.76
step
Run up the stairs |goto 49.75,42.48 < 15 |only if walking
click The Word of Zul II##280349
|tip Inside the building.
Read The Word of Zul II |q 49424/2 |goto 49.01,40.57
step
Cross the bridge |goto 49.73,40.44 < 15 |only if walking
click The Word of Zul I##280348
Read The Word of Zul I |q 49424/1 |goto 48.75,39.40
step
_Next to you:_
talk Wardruid Loti##132041
turnin The Full Prophecy##49424
step
label "Bring_Ruin"
Kill enemies around this area
clicknpc Skykiller Ballista##129540+
|tip They look like wooden crossbow machines on the ground around this area.
Bring Ruin |q 49422/1 |goto 49.07,39.36
step
talk Hexlord Raal##129703
turnin Heretics##49422 |goto 49.65,37.98
accept City of Gold##49425 |goto 49.65,37.98
step
clicknpc Ata the Winglord##129701
Ride Ata the Winglord |q 49425/1 |goto 49.64,37.91
step
Watch the dialogue
Kill enemies around this area
|tip Use the "Explosive Wrath Totem" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #75# Forces of Zul |q 49425/2 |goto 45.97,36.79
step
Watch the dialogue
Travel to Atal'Dazar |goto 43.77,39.08 < 7 |c |q 49425 |notravel
step
talk Rezan##131049
turnin City of Gold##49425 |goto 43.70,39.45
accept The King's Gambit##49426 |goto 43.70,39.45
step
March on Atal'Dazar |q 49426/1 |goto 42.10,39.28
step
talk King Rastakhan##131070
Ask him _"What now?"_
Watch the dialogue
Speak with King Rastakhan |q 49426/2 |goto 42.08,39.52
step
Run up the stairs |goto 42.10,38.71 < 15 |only if walking
Run up the stairs |goto 42.33,37.58 < 15 |only if walking
Watch the dialogue
Get Rastakhan to Safety |q 49426/3 |goto 42.73,37.65
step
talk King Rastakhan##129757
turnin The King's Gambit##49426 |goto 42.73,37.65
step
Follow the path up |goto 42.64,35.85 < 15 |only if walking
Jump down carefully here |goto 43.79,36.93 < 15 |only if walking
Follow the road |goto 44.33,38.54 < 20 |only if walking
Cross the bridge |goto 46.12,38.00 < 15 |only if walking
talk Loz the Paku'ai##130790
fpath Atal'dazar |goto 46.16,35.81
step
_Congratulations!_
You completed the Zuldazar Loremaster (Story Quest Only) leveling guide.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Nazmir Loremaster (Story Quest Only)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Nazmir storylines:\n\nDeep in the Swamp\nUndercover Sista\nA Friend of the Frogs\nBring the Boom\nA Pact with Death\nTurtle Power\nEverything Contained\nBleeding the Blood Trolls",
condition_suggested=function() return level >= 110 and not achieved(11868) and completedq(52131) end,
condition_end=function() return achieved(11868) end,
startlevel=110.0,
endlevel=120.0,
image=ZGV.DIR.."\\Guides\\Images\\Nazmir",
},[[
leechsteps "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice" 62-77
step
click Scouting Map
|tip Inside the building.
accept Nazmir##47512 |goto Dazar'alor/2 41.71,69.41
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Nazmir##47512 |goto 41.14,66.73
accept Journey to Nazmir##47103 |goto 41.18,66.77
step
Leave the building |goto Dazar'alor/0 49.97,42.15 < 10 |walk
talk Rokhan##126549
turnin Journey to Nazmir##47103 |goto Dazar'alor/0 51.66,41.29
accept Nazmir, the Forbidden Swamp##48535 |goto Dazar'alor/0 51.66,41.29
step
talk Paku'ai Rokota##122689
Tell her _"Get me as close as you can to Nazmir."_
Take a Flight to Nazmir Outskirts |q 48535/1 |goto 51.91,41.20
step
Cross the bridge |goto Zuldazar/0 52.71,20.65 < 15 |only if walking
Meet with Princess Talanji |q 48535/2 |goto Nazmir/0 43.36,86.52
step
talk Princess Talanji##120904
turnin Nazmir, the Forbidden Swamp##48535 |goto 43.00,86.03
accept Into The Darkness##47105 |goto 43.00,86.03
step
Scout Ahead |q 47105/1 |goto 46.94,80.18
step
Watch the dialogue
talk Princess Talanji##130844
turnin Into The Darkness##47105 |goto 47.25,79.74
accept Leave None Standing##47264 |goto 47.25,79.74
accept Improper Burial##47130 |goto 47.25,79.74
stickystart "Slay_Blood_Trolls"
step
use the Ceremonial Torch##154724
|tip Use it on Dead Zandalari around this area.
|tip They look like Troll corpses laying on the ground around this area.
Burn #5# Dead Zandalari |q 47130/1 |goto 48.96,78.41
step
label "Slay_Blood_Trolls"
Kill Blood Troll enemies around this area
Slay #8# Blood Trolls |q 47264/1 |goto 48.96,78.41
step
talk Princess Talanji##121241
turnin Leave None Standing##47264 |goto 45.65,74.79
turnin Improper Burial##47130 |goto 45.65,74.79
accept Ending the Blood Trolls##47262 |goto 45.65,74.79
step
Run up the stairs |goto 45.61,73.48 < 15 |only if walking
kill Grand Ma'da Ateena##121504
|tip She will eventually escape.
Watch the dialogue
Slay Grand Ma'da Ateena |q 47262/1 |goto 44.91,71.65
step
Watch the dialogue
talk Princess Talanji##130844
turnin Ending the Blood Trolls##47262 |goto 45.21,71.04
accept A Time of Revelation##47263 |goto 45.21,71.04
step
Watch the dialogue
talk Princess Talanji##131146
Tell her _"We need to move, we shouldn't stay here."_
Speak with Talanji at the Overlook |q 47263/1 |goto 45.57,68.65
step
Watch the dialogue
Travel to Zul'jan Ruins |goto 39.41,76.65 < 7 |c |q 47263 |notravel
step
talk Zabar##121828
fpath Zul'jan |goto 38.85,78.14
step
talk Crazy Vaza##121840
|tip Inside the building.
home Zul'jan Ruins |goto 38.62,78.66 |q 49902 |future
step
talk Princess Talanji##121288
turnin A Time of Revelation##47263 |goto 39.14,79.07
accept The Aid of the Loa##47188 |goto 39.14,79.07
step
talk Princess Talanji##121288
Tell her _"Let's discuss what we can do to fight the blood trolls."_
Watch the dialogue
Listen to Talanji and Rokhan |q 47188/1 |goto 39.15,79.07
step
talk Princess Talanji##121288
turnin The Aid of the Loa##47188 |goto 39.15,79.07
accept The Shadow of Death##47241 |goto 39.15,79.07
step
Follow the path |goto 37.50,71.21 < 30 |only if walking
Enter the building |goto 37.73,63.11 < 10 |walk
click Broken Spear##271170
|tip Inside the building.
Investigate the Abandoned Ruins |q 47241/2 |goto 37.50,63.06
step
click Weathered Shrine##270902
Investigate the Weathered Shrine |q 47241/1 |goto 39.61,64.97
step
clicknpc Blood Scavenger##122094
Investigate the Shrine of Bones |q 47241/3 |goto 35.62,58.58
step
Watch the dialogue
talk Hanzabu##122102
turnin The Shadow of Death##47241 |goto 36.62,53.93
accept A Culling of Souls##47244 |goto 36.62,53.93
step
kill Blood Witch Najima##122204 |q 47244/1 |goto 38.55,49.98
step
talk Hanzabu##124428
turnin A Culling of Souls##47244 |goto 39.52,43.83
accept Spiritual Restoration##49278 |goto 39.52,43.83
step
clicknpc Drained Spirit##134363
Restore the Drained Spirit |q 49278/1 |goto 39.04,43.90 |count 1
step
clicknpc Drained Spirit##134363
Restore the Drained Spirit |q 49278/1 |goto 38.86,43.50 |count 2
step
talk Du'ba##122191
fpath Zo'bal Ruins |goto 40.18,42.83
step
clicknpc Drained Spirit##134363
|tip Inside the building.
Restore the Drained Spirit |q 49278/1 |goto 40.89,43.54 |count 3
step
talk Du'ba##122191
turnin Spiritual Restoration##49278 |goto 39.52,43.83
step
Watch the dialogue
talk Witch Doctor Kejabu##122795
accept Blood Troll on the Outside##49440 |goto 39.63,43.87
step
talk Witch Doctor Kejabu##122795
accept The Necropolis##47868 |goto 39.52,43.83
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.41,43.53 |count 1
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.57,43.74 |count 2
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.74,43.52 |count 3
step
talk Witch Doctor Kejabu##122795
Tell him _"I'm ready to begin the ritual to disguise myself as a blood troll."_
Watch the dialogue
Speak to Witch Doctor Kejabu to Complete the Ritual |q 49440/2 |goto 39.63,43.86
step
Watch the dialogue
talk Witch Doctor Kejabu##122795
turnin Blood Troll on the Outside##49440 |goto 39.63,43.86
accept Sneaking into Zalamar##48699 |goto 39.63,43.86
step
talk Hanzabu##124513
turnin The Necropolis##47868 |goto 39.58,32.58
accept A Tribute for Death##47880 |goto 39.58,32.58
step
Draw the Ritual Circle |q 47880/1 |goto 39.58,32.35
|tip Walk on top of the dashed lines on the ground to trace them.
step
click Drum of Spirits##270997
Sound the Drum of Spirits |q 47880/2 |goto 39.59,31.84
step
Enter the building |goto 39.56,26.73 < 10 |walk
Watch the dialogue
talk Bwonsamdi##122688
|tip Inside the building.
turnin A Tribute for Death##47880 |goto 39.57,24.66
accept Remnants of the Damned##47491 |goto 39.57,24.66
accept A Desecrated Temple##49348 |goto 39.57,24.66
accept That Which Haunts the Dead##47247 |goto 39.57,24.66
stickystart "Collect_Decaying_Bloodstones"
step
Leave the building |goto 39.59,26.56 < 10 |walk
kill Hex Priestess Tizeja##122666 |q 47247/2 |goto 36.09,29.88
|tip Kill the enemies channeling on her to be able to attack her.
stickystart "Destroy_Vile_Desecrations"
step
Follow the path |goto 37.59,28.17 < 15 |only if walking
kill Warlord Malaja##122664 |q 47247/1 |goto 43.42,30.02
step
talk Keula##126588
accept The Forlorn Soul##49432 |goto 42.58,31.46
step
label "Destroy_Vile_Desecrations"
clicknpc Vile Desecration##129086+
|tip They look like red bubbles on the walls around this area.
Destroy #5# Vile Desecration |q 49348/1 |goto 42.61,29.77
step
Enter the crypt |goto 39.59,31.66 < 10 |walk
click Sarcophagus Lid##278692
|tip Inside the crypt.
Find Keula's Mother |q 49432/1 |goto 39.59,34.95
step
Watch the dialogue
kill The Matron Shaazula##126616
|tip Inside the crypt.
Subdue Matron Shaazula |q 49432/2 |goto 39.65,35.00
step
Leave the crypt |goto 39.59,31.73 < 10 |c |q 47491
step
label "Collect_Decaying_Bloodstones"
Kill Horror enemies around this area
collect 6 Decaying Bloodstone##150753 |q 47491/1 |goto 39.60,30.29
step
Enter the building |goto 39.56,26.73 < 10 |walk
talk Bwonsamdi##122688
|tip Inside the building.
turnin Remnants of the Damned##47491 |goto 39.56,24.68
turnin A Desecrated Temple##49348 |goto 39.56,24.68
turnin That Which Haunts the Dead##47247 |goto 39.56,24.68
turnin The Forlorn Soul##49432 |goto 39.56,24.68
accept Soulbound##47249 |goto 39.56,24.68
step
Leave the building |goto 39.60,26.53 < 10 |walk
talk Bwonsamdi##126707
Tell him _"Let's begin."_
Watch the dialogue
Begin the Ritual |q 47249/1 |goto 39.58,30.21
step
Watch the dialogue
kill Grand Ma'da Ateena##122711 |q 47249/2 |goto 39.57,30.96
|tip She will eventually escape.
step
talk Bwonsamdi##122766
turnin Soulbound##47249 |goto 39.58,30.22
accept We'll Meet Again##47250 |goto 39.58,30.22
step
talk Hanzabu##127004
turnin We'll Meet Again##47250 |goto 39.52,43.83
step
Follow the path |goto 36.94,47.53 < 30 |only if walking
talk Bloodseeker Jo'chunga##127128
Tell him _"Kejabu sent me."_
Find Bloodseeker Jo'chunga |q 48699/1 |goto 32.37,46.17
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Sneaking into Zalamar##48699 |goto 33.35,45.74
accept Isolating Zalamar##48801 |goto 33.35,45.74
accept How to Be a Blood Troll##48890 |goto 33.35,45.74
stickystart "Test_Unproven_Drudges"
step
talk Wardrummer Sheej##129380
|tip At the top of the tower.
Tell him _"Da camp be needin' more stone. Go an' recover only da purest of rocks within Nazmir. Sixty of dem."_
Remove Wardrummer Sheej |q 48801/2 |goto 35.30,46.80
step
talk Wardrummer Gix##129381
|tip At the top of the tower.
Tell him _"We be needin' fifty pristine crocolisk hides. Go an' retrieve dem, and don' be comin' back 'til you have dem all."_
Remove Wardrummer Gix |q 48801/3 |goto 31.16,49.75
step
label "Test_Unproven_Drudges"
clicknpc Unproven Drudge##126933+
|tip They look like blood trolls that are tied up to poles around this area.
Test #5# Unproven Drudge |q 48890/1 |goto 31.59,45.66
step
talk Wardrummer Saljo##127999
|tip At the top of the tower.
Tell him _"Da camp be needin' more wood. Go an' retrieve thirty pieces of only da most pristine lumber!"_
Remove Wardrummer Saljo |q 48801/1 |goto 31.49,43.26
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Isolating Zalamar##48801 |goto 33.35,45.74
turnin How to Be a Blood Troll##48890 |goto 33.35,45.74
step
Watch the dialogue
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
accept Poisoning the Brood##49078 |goto 33.35,45.74
accept Mark of the Bat##48800 |goto 33.35,45.74
stickystart "Poison_Tamed_Warspawns"
step
kill Blood Witch Yialu##126891
|tip Inside the building.
collect Yialu's Talisman##153671 |q 48800/1 |goto 33.65,49.33
step
kill Blood Priestess Zu'Anji##126890
|tip Inside the building.
collect Zu'Anji's Talisman##153674 |q 48800/3 |goto 32.68,49.51
step
kill Blood Witch Vashera##126888
|tip Inside the building.
collect Vashera's Talisman##153672 |q 48800/2 |goto 30.70,45.28
step
label "Poison_Tamed_Warspawns"
use the Poisoned Mojo Flask##153012
|tip Use it on Tamed Warspawns around this area.
|tip They look like large bats hanging upside down from poles and buildings around this area.
Poison #5# Tamed Warspawns |q 49078/1 |goto 31.02,48.14
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Poisoning the Brood##49078 |goto 33.35,45.74
turnin Mark of the Bat##48800 |goto 33.35,45.74
step
Watch the dialogue
talk Jo'chunga##129378
|tip Inside the building.
accept Hir'eek, the Bat Loa##49079 |goto 33.35,45.74
step
Reach the Blood Ritual Pool |goto 32.18,46.31 < 5 |c |q 49079
step
_Next to you:_
talk Jo'chunga##129378
Tell him _"Jo'chunga, I'm ready. Let's enact our plan to stop Hir'eek."_
Watch the dialogue
Speak with Jo'chunga Within the Blood Ritual Pool |q 49079/1 |goto 32.18,46.31
step
Watch the dialogue
Weaken Hir'eek |q 49079/2 |goto 31.99,46.30
|tip Use the ability on your action bar.
|tip Use it repeatedly.
step
Watch the dialogue
Fall into Hir'eek's Lair |goto 31.41,46.97 < 3 |c |q 49079
step
Watch the dialogue
talk Jo'chunga##128276
|tip Inside the cave.
turnin Hir'eek, the Bat Loa##49079 |goto 31.23,46.80
accept To Kill a Loa##49081 |goto 31.23,46.80
step
kill Hir'eek##128074 |q 49081/1 |goto 29.14,46.57
|tip Inside the cave.
step
talk Jo'chunga##128276
|tip Inside the cave.
turnin To Kill a Loa##49081 |goto 31.25,46.81
accept Upward and Onward##49082 |goto 31.25,46.81
step
clicknpc Hir'eek Spawnling##128291
|tip Inside the cave.
Secure a Flight Out of Hir'eek's Lair |q 49082/1 |goto 31.26,46.72
step
Reach the Outskirts of Zalamar |goto 36.11,47.65 < 7 |c |q 49082
step
talk Witch Doctor Kejabu##122795
Tell him _"Jo'chunga is alive, the loa Hir'eek though..."_
Inform Witch Doctor Kejabu |q 49082/2 |goto 39.63,43.86
step
talk Witch Doctor Kejabu##122795
turnin Upward and Onward##49082 |goto 39.63,43.86
step
talk Princess Talanji##127961
accept Catching Up##49185 |goto 39.39,44.00
step
talk Princess Talanji##127961
Choose _(Tell Talanji about getting Bwonsamdi's aid and killing Hir'eek.)_
Tell Talanji About Bwonsamdi and Hir'eek |q 49185/1 |goto 39.40,44.00
step
talk Princess Talanji##127961
turnin Catching Up##49185 |goto 39.39,44.00
step
talk Lashk##127960
accept Torga, the Turtle Loa##49064 |goto 39.45,44.02
step
Follow the path |goto 40.15,45.72 < 30 |only if walking
talk Kisha##127958
Tell her _"Lashk said you could tell me where I can find Torga."_
Meet Kisha |q 49064/1 |goto 55.65,39.40
step
Locate Torga |q 49064/2 |goto 55.59,28.59
step
Watch the dialogue
talk Princess Talanji##127961
turnin Torga, the Turtle Loa##49064 |goto 56.57,26.67
accept Beseeching Bwonsamdi##49067 |goto 56.57,26.67
step
talk Princess Talanji##127961
Tell her _"I'm ready to try and summon Bwonsamdi."_
Beseech Bwonsamdi for Aid |q 49067/1 |goto 56.57,26.67
step
talk Princess Talanji##127961
turnin Beseeching Bwonsamdi##49067 |goto 56.57,26.67
accept Cease all Summoning##49080 |goto 56.57,26.67
step
talk Lashk##127960
accept Dreadtick Combustion##49071 |goto 56.51,26.65
step
talk Bwonsamdi##128096
accept Souls for the Death Loa##49070 |goto 56.66,26.52
stickystart "Blow_Up_Dreadtick_Leechers"
stickystart "Claim_Blood_Troll_Souls"
step
Enter the cave |goto 58.71,24.64 < 15 |walk
kill Summoner Yarz##127935 |q 49080/1 |goto 61.05,18.08
|tip Inside the cave.
step
label "Blow_Up_Dreadtick_Leechers"
use the Scroll of Combustion##153024
|tip Use it on Dreadtick Leecher around this area inside the cave.
Blow Up #5# Dreadtick Leechers |q 49071/1 |goto 60.15,21.06
step
label "Claim_Blood_Troll_Souls"
Kill Loa-Gutter enemies around this area
|tip Inside the cave.
Claim #10# Blood Troll Souls |q 49070/1 |goto 60.15,21.06
step
Leave the cave |goto 58.70,24.87 < 15 |walk
talk Bwonsamdi##128096
turnin Souls for the Death Loa##49070 |goto 56.66,26.53
step
talk Princess Talanji##127961
turnin Cease all Summoning##49080 |goto 56.57,26.67
step
talk Lashk##127960
turnin Dreadtick Combustion##49071 |goto 56.52,26.65
step
talk Bwonsamdi##128096
accept Speaking with the Dead##49120 |goto 56.66,26.52
step
talk Bwonsamdi##128096
Tell him _"Bwonsamdi, we're ready for you to summon Torga's spirit."_
Watch the dialogue
Hear Torga's Wisdom |q 49120/1 |goto 56.66,26.52
step
talk Princess Talanji##127961
turnin Speaking with the Dead##49120 |goto 56.57,26.67
step
talk Kisha##127958
accept Negative Blood##49125 |goto 56.59,26.75
stickystart "Destroy_Corrupted_Loa_Blood"
step
click Scroll of Fate's Hand##280347
collect Damaged Scroll of Fate's Hand##156568 |q 49125/2 |goto 62.28,24.58
step
label "Destroy_Corrupted_Loa_Blood"
use the Scroll of Purification##160559
|tip Use it on Corrupted Loa Blood around this area.
|tip They look like large red balls floating above the ground around this area.
Destroy #8# Corrupted Loa Blood |q 49125/1 |goto 62.23,24.06
step
Enter the cave |goto 65.45,17.92 < 10 |walk
talk Kisha##127958
|tip Inside the cave.
turnin Negative Blood##49125 |goto 65.72,17.96
accept Forcing Fate's Hand##49126 |goto 65.72,17.96
step
Summon the Hand of Fate |q 49126/1 |goto 65.72,17.96
|tip Use the "Scroll of Fate's Hand" ability.
|tip It appears as a button on the screen.
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy #50# Undead |q 49126/2 |goto 63.16,15.57
step
Return to Kisha |goto 59.07,13.69 < 15 |c |q 49126
step
talk Kisha##127958
turnin Forcing Fate's Hand##49126 |goto 58.48,13.78
accept Loa-Free Diet##49130 |goto 58.48,13.78
step
talk Princess Talanji##127961
accept Sanctifying Ground##49131 |goto 58.47,13.85
step
talk Lashk##127960
accept Crushing the Skullcrushers##49132 |goto 58.52,13.88
stickystart "Collect_Parts_Of_Torga"
stickystart "Kill_Loa_Gutter_Skullcrushers"
step
clicknpc Sanctifying Totem##128179+
|tip They look like small wooden totems with red fire swirling around them on the ground around this area.
Place #4# Sanctifying Totem |q 49131/1 |goto 56.59,20.22
step
label "Collect_Parts_Of_Torga"
Kill Loa-Gutter enemies around this area
|tip Loa-Gutter Skullcrushers will not drop the quest item.
collect 6 Parts of Torga##153070 |q 49130/1 |goto 56.59,20.22
step
label "Kill_Loa_Gutter_Skullcrushers"
kill 4 Loa-Gutter Skullcrusher##127919 |q 49132/1 |goto 56.59,20.22
step
Follow the path |goto 55.31,23.72 < 20 |only if walking
talk Lashk##127960
turnin Crushing the Skullcrushers##49132 |goto 56.51,26.65
step
talk Princess Talanji##127961
turnin Sanctifying Ground##49131 |goto 56.57,26.67
step
talk Kisha##127958
turnin Loa-Free Diet##49130 |goto 56.59,26.76
step
talk Princess Talanji##127961
accept Jungo, Herald of G'huun##49136 |goto 56.57,26.67
step
Enter the cave |goto 58.72,24.55 < 15 |walk
Watch the dialogue
kill Jungo, Herald of the Blood God##128184 |q 49136/1 |goto 61.13,17.68
|tip Inside the cave.
step
Leave the cave |goto 58.70,24.87 < 15 |walk
talk Princess Talanji##127961
turnin Jungo, Herald of G'huun##49136 |goto 56.57,26.67
step
talk Lashk##127960
accept Torga's Eternal Return##49160 |goto 56.51,26.65
step
use the Scroll of Eternal Return##153131
Watch the dialogue
Put Torga's Spirit to Rest |q 49160/1 |goto 56.51,26.65
step
talk Kisha##127958
turnin Torga's Eternal Return##49160 |goto 56.59,26.75
accept To Gloom Hollow##49902 |goto 56.59,26.75
step
Follow the path |goto 55.59,28.61 < 30 |only if walking
talk Crez##131208
Choose _(Tell Crez about what happened to Torga, and the chance for new stories to be told if he goes to Gloom Hollow.)_
Recruit the Tortollan |q 49902/1 |goto 55.74,39.72 |count 1
step
talk Korkush##131209
Choose _(Tell Korkush there's a great story to be had if he helps the Horde fight the blood trolls and save the Zandalari.)_
Recruit the Tortollan |q 49902/1 |goto 60.23,46.18 |count 2
step
talk Yash##131210
Choose _(Tell Yash if he wants to live a crazy story that he should go to Gloom Hollow to help stop the blood trolls and their god.)_
Recruit the Tortollan |q 49902/1 |goto 63.87,47.74 |count 3
step
talk Rokhan##131213
turnin To Gloom Hollow##49902 |goto 67.43,42.31
accept Getting the Message##47245 |goto 67.43,42.31
step
talk Shadow Hunter Mutumba##122991
accept Staying Hidden##47525 |goto 67.41,42.06
step
talk Korkush##131988
|tip He walks around this area.
home Gloom Hollow |goto 67.76,41.85 |q 47525
step
clicknpc Cuja##121207
fpath Gloom Hollow |goto 66.98,43.78
step
click Message Rocket##272409
Investigate the Disturbance |q 47245/1 |goto 68.52,43.82
step
talk Rokhan##131213
turnin Getting the Message##47245 |goto 67.43,42.31
accept Rendezvous with the Libation##47631 |goto 67.43,42.31
step
Investigate The Frogmarsh |q 47525/1 |goto 68.58,46.51
step
talk Witch Doctor Zentimo##124376
turnin Staying Hidden##47525 |goto 68.59,46.74
accept Hunt the Hunter##47659 |goto 68.59,46.74
accept Fallen Idols##47660 |goto 68.59,46.74
stickystart "Collect_Stolen_Idols_of_Krag'wa"
step
clicknpc Mag'ash the Poisonous##126039
accept A Poisonous Touch##48402 |goto 69.16,50.46
stickystart "Poison_Bloodhunter_Trolls"
step
kill Warmother Boatema##123328 |q 47659/1 |goto 68.24,51.58
step
label "Collect_Stolen_Idols_of_Krag'wa"
click Stolen Idol of Krag'wa##271648+
|tip They look like stone statues on the ground around this area.
collect 8 Stolen Idol of Krag'wa##151113 |q 47660/1 |goto 68.45,50.66
step
label "Poison_Bloodhunter_Trolls"
Kill Bloodhunter enemies around this area
|tip Use the "Poison Tipped Dart" ability.
|tip It appears as a button on the screen.
Poison #6# Bloodhunter Trolls |q 48402/1 |goto 68.45,50.66
step
Enter the cave |goto 73.40,53.77 < 15 |walk
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Hunt the Hunter##47659 |goto 75.42,56.61
turnin Fallen Idols##47660 |goto 75.42,56.61
turnin A Poisonous Touch##48402 |goto 75.42,56.61
accept The Last Witch Doctor of Krag'wa##47623 |goto 75.42,56.61
step
clicknpc Scepter of Rebirth##133900
Retrieve the Scepter of Rebirth |q 47623/1 |goto 75.13,56.69
step
clicknpc Witch Doctor Zentimo##124559
Perform the Ritual |q 47623/2 |goto 75.13,56.70
step
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin The Last Witch Doctor of Krag'wa##47623 |goto 75.42,56.61
accept A True Loa Feast##47621 |goto 75.42,56.61
accept A Magical Glow##47622 |goto 75.42,56.61
stickystart "Collect_Chunky_Meat"
step
Leave the cave |goto 73.40,53.77 < 15 |walk
Follow the path up |goto 73.75,49.87 < 20 |only if walking
use the Glowfly Bottle##151237
|tip Use it next to Glowflies around this area.
|tip They look like small yellow and blue insects flying above the ground around this area.
Collect #25# Beautiful Glowflies |q 47622/1 |goto 75.89,45.98
step
label "Collect_Chunky_Meat"
Kill enemies around this area
collect 35 Chunky Meat##151040 |q 47621/1 |goto 75.77,45.37
step
Follow the path down |goto 73.71,48.66 < 20 |only if walking
Enter the cave |goto 73.40,53.77 < 15 |walk
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin A True Loa Feast##47621 |goto 75.43,56.62
turnin A Magical Glow##47622 |goto 75.43,56.62
accept Totemic Restoration##47540 |goto 75.43,56.62
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.21,56.69 |count 1
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.33,56.38 |count 2
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.65,56.35 |count 3
step
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Totemic Restoration##47540 |goto 75.42,56.62
accept Krag'wa the Terrible##47696 |goto 75.43,56.62
step
Leave the cave |goto 73.40,53.77 < 15 |walk
Meet Krag'wa at Razorjaw River |q 47696/1 |goto 67.14,56.16
step
talk Krag'wa the Huge##124637
Tell him _"I am ready to fight the blood trolls."_
Speak with Krag'wa the Huge |invehicle |goto 67.14,56.16 |q 47696
stickystart "Slay_Blood_Troll_Forces"
step
kill Ren'Zuli##124628 |q 47696/3 |goto 60.05,53.30
|tip He's mounted on a tyrannosaurus rex.
|tip Use the abilities on your action bar.
step
label "Slay_Blood_Troll_Forces"
Kill Bloodhunter enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Blood Troll Forces |q 47696/2 |goto 62.13,56.73
step
Watch the dialogue
Return to The Frogmarsh |goto 72.98,52.55 < 7 |c |q 47696
step
Enter the cave |goto 73.40,53.77 < 15 |walk
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Krag'wa the Terrible##47696 |goto 75.43,56.63
step
talk Shadow Hunter Mutumba##124641
|tip Inside the cave.
accept Krag'wa's Aid##47697 |goto 75.17,56.67
step
Return to Gloom Hollow |q 47697/1 |goto 67.42,42.24
step
talk Princess Talanji##126213
turnin Krag'wa's Aid##47697 |goto 67.42,42.24
step
Locate Patch |q 47631/1 |goto 74.59,38.86
step
talk Patch##123178
turnin Rendezvous with the Libation##47631 |goto 74.59,38.86
accept No Goblin Left Behind##47597 |goto 74.59,38.86
step
talk Ticker##123436
accept Revenge: Served Hot##47599 |goto 74.76,39.01
stickystart "Kill_Vilescale_Behemoths"
step
click Airtight Escape Pod##271664
Rescue Newt |q 47597/2 |goto 79.30,36.73
step
clicknpc Grit##123233
Rescue Grit |q 47597/1 |goto 76.99,32.65
step
click Naga Cage##279661
Rescue Volt |q 47597/3 |goto 79.97,32.39
step
label "Kill_Vilescale_Behemoths"
use Ticker's Rocket Launcher##151363
|tip Use it on Vilescale Behemoths around this area.
kill 4 Vilescale Behemoth##123461 |q 47599/1 |goto 79.96,33.05
step
talk Zibir the Wingmaster##122198
fpath Forlorn Ruins |goto 82.15,26.69
step
talk Patch##123544
|tip Inside the building.
turnin No Goblin Left Behind##47597 |goto 82.37,27.29
step
talk Ticker##123548
|tip Inside the building.
turnin Revenge: Served Hot##47599 |goto 82.39,27.20
accept There Is No Plan "B"##47596 |goto 82.39,27.20
step
talk Patch##123544
|tip Inside the building.
accept Head of the Viper##47711 |goto 82.37,27.30
step
talk Newt##123545
|tip Inside the building.
accept Pilfering and Fencing##47598 |goto 82.28,27.41
stickystart "Collect_Ancient_Titan_Relics"
step
click Broken Elevating Gear##271747
collect Broken Elevating Gears##151209 |q 47596/2 |goto 79.15,27.43
step
kill Lord Slithin##123550 |q 47711/1 |goto 78.64,25.15
step
click Damaged Artillery Barrel##271746
collect Damaged A.M.O.D. Barrel##151208 |q 47596/1 |goto 77.67,25.28
step
click Shattered Firing Mechanism##271748
collect Shattered Firing Mechanism##151210 |q 47596/3 |goto 79.57,22.25
step
label "Collect_Ancient_Titan_Relics"
Kill Vilescale enemies around this area
collect 20 Ancient Titan Relics##151202 |q 47598/1 |goto 79.14,22.83
step
talk Ticker##123548
|tip Inside the building.
turnin There Is No Plan "B"##47596 |goto 82.39,27.20
step
talk Patch##123544
|tip Inside the building.
turnin Head of the Viper##47711 |goto 82.37,27.29
step
talk Newt##123545
|tip Inside the building.
turnin Pilfering and Fencing##47598 |goto 82.28,27.41
step
talk Patch##123544
|tip Inside the building.
accept Field Evaluation##47601 |goto 82.37,27.30
step
clicknpc A.M.O.D.##123637
Mount the A.M.O.D. |q 47601/1 |goto 81.45,26.02
step
Watch the dialogue
Kill Vilescale enemies around this area
|tip Use the abilities on your action bar.
Slay #40# Naga Forces |q 47601/2
step
kill Grobathan##123486
|tip Use the abilities on your action bar.
Slay Grobathan |q 47601/3
step
talk Patch##123878
turnin Field Evaluation##47601 |goto 81.34,26.09
accept Ready For Action##47602 |goto 81.34,26.09
step
Watch the dialogue
clicknpc Newt's Emergency Rocket##125244
Choose _Let's ride out of here._
Obtain a Ride From Newt's Emergency Rocket |q 47602/1 |goto 81.31,26.22
step
Travel to Gloom Hollow |goto 67.16,43.42 < 7 |c |q 47602 |notravel
step
Return to Talanji |q 47602/2 |goto 67.42,42.24
step
talk Princess Talanji##126213
turnin Ready For Action##47602 |goto 67.42,42.24
step
talk Lashk##131978
accept Slumber No More##49932 |goto 67.49,41.96
step
clicknpc Deactivated Titan Keeper##131299
Awaken the Deactivated Titan Keeper |q 49932/1 |goto 66.91,38.87
step
click Titan Keeper Data Core##280480
collect Damaged Core##156593 |q 49932/2 |goto 66.95,38.79
step
clicknpc Deactivated Titan Keeper##131299
Install the Core |q 49932/3 |goto 66.92,38.86
step
Watch the dialogue
talk Titan Keeper Hezrel##131253
turnin Slumber No More##49932 |goto 66.90,38.91
accept Recovering Remnants##49937 |goto 66.90,38.91
accept Corrupted Earth##49938 |goto 66.90,38.91
accept How to Repair a Titan Keeper##49935 |goto 66.90,38.91
stickystart "Kill_Blood_Infused_Lashers"
stickystart "Collect_Titan_Plating"
step
click Keeper Shavras's Core##281417
collect Keeper Shavras's Core##156521 |q 49935/1 |goto 69.25,39.77
step
clicknpc Titan Keeper Bolcan##131256
Watch the dialogue
kill Titan Keeper Bolcan##131256
collect Keeper Bolcan's Core##156522 |q 49935/2 |goto 66.19,33.65
step
label "Kill_Blood_Infused_Lashers"
kill 25 Blood-Infused Lasher##131168 |q 49938/1 |goto 66.72,34.96
step
label "Collect_Titan_Plating"
kill Naz'wathan Spectre##131169+
collect 25 Titan Plating##156524 |q 49937/1 |goto 66.72,34.96
step
talk Titan Keeper Hezrel##131253
turnin Recovering Remnants##49937 |goto 68.68,35.11
turnin Corrupted Earth##49938 |goto 68.68,35.11
turnin How to Repair a Titan Keeper##49935 |goto 68.68,35.11
accept Bone Procession##49941 |goto 68.68,35.11
accept Unwelcome Undead##49949 |goto 68.68,35.11
stickystart "Slay_Naz'wathan_Undead"
step
clicknpc Minor Corruption##133941
accept Blood Purification##49950 |goto 69.25,33.81
stickystart "Collect_Reanimated_Monstrosity_Bones"
step
clicknpc Corrupted Energy##131286+
|tip They look like red orbs floating above the ground around this area.
Destroy #4# Corrupted Energy |q 49950/1 |goto 69.77,31.30
step
label "Slay_Naz'wathan_Undead"
Kill Naz'wathan enemies around this area
Slay #15# Naz'wathan Undead |q 49949/1 |goto 69.77,31.30
step
label "Collect_Reanimated_Monstrosity_Bones"
use the Titan Manipulator##156528
|tip Use it on Reanimated Monstrosities around this area.
kill Reanimated Monstrosity##131285+
collect 25 Reanimated Monstrosity Bone##156527 |q 49941/1 |goto 69.77,31.30
step
talk Titan Keeper Hezrel##131253
turnin Bone Procession##49941 |goto 68.68,35.11
turnin Unwelcome Undead##49949 |goto 68.68,35.11
turnin Blood Purification##49950 |goto 68.68,35.11
accept Not Fit for This Plane##49955 |goto 68.68,35.11
accept Void is Prohibited##49956 |goto 68.68,35.11
accept Protocol Recovery##49957 |goto 68.68,35.11
stickystart "Destroy_Faceless_Ones"
step
Run up the stairs |goto 70.68,31.75 < 15 |only if walking
use the Void Disruptor##156542
|tip Use it next to Void Portals around this area.
|tip They look like swirling purple and black portals on the ground around this area.
Seal #4# Void Portal |q 49956/1 |goto 71.63,30.72
step
label "Destroy_Faceless_Ones"
Kill Faceless enemies around this area
Destroy #6# Faceless Ones |q 49955/1 |goto 71.63,30.72
step
Enter the building |goto 71.89,30.29 < 10 |walk
kill Overlord Kraxis##131153
|tip Inside the building.
collect Containment Protocol##156537 |q 49957/1 |goto 72.83,28.94
step
Watch the dialogue
talk Titan Keeper Hezrel##131253
|tip Inside the building.
turnin Not Fit for This Plane##49955 |goto 72.47,29.37
turnin Void is Prohibited##49956 |goto 72.47,29.37
turnin Protocol Recovery##49957 |goto 72.47,29.37
accept Containment Procedure##49980 |goto 72.47,29.37
step
talk Titan Keeper Hezrel##131253
|tip Inside the building.
Tell him _"Hezrel, begin your scans to find a solution to the Old God corruption with Nazmir."_
Watch the dialogue
Speak to Titan Keeper Hezrel |q 49980/1 |goto 72.47,29.36
step
kill Grand Ma'da Ateena##131515 |q 49980/2 |goto 72.82,28.92
|tip Inside the building.
|tip Princess Talanji will help you fight her.
|tip Run inside the yellow bubble Titan Keeper Hezrel casts around himself during the fight.
step
talk Titan Keeper Hezrel##131253
|tip Inside the building.
turnin Containment Procedure##49980 |goto 72.47,29.36
accept Return to Gloom Hollow##49985 |goto 72.47,29.36
step
clicknpc Titan Keeper Hezrel##131501
Jump onto Titan Keeper Hezrel |invehicle |goto 71.85,30.39 |q 49985
step
Watch the dialogue
Ride Titan Keeper Hezrel back to Gloom Hollow |q 49985/1 |goto 66.01,39.13 |notravel
step
talk Princess Talanji##126213
turnin Return to Gloom Hollow##49985 |goto 67.43,42.24
accept Down by the Riverside##49569 |goto 67.43,42.24
step
talk Patch##130056
Tell him _"I'm ready, let's hop on this barge and get back to Zul'jan."_
Speak with Patch to Board the Barge |q 49569/1 |goto 65.71,45.10
step
Watch the dialogue
Kill enemies around this area
|tip They are all along the river banks as you sail.
|tip Kill the hydra in the water when you stop sailing.
|tip Use the abilities on your action bar.
Sail Down the River |q 49569/2
step
Travel to the Shattered River |goto 39.89,84.92 < 7 |noway |c |q 49569
step
talk Princess Talanji##121288
turnin Down by the Riverside##49569 |goto 39.40,78.15
accept Rally the Warriors##50076 |goto 39.40,78.15
step
click Ancient Gong##280611
Ring the Ancient Gong |q 50076/1 |goto 39.37,77.48
step
Watch the dialogue
Hear Talanji's Speech |q 50076/2 |goto 39.34,77.68
step
talk Princess Talanji##121288
turnin Rally the Warriors##50076 |goto 39.34,77.69
accept The Battle of Bloodfire Ravine##50138 |goto 39.34,77.69
step
Meet Talanji at Bloodfire Ravine |q 50138/1 |goto 42.29,72.47
step
_Next to you:_
talk Princess Talanji
accept Undying Totems##50078
stickystart "Slay_Blood_Trolls_2"
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.46,72.26 |count 1
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.16,71.29 |count 2
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.75,71.19 |count 3
step
_Next to you:_
talk Princess Talanji##132624
turnin Undying Totems##50078
step
label "Slay_Blood_Trolls_2"
Kill Bloodfire enemies around this area
Slay #8# Blood Trolls |q 50138/2 |goto 43.56,71.26
step
Watch the dialogue
kill Warmother Molaka##132230 |q 50138/3 |goto 44.74,68.64
step
talk Princess Talanji##132333
turnin The Battle of Bloodfire Ravine##50138 |goto 44.95,68.62
accept The Road of Pain##50081 |goto 44.95,68.62
step
talk Patch##132988
accept Boom goes the Bomb##50079 |goto 44.97,68.34
stickystart "Heal_Zandalari_Soldiers"
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the First Barricade |q 50079/1 |goto 44.45,66.80
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the Second Barricade |q 50079/2 |goto 44.18,64.98
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the Third Barricade |q 50079/3 |goto 44.16,63.59
step
label "Heal_Zandalari_Soldiers"
clicknpc Zandalari Soldier##132985+
|tip They look like injured trolls laying on the ground around this area.
Heal #6# Zandalari Soldiers |q 50081/1 |goto 44.13,64.36
step
Watch the dialogue
talk Princess Talanji##133125
turnin The Road of Pain##50081 |goto 44.19,62.85
turnin Boom goes the Bomb##50079 |goto 44.19,62.85
accept Target of Opportunity##50082 |goto 44.19,62.85
step
Watch the dialogue
talk Princess Talanji##133401
Tell her _"I'm ready."_
Meet with Talanji |q 50082/1 |goto 44.98,60.95
step
Watch the dialogue
Kill the enemies that attack in waves
kill Decaying Hulk##133400
Confront Grand Ma'da Ateena |q 50082/2 |goto 45.58,59.85
step
talk Princess Talanji##133125
turnin Target of Opportunity##50082 |goto 45.21,60.54
step
Watch the dialogue
talk Princess Talanji##133125
accept Petitioning Krag'wa##52073 |goto 45.21,60.54
step
talk Krag'wa the Huge##140283
Tell him _"Krag'wa, the leader of the blood trolls has fled to the large structure in the distance. Please, lend us your assistance."_
Petition Krag'wa for Aid |q 52073/1 |goto 45.14,60.79
step
talk Krag'wa the Huge##140283
Tell him _"I am ready to go, Krag'wa."_
Ride with Krag'wa |invehicle |goto 45.19,60.70 |q 52073
step
Watch the dialogue
Ride Krag'wa |q 52073/2 |goto 48.85,56.54
step
talk Princess Talanji##133476
turnin Petitioning Krag'wa##52073 |goto 49.39,57.18
accept Ateena's Fall##50087 |goto 49.39,57.18
step
kill Grand Ma'da Ateena##133472 |q 50087/1 |goto 50.80,57.91
|tip Follow her when she teleports around.
|tip Avoid the pools of blood on the ground.
step
Watch the dialogue
talk Princess Talanji##133480
turnin Ateena's Fall##50087 |goto 50.60,58.47
step
_Congratulations!_
You completed the Nazmir Loremaster (Story Quest Only) leveling guide.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Zandalar\\Vol'dun Loremaster (Story Quest Only)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Voldun storylines:\n\nDangers in the Desert\nA City of Secrets\nStorming the Spire\nUnlikely Allies\nThe Warguard's Fate\nThe Three Keepers\nAtul'Aman",
condition_suggested=function() return level >= 110 and not achieved(12478) and completedq(52131) end,
condition_end=function() return achieved(12478) end,
startlevel=110.0,
endlevel=120.0,
image=ZGV.DIR.."\\Guides\\Images\\Vol'dun",
},[[
leechsteps "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice" 62-77
step
click Scouting Map
|tip Inside the building.
accept Vol'dun##47513 |goto Dazar'alor/2 41.71,69.41
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Vol'dun##47513 |goto 41.14,66.73
accept Discreet Discussions##47313 |goto 41.14,66.73
step
Leave the building |goto Dazar'alor/0 49.96,42.14 < 10 |walk
Run down the stairs |goto 51.01,40.31 < 15 |only if walking
talk Enforcer Sekal##122229
Ask her _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto Dazar'alor/0 50.09,37.45 |count 1
step
talk Enforcer Gortok##123243
Ask him _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto 52.19,37.52 |count 2
step
talk Enforcer Dakanji##122231
Ask him _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto 54.27,35.85 |count 3
step
Find Someone Willing to Talk |q 47313/2 |goto 51.58,31.82
step
talk Bladeguard Kaja##122817
turnin Discreet Discussions##47313 |goto 51.58,31.82
accept Rumors of Exile##47314 |goto 51.58,31.82
step
Watch the dialogue
|tip Follow Bladeguard Kaja as she walks.
talk Bladeguard Kaja##122320
turnin Rumors of Exile##47314 |goto 49.92,31.65
accept Into the Dunes##47315 |goto 49.92,31.65
step
clicknpc Pterrordax##122347
Mount the Pterrordax |q 47315/1 |goto 50.03,31.67
step
Watch the dialogue
Fly into Vol'dun |q 47315/2 |goto Vol'dun/0 66.08,36.43 |notravel
step
Watch the dialogue
talk Nisha##130455
|tip Inside the cave.
turnin Into the Dunes##47315 |goto 65.98,36.65
accept Armed and Ready##51357 |goto 65.98,36.65
step
click Sethrak Scythe
|tip Inside the cave.
Choose a Weapon |q 51357/1 |goto 65.95,36.65
step
talk Nisha##130455
|tip Inside the cave.
turnin Armed and Ready##51357 |goto 65.98,36.65
step
_Next to you:_
talk Nisha
accept Answering Their Attacks##47327
accept Dressed for Battle##49676
stickystart "Slay_Sethraks"
step
Follow the path up |goto 65.52,37.27 < 10 |walk
Leave the cave |goto 64.90,36.23 < 10 |walk
click Stolen Vulpera Banner##278686
Find the Banner |q 49676/1 |goto 64.67,33.91
step
click Sethrak Skull##278685
Find the Helmet |q 49676/2 |goto 63.63,32.70
step
click Explosives
Find the Explosives |q 49676/3 |goto 61.88,33.78
step
_Next to you:_
talk Nisha
turnin Dressed for Battle##49676
accept Plans for Attack##49677
step
label "Slay_Sethraks"
Kill Sethrak enemies around this area
Slay #12# Sethrak |q 47327/1 |goto 61.72,33.41
step
_Next to you:_
talk Nisha
turnin Answering Their Attacks##47327
step
kill Fangcaller Sraka##130466
collect Nisha's Attack Plans##158651 |q 49677/1 |goto 60.88,32.66
step
_Next to you:_
talk Nisha
turnin Plans for Attack##49677
accept An Explosive Exit##51364
step
Watch the dialogue
Find Nisha's Wagon |q 51364/1 |goto 60.06,34.58
step
clicknpc Nisha's Wagon##137492
Board Nisha's Wagon |q 51364/2 |goto 60.06,34.58
step
Watch the dialogue
|tip Use the "Volatile Potion" ability on the enemies that attack.
|tip It appears as a button on the screen.
Defend Nisha's Wagon |q 51364/3 |goto 58.23,40.55
step
Watch the dialogue
Ride to Vulpera Hideaway |q 51364/4 |goto 57.08,50.38 |notravel
step
talk Kiro##123586
turnin An Explosive Exit##51364 |goto 56.79,50.54
accept Restorative Venom##47319 |goto 56.79,50.54
step
talk Meerah##122583
accept Freshly Squeezed##51574 |goto 56.76,50.52
step
talk Hagashi##124108
home Vulpera Hideaway |goto 56.78,49.81 |q 48895 |future
step
talk Narishi##124107
fpath Vulpera Hideaway |goto 56.96,49.25
stickystart "Collect_Sandstinger_Venom_Glands"
step
Follow the path |goto 55.08,48.65 < 20 |only if walking
clicknpc Vibrant Pricklevine##138107+
|tip They look like small red plants with teeth and green leaves on the ground around this area.
collect 8 Pricklevine Juice##160448 |q 51574/1 |goto 53.92,50.35
step
label "Collect_Sandstinger_Venom_Glands"
Kill Sandstinger enemies around this area
collect 15 Sandstinger Venom Gland##160441 |q 47319/1 |goto 53.92,50.35
step
Follow the path |goto 54.90,48.64 < 15 |only if walking
talk Meerah##122583
turnin Freshly Squeezed##51574 |goto 56.76,50.52
step
talk Kiro##123586
turnin Restorative Venom##47319 |goto 56.79,50.54
accept A Balm to Calm##47320 |goto 56.79,50.54
step
use the Restorative Balm##150759
|tip Use it on Bladeguard Kaja.
Apply the Restorative Balm |q 47320/1 |goto 56.83,50.53
step
Watch the dialogue
talk Bladeguard Kaja##130341
turnin A Balm to Calm##47320 |goto 56.83,50.52
accept Searching for Survivors##47317 |goto 56.83,50.52
step
talk Kiro##123586
accept Knickknack Takeback##47321 |goto 56.79,50.53
step
talk Meerah##122583
accept Secrets in the Sand##47316 |goto 56.76,50.53
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 55.78,48.68 |count 1
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 56.33,43.90 |count 2
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 52.80,46.41 |count 3
step
Follow the path |goto 51.62,43.03 < 15 |only if walking
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 52.78,41.80 |count 4
step
clicknpc Bladeguard Jorana##122729
Find Jorana |q 47317/2 |goto 57.42,40.62
stickystart "Collect_Knickknacks"
step
Enter the cave |goto 54.84,39.66 < 10 |walk
click Tarkaj's Warblade##271014
|tip Inside the cave.
Find Tarkaj |q 47317/1 |goto 54.61,39.38
step
label "Collect_Knickknacks"
Kill enemies around this area
Collect #6# Knickknacks |q 47321/1 |goto 55.11,40.05
step
talk Kiro##123586
turnin Knickknack Takeback##47321 |goto 56.79,50.54
step
talk Bladeguard Kaja##130341
turnin Searching for Survivors##47317 |goto 56.83,50.52
turnin Secrets in the Sand##47316 |goto 56.83,50.52
accept The Warguard's Trail##47959 |goto 56.83,50.52
step
talk Meerah##122583
Tell her _"We're ready to leave."_
Speak to Meerah |q 47959/1 |goto 56.76,50.53
step
Watch the dialogue
Ride Meerah's Caravan |q 47959/2 |goto 53.48,65.95 |notravel
step
talk Jorak##126696
turnin The Warguard's Trail##47959 |goto 52.97,66.53
accept Grozztok the Blackheart##48549 |goto 52.97,66.53
accept Stolen Satchels##48550 |goto 52.97,66.53
stickystart "Collect_Weathered_Satchels"
step
Follow the path up |goto 50.76,64.50 < 30 |only if walking
Watch the dialogue
kill Grozztok the Blackheart##126697 |q 48549/1 |goto 49.19,64.74
step
label "Collect_Weathered_Satchels"
Kill Sandfury enemies around this area
collect 5 Weathered Satchel##152660 |q 48550/1 |goto 49.45,65.34
step
talk Bladeguard Kaja##122289
turnin Grozztok the Blackheart##48549 |goto 53.19,66.05
step
talk Jorak##126696
turnin Stolen Satchels##48550 |goto 53.34,66.00
step
talk Bladeguard Kaja##122289
accept On the Move##48684 |goto 53.19,66.06
step
talk Meerah##126235
Tell her _"We're ready to leave."_
Speak to Meerah |q 48684/1 |goto 53.22,66.04
step
Watch the dialogue
Ride Meerah's Caravan |q 48684/2 |goto 52.88,89.12 |notravel
step
talk Jorak##127691
turnin On the Move##48684 |goto 52.83,89.23
accept The Perfect Offering##48895 |goto 52.83,89.23
step
talk Akunda the Exalted##127992
turnin The Perfect Offering##48895 |goto 53.18,90.29
accept Powerful Conductors##48993 |goto 53.18,90.29
accept Sacred Remains##48992 |goto 53.18,90.29
accept Vile Infestation##48991 |goto 53.18,90.29
step
talk Akunda the Bountiful##127431
|tip Inside the building.
home Temple of Akunda |goto 51.92,89.83 |q 50561 |future
step
talk Akunda the Tamer##127427
fpath Temple of Akunda |goto 53.72,89.17
stickystart "Collect_Sacred_Remains"
stickystart "Kill_Ranishu_Gorgers"
step
Enter the cave |goto 55.01,86.20 < 10 |walk
Follow the path down |goto 55.75,86.01 < 10 |walk
kill Rorgog the Devourer##134052
|tip Inside the cave.
collect Rorgog's Antennae##153029 |q 48993/1 |goto 56.12,83.45
step
Follow the path up |goto 55.75,86.01 < 10 |walk
Leave the cave |goto 55.04,86.20 < 10 |c |q 48992
step
label "Collect_Sacred_Remains"
click Sacred Remains##277285+
|tip They look like white bones on the ground around this area.
collect 6 Sacred Remains##153028 |q 48992/1 |goto 54.60,86.07
step
label "Kill_Ranishu_Gorgers"
kill 12 Ranishu Gorger##133565 |q 48991/1 |goto 54.60,86.07
step
talk Akunda the Exalted##127992
turnin Powerful Conductors##48993 |goto 53.18,90.29
turnin Sacred Remains##48992 |goto 53.18,90.29
turnin Vile Infestation##48991 |goto 53.18,90.29
accept Cleanse the Mind##48887 |goto 53.18,90.29
accept It Springs Eternal##48888 |goto 53.18,90.29
stickystart "Slay_Redrock_Scavenger"
step
Follow the path down |goto 53.11,84.99 < 15 |only if walking
Enter the cave |goto 52.16,83.78 < 10 |walk
click Shrine of Thunder##276460
|tip Inside the cave.
Meditate at the Shrine of Thunder |q 48887/1 |goto 52.17,83.36
step
kill Inner Demon##138292 |q 48887/2 |goto 52.17,83.36
|tip Inside the cave.
step
label "Slay_Redrock_Scavenger"
Kill Redrock enemies around this area
Slay #8# Redrock Scavenger |q 48888/1 |goto 52.13,84.48
step
Follow the path up |goto 53.79,83.57 < 15 |only if walking
talk Akunda the Exalted##127992
turnin Cleanse the Mind##48887 |goto 53.18,90.30
turnin It Springs Eternal##48888 |goto 53.18,90.30
accept Trial of Truth##48894 |goto 53.18,90.30
step
talk Akunda the Exalted##127992
Tell him "_My name is Akunda the Nimble."_
|tip You can choose whichever Akunda name you like, it doesn't matter.
|tip You cannot choose to have your name remain unchanged.
Speak Your True Name to Akunda the Exalted |q 48894/1 |goto 53.18,90.29
step
talk Akunda the Exalted##127966
turnin Trial of Truth##48894 |goto 53.18,90.29
step
talk Bladeguard Kaja##127570
accept Akunda Awaits##48715 |goto 53.16,90.20
step
Watch the dialogue
|tip Inside the building.
Investigate the Temple of Akunda |q 48715/1 |goto 53.18,91.26
step
Watch the dialogue
talk Bladeguard Kaja##135066
|tip Inside the building.
turnin Akunda Awaits##48715 |goto 53.58,91.65
step
talk Akunda the Sensible##127980
|tip Inside the building.
accept Valley of Sorrows##48987 |goto 53.58,91.34
step
Follow the path down |goto 53.12,85.01 < 20 |only if walking
Follow the path down |goto 53.80,80.18 < 20 |only if walking
talk Meijani##127989
turnin Valley of Sorrows##48987 |goto 53.01,78.77
accept Memory Breach##48988 |goto 53.01,78.77
accept Shattered and Broken##49005 |goto 53.01,78.77
stickystart "Kill_Distorted_Memories"
stickystart "Kill_Fractured_Memories"
step
clicknpc Unwanted Memory##122683+
|tip They look like grey vases on the ground around this area.
Search #8# Unwanted Memories |q 48988/1 |goto 52.71,76.94
You can find more around [54.43,76.24]
step
label "Kill_Distorted_Memories"
kill 4 Distorted Memory##138198 |q 49005/1 |goto 53.49,76.85
step
label "Kill_Fractured_Memories"
kill 8 Fractured Memory##138199 |q 49005/2 |goto 53.49,76.85
step
talk Meijani##127989
turnin Memory Breach##48988 |goto 53.01,78.77
turnin Shattered and Broken##49005 |goto 53.01,78.77
accept Repairing the Past##48889 |goto 53.01,78.77
step
Enter the cave |goto 52.60,79.18 < 10 |walk
Kill the enemies that attack in waves
|tip Inside the cave.
Watch the dialogue
Protect Meijani |q 48889/1 |goto 52.31,79.74
step
talk Akunda##138382
|tip Inside the cave.
turnin Repairing the Past##48889 |goto 52.22,79.89
accept Ending the Madness##48996 |goto 52.22,79.89
step
Follow the path |goto 53.12,89.65 < 15 |only if walking
kill Akunda the Exalted##128147 |q 48996/1 |goto 53.18,91.25
|tip Inside the building.
|tip Use the "Tempest" ability.
|tip It appears as a button on the screen.
step
Watch the dialogue
talk Akunda##128152
|tip Inside the building.
turnin Ending the Madness##48996 |goto 53.19,91.65
accept Akunda's Blessing##50913 |goto 53.19,91.65
step
click Altar of Akunda##290773
|tip Inside the building.
Visit the Altar of Akunda |q 50913/1 |goto 53.18,92.12
step
talk Akunda##128152
|tip Inside the building.
turnin Akunda's Blessing##50913 |goto 53.19,91.65
step
talk Warguard Rakera##130660
|tip Inside the building.
accept Clearing the Fog##47874 |goto 53.61,91.66
step
Watch the dialogue
|tip Follow Warguard Rakera as she walks.
talk Warguard Rakera##130667
turnin Clearing the Fog##47874 |goto 52.81,89.24
accept Knowledge of the Past##48896 |goto 52.81,89.24
step
talk Meerah##126235
Tell her _"We're ready to leave."_
Speak to Meerah |q 48896/1 |goto 52.70,89.30
step
Watch the dialogue
Ride Meerah's Caravan |q 48896/2 |goto 47.91,82.38 |notravel
step
kill 3 Sandfury Assassin##128209 |q 48896/3 |goto 47.67,81.99
step
_Next to you:_
talk Warguard Rakera
turnin Knowledge of the Past##48896
accept Searching the Ruins##47716
step
Watch the dialogue
Search for Julwaba |q 47716/1 |goto 46.60,76.05
step
Enter the building |goto 46.77,75.72 < 20 |only if walking
Watch the dialogue
talk Julwaba##134162
|tip Inside the building.
turnin Searching the Ruins##47716 |goto 47.07,75.66
step
talk Kiro##135154
|tip Inside the building.
accept Creeping Death##48314 |goto 47.05,75.60
accept Nature's Remedy##48313 |goto 47.05,75.60
stickystart "Collect_Scorpashi_Stingers"
step
click Prickly Plum##273193
|tip They look like green spiky plants on the ground around this area.
collect 6 Prickly Plum Cactus##152393 |q 48313/1 |goto 46.00,73.43
step
label "Collect_Scorpashi_Stingers"
Kill Scorpashi enemies around this area
collect 7 Scorpashi Stinger##152397 |q 48314/1 |goto 46.00,73.43
step
talk Makaanji##135654
fpath Scorched Sands Outpost |goto 43.90,75.92
step
Enter the building |goto 46.77,75.72 < 20 |only if walking
talk Kiro##135154
|tip Inside the building.
turnin Creeping Death##48314 |goto 47.06,75.60
turnin Nature's Remedy##48313 |goto 47.06,75.60
accept Effective Antivenom##50770 |goto 47.06,75.60
step
use the Antivenom##158678
|tip Use it on Serrik.
|tip Inside the building.
Apply the Restorative Balm |q 50770/1 |goto 47.06,75.72
step
Watch the dialogue
talk Serrik##134533
|tip Inside the building.
turnin Effective Antivenom##50770 |goto 47.06,75.71
accept The Secrets of Zul'Ahjin##50539 |goto 47.06,75.71
step
Run up the stairs |goto 46.87,74.21 < 15 |only if walking
Follow the path |goto 47.90,73.85 < 20 |only if walking
click Crumbling Statue##281639
turnin The Secrets of Zul'Ahjin##50539 |goto 48.90,74.49
accept Hollow, Empty Eyes##48315 |goto 48.90,74.49
step
click Glittering Sapphire##281558
collect Glittering Sapphire##157864 |q 48315/1 |goto 49.85,73.19 |count 1
step
Run up the stairs |goto 50.46,71.81 < 15 |only if walking
click Glittering Sapphire##281558
collect Glittering Sapphire##157864 |q 48315/1 |goto 51.05,72.34 |count 2
step
click Crumbling Statue##281639
turnin Hollow, Empty Eyes##48315 |goto 48.90,74.49
step
Watch the dialogue
click Ancient Reliquary##281583
accept Sulthis' Stone##50561 |goto 48.90,74.25
step
Jump down here |goto 47.02,73.97 < 15 |only if walking
Enter the building |goto 46.73,75.70 < 20 |walk
talk Serrik##134533
|tip Inside the building.
turnin Sulthis' Stone##50561 |goto 47.06,75.71
accept Unlikely Allies##47324 |goto 47.06,75.71
step
clicknpc Serrik's Pterrordax##134544
Mount the Pterrordax |q 47324/1 |goto 46.79,75.45
step
Watch the dialogue
Fly to the Sanctuary of the Devoted |q 47324/2 |goto 27.24,54.09 |notravel
step
Watch the dialogue
talk Serrik##128687
turnin Unlikely Allies##47324 |goto 27.22,53.94
accept A Powerful Prisoner##49334 |goto 27.22,53.94
step
talk Zissiah##128696
accept Break Their Ranks##50641 |goto 27.20,53.86
accept Push Them Back!##49327 |goto 27.20,53.86
step
talk Issik##128693
|tip Inside the building.
home Sanctuary of the Devoted |goto 26.87,52.22 |q 49327
step
talk Vethiss##128695
fpath Sanctuary of the Devoted |goto 27.65,50.33
stickystart "Burn_Sethrak_Banners"
stickystart "Crush_Sethrak_Cannons"
stickystart "Shatter_Sethrak_Spires"
stickystart "Slay_Faithless"
step
click Sethrak Cage##277910
Rescue Vorrik |q 49334/1 |goto 30.02,51.98
step
label "Burn_Sethrak_Banners"
click Sethrak War Banner##277899+
|tip They look like wooden poles with red flags on the ground around this area.
Burn #4# Banners |q 49327/1 |goto 29.38,53.59
step
label "Crush_Sethrak_Cannons"
clicknpc Sethrak Cannon##129076+
|tip They look like stone cannons on the ground around this area.
Crush #2# Cannons |q 49327/2 |goto 29.38,53.59
step
label "Shatter_Sethrak_Spires"
click Sethrak Spire##278583+
|tip They look like large stone towers with lighting striking them on the ground around this area.
Shatter #2# Spires |q 49327/3 |goto 29.38,53.59
step
label "Slay_Faithless"
Kill Faithless enemies around this area
Slay #10# Faithless |q 50641/1 |goto 29.38,53.59
step
Run up the stairs |goto 28.83,54.05 < 15 |only if walking
talk Zissiah##128696
turnin Break Their Ranks##50641 |goto 27.20,53.85
turnin Push Them Back!##49327 |goto 27.20,53.85
step
talk Vorrik##129519
|tip Inside the building.
turnin A Powerful Prisoner##49334 |goto 27.62,52.57
accept The Keepers' Keys##49340 |goto 27.62,52.57
step
talk Vorrik##129519
|tip Inside the building.
Choose _<Give Vorrik Sulthis' Stone.>_
Watch the dialogue
Speak to Vorrik |q 49340/1 |goto 27.62,52.57
step
talk Vorrik##128694
|tip Upstairs inside the building.
turnin The Keepers' Keys##49340 |goto 27.12,52.56
accept The Missing Key##49662 |goto 27.12,52.56
step
Cross the bridge |goto 30.71,50.12 < 20 |only if walking
Follow the path |goto 35.68,45.14 < 30 |only if walking
Follow the path |goto 40.26,44.74 < 30 |only if walking
Cross the bridge |goto 42.95,39.14 < 20 |only if walking
talk Vorrik##137970
turnin The Missing Key##49662 |goto 42.92,35.75
accept Infiltrating the Empire##50745 |goto 42.92,35.75
step
Run up the stairs |goto 42.91,33.89 < 15 |only if walking
talk Lugo the Windrider##135385
fpath Vorrik's Sanctum |goto 47.30,35.23
step
Enter the cave |goto 47.95,35.57 < 10 |walk
talk Vorrik##135172
|tip Inside the cave.
turnin Infiltrating the Empire##50745 |goto 47.96,36.39
accept Allies in Anarchy##49664 |goto 47.96,36.39
step
Leave the cave |goto 47.94,35.54 < 10 |walk
talk Nisha##135090
turnin Allies in Anarchy##49664 |goto 46.14,33.22
accept Ready to Riot##49665 |goto 46.14,33.22
accept Make Them Fear Us##49666 |goto 46.14,33.22
stickystart "Arm_Slaves"
step
Kill Faithless enemies around this area
use the Vulpera Banners##158884
|tip Use it near their corpses.
Plant #12# Vulpera Banners |q 49666/1 |goto 47.60,32.31
step
label "Arm_Slaves"
click Faithless Weapon Rack##287006+
|tip They look like wooden racks with weapons on them on the ground around this area.
collect Faithless Scimitar##159470+ |n
talk Vulpera Slave##130342+
Choose _<Free the slave and give them a weapon to fight with.>_
|tip They look like friendly fox NPCs around this area.
|tip You must have a Faithless Scimitar to be able to arm them.
Arm #8# Slaves |q 49665/1 |goto 47.60,32.31
step
Follow the path up |goto 47.17,33.86 < 15 |only if walking
talk Nisha##135090
turnin Ready to Riot##49665 |goto 46.15,33.22
turnin Make Them Fear Us##49666 |goto 46.15,33.22
accept Crater Conquered##50746 |goto 46.15,33.22
step
Follow the path up |goto 46.86,34.71 < 20 |only if walking
Enter the cave |goto 47.95,35.61 < 10 |walk
talk Vorrik##135172
|tip Inside the cave.
turnin Crater Conquered##50746 |goto 47.96,36.39
accept Diplomacy and Dominance##49141 |goto 47.96,36.39
accept Don't Drop It... Yet##50748 |goto 47.96,36.39
stickystart "Collect_Volatile_Lightning_Bombs"
step
Leave the cave |goto 47.94,35.55 < 10 |walk
Follow the path up |goto 49.68,34.95 < 15 |only if walking
click Suppression Spire##290707+
|tip They look like tall stone towers on the ground around this area.
Drain #6# Suppression Spires |q 49141/1 |goto 47.80,36.98
step
label "Collect_Volatile_Lightning_Bombs"
Kill Ridge enemies around this area
collect 6 Volatile Lightning Bomb##154896 |q 50748/1 |goto 47.80,36.98
step
Follow the path up |goto 46.40,37.48 < 10 |only if walking
talk Vorrik##135110
|tip At the top of the mountain.
turnin Diplomacy and Dominance##49141 |goto 47.20,39.15
turnin Don't Drop It... Yet##50748 |goto 47.20,39.15
accept Vengeance From Above##49003 |goto 47.20,39.15
step
clicknpc Rakjan the Unbroken##138547
Mount Rakjan the Unbroken |q 49003/1 |goto 47.16,39.34
step
Kill Faithless enemies around this area
|tip Use the "Lightning Bomb" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #60# Faithless |q 49003/2 |goto 48.13,32.14
step
Destroy the Spire Barrier |q 49003/3 |goto 51.95,32.61
|tip Use the "Vorrik's Barrage" ability on your action bar.
step
talk Vorrik##135111
turnin Vengeance From Above##49003 |goto 51.95,28.69
accept Infuriating the Emperor##50750 |goto 51.95,28.69
accept Relics of Sethraliss##50752 |goto 51.95,28.69
stickystart "Purge_Faithless"
step
click Rebirth Creed##282451
collect Rebirth Creed##158722 |q 50752/1 |goto 49.89,28.50
step
click Skull of the First Skycaller##290755
collect Skull of the First Skycaller##160526 |q 50752/2 |goto 50.25,26.69
step
click Sethraliss Sight Stone##290756
collect Sethraliss Sight Stone##160527 |q 50752/3 |goto 48.24,26.15
step
click Blood of the Fallen Loa##290757
collect Blood of the Fallen Loa##160528 |q 50752/4 |goto 49.56,24.36
step
label "Purge_Faithless"
Kill Faithless enemies around this area
|tip Run near them.
|tip Run over the Lightning Orbs that appear on the ground to recharge the ability bar.
Purge #75# Faithless |q 50750/1 |goto 49.66,25.28
step
talk Vorrik##135111
turnin Infuriating the Emperor##50750 |goto 51.94,28.69
turnin Relics of Sethraliss##50752 |goto 51.94,28.69
step
Watch the dialogue
talk Vorrik##135111
accept The Fall of Emperor Korthek##50550 |goto 51.94,28.69
step
talk Vorrik##138411
Tell him _"Vorrik, I'm ready to face Emperor Korthek."_
Watch the dialogue
Speak with Vorrik |q 50550/1 |goto 51.95,28.69
step
kill Emperor Korthek##134601 |q 50550/2 |goto 51.96,27.25
step
Watch the dialogue
talk Vorrik##135390
turnin The Fall of Emperor Korthek##50550 |goto 51.98,27.72
accept Sanctuary Under Siege##50751 |goto 51.98,27.72
step
talk Vorrik##129588
|tip Upstairs inside the building.
turnin Sanctuary Under Siege##50751 |goto 27.10,52.56
accept Atul'Aman##50617 |goto 27.10,52.56
step
talk Vorrik##135625
turnin Atul'Aman##50617 |goto 43.05,68.21
accept The Abandoned Passage##50904 |goto 43.05,68.21
step
talk Vorrik##135625
Tell him _"I'm ready. Let's go find the others."_
Speak with Vorrik |q 50904/1 |goto 43.05,68.21
step
Enter the cave |goto Vol'dun/1 30.77,82.26 < 10 |walk
Follow the path |goto Vol'dun/1 37.29,77.10 < 10 |walk
clicknpc Entangling Tendrils##135695
|tip Inside the cave.
Find Kaja |q 50904/2 |goto Vol'dun/1 42.87,91.97
step
Follow the path |goto 46.61,79.79 < 10 |walk
clicknpc Entangling Tendrils##135695
|tip Inside the cave.
Find Rakera |q 50904/3 |goto 51.65,67.31
step
talk Warguard Rakera##134803
|tip Inside the cave.
turnin The Abandoned Passage##50904 |goto 55.62,36.28
accept Defeat Jakra'zet##50702 |goto 55.62,36.28
step
Watch the dialogue
kill General Jakra'zet##134846 |q 50702/1 |goto 67.86,35.89
|tip Inside the cave.
step
Watch the dialogue
talk Warguard Rakera##135133
|tip Upstairs inside the building.
turnin Defeat Jakra'zet##50702 |goto Vol'dun/0 27.09,52.64
step
_Congratulations!_
You completed the Vol'dun Loremaster (Story Quest Only) leveling guide.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Death Knight Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="You must be a Death Knight to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Raise Dead |scenariogoal 2/30662
step
_On the Deck of the Airship:_
Watch the dialogue
Use Outbreak on the Target Dummy |scenariogoal 3/30663
step
_On the Deck of the Airship:_
Watch the dialogue
Use your Festering Strike ability on the Target Dummy
|tip It appears on your action bar.
Use Festering Strike on the Target Dummy |scenariogoal 4/30664
step
_On the Deck of the Airship:_
Watch the dialogue
Use Festering Strike then Scourge Strike on the Target Dummy |scenariogoal 5/30665
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Coil on the Target Dummy |scenariogoal 6/30666
|tip Use your other abilities to generate Runic Power.
step
_On the Deck of the Airship:_
Use your abilities on the Target Dummy
Use Outbreak |scenariogoal 7/30663
Use Festering Strike |scenariogoal 7/30664
Use Scourge Strike |scenariogoal 7/30665
Use Death Coil |scenariogoal 7/30666
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Strike |scenariogoal Use Death Strike##8/31703
step
_On the Deck of the Airship:_
Watch the dialogue
Use Death Grip |scenariogoal 9/30667
step
_On the Deck of the Airship:_
Watch the dialogue
Use Army of the Dead |scenariogoal 10/31018
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 12/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Demon Hunter Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('DemonHunter') end,
condition_valid_msg="You must be a Demon Hunter to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Fel Rush |scenariogoal 2/38303
step
_On the Deck of the Airship:_
Watch the dialogue
Use Demon's Bite on the Target Dummy #3# Times |scenariogoal 3/38304
step
_On the Deck of the Airship:_
Watch the dialogue
Use Chaos Strike on the Target Dummy |scenariogoal 4/38305
step
_On the Deck of the Airship:_
Watch the dialogue
Use Eye Beam on the Target Dummy |scenariogoal 5/38308
step
_On the Deck of the Airship:_
Use Eye Beam |scenariogoal 6/38308
Use Chaos Strike |scenariogoal 6/38305
Use Demon's Bite |scenariogoal 6/38304
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 7/29840
step
_On the Deck of the Airship:_
Watch the dialogue
Use Metamorphasis |scenariogoal 8/38306
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
Defeat Both Attackers |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage Defend Against the Assault##11
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Druid Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Druid') end,
condition_valid_msg="You must be a Druid to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Moonkin Form |scenariogoal 2/32840
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Moonfire on the Target Dummy |scenariogoal 3/32841
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Sunfire on the Target Dummy |scenariogoal 3/32842
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Solar Wrath on the Target Dummy |scenariogoal 4/32843
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Starsurge on the Target Dummy |scenariogoal 5/32844
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lunar Strike on the Target Dummy |scenariogoal 6/32845
|only if Balance
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 6/29840
|only if Balance
step
_On the Deck of the Airship:_
Cast Moonfire |scenariogoal 7/32841
Cast Sunfire |scenariogoal 7/32842
Cast Solar Wrath |scenariogoal 7/32843
Cast Starsurge |scenariogoal 7/32844
Cast Lunar Strike |scenariogoal 7/32845
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Use Regrowth to Heal Yourself |scenariogoal 8/30432
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Entangling Roots |scenariogoal 9/32846
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
|only if Balance
step
_On the Deck of the Airship:_
Watch the dialogue
Use Cat Form to Shapeshift into a Cat |scenariogoal 2/30425
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Prowl to Enter Stealth |scenariogoal 3/30426
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rake on the Target Dummy |scenariogoal 4/30428
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Shred on the Target Dummy |scenariogoal 5/30427
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Ferocious Bite with Combo Points on the Target Dummy |scenariogoal 6/30430
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rip with Combo Points on the Target Dummy |scenariogoal 7/30429
|only if Feral
step
_On the Deck of the Airship:_
Use Rake |scenariogoal 8/30428
Use Shred |scenariogoal Use Shred##8/30427
Use Ferocious Bite |scenariogoal 8/30430
Use Rip |scenariogoal 8/30429
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Dash to Move Faster in Cat Form |scenariogoal 9/30431
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Use Regrowth to Heal Yourself |scenariogoal 10/30432
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariostage 12
|only if Feral
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Feral
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Hunter Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Hunter') end,
condition_valid_msg="You must be a Hunter to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Call Pet |scenariogoal 2/29828
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Kill Command to Command your Pet to Attack the Target Dummy |scenariogoal 3/29829
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Barbed Shot on the Target Dummy |scenariogoal 4/40240
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Cobra Shot on the Target Dummy |scenariogoal 5/29831
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Bestial Wrath |scenariogoal 6/29832
|only if BeastMastery
step
_On the Deck of the Airship:_
Use Kill Command |scenariogoal 7/29829
Use Barbed Shot |scenariogoal 7/40240
Use Cobra Shot |scenariogoal 7/29831
Use Beastial Wrath |scenariogoal 7/29832
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Multi-Shot on the Arcane Constructs |scenariogoal 8/29839
|only if BeastMastery
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feign Death |scenariogoal 9/29835
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
kill Horde Grunt##112000
Defeat the Attacker |scenariogoal 10/30919
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
kill Horde Grunt##112000+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
|only if BeastMastery
step
_On the Deck of the Airship:_
Watch the dialogue
Use Call Pet |scenariogoal 2/29828
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Harpoon on the Target Dummy |scenariogoal 3/34617
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Raptor Strike on the Target Dummy |scenariogoal 4/34622
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Kill Command on the Target Dummy |scenariogoal 5/40249
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Serpent Sting on the Target Dummy |scenariogoal 6/40243
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Wildfire Bomb on the Target Dummy |scenariogoal 7/40244
|only if Survival
step
_On the Deck of the Airship:_
Use Wildfire Bomb on the Target Dummy |scenariogoal 8/40244
Use Kill Command on the Target Dummy |scenariogoal 8/40249
Use Serpent Sting on the Target Dummy |scenariogoal 8/40243
Use Raptor Strike on the Target Dummy |scenariogoal 8/34622
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feign Death |scenariogoal 9/29835
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariogoal 10/30919
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if Survival
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
|only if Survival
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Mage Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Mage') end,
condition_valid_msg="You must be a Mage to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Summon Water Elemental |scenariogoal 2/29591
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Frostbolt on the Target Dummy |scenariogoal 3/30560
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Ice Lance on the Target Dummy |scenariogoal 4/30561
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Ice Lance with Fingers of Frost |scenariogoal 5/30614
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Flurry while under the Effects of Brainfreeze |scenariogoal 6/34628
step
_On the Deck of the Airship:_
Cast Frostbolt |scenariogoal 7/30560
Cast Ice Lance |scenariogoal 7/30561
Cast Flurry |scenariogoal 7/34687
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Blink |scenariogoal 8/29248
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Frost Nova to Freeze the Enemy |scenariogoal 9/30623
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Blizzard on the Arcane Constructs |scenariogoal 10/30622
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 10/29840
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 12/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Monk Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="You must be a Monk to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Tiger Palm on the Target Dummy |scenariogoal 2/30392
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rising Sun Kick on the Target Dummy |scenariogoal 3/30393
step
_On the Deck of the Airship:_
Watch the dialogue
Use Blackout Kick on the Target Dummy |scenariogoal 4/30395
step
_On the Deck of the Airship:_
Watch the dialogue
Use Fists of Fury on the Target Dummy |scenariogoal 5/30396
step
_On the Deck of the Airship:_
Use Tiger Palm |scenariogoal 6/30392
Use Rising Sun Kick |scenariogoal 6/30393
Use Blackout Kick |scenariogoal 6/30395
Use Fists of Fury |scenariogoal 6/30396
step
_On the Deck of the Airship:_
Watch the dialogue
Use Roll |scenariogoal 7/30397
step
_On the Deck of the Airship:_
Watch the dialogue
Use Vivify to Heal Yourself |scenariogoal 8/40572
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Paladin Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Paladin') end,
condition_valid_msg="You must be a Paladin to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Judgement on the Target Dummy |scenariogoal 2/29793
step
_On the Deck of the Airship:_
Watch the dialogue
Use Blade of Justice on the Target Dummy |scenariogoal 3/29773
step
_On the Deck of the Airship:_
Watch the dialogue
Use Crusader Strike on the Target Dummy |scenariogoal 4/29769
step
_On the Deck of the Airship:_
Watch the dialogue
Use Templar's Verdict on the Target Dummy |scenariogoal 5/29770
step
_On the Deck of the Airship:_
Use Judgement |scenariogoal 6/29793
Use Blade of Justice |scenariogoal 6/29773
Use Crusader Strike |scenariogoal 6/29769
Use Templar's Verdict |scenariogoal 6/29770
step
_On the Deck of the Airship:_
Watch the dialogue
Earn 3 Holy Power and then Use Divine Storm |scenariogoal 7/32067
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 7/29840
step
_On the Deck of the Airship:_
Watch the dialogue
Use Divine Shield |scenariogoal Use 8/29771
step
_On the Deck of the Airship:_
Watch the dialogue
Allow Fireball to be Cast on You |scenariogoal 8/29797
step
_On the Deck of the Airship:_
Watch the dialogue
Use Flash of Light to Heal Yourself |scenariogoal 9/29772
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Priest Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Priest') end,
condition_valid_msg="You must be a Priest to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Shadow Word: Pain on the Target Dummy |scenariogoal 2/30502
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Penance on the Target Dummy |scenariogoal 3/30503
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Smite on the Target Dummy |scenariogoal 4/30504
step
_On the Deck of the Airship:_
Cast Shadow Word: Pain |scenariogoal 5/30502
Cast Penance |scenariogoal 5/30503
Cast Smite |scenariogoal 5/30504
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Psychic Scream to Fear the Enemies Around You |scenariogoal 6/30520
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Power Word: Shield on Yourself |scenariogoal 7/34732
step
_On the Deck of the Airship:_
Watch the dialogue
Allow Fireball to be Cast on You |scenariogoal 7/29797
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Power Word: Shield on Yourself |scenariogoal 8/34732
step
_On the Deck of the Airship:_
Heal Yourself Through Atonement |scenariogoal 8/40714
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 9/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 11
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Rogue Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Rogue') end,
condition_valid_msg="You must be a Rogue to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Deadly Poison |scenariogoal 2/30644
step
_On the Deck of the Airship:_
Watch the dialogue
Use Stealth |scenariogoal 3/29617
step
_On the Deck of the Airship:_
Watch the dialogue
Use Garrote on the Target Dummy |scenariogoal 4/30645
step
_On the Deck of the Airship:_
Watch the dialogue
Use Mutilate on the Target Dummy |scenariogoal 5/30646
step
_On the Deck of the Airship:_
Watch the dialogue
Use Rupture on the Target Dummy |scenariogoal 6/30647
step
_On the Deck of the Airship:_
Watch the dialogue
Use Envenom on the Target Dummy |scenariogoal 7/30648
step
_On the Deck of the Airship:_
Use Garrote |scenariogoal 8/30647
Use Mutilate |scenariogoal 8/30646
Use Rupture |scenariogoal 8/30645
Use Envenom |scenariogoal 8/30648
step
_On the Deck of the Airship:_
Watch the dialogue
Use Vanish |scenariogoal 9/29646
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Shaman Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Shaman') end,
condition_valid_msg="You must be a Shaman to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Flame Shock on the Target Dummy |scenariogoal 2/29959
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lava Burst on the Target Dummy |scenariogoal 3/29960
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lightning Bolt on the Target Dummy |scenariogoal 4/29961
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Earth Shock on the Target Dummy |scenariogoal 5/29962
|only if Elemental
step
_On the Deck of the Airship:_
Cast Flame Shock |scenariogoal 6/29959
Cast Lava Burst |scenariogoal 6/29960
Cast Lightning Bolt |scenariogoal 6/29961
Cast Earth Shock |scenariogoal 6/29962
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Hex on the Soldier |scenariogoal 7/29963
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Chain Lightning on the Arcane Constructs |scenariogoal 8/29964
|only if Elemental
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Healing Surge to Heal Yourself |scenariogoal 9/32737
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Fire Elemental |scenariogoal 10/31313
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 11/30919
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 12/30919
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Elemental
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Flametongue on the Target Dummy |scenariogoal 2/32847
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Rockbiter on the Target Dummy |scenariogoal 3/32848
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Lava Lash on the Target Dummy |scenariogoal 4/32849
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Stormstrike on the Target Dummy |scenariogoal 5/32850
|only if Enhancement
step
_On the Deck of the Airship:_
Cast Lava Lash |scenariogoal 6/32849
Cast Flametongue |scenariogoal 6/32847
Cast Rockbiter |scenariogoal 6/32848
Cast Stormstrike |scenariogoal 6/32850
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Hex on the Attacker |scenariogoal 7/29963
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Healing Surge to Heal Yourself |scenariogoal 8/29965
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Use Feral Spirit |scenariogoal 9/32851
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
|only if Enhancement
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 13
|only if Enhancement
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Warlock Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Warlock') end,
condition_valid_msg="You must be a Warlock to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Cast Summon Voidwalker |scenariogoal 2/29810
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Agony on the Target Dummy |scenariogoal 3/29811
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Corruption on the Target Dummy |scenariogoal 4/29812
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Shadow Bolt on the Target Dummy |scenariogoal 5/40241
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Unstable Affliction on the Target Dummy |scenariogoal 6/29814
step
_On the Deck of the Airship:_
Cast Agony |scenariogoal 7/29811
Cast Corruption |scenariogoal 7/29812
Cast Unstable Affliction |scenariogoal 7/29814
Cast Shadow Bolt |scenariogoal 7/40241
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Drain Life on the Target Dummy |scenariogoal 8/40242
step
_On the Deck of the Airship:_
Watch the dialogue
Cast Fear on the Soldier |scenariogoal 9/29815
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Attacker |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Attackers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Boosted Characters\\Boosted Character Warrior Intro",{
author="support@zygorguides.com",
description="This guide will walk you through completing the level 110 character boost introduction.",
condition_suggested=function() return intutorial and level >= 110 end,
condition_suggested_exclusive=true,
condition_valid=function() return raceclass('Warrior') end,
condition_valid_msg="You must be a Warrior to complete this guide!",
startlevel=110.0,
},[[
step
_On the Deck of the Airship:_
talk Warlord Zakgra##105317
Tell her _"I'm ready to begin."_
Talk to Warlord Zakgra |scenariostage 1 |or |next "Start_Combat_Training"
_Or_
You Can Skip the Combat Training Scenario
|tip Use your Hearthstone now if you want to skip the Combat Training scenario.
|tip You can complete it or skip it, it doesn't matter, and is purely personal preference.
Use Your Hearthstone |goto Orgrimmar/1 48.73,72.22 < 1000 |c |noway |or |next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
step
label "Start_Combat_Training"
_On the Deck of the Airship:_
Watch the dialogue
Use Charge on the Target Dummy |scenariogoal 2/30115
step
_On the Deck of the Airship:_
Watch the dialogue
Use Mortal Strike on the Target Dummy |scenariogoal 3/30116
step
_On the Deck of the Airship:_
Watch the dialogue
Use Slam on the Target Dummy |scenariogoal 4/30117
step
_On the Deck of the Airship:_
Watch the dialogue
Use Overpower on the Target Dummy |scenariogoal 5/40181
step
_On the Deck of the Airship:_
Use Overpower |scenariogoal 6/40181
Use Mortal Strike |scenariogoal 6/30116
Use Slam |scenariogoal 6/30117
step
_On the Deck of the Airship:_
Watch the dialogue
kill Arcane Construct##101738+
Kill an Arcane Construct and then Use Victory Rush on the Others |scenariogoal 7/30119
step
_On the Deck of the Airship:_
Watch the dialogue
Use Whirlwind on the Arcane Constructs |scenariogoal 8/30120
step
_On the Deck of the Airship:_
kill Arcane Construct##101738+
Destroy the Arcane Constructs |scenariogoal 8/29840
step
_On the Deck of the Airship:_
Watch the dialogue
Use Heroic Leap |scenariogoal 9/30121
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592
Defeat the Soldier |scenariogoal 10/30919
step
_On the Deck of the Airship:_
Watch the dialogue
kill Alliance Infantry##102592+
|tip Two of them will attack you.
Defeat Both Soldiers |scenariogoal 11/30919
step
_On the Deck of the Airship:_
Watch the dialogue
Kill enemies around this area
Defend the Airship! |scenariostage 12
step
_On the Rear Deck of the Airship:_
Prepare Your Character
|tip Open your Talents panel (press N) and choose your talents.
|tip Open your Spellbook (press P) and move the rest of your abilities to your action bars.
clicknpc Armored Wind Rider##112565
|tip At the back of the ship.
Choose _<Leave and join the assault on Lordaeron>_
accept The Battle for Lordaeron##51796
step
Join the Battle for Lordaeron |goto Undercity BFA/0 84.53,16.74 < 50 |noway |c |q 51796
|tip Click "Enter Scenario" when the popup appears on the screen.
|tip It may take a bit.
|next "Zygor's Leveling Guides\\Battle for Azeroth (110-120)\\Intro & Quest Zone Choice"
]])
