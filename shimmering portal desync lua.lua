do
	local orig_GetHandleId = GetHandleId
	function GetHandleId(obj)
		local id = orig_GetHandleId(obj)
			BlzDisplayChatMessage(GetLocalPlayer_CONST or GetLocalPlayer(), 2, tostring(id).. " /-/ ".. math.random())
		return id
	end
end

--globals from AAATimerUtils:
LIBRARY_AAATimerUtils = true
--How to tweak timer utils:
-- USE_HASH_TABLE = true  (new blue)
--  * SAFEST
--  * SLOWEST (though hash tables are kind of fast)
--
-- USE_HASH_TABLE = false, USE_FLEXIBLE_OFFSET = true  (orange)
--  * kinda safe (except there is a limit in the number of timers)
--  * ALMOST FAST
--
-- USE_HASH_TABLE = false, USE_FLEXIBLE_OFFSET = false (red)
--  * THE FASTEST (though is only  faster than the previous method
--                  after using the optimizer on the map)
--  * THE LEAST SAFE ( you may have to tweak OFSSET manually for it to
--                     work)
--
AAATimerUtils__USE_HASH_TABLE = true
AAATimerUtils__USE_FLEXIBLE_OFFSET = false

AAATimerUtils__OFFSET = 0x100000
AAATimerUtils__VOFFSET = AAATimerUtils__OFFSET

--Timers to preload at map init:
AAATimerUtils__QUANTITY = 256

--Changing this  to something big will allow you to keep recycling
-- timers even when there are already AN INCREDIBLE AMOUNT of timers in
-- the stack. But it will make things far slower so that's probably a bad idea...
AAATimerUtils__ARRAY_SIZE = 8190

-- processed:         integer array AAATimerUtils__data[AAATimerUtils__ARRAY_SIZE]
AAATimerUtils__ht = nil
-- processed:         timer array AAATimerUtils__tT[AAATimerUtils__ARRAY_SIZE]
AAATimerUtils__tN = 0
AAATimerUtils__HELD = 0x28829022
--use a totally random number here, the more improbable someone uses it, the better.

AAATimerUtils__didinit = false
--endglobals from AAATimerUtils
--globals from DDLib:
LIBRARY_DDLib = true
DD_DUMMYCODE = 1685417321
DD_ABILITY_CROWN_FORM = 1097691750
DD_CHILL = 1097033836
DD_CHILL_BUFF = 1114010223
p_null = (0x0)
DD_INTERVAL = 0.017
DDMinX = 0.
DDMinY = 0.
DDMaxX = 0.
DDMaxY = 0.
DDLib__HARVEST_ID = 1097364076
DDLib__TRIGGER_REFRESH_RATE = (60.) * 3.
DDLib__TreeChecker = nil
DDLib__TempTrig = nil
DDLib__NTrig = 0
DDLib__DmgTrig = {}
DDLib__EnumVec = p_null
DDLib__EnumFilter = nil
DDLib__ErrorSound = nil
DDLib__GameElapsedTimer = nil
DDLib__RND_INT_MAX_ARRAY_N = 100
DDLib__RndInt = __jarray(0)
DDLib__RndIntWriteN = 0
DDLib__RndIntReadN = 0
DDLib__TrigMouseEvent = nil
DDLib__RndGenForce = nil
DDLib__RndElapsedTime = 0.
DDLib__TempLoc = Location(0., 0.) -- this is done in INIT -- ROOT LOCATION()
DDLib__TimerStack = {}
DDLib__TimN = 0
DDLib__GroupStack = {}
DDLib__GrpN = 0
DDLib__DummyStack = {}
DDLib__DumN = 0
DDLib__TimTicks = __jarray(0)
DDLib__TimData = __jarray(0)
DDLib__TimTim1 = {}
DDLib__TimTim2 = {}
DDLib__UnitStackData = 0
DDLib__UnitStack = {}
DDLib__US_N = 0
DDHT = nil
DDLib__GroupFilterData = 0
DDLib__GenSndTable = nil
--endglobals from DDLib
--globals from ShimmeringPortal:
LIBRARY_ShimmeringPortal = true
ShimmeringPortal__SPELL_ID = 1093677104
ShimmeringPortal__PORTAL_ID = 1747988528
ShimmeringPortal__PORTAL_LENGTH = 450.
ShimmeringPortal__PORTAL_WIDTH = 110.
ShimmeringPortal__UNIT_PORT_WALK_OFFSET_MIN = 200.
ShimmeringPortal__UNIT_PORT_WALK_OFFSET_MAX = 350.
ShimmeringPortal__FIRST_PORTAL_OFFSET = 300.
ShimmeringPortal__SECOND_PORTAL_MIN_RANGE = 1000.
ShimmeringPortal__DESTROY_PORTAL_DELAY = 0.7
ShimmeringPortal__PORTAL_WARNING_MESSAGE = nil
ShimmeringPortal__PORTAL_WARNING_SOUND_FILE = nil
ShimmeringPortal__PORTAL_WARNING_SOUND_VOLUME = 90.
ShimmeringPortal__warningsound = nil
ShimmeringPortal__PORTAL_WARNING_MESSAGE_DURATION = 5.
ShimmeringPortal__PORTAL_ANIM_BIRTH = nil
ShimmeringPortal__PORTAL_ANIM_DEATH = nil
ShimmeringPortal__PORTAL_ANIM_STAND = nil
ShimmeringPortal__PORTAL_ANIM_BIRTH_DURATION = 1.875
ShimmeringPortal__PORT_CHECK_INTERVAL = 0.1
ShimmeringPortal__UNIT_NEXT_PORT_DELAY = 5.
ShimmeringPortal__SOUND_MAX_DISTANCE = 3500.
ShimmeringPortal__PORTAL_BIRTH_SOUND_FILE = nil
ShimmeringPortal__PORTAL_BIRTH_SOUND_VOLUME = 95.
ShimmeringPortal__PORTAL_DEATH_SOUND_FILE = nil
ShimmeringPortal__PORTAL_DEATH_SOUND_VOLUME = 95.
ShimmeringPortal__PORTAL_ENTRANCE_SOUND_FILE = nil
ShimmeringPortal__PORTAL_ENTRANCE_SOUND_VOLUME = 95.
ShimmeringPortal__PORTAL_AMBIENCE_SOUND_FILE = nil
ShimmeringPortal__PORTAL_AMBIENCE_SOUND_VOLUME = 100.
ShimmeringPortal__PORTAL_USE_MINIMAP_PING = true
ShimmeringPortal__PORTAL_MINIMAP_PING_INTERVAL = 4.5
ShimmeringPortal__PORTAL_MINIMAP_PING_DURATION = 3.
ShimmeringPortal__PORTAL_MINIMAP_PING_RED = 180
ShimmeringPortal__PORTAL_MINIMAP_PING_GREEN = 23
ShimmeringPortal__PORTAL_MINIMAP_PING_BLUE = 240
ShimmeringPortal__DO_CAMERA_PAN = true
ShimmeringPortal__CAMERA_PAN_AREA_SCAN = 700.
ShimmeringPortal__CAMERA_PAN_DELAY = 1.5
ShimmeringPortal__USE_UNIT_AFTER_IMAGING = false
ShimmeringPortal__UNIT_AFTER_IMAGE_DURATION = 0.85
ShimmeringPortal__UNIT_AFTER_IMAGE_TIMESCALE = 0.5
ShimmeringPortal__UNIT_AFTER_IMAGE_RED = 128
ShimmeringPortal__UNIT_AFTER_IMAGE_GREEN = 128
ShimmeringPortal__UNIT_AFTER_IMAGE_BLUE = 128
ShimmeringPortal__UNIT_AFTER_IMAGE_TRANSPARENCY_MIN = 60.
ShimmeringPortal__UNIT_AFTER_IMAGE_TRANSPARENCY_MAX = 70.
ShimmeringPortal__DO_UNIT_SELECTION_JOB = true
ShimmeringPortal__SELECTION_CHECK_INTERVAL = 0.5
ShimmeringPortal__CASTER_FACING_KEY = 3
ShimmeringPortal__UNIT_PORT_KEY = 4
ShimmeringPortal__CASTER_PORTS_KEY = 5
ShimmeringPortal__UNIT_SELECTED_KEY = 6
ShimmeringPortal__UNIT_SELECTION_GROUPING_KEY = 7
--endglobals from ShimmeringPortal
-- Generated
gg_trg_Melee_Initialization = nil
gg_trg_Shimmering_Portal = nil
gg_trg_DD_Library = nil
gg_trg_TimerUtils = nil

l__library_init = nil

--JASSHelper struct globals:
si__AAATimerUtils__InitStruct = 1
si__p_integer_I = 0
si__p_integer_F = 0
s__p_integer = __jarray(0)
s__p_integer_size = 8
si__p_integer_V = __jarray(0)
si__p_real_I = 0
si__p_real_F = 0
s__p_real = __jarray(0.0)
s__p_real_size = 8
si__p_real_V = __jarray(0)
si__p_unit_I = 0
si__p_unit_F = 0
s__p_unit = {}
s__p_unit_size = 8
si__p_unit_V = __jarray(0)
si__DDLib__uratimed = 5
si__DDLib__uratimed_F = 0
si__DDLib__uratimed_I = 0
si__DDLib__uratimed_V = __jarray(0)
s__DDLib__uratimed_u = {}
s__DDLib__uratimed_abil = __jarray(0)
si__DDLib__chill = 6
si__DDLib__chill_F = 0
si__DDLib__chill_I = 0
si__DDLib__chill_V = __jarray(0)
s__DDLib__chill_u = {}
s__DDLib__chill_dmy = {}
s__DDLib__chill_dur = __jarray(0.0)
s__DDLib__chill_Data = __jarray(0)
si__fade = 7
si__fade_F = 0
si__fade_I = 0
si__fade_V = __jarray(0)
s__fade_u = {}
s__fade_trans = __jarray(0.0)
s__fade_rate = __jarray(0.0)
s__fade_e_trans = __jarray(0.0)
s__fade_dur = __jarray(0.0)
s__fade_INTERVAL = 0.1
si__ddeffect = 8
si__ddeffect_F = 0
si__ddeffect_I = 0
si__ddeffect_V = __jarray(0)
s__ddeffect_e = {}
s__ddeffect_fac = __jarray(0.0)
s__ddeffect_effZ = __jarray(0.0)
s__ddeffect_decay = __jarray(0.0)
s__ddeffect_stepTrans = __jarray(0.0)
s__ddeffect_cTrans = __jarray(0.0)
s__ddeffect_eTrans = __jarray(0.0)
s__ddeffect_EFFECT_DECAY = 5.
si__DDLib__timedeffect_I = 0
si__DDLib__timedeffect_F = 0
s__DDLib__timedeffect = {}
s__DDLib__timedeffect_size = 1
si__DDLib__timedeffect_V = __jarray(0)
si__DDLib__cameranoisedata = 10
si__DDLib__cameranoisedata_F = 0
si__DDLib__cameranoisedata_I = 0
si__DDLib__cameranoisedata_V = __jarray(0)
s___DDLib__cameranoisedata_p = {}
s___DDLib__cameranoisedata_p_size = 12
s__DDLib__cameranoisedata_p = __jarray(0)
s__DDLib__cameranoisedata_n = __jarray(0)
si__ShimmeringPortal__unitimage = 12
si__ShimmeringPortal__unitimage_F = 0
si__ShimmeringPortal__unitimage_I = 0
si__ShimmeringPortal__unitimage_V = __jarray(0)
s__ShimmeringPortal__unitimage_u = {}
s__ShimmeringPortal__unitimage_trans = __jarray(0.0)
s__ShimmeringPortal__unitimage_t_spd = __jarray(0.0)
s__ShimmeringPortal__unitimage_IMAGE_OWNER = Player(15)
si__ShimmeringPortal__portal = 13
si__ShimmeringPortal__portal_F = 0
si__ShimmeringPortal__portal_I = 0
si__ShimmeringPortal__portal_V = __jarray(0)
s__ShimmeringPortal__portal_p = {}
s__ShimmeringPortal__portal_x = __jarray(0.0)
s__ShimmeringPortal__portal_y = __jarray(0.0)
s__ShimmeringPortal__portal_degrees = __jarray(0.0)
s__ShimmeringPortal__portal_tx = __jarray(0.0)
s__ShimmeringPortal__portal_ty = __jarray(0.0)
s__ShimmeringPortal__portal_tdegrees = __jarray(0.0)
s__ShimmeringPortal__portal_lvl = __jarray(0)
s__ShimmeringPortal__portal_cpass = __jarray(0)
s__ShimmeringPortal__portal_t = {}
s__ShimmeringPortal__portal_pr = {}
s__ShimmeringPortal__portal_lnk = __jarray(0)
s__ShimmeringPortal__portal_amb = {}
s__ShimmeringPortal__portal_trans_units = __jarray(0)
s__ShimmeringPortal__portal_cpass_timeout = __jarray(0.0)
s__ShimmeringPortal__portal_DIAGONAL = SquareRoot((ShimmeringPortal__PORTAL_LENGTH * ShimmeringPortal__PORTAL_LENGTH) + (ShimmeringPortal__PORTAL_WIDTH * ShimmeringPortal__PORTAL_WIDTH))
s__ShimmeringPortal__portal_ALPHA = Atan(ShimmeringPortal__PORTAL_WIDTH / ShimmeringPortal__PORTAL_LENGTH)
s__ShimmeringPortal__portal_TempBool = false
s__ShimmeringPortal__portal_SctG = nil
s__ShimmeringPortal__portal_SctT = nil
s__AAATimerUtils__data = __jarray(0)
s__AAATimerUtils__tT = {}
st___prototype6 = {}



--Generated allocator of ShimmeringPortal__portal
function s__ShimmeringPortal__portal__allocate()
  local this = si__ShimmeringPortal__portal_F
  if (this ~= 0) then
    si__ShimmeringPortal__portal_F = si__ShimmeringPortal__portal_V[this]
  else
    si__ShimmeringPortal__portal_I = si__ShimmeringPortal__portal_I + 1
    this = si__ShimmeringPortal__portal_I
  end
  if (this > 8190) then
    return 0
  end

  si__ShimmeringPortal__portal_V[this] = -1
  return this
end

