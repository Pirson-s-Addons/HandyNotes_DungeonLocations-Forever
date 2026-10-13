local _, ns = ...
local L = ns.L

-- Plugin de HandyNotes: un pin en la entrada de cada mazmorra y banda (Data/Entrances.lua),
-- en su zona, en el minimapa y en el mapa del continente.

local LOGO = "Interface\\AddOns\\HandyNotes_DungeonLocations-Forever\\img\\logo_hndl"
local ZONE_SCALE, CONTINENT_SCALE = 3, 2.25

-- ns.points[mapID][coord] = { entrada, ... } (varias si comparten puerta: Roca Negra)
ns.points = {}
for _, e in ipairs(ns.Entrances) do
    local coord = math.floor(e.x * 100 + 0.5) * 10000 + math.floor(e.y * 100 + 0.5)
    local zone = ns.points[e.mapID] or {}
    ns.points[e.mapID] = zone
    zone[coord] = zone[coord] or {}
    table.insert(zone[coord], e)
end

function ns.EntranceName(e)
    local name = e.instanceID and GetRealZoneText(e.instanceID)
    if not name or name == "" then return e.name end
    if e.part then name = name .. " (" .. L[e.part] .. ")" end
    return name
end

-- El icono de mazmorra / banda del propio mapa del juego (atlas); sin el, el logo
local icons = {}
local function Icon(atlas)
    if icons[atlas] == nil then
        local info = C_Texture and C_Texture.GetAtlasInfo and C_Texture.GetAtlasInfo(atlas)
        local file = info and (info.file or info.filename)
        icons[atlas] = file and {
            icon = file,
            tCoordLeft = info.leftTexCoord, tCoordRight = info.rightTexCoord,
            tCoordTop = info.topTexCoord, tCoordBottom = info.bottomTexCoord,
        } or LOGO
    end
    return icons[atlas]
end

local function IsRaid(list)
    for _, e in ipairs(list) do
        if e.size then return true end
    end
end

-- Si mapID es un continente: las zonas de dentro con entradas
local function ZonesIn(mapID)
    local info = C_Map.GetMapInfo(mapID)
    if not (info and info.mapType == Enum.UIMapType.Continent) then return nil end
    local zones = {}
    for zone in pairs(ns.points) do
        local m = C_Map.GetMapInfo(zone)
        while m and m.parentMapID and m.parentMapID ~= 0 do
            if m.parentMapID == mapID then
                table.insert(zones, zone)
                break
            end
            m = C_Map.GetMapInfo(m.parentMapID)
        end
    end
    return zones
end

local handler = {}

-- HandyNotes: coord, mapID de la zona (la traduce al mapa visto), icono, escala, alfa
function handler:GetNodes2(mapID, minimap)
    local zones = not minimap and ZonesIn(mapID) or { mapID }
    local scale = #zones == 1 and zones[1] == mapID and ZONE_SCALE or CONTINENT_SCALE
    local i, coord, list = 1, nil, nil
    return function()
        while zones[i] do
            local zone = ns.points[zones[i]]
            if zone then
                coord, list = next(zone, coord)
                if coord then
                    return coord, zones[i], Icon(IsRaid(list) and "Raid" or "Dungeon"), scale, 1
                end
            end
            i, coord = i + 1, nil
        end
    end
end

function handler:OnEnter(mapID, coord)
    local list = ns.points[mapID] and ns.points[mapID][coord]
    if not list then return end
    GameTooltip:SetOwner(self, self:GetCenter() > UIParent:GetCenter() and "ANCHOR_LEFT" or "ANCHOR_RIGHT")
    for _, e in ipairs(list) do
        GameTooltip:AddLine(ns.EntranceName(e))
        if e.size then
            GameTooltip:AddLine(L["RAID_PLAYERS"]:format(e.size), 1, 1, 1)
        else
            GameTooltip:AddLine(L["LEVELS"]:format(e.minLevel, e.maxLevel), 1, 1, 1)
        end
    end
    GameTooltip:Show()
end

function handler:OnLeave()
    GameTooltip:Hide()
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function()
    HandyNotes:RegisterPluginDB("DungeonLocationsForever", handler, {
        type = "group",
        name = "Dungeon & Raid Locations (Forever)",
        desc = L["PLUGIN_DESC"],
        args = { desc = { type = "description", name = L["PLUGIN_DESC"], order = 0 } },
    })
end)
