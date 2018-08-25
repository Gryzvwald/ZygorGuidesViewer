local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("AchievementsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZGV.BETAEND()
ZGV.BETAEND()
ZGV.BETASTART()
ZGV.BETAEND()
