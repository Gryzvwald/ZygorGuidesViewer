local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\BFA World Quest Unlock",{
author="support@zygorguides.com",
description="This guide will walk you through unlocking world quests in Kul Tiras and Zandalar.\n\n"..
"To accomplish this, you will need to earn \"Friendly\" reputation with the follwing factions:\n\n"..
"Talanji's Expedition\n"..
"Voldunai\n"..
"Zandalari Empire\n",
condition_suggested=function() return level >= 120 and not completedq(51916) end,
condition_valid=function() return level >= 120 end,
condition_valid_msg="You must be level 120 to unlock world quests in Battle for Azeroth!",
condition_end=function() return completedq(51916) end,
startlevel=120.0,
},[[
step
accept Uniting Zandalar##51916 |goto Zuldazar/0 58.44,62.67
|tip You will accept this quest automatically upon reaching level 120.
step
Earn "Friendly" Reputation with Talanji's Expedition |condition rep("Talanji's Expedition") >= Friendly
step
Earn "Friendly" Reputation with the Voldunai |condition rep("Voldunai") >= Friendly
step
Earn "Friendly" Reputation with the Zandalari Empire |condition rep("Zandalari Empire") >= Friendly
step
Follow the path |goto Dazar'alor/0 51.28,88.58 < 7 |only if walking
Continue following the path |goto 51.14,85.49 < 7 |only if walking
Run down the stairs |goto 50.06,85.95 < 10 |only if walking
Follow the path |goto 50.58,93.13 < 7 |only if walking
Continue following the path |goto 50.01,96.04 < 7 |only if walking
Cross the bridge |goto 50.50,99.99 < 7 |only if walking
Run down the stairs |goto 51.24,99.84 < 5 |only if walking
talk Nathanos Blightcaller##135691
turnin Uniting Zandalar##51916 |goto Zuldazar/0 58.44,62.67
]])
