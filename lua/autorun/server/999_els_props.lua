local Emergency999 = {}

--[[
	CONFIG
]]--

Emergency999.Vehicles = {}

Emergency999.Vehicles["sfiretrucknewvcmod"] = {
	Skin = 1,
	BodyGroups = {
		{ 0, 0 }, -- car
		{ 1, 0 }, -- BumperF
		{ 2, 1 }, -- mirrors
		{ 3, 1 }, -- plate
		{ 4, 1 }, -- badge
	},
	Props = {
		[1] = {
			Model 	= "models/supermighty/british_firetruck_lightbar.mdl",
			Pos		= Vector(0, 106.8, 120.5),
			Ang		= Angle( 0, 90, 0 ),
			Scale	= 1,
		},
		[2] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(9, 133.6, 29),
			Ang		= Angle( 0, 175, 0 ),
			Scale	= 1,
		},
		[3] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(-36, 131.35, 29),
			Ang		= Angle( 0, 185, 0 ),
			Scale	= 1,
		},
		[4] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(-28, 132.85, 45.5),
			Ang		= Angle( 0, 183.3, 0 ),
			Scale	= 1,
		},
		[5] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(0, 134.25, 45.5),
			Ang		= Angle( 0, 178, 0 ),
			Scale	= 1,
		},
		[6] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(46.8, 123, 44),
			Ang		= Angle( 90, 115, 0 ),
			Scale	= 1,
		},
		[7] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(-45, 127, 44),
			Ang		= Angle( 90, -115, 0 ),
			Scale	= 1,
		},
		[8] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(-47.5, -31, 97.95),
			Ang		= Angle( 0, -90, 0 ),
			Scale	= 1,
		},
		[9] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(-47.5, -168, 97.95),
			Ang		= Angle( 0, -90, 0 ),
			Scale	= 1,
		},
		[10] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(47.5, -5, 97.95),
			Ang		= Angle( 0, 90, 0 ),
			Scale	= 1,
		},
		[11] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(47.5, -142, 97.95),
			Ang		= Angle( 0, 90, 0 ),
			Scale	= 1,
		},
		[12] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(52.45, -188.4, 92),
			Ang		= Angle( 0, 0, 0 ),
			Scale	= 1,
		},
		[13] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(-26.45, -188.4, 92),
			Ang		= Angle( 0, 0, 0 ),
			Scale	= 1,
		},
		[14] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(-26.45, -188.4, 88),
			Ang		= Angle( 0, 0, 0 ),
			Scale	= 1,
		},
		[15] = {
			Model 	= "models/noble/whelen_m9/whelen_m9.mdl",
			Pos		= Vector(52.45, -188.4, 88),
			Ang		= Angle( 0, 0, 0 ),
			Scale	= 1,
		},
	},
}

