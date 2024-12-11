fx_version 'cerulean'
game 'gta5'

files { 'data/**/*.meta', 'data/**/*.xml', 'audio/**/*' }

client_scripts { 'locales/*.lua', 'client.lua' }

-- VEHICLES
data_file 'WEAPONINFO_FILE' 'data/vehicles/vehicleweapons_**.meta'
data_file 'HANDLING_FILE' 'data/vehicles/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/vehicles/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/vehicles/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/vehicles/carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'data/vehicles/vehiclelayouts.meta'
data_file 'CONTENT_UNLOCKING_META_FILE' 'data/vehicles/contentunlocks.meta'
data_file 'VEHICLE_SHOP_DLC_FILE' 'data/vehicles/shop_vehicle.meta'

-- AUDIO
data_file 'AUDIO_GAMEDATA' 'audio/dlc24-2_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audio/dlc24-2_sounds.dat'
data_file 'AUDIO_SYNTHDATA' 'audio/dlc24-2_amp.dat'
data_file 'AUDIO_WAVEPACK' 'audio/sfx/dlc_24-2'
-- data_file 'AUDIO_SPEECHDATA' 'audio/dlc24-2_speech.dat'
-- data_file 'AUDIO_DYNAMIXDATA' 'audio/dlc24-2_mix.dat'

-- WEAPONS
-- data_file 'WEAPON_METADATA_FILE' 'data/weapons/weaponArchetypes.meta'
-- data_file 'WEAPON_SHOP_INFO_METADATA_FILE' 'data/weapons/shop_weapon.meta'
-- data_file 'LOADOUTS_FILE' 'data/weapons/loadouts.meta'
-- data_file 'PED_PERSONALITY_FILE' 'data/weapons/pedpersonality.meta'
-- data_file 'DLC_WEAPON_PICKUPS' 'data/weapons/pickups.meta'
-- data_file 'WEAPONINFO_FILE' 'data/weapons/weapon_strickler.meta'
-- data_file 'WEAPON_ANIMATIONS_FILE' 'data/weapons/weaponanimations.meta'
-- data_file 'WEAPONCOMPONENTSINFO_FILE' 'data/weapons/weaponcomponents.meta'

-- EXPLOSION FX
data_file 'EXPLOSION_INFO_FILE' 'data/explosion/explosion.meta'
data_file 'EXPLOSIONFX_FILE' 'data/explosion/explosionfx.dat'
data_file 'SCRIPTFX_FILE' 'data/explosion/scriptfx.dat'

-- PEDS
data_file 'CLIP_SETS_FILE' 'data/anim/clip_sets.xml'
data_file 'PED_METADATA_FILE' 'data/peds/peds.meta'
-- data_file 'PED_FIRST_PERSON_ASSET_DATA' 'data/peds/first_person.meta'
-- data_file 'PED_FIRST_PERSON_ALTERNATE_DATA' 'data/peds/first_person_alternates.meta'
-- data_file 'PED_OVERLAY_FILE' 'data/peds/mp2024_02_overlays.xml'
-- data_file 'SHOP_PED_APPAREL_META_FILE' 'data/peds/mp_**_freemode_01_mp2024_02_shop.meta'
-- data_file 'ALTERNATE_VARIATIONS_FILE' 'data/peds/pedalternatevariations.meta'

-- INTERIOR
data_file 'INTERIOR_PROXY_ORDER_FILE' 'data/interior/interiorproxies.meta'