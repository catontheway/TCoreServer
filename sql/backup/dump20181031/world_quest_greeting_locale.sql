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
-- Table structure for table `quest_greeting_locale`
--

DROP TABLE IF EXISTS `quest_greeting_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_greeting_locale` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Greeting` text,
  `VerifiedBuild` smallint(5) DEFAULT '0',
  PRIMARY KEY (`ID`,`Type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_greeting_locale`
--

LOCK TABLES `quest_greeting_locale` WRITE;
/*!40000 ALTER TABLE `quest_greeting_locale` DISABLE KEYS */;
INSERT INTO `quest_greeting_locale` VALUES (823,0,'deDE','Guten Tag, $C. Normalerweise würde ich jetzt meine Runde machen und die Leute von Sturmwind beschützen, doch viele der Wachen von Sturmwind kämpfen in fremden Landen. Daher mache ich jetzt hier die Vertretung und setze Kopfgelder aus, wo ich doch eigentlich lieber auf Patrouille sein würde...',0),(240,0,'deDE','Ach ja, es ist auch ohne diese neuen Probleme schon schwer genug, hier für Ordnung zu sorgen! Ich hoffe, Ihr bringt gute Neuigkeiten, $N...',0),(253,0,'deDE','Aha! Guten Tag, guten Tag, $GMeister:Meisterin; $C! Kommt, setzt Euch und trinkt etwas. Ihr habt so ein Leuchten in den Augen, als wolltet Ihr gern etwas tun. Ich denke, Ihr solltet ein paar Wörtchen mit mir wechseln, es lohnt sich bestimmt...',0),(241,0,'deDE','He, mein Freund. Man nennt mich Remy. Ich komme aus dem Rotkammgebirge im Osten und bin auf der Suche nach interessanten... Geschäften, interessanten... Geschäften. Habt Ihr vielleicht welche... vielleicht welche?',0),(261,0,'deDE','Seid gegrüßt. Ihr seht aus wie $Gein Mann der:eine Frau die; weiß, was $Ger:sie; will... habt ihr mit der Armee von Sturmwind zu tun?',0),(237,0,'deDE','In dieser Gegend gibt es wirklich nichts als Ärger. Ich habe versucht, den Dummkopf Saldean dazu zu bringen, sich aus dem Staub zu machen, solange das noch geht, aber er will einfach nicht hören. Aber ich bin kein Dummkopf. Verna und ich hauen ab, sobald wir diesen Wagen repariert haben.',0),(238,0,'deDE','Manchmal denke ich, eine große dunkle Wolke schwebt über uns, aus der Unglück auf uns herabregnet. Erst werden wir von unserem Land vertrieben und jetzt kommen wir noch nicht einmal aus Westfall weg. Alles liegt im Argen. Es muss etwas geschehen.',0),(235,0,'deDE','Willkommen in unserer bescheidenen Hütte! Wir freuen uns über jedes freundliche Gesicht. Und Ihr habt so starke Arme. Mein Mann und ich sind ständig auf der Suche nach jemandem, der uns auf dem Hof hilft. Jetzt, wo die ganzen guten Leute weg sind, ist es nicht einfach, kräftige Helfer zu bekommen.',0),(234,0,'deDE','In Westfall hat sich üble Verderbnis eingeschlichen. Während ich auf dem Schlachtfeld von Lordaeron meine Pflicht tat, wurden diese anständig geführten Höfe überfallen und zu Schlupfwinkeln für Schläger und Mörder umfunktioniert. Die Volksmiliz ist auf Eure Hilfe angewiesen.',0),(344,0,'deDE','Wer ist $Gdieser:diese; $C, $Gder:die; sich vor das Gericht von Seenhain im Königreich Sturmwind begibt? Sagt, was Euer Anliegen in dieser Stadt ist, $R. Die Bedrohung des Königreichs durch die Orcs ist zu groß, um Zeit mit eitlem Geplauder zu vergeuden.',0),(342,0,'deDE','Seid gegrüßt, $N! Willkommen in meinem bescheidenen Garten. Das Wetter ist in letzter Zeit wirklich vorzüglich. Lasst uns hoffen, dass es bis zur Ernte anhält.',0),(1646,0,'deDE','Seid gegrüßt, ich bin Baros Alexston, Stadtarchitekt von Sturmwind.',0),(382,0,'deDE','Ich habe keine Zeit zum Schwatzen, doch wenn Ihr gewillt seid, uns im Kampf gegen die Orcs beizustehen, dann finden wir schon etwas für Euch zu tun.',0),(1719,0,'deDE','Hier drüben, nutzloses Pack... ! Wenn Ihr etwas Sinnvolles tun wollt, dann hört genau zu!',0);
/*!40000 ALTER TABLE `quest_greeting_locale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 22:09:17
