--
-- Register client build 54261 (Wrath Classic 3.4.3) as a supported build.
--
-- Without this row, authserver rejects the client on a fresh install with a version-mismatch
-- error - build_info is the table TrinityCore checks client build numbers against during login.
-- `build` is the PRIMARY KEY, so INSERT IGNORE makes this safe to re-run / re-apply and safe
-- against a fresh TDB import that may already ship other historical build rows.
--
INSERT IGNORE INTO `build_info`
    (`build`, `majorVersion`, `minorVersion`, `bugfixVersion`, `hotfixVersion`, `winAuthSeed`, `win64AuthSeed`, `mac64AuthSeed`, `winChecksumSeed`, `macChecksumSeed`)
VALUES
    (54261, 3, 4, 3, NULL, NULL, '25FD812475DCF26F9F1383AED37FC99E', NULL, NULL, NULL);

--
-- Default new realmlist rows to gamebuild 54261 instead of whatever the stock branch default is.
-- Purely a convenience default (existing/explicit realmlist rows are unaffected); safe to re-run.
--
ALTER TABLE `realmlist` ALTER COLUMN `gamebuild` SET DEFAULT 54261;