--Generated destructor of ShimmeringPortal__portal
function s__ShimmeringPortal__portal_deallocate(this)
  if this == nil then
    return
  elseif (si__ShimmeringPortal__portal_V[this] ~= -1) then
    return
  end
  si__ShimmeringPortal__portal_V[this] = si__ShimmeringPortal__portal_F
  si__ShimmeringPortal__portal_F = this
end

--Generated allocator of ShimmeringPortal__unitimage
function s__ShimmeringPortal__unitimage__allocate()
  local this = si__ShimmeringPortal__unitimage_F
  if (this ~= 0) then
    si__ShimmeringPortal__unitimage_F = si__ShimmeringPortal__unitimage_V[this]
  else
    si__ShimmeringPortal__unitimage_I = si__ShimmeringPortal__unitimage_I + 1
    this = si__ShimmeringPortal__unitimage_I
  end
  if (this > 8190) then
    return 0
  end

  si__ShimmeringPortal__unitimage_V[this] = -1
  return this
end

--Generated destructor of ShimmeringPortal__unitimage
function s__ShimmeringPortal__unitimage_deallocate(this)
  if this == nil then
    return
  elseif (si__ShimmeringPortal__unitimage_V[this] ~= -1) then
    return
  end
  si__ShimmeringPortal__unitimage_V[this] = si__ShimmeringPortal__unitimage_F
  si__ShimmeringPortal__unitimage_F = this
end

--Generated allocator of DDLib__cameranoisedata
function s__DDLib__cameranoisedata__allocate()
  local this = si__DDLib__cameranoisedata_F
  if (this ~= 0) then
    si__DDLib__cameranoisedata_F = si__DDLib__cameranoisedata_V[this]
  else
    si__DDLib__cameranoisedata_I = si__DDLib__cameranoisedata_I + 1
    this = si__DDLib__cameranoisedata_I
  end
  if (this > 681) then
    return 0
  end
  s__DDLib__cameranoisedata_p[this] = (this - 1) * 12
  s__DDLib__cameranoisedata_n[this] = 0
  si__DDLib__cameranoisedata_V[this] = -1
  return this
end

--Generated destructor of DDLib__cameranoisedata
function s__DDLib__cameranoisedata_deallocate(this)
  if this == nil then
    return
  elseif (si__DDLib__cameranoisedata_V[this] ~= -1) then
    return
  end
  si__DDLib__cameranoisedata_V[this] = si__DDLib__cameranoisedata_F
  si__DDLib__cameranoisedata_F = this
end

--Generated allocator of DDLib__timedeffect
function s__DDLib__timedeffect__allocate()
  local this = si__DDLib__timedeffect_F
  if (this ~= 0) then
    si__DDLib__timedeffect_F = si__DDLib__timedeffect_V[this]
  else
    si__DDLib__timedeffect_I = si__DDLib__timedeffect_I + 1
    this = si__DDLib__timedeffect_I
  end
  if (this > 8190) then
    return 0
  end

  si__DDLib__timedeffect_V[this] = -1
  return this
end

--Generated destructor of DDLib__timedeffect
function s__DDLib__timedeffect_deallocate(this)
  if this == nil then
    return
  elseif (si__DDLib__timedeffect_V[this] ~= -1) then
    return
  end
  si__DDLib__timedeffect_V[this] = si__DDLib__timedeffect_F
  si__DDLib__timedeffect_F = this
end

--Generated allocator of ddeffect
function s__ddeffect__allocate()
  local this = si__ddeffect_F
  if (this ~= 0) then
    si__ddeffect_F = si__ddeffect_V[this]
  else
    si__ddeffect_I = si__ddeffect_I + 1
    this = si__ddeffect_I
  end
  if (this > 8190) then
    return 0
  end

  si__ddeffect_V[this] = -1
  return this
end

--Generated destructor of ddeffect
function s__ddeffect_deallocate(this)
  if this == nil then
    return
  elseif (si__ddeffect_V[this] ~= -1) then
    return
  end
  si__ddeffect_V[this] = si__ddeffect_F
  si__ddeffect_F = this
end

--Generated allocator of fade
function s__fade__allocate()
  local this = si__fade_F
  if (this ~= 0) then
    si__fade_F = si__fade_V[this]
  else
    si__fade_I = si__fade_I + 1
    this = si__fade_I
  end
  if (this > 8190) then
    return 0
  end

  si__fade_V[this] = -1
  return this
end

--Generated destructor of fade
function s__fade_deallocate(this)
  if this == nil then
    return
  elseif (si__fade_V[this] ~= -1) then
    return
  end
  si__fade_V[this] = si__fade_F
  si__fade_F = this
end

--Generated allocator of DDLib__chill
function s__DDLib__chill__allocate()
  local this = si__DDLib__chill_F
  if (this ~= 0) then
    si__DDLib__chill_F = si__DDLib__chill_V[this]
  else
    si__DDLib__chill_I = si__DDLib__chill_I + 1
    this = si__DDLib__chill_I
  end
  if (this > 8190) then
    return 0
  end

  si__DDLib__chill_V[this] = -1
  return this
end

--Generated destructor of DDLib__chill
function s__DDLib__chill_deallocate(this)
  if this == nil then
    return
  elseif (si__DDLib__chill_V[this] ~= -1) then
    return
  end
  si__DDLib__chill_V[this] = si__DDLib__chill_F
  si__DDLib__chill_F = this
end

--Generated allocator of DDLib__uratimed
function s__DDLib__uratimed__allocate()
  local this = si__DDLib__uratimed_F
  if (this ~= 0) then
    si__DDLib__uratimed_F = si__DDLib__uratimed_V[this]
  else
    si__DDLib__uratimed_I = si__DDLib__uratimed_I + 1
    this = si__DDLib__uratimed_I
  end
  if (this > 8190) then
    return 0
  end

  si__DDLib__uratimed_V[this] = -1
  return this
end

--Generated destructor of DDLib__uratimed
function s__DDLib__uratimed_deallocate(this)
  if this == nil then
    return
  elseif (si__DDLib__uratimed_V[this] ~= -1) then
    return
  end
  si__DDLib__uratimed_V[this] = si__DDLib__uratimed_F
  si__DDLib__uratimed_F = this
end

--Generated allocator of p_unit
function s__p_unit__allocate()
  local this = si__p_unit_F
  if (this ~= 0) then
    si__p_unit_F = si__p_unit_V[this]
  else
    si__p_unit_I = si__p_unit_I + 8
    this = si__p_unit_I
  end
  if (this > 8183) then
    return 0
  end

  si__p_unit_V[this] = -1
  return this
end

--Generated destructor of p_unit
function s__p_unit_deallocate(this)
  if this == nil then
    return
  elseif (si__p_unit_V[this] ~= -1) then
    return
  end
  si__p_unit_V[this] = si__p_unit_F
  si__p_unit_F = this
end

--Generated allocator of p_real
function s__p_real__allocate()
  local this = si__p_real_F
  if (this ~= 0) then
    si__p_real_F = si__p_real_V[this]
  else
    si__p_real_I = si__p_real_I + 8
    this = si__p_real_I
  end
  if (this > 8183) then
    return 0
  end

  si__p_real_V[this] = -1
  return this
end

--Generated destructor of p_real
function s__p_real_deallocate(this)
  if this == nil then
    return
  elseif (si__p_real_V[this] ~= -1) then
    return
  end
  si__p_real_V[this] = si__p_real_F
  si__p_real_F = this
end

--Generated allocator of p_integer
function s__p_integer__allocate()
  local this = si__p_integer_F
  if (this ~= 0) then
    si__p_integer_F = si__p_integer_V[this]
  else
    si__p_integer_I = si__p_integer_I + 8
    this = si__p_integer_I
  end
  if (this > 8183) then
    return 0
  end

  si__p_integer_V[this] = -1
  return this
end

--Generated destructor of p_integer
function s__p_integer_deallocate(this)
  if this == nil then
    return
  elseif (si__p_integer_V[this] ~= -1) then
    return
  end
  si__p_integer_V[this] = si__p_integer_F
  si__p_integer_F = this
end
function sc___prototype6_execute(i)

  TriggerExecute(st___prototype6[i])
end
function sc___prototype6_evaluate(i)

  TriggerEvaluate(st___prototype6[i])

end

--library AAATimerUtils:
--*********************************************************************
--* TimerUtils (red+blue+orange flavors for 1.24b+) 2.0
--* ----------
--*
--*  To implement it , create a custom text trigger called TimerUtils
--* and paste the contents of this script there.
--*
--*  To copy from a map to another, copy the trigger holding this
--* library to your map.
--*
--* (requires vJass)   More scripts: htt://www.wc3c.net
--*
--* For your timer needs:
--*  * Attaching
--*  * Recycling (with double-free protection)
--*
--* set t=NewTimer()      : Get a timer (alternative to CreateTimer)
--* set t=NewTimerEx(x)   : Get a timer (alternative to CreateTimer), call
--*                            Initialize timer data as x, instead of 0.
--*
--* ReleaseTimer(t)       : Relese a timer (alt to DestroyTimer)
--* SetTimerData(t,2)     : Attach value 2 to timer
--* GetTimerData(t)       : Get the timer's value.
--*                         You can assume a timer's value is 0
--*                         after NewTimer.
--*
--* Multi-flavor:
--*    Set USE_HASH_TABLE to true if you don't want to complicate your life.
--*
--* If you like speed and giberish try learning about the other flavors.
--*
--********************************************************************

--================================================================

--==================================================================================================


--Implemented from module AAATimerUtils__Init:
function s__AAATimerUtils__InitStruct_AAATimerUtils__Init___onInit()
  AAATimerUtils__ht = InitHashtable()
end

--It is dependent on jasshelper's recent inlining optimization in order to perform correctly.
function SetTimerData(t, value)

  -- new blue
  SaveInteger(AAATimerUtils__ht, 0, GetHandleId(t), value)


















end

function GetTimerData(t)

  -- new blue
  return LoadInteger(AAATimerUtils__ht, 0, GetHandleId(t))


















end

--==========================================================================================

--==========================================================================================
-- I needed to decide between duplicating code ignoring the "Once and only once" rule
-- and using the ugly textmacros. I guess textmacros won.
--

function NewTimerEx(value)
  if (AAATimerUtils__tN == 0) then
    if (not AAATimerUtils__didinit) then
      --This extra if shouldn't represent a major performance drawback
      --because QUANTITY rule is not supposed to be broken every day. 
      TriggerEvaluate(st___prototype6[(1)])
      AAATimerUtils__tN = AAATimerUtils__tN - 1
    else
      --If this happens then the QUANTITY rule has already been broken, try to fix the
      -- issue, else fail.
      s__AAATimerUtils__tT[0] = CreateTimer()















    end
  else
    AAATimerUtils__tN = AAATimerUtils__tN - 1
  end
  SaveInteger(AAATimerUtils__ht, 0, GetHandleId((s__AAATimerUtils__tT[AAATimerUtils__tN])), (value))
  return s__AAATimerUtils__tT[AAATimerUtils__tN]
end

function NewTimer()
  return NewTimerEx(0)
end


--==========================================================================================
function ReleaseTimer(t)
  if (t == nil) then
    return
  end
  if (AAATimerUtils__tN == AAATimerUtils__ARRAY_SIZE) then
    --stack is full, the map already has much more troubles than the chance of bug
    DestroyTimer(t)
  else
    PauseTimer(t)
    if ((LoadInteger(AAATimerUtils__ht, 0, GetHandleId((t)))) == AAATimerUtils__HELD) then
      return
    end
    SaveInteger(AAATimerUtils__ht, 0, GetHandleId((t)), (AAATimerUtils__HELD))
    s__AAATimerUtils__tT[AAATimerUtils__tN] = t
    AAATimerUtils__tN = AAATimerUtils__tN + 1
  end
end

function AAATimerUtils__init()
  local i = 0
  local o = -1
  local oops = false
  if (AAATimerUtils__didinit) then
    return
  else
    AAATimerUtils__didinit = true
  end


  AAATimerUtils__ht = InitHashtable()
  while true do
    if (i == AAATimerUtils__QUANTITY) then
      break
    end
    s__AAATimerUtils__tT[i] = CreateTimer()
    SaveInteger(AAATimerUtils__ht, 0, GetHandleId((s__AAATimerUtils__tT[i])), (AAATimerUtils__HELD))
    i = i + 1
  end
  AAATimerUtils__tN = AAATimerUtils__QUANTITY










































end


--library AAATimerUtils ends
--library DDLib:

--public:  // ----------------------------------------------------------------------- // ----------------------------------------------------------------------- // *** Lib constants ***
--private:
--public:  // ----------------------------------------------------------------------- // ----------------------------------------------------------------------- // ----------------------------------------------------------------------- // * types
--processed :        type p_integer extends integer array [8]  // *** pointer to list of data ***
--processed :        type p_real extends real array [8]
--processed :        type p_unit extends unit array [8]
function H2ID(h)
  return GetHandleId(h) - 0x100000
end
function New_pInteger(i)
  local p = s__p_integer__allocate()
  s__p_integer[p] = i
  return p
end
function New_pReal(r)
  local p = s__p_real__allocate()
  s__p_real[p] = r
  return p
end
function New_pUnit(u)
  local p = s__p_unit__allocate()
  s__p_unit[p] = u
  return p
end
function pVector(x, y, z)
  local v = s__p_real__allocate()
  s__p_real[v] = x
  s__p_real[v + 1] = y
  s__p_real[v + 2] = z
  return v
end
function DDMsg(str)
  DisplayTimedTextFromPlayer(GetLocalPlayer_CONST, 0., 0., 30., str)
end
function DisplayErrorMsgPlayer(p, dur, msg)
	msg = "|cffffcc00" .. msg .. "|r"
  if (GetLocalPlayer_CONST == p) then
    StartSound(DDLib__ErrorSound)
    DisplayTimedTextFromPlayer(p, 0., 0., dur, msg)
  end
end
--private:  // ----------------------------------------------------------------------- // ->           ***** private globals ***** // -----------------------------------------------------------------------
--public:  // -----------------------------------------------------------------------
function Pw_2(x)
  return x * x
end
function DDHypot(x, y)
  return (x * x) + (y * y)
end
function DDTerrZ(x, y)
  MoveLocation(DDLib__TempLoc, x, y)
  return GetLocationZ(DDLib__TempLoc)
