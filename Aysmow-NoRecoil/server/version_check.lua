
Citizen.CreateThread(function()
    local resourceName = GetCurrentResourceName()
    print("[^1" .. resourceName .. "^7] Started!")

    if resourceName ~= 'Aysmow-NoRecoil' then
        print("[^1" .. resourceName .. "^7] !!^3WARNING^7!! Please rename the resource to 'Aysmow-NoRecoil'")
        Citizen.Wait(2000)
        os.exit()
    end
end)


Citizen.CreateThread(function()
    Citizen.Wait(250)

    local resourceName = GetCurrentResourceName()
    local currentVersion = GetResourceMetadata(resourceName, 'version', 0)

    if not currentVersion or currentVersion == '' then
        print("[^1" .. resourceName .. "^7] Version metadata not found!")
        return
    end

    SetConvarServerInfo("Aysmow-NoRecoil [by Aysmow]", currentVersion)

    local versionURL = 'https://raw.githubusercontent.com/Comethruuu/Aysmow-NoRecoil/main/main/version.txt'

    PerformHttpRequest(versionURL, function(errorCode, result, headers)
        if errorCode ~= 200 then
            print("[^1" .. resourceName .. "^7] Version check failed. Status: " .. tostring(errorCode))
            return
        end

        local newVersion = result and result:match("%S+") or "unknown"
        if newVersion ~= currentVersion then
            print('^2[' .. resourceName .. '] - New Update Available!^0')
            print('Current Version: ^3' .. currentVersion .. '^0 | Latest Version: ^2' .. newVersion .. '^0')
        else
            print('^2[' .. resourceName .. '] is up to date (v' .. currentVersion .. ')^0')
        end
    end, 'GET')
end)

