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
-- Table structure for table `creature_respawn`
--

DROP TABLE IF EXISTS `creature_respawn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_respawn`
--

LOCK TABLES `creature_respawn` WRITE;
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
INSERT INTO `creature_respawn` VALUES (44,1540081743,0,0),(45,1540081743,0,0),(51,1540081753,0,0),(56,1537028024,0,0),(57,1540081743,0,0),(58,1540081681,0,0),(59,1537028356,0,0),(63,1537028379,0,0),(82,1537028356,0,0),(83,1537028360,0,0),(84,1537028361,0,0),(85,1537028126,0,0),(87,1537028246,0,0),(88,1540081743,0,0),(91,1540082275,0,0),(97,1540081753,0,0),(101,1540081676,0,0),(105,1540081681,0,0),(106,1540081680,0,0),(107,1540081681,0,0),(108,1540081691,0,0),(109,1540081680,0,0),(113,1540081868,0,0),(114,1537028439,0,0),(115,1540081678,0,0),(119,1537028576,0,0),(121,1540081626,0,0),(122,1540081690,0,0),(126,1537028566,0,0),(128,1540081657,0,0),(129,1540081625,0,0),(131,1540081682,0,0),(132,1540081580,0,0),(133,1540081580,0,0),(134,1540081668,0,0),(135,1540081580,0,0),(136,1540081580,0,0),(137,1540081589,0,0),(138,1540081580,0,0),(139,1540081580,0,0),(140,1540081580,0,0),(141,1540081580,0,0),(142,1540081580,0,0),(143,1540081756,0,0),(144,1540081580,0,0),(145,1540081580,0,0),(146,1540081828,0,0),(147,1540081756,0,0),(148,1540081461,0,0),(149,1540081828,0,0),(150,1540081828,0,0),(151,1540081766,0,0),(152,1540081828,0,0),(153,1540081431,0,0),(154,1540081459,0,0),(155,1540081459,0,0),(156,1540081459,0,0),(157,1540081459,0,0),(158,1540081756,0,0),(159,1540081531,0,0),(166,1540081461,0,0),(167,1540081432,0,0),(168,1540081459,0,0),(169,1540081756,0,0),(177,1540081709,0,0),(181,1540081414,0,0),(183,1540081463,0,0),(187,1540081529,0,0),(195,1540081756,0,0),(200,1540081531,0,0),(203,1540081757,0,0),(205,1540081529,0,0),(210,1540081591,0,0),(211,1540081531,0,0),(212,1540081529,0,0),(214,1540081529,0,0),(215,1540081410,0,0),(219,1540081459,0,0),(220,1540081461,0,0),(222,1540081318,0,0),(223,1540081826,0,0),(224,1540081368,0,0),(225,1540081534,0,0),(226,1540081459,0,0),(227,1540081459,0,0),(228,1540081756,0,0),(229,1540081542,0,0),(230,1540081462,0,0),(231,1540081461,0,0),(232,1537027679,0,0),(233,1540081756,0,0),(234,1540081756,0,0),(235,1540081756,0,0),(236,1540081756,0,0),(237,1537027679,0,0),(238,1537027679,0,0),(239,1537027721,0,0),(240,1540081756,0,0),(241,1537027721,0,0),(243,1537027679,0,0),(371,1540050811,0,0),(375,1540050801,0,0),(376,1540050801,0,0),(377,1540050801,0,0),(378,1540050801,0,0),(379,1540050801,0,0),(380,1540050801,0,0),(381,1540050801,0,0),(615,1540050801,0,0),(759,1540050801,0,0),(760,1540050801,0,0),(771,1540051447,0,0),(772,1540050801,0,0),(773,1540051448,0,0),(775,1540050801,0,0),(848,1540050805,0,0),(895,1540050811,0,0),(913,1540050814,0,0),(915,1540050814,0,0),(918,1540050821,0,0),(982,1540050821,0,0),(983,1540050821,0,0),(985,1540050821,0,0),(986,1540050821,0,0),(988,1540050821,0,0),(1109,1540050806,0,0),(1127,1540050801,0,0),(1142,1540050801,0,0),(1144,1540050801,0,0),(1156,1540050801,0,0),(1163,1540050801,0,0),(1165,1540050801,0,0),(1167,1540050801,0,0),(1168,1540050801,0,0),(1194,1540050805,0,0),(1200,1540050805,0,0),(1202,1540050805,0,0),(1205,1540050805,0,0),(1207,1540050805,0,0),(1212,1540050805,0,0),(1216,1540050805,0,0),(1220,1540050801,0,0),(1221,1540050801,0,0),(1224,1540050808,0,0),(1231,1540050817,0,0),(1234,1540050801,0,0),(1270,1540050805,0,0),(1272,1540050806,0,0),(1273,1540051447,0,0),(1276,1540050801,0,0),(1278,1540051447,0,0),(1285,1540050814,0,0),(1316,1540050801,0,0),(1333,1540050805,0,0),(1337,1540051447,0,0),(1338,1540050801,0,0),(1341,1540051447,0,0),(1379,1540050801,0,0),(1680,1540050814,0,0),(1684,1540050805,0,0),(1687,1540050805,0,0),(1707,1540050805,0,0),(1710,1540050805,0,0),(1712,1540050805,0,0),(1714,1540050805,0,0),(1717,1540081756,0,0),(1718,1540081756,0,0),(1719,1540081756,0,0),(1720,1540081459,0,0),(1721,1540081756,0,0),(1724,1540081709,0,0),(1726,1540081756,0,0),(1727,1540081431,0,0),(1728,1540081756,0,0),(1729,1540081756,0,0),(1730,1540081430,0,0),(1731,1540081430,0,0),(1732,1540081756,0,0),(1735,1540081756,0,0),(1736,1540081769,0,0),(1737,1540081756,0,0),(1738,1540081756,0,0),(1739,1540081756,0,0),(1740,1540081756,0,0),(1743,1540081681,0,0),(1748,1540081677,0,0),(1750,1540081680,0,0),(1753,1540081945,0,0),(1754,1537028678,0,0),(1757,1540081815,0,0),(1815,1540081788,0,0),(1816,1540081783,0,0),(1821,1540081775,0,0),(1827,1540050805,0,0),(1831,1540050805,0,0),(1834,1540050801,0,0),(1835,1540050801,0,0),(1836,1540050801,0,0),(1843,1540050814,0,0),(1867,1540050801,0,0),(1871,1540050801,0,0),(1887,1540082026,0,0),(1888,1537028742,0,0),(1889,1540081786,0,0),(1890,1540082026,0,0),(1893,1540081786,0,0),(1894,1540081786,0,0),(1895,1540081786,0,0),(1898,1540081796,0,0),(1902,1540050801,0,0),(1904,1540050801,0,0),(1905,1540050801,0,0),(1909,1540050801,0,0),(1910,1540050801,0,0),(1911,1540050801,0,0),(1920,1540050814,0,0),(1922,1540050801,0,0),(1939,1540050801,0,0),(1944,1540050801,0,0),(1949,1540050814,0,0),(1955,1540050801,0,0),(1959,1540050801,0,0),(1965,1540050801,0,0),(1985,1540050801,0,0),(1992,1540050801,0,0),(1996,1540050801,0,0),(2006,1540082026,0,0),(2008,1540081905,0,0),(2009,1540081766,0,0),(2010,1540081916,0,0),(2011,1540081798,0,0),(2012,1540081736,0,0),(2013,1540082026,0,0),(2014,1540081796,0,0),(2016,1540607903,0,0),(2018,1540081883,0,0),(2019,1537028236,0,0),(2020,1540081943,0,0),(2022,1537028006,0,0),(2023,1540081786,0,0),(2024,1540081766,0,0),(2025,1540081815,0,0),(2026,1540106515,0,0),(2027,1540081815,0,0),(2028,1540081815,0,0),(2029,1540081916,0,0),(2030,1540081976,0,0),(2031,1540081801,0,0),(2043,1540050811,0,0),(2048,1540050814,0,0),(2055,1540050814,0,0),(2062,1540050814,0,0),(2079,1540081786,0,0),(2081,1540081815,0,0),(2085,1537028806,0,0),(2086,1540081815,0,0),(2087,1540081941,0,0),(2088,1537035826,0,0),(2095,1540081459,0,0),(2096,1540081756,0,0),(2097,1540081773,0,0),(2098,1540081756,0,0),(2099,1540081459,0,0),(2100,1540081756,0,0),(2101,1540081756,0,0),(2102,1540081756,0,0),(2137,1540050801,0,0),(2138,1540081756,0,0),(2139,1540081756,0,0),(2221,1540050805,0,0),(2224,1540051448,0,0),(2225,1540050806,0,0),(2226,1540050801,0,0),(2228,1540050794,0,0),(2233,1540050801,0,0),(2243,1540060050,0,0),(2244,1540050801,0,0),(2249,1540050792,0,0),(2257,1540051447,0,0),(2260,1540050817,0,0),(2261,1540050801,0,0),(2264,1540050801,0,0),(2265,1540050801,0,0),(2266,1540050801,0,0),(2272,1540050818,0,0),(2275,1540081756,0,0),(2276,1540081756,0,0),(2277,1540081756,0,0),(2278,1540081756,0,0),(2279,1540081756,0,0),(2280,1540081756,0,0),(2281,1540081756,0,0),(2282,1540081756,0,0),(2285,1540081756,0,0),(2286,1540081756,0,0),(2287,1540081756,0,0),(2288,1540081756,0,0),(2289,1540081756,0,0),(2290,1540081756,0,0),(2291,1540081756,0,0),(2292,1540081459,0,0),(2293,1540081756,0,0),(2294,1540081459,0,0),(2296,1540081459,0,0),(2297,1540081459,0,0),(2301,1540081459,0,0),(2316,1540050805,0,0),(2318,1540050814,0,0),(2319,1540050801,0,0),(2320,1540050787,0,0),(2329,1540050801,0,0),(2336,1540050811,0,0),(2370,1540050791,0,0),(2371,1540050805,0,0),(2377,1540050801,0,0),(2381,1540050811,0,0),(2384,1540050801,0,0),(2385,1540050801,0,0),(2388,1540050801,0,0),(2389,1540051448,0,0),(2393,1540051447,0,0),(2397,1540051448,0,0),(2400,1540050805,0,0),(2402,1540050801,0,0),(2431,1540050808,0,0),(2482,1540050801,0,0),(2496,1540050801,0,0),(2520,1540050814,0,0),(2521,1540050801,0,0),(2522,1540050801,0,0),(2523,1540050801,0,0),(2524,1540050801,0,0),(2527,1540050801,0,0),(2529,1540050801,0,0),(2579,1540050816,0,0),(2585,1540050815,0,0),(2590,1540050801,0,0),(2595,1540050805,0,0),(2610,1540050814,0,0),(3107,1537027724,0,0),(3108,1537027724,0,0),(3112,1537027721,0,0),(3113,1540081459,0,0),(3114,1537027721,0,0),(3116,1540081756,0,0),(3117,1537027721,0,0),(3118,1540081459,0,0),(3123,1540081459,0,0),(3124,1540081459,0,0),(3128,1540081756,0,0),(3130,1540081459,0,0),(3131,1540081459,0,0),(3132,1540081459,0,0),(3140,1540081756,0,0),(3141,1540081756,0,0),(3142,1540081459,0,0),(3143,1540081459,0,0),(3144,1540081756,0,0),(3162,1540081459,0,0),(3163,1540081756,0,0),(3164,1540081756,0,0),(3165,1540081756,0,0),(3167,1540081459,0,0),(3168,1540081756,0,0),(3169,1540081756,0,0),(3172,1540081459,0,0),(3173,1540081459,0,0),(3174,1540081459,0,0),(3175,1540081459,0,0),(3176,1540081459,0,0),(3177,1540081463,0,0),(3178,1540081471,0,0),(3179,1540081459,0,0),(3180,1540081459,0,0),(3181,1540081459,0,0),(3182,1540081459,0,0),(3183,1540081459,0,0),(3184,1540081459,0,0),(3185,1540081459,0,0),(3189,1540081459,0,0),(3190,1540081459,0,0),(3191,1540081756,0,0),(3192,1540081756,0,0),(3193,1540081756,0,0),(3194,1540081481,0,0),(3195,1540081481,0,0),(3196,1540081756,0,0),(3198,1540081756,0,0),(3199,1540081756,0,0),(3200,1540081756,0,0),(3201,1540081756,0,0),(3202,1540081486,0,0),(3203,1540081459,0,0),(3204,1540081756,0,0),(3205,1540081756,0,0),(3206,1540081756,0,0),(3207,1540081756,0,0),(3208,1540081756,0,0),(3209,1540081756,0,0),(3210,1540081756,0,0),(3211,1540081459,0,0),(3212,1540081459,0,0),(3213,1540081459,0,0),(3214,1540081459,0,0),(3215,1540081459,0,0),(3216,1540081459,0,0),(3217,1540081459,0,0),(3218,1540081459,0,0),(3219,1540081427,0,0),(3220,1540081424,0,0),(3223,1540081459,0,0),(3224,1540081459,0,0),(3225,1540081459,0,0),(3226,1540081459,0,0),(3227,1540081438,0,0),(3231,1540081459,0,0),(3242,1540081459,0,0),(3245,1540081459,0,0),(3249,1540081403,0,0),(3250,1540081459,0,0),(3251,1540081459,0,0),(3252,1540081459,0,0),(3253,1540081459,0,0),(3260,1540081756,0,0),(3549,1540081756,0,0),(3550,1540081756,0,0),(3553,1540081756,0,0),(3555,1537027679,0,0),(3557,1540081756,0,0),(3561,1537027721,0,0),(3584,1540081756,0,0),(3585,1540081756,0,0),(3586,1540081756,0,0),(3587,1540081756,0,0),(3588,1540081459,0,0),(3589,1540081756,0,0),(3590,1540081756,0,0),(3591,1537027721,0,0),(3595,1537027724,0,0),(3598,1537027724,0,0),(3599,1537027724,0,0),(3619,1537027721,0,0),(3620,1537027679,0,0),(3621,1537027679,0,0),(3622,1540081756,0,0),(3624,1540081756,0,0),(3625,1537027679,0,0),(3626,1537027679,0,0),(3628,1537027679,0,0),(3632,1537027679,0,0),(3634,1537027721,0,0),(3635,1537027721,0,0),(3636,1537027721,0,0),(3637,1537027721,0,0),(3638,1540081756,0,0),(3639,1540081756,0,0),(3640,1540081756,0,0),(3642,1540081756,0,0),(3643,1540081721,0,0),(3644,1540081756,0,0),(3645,1540081756,0,0),(3647,1540081756,0,0),(3649,1540081756,0,0),(4048,1540081740,0,0),(4065,1540081756,0,0),(4066,1540081756,0,0),(4067,1540081828,0,0),(4068,1540081756,0,0),(4069,1540081756,0,0),(4070,1540081756,0,0),(4071,1540081756,0,0),(4072,1540081757,0,0),(4073,1540081828,0,0),(4074,1540081756,0,0),(4075,1540081756,0,0),(4076,1540081756,0,0),(4077,1540081756,0,0),(4078,1540081757,0,0),(4079,1540081767,0,0),(4080,1540081757,0,0),(4092,1540081756,0,0),(4094,1540081756,0,0),(4095,1540081756,0,0),(4096,1540081756,0,0),(4097,1540081756,0,0),(4098,1540081756,0,0),(4099,1540081756,0,0),(4100,1540081471,0,0),(4101,1540081756,0,0),(4102,1540081756,0,0),(4103,1540081756,0,0),(4104,1540081756,0,0),(4105,1540081461,0,0),(4106,1537027679,0,0),(4107,1540081756,0,0),(4108,1540081756,0,0),(4109,1540081757,0,0),(4110,1540081756,0,0),(4111,1540081756,0,0),(4112,1540081471,0,0),(4113,1540081471,0,0),(4114,1537027679,0,0),(4115,1540081480,0,0),(4116,1540081471,0,0),(4117,1540081480,0,0),(4118,1537027679,0,0),(4119,1537027679,0,0),(4120,1537027681,0,0),(4121,1537027681,0,0),(4122,1537027681,0,0),(4123,1537027679,0,0),(4124,1540081480,0,0),(4125,1540081471,0,0),(4126,1540081480,0,0),(4127,1537027679,0,0),(4128,1540081756,0,0),(4129,1540081471,0,0),(4130,1540081471,0,0),(4131,1540081756,0,0),(4132,1540081756,0,0),(4133,1540081550,0,0),(4134,1540081756,0,0),(4135,1540081471,0,0),(4136,1540081756,0,0),(4137,1540081756,0,0),(4138,1540081756,0,0),(4140,1540081756,0,0),(4141,1540081471,0,0),(4142,1540081480,0,0),(4143,1537027679,0,0),(4150,1540079408,0,0),(4152,1540079413,0,0),(4157,1540079398,0,0),(4161,1540079436,0,0),(4166,1537027681,0,0),(4168,1537027681,0,0),(4169,1537027679,0,0),(4485,1540079380,0,0),(4487,1540079388,0,0),(4489,1540079392,0,0),(5553,1540058374,0,0),(6305,1540078279,0,0),(6306,1540078283,0,0),(6308,1540078268,0,0),(20424,1540081315,0,0),(45217,1540089366,0,0),(68010,1539984573,530,0),(68011,1539984633,530,0),(68012,1539984317,530,0),(68013,1539984295,530,0),(68017,1539984650,530,0),(68018,1539984316,530,0),(68020,1539984340,530,0),(68021,1539984286,530,0),(68022,1539984594,530,0),(68023,1539984663,530,0),(68024,1539984605,530,0),(68025,1539984612,530,0),(68122,1539983646,530,0),(68125,1539983656,530,0),(68264,1539984620,530,0),(68266,1539984289,530,0),(68311,1539984922,530,0),(68312,1539984815,530,0),(79972,1539983823,0,0),(79991,1539983826,0,0),(81116,1540067582,571,0),(81117,1540067584,571,0),(81118,1540067584,571,0),(81119,1540067580,571,0),(81120,1540067580,571,0),(81121,1540067581,571,0),(86066,1539984321,530,0),(86068,1539984260,530,0),(86069,1539984899,530,0),(86070,1539984296,530,0),(86071,1539984250,530,0),(86170,1537034699,0,0),(86720,1540049098,530,0),(88249,1537027923,0,0),(88250,1537028079,0,0),(92827,1540588579,0,0),(92830,1540588481,0,0),(92831,1540588476,0,0),(92832,1540588586,0,0),(92833,1540588567,0,0),(97122,1540064225,571,0),(97125,1540064269,571,0),(118064,1540050194,571,0),(120901,1540051005,571,0),(134233,1540075701,0,0),(134475,1540088484,0,0),(200877,1537027886,0,0),(207174,1540081697,0,0),(207175,1540081697,0,0),(207176,1540081697,0,0),(207177,1540081697,0,0),(207178,1540081697,0,0),(207179,1540081697,0,0),(207180,1540081697,0,0),(207181,1540081697,0,0),(207182,1540081697,0,0),(207183,1540081697,0,0),(207184,1540081697,0,0),(207185,1540081697,0,0),(207186,1540081698,0,0),(207187,1540081698,0,0),(207188,1540081696,0,0),(207189,1540081698,0,0),(207190,1540081696,0,0),(207193,1540081698,0,0),(207194,1540081696,0,0),(207195,1540081696,0,0),(207196,1540081696,0,0),(207201,1540081465,0,0),(207202,1540081465,0,0),(207204,1537027849,0,0),(209028,1537028428,0,0),(213866,1540059584,0,0),(213877,1540068551,0,0),(213878,1540068563,0,0),(213879,1540068545,0,0),(213880,1540068560,0,0),(213882,1540066811,0,0),(213883,1540068557,0,0),(213884,1540068554,0,0),(213885,1540068542,0,0),(213886,1540066808,0,0),(213887,1540064771,0,0),(213888,1540064774,0,0),(213889,1540066814,0,0),(213890,1540064990,0,0),(213892,1540064980,0,0),(213893,1540064983,0,0),(213894,1540064777,0,0),(213895,1540064986,0,0),(213896,1540064993,0,0),(213897,1540066820,0,0),(213898,1540068090,0,0),(213899,1540068566,0,0),(213900,1540068548,0,0),(213901,1540067308,0,0),(213903,1540067172,0,0),(213904,1540658250,0,0),(213906,1540072143,0,0),(213907,1540661030,0,0),(213933,1540075182,0,0),(213935,1540676921,0,0),(213938,1540732629,0,0),(213956,1540732289,0,0),(213960,1540661726,0,0),(214433,1540684408,0,0),(214436,1541018155,0,0),(214439,1540732440,0,0);
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:08:58
