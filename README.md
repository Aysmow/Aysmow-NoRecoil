<div align="center">

# 🔫 Aysmow NoRecoil

### Système de gestion du recul des armes pour FiveM

[![Version](https://img.shields.io/badge/version-1.0-blue.svg)](https://github.com/Aysmow/Aysmow-NoRecoil)
[![FiveM](https://img.shields.io/badge/FiveM-Cerulean-00a8ff.svg)](https://fivem.net)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Support](https://img.shields.io/badge/support-Discord-7289da.svg)](https://discord.gg/omertarp)

**Compatible avec ESX, QB-core et Standalone**

---

</div>

## 📋 Table des matières

- [✨ Fonctionnalités](#-fonctionnalités)
- [🚀 Installation](#-installation)
- [⚙️ Configuration](#️-configuration)
- [📖 Guide d'utilisation](#-guide-dutilisation)
- [🎮 Prévisualisation](#-prévisualisation)
- [🔧 Paramètres avancés](#-paramètres-avancés)
- [📝 Changelog](#-changelog)
- [👨‍💻 Auteur](#-auteur)
- [💖 Support](#-support)

---

## ✨ Fonctionnalités

- ✅ **Système de recul personnalisable** - Contrôle total sur le recul de chaque arme
- ✅ **Configuration simple** - Fichier `config.lua` dédié pour une configuration facile
- ✅ **Performance optimisée** - Code optimisé pour une utilisation minimale des ressources
- ✅ **Compatibilité universelle** - Fonctionne avec ESX, QB-Core et en standalone
- ✅ **Vérification de version** - Système automatique de vérification des mises à jour
- ✅ **Paramètres de caméra avancés** - Contrôle du pitch et du shake de la caméra
- ✅ **Support multi-armes** - Configuration individuelle pour chaque arme

---

## 🚀 Installation

### Méthode 1 : Téléchargement direct

1. Téléchargez le script depuis [GitHub](https://github.com/Aysmow/Aysmow-NoRecoil)
2. Extrayez le dossier dans votre dossier `resources`
3. Renommez le dossier en `Aysmow-NoRecoil` (optionnel mais recommandé)

### Méthode 2 : Git Clone

```bash
cd resources
git clone https://github.com/Aysmow/Aysmow-NoRecoil.git
```

### Configuration du serveur

Ajoutez cette ligne dans votre `server.cfg` :

```cfg
ensure Aysmow-NoRecoil
```

**Note :** Assurez-vous que le nom de la ressource correspond au nom du dossier.

---

## ⚙️ Configuration

### Fichier de configuration

Toute la configuration se trouve dans le fichier `config.lua` à la racine du script.

### Configuration de base

Ouvrez `config.lua` et modifiez les valeurs selon vos besoins :

```lua
Config = {}

-- Paramètres de recul
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
```

### Trouver le nom d'une arme

Pour trouver le nom exact d'une arme, consultez la [documentation RAGE MP](https://wiki.rage.mp/wiki/Weapons)

---

## 📖 Guide d'utilisation

### Ajouter une nouvelle arme

1. Ouvrez `config.lua`
2. Ajoutez une nouvelle entrée dans `Config.Recoil` :

```lua
Config.Recoil = {
    -- Votre nouvelle arme
    ["weapon_pistol"] = 2.5,  -- Valeur de recul (plus élevé = plus de recul)
}
```

### Ajuster le recul d'une arme existante

Modifiez simplement la valeur numérique :

```lua
-- Exemple : Réduire le recul du minismg
["weapon_minismg"] = 0.5,  -- Au lieu de 1.0
```

**Valeurs recommandées :**
- `0.0` - Aucun recul
- `0.5 - 2.0` - Recul léger
- `2.0 - 5.0` - Recul modéré
- `5.0+` - Recul fort

---

## 🔧 Paramètres avancés

### Paramètres de caméra

Dans `config.lua`, vous pouvez ajuster les paramètres de caméra :

```lua
Config.cameraSettings = {
    pitchMultiplier = 0.8,      -- Multiplicateur de pitch (0.0 - 1.0)
    shakeIntensity = 0.1,       -- Intensité de base du shake
    shakeMultiplier = 0.03      -- Multiplicateur du shake basé sur le recul
}
```

### Paramètres de performance

```lua
Config.waitTime = 0  -- Temps d'attente dans la boucle (0 = performance max)
```

### Message de démarrage

```lua
Config.startup = true  -- Afficher le message de démarrage (true/false)
```

---

## 🎮 Prévisualisation

[![Preview](https://img.shields.io/badge/Preview-Click%20Here-red.svg)](https://streamable.com/4lp5fg)

**Vidéo de démonstration :** [Cliquez ici pour voir la prévisualisation](https://streamable.com/4lp5fg)

---

## 📝 Changelog

### Version 1.0
- ✨ Version initiale
- ✅ Système de recul personnalisable
- ✅ Configuration via fichier dédié
- ✅ Vérification automatique des versions
- ✅ Support multi-frameworks

---

## 👨‍💻 Auteur

**Aysmow**

- GitHub: [@Aysmow](https://github.com/Aysmow)
- Discord: [Rejoindre le serveur](https://discord.gg/omertarp)

---

## 💖 Support

Si ce projet vous est utile, n'hésitez pas à :

- ⭐ **Mettre une étoile** sur le dépôt GitHub
- 🔁 **Forker** le projet pour le personnaliser
- 🐛 **Signaler des bugs** via les Issues
- 💡 **Suggérer des améliorations**

### Besoin d'aide ?

- 📧 Créez une [Issue](https://github.com/Aysmow/Aysmow-NoRecoil/issues) sur GitHub
- 💬 Rejoignez notre Discord pour obtenir de l'aide

---

<div align="center">

**Fait avec ❤️ pour la communauté FiveM**

[⬆ Retour en haut](#-aysmow-norecoil)

</div>
