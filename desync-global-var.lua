do
	local orig_GetHandleId = GetHandleId
	function GetHandleId(obj)
		local id = orig_GetHandleId(obj)
			BlzDisplayChatMessage(GetLocalPlayer_CONST or GetLocalPlayer(), 2, tostring(id).. " /-/ ".. math.random())
		return id
	end
end

DDLib__TempLoc = Location(0., 0.) -- this is done in INIT -- ROOT LOCATION()


for i = 1, 100 do -- garbage directly affects WHEN the desync happens
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
end



function InitGlobals()
end

function CreateNeutralPassiveBuildings()
	local p = Player(PLAYER_NEUTRAL_PASSIVE)
	local u
	local unitID
	local t
	local life

	u = BlzCreateUnitWithSkin(p, FourCC("ngol"), -128.0, 1408.0, 270.000, FourCC("ngol"))
	SetResourceAmount(u, 12500)
	u = BlzCreateUnitWithSkin(p, FourCC("ngol"), 384.0, 1408.0, 270.000, FourCC("ngol"))
	SetResourceAmount(u, 12500)
	u = BlzCreateUnitWithSkin(p, FourCC("ngol"), 1088.0, -1280.0, 270.000, FourCC("ngol"))
	SetResourceAmount(u, 12500)
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
end

function CreateAllUnits()
	CreateNeutralPassiveBuildings()
	CreatePlayerBuildings()
	CreatePlayerUnits()
end

function Trig_THIS_ENTIRE_SCRIPT_Actions()
end

function InitTrig_THIS_ENTIRE_SCRIPT()
	gg_trg_THIS_ENTIRE_SCRIPT = CreateTrigger()
	TriggerAddAction(gg_trg_THIS_ENTIRE_SCRIPT, Trig_THIS_ENTIRE_SCRIPT_Actions)
end

function Trig_IS_OVERRIDEN_BY_Actions()
end

function InitTrig_IS_OVERRIDEN_BY()
	gg_trg_IS_OVERRIDEN_BY = CreateTrigger()
	TriggerAddAction(gg_trg_IS_OVERRIDEN_BY, Trig_IS_OVERRIDEN_BY_Actions)
end

function Trig_WAR3MAPLUA_Actions()
end

function InitTrig_WAR3MAPLUA()
	gg_trg_WAR3MAPLUA = CreateTrigger()
	TriggerAddAction(gg_trg_WAR3MAPLUA, Trig_WAR3MAPLUA_Actions)
end

function Trig_Melee_Initialization_Actions()
	MeleeStartingVisibility()
	MeleeStartingHeroLimit()
	MeleeGrantHeroItems()
	MeleeStartingResources()
	MeleeClearExcessUnits()
	MeleeStartingUnits()
	MeleeStartingAI()
	MeleeInitVictoryDefeat()
end

function InitTrig_Melee_Initialization()
	gg_trg_Melee_Initialization = CreateTrigger()
	TriggerAddAction(gg_trg_Melee_Initialization, Trig_Melee_Initialization_Actions)
end

function Trig_nofog_Actions()
	FogEnableOff()
	FogMaskEnableOff()
end

function InitTrig_nofog()
	gg_trg_nofog = CreateTrigger()
	TriggerRegisterTimerEventSingle(gg_trg_nofog, 0.00)
	TriggerAddAction(gg_trg_nofog, Trig_nofog_Actions)
end

function InitCustomTriggers()
	InitTrig_THIS_ENTIRE_SCRIPT()
	InitTrig_IS_OVERRIDEN_BY()
	InitTrig_WAR3MAPLUA()
	InitTrig_Melee_Initialization()
	InitTrig_nofog()
end

function RunInitializationTriggers()
ConditionalTriggerExecute(gg_trg_Melee_Initialization)
end

function InitCustomPlayerSlots()
	SetPlayerStartLocation(Player(0), 0)
	ForcePlayerStartLocation(Player(0), 0)
	SetPlayerColor(Player(0), ConvertPlayerColor(0))
	SetPlayerRacePreference(Player(0), RACE_PREF_RANDOM)
	SetPlayerRaceSelectable(Player(0), true)
	SetPlayerController(Player(0), MAP_CONTROL_USER)
	SetPlayerStartLocation(Player(1), 1)
	ForcePlayerStartLocation(Player(1), 1)
	SetPlayerColor(Player(1), ConvertPlayerColor(1))
	SetPlayerRacePreference(Player(1), RACE_PREF_RANDOM)
	SetPlayerRaceSelectable(Player(1), true)
	SetPlayerController(Player(1), MAP_CONTROL_USER)
	SetPlayerStartLocation(Player(2), 2)
	ForcePlayerStartLocation(Player(2), 2)
	SetPlayerColor(Player(2), ConvertPlayerColor(2))
	SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
	SetPlayerRaceSelectable(Player(2), false)
	SetPlayerController(Player(2), MAP_CONTROL_COMPUTER)
end

function InitCustomTeams()
	SetPlayerTeam(Player(0), 0)
	SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
	SetPlayerTeam(Player(1), 0)
	SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
	SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
	SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
	SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
	SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
	SetPlayerAllianceStateControlBJ(Player(0), Player(1), true)
	SetPlayerAllianceStateControlBJ(Player(1), Player(0), true)
	SetPlayerAllianceStateFullControlBJ(Player(0), Player(1), true)
	SetPlayerAllianceStateFullControlBJ(Player(1), Player(0), true)
	SetPlayerTeam(Player(2), 1)
end

function InitAllyPriorities()
	SetStartLocPrioCount(0, 1)
	SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
	SetStartLocPrioCount(1, 1)
	SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
	SetEnemyStartLocPrioCount(2, 2)
	SetEnemyStartLocPrio(2, 0, 0, MAP_LOC_PRIO_LOW)
end

function main()
	SetRandomSeed(0xf0f0) -- Set seed that's kinda reliable in conjunction with human AI


	SetCameraBounds(-2048.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -2048.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 2048.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 2048.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -2048.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 2048.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 2048.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -2048.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
	SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
	NewSoundEnvironment("Default")
	SetAmbientDaySound("LordaeronSummerDay")
	SetAmbientNightSound("LordaeronSummerNight")
	SetMapMusic("Music", true, 0)
	CreateAllUnits()
	InitBlizzard()
	
	do
		for i = 0, GetBJMaxPlayerSlots()-1 do
			if GetPlayerController(Player(i)) == MAP_CONTROL_USER then
				SetPlayerName(Player(i), "slot ".. i)
			end
		end
	end

	GetLocalPlayer_CONST = GetLocalPlayer() -- save GetLocalPlayer to eliminate this as a variable
	DDLib__onInit()
	
	
	InitGlobals()
	InitCustomTriggers()
	RunInitializationTriggers()
end

function config()
	SetMapName("TRIGSTR_001")
	SetMapDescription("TRIGSTR_003")
	SetPlayers(3)
	SetTeams(3)
	SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
	DefineStartLocation(0, -1024.0, 1280.0)
	DefineStartLocation(1, 1152.0, 1280.0)
	DefineStartLocation(2, 256.0, -832.0)
	InitCustomPlayerSlots()
	InitCustomTeams()
	InitAllyPriorities()
end