end
function DDWidgetTerrZ(w)
  MoveLocation(DDLib__TempLoc, GetWidgetX(w), GetWidgetY(w))
  return GetLocationZ(DDLib__TempLoc)
end
function DDEffectTerrZ(e)
  MoveLocation(DDLib__TempLoc, BlzGetLocalSpecialEffectX(e), BlzGetLocalSpecialEffectY(e))
  return GetLocationZ(DDLib__TempLoc)
end
function DDGetUnitZ(u)
  return BlzGetUnitZ(u) + GetUnitFlyHeight(u)
end
function DDSet(h, id, val)
  SaveInteger(DDHT, id + 1, GetHandleId(h), val)
end
function DDGet(h, id)
  return LoadInteger(DDHT, id + 1, GetHandleId(h))
end
function DDHas(h, id)
  return HaveSavedInteger(DDHT, id + 1, GetHandleId(h))
end
function DDFlush(id)
  FlushChildHashtable(DDHT, id + 1)
end
function DDIsTimRecycled(t)
  local i = nil
  i = DDLib__TimN - 1
  while true do
    if i < 0 then
      break
    end
    if (DDLib__TimerStack[i] == t) then
      return true
    end
    i = i - 1
  end
  return false
end
function DDLoadTim()

  return (NewTimerEx(0))







end
function DDRecycleTim(t)

  ReleaseTimer(t)










end
function DDTimData()
  return DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)]
end
function DDCTimTick(t)
  return DDLib__TimTicks[(GetHandleId((t)) - 0x100000)]
end
function DDTimTick()
  local id = (GetHandleId((GetExpiredTimer())) - 0x100000)
  DDLib__TimTicks[id] = DDLib__TimTicks[id] + 1
  return DDLib__TimTicks[id]
end
function DDStartTim(secs, looping, pdata, func)
  local t = (NewTimerEx(0))
  DDLib__TimData[(GetHandleId((t)) - 0x100000)] = pdata
  TimerStart(t, secs, looping, func)
  return t
end
function DDLib__anon__0()
  local t = GetExpiredTimer()
  local id = (GetHandleId((t)) - 0x100000)
  PauseTimer(t)

  ReleaseTimer(t)




  t = DDLib__TimTim2[id]
  if (DDIsTimRecycled(t)) then
    t = DDLib__TimTim1[id]
  end
  DDLib__TimTicks[(GetHandleId((t)) - 0x100000)] = 0
  PauseTimer(t)

  ReleaseTimer(t)




end
function DDStartTimInst(secs, looping, pdata, func)
  local t1 = (NewTimerEx(0))
  local t2 = (NewTimerEx(0))
  local t3 = (NewTimerEx(0))
  DDLib__TimData[(GetHandleId((t2)) - 0x100000)] = pdata
  TimerStart(t2, 0., false, func)
  DDLib__TimTim1[(GetHandleId((t3)) - 0x100000)] = t1
  DDLib__TimTim2[(GetHandleId((t3)) - 0x100000)] = t2
  TimerStart(t3, 0.005, false, DDLib__anon__0)
  DDLib__TimData[(GetHandleId((t1)) - 0x100000)] = pdata
  TimerStart(t1, secs, looping, func)
  return t1
end
function DDQuitTim()
  local t = GetExpiredTimer()
  DDLib__TimTicks[(GetHandleId((t)) - 0x100000)] = 0
  PauseTimer(t)

  ReleaseTimer(t)




end
function DDQuitTimEx(t)
  DDLib__TimTicks[(GetHandleId((t)) - 0x100000)] = 0
  PauseTimer(t)

  ReleaseTimer(t)




end
function DDLoadGroup()



  if (DDLib__GrpN > 0) then
    DDLib__GrpN = DDLib__GrpN - 1
    return DDLib__GroupStack[DDLib__GrpN]
  end
  return CreateGroup()

end
function DDRecycleGroup(g)



  GroupClear(g)
  DDLib__GroupStack[DDLib__GrpN] = g
  DDLib__GrpN = DDLib__GrpN + 1

end
function DDGroupFilterArea(x, y, radius, data, func)
  local g = DDLoadGroup()
  DDLib__GroupFilterData = data
  GroupEnumUnitsInRange(g, x, y, radius, Filter(func))
  DDRecycleGroup(g)
end
function DDGroupFilterRect(r, data, func)
  local g = DDLoadGroup()
  DDLib__GroupFilterData = data
  GroupEnumUnitsInRect(g, r, Filter(func))
  DDRecycleGroup(g)
end
function DDGFilterData()
  return DDLib__GroupFilterData
end
function DDGFilterDataSet(data)
  DDLib__GroupFilterData = data
end
function DDLib__anon__1()
  DDLib__UnitStack[DDLib__US_N] = GetFilterUnit()
  DDLib__US_N = DDLib__US_N + 1
  return false
end
function DDGroupFillMemArea(x, y, radius, data, filter)
  local g = DDLoadGroup()
  local exp = And(Filter(filter), Filter(DDLib__anon__1))
  DDLib__US_N = 0
  DDLib__UnitStack[0] = nil
  DDLib__UnitStackData = data
  GroupEnumUnitsInRange(g, x, y, radius, exp)
  DDRecycleGroup(g)
  DestroyBoolExpr(exp)
  exp = nil
end
function DDLib__anon__2()
  DDLib__UnitStack[DDLib__US_N] = GetFilterUnit()
  DDLib__US_N = DDLib__US_N + 1
  return false
end
function DDGroupFillMemRect(r, data, filter)
  local g = DDLoadGroup()
  local exp = And(Filter(filter), Filter(DDLib__anon__2))
  DDLib__US_N = 0
  DDLib__UnitStack[0] = nil
  DDLib__UnitStackData = data
  GroupEnumUnitsInRect(g, r, exp)
  DDRecycleGroup(g)
  DestroyBoolExpr(exp)
  exp = nil
end
function DDMemUnitN()
  return DDLib__US_N
end
function DDMemUnitData()
  return DDLib__UnitStackData
end
function DDMemUnit(index)
  if (DDLib__US_N == 0) then
    return nil
  end
  return DDLib__UnitStack[index]
end
function DDLoadDummy()
  if (DDLib__DumN > 0) then
    DDLib__DumN = DDLib__DumN - 1
    PauseUnit(DDLib__DummyStack[DDLib__DumN], false)
    return DDLib__DummyStack[DDLib__DumN]
  end
  return CreateUnit(Player(0xF), DD_DUMMYCODE, DDMaxX, DDMaxY, 0.)
end
function DDLoadSpellDummy(owner, x, y, abil, abilLevel)
  local dummy = DDLoadDummy()
  SetUnitOwner(dummy, owner, false)
  SetUnitX(dummy, x)
  SetUnitY(dummy, y)
  if (abil ~= p_null) then
    UnitAddAbility(dummy, abil)
    SetUnitAbilityLevel(dummy, abil, abilLevel)
  end
  return dummy
end
function DDRecycleDummy(u)
  PauseUnit(u, true)
  DDLib__DummyStack[DDLib__DumN] = u
  DDLib__DumN = DDLib__DumN + 1
end
function DDLib__anon__3()
  DDRecycleDummy(s__p_unit[((DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)]))])
  s__p_unit_deallocate(((DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])))
  DDQuitTim()
end
function DDRecycleDummyTimed(u, secs)
  DDStartTim(secs, false, New_pUnit(u), DDLib__anon__3)
end
function DDLib__anon__4()
  local pi = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  UnitShareVision(s__p_unit[(s__p_integer[pi])], Player(s__p_integer[pi + 1]), false)
  s__p_unit[(s__p_integer[pi])] = nil
  s__p_unit_deallocate((s__p_integer[pi]))
  s__p_integer_deallocate(pi)
  DDQuitTim()
end
function DDUnitShareVisionTimed(u, toP, secs)
  local pi = s__p_integer__allocate()
  s__p_integer[pi] = New_pUnit(u)
  s__p_integer[pi + 1] = GetPlayerId(toP)
  UnitShareVision(u, toP, true)
  DDStartTim(secs, false, pi, DDLib__anon__4)
end
--private:
function s__DDLib__uratimed_anon__5()
  local this = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  UnitRemoveAbility(s__DDLib__uratimed_u[this], s__DDLib__uratimed_abil[this])
  DDQuitTim()
  s__DDLib__uratimed_deallocate(this)
end
function s__DDLib__uratimed_create(whichUnit, id, time)
  local this = s__DDLib__uratimed__allocate()
  s__DDLib__uratimed_u[this] = whichUnit
  s__DDLib__uratimed_abil[this] = id
  DDStartTim(time, false, this, s__DDLib__uratimed_anon__5)
  return 0
end
function DDRemoveAbilityTimed(u, abil, secs)
  s__DDLib__uratimed_create(u, abil, secs)
