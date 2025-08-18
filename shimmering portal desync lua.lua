do
	local orig_GetHandleId = GetHandleId
	function GetHandleId(obj)
		local id = orig_GetHandleId(obj)
			BlzDisplayChatMessage(GetLocalPlayer_CONST or GetLocalPlayer(), 2, tostring(id).. " /-/ ".. math.random())
		return id
	end
end

DDLib__GameElapsedTimer = nil
DDLib__RndGenForce = nil
--DDLib__TempLoc = Location(0., 0.) -- this is done in INIT -- ROOT LOCATION()
DDHT = nil
DDLib__GenSndTable = nil


for i = 1, 100 do
	local key
	if i % 2 == 0 then
		key = "garbage_" .. i .. "_luatable"
		_G[key] = {}
	else
		key = "garbage_" .. i .. "_jarray"
		_G[key] = __jarray(0)
	end
end

function DDLib__onInit()
  DDLib__TempLoc = Location(0., 0.) -- THIS LINE TOGETHER WITH SAME DEFINITION IN GLOBALS AT THE START DESYNCS
  DDHT = InitHashtable()
  DDLib__GenSndTable = InitHashtable()
  DDLib__GameElapsedTimer = CreateTimer()
  DDLib__RndGenForce = CreateForce()
end


function InitGlobals()
end

function CreateNeutralHostile()
-- removed
end


function CreateNeutralPassiveBuildings()
-- removed
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
end

function CreateAllUnits()
  CreateNeutralPassiveBuildings()
  CreatePlayerBuildings()
  CreateNeutralHostile()
  CreatePlayerUnits()
end

function Trig_Melee_Initialization_Actions()
  MeleeStartingVisibility()
  MeleeStartingHeroLimit()
  MeleeGrantHeroItems()
  MeleeStartingResources()
  MeleeClearExcessUnits()
  MeleeStartingUnits()
  MeleeStartingAI()
end

function InitTrig_Melee_Initialization()
  gg_trg_Melee_Initialization = CreateTrigger()
  TriggerAddAction(gg_trg_Melee_Initialization, Trig_Melee_Initialization_Actions)
end

function InitCustomTriggers()
  InitTrig_Melee_Initialization()
end

function RunInitializationTriggers()
  ConditionalTriggerExecute(gg_trg_Melee_Initialization)
end

function InitCustomPlayerSlots()
	for i = 0, 11 do
  SetPlayerStartLocation(Player(i), i)
  SetPlayerColor(Player(i), ConvertPlayerColor(i))
  SetPlayerRacePreference(Player(i), RACE_PREF_HUMAN)
  SetPlayerRaceSelectable(Player(i), true)
  SetPlayerController(Player(i), MAP_CONTROL_USER)
	end
end

function InitCustomTeams()
	for i = 0, 11 do
  SetPlayerTeam(Player(i), 0)
	end
end

function InitAllyPriorities()

  SetStartLocPrioCount(0, 2)
  SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(0, 1, 11, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(1, 2)
  SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(2, 2)
  SetStartLocPrio(2, 0, 1, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(2, 1, 3, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(3, 2)
  SetStartLocPrio(3, 0, 2, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(3, 1, 4, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(4, 2)
  SetStartLocPrio(4, 0, 3, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(4, 1, 5, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(5, 2)
  SetStartLocPrio(5, 0, 4, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(5, 1, 6, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(6, 2)
  SetStartLocPrio(6, 0, 5, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(6, 1, 7, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(7, 2)
  SetStartLocPrio(7, 0, 6, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(7, 1, 8, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(8, 2)
  SetStartLocPrio(8, 0, 7, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(8, 1, 9, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(9, 2)
  SetStartLocPrio(9, 0, 8, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(9, 1, 10, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(10, 2)
  SetStartLocPrio(10, 0, 9, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(10, 1, 11, MAP_LOC_PRIO_HIGH)

  SetStartLocPrioCount(11, 2)
  SetStartLocPrio(11, 0, 0, MAP_LOC_PRIO_HIGH)
  SetStartLocPrio(11, 1, 10, MAP_LOC_PRIO_HIGH)
end

function main()
	SetRandomSeed(0xf0f0) -- Set seed that's kinda reliable in conjunction with human AI


  SetCameraBounds(-11008.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -11264.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 11008.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 10752.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -11008.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 10752.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 11008.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -11264.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
  SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
  NewSoundEnvironment("Default")
  SetAmbientDaySound("SunkenRuinsDay")
  SetAmbientNightSound("SunkenRuinsNight")
  SetMapMusic("Music", true, 0)
  CreateAllUnits()
  InitBlizzard()

	do
		for i = 0, GetBJMaxPlayerSlots()-1 do
			if GetPlayerController(Player(i)) == MAP_CONTROL_USER then
				SetPlayerName(Player(i), "slot ".. i)
			end
		end
		local myTimer = CreateTimer()
		local id = GetHandleId(myTimer)
		TimerStart(myTimer, 1, true, function()
			local loc = Location(123, 456)
			GetHandleId(loc)
			RemoveLocation(loc)
		end)
	end

	GetLocalPlayer_CONST = GetLocalPlayer() -- save GetLocalPlayer to eliminate this as a variable
  DDLib__onInit()

  InitGlobals()
  InitTrig_Melee_Initialization()
  ConditionalTriggerExecute(gg_trg_Melee_Initialization)

end

function config()
  SetMapName("TRIGSTR_014")
  SetMapDescription("TRIGSTR_016")
  SetPlayers(12)
  SetTeams(12)
  SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

  DefineStartLocation(0, 1408.0, 9344.0)
  DefineStartLocation(1, 7168.0, 8704.0)
  DefineStartLocation(2, 9280.0, 2624.0)
  DefineStartLocation(3, 9344.0, -3840.0)
  DefineStartLocation(4, 7424.0, -9088.0)
  DefineStartLocation(5, 1792.0, -9728.0)
  DefineStartLocation(6, -3136.0, -9856.0)
  DefineStartLocation(7, -8768.0, -8576.0)
  DefineStartLocation(8, -9536.0, -3072.0)
  DefineStartLocation(9, -9344.0, 1856.0)
  DefineStartLocation(10, -9408.0, 7616.0)
  DefineStartLocation(11, -4288.0, 9280.0)

  -- Player setup
  InitCustomPlayerSlots()
  SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(1), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(2), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(3), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(4), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(5), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(6), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(7), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(8), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(9), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(10), MAP_CONTROL_USER)
  SetPlayerSlotAvailable(Player(11), MAP_CONTROL_USER)
  InitGenericPlayerSlots()
  InitAllyPriorities()
end

