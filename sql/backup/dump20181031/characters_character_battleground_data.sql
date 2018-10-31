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
-- Table structure for table `character_battleground_data`
--

DROP TABLE IF EXISTS `character_battleground_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_battleground_data`
--

LOCK TABLES `character_battleground_data` WRITE;
/*!40000 ALTER TABLE `character_battleground_data` DISABLE KEYS */;
INSERT INTO `character_battleground_data` VALUES (1,0,0,0,0,0,0,65535,0,0,0),(2,0,0,0,0,0,0,65535,0,0,0),(15,0,0,0,0,0,0,65535,0,0,0),(19,0,0,0,0,0,0,65535,0,0,0),(20,0,0,-13248.7,212.748,30.8352,2.66544,0,0,0,0),(24,0,0,0,0,0,0,65535,0,0,0),(25,0,0,-13236.7,219.851,31.7675,4.07511,0,0,0,0),(26,0,0,0,0,0,0,65535,0,0,0),(27,0,0,0,0,0,0,65535,0,0,0),(29,0,0,0,0,0,0,65535,0,0,0),(30,0,0,0,0,0,0,65535,0,0,0),(31,0,0,0,0,0,0,65535,0,0,0),(32,0,0,0,0,0,0,65535,0,0,0),(41,0,0,0,0,0,0,65535,0,0,0),(43,0,0,-13236.4,219.848,31.7872,1.71504,0,0,0,0),(44,0,0,-13239.7,210.217,30.8108,1.98194,0,0,0,0),(45,0,0,-13238.5,218.42,31.5197,1.27493,0,0,0,0),(46,0,0,-13238.7,205.799,30.8507,1.63228,0,0,0,0),(47,0,0,0,0,0,0,65535,0,0,0),(48,0,0,0,0,0,0,65535,0,0,0),(54,0,0,0,0,0,0,65535,0,0,0),(55,0,0,0,0,0,0,65535,0,0,0),(56,0,0,0,0,0,0,65535,0,0,0);
/*!40000 ALTER TABLE `character_battleground_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:08:50