end
function DDSpellDamage(u, v, dmg)
  local life = GetWidgetLife(v)
  local dmgfactor = 1.
  if (IsUnitType(v, UNIT_TYPE_HERO)) then
    if (UnitHasItemOfTypeBJ(v, 1651663203)) then
      dmgfactor = 0.5
    else
      dmgfactor = 0.75
    end
  end
  if (life > dmg * dmgfactor) then
    SetWidgetLife(v, life - (dmg * dmgfactor))
  else
    UnitDamageTarget(u, v, 99999., false, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
  end
end
function DDLib__anon__6()
  local c = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  s__DDLib__chill_dur[c] = s__DDLib__chill_dur[c] - 0.1
  if (s__DDLib__chill_dur[c] <= 0. or GetUnitAbilityLevel(s__DDLib__chill_u[c], DD_CHILL_BUFF) == 0) then
    UnitRemoveAbility(s__DDLib__chill_u[c], DD_CHILL_BUFF)
    UnitRemoveAbility(s__DDLib__chill_dmy[c], DD_CHILL)
    DDRecycleDummy(s__DDLib__chill_dmy[c])
    s__DDLib__chill_Data[(GetHandleId((s__DDLib__chill_u[c])) - 0x100000)] = p_null
    s__DDLib__chill_u[c] = nil
    s__DDLib__chill_deallocate(c)
    DDQuitTim()
  end
end
function DDUnitChill(p, u, dur)
  local c = s__DDLib__chill_Data[(GetHandleId((u)) - 0x100000)]
  local d = nil
  local rad = nil
  if (c == p_null) then
    c = s__DDLib__chill__allocate()
    s__DDLib__chill_u[c] = u
    s__DDLib__chill_dur[c] = dur
    s__DDLib__chill_Data[(GetHandleId((u)) - 0x100000)] = c
    d = DDLoadDummy()
    s__DDLib__chill_dmy[c] = d
    rad = GetUnitFacing(d) * bj_DEGTORAD
    SetUnitOwner(d, p, false)
    UnitAddAbility(d, DD_CHILL)
    SetUnitX(d, GetUnitX(u) - 20. * Cos(rad))
    SetUnitY(d, GetUnitY(u) - 20. * Sin(rad))
    if (IssueTargetOrder(d, "frostnova", u)) then
      DDStartTim(0.1, true, c, DDLib__anon__6)
      return true
    end
    return false
  end
  s__DDLib__chill_dur[c] = dur
  return true
end
function s__fade_create(u, dur, s_trans, e_trans)
  local this = s__fade__allocate()
  s__fade_u[this] = u
  s__fade_trans[this] = s_trans
  s__fade_rate[this] = ((e_trans - s_trans) / dur) * s__fade_INTERVAL
  s__fade_e_trans[this] = e_trans
  s__fade_dur[this] = dur
  return this
end
function DDLib__anon__7()
  local f = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  s__fade_trans[f] = s__fade_trans[f] + s__fade_rate[f]
  s__fade_dur[f] = s__fade_dur[f] - s__fade_INTERVAL
  SetUnitVertexColor(s__fade_u[f], 255, 255, 255, R2I(s__fade_trans[f] * 2.55))
  if (s__fade_dur[f] < 0.) then
    SetUnitVertexColor(s__fade_u[f], 255, 255, 255, R2I(s__fade_e_trans[f] * 2.55))
    s__fade_u[f] = nil
    s__fade_deallocate(f)
    DDQuitTim()
  end
end
function DDFadeUnit(u, from_alpha, to_alpha, duration)
  local f = s__fade_create(u, duration, from_alpha / 2.55, to_alpha / 2.55)
  SetUnitVertexColor(u, 255, 255, 255, from_alpha)
  DDStartTim(s__fade_INTERVAL, true, f, DDLib__anon__7)
end
function DDIsUnitInvulnerable(u)
  local d = DDLoadDummy()
  local hp = GetWidgetLife(u)
  local flag = nil
  UnitDamageTarget(d, u, 1., true, false, nil, nil, nil)
  flag = GetWidgetLife(u) == hp
  SetWidgetLife(u, hp)
  DDRecycleDummy(d)
  return flag
end
function DDIsUnitWard(whichUnit)
  return GetUnitDefaultMoveSpeed(whichUnit) == 0.
end
--private:
function s__ddeffect_create(mdl, x, y, facRad, size)
  local this = s__ddeffect__allocate()
  s__ddeffect_e[this] = AddSpecialEffect(mdl, x, y)
  s__ddeffect_fac[this] = facRad
  s__ddeffect_effZ[this] = 0.
  BlzSetSpecialEffectRoll(s__ddeffect_e[this], facRad)
  BlzSetSpecialEffectScale(s__ddeffect_e[this], size)
  return this
end
function s__ddeffect_createZ(mdl, x, y, z, facRad, size)
  local this = s__ddeffect__allocate()
  s__ddeffect_e[this] = AddSpecialEffect(mdl, x, y)
  s__ddeffect_fac[this] = facRad
  s__ddeffect_effZ[this] = z - DDTerrZ(x, y)
  BlzSetSpecialEffectRoll(s__ddeffect_e[this], facRad)
  BlzSetSpecialEffectScale(s__ddeffect_e[this], size)
  BlzSetSpecialEffectZ(s__ddeffect_e[this], z)
  return this
end
function s__ddeffect_destroy(this)
  DestroyEffect(s__ddeffect_e[this])
  s__ddeffect_e[this] = nil
  s__ddeffect_deallocate(this)
end
function s__ddeffect_anon__8()
  local se = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  BlzSetSpecialEffectPosition(s__ddeffect_e[se], DDMaxX, DDMaxY, 0.)
  DestroyEffect(s__ddeffect_e[se])
  s__ddeffect_e[se] = nil
  s__ddeffect_deallocate(se)
  DDQuitTim()
end
function s__ddeffect_destroyx(this, decayTime)
  DDStartTim(decayTime, false, this, s__ddeffect_anon__8)
end
function s__ddeffect__set_Z(this, z)
  BlzSetSpecialEffectZ(s__ddeffect_e[this], z)
end
function s__ddeffect__get_X(this)
  return BlzGetLocalSpecialEffectX(s__ddeffect_e[this])
end
function s__ddeffect__get_Y(this)
  return BlzGetLocalSpecialEffectY(s__ddeffect_e[this])
end
function s__ddeffect__get_Z(this)
  return BlzGetLocalSpecialEffectZ(s__ddeffect_e[this])
end
function s__ddeffect__get_WZ(this)
  return DDEffectTerrZ(s__ddeffect_e[this])
end
function s__ddeffect__get_Height(this)
  return (BlzGetLocalSpecialEffectZ(s__ddeffect_e[(this)])) - (DDEffectTerrZ(s__ddeffect_e[(this)]))
end
function s__ddeffect__set_Facing(this, facRad)
  BlzSetSpecialEffectRoll(s__ddeffect_e[this], facRad)
  s__ddeffect_fac[this] = facRad
end
function s__ddeffect__get_Facing(this)
  return s__ddeffect_fac[this]
end
function s__ddeffect_Position(this, x, y)
  BlzSetSpecialEffectPosition(s__ddeffect_e[this], x, y, s__ddeffect_effZ[this] + (DDEffectTerrZ(s__ddeffect_e[(this)])))
end
function s__ddeffect_PositionZ(this, x, y, z)
  BlzSetSpecialEffectPosition(s__ddeffect_e[this], x, y, z)
end
function s__ddeffect_Animation(this, dd_at)
  BlzPlaySpecialEffect(s__ddeffect_e[this], dd_at)
end
function s__ddeffect_AnimationSpeed(this, animSpeed)
  BlzSetSpecialEffectTimeScale(s__ddeffect_e[this], animSpeed / 100.)
end
function s__ddeffect_anon__9()
  local dde = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  s__ddeffect_cTrans[dde] = s__ddeffect_cTrans[dde] + s__ddeffect_stepTrans[dde]
  if (s__ddeffect_stepTrans[dde] > 0.) then
    if (s__ddeffect_cTrans[dde] >= s__ddeffect_eTrans[dde]) then
      BlzSetSpecialEffectAlpha(s__ddeffect_e[dde], R2I(s__ddeffect_eTrans[dde] * 2.55))
      DDQuitTim()
      return
    elseif (s__ddeffect_cTrans[dde] <= s__ddeffect_eTrans[dde]) then
      BlzSetSpecialEffectAlpha(s__ddeffect_e[dde], R2I(s__ddeffect_eTrans[dde] * 2.55))
      DDQuitTim()
      return
    end
  end
  BlzSetSpecialEffectAlpha(s__ddeffect_e[dde], R2I(s__ddeffect_cTrans[dde] * 2.55))
end
function s__ddeffect_Fade(this, startTransparency, endTransparency, duration)
  s__ddeffect_cTrans[this] = startTransparency
  s__ddeffect_eTrans[this] = endTransparency
  s__ddeffect_stepTrans[this] = 0.1 * (endTransparency - startTransparency) / duration
  BlzSetSpecialEffectAlpha(s__ddeffect_e[this], R2I(startTransparency * 2.55))
  DDStartTim(0.1, true, this, s__ddeffect_anon__9)
end
--processed :        type DDLib__timedeffect extends effect array [01]
function DDLib__anon__10()
  local te = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  DestroyEffect(s__DDLib__timedeffect[te])
  s__DDLib__timedeffect_deallocate(te)
  DDQuitTim()
end
function DDDestroyEffectTimed(e, secs)
  local te = s__DDLib__timedeffect__allocate()
  s__DDLib__timedeffect[te] = e
  DDStartTim(secs, true, te, DDLib__anon__10)
end
function DDLib__anon__11()
  local cnd = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  while true do
    if (s__DDLib__cameranoisedata_n[cnd] == 0) then
      break
    end
    s__DDLib__cameranoisedata_n[cnd] = s__DDLib__cameranoisedata_n[cnd] - 1
    if (GetLocalPlayer_CONST == s___DDLib__cameranoisedata_p[s__DDLib__cameranoisedata_p[cnd] + s__DDLib__cameranoisedata_n[cnd]]) then
      CameraSetSourceNoise(0., 0.)
    end
    CameraSetTargetNoise(0., 0.)
  end
  s__DDLib__cameranoisedata_deallocate(cnd)
  DDQuitTim()
end
function DDCameraSetSourceNoiseForPlayers(x, y, mag, vel, maxDist, duration)
  local i = nil
  local d = nil
  local cnd = s__DDLib__cameranoisedata__allocate()
  i = 0
  while true do
    if i >= bj_MAX_PLAYERS then
      break
    end
	local playerr = Player(i)
    if (GetLocalPlayer_CONST == playerr) then
      d = SquareRoot(Pw_2(GetCameraTargetPositionX() - x) + Pw_2(GetCameraTargetPositionY() - y))
      if (d < maxDist) then
        s___DDLib__cameranoisedata_p[s__DDLib__cameranoisedata_p[cnd] + s__DDLib__cameranoisedata_n[cnd]] = playerr
        CameraSetSourceNoise(mag - (d * (mag / maxDist)), vel - (d * (vel / maxDist)))
        CameraSetTargetNoise(mag - (d * (mag / maxDist)), vel - (d * (vel / maxDist)))
        s__DDLib__cameranoisedata_n[cnd] = s__DDLib__cameranoisedata_n[cnd] + 1
      end
    end
    i = i + 1
  end
  DDStartTim(duration, false, cnd, DDLib__anon__11)
end
function DDGenericSound(file, vol, x, y, mxDist, pitch)
  local sh = StringHash(file)
  local snd_n = LoadInteger(DDLib__GenSndTable, sh, 4)
  local s = LoadSoundHandle(DDLib__GenSndTable, sh, snd_n)
  local d = nil
  local i = nil
  if (s == nil) then
    s = CreateSound(file, false, false, false, 10, 10, "")
    SaveSoundHandle(DDLib__GenSndTable, sh, snd_n, s)
  elseif (GetSoundIsPlaying(s)) then
    StopSound(s, false, false)
  end
  SetSoundPitch(s, pitch)
  snd_n = snd_n + 1
  if (snd_n == 4) then
    snd_n = 0
  end
  SaveInteger(DDLib__GenSndTable, sh, 4, snd_n)
  i = 0
  while true do
    if i >= bj_MAX_PLAYERS then
      break
    end
    if (GetLocalPlayer_CONST == Player(i)) then
      d = SquareRoot(DDHypot(GetCameraTargetPositionX() - x, GetCameraTargetPositionY() - y))
      if (d < mxDist) then
        SetSoundVolume(s, R2I((vol - d * (vol / mxDist)) * 1.27))
        StartSound(s)
      end
    end
    i = i + 1
  end
end
function DDGetGameElapsedTime()
  return TimerGetElapsed(DDLib__GameElapsedTimer)
end
function DDGetRndReal(min, max)
  local rnd = ((max - min) / 1000000.) * I2R(DDLib__RndInt[DDLib__RndIntReadN])
  DDLib__RndIntReadN = DDLib__RndIntReadN + 1
  if (DDLib__RndIntReadN == DDLib__RND_INT_MAX_ARRAY_N) then
    DDLib__RndIntReadN = 0
  end
  return min + rnd
end
function DDGetRndInt(min, max)
  return R2I(DDGetRndReal(I2R(min), I2R(max)))
end
function DDLib__onInit()
  DDLib__TempLoc = DDLib__TempLoc or Location(0., 0.)
  DDHT = InitHashtable()
  DDMinX = GetRectMinX(bj_mapInitialPlayableArea)
  DDMinY = GetRectMinY(bj_mapInitialPlayableArea)
  DDMaxX = GetRectMaxX(bj_mapInitialPlayableArea)
  DDMaxY = GetRectMaxY(bj_mapInitialPlayableArea)
  DDLib__GenSndTable = InitHashtable()
  DDLib__ErrorSound = CreateSound("Sound\\Interface\\Error.wav", false, false, false, 10, 10, "")
  SetSoundParamsFromLabel(DDLib__ErrorSound, "InterfaceError")
  SetSoundDuration(DDLib__ErrorSound, 614)
  SetSoundVolume(DDLib__ErrorSound, 127)
  DDLib__GameElapsedTimer = CreateTimer()
  TimerStart(DDLib__GameElapsedTimer, 10800., false, nil)
  DDLib__RndIntWriteN = 0
  while true do
    if DDLib__RndIntWriteN >= DDLib__RND_INT_MAX_ARRAY_N then
      break
    end
    DDLib__RndInt[DDLib__RndIntWriteN] = GetRandomInt(0, 1000000)
    DDLib__RndIntWriteN = DDLib__RndIntWriteN + 1
  end
  DDLib__RndIntWriteN = 0
  DDLib__RndGenForce = CreateForce()
end

--library DDLib ends
--library ShimmeringPortal:

function ShimmeringPortal__PORTAL_DURATION(level)
  local dur = __jarray(0.0)
  dur[1] = 15.
  dur[2] = 15.
  dur[3] = 15.
  dur[4] = 15.
  return dur[level]
end
function ShimmeringPortal__PORTAL_TRANSITION_TIME(level)
  local trans_tim = __jarray(0.0)
  trans_tim[1] = 2.
  trans_tim[2] = 2.
  trans_tim[3] = 2.
  trans_tim[4] = 2.
  return trans_tim[level]
end
function ShimmeringPortal__PORTAL_MAX_PASS(level)
  local max_pass = __jarray(0)
  max_pass[1] = 999
  max_pass[2] = 999
  max_pass[3] = 999
  max_pass[4] = 999
  return max_pass[level]
end
function ShimmeringPortal__PortFilter(filter_unit, cast_player)
  return not (IsUnitType(filter_unit, UNIT_TYPE_DEAD)) and not (IsUnitType(filter_unit, UNIT_TYPE_STRUCTURE)) and GetUnitAbilityLevel(filter_unit, 1093678903) == 0 and GetUnitMoveSpeed(filter_unit) > 0.0
end
function ShimmeringPortal__IsUnitInRectangle(u, x, y, degrees)
  local ux = GetUnitX(u)
  local uy = GetUnitY(u)
  local minx = x - (ShimmeringPortal__PORTAL_LENGTH * 0.5)
  local miny = y - (ShimmeringPortal__PORTAL_WIDTH * 0.5)
  local maxx = x + (ShimmeringPortal__PORTAL_LENGTH * 0.5)
  local maxy = y + (ShimmeringPortal__PORTAL_WIDTH * 0.5)
  local range = SquareRoot(Pw_2(x - ux) + Pw_2(y - uy))
  local radians = Atan2(uy - y, ux - x)
  ux = x + range * Cos(radians - (degrees * bj_DEGTORAD))
  uy = y + range * Sin(radians - (degrees * bj_DEGTORAD))
  return (ux > minx and ux < maxx) and (uy > miny and uy < maxy)
end
function ShimmeringPortal__TranslateUnitFromRectangleToRectangle(u, wormhole_sx, wormhole_sy, sdegrees, wormhole_tx, wormhole_ty, tdegrees)
  local wormhole_ux = GetUnitX(u)
  local wormhole_uy = GetUnitY(u)
  local range = SquareRoot(Pw_2(wormhole_sx - wormhole_ux) + Pw_2(wormhole_sy - wormhole_uy))
  local tradians_shift = -Atan2(wormhole_uy - wormhole_sy, wormhole_ux - wormhole_sx) + (tdegrees + sdegrees + 180.) * bj_DEGTORAD
  wormhole_ux = wormhole_tx + range * Cos(tradians_shift)
  wormhole_uy = wormhole_ty + range * Sin(tradians_shift)
  SetUnitX(u, wormhole_ux)
  SetUnitY(u, wormhole_uy)
  SetUnitFacing(u, -GetUnitFacing(u) + (tdegrees + sdegrees))
end
--private:
function s__ShimmeringPortal__unitimage_anon__0()
  local this = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  s__ShimmeringPortal__unitimage_trans[this] = s__ShimmeringPortal__unitimage_trans[this] - s__ShimmeringPortal__unitimage_t_spd[this]
  SetUnitVertexColor(s__ShimmeringPortal__unitimage_u[this], ShimmeringPortal__UNIT_AFTER_IMAGE_RED, ShimmeringPortal__UNIT_AFTER_IMAGE_GREEN, ShimmeringPortal__UNIT_AFTER_IMAGE_BLUE, R2I(s__ShimmeringPortal__unitimage_trans[this] * 2.55))
  if (s__ShimmeringPortal__unitimage_trans[this] <= 0.) then
    RemoveUnit(s__ShimmeringPortal__unitimage_u[this])
    s__ShimmeringPortal__unitimage_u[this] = nil
    s__ShimmeringPortal__unitimage_deallocate(this)
    DDQuitTim()
  end
end
function s__ShimmeringPortal__unitimage_CreateAfterImage(target, x, y)
  local this = s__ShimmeringPortal__unitimage__allocate()
  local fac = GetUnitFacing(target)
  s__ShimmeringPortal__unitimage_u[this] = CreateUnit(s__ShimmeringPortal__unitimage_IMAGE_OWNER, GetUnitTypeId(target), 0., 0., fac)
  UnitAddAbility(s__ShimmeringPortal__unitimage_u[this], 1097625443)
  SetUnitPathing(s__ShimmeringPortal__unitimage_u[this], false)
  SetUnitTimeScale(s__ShimmeringPortal__unitimage_u[this], ShimmeringPortal__UNIT_AFTER_IMAGE_TIMESCALE)
  SetUnitX(s__ShimmeringPortal__unitimage_u[this], x - 90. * Cos(fac * bj_DEGTORAD))
  SetUnitY(s__ShimmeringPortal__unitimage_u[this], y - 90. * Sin(fac * bj_DEGTORAD))
  SetUnitVertexColor(s__ShimmeringPortal__unitimage_u[this], ShimmeringPortal__UNIT_AFTER_IMAGE_RED, ShimmeringPortal__UNIT_AFTER_IMAGE_GREEN, ShimmeringPortal__UNIT_AFTER_IMAGE_BLUE, 255)
  SetUnitMoveSpeed(s__ShimmeringPortal__unitimage_u[this], 1.)
  IssuePointOrder(s__ShimmeringPortal__unitimage_u[this], "move", x + 100. * Cos(fac * bj_DEGTORAD), y + 100. * Sin(fac * bj_DEGTORAD))
  SetUnitColor(s__ShimmeringPortal__unitimage_u[this], GetPlayerColor(GetOwningPlayer(target)))
  s__ShimmeringPortal__unitimage_trans[this] = GetRandomReal(ShimmeringPortal__UNIT_AFTER_IMAGE_TRANSPARENCY_MIN, ShimmeringPortal__UNIT_AFTER_IMAGE_TRANSPARENCY_MAX)
  s__ShimmeringPortal__unitimage_t_spd[this] = DD_INTERVAL * s__ShimmeringPortal__unitimage_trans[this] / ShimmeringPortal__UNIT_AFTER_IMAGE_DURATION
  DDStartTim(DD_INTERVAL, true, this, s__ShimmeringPortal__unitimage_anon__0)
end
--private:
function s__ShimmeringPortal__portal_onInit()
  s__ShimmeringPortal__portal_SctG = CreateGroup()
  s__ShimmeringPortal__portal_SctT = CreateTimer()
end
function s__ShimmeringPortal__portal_Min4x(a, b, c, d)
  if (a < b and a < c and a < d) then
    return a
  elseif (b < c and b < d) then
    return b
  elseif (c < d) then
    return c
  end
  return d
end
function s__ShimmeringPortal__portal_Max4x(a, b, c, d)
  if (a > b and a > c and a > d) then
    return a
  elseif (b > c and b > d) then
    return b
  elseif (c > d) then
    return c
  end
  return d
end
function s__ShimmeringPortal__portal_RectangleToRect(x, y, rrad)
  local wormhole_x1 = x + (s__ShimmeringPortal__portal_DIAGONAL * Cos(rrad + s__ShimmeringPortal__portal_ALPHA) * 0.5)
  local wormhole_x2 = x + (s__ShimmeringPortal__portal_DIAGONAL * Cos(rrad - s__ShimmeringPortal__portal_ALPHA) * 0.5)
  local wormhole_x3 = x + (s__ShimmeringPortal__portal_DIAGONAL * Cos(rrad + bj_PI + s__ShimmeringPortal__portal_ALPHA) * 0.5)
  local wormhole_x4 = x + (s__ShimmeringPortal__portal_DIAGONAL * Cos(rrad + bj_PI - s__ShimmeringPortal__portal_ALPHA) * 0.5)
  local wormhole_y1 = y + (s__ShimmeringPortal__portal_DIAGONAL * Sin(rrad + s__ShimmeringPortal__portal_ALPHA) * 0.5)
  local wormhole_y2 = y + (s__ShimmeringPortal__portal_DIAGONAL * Sin(rrad - s__ShimmeringPortal__portal_ALPHA) * 0.5)
  local wormhole_y3 = y + (s__ShimmeringPortal__portal_DIAGONAL * Sin(rrad + bj_PI + s__ShimmeringPortal__portal_ALPHA) * 0.5)
  local wormhole_y4 = y + (s__ShimmeringPortal__portal_DIAGONAL * Sin(rrad + bj_PI - s__ShimmeringPortal__portal_ALPHA) * 0.5)
  return Rect(s__ShimmeringPortal__portal_Min4x(wormhole_x1, wormhole_x2, wormhole_x3, wormhole_x4), s__ShimmeringPortal__portal_Min4x(wormhole_y1, wormhole_y2, wormhole_y3, wormhole_y4), s__ShimmeringPortal__portal_Max4x(wormhole_x1, wormhole_x2, wormhole_x3, wormhole_x4), s__ShimmeringPortal__portal_Max4x(wormhole_y1, wormhole_y2, wormhole_y3, wormhole_y4))
end
function s__ShimmeringPortal__portal_create(p, lvl, x, y, degrees, tx, ty, tdegrees)
  local this = s__ShimmeringPortal__portal__allocate()
  s__ShimmeringPortal__portal_p[this] = CreateUnit(p, ShimmeringPortal__PORTAL_ID, x, y, degrees + 90.)
  PauseUnit(s__ShimmeringPortal__portal_p[this], true)
  SetUnitAnimation(s__ShimmeringPortal__portal_p[this], ShimmeringPortal__PORTAL_ANIM_BIRTH)
  QueueUnitAnimation(s__ShimmeringPortal__portal_p[this], ShimmeringPortal__PORTAL_ANIM_STAND)
  SetUnitTimeScale(s__ShimmeringPortal__portal_p[this], 3.0)
  s__ShimmeringPortal__portal_x[this] = x
  s__ShimmeringPortal__portal_y[this] = y
  s__ShimmeringPortal__portal_degrees[this] = degrees
  s__ShimmeringPortal__portal_tx[this] = tx
  s__ShimmeringPortal__portal_ty[this] = ty
  s__ShimmeringPortal__portal_tdegrees[this] = tdegrees
  s__ShimmeringPortal__portal_lvl[this] = lvl
  s__ShimmeringPortal__portal_cpass[this] = 0
  s__ShimmeringPortal__portal_trans_units[this] = 0
  s__ShimmeringPortal__portal_pr[this] = s__ShimmeringPortal__portal_RectangleToRect(x, y, bj_DEGTORAD * degrees)
  s__ShimmeringPortal__portal_cpass_timeout[this] = ShimmeringPortal__PORTAL_TRANSITION_TIME(lvl)
  return this
end
function s__ShimmeringPortal__portal_destroy(this)
  if (s__ShimmeringPortal__portal_t[this] ~= nil) then
    PauseTimer(s__ShimmeringPortal__portal_t[this])
    ReleaseTimer((s__ShimmeringPortal__portal_t[this]))
    s__ShimmeringPortal__portal_t[this] = nil
  end
  StopSound(s__ShimmeringPortal__portal_amb[this], true, true)
  KillUnit(s__ShimmeringPortal__portal_p[this])
  SetUnitVertexColor(s__ShimmeringPortal__portal_p[this], 255, 255, 255, 0)
  RemoveRect(s__ShimmeringPortal__portal_pr[this])
  s__ShimmeringPortal__portal_p[this] = nil
  s__ShimmeringPortal__portal_pr[this] = nil
  s__ShimmeringPortal__portal_amb[this] = nil
  s__ShimmeringPortal__portal_deallocate(this)
end
function s__ShimmeringPortal__portal_PlayPortalEntranceSound(this)
  DDGenericSound(ShimmeringPortal__PORTAL_ENTRANCE_SOUND_FILE, ShimmeringPortal__PORTAL_ENTRANCE_SOUND_VOLUME, s__ShimmeringPortal__portal_x[this], s__ShimmeringPortal__portal_y[this], ShimmeringPortal__SOUND_MAX_DISTANCE, 1.)
end
function s__ShimmeringPortal__portal_PlayPortalDeathSound(this)
  DDGenericSound(ShimmeringPortal__PORTAL_DEATH_SOUND_FILE, ShimmeringPortal__PORTAL_DEATH_SOUND_VOLUME, s__ShimmeringPortal__portal_x[this], s__ShimmeringPortal__portal_y[this], ShimmeringPortal__SOUND_MAX_DISTANCE, 1.)
end
function s__ShimmeringPortal__portal_PlayPortalAmbienceSound(this)
  if (s__ShimmeringPortal__portal_amb[this] == nil) then
    s__ShimmeringPortal__portal_amb[this] = CreateSound(ShimmeringPortal__PORTAL_AMBIENCE_SOUND_FILE, true, true, true, 10, 10, "DoodadsEAX")
    SetSoundVolume(s__ShimmeringPortal__portal_amb[this], R2I(ShimmeringPortal__PORTAL_AMBIENCE_SOUND_VOLUME * 1.27))
    SetSoundPosition(s__ShimmeringPortal__portal_amb[this], s__ShimmeringPortal__portal_x[this], s__ShimmeringPortal__portal_y[this], 0.)
    SetSoundDistanceCutoff(s__ShimmeringPortal__portal_amb[this], 3500.)
    StartSound(s__ShimmeringPortal__portal_amb[this])
  end
end
function s__ShimmeringPortal__portal_anon__1()
  s__ShimmeringPortal__portal_TempBool = s__ShimmeringPortal__portal_TempBool or (GetUnitAbilityLevel(GetFilterUnit(), 1097625443) == 0 and ShimmeringPortal__PortFilter(GetFilterUnit(), Player((DDLib__GroupFilterData))))
  return false
end
function s__ShimmeringPortal__portal_IsSrcPortalClear(this, p)
  s__ShimmeringPortal__portal_TempBool = false
  DDGroupFilterArea(s__ShimmeringPortal__portal_x[this], s__ShimmeringPortal__portal_y[this], ShimmeringPortal__CAMERA_PAN_AREA_SCAN, GetPlayerId(p), s__ShimmeringPortal__portal_anon__1)
  return not s__ShimmeringPortal__portal_TempBool
end
function s__ShimmeringPortal__portal_anon__3()
  local u = GetEnumUnit()
  local p = GetOwningPlayer(u)
  local wormhole_pt = DDGet(u, ShimmeringPortal__UNIT_SELECTION_GROUPING_KEY)
  if (s__ShimmeringPortal__portal_IsSrcPortalClear(wormhole_pt, p) or IsUnitType(s__ShimmeringPortal__portal_p[wormhole_pt], UNIT_TYPE_DEAD)) then
    if (GetLocalPlayer_CONST == p) then
      SelectUnit(u, true)
    end
    GroupRemoveUnit(s__ShimmeringPortal__portal_SctG, u)
  end
  u = nil
end
function s__ShimmeringPortal__portal_anon__2()
  ForGroup(s__ShimmeringPortal__portal_SctG, s__ShimmeringPortal__portal_anon__3)
  if (FirstOfGroup(s__ShimmeringPortal__portal_SctG) == nil) then
    PauseTimer(s__ShimmeringPortal__portal_SctT)
  end
end
function s__ShimmeringPortal__portal_DoSelectJob(this, u, select)
  local p = GetOwningPlayer(u)
  if (not select) then
    DDSet(u, ShimmeringPortal__UNIT_SELECTED_KEY, 0)
    if (IsUnitSelected(u, p)) then
      DDSet(u, ShimmeringPortal__UNIT_SELECTED_KEY, 1)
      SelectUnit(u, false)
      if (IsUnitInGroup(u, s__ShimmeringPortal__portal_SctG)) then
        GroupRemoveUnit(s__ShimmeringPortal__portal_SctG, u)
      end
    end
  elseif (DDGet(u, ShimmeringPortal__UNIT_SELECTED_KEY) == 1) then
    if (s__ShimmeringPortal__portal_IsSrcPortalClear(this, p)) then
      if (GetLocalPlayer_CONST == p) then
        SelectUnit(u, true)
      end
    else
      if (FirstOfGroup(s__ShimmeringPortal__portal_SctG) == nil) then
        TimerStart(s__ShimmeringPortal__portal_SctT, ShimmeringPortal__SELECTION_CHECK_INTERVAL, true, s__ShimmeringPortal__portal_anon__2)
      end
      DDSet(u, ShimmeringPortal__UNIT_SELECTION_GROUPING_KEY, this)
      GroupAddUnit(s__ShimmeringPortal__portal_SctG, u)
    end
  end
end
function s__ShimmeringPortal__portal_anon__4()
  local pi = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  if (GetLocalPlayer_CONST == Player(s__p_integer[pi + 1])) then
    SetCameraPosition(s__ShimmeringPortal__portal_x[(s__p_integer[pi])], s__ShimmeringPortal__portal_y[(s__p_integer[pi])])
  end
  s__p_integer_deallocate(pi)
end
function s__ShimmeringPortal__portal_AttemptCameraPan(this, p)
  local pi = nil
  if (s__ShimmeringPortal__portal_IsSrcPortalClear(this, p)) then
    pi = s__p_integer__allocate()
    s__p_integer[pi] = s__ShimmeringPortal__portal_lnk[this]
    s__p_integer[pi + 1] = GetPlayerId(p)
    DDStartTim(ShimmeringPortal__CAMERA_PAN_DELAY, false, pi, s__ShimmeringPortal__portal_anon__4)
  end
end
function s__ShimmeringPortal__portal_anon__6()
  local this = (DDLib__UnitStackData)
  if (ShimmeringPortal__IsUnitInRectangle(GetFilterUnit(), s__ShimmeringPortal__portal_x[this], s__ShimmeringPortal__portal_y[this], s__ShimmeringPortal__portal_degrees[this]) and DDGet(GetFilterUnit(), ShimmeringPortal__UNIT_PORT_KEY) == 0) then
    return ShimmeringPortal__PortFilter(GetFilterUnit(), GetOwningPlayer(s__ShimmeringPortal__portal_p[this]))
  end
  return false
end
function s__ShimmeringPortal__portal_anon__8()
  local wormhole_pi = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  local wormhole_pu = s__p_integer[wormhole_pi]
  DDSet(s__p_unit[wormhole_pu], ShimmeringPortal__UNIT_PORT_KEY, 0)
  s__p_integer_deallocate(wormhole_pi)
  s__p_unit_deallocate(wormhole_pu)
  DDQuitTim()
end
function s__ShimmeringPortal__portal_anon__7()
  local pi = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  local wormhole_pu = s__p_integer[pi]
  local dist = GetRandomReal(ShimmeringPortal__UNIT_PORT_WALK_OFFSET_MIN, ShimmeringPortal__UNIT_PORT_WALK_OFFSET_MAX)
  local fac = GetUnitFacing(s__p_unit[wormhole_pu])
  s__ShimmeringPortal__portal_trans_units[(s__p_integer[pi + 1])] = s__ShimmeringPortal__portal_trans_units[(s__p_integer[pi + 1])] - 1
  s__ShimmeringPortal__portal_trans_units[(s__p_integer[pi + 2])] = s__ShimmeringPortal__portal_trans_units[(s__p_integer[pi + 2])] - 1
  s__ShimmeringPortal__portal_PlayPortalEntranceSound((s__p_integer[pi + 1]))
  ShowUnit(s__p_unit[wormhole_pu], true)
  SetUnitInvulnerable(s__p_unit[wormhole_pu], false)
  BlzPauseUnitEx(s__p_unit[wormhole_pu], false)
  IssuePointOrder(s__p_unit[wormhole_pu], "move", GetUnitX(s__p_unit[wormhole_pu]) + dist * Cos(fac * bj_DEGTORAD), GetUnitY(s__p_unit[wormhole_pu]) + dist * Sin(fac * bj_DEGTORAD))
  TimerStart(GetExpiredTimer(), ShimmeringPortal__UNIT_NEXT_PORT_DELAY, false, s__ShimmeringPortal__portal_anon__8)

  s__ShimmeringPortal__portal_DoSelectJob((s__p_integer[pi + 2]), s__p_unit[(s__p_integer[pi])], true)

end
function s__ShimmeringPortal__portal_anon__9()
  local this = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  s__ShimmeringPortal__portal_PlayPortalDeathSound(this)
  s__ShimmeringPortal__portal_t[this] = nil
  s__ShimmeringPortal__portal_destroy(this)
  DDQuitTim()
end
function s__ShimmeringPortal__portal_anon__5()
  local this = (DDLib__TimData[(GetHandleId((GetExpiredTimer())) - 0x100000)])
  local elapsed = DDTimTick() * ShimmeringPortal__PORT_CHECK_INTERVAL
  local i = 0
  local dur = ShimmeringPortal__PORTAL_DURATION(s__ShimmeringPortal__portal_lvl[this])
  local trans_time = ShimmeringPortal__PORTAL_TRANSITION_TIME(s__ShimmeringPortal__portal_lvl[this])
  local max_pass = ShimmeringPortal__PORTAL_MAX_PASS(s__ShimmeringPortal__portal_lvl[this])
  local pi = nil

  if (ModuloInteger(R2I(elapsed * 10.), R2I(ShimmeringPortal__PORTAL_MINIMAP_PING_INTERVAL * 10.)) == 1) then
    if (IsPlayerAlly(GetLocalPlayer_CONST, GetOwningPlayer(s__ShimmeringPortal__portal_p[this]))) then
      PingMinimapEx(s__ShimmeringPortal__portal_x[this], s__ShimmeringPortal__portal_y[this], ShimmeringPortal__PORTAL_MINIMAP_PING_DURATION, ShimmeringPortal__PORTAL_MINIMAP_PING_RED, ShimmeringPortal__PORTAL_MINIMAP_PING_GREEN, ShimmeringPortal__PORTAL_MINIMAP_PING_BLUE, false)
      PingMinimapEx(s__ShimmeringPortal__portal_tx[this], s__ShimmeringPortal__portal_ty[this], ShimmeringPortal__PORTAL_MINIMAP_PING_DURATION, ShimmeringPortal__PORTAL_MINIMAP_PING_RED, ShimmeringPortal__PORTAL_MINIMAP_PING_GREEN, ShimmeringPortal__PORTAL_MINIMAP_PING_BLUE, false)
    end
  end

  if (elapsed > ShimmeringPortal__PORTAL_ANIM_BIRTH_DURATION and elapsed < dur + ShimmeringPortal__PORTAL_ANIM_BIRTH_DURATION and s__ShimmeringPortal__portal_cpass[this] + s__ShimmeringPortal__portal_cpass[s__ShimmeringPortal__portal_lnk[this]] < max_pass) then
    s__ShimmeringPortal__portal_PlayPortalAmbienceSound(this)
    DDGroupFillMemRect(s__ShimmeringPortal__portal_pr[this], this, s__ShimmeringPortal__portal_anon__6)
    while true do
      if (i >= (DDLib__US_N)) then
        break
      end
      if (not (IssueImmediateOrder(DDMemUnit(i), "stop"))) then
      end

      s__ShimmeringPortal__portal_DoSelectJob(this, DDMemUnit(i), false)




      ShimmeringPortal__TranslateUnitFromRectangleToRectangle(DDMemUnit(i), s__ShimmeringPortal__portal_x[this], s__ShimmeringPortal__portal_y[this], s__ShimmeringPortal__portal_degrees[this], s__ShimmeringPortal__portal_tx[this], s__ShimmeringPortal__portal_ty[this], s__ShimmeringPortal__portal_tdegrees[this])
      ShowUnit(DDMemUnit(i), false)
      SetUnitInvulnerable(DDMemUnit(i), true)
      BlzPauseUnitEx(DDMemUnit(i), true)
      s__ShimmeringPortal__portal_PlayPortalEntranceSound(this)
      s__ShimmeringPortal__portal_trans_units[this] = s__ShimmeringPortal__portal_trans_units[this] + 1
      s__ShimmeringPortal__portal_trans_units[s__ShimmeringPortal__portal_lnk[this]] = s__ShimmeringPortal__portal_trans_units[s__ShimmeringPortal__portal_lnk[this]] + 1

      s__ShimmeringPortal__portal_AttemptCameraPan(this, GetOwningPlayer(DDMemUnit(i)))

      DDSet(DDMemUnit(i), ShimmeringPortal__UNIT_PORT_KEY, 1)
      pi = s__p_integer__allocate()
      s__p_integer[pi] = New_pUnit(DDMemUnit(i))
      s__p_integer[pi + 1] = s__ShimmeringPortal__portal_lnk[this]
      s__p_integer[pi + 2] = this
      DDStartTim(trans_time, false, pi, s__ShimmeringPortal__portal_anon__7)
      s__ShimmeringPortal__portal_cpass[this] = s__ShimmeringPortal__portal_cpass[this] + 1
      i = i + 1
    end
  end
  if ((elapsed > ShimmeringPortal__PORTAL_ANIM_BIRTH_DURATION + dur) or (s__ShimmeringPortal__portal_cpass[this] + s__ShimmeringPortal__portal_cpass[s__ShimmeringPortal__portal_lnk[this]] >= max_pass)) then
    if (s__ShimmeringPortal__portal_trans_units[this] == 0) then
      DDStartTim(ShimmeringPortal__DESTROY_PORTAL_DELAY, false, this, s__ShimmeringPortal__portal_anon__9)
      DDQuitTim()
    end
  end
end
function s__ShimmeringPortal__portal_StartPortSys(this)
  s__ShimmeringPortal__portal_t[this] = DDStartTim(ShimmeringPortal__PORT_CHECK_INTERVAL, true, this, s__ShimmeringPortal__portal_anon__5)
end
function s__ShimmeringPortal__portal__set_link(this, p)
  s__ShimmeringPortal__portal_lnk[this] = p
end
function s__ShimmeringPortal__portal__get_Elapsed(this)
  return (DDLib__TimTicks[(GetHandleId(((s__ShimmeringPortal__portal_t[this]))) - 0x100000)]) * ShimmeringPortal__PORT_CHECK_INTERVAL
end
function ShimmeringPortal__Round(x)
  if (x - I2R(R2I(x)) > 0.5) then
    return R2I(x) + 1
  end
  return R2I(x)
end
function ShimmeringPortal__anon__10()
  local u = nil
  local s = nil
  local p = nil
  local lvl = nil
  local wormhole_ux = nil
  local wormhole_uy = nil
  local wormhole_tx = nil
  local wormhole_ty = nil
  local x = nil
  local y = nil
  local rads = nil
  local fac = nil
  local wormhole_pt = nil
  if (GetSpellAbilityId() ~= ShimmeringPortal__SPELL_ID) then
    return false
  end
  if (GetTriggerEventId() == EVENT_PLAYER_UNIT_SPELL_CAST) then
    u = GetTriggerUnit()
    if (IsUnitInRangeXY(u, GetSpellTargetX(), GetSpellTargetY(), ShimmeringPortal__SECOND_PORTAL_MIN_RANGE)) then
      IssuePointOrder(u, "move", GetUnitX(u) + 50. * Cos(GetUnitFacing(u) * bj_DEGTORAD), GetUnitY(u) + 50. * Sin(GetUnitFacing(u) * bj_DEGTORAD))
      DisplayTimedTextFromPlayer(GetOwningPlayer(u), 0., 0., ShimmeringPortal__PORTAL_WARNING_MESSAGE_DURATION, "|cffff0020" .. ShimmeringPortal__PORTAL_WARNING_MESSAGE .. "|r")
      if (GetLocalPlayer_CONST == GetOwningPlayer(u)) then
        StartSound(ShimmeringPortal__warningsound)
      end
      DDSet(u, ShimmeringPortal__CASTER_FACING_KEY, 0)
    else
      DDSet(u, ShimmeringPortal__CASTER_FACING_KEY, New_pReal(GetUnitFacing(u)))
    end
    u = nil
    return false
  end
  if (GetTriggerEventId() == EVENT_PLAYER_UNIT_SPELL_ENDCAST) then
    u = GetTriggerUnit()
    wormhole_pt = DDGet(u, ShimmeringPortal__CASTER_PORTS_KEY)
    if (wormhole_pt == 0) then
      u = nil
      return false
    end
    if (ShimmeringPortal__Round(((DDLib__TimTicks[(GetHandleId(((s__ShimmeringPortal__portal_t[((s__p_integer[wormhole_pt]))]))) - 0x100000)]) * ShimmeringPortal__PORT_CHECK_INTERVAL) * 10.) < ShimmeringPortal__Round(ShimmeringPortal__PORTAL_ANIM_BIRTH_DURATION * 10.)) then
      s__ShimmeringPortal__portal_PlayPortalDeathSound((s__p_integer[wormhole_pt]))
      s__ShimmeringPortal__portal_PlayPortalDeathSound((s__p_integer[wormhole_pt + 1]))
      s__ShimmeringPortal__portal_destroy((s__p_integer[wormhole_pt]))
      s__ShimmeringPortal__portal_destroy((s__p_integer[wormhole_pt + 1]))
    end
    s__p_integer_deallocate(wormhole_pt)
    u = nil
    return false
  end
  u = GetTriggerUnit()
  p = GetOwningPlayer(u)
  lvl = GetUnitAbilityLevel(u, ShimmeringPortal__SPELL_ID)
  fac = DDGet(u, ShimmeringPortal__CASTER_FACING_KEY)
  wormhole_ux = GetUnitX(u)
  wormhole_uy = GetUnitY(u)
  wormhole_tx = GetSpellTargetX()
  wormhole_ty = GetSpellTargetY()
  rads = Atan2(-wormhole_uy + wormhole_ty, -wormhole_ux + wormhole_tx)
  x = wormhole_ux + ShimmeringPortal__FIRST_PORTAL_OFFSET * Cos(rads)
  y = wormhole_uy + ShimmeringPortal__FIRST_PORTAL_OFFSET * Sin(rads)
  wormhole_pt = s__p_integer__allocate()
  s__p_integer[wormhole_pt] = s__ShimmeringPortal__portal_create(p, lvl, x, y, (rads * bj_RADTODEG) + 90., wormhole_tx, wormhole_ty, s__p_real[fac] - 90.)
  s__p_integer[wormhole_pt + 1] = s__ShimmeringPortal__portal_create(p, lvl, wormhole_tx, wormhole_ty, s__p_real[fac] - 90., x, y, (rads * bj_RADTODEG) + 90.)
  s__ShimmeringPortal__portal_lnk[((s__p_integer[wormhole_pt]))] = (s__p_integer[wormhole_pt + 1])
  s__ShimmeringPortal__portal_lnk[((s__p_integer[wormhole_pt + 1]))] = (s__p_integer[wormhole_pt])
  s__ShimmeringPortal__portal_StartPortSys((s__p_integer[wormhole_pt]))
  s__ShimmeringPortal__portal_StartPortSys((s__p_integer[wormhole_pt + 1]))
  DDSet(u, ShimmeringPortal__CASTER_PORTS_KEY, wormhole_pt)
  DDGenericSound(ShimmeringPortal__PORTAL_BIRTH_SOUND_FILE, ShimmeringPortal__PORTAL_BIRTH_SOUND_VOLUME, x, y, ShimmeringPortal__SOUND_MAX_DISTANCE, 1.)
  DDGenericSound(ShimmeringPortal__PORTAL_BIRTH_SOUND_FILE, ShimmeringPortal__PORTAL_BIRTH_SOUND_VOLUME, wormhole_tx, wormhole_ty, ShimmeringPortal__SOUND_MAX_DISTANCE, 1.)
  s__p_real_deallocate(fac)
  u = nil
  return false
end
function ShimmeringPortal__onInit()
  local t = CreateTrigger()
  ShimmeringPortal__PORTAL_WARNING_MESSAGE = "Too close cast of Shimmering portal!"
  ShimmeringPortal__PORTAL_WARNING_SOUND_FILE = "Sound\\Interface\\Error.wav"
  ShimmeringPortal__warningsound = CreateSound(ShimmeringPortal__PORTAL_WARNING_SOUND_FILE, false, false, false, 10, 10, "")
  ShimmeringPortal__PORTAL_ANIM_BIRTH = "birth"
  ShimmeringPortal__PORTAL_ANIM_DEATH = "death"
  ShimmeringPortal__PORTAL_ANIM_STAND = "stand"
  ShimmeringPortal__PORTAL_BIRTH_SOUND_FILE = "Sound\\Ambient\\DoodadEffects\\ShimmeringPortalBirth.wav"
  ShimmeringPortal__PORTAL_DEATH_SOUND_FILE = "Sound\\Ambient\\DoodadEffects\\ShimmeringPortalDeath.wav"
  ShimmeringPortal__PORTAL_ENTRANCE_SOUND_FILE = "Sound\\Ambient\\DoodadEffects\\ShimmeringPortalEntrance.wav"
  ShimmeringPortal__PORTAL_AMBIENCE_SOUND_FILE = "Sound\\Ambient\\DoodadEffects\\CityScapeMagicRunesLoop1.wav"
  SetSoundVolume(ShimmeringPortal__warningsound, R2I(ShimmeringPortal__PORTAL_WARNING_SOUND_VOLUME * 1.27))
  TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_CAST)
  TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
  TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_ENDCAST)
  TriggerAddCondition(t, Condition(ShimmeringPortal__anon__10))
