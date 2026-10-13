local ADDON_NAME, ns = ...

-- ==========================================
-- PORTUGUÊS (ptBR)
-- ==========================================
local locale = GetLocale()
if locale ~= "ptBR" then return end
local L = ns.L

L["PLUGIN_DESC"] = "Mostra no mapa as entradas das masmorras e raides do WoW Forever."
L["LEVELS"] = "Níveis %d-%d"
L["LOWER"] = "Inferior"
L["UPPER"] = "Superior"
L["EAST"] = "Leste"
L["NORTH"] = "Norte"
L["WEST"] = "Oeste"
L["GRAVEYARD"] = "Cemitério"
L["LIBRARY"] = "Biblioteca"
L["ARMORY"] = "Arsenal"
L["CATHEDRAL"] = "Catedral"
L["MAIN_GATE"] = "Portão principal"
L["SERVICE_GATE"] = "Portão de serviço"
L["RAID_PLAYERS"] = "%d jogadores"
