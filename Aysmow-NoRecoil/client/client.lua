local RecoilHash = {}
for weaponName, recoilValue in pairs(Config.Recoil) do
    RecoilHash[GetHashKey(weaponName)] = recoilValue
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.waitTime)

        local playerPed = PlayerPedId()
        if IsPedShooting(playerPed) then
            local weaponHash = GetSelectedPedWeapon(playerPed)
            local recoil = RecoilHash[weaponHash] or 0.0

            if recoil > 0.0 then
                local camPitch = GetGameplayCamRelativePitch()
                SetGameplayCamRelativePitch(camPitch + recoil, Config.cameraSettings.pitchMultiplier)
                ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", Config.cameraSettings.shakeIntensity + (recoil * Config.cameraSettings.shakeMultiplier))
            end
        end
    end
end)
