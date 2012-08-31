-- MySQL dump 10.11
--
-- Host: localhost    Database: test_whydb
-- ------------------------------------------------------
-- Server version	5.1.45-community

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
-- Table structure for table `spell_coef_override`
--

DROP TABLE IF EXISTS `spell_coef_override`;
CREATE TABLE `spell_coef_override` (
  `id` double NOT NULL DEFAULT '0',
  `name` varchar(300) DEFAULT NULL,
  `Dspell_coef_override` float DEFAULT NULL,
  `OTspell_coef_override` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spell_coef_override`
--

LOCK TABLES `spell_coef_override` WRITE;
/*!40000 ALTER TABLE `spell_coef_override` DISABLE KEYS */;
INSERT INTO `spell_coef_override` VALUES (17,'Power Word: Shield Rank 1',0.3,-1),(116,'Mage - Frost Bolt',0.8143,0),(133,'Mage - Fire Ball',1,0),(139,'Renew Rank 1',0,1),(172,'Warlock - Corruption',0,0.2),(331,'Shaman - Healing Wave',1.6106,0),(339,'Druid - Entangling Roots',0,0.1),(348,'Warlock - Immolate',0.2,0.2),(403,'Shaman - Lightning Bolt',0.7143,0),(543,'Fire Ward Rank 1',-1,0.3),(585,'Priest - Smite',0.714,0),(592,'Power Word: Shield Rank 2',0.3,-1),(600,'Power Word: Shield Rank 3',0.3,-1),(603,'Curse of Doom Rank 1',0,2),(635,'Paladin - Holy Light',1.66,0),(755,'Warlock - Health Funnel',0,0.4485),(879,'Paladin - Exorcism',0.15,0),(974,'Shaman - Earth Shield',0.4762,0),(980,'Curse of Agony Rank 1',0,1.2),(1014,'Curse of Agony Rank 2',0,1.2),(1120,'Warlock - Drain Soul',0,0.4286),(1463,'Mage - Mana Shield',0.8053,0),(1949,'Warlock - Hellfire',0,0.0946),(2120,'Mage - Flamestrike',0.2357,0.122),(2812,'Paladin - Holy Wrath',0.07,0),(2944,'Priest - Devouring Plague',0,0.1849),(3606,'Shaman - Searing Totem Attack Rank 1',0.1667,0),(3747,'Power Word: Shield Rank 4',0.3,-1),(5176,'Druid - Wrath',0.5714,0),(5185,'Druid - Healing Touch',1.6104,0),(5570,'Druid - Insect Swarm',0,0.2),(5672,'Healing Stream',0,0.08),(5857,'Warlock - Hellfire Effect on Enemy Rank 1',0.1428,0),(6065,'Power Word: Shield Rank 5',0.3,-1),(6066,'Power Word: Shield Rank 6',0.3,-1),(6074,'Renew Rank 2',0,1),(6075,'Renew Rank 3',0,1),(6076,'Renew Rank 4',0,1),(6077,'Renew Rank 5',0,1),(6078,'Renew Rank 6',0,1),(6143,'Frost Ward Rank 1',-1,0.3),(6217,'Curse of Agony Rank 3',0,1.2),(6229,'Shadow Ward Rank 1',-1,0.3),(6353,'Warlock - Soul Fire',1.15,0),(6371,'Healing Stream',0,0.08),(6372,'Healing Stream',0,0.08),(7268,'Mage - Arcane Missiles Triggered Spell Rank 1',0.2857,0),(8026,'Shaman - Flametongue Weapon Proc Rank 1',0.1,0),(8034,'Shaman - Frostbrand Attack Rank 1',0.1,0),(8042,'Shaman - Earth Shock',0.3858,0),(8050,'Shaman - Flame Shock',0.2142,0.1),(8056,'Shaman - Frost Shock',0.3858,0),(8188,'Shaman - Magma Totam Passive Rank 1',0.1,0),(8400,'Fireball Rank 5',1,0),(8401,'Fireball Rank 6',1,0),(8402,'Fireball Rank 7',1,0),(8457,'Fire Ward Rank 2',-1,0.3),(8458,'Fire Ward Rank 3',-1,0.3),(8461,'Frost Ward Rank 2',-1,0.3),(8462,'Frost Ward Rank 3',-1,0.3),(8921,'Druid - Moonfire',0.1515,0.13),(8936,'Druid - Regrowth',0.539,0.188),(10148,'Fireball Rank 8',1,0),(10149,'Fireball Rank 9',1,0),(10150,'Fireball Rank 10',1,0),(10151,'Fireball Rank 11',1,0),(10177,'Frost Ward Rank 4',-1,0.3),(10223,'Fire Ward Rank 4',-1,0.3),(10225,'Fire Ward Rank 5',-1,0.3),(10460,'Healing Stream',0,0.08),(10461,'Healing Stream',0,0.08),(10898,'Power Word: Shield Rank 7',0.3,-1),(10899,'Power Word: Shield Rank 8',0.3,-1),(10900,'Power Word: Shield Rank 9',0.3,-1),(10901,'Power Word: Shield Rank 10',0.3,-1),(10927,'Renew Rank 7',0,1),(10928,'Renew Rank 8',0,1),(10929,'Renew Rank 9',0,1),(11366,'Mage - Pyroblast',1.15,0.05),(11426,'Ice Barrier Rank 1',-1,0.1),(11711,'Curse of Agony Rank 4',0,1.2),(11712,'Curse of Agony Rank 5',0,1.2),(11713,'Curse of Agony Rank 6',0,1.2),(11739,'Shadow Ward Rank 2',-1,0.3),(11740,'Shadow Ward Rank 3',-1,0.3),(13031,'Ice Barrier Rank 2',-1,0.1),(13032,'Ice Barrier Rank 3',-1,0.1),(13033,'Ice Barrier Rank 4',-1,0.1),(14914,'Priest - Holy Fire',0.5711,0.024),(15237,'Priest - Holy Nova Damage',0.1606,0),(18220,'Warlock - Dark Pact Rank 1',0.96,0),(19750,'Paladin - Flash of Light',1,0),(20267,'Paladin - Judgement of Light Proc',0.1,0),(20424,'Seal of Command',0.2,0),(20467,'Paladin - Judgement of Command',0.25,0),(20925,'Paladin - Holy Shield',0.09,0),(21084,'Seal of Righteousness Rank 1',0.1,0),(23455,'Priest - Holy Nova Heal Rank 1',0.3035,0),(25217,'Power Word: Shield Rank 11',0.3,-1),(25218,'Power Word: Shield Rank 12',0.3,-1),(25221,'Renew Rank 11',0,1),(25306,'Fireball Rank 12',1,0),(25315,'Renew Rank 10',0,1),(25566,'Healing Stream',0,0.08),(25742,'Paladin - Seal of Righteousness Dummy Proc',0.07,0),(26364,'Shaman - Lightning Shield Proc Rank 1',0.33,0),(26573,'Paladin - Consecration',0,0.04),(27070,'Fireball Rank 13',1,0),(27128,'Fire Ward Rank 6',-1,0.3),(27134,'Ice Barrier Rank 5',-1,0.1),(27218,'Curse of Agony Rank 7',0,1.2),(27243,'Warlock - Seed of Corruption',0.2129,0.25),(28609,'Frost Ward Rank 5',-1,0.3),(28610,'Shadow Ward Rank 4',-1,0.3),(30455,'Ice Lance',0.1429,0),(30910,'Curse of Doom Rank 2',0,2),(31117,'Warlock - Unstable Affliction Dispell',1.8,0),(32796,'Frost Ward Rank 6',-1,0.3),(33405,'Ice Barrier Rank 6',-1,0.1),(33763,'Libebloom',0.4286,0.518),(34433,'Priest - Shadowfiend',0.65,0),(34914,'Priest - Vampiric Touch',0,0.4),(38692,'Fireball Rank 14',1,0),(42208,'Mage - Blizzard Triggered',0.1437,0),(42223,'Warlock - Rain of Fire Triggered',0.285714,0),(42231,'Druid - Hurricane Triggered',0.12898,0),(42913,'Ice Lance',0.1429,0),(42914,'Ice Lance',0.1429,0),(44203,'Druid - Tranquility Triggered',0.538,0),(44425,'Mage - Arcane Barrage',0.714286,0),(44614,'Mage - Frostfire Bolt',0.8571,0),(47666,'Penance - dmg effect',0.229,0),(47750,'Penance - heal effect',0.537,0),(47897,'Warlock - Shadowflame Direct',0.1064,0),(47960,'Warlock - Shadowflame DoT',0,0.06666),(48181,'Warlock - Haunt',0.4729,0),(48438,'Druid - Wild Growth',0,0.11505),(49821,'Priest - Mind Sear Trigger',0.2857,0),(50288,'Druid - Starfall',0.05,0),(50294,'Druid - Starfall AOE',0.012,0),(50464,'Druid - Nourish',0.6611,0),(52042,'Shaman - Healing Stream Totem Triggered Heal',0.045,0),(54158,'Paladin - Judgement',0.25,0),(58381,'Priest - Mind Flay Triggered',0.257143,0),(58763,'Healing Stream',0,0.08),(58764,'Healing Stream',0,0.08),(58765,'Healing Stream',0,0.08),(61295,'Shaman - Riptide',0.4,0.18),(64085,'Priest - Vampiric Touch Dispel',1.2,0),(65994,'Healing Stream',0,0.08),(68882,'Healing Stream',0,0.08);
/*!40000 ALTER TABLE `spell_coef_override` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-08-25 16:56:27
