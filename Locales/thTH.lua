local ADDON_NAME, ns = ...

-- ==========================================
-- ไทย (thTH)
-- ==========================================
local locale = GetLocale()
if locale ~= "thTH" then return end
local L = ns.L

L["PLUGIN_DESC"] = "แสดงทางเข้าดันเจี้ยนและเรดของ WoW Forever บนแผนที่"
L["LEVELS"] = "เลเวล %d-%d"
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
L["RAID_PLAYERS"] = "%d ผู้เล่น"
