/* Changeset 107
	* Applied ArcEmu DB updates up to revision 4693
	* Some waypoint cleanup
	* instance_bosses fixup
	* Removed War Effort Volunteer's from spawn
	* Removed AQWar Resource objects from spawn
	* Removed a very lost, lonely anvil from Ironforge
	* The Grand Apothecary Putress in Shattrath City has been moved to the right coords
	* Whatever these Imps are, they shouldn't be spawned now
	* Removed an incorrectly spawned Ahn'Qiraj Gong from the stairs outside the Scarab wall (The Scarab Dais)
	* Vaelastrasz the Corrupt is no longer surrounded by Death Talon Seether's
	* Removed an incorrect spawn of Vaelastrasz in Blackwing Lair (Different entry than the real one)
	* Removed two large Orc Tents outside of Orgrimmar
	* Removed two incorrect and hostile Wolf spawns from The Crossroads (At the stables)
	* Reputation requirements for the quests of Eldara Dawnrunner
	* Quest 'The Battle Must Go On' is no longer available before completing 'The Battle for the Sun's Reach Armory'
	* Quest 'Distraction at the Dead Scar' is no longer available before completing 'The Air Strikes Must Continue''
	* Removed a very lost Flamewaker Healer from Molten Core
	* Deleted five very lost Flamewaker Elites from Molten Core
	* Deleted Ragnaros from Molten Core (He is spawned by script)
	* Removed Majordomo Executus, his minions and his chest from Molten Core (Script event)
	* Removed Spirit of Minshina from spawn (Script)
	* Removed two Hallucination from spawn (Script)
	* update PVP status for some NPCs
	* hacky fix for the quest Vorsh athe Lasher (but it works as intended now :P)
	* Argent Peacekeeper has their ranged weapons equipped now
	* Fixing level and health for Shadowglen Sentinel
	* Fixing level and health for Shadowprey Guardian
	* Fixing level for Custodian of Time
	* The Black Morass fix for required heroic key and a quest + flags
	* Quest The Fate Of The Fallen - now the quest item spell can be cast only on npc 32149
	* Quest Ally of the Netherwing rewarded items
	* Updated ICC and Ruby Sanctum dungeon types and flags
	* Fixed some oversized anvils (note, how big they were before, I swear they were preparing somethin'...!)
	* Deleting some not used graveyards
	* Some new worldstates for outland
	* Around 1000 gameobjects get their faction fixed
	* Mails are beeing sent fter finishing some quests !YAY!

As always, thanks to our community, as most of these fixes comes from forums :)
Specially thanks to Satanail, technique and Sadikum for most of these fixes (and ofc me)
*/

UPDATE `arcemu_db_version` SET `LastUpdate` = '4691';

ALTER TABLE `quests` ADD `MailTemplateId` INT( 10 ) UNSIGNED NOT NULL DEFAULT '0' AFTER `CastSpell`;
ALTER TABLE `quests` ADD `MailDelaySecs` INT( 10 ) UNSIGNED NOT NULL DEFAULT '0' AFTER `MailTemplateId`;
ALTER TABLE `quests` ADD `MailSendItem` INT( 10 ) UNSIGNED NOT NULL DEFAULT '0' AFTER `MailDelaySecs`;
ALTER TABLE `quests` ADD COLUMN `bonusarenapoints` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `bonushonor`;

DROP TABLE IF EXISTS `worldstate_templates`;

