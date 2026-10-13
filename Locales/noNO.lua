local ADDON_NAME, ns = ...

-- ==========================================
-- NORSK (noNO)
-- ==========================================
local locale = GetLocale()
if locale ~= "noNO" then return end
local L = ns.L

L["PLUGIN_DESC"] = "Viser inngangene til dungeons og raids i WoW Forever på kartet."
L["LEVELS"] = "Nivå %d-%d"
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
L["RAID_PLAYERS"] = "%d spillere"
