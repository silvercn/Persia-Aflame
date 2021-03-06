env.info("--------------Persia Aflame AIRBOSS CONTROLLER----------------------")
env.info("--------------By Robert Graham for TGW -------------------")
env.info("--------------LAST CHANGED IN VER: 0.69.00 -------------------")
env.info("--------------USES MOOSE AND CTDL ------------------------")

abossactive = true

if abossactive == true then

  awacsStennis = RECOVERYTANKER:New(UNIT:FindByName("Stennis"), "USEW Magic11")
  awacsStennis:SetAWACS(true,true)
  awacsStennis:SetCallsign(CALLSIGN.AWACS.Magic,1)
  awacsStennis:SetTakeoffAir()
  awacsStennis:SetAltitude(20000)
  awacsStennis:SetRadio(250)
  awacsStennis:SetTACAN(44,"MGK")
  awacsStennis:SetSpeed(330)
  awacsStennis:Start()
  BASE:E("Stennis Tanker")
  
  ShellStennis = RECOVERYTANKER:New(UNIT:FindByName("Stennis"), "Shell11")
  ShellStennis:SetCallsign(CALLSIGN.Tanker.Shell,1)
  ShellStennis:SetRespawnInAir()
  ShellStennis:SetSpeed(310)
  ShellStennis:SetRacetrackDistances(15,10)
  ShellStennis:SetPatternUpdateDistance(25)
  ShellStennis:SetRadio(255)
  ShellStennis:SetModex(911)
  ShellStennis:SetTACAN(9,"SHL")
  ShellStennis:Start()
  
  awacsTeddy = RECOVERYTANKER:New(UNIT:FindByName("TeddyR"), "USEW Wizard11")
  awacsTeddy:SetAWACS(true,true)
  awacsTeddy:SetTakeoffCold()
  awacsTeddy:SetCallsign(CALLSIGN.AWACS.Wizard,1)
  awacsTeddy:SetAltitude(20000)
  awacsTeddy:SetRadio(252)
  awacsTeddy:SetSpeed(350)
  awacsTeddy:SetTACAN(48,"WIZ")
  awacsTeddy:Start()
  
  ShellTeddy = RECOVERYTANKER:New(UNIT:FindByName("TeddyR"), "Shell21")
  ShellTeddy:SetTakeoffAir()
  ShellTeddy:SetCallsign(CALLSIGN.Tanker.Shell,2)
  ShellTeddy:SetSpeed(310)
  ShellTeddy:SetRadio(257)
  ShellTeddy:SetModex(910)
  ShellTeddy:SetTACAN(7,"SHL")
  ShellTeddy:SetLowFuelThreshold(0.2)
  ShellTeddy:Start()
  


AirbossTeddy = AIRBOSS:New("TeddyR","TeddyR")
AirbossTeddy:Load()
AirbossTeddy:SetLSORadio(118.40)
AirbossTeddy:SetMarshalRadio(304)
AirbossTeddy:SetTACAN(53,"X","TED")
AirbossTeddy:SetICLS(7,"RSE")
AirbossTeddy:SetAirbossNiceGuy(true)
AirbossTeddy:SetMenuRecovery(45,25,false,0)
AirbossTeddy:SetHoldingOffsetAngle(0)
AirbossTeddy:SetDespawnOnEngineShutdown(true)
AirbossTeddy:SetMaxSectionSize(4)
AirbossTeddy:SetPatrolAdInfinitum(true)
AirbossTeddy:SetRefuelAI(30)
AirbossTeddy:SetSoundfilesFolder("Airboss Soundfiles/")
AirbossTeddy:SetRecoveryTurnTime(120)
AirbossTeddy:SetDefaultPlayerSkill("TOPGUN Graduate")
AirbossTeddy:SetHandleAIOFF()
AirbossTeddy:SetWelcomePlayers(false)
AirbossTeddy:SetDefaultMessageDuration(1)
AirbossTeddy:SetRecoveryTurnTime(5)
AirbossTeddy:SetEmergencyLandings(true)
AirbossTeddy:SetWelcomePlayers(false)


function AirbossTeddy:OnAfterStart(From,Event,To)
  self:DeleteAllRecoveryWindows()
end
AirbossTeddy:Start()

AirbossStennis = AIRBOSS:New("Stennis","Stennis")
-- Delete auto recovery window.

AirbossStennis:Load()
AirbossStennis:SetMarshalRadio(305)
AirbossStennis:SetLSORadio(119.25)
AirbossStennis:SetTACAN(35,"X","STE")
AirbossStennis:SetICLS(3,"NIS")
AirbossStennis:SetSoundfilesFolder("Airboss Soundfiles/")
AirbossStennis:SetAirbossNiceGuy(true)
AirbossStennis:SetDespawnOnEngineShutdown(true)
AirbossStennis:SetRefuelAI(20)
AirbossStennis:SetMenuRecovery(30,25,false,0)
AirbossStennis:SetHoldingOffsetAngle(0)
AirbossStennis:SetRecoveryTanker(ShellStennis)
AirbossStennis:SetRecoveryTurnTime(300)
AirbossStennis:SetPatrolAdInfinitum(true)
AirbossStennis:SetHandleAIOFF()
function AirbossStennis:OnAfterStart(From,Event,To)
  self:DeleteAllRecoveryWindows()
end

AirbossStennis:Start()

end

