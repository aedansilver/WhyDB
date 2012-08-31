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
-- Table structure for table `vendor_restrictions`
--

DROP TABLE IF EXISTS `vendor_restrictions`;
CREATE TABLE `vendor_restrictions` (
  `entry` int(10) unsigned NOT NULL,
  `racemask` int(11) NOT NULL DEFAULT '-1',
  `classmask` int(11) NOT NULL DEFAULT '-1',
  `reqrepfaction` int(10) unsigned NOT NULL DEFAULT '0',
  `reqrepfactionvalue` int(10) unsigned NOT NULL DEFAULT '0',
  `canbuyattextid` int(10) unsigned NOT NULL DEFAULT '0',
  `cannotbuyattextid` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - check for all values, 1 - classic mount vendor',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_restrictions`
--

LOCK TABLES `vendor_restrictions` WRITE;
/*!40000 ALTER TABLE `vendor_restrictions` DISABLE KEYS */;
INSERT INTO `vendor_restrictions` VALUES (384,1,-1,72,42000,0,5855,1),(1261,4,-1,47,42000,0,5856,1),(3362,2,-1,76,42000,0,5841,1),(3685,32,-1,81,42000,0,5843,1),(4730,8,-1,69,42000,0,5844,1),(4731,16,-1,68,42000,0,5840,1),(7952,128,-1,530,42000,0,5842,1),(7955,64,-1,54,42000,0,5857,1),(16264,512,-1,911,42000,0,10305,1),(17584,1024,-1,930,42000,0,10705,1);
/*!40000 ALTER TABLE `vendor_restrictions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-01-03 21:20:28
