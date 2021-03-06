TANKER_COOLDOWN = (15)*60
TEX_Timer = 0
TEX2_Timer = 0
ARC_Timer = 0
ARC2_Timer = 0

do
Texaco11 = GROUP:FindByName("Texaco 11")
Texaco11Spawn = SPAWN:New("Texaco 11"):InitLimit(1,18):OnSpawnGroup(function(spawngroup) 
  Texaco = spawngroup
end,{}):InitRepeatOnLanding():InitCleanUp(600):SpawnScheduled(600,0.5)
Texaco21 = GROUP:FindByName("Texaco 21")
Texaco21Spawn = SPAWN:New("Texaco 21"):InitLimit(1,18):OnSpawnGroup(function(spawngroup) 
  Texaco21 = spawngroup
end,{}):InitRepeatOnLanding():InitCleanUp(600):SpawnScheduled(600,0.5)
Arco11 = GROUP:FindByName("Arco 11")
Arco11Spawn = SPAWN:New("Arco 11"):InitLimit(1,18):OnSpawnGroup(function(spawngroup) 
  Arco11 = spawngroup
end,{}):InitRepeatOnLanding():InitCleanUp(600):SpawnScheduled(600,0.5)
Shell21 = GROUP:FindByName("Shell21")

CV_1_CAP = nil
CV_2_CAP = nil
T_CAP = nil
end


BAS = ZONE_POLYGON:NewFromGroupName("AS1")
CV1_CAP = ZONE_POLYGON:NewFromGroupName("CV1_CAP")
CV2_CAP = ZONE_POLYGON:NewFromGroupName("CV2_CAP")
T_CAP = ZONE_POLYGON:NewFromGroupName("T_CAP") 
BCarrierTEMP = {"T_Hornet1","T_Hornet2"}
BLandTemp = {"T_F15","T_F16"}

 BASE:E({"New Scripts was false using A2ADispatcher"})
  BAS = ZONE_POLYGON:New("RAS",GROUP:FindByName("RAS"))
  blooksee = SET_GROUP:New():FilterPrefixes({"USEW",}):FilterCoalitions("blue"):FilterActive():FilterStart()
  bdet = DETECTION_AREAS:New(blooksee,45000)
  ba2disp = AI_A2A_DISPATCHER:New(bdet)
  ba2disp:SetBorderZone(BAS)
  ba2disp:SetDefaultFuelThreshold(0.4)
  ba2disp:SetDefaultGrouping(2)
  ba2disp:SetDefaultOverhead(1.0)
  ba2disp:SetSquadron("Stennis","Stennis",BCarrierTEMP,12)
  ba2disp:SetSquadron("TeddyR","TeddyR",BCarrierTEMP,12)
  ba2disp:SetSquadronTakeoffFromParkingCold("TeddyR")
  ba2disp:SetSquadronLandingAtRunway("TeddyR")
  ba2disp:SetSquadron("Al Draf",AIRBASE.PersianGulf.Al_Dhafra_AB,BLandTemp,32)
  ba2disp:SetEngageRadius(UTILS.NMToMeters(60))
  ba2disp:SetDisengageRadius(UTILS.NMToMeters(120))
  ba2disp:SetGciRadius(UTILS.NMToMeters(60))
  ba2disp:SetDefaultTakeoffFromParkingHot()
  ba2disp:SetDefaultLandingAtEngineShutdown()
  ba2disp:SetSquadronCap("Stennis",CV2_CAP,UTILS.FeetToMeters(15000),UTILS.FeetToMeters(40000),UTILS.KnotsToKmph(350),UTILS.KnotsToKmph(550),UTILS.KnotsToKmph(500),UTILS.KnotsToKmph(750),"BARO")
  ba2disp:SetSquadronCapInterval("Stennis",1,(60*15),(60*45),1.0)
  ba2disp:SetSquadronLandingAtRunway("Stennis")
  ba2disp:SetSquadronTakeoffFromRunway("Stennis")
  ba2disp:SetSquadronGci("Stennis",UTILS.KnotsToKmph(550),UTILS.KnotsToKmph(800))
  ba2disp:SetSquadronCap("TeddyR",CV1_CAP,UTILS.FeetToMeters(15000),UTILS.FeetToMeters(40000),UTILS.KnotsToKmph(350),UTILS.KnotsToKmph(550),UTILS.KnotsToKmph(500),UTILS.KnotsToKmph(750),"BARO")
  ba2disp:SetSquadronCapInterval("TeddyR",1,(60*15),(60*45),1.0)
  ba2disp:SetSquadronGci("TeddyR",UTILS.KnotsToKmph(550),UTILS.KnotsToKmph(800))
  ba2disp:SetSquadronCap("Al Draf",T_CAP,UTILS.FeetToMeters(15000),UTILS.FeetToMeters(40000),UTILS.KnotsToKmph(350),UTILS.KnotsToKmph(550),UTILS.KnotsToKmph(500),UTILS.KnotsToKmph(750),"BARO")
  ba2disp:SetSquadronCapInterval("Al Draf",2,(60*15),(60*45),1.0)
  ba2disp:SetSquadronGci("Al Draf",UTILS.KnotsToKmph(550),UTILS.KnotsToKmph(800))
  ba2disp:__Start(30)
  

