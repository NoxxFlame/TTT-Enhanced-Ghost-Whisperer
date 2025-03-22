if SERVER then
    hook.Add("Initialize", "EnhancedGhostWhisperer_Initialize", function()
        ErrorNoHalt("WARNING: The 'Enhanced Ghost Whisperer (CR for TTT)' is no longer required. Please uninstall it from the server and instead use the 'ttt_ghostwhisperer_max_abilities' ConVar.\n")
    end)

    hook.Add("PlayerInitialSpawn", "EnhancedGhostWhisperer_PlayerInitialSpawn", function(ply, transition)
        if not IsValid(ply) then return end
        if not ply:IsAdmin() and not ply:IsSuperAdmin() then return end

        ply:PrintMessage(HUD_PRINTTALK, "WARNING: The 'Enhanced Ghost Whisperer (CR for TTT)' is no longer required. Please uninstall it from the server and instead use the 'ttt_ghostwhisperer_max_abilities' ConVar.")
    end)
end