Emergency999.Vehicles["999ambulancevcmod"] = {
	Skin = 1,
	BodyGroups = {
        { 1, 0 },
        { 2, 1 },
		{ 3, 1 },
		{ 4, 1 },
	},
	Props = {
		-- front
		[1] = {
			Model 	= "models/sentry/props/briishalley.mdl",
			Pos = Vector(-47 , 47.5 , 111),
			Ang = Angle( 90, 263.5, 0 ),
			Scale	= 1.25,
		},
		[2] = {
			Model 	= "models/sentry/props/briishalley.mdl",
			Pos = Vector(46.7 , 47.5 , 111),
			Ang = Angle( 90, 99.5, 0 ),
			Scale	= 1,
		},
		[6] = {
			Model 	= "models/999pack/whelen/whelentir.mdl",
			Pos		= Vector(-40.96 , 129 , 32),
			Ang		= Angle( 90, -80, 20 ),
			Scale	= .55,
		},
		[7] = {
			Model 	= "models/999pack/whelen/whelentir.mdl",
			Pos		= Vector(40.96 , 129 , 32),
			Ang		= Angle( 90, 80, -20 ),
			Scale	= .55,
		},
		-- Grille
		[25] = {
			Model 	= "models/supermighty/photon/whelen_ion.mdl",
			Pos		= Vector(19 , 144 , 44.7),
			Ang		= Angle( 0, -10, 0  ),
			Scale	= 0.8,
		},
		[26] = {
			Model 	= "models/supermighty/photon/whelen_ion.mdl",
			Pos		= Vector(8 , 145.9 , 44.7),
			Ang		= Angle( 0, -10, 0  ),
			Scale	= 0.8,
		},
		[27] = {
			Model 	= "models/supermighty/photon/whelen_ion.mdl",
			Pos		= Vector(-19 , 144 , 44.7),
			Ang		= Angle( 0, 10, 0  ),
			Scale	= 0.8,
		},
		[28] = {
			Model 	= "models/supermighty/photon/whelen_ion.mdl",
			Pos		= Vector(-8 , 145.9 , 44.7),
			Ang		= Angle( 0, 10, 0  ),
			Scale	= 0.8,
		},
		[30] = {
			Model 	= "models/999pack/ion/mount.mdl",
			Pos		= Vector(-8 , 145.85 , 42.7),
			Ang		= Angle( 0, 10, 0  ),
			Scale	= 0.9,
		},
		[31] = {
			Model 	= "models/999pack/ion/mount.mdl",
			Pos		= Vector(8 , 145.85 , 42.7),
			Ang		= Angle( 0, -10, 0  ),
			Scale	= 0.9,
		},
		[32] = {
			Model 	= "models/999pack/ion/mount.mdl",
			Pos		= Vector(19 , 144.1 , 42.7),
			Ang		= Angle( 0, -9, 0  ),
			Scale	= 0.9,
		},
		[33] = {
				Model 	= "models/999pack/ion/mount.mdl",
				Pos		= Vector(-19 , 144.1 , 42.7),
				Ang		= Angle( 0, 9, 0  ),
				Scale	= 0.9,
		},
		-- front top
		[8] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos		= Vector(42, 43.6, 120),
			Ang		= Angle( 90, 90, 0 ),
			Scale	= 3.3,
		},
		[9] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos		= Vector(-42, 43.6, 120),
			Ang		= Angle( 90, 90, 0 ),
			Scale	= 3.3,
		},
		[10] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos		= Vector(25, 43.6, 120),
			Ang		= Angle( 90, 90, 0 ),
			Scale	= 3.3,
		},
		[11] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos		= Vector(-25, 43.6, 120),
			Ang		= Angle( 90, 90, 0 ),
			Scale	= 3.3,
		},
		-- Left Side
		[12] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos = Vector( -50, 38.5, 115 ),
			Ang = Angle( 90, 180, 0 ),
			Scale	= 3.3,
		},
		[13] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos = Vector( -50, -128.5, 119 ),
			Ang = Angle( 90, 180, 0 ),
			Scale	= 3.3,
		},
		-- Right Side
		[14] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos = Vector( 50, -128.5, 119 ),
			Ang = Angle( 90, 0, 0 ),
			Scale	= 3.3,
		},
		[15] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos = Vector( 50, 38.5, 119 ),
			Ang = Angle( 90, 0, 0 ),
			Scale	= 3.3,
		},
		-- Rear
		[16] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos = Vector( -45, -140, 118 ),
			Ang = Angle( 90, 270, 0 ),
			Scale	= 3.3,
		},
		[17] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos = Vector( 45, -140, 118 ),
			Ang = Angle( 90, 270, 0 ),
			Scale	= 3.3
		},
		-- Rear Reds
		[18] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos = Vector( 23, -140, 118 ),
			Ang = Angle( 90, 270, 0 ),
			Scale	= 3.3,
			Skin    = 2
		},
		[19] = {
			Model 	= "models/999pack/m7/m7-1.mdl",
			Pos = Vector( -24, -140, 118 ),
			Ang = Angle( 90, 270, 0 ),
			Scale	= 3.3,
			Skin    = 2
		},
		-- Rear Tir
		[20] = {
			Model 	= "models/999pack/whelen/whelentir.mdl",
			Pos = Vector( 30, -140.6, 118 ),
			Ang = Angle( 0, 0, 0 ),
			Scale	= 0.9
		},
		[21] = {
			Model 	= "models/999pack/whelen/whelentir.mdl",
			Pos		= Vector( -30, -140.6, 118 ),
			Ang		= Angle( 0, 0, 0 ),
			Scale	= 0.9
		},
		-- Rear hella
		[22] = {
			Model 	= "models/999pack/hella/hellalight.mdl",
			Pos = Vector( 36.3, -140.5, 118 ),
			Ang = Angle( 0, 0, 0 ),
			Scale	= 0.7
		},
		[23] = {
			Model 	= "models/999pack/hella/hellalight.mdl",
			Pos		= Vector( -36.3, -140.5, 118 ),
			Ang		= Angle( 0, 0, 0 ),
			Scale	= 0.7
		},
		-- misc - props
		[24] = {
			Model 	= "models/999pack/genysis/genysis.mdl",
			Pos		= Vector(4.8, 83, 57),
			Ang		= Angle( 180, 90, -180 ),
			Scale	= 2
		},
		[29] = {
			Model 	= "models/supermighty/emergency999_badge.mdl",
			Pos		= Vector(-13 , 145.65 , 41.6),
			Ang		= Angle( 180, -80, -179.6  ),
			Scale	= 0.8,
		},
	},
}

