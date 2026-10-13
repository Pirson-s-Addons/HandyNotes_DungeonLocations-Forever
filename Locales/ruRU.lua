local ADDON_NAME, ns = ...

-- ==========================================
-- РУССКИЙ (ruRU)
-- ==========================================
local locale = GetLocale()
if locale ~= "ruRU" then return end
local L = ns.L

L["PLUGIN_DESC"] = "Показывает на карте входы в подземелья и рейды WoW Forever."
L["LEVELS"] = "Уровни %d-%d"
L["LOWER"] = "Нижняя"
L["UPPER"] = "Верхняя"
L["EAST"] = "Восток"
L["NORTH"] = "Север"
L["WEST"] = "Запад"
L["GRAVEYARD"] = "Кладбище"
L["LIBRARY"] = "Библиотека"
L["ARMORY"] = "Оружейная"
L["CATHEDRAL"] = "Собор"
L["MAIN_GATE"] = "Главные врата"
L["SERVICE_GATE"] = "Черный ход"
L["RAID_PLAYERS"] = "Игроков: %d"
