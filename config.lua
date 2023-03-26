Config = {}

Config.CommandPermission = 'god' -- permission level for creating new doors
Config.AdminAccess = false -- Enable admins to unlock any door
Config.AdminPermission = 'god' -- The permission needed to get AdminAccess if it is enabled
Config.Warnings = false -- if true it will show warnings in the console when certain requirements aren't met
Config.FallbackDistance = 3.0 -- Distance to fall back on when it is not set
Config.EnableSounds = true -- Enable sounds when unlocking/locking doors (doors triggered by scripts can have the sound manually disabled)
Config.EnableAnimation = true -- Enable the animation when unlocking/locking doors (doors triggered by scripts can have the animation manually disabled)
Config.SaveDoorDialog = true -- Saves the door dialogue popup between door saves
Config.PersistentDoorStates = false -- Persists the door state between server restarts
Config.PersistentSaveInternal = 60000 -- How often door states are saved to the file system, in miliseconds. 

Config.ChangeColor = true -- Change the color of the box of the popup text based on if it is locked or not
Config.DefaultColor = 'rgb(19, 28, 74)' -- The default color of the box of the popup text if Config.ChangeColor is false
Config.LockedColor = 'rgb(219 58 58)' -- The color of the box of the popup text if Config.ChangeColor is true and the door is locked
Config.UnlockedColor = 'rgb(27 195 63)' -- The color of the box of the popup text if Config.ChangeColor is true and the door is unlocked
Config.UseDoorLabelText = false -- Will use the LABEL field as the nui text instead of locked/unlocked
Config.DoorDebug = false -- Enable DRAWTEXT in the world at the coords where the door 'center' is
Config.RemoteTriggerDistance = 15.0 -- This is how far from your camera the raycast will go to try to hit something solid
Config.RemoteTriggerMinDistance = 5.0 -- This is the minimum distance required for the raycast hit to count near a door. It will take the larger two between this and 'distance' option

Config.Consumables = { ['ticket'] = 1, ['paperclip'] = 1 } -- The items will get removed once used on a door that has the item on it

