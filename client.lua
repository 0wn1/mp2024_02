local Translation = Lang['en'] -- pt, en, es

CreateThread(function()
	SetTimeout(5000,function()
		for Hash, Name in pairs(Translation or {}) do
			AddTextEntry(Hash, Name)
		end
	end)
	
	local IPLs = {
		'M24_2_int_placement', -- Check "Interiors" vector3 coords below
		'm24_2_airstrip', -- -2022.6, 1468.6, 267.2
		'm24_2_cargoship_overlay', -- -304.7, -4040.7, 9.9
		'm24_2_garment_factory', -- 743.5, -954.5, 26.1
		'm24_2_garment_factory_door', -- 718.0, -975.4, 25.4
		'm24_2_hanger_additions', -- 2145.8, 4779.5, 40.8
		'm24_2_legacy_fixes', -- 122.0, 13.0, 66.9
		'm24_2_mfh_finale_ground', -- 669.8, 3046.1, 43.6
		'm24_2_prop_m42_hangerdoor_02a' -- -2624.6, 2962.9, 8.0
	}

	local Interiors = {
		{
			Coord = vector3(745.7, -993.1, -47.3),
			Entities = {
				'SET_CARGO',
				'SET_MALWARE_DRIVE',
				'SET_PENT_DRONE',
				'SET_PENT_EMP',
				'SET_PENT_ROB_EGG',
				'SET_PENT_ROB_IDOL_01',
				'SET_PENT_ROB_IDOL_02',
				'SET_RC_CONTROLLER',
				'SET_SMARTKEY',
				'SET_SONAR',
				'SET_THERMAL',
				'SET_WHISTLE_DRIVE',
				'SET_ZANC_ARMOR',
				'SET_ZANC_KEYCARD',
				'SET_ZANC_SCARAB'
			}
		},
		{ Coord = vector3(750.9, -990.0, -67.7) },
		{
			Coord = vector3(2150.0, 4787.0, -47.3),
			Entities = {
				'SET_24_2',
				'SET_AMMO',
				'SET_BED',
				'SET_INTEL',
				'SET_LAPTOP',
				'SET_MOGUL',
				'SET_WEAPONS'
			}
		}
	}

	for i = 1, #IPLs do
		RequestIpl(IPLs[i])
	end

	for i = 1, #Interiors do
		local Position = Interiors[i]['Coord']
		local Interior = GetInteriorAtCoords(Position['x'], Position['y'], Position['z'])
		if IsValidInterior(Interior) then
			if Interiors[i]['Entities'] then
				for _, Entity in pairs(Interiors[i]['Entities']) do
					ActivateInteriorEntitySet(Interior,Entity)
				end
			end
			RefreshInterior(Interior)
		end
	end
end)