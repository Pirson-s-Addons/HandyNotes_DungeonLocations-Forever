local ADDON_NAME, ns = ...

-- ==========================================
-- 한국어 (koKR)
-- ==========================================
local locale = GetLocale()
if locale ~= "koKR" then return end
local L = ns.L

L["PLUGIN_DESC"] = "WoW Forever 던전과 공격대의 입구를 지도에 표시합니다."
L["LEVELS"] = "레벨 %d-%d"
L["LOWER"] = "하층"
L["UPPER"] = "상층"
L["EAST"] = "동쪽"
L["NORTH"] = "북쪽"
L["WEST"] = "서쪽"
L["GRAVEYARD"] = "묘지"
L["LIBRARY"] = "도서관"
L["ARMORY"] = "무기고"
L["CATHEDRAL"] = "대성당"
L["MAIN_GATE"] = "정문"
L["SERVICE_GATE"] = "후문"
L["RAID_PLAYERS"] = "%d인"
