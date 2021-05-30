CreateClientConVar("999emergency_ignore_content_warning", 0, true, false, "ignores the warning for obsolete vehicle files", 0, 1)

timer.Simple(5, function()
    -- Do nothing if we already have the addon or warning is ignored
    if GetConVar("999emergency_ignore_content_warning"):GetBool() or steamworks.IsSubscribed("2475153328") then return end

    chat.AddText(Color(200, 20, 20), [[ [999Emergency] This addon now requires a Shared Content package, please download it here: https://steamcommunity.com/sharedfiles/filedetails/?id=2475153328
    Disable these warnings by typing '999emergency_ignore_content_warning 1' in console ]])

    timer.Simple(120, function()
        -- Do nothing if we already have the addon or warning is ignored
        if GetConVar("999emergency_ignore_content_warning"):GetBool() or steamworks.IsSubscribed("2475153328") then return end

        chat.AddText(Color(200, 200, 200), "[999Emergency] It seems that you still don't have the Shared Content package. Opening the link in 5 seconds...")

        -- Open Workshop Page
        timer.Simple(5, function()
            gui.OpenURL("https://steamcommunity.com/sharedfiles/filedetails/?id=2475153328")
        end)
    end)
end)