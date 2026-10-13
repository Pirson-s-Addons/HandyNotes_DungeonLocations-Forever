local ADDON_NAME, ns = ...

-- ==========================================
-- 繁體中文 (zhTW)
-- ==========================================
local locale = GetLocale()
if locale ~= "zhTW" then return end
local L = ns.L

L["PLUGIN_DESC"] = "在地圖上顯示 WoW Forever 地城與團隊副本的入口。"
L["LEVELS"] = "等級 %d-%d"
L["LOWER"] = "下層"
L["UPPER"] = "上層"
L["EAST"] = "東"
L["NORTH"] = "北"
L["WEST"] = "西"
L["GRAVEYARD"] = "墓地"
L["LIBRARY"] = "圖書館"
L["ARMORY"] = "軍械庫"
L["CATHEDRAL"] = "大教堂"
L["MAIN_GATE"] = "正門"
L["SERVICE_GATE"] = "後門"
L["RAID_PLAYERS"] = "%d人"
