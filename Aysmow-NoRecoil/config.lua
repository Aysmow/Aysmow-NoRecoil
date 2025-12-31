Config = {}

-- Paramètres de démarrage
Config.startup = true -- Afficher le message de démarrage

-- Paramètres de recul
-- Format: ["nom_arme"] = valeur_recul
Config.Recoil = {
    -- PISTOL
    ["weapon_revolver_mk2"] = 8.0,
    ["weapon_doubleaction"] = 5.0,
    
    -- SMG
    ["weapon_minismg"] = 1.0,
    ["weapon_microsmg"] = 1.0,
    ["weapon_machinepistol"] = 0.4,
    
    -- SNIPER
    ["weapon_heavysniper"] = 5.0,
}

-- Paramètres de caméra
Config.cameraSettings = {
    pitchMultiplier = 0.8, -- Multiplicateur de pitch de la caméra
    shakeIntensity = 0.1, -- Intensité de base du shake
    shakeMultiplier = 0.03 -- Multiplicateur du shake basé sur le recul
}

-- Paramètres de performance
Config.waitTime = 0 -- Temps d'attente dans la boucle (0 pour performance maximale)

