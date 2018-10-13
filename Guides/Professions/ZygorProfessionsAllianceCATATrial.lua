local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Alchemy skill from 1-300.",
},[[
step
#include "trainer_Alchemy"
skillmax Alchemy,75
|tip You must be at least level 5.
step
map Elwynn Forest
path follow loose;loop;ants straight;dist 60
path	43.4,58.9	48.7,62.6	58.0,65.6
path	64.9,63.5	78.6,63.0	79.6,80.4
path	79.6,80.4	59.1,78.3	50.8,85.2
path	46.8,81.1	37.3,87.6	26.2,89.0
path	30.1,76.1	33.2,66.5
#include "follow_path_herbs"
collect 54 Peacebloom##2447 |condition skill("Alchemy")>=55
collect 54 Silverleaf##765 |condition skill("Alchemy")>=55
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Alchemy"
buy 54 Crystal Vial##3371 |condition itemcount(3371) >= 54 or skill("Alchemy")>=55
step
create 54 Minor Healing Potion##2330,Alchemy,55
Save at least _38_ for later
step
#include "trainer_Alchemy"
skillmax Alchemy,150
|tip You must be at least level 10.
step
map Hillsbrad Foothills
path	31.8,62.6	33.9,54.0	29.7,44.1
path	35.5,37.8	34.5,28.2	39.5,21.0
path	44.2,8.3	51.3,14.0	57.5,20.9
path	56.1,34.3	49.9,46.2	41.2,46.6
path	40.1,55.0	41.3,67.4	31.8,71.9
#include "follow_path_herbs"
collect 38 Mageroyal##785 |condition skill("Alchemy")>=125
collect 114 Briarthorn##2450 |condition skill("Alchemy")>=125
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Alchemy"
learn Lesser Healing Potion##2337 |condition skill("Alchemy")>=90
step
#include "vendor_Alchemy"
buy 75 Crystal Vial##3371 |condition itemcount(3371) >= 75 or skill("Alchemy")>=90
step
create 38 Lesser Healing Potion##2337,Alchemy,90
step
#include "trainer_Alchemy"
learn Elixir of Wisdom##3171 |condition skill("Alchemy")>=125
step
create 38 Elixir of Wisdom##3171,Alchemy,125
#include end_of_prof_trial_125
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Archaeology skill from 1-600.",
},[[
step
#include "trainer_Archaeology"
skillmax Archaeology,75
|tip You must be at least level 20.
only if skill("Archaeology")<1
step
talk Innkeeper Allison##6740
home Trade District |goto Stormwind City,60.4,75.3
step
Open your world map, find dig sites in Eastern Kingdoms and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
skill Archaeology,50
step
#include "trainer_Archaeology"
skillmax Archaeology,150
|tip You must be at least level 20.
step
Open your world map, find dig sites in Eastern Kingdoms and go to them
|tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
Use your Survey ability inside the dig site area |cast Survey##80451
A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts
|tip Each dig site has 6 artifacts you can find.
Click the Archaeology Fragments that spawn on the ground
Open your Archaeology profession window |cast Archaeology##78670
Click artifacts to open them, then solve them once you have the required amounts of each
skill Archaeology,125
#include end_of_prof_trial_150
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Leveling Guides\\Blacksmithing 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Blacksmithing skill from 1-300.",
},[[
step
#include "trainer_Blacksmithing"
skillmax Blacksmithing,75
step
#include "vendor_Blacksmithing"
buy 1 Blacksmith Hammer##5956 |condition itemcount(5956) >= 1 or skill("Blacksmithing")>=75
step
#include "vendor_Blacksmithing"
buy 1 Mining Pick##2901 |condition itemcount(2901) >= 1 or skill("Blacksmithing")>=75
step
#include "Copper_Path"
#include "follow_path_mine"
collect 80 Rough Stone##2835 |condition skill("Blacksmithing")>=75
collect 150 Copper Ore##2770 |condition skill("Blacksmithing")>=75
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Copper Bar##2657,Mining,150 total |n
collect 150 Copper Bar##2840 |condition skill("Blacksmithing")>=75
step
#include "maincity_anvil"
create Rough Sharpening Stone##2660,Blacksmithing,25
step
#include "trainer_Blacksmithing"
learn Rough Grinding Stone##3320 |condition skill("Blacksmithing")>=75
step
#include "maincity_anvil"
create Rough Grinding Stone##3320,Blacksmithing,50
step
#include "trainer_Blacksmithing"
learn Copper Chain Belt##2661 |condition skill("Blacksmithing")>=75
step
#include "maincity_anvil"
create Copper Chain Belt##2661,Blacksmithing,75
step
#include "trainer_Blacksmithing"
skillmax Blacksmithing,150
step
#include "Copper_Path"
#include "follow_path_mine"
collect 210 Copper Ore##2770 |only if itemcount("Copper Bar")<235 |condition skill("Blacksmithing")>=125
|tip You can also buy these materials from the Auction House.
step
#include "Tin_Path"
#include "follow_path_mine"
collect 60 Coarse Stone##2836 |condition skill("Blacksmithing")>=125
collect 60 Tin Ore##2771 |condition skill("Blacksmithing")>=125
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Copper Bar##2657,Mining,210 total |n
collect 210 Copper Bar##2840 |condition skill("Blacksmithing")>=125
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Tin Bar##3304,Mining,60 total |n
collect 60 Tin Bar##3576 |condition skill("Blacksmithing")>=125
|tip You can also buy these materials from the Auction House.
step
#include "maincity_anvil"
create Bronze Bar##2659,Mining,60 total |n
collect 120 Bronze Bar##2841 |condition skill("Blacksmithing")>=125
|tip You can also buy these materials from the Auction House.
step
#include "trainer_Blacksmithing"
learn Coarse Grinding Stone##3326 |condition skill("Blacksmithing")>=125
step
#include "maincity_anvil"
create 30 Coarse Grinding Stone##3326,Blacksmithing,30 total |n
collect 30 Coarse Grinding Stone##3478 |condition skill("Blacksmithing")>=125
|tip Save 30 Coarse Grinding Stones, you'll need them later.
step
#include "trainer_Blacksmithing"
learn Runed Copper Belt##2666 |condition skill("Blacksmithing")>=125
step
#include "maincity_anvil"
create Runed Copper Belt##2666,Blacksmithing,105
step
#include "trainer_Blacksmithing"
learn Rough Bronze Leggings##2668 |condition skill("Blacksmithing")>=125
step
#include "maincity_anvil"
create Rough Bronze Leggings##2668,Blacksmithing,125
#include end_of_prof_trial_125
]])
ZGV.BETASTART()
ZGV.BETAEND()
ZGV.BETASTART()
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Fishing skill from 1-300.",
},[[
step
#include "trainer_Fishing"
skillmax Fishing,75
step
#include "vendor_Fishing"
buy 1 Fishing Pole##6256 |condition itemcount(6256) >= 1 or skill("Fishing")>=75
buy 5 Shiny Bauble##6529 |condition itemcount(6529) >= 5 or skill("Fishing")>=75
step
Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529
|tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
Stand on the end of this wooden dock
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
skill Fishing,75 |goto 54.6,69.0 |condition skill("Fishing")>=75
step
#include "trainer_Fishing"
skillmax Fishing,150
step
#include "vendor_Fishing"
buy 5 Shiny Bauble##6529 |condition itemcount(6529) >= 5 or skill("Fishing")>=75
step
Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529
|tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
Stand on the end of this wooden dock
Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##131474
skill Fishing,150 |goto Stormwind City,55.0,69.7 |condition skill("Fishing")>=150
#include end_of_prof_trial_150
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Herbalism skill from 1-300.",
},[[
step
#include "trainer_Herbalism"
skillmax Herbalism,75
step
talk Innkeeper Allison##6740
home Trade District |goto Stormwind City,60.4,75.3
step
map Elwynn Forest
path follow loose;loop;ants straight;dist 60
path 43.4,58.9	48.7,62.6	58.0,65.6
path 64.9,63.5	78.6,63.0	79.6,80.4
path 59.1,78.3	50.8,85.2	46.8,81.1
path 37.3,87.6	26.2,89.0	30.1,76.1
path 33.2,66.5
#include "follow_path_herbs"
collect Peacebloom##2447 |n
collect Silverleaf##765 |n
collect Earthroot##2449 |n
skill Herbalism,70
step
#include "trainer_Herbalism"
skillmax Herbalism,150
step
map Hillsbrad Foothills
path follow loose;loop;ants straight;dist 60
path	31.8,62.6	33.9,54.0	33.9,54.0
path	29.7,44.1	34.5,28.2	39.5,21.0
path	39.5,21.0	44.2,8.3 	51.3,14.0
path	57.5,20.9	56.1,34.3	49.9,46.2
path	43.1,50.1	38.2,49.1	40.1,55.0
path	41.3,67.4	41.3,67.4	36.3,69.9
#include "follow_path_herbs"
collect Mageroyal##785 |n
collect Bruiseweed##2453 |n
collect Briarthorn##2450 |n
skill Herbalism,125
#include end_of_prof_trial_150
]])
ZGV.BETASTART()
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Jewelcrafting skill from 1-300.",
},[[
step
#include "trainer_Jewelcrafting"
skillmax Jewelcrafting,75
step
talk Brooke Stonebraid##5514
buy Jeweler's Kit##20815 |goto Stormwind City 59.2,37.5 |condition itemcount(20815) >= 1 or skill("Jewelcrafting")>=50
step
#include "Copper_Path"
#include "follow_path_mine"
|cast Prospecting##31252
collect Tigerseye##818 |condition skill("Jewelcrafting")>=50
|tip You can use the prospect ability on the Copper Ore in your bags to get this item.
collect Malachite##774 |condition skill("Jewelcrafting")>=50
collect 270 Copper Ore##2770 |condition skill("Jewelcrafting")>=50
Gather _{_G.max(0 , (20-itemcount(818,774)))}_ gems |condition skill("Jewelcrafting")>=50
|tip You can also buy these materials from the Auction House.
collect Shadowgem##1210 |n |tip Save these for later use.
condition skill("Jewelcrafting")>=50
step
#include "maincity_anvil"
create Copper Bar##2657,Mining,170 total |n
collect 170 Copper Bar##2840 |condition skill("Jewelcrafting")>=50
step
create 60 Delicate Copper Wire##25255,Jewelcrafting,60 total |n
Save all Delicate Copper Wires for later
collect 60 Delicate Copper Wire##20816 |condition skill("Jewelcrafting")>=50
step
#include "trainer_Jewelcrafting"
Learn Prospecting |condition _G.IsSpellKnown(31252) or skill("Jewelcrafting")>=50
step
Prospect the remaining Copper Ore to collect Tigerseyes and Malachite |cast Prospecting##31252
collect Tigerseyes##818 |n
collect Malachite##774 |n
Gather around _{_G.max(0 , (20-itemcount(818,774)))}_ gems |condition skill("Jewelcrafting")>=50
step
#include "trainer_Jewelcrafting"
learn Malachite Pendant##32178 |condition skill("Jewelcrafting")>=50
step
#include "trainer_Jewelcrafting"
learn Tigerseye Band##32179  |condition skill("Jewelcrafting")>=50
step
create Malachite Pendant##32178,Jewelcrafting,50
|tip If you didn't get enough Malachite but more Tigerseyes from Prospecting, make Tigerseye Band instead.
create Tigerseye Band##32179,Jewelcrafting,50
step
#include "trainer_Jewelcrafting"
skillmax Jewelcrafting,150
step
#include "trainer_Jewelcrafting"
learn Bronze Setting##25278 |condition skill("Jewelcrafting")>=150
step
#include "Tin_Path"
#include "follow_path_mine"
Prospect the ores you come across |cast Prospecting##31252
collect 20 Shadowgem##1210 |condition skill("Jewelcrafting")>=150
collect 30 Moss Agate##1206 |condition skill("Jewelcrafting")>=150
collect 40 Silver Ore##2775 |condition skill("Jewelcrafting")>=150
collect 50 Tin Ore##2771 |condition skill("Jewelcrafting")>=150
|tip You can also buy these materials from the Auction House.
collect Citrine##3864 |n
collect Aquamarine##7909 |n
|tip Save the Citrine and Aquamarine for later.
step
#include "Iron_Ore_Path"
#include "follow_path_mine"
collect 80 Heavy Stone##2838 |condition skill("Jewelcrafting")>=150
|tip Keep the Iron Ore you get for prospecting later.
|tip You can also buy these materials from the Auction House.
collect Citrine##3864 |n
collect Aquamarine##7909 |n
collect Star Ruby##7910 |n
Save the Citrine, Aquamarine and Star Rubies for later
step
#include "maincity_anvil"
create Silver Bar##2658,Mining,40 total |condition skill("Jewelcrafting")>=150
step
#include "maincity_anvil"
create Tin Bar##3304,Mining,50 total |condition skill("Jewelcrafting")>=150
step
#include "maincity_anvil"
create Bronze Bar##2659,Mining,50 total |n
collect 100 Bronze Bar##2841 |condition skill("Jewelcrafting")>=150
step
create 50 Bronze Setting##25278,Jewelcrafting,50 total |n
Save these, you will need them later
skill Jewelcrafting,80
step
#include "trainer_Jewelcrafting"
learn Ring of Silver Might##25317 |condition skill("Jewelcrafting")>=150
step
create Ring of Silver Might##25317,Jewelcrafting,100
step
#include "trainer_Jewelcrafting"
learn Ring of Twilight Shadows##25318 |condition skill("Jewelcrafting")>=150
step
create 10 Ring of Twilight Shadows##25318,Jewelcrafting,110
step
#include "trainer_Jewelcrafting"
learn Heavy Stone Statue##32807 |condition skill("Jewelcrafting")>=150
step
create 10 Heavy Stone Statue##32807,Jewelcrafting,120
step
#include "trainer_Jewelcrafting"
learn Pendant of the Agate Shield##25610 |condition skill("Jewelcrafting")>=150
step
create Pendant of the Agate Shield##25610,Jewelcrafting,150
#include end_of_prof_trial_150
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Leatherworking skill from 1-300.",
},[[
step
#include "trainer_Leatherworking"
skillmax Leatherworking,75 |tip You must be at least level 5.
step
map Dun Morogh
path follow loose; loop on; ants curved;dist 30
path	81.0,50.1	82.7,55.5	83.0,59.3
path	79.3,60.2	79.5,53.6	78.6,48.7
kill Snow Leopard##42170+, Snow Leopard Cub##42171+, Scarred Crag Boar##1689+
Kill any beasts you see and skin them
collect 57 Ruined Leather Scraps##2934 |condition skill("Leatherworking")>=55
collect 250 Light Leather##2318 |condition skill("Leatherworking")>=55
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Leatherworking"
buy 43 Coarse Thread##2320 |condition itemcount(2320) >= 43 or skill("Leatherworking")>=55
step
create 19 Light Leather##2881,Leatherworking,20
step
create Light Armor Kits##2152,Leatherworking,30
step
#include "trainer_Leatherworking"
learn Handstitched Leather Belt##3753 |condition skill("Leatherworking")>=55
step
create 20 Handstitched Leather Cloak##9058,Leatherworking,50
step
create 5 Handstitched Leather Belts##3753,Leatherworking,55
step
#include "trainer_Leatherworking"
skillmax Leatherworking,150
|tip You must be at least level 10.
step
#include "trainer_Leatherworking"
learn Embossed Leather Gloves##3756 |condition skill("Leatherworking")>=150
step
map Northern Stranglethorn
path follow loose;loop;ants straight;dist 60
path	41.1,45.2	37.1,38.6	36.5,30.9
path	35.7,25.8	35.8,19.7	40.5,20.6
path	45.8,25.4	48.3,30.0	48.2,35.5
path	42.9,47.4
Kill any beasts you see and skin them
collect 15 Medium Hide##4232 |condition skill("Leatherworking")>=150
collect 155 Medium Leather##2319 |condition skill("Leatherworking")>=150
|tip You can also buy these materials from the Auction House.
step
#include "vendor_Leatherworking"
buy 75 Salt##4289 |condition itemcount(4289) >= 75 or skill("Leatherworking")>=150
buy 32 Gray Dye##4340 |condition itemcount(4340) >= 32 or skill("Leatherworking")>=150
buy 190 Fine Thread##2321 |condition itemcount(2321) >= 190 or skill("Leatherworking")>=150
buy 92 Coarse Thread##2320 |condition itemcount(2320) >= 92 or skill("Leatherworking")>=150
step
create Embossed Leather Gloves##3756,Leatherworking,85
step
#include "trainer_Leatherworking"
learn Fine Leather Belt##3763 |condition skill("Leatherworking")>=150
step
create Fine Leather Belt##3763,Leatherworking,100
Keep these for later
step
#include "trainer_Leatherworking"
learn Cured Medium Hide##3817 |condition skill("Leatherworking")>=150
step
create Cured Medium Hide##3817,Leatherworking,115
step
#include "trainer_Leatherworking"
learn Dark Leather Boots##2167 |condition skill("Leatherworking")>=150
step
create Dark Leather Boots##2167,Leatherworking,130
step
#include "trainer_Leatherworking"
learn Dark Leather Belt##3766 |condition skill("Leatherworking")>=150
step
#include "trainer_Leatherworking"
create Dark Leather Belt##3766,Leatherworking,145
step
#include "trainer_Leatherworking"
learn Hillman's Leather Gloves##3764 |condition skill("Leatherworking")>=150
step
create Hillman's Leather Gloves##3764,Leatherworking,150
#include end_of_prof_trial_150
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Classic Mining 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Mining skill from 1-300.",
},[[
step
#include "trainer_Mining"
skillmax Mining,75
|tip You must be at least level 5.
step
#include "vendor_Mining"
buy 1 Mining Pick##2901 |condition itemcount(2901) >= 1 or skill("Mining")>=50
step
map Elwynn Forest
path follow loose;loop;ants straight
path	32.8,50.5	30.2,58.2	28.3,64.8
path	25.6,70.3	21.4,74.5	23.1,82.5
path	31.5,78.1	37.5,71.4	38.2,82.5
path	44.6,75.2	49.7,84.8	57.3,80.8
path	61.7,75.2	67.3,72.2	70.2,66.1
path	73.7,56.0	73.8,48.2	80.5,54.8
path	80.0,46.1	77.5,38.1	71.4,38.5
path	64.7,37.9	67.9,47.0	68.6,59.0
path	55.1,56.0	49.9,60.4	46.2,53.9
path	43.2,48.7	37.2,51.9
#include "follow_path_mine"
skill Mining,35
step
#include "maincity_anvil"
create Copper Bar##2657,Mining,50
|tip Keep all of the Copper Bars for Smelting later.
step
#include "trainer_Mining"
skillmax Mining,150
step
#include "trainer_Mining"
learn Smelt Bronze##2659 |condition skill("Mining")>=125
step
#include "trainer_Mining"
learn Smelt Tin##3304 |condition skill("Mining")>=125
step
map Northern Stranglethorn
path	40.4,45.0	36.3,44.1	34.0,38.8
path	31.1,34.1	27.0,31.8	21.4,25.2
path	21.8,18.7	26.6,21.9	31.1,22.4
path	34.6,20.9	33.8,17.2	38.5,17.9
path	46.3,19.1	52.5,20.5	58.6,16.8
path	63.5,17.5	63.2,22.1	60.3,24.3
path	57.2,28.2	60.8,34.6	66.1,40.9
path	62.9,47.1	56.2,50.4	48.0,55.2
path	44.3,55.5	48.7,47.2	47.7,39.2
path	50.2,28.6	44.6,28.2	42.9,34.7
path	41.4,41.2
#include "follow_path_mine"
skill Mining,125
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Leveling Guides\\Mining 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Mining skill from 1-300.",
},[[
step
talk Rockseeker Guo##67024 |goto The Jade Forest/0 45.0,85.9
skillmax Mining,75
step
map The Jade Forest/0
path follow loose;loop;ants straight;dist 60
path	49.2,94.1	50.2,89.4	54.6,92.8
path	58.2,94.1	61.4,93.4	64.4,91.4
path	67.2,88.6	69.3,83.5	66.2,76.8
path	61.6,71.0	56.0,69.7	58.9,62.9
path	60.8,57.6	58.5,48.9	53.9,39.9
path	55.3,33.5	56.1,29.1	53.9,26.1
path	51.4,21.8	46.2,17.1	38.4,8.7
path	35.8,12.4	32.7,13.0	28.2,21.4
path	30.3,25.6	30.9,29.5	30.2,37.0
path	29.6,43.8	29.8,52.9	33.2,55.5
path	36.2,64.9	39.8,69.5	39.0,78.4
path	40.4,84.3	44.8,90.6
#include "follow_path_mine"
skill Mining,75
step
talk Rockseeker Guo##67024 |goto The Jade Forest/0 45.0,85.9
skillmax Mining,150
step
map The Jade Forest/0
path follow loose;loop;ants straight;dist 60
path	49.2,94.1	50.2,89.4	54.6,92.8
path	58.2,94.1	61.4,93.4	64.4,91.4
path	67.2,88.6	69.3,83.5	66.2,76.8
path	61.6,71.0	56.0,69.7	58.9,62.9
path	60.8,57.6	58.5,48.9	53.9,39.9
path	55.3,33.5	56.1,29.1	53.9,26.1
path	51.4,21.8	46.2,17.1	38.4,8.7
path	35.8,12.4	32.7,13.0	28.2,21.4
path	30.3,25.6	30.9,29.5	30.2,37.0
path	29.6,43.8	29.8,52.9	33.2,55.5
path	36.2,64.9	39.8,69.5	39.0,78.4
path	40.4,84.3	44.8,90.6
#include "follow_path_mine"
skill Mining,150
#include end_of_prof_trial_150
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Leveling Guides\\Skinning 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Skinning skill from 1-300.",
},[[
step
#include "trainer_Skinning"
skillmax Skinning,75
step
#include "vendor_Leatherworking"
buy 1 Skinning Knife##7005 |condition itemcount(7005) >= 1 or skill("Skinning")>=75
step
talk Innkeeper Allison##6740
home Trade District |goto Stormwind City,60.4,75.3
step
map Dun Morogh
path follow loose;loop;ants straight;dist 60
path	81.0,50.1	82.7,55.5	83.0,59.3
path	79.3,60.2	79.5,53.6	78.6,48.7
Kill any beasts you see and skin them
skill Skinning,60
step
talk Balthus Stoneflayer##6291
skillmax Skinning,150 |goto Ironforge,39.5,32.6
step
map Loch Modan
path follow loose;loop;ants straight;dist 60
path	50.3,66.3	48.3,61.5	54.8,53.0
path	57.3,50.2	60.4,43.0	62.6,49.3
path	59.4,56.9	53.6,61.7
Kill any beasts you see and skin them
skill Skinning,120
step
map Wetlands
path follow loose;loop;ants straight;dist 60
path	20.2,50.8	22.8,45.6	29.4,42.2
path	30.0,44.6	26.6,47.6	24.7,51.5
path	23.6,58.7
Kill any beasts you see and skin them
skill Skinning,150
#include end_of_prof_trial_150
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 1-600 Leveling Guide",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Tailoring skill from 1-300.",
},[[
step
#include "trainer_Tailoring"
skillmax Tailoring,75
|tip You must be at least level 5.
step
kill Rotted One##948+, Flesh Eater##3+, Bone Chewer##210+
collect 156 Linen Cloth##2589 |goto Duskwood,23.7,36.6  |condition skill("Tailoring")>=75
|tip You can also buy these materials from the Auction House.
You can find more mobs in the crypt at |goto 25.8,34.6
Be sure to save any _Wool Cloth_ you pick up
step
create Bolt of Linen Cloth##2963,Tailoring,78 total |n
skill Tailoring,50
step
#include "trainer_Tailoring"
learn Heavy Linen Gloves##3840 |condition skill("Tailoring")>=75
step
#include "vendor_Tailoring"
buy 40 Coarse Thread##2320 |condition itemcount(2320) >= 40 or skill("Tailoring")>=75
step
create 20 Heavy Linen Gloves##3840,Tailoring,70
step
#include "trainer_Tailoring"
learn Reinforced Linen Cape##2397 |condition skill("Tailoring")>=75
step
create 5 Reinforced Linen Cape##2397,Tailoring,75
step
#include "trainer_Tailoring"
skillmax Tailoring,150
|tip You must be level 10
step
#include "trainer_Tailoring"
learn Bolt of Woolen Cloth##2964 |condition skill("Tailoring")>=125
step
kill Dragonmaw Whelpstealer##42041+, Ebon Slavehunter##42043
collect 110 Linen Cloth##2589 |condition skill("Tailoring")>=125 |goto Wetlands 67.4,47.4
collect 135 Wool Cloth##2592 |condition skill("Tailoring")>=125 |goto Wetlands 67.4,47.4
|tip You can also buy these materials from the Auction House.
step
create 55 Bolt of Linen Cloth##2963,Tailoring,55 total |n
collect 55 Linen Cloth##2996 |condition skill("Tailoring")>=125
step
create 45 Bolt of Woolen Cloth##2964,Tailoring,45 total |n
skill Tailoring,100
step
#include "trainer_Tailoring" |condition skill("Tailoring")>=125
learn Simple Kilt##12046 |condition skill("Tailoring")>=125
step
#include "vendor_Tailoring"
buy 45 Fine Thread##2321 |condition itemcount(2321) >= 45 or skill("Tailoring")>=125
step
create 40 Simple Kilt##12046,Tailoring,110
step
#include "trainer_Tailoring"
learn Double-stitched Woolen Shoulders##3848 |condition skill("Tailoring")>=125
step
create 15 Double-stitched Woolen Shoulders##3848,Tailoring,125
step
#include "trainer_Tailoring"
skillmax Tailoring,225
|tip You must be at least level 20.
step
#include "trainer_Tailoring"
learn Bolt of Silk Cloth##3839 |condition skill("Tailoring")>=200
step
kill Death's Step Putrifier##45443+, Death's Step Miscreation##45444+
collect 644 Silk Cloth##4306 |goto Eastern Plaguelands/0 18.33,78.45 |condition skill("Tailoring")>=200
|tip You may potentially be flagged farming here. Avoid attacking Feralas Sentinels.
step
kill Dunemaul Enforcer##5472+, Dunemaul Ogre##5471+, Dunemaul Brute##5474+, Dunemaul Warlock##5475+
collect 480 Mageweave Cloth##4338 |goto Tanaris/0 40.49,55.80 |condition skill("Tailoring")>=200
|tip You can also buy these materials from the Auction House.
step
create 161 Bolt of Silk Cloth##3839,Tailoring,161 total |n
skill Tailoring,145
#include end_of_prof_trial_125
]])
