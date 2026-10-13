local ADDON_NAME, ns = ...

-- ==========================================
-- العربية (arSA)
-- ==========================================
local locale = GetLocale()
if locale ~= "arSA" then return end
local L = ns.L

L["PLUGIN_DESC"] = "يعرض على الخريطة مداخل الزنزانات والغارات في WoW Forever."
L["LEVELS"] = "المستويات %d-%d"
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
L["RAID_PLAYERS"] = "%d لاعبين"
