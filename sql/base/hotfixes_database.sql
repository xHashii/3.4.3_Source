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

-- Dumping structure for table hotfixes.achievement
CREATE TABLE IF NOT EXISTS `achievement` (
  `Description` text COLLATE utf8mb4_unicode_ci,
  `Title` text COLLATE utf8mb4_unicode_ci,
  `Reward` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `InstanceID` smallint NOT NULL DEFAULT '0',
  `Faction` tinyint NOT NULL DEFAULT '0',
  `Supercedes` smallint NOT NULL DEFAULT '0',
  `Category` smallint NOT NULL DEFAULT '0',
  `MinimumCriteria` tinyint NOT NULL DEFAULT '0',
  `Points` tinyint NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `UiOrder` smallint NOT NULL DEFAULT '0',
  `IconFileID` int NOT NULL DEFAULT '0',
  `CriteriaTree` int unsigned NOT NULL DEFAULT '0',
  `SharesCriteria` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.achievement_category
CREATE TABLE IF NOT EXISTS `achievement_category` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Parent` smallint NOT NULL DEFAULT '0',
  `UiOrder` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.achievement_category_locale
CREATE TABLE IF NOT EXISTS `achievement_category_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.achievement_locale
CREATE TABLE IF NOT EXISTS `achievement_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `Title_lang` text COLLATE utf8mb4_unicode_ci,
  `Reward_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.animation_data
CREATE TABLE IF NOT EXISTS `animation_data` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Fallback` smallint unsigned NOT NULL DEFAULT '0',
  `BehaviorTier` tinyint unsigned NOT NULL DEFAULT '0',
  `BehaviorID` int NOT NULL DEFAULT '0',
  `Flags1` int NOT NULL DEFAULT '0',
  `Flags2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.anim_kit
CREATE TABLE IF NOT EXISTS `anim_kit` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `OneShotDuration` int unsigned NOT NULL DEFAULT '0',
  `OneShotStopAnimKitID` smallint unsigned NOT NULL DEFAULT '0',
  `LowDefAnimKitID` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.area_group_member
CREATE TABLE IF NOT EXISTS `area_group_member` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `AreaID` smallint unsigned NOT NULL DEFAULT '0',
  `AreaGroupID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.area_table
CREATE TABLE IF NOT EXISTS `area_table` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ZoneName` text COLLATE utf8mb4_unicode_ci,
  `AreaName` text COLLATE utf8mb4_unicode_ci,
  `ContinentID` smallint unsigned NOT NULL DEFAULT '0',
  `ParentAreaID` smallint unsigned NOT NULL DEFAULT '0',
  `AreaBit` smallint NOT NULL DEFAULT '0',
  `SoundProviderPref` tinyint unsigned NOT NULL DEFAULT '0',
  `SoundProviderPrefUnderwater` tinyint unsigned NOT NULL DEFAULT '0',
  `AmbienceID` smallint unsigned NOT NULL DEFAULT '0',
  `UwAmbience` smallint unsigned NOT NULL DEFAULT '0',
  `ZoneMusic` smallint unsigned NOT NULL DEFAULT '0',
  `UwZoneMusic` smallint unsigned NOT NULL DEFAULT '0',
  `ExplorationLevel` tinyint NOT NULL DEFAULT '0',
  `IntroSound` smallint unsigned NOT NULL DEFAULT '0',
  `UwIntroSound` int unsigned NOT NULL DEFAULT '0',
  `FactionGroupMask` tinyint unsigned NOT NULL DEFAULT '0',
  `AmbientMultiplier` float NOT NULL DEFAULT '0',
  `MountFlags` int NOT NULL DEFAULT '0',
  `PvpCombatWorldStateID` smallint NOT NULL DEFAULT '0',
  `WildBattlePetLevelMin` tinyint unsigned NOT NULL DEFAULT '0',
  `WildBattlePetLevelMax` tinyint unsigned NOT NULL DEFAULT '0',
  `WindSettingsID` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags1` int NOT NULL DEFAULT '0',
  `Flags2` int NOT NULL DEFAULT '0',
  `LiquidTypeID1` smallint unsigned NOT NULL DEFAULT '0',
  `LiquidTypeID2` smallint unsigned NOT NULL DEFAULT '0',
  `LiquidTypeID3` smallint unsigned NOT NULL DEFAULT '0',
  `LiquidTypeID4` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.area_table_locale
CREATE TABLE IF NOT EXISTS `area_table_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AreaName_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.area_trigger
CREATE TABLE IF NOT EXISTS `area_trigger` (
  `Message` text COLLATE utf8mb4_unicode_ci,
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ContinentID` smallint NOT NULL DEFAULT '0',
  `PhaseUseFlags` tinyint NOT NULL DEFAULT '0',
  `PhaseID` smallint NOT NULL DEFAULT '0',
  `PhaseGroupID` smallint NOT NULL DEFAULT '0',
  `Radius` float NOT NULL DEFAULT '0',
  `BoxLength` float NOT NULL DEFAULT '0',
  `BoxWidth` float NOT NULL DEFAULT '0',
  `BoxHeight` float NOT NULL DEFAULT '0',
  `BoxYaw` float NOT NULL DEFAULT '0',
  `ShapeType` tinyint NOT NULL DEFAULT '0',
  `ShapeID` smallint NOT NULL DEFAULT '0',
  `AreaTriggerActionSetID` smallint NOT NULL DEFAULT '0',
  `Flags` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.area_trigger_action_set
CREATE TABLE IF NOT EXISTS `area_trigger_action_set` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Flags` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.area_trigger_locale
CREATE TABLE IF NOT EXISTS `area_trigger_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Message_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.armor_location
CREATE TABLE IF NOT EXISTS `armor_location` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Clothmodifier` float NOT NULL DEFAULT '0',
  `Leathermodifier` float NOT NULL DEFAULT '0',
  `Chainmodifier` float NOT NULL DEFAULT '0',
  `Platemodifier` float NOT NULL DEFAULT '0',
  `Modifier` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.auction_house
CREATE TABLE IF NOT EXISTS `auction_house` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `FactionID` smallint unsigned NOT NULL DEFAULT '0',
  `DepositRate` tinyint unsigned NOT NULL DEFAULT '0',
  `ConsignmentRate` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.auction_house_locale
CREATE TABLE IF NOT EXISTS `auction_house_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.azerite_unlock_mapping
CREATE TABLE IF NOT EXISTS `azerite_unlock_mapping` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemLevel` int NOT NULL DEFAULT '0',
  `ItemBonusListHead` int NOT NULL DEFAULT '0',
  `ItemBonusListShoulders` int NOT NULL DEFAULT '0',
  `ItemBonusListChest` int NOT NULL DEFAULT '0',
  `AzeriteUnlockMappingSetID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.bank_bag_slot_prices
CREATE TABLE IF NOT EXISTS `bank_bag_slot_prices` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Cost` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.banned_addons
CREATE TABLE IF NOT EXISTS `banned_addons` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Version` text COLLATE utf8mb4_unicode_ci,
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.barber_shop_style
CREATE TABLE IF NOT EXISTS `barber_shop_style` (
  `DisplayName` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Type` tinyint unsigned NOT NULL DEFAULT '0',
  `CostModifier` float NOT NULL DEFAULT '0',
  `Race` tinyint unsigned NOT NULL DEFAULT '0',
  `Sex` tinyint unsigned NOT NULL DEFAULT '0',
  `Data` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.barber_shop_style_locale
CREATE TABLE IF NOT EXISTS `barber_shop_style_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DisplayName_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.battlemaster_list
CREATE TABLE IF NOT EXISTS `battlemaster_list` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `GameType` text COLLATE utf8mb4_unicode_ci,
  `ShortDescription` text COLLATE utf8mb4_unicode_ci,
  `LongDescription` text COLLATE utf8mb4_unicode_ci,
  `InstanceType` tinyint NOT NULL DEFAULT '0',
  `MinLevel` tinyint NOT NULL DEFAULT '0',
  `MaxLevel` tinyint NOT NULL DEFAULT '0',
  `RatedPlayers` tinyint NOT NULL DEFAULT '0',
  `MinPlayers` tinyint NOT NULL DEFAULT '0',
  `MaxPlayers` int NOT NULL DEFAULT '0',
  `GroupsAllowed` tinyint NOT NULL DEFAULT '0',
  `MaxGroupSize` tinyint NOT NULL DEFAULT '0',
  `HolidayWorldState` smallint NOT NULL DEFAULT '0',
  `Flags` tinyint NOT NULL DEFAULT '0',
  `IconFileDataID` int NOT NULL DEFAULT '0',
  `RequiredPlayerConditionID` int NOT NULL DEFAULT '0',
  `MapID1` smallint NOT NULL DEFAULT '0',
  `MapID2` smallint NOT NULL DEFAULT '0',
  `MapID3` smallint NOT NULL DEFAULT '0',
  `MapID4` smallint NOT NULL DEFAULT '0',
  `MapID5` smallint NOT NULL DEFAULT '0',
  `MapID6` smallint NOT NULL DEFAULT '0',
  `MapID7` smallint NOT NULL DEFAULT '0',
  `MapID8` smallint NOT NULL DEFAULT '0',
  `MapID9` smallint NOT NULL DEFAULT '0',
  `MapID10` smallint NOT NULL DEFAULT '0',
  `MapID11` smallint NOT NULL DEFAULT '0',
  `MapID12` smallint NOT NULL DEFAULT '0',
  `MapID13` smallint NOT NULL DEFAULT '0',
  `MapID14` smallint NOT NULL DEFAULT '0',
  `MapID15` smallint NOT NULL DEFAULT '0',
  `MapID16` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.battlemaster_list_locale
CREATE TABLE IF NOT EXISTS `battlemaster_list_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `GameType_lang` text COLLATE utf8mb4_unicode_ci,
  `ShortDescription_lang` text COLLATE utf8mb4_unicode_ci,
  `LongDescription_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.battle_pet_ability
CREATE TABLE IF NOT EXISTS `battle_pet_ability` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `IconFileDataID` int NOT NULL DEFAULT '0',
  `PetTypeEnum` tinyint NOT NULL DEFAULT '0',
  `Cooldown` int unsigned NOT NULL DEFAULT '0',
  `BattlePetVisualID` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.battle_pet_ability_locale
CREATE TABLE IF NOT EXISTS `battle_pet_ability_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.battle_pet_breed_quality
CREATE TABLE IF NOT EXISTS `battle_pet_breed_quality` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `StateMultiplier` float NOT NULL DEFAULT '0',
  `QualityEnum` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.battle_pet_breed_state
CREATE TABLE IF NOT EXISTS `battle_pet_breed_state` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `BattlePetStateID` tinyint unsigned NOT NULL DEFAULT '0',
  `Value` smallint unsigned NOT NULL DEFAULT '0',
  `BattlePetBreedID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.battle_pet_species
CREATE TABLE IF NOT EXISTS `battle_pet_species` (
  `Description` text COLLATE utf8mb4_unicode_ci,
  `SourceText` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `CreatureID` int NOT NULL DEFAULT '0',
  `SummonSpellID` int NOT NULL DEFAULT '0',
  `IconFileDataID` int NOT NULL DEFAULT '0',
  `PetTypeEnum` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `SourceTypeEnum` tinyint NOT NULL DEFAULT '0',
  `CardUIModelSceneID` int NOT NULL DEFAULT '0',
  `LoadoutUIModelSceneID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.battle_pet_species_locale
CREATE TABLE IF NOT EXISTS `battle_pet_species_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `SourceText_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.battle_pet_species_state
CREATE TABLE IF NOT EXISTS `battle_pet_species_state` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `BattlePetStateID` tinyint unsigned NOT NULL DEFAULT '0',
  `Value` int NOT NULL DEFAULT '0',
  `BattlePetSpeciesID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.broadcast_text
CREATE TABLE IF NOT EXISTS `broadcast_text` (
  `Text` text COLLATE utf8mb4_unicode_ci,
  `Text1` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `LanguageID` int NOT NULL DEFAULT '0',
  `ConditionID` int NOT NULL DEFAULT '0',
  `EmotesID` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `ChatBubbleDurationMs` int unsigned NOT NULL DEFAULT '0',
  `VoiceOverPriorityID` int NOT NULL DEFAULT '0',
  `SoundKitID1` int unsigned NOT NULL DEFAULT '0',
  `SoundKitID2` int unsigned NOT NULL DEFAULT '0',
  `EmoteID1` smallint unsigned NOT NULL DEFAULT '0',
  `EmoteID2` smallint unsigned NOT NULL DEFAULT '0',
  `EmoteID3` smallint unsigned NOT NULL DEFAULT '0',
  `EmoteDelay1` smallint unsigned NOT NULL DEFAULT '0',
  `EmoteDelay2` smallint unsigned NOT NULL DEFAULT '0',
  `EmoteDelay3` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.broadcast_text_duration
CREATE TABLE IF NOT EXISTS `broadcast_text_duration` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `BroadcastTextID` int NOT NULL DEFAULT '0',
  `Locale` int NOT NULL DEFAULT '0',
  `Duration` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.broadcast_text_locale
CREATE TABLE IF NOT EXISTS `broadcast_text_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Text_lang` text COLLATE utf8mb4_unicode_ci,
  `Text1_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.cfg_categories
CREATE TABLE IF NOT EXISTS `cfg_categories` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `LocaleMask` smallint unsigned NOT NULL DEFAULT '0',
  `CreateCharsetMask` tinyint unsigned NOT NULL DEFAULT '0',
  `ExistingCharsetMask` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `Order` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.cfg_categories_locale
CREATE TABLE IF NOT EXISTS `cfg_categories_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.cfg_regions
CREATE TABLE IF NOT EXISTS `cfg_regions` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Tag` text COLLATE utf8mb4_unicode_ci,
  `RegionID` smallint unsigned NOT NULL DEFAULT '0',
  `Raidorigin` int unsigned NOT NULL DEFAULT '0',
  `RegionGroupMask` tinyint unsigned NOT NULL DEFAULT '0',
  `ChallengeOrigin` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.challenge_mode_item_bonus_override
CREATE TABLE IF NOT EXISTS `challenge_mode_item_bonus_override` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemBonusTreeGroupID` int NOT NULL DEFAULT '0',
  `DstItemBonusTreeID` int NOT NULL DEFAULT '0',
  `Type` tinyint NOT NULL DEFAULT '0',
  `Value` int NOT NULL DEFAULT '0',
  `MythicPlusSeasonID` int NOT NULL DEFAULT '0',
  `PvPSeasonID` int NOT NULL DEFAULT '0',
  `SrcItemBonusTreeID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.character_loadout
CREATE TABLE IF NOT EXISTS `character_loadout` (
  `RaceMask` bigint NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ChrClassID` tinyint NOT NULL DEFAULT '0',
  `Purpose` int NOT NULL DEFAULT '0',
  `ItemContext` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.character_loadout_item
CREATE TABLE IF NOT EXISTS `character_loadout_item` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `CharacterLoadoutID` smallint unsigned NOT NULL DEFAULT '0',
  `ItemID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.character_service_info
CREATE TABLE IF NOT EXISTS `character_service_info` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `FlowTitleLang` text COLLATE utf8mb4_unicode_ci,
  `PopupTitleLang` text COLLATE utf8mb4_unicode_ci,
  `PopupDescriptionLang` text COLLATE utf8mb4_unicode_ci,
  `ServiceType` int NOT NULL DEFAULT '0',
  `BoostType` int NOT NULL DEFAULT '0',
  `IconFileDataID` int NOT NULL DEFAULT '0',
  `Priority` int NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `ProfessionLevel` int NOT NULL DEFAULT '0',
  `BoostLevel` int NOT NULL DEFAULT '0',
  `Expansion` int NOT NULL DEFAULT '0',
  `PopupUITextureKitID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.character_service_info_locale
CREATE TABLE IF NOT EXISTS `character_service_info_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FlowTitleLang_lang` text COLLATE utf8mb4_unicode_ci,
  `PopupTitleLang_lang` text COLLATE utf8mb4_unicode_ci,
  `PopupDescriptionLang_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.char_titles
CREATE TABLE IF NOT EXISTS `char_titles` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Name1` text COLLATE utf8mb4_unicode_ci,
  `MaskID` smallint NOT NULL DEFAULT '0',
  `Flags` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.char_titles_locale
CREATE TABLE IF NOT EXISTS `char_titles_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `Name1_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chat_channels
CREATE TABLE IF NOT EXISTS `chat_channels` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Shortcut` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `FactionGroup` tinyint NOT NULL DEFAULT '0',
  `Ruleset` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chat_channels_locale
CREATE TABLE IF NOT EXISTS `chat_channels_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `Shortcut_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_classes
CREATE TABLE IF NOT EXISTS `chr_classes` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Filename` text COLLATE utf8mb4_unicode_ci,
  `NameMale` text COLLATE utf8mb4_unicode_ci,
  `NameFemale` text COLLATE utf8mb4_unicode_ci,
  `PetNameToken` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `CreateScreenFileDataID` int unsigned NOT NULL DEFAULT '0',
  `SelectScreenFileDataID` int unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int unsigned NOT NULL DEFAULT '0',
  `LowResScreenFileDataID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `StartingLevel` int NOT NULL DEFAULT '0',
  `ArmorTypeMask` int unsigned NOT NULL DEFAULT '0',
  `CinematicSequenceID` smallint unsigned NOT NULL DEFAULT '0',
  `DefaultSpec` smallint unsigned NOT NULL DEFAULT '0',
  `HasStrengthAttackBonus` tinyint unsigned NOT NULL DEFAULT '0',
  `PrimaryStatPriority` tinyint unsigned NOT NULL DEFAULT '0',
  `DisplayPower` tinyint unsigned NOT NULL DEFAULT '0',
  `RangedAttackPowerPerAgility` tinyint unsigned NOT NULL DEFAULT '0',
  `AttackPowerPerAgility` tinyint unsigned NOT NULL DEFAULT '0',
  `AttackPowerPerStrength` tinyint unsigned NOT NULL DEFAULT '0',
  `SpellClassSet` tinyint unsigned NOT NULL DEFAULT '0',
  `RolesMask` tinyint unsigned NOT NULL DEFAULT '0',
  `DamageBonusStat` tinyint unsigned NOT NULL DEFAULT '0',
  `HasRelicSlot` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_classes_locale
CREATE TABLE IF NOT EXISTS `chr_classes_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `NameMale_lang` text COLLATE utf8mb4_unicode_ci,
  `NameFemale_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_classes_x_power_types
CREATE TABLE IF NOT EXISTS `chr_classes_x_power_types` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `PowerType` tinyint NOT NULL DEFAULT '0',
  `ClassID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_class_ui_display
CREATE TABLE IF NOT EXISTS `chr_class_ui_display` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ChrClassesID` tinyint unsigned NOT NULL DEFAULT '0',
  `AdvGuidePlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `SplashPlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_customization_choice
CREATE TABLE IF NOT EXISTS `chr_customization_choice` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ChrCustomizationOptionID` int NOT NULL DEFAULT '0',
  `ChrCustomizationReqID` int NOT NULL DEFAULT '0',
  `ChrCustomizationVisReqID` int NOT NULL DEFAULT '0',
  `SortOrder` smallint unsigned NOT NULL DEFAULT '0',
  `UiOrderIndex` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `AddedInPatch` int NOT NULL DEFAULT '0',
  `SoundKitID` int NOT NULL DEFAULT '0',
  `SwatchColor1` int NOT NULL DEFAULT '0',
  `SwatchColor2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_customization_choice_locale
CREATE TABLE IF NOT EXISTS `chr_customization_choice_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_customization_display_info
CREATE TABLE IF NOT EXISTS `chr_customization_display_info` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ShapeshiftFormID` int NOT NULL DEFAULT '0',
  `DisplayID` int NOT NULL DEFAULT '0',
  `BarberShopMinCameraDistance` float NOT NULL DEFAULT '0',
  `BarberShopHeightOffset` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_customization_element
CREATE TABLE IF NOT EXISTS `chr_customization_element` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ChrCustomizationChoiceID` int NOT NULL DEFAULT '0',
  `RelatedChrCustomizationChoiceID` int NOT NULL DEFAULT '0',
  `ChrCustomizationGeosetID` int NOT NULL DEFAULT '0',
  `ChrCustomizationSkinnedModelID` int NOT NULL DEFAULT '0',
  `ChrCustomizationMaterialID` int NOT NULL DEFAULT '0',
  `ChrCustomizationBoneSetID` int NOT NULL DEFAULT '0',
  `ChrCustomizationCondModelID` int NOT NULL DEFAULT '0',
  `ChrCustomizationDisplayInfoID` int NOT NULL DEFAULT '0',
  `ChrCustItemGeoModifyID` int NOT NULL DEFAULT '0',
  `ChrCustomizationVoiceID` int NOT NULL DEFAULT '0',
  `AnimKitID` int NOT NULL DEFAULT '0',
  `ParticleColorID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_customization_option
CREATE TABLE IF NOT EXISTS `chr_customization_option` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SecondaryID` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `ChrModelID` int NOT NULL DEFAULT '0',
  `SortIndex` int NOT NULL DEFAULT '0',
  `ChrCustomizationCategoryID` int NOT NULL DEFAULT '0',
  `OptionType` int NOT NULL DEFAULT '0',
  `BarberShopCostModifier` float NOT NULL DEFAULT '0',
  `ChrCustomizationID` int NOT NULL DEFAULT '0',
  `ChrCustomizationReqID` int NOT NULL DEFAULT '0',
  `UiOrderIndex` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_customization_option_locale
CREATE TABLE IF NOT EXISTS `chr_customization_option_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_customization_req
CREATE TABLE IF NOT EXISTS `chr_customization_req` (
  `RaceMask` bigint NOT NULL DEFAULT '0',
  `ReqSource` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `ClassMask` int NOT NULL DEFAULT '0',
  `AchievementID` int NOT NULL DEFAULT '0',
  `QuestID` int NOT NULL DEFAULT '0',
  `OverrideArchive` int NOT NULL DEFAULT '0',
  `ItemModifiedAppearanceID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_customization_req_choice
CREATE TABLE IF NOT EXISTS `chr_customization_req_choice` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ChrCustomizationChoiceID` int NOT NULL DEFAULT '0',
  `ChrCustomizationReqID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_customization_req_locale
CREATE TABLE IF NOT EXISTS `chr_customization_req_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ReqSource_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_model
CREATE TABLE IF NOT EXISTS `chr_model` (
  `FaceCustomizationOffset1` float NOT NULL DEFAULT '0',
  `FaceCustomizationOffset2` float NOT NULL DEFAULT '0',
  `FaceCustomizationOffset3` float NOT NULL DEFAULT '0',
  `CustomizeOffset1` float NOT NULL DEFAULT '0',
  `CustomizeOffset2` float NOT NULL DEFAULT '0',
  `CustomizeOffset3` float NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Sex` tinyint NOT NULL DEFAULT '0',
  `DisplayID` int NOT NULL DEFAULT '0',
  `CharComponentTextureLayoutID` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `SkeletonFileDataID` int NOT NULL DEFAULT '0',
  `ModelFallbackChrModelID` int NOT NULL DEFAULT '0',
  `TextureFallbackChrModelID` int NOT NULL DEFAULT '0',
  `HelmVisFallbackChrModelID` int NOT NULL DEFAULT '0',
  `CustomizeScale` float NOT NULL DEFAULT '0',
  `CustomizeFacing` float NOT NULL DEFAULT '0',
  `CameraDistanceOffset` float NOT NULL DEFAULT '0',
  `BarberShopCameraOffsetScale` float NOT NULL DEFAULT '0',
  `BarberShopCameraHeightOffsetScale` float NOT NULL DEFAULT '0',
  `BarberShopCameraRotationOffset` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_races
CREATE TABLE IF NOT EXISTS `chr_races` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ClientPrefix` text COLLATE utf8mb4_unicode_ci,
  `ClientFileString` text COLLATE utf8mb4_unicode_ci,
  `Name` text COLLATE utf8mb4_unicode_ci,
  `NameFemale` text COLLATE utf8mb4_unicode_ci,
  `NameLowercase` text COLLATE utf8mb4_unicode_ci,
  `NameFemaleLowercase` text COLLATE utf8mb4_unicode_ci,
  `LoreName` text COLLATE utf8mb4_unicode_ci,
  `LoreNameFemale` text COLLATE utf8mb4_unicode_ci,
  `LoreNameLower` text COLLATE utf8mb4_unicode_ci,
  `LoreNameLowerFemale` text COLLATE utf8mb4_unicode_ci,
  `LoreDescription` text COLLATE utf8mb4_unicode_ci,
  `ShortName` text COLLATE utf8mb4_unicode_ci,
  `ShortNameFemale` text COLLATE utf8mb4_unicode_ci,
  `ShortNameLower` text COLLATE utf8mb4_unicode_ci,
  `ShortNameLowerFemale` text COLLATE utf8mb4_unicode_ci,
  `Flags` int NOT NULL DEFAULT '0',
  `MaleDisplayID` int unsigned NOT NULL DEFAULT '0',
  `FemaleDisplayID` int unsigned NOT NULL DEFAULT '0',
  `HighResMaleDisplayID` int unsigned NOT NULL DEFAULT '0',
  `HighResFemaleDisplayID` int unsigned NOT NULL DEFAULT '0',
  `ResSicknessSpellID` int NOT NULL DEFAULT '0',
  `SplashSoundID` int NOT NULL DEFAULT '0',
  `CreateScreenFileDataID` int NOT NULL DEFAULT '0',
  `SelectScreenFileDataID` int NOT NULL DEFAULT '0',
  `LowResScreenFileDataID` int NOT NULL DEFAULT '0',
  `AlteredFormStartVisualKitID1` int unsigned NOT NULL DEFAULT '0',
  `AlteredFormStartVisualKitID2` int unsigned NOT NULL DEFAULT '0',
  `AlteredFormStartVisualKitID3` int unsigned NOT NULL DEFAULT '0',
  `AlteredFormFinishVisualKitID1` int unsigned NOT NULL DEFAULT '0',
  `AlteredFormFinishVisualKitID2` int unsigned NOT NULL DEFAULT '0',
  `AlteredFormFinishVisualKitID3` int unsigned NOT NULL DEFAULT '0',
  `HeritageArmorAchievementID` int NOT NULL DEFAULT '0',
  `StartingLevel` int NOT NULL DEFAULT '0',
  `UiDisplayOrder` int NOT NULL DEFAULT '0',
  `PlayableRaceBit` int NOT NULL DEFAULT '0',
  `FemaleSkeletonFileDataID` int NOT NULL DEFAULT '0',
  `MaleSkeletonFileDataID` int NOT NULL DEFAULT '0',
  `HelmetAnimScalingRaceID` int NOT NULL DEFAULT '0',
  `TransmogrifyDisabledSlotMask` int NOT NULL DEFAULT '0',
  `AlteredFormCustomizeOffsetFallback1` float NOT NULL DEFAULT '0',
  `AlteredFormCustomizeOffsetFallback2` float NOT NULL DEFAULT '0',
  `AlteredFormCustomizeOffsetFallback3` float NOT NULL DEFAULT '0',
  `AlteredFormCustomizeRotationFallback` float NOT NULL DEFAULT '0',
  `Unknown910_11` float NOT NULL DEFAULT '0',
  `Unknown910_12` float NOT NULL DEFAULT '0',
  `Unknown910_13` float NOT NULL DEFAULT '0',
  `Unknown910_21` float NOT NULL DEFAULT '0',
  `Unknown910_22` float NOT NULL DEFAULT '0',
  `Unknown910_23` float NOT NULL DEFAULT '0',
  `FactionID` smallint NOT NULL DEFAULT '0',
  `CinematicSequenceID` smallint NOT NULL DEFAULT '0',
  `BaseLanguage` tinyint NOT NULL DEFAULT '0',
  `CreatureType` tinyint NOT NULL DEFAULT '0',
  `Alliance` tinyint NOT NULL DEFAULT '0',
  `RaceRelated` tinyint NOT NULL DEFAULT '0',
  `UnalteredVisualRaceID` tinyint NOT NULL DEFAULT '0',
  `DefaultClassID` tinyint NOT NULL DEFAULT '0',
  `NeutralRaceID` tinyint NOT NULL DEFAULT '0',
  `MaleModelFallbackRaceID` tinyint NOT NULL DEFAULT '0',
  `MaleModelFallbackSex` tinyint NOT NULL DEFAULT '0',
  `FemaleModelFallbackRaceID` tinyint NOT NULL DEFAULT '0',
  `FemaleModelFallbackSex` tinyint NOT NULL DEFAULT '0',
  `MaleTextureFallbackRaceID` tinyint NOT NULL DEFAULT '0',
  `MaleTextureFallbackSex` tinyint NOT NULL DEFAULT '0',
  `FemaleTextureFallbackRaceID` tinyint NOT NULL DEFAULT '0',
  `FemaleTextureFallbackSex` tinyint NOT NULL DEFAULT '0',
  `UnalteredVisualCustomizationRaceID` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_races_locale
CREATE TABLE IF NOT EXISTS `chr_races_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `NameFemale_lang` text COLLATE utf8mb4_unicode_ci,
  `NameLowercase_lang` text COLLATE utf8mb4_unicode_ci,
  `NameFemaleLowercase_lang` text COLLATE utf8mb4_unicode_ci,
  `LoreName_lang` text COLLATE utf8mb4_unicode_ci,
  `LoreNameFemale_lang` text COLLATE utf8mb4_unicode_ci,
  `LoreNameLower_lang` text COLLATE utf8mb4_unicode_ci,
  `LoreNameLowerFemale_lang` text COLLATE utf8mb4_unicode_ci,
  `LoreDescription_lang` text COLLATE utf8mb4_unicode_ci,
  `ShortName_lang` text COLLATE utf8mb4_unicode_ci,
  `ShortNameFemale_lang` text COLLATE utf8mb4_unicode_ci,
  `ShortNameLower_lang` text COLLATE utf8mb4_unicode_ci,
  `ShortNameLowerFemale_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_race_x_chr_model
CREATE TABLE IF NOT EXISTS `chr_race_x_chr_model` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ChrRacesID` int NOT NULL DEFAULT '0',
  `ChrModelID` int NOT NULL DEFAULT '0',
  `Sex` int NOT NULL DEFAULT '0',
  `AllowedTransmogSlots` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_specialization
CREATE TABLE IF NOT EXISTS `chr_specialization` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `FemaleName` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ClassID` tinyint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint NOT NULL DEFAULT '0',
  `PetTalentType` tinyint NOT NULL DEFAULT '0',
  `Role` tinyint NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `SpellIconFileID` int NOT NULL DEFAULT '0',
  `PrimaryStatPriority` tinyint NOT NULL DEFAULT '0',
  `AnimReplacements` int NOT NULL DEFAULT '0',
  `MasterySpellID1` int NOT NULL DEFAULT '0',
  `MasterySpellID2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.chr_specialization_locale
CREATE TABLE IF NOT EXISTS `chr_specialization_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `FemaleName_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.cinematic_camera
CREATE TABLE IF NOT EXISTS `cinematic_camera` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `OriginX` float NOT NULL DEFAULT '0',
  `OriginY` float NOT NULL DEFAULT '0',
  `OriginZ` float NOT NULL DEFAULT '0',
  `SoundID` int unsigned NOT NULL DEFAULT '0',
  `OriginFacing` float NOT NULL DEFAULT '0',
  `FileDataID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.cinematic_sequences
CREATE TABLE IF NOT EXISTS `cinematic_sequences` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SoundID` int unsigned NOT NULL DEFAULT '0',
  `Camera1` smallint unsigned NOT NULL DEFAULT '0',
  `Camera2` smallint unsigned NOT NULL DEFAULT '0',
  `Camera3` smallint unsigned NOT NULL DEFAULT '0',
  `Camera4` smallint unsigned NOT NULL DEFAULT '0',
  `Camera5` smallint unsigned NOT NULL DEFAULT '0',
  `Camera6` smallint unsigned NOT NULL DEFAULT '0',
  `Camera7` smallint unsigned NOT NULL DEFAULT '0',
  `Camera8` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.conditional_chr_model
CREATE TABLE IF NOT EXISTS `conditional_chr_model` (
  `ID` int NOT NULL DEFAULT '0',
  `ChrModelID` int unsigned NOT NULL DEFAULT '0',
  `ChrCustomizationReqID` int NOT NULL DEFAULT '0',
  `PlayerConditionID` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `ChrCustomizationCategoryID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.conditional_content_tuning
CREATE TABLE IF NOT EXISTS `conditional_content_tuning` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `OrderIndex` int NOT NULL DEFAULT '0',
  `RedirectContentTuningID` int NOT NULL DEFAULT '0',
  `RedirectFlag` int NOT NULL DEFAULT '0',
  `ParentContentTuningID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.content_tuning
CREATE TABLE IF NOT EXISTS `content_tuning` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MinLevel` int NOT NULL DEFAULT '0',
  `MaxLevel` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `ExpectedStatModID` int NOT NULL DEFAULT '0',
  `DifficultyESMID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.content_tuning_x_expected
CREATE TABLE IF NOT EXISTS `content_tuning_x_expected` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ExpectedStatModID` int NOT NULL DEFAULT '0',
  `MinMythicPlusSeasonID` int NOT NULL DEFAULT '0',
  `MaxMythicPlusSeasonID` int NOT NULL DEFAULT '0',
  `ContentTuningID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.content_tuning_x_label
CREATE TABLE IF NOT EXISTS `content_tuning_x_label` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `LabelID` int NOT NULL DEFAULT '0',
  `ContentTuningID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.conversation_line
CREATE TABLE IF NOT EXISTS `conversation_line` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `BroadcastTextID` int unsigned NOT NULL DEFAULT '0',
  `SpellVisualKitID` int unsigned NOT NULL DEFAULT '0',
  `AdditionalDuration` int NOT NULL DEFAULT '0',
  `NextConversationLineID` smallint unsigned NOT NULL DEFAULT '0',
  `AnimKitID` smallint unsigned NOT NULL DEFAULT '0',
  `SpeechType` tinyint unsigned NOT NULL DEFAULT '0',
  `StartAnimation` tinyint unsigned NOT NULL DEFAULT '0',
  `EndAnimation` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.corruption_effects
CREATE TABLE IF NOT EXISTS `corruption_effects` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MinCorruption` float NOT NULL DEFAULT '0',
  `Aura` int NOT NULL DEFAULT '0',
  `PlayerConditionID` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.creature
CREATE TABLE IF NOT EXISTS `creature` (
  `ID` mediumint unsigned NOT NULL DEFAULT '0',
  `ItemID1` mediumint unsigned NOT NULL DEFAULT '0',
  `ItemID2` mediumint unsigned NOT NULL DEFAULT '0',
  `ItemID3` mediumint unsigned NOT NULL DEFAULT '0',
  `Mount` mediumint unsigned NOT NULL DEFAULT '0',
  `DisplayID1` mediumint unsigned NOT NULL DEFAULT '0',
  `DisplayID2` mediumint unsigned NOT NULL DEFAULT '0',
  `DisplayID3` mediumint unsigned NOT NULL DEFAULT '0',
  `DisplayID4` mediumint unsigned NOT NULL DEFAULT '0',
  `DisplayIDProbability1` float NOT NULL DEFAULT '0',
  `DisplayIDProbability2` float NOT NULL DEFAULT '0',
  `DisplayIDProbability3` float NOT NULL DEFAULT '0',
  `DisplayIDProbability4` float NOT NULL DEFAULT '0',
  `Name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FemaleName` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubName` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FemaleSubName` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` mediumint unsigned NOT NULL DEFAULT '0',
  `Family` tinyint unsigned NOT NULL DEFAULT '0',
  `Classification` tinyint unsigned NOT NULL DEFAULT '0',
  `InhabitType` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.creature_difficulty
CREATE TABLE IF NOT EXISTS `creature_difficulty` (
  `ID` mediumint unsigned NOT NULL DEFAULT '0',
  `CreatureID` mediumint unsigned NOT NULL DEFAULT '0',
  `Flags1` int unsigned NOT NULL DEFAULT '0',
  `Flags2` int unsigned NOT NULL DEFAULT '0',
  `Flags3` int unsigned NOT NULL DEFAULT '0',
  `Flags4` int unsigned NOT NULL DEFAULT '0',
  `Flags5` int unsigned NOT NULL DEFAULT '0',
  `Flags6` int unsigned NOT NULL DEFAULT '0',
  `Flags7` int unsigned NOT NULL DEFAULT '0',
  `FactionTemplateID` smallint unsigned NOT NULL DEFAULT '0',
  `Expansion` tinyint NOT NULL DEFAULT '0',
  `MinLevel` tinyint NOT NULL DEFAULT '0',
  `MaxLevel` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.creature_display_info
CREATE TABLE IF NOT EXISTS `creature_display_info` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ModelID` smallint unsigned NOT NULL DEFAULT '0',
  `SoundID` smallint unsigned NOT NULL DEFAULT '0',
  `SizeClass` tinyint NOT NULL DEFAULT '0',
  `CreatureModelScale` float NOT NULL DEFAULT '0',
  `CreatureModelAlpha` tinyint unsigned NOT NULL DEFAULT '0',
  `BloodID` tinyint unsigned NOT NULL DEFAULT '0',
  `ExtendedDisplayInfoID` int NOT NULL DEFAULT '0',
  `NPCSoundID` smallint unsigned NOT NULL DEFAULT '0',
  `ParticleColorID` smallint unsigned NOT NULL DEFAULT '0',
  `PortraitCreatureDisplayInfoID` int NOT NULL DEFAULT '0',
  `PortraitTextureFileDataID` int NOT NULL DEFAULT '0',
  `ObjectEffectPackageID` smallint unsigned NOT NULL DEFAULT '0',
  `AnimReplacementSetID` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `StateSpellVisualKitID` int NOT NULL DEFAULT '0',
  `PlayerOverrideScale` float NOT NULL DEFAULT '0',
  `PetInstanceScale` float NOT NULL DEFAULT '0',
  `UnarmedWeaponType` tinyint NOT NULL DEFAULT '0',
  `MountPoofSpellVisualKitID` int NOT NULL DEFAULT '0',
  `DissolveEffectID` int NOT NULL DEFAULT '0',
  `Gender` tinyint NOT NULL DEFAULT '0',
  `DissolveOutEffectID` int NOT NULL DEFAULT '0',
  `CreatureModelMinLod` tinyint NOT NULL DEFAULT '0',
  `TextureVariationFileDataID1` int NOT NULL DEFAULT '0',
  `TextureVariationFileDataID2` int NOT NULL DEFAULT '0',
  `TextureVariationFileDataID3` int NOT NULL DEFAULT '0',
  `TextureVariationFileDataID4` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.creature_display_info_extra
CREATE TABLE IF NOT EXISTS `creature_display_info_extra` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DisplayRaceID` tinyint NOT NULL DEFAULT '0',
  `DisplaySexID` tinyint NOT NULL DEFAULT '0',
  `DisplayClassID` tinyint NOT NULL DEFAULT '0',
  `SkinID` tinyint NOT NULL DEFAULT '0',
  `FaceID` tinyint NOT NULL DEFAULT '0',
  `HairStyleID` tinyint NOT NULL DEFAULT '0',
  `HairColorID` tinyint NOT NULL DEFAULT '0',
  `FacialHairID` tinyint NOT NULL DEFAULT '0',
  `Flags` tinyint NOT NULL DEFAULT '0',
  `BakeMaterialResourcesID` int NOT NULL DEFAULT '0',
  `HDBakeMaterialResourcesID` int NOT NULL DEFAULT '0',
  `CustomDisplayOption1` tinyint unsigned NOT NULL DEFAULT '0',
  `CustomDisplayOption2` tinyint unsigned NOT NULL DEFAULT '0',
  `CustomDisplayOption3` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.creature_family
CREATE TABLE IF NOT EXISTS `creature_family` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `MinScale` float NOT NULL DEFAULT '0',
  `MinScaleLevel` tinyint NOT NULL DEFAULT '0',
  `MaxScale` float NOT NULL DEFAULT '0',
  `MaxScaleLevel` tinyint NOT NULL DEFAULT '0',
  `PetFoodMask` smallint NOT NULL DEFAULT '0',
  `PetTalentType` tinyint NOT NULL DEFAULT '0',
  `CategoryEnumID` int NOT NULL DEFAULT '0',
  `IconFileID` int NOT NULL DEFAULT '0',
  `SkillLine1` smallint NOT NULL DEFAULT '0',
  `SkillLine2` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.creature_family_locale
CREATE TABLE IF NOT EXISTS `creature_family_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.creature_model_data
CREATE TABLE IF NOT EXISTS `creature_model_data` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `GeoBox1` float NOT NULL DEFAULT '0',
  `GeoBox2` float NOT NULL DEFAULT '0',
  `GeoBox3` float NOT NULL DEFAULT '0',
  `GeoBox4` float NOT NULL DEFAULT '0',
  `GeoBox5` float NOT NULL DEFAULT '0',
  `GeoBox6` float NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `FileDataID` int unsigned NOT NULL DEFAULT '0',
  `BloodID` int unsigned NOT NULL DEFAULT '0',
  `FootprintTextureID` int unsigned NOT NULL DEFAULT '0',
  `FootprintTextureLength` float NOT NULL DEFAULT '0',
  `FootprintTextureWidth` float NOT NULL DEFAULT '0',
  `FootprintParticleScale` float NOT NULL DEFAULT '0',
  `FoleyMaterialID` int unsigned NOT NULL DEFAULT '0',
  `FootstepCameraEffectID` int unsigned NOT NULL DEFAULT '0',
  `DeathThudCameraEffectID` int unsigned NOT NULL DEFAULT '0',
  `SoundID` int unsigned NOT NULL DEFAULT '0',
  `SizeClass` int unsigned NOT NULL DEFAULT '0',
  `CollisionWidth` float NOT NULL DEFAULT '0',
  `CollisionHeight` float NOT NULL DEFAULT '0',
  `WorldEffectScale` float NOT NULL DEFAULT '0',
  `CreatureGeosetDataID` int unsigned NOT NULL DEFAULT '0',
  `HoverHeight` float NOT NULL DEFAULT '0',
  `AttachedEffectScale` float NOT NULL DEFAULT '0',
  `ModelScale` float NOT NULL DEFAULT '0',
  `MissileCollisionRadius` float NOT NULL DEFAULT '0',
  `MissileCollisionPush` float NOT NULL DEFAULT '0',
  `MissileCollisionRaise` float NOT NULL DEFAULT '0',
  `MountHeight` float NOT NULL DEFAULT '0',
  `OverrideLootEffectScale` float NOT NULL DEFAULT '0',
  `OverrideNameScale` float NOT NULL DEFAULT '0',
  `OverrideSelectionRadius` float NOT NULL DEFAULT '0',
  `TamedPetBaseScale` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.creature_type
CREATE TABLE IF NOT EXISTS `creature_type` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.creature_type_locale
CREATE TABLE IF NOT EXISTS `creature_type_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.criteria
CREATE TABLE IF NOT EXISTS `criteria` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Type` smallint NOT NULL DEFAULT '0',
  `Asset` int NOT NULL DEFAULT '0',
  `ModifierTreeId` int unsigned NOT NULL DEFAULT '0',
  `StartEvent` int NOT NULL DEFAULT '0',
  `StartAsset` int NOT NULL DEFAULT '0',
  `StartTimer` smallint unsigned NOT NULL DEFAULT '0',
  `FailEvent` int NOT NULL DEFAULT '0',
  `FailAsset` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `EligibilityWorldStateID` smallint NOT NULL DEFAULT '0',
  `EligibilityWorldStateValue` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.criteria_tree
CREATE TABLE IF NOT EXISTS `criteria_tree` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Description` text COLLATE utf8mb4_unicode_ci,
  `Parent` int unsigned NOT NULL DEFAULT '0',
  `Amount` int unsigned NOT NULL DEFAULT '0',
  `Operator` int NOT NULL DEFAULT '0',
  `CriteriaID` int unsigned NOT NULL DEFAULT '0',
  `OrderIndex` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.criteria_tree_locale
CREATE TABLE IF NOT EXISTS `criteria_tree_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.currency_container
CREATE TABLE IF NOT EXISTS `currency_container` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ContainerName` text COLLATE utf8mb4_unicode_ci,
  `ContainerDescription` text COLLATE utf8mb4_unicode_ci,
  `MinAmount` int NOT NULL DEFAULT '0',
  `MaxAmount` int NOT NULL DEFAULT '0',
  `ContainerIconID` int NOT NULL DEFAULT '0',
  `ContainerQuality` int NOT NULL DEFAULT '0',
  `OnLootSpellVisualKitID` int NOT NULL DEFAULT '0',
  `CurrencyTypesID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.currency_container_locale
CREATE TABLE IF NOT EXISTS `currency_container_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ContainerName_lang` text COLLATE utf8mb4_unicode_ci,
  `ContainerDescription_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.currency_types
CREATE TABLE IF NOT EXISTS `currency_types` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `CategoryID` tinyint unsigned NOT NULL DEFAULT '0',
  `InventoryIconFileID` int NOT NULL DEFAULT '0',
  `SpellWeight` int unsigned NOT NULL DEFAULT '0',
  `SpellCategory` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxQty` int unsigned NOT NULL DEFAULT '0',
  `MaxEarnablePerWeek` int unsigned NOT NULL DEFAULT '0',
  `Quality` tinyint NOT NULL DEFAULT '0',
  `FactionID` int NOT NULL DEFAULT '0',
  `AwardConditionID` int NOT NULL DEFAULT '0',
  `Flags1` int NOT NULL DEFAULT '0',
  `Flags2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.currency_types_locale
CREATE TABLE IF NOT EXISTS `currency_types_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.curve
CREATE TABLE IF NOT EXISTS `curve` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Type` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.curve_point
CREATE TABLE IF NOT EXISTS `curve_point` (
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PreSLSquishPosX` float NOT NULL DEFAULT '0',
  `PreSLSquishPosY` float NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `CurveID` int NOT NULL DEFAULT '0',
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.destructible_model_data
CREATE TABLE IF NOT EXISTS `destructible_model_data` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `State0ImpactEffectDoodadSet` tinyint NOT NULL DEFAULT '0',
  `State0AmbientDoodadSet` tinyint unsigned NOT NULL DEFAULT '0',
  `State1Wmo` int unsigned NOT NULL DEFAULT '0',
  `State1DestructionDoodadSet` tinyint NOT NULL DEFAULT '0',
  `State1ImpactEffectDoodadSet` tinyint NOT NULL DEFAULT '0',
  `State1AmbientDoodadSet` tinyint unsigned NOT NULL DEFAULT '0',
  `State2Wmo` int unsigned NOT NULL DEFAULT '0',
  `State2DestructionDoodadSet` tinyint NOT NULL DEFAULT '0',
  `State2ImpactEffectDoodadSet` tinyint NOT NULL DEFAULT '0',
  `State2AmbientDoodadSet` tinyint unsigned NOT NULL DEFAULT '0',
  `State3Wmo` int unsigned NOT NULL DEFAULT '0',
  `State3InitDoodadSet` tinyint unsigned NOT NULL DEFAULT '0',
  `State3AmbientDoodadSet` tinyint unsigned NOT NULL DEFAULT '0',
  `EjectDirection` tinyint unsigned NOT NULL DEFAULT '0',
  `DoNotHighlight` tinyint unsigned NOT NULL DEFAULT '0',
  `State0Wmo` int unsigned NOT NULL DEFAULT '0',
  `HealEffect` tinyint unsigned NOT NULL DEFAULT '0',
  `HealEffectSpeed` smallint unsigned NOT NULL DEFAULT '0',
  `State0NameSet` tinyint NOT NULL DEFAULT '0',
  `State1NameSet` tinyint NOT NULL DEFAULT '0',
  `State2NameSet` tinyint NOT NULL DEFAULT '0',
  `State3NameSet` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.difficulty
CREATE TABLE IF NOT EXISTS `difficulty` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `InstanceType` tinyint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `OldEnumValue` tinyint NOT NULL DEFAULT '0',
  `FallbackDifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `MinPlayers` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `ItemContext` tinyint unsigned NOT NULL DEFAULT '0',
  `ToggleDifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `GroupSizeHealthCurveID` smallint unsigned NOT NULL DEFAULT '0',
  `GroupSizeDmgCurveID` smallint unsigned NOT NULL DEFAULT '0',
  `GroupSizeSpellPointsCurveID` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.difficulty_locale
CREATE TABLE IF NOT EXISTS `difficulty_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.dungeon_encounter
CREATE TABLE IF NOT EXISTS `dungeon_encounter` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MapID` smallint NOT NULL DEFAULT '0',
  `DifficultyID` int NOT NULL DEFAULT '0',
  `OrderIndex` int NOT NULL DEFAULT '0',
  `Bit` tinyint NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `Faction` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.dungeon_encounter_locale
CREATE TABLE IF NOT EXISTS `dungeon_encounter_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.durability_costs
CREATE TABLE IF NOT EXISTS `durability_costs` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost1` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost2` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost3` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost4` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost5` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost6` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost7` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost8` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost9` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost10` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost11` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost12` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost13` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost14` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost15` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost16` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost17` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost18` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost19` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost20` smallint unsigned NOT NULL DEFAULT '0',
  `WeaponSubClassCost21` smallint unsigned NOT NULL DEFAULT '0',
  `ArmorSubClassCost1` smallint unsigned NOT NULL DEFAULT '0',
  `ArmorSubClassCost2` smallint unsigned NOT NULL DEFAULT '0',
  `ArmorSubClassCost3` smallint unsigned NOT NULL DEFAULT '0',
  `ArmorSubClassCost4` smallint unsigned NOT NULL DEFAULT '0',
  `ArmorSubClassCost5` smallint unsigned NOT NULL DEFAULT '0',
  `ArmorSubClassCost6` smallint unsigned NOT NULL DEFAULT '0',
  `ArmorSubClassCost7` smallint unsigned NOT NULL DEFAULT '0',
  `ArmorSubClassCost8` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.durability_quality
CREATE TABLE IF NOT EXISTS `durability_quality` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Data` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.emotes
CREATE TABLE IF NOT EXISTS `emotes` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `RaceMask` bigint NOT NULL DEFAULT '0',
  `EmoteSlashCommand` text COLLATE utf8mb4_unicode_ci,
  `AnimID` int NOT NULL DEFAULT '0',
  `EmoteFlags` int unsigned NOT NULL DEFAULT '0',
  `EmoteSpecProc` tinyint unsigned NOT NULL DEFAULT '0',
  `EmoteSpecProcParam` int unsigned NOT NULL DEFAULT '0',
  `EventSoundID` int unsigned NOT NULL DEFAULT '0',
  `SpellVisualKitID` int unsigned NOT NULL DEFAULT '0',
  `ClassMask` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.emotes_text
CREATE TABLE IF NOT EXISTS `emotes_text` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `EmoteID` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.emotes_text_sound
CREATE TABLE IF NOT EXISTS `emotes_text_sound` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `RaceID` tinyint unsigned NOT NULL DEFAULT '0',
  `ClassID` tinyint unsigned NOT NULL DEFAULT '0',
  `SexID` tinyint unsigned NOT NULL DEFAULT '0',
  `SoundID` int unsigned NOT NULL DEFAULT '0',
  `EmotesTextID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.expected_stat
CREATE TABLE IF NOT EXISTS `expected_stat` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ExpansionID` int NOT NULL DEFAULT '0',
  `CreatureHealth` float NOT NULL DEFAULT '0',
  `PlayerHealth` float NOT NULL DEFAULT '0',
  `CreatureAutoAttackDps` float NOT NULL DEFAULT '0',
  `CreatureArmor` float NOT NULL DEFAULT '0',
  `PlayerMana` float NOT NULL DEFAULT '0',
  `PlayerPrimaryStat` float NOT NULL DEFAULT '0',
  `PlayerSecondaryStat` float NOT NULL DEFAULT '0',
  `ArmorConstant` float NOT NULL DEFAULT '0',
  `CreatureSpellDamage` float NOT NULL DEFAULT '0',
  `Lvl` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.expected_stat_mod
CREATE TABLE IF NOT EXISTS `expected_stat_mod` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `CreatureHealthMod` float NOT NULL DEFAULT '0',
  `PlayerHealthMod` float NOT NULL DEFAULT '0',
  `CreatureAutoAttackDPSMod` float NOT NULL DEFAULT '0',
  `CreatureArmorMod` float NOT NULL DEFAULT '0',
  `PlayerManaMod` float NOT NULL DEFAULT '0',
  `PlayerPrimaryStatMod` float NOT NULL DEFAULT '0',
  `PlayerSecondaryStatMod` float NOT NULL DEFAULT '0',
  `ArmorConstantMod` float NOT NULL DEFAULT '0',
  `CreatureSpellDamageMod` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.faction
CREATE TABLE IF NOT EXISTS `faction` (
  `ReputationRaceMask1` bigint NOT NULL DEFAULT '0',
  `ReputationRaceMask2` bigint NOT NULL DEFAULT '0',
  `ReputationRaceMask3` bigint NOT NULL DEFAULT '0',
  `ReputationRaceMask4` bigint NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ReputationIndex` smallint NOT NULL DEFAULT '0',
  `ParentFactionID` smallint unsigned NOT NULL DEFAULT '0',
  `Expansion` tinyint unsigned NOT NULL DEFAULT '0',
  `FriendshipRepID` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `ParagonFactionID` smallint unsigned NOT NULL DEFAULT '0',
  `RenownFactionID` int NOT NULL DEFAULT '0',
  `RenownCurrencyID` int NOT NULL DEFAULT '0',
  `ReputationClassMask1` smallint NOT NULL DEFAULT '0',
  `ReputationClassMask2` smallint NOT NULL DEFAULT '0',
  `ReputationClassMask3` smallint NOT NULL DEFAULT '0',
  `ReputationClassMask4` smallint NOT NULL DEFAULT '0',
  `ReputationFlags1` smallint unsigned NOT NULL DEFAULT '0',
  `ReputationFlags2` smallint unsigned NOT NULL DEFAULT '0',
  `ReputationFlags3` smallint unsigned NOT NULL DEFAULT '0',
  `ReputationFlags4` smallint unsigned NOT NULL DEFAULT '0',
  `ReputationBase1` int NOT NULL DEFAULT '0',
  `ReputationBase2` int NOT NULL DEFAULT '0',
  `ReputationBase3` int NOT NULL DEFAULT '0',
  `ReputationBase4` int NOT NULL DEFAULT '0',
  `ReputationMax1` int NOT NULL DEFAULT '0',
  `ReputationMax2` int NOT NULL DEFAULT '0',
  `ReputationMax3` int NOT NULL DEFAULT '0',
  `ReputationMax4` int NOT NULL DEFAULT '0',
  `ParentFactionMod1` float NOT NULL DEFAULT '0',
  `ParentFactionMod2` float NOT NULL DEFAULT '0',
  `ParentFactionCap1` tinyint unsigned NOT NULL DEFAULT '0',
  `ParentFactionCap2` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.faction_locale
CREATE TABLE IF NOT EXISTS `faction_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.faction_template
CREATE TABLE IF NOT EXISTS `faction_template` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Faction` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` smallint unsigned NOT NULL DEFAULT '0',
  `FactionGroup` tinyint unsigned NOT NULL DEFAULT '0',
  `FriendGroup` tinyint unsigned NOT NULL DEFAULT '0',
  `EnemyGroup` tinyint unsigned NOT NULL DEFAULT '0',
  `Enemies1` smallint unsigned NOT NULL DEFAULT '0',
  `Enemies2` smallint unsigned NOT NULL DEFAULT '0',
  `Enemies3` smallint unsigned NOT NULL DEFAULT '0',
  `Enemies4` smallint unsigned NOT NULL DEFAULT '0',
  `Enemies5` smallint unsigned NOT NULL DEFAULT '0',
  `Enemies6` smallint unsigned NOT NULL DEFAULT '0',
  `Enemies7` smallint unsigned NOT NULL DEFAULT '0',
  `Enemies8` smallint unsigned NOT NULL DEFAULT '0',
  `Friend1` smallint unsigned NOT NULL DEFAULT '0',
  `Friend2` smallint unsigned NOT NULL DEFAULT '0',
  `Friend3` smallint unsigned NOT NULL DEFAULT '0',
  `Friend4` smallint unsigned NOT NULL DEFAULT '0',
  `Friend5` smallint unsigned NOT NULL DEFAULT '0',
  `Friend6` smallint unsigned NOT NULL DEFAULT '0',
  `Friend7` smallint unsigned NOT NULL DEFAULT '0',
  `Friend8` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.friendship_reputation
CREATE TABLE IF NOT EXISTS `friendship_reputation` (
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Field34146722002` int NOT NULL DEFAULT '0',
  `Field34146722003` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.friendship_reputation_locale
CREATE TABLE IF NOT EXISTS `friendship_reputation_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.friendship_rep_reaction
CREATE TABLE IF NOT EXISTS `friendship_rep_reaction` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Reaction` text COLLATE utf8mb4_unicode_ci,
  `FriendshipRepID` tinyint unsigned NOT NULL DEFAULT '0',
  `ReactionThreshold` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.friendship_rep_reaction_locale
CREATE TABLE IF NOT EXISTS `friendship_rep_reaction_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reaction_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.gameobjects
CREATE TABLE IF NOT EXISTS `gameobjects` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `Rot1` float NOT NULL DEFAULT '0',
  `Rot2` float NOT NULL DEFAULT '0',
  `Rot3` float NOT NULL DEFAULT '0',
  `Rot4` float NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `OwnerID` smallint unsigned NOT NULL DEFAULT '0',
  `DisplayID` int unsigned NOT NULL DEFAULT '0',
  `Scale` float NOT NULL DEFAULT '0',
  `TypeID` tinyint unsigned NOT NULL DEFAULT '0',
  `PhaseUseFlags` tinyint unsigned NOT NULL DEFAULT '0',
  `PhaseID` smallint unsigned NOT NULL DEFAULT '0',
  `PhaseGroupID` smallint unsigned NOT NULL DEFAULT '0',
  `PropValue1` int NOT NULL DEFAULT '0',
  `PropValue2` int NOT NULL DEFAULT '0',
  `PropValue3` int NOT NULL DEFAULT '0',
  `PropValue4` int NOT NULL DEFAULT '0',
  `PropValue5` int NOT NULL DEFAULT '0',
  `PropValue6` int NOT NULL DEFAULT '0',
  `PropValue7` int NOT NULL DEFAULT '0',
  `PropValue8` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.gameobjects_locale
CREATE TABLE IF NOT EXISTS `gameobjects_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.gameobject_art_kit
CREATE TABLE IF NOT EXISTS `gameobject_art_kit` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `AttachModelFileID` int NOT NULL DEFAULT '0',
  `TextureVariationFileID1` int NOT NULL DEFAULT '0',
  `TextureVariationFileID2` int NOT NULL DEFAULT '0',
  `TextureVariationFileID3` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.gameobject_display_info
CREATE TABLE IF NOT EXISTS `gameobject_display_info` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ModelName` text COLLATE utf8mb4_unicode_ci,
  `GeoBoxMinX` float NOT NULL DEFAULT '0',
  `GeoBoxMinY` float NOT NULL DEFAULT '0',
  `GeoBoxMinZ` float NOT NULL DEFAULT '0',
  `GeoBoxMaxX` float NOT NULL DEFAULT '0',
  `GeoBoxMaxY` float NOT NULL DEFAULT '0',
  `GeoBoxMaxZ` float NOT NULL DEFAULT '0',
  `FileDataID` int NOT NULL DEFAULT '0',
  `ObjectEffectPackageID` smallint NOT NULL DEFAULT '0',
  `OverrideLootEffectScale` float NOT NULL DEFAULT '0',
  `OverrideNameScale` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.gem_properties
CREATE TABLE IF NOT EXISTS `gem_properties` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `EnchantId` smallint unsigned NOT NULL DEFAULT '0',
  `Type` int NOT NULL DEFAULT '0',
  `MinItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.global_curve
CREATE TABLE IF NOT EXISTS `global_curve` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `CurveID` int NOT NULL DEFAULT '0',
  `Type` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.global_strings
CREATE TABLE IF NOT EXISTS `global_strings` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `BaseTag` text COLLATE utf8mb4_unicode_ci,
  `TagText` text COLLATE utf8mb4_unicode_ci,
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.global_strings_locale
CREATE TABLE IF NOT EXISTS `global_strings_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TagText_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.glyph_bindable_spell
CREATE TABLE IF NOT EXISTS `glyph_bindable_spell` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `GlyphPropertiesID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.glyph_properties
CREATE TABLE IF NOT EXISTS `glyph_properties` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `GlyphType` tinyint unsigned NOT NULL DEFAULT '0',
  `GlyphExclusiveCategoryID` tinyint unsigned NOT NULL DEFAULT '0',
  `SpellIconFileDataID` int NOT NULL DEFAULT '0',
  `GlyphSlotFlags` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.glyph_required_spec
CREATE TABLE IF NOT EXISTS `glyph_required_spec` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ChrSpecializationID` smallint unsigned NOT NULL DEFAULT '0',
  `GlyphPropertiesID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.glyph_slot
CREATE TABLE IF NOT EXISTS `glyph_slot` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Tooltip` int NOT NULL DEFAULT '0',
  `Type` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.gossip_npc_option
CREATE TABLE IF NOT EXISTS `gossip_npc_option` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `GossipNpcOption` int NOT NULL DEFAULT '0',
  `LFGDungeonsID` int NOT NULL DEFAULT '0',
  `Unk341_1` int NOT NULL DEFAULT '0',
  `Unk341_2` int NOT NULL DEFAULT '0',
  `Unk341_3` int NOT NULL DEFAULT '0',
  `Unk341_4` int NOT NULL DEFAULT '0',
  `Unk341_5` int NOT NULL DEFAULT '0',
  `Unk341_6` int NOT NULL DEFAULT '0',
  `Unk341_7` int NOT NULL DEFAULT '0',
  `Unk341_8` int NOT NULL DEFAULT '0',
  `Unk341_9` int NOT NULL DEFAULT '0',
  `GossipOptionID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.group_finder_activity
CREATE TABLE IF NOT EXISTS `group_finder_activity` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `FullName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ShortName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `GroupFinderCategoryID` tinyint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint NOT NULL DEFAULT '0',
  `GroupFinderActivityGrpID` int NOT NULL DEFAULT '0',
  `Unk340_Level` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `MinGearLevelSuggestion` smallint unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int NOT NULL DEFAULT '0',
  `MapID` smallint unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `AreaID` smallint unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint unsigned NOT NULL DEFAULT '0',
  `DisplayType` tinyint unsigned NOT NULL DEFAULT '0',
  `MinLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxLevelSuggestion` tinyint unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.group_finder_activity_locale
CREATE TABLE IF NOT EXISTS `group_finder_activity_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FullName_lang` text COLLATE utf8mb4_unicode_ci,
  `ShortName_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.guild_color_background
CREATE TABLE IF NOT EXISTS `guild_color_background` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Red` tinyint unsigned NOT NULL DEFAULT '0',
  `Blue` tinyint unsigned NOT NULL DEFAULT '0',
  `Green` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.guild_color_border
CREATE TABLE IF NOT EXISTS `guild_color_border` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Red` tinyint unsigned NOT NULL DEFAULT '0',
  `Blue` tinyint unsigned NOT NULL DEFAULT '0',
  `Green` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.guild_color_emblem
CREATE TABLE IF NOT EXISTS `guild_color_emblem` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Red` tinyint unsigned NOT NULL DEFAULT '0',
  `Blue` tinyint unsigned NOT NULL DEFAULT '0',
  `Green` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.guild_perk_spells
CREATE TABLE IF NOT EXISTS `guild_perk_spells` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.heirloom
CREATE TABLE IF NOT EXISTS `heirloom` (
  `SourceText` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemID` int NOT NULL DEFAULT '0',
  `LegacyUpgradedItemID` int NOT NULL DEFAULT '0',
  `StaticUpgradedItemID` int NOT NULL DEFAULT '0',
  `SourceTypeEnum` tinyint NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `LegacyItemID` int NOT NULL DEFAULT '0',
  `UpgradeItemID1` int NOT NULL DEFAULT '0',
  `UpgradeItemID2` int NOT NULL DEFAULT '0',
  `UpgradeItemID3` int NOT NULL DEFAULT '0',
  `UpgradeItemID4` int NOT NULL DEFAULT '0',
  `UpgradeItemID5` int NOT NULL DEFAULT '0',
  `UpgradeItemID6` int NOT NULL DEFAULT '0',
  `UpgradeItemBonusListID1` smallint unsigned NOT NULL DEFAULT '0',
  `UpgradeItemBonusListID2` smallint unsigned NOT NULL DEFAULT '0',
  `UpgradeItemBonusListID3` smallint unsigned NOT NULL DEFAULT '0',
  `UpgradeItemBonusListID4` smallint unsigned NOT NULL DEFAULT '0',
  `UpgradeItemBonusListID5` smallint unsigned NOT NULL DEFAULT '0',
  `UpgradeItemBonusListID6` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.heirloom_locale
CREATE TABLE IF NOT EXISTS `heirloom_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SourceText_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.holidays
CREATE TABLE IF NOT EXISTS `holidays` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Region` smallint unsigned NOT NULL DEFAULT '0',
  `Looping` tinyint unsigned NOT NULL DEFAULT '0',
  `HolidayNameID` int unsigned NOT NULL DEFAULT '0',
  `HolidayDescriptionID` int unsigned NOT NULL DEFAULT '0',
  `Priority` tinyint unsigned NOT NULL DEFAULT '0',
  `CalendarFilterType` tinyint NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `WorldStateExpressionID` int unsigned NOT NULL DEFAULT '0',
  `Duration1` smallint unsigned NOT NULL DEFAULT '0',
  `Duration2` smallint unsigned NOT NULL DEFAULT '0',
  `Duration3` smallint unsigned NOT NULL DEFAULT '0',
  `Duration4` smallint unsigned NOT NULL DEFAULT '0',
  `Duration5` smallint unsigned NOT NULL DEFAULT '0',
  `Duration6` smallint unsigned NOT NULL DEFAULT '0',
  `Duration7` smallint unsigned NOT NULL DEFAULT '0',
  `Duration8` smallint unsigned NOT NULL DEFAULT '0',
  `Duration9` smallint unsigned NOT NULL DEFAULT '0',
  `Duration10` smallint unsigned NOT NULL DEFAULT '0',
  `Date1` int unsigned NOT NULL DEFAULT '0',
  `Date2` int unsigned NOT NULL DEFAULT '0',
  `Date3` int unsigned NOT NULL DEFAULT '0',
  `Date4` int unsigned NOT NULL DEFAULT '0',
  `Date5` int unsigned NOT NULL DEFAULT '0',
  `Date6` int unsigned NOT NULL DEFAULT '0',
  `Date7` int unsigned NOT NULL DEFAULT '0',
  `Date8` int unsigned NOT NULL DEFAULT '0',
  `Date9` int unsigned NOT NULL DEFAULT '0',
  `Date10` int unsigned NOT NULL DEFAULT '0',
  `Date11` int unsigned NOT NULL DEFAULT '0',
  `Date12` int unsigned NOT NULL DEFAULT '0',
  `Date13` int unsigned NOT NULL DEFAULT '0',
  `Date14` int unsigned NOT NULL DEFAULT '0',
  `Date15` int unsigned NOT NULL DEFAULT '0',
  `Date16` int unsigned NOT NULL DEFAULT '0',
  `CalendarFlags1` tinyint unsigned NOT NULL DEFAULT '0',
  `CalendarFlags2` tinyint unsigned NOT NULL DEFAULT '0',
  `CalendarFlags3` tinyint unsigned NOT NULL DEFAULT '0',
  `CalendarFlags4` tinyint unsigned NOT NULL DEFAULT '0',
  `CalendarFlags5` tinyint unsigned NOT NULL DEFAULT '0',
  `CalendarFlags6` tinyint unsigned NOT NULL DEFAULT '0',
  `CalendarFlags7` tinyint unsigned NOT NULL DEFAULT '0',
  `CalendarFlags8` tinyint unsigned NOT NULL DEFAULT '0',
  `CalendarFlags9` tinyint unsigned NOT NULL DEFAULT '0',
  `CalendarFlags10` tinyint unsigned NOT NULL DEFAULT '0',
  `TextureFileDataID1` int NOT NULL DEFAULT '0',
  `TextureFileDataID2` int NOT NULL DEFAULT '0',
  `TextureFileDataID3` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.hotfix_blob
CREATE TABLE IF NOT EXISTS `hotfix_blob` (
  `TableHash` int unsigned NOT NULL,
  `RecordId` int NOT NULL,
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Blob` blob,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`TableHash`,`RecordId`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.hotfix_data
CREATE TABLE IF NOT EXISTS `hotfix_data` (
  `Id` int NOT NULL,
  `UniqueId` int unsigned NOT NULL DEFAULT '0',
  `TableHash` int unsigned NOT NULL,
  `RecordId` int NOT NULL,
  `Status` tinyint unsigned NOT NULL DEFAULT '3',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  `Comment` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`Id`,`TableHash`,`RecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.hotfix_optional_data
CREATE TABLE IF NOT EXISTS `hotfix_optional_data` (
  `TableHash` int unsigned NOT NULL,
  `RecordId` int unsigned NOT NULL,
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Key` int unsigned NOT NULL,
  `Data` blob NOT NULL,
  `VerifiedBuild` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.import_price_armor
CREATE TABLE IF NOT EXISTS `import_price_armor` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ClothModifier` float NOT NULL DEFAULT '0',
  `LeatherModifier` float NOT NULL DEFAULT '0',
  `ChainModifier` float NOT NULL DEFAULT '0',
  `PlateModifier` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.import_price_quality
CREATE TABLE IF NOT EXISTS `import_price_quality` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Data` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.import_price_shield
CREATE TABLE IF NOT EXISTS `import_price_shield` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Data` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.import_price_weapon
CREATE TABLE IF NOT EXISTS `import_price_weapon` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Data` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item
CREATE TABLE IF NOT EXISTS `item` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ClassID` tinyint unsigned NOT NULL DEFAULT '0',
  `SubclassID` tinyint unsigned NOT NULL DEFAULT '0',
  `Material` tinyint unsigned NOT NULL DEFAULT '0',
  `InventoryType` tinyint NOT NULL DEFAULT '0',
  `RequiredLevel` int NOT NULL DEFAULT '0',
  `SheatheType` tinyint unsigned NOT NULL DEFAULT '0',
  `RandomSelect` smallint unsigned NOT NULL DEFAULT '0',
  `ItemRandomSuffixGroupID` smallint unsigned NOT NULL DEFAULT '0',
  `SoundOverrideSubclassID` tinyint NOT NULL DEFAULT '0',
  `ScalingStatDistributionID` smallint unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int NOT NULL DEFAULT '0',
  `ItemGroupSoundsID` tinyint unsigned NOT NULL DEFAULT '0',
  `ContentTuningID` int NOT NULL DEFAULT '0',
  `MaxDurability` int unsigned NOT NULL DEFAULT '0',
  `AmmunitionType` tinyint unsigned NOT NULL DEFAULT '0',
  `ScalingStatValue` int NOT NULL DEFAULT '0',
  `DamageType1` tinyint unsigned NOT NULL DEFAULT '0',
  `DamageType2` tinyint unsigned NOT NULL DEFAULT '0',
  `DamageType3` tinyint unsigned NOT NULL DEFAULT '0',
  `DamageType4` tinyint unsigned NOT NULL DEFAULT '0',
  `DamageType5` tinyint unsigned NOT NULL DEFAULT '0',
  `Resistances1` smallint NOT NULL DEFAULT '0',
  `Resistances2` smallint NOT NULL DEFAULT '0',
  `Resistances3` smallint NOT NULL DEFAULT '0',
  `Resistances4` smallint NOT NULL DEFAULT '0',
  `Resistances5` smallint NOT NULL DEFAULT '0',
  `Resistances6` smallint NOT NULL DEFAULT '0',
  `Resistances7` smallint NOT NULL DEFAULT '0',
  `MinDamage1` smallint unsigned NOT NULL DEFAULT '0',
  `MinDamage2` smallint unsigned NOT NULL DEFAULT '0',
  `MinDamage3` smallint unsigned NOT NULL DEFAULT '0',
  `MinDamage4` smallint unsigned NOT NULL DEFAULT '0',
  `MinDamage5` smallint unsigned NOT NULL DEFAULT '0',
  `MaxDamage1` smallint unsigned NOT NULL DEFAULT '0',
  `MaxDamage2` smallint unsigned NOT NULL DEFAULT '0',
  `MaxDamage3` smallint unsigned NOT NULL DEFAULT '0',
  `MaxDamage4` smallint unsigned NOT NULL DEFAULT '0',
  `MaxDamage5` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_appearance
CREATE TABLE IF NOT EXISTS `item_appearance` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DisplayType` tinyint unsigned NOT NULL DEFAULT '0',
  `ItemDisplayInfoID` int NOT NULL DEFAULT '0',
  `DefaultIconFileDataID` int NOT NULL DEFAULT '0',
  `UiOrder` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_armor_quality
CREATE TABLE IF NOT EXISTS `item_armor_quality` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Qualitymod1` float NOT NULL DEFAULT '0',
  `Qualitymod2` float NOT NULL DEFAULT '0',
  `Qualitymod3` float NOT NULL DEFAULT '0',
  `Qualitymod4` float NOT NULL DEFAULT '0',
  `Qualitymod5` float NOT NULL DEFAULT '0',
  `Qualitymod6` float NOT NULL DEFAULT '0',
  `Qualitymod7` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_armor_shield
CREATE TABLE IF NOT EXISTS `item_armor_shield` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Quality1` float NOT NULL DEFAULT '0',
  `Quality2` float NOT NULL DEFAULT '0',
  `Quality3` float NOT NULL DEFAULT '0',
  `Quality4` float NOT NULL DEFAULT '0',
  `Quality5` float NOT NULL DEFAULT '0',
  `Quality6` float NOT NULL DEFAULT '0',
  `Quality7` float NOT NULL DEFAULT '0',
  `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_armor_total
CREATE TABLE IF NOT EXISTS `item_armor_total` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint NOT NULL DEFAULT '0',
  `Cloth` float NOT NULL DEFAULT '0',
  `Leather` float NOT NULL DEFAULT '0',
  `Mail` float NOT NULL DEFAULT '0',
  `Plate` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_bag_family
CREATE TABLE IF NOT EXISTS `item_bag_family` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_bag_family_locale
CREATE TABLE IF NOT EXISTS `item_bag_family_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_bonus
CREATE TABLE IF NOT EXISTS `item_bonus` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Value1` int NOT NULL DEFAULT '0',
  `Value2` int NOT NULL DEFAULT '0',
  `Value3` int NOT NULL DEFAULT '0',
  `Value4` int NOT NULL DEFAULT '0',
  `ParentItemBonusListID` smallint unsigned NOT NULL DEFAULT '0',
  `Type` tinyint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_bonus_list_group_entry
CREATE TABLE IF NOT EXISTS `item_bonus_list_group_entry` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemBonusListGroupID` int NOT NULL DEFAULT '0',
  `ItemBonusListID` int NOT NULL DEFAULT '0',
  `ItemLevelSelectorID` int NOT NULL DEFAULT '0',
  `SequenceValue` int NOT NULL DEFAULT '0',
  `ItemExtendedCostID` int NOT NULL DEFAULT '0',
  `PlayerConditionID` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `ItemLogicalCostGroupID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_bonus_list_level_delta
CREATE TABLE IF NOT EXISTS `item_bonus_list_level_delta` (
  `ItemLevelDelta` smallint NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_bonus_tree
CREATE TABLE IF NOT EXISTS `item_bonus_tree` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `InventoryTypeSlotMask` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_bonus_tree_node
CREATE TABLE IF NOT EXISTS `item_bonus_tree_node` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemContext` tinyint unsigned NOT NULL DEFAULT '0',
  `ChildItemBonusTreeID` smallint unsigned NOT NULL DEFAULT '0',
  `ChildItemBonusListID` smallint unsigned NOT NULL DEFAULT '0',
  `ChildItemLevelSelectorID` smallint unsigned NOT NULL DEFAULT '0',
  `ParentItemBonusTreeID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_child_equipment
CREATE TABLE IF NOT EXISTS `item_child_equipment` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ChildItemID` int NOT NULL DEFAULT '0',
  `ChildItemEquipSlot` tinyint unsigned NOT NULL DEFAULT '0',
  `ParentItemID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_class
CREATE TABLE IF NOT EXISTS `item_class` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ClassName` text COLLATE utf8mb4_unicode_ci,
  `ClassID` tinyint NOT NULL DEFAULT '0',
  `PriceModifier` float NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_class_locale
CREATE TABLE IF NOT EXISTS `item_class_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ClassName_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_context_picker_entry
CREATE TABLE IF NOT EXISTS `item_context_picker_entry` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemCreationContext` tinyint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `PVal` int NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `ItemContextPickerID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_currency_cost
CREATE TABLE IF NOT EXISTS `item_currency_cost` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_damage_ammo
CREATE TABLE IF NOT EXISTS `item_damage_ammo` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `Quality1` float NOT NULL DEFAULT '0',
  `Quality2` float NOT NULL DEFAULT '0',
  `Quality3` float NOT NULL DEFAULT '0',
  `Quality4` float NOT NULL DEFAULT '0',
  `Quality5` float NOT NULL DEFAULT '0',
  `Quality6` float NOT NULL DEFAULT '0',
  `Quality7` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_damage_one_hand
CREATE TABLE IF NOT EXISTS `item_damage_one_hand` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `Quality1` float NOT NULL DEFAULT '0',
  `Quality2` float NOT NULL DEFAULT '0',
  `Quality3` float NOT NULL DEFAULT '0',
  `Quality4` float NOT NULL DEFAULT '0',
  `Quality5` float NOT NULL DEFAULT '0',
  `Quality6` float NOT NULL DEFAULT '0',
  `Quality7` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_damage_one_hand_caster
CREATE TABLE IF NOT EXISTS `item_damage_one_hand_caster` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `Quality1` float NOT NULL DEFAULT '0',
  `Quality2` float NOT NULL DEFAULT '0',
  `Quality3` float NOT NULL DEFAULT '0',
  `Quality4` float NOT NULL DEFAULT '0',
  `Quality5` float NOT NULL DEFAULT '0',
  `Quality6` float NOT NULL DEFAULT '0',
  `Quality7` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_damage_two_hand
CREATE TABLE IF NOT EXISTS `item_damage_two_hand` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `Quality1` float NOT NULL DEFAULT '0',
  `Quality2` float NOT NULL DEFAULT '0',
  `Quality3` float NOT NULL DEFAULT '0',
  `Quality4` float NOT NULL DEFAULT '0',
  `Quality5` float NOT NULL DEFAULT '0',
  `Quality6` float NOT NULL DEFAULT '0',
  `Quality7` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_damage_two_hand_caster
CREATE TABLE IF NOT EXISTS `item_damage_two_hand_caster` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `Quality1` float NOT NULL DEFAULT '0',
  `Quality2` float NOT NULL DEFAULT '0',
  `Quality3` float NOT NULL DEFAULT '0',
  `Quality4` float NOT NULL DEFAULT '0',
  `Quality5` float NOT NULL DEFAULT '0',
  `Quality6` float NOT NULL DEFAULT '0',
  `Quality7` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_disenchant_loot
CREATE TABLE IF NOT EXISTS `item_disenchant_loot` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Subclass` tinyint NOT NULL DEFAULT '0',
  `Quality` tinyint unsigned NOT NULL DEFAULT '0',
  `MinLevel` smallint unsigned NOT NULL DEFAULT '0',
  `MaxLevel` smallint unsigned NOT NULL DEFAULT '0',
  `SkillRequired` smallint unsigned NOT NULL DEFAULT '0',
  `ExpansionID` tinyint NOT NULL DEFAULT '0',
  `Class` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_effect
CREATE TABLE IF NOT EXISTS `item_effect` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `LegacySlotIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `TriggerType` tinyint NOT NULL DEFAULT '0',
  `Charges` smallint NOT NULL DEFAULT '0',
  `CoolDownMSec` int NOT NULL DEFAULT '0',
  `CategoryCoolDownMSec` int NOT NULL DEFAULT '0',
  `SpellCategoryID` smallint unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `ChrSpecializationID` smallint unsigned NOT NULL DEFAULT '0',
  `ParentItemID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_extended_cost
CREATE TABLE IF NOT EXISTS `item_extended_cost` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `RequiredArenaRating` smallint unsigned NOT NULL DEFAULT '0',
  `ArenaBracket` tinyint NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `MinFactionID` tinyint unsigned NOT NULL DEFAULT '0',
  `MinReputation` int NOT NULL DEFAULT '0',
  `RequiredAchievement` tinyint unsigned NOT NULL DEFAULT '0',
  `ItemID1` int NOT NULL DEFAULT '0',
  `ItemID2` int NOT NULL DEFAULT '0',
  `ItemID3` int NOT NULL DEFAULT '0',
  `ItemID4` int NOT NULL DEFAULT '0',
  `ItemID5` int NOT NULL DEFAULT '0',
  `ItemCount1` smallint unsigned NOT NULL DEFAULT '0',
  `ItemCount2` smallint unsigned NOT NULL DEFAULT '0',
  `ItemCount3` smallint unsigned NOT NULL DEFAULT '0',
  `ItemCount4` smallint unsigned NOT NULL DEFAULT '0',
  `ItemCount5` smallint unsigned NOT NULL DEFAULT '0',
  `CurrencyID1` smallint unsigned NOT NULL DEFAULT '0',
  `CurrencyID2` smallint unsigned NOT NULL DEFAULT '0',
  `CurrencyID3` smallint unsigned NOT NULL DEFAULT '0',
  `CurrencyID4` smallint unsigned NOT NULL DEFAULT '0',
  `CurrencyID5` smallint unsigned NOT NULL DEFAULT '0',
  `CurrencyCount1` int unsigned NOT NULL DEFAULT '0',
  `CurrencyCount2` int unsigned NOT NULL DEFAULT '0',
  `CurrencyCount3` int unsigned NOT NULL DEFAULT '0',
  `CurrencyCount4` int unsigned NOT NULL DEFAULT '0',
  `CurrencyCount5` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_level_selector
CREATE TABLE IF NOT EXISTS `item_level_selector` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MinItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `ItemLevelSelectorQualitySetID` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_level_selector_quality
CREATE TABLE IF NOT EXISTS `item_level_selector_quality` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `QualityItemBonusListID` int NOT NULL DEFAULT '0',
  `Quality` tinyint NOT NULL DEFAULT '0',
  `ParentILSQualitySetID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_level_selector_quality_set
CREATE TABLE IF NOT EXISTS `item_level_selector_quality_set` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `IlvlRare` smallint NOT NULL DEFAULT '0',
  `IlvlEpic` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_limit_category
CREATE TABLE IF NOT EXISTS `item_limit_category` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Quantity` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_limit_category_condition
CREATE TABLE IF NOT EXISTS `item_limit_category_condition` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `AddQuantity` tinyint NOT NULL DEFAULT '0',
  `PlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `ParentItemLimitCategoryID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_limit_category_locale
CREATE TABLE IF NOT EXISTS `item_limit_category_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_modified_appearance
CREATE TABLE IF NOT EXISTS `item_modified_appearance` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemID` int NOT NULL DEFAULT '0',
  `ItemAppearanceModifierID` int NOT NULL DEFAULT '0',
  `ItemAppearanceID` int NOT NULL DEFAULT '0',
  `OrderIndex` int NOT NULL DEFAULT '0',
  `TransmogSourceTypeEnum` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_modified_appearance_extra
CREATE TABLE IF NOT EXISTS `item_modified_appearance_extra` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int NOT NULL DEFAULT '0',
  `UnequippedIconFileDataID` int NOT NULL DEFAULT '0',
  `SheatheType` tinyint unsigned NOT NULL DEFAULT '0',
  `DisplayWeaponSubclassID` tinyint NOT NULL DEFAULT '0',
  `DisplayInventoryType` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_name_description
CREATE TABLE IF NOT EXISTS `item_name_description` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Description` text COLLATE utf8mb4_unicode_ci,
  `Color` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_name_description_locale
CREATE TABLE IF NOT EXISTS `item_name_description_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_price_base
CREATE TABLE IF NOT EXISTS `item_price_base` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `Armor` float NOT NULL DEFAULT '0',
  `Weapon` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_random_properties
CREATE TABLE IF NOT EXISTS `item_random_properties` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Enchantment1` smallint unsigned NOT NULL DEFAULT '0',
  `Enchantment2` smallint unsigned NOT NULL DEFAULT '0',
  `Enchantment3` smallint unsigned NOT NULL DEFAULT '0',
  `Enchantment4` smallint unsigned NOT NULL DEFAULT '0',
  `Enchantment5` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_random_properties_locale
CREATE TABLE IF NOT EXISTS `item_random_properties_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_random_suffix
CREATE TABLE IF NOT EXISTS `item_random_suffix` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Enchantment1` smallint unsigned NOT NULL DEFAULT '0',
  `Enchantment2` smallint unsigned NOT NULL DEFAULT '0',
  `Enchantment3` smallint unsigned NOT NULL DEFAULT '0',
  `Enchantment4` smallint unsigned NOT NULL DEFAULT '0',
  `Enchantment5` smallint unsigned NOT NULL DEFAULT '0',
  `AllocationPct1` smallint unsigned NOT NULL DEFAULT '0',
  `AllocationPct2` smallint unsigned NOT NULL DEFAULT '0',
  `AllocationPct3` smallint unsigned NOT NULL DEFAULT '0',
  `AllocationPct4` smallint unsigned NOT NULL DEFAULT '0',
  `AllocationPct5` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_random_suffix_locale
CREATE TABLE IF NOT EXISTS `item_random_suffix_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_search_name
CREATE TABLE IF NOT EXISTS `item_search_name` (
  `AllowableRace` bigint NOT NULL DEFAULT '0',
  `Display` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `OverallQualityID` tinyint unsigned NOT NULL DEFAULT '0',
  `ExpansionID` tinyint NOT NULL DEFAULT '0',
  `MinFactionID` smallint unsigned NOT NULL DEFAULT '0',
  `MinReputation` int NOT NULL DEFAULT '0',
  `AllowableClass` int NOT NULL DEFAULT '0',
  `RequiredLevel` tinyint NOT NULL DEFAULT '0',
  `RequiredSkill` smallint unsigned NOT NULL DEFAULT '0',
  `RequiredSkillRank` smallint unsigned NOT NULL DEFAULT '0',
  `RequiredAbility` int unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `Flags1` int NOT NULL DEFAULT '0',
  `Flags2` int NOT NULL DEFAULT '0',
  `Flags3` int NOT NULL DEFAULT '0',
  `Flags4` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_search_name_locale
CREATE TABLE IF NOT EXISTS `item_search_name_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Display_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_set
CREATE TABLE IF NOT EXISTS `item_set` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `SetFlags` int unsigned NOT NULL DEFAULT '0',
  `RequiredSkill` int unsigned NOT NULL DEFAULT '0',
  `RequiredSkillRank` smallint unsigned NOT NULL DEFAULT '0',
  `ItemID1` int unsigned NOT NULL DEFAULT '0',
  `ItemID2` int unsigned NOT NULL DEFAULT '0',
  `ItemID3` int unsigned NOT NULL DEFAULT '0',
  `ItemID4` int unsigned NOT NULL DEFAULT '0',
  `ItemID5` int unsigned NOT NULL DEFAULT '0',
  `ItemID6` int unsigned NOT NULL DEFAULT '0',
  `ItemID7` int unsigned NOT NULL DEFAULT '0',
  `ItemID8` int unsigned NOT NULL DEFAULT '0',
  `ItemID9` int unsigned NOT NULL DEFAULT '0',
  `ItemID10` int unsigned NOT NULL DEFAULT '0',
  `ItemID11` int unsigned NOT NULL DEFAULT '0',
  `ItemID12` int unsigned NOT NULL DEFAULT '0',
  `ItemID13` int unsigned NOT NULL DEFAULT '0',
  `ItemID14` int unsigned NOT NULL DEFAULT '0',
  `ItemID15` int unsigned NOT NULL DEFAULT '0',
  `ItemID16` int unsigned NOT NULL DEFAULT '0',
  `ItemID17` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_set_locale
CREATE TABLE IF NOT EXISTS `item_set_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_set_spell
CREATE TABLE IF NOT EXISTS `item_set_spell` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ChrSpecID` smallint unsigned NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `Threshold` tinyint unsigned NOT NULL DEFAULT '0',
  `ItemSetID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_sparse
CREATE TABLE IF NOT EXISTS `item_sparse` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `AllowableRace` bigint NOT NULL DEFAULT '0',
  `Description` text COLLATE utf8mb4_unicode_ci,
  `Display3` text COLLATE utf8mb4_unicode_ci,
  `Display2` text COLLATE utf8mb4_unicode_ci,
  `Display1` text COLLATE utf8mb4_unicode_ci,
  `Display` text COLLATE utf8mb4_unicode_ci,
  `DmgVariance` float NOT NULL DEFAULT '0',
  `DurationInInventory` int unsigned NOT NULL DEFAULT '0',
  `QualityModifier` float NOT NULL DEFAULT '0',
  `BagFamily` int unsigned NOT NULL DEFAULT '0',
  `StartQuestID` int NOT NULL DEFAULT '0',
  `ItemRange` float NOT NULL DEFAULT '0',
  `StatPercentageOfSocket1` float NOT NULL DEFAULT '0',
  `StatPercentageOfSocket2` float NOT NULL DEFAULT '0',
  `StatPercentageOfSocket3` float NOT NULL DEFAULT '0',
  `StatPercentageOfSocket4` float NOT NULL DEFAULT '0',
  `StatPercentageOfSocket5` float NOT NULL DEFAULT '0',
  `StatPercentageOfSocket6` float NOT NULL DEFAULT '0',
  `StatPercentageOfSocket7` float NOT NULL DEFAULT '0',
  `StatPercentageOfSocket8` float NOT NULL DEFAULT '0',
  `StatPercentageOfSocket9` float NOT NULL DEFAULT '0',
  `StatPercentageOfSocket10` float NOT NULL DEFAULT '0',
  `StatPercentEditor1` int NOT NULL DEFAULT '0',
  `StatPercentEditor2` int NOT NULL DEFAULT '0',
  `StatPercentEditor3` int NOT NULL DEFAULT '0',
  `StatPercentEditor4` int NOT NULL DEFAULT '0',
  `StatPercentEditor5` int NOT NULL DEFAULT '0',
  `StatPercentEditor6` int NOT NULL DEFAULT '0',
  `StatPercentEditor7` int NOT NULL DEFAULT '0',
  `StatPercentEditor8` int NOT NULL DEFAULT '0',
  `StatPercentEditor9` int NOT NULL DEFAULT '0',
  `StatPercentEditor10` int NOT NULL DEFAULT '0',
  `Stackable` int NOT NULL DEFAULT '0',
  `MaxCount` int NOT NULL DEFAULT '0',
  `MinReputation` int NOT NULL DEFAULT '0',
  `RequiredAbility` int unsigned NOT NULL DEFAULT '0',
  `SellPrice` int unsigned NOT NULL DEFAULT '0',
  `BuyPrice` int unsigned NOT NULL DEFAULT '0',
  `VendorStackCount` int unsigned NOT NULL DEFAULT '0',
  `PriceVariance` float NOT NULL DEFAULT '0',
  `PriceRandomValue` float NOT NULL DEFAULT '0',
  `Flags1` int NOT NULL DEFAULT '0',
  `Flags2` int NOT NULL DEFAULT '0',
  `Flags3` int NOT NULL DEFAULT '0',
  `Flags4` int NOT NULL DEFAULT '0',
  `FactionRelated` int NOT NULL DEFAULT '0',
  `ModifiedCraftingReagentItemID` int NOT NULL DEFAULT '0',
  `ContentTuningID` int NOT NULL DEFAULT '0',
  `PlayerLevelToItemLevelCurveID` int NOT NULL DEFAULT '0',
  `MaxDurability` int unsigned NOT NULL DEFAULT '0',
  `ItemNameDescriptionID` smallint unsigned NOT NULL DEFAULT '0',
  `RequiredTransmogHoliday` smallint unsigned NOT NULL DEFAULT '0',
  `RequiredHoliday` smallint unsigned NOT NULL DEFAULT '0',
  `LimitCategory` smallint unsigned NOT NULL DEFAULT '0',
  `GemProperties` smallint unsigned NOT NULL DEFAULT '0',
  `SocketMatchEnchantmentId` smallint unsigned NOT NULL DEFAULT '0',
  `TotemCategoryID` smallint unsigned NOT NULL DEFAULT '0',
  `InstanceBound` smallint unsigned NOT NULL DEFAULT '0',
  `ZoneBound1` smallint unsigned NOT NULL DEFAULT '0',
  `ZoneBound2` smallint unsigned NOT NULL DEFAULT '0',
  `ItemSet` smallint unsigned NOT NULL DEFAULT '0',
  `LockID` smallint unsigned NOT NULL DEFAULT '0',
  `PageID` smallint unsigned NOT NULL DEFAULT '0',
  `ItemDelay` smallint unsigned NOT NULL DEFAULT '0',
  `MinFactionID` smallint unsigned NOT NULL DEFAULT '0',
  `RequiredSkillRank` smallint unsigned NOT NULL DEFAULT '0',
  `RequiredSkill` smallint unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `AllowableClass` smallint NOT NULL DEFAULT '0',
  `ItemRandomSuffixGroupID` smallint unsigned NOT NULL DEFAULT '0',
  `RandomSelect` smallint unsigned NOT NULL DEFAULT '0',
  `MinDamage1` smallint unsigned NOT NULL DEFAULT '0',
  `MinDamage2` smallint unsigned NOT NULL DEFAULT '0',
  `MinDamage3` smallint unsigned NOT NULL DEFAULT '0',
  `MinDamage4` smallint unsigned NOT NULL DEFAULT '0',
  `MinDamage5` smallint unsigned NOT NULL DEFAULT '0',
  `MaxDamage1` smallint unsigned NOT NULL DEFAULT '0',
  `MaxDamage2` smallint unsigned NOT NULL DEFAULT '0',
  `MaxDamage3` smallint unsigned NOT NULL DEFAULT '0',
  `MaxDamage4` smallint unsigned NOT NULL DEFAULT '0',
  `MaxDamage5` smallint unsigned NOT NULL DEFAULT '0',
  `Resistances1` smallint NOT NULL DEFAULT '0',
  `Resistances2` smallint NOT NULL DEFAULT '0',
  `Resistances3` smallint NOT NULL DEFAULT '0',
  `Resistances4` smallint NOT NULL DEFAULT '0',
  `Resistances5` smallint NOT NULL DEFAULT '0',
  `Resistances6` smallint NOT NULL DEFAULT '0',
  `Resistances7` smallint NOT NULL DEFAULT '0',
  `ScalingStatDistributionID` smallint unsigned NOT NULL DEFAULT '0',
  `StatModifierBonusAmount1` smallint NOT NULL DEFAULT '0',
  `StatModifierBonusAmount2` smallint NOT NULL DEFAULT '0',
  `StatModifierBonusAmount3` smallint NOT NULL DEFAULT '0',
  `StatModifierBonusAmount4` smallint NOT NULL DEFAULT '0',
  `StatModifierBonusAmount5` smallint NOT NULL DEFAULT '0',
  `StatModifierBonusAmount6` smallint NOT NULL DEFAULT '0',
  `StatModifierBonusAmount7` smallint NOT NULL DEFAULT '0',
  `StatModifierBonusAmount8` smallint NOT NULL DEFAULT '0',
  `StatModifierBonusAmount9` smallint NOT NULL DEFAULT '0',
  `StatModifierBonusAmount10` smallint NOT NULL DEFAULT '0',
  `ExpansionID` tinyint unsigned NOT NULL DEFAULT '0',
  `ArtifactID` tinyint unsigned NOT NULL DEFAULT '0',
  `SpellWeight` tinyint unsigned NOT NULL DEFAULT '0',
  `SpellWeightCategory` tinyint unsigned NOT NULL DEFAULT '0',
  `SocketType1` tinyint unsigned NOT NULL DEFAULT '0',
  `SocketType2` tinyint unsigned NOT NULL DEFAULT '0',
  `SocketType3` tinyint unsigned NOT NULL DEFAULT '0',
  `SheatheType` tinyint unsigned NOT NULL DEFAULT '0',
  `Material` tinyint unsigned NOT NULL DEFAULT '0',
  `PageMaterialID` tinyint unsigned NOT NULL DEFAULT '0',
  `LanguageID` tinyint unsigned NOT NULL DEFAULT '0',
  `Bonding` tinyint unsigned NOT NULL DEFAULT '0',
  `DamageDamageType` tinyint unsigned NOT NULL DEFAULT '0',
  `StatModifierBonusStat1` tinyint NOT NULL DEFAULT '0',
  `StatModifierBonusStat2` tinyint NOT NULL DEFAULT '0',
  `StatModifierBonusStat3` tinyint NOT NULL DEFAULT '0',
  `StatModifierBonusStat4` tinyint NOT NULL DEFAULT '0',
  `StatModifierBonusStat5` tinyint NOT NULL DEFAULT '0',
  `StatModifierBonusStat6` tinyint NOT NULL DEFAULT '0',
  `StatModifierBonusStat7` tinyint NOT NULL DEFAULT '0',
  `StatModifierBonusStat8` tinyint NOT NULL DEFAULT '0',
  `StatModifierBonusStat9` tinyint NOT NULL DEFAULT '0',
  `StatModifierBonusStat10` tinyint NOT NULL DEFAULT '0',
  `ContainerSlots` tinyint unsigned NOT NULL DEFAULT '0',
  `RequiredPVPMedal` tinyint unsigned NOT NULL DEFAULT '0',
  `RequiredPVPRank` tinyint unsigned NOT NULL DEFAULT '0',
  `InventoryType` tinyint NOT NULL DEFAULT '0',
  `OverallQualityID` tinyint NOT NULL DEFAULT '0',
  `AmmunitionType` tinyint unsigned NOT NULL DEFAULT '0',
  `RequiredLevel` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_sparse_locale
CREATE TABLE IF NOT EXISTS `item_sparse_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `Display3_lang` text COLLATE utf8mb4_unicode_ci,
  `Display2_lang` text COLLATE utf8mb4_unicode_ci,
  `Display1_lang` text COLLATE utf8mb4_unicode_ci,
  `Display_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_spec
CREATE TABLE IF NOT EXISTS `item_spec` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MinLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `ItemType` tinyint unsigned NOT NULL DEFAULT '0',
  `PrimaryStat` tinyint unsigned NOT NULL DEFAULT '0',
  `SecondaryStat` tinyint unsigned NOT NULL DEFAULT '0',
  `SpecializationID` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_spec_override
CREATE TABLE IF NOT EXISTS `item_spec_override` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpecID` smallint unsigned NOT NULL DEFAULT '0',
  `ItemID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_x_bonus_tree
CREATE TABLE IF NOT EXISTS `item_x_bonus_tree` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemBonusTreeID` smallint unsigned NOT NULL DEFAULT '0',
  `ItemID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.item_x_item_effect
CREATE TABLE IF NOT EXISTS `item_x_item_effect` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemEffectID` int NOT NULL DEFAULT '0',
  `ItemID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.journal_encounter
CREATE TABLE IF NOT EXISTS `journal_encounter` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `MapX` float NOT NULL DEFAULT '0',
  `MapY` float NOT NULL DEFAULT '0',
  `JournalInstanceID` smallint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` int unsigned NOT NULL DEFAULT '0',
  `FirstSectionID` smallint unsigned NOT NULL DEFAULT '0',
  `UiMapID` smallint unsigned NOT NULL DEFAULT '0',
  `MapDisplayConditionID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `DifficultyMask` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.journal_encounter_locale
CREATE TABLE IF NOT EXISTS `journal_encounter_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.journal_encounter_section
CREATE TABLE IF NOT EXISTS `journal_encounter_section` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Title` text COLLATE utf8mb4_unicode_ci,
  `BodyText` text COLLATE utf8mb4_unicode_ci,
  `JournalEncounterID` smallint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `ParentSectionID` smallint unsigned NOT NULL DEFAULT '0',
  `FirstChildSectionID` smallint unsigned NOT NULL DEFAULT '0',
  `NextSiblingSectionID` smallint unsigned NOT NULL DEFAULT '0',
  `Type` tinyint unsigned NOT NULL DEFAULT '0',
  `IconCreatureDisplayInfoID` int unsigned NOT NULL DEFAULT '0',
  `UiModelSceneID` int NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `IconFileDataID` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `IconFlags` int NOT NULL DEFAULT '0',
  `DifficultyMask` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.journal_encounter_section_locale
CREATE TABLE IF NOT EXISTS `journal_encounter_section_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title_lang` text COLLATE utf8mb4_unicode_ci,
  `BodyText_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.journal_instance
CREATE TABLE IF NOT EXISTS `journal_instance` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MapID` smallint unsigned NOT NULL DEFAULT '0',
  `BackgroundFileDataID` int NOT NULL DEFAULT '0',
  `ButtonFileDataID` int NOT NULL DEFAULT '0',
  `ButtonSmallFileDataID` int NOT NULL DEFAULT '0',
  `LoreFileDataID` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `AreaID` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.journal_instance_locale
CREATE TABLE IF NOT EXISTS `journal_instance_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.journal_tier
CREATE TABLE IF NOT EXISTS `journal_tier` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.journal_tier_locale
CREATE TABLE IF NOT EXISTS `journal_tier_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.keychain
CREATE TABLE IF NOT EXISTS `keychain` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Key1` tinyint unsigned NOT NULL DEFAULT '0',
  `Key2` tinyint unsigned NOT NULL DEFAULT '0',
  `Key3` tinyint unsigned NOT NULL DEFAULT '0',
  `Key4` tinyint unsigned NOT NULL DEFAULT '0',
  `Key5` tinyint unsigned NOT NULL DEFAULT '0',
  `Key6` tinyint unsigned NOT NULL DEFAULT '0',
  `Key7` tinyint unsigned NOT NULL DEFAULT '0',
  `Key8` tinyint unsigned NOT NULL DEFAULT '0',
  `Key9` tinyint unsigned NOT NULL DEFAULT '0',
  `Key10` tinyint unsigned NOT NULL DEFAULT '0',
  `Key11` tinyint unsigned NOT NULL DEFAULT '0',
  `Key12` tinyint unsigned NOT NULL DEFAULT '0',
  `Key13` tinyint unsigned NOT NULL DEFAULT '0',
  `Key14` tinyint unsigned NOT NULL DEFAULT '0',
  `Key15` tinyint unsigned NOT NULL DEFAULT '0',
  `Key16` tinyint unsigned NOT NULL DEFAULT '0',
  `Key17` tinyint unsigned NOT NULL DEFAULT '0',
  `Key18` tinyint unsigned NOT NULL DEFAULT '0',
  `Key19` tinyint unsigned NOT NULL DEFAULT '0',
  `Key20` tinyint unsigned NOT NULL DEFAULT '0',
  `Key21` tinyint unsigned NOT NULL DEFAULT '0',
  `Key22` tinyint unsigned NOT NULL DEFAULT '0',
  `Key23` tinyint unsigned NOT NULL DEFAULT '0',
  `Key24` tinyint unsigned NOT NULL DEFAULT '0',
  `Key25` tinyint unsigned NOT NULL DEFAULT '0',
  `Key26` tinyint unsigned NOT NULL DEFAULT '0',
  `Key27` tinyint unsigned NOT NULL DEFAULT '0',
  `Key28` tinyint unsigned NOT NULL DEFAULT '0',
  `Key29` tinyint unsigned NOT NULL DEFAULT '0',
  `Key30` tinyint unsigned NOT NULL DEFAULT '0',
  `Key31` tinyint unsigned NOT NULL DEFAULT '0',
  `Key32` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.keystone_affix
CREATE TABLE IF NOT EXISTS `keystone_affix` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `FiledataID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.keystone_affix_locale
CREATE TABLE IF NOT EXISTS `keystone_affix_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.languages
CREATE TABLE IF NOT EXISTS `languages` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `UiTextureKitID` int NOT NULL DEFAULT '0',
  `UiTextureKitElementCount` int NOT NULL DEFAULT '0',
  `LearningCurveID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.languages_locale
CREATE TABLE IF NOT EXISTS `languages_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.language_words
CREATE TABLE IF NOT EXISTS `language_words` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Word` text COLLATE utf8mb4_unicode_ci,
  `LanguageID` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.lfg_dungeons
CREATE TABLE IF NOT EXISTS `lfg_dungeons` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `MinLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxLevel` smallint unsigned NOT NULL DEFAULT '0',
  `TypeID` tinyint unsigned NOT NULL DEFAULT '0',
  `Subtype` tinyint unsigned NOT NULL DEFAULT '0',
  `Faction` tinyint NOT NULL DEFAULT '0',
  `IconTextureFileID` int NOT NULL DEFAULT '0',
  `RewardsBgTextureFileID` int NOT NULL DEFAULT '0',
  `PopupBgTextureFileID` int NOT NULL DEFAULT '0',
  `ExpansionLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `MapID` smallint NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `MinGear` float NOT NULL DEFAULT '0',
  `GroupID` tinyint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `RequiredPlayerConditionId` int unsigned NOT NULL DEFAULT '0',
  `TargetLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `TargetLevelMin` tinyint unsigned NOT NULL DEFAULT '0',
  `TargetLevelMax` smallint unsigned NOT NULL DEFAULT '0',
  `RandomID` smallint unsigned NOT NULL DEFAULT '0',
  `ScenarioID` smallint unsigned NOT NULL DEFAULT '0',
  `FinalEncounterID` smallint unsigned NOT NULL DEFAULT '0',
  `CountTank` tinyint unsigned NOT NULL DEFAULT '0',
  `CountHealer` tinyint unsigned NOT NULL DEFAULT '0',
  `CountDamage` tinyint unsigned NOT NULL DEFAULT '0',
  `MinCountTank` tinyint unsigned NOT NULL DEFAULT '0',
  `MinCountHealer` tinyint unsigned NOT NULL DEFAULT '0',
  `MinCountDamage` tinyint unsigned NOT NULL DEFAULT '0',
  `BonusReputationAmount` smallint unsigned NOT NULL DEFAULT '0',
  `MentorItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `MentorCharLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags1` int NOT NULL DEFAULT '0',
  `Flags2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.lfg_dungeons_locale
CREATE TABLE IF NOT EXISTS `lfg_dungeons_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.light
CREATE TABLE IF NOT EXISTS `light` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `GameCoordsX` float NOT NULL DEFAULT '0',
  `GameCoordsY` float NOT NULL DEFAULT '0',
  `GameCoordsZ` float NOT NULL DEFAULT '0',
  `GameFalloffStart` float NOT NULL DEFAULT '0',
  `GameFalloffEnd` float NOT NULL DEFAULT '0',
  `ContinentID` smallint NOT NULL DEFAULT '0',
  `LightParamsID1` smallint unsigned NOT NULL DEFAULT '0',
  `LightParamsID2` smallint unsigned NOT NULL DEFAULT '0',
  `LightParamsID3` smallint unsigned NOT NULL DEFAULT '0',
  `LightParamsID4` smallint unsigned NOT NULL DEFAULT '0',
  `LightParamsID5` smallint unsigned NOT NULL DEFAULT '0',
  `LightParamsID6` smallint unsigned NOT NULL DEFAULT '0',
  `LightParamsID7` smallint unsigned NOT NULL DEFAULT '0',
  `LightParamsID8` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.liquid_type
CREATE TABLE IF NOT EXISTS `liquid_type` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Texture1` text COLLATE utf8mb4_unicode_ci,
  `Texture2` text COLLATE utf8mb4_unicode_ci,
  `Texture3` text COLLATE utf8mb4_unicode_ci,
  `Texture4` text COLLATE utf8mb4_unicode_ci,
  `Texture5` text COLLATE utf8mb4_unicode_ci,
  `Texture6` text COLLATE utf8mb4_unicode_ci,
  `Flags` smallint unsigned NOT NULL DEFAULT '0',
  `SoundBank` tinyint unsigned NOT NULL DEFAULT '0',
  `SoundID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `MaxDarkenDepth` float NOT NULL DEFAULT '0',
  `FogDarkenIntensity` float NOT NULL DEFAULT '0',
  `AmbDarkenIntensity` float NOT NULL DEFAULT '0',
  `DirDarkenIntensity` float NOT NULL DEFAULT '0',
  `LightID` smallint unsigned NOT NULL DEFAULT '0',
  `ParticleScale` float NOT NULL DEFAULT '0',
  `ParticleMovement` tinyint unsigned NOT NULL DEFAULT '0',
  `ParticleTexSlots` tinyint unsigned NOT NULL DEFAULT '0',
  `MaterialID` tinyint unsigned NOT NULL DEFAULT '0',
  `MinimapStaticCol` int NOT NULL DEFAULT '0',
  `FrameCountTexture1` tinyint unsigned NOT NULL DEFAULT '0',
  `FrameCountTexture2` tinyint unsigned NOT NULL DEFAULT '0',
  `FrameCountTexture3` tinyint unsigned NOT NULL DEFAULT '0',
  `FrameCountTexture4` tinyint unsigned NOT NULL DEFAULT '0',
  `FrameCountTexture5` tinyint unsigned NOT NULL DEFAULT '0',
  `FrameCountTexture6` tinyint unsigned NOT NULL DEFAULT '0',
  `Color1` int NOT NULL DEFAULT '0',
  `Color2` int NOT NULL DEFAULT '0',
  `Float1` float NOT NULL DEFAULT '0',
  `Float2` float NOT NULL DEFAULT '0',
  `Float3` float NOT NULL DEFAULT '0',
  `Float4` float NOT NULL DEFAULT '0',
  `Float5` float NOT NULL DEFAULT '0',
  `Float6` float NOT NULL DEFAULT '0',
  `Float7` float NOT NULL DEFAULT '0',
  `Float8` float NOT NULL DEFAULT '0',
  `Float9` float NOT NULL DEFAULT '0',
  `Float10` float NOT NULL DEFAULT '0',
  `Float11` float NOT NULL DEFAULT '0',
  `Float12` float NOT NULL DEFAULT '0',
  `Float13` float NOT NULL DEFAULT '0',
  `Float14` float NOT NULL DEFAULT '0',
  `Float15` float NOT NULL DEFAULT '0',
  `Float16` float NOT NULL DEFAULT '0',
  `Float17` float NOT NULL DEFAULT '0',
  `Float18` float NOT NULL DEFAULT '0',
  `Int1` int unsigned NOT NULL DEFAULT '0',
  `Int2` int unsigned NOT NULL DEFAULT '0',
  `Int3` int unsigned NOT NULL DEFAULT '0',
  `Int4` int unsigned NOT NULL DEFAULT '0',
  `Coefficient1` float NOT NULL DEFAULT '0',
  `Coefficient2` float NOT NULL DEFAULT '0',
  `Coefficient3` float NOT NULL DEFAULT '0',
  `Coefficient4` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.location
CREATE TABLE IF NOT EXISTS `location` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `Rot1` float NOT NULL DEFAULT '0',
  `Rot2` float NOT NULL DEFAULT '0',
  `Rot3` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.lock
CREATE TABLE IF NOT EXISTS `lock` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Index1` int NOT NULL DEFAULT '0',
  `Index2` int NOT NULL DEFAULT '0',
  `Index3` int NOT NULL DEFAULT '0',
  `Index4` int NOT NULL DEFAULT '0',
  `Index5` int NOT NULL DEFAULT '0',
  `Index6` int NOT NULL DEFAULT '0',
  `Index7` int NOT NULL DEFAULT '0',
  `Index8` int NOT NULL DEFAULT '0',
  `Skill1` smallint unsigned NOT NULL DEFAULT '0',
  `Skill2` smallint unsigned NOT NULL DEFAULT '0',
  `Skill3` smallint unsigned NOT NULL DEFAULT '0',
  `Skill4` smallint unsigned NOT NULL DEFAULT '0',
  `Skill5` smallint unsigned NOT NULL DEFAULT '0',
  `Skill6` smallint unsigned NOT NULL DEFAULT '0',
  `Skill7` smallint unsigned NOT NULL DEFAULT '0',
  `Skill8` smallint unsigned NOT NULL DEFAULT '0',
  `Type1` tinyint unsigned NOT NULL DEFAULT '0',
  `Type2` tinyint unsigned NOT NULL DEFAULT '0',
  `Type3` tinyint unsigned NOT NULL DEFAULT '0',
  `Type4` tinyint unsigned NOT NULL DEFAULT '0',
  `Type5` tinyint unsigned NOT NULL DEFAULT '0',
  `Type6` tinyint unsigned NOT NULL DEFAULT '0',
  `Type7` tinyint unsigned NOT NULL DEFAULT '0',
  `Type8` tinyint unsigned NOT NULL DEFAULT '0',
  `Action1` tinyint unsigned NOT NULL DEFAULT '0',
  `Action2` tinyint unsigned NOT NULL DEFAULT '0',
  `Action3` tinyint unsigned NOT NULL DEFAULT '0',
  `Action4` tinyint unsigned NOT NULL DEFAULT '0',
  `Action5` tinyint unsigned NOT NULL DEFAULT '0',
  `Action6` tinyint unsigned NOT NULL DEFAULT '0',
  `Action7` tinyint unsigned NOT NULL DEFAULT '0',
  `Action8` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.mail_template
CREATE TABLE IF NOT EXISTS `mail_template` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Body` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.mail_template_locale
CREATE TABLE IF NOT EXISTS `mail_template_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Body_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.map
CREATE TABLE IF NOT EXISTS `map` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Directory` text COLLATE utf8mb4_unicode_ci,
  `MapName` text COLLATE utf8mb4_unicode_ci,
  `MapDescription0` text COLLATE utf8mb4_unicode_ci,
  `MapDescription1` text COLLATE utf8mb4_unicode_ci,
  `PvpShortDescription` text COLLATE utf8mb4_unicode_ci,
  `PvpLongDescription` text COLLATE utf8mb4_unicode_ci,
  `MapType` tinyint unsigned NOT NULL DEFAULT '0',
  `InstanceType` tinyint NOT NULL DEFAULT '0',
  `ExpansionID` tinyint unsigned NOT NULL DEFAULT '0',
  `AreaTableID` smallint unsigned NOT NULL DEFAULT '0',
  `LoadingScreenID` smallint NOT NULL DEFAULT '0',
  `TimeOfDayOverride` smallint NOT NULL DEFAULT '0',
  `ParentMapID` smallint NOT NULL DEFAULT '0',
  `CosmeticParentMapID` smallint NOT NULL DEFAULT '0',
  `TimeOffset` tinyint unsigned NOT NULL DEFAULT '0',
  `MinimapIconScale` float NOT NULL DEFAULT '0',
  `RaidOffset` int NOT NULL DEFAULT '0',
  `CorpseMapID` smallint NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint unsigned NOT NULL DEFAULT '0',
  `WindSettingsID` smallint NOT NULL DEFAULT '0',
  `ZmpFileDataID` int NOT NULL DEFAULT '0',
  `Flags1` int NOT NULL DEFAULT '0',
  `Flags2` int NOT NULL DEFAULT '0',
  `Flags3` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.map_challenge_mode
CREATE TABLE IF NOT EXISTS `map_challenge_mode` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MapID` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `ExpansionLevel` int unsigned NOT NULL DEFAULT '0',
  `RequiredWorldStateID` int NOT NULL DEFAULT '0',
  `CriteriaCount1` smallint NOT NULL DEFAULT '0',
  `CriteriaCount2` smallint NOT NULL DEFAULT '0',
  `CriteriaCount3` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.map_challenge_mode_locale
CREATE TABLE IF NOT EXISTS `map_challenge_mode_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.map_difficulty
CREATE TABLE IF NOT EXISTS `map_difficulty` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Message` text COLLATE utf8mb4_unicode_ci,
  `ItemContextPickerID` int unsigned NOT NULL DEFAULT '0',
  `ContentTuningID` int NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `LockID` tinyint unsigned NOT NULL DEFAULT '0',
  `ResetInterval` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint unsigned NOT NULL DEFAULT '0',
  `ItemContext` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `MapID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.map_difficulty_locale
CREATE TABLE IF NOT EXISTS `map_difficulty_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Message_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.map_difficulty_x_condition
CREATE TABLE IF NOT EXISTS `map_difficulty_x_condition` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `FailureDescription` text COLLATE utf8mb4_unicode_ci,
  `PlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `OrderIndex` int NOT NULL DEFAULT '0',
  `MapDifficultyID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.map_difficulty_x_condition_locale
CREATE TABLE IF NOT EXISTS `map_difficulty_x_condition_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FailureDescription_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.map_locale
CREATE TABLE IF NOT EXISTS `map_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MapName_lang` text COLLATE utf8mb4_unicode_ci,
  `MapDescription0_lang` text COLLATE utf8mb4_unicode_ci,
  `MapDescription1_lang` text COLLATE utf8mb4_unicode_ci,
  `PvpShortDescription_lang` text COLLATE utf8mb4_unicode_ci,
  `PvpLongDescription_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.maw_power
CREATE TABLE IF NOT EXISTS `maw_power` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `MawPowerRarityID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.modifier_tree
CREATE TABLE IF NOT EXISTS `modifier_tree` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Parent` int unsigned NOT NULL DEFAULT '0',
  `Operator` tinyint NOT NULL DEFAULT '0',
  `Amount` tinyint NOT NULL DEFAULT '0',
  `Type` int NOT NULL DEFAULT '0',
  `Asset` int NOT NULL DEFAULT '0',
  `SecondaryAsset` int NOT NULL DEFAULT '0',
  `TertiaryAsset` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.mount
CREATE TABLE IF NOT EXISTS `mount` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `SourceText` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MountTypeID` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` smallint unsigned NOT NULL DEFAULT '0',
  `SourceTypeEnum` tinyint NOT NULL DEFAULT '0',
  `SourceSpellID` int NOT NULL DEFAULT '0',
  `PlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `MountFlyRideHeight` float NOT NULL DEFAULT '0',
  `UiModelSceneID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.mount_capability
CREATE TABLE IF NOT EXISTS `mount_capability` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `ReqRidingSkill` smallint unsigned NOT NULL DEFAULT '0',
  `ReqAreaID` smallint unsigned NOT NULL DEFAULT '0',
  `ReqSpellAuraID` int unsigned NOT NULL DEFAULT '0',
  `ReqSpellKnownID` int NOT NULL DEFAULT '0',
  `ModSpellAuraID` int NOT NULL DEFAULT '0',
  `ReqMapID` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.mount_locale
CREATE TABLE IF NOT EXISTS `mount_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `SourceText_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.mount_type_x_capability
CREATE TABLE IF NOT EXISTS `mount_type_x_capability` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MountTypeID` smallint unsigned NOT NULL DEFAULT '0',
  `MountCapabilityID` smallint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.mount_x_display
CREATE TABLE IF NOT EXISTS `mount_x_display` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayInfoID` int NOT NULL DEFAULT '0',
  `PlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `MountID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.movie
CREATE TABLE IF NOT EXISTS `movie` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Volume` tinyint unsigned NOT NULL DEFAULT '0',
  `KeyID` tinyint unsigned NOT NULL DEFAULT '0',
  `AudioFileDataID` int unsigned NOT NULL DEFAULT '0',
  `SubtitleFileDataID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.mythic_plus_season
CREATE TABLE IF NOT EXISTS `mythic_plus_season` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MilestoneSeason` int NOT NULL DEFAULT '0',
  `ExpansionLevel` int NOT NULL DEFAULT '0',
  `HeroicLFGDungeonMinGear` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.names_profanity
CREATE TABLE IF NOT EXISTS `names_profanity` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Language` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.names_reserved
CREATE TABLE IF NOT EXISTS `names_reserved` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.names_reserved_locale
CREATE TABLE IF NOT EXISTS `names_reserved_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `LocaleMask` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.name_gen
CREATE TABLE IF NOT EXISTS `name_gen` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `RaceID` tinyint unsigned NOT NULL DEFAULT '0',
  `Sex` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.num_talents_at_level
CREATE TABLE IF NOT EXISTS `num_talents_at_level` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `NumTalents` int NOT NULL DEFAULT '0',
  `NumTalentsDeathKnight` int NOT NULL DEFAULT '0',
  `NumTalentsDemonHunter` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.override_spell_data
CREATE TABLE IF NOT EXISTS `override_spell_data` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Spells1` int NOT NULL DEFAULT '0',
  `Spells2` int NOT NULL DEFAULT '0',
  `Spells3` int NOT NULL DEFAULT '0',
  `Spells4` int NOT NULL DEFAULT '0',
  `Spells5` int NOT NULL DEFAULT '0',
  `Spells6` int NOT NULL DEFAULT '0',
  `Spells7` int NOT NULL DEFAULT '0',
  `Spells8` int NOT NULL DEFAULT '0',
  `Spells9` int NOT NULL DEFAULT '0',
  `Spells10` int NOT NULL DEFAULT '0',
  `PlayerActionBarFileDataID` int NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.paragon_reputation
CREATE TABLE IF NOT EXISTS `paragon_reputation` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `FactionID` int NOT NULL DEFAULT '0',
  `LevelThreshold` int NOT NULL DEFAULT '0',
  `QuestID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.path
CREATE TABLE IF NOT EXISTS `path` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Type` tinyint unsigned NOT NULL DEFAULT '0',
  `SplineType` tinyint unsigned NOT NULL DEFAULT '0',
  `Red` tinyint unsigned NOT NULL DEFAULT '0',
  `Green` tinyint unsigned NOT NULL DEFAULT '0',
  `Blue` tinyint unsigned NOT NULL DEFAULT '0',
  `Alpha` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.path_node
CREATE TABLE IF NOT EXISTS `path_node` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `PathID` smallint unsigned NOT NULL DEFAULT '0',
  `Sequence` smallint NOT NULL DEFAULT '0',
  `LocationID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.path_property
CREATE TABLE IF NOT EXISTS `path_property` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `PathID` smallint unsigned NOT NULL DEFAULT '0',
  `PropertyIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `Value` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.phase
CREATE TABLE IF NOT EXISTS `phase` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Flags` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.phase_x_phase_group
CREATE TABLE IF NOT EXISTS `phase_x_phase_group` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `PhaseID` smallint unsigned NOT NULL DEFAULT '0',
  `PhaseGroupID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.player_condition
CREATE TABLE IF NOT EXISTS `player_condition` (
  `RaceMask` bigint NOT NULL DEFAULT '0',
  `FailureDescription` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MinLevel` smallint unsigned NOT NULL DEFAULT '0',
  `MaxLevel` smallint unsigned NOT NULL DEFAULT '0',
  `ClassMask` int NOT NULL DEFAULT '0',
  `SkillLogic` int unsigned NOT NULL DEFAULT '0',
  `LanguageID` tinyint unsigned NOT NULL DEFAULT '0',
  `MinLanguage` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxLanguage` int NOT NULL DEFAULT '0',
  `MaxFactionID` smallint unsigned NOT NULL DEFAULT '0',
  `MaxReputation` tinyint unsigned NOT NULL DEFAULT '0',
  `ReputationLogic` int unsigned NOT NULL DEFAULT '0',
  `CurrentPvpFaction` tinyint NOT NULL DEFAULT '0',
  `PvpMedal` tinyint unsigned NOT NULL DEFAULT '0',
  `PrevQuestLogic` int unsigned NOT NULL DEFAULT '0',
  `CurrQuestLogic` int unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestLogic` int unsigned NOT NULL DEFAULT '0',
  `SpellLogic` int unsigned NOT NULL DEFAULT '0',
  `ItemLogic` int unsigned NOT NULL DEFAULT '0',
  `ItemFlags` tinyint unsigned NOT NULL DEFAULT '0',
  `AuraSpellLogic` int unsigned NOT NULL DEFAULT '0',
  `WorldStateExpressionID` smallint unsigned NOT NULL DEFAULT '0',
  `WeatherID` tinyint unsigned NOT NULL DEFAULT '0',
  `PartyStatus` tinyint unsigned NOT NULL DEFAULT '0',
  `LifetimeMaxPVPRank` tinyint unsigned NOT NULL DEFAULT '0',
  `AchievementLogic` int unsigned NOT NULL DEFAULT '0',
  `Gender` tinyint NOT NULL DEFAULT '0',
  `NativeGender` tinyint NOT NULL DEFAULT '0',
  `AreaLogic` int unsigned NOT NULL DEFAULT '0',
  `LfgLogic` int unsigned NOT NULL DEFAULT '0',
  `CurrencyLogic` int unsigned NOT NULL DEFAULT '0',
  `QuestKillID` int unsigned NOT NULL DEFAULT '0',
  `QuestKillLogic` int unsigned NOT NULL DEFAULT '0',
  `MinExpansionLevel` tinyint NOT NULL DEFAULT '0',
  `MaxExpansionLevel` tinyint NOT NULL DEFAULT '0',
  `MinAvgItemLevel` int NOT NULL DEFAULT '0',
  `MaxAvgItemLevel` int NOT NULL DEFAULT '0',
  `MinAvgEquippedItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `MaxAvgEquippedItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `PhaseUseFlags` tinyint unsigned NOT NULL DEFAULT '0',
  `PhaseID` smallint unsigned NOT NULL DEFAULT '0',
  `PhaseGroupID` int unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `ChrSpecializationIndex` tinyint NOT NULL DEFAULT '0',
  `ChrSpecializationRole` tinyint NOT NULL DEFAULT '0',
  `ModifierTreeID` int unsigned NOT NULL DEFAULT '0',
  `PowerType` tinyint NOT NULL DEFAULT '0',
  `PowerTypeComp` tinyint unsigned NOT NULL DEFAULT '0',
  `PowerTypeValue` tinyint unsigned NOT NULL DEFAULT '0',
  `WeaponSubclassMask` int NOT NULL DEFAULT '0',
  `MaxGuildLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `MinGuildLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxExpansionTier` tinyint NOT NULL DEFAULT '0',
  `MinExpansionTier` tinyint NOT NULL DEFAULT '0',
  `MinPVPRank` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxPVPRank` tinyint unsigned NOT NULL DEFAULT '0',
  `SkillID1` smallint unsigned NOT NULL DEFAULT '0',
  `SkillID2` smallint unsigned NOT NULL DEFAULT '0',
  `SkillID3` smallint unsigned NOT NULL DEFAULT '0',
  `SkillID4` smallint unsigned NOT NULL DEFAULT '0',
  `MinSkill1` smallint unsigned NOT NULL DEFAULT '0',
  `MinSkill2` smallint unsigned NOT NULL DEFAULT '0',
  `MinSkill3` smallint unsigned NOT NULL DEFAULT '0',
  `MinSkill4` smallint unsigned NOT NULL DEFAULT '0',
  `MaxSkill1` smallint unsigned NOT NULL DEFAULT '0',
  `MaxSkill2` smallint unsigned NOT NULL DEFAULT '0',
  `MaxSkill3` smallint unsigned NOT NULL DEFAULT '0',
  `MaxSkill4` smallint unsigned NOT NULL DEFAULT '0',
  `MinFactionID1` int unsigned NOT NULL DEFAULT '0',
  `MinFactionID2` int unsigned NOT NULL DEFAULT '0',
  `MinFactionID3` int unsigned NOT NULL DEFAULT '0',
  `MinReputation1` tinyint unsigned NOT NULL DEFAULT '0',
  `MinReputation2` tinyint unsigned NOT NULL DEFAULT '0',
  `MinReputation3` tinyint unsigned NOT NULL DEFAULT '0',
  `PrevQuestID1` int unsigned NOT NULL DEFAULT '0',
  `PrevQuestID2` int unsigned NOT NULL DEFAULT '0',
  `PrevQuestID3` int unsigned NOT NULL DEFAULT '0',
  `PrevQuestID4` int unsigned NOT NULL DEFAULT '0',
  `CurrQuestID1` int unsigned NOT NULL DEFAULT '0',
  `CurrQuestID2` int unsigned NOT NULL DEFAULT '0',
  `CurrQuestID3` int unsigned NOT NULL DEFAULT '0',
  `CurrQuestID4` int unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID1` int unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID2` int unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID3` int unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID4` int unsigned NOT NULL DEFAULT '0',
  `SpellID1` int NOT NULL DEFAULT '0',
  `SpellID2` int NOT NULL DEFAULT '0',
  `SpellID3` int NOT NULL DEFAULT '0',
  `SpellID4` int NOT NULL DEFAULT '0',
  `ItemID1` int NOT NULL DEFAULT '0',
  `ItemID2` int NOT NULL DEFAULT '0',
  `ItemID3` int NOT NULL DEFAULT '0',
  `ItemID4` int NOT NULL DEFAULT '0',
  `ItemCount1` int unsigned NOT NULL DEFAULT '0',
  `ItemCount2` int unsigned NOT NULL DEFAULT '0',
  `ItemCount3` int unsigned NOT NULL DEFAULT '0',
  `ItemCount4` int unsigned NOT NULL DEFAULT '0',
  `Explored1` smallint unsigned NOT NULL DEFAULT '0',
  `Explored2` smallint unsigned NOT NULL DEFAULT '0',
  `Time1` int unsigned NOT NULL DEFAULT '0',
  `Time2` int unsigned NOT NULL DEFAULT '0',
  `AuraSpellID1` int NOT NULL DEFAULT '0',
  `AuraSpellID2` int NOT NULL DEFAULT '0',
  `AuraSpellID3` int NOT NULL DEFAULT '0',
  `AuraSpellID4` int NOT NULL DEFAULT '0',
  `AuraStacks1` tinyint unsigned NOT NULL DEFAULT '0',
  `AuraStacks2` tinyint unsigned NOT NULL DEFAULT '0',
  `AuraStacks3` tinyint unsigned NOT NULL DEFAULT '0',
  `AuraStacks4` tinyint unsigned NOT NULL DEFAULT '0',
  `Achievement1` smallint unsigned NOT NULL DEFAULT '0',
  `Achievement2` smallint unsigned NOT NULL DEFAULT '0',
  `Achievement3` smallint unsigned NOT NULL DEFAULT '0',
  `Achievement4` smallint unsigned NOT NULL DEFAULT '0',
  `AreaID1` smallint unsigned NOT NULL DEFAULT '0',
  `AreaID2` smallint unsigned NOT NULL DEFAULT '0',
  `AreaID3` smallint unsigned NOT NULL DEFAULT '0',
  `AreaID4` smallint unsigned NOT NULL DEFAULT '0',
  `LfgStatus1` tinyint unsigned NOT NULL DEFAULT '0',
  `LfgStatus2` tinyint unsigned NOT NULL DEFAULT '0',
  `LfgStatus3` tinyint unsigned NOT NULL DEFAULT '0',
  `LfgStatus4` tinyint unsigned NOT NULL DEFAULT '0',
  `LfgCompare1` tinyint unsigned NOT NULL DEFAULT '0',
  `LfgCompare2` tinyint unsigned NOT NULL DEFAULT '0',
  `LfgCompare3` tinyint unsigned NOT NULL DEFAULT '0',
  `LfgCompare4` tinyint unsigned NOT NULL DEFAULT '0',
  `LfgValue1` int unsigned NOT NULL DEFAULT '0',
  `LfgValue2` int unsigned NOT NULL DEFAULT '0',
  `LfgValue3` int unsigned NOT NULL DEFAULT '0',
  `LfgValue4` int unsigned NOT NULL DEFAULT '0',
  `CurrencyID1` int unsigned NOT NULL DEFAULT '0',
  `CurrencyID2` int unsigned NOT NULL DEFAULT '0',
  `CurrencyID3` int unsigned NOT NULL DEFAULT '0',
  `CurrencyID4` int unsigned NOT NULL DEFAULT '0',
  `CurrencyCount1` int unsigned NOT NULL DEFAULT '0',
  `CurrencyCount2` int unsigned NOT NULL DEFAULT '0',
  `CurrencyCount3` int unsigned NOT NULL DEFAULT '0',
  `CurrencyCount4` int unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster1` int unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster2` int unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster3` int unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster4` int unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster5` int unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster6` int unsigned NOT NULL DEFAULT '0',
  `MovementFlags1` int NOT NULL DEFAULT '0',
  `MovementFlags2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.player_condition_locale
CREATE TABLE IF NOT EXISTS `player_condition_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FailureDescription_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.power_display
CREATE TABLE IF NOT EXISTS `power_display` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `GlobalStringBaseTag` text COLLATE utf8mb4_unicode_ci,
  `ActualType` tinyint unsigned NOT NULL DEFAULT '0',
  `Red` tinyint unsigned NOT NULL DEFAULT '0',
  `Green` tinyint unsigned NOT NULL DEFAULT '0',
  `Blue` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.power_type
CREATE TABLE IF NOT EXISTS `power_type` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `NameGlobalStringTag` text COLLATE utf8mb4_unicode_ci,
  `CostGlobalStringTag` text COLLATE utf8mb4_unicode_ci,
  `PowerTypeEnum` tinyint NOT NULL DEFAULT '0',
  `MinPower` int NOT NULL DEFAULT '0',
  `MaxBasePower` int NOT NULL DEFAULT '0',
  `CenterPower` int NOT NULL DEFAULT '0',
  `DefaultPower` int NOT NULL DEFAULT '0',
  `DisplayModifier` int NOT NULL DEFAULT '0',
  `RegenInterruptTimeMS` int NOT NULL DEFAULT '0',
  `RegenPeace` float NOT NULL DEFAULT '0',
  `RegenCombat` float NOT NULL DEFAULT '0',
  `Flags` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.prestige_level_info
CREATE TABLE IF NOT EXISTS `prestige_level_info` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `PrestigeLevel` int NOT NULL DEFAULT '0',
  `BadgeTextureFileDataID` int NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `AwardedAchievementID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.prestige_level_info_locale
CREATE TABLE IF NOT EXISTS `prestige_level_info_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.pvp_difficulty
CREATE TABLE IF NOT EXISTS `pvp_difficulty` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `RangeIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `MinLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `MapID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.pvp_item
CREATE TABLE IF NOT EXISTS `pvp_item` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemID` int NOT NULL DEFAULT '0',
  `ItemLevelDelta` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.pvp_season
CREATE TABLE IF NOT EXISTS `pvp_season` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MilestoneSeason` int NOT NULL DEFAULT '0',
  `AllianceAchievementID` int NOT NULL DEFAULT '0',
  `HordeAchievementID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.pvp_tier
CREATE TABLE IF NOT EXISTS `pvp_tier` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `MinRating` smallint NOT NULL DEFAULT '0',
  `MaxRating` smallint NOT NULL DEFAULT '0',
  `PrevTier` int NOT NULL DEFAULT '0',
  `NextTier` int NOT NULL DEFAULT '0',
  `BracketID` tinyint unsigned NOT NULL DEFAULT '0',
  `Rank` tinyint NOT NULL DEFAULT '0',
  `RankIconFileDataID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.pvp_tier_locale
CREATE TABLE IF NOT EXISTS `pvp_tier_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.quest_faction_reward
CREATE TABLE IF NOT EXISTS `quest_faction_reward` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Difficulty1` smallint NOT NULL DEFAULT '0',
  `Difficulty2` smallint NOT NULL DEFAULT '0',
  `Difficulty3` smallint NOT NULL DEFAULT '0',
  `Difficulty4` smallint NOT NULL DEFAULT '0',
  `Difficulty5` smallint NOT NULL DEFAULT '0',
  `Difficulty6` smallint NOT NULL DEFAULT '0',
  `Difficulty7` smallint NOT NULL DEFAULT '0',
  `Difficulty8` smallint NOT NULL DEFAULT '0',
  `Difficulty9` smallint NOT NULL DEFAULT '0',
  `Difficulty10` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.quest_info
CREATE TABLE IF NOT EXISTS `quest_info` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `InfoName` text COLLATE utf8mb4_unicode_ci,
  `Type` tinyint NOT NULL DEFAULT '0',
  `Modifiers` int NOT NULL DEFAULT '0',
  `Profession` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.quest_info_locale
CREATE TABLE IF NOT EXISTS `quest_info_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InfoName_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.quest_line_x_quest
CREATE TABLE IF NOT EXISTS `quest_line_x_quest` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `QuestLineID` int unsigned NOT NULL DEFAULT '0',
  `QuestID` int unsigned NOT NULL DEFAULT '0',
  `OrderIndex` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.quest_money_reward
CREATE TABLE IF NOT EXISTS `quest_money_reward` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Difficulty1` int unsigned NOT NULL DEFAULT '0',
  `Difficulty2` int unsigned NOT NULL DEFAULT '0',
  `Difficulty3` int unsigned NOT NULL DEFAULT '0',
  `Difficulty4` int unsigned NOT NULL DEFAULT '0',
  `Difficulty5` int unsigned NOT NULL DEFAULT '0',
  `Difficulty6` int unsigned NOT NULL DEFAULT '0',
  `Difficulty7` int unsigned NOT NULL DEFAULT '0',
  `Difficulty8` int unsigned NOT NULL DEFAULT '0',
  `Difficulty9` int unsigned NOT NULL DEFAULT '0',
  `Difficulty10` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.quest_package_item
CREATE TABLE IF NOT EXISTS `quest_package_item` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `PackageID` smallint unsigned NOT NULL DEFAULT '0',
  `ItemID` int NOT NULL DEFAULT '0',
  `ItemQuantity` int unsigned NOT NULL DEFAULT '0',
  `DisplayType` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.quest_sort
CREATE TABLE IF NOT EXISTS `quest_sort` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SortName` text COLLATE utf8mb4_unicode_ci,
  `UiOrderIndex` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.quest_sort_locale
CREATE TABLE IF NOT EXISTS `quest_sort_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SortName_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.quest_v2
CREATE TABLE IF NOT EXISTS `quest_v2` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `UniqueBitFlag` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.quest_xp
CREATE TABLE IF NOT EXISTS `quest_xp` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Difficulty1` smallint unsigned NOT NULL DEFAULT '0',
  `Difficulty2` smallint unsigned NOT NULL DEFAULT '0',
  `Difficulty3` smallint unsigned NOT NULL DEFAULT '0',
  `Difficulty4` smallint unsigned NOT NULL DEFAULT '0',
  `Difficulty5` smallint unsigned NOT NULL DEFAULT '0',
  `Difficulty6` smallint unsigned NOT NULL DEFAULT '0',
  `Difficulty7` smallint unsigned NOT NULL DEFAULT '0',
  `Difficulty8` smallint unsigned NOT NULL DEFAULT '0',
  `Difficulty9` smallint unsigned NOT NULL DEFAULT '0',
  `Difficulty10` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.rand_prop_points
CREATE TABLE IF NOT EXISTS `rand_prop_points` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DamageReplaceStat` int NOT NULL DEFAULT '0',
  `Epic1` int unsigned NOT NULL DEFAULT '0',
  `Epic2` int unsigned NOT NULL DEFAULT '0',
  `Epic3` int unsigned NOT NULL DEFAULT '0',
  `Epic4` int unsigned NOT NULL DEFAULT '0',
  `Epic5` int unsigned NOT NULL DEFAULT '0',
  `Superior1` int unsigned NOT NULL DEFAULT '0',
  `Superior2` int unsigned NOT NULL DEFAULT '0',
  `Superior3` int unsigned NOT NULL DEFAULT '0',
  `Superior4` int unsigned NOT NULL DEFAULT '0',
  `Superior5` int unsigned NOT NULL DEFAULT '0',
  `Good1` int unsigned NOT NULL DEFAULT '0',
  `Good2` int unsigned NOT NULL DEFAULT '0',
  `Good3` int unsigned NOT NULL DEFAULT '0',
  `Good4` int unsigned NOT NULL DEFAULT '0',
  `Good5` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.reward_pack
CREATE TABLE IF NOT EXISTS `reward_pack` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `CharTitleID` int NOT NULL DEFAULT '0',
  `Money` int unsigned NOT NULL DEFAULT '0',
  `ArtifactXPDifficulty` tinyint NOT NULL DEFAULT '0',
  `ArtifactXPMultiplier` float NOT NULL DEFAULT '0',
  `ArtifactXPCategoryID` tinyint unsigned NOT NULL DEFAULT '0',
  `TreasurePickerID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.reward_pack_x_currency_type
CREATE TABLE IF NOT EXISTS `reward_pack_x_currency_type` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `CurrencyTypeID` int unsigned NOT NULL DEFAULT '0',
  `Quantity` int NOT NULL DEFAULT '0',
  `RewardPackID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.reward_pack_x_item
CREATE TABLE IF NOT EXISTS `reward_pack_x_item` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemID` int NOT NULL DEFAULT '0',
  `ItemQuantity` int NOT NULL DEFAULT '0',
  `RewardPackID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.scaling_stat_distribution
CREATE TABLE IF NOT EXISTS `scaling_stat_distribution` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `PlayerLevelToItemLevelCurveID` smallint unsigned NOT NULL DEFAULT '0',
  `MinLevel` int NOT NULL DEFAULT '0',
  `MaxLevel` int NOT NULL DEFAULT '0',
  `Bonus1` int NOT NULL DEFAULT '0',
  `Bonus2` int NOT NULL DEFAULT '0',
  `Bonus3` int NOT NULL DEFAULT '0',
  `Bonus4` int NOT NULL DEFAULT '0',
  `Bonus5` int NOT NULL DEFAULT '0',
  `Bonus6` int NOT NULL DEFAULT '0',
  `Bonus7` int NOT NULL DEFAULT '0',
  `Bonus8` int NOT NULL DEFAULT '0',
  `Bonus9` int NOT NULL DEFAULT '0',
  `Bonus10` int NOT NULL DEFAULT '0',
  `StatID1` int NOT NULL DEFAULT '0',
  `StatID2` int NOT NULL DEFAULT '0',
  `StatID3` int NOT NULL DEFAULT '0',
  `StatID4` int NOT NULL DEFAULT '0',
  `StatID5` int NOT NULL DEFAULT '0',
  `StatID6` int NOT NULL DEFAULT '0',
  `StatID7` int NOT NULL DEFAULT '0',
  `StatID8` int NOT NULL DEFAULT '0',
  `StatID9` int NOT NULL DEFAULT '0',
  `StatID10` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.scaling_stat_values
CREATE TABLE IF NOT EXISTS `scaling_stat_values` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Charlevel` int NOT NULL DEFAULT '0',
  `WeaponDPS1H` int NOT NULL DEFAULT '0',
  `WeaponDPS2H` int NOT NULL DEFAULT '0',
  `SpellcasterDPS1H` int NOT NULL DEFAULT '0',
  `SpellcasterDPS2H` int NOT NULL DEFAULT '0',
  `RangedDPS` int NOT NULL DEFAULT '0',
  `WandDPS` int NOT NULL DEFAULT '0',
  `SpellPower` int NOT NULL DEFAULT '0',
  `ShoulderBudget` int NOT NULL DEFAULT '0',
  `TrinketBudget` int NOT NULL DEFAULT '0',
  `WeaponBudget1H` int NOT NULL DEFAULT '0',
  `PrimaryBudget` int NOT NULL DEFAULT '0',
  `RangedBudget` int NOT NULL DEFAULT '0',
  `TertiaryBudget` int NOT NULL DEFAULT '0',
  `ClothShoulderArmor` int NOT NULL DEFAULT '0',
  `LeatherShoulderArmor` int NOT NULL DEFAULT '0',
  `MailShoulderArmor` int NOT NULL DEFAULT '0',
  `PlateShoulderArmor` int NOT NULL DEFAULT '0',
  `ClothCloakArmor` int NOT NULL DEFAULT '0',
  `ClothChestArmor` int NOT NULL DEFAULT '0',
  `LeatherChestArmor` int NOT NULL DEFAULT '0',
  `MailChestArmor` int NOT NULL DEFAULT '0',
  `PlateChestArmor` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.scenario
CREATE TABLE IF NOT EXISTS `scenario` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `AreaTableID` smallint unsigned NOT NULL DEFAULT '0',
  `Type` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `UiTextureKitID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.scenario_locale
CREATE TABLE IF NOT EXISTS `scenario_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.scenario_step
CREATE TABLE IF NOT EXISTS `scenario_step` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Description` text COLLATE utf8mb4_unicode_ci,
  `Title` text COLLATE utf8mb4_unicode_ci,
  `ScenarioID` smallint unsigned NOT NULL DEFAULT '0',
  `Criteriatreeid` int unsigned NOT NULL DEFAULT '0',
  `RewardQuestID` int unsigned NOT NULL DEFAULT '0',
  `RelatedStep` int NOT NULL DEFAULT '0',
  `Supersedes` smallint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VisibilityPlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `WidgetSetID` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.scenario_step_locale
CREATE TABLE IF NOT EXISTS `scenario_step_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `Title_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.scene_script
CREATE TABLE IF NOT EXISTS `scene_script` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `FirstSceneScriptID` smallint unsigned NOT NULL DEFAULT '0',
  `NextSceneScriptID` smallint unsigned NOT NULL DEFAULT '0',
  `Unknown915` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.scene_script_global_text
CREATE TABLE IF NOT EXISTS `scene_script_global_text` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Script` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.scene_script_package
CREATE TABLE IF NOT EXISTS `scene_script_package` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.scene_script_text
CREATE TABLE IF NOT EXISTS `scene_script_text` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Script` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.server_messages
CREATE TABLE IF NOT EXISTS `server_messages` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Text` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.server_messages_locale
CREATE TABLE IF NOT EXISTS `server_messages_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Text_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.skill_line
CREATE TABLE IF NOT EXISTS `skill_line` (
  `DisplayName` text COLLATE utf8mb4_unicode_ci,
  `AlternateVerb` text COLLATE utf8mb4_unicode_ci,
  `Description` text COLLATE utf8mb4_unicode_ci,
  `HordeDisplayName` text COLLATE utf8mb4_unicode_ci,
  `OverrideSourceInfoDisplayName` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `CategoryID` tinyint NOT NULL DEFAULT '0',
  `SpellIconFileID` int NOT NULL DEFAULT '0',
  `CanLink` tinyint NOT NULL DEFAULT '0',
  `ParentSkillLineID` int unsigned NOT NULL DEFAULT '0',
  `ParentTierIndex` int NOT NULL DEFAULT '0',
  `Flags` smallint unsigned NOT NULL DEFAULT '0',
  `SpellBookSpellID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.skill_line_ability
CREATE TABLE IF NOT EXISTS `skill_line_ability` (
  `RaceMask` bigint NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SkillLine` smallint NOT NULL DEFAULT '0',
  `Spell` int NOT NULL DEFAULT '0',
  `MinSkillLineRank` smallint NOT NULL DEFAULT '0',
  `ClassMask` int NOT NULL DEFAULT '0',
  `SupercedesSpell` int NOT NULL DEFAULT '0',
  `AcquireMethod` tinyint NOT NULL DEFAULT '0',
  `TrivialSkillLineRankHigh` smallint NOT NULL DEFAULT '0',
  `TrivialSkillLineRankLow` smallint NOT NULL DEFAULT '0',
  `Flags` tinyint NOT NULL DEFAULT '0',
  `NumSkillUps` tinyint NOT NULL DEFAULT '0',
  `UniqueBit` smallint NOT NULL DEFAULT '0',
  `TradeSkillCategoryID` smallint NOT NULL DEFAULT '0',
  `SkillupSkillLineID` smallint NOT NULL DEFAULT '0',
  `CharacterPoints1` int NOT NULL DEFAULT '0',
  `CharacterPoints2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.skill_line_ability_locale
CREATE TABLE IF NOT EXISTS `skill_line_ability_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AbilityVerb_lang` text COLLATE utf8mb4_unicode_ci,
  `AbilityAllVerb_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.skill_line_locale
CREATE TABLE IF NOT EXISTS `skill_line_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DisplayName_lang` text COLLATE utf8mb4_unicode_ci,
  `AlternateVerb_lang` text COLLATE utf8mb4_unicode_ci,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `HordeDisplayName_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.skill_race_class_info
CREATE TABLE IF NOT EXISTS `skill_race_class_info` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `RaceMask` bigint NOT NULL DEFAULT '0',
  `SkillID` smallint NOT NULL DEFAULT '0',
  `ClassMask` int NOT NULL DEFAULT '0',
  `Flags` smallint unsigned NOT NULL DEFAULT '0',
  `Availability` tinyint NOT NULL DEFAULT '0',
  `MinLevel` tinyint NOT NULL DEFAULT '0',
  `SkillTierID` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.soulbind_conduit_rank
CREATE TABLE IF NOT EXISTS `soulbind_conduit_rank` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `RankIndex` int NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `AuraPointsOverride` float NOT NULL DEFAULT '0',
  `SoulbindConduitID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.sound_kit
CREATE TABLE IF NOT EXISTS `sound_kit` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SoundType` tinyint unsigned NOT NULL DEFAULT '0',
  `VolumeFloat` float NOT NULL DEFAULT '0',
  `Flags` smallint unsigned NOT NULL DEFAULT '0',
  `MinDistance` float NOT NULL DEFAULT '0',
  `DistanceCutoff` float NOT NULL DEFAULT '0',
  `EAXDef` tinyint unsigned NOT NULL DEFAULT '0',
  `SoundKitAdvancedID` int unsigned NOT NULL DEFAULT '0',
  `VolumeVariationPlus` float NOT NULL DEFAULT '0',
  `VolumeVariationMinus` float NOT NULL DEFAULT '0',
  `PitchVariationPlus` float NOT NULL DEFAULT '0',
  `PitchVariationMinus` float NOT NULL DEFAULT '0',
  `DialogType` tinyint NOT NULL DEFAULT '0',
  `PitchAdjust` float NOT NULL DEFAULT '0',
  `BusOverwriteID` smallint unsigned NOT NULL DEFAULT '0',
  `MaxInstances` tinyint unsigned NOT NULL DEFAULT '0',
  `SoundMixGroupID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.specialization_spells
CREATE TABLE IF NOT EXISTS `specialization_spells` (
  `Description` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpecID` smallint unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `OverridesSpellID` int NOT NULL DEFAULT '0',
  `DisplayOrder` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.specialization_spells_locale
CREATE TABLE IF NOT EXISTS `specialization_spells_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spec_set_member
CREATE TABLE IF NOT EXISTS `spec_set_member` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ChrSpecializationID` int NOT NULL DEFAULT '0',
  `SpecSetID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_aura_options
CREATE TABLE IF NOT EXISTS `spell_aura_options` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `CumulativeAura` int unsigned NOT NULL DEFAULT '0',
  `ProcCategoryRecovery` int NOT NULL DEFAULT '0',
  `ProcChance` tinyint unsigned NOT NULL DEFAULT '0',
  `ProcCharges` int NOT NULL DEFAULT '0',
  `SpellProcsPerMinuteID` smallint unsigned NOT NULL DEFAULT '0',
  `ProcTypeMask1` int NOT NULL DEFAULT '0',
  `ProcTypeMask2` int NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_aura_restrictions
CREATE TABLE IF NOT EXISTS `spell_aura_restrictions` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `CasterAuraState` tinyint unsigned NOT NULL DEFAULT '0',
  `TargetAuraState` tinyint unsigned NOT NULL DEFAULT '0',
  `ExcludeCasterAuraState` tinyint unsigned NOT NULL DEFAULT '0',
  `ExcludeTargetAuraState` tinyint unsigned NOT NULL DEFAULT '0',
  `CasterAuraSpell` int NOT NULL DEFAULT '0',
  `TargetAuraSpell` int NOT NULL DEFAULT '0',
  `ExcludeCasterAuraSpell` int NOT NULL DEFAULT '0',
  `ExcludeTargetAuraSpell` int NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_casting_requirements
CREATE TABLE IF NOT EXISTS `spell_casting_requirements` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `FacingCasterFlags` tinyint unsigned NOT NULL DEFAULT '0',
  `MinFactionID` smallint unsigned NOT NULL DEFAULT '0',
  `MinReputation` int NOT NULL DEFAULT '0',
  `RequiredAreasID` smallint unsigned NOT NULL DEFAULT '0',
  `RequiredAuraVision` tinyint unsigned NOT NULL DEFAULT '0',
  `RequiresSpellFocus` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_cast_times
CREATE TABLE IF NOT EXISTS `spell_cast_times` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Base` int NOT NULL DEFAULT '0',
  `PerLevel` smallint NOT NULL DEFAULT '0',
  `Minimum` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_categories
CREATE TABLE IF NOT EXISTS `spell_categories` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `Category` smallint NOT NULL DEFAULT '0',
  `DefenseType` tinyint NOT NULL DEFAULT '0',
  `DispelType` tinyint NOT NULL DEFAULT '0',
  `Mechanic` tinyint NOT NULL DEFAULT '0',
  `PreventionType` tinyint NOT NULL DEFAULT '0',
  `StartRecoveryCategory` smallint NOT NULL DEFAULT '0',
  `ChargeCategory` smallint NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_category
CREATE TABLE IF NOT EXISTS `spell_category` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Flags` int NOT NULL DEFAULT '0',
  `UsesPerWeek` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxCharges` tinyint NOT NULL DEFAULT '0',
  `ChargeRecoveryTime` int NOT NULL DEFAULT '0',
  `TypeMask` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_category_locale
CREATE TABLE IF NOT EXISTS `spell_category_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_class_options
CREATE TABLE IF NOT EXISTS `spell_class_options` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `ModalNextSpell` int unsigned NOT NULL DEFAULT '0',
  `SpellClassSet` tinyint unsigned NOT NULL DEFAULT '0',
  `SpellClassMask1` int NOT NULL DEFAULT '0',
  `SpellClassMask2` int NOT NULL DEFAULT '0',
  `SpellClassMask3` int NOT NULL DEFAULT '0',
  `SpellClassMask4` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_cooldowns
CREATE TABLE IF NOT EXISTS `spell_cooldowns` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `CategoryRecoveryTime` int NOT NULL DEFAULT '0',
  `RecoveryTime` int NOT NULL DEFAULT '0',
  `StartRecoveryTime` int NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_duration
CREATE TABLE IF NOT EXISTS `spell_duration` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Duration` int NOT NULL DEFAULT '0',
  `DurationPerLevel` int unsigned NOT NULL DEFAULT '0',
  `MaxDuration` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_effect
CREATE TABLE IF NOT EXISTS `spell_effect` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DifficultyID` int NOT NULL DEFAULT '0',
  `EffectIndex` int NOT NULL DEFAULT '0',
  `Effect` int unsigned NOT NULL DEFAULT '0',
  `EffectAmplitude` float NOT NULL DEFAULT '0',
  `EffectAttributes` int NOT NULL DEFAULT '0',
  `EffectAura` smallint NOT NULL DEFAULT '0',
  `EffectAuraPeriod` int NOT NULL DEFAULT '0',
  `EffectBasePoints` int NOT NULL DEFAULT '0',
  `EffectBonusCoefficient` float NOT NULL DEFAULT '0',
  `EffectChainAmplitude` float NOT NULL DEFAULT '0',
  `EffectChainTargets` int NOT NULL DEFAULT '0',
  `EffectDieSides` int NOT NULL DEFAULT '0',
  `EffectItemType` int NOT NULL DEFAULT '0',
  `EffectMechanic` int NOT NULL DEFAULT '0',
  `EffectPointsPerResource` float NOT NULL DEFAULT '0',
  `EffectPosFacing` float NOT NULL DEFAULT '0',
  `EffectRealPointsPerLevel` float NOT NULL DEFAULT '0',
  `EffectTriggerSpell` int NOT NULL DEFAULT '0',
  `BonusCoefficientFromAP` float NOT NULL DEFAULT '0',
  `PvpMultiplier` float NOT NULL DEFAULT '0',
  `Coefficient` float NOT NULL DEFAULT '0',
  `Variance` float NOT NULL DEFAULT '0',
  `ResourceCoefficient` float NOT NULL DEFAULT '0',
  `GroupSizeBasePointsCoefficient` float NOT NULL DEFAULT '0',
  `EffectMiscValue1` int NOT NULL DEFAULT '0',
  `EffectMiscValue2` int NOT NULL DEFAULT '0',
  `EffectRadiusIndex1` int unsigned NOT NULL DEFAULT '0',
  `EffectRadiusIndex2` int unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMask1` int NOT NULL DEFAULT '0',
  `EffectSpellClassMask2` int NOT NULL DEFAULT '0',
  `EffectSpellClassMask3` int NOT NULL DEFAULT '0',
  `EffectSpellClassMask4` int NOT NULL DEFAULT '0',
  `ImplicitTarget1` smallint NOT NULL DEFAULT '0',
  `ImplicitTarget2` smallint NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_equipped_items
CREATE TABLE IF NOT EXISTS `spell_equipped_items` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `EquippedItemClass` tinyint NOT NULL DEFAULT '0',
  `EquippedItemInvTypes` int NOT NULL DEFAULT '0',
  `EquippedItemSubclass` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_focus_object
CREATE TABLE IF NOT EXISTS `spell_focus_object` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_focus_object_locale
CREATE TABLE IF NOT EXISTS `spell_focus_object_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_interrupts
CREATE TABLE IF NOT EXISTS `spell_interrupts` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `InterruptFlags` smallint NOT NULL DEFAULT '0',
  `AuraInterruptFlags1` int NOT NULL DEFAULT '0',
  `AuraInterruptFlags2` int NOT NULL DEFAULT '0',
  `ChannelInterruptFlags1` int NOT NULL DEFAULT '0',
  `ChannelInterruptFlags2` int NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_item_enchantment
CREATE TABLE IF NOT EXISTS `spell_item_enchantment` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `HordeName` text COLLATE utf8mb4_unicode_ci,
  `EffectArg1` int unsigned NOT NULL DEFAULT '0',
  `EffectArg2` int unsigned NOT NULL DEFAULT '0',
  `EffectArg3` int unsigned NOT NULL DEFAULT '0',
  `EffectScalingPoints1` float NOT NULL DEFAULT '0',
  `EffectScalingPoints2` float NOT NULL DEFAULT '0',
  `EffectScalingPoints3` float NOT NULL DEFAULT '0',
  `GemItemID` int unsigned NOT NULL DEFAULT '0',
  `TransmogUnlockConditionID` int unsigned NOT NULL DEFAULT '0',
  `TransmogCost` int unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int unsigned NOT NULL DEFAULT '0',
  `EffectPointsMin1` smallint NOT NULL DEFAULT '0',
  `EffectPointsMin2` smallint NOT NULL DEFAULT '0',
  `EffectPointsMin3` smallint NOT NULL DEFAULT '0',
  `ItemVisual` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` smallint unsigned NOT NULL DEFAULT '0',
  `RequiredSkillID` smallint unsigned NOT NULL DEFAULT '0',
  `RequiredSkillRank` smallint unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
  `Charges` tinyint unsigned NOT NULL DEFAULT '0',
  `Effect1` tinyint unsigned NOT NULL DEFAULT '0',
  `Effect2` tinyint unsigned NOT NULL DEFAULT '0',
  `Effect3` tinyint unsigned NOT NULL DEFAULT '0',
  `ScalingClass` tinyint NOT NULL DEFAULT '0',
  `ScalingClassRestricted` tinyint NOT NULL DEFAULT '0',
  `ConditionID` tinyint unsigned NOT NULL DEFAULT '0',
  `MinLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_item_enchantment_condition
CREATE TABLE IF NOT EXISTS `spell_item_enchantment_condition` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `LtOperandType1` tinyint unsigned NOT NULL DEFAULT '0',
  `LtOperandType2` tinyint unsigned NOT NULL DEFAULT '0',
  `LtOperandType3` tinyint unsigned NOT NULL DEFAULT '0',
  `LtOperandType4` tinyint unsigned NOT NULL DEFAULT '0',
  `LtOperandType5` tinyint unsigned NOT NULL DEFAULT '0',
  `LtOperand1` int unsigned NOT NULL DEFAULT '0',
  `LtOperand2` int unsigned NOT NULL DEFAULT '0',
  `LtOperand3` int unsigned NOT NULL DEFAULT '0',
  `LtOperand4` int unsigned NOT NULL DEFAULT '0',
  `LtOperand5` int unsigned NOT NULL DEFAULT '0',
  `Operator1` tinyint unsigned NOT NULL DEFAULT '0',
  `Operator2` tinyint unsigned NOT NULL DEFAULT '0',
  `Operator3` tinyint unsigned NOT NULL DEFAULT '0',
  `Operator4` tinyint unsigned NOT NULL DEFAULT '0',
  `Operator5` tinyint unsigned NOT NULL DEFAULT '0',
  `RtOperandType1` tinyint unsigned NOT NULL DEFAULT '0',
  `RtOperandType2` tinyint unsigned NOT NULL DEFAULT '0',
  `RtOperandType3` tinyint unsigned NOT NULL DEFAULT '0',
  `RtOperandType4` tinyint unsigned NOT NULL DEFAULT '0',
  `RtOperandType5` tinyint unsigned NOT NULL DEFAULT '0',
  `RtOperand1` tinyint unsigned NOT NULL DEFAULT '0',
  `RtOperand2` tinyint unsigned NOT NULL DEFAULT '0',
  `RtOperand3` tinyint unsigned NOT NULL DEFAULT '0',
  `RtOperand4` tinyint unsigned NOT NULL DEFAULT '0',
  `RtOperand5` tinyint unsigned NOT NULL DEFAULT '0',
  `Logic1` tinyint unsigned NOT NULL DEFAULT '0',
  `Logic2` tinyint unsigned NOT NULL DEFAULT '0',
  `Logic3` tinyint unsigned NOT NULL DEFAULT '0',
  `Logic4` tinyint unsigned NOT NULL DEFAULT '0',
  `Logic5` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_item_enchantment_locale
CREATE TABLE IF NOT EXISTS `spell_item_enchantment_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `HordeName_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_keybound_override
CREATE TABLE IF NOT EXISTS `spell_keybound_override` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Function` text COLLATE utf8mb4_unicode_ci,
  `Type` tinyint NOT NULL DEFAULT '0',
  `Data` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_label
CREATE TABLE IF NOT EXISTS `spell_label` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `LabelID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_learn_spell
CREATE TABLE IF NOT EXISTS `spell_learn_spell` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `LearnSpellID` int NOT NULL DEFAULT '0',
  `OverridesSpellID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_levels
CREATE TABLE IF NOT EXISTS `spell_levels` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `BaseLevel` smallint NOT NULL DEFAULT '0',
  `MaxLevel` smallint NOT NULL DEFAULT '0',
  `SpellLevel` smallint NOT NULL DEFAULT '0',
  `MaxPassiveAuraLevel` tinyint unsigned NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_misc
CREATE TABLE IF NOT EXISTS `spell_misc` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Attributes1` int NOT NULL DEFAULT '0',
  `Attributes2` int NOT NULL DEFAULT '0',
  `Attributes3` int NOT NULL DEFAULT '0',
  `Attributes4` int NOT NULL DEFAULT '0',
  `Attributes5` int NOT NULL DEFAULT '0',
  `Attributes6` int NOT NULL DEFAULT '0',
  `Attributes7` int NOT NULL DEFAULT '0',
  `Attributes8` int NOT NULL DEFAULT '0',
  `Attributes9` int NOT NULL DEFAULT '0',
  `Attributes10` int NOT NULL DEFAULT '0',
  `Attributes11` int NOT NULL DEFAULT '0',
  `Attributes12` int NOT NULL DEFAULT '0',
  `Attributes13` int NOT NULL DEFAULT '0',
  `Attributes14` int NOT NULL DEFAULT '0',
  `Attributes15` int NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `CastingTimeIndex` smallint unsigned NOT NULL DEFAULT '0',
  `DurationIndex` smallint unsigned NOT NULL DEFAULT '0',
  `RangeIndex` smallint unsigned NOT NULL DEFAULT '0',
  `SchoolMask` tinyint unsigned NOT NULL DEFAULT '0',
  `Speed` float NOT NULL DEFAULT '0',
  `LaunchDelay` float NOT NULL DEFAULT '0',
  `MinDuration` float NOT NULL DEFAULT '0',
  `SpellIconFileDataID` int NOT NULL DEFAULT '0',
  `ActiveIconFileDataID` int NOT NULL DEFAULT '0',
  `ContentTuningID` int NOT NULL DEFAULT '0',
  `ShowFutureSpellPlayerConditionID` int NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_name
CREATE TABLE IF NOT EXISTS `spell_name` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_name_locale
CREATE TABLE IF NOT EXISTS `spell_name_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_power
CREATE TABLE IF NOT EXISTS `spell_power` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `ManaCost` int NOT NULL DEFAULT '0',
  `ManaCostPerLevel` int NOT NULL DEFAULT '0',
  `ManaPerSecond` int NOT NULL DEFAULT '0',
  `PowerDisplayID` int unsigned NOT NULL DEFAULT '0',
  `AltPowerBarID` int NOT NULL DEFAULT '0',
  `PowerCostPct` float NOT NULL DEFAULT '0',
  `PowerCostMaxPct` float NOT NULL DEFAULT '0',
  `PowerPctPerSecond` float NOT NULL DEFAULT '0',
  `PowerType` tinyint NOT NULL DEFAULT '0',
  `RequiredAuraSpellID` int NOT NULL DEFAULT '0',
  `OptionalCost` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_power_difficulty
CREATE TABLE IF NOT EXISTS `spell_power_difficulty` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_procs_per_minute
CREATE TABLE IF NOT EXISTS `spell_procs_per_minute` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `BaseProcRate` float NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_procs_per_minute_mod
CREATE TABLE IF NOT EXISTS `spell_procs_per_minute_mod` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Type` tinyint unsigned NOT NULL DEFAULT '0',
  `Param` smallint NOT NULL DEFAULT '0',
  `Coeff` float NOT NULL DEFAULT '0',
  `SpellProcsPerMinuteID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_radius
CREATE TABLE IF NOT EXISTS `spell_radius` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Radius` float NOT NULL DEFAULT '0',
  `RadiusPerLevel` float NOT NULL DEFAULT '0',
  `RadiusMin` float NOT NULL DEFAULT '0',
  `RadiusMax` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_range
CREATE TABLE IF NOT EXISTS `spell_range` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DisplayName` text COLLATE utf8mb4_unicode_ci,
  `DisplayNameShort` text COLLATE utf8mb4_unicode_ci,
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `RangeMin1` float NOT NULL DEFAULT '0',
  `RangeMin2` float NOT NULL DEFAULT '0',
  `RangeMax1` float NOT NULL DEFAULT '0',
  `RangeMax2` float NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_range_locale
CREATE TABLE IF NOT EXISTS `spell_range_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DisplayName_lang` text COLLATE utf8mb4_unicode_ci,
  `DisplayNameShort_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_reagents
CREATE TABLE IF NOT EXISTS `spell_reagents` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `Reagent1` int NOT NULL DEFAULT '0',
  `Reagent2` int NOT NULL DEFAULT '0',
  `Reagent3` int NOT NULL DEFAULT '0',
  `Reagent4` int NOT NULL DEFAULT '0',
  `Reagent5` int NOT NULL DEFAULT '0',
  `Reagent6` int NOT NULL DEFAULT '0',
  `Reagent7` int NOT NULL DEFAULT '0',
  `Reagent8` int NOT NULL DEFAULT '0',
  `ReagentCount1` smallint NOT NULL DEFAULT '0',
  `ReagentCount2` smallint NOT NULL DEFAULT '0',
  `ReagentCount3` smallint NOT NULL DEFAULT '0',
  `ReagentCount4` smallint NOT NULL DEFAULT '0',
  `ReagentCount5` smallint NOT NULL DEFAULT '0',
  `ReagentCount6` smallint NOT NULL DEFAULT '0',
  `ReagentCount7` smallint NOT NULL DEFAULT '0',
  `ReagentCount8` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_reagents_currency
CREATE TABLE IF NOT EXISTS `spell_reagents_currency` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `CurrencyTypesID` smallint unsigned NOT NULL DEFAULT '0',
  `CurrencyCount` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_scaling
CREATE TABLE IF NOT EXISTS `spell_scaling` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `Class` int NOT NULL DEFAULT '0',
  `MinScalingLevel` int unsigned NOT NULL DEFAULT '0',
  `MaxScalingLevel` int unsigned NOT NULL DEFAULT '0',
  `ScalesFromItemLevel` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_shapeshift
CREATE TABLE IF NOT EXISTS `spell_shapeshift` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `StanceBarOrder` tinyint NOT NULL DEFAULT '0',
  `ShapeshiftExclude1` int NOT NULL DEFAULT '0',
  `ShapeshiftExclude2` int NOT NULL DEFAULT '0',
  `ShapeshiftMask1` int NOT NULL DEFAULT '0',
  `ShapeshiftMask2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_shapeshift_form
CREATE TABLE IF NOT EXISTS `spell_shapeshift_form` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `CreatureType` tinyint NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `AttackIconFileID` int NOT NULL DEFAULT '0',
  `BonusActionBar` tinyint NOT NULL DEFAULT '0',
  `CombatRoundTime` smallint NOT NULL DEFAULT '0',
  `DamageVariance` float NOT NULL DEFAULT '0',
  `MountTypeID` smallint unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID1` int unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID2` int unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID3` int unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID4` int unsigned NOT NULL DEFAULT '0',
  `PresetSpellID1` int unsigned NOT NULL DEFAULT '0',
  `PresetSpellID2` int unsigned NOT NULL DEFAULT '0',
  `PresetSpellID3` int unsigned NOT NULL DEFAULT '0',
  `PresetSpellID4` int unsigned NOT NULL DEFAULT '0',
  `PresetSpellID5` int unsigned NOT NULL DEFAULT '0',
  `PresetSpellID6` int unsigned NOT NULL DEFAULT '0',
  `PresetSpellID7` int unsigned NOT NULL DEFAULT '0',
  `PresetSpellID8` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_shapeshift_form_locale
CREATE TABLE IF NOT EXISTS `spell_shapeshift_form_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_target_restrictions
CREATE TABLE IF NOT EXISTS `spell_target_restrictions` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `ConeDegrees` float NOT NULL DEFAULT '0',
  `MaxTargets` tinyint unsigned NOT NULL DEFAULT '0',
  `MaxTargetLevel` int unsigned NOT NULL DEFAULT '0',
  `TargetCreatureType` smallint NOT NULL DEFAULT '0',
  `Targets` int NOT NULL DEFAULT '0',
  `Width` float NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_totems
CREATE TABLE IF NOT EXISTS `spell_totems` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `RequiredTotemCategoryID1` smallint unsigned NOT NULL DEFAULT '0',
  `RequiredTotemCategoryID2` smallint unsigned NOT NULL DEFAULT '0',
  `Totem1` int NOT NULL DEFAULT '0',
  `Totem2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_visual
CREATE TABLE IF NOT EXISTS `spell_visual` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `MissileCastOffset1` float NOT NULL DEFAULT '0',
  `MissileCastOffset2` float NOT NULL DEFAULT '0',
  `MissileCastOffset3` float NOT NULL DEFAULT '0',
  `MissileImpactOffset1` float NOT NULL DEFAULT '0',
  `MissileImpactOffset2` float NOT NULL DEFAULT '0',
  `MissileImpactOffset3` float NOT NULL DEFAULT '0',
  `AnimEventSoundID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `MissileAttachment` tinyint NOT NULL DEFAULT '0',
  `MissileDestinationAttachment` tinyint NOT NULL DEFAULT '0',
  `MissileCastPositionerID` int unsigned NOT NULL DEFAULT '0',
  `MissileImpactPositionerID` int unsigned NOT NULL DEFAULT '0',
  `MissileTargetingKit` int NOT NULL DEFAULT '0',
  `HostileSpellVisualID` int unsigned NOT NULL DEFAULT '0',
  `CasterSpellVisualID` int unsigned NOT NULL DEFAULT '0',
  `SpellVisualMissileSetID` smallint unsigned NOT NULL DEFAULT '0',
  `DamageNumberDelay` smallint unsigned NOT NULL DEFAULT '0',
  `LowViolenceSpellVisualID` int unsigned NOT NULL DEFAULT '0',
  `RaidSpellVisualMissileSetID` int unsigned NOT NULL DEFAULT '0',
  `ReducedUnexpectedCameraMovementSpellVisualID` int NOT NULL DEFAULT '0',
  `AreaModel` smallint unsigned NOT NULL DEFAULT '0',
  `HasMissile` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_visual_effect_name
CREATE TABLE IF NOT EXISTS `spell_visual_effect_name` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ModelFileDataID` int NOT NULL DEFAULT '0',
  `BaseMissileSpeed` float NOT NULL DEFAULT '0',
  `Scale` float NOT NULL DEFAULT '0',
  `MinAllowedScale` float NOT NULL DEFAULT '0',
  `MaxAllowedScale` float NOT NULL DEFAULT '0',
  `Alpha` float NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `TextureFileDataID` int NOT NULL DEFAULT '0',
  `EffectRadius` float NOT NULL DEFAULT '0',
  `Type` int unsigned NOT NULL DEFAULT '0',
  `GenericID` int NOT NULL DEFAULT '0',
  `RibbonQualityID` int unsigned NOT NULL DEFAULT '0',
  `DissolveEffectID` int NOT NULL DEFAULT '0',
  `ModelPosition` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_visual_kit
CREATE TABLE IF NOT EXISTS `spell_visual_kit` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `FallbackSpellVisualKitId` int unsigned NOT NULL DEFAULT '0',
  `DelayMin` smallint unsigned NOT NULL DEFAULT '0',
  `DelayMax` smallint unsigned NOT NULL DEFAULT '0',
  `FallbackPriority` float NOT NULL DEFAULT '0',
  `Flags1` int NOT NULL DEFAULT '0',
  `Flags2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_visual_missile
CREATE TABLE IF NOT EXISTS `spell_visual_missile` (
  `CastOffset1` float NOT NULL DEFAULT '0',
  `CastOffset2` float NOT NULL DEFAULT '0',
  `CastOffset3` float NOT NULL DEFAULT '0',
  `ImpactOffset1` float NOT NULL DEFAULT '0',
  `ImpactOffset2` float NOT NULL DEFAULT '0',
  `ImpactOffset3` float NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `SpellVisualEffectNameID` smallint unsigned NOT NULL DEFAULT '0',
  `SoundEntriesID` int unsigned NOT NULL DEFAULT '0',
  `Attachment` tinyint NOT NULL DEFAULT '0',
  `DestinationAttachment` tinyint NOT NULL DEFAULT '0',
  `CastPositionerID` smallint unsigned NOT NULL DEFAULT '0',
  `ImpactPositionerID` smallint unsigned NOT NULL DEFAULT '0',
  `FollowGroundHeight` int NOT NULL DEFAULT '0',
  `FollowGroundDropSpeed` int unsigned NOT NULL DEFAULT '0',
  `FollowGroundApproach` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `SpellMissileMotionID` smallint unsigned NOT NULL DEFAULT '0',
  `AnimKitID` int unsigned NOT NULL DEFAULT '0',
  `SpellVisualMissileSetID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.spell_x_spell_visual
CREATE TABLE IF NOT EXISTS `spell_x_spell_visual` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint unsigned NOT NULL DEFAULT '0',
  `SpellVisualID` int unsigned NOT NULL DEFAULT '0',
  `Probability` float NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `Priority` int NOT NULL DEFAULT '0',
  `SpellIconFileID` int NOT NULL DEFAULT '0',
  `ActiveIconFileID` int NOT NULL DEFAULT '0',
  `ViewerUnitConditionID` smallint unsigned NOT NULL DEFAULT '0',
  `ViewerPlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `CasterUnitConditionID` smallint unsigned NOT NULL DEFAULT '0',
  `CasterPlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `SpellID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.stable_slot_prices
CREATE TABLE IF NOT EXISTS `stable_slot_prices` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Cost` int NOT NULL,
  `VerifiedBuild` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.summon_properties
CREATE TABLE IF NOT EXISTS `summon_properties` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Control` int NOT NULL DEFAULT '0',
  `Faction` int NOT NULL DEFAULT '0',
  `Title` int NOT NULL DEFAULT '0',
  `Slot` int NOT NULL DEFAULT '0',
  `Flags1` int NOT NULL DEFAULT '0',
  `Flags2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.tact_key
CREATE TABLE IF NOT EXISTS `tact_key` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Key1` tinyint unsigned NOT NULL DEFAULT '0',
  `Key2` tinyint unsigned NOT NULL DEFAULT '0',
  `Key3` tinyint unsigned NOT NULL DEFAULT '0',
  `Key4` tinyint unsigned NOT NULL DEFAULT '0',
  `Key5` tinyint unsigned NOT NULL DEFAULT '0',
  `Key6` tinyint unsigned NOT NULL DEFAULT '0',
  `Key7` tinyint unsigned NOT NULL DEFAULT '0',
  `Key8` tinyint unsigned NOT NULL DEFAULT '0',
  `Key9` tinyint unsigned NOT NULL DEFAULT '0',
  `Key10` tinyint unsigned NOT NULL DEFAULT '0',
  `Key11` tinyint unsigned NOT NULL DEFAULT '0',
  `Key12` tinyint unsigned NOT NULL DEFAULT '0',
  `Key13` tinyint unsigned NOT NULL DEFAULT '0',
  `Key14` tinyint unsigned NOT NULL DEFAULT '0',
  `Key15` tinyint unsigned NOT NULL DEFAULT '0',
  `Key16` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.talent
CREATE TABLE IF NOT EXISTS `talent` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Description` text COLLATE utf8mb4_unicode_ci,
  `TierID` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `ColumnIndex` tinyint unsigned NOT NULL DEFAULT '0',
  `TabID` smallint unsigned NOT NULL DEFAULT '0',
  `ClassID` tinyint unsigned NOT NULL DEFAULT '0',
  `SpecID` smallint unsigned NOT NULL DEFAULT '0',
  `SpellID` int NOT NULL DEFAULT '0',
  `OverridesSpellID` int NOT NULL DEFAULT '0',
  `RequiredSpellID` int NOT NULL DEFAULT '0',
  `CategoryMask1` int NOT NULL DEFAULT '0',
  `CategoryMask2` int NOT NULL DEFAULT '0',
  `SpellRank1` int NOT NULL DEFAULT '0',
  `SpellRank2` int NOT NULL DEFAULT '0',
  `SpellRank3` int NOT NULL DEFAULT '0',
  `SpellRank4` int NOT NULL DEFAULT '0',
  `SpellRank5` int NOT NULL DEFAULT '0',
  `SpellRank6` int NOT NULL DEFAULT '0',
  `SpellRank7` int NOT NULL DEFAULT '0',
  `SpellRank8` int NOT NULL DEFAULT '0',
  `SpellRank9` int NOT NULL DEFAULT '0',
  `PrereqTalent1` int NOT NULL DEFAULT '0',
  `PrereqTalent2` int NOT NULL DEFAULT '0',
  `PrereqTalent3` int NOT NULL DEFAULT '0',
  `PrereqRank1` int NOT NULL DEFAULT '0',
  `PrereqRank2` int NOT NULL DEFAULT '0',
  `PrereqRank3` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.talent_locale
CREATE TABLE IF NOT EXISTS `talent_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.talent_tab
CREATE TABLE IF NOT EXISTS `talent_tab` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `BackgroundFile` text COLLATE utf8mb4_unicode_ci,
  `OrderIndex` int NOT NULL DEFAULT '0',
  `RaceMask` int NOT NULL DEFAULT '0',
  `ClassMask` int NOT NULL DEFAULT '0',
  `PetTalentMask` int NOT NULL DEFAULT '0',
  `SpellIconID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.talent_tab_locale
CREATE TABLE IF NOT EXISTS `talent_tab_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.taxi_nodes
CREATE TABLE IF NOT EXISTS `taxi_nodes` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `MapOffsetX` float NOT NULL DEFAULT '0',
  `MapOffsetY` float NOT NULL DEFAULT '0',
  `FlightMapOffsetX` float NOT NULL DEFAULT '0',
  `FlightMapOffsetY` float NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ContinentID` int unsigned NOT NULL DEFAULT '0',
  `ConditionID` int unsigned NOT NULL DEFAULT '0',
  `CharacterBitNumber` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `UiTextureKitID` int NOT NULL DEFAULT '0',
  `Facing` float NOT NULL DEFAULT '0',
  `SpecialIconConditionID` int unsigned NOT NULL DEFAULT '0',
  `VisibilityConditionID` int unsigned NOT NULL DEFAULT '0',
  `MountCreatureID1` int NOT NULL DEFAULT '0',
  `MountCreatureID2` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.taxi_nodes_locale
CREATE TABLE IF NOT EXISTS `taxi_nodes_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.taxi_path
CREATE TABLE IF NOT EXISTS `taxi_path` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `FromTaxiNode` smallint unsigned NOT NULL DEFAULT '0',
  `ToTaxiNode` smallint unsigned NOT NULL DEFAULT '0',
  `Cost` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.taxi_path_node
CREATE TABLE IF NOT EXISTS `taxi_path_node` (
  `LocX` float NOT NULL DEFAULT '0',
  `LocY` float NOT NULL DEFAULT '0',
  `LocZ` float NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `PathID` smallint unsigned NOT NULL DEFAULT '0',
  `NodeIndex` int NOT NULL DEFAULT '0',
  `ContinentID` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `Delay` int unsigned NOT NULL DEFAULT '0',
  `ArrivalEventID` int unsigned NOT NULL DEFAULT '0',
  `DepartureEventID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.totem_category
CREATE TABLE IF NOT EXISTS `totem_category` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `TotemCategoryType` tinyint unsigned NOT NULL DEFAULT '0',
  `TotemCategoryMask` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.totem_category_locale
CREATE TABLE IF NOT EXISTS `totem_category_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.toy
CREATE TABLE IF NOT EXISTS `toy` (
  `SourceText` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ItemID` int NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `SourceTypeEnum` tinyint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.toy_locale
CREATE TABLE IF NOT EXISTS `toy_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SourceText_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.transmog_holiday
CREATE TABLE IF NOT EXISTS `transmog_holiday` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `RequiredTransmogHoliday` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.transmog_illusion
CREATE TABLE IF NOT EXISTS `transmog_illusion` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `UnlockConditionID` int NOT NULL DEFAULT '0',
  `TransmogCost` int NOT NULL DEFAULT '0',
  `SpellItemEnchantmentID` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.transmog_set
CREATE TABLE IF NOT EXISTS `transmog_set` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ClassMask` int NOT NULL DEFAULT '0',
  `TrackingQuestID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `TransmogSetGroupID` int unsigned NOT NULL DEFAULT '0',
  `ItemNameDescriptionID` int NOT NULL DEFAULT '0',
  `ParentTransmogSetID` smallint unsigned NOT NULL DEFAULT '0',
  `ExpansionID` tinyint unsigned NOT NULL DEFAULT '0',
  `UiOrder` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.transmog_set_group
CREATE TABLE IF NOT EXISTS `transmog_set_group` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.transmog_set_group_locale
CREATE TABLE IF NOT EXISTS `transmog_set_group_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.transmog_set_item
CREATE TABLE IF NOT EXISTS `transmog_set_item` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `TransmogSetID` int unsigned NOT NULL DEFAULT '0',
  `ItemModifiedAppearanceID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.transmog_set_locale
CREATE TABLE IF NOT EXISTS `transmog_set_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.transport_animation
CREATE TABLE IF NOT EXISTS `transport_animation` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `SequenceID` tinyint unsigned NOT NULL DEFAULT '0',
  `TimeIndex` int unsigned NOT NULL DEFAULT '0',
  `TransportID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.transport_rotation
CREATE TABLE IF NOT EXISTS `transport_rotation` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Rot1` float NOT NULL DEFAULT '0',
  `Rot2` float NOT NULL DEFAULT '0',
  `Rot3` float NOT NULL DEFAULT '0',
  `Rot4` float NOT NULL DEFAULT '0',
  `TimeIndex` int unsigned NOT NULL DEFAULT '0',
  `GameObjectsID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.ui_expansion_display_info
CREATE TABLE IF NOT EXISTS `ui_expansion_display_info` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ExpansionLogo` int NOT NULL DEFAULT '0',
  `ExpansionBanner` int NOT NULL DEFAULT '0',
  `ExpansionLevel` int unsigned NOT NULL DEFAULT '0',
  `ReleaseType` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.ui_map
CREATE TABLE IF NOT EXISTS `ui_map` (
  `Name` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ParentUiMapID` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `System` tinyint NOT NULL DEFAULT '0',
  `Type` tinyint unsigned NOT NULL DEFAULT '0',
  `BountySetID` int NOT NULL DEFAULT '0',
  `BountyDisplayLocation` int unsigned NOT NULL DEFAULT '0',
  `VisibilityPlayerConditionID2` int NOT NULL DEFAULT '0',
  `VisibilityPlayerConditionID` int NOT NULL DEFAULT '0',
  `HelpTextPosition` tinyint NOT NULL DEFAULT '0',
  `BkgAtlasID` int NOT NULL DEFAULT '0',
  `AlternateUiMapGroup` int unsigned NOT NULL DEFAULT '0',
  `ContentTuningID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.ui_map_assignment
CREATE TABLE IF NOT EXISTS `ui_map_assignment` (
  `UiMinX` float NOT NULL DEFAULT '0',
  `UiMinY` float NOT NULL DEFAULT '0',
  `UiMaxX` float NOT NULL DEFAULT '0',
  `UiMaxY` float NOT NULL DEFAULT '0',
  `Region1X` float NOT NULL DEFAULT '0',
  `Region1Y` float NOT NULL DEFAULT '0',
  `Region1Z` float NOT NULL DEFAULT '0',
  `Region2X` float NOT NULL DEFAULT '0',
  `Region2Y` float NOT NULL DEFAULT '0',
  `Region2Z` float NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `UiMapID` int NOT NULL DEFAULT '0',
  `OrderIndex` int NOT NULL DEFAULT '0',
  `MapID` int NOT NULL DEFAULT '0',
  `AreaID` int NOT NULL DEFAULT '0',
  `WmoDoodadPlacementID` int NOT NULL DEFAULT '0',
  `WmoGroupID` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.ui_map_link
CREATE TABLE IF NOT EXISTS `ui_map_link` (
  `UiMinX` float NOT NULL DEFAULT '0',
  `UiMinY` float NOT NULL DEFAULT '0',
  `UiMaxX` float NOT NULL DEFAULT '0',
  `UiMaxY` float NOT NULL DEFAULT '0',
  `ID` int unsigned NOT NULL DEFAULT '0',
  `ParentUiMapID` int NOT NULL DEFAULT '0',
  `OrderIndex` int NOT NULL DEFAULT '0',
  `ChildUiMapID` int NOT NULL DEFAULT '0',
  `OverrideHighlightFileDataID` int NOT NULL DEFAULT '0',
  `OverrideHighlightAtlasID` int NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.ui_map_locale
CREATE TABLE IF NOT EXISTS `ui_map_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.ui_map_x_map_art
CREATE TABLE IF NOT EXISTS `ui_map_x_map_art` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `PhaseID` int NOT NULL DEFAULT '0',
  `UiMapArtID` int NOT NULL DEFAULT '0',
  `UiMapID` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.ui_splash_screen
CREATE TABLE IF NOT EXISTS `ui_splash_screen` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Header` text COLLATE utf8mb4_unicode_ci,
  `TopLeftFeatureTitle` text COLLATE utf8mb4_unicode_ci,
  `TopLeftFeatureDesc` text COLLATE utf8mb4_unicode_ci,
  `BottomLeftFeatureTitle` text COLLATE utf8mb4_unicode_ci,
  `BottomLeftFeatureDesc` text COLLATE utf8mb4_unicode_ci,
  `RightFeatureTitle` text COLLATE utf8mb4_unicode_ci,
  `RightFeatureDesc` text COLLATE utf8mb4_unicode_ci,
  `AllianceQuestID` int NOT NULL DEFAULT '0',
  `HordeQuestID` int NOT NULL DEFAULT '0',
  `ScreenType` tinyint NOT NULL DEFAULT '0',
  `TextureKitID` int NOT NULL DEFAULT '0',
  `SoundKitID` int NOT NULL DEFAULT '0',
  `PlayerConditionID` int NOT NULL DEFAULT '0',
  `CharLevelConditionID` int NOT NULL DEFAULT '0',
  `RequiredTimeEventPassed` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.ui_splash_screen_locale
CREATE TABLE IF NOT EXISTS `ui_splash_screen_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Header_lang` text COLLATE utf8mb4_unicode_ci,
  `TopLeftFeatureTitle_lang` text COLLATE utf8mb4_unicode_ci,
  `TopLeftFeatureDesc_lang` text COLLATE utf8mb4_unicode_ci,
  `BottomLeftFeatureTitle_lang` text COLLATE utf8mb4_unicode_ci,
  `BottomLeftFeatureDesc_lang` text COLLATE utf8mb4_unicode_ci,
  `RightFeatureTitle_lang` text COLLATE utf8mb4_unicode_ci,
  `RightFeatureDesc_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.unit_condition
CREATE TABLE IF NOT EXISTS `unit_condition` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `Variable1` tinyint unsigned NOT NULL DEFAULT '0',
  `Variable2` tinyint unsigned NOT NULL DEFAULT '0',
  `Variable3` tinyint unsigned NOT NULL DEFAULT '0',
  `Variable4` tinyint unsigned NOT NULL DEFAULT '0',
  `Variable5` tinyint unsigned NOT NULL DEFAULT '0',
  `Variable6` tinyint unsigned NOT NULL DEFAULT '0',
  `Variable7` tinyint unsigned NOT NULL DEFAULT '0',
  `Variable8` tinyint unsigned NOT NULL DEFAULT '0',
  `Op1` tinyint NOT NULL DEFAULT '0',
  `Op2` tinyint NOT NULL DEFAULT '0',
  `Op3` tinyint NOT NULL DEFAULT '0',
  `Op4` tinyint NOT NULL DEFAULT '0',
  `Op5` tinyint NOT NULL DEFAULT '0',
  `Op6` tinyint NOT NULL DEFAULT '0',
  `Op7` tinyint NOT NULL DEFAULT '0',
  `Op8` tinyint NOT NULL DEFAULT '0',
  `Value1` int NOT NULL DEFAULT '0',
  `Value2` int NOT NULL DEFAULT '0',
  `Value3` int NOT NULL DEFAULT '0',
  `Value4` int NOT NULL DEFAULT '0',
  `Value5` int NOT NULL DEFAULT '0',
  `Value6` int NOT NULL DEFAULT '0',
  `Value7` int NOT NULL DEFAULT '0',
  `Value8` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.unit_power_bar
CREATE TABLE IF NOT EXISTS `unit_power_bar` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Name` text COLLATE utf8mb4_unicode_ci,
  `Cost` text COLLATE utf8mb4_unicode_ci,
  `OutOfError` text COLLATE utf8mb4_unicode_ci,
  `ToolTip` text COLLATE utf8mb4_unicode_ci,
  `MinPower` int unsigned NOT NULL DEFAULT '0',
  `MaxPower` int unsigned NOT NULL DEFAULT '0',
  `StartPower` smallint unsigned NOT NULL DEFAULT '0',
  `CenterPower` tinyint unsigned NOT NULL DEFAULT '0',
  `RegenerationPeace` float NOT NULL DEFAULT '0',
  `RegenerationCombat` float NOT NULL DEFAULT '0',
  `BarType` tinyint unsigned NOT NULL DEFAULT '0',
  `Flags` smallint unsigned NOT NULL DEFAULT '0',
  `StartInset` float NOT NULL DEFAULT '0',
  `EndInset` float NOT NULL DEFAULT '0',
  `FileDataID1` int NOT NULL DEFAULT '0',
  `FileDataID2` int NOT NULL DEFAULT '0',
  `FileDataID3` int NOT NULL DEFAULT '0',
  `FileDataID4` int NOT NULL DEFAULT '0',
  `FileDataID5` int NOT NULL DEFAULT '0',
  `FileDataID6` int NOT NULL DEFAULT '0',
  `Color1` int NOT NULL DEFAULT '0',
  `Color2` int NOT NULL DEFAULT '0',
  `Color3` int NOT NULL DEFAULT '0',
  `Color4` int NOT NULL DEFAULT '0',
  `Color5` int NOT NULL DEFAULT '0',
  `Color6` int NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.unit_power_bar_locale
CREATE TABLE IF NOT EXISTS `unit_power_bar_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_lang` text COLLATE utf8mb4_unicode_ci,
  `Cost_lang` text COLLATE utf8mb4_unicode_ci,
  `OutOfError_lang` text COLLATE utf8mb4_unicode_ci,
  `ToolTip_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.updates
CREATE TABLE IF NOT EXISTS `updates` (
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of all applied updates in this database.';

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.updates_include
CREATE TABLE IF NOT EXISTS `updates_include` (
  `path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of directories where we want to include sql updates.';

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.vehicle
CREATE TABLE IF NOT EXISTS `vehicle` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `FlagsB` int NOT NULL DEFAULT '0',
  `TurnSpeed` float NOT NULL DEFAULT '0',
  `PitchSpeed` float NOT NULL DEFAULT '0',
  `PitchMin` float NOT NULL DEFAULT '0',
  `PitchMax` float NOT NULL DEFAULT '0',
  `MouseLookOffsetPitch` float NOT NULL DEFAULT '0',
  `CameraFadeDistScalarMin` float NOT NULL DEFAULT '0',
  `CameraFadeDistScalarMax` float NOT NULL DEFAULT '0',
  `CameraPitchOffset` float NOT NULL DEFAULT '0',
  `FacingLimitRight` float NOT NULL DEFAULT '0',
  `FacingLimitLeft` float NOT NULL DEFAULT '0',
  `CameraYawOffset` float NOT NULL DEFAULT '0',
  `VehicleUIIndicatorID` smallint unsigned NOT NULL DEFAULT '0',
  `MissileTargetingID` int NOT NULL DEFAULT '0',
  `VehiclePOITypeID` smallint unsigned NOT NULL DEFAULT '0',
  `UiLocomotionType` int NOT NULL DEFAULT '0',
  `SeatID1` smallint unsigned NOT NULL DEFAULT '0',
  `SeatID2` smallint unsigned NOT NULL DEFAULT '0',
  `SeatID3` smallint unsigned NOT NULL DEFAULT '0',
  `SeatID4` smallint unsigned NOT NULL DEFAULT '0',
  `SeatID5` smallint unsigned NOT NULL DEFAULT '0',
  `SeatID6` smallint unsigned NOT NULL DEFAULT '0',
  `SeatID7` smallint unsigned NOT NULL DEFAULT '0',
  `SeatID8` smallint unsigned NOT NULL DEFAULT '0',
  `PowerDisplayID1` smallint unsigned NOT NULL DEFAULT '0',
  `PowerDisplayID2` smallint unsigned NOT NULL DEFAULT '0',
  `PowerDisplayID3` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.vehicle_seat
CREATE TABLE IF NOT EXISTS `vehicle_seat` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `AttachmentOffsetX` float NOT NULL DEFAULT '0',
  `AttachmentOffsetY` float NOT NULL DEFAULT '0',
  `AttachmentOffsetZ` float NOT NULL DEFAULT '0',
  `CameraOffsetX` float NOT NULL DEFAULT '0',
  `CameraOffsetY` float NOT NULL DEFAULT '0',
  `CameraOffsetZ` float NOT NULL DEFAULT '0',
  `Flags` int NOT NULL DEFAULT '0',
  `FlagsB` int NOT NULL DEFAULT '0',
  `FlagsC` int NOT NULL DEFAULT '0',
  `AttachmentID` tinyint NOT NULL DEFAULT '0',
  `EnterPreDelay` float NOT NULL DEFAULT '0',
  `EnterSpeed` float NOT NULL DEFAULT '0',
  `EnterGravity` float NOT NULL DEFAULT '0',
  `EnterMinDuration` float NOT NULL DEFAULT '0',
  `EnterMaxDuration` float NOT NULL DEFAULT '0',
  `EnterMinArcHeight` float NOT NULL DEFAULT '0',
  `EnterMaxArcHeight` float NOT NULL DEFAULT '0',
  `EnterAnimStart` int NOT NULL DEFAULT '0',
  `EnterAnimLoop` int NOT NULL DEFAULT '0',
  `RideAnimStart` int NOT NULL DEFAULT '0',
  `RideAnimLoop` int NOT NULL DEFAULT '0',
  `RideUpperAnimStart` int NOT NULL DEFAULT '0',
  `RideUpperAnimLoop` int NOT NULL DEFAULT '0',
  `ExitPreDelay` float NOT NULL DEFAULT '0',
  `ExitSpeed` float NOT NULL DEFAULT '0',
  `ExitGravity` float NOT NULL DEFAULT '0',
  `ExitMinDuration` float NOT NULL DEFAULT '0',
  `ExitMaxDuration` float NOT NULL DEFAULT '0',
  `ExitMinArcHeight` float NOT NULL DEFAULT '0',
  `ExitMaxArcHeight` float NOT NULL DEFAULT '0',
  `ExitAnimStart` int NOT NULL DEFAULT '0',
  `ExitAnimLoop` int NOT NULL DEFAULT '0',
  `ExitAnimEnd` int NOT NULL DEFAULT '0',
  `VehicleEnterAnim` smallint NOT NULL DEFAULT '0',
  `VehicleEnterAnimBone` tinyint NOT NULL DEFAULT '0',
  `VehicleExitAnim` smallint NOT NULL DEFAULT '0',
  `VehicleExitAnimBone` tinyint NOT NULL DEFAULT '0',
  `VehicleRideAnimLoop` smallint NOT NULL DEFAULT '0',
  `VehicleRideAnimLoopBone` tinyint NOT NULL DEFAULT '0',
  `PassengerAttachmentID` tinyint NOT NULL DEFAULT '0',
  `PassengerYaw` float NOT NULL DEFAULT '0',
  `PassengerPitch` float NOT NULL DEFAULT '0',
  `PassengerRoll` float NOT NULL DEFAULT '0',
  `VehicleEnterAnimDelay` float NOT NULL DEFAULT '0',
  `VehicleExitAnimDelay` float NOT NULL DEFAULT '0',
  `VehicleAbilityDisplay` tinyint NOT NULL DEFAULT '0',
  `EnterUISoundID` int unsigned NOT NULL DEFAULT '0',
  `ExitUISoundID` int unsigned NOT NULL DEFAULT '0',
  `UiSkinFileDataID` int NOT NULL DEFAULT '0',
  `UiSkin` int NOT NULL DEFAULT '0',
  `CameraEnteringDelay` float NOT NULL DEFAULT '0',
  `CameraEnteringDuration` float NOT NULL DEFAULT '0',
  `CameraExitingDelay` float NOT NULL DEFAULT '0',
  `CameraExitingDuration` float NOT NULL DEFAULT '0',
  `CameraPosChaseRate` float NOT NULL DEFAULT '0',
  `CameraFacingChaseRate` float NOT NULL DEFAULT '0',
  `CameraEnteringZoom` float NOT NULL DEFAULT '0',
  `CameraSeatZoomMin` float NOT NULL DEFAULT '0',
  `CameraSeatZoomMax` float NOT NULL DEFAULT '0',
  `EnterAnimKitID` smallint NOT NULL DEFAULT '0',
  `RideAnimKitID` smallint NOT NULL DEFAULT '0',
  `ExitAnimKitID` smallint NOT NULL DEFAULT '0',
  `VehicleEnterAnimKitID` smallint NOT NULL DEFAULT '0',
  `VehicleRideAnimKitID` smallint NOT NULL DEFAULT '0',
  `VehicleExitAnimKitID` smallint NOT NULL DEFAULT '0',
  `CameraModeID` smallint NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.wmo_area_table
CREATE TABLE IF NOT EXISTS `wmo_area_table` (
  `AreaName` text COLLATE utf8mb4_unicode_ci,
  `ID` int unsigned NOT NULL DEFAULT '0',
  `WmoID` smallint unsigned NOT NULL DEFAULT '0',
  `NameSetID` tinyint unsigned NOT NULL DEFAULT '0',
  `WmoGroupID` int NOT NULL DEFAULT '0',
  `SoundProviderPref` tinyint unsigned NOT NULL DEFAULT '0',
  `SoundProviderPrefUnderwater` tinyint unsigned NOT NULL DEFAULT '0',
  `AmbienceID` smallint unsigned NOT NULL DEFAULT '0',
  `UwAmbience` smallint unsigned NOT NULL DEFAULT '0',
  `ZoneMusic` smallint unsigned NOT NULL DEFAULT '0',
  `UwZoneMusic` int unsigned NOT NULL DEFAULT '0',
  `IntroSound` smallint unsigned NOT NULL DEFAULT '0',
  `UwIntroSound` smallint unsigned NOT NULL DEFAULT '0',
  `AreaTableID` smallint unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.wmo_area_table_locale
CREATE TABLE IF NOT EXISTS `wmo_area_table_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AreaName_lang` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.world_effect
CREATE TABLE IF NOT EXISTS `world_effect` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `QuestFeedbackEffectID` int unsigned NOT NULL DEFAULT '0',
  `WhenToDisplay` tinyint unsigned NOT NULL DEFAULT '0',
  `TargetType` tinyint unsigned NOT NULL DEFAULT '0',
  `TargetAsset` int NOT NULL DEFAULT '0',
  `PlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `CombatConditionID` smallint unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.world_map_overlay
CREATE TABLE IF NOT EXISTS `world_map_overlay` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `UiMapArtID` int unsigned NOT NULL DEFAULT '0',
  `TextureWidth` smallint unsigned NOT NULL DEFAULT '0',
  `TextureHeight` smallint unsigned NOT NULL DEFAULT '0',
  `OffsetX` int NOT NULL DEFAULT '0',
  `OffsetY` int NOT NULL DEFAULT '0',
  `HitRectTop` int NOT NULL DEFAULT '0',
  `HitRectBottom` int NOT NULL DEFAULT '0',
  `HitRectLeft` int NOT NULL DEFAULT '0',
  `HitRectRight` int NOT NULL DEFAULT '0',
  `PlayerConditionID` int unsigned NOT NULL DEFAULT '0',
  `Flags` int unsigned NOT NULL DEFAULT '0',
  `AreaID1` int unsigned NOT NULL DEFAULT '0',
  `AreaID2` int unsigned NOT NULL DEFAULT '0',
  `AreaID3` int unsigned NOT NULL DEFAULT '0',
  `AreaID4` int unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table hotfixes.world_state_expression
CREATE TABLE IF NOT EXISTS `world_state_expression` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Expression` text COLLATE utf8mb4_unicode_ci,
  `VerifiedBuild` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
