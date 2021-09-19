local V = {
	-- Required information
	Name = "2018 Ford Transit Police ",
	Model = "models/mdj/ford/2018_transitRHDvcmod999.mdl",
	Class = "prop_vehicle_jeep",
	Category = "999Emergency - VCMod",

	-- Optional information
	Author = "MattDavidJ",
	Information = "uwu",

	KeyValues = {

		vehiclescript = "scripts/vehicles/mdj/2018transit.txt"
	}
}
list.Set( "Vehicles", "2018transit999", V )

if SERVER then
	hook.Add("PlayerButtonDown", "MDJ_RHDTransit999::reardoors", function(ply, button)
		if not IsValid(ply:GetVehicle()) or button ~= KEY_LSHIFT then return end
		if ply:GetVehicle():GetModel() ~= "models/mdj/ford/2018_transitrhdvcmod999.mdl" then return end

		local vehicle = ply:GetVehicle()

		if vehicle.isreardoorsMoving then return end
		vehicle.isreardoorsMoving = true

		if not vehicle.isreardoorsOpened then vehicle.isreardoorsOpened = false end
		vehicle.isreardoorsOpened = not vehicle.isreardoorsOpened

		local direction = vehicle.isreardoorsOpened and 1 or -1
		local timerIdentifier = "MDJ_RHDTransit999::reardoorsAnimation::" .. vehicle:EntIndex()

		timer.Create(timerIdentifier, 0.02, 0, function()
			if not IsValid(vehicle) then
				timer.Remove(timerIdentifier)
				return
			end

			local newValue = math.Clamp(vehicle:GetPoseParameter("reardoors") + 0.025 * direction, 0, 1)
			vehicle:SetPoseParameter("reardoors", newValue)

			if newValue == 0 or newValue == 1 then
				vehicle.isreardoorsMoving = false
				timer.Remove(timerIdentifier)
			end
		end)
	end)
end

if SERVER then
	hook.Add("PlayerButtonDown", "MDJ_RHDTransit999::sidedoor", function(ply, button)
		if not IsValid(ply:GetVehicle()) or button ~= KEY_TAB then return end
		if ply:GetVehicle():GetModel() ~= "models/mdj/ford/2018_transitrhdvcmod999.mdl" then return end

		local vehicle = ply:GetVehicle()

		if vehicle.issidedoorMoving then return end
		vehicle.issidedoorMoving = true

		if not vehicle.issidedoorOpened then vehicle.issidedoorOpened = false end
		vehicle.issidedoorOpened = not vehicle.issidedoorOpened

		local direction = vehicle.issidedoorOpened and 1 or -1
		local timerIdentifier = "MDJ_RHDTransit999::sidedoorAnimation::" .. vehicle:EntIndex()

		timer.Create(timerIdentifier, 0.02, 0, function()
			if not IsValid(vehicle) then
				timer.Remove(timerIdentifier)
				return
			end

			local newValue = math.Clamp(vehicle:GetPoseParameter("sidedoor") + 0.025 * direction, 0, 1)
			vehicle:SetPoseParameter("sidedoor", newValue)

			if newValue == 0 or newValue == 1 then
				vehicle.issidedoorMoving = false
				timer.Remove(timerIdentifier)
			end
		end)
	end)
end
