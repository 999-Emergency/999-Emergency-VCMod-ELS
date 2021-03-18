local Emergency999 = {}

--[[
	CONFIG
]]--

Emergency999.Vehicles = {}

Emergency999.Vehicles["sfiretrucknewvcmod"] = {
	Skin = 1,
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
				Ang		= Angle( 0, 183.5, 0 ),
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