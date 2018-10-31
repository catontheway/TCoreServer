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
-- Table structure for table `character_achievement`
--

DROP TABLE IF EXISTS `character_achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_achievement` (
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_achievement`
--

LOCK TABLES `character_achievement` WRITE;
/*!40000 ALTER TABLE `character_achievement` DISABLE KEYS */;
INSERT INTO `character_achievement` VALUES (1,6,1537020941),(1,7,1537020941),(1,8,1537020941),(1,9,1537020941),(1,10,1537020941),(1,11,1537020947),(1,12,1537020950),(1,13,1537020955),(1,16,1537031095),(1,116,1537027199),(1,121,1537027199),(1,122,1537027199),(1,123,1537027199),(1,124,1537027199),(1,125,1537027199),(1,131,1537027199),(1,132,1537027199),(1,133,1537027199),(1,134,1537027199),(1,135,1537027199),(1,457,1537020955),(1,464,1537020955),(1,478,1537026890),(1,490,1537026890),(1,556,1537026151),(1,557,1537026151),(1,616,1537028626),(1,621,1537026012),(1,705,1537031095),(1,731,1537027199),(1,732,1537027199),(1,733,1537027199),(1,734,1537027199),(1,735,1537027199),(1,889,1537027802),(1,890,1537027802),(1,891,1537027802),(1,892,1537027802),(1,1205,1537027199),(1,1405,1537020955),(1,1406,1537021228),(1,1795,1537027199),(1,1796,1537027199),(1,1797,1537027199),(1,1798,1537027199),(1,1799,1537027199),(1,2036,1537026890),(1,3838,1537024768),(1,4625,1537027845),(1,4785,1537024768),(1,4788,1537027199),(1,4789,1537027199),(2,6,1537023301),(2,7,1537023301),(2,8,1537023301),(2,9,1537023301),(2,10,1537023301),(2,11,1537023301),(2,12,1537023301),(2,13,1537023301),(2,16,1537027917),(2,458,1537023301),(2,478,1537026890),(2,490,1537026890),(2,616,1537028626),(2,621,1537026985),(2,685,1537026154),(2,686,1537026112),(2,697,1537024363),(2,705,1537027917),(2,1157,1540051137),(2,1413,1537023301),(2,2036,1537026890),(2,3838,1537024768),(2,4534,1540050937),(2,4785,1537024768),(3,459,1537031550),(3,1409,1537031550),(15,6,1539994546),(15,238,1539995720),(19,6,1540035412),(19,389,1540054923),(19,1157,1540076269),(19,1176,1540074136),(20,6,1540035631),(20,397,1540051998),(24,6,1540037336),(24,1157,1540040818),(25,6,1540037549),(25,1157,1540043399),(26,6,1540037684),(26,238,1540046901),(27,6,1540037948),(27,238,1540044921),(27,1157,1540044921),(29,6,1540038617),(29,238,1540043233),(29,1157,1540043166),(30,6,1540038800),(30,1157,1540038953),(31,6,1540039832),(32,6,1540040625),(32,1157,1540040900),(41,6,1540045725),(41,238,1540046700),(42,463,1540591622),(43,6,1540046522),(43,238,1540046564),(44,6,1540048503),(44,1157,1540048921),(45,6,1540049177),(46,6,1540051660),(47,6,1540063737),(48,6,1540072941),(48,700,1540073334),(48,1176,1540074144),(54,6,1540657254),(54,701,1540663375),(54,1157,1540676684),(55,6,1540657292),(56,6,1540660096);
/*!40000 ALTER TABLE `character_achievement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:08:47
