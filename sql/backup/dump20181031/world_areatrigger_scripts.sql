-- MySQL dump 10.13  Distrib 5.6.41, for Win64 (x86_64)
--
-- Host: localhost    Database: world
-- ------------------------------------------------------
-- Server version	5.6.41-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `areatrigger_scripts`
--

DROP TABLE IF EXISTS `areatrigger_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areatrigger_scripts` (
  `entry` mediumint(8) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areatrigger_scripts`
--

LOCK TABLES `areatrigger_scripts` WRITE;
/*!40000 ALTER TABLE `areatrigger_scripts` DISABLE KEYS */;
INSERT INTO `areatrigger_scripts` VALUES (4560,'at_legion_teleporter'),(4497,'at_commander_dawnforge'),(1526,'at_ring_of_law'),(4479,'SmartTrigger'),(3066,'SmartTrigger'),(4112,'at_kelthuzad_center'),(4591,'at_coilfang_waterfall'),(4017,'at_twilight_grove'),(4016,'at_malfurion_stormrage'),(962,'at_zumrah'),(5284,'SmartTrigger'),(5285,'SmartTrigger'),(5286,'SmartTrigger'),(5287,'SmartTrigger'),(4871,'SmartTrigger'),(4872,'SmartTrigger'),(4873,'SmartTrigger'),(5108,'at_stormwright_shelf'),(5339,'SmartTrigger'),(5334,'SmartTrigger'),(5340,'SmartTrigger'),(5332,'SmartTrigger'),(1726,'at_scent_larkorwi'),(1727,'at_scent_larkorwi'),(1728,'at_scent_larkorwi'),(1729,'at_scent_larkorwi'),(1730,'at_scent_larkorwi'),(1731,'at_scent_larkorwi'),(1732,'at_scent_larkorwi'),(1733,'at_scent_larkorwi'),(1734,'at_scent_larkorwi'),(1735,'at_scent_larkorwi'),(1736,'at_scent_larkorwi'),(1737,'at_scent_larkorwi'),(1738,'at_scent_larkorwi'),(1739,'at_scent_larkorwi'),(1740,'at_scent_larkorwi'),(822,'at_map_chamber'),(5633,'at_tyrannus_event_starter'),(5604,'at_sindragosa_lair'),(5698,'at_icc_saurfang_portal'),(5649,'at_icc_shutdown_traps'),(5729,'at_icc_start_blood_quickening'),(5616,'at_icc_start_frostwing_gauntlet'),(5617,'at_icc_start_frostwing_gauntlet'),(5618,'at_icc_start_frostwing_gauntlet'),(5867,'at_baltharus_plateau'),(5718,'at_frozen_throne_teleport'),(5046,'at_sholazar_waygate'),(5047,'at_sholazar_waygate'),(4752,'at_nats_landing'),(3551,'at_bring_your_orphan_to'),(3549,'at_bring_your_orphan_to'),(3547,'at_bring_your_orphan_to'),(3546,'at_bring_your_orphan_to'),(3552,'at_bring_your_orphan_to'),(3548,'at_bring_your_orphan_to'),(4356,'at_bring_your_orphan_to'),(4829,'at_brewfest'),(4820,'at_brewfest'),(5710,'SmartTrigger'),(5712,'SmartTrigger'),(5711,'SmartTrigger'),(5714,'SmartTrigger'),(5715,'SmartTrigger'),(5716,'SmartTrigger'),(4422,'at_area_52_entrance'),(4471,'at_area_52_entrance'),(4466,'at_area_52_entrance'),(4472,'at_area_52_entrance'),(4838,'SmartTrigger'),(5703,'SmartTrigger'),(5704,'SmartTrigger'),(5705,'SmartTrigger'),(5706,'SmartTrigger'),(5173,'at_frostgrips_hollow'),(3587,'at_ancient_leaf'),(4956,'SmartTrigger'),(4951,'SmartTrigger'),(5697,'at_hor_waves_restarter'),(5632,'at_hor_intro_start'),(5056,'SmartTrigger'),(5057,'SmartTrigger'),(5058,'SmartTrigger'),(5059,'SmartTrigger'),(5060,'SmartTrigger'),(5095,'SmartTrigger'),(5096,'SmartTrigger'),(5097,'SmartTrigger'),(5098,'SmartTrigger'),(2046,'at_dragonspire_hall'),(2026,'at_blackrock_stadium'),(5605,'at_hor_shadow_throne'),(4990,'SmartTrigger'),(5030,'SmartTrigger'),(5051,'SmartTrigger'),(5061,'SmartTrigger'),(5740,'at_hor_impenetrable_door'),(5082,'SmartTrigger'),(5083,'SmartTrigger'),(5084,'SmartTrigger'),(4987,'SmartTrigger'),(4801,'SmartTrigger'),(4802,'SmartTrigger'),(4803,'SmartTrigger'),(4804,'SmartTrigger'),(4769,'SmartTrigger'),(4774,'SmartTrigger'),(4770,'SmartTrigger'),(4772,'SmartTrigger'),(4857,'SmartTrigger'),(4858,'SmartTrigger'),(4860,'SmartTrigger'),(5650,'SmartTrigger'),(5660,'at_hor_uther_quel_delar_start'),(1447,'SmartTrigger'),(4498,'SmartTrigger'),(4524,'at_nethekurse_exit'),(3746,'SmartTrigger'),(3766,'SmartTrigger'),(4115,'at_faerlina_entrance'),(4119,'at_anubrekhan_entrance'),(4113,'at_thaddius_entrance'),(5732,'at_lord_marrowgar_entrance'),(5708,'at_blood_prince_council_start_intro'),(5709,'at_lady_deathwhisper_entrance'),(5187,'SmartTrigger'),(5190,'SmartTrigger'),(5279,'areatrigger_orgrimmar_herald_of_war'),(4950,'SmartTrigger'),(5580,'at_pit_cavern_entrance'),(5581,'at_pit_cavern_end'),(4991,'at_skadi_gaunlet'),(1946,'at_nearby_scarshield_infiltrator'),(4960,'at_nearby_messenger_torvus'),(4665,'at_teron_gorefiend_entrance'),(302,'at_sentry_point'),(2066,'at_trigger_the_beast_movement'),(2067,'at_the_beast_room'),(1105,'SmartTrigger'),(171,'SmartTrigger'),(5338,'SmartTrigger'),(5079,'SmartTrigger'),(5080,'SmartTrigger');
/*!40000 ALTER TABLE `areatrigger_scripts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:09:10
