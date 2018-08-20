local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("AchievementsHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Feats of Strength\\Allied Races: Highmountain Tauren",{
achieveid={12245},
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
condition_end=function() return achieved(12245) end,
keywords={"battle, of, azeroth, pet, preorder"},
description="To acquire this achievement, you must purchase the Battle of Azeroth collector's edition.",
},[[
step
Load the "Highmountain Tauren Race Unlock" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth\\Highmountain Tauren Race Unlock"
|tip Click the line above to load the guide.
|tip Completing this guide will grant you this achievment.
Earn the "Allied Races: Highmountain Tauren" Achievement |achieve 12245
step
Congratulations!
You Earned the "Allied Races: Highmountain Tauren" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Feats of Strength\\Allied Races: Nightborne",{
achieveid={12244},
author="support@zygorguides.com",
startlevel=110,
endlevel=110,
condition_end=function() return achieved(12244) end,
keywords={"battle, of, azeroth, pet, preorder"},
description="To acquire this achievement, you must purchase the Battle of Azeroth collector's edition.",
},[[
step
Load the "Nightborne Race Unlock" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Battle for Azeroth\\Nightborne Race Unlock"
|tip Click the line above to load the guide.
|tip Completing this guide will grant you this achievment.
Earn the "Allied Races: Nightborne" Achievement |achieve 12244
step
_Congratulations!_
You Earned the "Allied Races: Nightborne" Achievement.
]])