--[[ -- Configuration Options
Config.DoorList['configname-identifier'] = {
	fixText = false, -- Adjusts guess of center of door
	textCoords = vector3(x, y, z) -- Set the text coordinates to a specific location
	setText = true -- Use with above setting
		distance = 2.0, -- Max interact distance
		lockpick = true, -- Alows for lockpicking
	allAuthorized = true, -- Anyone can use door
	authorizedJobs = { ['police']=0, ['bcso']=0, ['sasp]=0 } -- Authorize door access based on job grade
	authorizedGangs = { ['vagos']=0, ['ballas']=0 } -- Authorize door access based on gang grade
	authorizedCitizenIDs = { 'ABC123', 'DEF456' } -- Authorize door access based on citizenid
	items = {'item_1','item_2'} -- Authorize based on items. Must have all items in this list.
	fixText = false, -- Adjusts guess of center of door
		doorLabel = 'Cloakroom', -- Label of room that shows up when nearby
		locked = true, -- Default lock state
		remoteTrigger = true, -- If you want to be able to remote trigger a door with H, put this here 
		audioRemote = true, -- Play sound from the player instead of the door
		audioLock = {['file'] = 'metal-locker.ogg', ['volume'] = 0.6}, -- Play sound on door lock
		audioUnlock = {['file'] = 'metallic-creak.ogg', ['volume'] = 0.7}, -- Play sound on door unlock
		autoLock = 1000, -- Auto lock after this many miliseconds
		doorRate = 1.0,  -- Time till auto closes? Needs more testing
	cantUnlock = true -- Set to true to not allow the player to unlock the door, only lock it. This means a script will have to trigger the unlock.
	pickable = true, -- Can use a lockpick to unlock, only need if true
	hideLabel = true, -- Set to true to hide the popup label, for hiding doors ;)
		remoteTrigger = true, -- If you want to be able to remote trigger a door with H, put this here 
} 
]]

Config.DoorStates = {}
Config.DoorList = {
	-- Paleto Door 1 opened with security card A
	{
		objName = 'v_ilev_cbankvaulgate01',
		objCoords  = vec3(-105.77, 6472.59, 31.81),
		textCoords = vec3(-105.77, 6472.59, 31.81),
		objYaw = 45.0,
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 1.5
	},
	-- Paleto Door 2 opened with thermite
	{
		objName = 'v_ilev_cbankvaulgate02',
		objCoords  = vec3(-106.26, 6476.01, 31.98),
		textCoords = vec3(-105.5, 6475.08, 31.99),
		objYaw = -45.0,
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 1.5
	},
	-- Fleeca Door opened with lockpick
	-- Chumash
	{
		objName = 'v_ilev_gb_vaubar',
		objCoords  = vec3(-2956.18, 483.96, 16.02),
		textCoords = vec3(-2956.18, 483.96, 16.02),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.5
	},
	-- Prison Door 1
	{
		objName = 'prop_gate_prison_01',
		objCoords  = vec3(1844.9, 2604.8, 44.6),
		textCoords = vec3(1844.9, 2608.5, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 13
	},
	-- Prison Door 2
	{
		objName = 'prop_gate_prison_01',
		objCoords  = vec3(1818.5, 2604.8, 44.6),
		textCoords = vec3(1818.5, 2608.4, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 13
	},
	-- Prison Door 3
	{
		objName = 'prop_gate_prison_01',
		objCoords = vec3(1799.237, 2616.303, 44.6),
		textCoords = vec3(1795.941, 2616.969, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 10
	},
	------------------------------------------Always add new doors below this line for your bank robberies to work!!!---------------------------------
				------------------------------------------End Fixed Doors!!!---------------------------------
	
	-- Bureau Paleto Bay
	-- lobby, main
	{
		textCoords = vector3(-443.59, 6016.3, 31.72),
		authorizedJobs = { 'police' },
		locked = false,
		pickable = true,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_shrf2door',
				objYaw = 135.0,
				objCoords = vector3(-444.5, 6017.06, 31.87),
			},
			{
				objName = 'v_ilev_shrf2door',
				objYaw = -45.0,
				objCoords = vector3(-442.66, 6015.22, 31.87)
			}
		}
	},
	-- lobby, left (to office hallway)
	{
		textCoords = vector3(-441.82, 6011.77, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_bk_door2',
				objYaw = -135.0,
				objCoords = vector3(-442.82, 6010.93, 31.87),
			},
			{
				objName = 'v_ilev_bk_door2',
				objYaw = 45.0,
				objCoords = vector3(-440.98, 6012.77, 31.87)
			}
		}
	},
	-- lobby, back (to rear hallway)
	{
		textCoords = vector3(-448.71, 6007.62, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.5,
		doors = {
			{
				objName = 'v_ilev_ss_door7',
				objYaw = -135.0,
				objCoords = vector3(-449.55, 6008.56, 31.81),
			},
			{
				objName = 'v_ilev_ss_door8',
				objYaw = -45.0,
				objCoords = vector3(-447.71, 6006.72, 31.81)
			}
		}
	},
	-- Lobby, interrorgation viewing
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 135.0,
		objCoords  = vector3(-449.79, 6015.45, 31.87),
		textCoords = vector3(-450.38, 6015.82, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 2.0,
	},
	-- Office hallway, left (general)
	{
		objName = 'v_ilev_cf_officedoor',
		objYaw = 45.0,
		objCoords  = vector3(-437.69, 6008.36, 31.86),
		textCoords = vector3(-438.27, 6007.83, 31.72),
		authorizedJobs = { 'police' },
		locked = false,
		pickable = true,
		distance = 2.0,
	},
	-- Office hallway, right (sheriff)
	{
		objName = 'v_ilev_cf_officedoor',
		objYaw = 45.0,
		objCoords  = vector3(-441.05, 6005.0, 31.86),
		textCoords = vector3(-441.57, 6004.45, 31.72),
		authorizedJobs = { 'police' },
		locked = false,
		pickable = true,
		distance = 2.0,
	},

	-- Rear hallway, left
	{
		objName = 'v_ilev_gc_door01',
		objYaw = 135.0,
		objCoords  = vector3(-447.23, 6002.33, 31.84),
		textCoords = vector3(-446.72, 6001.92, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 2.0,
	},
	-- Rear hallway, right
	{
		objName = 'v_ilev_gc_door01',
		objYaw = -45.0,
		objCoords  = vector3(-450.98, 6006.07, 31.99),
		textCoords = vector3(-451.36, 6006.6, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 2.0,
	},
	-- Interrogation room
	{
		objName = 'v_ilev_cd_entrydoor',
		objYaw = 10.0,
		objCoords  = vector3(-454.54, 6011.26, 31.87),
		textCoords = vector3(-453.94, 6011.5, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 2.0,
	},
	-- Armory main
	{
		objName = 'v_ilev_fingate',
		objYaw = -45.0,
		objCoords  = vector3(-437.61, 5992.82, 31.94),
		textCoords = vector3(-437.16, 5992.3, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.5,
	},
	-- Armory interior (to stash)
	{
		objName = 'prop_fnclink_03gate5',
		objYaw = -45.0,
		objCoords  = vector3(-441.48, 5990.24, 32.33),
		textCoords = vector3(-440.87, 5989.55, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.5,
	},
	-- Cells main
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -45.0,
		objCoords  = vector3(-432.18, 5992.12, 31.87),
		textCoords = vector3(-432.63, 5992.55, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.5,
	},
	-- Cell right
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -45.0,
		objCoords  = vector3(-428.06, 5996.67, 31.87),
		textCoords = vector3(-428.57, 5997.11, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.5,
	},
	-- Cell left
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -45.0,
		objCoords  = vector3(-431.19, 5999.74, 31.87),
		textCoords = vector3(-431.65, 6000.17, 31.72),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.5,
	},
	-- PALETO FIRE STATION
	-- Parking lot main gate
	{
		fixText = true,
		objName = 'prop_fnclink_02gate1',
		objYaw = -135.0,
		objCoords  = vector3(-384.5, 6112.09, 31.66),
		textCoords = vector3(-385.83, 6110.69, 31.44),
		authorizedJobs = { 'police', 'ambulance' },
		--doorLabel = 'Cloakroom', -- Label of room that shows up when nearby
		locked = true, -- Default lock state
		remoteTrigger = true, -- If you want to be able to remote trigger a door with H, put this here 
		pickable = false,
		distance = 4.5
	},
  -- Bay interior access
  {
		objName = 'v_ilev_ph_gendoor003',
		objYaw = 315.0,
		objCoords  = vector3(-363.65, 6109.58, 31.78),
		textCoords = vector3(-363.65, 6109.58, 31.78),
		authorizedJobs = { 'police', 'ambulance' },
		locked = true,
		pickable = false,
		distance = 2.5,
	},
  -- Bay door east
  {
		objName = '425179307',
		objYaw = 225.0,
		objCoords  = vector3(-366.21, 6123.85, 32.35),
		textCoords = vector3(-366.21, 6123.85, 32.35),
		authorizedJobs = { 'police', 'ambulance' },
		locked = true,
		pickable = false,
    remoteTrigger = true,
		distance = 4.5,
	},
  -- Bay door west
  {
		objName = '425179307',
		objYaw = 225.0,
		objCoords  = vector3(-369.62, 6120.45, 32.35),
		textCoords = vector3(-369.62, 6120.45, 32.35),
		authorizedJobs = { 'police', 'ambulance' },
		locked = true,
		pickable = false,
    remoteTrigger = true,
		distance = 4.5,
	},
  -- Reception office rear
  {
		objName = 'v_ilev_ph_gendoor',
		objYaw = 45.0,
		objCoords  = vector3(-371.5, 6116.01, 31.79),
		textCoords = vector3(-371.5, 6116.01, 31.79),
		authorizedJobs = { 'police', 'ambulance' },
		locked = false,
		pickable = false,
		distance = 1.5,
	},
  -- Reception office side
  {
		objName = 'v_ilev_ph_gendoor',
		objYaw = 135.0,
		objCoords  = vector3(-376.81, 6113.19, 31.79),
		textCoords = vector3(-376.81, 6113.19, 31.79),
		authorizedJobs = { 'police', 'ambulance' },
		locked = false,
		pickable = false,
		distance = 1.5,
	},
  -- Lobby interior
  {
		objName = 'v_ilev_ph_gendoor003',
		objYaw = 225.0,
		objCoords  = vector3(-378.89, 6111.86, 31.78),
		textCoords = vector3(-378.89, 6111.86, 31.78),
		authorizedJobs = { 'police', 'ambulance' },
		locked = true,
		pickable = false,
		distance = 1.5,
	},
  -- Break room main
  {
		textCoords = vector3(-367.73, 6107.97, 31.64),
		authorizedJobs = { 'police', 'ambulance' },
		locked = false,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor003',
				objYaw = 315.0,
				objCoords = vector3(-366.87, 6107.12, 31.78),
			},
			{
				objName = 'v_ilev_ph_gendoor003',
				objYaw = 135.0,
				objCoords = vector3(-368.71, 6108.95, 31.78)
			}
		}
	},
  -- Supplies room
  {
		objName = 'v_ilev_fib_door1',
		objYaw = 45.0,
		objCoords  = vector3(-365.71, 6105.01, 31.79),
		textCoords = vector3(-365.71, 6105.01, 31.79),
		authorizedJobs = { 'police', 'ambulance' },
		locked = false,
		pickable = false,
		distance = 1.5,
	},
  -- changeroom
  {
		objName = 'v_ilev_fib_door1',
		objYaw = 45.0,
		objCoords  = vector3(-368.03, 6012.69, 31.79),
		textCoords = vector3(-368.03, 6012.69, 31.79),
		authorizedJobs = { 'police', 'ambulance' },
		locked = false,
		pickable = false,
		distance = 1.5,
	},
  -- Breakroom exterior
  {
		objName = 'v_ilev_phroofdoor',
		objYaw = 135.0,
		objCoords  = vector3(-369.94, 6101.59, 31.8),
		textCoords = vector3(-369.94, 6101.59, 31.8),
		authorizedJobs = { 'police', 'ambulance' },
		locked = true,
		pickable = false,
		distance = 2.5,
	},
  -- Training room exterior (2F)
  {
		objName = 'v_ilev_gtdoor',
		objYaw = 225.0,
		objCoords  = vector3(-366.43, 6104.32, 35.59),
		textCoords = vector3(-366.43, 6104.32, 35.59),
		authorizedJobs = { 'police', 'ambulance' },
		locked = true,
		pickable = false,
		distance = 1.5,
	},
  -- CMD offices (2F)
  {
		objName = 'v_ilev_bank4door02',
		objYaw = 45.0,
		objCoords  = vector3(-370.69, 6109.98, 35.79),
		textCoords = vector3(-370.69, 6109.98, 35.79),
		authorizedJobs = { 'police', 'ambulance' },
		locked = true,
		pickable = false,
		distance = 1.5,
	},
	---------------------------------------------------
	-- Bolingbroke Extra
	-- To Offices
	---------------------------------------------------
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 90.0,
		objCoords  = vec3(1819.129, 2593.64, 46.09929),
		textCoords = vec3(1843.3, 2579.39, 45.98),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	-- To Changingroom
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 360.0,
		objCoords  = vec3(1827.365, 2587.547, 46.09929),
		textCoords = vec3(1835.76, 2583.15, 45.95),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	-- To CrimChangingroom
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 90.0,
		objCoords  = vec3(1826.466, 2585.271, 46.09929),
		textCoords = vec3(1835.77, 2589.76, 45.95),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 1.0
	},
	-- To CheckingRoom
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vec3(1827.521, 2583.905, 45.28576),
		textCoords = vec3(1828.638, 2584.675, 45.95233),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2
	},
	-- Checking Gate
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 270.0,
		objCoords  = vec3(1837.714, 2595.185, 46.09929),
		textCoords = vec3(1837.714, 2595.185, 46.09929),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 1.5
	},
	-- To CheckingRoomFromCheck
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 90.0,
		objCoords  = vec3(1837.697, 2585.24, 46.09929),
		textCoords = vec3(1837.697, 2585.24, 46.09929),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 1.5
	},
	-- To SecondCheckGate
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 90.0,
		objCoords  = vec3(1845.198, 2585.24, 46.09929),
		textCoords = vec3(1845.198, 2585.24, 46.09929),
		authorizedJobs = { 'police' },
		locked = false,
		pickable = false,
		distance = 1.5
	},
	-- To MainHall
	{
		objName = 'v_ilev_ph_door002',
		objYaw = 90.0,
		objCoords  = vec3(1791.18, 2593.11, 546.15),
		textCoords = vec3(1791.18, 2593.11, 546.15),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	-- To VisitorRoom
	{
		objName = 'prison_prop_door2',
		objYaw = 90.0,
		objCoords  = vec3(1784, 2599, 46),
		textCoords = vec3(1785.808, 2590.02, 44.79703),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	{
		objName = 'prison_prop_door1',
		objYaw = 0.0,
		objCoords  = vec3(1786, 2600, 46),
		textCoords = vec3(1785.808, 2590.02, 44.79703),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	{
		textCoords = vec3(1785.83, 2609.59, 45.99),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'prison_prop_door1',
				objYaw = 182.0,
				objCoords = vec3(1785, 2610, 46),
			},

			{
				objName = 'prison_prop_door1a',
				objYaw = 0.0,
				objCoords = vec3(1787, 2610, 46),
			}
		}
	},
	{
		textCoords = vec3(1779.67, 2601.83, 50.71),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'prison_prop_door2',
				objYaw = 1.5,
				objCoords = vec3(1781, 2602, 51),
			},

			{
				objName = 'prison_prop_door2',
				objYaw = 180.0,
				objCoords = vec3(1778, 2602, 51),
			}
		}
	},
	{
		objName = 'prison_prop_door2',
		objYaw = 0.0,
		objCoords  = vec3(1780, 2596, 51),
		textCoords = vec3(1785.808, 2590.02, 44.79703),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	{
		objName = 'prison_prop_door1',
		objYaw = 0.0,
		objCoords  = vec3(1787, 2621, 46),
		textCoords = vec3(1785.808, 2590.02, 44.79703),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	{
		objName = 'prison_prop_door2',
		objYaw = 270.0,
		objCoords  = vec3(1788, 2606, 51),
		textCoords = vec3(1785.808, 2590.02, 44.79703),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	{
		textCoords = vec3(1791.08, 2593.76, 46.18),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'prison_prop_door1',
				objYaw = 272.0,
				objCoords = vec3(1791.1140136719, 2592.50390625, 46.3132473297119),
			},

			{
				objName = 'prison_prop_door1a',
				objYaw = 90.0,
				objCoords = vec3(1791, 2595, 46),
			}
		}
	},
	-- To DoctorRoom
	{
		objName = 'v_ilev_ph_gendoor002',
		objYaw = 90.0,
		objCoords  = vec3(1786.4, 2579.8, 45.97),
		textCoords = vec3(1786.4, 2579.8, 45.97),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 1.0
	},
	-- HallGate
	{
		objName = 'prison_prop_door2',
		objYaw = 0.0,
		objCoords  = vec3(1786, 2567, 46),
		textCoords = vec3(1778.91, 2568.91, 46.07),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	-- HallGate 2
	{
		objName = 'prison_prop_door1',
		objYaw = 270.0,
		objCoords  = vec3(1792, 2551, 46),
		textCoords = vec3(1773.49, 2568.9, 46.07),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	{
		textCoords = vec3( 1781.72, 2552.07, 49.57),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.5,
		doors = {
			{
				objName = 'prison_prop_door2',
				objYaw = 269.5,
				objCoords = vec3(1782, 2551, 50),
			},

			{
				objName = 'prison_prop_door2',
				objYaw = 90.0,
				objCoords = vec3(1782, 2553, 50),
			}
		}
	},
	-- Gate To Work
	{
		objName = 'prison_prop_door2',
		objYaw = 90.0,
		objCoords  = vec3(1786, 2552, 50),
		textCoords = vec3(1760.89, 2578.51, 46.07),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	-- Cell Maindoor
	{
		objName = 'prison_prop_door2',
		objYaw = 180.0,
		objCoords  = vec3(1785, 2550, 46),
		textCoords = vec3(1760.89, 2578.51, 46.07),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	{
		objName = 'prison_prop_door1a',
		objYaw = 270.0,
		objCoords  = vec3(1776, 2551, 46),
		textCoords = vec3(1760.89, 2578.51, 46.07),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 2.0
	},
	-- Police front gate
	{
		objName = 'prop_facgate_07b',
		objYaw = -90.0,
		objCoords  = vec3(419.99, -1025.0, 28.99),
		textCoords = vec3(419.9, -1021.04, 30.5),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = false,
		distance = 20
	},

	-- SANDY SHORES --
	-- BCSO lobby
	{
		objName = 'v_ilev_shrfdoor',
		objYaw = 30.0,
		objCoords  = vector3(1855.7, 3683.9, 34.59),
		textCoords = vector3(1855.18, 3683.49, 34.27),
		authorizedJobs = { 'police' },
		locked = false,
		pickable = true,
		distance = 1.75
	},
	-- Lobby, left (to cells)
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 300.0,
		objCoords  = vector3(1850.45, 3683.38, 34.4),
		textCoords = vector3(1850.45, 3683.38, 34.4),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.75
	},
	-- Lobby, back (left)
	{
		objName = 'v_ilev_rc_door2',
		objYaw = -150.0,
		objCoords  = vector3(1848.86, 3690.85, 34.4),
		textCoords = vector3(1848.86, 3690.85, 34.4),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.75
	},
	-- Lobby, right (to offices)
	{
		objName = 'v_ilev_rc_door2',
		objYaw = -150.0,
		objCoords  = vector3(1857.47, 3690.0, 34.4),
		textCoords = vector3(1857.47, 3690.0, 34.4),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.75
	},
	-- Lobby, sheriff office
	{
		objName = 'v_ilev_shrfdoor',
		objYaw = -60.0,
		objCoords  = vector3(1859.52, 3687.89, 34.57),
		textCoords = vector3(1859.52, 3687.89, 34.57),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.75
	},
	-- Offices, back door (exit)
	{
		objName = 'v_ilev_gc_door01',
		objYaw = -150.0,
		objCoords  = vector3(1854.11, 3700.16, 34.4),
		textCoords = vector3(1854.11, 3700.16, 34.4),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.75
	},
	-- Offices, to changeroom
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 120.0,
		objCoords  = vector3(1852.65, 3694.1, 34.4),
		textCoords = vector3(1852.65, 3694.1, 34.4),
		authorizedJobs = { 'police' },
		locked = false,
		pickable = true,
		distance = 1.75
	},
	-- Changeroom to armory/cells
	{
		objName = 'v_ilev_rc_door2',
		objYaw = 120.0,
		objCoords  = vector3(1849.39, 3692.22, 34.4),
		textCoords = vector3(1849.39, 3692.22, 34.4),
		authorizedJobs = { 'police' },
		locked = false,
		pickable = true,
		distance = 1.75
	},
	-- Armory main door
	{
		objName = 'v_ilev_cd_entrydoor',
		objYaw = -60.0,
		objCoords  = vector3(1844.32, 3694.14, 34.4),
		textCoords = vector3(1844.32, 3694.14, 34.4),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.75
	},

	-- Armory to cells
	{
		objName = 'v_ilev_rc_door2',
		objYaw = -60.0,
		objCoords  = vector3(1846.0, 3691.08, 34.4),
		textCoords = vector3(1846.0, 3691.08, 34.4),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.75
	},
	-- Cell left
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 120.0,
		objCoords  = vector3(1844.86, 3688.57, 34.4),
		textCoords = vector3(1844.86, 3688.57, 34.4),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.75
	},
	-- Cell right
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 120.0,
		objCoords  = vector3(1846.65, 3685.48, 34.4),
		textCoords = vector3(1846.65, 3685.48, 34.4),
		authorizedJobs = { 'police' },
		locked = true,
		pickable = true,
		distance = 1.75
	},
}
