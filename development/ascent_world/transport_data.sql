-- MySQL dump 10.11
--
-- Host: localhost    Database: whydb
-- ------------------------------------------------------
-- Server version	5.5.8-log

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
-- Table structure for table `transport_data`
--

DROP TABLE IF EXISTS `transport_data`;
CREATE TABLE `transport_data` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` text,
  `period` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Transports';

--
-- Dumping data for table `transport_data`
--

LOCK TABLES `transport_data` WRITE;
/*!40000 ALTER TABLE `transport_data` DISABLE KEYS */;
INSERT INTO `transport_data` VALUES (20808,'Ratchet and Booty Bay',231236),(164871,'Orgrimmar and Undercity',239334),(175080,'Grom\'Gol Base Camp and Orgrimmar',248990),(176231,'Menethil Harbor and Theramore Isle',230162),(176244,'Teldrassil and Auberdine',312734),(176310,'Stormwind and Auberdine',234510),(176495,'Grom\'Gol Base Camp and Undercity',315032),(177233,'Forgotton Coast and Feathermoon Stronghold',259751),(181646,'Azuremyst and Auberdine',238707),(181688,'Valgarde and Menethil',445534),(181689,'Undercity and Vengeance Landing',214579),(186238,'Orgrimmar and Warsong Hold',302705),(186371,'Stolen Zeppelin',484211),(187038,'Pirate boat',307953),(187568,'Moa\'ki Harbor Turtle Boat',445220),(188511,'Unu\'pe Turtle Boat',502354),(190536,'Valiance Keep and Stormwind',271979),(190549,'Orgrimmar to Thunderbluff',533835),(192241,'Orgrims Hammer',1424158),(192242,'Fizzcrank Airstrip',1051387);
/*!40000 ALTER TABLE `transport_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-01-03 21:20:12
