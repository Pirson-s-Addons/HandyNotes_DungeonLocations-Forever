local ADDON_NAME, ns = ...

-- ==========================================
-- हिन्दी (hiIN)
-- ==========================================
local locale = GetLocale()
if locale ~= "hiIN" then return end
local L = ns.L

L["PLUGIN_DESC"] = "नक्शे पर WoW Forever के डंजन और रेड के प्रवेश द्वार दिखाता है।"
L["LEVELS"] = "स्तर %d-%d"
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
L["RAID_PLAYERS"] = "%d खिलाड़ी"