end

--library ShimmeringPortal ends
--===========================================================================
-- 
-- Emerald Gardens
-- 
--   Warcraft III map script
--   Generated by the Warcraft III World Editor
--   Map Author: Blizzard Entertainment
-- 
--===========================================================================

--***************************************************************************
--*
--*  Global Variables
--*
--***************************************************************************


function InitGlobals()
end

--***************************************************************************
--*
--*  Custom Script Code
--*
--***************************************************************************

--***************************************************************************
--*
--*  Unit Item Tables
--*
--***************************************************************************

function Unit000012_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000038_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000041_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000043_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 4), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000046_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000047_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000049_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000051_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000055_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000056_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000057_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000060_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000063_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000064_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000065_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000067_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000069_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000072_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000073_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000076_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000077_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000080_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000081_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000084_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000086_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000098_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 5), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000141_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000150_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000153_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000170_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000172_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000177_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000186_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000187_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000192_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000197_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 3), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000201_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 4), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000203_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 3), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000208_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 4), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000210_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 3), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000214_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 4), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000224_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000228_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000237_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 4), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000249_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000250_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000251_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000252_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000253_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000254_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000255_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000256_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000257_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000258_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000259_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000260_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000265_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 3), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_POWERUP, 1), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end

function Unit000269_DropItems()
  local trigWidget = nil
  local trigUnit = nil
  local itemID = 0
  local canDrop = true

  trigWidget = bj_lastDyingWidget
  if (trigWidget == nil) then
    trigUnit = GetTriggerUnit()
  end

  if (trigUnit ~= nil) then
    canDrop = not IsUnitHidden(trigUnit)
    if (canDrop and GetChangingUnit() ~= nil) then
      canDrop = (GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE))
    end
  end

  if (canDrop) then
    -- Item set 0
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_PERMANENT, 4), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

    -- Item set 1
    RandomDistReset()
    RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_CHARGED, 2), 100)
    itemID = RandomDistChoose()
    if (trigUnit ~= nil) then
      UnitDropItem(trigUnit, itemID)
    else
      WidgetDropItem(trigWidget, itemID)
    end

  end

  bj_lastDyingWidget = nil
  DestroyTrigger(GetTriggeringTrigger())
