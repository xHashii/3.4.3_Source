# SQL layout (3.4.3 branch)

    sql/
      create/     One-time DB creation (CREATE DATABASE ...). Run first, once, ever.
      base/       Schema-only (no data) dumps for auth + characters. Run once on a fresh
                  install, right after create/. NOT used for world or hotfixes - see below.
      updates/    Incremental changes, auto-applied on worldserver startup via the DBUpdater
                  (hash-tracked in each DB's `updates` table). Split by database, then by
                  content version: updates/world/3.4.3/, updates/auth/3.4.3/, etc.
      custom/     One-off manual SQL not meant to be tracked by the updater.
      old/        Retired/superseded updates, kept for history.

## Why world/ and hotfixes/ don't have a sql/base/ equivalent

Unlike auth and characters (which start essentially empty on a fresh install), world and
hotfixes ship as one full data dump - this mirrors how upstream TrinityCore distributes the
"TDB" (TrinityCore Database) release: one large `TDB_full_world_*.sql` file, imported once,
with `sql/updates/world/` only ever holding changes made *after* that point.

Our `world.sql` / `hotfixes.sql` fill that same role. They are NOT split into base+updates -
they get imported directly, once, when setting up a new server:

    mysql -u root -p world < world.sql
    mysql -u root -p hotfixes < hotfixes.sql

From that point on, ALL further world/hotfixes changes (schema or data) go into
`sql/updates/world/3.4.3/` / `sql/updates/hotfixes/3.4.3/` as normal dated update files
(e.g. `2026_08_09_00_world.sql`), the same way auth/characters changes go into their own
`updates/<db>/3.4.3/` folders. The DBUpdater picks these up automatically on worldserver
startup - see the Titan Rune dungeon cleanup update for a live example.

## Fresh-install order

    1. sql/create/create_mysql.sql
    2. sql/base/auth_database.sql
       sql/base/characters_database.sql
    3. world.sql        (full dump, imported directly into `world`)
       hotfixes.sql     (full dump, imported directly into `hotfixes`)
    4. Start worldserver once with Updates.EnableDatabases on - it will auto-apply everything
       under sql/updates/*/3.4.3/ that isn't already reflected in the dumps above.
