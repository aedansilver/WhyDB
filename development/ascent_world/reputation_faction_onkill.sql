-- MySQL dump 10.11
--
-- Host: localhost    Database: whydb
-- ------------------------------------------------------
-- Server version	5.1.36-community-log

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
-- Table structure for table `reputation_faction_onkill`
--

DROP TABLE IF EXISTS `reputation_faction_onkill`;
CREATE TABLE `reputation_faction_onkill` (
  `faction_id` smallint(5) unsigned NOT NULL,
  `change_factionid_alliance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `change_deltamin_alliance` mediumint(10) NOT NULL DEFAULT '0',
  `change_deltamax_alliance` mediumint(10) NOT NULL DEFAULT '0',
  `change_factionid_horde` smallint(5) unsigned NOT NULL DEFAULT '0',
  `change_deltamin_horde` mediumint(10) NOT NULL DEFAULT '0',
  `change_deltamax_horde` mediumint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`faction_id`,`change_factionid_alliance`,`change_factionid_horde`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Creature System';

--
-- Dumping data for table `reputation_faction_onkill`
--

LOCK TABLES `reputation_faction_onkill` WRITE;
/*!40000 ALTER TABLE `reputation_faction_onkill` DISABLE KEYS */;
INSERT INTO `reputation_faction_onkill` VALUES (92,133,20,42000,133,20,42000),(92,132,-100,42000,132,-100,42000),(93,132,20,42000,132,20,42000),(93,133,-100,42000,133,-100,42000);
/*!40000 ALTER TABLE `reputation_faction_onkill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-08-04  0:49:00