end


--***************************************************************************
--*
--*  Unit Creation
--*
--***************************************************************************

--===========================================================================
function CreateNeutralHostile()
  local p = Player(PLAYER_NEUTRAL_AGGRESSIVE)
  local u = nil
  local unitID = nil
  local t = nil
  local life = nil

  u = BlzCreateUnitWithSkin(p, 1852340580, -1768.9, -1682.4, 31.286, 1852340580)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000265_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601198, 7421.0, 8667.5, 253.340, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, 7054.4, 8886.0, 234.850, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000038_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, 7020.9, 8679.4, 288.962, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, 7213.2, 8601.6, 228.202, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, 1682.9, 9435.8, 253.340, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, 1267.8, 9592.6, 234.850, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000046_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, 1140.2, 9409.2, 288.962, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, 1707.7, 9238.5, 228.202, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, -4043.9, 9501.5, 268.424, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, -4485.6, 9544.8, 249.934, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000084_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, -4561.0, 9334.6, 304.046, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, -3968.7, 9317.4, 243.286, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, 1492.2, -9882.4, 77.250, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, 1917.0, -10010.5, 58.760, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000064_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, 2031.8, -9818.9, 112.872, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, 1454.0, -9687.2, 52.112, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, -3433.3, -9863.4, 60.835, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, -3061.9, -10106.4, 42.345, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000049_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, -2897.7, -9955.0, 96.457, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, -3414.7, -9665.4, 35.697, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, -8992.1, -8543.1, 40.336, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, -8729.3, -8900.7, 21.846, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000056_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, -8522.5, -8816.4, 75.958, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, -8905.4, -8364.2, 15.198, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, 7389.1, -9361.2, 140.826, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, 7692.9, -9037.8, 122.336, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000067_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, 7572.4, -8849.7, 176.448, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, 7197.4, -9308.6, 115.688, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, 9426.6, -4187.3, 150.854, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, 9669.4, -3815.9, 132.364, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000072_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, 9518.0, -3651.7, 186.476, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, 9228.6, -4168.8, 125.716, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, 9512.2, 2276.1, 175.747, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, 9576.1, 2715.3, 157.257, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000249_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, 9369.6, 2800.4, 211.368, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, 9324.8, 2209.5, 150.608, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, -9508.2, 2176.9, 345.550, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, -9648.9, 1756.0, 327.060, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000080_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, -9460.7, 1635.6, 21.172, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, -9312.0, 2209.2, 320.412, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, -9702.0, -2732.1, 345.451, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, -9843.4, -3152.8, 326.961, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000060_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, -9655.5, -3273.5, 21.073, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, -9505.8, -2700.1, 320.313, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601198, -9411.7, 7958.4, 323.974, 1852601198)
  u = BlzCreateUnitWithSkin(p, 1852597363, -9697.3, 7618.7, 305.484, 1852597363)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000076_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, -9566.6, 7437.6, 359.595, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852601443, -9217.4, 7916.3, 298.835, 1852601443)
  u = BlzCreateUnitWithSkin(p, 1852666734, 9674.6, 5566.4, 183.057, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000251_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, 9541.2, 5397.8, 145.936, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, 10235.0, -649.7, 164.690, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000252_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852662375, 9648.7, 5729.1, 170.433, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 9646.7, 5429.7, 170.433, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, 10111.4, -811.3, 145.936, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 10218.9, -480.1, 170.433, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 10216.9, -779.5, 170.433, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, 9646.8, -7151.0, 180.115, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000253_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, 9524.4, -7313.5, 145.936, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 9631.9, -6982.2, 170.433, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 9629.8, -7281.6, 170.433, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, 4595.5, -10128.8, 105.433, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000254_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, 4408.2, -9980.4, 78.918, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 4751.7, -10038.2, 112.000, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 4455.2, -10080.0, 84.810, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, -645.4, -10214.5, 93.549, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000255_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, -806.9, -10071.8, 53.462, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -480.6, -10193.5, 77.959, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -779.6, -10178.6, 77.959, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, -6430.9, -10237.7, 59.372, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000256_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, -6507.7, -10023.9, 22.623, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -6289.9, -10295.7, 47.120, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -6538.9, -10129.5, 47.120, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, -10024.1, -5857.9, 7.199, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000257_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, -9954.1, -5668.3, 318.923, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -10062.9, -5992.6, 343.420, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -10062.6, -5687.1, 343.420, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, -10062.0, -589.6, 14.381, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000086_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, -9909.1, -407.3, 318.923, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -10056.2, -723.0, 343.420, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -10017.6, -426.1, 343.420, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, -10275.4, 4888.4, 314.398, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000259_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, -10125.7, 5066.1, 318.923, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -10272.8, 4750.5, 343.420, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -10234.2, 5047.4, 343.420, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, -6984.7, 9523.2, 296.305, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000260_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, -6761.6, 9449.8, 263.982, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -7104.6, 9388.9, 288.479, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -6839.4, 9527.9, 288.479, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, -1384.8, 9619.9, 270.703, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000141_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, -1208.6, 9516.3, 239.437, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -1545.8, 9603.3, 263.933, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, -1246.9, 9619.6, 263.933, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, 4458.6, 9678.3, 260.101, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000250_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, 4600.6, 9543.5, 231.393, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 4278.9, 9676.9, 255.889, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, 4299.7, 9557.5, 231.393, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1851877497, -766.1, -445.7, 167.182, 1851877497)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000237_DropItems)
  u = BlzCreateUnitWithSkin(p, 1851877497, -147.1, -453.6, 4.890, 1851877497)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000043_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852340584, -424.4, -759.7, 243.003, 1852340584)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340584, -456.2, -166.5, 88.432, 1852340584)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852599148, 7285.7, 8888.4, 257.950, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000041_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852599148, 1465.5, 9501.5, 257.950, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000047_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852599148, -4270.9, 9508.4, 273.034, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000081_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852599148, -9545.8, 7775.1, 328.584, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000073_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852599148, -9565.5, 1957.1, 350.160, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000077_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852599148, -9759.7, -2951.8, 350.061, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000057_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852599148, -8845.6, -8716.7, 44.946, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000055_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852599148, -3235.3, -9974.7, 65.445, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000051_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852599148, 1713.5, -9933.1, 81.860, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000063_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852600434, -1724.6, -1930.3, 15.017, 1852600434)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852599148, 7533.1, -9185.6, 145.436, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000065_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852599148, 9537.8, -3989.3, 155.464, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000069_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852599148, 9529.6, 2502.6, 180.357, 1852599148)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000098_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, 918.6, -2059.2, 124.100, 1852601443)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 4577.2, 9651.2, 255.889, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, 9531.4, 5698.9, 145.936, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, 10101.6, -510.3, 145.936, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852601443, 1032.5, -1578.1, 180.993, 1852601443)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, 9514.5, -7012.4, 145.936, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, 4704.6, -9926.5, 111.797, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -505.8, -10075.0, 53.462, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -6250.7, -10181.0, 22.623, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -9942.7, -5977.0, 318.923, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -9936.0, -707.3, 318.923, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -10175.2, 4885.8, 318.923, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -7022.7, 9299.6, 263.982, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -1508.5, 9488.1, 239.437, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340584, -2029.0, -1518.8, 29.387, 1852340584)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340584, -1860.8, -2096.3, 33.104, 1852340584)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852600434, -1856.4, -1530.1, 290.485, 1852600434)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340584, 843.0, 1307.0, 231.347, 1852340584)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, 2220.4, -1072.7, 323.657, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340580, 2146.9, -1262.3, 349.424, 1852340580)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000214_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666734, 2080.3, -1486.6, 7.713, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 2366.8, -1286.8, 338.523, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 2242.3, -1448.6, 12.989, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, -3012.4, -1882.6, 194.814, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666734, 1861.1, 2071.8, 31.162, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340580, 1997.3, 1942.8, 56.929, 1852340580)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000269_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666734, 2156.6, 1759.9, 75.218, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 1996.4, 2120.2, 46.028, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 2213.3, 1848.6, 80.494, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340580, -3106.8, -1720.5, 220.582, 1852340580)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000208_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666734, -3141.0, 1179.5, 121.162, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340580, -3012.0, 1315.7, 146.929, 1852340580)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000201_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666734, -2829.1, 1475.0, 165.218, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -3189.4, 1314.8, 136.028, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -2917.8, 1531.7, 170.494, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -6659.6, 7459.3, 338.230, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000224_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666734, -3208.2, -1500.2, 238.870, 1852666734)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -3155.9, -1891.0, 209.680, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -3287.5, -1569.4, 244.146, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -2209.2, 8390.2, 341.850, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000150_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, 3340.3, 8177.5, 341.850, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000170_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, 7394.8, 5530.1, 341.850, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000186_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852340584, 1183.5, 811.2, 227.629, 1852340584)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340580, 885.2, 885.1, 229.530, 1852340580)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000210_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852666999, 8558.0, -241.8, 231.042, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000012_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852600434, 765.5, 1106.7, 213.259, 1852600434)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -2100.1, 8382.2, 357.182, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -2088.5, 8236.9, 19.376, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852601443, -1783.9, 1044.4, 288.947, 1852601443)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852600434, 1016.0, 768.0, 128.727, 1852600434)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, 8193.9, -5655.1, 215.522, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000172_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852601443, -2063.1, 701.1, 345.840, 1852601443)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340580, 819.4, -1809.7, 181.043, 1852340580)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000197_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852662375, -6605.0, 7353.5, 345.255, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -6551.2, 7477.5, 21.242, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -6481.3, 7349.6, 43.435, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -8980.4, 3680.8, 86.670, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000228_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852662375, -9128.4, 3769.2, 58.731, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -9073.8, 3851.9, 59.687, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -8960.4, 3823.3, 89.644, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -8372.7, -948.9, 103.893, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000258_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852662375, -8469.9, -857.7, 58.731, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -8415.2, -775.1, 59.687, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -8301.8, -803.7, 89.644, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -8244.4, -6105.7, 111.558, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000153_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852662375, -8379.4, -5999.1, 51.168, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -8324.8, -5916.5, 49.555, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -8211.4, -5945.1, 70.266, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -5174.3, -9537.2, 138.333, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000192_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852662375, -5318.3, -9434.9, 147.008, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -5263.7, -9352.3, 166.600, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -5150.3, -9380.8, 166.393, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, -71.4, -8731.9, 163.824, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000187_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852662375, -241.1, -8745.7, 188.670, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -255.2, -8647.7, 208.262, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, -151.5, -8593.6, 208.055, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852666999, 4746.0, -8444.0, 192.095, 1852666999)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000177_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852662375, 4581.3, -8479.0, 193.409, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 4559.2, -8382.4, 213.002, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 4658.1, -8320.0, 212.795, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 8081.0, -5545.6, 231.043, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 8026.9, -5666.1, 220.078, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 8117.5, -5764.3, 184.051, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 8394.6, -222.5, 267.961, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 8435.7, -348.1, 260.682, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 8568.7, -359.7, 240.864, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 7502.5, 5556.1, 239.711, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 7458.1, 5407.6, 251.621, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 7321.6, 5427.9, 252.614, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662375, 3348.4, 8052.2, 321.195, 1852662375)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 3448.1, 8143.5, 357.182, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852662630, 3459.8, 7998.2, 19.376, 1852662630)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852600420, 806.0, -1959.9, 183.665, 1852600420)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852600420, 888.1, -1572.4, 183.665, 1852600420)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852340580, -1753.3, 777.7, 345.890, 1852340580)
  SetUnitAcquireRange(u, 200.0)
  t = CreateTrigger()
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
  TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
  TriggerAddAction(t, Unit000203_DropItems)
  u = BlzCreateUnitWithSkin(p, 1852600420, -1701.1, 919.2, 348.512, 1852600420)
  SetUnitAcquireRange(u, 200.0)
  u = BlzCreateUnitWithSkin(p, 1852600420, -1925.2, 657.8, 348.512, 1852600420)
  SetUnitAcquireRange(u, 200.0)
