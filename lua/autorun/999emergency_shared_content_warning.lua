timer.Simple(0,function()
CreateClientConVar( "999emergency_ignore_content_warning", "0", true, false, "ignores the warning for obsolete vehicle files" )
if GetConVar("999emergency_ignore_content_warning"):GetInt() != 1 and !timer.Exists("999emergency_cvar_check") and !steamworks.IsSubscribed("2475153328") then // Change to Shared Content ID
	timer.Create("999emergency_cvar_check", 600, 0, function()
	if GetConVar("999emergency_ignore_content_warning"):GetInt() != 0 then 
	timer.Remove("999emergency_cvar_check")
	return end
	
    chat.AddText(Color(200,20,20),
    [[ This addon now requires a Shared Content package, please download it here: https://steamcommunity.com/sharedfiles/filedetails/?id=2475153328
    Disable these warnings by typing '999emergency_ignore_content_warning 1' in console ]]
    ) // Change to Shared Content Workshop ID
	if steamworks.IsSubscribed("2475153328") then
		chat.AddText(Color(200,200,200),
		"Opening the link in 5 seconds..."
		)
		timer.Simple(5,function()
			gui.OpenURL("https://steamcommunity.com/sharedfiles/filedetails/?id=2475153328") // Change to Shared Content Workshop ID.
		end)
	end

	end)
end
end)