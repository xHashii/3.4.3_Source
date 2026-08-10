-- This file creates the four databases used by this project.
-- IMPORTANT: run `SHOW CREATE DATABASE world;` (or auth/characters/hotfixes) against your
-- EXISTING databases first and compare the charset/collation shown there against what's below.
-- These are set to utf8mb4/utf8mb4_general_ci to match your "Convert databases to utf8mb4"
-- migration - if your live DBs ended up on a different collation (e.g. utf8mb4_unicode_ci),
-- change these three CREATE DATABASE statements to match exactly before using this on a fresh
-- install, or a fresh install will end up on a different collation than your existing data.

CREATE DATABASE IF NOT EXISTS `auth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS `characters` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS `world` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS `hotfixes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
