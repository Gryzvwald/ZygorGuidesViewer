local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AchievementsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
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
Run up the stairs |goto 67.52,22.95 < 3 |walk
Run up the stairs |goto 67.24,22.61 < 3 |walk
Follow the path |goto 67.42,21.39 < 3 |walk
Follow the path |goto 67.79,20.94 < 5 |walk
Leave the building |goto 68.80,21.12 < 3 |walk
Follow the path |goto 70.33,18.99 < 7 |only if walking
Run up the stairs |goto 71.43,17.75 < 5 |only if walking
Run up the stairs |goto 71.62,16.83 < 5 |only if walking
Follow the path |goto 71.26,16.45 < 5 |only if walking
Follow the path |goto 70.23,16.51 < 7 |only if walking
Follow the path |goto 49.05,64.84 < 7 |only if walking
Follow the path |goto 49.22,63.78 < 7 |only if walking
Run up the stairs |goto 48.68,63.36 < 5 |only if walking
Follow the path |goto 46.50,63.09 < 5 |only if walking
Run up the stairs |goto 45.27,64.12 < 5 |only if walking
Run up the stairs |goto 43.54,67.80 < 5 |only if walking
Follow the path |goto 43.37,69.11 < 5 |only if walking
Continue following the path |goto 42.55,72.52 < 7 |only if walking
Cross the bridge |goto 40.96,72.37 < 5 |only if walking
Run up the stairs |goto 40.96,70.65 < 5 |only if walking
Follow the path |goto 41.00,70.08 < 5 |only if walking
talk Genn Greymane##140649
Choose _<Give Genn a moment to speak with Katherine.>_
Speak with Genn Greymane |q 52194/1 |goto Tiragarde Sound/0 67.30,36.23
step
Watch the dialogue
talk Katherine Proudmoore##140495
turnin What You May Regret##52194 |goto Tiragarde Sound/0 66.96,36.23
accept Lost Shipment##52246 |goto Tiragarde Sound/0 66.96,36.23
step
Follow the path |goto Tiragarde Sound/0 67.23,36.24 < 5 |only if walking
Run down the stairs |goto Boralus/0 40.98,70.00 < 5 |only if walking
Follow the path |goto Boralus/0 41.01,72.52 < 5 |only if walking
Follow the path |goto Boralus/0 42.53,72.48 < 5 |only if walking
Run down the stairs |goto Boralus/0 43.38,69.05 < 5 |only if walking
Follow the path |goto Boralus/0 43.53,67.82 < 5 |only if walking
Follow the path |goto Boralus/0 45.49,63.61 < 5 |only if walking
Run down the stairs |goto Boralus/0 46.70,63.22 < 5 |only if walking
Follow the path |goto Boralus/0 49.19,63.87 < 5 |only if walking
Follow the path |goto Boralus/0 49.00,64.86 < 7 |only if walking
Follow the path |goto Boralus/0 68.08,15.61 < 7 |only if walking
Follow the path |goto Boralus/0 70.50,16.34 < 7 |only if walking
Continue following the path |goto Boralus/0 71.31,14.78 < 7 |only if walking
talk Roko##129940
|tip He walks around this area.
accept The Long Con##49223 |goto 70.00,10.09
step
Run down the stairs |goto Boralus/0 67.32,16.24 < 5 |only if walking
Run down the stairs |goto Boralus/0 66.31,19.85 < 5 |only if walking
Follow the path |goto Boralus/0 65.87,20.34 < 5 |only if walking
Run down the stairs |goto Boralus/0 63.72,20.30 < 5 |only if walking
Follow the path |goto Boralus/0 62.59,21.57 < 7 |only if walking
Continue following the path |goto Boralus/0 63.00,26.57 < 7 |only if walking
Continue following the path |goto Boralus/0 61.62,27.61 < 7 |only if walking
Continue following the path |goto Boralus/0 59.78,27.67 < 7 |only if walking
Run up the stairs |goto Boralus/0 57.76,30.29 < 5 |only if walking
Run up the stairs |goto Boralus/0 56.99,32.44 < 5 |only if walking
Follow the path |goto Boralus/0 56.91,33.09 < 5 |only if walking
Run up the stairs |goto Boralus/0 56.20,33.57 < 5 |only if walking
Cross the bridge |goto Boralus/0 55.91,33.75 < 5 |only if walking
Follow the path |goto Boralus/0 54.44,34.62 < 5 |only if walking
Enter the building |goto Boralus/0 53.89,34.48 < 3 |walk
click Shipping Contracts
|tip Inside the building.
Search the Ashvane Offices |q 52246/1 |goto 53.53,35.47
step
Watch the dialogue
|tip Inside the building.
kill Emery Camden##140744 |q 52246/2 |goto 53.53,35.47
step
Leave the building |goto 53.88,34.48 < 3 |walk
Follow the path |goto 54.50,34.66 < 5 |only if walking
Run down the stairs |goto 55.91,33.72 < 5 |only if walking
Follow the path |goto 57.72,33.60 < 7 |only if walking
Continue following the path |goto 58.44,35.21 < 7 |only if walking
Continue following the path |goto 58.64,38.29 < 7 |only if walking
Continue following the path |goto 59.45,38.82 < 7 |only if walking
Continue following the path |goto 61.26,41.59 < 5 |only if walking
Run up the ramp |goto 61.64,41.22 < 5 |only if walking
Enter the building |goto 61.17,40.28 < 3 |walk
talk Carentan##142644
|tip Upstairs inside the building.
Tell him _"Roko sends his regards."_
kill Carentan##142644 |q 49223/1 |goto 61.43,39.07
step
Leave the building |goto 61.20,40.25 < 3 |c |q 49223
step
Follow the path |goto 49.05,64.84 < 7 |only if walking
Follow the path |goto 49.22,63.78 < 7 |only if walking
Run up the stairs |goto 48.68,63.36 < 5 |only if walking
Follow the path |goto 46.50,63.09 < 5 |only if walking
Run up the stairs |goto 45.27,64.12 < 5 |only if walking
Run up the stairs |goto 43.54,67.80 < 5 |only if walking
Follow the path |goto 43.37,69.11 < 5 |only if walking
Continue following the path |goto 42.55,72.52 < 7 |only if walking
Cross the bridge |goto 40.96,72.37 < 5 |only if walking
Run up the stairs |goto 40.96,70.65 < 5 |only if walking
Follow the path |goto 41.00,70.08 < 5 |only if walking
Follow the path |goto Tiragarde Sound/0 67.21,36.23 < 5 |only if walking
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
Follow the path |goto Tiragarde Sound/0 67.23,36.24 < 5 |only if walking
Run down the stairs |goto Boralus/0 40.98,70.00 < 5 |only if walking
Follow the path |goto Boralus/0 41.01,72.52 < 5 |only if walking
Follow the path |goto Boralus/0 42.53,72.48 < 5 |only if walking
Run down the stairs |goto Boralus/0 43.38,69.05 < 5 |only if walking
Follow the path |goto Boralus/0 43.53,67.82 < 5 |only if walking
Follow the path |goto Boralus/0 45.49,63.61 < 5 |only if walking
Run down the stairs |goto Boralus/0 46.70,63.22 < 5 |only if walking
Follow the path |goto Boralus/0 49.19,63.87 < 5 |only if walking
Follow the path |goto Boralus/0 49.00,64.86 < 7 |only if walking
Follow the path |goto Boralus/0 68.08,15.61 < 7 |only if walking
Follow the path |goto Boralus/0 70.50,16.34 < 7 |only if walking
Continue following the path |goto Boralus/0 71.31,14.78 < 7 |only if walking
talk Roko##129940
|tip He walks around this area.
turnin The Long Con##49223 |goto 70.00,10.09
step
Follow the path |goto 71.41,14.85 < 7 |only if walking
Jump down here |goto 70.40,17.59 < 5 |only if walking
Run up the stairs |goto 69.18,21.17 < 5 |only if walking
Enter the building |goto 68.82,21.09 < 3 |walk
Follow the path |goto 67.76,20.88 < 5 |walk
Run down the stairs |goto 67.43,21.35 < 3 |walk
Run down the stairs |goto 67.35,22.86 < 3 |walk
talk Flynn Fairwind##140732
|tip Inside the building.
Tell him _"Lady Katherine has asked me to look for her daughter. This is the only clue I have so far."_
Watch the dialogue
Show Flynn the Contract |q 52762/1 |goto 67.59,22.15
step
talk Flynn Fairwind##140732
|tip Inside the building.
turnin A Local Guide##52762 |goto 67.59,22.14
accept An Explosive Entrance##52252 |goto 67.59,22.14
step
Run up the stairs |goto 67.54,22.92 < 3 |walk
Run up the stairs |goto 67.26,22.65 < 3 |walk
Follow the path |goto 67.43,21.42 < 3 |walk
Follow the path |goto 67.79,20.90 < 5 |walk
Leave the building |goto 68.85,21.14 < 3 |walk
Follow the path |goto 70.38,18.90 < 5 |only if walking
Run up the stairs |goto 71.43,17.76 < 5 |only if walking
Run up the stairs |goto 71.59,16.78 < 5 |only if walking
Follow the path |goto 71.28,16.43 < 5 |only if walking
Run up the stairs |goto 68.33,15.67 < 5 |only if walking
Follow the path |goto Tiragarde Sound/0 75.79,48.83 < 7 |only if walking
Follow the road |goto Tiragarde Sound/0 76.02,49.07 < 7 |only if walking
Follow the road |goto Tiragarde Sound/0 76.53,48.93 < 7 |only if walking
Follow the path |goto Tiragarde Sound/0 77.22,49.41 < 7 |only if walking
Continue following the path |goto Tiragarde Sound/0 77.78,49.54 < 7 |only if walking
Continue following the path |goto Tiragarde Sound/0 78.24,49.38 < 7 |only if walking
Continue following the path |goto Tiragarde Sound/0 78.74,48.53 < 7 |only if walking
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
Jump down here |goto 77.16,83.25 < 5 |only if walking
Follow the path |goto 77.68,83.18 < 5 |only if walking
Jump down here |goto 77.69,82.96 < 5 |only if walking
Jump down here |goto 77.65,81.94 < 5 |only if walking
Follow the path |goto 77.70,81.31 < 7 |only if walking
Follow the path |goto 77.92,81.02 < 7 |only if walking
Follow the path |goto 77.88,80.58 < 7 |only if walking
kill Beckett 'Salty Dog' Ogden##140914
|tip He walks around this area.
|tip Use the "Call in Airstrike" ability on him.
|tip It appears as a button on the screen.
coll Beckett's Strongbox Key##161477 |q 52253/2 |goto 77.77,80.47
step
Follow the path |goto 77.91,80.61 < 7 |only if walking
Continue following the path |goto 77.91,81.05 < 7 |only if walking
Continue following the path |goto 77.25,81.57 < 7 |only if walking
Continue following the path |goto 76.40,81.67 < 7 |only if walking
Follow the path up |goto 75.64,81.41 < 7 |only if walking
Follow the path up |goto 75.06,81.57 < 7 |only if walking
Follow the path |goto 74.78,82.19 < 7 |only if walking
Follow the path |goto 74.75,83.14 < 7 |only if walking
Follow the path up |goto 74.65,84.01 < 7 |only if walking
Run up the stairs |goto 74.92,84.53 < 5 |only if walking
Follow the path |goto 75.16,84.50 < 5 |only if walking
kill Luna 'Stabby' Roscoe##140915
|tip Use the "Call in Airstrike" ability on her.
|tip It appears as a button on the screen.
collect Luna's Strongbox Key##161478 |q 52253/3 |goto 75.14,84.37
step
Run down the stairs |goto 75.12,84.56 < 5 |only if walking
Follow the path |goto 74.92,84.50 < 5 |only if walking
Follow the path |goto 74.71,84.16 < 7 |only if walking
Continue following the path |goto 74.28,84.07 < 7 |only if walking
Continue following the path |goto 74.01,84.21 < 7 |only if walking
Enter the building |goto 73.40,84.11 < 3 |walk
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
Leave the building |goto 73.40,84.10 < 3 |walk
Follow the path |goto 73.83,84.21 < 7 |only if walking
Follow the path down |goto 74.54,83.89 < 7 |only if walking
Follow the path |goto 74.90,83.31 < 7 |only if walking
Follow the path |goto 75.26,83.21 < 7 |only if walking
Cross the bridge |goto 75.56,82.63 < 5 |only if walking
Follow the path |goto 75.65,79.22 < 5 |only if walking
Follow the path up |goto 75.62,78.48 < 7 |only if walking
Follow the path |goto 75.41,78.27 < 7 |only if walking
Run up the stairs |goto 74.76,78.51 < 5 |only if walking
Find the Strongbox |q 52311/1 |goto 74.63,78.53
step
click Sweete's Lockbox
Open Sweete's Strongbox |q 52311/2 |goto 74.52,78.59
step
talk Flynn Fairwind##141136
Ask him _"I assume you have a plan for getting out of here with that?"_
Talk to Flynn |q 52311/3 |goto 74.53,78.61
step
Run down the stairs |goto 74.63,78.51 < 5 |only if walking
Follow the path |goto 74.76,78.47 < 5 |only if walking
Follow the path |goto 74.93,78.00 < 7 |only if walking
Jump down here |goto 75.01,77.54 < 5
Watch the dialogue
Make a Daring Escape |q 52311/4 |goto 75.30,76.62
step
Land Safely in Bridgeport |goto 75.26,48.96 < 7 |c |q 52311
step
talk Flynn Fairwind##140732
turnin Sweete's Strongbox##52311 |goto 75.35,48.86
accept Tol Dagor: The Fourth Key##52445 |goto 75.35,48.86
step
_Under Construction_
To Be Continued...
]])
