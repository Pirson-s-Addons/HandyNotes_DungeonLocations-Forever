local _, ns = ...

-- Entradas de mazmorras y bandas de WoW Forever: las mismas que DungeonQuestAtlas
-- (Data/Dungeons.lua y Data/Raids.lua, campo entrance). Si cambian alli, cambiarlas
-- aqui: _project/tests/test_handynotes_dungeonraidlocations.lua lo comprueba.
-- name: respaldo en ingles; el nombre que se ve lo da el juego con
-- GetRealZoneText(instanceID), mas la parte (L[part]) si comparten instancia.
-- size: banda (jugadores). mapID: uiMapID de la zona; x, y: 0-100.

ns.Entrances = {
    { key = "BFD", name = "Blackfathom Deeps", instanceID = 48, minLevel = 24, maxLevel = 32, mapID = 1440, x = 14.5, y = 14.2 },
    { key = "BRD", name = "Blackrock Depths", instanceID = 230, minLevel = 52, maxLevel = 60, mapID = 1428, x = 29.4, y = 38.3 },
    { key = "DALARAN", name = "City of Dalaran", instanceID = 2959, minLevel = 28, maxLevel = 33, mapID = 1416, x = 8.0, y = 61.2 },
    { key = "DM_E", name = "Dire Maul (East)", instanceID = 429, part = "EAST", minLevel = 54, maxLevel = 60, mapID = 1444, x = 64.8, y = 30.2 },
    { key = "DM_N", name = "Dire Maul (North)", instanceID = 429, part = "NORTH", minLevel = 56, maxLevel = 60, mapID = 1444, x = 62.9, y = 24.9 },
    { key = "DM_W", name = "Dire Maul (West)", instanceID = 429, part = "WEST", minLevel = 56, maxLevel = 60, mapID = 1444, x = 60.3, y = 30.2 },
    { key = "EXCAVATION", name = "Excavation Site", instanceID = 2998, minLevel = 24, maxLevel = 29, mapID = 1437, x = 47.8, y = 56.3 },
    { key = "GNOMER", name = "Gnomeregan", instanceID = 90, minLevel = 29, maxLevel = 38, mapID = 1426, x = 24.3, y = 39.8 },
    { key = "THANES", name = "Hall of Thanes", instanceID = 3065, minLevel = 13, maxLevel = 18, mapID = 1455, x = 43.5, y = 52.0 },
    { key = "LBRS", name = "Lower Blackrock Spire", instanceID = 229, part = "LOWER", minLevel = 55, maxLevel = 60, mapID = 1428, x = 29.4, y = 38.3 },
    { key = "MARA", name = "Maraudon", instanceID = 349, minLevel = 46, maxLevel = 55, mapID = 1443, x = 29.1, y = 62.5 },
    { key = "RFC", name = "Ragefire Chasm", instanceID = 389, minLevel = 13, maxLevel = 18, mapID = 1454, x = 53.2, y = 48.7 },
    { key = "RFD", name = "Razorfen Downs", instanceID = 129, minLevel = 37, maxLevel = 46, mapID = 1413, x = 50.9, y = 92.9 },
    { key = "RFK", name = "Razorfen Kraul", instanceID = 47, minLevel = 29, maxLevel = 38, mapID = 1413, x = 42.2, y = 89.8 },
    { key = "LORDAERON", name = "Ruins of Lordaeron", instanceID = 2999, minLevel = 15, maxLevel = 20, mapID = 1420, x = 64.4, y = 67.5 },
    { key = "SM_ARM", name = "Scarlet Monastery (Armory)", instanceID = 189, part = "ARMORY", minLevel = 36, maxLevel = 44, mapID = 1420, x = 85.7, y = 31.9 },
    { key = "SM_CATH", name = "Scarlet Monastery (Cathedral)", instanceID = 189, part = "CATHEDRAL", minLevel = 38, maxLevel = 46, mapID = 1420, x = 85.3, y = 30.3 },
    { key = "SM_GY", name = "Scarlet Monastery (Graveyard)", instanceID = 189, part = "GRAVEYARD", minLevel = 30, maxLevel = 38, mapID = 1420, x = 84.8, y = 30.3 },
    { key = "SM_LIB", name = "Scarlet Monastery (Library)", instanceID = 189, part = "LIBRARY", minLevel = 33, maxLevel = 41, mapID = 1420, x = 85.4, y = 32.5 },
    { key = "SCHOLO", name = "Scholomance", instanceID = 289, minLevel = 58, maxLevel = 60, mapID = 1422, x = 69.0, y = 72.7 },
    { key = "SFK", name = "Shadowfang Keep", instanceID = 33, minLevel = 22, maxLevel = 30, mapID = 1421, x = 44.6, y = 67.7 },
    { key = "STRAT_LIVE", name = "Stratholme (Main Gate)", instanceID = 329, part = "MAIN_GATE", minLevel = 58, maxLevel = 60, mapID = 1423, x = 27.8, y = 11.6 },
    { key = "STRAT_UD", name = "Stratholme (Service Gate)", instanceID = 329, part = "SERVICE_GATE", minLevel = 58, maxLevel = 60, mapID = 1423, x = 43.6, y = 19.5 },
    { key = "ST", name = "Sunken Temple", instanceID = 109, minLevel = 50, maxLevel = 60, mapID = 1435, x = 69.9, y = 53.6 },
    { key = "DM", name = "The Deadmines", instanceID = 36, minLevel = 17, maxLevel = 26, mapID = 1436, x = 42.5, y = 71.7 },
    { key = "STOCKS", name = "The Stockade", instanceID = 34, minLevel = 24, maxLevel = 32, mapID = 1453, x = 39.6, y = 53.9 },
    { key = "ULDA", name = "Uldaman", instanceID = 70, minLevel = 41, maxLevel = 51, mapID = 1418, x = 44.6, y = 12.1 },
    { key = "UBRS", name = "Upper Blackrock Spire", instanceID = 229, part = "UPPER", minLevel = 59, maxLevel = 60, mapID = 1428, x = 29.4, y = 38.3 },
    { key = "WC", name = "Wailing Caverns", instanceID = 43, minLevel = 17, maxLevel = 24, mapID = 1413, x = 46.0, y = 36.4 },
    { key = "ZF", name = "Zul'Farrak", instanceID = 209, minLevel = 44, maxLevel = 54, mapID = 1446, x = 38.7, y = 19.5 },
    { key = "ONYXIA", name = "Onyxia's Lair", instanceID = 249, size = 40, mapID = 1445, x = 52.9, y = 78.2 },
}
