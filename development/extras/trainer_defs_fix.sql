/* This file rebuilds/updates the trainer_defs table from the content of
   several other tables.
   last updated 28-01-2011 by Sadikum
 */

/* import all needed entries */
INSERT IGNORE INTO `trainer_defs` (`entry`) SELECT DISTINCT(`entry`) FROM `trainer_spells`;
/* remove outdated entries */
DELETE FROM `trainer_defs` WHERE `entry` NOT IN (SELECT DISTINCT(`entry`) FROM `trainer_spells`);

/* req_class */
UPDATE `trainer_defs` SET `req_class` = '0';
UPDATE `trainer_defs` JOIN `creature_names` USING (`entry`) SET `req_class` = '1' WHERE `subname` = 'Warrior Trainer';
UPDATE `trainer_defs` JOIN `creature_names` USING (`entry`) SET `req_class` = '2' WHERE `subname` = 'Paladin Trainer' OR `subname` = 'Triumvirate of the Hand';
UPDATE `trainer_defs` JOIN `creature_names` USING (`entry`) SET `req_class` = '3' WHERE `subname` = 'Hunter Trainer' OR `subname` = 'Pet Trainer';
UPDATE `trainer_defs` JOIN `creature_names` USING (`entry`) SET `req_class` = '4' WHERE `subname` = 'Rogue Trainer' OR `subname` = 'Grand Master Rogue';
UPDATE `trainer_defs` JOIN `creature_names` USING (`entry`) SET `req_class` = '5' WHERE `subname` = 'Priest Trainer' OR `subname` = 'High Priest';
UPDATE `trainer_defs` JOIN `trainer_spells` USING (`entry`) SET `req_class` = '6' WHERE `learn_spell` = '49998'; -- Death Strike Rank 1 - indicates Death Knight
UPDATE `trainer_defs` JOIN `creature_names` USING (`entry`) SET `req_class` = '7' WHERE `subname` = 'Shaman Trainer';
UPDATE `trainer_defs` JOIN `creature_names` USING (`entry`) SET `req_class` = '8' WHERE `subname` = 'Mage Trainer' OR `subname` = 'Master Mage' OR `subname` = 'Portal Trainer';
UPDATE `trainer_defs` JOIN `creature_names` USING (`entry`) SET `req_class` = '9' WHERE `subname` = 'Warlock Trainer' OR `entry` = '6251';
UPDATE `trainer_defs` JOIN `creature_names` USING (`entry`) SET `req_class` = '11' WHERE `subname` = 'Druid Trainer';

