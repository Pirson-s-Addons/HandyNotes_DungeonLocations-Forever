local ADDON_NAME, ns = ...

-- ==========================================
-- FRANÇAIS (frFR)
-- ==========================================
local locale = GetLocale()
if locale ~= "frFR" then return end
local L = ns.L

L["PLUGIN_DESC"] = "Affiche sur la carte les entrées des donjons et raids de WoW Forever."
L["LEVELS"] = "Niveaux %d-%d"
L["LOWER"] = "inférieur"
L["UPPER"] = "supérieur"
L["EAST"] = "Est"
L["NORTH"] = "Nord"
L["WEST"] = "Ouest"
L["GRAVEYARD"] = "Cimetière"
L["LIBRARY"] = "Bibliothèque"
L["ARMORY"] = "Armurerie"
L["CATHEDRAL"] = "Cathédrale"
L["MAIN_GATE"] = "Porte principale"
L["SERVICE_GATE"] = "Entrée de service"
L["RAID_PLAYERS"] = "%d joueurs"