Emergency999.Vehicles["sm14sprintlwb4x4"] = {
	Skin = 1,
	Props = {
		[1] = {
			Model 	= "models/999pack/ambulance_lights/irulightsfront.mdl",
			Pos		= Vector(0 , 69, 121),
			Ang		= Angle( 0, -90, 0 ),
			Scale	= 1.01,
			Skin    = 1
		},
		[2] = {
			Model 	= "models/999pack/ambulance_lights/irulightsrear.mdl",
			Pos		= Vector(0 , -156 , 134),
			Ang		= Angle( 0, -90, 0 ),
			Scale	= 1,
			Skin    = 1
		},
		[3] = {
			Model 	= "models/999pack/sprinter/step.mdl",
			Pos		= Vector(1 , -172 , 19),
			Ang		= Angle( 0, 0, 0 ),
			Scale	= 2,
			Skin    = 1
		},
		[4] = {
			Model 	= "models/999pack/camera/camera.mdl",
			Pos		= Vector(41.406 , -128.13 , 118.42),
			Ang		= Angle( 180, 20, 0 ),
			Scale	= 1,
			Skin    = 1
		},
		[5] = {
			Model 	= "models/999pack/camera/camera.mdl",
			Pos		= Vector(-41.406 , -128.13 , 118.42),
			Ang		= Angle( 180, 160, 0 ),
			Scale	= 1,
			Skin    = 1
		},
		[6] = {
			Model 	= "models/999pack/equipment/equipment1.mdl",
			Pos		= Vector(0 , -100 , 0),
			Ang		= Angle( 0, 90, 0 ),
			Scale	= 1
		},
	},
}


--[[
	NOT CONFIG
]]--

function Emergency999.SpawnProps(vehicle, props)
	for propIndex,propData in pairs(props) do

		local prop = ents.Create( "prop_dynamic_ornament" )
		if not IsValid(prop) then continue end

		prop:SetModel(propData.Model)
		prop:SetPos(vehicle:LocalToWorld(propData.Pos))
		prop:SetAngles(vehicle:LocalToWorldAngles(propData.Ang))
		prop:SetModelScale(propData.Scale,0)
		prop:SetParent(vehicle)
		prop:SetOwner(vehicle)
		prop:Spawn()
		prop:SetNoDraw(false)
		prop:DrawShadow(false)
		prop:Fire("DisableCollision")

		if propData.Skin then prop:SetSkin(propData.Skin) end
		if propData.RenderMode then prop:SetRenderMode(propData.RenderMode) end

		vehicle:CallOnRemove( "RemoveProps", function(ent, prop)
			if IsValid(prop) then
				prop:Remove()
			end
		end, prop)

		vehicle.elsProps[propIndex] = prop
	end
end

function Emergency999.HandleVehicleSpawn(ply, vehicle)
    local vehicleData = Emergency999.Vehicles[vehicle:GetVehicleClass()]
    if not vehicleData then return end

    vehicle.elsProps = {}
    timer.Simple(0.1, function()
        if vehicleData.Skin then vehicle:SetSkin(vehicleData.Skin) end

        if vehicleData.BodyGroups then
            for k,v in ipairs(vehicleData.BodyGroups) do
                vehicle:SetBodygroup(v[1], v[2])
            end
        end

        Emergency999.SpawnProps(vehicle, vehicleData.Props)
    end)
end

--[[
	HOOKS
]]--

hook.Add("PlayerSpawnedVehicle","Emergency999::VehicleSpawn", Emergency999.HandleVehicleSpawn)