--
-- Disable Wrath Classic "Titan Rune Protocol" Heroic+ dungeons (Alpha/Beta/Gamma).
--
-- This server intentionally emulates pure 3.3.5 WotLK content only. Titan Rune is a Wrath
-- Classic-only addition (present because we use the 3.4.3 client for UI/client benefits) and
-- is already fully blocked at the code level in LFGMgr::JoinLfg (see g_DisabledDungeons in
-- LFGMgr.cpp) - nobody can queue into or join one regardless of what this table contains.
--
-- This update removes the now-dead rows for hygiene: the umbrella "Random ... Titan Rune
-- Protocol X" entry plus every individual heroic+ dungeon variant that belongs to it.
--
-- IDs confirmed from `lfg_dungeon_template` on 2026-08-09:
--   Gamma: 2447 (umbrella) + 2448-2463 (16 individual heroic+ variants)
--   Beta:  2470 (umbrella) + 2471-2483 (13 individual heroic+ variants)
--   Alpha: 2485 (umbrella) + 2486-2497 (12 individual heroic+ variants)
--
-- NOTE: verify this range against your own table before running in production - run the
-- SELECT below first and compare row count/IDs against what's actually in your DB, in case
-- your data has additional rows outside what's listed here (the screenshots this range was
-- built from may not have captured every row if the table scrolled further).
--
--   SELECT dungeonId FROM lfg_dungeon_template WHERE dungeonId BETWEEN 2440 AND 2500 ORDER BY dungeonId;
--

DELETE FROM `lfg_dungeon_template` WHERE `dungeonId` IN (
    -- Titan Rune Protocol: Gamma
    2447, 2448, 2449, 2450, 2451, 2452, 2453, 2454, 2455, 2456, 2457, 2458, 2459, 2460, 2461, 2462, 2463,
    -- Titan Rune Protocol: Beta
    2470, 2471, 2472, 2473, 2474, 2475, 2476, 2477, 2478, 2479, 2480, 2481, 2482, 2483,
    -- Titan Rune Protocol: Alpha
    2485, 2486, 2487, 2488, 2489, 2490, 2491, 2492, 2493, 2494, 2495, 2496, 2497
);