/* trainer_type (0 - class, 1 - riding, 2 - profession, 3 - pet) */
UPDATE `trainer_defs` SET `trainer_type` = '0' WHERE `req_class` != '0';
UPDATE `trainer_defs` JOIN `trainer_spells` USING (`entry`) SET `trainer_type`= '1' WHERE `cast_spell` IN ('33389','33392','34092','34093','54198');
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`) SET `trainer_type` = '2'
  WHERE `cast_spell` IN ('3279','2551','7733') OR -- first aid/cooking/fishing apprentice
    `reqskill` IN ('129','164','165','171','182','185','186','197','202','333','356','393','755','773'); -- all professions
UPDATE `trainer_defs` JOIN `creature_names` USING(`entry`) SET `trainer_type` = '2' WHERE `subname` = 'Weapon Master';
UPDATE `trainer_defs` JOIN `creature_names` USING(`entry`) SET `trainer_type` = '3' WHERE `subname` = 'Pet Trainer';

/* can_train_gossip_texid and cannot_train_gossip_textid */
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '1040', `cannot_train_gossip_textid` = '5721'  WHERE `req_class` = '1';
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '3974', `cannot_train_gossip_textid` = '3976'  WHERE `req_class` = '2';
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '4864', `cannot_train_gossip_textid` = '5839'  WHERE `req_class` = '3';
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '4835', `cannot_train_gossip_textid` = '4797'  WHERE `req_class` = '4';
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '4438', `cannot_train_gossip_textid` = '12546' WHERE `req_class` = '5';
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '5005', `cannot_train_gossip_textid` = '5006'  WHERE `req_class` = '7';
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '538',  `cannot_train_gossip_textid` = '539'   WHERE `req_class` = '8';
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '5835', `cannot_train_gossip_textid` = '5836'  WHERE `req_class` = '9';
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '4775', `cannot_train_gossip_textid` = '4774'  WHERE `req_class` = '11'; -- all Druid Trainers
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '4782', `cannot_train_gossip_textid` = '4781'  WHERE `req_class` = '11' AND `entry` IN (SELECT `entry` FROM `creature_proto` WHERE `faction` = '80'); -- Darnassian Druid Trainers
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '6160', `cannot_train_gossip_textid` = '2037'  WHERE `req_class` = '11' AND `entry` IN (SELECT `entry` FROM `creature_proto` WHERE `faction` = '994'); -- Cenarion Circle's Druid Trainers
UPDATE `trainer_defs` SET `can_train_gossip_textid` = '5838', `cannot_train_gossip_textid` = '5839'  WHERE `trainer_type` = '3';

/* trainer_ui_window_message */
UPDATE `trainer_defs` JOIN `creature_names` USING(`entry`)
  SET `trainer_ui_window_message` = "Hello! Can I teach you something?"
  WHERE `subname` = 'Weapon Master' OR `trainer_type` IN ('1', '3');
UPDATE `trainer_defs`
  SET `trainer_ui_window_message` = "Hello, $c! Ready for some training?"
  WHERE `trainer_type` = '0' AND `req_class` != '6';
UPDATE `trainer_defs`
  SET `trainer_ui_window_message` = "Well met, $c. Ready for some training?"
  WHERE `trainer_type` = '0' AND `req_class` = '6';
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "Here, let me show you how to bind those wounds...."
  WHERE `reqskill` = '129'; -- first aid trainers
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "You are a cut above the rest.  Ouch."
  WHERE `reqskill` = '129' AND `reqskillvalue` >= '350'; -- grand master first aid trainers
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "Care to learn how to turn the ore that you find into weapons and metal armor?"
  WHERE `reqskill` = '164'; -- blacksmiths
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "Greetings! Can I teach you how to turn beast hides into armor?"
  WHERE `reqskill` = '165'; -- leatherworkers
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "With alchemy you can turn found herbs into healing and other types of potions."
  WHERE `reqskill` = '171'; -- alchemists
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "The herbs of Northrend can be brewed into powerful potions. Do you wish to learn?"
  WHERE `reqskill` = '171' AND `reqskillvalue` >= '350'; -- grand master alchemists
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "Searching for herbs requires both knowledge and instinct."
  WHERE `reqskill` = '182'; -- herbalists
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "Can I teach you how to turn the meat you find on beasts into a feast?"
  WHERE `reqskill` = '185'; -- cooks
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "You have not lived until you have dug deep into the earth."
  WHERE `reqskill` = '186'; -- miners
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "Greetings! Can I teach you how to turn found cloth into cloth armor?"
  WHERE `reqskill` = '197'; -- tailors
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "Engineering is very simple once you grasp the basics."
  WHERE `reqskill` = '202'; -- engineers
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "The flying machine is an amazing device!"
  WHERE `learn_spell` = '44157'; -- turbo-charged flying machine teachers
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "Enchanting is the art of improving existing items through magic."
  WHERE `reqskill` = '333'; -- enchanters
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "I can teach you how to use a fishing pole to catch fish."
  WHERE `reqskill` = '356'; -- fishers
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "I can teach you the finer points of fishing."
  WHERE `reqskill` = '356' AND `reqskillvalue` >= '350'; -- grand master fishers
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "It requires a steady hand to remove the leather from a slain beast."
  WHERE `reqskill` = '393'; -- skinners
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "Greetings! Can I teach you how to cut precious gems and craft jewelry?"
  WHERE `reqskill` = '755'; -- jewelcrafters
UPDATE `trainer_defs` JOIN `trainer_spells` USING(`entry`)
  SET `trainer_ui_window_message` = "Would you like to learn the intricacies of inscription?"
  WHERE `reqskill` = '773'; -- scribes
