-- MySQL dump 10.13  Distrib 5.6.41, for Win64 (x86_64)
--
-- Host: localhost    Database: characters
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
-- Table structure for table `character_aura`
--

DROP TABLE IF EXISTS `character_aura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `casterGuid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effectMask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculateMask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` int(11) NOT NULL DEFAULT '0',
  `amount1` int(11) NOT NULL DEFAULT '0',
  `amount2` int(11) NOT NULL DEFAULT '0',
  `base_amount0` int(11) NOT NULL DEFAULT '0',
  `base_amount1` int(11) NOT NULL DEFAULT '0',
  `base_amount2` int(11) NOT NULL DEFAULT '0',
  `maxDuration` int(11) NOT NULL DEFAULT '0',
  `remainTime` int(11) NOT NULL DEFAULT '0',
  `remainCharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `critChance` float NOT NULL DEFAULT '0',
  `applyResilience` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_aura`
--

LOCK TABLES `character_aura` WRITE;
/*!40000 ALTER TABLE `character_aura` DISABLE KEYS */;
INSERT INTO `character_aura` VALUES (15,15,467,1,1,1,3,0,0,2,0,0,600000,39460,0,0,1),(15,15,5232,3,3,1,65,2,0,64,1,0,1800000,1237936,0,0,1),(19,19,2457,3,3,1,0,10,0,-1,9,0,-1,-1,0,0,1),(25,25,13163,7,7,1,18,0,0,17,-1,-1,-1,-1,0,0,1),(27,27,10290,1,1,1,160,0,0,159,0,0,-1,-1,0,0,1),(27,27,19740,3,3,1,20,20,0,19,19,0,600000,446972,0,0,1),(27,27,21084,7,7,1,0,0,20187,-1,-1,20186,1800000,1643123,0,0,1),(29,29,324,1,1,1,13,0,0,12,0,0,600000,574152,1,0,1),(32,32,2457,3,3,1,0,10,0,-1,9,0,-1,-1,0,0,1),(43,43,1784,7,7,1,0,50,-30,-1,4,-31,-1,-1,1,0,1),(44,44,324,1,1,1,13,0,0,12,0,0,600000,509521,2,0,1),(47,54,1058,1,1,1,14,0,0,13,0,0,15000,2717,0,0,1),(48,48,8326,7,7,1,-20,50,50,-21,49,49,-1,-1,0,0,1),(55,55,71,1,1,1,0,0,0,-1,0,0,-1,-1,0,0,1),(55,55,8326,7,7,1,-20,50,50,-21,49,49,-1,-1,0,0,1);
/*!40000 ALTER TABLE `character_aura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:08:57
