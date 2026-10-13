local ADDON_NAME, ns = ...

-- ==========================================
-- 简体中文 (zhCN)
-- ==========================================
local locale = GetLocale()
if locale ~= "zhCN" then return end
local L = ns.L

L["PLUGIN_DESC"] = "在地图上显示 WoW Forever 地下城和团队副本的入口。"
L["LEVELS"] = "等级 %d-%d"
L["LOWER"] = "下层"
L["UPPER"] = "上层"
L["EAST"] = "东"
L["NORTH"] = "北"
L["WEST"] = "西"
L["GRAVEYARD"] = "墓地"
L["LIBRARY"] = "图书馆"
L["ARMORY"] = "军械库"
L["CATHEDRAL"] = "大教堂"
L["MAIN_GATE"] = "正门"
L["SERVICE_GATE"] = "后门"
L["RAID_PLAYERS"] = "%d人"
