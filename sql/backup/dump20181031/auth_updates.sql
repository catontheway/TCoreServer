-- MySQL dump 10.13  Distrib 5.6.41, for Win64 (x86_64)
--
-- Host: localhost    Database: auth
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
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updates` (
  `name` varchar(200) NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of all applied updates in this database.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updates`
--

LOCK TABLES `updates` WRITE;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
INSERT INTO `updates` VALUES ('2014_11_10_00_auth.sql','0E3CB119442D09DD88E967015319BBC8DAFBBFE0','ARCHIVED','2014-11-10 00:00:00',0),('2014_11_10_01_auth.sql','327E77A1DA3546D5275AB249915DD57EDD6FDD3D','ARCHIVED','2014-11-10 00:00:01',0),('2014_12_10_00_auth.sql','821703A96D80F9080074852B5A46E2909C9562EA','ARCHIVED','2014-12-10 00:00:00',0),('2014_12_21_00_auth.sql','CE2E5D2CD82E79C25294539ADED27A1429105B43','ARCHIVED','2014-12-21 00:00:00',0),('2015_03_20_00_auth.sql','E8C5B74BB45F0F35DEC182C72BACF435C7066FB0','ARCHIVED','2015-03-20 00:00:00',0),('2015_03_20_01_auth.sql','862961815354DA2746F5F71FBC8155F57CBE75AB','ARCHIVED','2015-03-20 00:00:01',0),('2015_03_20_02_auth.sql','33E4F94086590768EF5D4855DD43D7DE7C06ADA4','ARCHIVED','2015-03-20 00:00:02',0),('2015_08_21_00_auth.sql','C31A9E1D28E11B60BE8F8198637DD51F6D75123F','ARCHIVED','2015-08-21 00:00:00',0),('2015_11_07_00_auth.sql','0ACDD35EC9745231BCFA701B78056DEF94D0CC53','ARCHIVED','2015-11-07 00:00:00',0),('2016_01_13_00_auth.sql','24615CC69B3CD7BB4699874647C35BA86E8A93FD','ARCHIVED','2016-01-13 00:00:00',0),('2016_04_11_00_auth.sql','0ACDD35EC9745231BCFA701B78056DEF94D0CC53','ARCHIVED','2016-04-11 00:00:00',0),('2016_05_11_00_auth.sql','95B66235B8D67BF1CA216EB09F313C1F8F393B47','ARCHIVED','2016-05-11 00:00:00',0),('2016_06_06_00_auth.sql','A0A8D73A952D0618833416513D53F73A70E7EA25','ARCHIVED','2016-06-06 00:00:00',0),('2016_09_22_00_auth.sql','70047954E3556BFA430ADD5680EF8797F74A4B9E','ARCHIVED','2016-09-22 00:00:00',0),('2016_10_16_00_auth.sql','0ACDD35EC9745231BCFA701B78056DEF94D0CC53','ARCHIVED','2016-10-16 00:00:00',0),('2017_01_06_00_auth.sql','6CCFE6A9774EC733C9863D36A0F15F3534189BBD','ARCHIVED','2017-01-06 00:00:00',0),('2017_01_08_00_auth.sql','A68511D0BF94C41F720A11B630CCB36BBEA6B17D','ARCHIVED','2017-01-08 00:00:00',0),('2017_02_06_00_auth_335.sql','612068198F744892ECC0ACFE3BDCB6D72995916E','ARCHIVED','2017-02-06 00:00:00',0),('2017_03_17_00_auth.sql','4902E9B1B063F399F928C2DD7AFD60427738E227','ARCHIVED','2017-03-17 00:00:00',0),('2017_04_19_00_auth.sql','EAE1C1D3AA752259785C056A8F18515E1EF32BC9','ARCHIVED','2017-04-19 00:00:00',0),('2017_05_29_00_auth.sql','74BBB703AABD8A6BCB905EA2F5C14A5E26124CDD','ARCHIVED','2017-05-29 00:00:00',0),('2017_06_12_00_auth.sql','176532AED785F1F759382C79A28E0FED92E99779','ARCHIVED','2017-06-12 00:00:00',0),('2017_06_12_01_auth.sql','661B4935E101AF188BEBF43203144104E89F8C54','ARCHIVED','2017-06-12 00:00:01',0),('2017_06_12_02_auth.sql','166F059E411FAA4901BBBA09A41EF07B1CADC4B6','ARCHIVED','2017-06-12 00:00:02',0),('2017_06_17_00_auth.sql','4A172895CB9DA8EFE1270434D6ECB22D4F4DCB17','ARCHIVED','2017-06-17 00:00:00',0),('2017_06_28_00_auth.sql','D32EF80F57F629C23395D80F06E91D7E40719F83','ARCHIVED','2017-06-28 00:00:00',0),('2017_08_01_00_auth.sql','6ECE808AF52345177189E962C0606B769B6806A6','ARCHIVED','2017-08-01 00:00:00',0),('2017_10_13_00_auth.sql','87674E0D166AC60E3725B445714427892E42C6FE','ARCHIVED','2017-10-13 00:00:00',0),('2017_10_29_00_auth.sql','F742569F56BB29CE9C8DBBD40A6AB474F846485C','ARCHIVED','2017-10-29 00:00:00',0),('2017_12_17_00_auth.sql','2CD99730D4D32DBF0584CD5B1AA6F8F4AE3DA975','ARCHIVED','2017-12-17 00:00:00',0),('2018_01_03_00_auth_2018_01_02_00_auth.sql','08AF5DAB45515B681B738DA17FA414C7C7CCA44E','ARCHIVED','2018-01-03 00:00:00',0),('2018_01_09_00_auth.sql','A5D4EC8FCFAB4F2DCE70EDCAD1ACBFB484FD68D5','ARCHIVED','2018-01-09 00:00:00',0),('2018_01_24_00_auth.sql','167B17D8A253D62A8112F8A7EB21C6E99CAEF1E4','ARCHIVED','2018-01-24 00:00:00',0),('2018_02_19_00_auth.sql','80E50F9C7F1EE7BA62789EA4C4F009170B79E6C9','RELEASED','2018-02-19 00:00:00',0),('2018_03_06_00_auth.sql','2D71E93DF7419A30D0D21D8A80CF05698302575A','RELEASED','2018-03-06 00:00:00',0),('2018_03_08_00_auth.sql','624C58A07E0B4DDC4C1347E8BA8EFEEFD5B43DA7','RELEASED','2018-03-08 00:00:00',0),('2018_06_23_00_auth.sql','BE35312C386A127D047E5A7CE0D14DB41D905F8E','RELEASED','2018-06-23 00:00:00',0),('2018_08_30_00_auth.sql','22F69864361D3E72F800379338310172C0576D1C','RELEASED','2018-08-30 00:00:00',0),('2018_09_06_00_auth.sql','309D21E0DF82ED8921F77EAFDE741F38AC32BB13','RELEASED','2018-09-06 00:00:00',0);
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:09:30
