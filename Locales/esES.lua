local ADDON_NAME, ns = ...

-- ==========================================
-- ESPAÑOL (esES / esMX)
-- ==========================================
local locale = GetLocale()
if locale ~= "esES" and locale ~= "esMX" then return end
local L = ns.L

L["PLUGIN_DESC"] = "Muestra en el mapa las entradas de las mazmorras y bandas de WoW Forever."
L["LEVELS"] = "Niveles %d-%d"
L["LOWER"] = "Inferior"
L["UPPER"] = "Superior"
L["EAST"] = "Este"
L["NORTH"] = "Norte"
L["WEST"] = "Oeste"
L["GRAVEYARD"] = "Cementerio"
L["LIBRARY"] = "Biblioteca"
L["ARMORY"] = "Armería"
L["CATHEDRAL"] = "Catedral"
L["MAIN_GATE"] = "Puerta principal"
L["SERVICE_GATE"] = "Entrada de servicio"
L["RAID_PLAYERS"] = "%d jugadores"
