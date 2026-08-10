-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.46 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table characters.account_data
CREATE TABLE IF NOT EXISTS `account_data` (
  `accountId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `time` bigint NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.account_instance_times
CREATE TABLE IF NOT EXISTS `account_instance_times` (
  `accountId` int unsigned NOT NULL,
  `instanceId` int unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.account_tutorial
CREATE TABLE IF NOT EXISTS `account_tutorial` (
  `accountId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int unsigned NOT NULL DEFAULT '0',
  `tut1` int unsigned NOT NULL DEFAULT '0',
  `tut2` int unsigned NOT NULL DEFAULT '0',
  `tut3` int unsigned NOT NULL DEFAULT '0',
  `tut4` int unsigned NOT NULL DEFAULT '0',
  `tut5` int unsigned NOT NULL DEFAULT '0',
  `tut6` int unsigned NOT NULL DEFAULT '0',
  `tut7` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.auctionhouse
CREATE TABLE IF NOT EXISTS `auctionhouse` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `auctionHouseId` int unsigned NOT NULL DEFAULT '0',
  `owner` bigint unsigned NOT NULL DEFAULT '0',
  `bidder` bigint unsigned NOT NULL DEFAULT '0',
  `minBid` bigint unsigned NOT NULL DEFAULT '0',
  `buyoutOrUnitPrice` bigint unsigned NOT NULL DEFAULT '0',
  `deposit` bigint unsigned NOT NULL DEFAULT '0',
  `bidAmount` bigint unsigned NOT NULL DEFAULT '0',
  `startTime` bigint NOT NULL DEFAULT '0',
  `endTime` bigint NOT NULL DEFAULT '0',
  `serverFlags` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.auction_bidders
CREATE TABLE IF NOT EXISTS `auction_bidders` (
  `auctionId` int unsigned NOT NULL,
  `playerGuid` bigint unsigned NOT NULL,
  PRIMARY KEY (`auctionId`,`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.auction_items
CREATE TABLE IF NOT EXISTS `auction_items` (
  `auctionId` int unsigned NOT NULL,
  `itemGuid` bigint unsigned NOT NULL,
  PRIMARY KEY (`auctionId`,`itemGuid`),
  UNIQUE KEY `idx_itemGuid` (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.bugreport
CREATE TABLE IF NOT EXISTS `bugreport` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Debug System';

-- Data exporting was unselected.

-- Dumping structure for table characters.calendar_events
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `EventID` bigint unsigned NOT NULL DEFAULT '0',
  `Owner` bigint unsigned NOT NULL DEFAULT '0',
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `EventType` tinyint unsigned NOT NULL DEFAULT '4',
  `TextureID` int NOT NULL DEFAULT '-1',
  `Date` bigint NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `LockDate` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.calendar_invites
CREATE TABLE IF NOT EXISTS `calendar_invites` (
  `InviteID` bigint unsigned NOT NULL DEFAULT '0',
  `EventID` bigint unsigned NOT NULL DEFAULT '0',
  `Invitee` bigint unsigned NOT NULL DEFAULT '0',
  `Sender` bigint unsigned NOT NULL DEFAULT '0',
  `Status` tinyint unsigned NOT NULL DEFAULT '0',
  `ResponseTime` bigint NOT NULL DEFAULT '0',
  `ModerationRank` tinyint unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`InviteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.channels
CREATE TABLE IF NOT EXISTS `channels` (
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team` int unsigned NOT NULL,
  `announce` tinyint unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint unsigned NOT NULL DEFAULT '1',
  `password` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bannedList` text COLLATE utf8mb4_unicode_ci,
  `lastUsed` bigint unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Channel System';

-- Data exporting was unselected.

-- Dumping structure for table characters.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `slot` tinyint unsigned NOT NULL DEFAULT '0',
  `race` tinyint unsigned NOT NULL DEFAULT '0',
  `class` tinyint unsigned NOT NULL DEFAULT '0',
  `gender` tinyint unsigned NOT NULL DEFAULT '0',
  `level` tinyint unsigned NOT NULL DEFAULT '0',
  `xp` int unsigned NOT NULL DEFAULT '0',
  `money` bigint unsigned NOT NULL DEFAULT '0',
  `inventorySlots` tinyint unsigned NOT NULL DEFAULT '16',
  `bankSlots` tinyint unsigned NOT NULL DEFAULT '0',
  `restState` tinyint unsigned NOT NULL DEFAULT '0',
  `playerFlags` int unsigned NOT NULL DEFAULT '0',
  `playerFlagsEx` int unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int unsigned NOT NULL DEFAULT '0',
  `dungeonDifficulty` tinyint unsigned NOT NULL DEFAULT '1',
  `raidDifficulty` tinyint unsigned NOT NULL DEFAULT '14',
  `legacyRaidDifficulty` tinyint unsigned NOT NULL DEFAULT '3',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `online` tinyint unsigned NOT NULL DEFAULT '0',
  `createTime` bigint NOT NULL DEFAULT '0',
  `createMode` tinyint NOT NULL DEFAULT '0',
  `cinematic` tinyint unsigned NOT NULL DEFAULT '0',
  `totaltime` int unsigned NOT NULL DEFAULT '0',
  `leveltime` int unsigned NOT NULL DEFAULT '0',
  `logout_time` bigint NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int unsigned NOT NULL DEFAULT '0',
  `resettalents_time` bigint NOT NULL DEFAULT '0',
  `numRespecs` tinyint unsigned NOT NULL DEFAULT '0',
  `activeTalentGroup` tinyint unsigned NOT NULL DEFAULT '0',
  `bonusTalentGroups` tinyint unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` bigint unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint unsigned NOT NULL DEFAULT '0',
  `summonedPetNumber` int unsigned NOT NULL DEFAULT '0',
  `stable_slots` int unsigned NOT NULL DEFAULT '0',
  `at_login` smallint unsigned NOT NULL DEFAULT '0',
  `zone` smallint unsigned NOT NULL DEFAULT '0',
  `death_expire_time` bigint NOT NULL DEFAULT '0',
  `taxi_path` text COLLATE utf8mb4_unicode_ci,
  `totalKills` int unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint unsigned NOT NULL DEFAULT '0',
  `health` int unsigned NOT NULL DEFAULT '0',
  `power1` int unsigned NOT NULL DEFAULT '0',
  `power2` int unsigned NOT NULL DEFAULT '0',
  `power3` int unsigned NOT NULL DEFAULT '0',
  `power4` int unsigned NOT NULL DEFAULT '0',
  `power5` int unsigned NOT NULL DEFAULT '0',
  `power6` int unsigned NOT NULL DEFAULT '0',
  `power7` int unsigned NOT NULL DEFAULT '0',
  `power8` int unsigned NOT NULL DEFAULT '0',
  `power9` int unsigned NOT NULL DEFAULT '0',
  `power10` int unsigned NOT NULL DEFAULT '0',
  `latency` int unsigned NOT NULL DEFAULT '0',
  `lootSpecId` int unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext COLLATE utf8mb4_unicode_ci,
  `equipmentCache` longtext COLLATE utf8mb4_unicode_ci,
  `ammoId` int unsigned NOT NULL DEFAULT '0',
  `knownTitles` longtext COLLATE utf8mb4_unicode_ci,
  `actionBars` tinyint unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleteDate` bigint DEFAULT NULL,
  `honor` int unsigned NOT NULL DEFAULT '0',
  `lastLoginBuild` int unsigned NOT NULL DEFAULT '0',
  `personalTabardEmblemStyle` int NOT NULL DEFAULT '-1',
  `personalTabardEmblemColor` int NOT NULL DEFAULT '-1',
  `personalTabardBorderStyle` int NOT NULL DEFAULT '-1',
  `personalTabardBorderColor` int NOT NULL DEFAULT '-1',
  `personalTabardBackgroundColor` int NOT NULL DEFAULT '-1',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `idx_name` (`name`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_account_data
CREATE TABLE IF NOT EXISTS `character_account_data` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `time` bigint NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_achievement
CREATE TABLE IF NOT EXISTS `character_achievement` (
  `guid` bigint unsigned NOT NULL,
  `achievement` int unsigned NOT NULL,
  `date` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_achievement_progress
CREATE TABLE IF NOT EXISTS `character_achievement_progress` (
  `guid` bigint unsigned NOT NULL,
  `criteria` int unsigned NOT NULL,
  `counter` bigint unsigned NOT NULL,
  `date` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_action
CREATE TABLE IF NOT EXISTS `character_action` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `spec` tinyint unsigned NOT NULL DEFAULT '0',
  `traitConfigId` int NOT NULL DEFAULT '0',
  `button` tinyint unsigned NOT NULL DEFAULT '0',
  `action` int unsigned NOT NULL DEFAULT '0',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`traitConfigId`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_arena_stats
CREATE TABLE IF NOT EXISTS `character_arena_stats` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `slot` tinyint unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint unsigned NOT NULL DEFAULT '0',
  `matchMakerRating` smallint unsigned NOT NULL DEFAULT '0',
  `rank` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_aura
CREATE TABLE IF NOT EXISTS `character_aura` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int unsigned NOT NULL,
  `effectMask` int unsigned NOT NULL,
  `recalculateMask` int unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint unsigned NOT NULL DEFAULT '1',
  `maxDuration` int NOT NULL DEFAULT '0',
  `remainTime` int NOT NULL DEFAULT '0',
  `remainCharges` tinyint unsigned NOT NULL DEFAULT '0',
  `castItemId` int unsigned NOT NULL DEFAULT '0',
  `castItemLevel` int NOT NULL DEFAULT '-1',
  `critChance` float NOT NULL DEFAULT '0',
  `applyResilience` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_aura_effect
CREATE TABLE IF NOT EXISTS `character_aura_effect` (
  `guid` bigint unsigned NOT NULL,
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int unsigned NOT NULL,
  `effectMask` int unsigned NOT NULL,
  `effectIndex` tinyint unsigned NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `baseAmount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_aura_stored_location
CREATE TABLE IF NOT EXISTS `character_aura_stored_location` (
  `Guid` bigint unsigned NOT NULL COMMENT 'Global Unique Identifier of Player',
  `Spell` int unsigned NOT NULL COMMENT 'Spell Identifier',
  `MapId` int unsigned NOT NULL COMMENT 'Map Id',
  `PositionX` float NOT NULL COMMENT 'position x',
  `PositionY` float NOT NULL COMMENT 'position y',
  `PositionZ` float NOT NULL COMMENT 'position z',
  `Orientation` float NOT NULL COMMENT 'Orientation',
  PRIMARY KEY (`Guid`,`Spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_banned
CREATE TABLE IF NOT EXISTS `character_banned` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bandate` bigint NOT NULL DEFAULT '0',
  `unbandate` bigint NOT NULL DEFAULT '0',
  `bannedby` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banreason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Ban List';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_battleground_data
CREATE TABLE IF NOT EXISTS `character_battleground_data` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int unsigned NOT NULL DEFAULT '0',
  `mountSpell` int unsigned NOT NULL DEFAULT '0',
  `queueId` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_battleground_random
CREATE TABLE IF NOT EXISTS `character_battleground_random` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_cuf_profiles
CREATE TABLE IF NOT EXISTS `character_cuf_profiles` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Guid',
  `id` tinyint unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Height',
  `frameWidth` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Width',
  `sortBy` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Sort By',
  `healthText` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Health Text',
  `boolOptions` int unsigned NOT NULL DEFAULT '0' COMMENT 'Many Configurable Bool Options',
  `topPoint` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame top alignment',
  `bottomPoint` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame bottom alignment',
  `leftPoint` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame left alignment',
  `topOffset` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from top',
  `bottomOffset` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from bottom',
  `leftOffset` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from left',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_currency
CREATE TABLE IF NOT EXISTS `character_currency` (
  `CharacterGuid` bigint unsigned NOT NULL DEFAULT '0',
  `Currency` smallint unsigned NOT NULL,
  `Quantity` int unsigned NOT NULL,
  `WeeklyQuantity` int unsigned NOT NULL,
  `TrackedQuantity` int unsigned NOT NULL,
  `IncreasedCapQuantity` int unsigned NOT NULL DEFAULT '0',
  `EarnedQuantity` int unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL,
  PRIMARY KEY (`CharacterGuid`,`Currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_customizations
CREATE TABLE IF NOT EXISTS `character_customizations` (
  `guid` bigint unsigned NOT NULL,
  `chrCustomizationOptionID` int unsigned NOT NULL,
  `chrCustomizationChoiceID` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`chrCustomizationOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_declinedname
CREATE TABLE IF NOT EXISTS `character_declinedname` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dative` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accusative` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instrumental` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `prepositional` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_equipmentsets
CREATE TABLE IF NOT EXISTS `character_equipmentsets` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `setguid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `setindex` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iconname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ignore_mask` int unsigned NOT NULL DEFAULT '0',
  `AssignedSpecIndex` int NOT NULL DEFAULT '-1',
  `item0` bigint unsigned NOT NULL DEFAULT '0',
  `item1` bigint unsigned NOT NULL DEFAULT '0',
  `item2` bigint unsigned NOT NULL DEFAULT '0',
  `item3` bigint unsigned NOT NULL DEFAULT '0',
  `item4` bigint unsigned NOT NULL DEFAULT '0',
  `item5` bigint unsigned NOT NULL DEFAULT '0',
  `item6` bigint unsigned NOT NULL DEFAULT '0',
  `item7` bigint unsigned NOT NULL DEFAULT '0',
  `item8` bigint unsigned NOT NULL DEFAULT '0',
  `item9` bigint unsigned NOT NULL DEFAULT '0',
  `item10` bigint unsigned NOT NULL DEFAULT '0',
  `item11` bigint unsigned NOT NULL DEFAULT '0',
  `item12` bigint unsigned NOT NULL DEFAULT '0',
  `item13` bigint unsigned NOT NULL DEFAULT '0',
  `item14` bigint unsigned NOT NULL DEFAULT '0',
  `item15` bigint unsigned NOT NULL DEFAULT '0',
  `item16` bigint unsigned NOT NULL DEFAULT '0',
  `item17` bigint unsigned NOT NULL DEFAULT '0',
  `item18` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_favorite_auctions
CREATE TABLE IF NOT EXISTS `character_favorite_auctions` (
  `guid` bigint unsigned NOT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `itemId` int unsigned NOT NULL DEFAULT '0',
  `itemLevel` int unsigned NOT NULL DEFAULT '0',
  `battlePetSpeciesId` int unsigned NOT NULL DEFAULT '0',
  `suffixItemNameDescriptionId` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_fishingsteps
CREATE TABLE IF NOT EXISTS `character_fishingsteps` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `fishingSteps` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_gifts
CREATE TABLE IF NOT EXISTS `character_gifts` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint unsigned NOT NULL DEFAULT '0',
  `entry` int unsigned NOT NULL DEFAULT '0',
  `flags` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_glyphs
CREATE TABLE IF NOT EXISTS `character_glyphs` (
  `guid` bigint unsigned NOT NULL,
  `talentGroup` tinyint unsigned NOT NULL DEFAULT '0',
  `glyphSlot` tinyint unsigned NOT NULL DEFAULT '0',
  `glyphId` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentGroup`,`glyphSlot`,`glyphId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_homebind
CREATE TABLE IF NOT EXISTS `character_homebind` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_instance_lock
CREATE TABLE IF NOT EXISTS `character_instance_lock` (
  `guid` bigint unsigned NOT NULL,
  `mapId` int unsigned NOT NULL,
  `lockId` int unsigned NOT NULL,
  `instanceId` int unsigned DEFAULT NULL,
  `difficulty` tinyint unsigned DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `completedEncountersMask` int unsigned DEFAULT NULL,
  `entranceWorldSafeLocId` int unsigned DEFAULT NULL,
  `expiryTime` bigint unsigned DEFAULT NULL,
  `extended` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`,`mapId`,`lockId`),
  UNIQUE KEY `uk_character_instanceId` (`guid`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_inventory
CREATE TABLE IF NOT EXISTS `character_inventory` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` bigint unsigned NOT NULL DEFAULT '0',
  `slot` tinyint unsigned NOT NULL DEFAULT '0',
  `item` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `uk_location` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_pet
CREATE TABLE IF NOT EXISTS `character_pet` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `entry` int unsigned NOT NULL DEFAULT '0',
  `owner` bigint unsigned NOT NULL DEFAULT '0',
  `modelid` int unsigned DEFAULT '0',
  `CreatedBySpell` int unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint unsigned NOT NULL DEFAULT '0',
  `level` smallint unsigned NOT NULL DEFAULT '1',
  `exp` int unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pet',
  `renamed` tinyint unsigned NOT NULL DEFAULT '0',
  `slot` smallint NOT NULL DEFAULT '-1',
  `curhealth` int unsigned NOT NULL DEFAULT '1',
  `curmana` int unsigned NOT NULL DEFAULT '0',
  `curhappiness` int unsigned NOT NULL DEFAULT '0',
  `savetime` int unsigned NOT NULL DEFAULT '0',
  `abdata` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pet System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_pet_declinedname
CREATE TABLE IF NOT EXISTS `character_pet_declinedname` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `owner` int unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dative` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accusative` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instrumental` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `prepositional` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_queststatus
CREATE TABLE IF NOT EXISTS `character_queststatus` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `quest` int unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `explored` tinyint unsigned NOT NULL DEFAULT '0',
  `acceptTime` bigint NOT NULL DEFAULT '0',
  `endTime` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_queststatus_daily
CREATE TABLE IF NOT EXISTS `character_queststatus_daily` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_queststatus_monthly
CREATE TABLE IF NOT EXISTS `character_queststatus_monthly` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_queststatus_objectives
CREATE TABLE IF NOT EXISTS `character_queststatus_objectives` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `quest` int unsigned NOT NULL DEFAULT '0',
  `objective` tinyint unsigned NOT NULL DEFAULT '0',
  `data` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`,`objective`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_queststatus_objectives_criteria
CREATE TABLE IF NOT EXISTS `character_queststatus_objectives_criteria` (
  `guid` bigint unsigned NOT NULL,
  `questObjectiveId` int unsigned NOT NULL,
  PRIMARY KEY (`guid`,`questObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_queststatus_objectives_criteria_progress
CREATE TABLE IF NOT EXISTS `character_queststatus_objectives_criteria_progress` (
  `guid` bigint unsigned NOT NULL,
  `criteriaId` int unsigned NOT NULL,
  `counter` bigint unsigned NOT NULL,
  `date` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteriaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_queststatus_rewarded
CREATE TABLE IF NOT EXISTS `character_queststatus_rewarded` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_queststatus_seasonal
CREATE TABLE IF NOT EXISTS `character_queststatus_seasonal` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  `completedTime` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_queststatus_weekly
CREATE TABLE IF NOT EXISTS `character_queststatus_weekly` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_reputation
CREATE TABLE IF NOT EXISTS `character_reputation` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint unsigned NOT NULL DEFAULT '0',
  `standing` int NOT NULL DEFAULT '0',
  `flags` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_skills
CREATE TABLE IF NOT EXISTS `character_skills` (
  `guid` bigint unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint unsigned NOT NULL,
  `value` smallint unsigned NOT NULL,
  `max` smallint unsigned NOT NULL,
  `professionSlot` tinyint NOT NULL DEFAULT '-1',
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_social
CREATE TABLE IF NOT EXISTS `character_social` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_spell
CREATE TABLE IF NOT EXISTS `character_spell` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_spell_charges
CREATE TABLE IF NOT EXISTS `character_spell_charges` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `categoryId` int unsigned NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` bigint NOT NULL DEFAULT '0',
  `rechargeEnd` bigint NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_spell_cooldown
CREATE TABLE IF NOT EXISTS `character_spell_cooldown` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` bigint NOT NULL DEFAULT '0',
  `categoryId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category Id',
  `categoryEnd` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_spell_favorite
CREATE TABLE IF NOT EXISTS `character_spell_favorite` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player System';

-- Data exporting was unselected.

-- Dumping structure for table characters.character_stats
CREATE TABLE IF NOT EXISTS `character_stats` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int unsigned NOT NULL DEFAULT '0',
  `maxpower1` int unsigned NOT NULL DEFAULT '0',
  `maxpower2` int unsigned NOT NULL DEFAULT '0',
  `maxpower3` int unsigned NOT NULL DEFAULT '0',
  `maxpower4` int unsigned NOT NULL DEFAULT '0',
  `maxpower5` int unsigned NOT NULL DEFAULT '0',
  `maxpower6` int unsigned NOT NULL DEFAULT '0',
  `maxpower7` int unsigned NOT NULL DEFAULT '0',
  `maxpower8` int unsigned NOT NULL DEFAULT '0',
  `maxpower9` int unsigned NOT NULL DEFAULT '0',
  `maxpower10` int unsigned NOT NULL DEFAULT '0',
  `strength` int unsigned NOT NULL DEFAULT '0',
  `agility` int unsigned NOT NULL DEFAULT '0',
  `stamina` int unsigned NOT NULL DEFAULT '0',
  `intellect` int unsigned NOT NULL DEFAULT '0',
  `armor` int unsigned NOT NULL DEFAULT '0',
  `resHoly` int unsigned NOT NULL DEFAULT '0',
  `resFire` int unsigned NOT NULL DEFAULT '0',
  `resNature` int unsigned NOT NULL DEFAULT '0',
  `resFrost` int unsigned NOT NULL DEFAULT '0',
  `resShadow` int unsigned NOT NULL DEFAULT '0',
  `resArcane` int unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int unsigned NOT NULL DEFAULT '0',
  `spellPower` int unsigned NOT NULL DEFAULT '0',
  `resilience` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_talent
CREATE TABLE IF NOT EXISTS `character_talent` (
  `guid` bigint unsigned NOT NULL,
  `talentId` int unsigned NOT NULL,
  `talentRank` tinyint unsigned NOT NULL DEFAULT '0',
  `talentGroup` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentId`,`talentGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.character_transmog_outfits
CREATE TABLE IF NOT EXISTS `character_transmog_outfits` (
  `guid` bigint NOT NULL DEFAULT '0',
  `setguid` bigint NOT NULL AUTO_INCREMENT,
  `setindex` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iconname` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ignore_mask` int NOT NULL DEFAULT '0',
  `appearance0` int NOT NULL DEFAULT '0',
  `appearance1` int NOT NULL DEFAULT '0',
  `appearance2` int NOT NULL DEFAULT '0',
  `appearance3` int NOT NULL DEFAULT '0',
  `appearance4` int NOT NULL DEFAULT '0',
  `appearance5` int NOT NULL DEFAULT '0',
  `appearance6` int NOT NULL DEFAULT '0',
  `appearance7` int NOT NULL DEFAULT '0',
  `appearance8` int NOT NULL DEFAULT '0',
  `appearance9` int NOT NULL DEFAULT '0',
  `appearance10` int NOT NULL DEFAULT '0',
  `appearance11` int NOT NULL DEFAULT '0',
  `appearance12` int NOT NULL DEFAULT '0',
  `appearance13` int NOT NULL DEFAULT '0',
  `appearance14` int NOT NULL DEFAULT '0',
  `appearance15` int NOT NULL DEFAULT '0',
  `appearance16` int NOT NULL DEFAULT '0',
  `appearance17` int NOT NULL DEFAULT '0',
  `appearance18` int NOT NULL DEFAULT '0',
  `mainHandEnchant` int NOT NULL DEFAULT '0',
  `offHandEnchant` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.corpse
CREATE TABLE IF NOT EXISTS `corpse` (
  `guid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `displayId` int unsigned NOT NULL DEFAULT '0',
  `itemCache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `race` tinyint unsigned NOT NULL DEFAULT '0',
  `class` tinyint unsigned NOT NULL DEFAULT '0',
  `gender` tinyint unsigned NOT NULL DEFAULT '0',
  `flags` tinyint unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint unsigned NOT NULL DEFAULT '0',
  `time` int unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint unsigned NOT NULL DEFAULT '0',
  `instanceId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Death System';

-- Data exporting was unselected.

-- Dumping structure for table characters.corpse_customizations
CREATE TABLE IF NOT EXISTS `corpse_customizations` (
  `ownerGuid` bigint unsigned NOT NULL,
  `chrCustomizationOptionID` int unsigned NOT NULL,
  `chrCustomizationChoiceID` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerGuid`,`chrCustomizationOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.corpse_phases
CREATE TABLE IF NOT EXISTS `corpse_phases` (
  `OwnerGuid` bigint unsigned NOT NULL DEFAULT '0',
  `PhaseId` int unsigned NOT NULL,
  PRIMARY KEY (`OwnerGuid`,`PhaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.game_event_condition_save
CREATE TABLE IF NOT EXISTS `game_event_condition_save` (
  `eventEntry` tinyint unsigned NOT NULL,
  `condition_id` int unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.game_event_save
CREATE TABLE IF NOT EXISTS `game_event_save` (
  `eventEntry` tinyint unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL DEFAULT '1',
  `next_start` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.gm_bug
CREATE TABLE IF NOT EXISTS `gm_bug` (
  `id` int unsigned NOT NULL,
  `playerGuid` bigint unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createTime` bigint NOT NULL DEFAULT '0',
  `mapId` smallint unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `closedBy` bigint NOT NULL DEFAULT '0',
  `assignedTo` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.gm_complaint
CREATE TABLE IF NOT EXISTS `gm_complaint` (
  `id` int unsigned NOT NULL,
  `playerGuid` bigint unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createTime` bigint NOT NULL DEFAULT '0',
  `mapId` smallint unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `targetCharacterGuid` bigint unsigned NOT NULL,
  `reportType` int NOT NULL DEFAULT '0',
  `reportMajorCategory` int NOT NULL DEFAULT '0',
  `reportMinorCategoryFlags` int NOT NULL DEFAULT '0',
  `reportLineIndex` int NOT NULL,
  `closedBy` bigint NOT NULL DEFAULT '0',
  `assignedTo` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.gm_complaint_chatlog
CREATE TABLE IF NOT EXISTS `gm_complaint_chatlog` (
  `complaintId` int unsigned NOT NULL,
  `lineId` int unsigned NOT NULL,
  `timestamp` bigint NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`complaintId`,`lineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.gm_suggestion
CREATE TABLE IF NOT EXISTS `gm_suggestion` (
  `id` int unsigned NOT NULL,
  `playerGuid` bigint unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createTime` bigint NOT NULL DEFAULT '0',
  `mapId` smallint unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `closedBy` bigint NOT NULL DEFAULT '0',
  `assignedTo` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `guid` int unsigned NOT NULL,
  `leaderGuid` bigint unsigned NOT NULL,
  `lootMethod` tinyint unsigned NOT NULL,
  `looterGuid` bigint unsigned NOT NULL,
  `lootThreshold` tinyint unsigned NOT NULL,
  `icon1` binary(16) NOT NULL,
  `icon2` binary(16) NOT NULL,
  `icon3` binary(16) NOT NULL,
  `icon4` binary(16) NOT NULL,
  `icon5` binary(16) NOT NULL,
  `icon6` binary(16) NOT NULL,
  `icon7` binary(16) NOT NULL,
  `icon8` binary(16) NOT NULL,
  `groupType` smallint unsigned NOT NULL,
  `difficulty` tinyint unsigned NOT NULL DEFAULT '1',
  `raidDifficulty` tinyint unsigned NOT NULL DEFAULT '14',
  `legacyRaidDifficulty` tinyint unsigned NOT NULL DEFAULT '3',
  `masterLooterGuid` bigint unsigned NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Groups';

-- Data exporting was unselected.

-- Dumping structure for table characters.group_member
CREATE TABLE IF NOT EXISTS `group_member` (
  `guid` int unsigned NOT NULL,
  `memberGuid` bigint unsigned NOT NULL,
  `memberFlags` tinyint unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint unsigned NOT NULL DEFAULT '0',
  `roles` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Groups';

-- Data exporting was unselected.

-- Dumping structure for table characters.guild
CREATE TABLE IF NOT EXISTS `guild` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `leaderguid` bigint unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint unsigned NOT NULL DEFAULT '0',
  `info` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `motd` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `createdate` int unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild System';

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_achievement
CREATE TABLE IF NOT EXISTS `guild_achievement` (
  `guildId` bigint unsigned NOT NULL,
  `achievement` int unsigned NOT NULL,
  `date` bigint NOT NULL DEFAULT '0',
  `guids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_achievement_progress
CREATE TABLE IF NOT EXISTS `guild_achievement_progress` (
  `guildId` bigint unsigned NOT NULL,
  `criteria` int unsigned NOT NULL,
  `counter` bigint unsigned NOT NULL,
  `date` bigint NOT NULL DEFAULT '0',
  `completedGuid` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_bank_eventlog
CREATE TABLE IF NOT EXISTS `guild_bank_eventlog` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` bigint unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` bigint unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` bigint NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_bank_item
CREATE TABLE IF NOT EXISTS `guild_bank_item` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_bank_right
CREATE TABLE IF NOT EXISTS `guild_bank_right` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint unsigned NOT NULL DEFAULT '0',
  `rid` tinyint unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint NOT NULL DEFAULT '0',
  `SlotPerDay` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_bank_tab
CREATE TABLE IF NOT EXISTS `guild_bank_tab` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `TabIcon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `TabText` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_eventlog
CREATE TABLE IF NOT EXISTS `guild_eventlog` (
  `guildid` bigint unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` bigint unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` bigint unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` bigint NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild Eventlog';

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_member
CREATE TABLE IF NOT EXISTS `guild_member` (
  `guildid` bigint unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` bigint unsigned NOT NULL,
  `rank` tinyint unsigned NOT NULL,
  `pnote` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `offnote` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild System';

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_member_withdraw
CREATE TABLE IF NOT EXISTS `guild_member_withdraw` (
  `guid` bigint unsigned NOT NULL,
  `tab0` int unsigned NOT NULL DEFAULT '0',
  `tab1` int unsigned NOT NULL DEFAULT '0',
  `tab2` int unsigned NOT NULL DEFAULT '0',
  `tab3` int unsigned NOT NULL DEFAULT '0',
  `tab4` int unsigned NOT NULL DEFAULT '0',
  `tab5` int unsigned NOT NULL DEFAULT '0',
  `tab6` int unsigned NOT NULL DEFAULT '0',
  `tab7` int unsigned NOT NULL DEFAULT '0',
  `money` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild Member Daily Withdraws';

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_newslog
CREATE TABLE IF NOT EXISTS `guild_newslog` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` bigint unsigned NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `Value` int unsigned NOT NULL DEFAULT '0',
  `TimeStamp` bigint NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.guild_rank
CREATE TABLE IF NOT EXISTS `guild_rank` (
  `guildid` bigint unsigned NOT NULL DEFAULT '0',
  `rid` tinyint unsigned NOT NULL,
  `RankOrder` tinyint unsigned NOT NULL DEFAULT '0',
  `rname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rights` int unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild System';

-- Data exporting was unselected.

-- Dumping structure for table characters.instance
CREATE TABLE IF NOT EXISTS `instance` (
  `instanceId` int unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `completedEncountersMask` int unsigned DEFAULT NULL,
  `entranceWorldSafeLocId` int unsigned DEFAULT NULL,
  PRIMARY KEY (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.item_instance
CREATE TABLE IF NOT EXISTS `item_instance` (
  `guid` bigint unsigned NOT NULL DEFAULT '0',
  `itemEntry` int unsigned NOT NULL DEFAULT '0',
  `owner_guid` bigint unsigned NOT NULL DEFAULT '0',
  `creatorGuid` bigint unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` bigint unsigned NOT NULL DEFAULT '0',
  `count` int unsigned NOT NULL DEFAULT '1',
  `duration` int NOT NULL DEFAULT '0',
  `charges` tinytext COLLATE utf8mb4_unicode_ci,
  `flags` int unsigned NOT NULL DEFAULT '0',
  `enchantments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `durability` smallint unsigned NOT NULL DEFAULT '0',
  `playedTime` int unsigned NOT NULL DEFAULT '0',
  `text` text COLLATE utf8mb4_unicode_ci,
  `transmogrification` int unsigned NOT NULL DEFAULT '0',
  `enchantIllusion` int unsigned NOT NULL DEFAULT '0',
  `battlePetSpeciesId` int unsigned NOT NULL DEFAULT '0',
  `battlePetBreedData` int unsigned NOT NULL DEFAULT '0',
  `battlePetLevel` smallint unsigned NOT NULL DEFAULT '0',
  `battlePetDisplayId` int unsigned NOT NULL DEFAULT '0',
  `randomPropertiesId` int NOT NULL DEFAULT '0',
  `randomPropertiesSeed` int NOT NULL DEFAULT '0',
  `context` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Item System';

-- Data exporting was unselected.

-- Dumping structure for table characters.item_instance_gems
CREATE TABLE IF NOT EXISTS `item_instance_gems` (
  `itemGuid` bigint unsigned NOT NULL,
  `gemItemId1` int unsigned NOT NULL DEFAULT '0',
  `gemBonuses1` text COLLATE utf8mb4_unicode_ci,
  `gemContext1` tinyint unsigned NOT NULL DEFAULT '0',
  `gemItemId2` int unsigned NOT NULL DEFAULT '0',
  `gemBonuses2` text COLLATE utf8mb4_unicode_ci,
  `gemContext2` tinyint unsigned NOT NULL DEFAULT '0',
  `gemItemId3` int unsigned NOT NULL DEFAULT '0',
  `gemBonuses3` text COLLATE utf8mb4_unicode_ci,
  `gemContext3` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.item_instance_transmog
CREATE TABLE IF NOT EXISTS `item_instance_transmog` (
  `itemGuid` bigint unsigned NOT NULL,
  `itemModifiedAppearanceAllSpecs` int NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec1` int NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec2` int NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec3` int NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec4` int NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec5` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentAllSpecs` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec1` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec2` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec3` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec4` int NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec5` int NOT NULL DEFAULT '0',
  `secondaryItemModifiedAppearanceAllSpecs` int NOT NULL DEFAULT '0',
  `secondaryItemModifiedAppearanceSpec1` int NOT NULL DEFAULT '0',
  `secondaryItemModifiedAppearanceSpec2` int NOT NULL DEFAULT '0',
  `secondaryItemModifiedAppearanceSpec3` int NOT NULL DEFAULT '0',
  `secondaryItemModifiedAppearanceSpec4` int NOT NULL DEFAULT '0',
  `secondaryItemModifiedAppearanceSpec5` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.item_loot_items
CREATE TABLE IF NOT EXISTS `item_loot_items` (
  `container_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `item_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int NOT NULL DEFAULT '0' COMMENT 'stack size',
  `item_index` int unsigned NOT NULL DEFAULT '0',
  `follow_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `under_threshold` tinyint(1) NOT NULL DEFAULT '0',
  `needs_quest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'quest drop',
  `random_properties_id` int NOT NULL DEFAULT '0',
  `random_properties_seed` int NOT NULL DEFAULT '0',
  `context` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`container_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.item_loot_money
CREATE TABLE IF NOT EXISTS `item_loot_money` (
  `container_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `money` int unsigned NOT NULL DEFAULT '0' COMMENT 'money loot (in copper)',
  PRIMARY KEY (`container_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.item_refund_instance
CREATE TABLE IF NOT EXISTS `item_refund_instance` (
  `item_guid` bigint unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` bigint unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` bigint unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Item Refund System';

-- Data exporting was unselected.

-- Dumping structure for table characters.item_soulbound_trade_data
CREATE TABLE IF NOT EXISTS `item_soulbound_trade_data` (
  `itemGuid` bigint unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Item Refund System';

-- Data exporting was unselected.

-- Dumping structure for table characters.lfg_data
CREATE TABLE IF NOT EXISTS `lfg_data` (
  `guid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int unsigned NOT NULL DEFAULT '0',
  `state` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='LFG Data';

-- Data exporting was unselected.

-- Dumping structure for table characters.mail
CREATE TABLE IF NOT EXISTS `mail` (
  `id` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint NOT NULL DEFAULT '41',
  `mailTemplateId` smallint unsigned NOT NULL DEFAULT '0',
  `sender` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `has_items` tinyint unsigned NOT NULL DEFAULT '0',
  `expire_time` bigint NOT NULL DEFAULT '0',
  `deliver_time` bigint NOT NULL DEFAULT '0',
  `money` bigint unsigned NOT NULL DEFAULT '0',
  `cod` bigint unsigned NOT NULL DEFAULT '0',
  `checked` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mail System';

-- Data exporting was unselected.

-- Dumping structure for table characters.mail_items
CREATE TABLE IF NOT EXISTS `mail_items` (
  `mail_id` bigint unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint unsigned NOT NULL DEFAULT '0',
  `receiver` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.petition
CREATE TABLE IF NOT EXISTS `petition` (
  `ownerguid` bigint unsigned NOT NULL,
  `petitionguid` bigint unsigned DEFAULT '0',
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ownerguid`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild System';

-- Data exporting was unselected.

-- Dumping structure for table characters.petition_sign
CREATE TABLE IF NOT EXISTS `petition_sign` (
  `ownerguid` bigint unsigned NOT NULL,
  `petitionguid` bigint unsigned NOT NULL DEFAULT '0',
  `playerguid` bigint unsigned NOT NULL DEFAULT '0',
  `player_account` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Guild System';

-- Data exporting was unselected.

-- Dumping structure for table characters.pet_aura
CREATE TABLE IF NOT EXISTS `pet_aura` (
  `guid` int unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int unsigned NOT NULL,
  `effectMask` int unsigned NOT NULL,
  `recalculateMask` int unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint unsigned NOT NULL DEFAULT '1',
  `maxDuration` int NOT NULL DEFAULT '0',
  `remainTime` int NOT NULL DEFAULT '0',
  `remainCharges` tinyint unsigned NOT NULL DEFAULT '0',
  `critChance` float NOT NULL DEFAULT '0',
  `applyResilience` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pet System';

-- Data exporting was unselected.

-- Dumping structure for table characters.pet_aura_effect
CREATE TABLE IF NOT EXISTS `pet_aura_effect` (
  `guid` int unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int unsigned NOT NULL,
  `effectMask` int unsigned NOT NULL,
  `effectIndex` tinyint unsigned NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `baseAmount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pet System';

-- Data exporting was unselected.

-- Dumping structure for table characters.pet_spell
CREATE TABLE IF NOT EXISTS `pet_spell` (
  `guid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Pet System';

-- Data exporting was unselected.

-- Dumping structure for table characters.pet_spell_charges
CREATE TABLE IF NOT EXISTS `pet_spell_charges` (
  `guid` int unsigned NOT NULL,
  `categoryId` int unsigned NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` bigint NOT NULL DEFAULT '0',
  `rechargeEnd` bigint NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.pet_spell_cooldown
CREATE TABLE IF NOT EXISTS `pet_spell_cooldown` (
  `guid` int unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` bigint NOT NULL DEFAULT '0',
  `categoryId` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category Id',
  `categoryEnd` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.pool_quest_save
CREATE TABLE IF NOT EXISTS `pool_quest_save` (
  `pool_id` int unsigned NOT NULL DEFAULT '0',
  `quest_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.pvpstats_battlegrounds
CREATE TABLE IF NOT EXISTS `pvpstats_battlegrounds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `winner_faction` tinyint NOT NULL,
  `bracket_id` tinyint unsigned NOT NULL,
  `type` int unsigned NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.pvpstats_players
CREATE TABLE IF NOT EXISTS `pvpstats_players` (
  `battleground_id` bigint unsigned NOT NULL,
  `character_guid` bigint unsigned NOT NULL,
  `winner` bit(1) NOT NULL,
  `score_killing_blows` int unsigned NOT NULL,
  `score_deaths` int unsigned NOT NULL,
  `score_honorable_kills` int unsigned NOT NULL,
  `score_bonus_honor` int unsigned NOT NULL,
  `score_damage_done` int unsigned NOT NULL,
  `score_healing_done` int unsigned NOT NULL,
  `attr_1` int unsigned NOT NULL DEFAULT '0',
  `attr_2` int unsigned NOT NULL DEFAULT '0',
  `attr_3` int unsigned NOT NULL DEFAULT '0',
  `attr_4` int unsigned NOT NULL DEFAULT '0',
  `attr_5` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`battleground_id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.quest_tracker
CREATE TABLE IF NOT EXISTS `quest_tracker` (
  `id` int unsigned NOT NULL DEFAULT '0',
  `character_guid` bigint unsigned NOT NULL DEFAULT '0',
  `quest_accept_time` datetime NOT NULL,
  `quest_complete_time` datetime DEFAULT NULL,
  `quest_abandon_time` datetime DEFAULT NULL,
  `completed_by_gm` tinyint(1) NOT NULL DEFAULT '0',
  `core_hash` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `core_revision` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.reserved_name
CREATE TABLE IF NOT EXISTS `reserved_name` (
  `name` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Player Reserved Names';

-- Data exporting was unselected.

-- Dumping structure for table characters.respawn
CREATE TABLE IF NOT EXISTS `respawn` (
  `type` smallint unsigned NOT NULL,
  `spawnId` bigint unsigned NOT NULL,
  `respawnTime` bigint NOT NULL,
  `mapId` smallint unsigned NOT NULL,
  `instanceId` int unsigned NOT NULL,
  PRIMARY KEY (`type`,`spawnId`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stored respawn times';

-- Data exporting was unselected.

-- Dumping structure for table characters.updates
CREATE TABLE IF NOT EXISTS `updates` (
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of all applied updates in this database.';

-- Data exporting was unselected.

-- Dumping structure for table characters.updates_include
CREATE TABLE IF NOT EXISTS `updates_include` (
  `path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of directories where we want to include sql updates.';

-- Data exporting was unselected.

-- Dumping structure for table characters.warden_action
CREATE TABLE IF NOT EXISTS `warden_action` (
  `wardenId` smallint unsigned NOT NULL,
  `action` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.world_state_value
CREATE TABLE IF NOT EXISTS `world_state_value` (
  `Id` int NOT NULL,
  `Value` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Data exporting was unselected.

-- Dumping structure for table characters.world_variable
CREATE TABLE IF NOT EXISTS `world_variable` (
  `ID` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
