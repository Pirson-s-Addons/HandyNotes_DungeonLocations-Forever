local ADDON_NAME, ns = ...

-- ==========================================
-- IDIOMA POR DEFECTO (enUS / enGB)
-- ==========================================
-- Este fichero define TODAS las claves. Los demas Locales/<idioma>.lua se
-- cargan despues y sobrescriben las suyas; lo que falte se queda en ingles.

local L = ns.L or {}
ns.L = L

L["PLUGIN_DESC"] = "Shows the entrances of WoW Forever dungeons and raids on the map."
L["LEVELS"] = "Levels %d-%d"
L["LOWER"] = "Lower"
L["UPPER"] = "Upper"
L["EAST"] = "East"
L["NORTH"] = "North"
L["WEST"] = "West"
L["GRAVEYARD"] = "Graveyard"
L["LIBRARY"] = "Library"
L["ARMORY"] = "Armory"
L["CATHEDRAL"] = "Cathedral"
L["MAIN_GATE"] = "Main Gate"
L["SERVICE_GATE"] = "Service Gate"
L["RAID_PLAYERS"] = "%d players"