end

--===========================================================================
function CreateNeutralPassiveBuildings()
  local p = Player(PLAYER_NEUTRAL_PASSIVE)
  local u = nil
  local unitID = nil
  local t = nil
  local life = nil

  u = BlzCreateUnitWithSkin(p, 1852272492, 1600.0, 10112.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 7424.0, 9472.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 10048.0, 2496.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -4096.0, 10048.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -3456.0, 6016.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 4416.0, 5504.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -3328.0, -10624.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -1984.0, -6528.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 448.0, 6016.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -10112.0, 7936.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -6976.0, 4800.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 1600.0, -10496.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 1984.0, -6208.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -10112.0, 2112.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -10304.0, -2816.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -6656.0, -2880.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -6400.0, 832.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -9216.0, -9216.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, -5632.0, -6144.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 5376.0, -5632.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 7872.0, -9728.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 5952.0, -1984.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 5824.0, 2112.0, 270.000, 1852272492)
  SetResourceAmount(u, 15000)
  u = BlzCreateUnitWithSkin(p, 1852272492, 10112.0, -4032.0, 270.000, 1852272492)
  SetResourceAmount(u, 14000)
  u = BlzCreateUnitWithSkin(p, 1852666467, 9984.0, 5568.0, 270.000, 1852666467)
  SetUnitColor(u, ConvertPlayerColor(1))
  u = BlzCreateUnitWithSkin(p, 1852268900, 4608.0, 9984.0, 270.000, 1852268900)
  u = BlzCreateUnitWithSkin(p, 1852666467, -1408.0, 9920.0, 270.000, 1852666467)
  SetUnitColor(u, ConvertPlayerColor(1))
  u = BlzCreateUnitWithSkin(p, 1852268900, -7168.0, 9856.0, 270.000, 1852268900)
  u = BlzCreateUnitWithSkin(p, 1852666467, -10496.0, 4992.0, 270.000, 1852666467)
  SetUnitColor(u, ConvertPlayerColor(1))
  u = BlzCreateUnitWithSkin(p, 1852268900, -10368.0, -576.0, 270.000, 1852268900)
  u = BlzCreateUnitWithSkin(p, 1852666467, -10304.0, -5888.0, 270.000, 1852666467)
  SetUnitColor(u, ConvertPlayerColor(1))
  u = BlzCreateUnitWithSkin(p, 1852268900, -6592.0, -10432.0, 270.000, 1852268900)
  u = BlzCreateUnitWithSkin(p, 1852666467, -640.0, -10496.0, 270.000, 1852666467)
  SetUnitColor(u, ConvertPlayerColor(1))
  u = BlzCreateUnitWithSkin(p, 1852268900, 4672.0, -10432.0, 270.000, 1852268900)
  u = BlzCreateUnitWithSkin(p, 1852666467, 9920.0, -7168.0, 270.000, 1852666467)
  SetUnitColor(u, ConvertPlayerColor(1))
  u = BlzCreateUnitWithSkin(p, 1852268900, 10496.0, -640.0, 270.000, 1852268900)
  u = BlzCreateUnitWithSkin(p, 1852271973, -1984.0, 896.0, 270.000, 1852271973)
  u = BlzCreateUnitWithSkin(p, 1852076647, -448.0, -448.0, 270.000, 1852076647)
  u = BlzCreateUnitWithSkin(p, 1852271973, 1088.0, -1856.0, 270.000, 1852271973)
  u = BlzCreateUnitWithSkin(p, 1853120886, -192.0, -4800.0, 270.000, 1853120886)
  SetUnitColor(u, ConvertPlayerColor(0))
  u = BlzCreateUnitWithSkin(p, 1853120886, 4096.0, 3200.0, 270.000, 1853120886)
  SetUnitColor(u, ConvertPlayerColor(0))
  u = BlzCreateUnitWithSkin(p, 1852665711, -2048.0, -1856.0, 270.000, 1852665711)
  u = BlzCreateUnitWithSkin(p, 1853120886, -4480.0, 2304.0, 270.000, 1853120886)
  SetUnitColor(u, ConvertPlayerColor(0))
  u = BlzCreateUnitWithSkin(p, 1852206952, 1088.0, 1088.0, 270.000, 1852206952)
  u = BlzCreateUnitWithSkin(p, 1853120886, -4800.0, -3392.0, 270.000, 1853120886)
  SetUnitColor(u, ConvertPlayerColor(0))
  u = BlzCreateUnitWithSkin(p, 1853120886, -1536.0, 4416.0, 270.000, 1853120886)
  SetUnitColor(u, ConvertPlayerColor(0))
  u = BlzCreateUnitWithSkin(p, 1853120886, 4480.0, -3392.0, 270.000, 1853120886)
  SetUnitColor(u, ConvertPlayerColor(0))
