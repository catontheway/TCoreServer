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
-- Table structure for table `holiday_dates`
--

DROP TABLE IF EXISTS `holiday_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `holiday_dates` (
  `id` int(10) unsigned NOT NULL,
  `date_id` tinyint(3) unsigned NOT NULL,
  `date_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`date_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday_dates`
--

LOCK TABLES `holiday_dates` WRITE;
/*!40000 ALTER TABLE `holiday_dates` DISABLE KEYS */;
INSERT INTO `holiday_dates` VALUES (181,6,220708864),(181,7,238354432),(181,8,254885888),(181,9,270974976),(181,10,288620544),(181,11,305152000),(181,12,322256896),(201,9,221708288),(201,10,238469120),(201,11,255229952),(201,12,272646144),(201,13,289406976),(201,14,305610752),(201,15,322371584),(321,7,210092032),(321,8,226689024),(321,9,243286016),(321,10,260374528),(321,11,276955136),(321,12,294060032),(321,13,310657024),(327,7,218529792),(327,8,235192320),(327,9,252952576),(327,10,269484032),(327,11,285540352),(327,12,303169536),(327,13,319209472),(374,0,279986176),(374,1,287342592),(374,2,290471936),(374,3,293601280),(374,4,296747008),(374,5,304103424),(374,6,307232768),(374,7,309821440),(374,8,312950784),(374,9,320864256),(374,10,323452928),(374,11,326582272),(374,12,329711616),(374,13,337035264),(374,14,340197376),(374,15,343982080),(374,16,347127808),(374,17,353779712),(374,18,357613568),(374,19,360742912),(374,20,363888640),(374,21,371245056),(374,22,374374400),(374,23,377503744),(374,24,380649472),(374,25,388005888),(375,0,280444928),(375,1,287801344),(375,2,290930688),(375,3,294060032),(375,4,297205760),(375,5,304562176),(375,6,307691520),(375,7,310820864),(375,8,318816256),(375,9,321323008),(375,10,324452352),(375,11,328253440),(375,12,335577088),(375,13,338722816),(375,14,341868544),(375,15,344997888),(375,16,352321536),(375,17,355483648),(375,18,358629376),(375,19,361758720),(375,20,364347392),(375,21,372244480),(375,22,375390208),(375,23,377962496),(375,24,381108224),(375,25,388464640),(376,0,286294016),(376,1,288800768),(376,2,292601856),(376,3,295731200),(376,4,303054848),(376,5,306233344),(376,6,309362688),(376,7,312492032),(376,8,319815680),(376,9,322994176),(376,10,326123520),(376,11,329252864),(376,12,336035840),(376,13,339738624),(376,14,342327296),(376,15,345456640),(376,16,352780288),(376,17,355942400),(376,18,359088128),(376,19,362217472),(376,20,370196480),(376,21,372703232),(376,22,375848960),(376,23,379633664),(376,24,386957312),(376,25,389464064),(404,4,228982784),(404,5,245743616),(404,6,262504448),(404,7,279248896),(404,8,296009728),(404,9,312770560),(404,10,329646080),(423,3,219299840),(423,4,236077056),(423,5,252723200),(423,6,269713408),(423,7,286359552),(423,8,303169536),(423,9,319881216);
/*!40000 ALTER TABLE `holiday_dates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:09:09