CREATE TABLE `worldstate_templates` (
  `map` int(10) unsigned NOT NULL DEFAULT '0',
  `zone` int(10) unsigned NOT NULL DEFAULT '0',
  `field` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`map`,`zone`,`field`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

UPDATE `db_version` SET `revision` =  '157',
`changeset` = '107',
`last_tested_arcemu_revision` = '4693',
`last_included_arcemu_update` = '4691_tablenames.sql';

-- and now some real fixes too :P


-- Some waypoint cleanup
DELETE FROM `creature_waypoints` WHERE `spawnid` IN (517,518,2251,2252,2253,519,2254,2240,512,2241,516,2247,2248,2261,2260,521);

-- instance_bosses fixup
TRUNCATE `instance_bosses`;
INSERT INTO `instance_bosses` (`mapid`, `creatureid`, `trash`, `trash_respawn_override`) VALUES
   ('469','12435','','0'),
   ('469','13020','','0'),
   ('469','12017','','0'),
   ('469','11983','','0'),
   ('469','14601','','0'),
   ('469','11981','','0'),
   ('469','14020','','0'),
   ('469','11583','','0'),
   ('409','12118','','0'),
   ('409','11982','','0'),
   ('409','12259','','0'),
   ('409','12057','','0'),
   ('409','12264','','0'),
   ('409','12056','','0'),
   ('409','11988','','0'),
   ('409','12098','','0'),
   ('409','12018','','0'),
   ('409','11502','','0'),
   ('509','15348','','0'),
   ('509','15341','','0'),
   ('509','15340','','0'),
   ('509','15370','','0'),
   ('509','15369','','0'),
   ('509','15339','','0'),
   ('531','15517','','0'),
   ('531','15299','','0'),
   ('531','15511','','0'),
   ('531','15544','','0'),
   ('531','15543','','0'),
   ('531','15727','','0'),
   ('531','15275','','0'),
   ('531','15276','','0'),
   ('531','15509','','0'),
   ('531','15510','','0'),
   ('531','15516','','0'),
   ('531','15263','','0'),
   ('309','11382','','0'),
   ('309','15114','','0'),
   ('309','14834','','0'),
   ('309','14509','','0'),
   ('309','14507','','0'),
   ('309','14515','','0'),
   ('309','14517','','0'),
   ('309','14510','','0'),
   ('309','11380','','0'),
   ('568','23574','','0'),
   ('568','23577','','0'),
   ('568','24239','','0'),
   ('568','23578','','0'),
   ('568','23576','','0'),
   ('568','23863','','0'),
   ('550','19516','','0'),
   ('550','19514','','0'),
   ('550','18805','','0'),
   ('550','19622','','0'),
   ('580','24850','','0'),
   ('580','24892','','0'),
   ('580','24882','','0'),
   ('580','25038','','0'),
   ('580','25166','','0'),
   ('580','25165','','0'),
   ('580','25741','','0'),
   ('580','25840','','0'),
   ('580','25315','','0'),
   ('532','16181','','0'),
   ('532','16152','','0'),
   ('532','16151','','0'),
   ('532','15687','','0'),
   ('532','16457','','0'),
   ('532','16812','','0'),
   ('532','15691','','0'),
   ('532','16816','','0'),
   ('532','21752','','0'),
   ('532','21684','','0'),
   ('532','15688','','0'),
   ('532','16524','','0'),
   ('532','15689','','0'),
   ('532','17225','','0'),
   ('532','15690','','0'),
   ('544','17257','','0'),
   ('565','18831','','0'),
   ('565','19044','','0'),
   ('548','21216','','0'),
   ('548','21217','','0'),
   ('548','21215','','0'),
   ('548','21214','','0'),
   ('548','21213','','0'),
   ('548','21212','','0'),
   ('534','17767','','0'),
   ('534','17808','','0'),
   ('534','17888','','0'),
   ('534','17842','','0'),
   ('534','17968','','0'),
   ('564','22887','','0'),
   ('564','22898','','0'),
   ('564','22841','','0'),
   ('564','22871','','0'),
   ('564','22948','','0'),
   ('564','23418','','0'),
   ('564','22947','','0'),
   ('564','23426','','0'),
   ('564','22917','','0'),
   ('554','19219','','0'),
   ('554','19221','','0'),
   ('554','19220','','0'),
   ('553','17976','','0'),
   ('553','17975','','0'),
   ('553','17978','','0'),
   ('553','17980','','0'),
   ('553','17977','','0'),
   ('552','20870','','0'),
   ('552','20885','','0'),
   ('552','20886','','0'),
   ('552','20912','','0'),
   ('585','24723','','0'),
   ('585','24744','','0'),
   ('585','24560','','0'),
   ('585','24664','','0'),
   ('540','16807','','0'),
   ('540','20923','','0'),
   ('540','16809','','0'),
   ('540','16808','','0'),
   ('542','17381','','0'),
   ('542','17380','','0'),
   ('542','17377','','0'),
   ('543','17306','','0'),
   ('543','17308','','0'),
   ('543','17536','','0'),
   ('543','17537','','0'),
   ('546','17770','','0'),
   ('546','18105','','0'),
   ('546','17826','','0'),
   ('546','17882','','0'),
   ('545','17797','','0'),
   ('545','17796','','0'),
   ('545','17798','','0'),
   ('547','17941','','0'),
   ('547','17991','','0'),
   ('547','17942','','0'),
   ('269','17879','','0'),
   ('269','17880','','0'),
   ('269','17881','','0'),
   ('560','17848','','0'),
   ('560','17862','','0'),
   ('560','18096','','0'),
   ('555','18731','','0'),
   ('555','18667','','0'),
   ('555','18732','','0'),
   ('555','18708','','0'),
   ('556','18472','','0'),
   ('556','18473','','0'),
   ('556','23035','','0'),
   ('557','18341','','0'),
   ('557','18343','','0'),
   ('557','18344','','0'),
   ('557','22930','','0'),
   ('558','18371','','0'),
   ('558','18373','','0'),
   ('649','34797','','0'),
   ('649','35447','','0'),
   ('649','35448','','0'),
   ('649','35449','','0'),
   ('649','34497','','0'),
   ('649','35350','','0'),
   ('649','35351','','0'),
   ('649','35352','','0'),
   ('649','34496','','0'),
   ('649','35347','','0'),
   ('649','35348','','0'),
   ('649','35349','','0'),
   ('649','34564','','0'),
   ('649','34566','','0'),
   ('649','35615','','0'),
   ('649','35616','','0'),
   ('649','34780','','0'),
   ('649','35216','','0'),
   ('649','35268','','0'),
   ('649','35269','','0'),
   ('631','36612','','0'),
   ('631','36855','','0'),
   ('631','37813','','0'),
   ('631','36626','','0'),
   ('631','36627','','0'),
   ('631','36678','','0'),
   ('631','37970','','0'),
   ('631','37955','','0'),
   ('631','36853','','0'),
   ('631','36597','','0'),
   ('533','15956','','0'),
   ('533','15953','','0'),
   ('533','15952','','0'),
   ('533','15954','','0'),
   ('533','15936','','0'),
   ('533','16011','','0'),
   ('533','16061','','0'),
   ('533','16060','','0'),
   ('533','16064','','0'),
   ('533','16065','','0'),
   ('533','30549','','0'),
   ('533','16063','','0'),
   ('533','16028','','0'),
   ('533','15931','','0'),
   ('533','15932','','0'),
   ('533','15928','','0'),
   ('533','15989','','0'),
   ('533','15990','','0'),
   ('249','10184','','0'),
   ('616','28859','','0'),
   ('603','33113','','0'),
   ('603','33118','','0'),
   ('603','33186','','0'),
   ('603','33293','','0'),
   ('603','32857','','0'),
   ('603','32927','','0'),
   ('603','32867','','0'),
   ('603','32930','','0'),
   ('603','33515','','0'),
   ('603','32906','','0'),
   ('603','32845','','0'),
   ('603','33350','','0'),
   ('603','32865','','0'),
   ('603','33271','','0'),
   ('603','33288','','0'),
   ('603','32871','','0'),
   ('624','31125','','0'),
   ('624','33993','','0'),
   ('624','35013','','0'),
   ('624','10186','','0'),
   ('624','38433','','0'),
   ('624','10065','','0'),
   ('624','38434','','0'),
   ('615','30452','','0'),
   ('615','30451','','0'),
   ('615','30449','','0'),
   ('615','28860','','0'),
   ('724','39751','','0'),
   ('724','39746','','0'),
   ('724','39747','','0'),
   ('724','39863','','0'),
   ('724','39864','','0'),
   ('724','39944','','0'),
   ('724','39945','','0'),
   ('575','26668','','0'),
   ('575','26687','','0'),
   ('575','26693','','0'),
   ('575','26861','','0'),
   ('574','23953','','0'),
   ('574','24200','','0'),
   ('574','23954','','0'),
   ('599','27975','','0'),
   ('599','27977','','0'),
   ('599','27978','','0'),
   ('599','28234','','0'),
   ('602','28586','','0'),
   ('602','28587','','0'),
   ('602','28546','','0'),
   ('602','28923','','0'),
   ('608','29315','','0'),
   ('608','29316','','0'),
   ('608','29313','','0'),
   ('608','29266','','0'),
   ('608','29312','','0'),
   ('608','29314','','0'),
   ('608','31134','','0'),
   ('578','27654','','0'),
   ('578','27447','','0'),
   ('578','27655','','0'),
   ('578','27656','','0'),
   ('576','26731','','0'),
   ('576','26763','','0'),
   ('576','26794','','0'),
   ('576','26723','','0'),
   ('576','26796','','0'),
   ('576','26798','','0'),
   ('632','36497','','0'),
   ('632','36502','','0'),
   ('658','36494','','0'),
   ('658','36476','','0'),
   ('658','36658','','0'),
   ('668','38112','','0'),
   ('668','38113','','0'),
   ('668','37226','','0'),
   ('604','29304','','0'),
   ('604','29307','','0'),
   ('604','29305','','0'),
   ('604','29306','','0'),
   ('604','29932','','0'),
   ('600','26630','','0'),
   ('600','26631','','0'),
   ('600','27483','','0'),
   ('600','26632','','0'),
   ('650','34705','','0'),
   ('650','34702','','0'),
   ('650','34701','','0'),
   ('650','34657','','0'),
   ('650','34703','','0'),
   ('650','35572','','0'),
   ('650','35569','','0'),
   ('650','35571','','0'),
   ('650','35570','','0'),
   ('650','35617','','0'),
   ('650','35119','','0'),
   ('650','34928','','0'),
   ('650','35451','','0'),
   ('595','26529','','0'),
   ('595','26530','','0'),
   ('595','26532','','0'),
   ('595','26533','','0'),
   ('595','32273','','0'),
   ('601','28684','','0'),
   ('601','28921','','0'),
   ('601','29120','','0'),
   ('619','29309','','0'),
   ('619','29308','','0'),
   ('619','29310','','0'),
   ('619','29311','','0'),
   ('619','30258','','0');

-- Removed War Effort Volunteer's from spawn, Ahn'Qiraj event is unfortunately over since some years ago
DELETE FROM `creature_spawns` WHERE `entry` = '15663';

-- Removed AQWar Resource objects from spawn
DELETE FROM `gameobject_spawns` WHERE `entry` IN (180681,180598,180680,180679);

-- Removed a very lost, lonely anvil from Ironforge
DELETE FROM `gameobject_spawns` WHERE `id` = '54440';

-- The Grand Apothecary Putress in Shattrath City has been moved, and should no longer be in Shattrath City (New entry id as well, hence why I am removing him by entry http://www.wowhead.com/npc=31530)
DELETE FROM `creature_spawns` WHERE `entry` = '28318';

-- Whatever these Imps are, they shouldn't be spawned now
DELETE FROM `creature_spawns` WHERE `entry` = '34281';

-- Removed an incorrectly spawned Ahn'Qiraj Gong from the stairs outside the Scarab wall (The Scarab Dais)
DELETE FROM `gameobject_spawns` WHERE `id` = '55493';

-- Vaelastrasz the Corrupt is no longer surrounded by Death Talon Seether's
DELETE FROM `creature_spawns` WHERE `id` IN (58878,58870,58879,58877,58871,58876);

-- Removed an incorrect spawn of Vaelastrasz in Blackwing Lair (Different entry than the real one)
DELETE FROM `creature_spawns` WHERE `entry` = '10538';

-- Removed two large Orc Tents outside of Orgrimmar
DELETE FROM `gameobject_spawns` WHERE `id` = '56986';
DELETE FROM `gameobject_spawns` WHERE `id` = '56987';

-- Removed two incorrect and hostile Wolf spawns from The Crossroads (At the stables)
DELETE FROM `creature_spawns` WHERE `id` IN (135645,135646);

-- Reputation requirements for the quests of Eldara Dawnrunner
UPDATE `quests` SET `RequiredRepFaction` = '1960' WHERE `entry` IN (11554,11557,11555,11556);
UPDATE `quests` SET `RequiredRepValue` = '3000' WHERE `entry` = '11554';
UPDATE `quests` SET `RequiredRepValue` = '9000' WHERE `entry` = '11555';
UPDATE `quests` SET `RequiredRepValue` = '21000' WHERE `entry` = '11556';
UPDATE `quests` SET `RequiredRepValue` = '42000' WHERE `entry` = '11557';

-- Quest 'The Battle Must Go On' is no longer available before completing 'The Battle for the Sun's Reach Armory
UPDATE `quests` SET `RequiredQuest1` = '11538' WHERE `entry` = '11537';

-- Quest 'Distraction at the Dead Scar' is no longer available before completing 'The Air Strikes Must Continue'
UPDATE `quests` SET `RequiredQuest1` = '11532' WHERE `entry` = '11533';

-- Removed a very lost Flamewaker Healer from Molten Core
DELETE FROM `creature_spawns` WHERE `id` = '135866';

-- Deleted five very lost Flamewaker Elites from Molten Core
DELETE FROM `creature_spawns` WHERE `id` IN (135856,135862,135861,135857,135864);

-- Deleted Ragnaros from Molten Core (He is spawned by script)
DELETE FROM `creature_spawns` WHERE `entry` = '11502';

-- Removed Majordomo Executus, his minions and his chest from Molten Core (Script event)
DELETE FROM `creature_spawns` WHERE `id` IN (135863,136079,136080,136081,136082);
DELETE FROM `creature_spawns` WHERE `entry` = '12018';
DELETE FROM `gameobject_spawns` WHERE `entry` = '179703';

-- Removed Spirit of Minshina from spawn (Script)
DELETE FROM `creature_spawns` WHERE `entry` = '3289';
-- Removed two Hallucination from spawn (Script)
DELETE FROM `creature_spawns` WHERE `entry` = '10603';

-- update PVP status for some NPCs
UPDATE `creature_spawns` SET `bytes2` = `bytes2` | '256' WHERE `entry` IN ('12778', '12779', '19848', '23833', '23844', '23851', '24131', '24528', '25256', '26382', '26459', '27221', '27243', '27494', '27566', '27928', '29285', '29795', '29799', '30217', '30256', '30257', '30352', '30377', '30431', '30737', '30755', '31808', '31834', '32599', '34060', '34989', '37992', '37999', '38283', '38284', '38840', '38841', '68', '234', '240', '261', '382', '464', '469', '487', '489', '490', '494', '495', '499', '576', '727', '754', '826', '827', '828', '840', '853', '859', '861', '866', '869', '870', '876', '885', '886', '887', '888', '903', '932', '933', '934', '935', '936', '963', '999', '1001', '1064', '1070', '1089', '1090', '1091', '1098', '1099', '1100', '1101', '1204', '1276', '1277', '1278', '1279', '1280', '1281', '1283', '1329', '1330', '1331', '1332', '1334', '1335', '1336', '1338', '1340', '1343', '1423', '1434', '1436', '1475', '1721', '1736', '1737', '1739', '1741', '1756', '1976', '2041', '2142', '2386', '2405', '2464', '2506', '2507', '2508', '2509', '2511', '2512', '2515', '2516', '2518', '2525', '2612', '2621', '2738', '2860', '2910', '3083', '3084', '3190', '3210', '3211', '3212', '3213', '3214', '3215', '3218', '3291', '3296', '3297', '3469', '3501', '3502', '3626', '3681', '3836', '4262', '4444', '4624', '4979', '5081', '5085', '5184', '5523', '5546', '5547', '5569', '5595', '5706', '5732', '5747', '5952', '5953', '5999', '6086', '6087', '6237', '6781', '7489', '7730', '7865', '7939', '7980', '8096', '8147', '8151', '8154', '8155', '9047', '9177', '9238', '9460', '9525', '9560', '9565', '10036', '10038', '10638', '10676', '10682', '10696', '11023', '11050', '11099', '11102', '11180', '11190', '11276', '11701', '11822', '12047', '12160', '12338', '12786', '12787', '12903', '12996', '13076', '13839', '14284', '14285', '14304', '14363', '14365', '14375', '14378', '14379', '14380', '14423', '14439', '14441', '14730', '14893', '15126', '15127', '15128', '15130', '15137', '15184', '15350', '15371', '15440', '15441', '15442', '15443', '15444', '15612', '15613', '15615', '15616', '15617', '15903', '16221', '16222', '16378', '16541', '16733', '16921', '17549', '17703', '17765', '17766', '17890', '18020', '18021', '18022', '18023', '18024', '18025', '18026', '18027', '18028', '18029', '18031', '18032', '18034', '18038', '18103', '18549', '18568', '18800', '18815', '19951', '20672', '20674', '23550', '23565', '23636', '23713', '23823', '23831', '23836', '23839', '23842', '23859', '23860', '23862', '23891', '23906', '23908', '23911', '23935', '24040', '24045', '24046', '24052', '24053', '24054', '24055', '24057', '24058', '24066', '24067', '24081', '24086', '24088', '24089', '24090', '24106', '24111', '24118', '24123', '24125', '24127', '24129', '24135', '24141', '24142', '24147', '24148', '24149', '24154', '24155', '24157', '24164', '24176', '24186', '24188', '24191', '24327', '24330', '24333', '24341', '24342', '24343', '24347', '24348', '24349', '24350', '24356', '24357', '24359', '24362', '24376', '24390', '24531', '24532', '24534', '24535', '24634', '24702', '24703', '24717', '24718', '24719', '24720', '24750', '24751', '24807', '25194', '25235', '25237', '25238', '25240', '25242', '25243', '25247', '25258', '25259', '25261', '25272', '25273', '25274', '25275', '25276', '25277', '25278', '25279', '25280', '25286', '25288', '25289', '25327', '25334', '25335', '25338', '25374', '25379', '25380', '25381', '25394', '25437', '25438', '25439', '25440', '25446', '25459', '25477', '25602', '25604', '25606', '25607', '25617', '25702', '25705', '25729', '25783', '25808', '25809', '25810', '25811', '25812', '25819', '25978', '25982', '25983', '26044', '26109', '26112', '26156', '26157', '26158', '26159', '26160', '26170', '26179', '26180', '26181', '26182', '26184', '26185', '26186', '26187', '26194', '26205', '26217', '26226', '26228', '26229', '26233', '26234', '26374', '26375', '26379', '26380', '26381', '26387', '26388', '26392', '26415', '26437', '26448', '26456', '26474', '26485', '26523', '26599', '26600', '26634', '26645', '26649', '26652', '26680', '26697', '26707', '26709', '26718', '26720', '26721', '26725', '26779', '26780', '26817', '26851', '26859', '26870', '26877', '26878', '26880', '26881', '26900', '26901', '26903', '26904', '26905', '26906', '26907', '26908', '26909', '26910', '26911', '26912', '26913', '26914', '26915', '26916', '26932', '26934', '26936', '26938', '26939', '26941', '26944', '26945', '26950', '26951', '26952', '26953', '26954', '26955', '26956', '26957', '26958', '26959', '26960', '26961', '26962', '26963', '26964', '26968', '26969', '26972', '26973', '26974', '26975', '26976', '26977', '26978', '26980', '26981', '26982', '26984', '26985', '26986', '26987', '26988', '26989', '26990', '26991', '26992', '26993', '26994', '26995', '26996', '26997', '26998', '26999', '27000', '27001', '27038', '27039', '27040', '27041', '27042', '27043', '27044', '27045', '27106', '27107', '27108', '27110', '27136', '27137', '27138', '27140', '27141', '27142', '27143', '27144', '27145', '27146', '27147', '27148', '27149', '27150', '27151', '27155', '27156', '27157', '27158', '27159', '27160', '27161', '27162', '27163', '27164', '27167', '27172', '27173', '27174', '27176', '27178', '27181', '27182', '27183', '27184', '27185', '27186', '27187', '27188', '27189', '27190', '27193', '27194', '27195', '27204', '27248', '27250', '27251', '27314', '27316', '27317', '27318', '27361', '27414', '27416', '27422', '27423', '27425', '27432', '27440', '27441', '27451', '27456', '27463', '27464', '27468', '27475', '27482', '27484', '27495', '27497', '27500', '27501', '27509', '27511', '27516', '27518', '27519', '27521', '27532', '27536', '27537', '27538', '27543', '27560', '27582', '27661', '27665', '27671', '27673', '27677', '27704', '27708', '27713', '27748', '27749', '27751', '27758', '27760', '27784', '27788', '27843', '27844', '27857', '27872', '27904', '27906', '27930', '27935', '27938', '27940', '27943', '27948', '27950', '27953', '28031', '28054', '28065', '28070', '28160', '28175', '28177', '28178', '28179', '28205', '28228', '28247', '28261', '28262', '28263', '28264', '28347', '28355', '28383', '28390', '28391', '28392', '28393', '28394', '28405', '28486', '28487', '28488', '28489', '28490', '28491', '28624', '28674', '28675', '28676', '28677', '28687', '28690', '28691', '28692', '28693', '28694', '28696', '28697', '28698', '28699', '28700', '28701', '28702', '28703', '28704', '28705', '28706', '28707', '28708', '28714', '28715', '28716', '28718', '28721', '28722', '28723', '28725', '28726', '28727', '28728', '28742', '28771', '28774', '28776', '28790', '28791', '28792', '28794', '28796', '28797', '28798', '28799', '28827', '28828', '28829', '28830', '28832', '28889', '28951', '28956', '28958', '28990', '28991', '28992', '28994', '28995', '28997', '29016', '29019', '29043', '29139', '29141', '29142', '29143', '29152', '29155', '29156', '29191', '29202', '29203', '29205', '29207', '29208', '29212', '29233', '29250', '29251', '29252', '29253', '29254', '29255', '29259', '29277', '29282', '29478', '29480', '29491', '29493', '29494', '29495', '29496', '29497', '29499', '29505', '29506', '29507', '29508', '29509', '29510', '29511', '29512', '29513', '29514', '29523', '29527', '29528', '29529', '29530', '29532', '29535', '29537', '29538', '29547', '29548', '29583', '29628', '29636', '29640', '29641', '29702', '29703', '29712', '29715', '29716', '29729', '29740', '29743', '29744', '29745', '29751', '29953', '29965', '29966', '29973', '30039', '30058', '30067', '30104', '30189', '30239', '30241', '30244', '30253', '30254', '30255', '30263', '30265', '30269', '30271', '30281', '30290', '30433', '30472', '30569', '30604', '30605', '30607', '30715', '30723', '30724', '30726', '30729', '30730', '30739', '30740', '31033', '31036', '31052', '31053', '31054', '31078', '31091', '31106', '31107', '31108', '31109', '31151', '31153', '31177', '31238', '31247', '31273', '31304', '31805', '31807', '31882', '31891', '32169', '32170', '32172', '32190', '32216', '32223', '32287', '32301', '32302', '32337', '32371', '32411', '32451', '32474', '32509', '32514', '32515', '32516', '32533', '32538', '32564', '32565', '32566', '32600', '32601', '32668', '32669', '32675', '32676', '32677', '32678', '32679', '32680', '32681', '32683', '32684', '32685', '32686', '32687', '32688', '32689', '32690', '32691', '32692', '32693', '32723', '32726', '32727', '32728', '32729', '32730', '32731', '32732', '32733', '32734', '32735', '32736', '32737', '32738', '32739', '32741', '32773', '32774', '33018', '33019', '33027', '33059', '33060', '33062', '33063', '33067', '33109', '33167', '33264', '33434', '33435', '33543', '33571', '33580', '33581', '33583', '33586', '33587', '33588', '33589', '33590', '33591', '33594', '33596', '33597', '33598', '33599', '33600', '33601', '33602', '33603', '33629', '33643', '33644', '33669', '33780', '33854', '33866', '33871', '33872', '33996', '34038', '34043', '34063', '34075', '34078', '34081', '34179', '34252', '34526', '34528', '34955', '34973', '34976', '34978', '34983', '34985', '34986', '34987', '34988', '35008', '35068', '35073', '35090', '35093', '35098', '35100', '35131', '35132', '35133', '35135', '35281', '35496', '35497', '35498', '35500', '35587', '35596', '35597', '35598', '35599', '35600', '35601', '35602', '35603', '35611', '35612', '35790', '36213', '36217', '36224', '36225', '36273', '36517', '36557', '36558', '36624', '36642', '36656', '36657', '37029', '37032', '37072', '37119', '37120', '37187', '37189', '37190', '37200', '37589', '37687', '37688', '37689', '37696', '37915', '37928', '37965', '37967', '37991', '37996', '37997', '38054', '38181', '38182', '38194', '38316', '38858', '39371', '39372', '39509', '40160', '40413', '40607', '12780', '23840', '24139', '24195', '24209', '25244', '26666', '26935', '26979', '27139', '27540', '27576', '27791', '28989', '29476', '30233', '30238', '30259', '30261', '30610', '31701', '31737', '31832', '31833', '33698', '35070', '35102', '36226', '37993', '37998');

-- hacky fix for the quest Vorsh athe Lasher
UPDATE `quests` SET `ReqKillMobOrGOId1`='12940',`ReqKillMobOrGOCount1`='1' WHERE `entry`='6641';

-- Argent Peacekeeper with ranged weapons.
UPDATE `creature_spawns` SET `bytes2` = '258' WHERE `id` IN('132043', '132030', '132037', '132032', '132031', '132026', '132020', '132024', '132017', '132042', '132028', '132040', '132044', '132045', '132025', '132041', '132033', '132029', '132036', '132039', '132018', '132021', '132038', '132027', '132019');

-- Fixing level and health for Shadowglen Sentinel
UPDATE `creature_proto` SET `minlevel` = '65', `maxlevel` = '65', `minhealth` = '7688', `maxhealth` = '7688' WHERE `entry` = '12160';

-- Fixing level and health for Shadowprey Guardian
UPDATE `creature_proto` SET `minlevel` = '65', `maxlevel` = '65', `minhealth` = '11828', `maxhealth` = '11828' WHERE `entry` = '12338';

-- Fixing level for Custodian of Time
UPDATE `creature_proto` SET `minlevel` = '70', `maxlevel` = '70' WHERE `entry` = '20129';

-- Adding neutral guard type to Warden of Time
UPDATE `creature_proto` SET `guardtype` = '2' WHERE `entry` = '19951';

-- black moras fix. It must have heroic mode, requre heroic key and a quest.
UPDATE `worldmap_info` SET `type`=4,`minlevel_heroic`=70,`flags`=11,`required_quest`=10284,`heroic_keyid_1`=30635 WHERE `entry`=269;

-- Quest The Fate Of The Fallen. Now the quest item spell can be cast only on npc 32149
DELETE FROM `spelltargetconstraints` WHERE `SpellID` = '66719';
INSERT INTO `spelltargetconstraints` (`SpellID`,`TargetType`,`TargetID`) VALUES (66719,0,32149);

-- Quest Ally of the Netherwing. Fixing it to be blizzlike.
UPDATE `quests` SET `RewChoiceItemId1` = '31492', `RewChoiceItemId2` = '31490', `RewChoiceItemId3` = '31493', `RewChoiceItemId4` = '31491', `RewChoiceItemId5` = '31494', `RewChoiceItemCount1` = '1', `RewChoiceItemCount2` = '1', `RewChoiceItemCount3` = '1', `RewChoiceItemCount4` = '1', `RewChoiceItemCount5` = '1', `RewRepValue1` = '42000', `RewXP` = '19000' WHERE `entry` = '10870';
UPDATE `quests` SET `NextQuestID` = '10870' WHERE `entry` = '10872';

-- Updated ICC and Ruby Sanctum dungeon types
UPDATE `worldmap_info` SET `type` = '1', `flags` = '499' WHERE `entry` IN ('724', '631');

-- Some oversized anvils...
UPDATE `gameobject_spawns` SET `scale` = '1' WHERE `entry` IN (173065,173066,173094);

-- Deleting some not used graveyards
DELETE FROM `graveyards` WHERE `id` IN ('1','107');

-- Some initial worldstates, if you know some more, let me know, I guess there should be one for Silithus too?
INSERT INTO `worldstate_templates` (`map`, `zone`, `field`, `value`) VALUES
(530, 3483, 2476, 0),
(530, 3483, 2478, 0),
(530, 3483, 2490, 1),
(530, 3483, 2489, 1),
(530, 3483, 2473, 0),
(530, 3483, 2474, 0),
(530, 3483, 2472, 1),
(530, 3483, 2471, 0),
(530, 3483, 2470, 0),
(530, 3483, 2482, 1),
(530, 3483, 2480, 0),
(530, 3483, 2481, 0),
(530, 3483, 2485, 1),
(530, 3483, 2483, 0),
(530, 3483, 2484, 0),
(530, 3518, 2502, 0),
(530, 3518, 2503, 0),
(530, 3518, 2491, 0),
(530, 3518, 2493, 0);

-- Some gameobject spaawns' faction update
-- Generated by WhyDB changeset creator - table gameobject_spawns
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 5541;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 15631;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 15632;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 15633;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 15634;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 15635;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 15636;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 15637;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 15638;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 15639;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16818;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16819;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16820;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16821;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16822;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16823;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16824;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16825;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16826;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16827;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16828;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16829;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16830;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16831;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16832;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16833;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16834;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16835;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16836;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16837;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16838;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16839;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16840;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16841;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16842;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16843;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16844;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16845;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16846;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16847;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16848;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16849;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16850;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16851;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16852;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16853;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16854;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16855;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16856;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16857;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16858;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16859;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16860;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16861;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16862;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16863;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16864;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16865;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16866;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16867;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16868;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16869;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16870;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16871;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16872;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16873;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16874;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16875;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16876;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16877;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16878;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16879;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16880;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16881;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16882;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16883;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16884;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16885;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16886;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16887;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16888;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16889;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16890;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16891;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16892;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16893;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16894;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16895;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16896;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16897;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16898;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16899;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16900;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16901;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16902;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16903;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16904;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16905;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16906;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16907;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16908;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16909;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16910;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16911;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16912;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16913;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16914;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16915;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16916;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16917;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16918;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16919;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16920;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16921;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16922;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16923;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16924;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16925;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16926;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16927;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16928;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16929;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16930;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16931;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16932;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16933;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16934;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16935;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16936;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16937;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16938;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16939;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16940;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16941;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16942;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16943;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16944;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16945;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16946;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16947;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16948;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16949;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16950;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16951;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16952;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16953;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16954;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16955;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16956;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16957;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16958;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16959;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16960;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16961;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16962;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16963;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16964;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16965;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16966;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16967;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16968;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16969;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16970;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16971;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16972;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16973;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16974;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16975;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16976;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16977;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16978;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16979;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16980;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16981;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16982;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16983;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16984;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16985;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16986;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16987;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16988;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 16989;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 17558;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 17746;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 20258;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 20477;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 20478;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 20479;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 20480;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 20481;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 20482;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 20483;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 20484;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 20485;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 22510;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 23323;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 23326;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 23327;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 23697;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 23699;
UPDATE gameobject_spawns SET Faction = '1627' WHERE id = 31407;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 31478;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 31493;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 31494;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 33796;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 33890;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 34692;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36135;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36136;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36137;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36138;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36139;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36140;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36141;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36142;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36143;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36144;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36145;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36146;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36147;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36148;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36149;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36150;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36151;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36152;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36153;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36154;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36155;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36156;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36157;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36158;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36159;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36160;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36161;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36162;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36163;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36164;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36165;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36166;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36167;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36168;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36169;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36170;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36171;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36172;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36173;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36174;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36175;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36176;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36177;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36178;
UPDATE gameobject_spawns SET Faction = '101' WHERE id = 36179;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 37498;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 37600;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 38052;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 38055;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 38056;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 38057;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 38058;
UPDATE gameobject_spawns SET Faction = '1971' WHERE id = 38411;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 38480;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 39344;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39501;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39514;
UPDATE gameobject_spawns SET Faction = '1971' WHERE id = 39581;
UPDATE gameobject_spawns SET Faction = '1971' WHERE id = 39582;
UPDATE gameobject_spawns SET Faction = '1971' WHERE id = 39583;
UPDATE gameobject_spawns SET Faction = '1971' WHERE id = 39584;
UPDATE gameobject_spawns SET Faction = '1971' WHERE id = 39585;
UPDATE gameobject_spawns SET Faction = '1971' WHERE id = 39586;
UPDATE gameobject_spawns SET Faction = '1971' WHERE id = 39587;
UPDATE gameobject_spawns SET Faction = '1971' WHERE id = 39740;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 39746;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39865;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39866;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39867;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39868;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39869;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39870;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39871;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39872;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 39873;
UPDATE gameobject_spawns SET Faction = '1865' WHERE id = 40208;
UPDATE gameobject_spawns SET Faction = '1865' WHERE id = 40209;
UPDATE gameobject_spawns SET Faction = '1865' WHERE id = 40210;
UPDATE gameobject_spawns SET Faction = '1865' WHERE id = 40211;
UPDATE gameobject_spawns SET Faction = '1865' WHERE id = 40212;
UPDATE gameobject_spawns SET Faction = '1865' WHERE id = 40213;
UPDATE gameobject_spawns SET Faction = '1865' WHERE id = 40214;
UPDATE gameobject_spawns SET Faction = '1865' WHERE id = 40215;
UPDATE gameobject_spawns SET Faction = '1865' WHERE id = 40216;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 41996;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 41997;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 41998;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 41999;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42000;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42001;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42002;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42003;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42004;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42005;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42020;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42021;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42022;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42023;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42024;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42025;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42026;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 42027;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 42785;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 42786;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 42787;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 42788;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 42789;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 42790;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 45149;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 45371;
UPDATE gameobject_spawns SET Faction = '974' WHERE id = 45767;
UPDATE gameobject_spawns SET Faction = '974' WHERE id = 45768;
UPDATE gameobject_spawns SET Faction = '974' WHERE id = 45769;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 48820;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 48821;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49007;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49008;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49009;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49011;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49012;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49013;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49014;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49015;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49016;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49017;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49018;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49139;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49148;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49149;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 49303;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49358;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49359;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 49709;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49739;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 49773;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 49853;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 49858;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49868;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49869;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49870;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49881;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49883;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49884;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49886;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49887;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49891;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49893;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 49894;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 49899;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 49900;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 49901;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 49902;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 49904;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 49906;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 49907;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 49908;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 49910;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 49911;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 49912;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 50178;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 50179;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 50180;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 50181;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 50182;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 50183;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 50184;
UPDATE gameobject_spawns SET Faction = '1735' WHERE id = 50185;
UPDATE gameobject_spawns SET Faction = '1735' WHERE id = 50186;
UPDATE gameobject_spawns SET Faction = '1735' WHERE id = 50187;
UPDATE gameobject_spawns SET Faction = '1735' WHERE id = 50188;
UPDATE gameobject_spawns SET Faction = '1735' WHERE id = 50189;
UPDATE gameobject_spawns SET Faction = '1735' WHERE id = 50190;
UPDATE gameobject_spawns SET Faction = '1735' WHERE id = 50191;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 50216;
UPDATE gameobject_spawns SET Faction = '1735' WHERE id = 50228;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 50235;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 50821;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 50822;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 50831;
UPDATE gameobject_spawns SET Faction = '1924' WHERE id = 51172;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52393;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52394;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52395;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52396;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52397;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52398;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52416;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52418;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52419;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52420;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52421;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52422;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52423;
UPDATE gameobject_spawns SET Faction = '714' WHERE id = 52424;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 52790;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 53079;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 53081;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 53164;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 53185;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 53186;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 53187;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 53188;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 53189;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 53190;
UPDATE gameobject_spawns SET Faction = '102' WHERE id = 54047;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54207;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 54233;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54266;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54275;
UPDATE gameobject_spawns SET Faction = '4' WHERE id = 54288;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54305;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54349;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54350;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54374;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54387;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54390;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54437;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54447;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54448;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54458;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 54463;
UPDATE gameobject_spawns SET Faction = '4' WHERE id = 54465;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 54469;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 54729;
UPDATE gameobject_spawns SET Faction = '1735' WHERE id = 54738;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 54792;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 54837;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54860;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54861;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54862;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54863;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54864;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54865;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54866;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54867;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54868;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54869;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54870;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54871;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54872;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54873;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54874;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54875;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 54892;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 54899;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 54900;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 54918;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 54919;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 54920;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 54921;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54947;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54948;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54949;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54950;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54951;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54952;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54953;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54954;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54955;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54978;
UPDATE gameobject_spawns SET Faction = '116' WHERE id = 54980;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54981;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54983;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 54984;
UPDATE gameobject_spawns SET Faction = '116' WHERE id = 54985;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54986;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54987;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54988;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54989;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54990;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54991;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54992;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54993;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54994;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54995;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54996;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54997;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54998;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 54999;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55000;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55001;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55002;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55003;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55004;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55005;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55006;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55007;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55008;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55009;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55010;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55011;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55012;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55013;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55014;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55015;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55016;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55017;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55018;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55019;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55020;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55021;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55022;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55023;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55024;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55025;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55026;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55027;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55028;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55029;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55030;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55031;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55032;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55033;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 55037;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 55041;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 55044;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55089;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55090;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 55100;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55114;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55115;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55116;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55117;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55118;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 55229;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 55230;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 55232;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 55233;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 55234;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55277;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55278;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55279;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55280;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55281;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55282;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55283;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55284;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55285;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55286;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55287;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55288;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55289;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55290;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55291;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55292;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55293;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55294;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55295;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55296;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55297;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55298;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55299;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55300;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55301;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55302;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55303;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55304;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55305;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55306;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55307;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55308;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55309;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55310;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55311;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55312;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55313;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55314;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55315;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55316;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55317;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55318;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55319;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55320;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55321;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55322;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55344;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55350;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55351;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55352;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55354;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55356;
UPDATE gameobject_spawns SET Faction = '54' WHERE id = 55357;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 55358;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 55393;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55396;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55411;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55490;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55491;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55492;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55494;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55495;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55496;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55497;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55498;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55499;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55500;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55501;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55502;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55503;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55504;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55505;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55506;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55507;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55508;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55509;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55510;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55511;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55512;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55513;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55514;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55515;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55516;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55517;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55518;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55519;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55520;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55521;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55522;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55523;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55537;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55538;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55539;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55546;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55547;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55571;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55572;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55573;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55574;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55575;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55576;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55577;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55578;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55579;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55580;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55581;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55582;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55583;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55584;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55585;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55586;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55587;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55588;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55589;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55590;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55591;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55592;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55593;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55594;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55595;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55596;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55597;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55598;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55599;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55600;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55601;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55602;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55603;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55604;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55605;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55606;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55607;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55608;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55643;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55644;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 55645;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 55646;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 55647;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 55648;
UPDATE gameobject_spawns SET Faction = '83' WHERE id = 55652;
UPDATE gameobject_spawns SET Faction = '84' WHERE id = 55653;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 55656;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 55657;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 55658;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55667;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55668;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55717;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55726;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55729;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55737;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55739;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55744;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55745;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55746;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55749;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55753;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55759;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55773;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55774;
UPDATE gameobject_spawns SET Faction = '102' WHERE id = 55775;
UPDATE gameobject_spawns SET Faction = '102' WHERE id = 55776;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55785;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 55876;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 55904;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55923;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 55931;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55938;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 55940;
UPDATE gameobject_spawns SET Faction = '54' WHERE id = 55944;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55951;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55952;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 55953;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55963;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55964;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55965;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55969;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55970;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 55971;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56103;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 56106;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 56125;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 56126;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 56127;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56132;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56174;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56175;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56176;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56177;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56195;
UPDATE gameobject_spawns SET Faction = '14' WHERE id = 56239;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56241;
UPDATE gameobject_spawns SET Faction = '94' WHERE id = 56242;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56259;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56260;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56261;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56262;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56263;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56264;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56265;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56266;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56267;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56268;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56269;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56270;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56271;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56272;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56273;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56274;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56275;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56276;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56277;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56278;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56279;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56280;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56281;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56282;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56283;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56284;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56285;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56286;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56287;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56288;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56289;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56290;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56292;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56293;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56294;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56295;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56296;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56297;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56298;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56299;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56300;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56301;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56302;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56303;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56304;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56305;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56306;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56307;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56308;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56309;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56310;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56311;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56312;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56313;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56314;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56315;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56316;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56317;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56318;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56319;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56320;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56321;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56322;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56323;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56324;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56325;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56326;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56327;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56328;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56329;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56330;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56331;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56332;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56333;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56334;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56335;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56336;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56337;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56338;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56339;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56340;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56341;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56342;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56343;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56344;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56345;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56346;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56347;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56348;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56349;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56350;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56351;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56352;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56353;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56354;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56355;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56356;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56357;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56358;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56359;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56360;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56361;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56362;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56363;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56364;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56365;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56366;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56367;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56368;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56369;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56370;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56371;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56372;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56373;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56374;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56375;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56376;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56377;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56378;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56379;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56380;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56381;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56382;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56383;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56384;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56385;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56386;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56387;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56388;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56389;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56390;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56391;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56392;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56393;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56394;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56395;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56396;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56397;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56398;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56399;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56400;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56401;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56402;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56403;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56404;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56405;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56406;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56407;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56408;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56409;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56410;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56411;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56412;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56413;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56414;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56415;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56416;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56417;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56418;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56419;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56420;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56421;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56422;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56423;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56424;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56425;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56426;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56427;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56428;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56429;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56430;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56431;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56432;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56433;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56434;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56435;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56436;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56437;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56438;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56439;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56450;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56451;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56452;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56453;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56454;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56457;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56458;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56459;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56460;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56461;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56462;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56463;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56464;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56465;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56466;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56467;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56468;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56469;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56470;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56471;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 56472;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 56473;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 56474;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 56475;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 56478;
UPDATE gameobject_spawns SET Faction = '1732' WHERE id = 56479;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56480;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56481;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56482;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56483;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56484;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56485;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56486;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56487;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56488;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56489;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56490;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56491;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56492;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56493;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56494;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56495;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56496;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56497;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56498;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56499;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56500;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56501;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56504;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56505;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56506;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56507;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56508;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56509;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56510;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56511;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56518;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56565;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56566;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56567;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56575;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56591;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56592;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56593;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56594;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56835;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56836;
UPDATE gameobject_spawns SET Faction = '2102' WHERE id = 56837;
UPDATE gameobject_spawns SET Faction = '2102' WHERE id = 56838;
UPDATE gameobject_spawns SET Faction = '2102' WHERE id = 56839;
UPDATE gameobject_spawns SET Faction = '2102' WHERE id = 56840;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56912;
UPDATE gameobject_spawns SET Faction = '114' WHERE id = 56913;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56924;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56926;
UPDATE gameobject_spawns SET Faction = '1375' WHERE id = 56927;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56972;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56973;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56974;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56975;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56976;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56977;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56978;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56979;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56980;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56981;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56982;
UPDATE gameobject_spawns SET Faction = '35' WHERE id = 56983;
-- End of changeset for - table gameobject_spawns (WhyDB changeset creator, processed lines: 1036)

-- Mails received after finishing some quests
-- Generated by WhyDB changeset creator - table quests
UPDATE quests SET MailTemplateId = '87', MailSendItem = '6529' WHERE entry = 1141;
UPDATE quests SET MailTemplateId = '103', MailDelaySecs = '86400', MailSendItem = '11422' WHERE entry = 3644;
UPDATE quests SET MailTemplateId = '99', MailDelaySecs = '86400', MailSendItem = '11423' WHERE entry = 3645;
UPDATE quests SET MailTemplateId = '104', MailDelaySecs = '86400', MailSendItem = '11422' WHERE entry = 3646;
UPDATE quests SET MailTemplateId = '100', MailDelaySecs = '86400', MailSendItem = '11423' WHERE entry = 3647;
UPDATE quests SET MailTemplateId = '98', MailDelaySecs = '86400', MailSendItem = '13158' WHERE entry = 5128;
UPDATE quests SET MailTemplateId = '101', MailDelaySecs = '86400' WHERE entry = 5237;
UPDATE quests SET MailTemplateId = '107', MailDelaySecs = '86400', MailSendItem = '15799' WHERE entry = 5238;
UPDATE quests SET MailTemplateId = '112', MailDelaySecs = '21600' WHERE entry = 6001;
UPDATE quests SET MailTemplateId = '116', MailDelaySecs = '21600' WHERE entry = 6002;
UPDATE quests SET MailTemplateId = '115', MailDelaySecs = '21600' WHERE entry = 6125;
UPDATE quests SET MailTemplateId = '114', MailDelaySecs = '21600' WHERE entry = 6130;
UPDATE quests SET MailTemplateId = '102', MailDelaySecs = '7200', MailSendItem = '17685' WHERE entry = 6962;
UPDATE quests SET MailTemplateId = '108', MailDelaySecs = '86400', MailSendItem = '17712' WHERE entry = 6984;
UPDATE quests SET MailTemplateId = '118', MailDelaySecs = '7200', MailSendItem = '17685' WHERE entry = 7025;
UPDATE quests SET MailTemplateId = '117', MailDelaySecs = '86400', MailSendItem = '17712' WHERE entry = 7045;
UPDATE quests SET MailTemplateId = '119', MailSendItem = '15564' WHERE entry = 7735;
UPDATE quests SET MailTemplateId = '120', MailSendItem = '15564' WHERE entry = 7738;
UPDATE quests SET MailTemplateId = '113', MailDelaySecs = '86400', MailSendItem = '19697' WHERE entry = 8149;
UPDATE quests SET MailTemplateId = '111', MailDelaySecs = '86400', MailSendItem = '19697' WHERE entry = 8150;
UPDATE quests SET MailTemplateId = '109', MailDelaySecs = '86400', MailSendItem = '19858' WHERE entry = 8240;
UPDATE quests SET MailTemplateId = '110', MailDelaySecs = '21600', MailSendItem = '20645' WHERE entry = 8287;
UPDATE quests SET MailTemplateId = '93', MailDelaySecs = '21600', MailSendItem = '20469' WHERE entry = 8323;
UPDATE quests SET MailTemplateId = '94', MailDelaySecs = '21600', MailSendItem = '20469' WHERE entry = 8324;
UPDATE quests SET MailTemplateId = '84', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8619;
UPDATE quests SET MailTemplateId = '85', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8635;
UPDATE quests SET MailTemplateId = '86', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8636;
UPDATE quests SET MailTemplateId = '88', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8642;
UPDATE quests SET MailTemplateId = '89', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8643;
UPDATE quests SET MailTemplateId = '90', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8644;
UPDATE quests SET MailTemplateId = '91', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8645;
UPDATE quests SET MailTemplateId = '92', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8646;
UPDATE quests SET MailTemplateId = '95', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8647;
UPDATE quests SET MailTemplateId = '96', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8648;
UPDATE quests SET MailTemplateId = '97', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8649;
UPDATE quests SET MailTemplateId = '121', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8650;
UPDATE quests SET MailTemplateId = '124', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8651;
UPDATE quests SET MailTemplateId = '125', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8652;
UPDATE quests SET MailTemplateId = '126', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8653;
UPDATE quests SET MailTemplateId = '127', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8654;
UPDATE quests SET MailTemplateId = '128', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8670;
UPDATE quests SET MailTemplateId = '129', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8671;
UPDATE quests SET MailTemplateId = '130', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8672;
UPDATE quests SET MailTemplateId = '131', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8673;
UPDATE quests SET MailTemplateId = '132', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8674;
UPDATE quests SET MailTemplateId = '133', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8675;
UPDATE quests SET MailTemplateId = '134', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8676;
UPDATE quests SET MailTemplateId = '135', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8677;
UPDATE quests SET MailTemplateId = '136', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8678;
UPDATE quests SET MailTemplateId = '137', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8679;
UPDATE quests SET MailTemplateId = '138', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8680;
UPDATE quests SET MailTemplateId = '139', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8681;
UPDATE quests SET MailTemplateId = '140', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8682;
UPDATE quests SET MailTemplateId = '141', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8683;
UPDATE quests SET MailTemplateId = '142', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8684;
UPDATE quests SET MailTemplateId = '143', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8685;
UPDATE quests SET MailTemplateId = '144', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8686;
UPDATE quests SET MailTemplateId = '145', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8688;
UPDATE quests SET MailTemplateId = '146', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8713;
UPDATE quests SET MailTemplateId = '147', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8714;
UPDATE quests SET MailTemplateId = '148', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8715;
UPDATE quests SET MailTemplateId = '149', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8716;
UPDATE quests SET MailTemplateId = '150', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8717;
UPDATE quests SET MailTemplateId = '151', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8718;
UPDATE quests SET MailTemplateId = '152', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8719;
UPDATE quests SET MailTemplateId = '153', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8720;
UPDATE quests SET MailTemplateId = '154', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8721;
UPDATE quests SET MailTemplateId = '155', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8722;
UPDATE quests SET MailTemplateId = '156', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8723;
UPDATE quests SET MailTemplateId = '157', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8724;
UPDATE quests SET MailTemplateId = '158', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8725;
UPDATE quests SET MailTemplateId = '159', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8726;
UPDATE quests SET MailTemplateId = '160', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8727;
UPDATE quests SET MailTemplateId = '122', MailDelaySecs = '172800', MailSendItem = '21216' WHERE entry = 8746;
UPDATE quests SET MailTemplateId = '161', MailDelaySecs = '172800', MailSendItem = '21216' WHERE entry = 8762;
UPDATE quests SET MailTemplateId = '168', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 8866;
UPDATE quests SET MailTemplateId = '180', MailSendItem = '24132' WHERE entry = 9671;
UPDATE quests SET MailTemplateId = '183', MailSendItem = '31698' WHERE entry = 10588;
UPDATE quests SET MailTemplateId = '184', MailDelaySecs = '21600' WHERE entry = 10966;
UPDATE quests SET MailTemplateId = '185', MailDelaySecs = '21600' WHERE entry = 10967;
UPDATE quests SET MailTemplateId = '193', MailDelaySecs = '21600' WHERE entry = 12067;
UPDATE quests SET MailTemplateId = '194', MailDelaySecs = '21600' WHERE entry = 12085;
UPDATE quests SET MailTemplateId = '209', MailDelaySecs = '21600' WHERE entry = 12420;
UPDATE quests SET MailTemplateId = '210', MailDelaySecs = '21600' WHERE entry = 12421;
UPDATE quests SET MailTemplateId = '234', MailDelaySecs = '21600' WHERE entry = 12422;
UPDATE quests SET MailTemplateId = '252', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13012;
UPDATE quests SET MailTemplateId = '237', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13013;
UPDATE quests SET MailTemplateId = '238', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13014;
UPDATE quests SET MailTemplateId = '239', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13015;
UPDATE quests SET MailTemplateId = '240', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13016;
UPDATE quests SET MailTemplateId = '255', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13017;
UPDATE quests SET MailTemplateId = '253', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13018;
UPDATE quests SET MailTemplateId = '254', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13019;
UPDATE quests SET MailTemplateId = '241', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13020;
UPDATE quests SET MailTemplateId = '256', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13021;
UPDATE quests SET MailTemplateId = '257', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13022;
UPDATE quests SET MailTemplateId = '258', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13023;
UPDATE quests SET MailTemplateId = '242', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13024;
UPDATE quests SET MailTemplateId = '243', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13025;
UPDATE quests SET MailTemplateId = '244', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13026;
UPDATE quests SET MailTemplateId = '245', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13027;
UPDATE quests SET MailTemplateId = '246', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13028;
UPDATE quests SET MailTemplateId = '247', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13029;
UPDATE quests SET MailTemplateId = '248', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13030;
UPDATE quests SET MailTemplateId = '249', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13031;
UPDATE quests SET MailTemplateId = '250', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13032;
UPDATE quests SET MailTemplateId = '251', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13033;
UPDATE quests SET MailTemplateId = '259', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13065;
UPDATE quests SET MailTemplateId = '260', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13066;
UPDATE quests SET MailTemplateId = '261', MailDelaySecs = '21600', MailSendItem = '21746' WHERE entry = 13067;
UPDATE quests SET MailTemplateId = '269', MailDelaySecs = '21600', MailSendItem = '46545' WHERE entry = 13959;
UPDATE quests SET MailTemplateId = '270', MailDelaySecs = '21600', MailSendItem = '46544' WHERE entry = 13960;
UPDATE quests SET MailTemplateId = '265', MailDelaySecs = '3600' WHERE entry = 14200;
-- End of changeset for - table quests (WhyDB changeset creator, processed lines: 113)

