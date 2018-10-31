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
-- Table structure for table `pool_quest`
--

DROP TABLE IF EXISTS `pool_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_quest` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`),
  KEY `idx_guid` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_quest`
--

LOCK TABLES `pool_quest` WRITE;
/*!40000 ALTER TABLE `pool_quest` DISABLE KEYS */;
INSERT INTO `pool_quest` VALUES (13673,5662,'A Blade Fit For A Champion Sunreavers'),(13674,5662,'A Worthy Weapon Sunreavers'),(13675,5662,'The Edge of Winter Sunreavers'),(13762,5663,'A Blade Fit For A Champion Orks'),(13763,5663,'A Worthy Weapon Orks'),(13764,5663,'The Edge of Winter Orks'),(13768,5664,'A Blade Fit For A Champion Trolls'),(13769,5664,'A Worthy Weapon Trolls'),(13770,5664,'The Edge of Winter Trolls'),(13773,5665,'A Blade Fit For A Champion Taurens'),(13774,5665,'A Worthy Weapon Taurens'),(13775,5665,'The Edge of Winter Taurens'),(13778,5666,'A Blade Fit For A Champion Undeads'),(13779,5666,'A Worthy Weapon Undeads'),(13780,5666,'The Edge of Winter Undeads'),(13783,5667,'A Blade Fit For A Champion Bloodelfs'),(13784,5667,'A Worthy Weapon Bloodelfs'),(13785,5667,'The Edge of Winter Bloodelfs'),(13666,5668,'A Blade Fit For A Champion Convenant'),(13669,5668,'A Worthy Weapon Convenant'),(13670,5668,'The Edge of Winter Convenant'),(13603,5669,'A Blade Fit For A Champion Humans'),(13600,5669,'A Worthy Weapon Humans'),(13616,5669,'The Edge of Winter Humans'),(13741,5670,'A Blade Fit For A Champion Dwarfs'),(13742,5670,'A Worthy Weapon Dwarfs'),(13743,5670,'The Edge of Winter Dwarfs'),(13746,5671,'A Blade Fit For A Champion Gnomes'),(13747,5671,'A Worthy Weapon Gnomes'),(13748,5671,'The Edge of Winter Gnomes'),(13757,5672,'A Blade Fit For A Champion Nightelfs'),(13758,5672,'A Worthy Weapon Nightelfs'),(13759,5672,'The Edge of Winter Nightelfs'),(13752,5673,'A Blade Fit For A Champion Dranei'),(13753,5673,'A Worthy Weapon Dranei'),(13754,5673,'The Edge of Winter Dranei'),(13100,5674,'Infused mushroom Meatloaf Ally'),(13101,5674,'Convention at the Legerdemain Ally'),(13102,5674,'Sewer Stew Ally'),(13103,5674,'Cheese for Glowergold Ally'),(13107,5674,'Mustard Dogs! Ally'),(13112,5675,'Infused mushroom Meatloaf Horde'),(13113,5675,'Convention at the Legerdemain Horde'),(13114,5675,'Sewer Stew Horde'),(13115,5675,'Cheese for Glowergold Horde'),(13116,5675,'Mustard Dogs! Horde'),(13830,5676,'The Ghostfish'),(13832,5676,'Jewel Of The Sewers'),(13833,5676,'Blood Is Thicker'),(13834,5676,'Dangerously Delicious'),(13836,5676,'Disarmed!'),(12958,5677,'Shipment Blood Jade Amulet'),(12962,5677,'Shipment Bright Armor Relic'),(12959,5677,'Shipment Glowing Ivory Figurine'),(12961,5677,'Shipment Intrincate Bone Figurine'),(12963,5677,'Shipment Shifting Sun Curio'),(12960,5677,'Shipment Wicked Sun Brooch'),(24579,5678,'Sartharion Must Die!'),(24580,5678,'Anub Rekhan Must Die!'),(24581,5678,'Noth the Plaguebringer Must Die!'),(24582,5678,'Instructor Razuvious Must Die!'),(24583,5678,'Patchwerk Must Die!'),(24584,5678,'Malygos Must Die!'),(24585,5678,'Flame Leviathan Must Die!'),(24586,5678,'Razorscale Must Die!'),(24587,5678,'Ignis the Furnace Master Must Die!'),(24588,5678,'XT-002 Deconstructor Must Die!'),(24589,5678,'Lord Jaraxxus Must Die!'),(24590,5678,'Lord Marrowgar Must Die!'),(24878,5688,'Residue Rendezvous (25)'),(24875,5687,'Deprogramming (25)'),(24879,5686,'Blood Quickening (25)'),(24871,5685,'Securing the Ramparts ALLY (10)'),(24870,5685,'Securing the Ramparts HORDE (10)'),(24872,5684,'Respite for a Tormented Soul (10)'),(24873,5683,'Residue Rendezvous (10)'),(24869,5682,'Deprogramming (10)'),(24874,5681,'Blood Quickening (10)'),(24880,5689,'Respite for a Tormented Soul (25)'),(24876,5690,'Securing the Ramparts ALLY (25)'),(24877,5690,'Securing the Ramparts HORDE (25)'),(24629,348,'A Perfect Puff of Perfume'),(24635,348,'A Cloudlet of Classy Cologne'),(24636,348,'Bonbon Blitz'),(14101,349,'Drottinn Hrothgar'),(14102,349,'Mistcaller Yngvar'),(14104,349,'Ornolf The Scarred'),(14105,349,'Deathspeaker Kharos'),(13889,350,'Hungry, Hungry Hatchling'),(13903,350,'Gorishi Grub'),(13904,350,'Poached, Scrambled, Or Raw?'),(13905,350,'Searing Roc Feathers'),(13915,351,'Hungry, Hungry Hatchling'),(13917,351,'Gorishi Grub'),(13916,351,'Poached, Scrambled, Or Raw?'),(13914,351,'Searing Roc Feathers'),(11377,352,'Revenge is Tasty'),(11379,352,'Super Hot Stew'),(11380,352,'Manalicious'),(11381,352,'Soup for the Soul'),(11665,353,'Crocolisks in the City'),(11666,353,'Bait Bandits'),(11667,353,'The One That Got Away'),(11668,353,'Shrimpin Aint Easy'),(11669,353,'Felblood Fillet'),(13424,354,'Back to the Pit'),(13423,354,'Defending Your Title'),(13422,354,'Maintaining Discipline'),(13425,354,'The Aberrations Must Die'),(11369,356,'Wanted: A Black Stalker Egg'),(11384,356,'Wanted: A Warp Splinter Clipping'),(11382,356,'Wanted: Aeonus\'s Hourglass'),(11363,356,'Wanted: Bladefist\'s Seal'),(11362,356,'Wanted: Keli\'dan\'s Feathered Stave'),(11375,356,'Wanted: Murmur\'s Whisper'),(11354,356,'Wanted: Nazan\'s Riding Crop'),(11386,356,'Wanted: Pathaleon\'s Projector'),(11373,356,'Wanted: Shaffar\'s Wondrous Pendant'),(11378,356,'Wanted: The Epoch Hunter\'s Head'),(11374,356,'Wanted: The Exarch\'s Soul Gem'),(11372,356,'Wanted: The Headfeathers of Ikiss'),(11368,356,'Wanted: The Heart of Quagmirran'),(11388,356,'Wanted: The Scroll of Skyriss'),(11499,356,'Wanted: The Signet Ring of Prince Kael\'thas'),(11370,356,'Wanted: The Warlord\'s Treatise'),(11389,357,'Wanted: Arcatraz Sentinels'),(11371,357,'Wanted: Coilfang Myrmidons'),(11376,357,'Wanted: Malicious Instructors'),(11383,357,'Wanted: Rift Lords'),(11364,357,'Wanted: Shattered Hand Centurions'),(11500,357,'Wanted: Sisters of Torment'),(11385,357,'Wanted: Sunseeker Channelers'),(11387,357,'Wanted: Tempest-Forge Destroyers'),(12735,359,'Oracle Soo-nee - A Cleansing Song'),(12737,359,'Oracle Soo-nee - Song of Fecundity'),(12736,359,'Oracle Soo-nee - Song of Reflection'),(12726,359,'Oracle Soo-nee - Song of Wind and Water'),(12761,360,'Oracle Soo-dow - Mastery of the Crystals'),(12762,360,'Oracle Soo-dow - Power of the Great Ones'),(12705,360,'Oracle Soo-dow - Will of the Titans'),(12758,361,'Rejek - A Hero\'s Headgear'),(12734,361,'Rejek - Rejek: First Blood'),(12741,361,'Rejek - Strength of the Tempest'),(12732,361,'Rejek - The Heartblood\'s Strength'),(12703,362,'Vekgar - Kartak\'s Rampage'),(12760,362,'Vekgar - Secret Strength of the Frenzyheart'),(12759,362,'Vekgar - Tools of War'),(14074,363,'A Leg Up'),(14152,363,'Rescue at Sea'),(14080,363,'Stop The Aggressors'),(14077,363,'The Light\'s Mercy'),(14076,364,'Breakfast of Champions'),(14090,364,'Gormok Wants His Snobolds'),(14112,364,'What Do You Feed a Yeti, Anyway?'),(14143,365,'A Leg Up'),(14136,365,'Rescue at Sea'),(14140,365,'Stop The Aggressors'),(14144,365,'The Light\'s Mercy'),(14092,366,'Breakfast of Champions'),(14141,366,'Gormok Wants His Snobolds'),(14145,366,'What Do You Feed a Yeti, Anyway?'),(14108,367,'Crusader Silverdawn - Get Kraken'),(14107,367,'Crusader Silverdawn - The Fate of the Fallen'),(12587,370,'Troll Patrol'),(12501,370,'Troll Patrol'),(12563,370,'Troll Patrol'),(13195,5707,'A Rare Herb (Alliance, attackers)'),(13196,5707,'Bones and Arrows (Alliance, attackers)'),(13197,5707,'Fueling the Demolishers (Alliance, attackers)'),(13198,5707,'Warding the Warriors (Alliance, attackers)'),(13156,5708,'A Rare Herb (Alliance, defenders)'),(13154,5708,'Bones and Arrows (Alliance, defenders)'),(236,5708,'Fueling the Demolishers (Alliance, defenders)'),(13153,5708,'Warding the Warriors (Alliance, defenders)'),(13201,5709,'A Rare Herb (Horde, attackers)'),(13199,5709,'Bones and Arrows (Horde, attackers)'),(13200,5709,'Fueling the Demolishers (Horde, attackers)'),(13202,5709,'Jinxing the Walls (Horde, attackers)'),(13194,5710,'Healing with Roses (Horde, defenders)'),(13193,5710,'Bones and Arrows (Horde, defenders)'),(13191,5710,'Fueling the Demolishers (Horde, defenders)'),(13192,5710,'Warding the Walls (Horde, defenders)');
/*!40000 ALTER TABLE `pool_quest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:09:07