end

--===========================================================================
function CreatePlayerBuildings()
end

--===========================================================================
function CreatePlayerUnits()
end

--===========================================================================
function CreateAllUnits()
  CreateNeutralPassiveBuildings()
  CreatePlayerBuildings()
  CreateNeutralHostile()
  CreatePlayerUnits()
end

--***************************************************************************
--*
--*  Triggers
--*
--***************************************************************************

--===========================================================================
-- Trigger: Melee Initialization
--
-- Default melee game initialization for all players
--===========================================================================
function Trig_Melee_Initialization_Actions()
  MeleeStartingVisibility()
  MeleeStartingHeroLimit()
  MeleeGrantHeroItems()
  MeleeStartingResources()
  MeleeClearExcessUnits()
  MeleeStartingUnits()
  MeleeStartingAI()
end

--===========================================================================
function InitTrig_Melee_Initialization()
  gg_trg_Melee_Initialization = CreateTrigger()
  TriggerAddAction(gg_trg_Melee_Initialization, Trig_Melee_Initialization_Actions)
end

--===========================================================================
-- Trigger: Shimmering Portal
--===========================================================================
--TESH.scrollpos=0
--TESH.alwaysfold=0
-- =====================================================================================================
--							* Spell - Shimmering Portal
--									by Dark Dragon
--
--
--	Installation:
--
-- (1) Install "DD Library" to your map if you have not done so already from my previous spells
-- (2) Copy "Shimmering Portal" trigger to your map
-- (3) Copy "Shimmering Portal" and "Portal (Dummy)" to your map
-- (4) Edit spell to your will in object editor and here below in trigger editor
-- (5) Enjoy!
-- =====================================================================================================





-- ============================================================================================
-- Change me from /* to // and then back to /* after saving and reopening the map
-- |
-- ˇ

-- ^
-- |
-- Change me from */ to // and then back to */ after saving and reopening the map
-- ============================================================================================
--===========================================================================
-- Trigger: DD Library
--===========================================================================
--==========================================================================
--                  Dark Dragon Library Code v1.3
--
--	 				* Made on Warcraft III v1.30.4
--
--  Installation:
--                  
--                  1) Export instantdummy.mdx from this map and import it to your map, leave path at "war3mapImported/instantdummy.mdx"
--                  2) Copy this trigger to your map, save your map and then change below line "// external ... " or copy "DD Dummy" and paste it in your map
--					3) Copy and paste "Unit Chill" ability from this map to your map
--					4) Match the rawcodes below to your map or use same ones as below
--
-- Credits:
--          ('Vexorian' - dummy.mdx)
--============================================================================

-- *** Change "// external" to "//! external", save your map, close map, change back from "//!" to "//" and save map again.
-- *** This will create dummy in your map
--
-- ==================================
-- external ObjectMerger w3u ushd dumy uabi "Aloc,Amrf" uble 0 ucbs 0 ucpt 0 umxp 0 umxr 0 umdl "war3mapImported\instantdummy.mdx" ushu "None" umvh 0 umvs 1 umas 1 umis 1 ucol 0 ufoo 0 uhom 1 umpi 10000 umpm 10000 usid 1 usin 1 unam "DD Dummy"
-- ==================================














--===========================================================================
-- Trigger: TimerUtils
--===========================================================================
--TESH.scrollpos=21
--TESH.alwaysfold=0

--===========================================================================
function InitCustomTriggers()
  InitTrig_Melee_Initialization()
  --Function not found: call InitTrig_Shimmering_Portal()
  --Function not found: call InitTrig_DD_Library()
  --Function not found: call InitTrig_TimerUtils()
end

--===========================================================================
function RunInitializationTriggers()
  ConditionalTriggerExecute(gg_trg_Melee_Initialization)
end

--***************************************************************************
--*
--*  Players
--*
--***************************************************************************

function InitCustomPlayerSlots()

  -- Player 0
  SetPlayerStartLocation(Player(0), 0)
  SetPlayerColor(Player(0), ConvertPlayerColor(0))
  SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
  SetPlayerRaceSelectable(Player(0), true)
  SetPlayerController(Player(0), MAP_CONTROL_USER)

  -- Player 1
  SetPlayerStartLocation(Player(1), 1)
  SetPlayerColor(Player(1), ConvertPlayerColor(1))
  SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
  SetPlayerRaceSelectable(Player(1), true)
  SetPlayerController(Player(1), MAP_CONTROL_USER)

  -- Player 2
  SetPlayerStartLocation(Player(2), 2)
  SetPlayerColor(Player(2), ConvertPlayerColor(2))
  SetPlayerRacePreference(Player(2), RACE_PREF_UNDEAD)
  SetPlayerRaceSelectable(Player(2), true)
  SetPlayerController(Player(2), MAP_CONTROL_USER)

  -- Player 3
  SetPlayerStartLocation(Player(3), 3)
  SetPlayerColor(Player(3), ConvertPlayerColor(3))
  SetPlayerRacePreference(Player(3), RACE_PREF_NIGHTELF)
  SetPlayerRaceSelectable(Player(3), true)
  SetPlayerController(Player(3), MAP_CONTROL_USER)

  -- Player 4
  SetPlayerStartLocation(Player(4), 4)
  SetPlayerColor(Player(4), ConvertPlayerColor(4))
  SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
  SetPlayerRaceSelectable(Player(4), true)
  SetPlayerController(Player(4), MAP_CONTROL_USER)

  -- Player 5
  SetPlayerStartLocation(Player(5), 5)
  SetPlayerColor(Player(5), ConvertPlayerColor(5))
  SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
  SetPlayerRaceSelectable(Player(5), true)
  SetPlayerController(Player(5), MAP_CONTROL_USER)

  -- Player 6
  SetPlayerStartLocation(Player(6), 6)
  SetPlayerColor(Player(6), ConvertPlayerColor(6))
  SetPlayerRacePreference(Player(6), RACE_PREF_UNDEAD)
  SetPlayerRaceSelectable(Player(6), true)
  SetPlayerController(Player(6), MAP_CONTROL_USER)

  -- Player 7
  SetPlayerStartLocation(Player(7), 7)
  SetPlayerColor(Player(7), ConvertPlayerColor(7))
  SetPlayerRacePreference(Player(7), RACE_PREF_NIGHTELF)
  SetPlayerRaceSelectable(Player(7), true)
  SetPlayerController(Player(7), MAP_CONTROL_USER)

  -- Player 8
  SetPlayerStartLocation(Player(8), 8)
  SetPlayerColor(Player(8), ConvertPlayerColor(8))
  SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
  SetPlayerRaceSelectable(Player(8), true)
  SetPlayerController(Player(8), MAP_CONTROL_USER)

  -- Player 9
  SetPlayerStartLocation(Player(9), 9)
  SetPlayerColor(Player(9), ConvertPlayerColor(9))
  SetPlayerRacePreference(Player(9), RACE_PREF_ORC)
  SetPlayerRaceSelectable(Player(9), true)
  SetPlayerController(Player(9), MAP_CONTROL_USER)

  -- Player 10
  SetPlayerStartLocation(Player(10), 10)
  SetPlayerColor(Player(10), ConvertPlayerColor(10))
  SetPlayerRacePreference(Player(10), RACE_PREF_UNDEAD)
  SetPlayerRaceSelectable(Player(10), true)
  SetPlayerController(Player(10), MAP_CONTROL_USER)

  -- Player 11
  SetPlayerStartLocation(Player(11), 11)
  SetPlayerColor(Player(11), ConvertPlayerColor(11))
  SetPlayerRacePreference(Player(11), RACE_PREF_NIGHTELF)
  SetPlayerRaceSelectable(Player(11), true)
  SetPlayerController(Player(11), MAP_CONTROL_USER)

end

function InitCustomTeams()
  -- Force: TRIGSTR_002
  SetPlayerTeam(Player(0), 0)
  SetPlayerTeam(Player(1), 0)
  SetPlayerTeam(Player(2), 0)
  SetPlayerTeam(Player(3), 0)
  SetPlayerTeam(Player(4), 0)
  SetPlayerTeam(Player(5), 0)
  SetPlayerTeam(Player(6), 0)
  SetPlayerTeam(Player(7), 0)
  SetPlayerTeam(Player(8), 0)
  SetPlayerTeam(Player(9), 0)
  SetPlayerTeam(Player(10), 0)
  SetPlayerTeam(Player(11), 0)

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

--***************************************************************************
--*
--*  Main Initialization
--*
--***************************************************************************

--===========================================================================
function main()
	SetRandomSeed(0xf0f0)


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

	GetLocalPlayer_CONST = GetLocalPlayer()
  jasshelper__initstructs1010750()
  AAATimerUtils__init()
  DDLib__onInit()
  ShimmeringPortal__onInit()

  InitGlobals()
  InitTrig_Melee_Initialization()
  ConditionalTriggerExecute(gg_trg_Melee_Initialization)

end

--***************************************************************************
--*
--*  Map Configuration
--*
--***************************************************************************

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




--Struct method generated initializers/callers:

--Functions for BigArrays:
function sa___prototype6_AAATimerUtils__init()

  local i = 0
  local o = -1
  local oops = false
  if (AAATimerUtils__didinit) then
    return true
  else
    AAATimerUtils__didinit = true
  end
  AAATimerUtils__ht = InitHashtable()
  while true do
    if (i == AAATimerUtils__QUANTITY) then
      break
    end
    s__AAATimerUtils__tT[i] = CreateTimer()
    SaveInteger(AAATimerUtils__ht, 0, GetHandleId((s__AAATimerUtils__tT[i])), (AAATimerUtils__HELD))
    i = i + 1
  end
  AAATimerUtils__tN = AAATimerUtils__QUANTITY
  return true
end

function jasshelper__initstructs1010750()
  st___prototype6[1] = CreateTrigger()
  TriggerAddAction(st___prototype6[1], sa___prototype6_AAATimerUtils__init)
  TriggerAddCondition(st___prototype6[1], Condition(sa___prototype6_AAATimerUtils__init))

  s__AAATimerUtils__InitStruct_AAATimerUtils__Init___onInit()













  s__ShimmeringPortal__portal_onInit()
end

