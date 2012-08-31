/* Changeset 108
	* Applied all ArcEmu SQL updates
	* Slightly changed struct of our db_version table, so instead of revision number we store commit hash
	* Removed bad instance exit for Halls of Reflection
	* Dead creatures should look dead
	* Fixed emote state for Defias Miner
	* Deleted useless monstersay event
	* Some waypoint cleanup in Eversong Woods
	* Fixed quest chain Lightforge Iron
	* Fixed displayid of object 2066
	* Fixed Quest Reforging The Sword (for both alliance and horde)
	* Gormok The Impaler and Icehowl in argent tournament channel spells
	* Channeling for the buble in Coldarra
	* Dalaran buble
	* Added many new worldstates
	* Corrected Horde Warbringer and Alliance Brigadier General, still needs core support for BG weeks
	* Fixed quest: "Rescue the Survivors!" in Azuremyst Isle
	* Fixed missing gossip text for NPC #17073 Draenei Mourner
	* Added 2 more texts for Bazil Thredd
	* Mangletooth should cast spells on you in his quests, not teach them
	* Warlocks should start with Imp spell already learned
	* Areatriggers now check for level
	* Fixed quest Cuergos Gold
	* Fixed quest "Thirst Unending" (8346)
	* Fixed quest "Inoculation" (9303)
	* Fixed all Tame Beast hunter quests
	* Fixed bad required quests for Call of Water quests
	* Fixed gossip for Squire Rowe
	* Fixed some druid quests are now not auto-completed
	* Fixed Lore Keeper Protection Unit - should be flying
	* Fixed gossip for Archmage Pantarus (Ulduar)
	* Fixed gossip for Well Watcher Solanian (Sunstrider Isle)
	* Fixed The RP-GG NPC
	* Fixed gossip for Gatewatcher Aendor
	* Fixed gossip for Harassed Citizen
	* Hopefully fixed almost all PvP flagged NPCs
*/

ALTER TABLE `db_version` CHANGE `last_tested_arcemu_revision` `last_tested_arcemu_revision` TEXT NOT NULL;
UPDATE `db_version` SET `revision` = '158',
`changeset` = '108',
`last_tested_arcemu_revision` = '6b840f85e420c0d7ee777b52b75f99cd6b80700e',
`last_included_arcemu_update` = '2012-02-09_00-55_earth_shield.sql';

DROP TABLE IF EXISTS `arcemu_db_version`;
DROP TABLE IF EXISTS `world_db_version`;

CREATE TABLE `world_db_version`(
  `LastUpdate` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`LastUpdate`)
);

INSERT INTO `world_db_version`(`LastUpdate`) VALUES ( '2011-11-12_20-00_initial');

ALTER TABLE `items` CHANGE `faction` `flags2` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `loot_creatures` DROP `ffa_loot`;
ALTER TABLE `loot_fishing` DROP `ffa_loot`;
ALTER TABLE `loot_gameobjects` DROP `ffa_loot`;
ALTER TABLE `loot_items` DROP `ffa_loot`;
ALTER TABLE `loot_pickpocketing` DROP `ffa_loot`;
ALTER TABLE `loot_skinning` DROP `ffa_loot`;

DELETE FROM spell_effects_override WHERE spellId = 57840;
INSERT INTO `spell_effects_override` (`spellId`, `EffectCustomFlag`) VALUES ('57840', '4');
UPDATE `world_db_version` SET `LastUpdate`='2012-01-31_02-35_killing_spree' WHERE (`LastUpdate`='2011-11-12_20-00_initial');

UPDATE `spell_effects_override` SET `spellId`='19674', `MiscValue`='19677' WHERE (`spellId`='19647');
UPDATE `spell_effects_override` SET `MiscValue`='30652' WHERE (`spellId`='30654');
UPDATE `world_db_version` SET `LastUpdate`='2012-02-02_18-15_taming_quests' WHERE (`LastUpdate`='2012-01-31_02-35_killing_spree');

DELETE FROM spell_effects_override WHERE spellId = 379;
INSERT INTO `spell_effects_override` (`spellId`, `ImplicitTargetA`) VALUES ('379', '21');  -- Earth Shield Triggered Spell
UPDATE `world_db_version` SET `LastUpdate`='2012-02-09_00-55_earth_shield' WHERE (`LastUpdate`='2012-02-02_18-15_taming_quests');

DELETE FROM `areatriggers` WHERE `entry` = '5689';

UPDATE `creature_spawns` SET `bytes1` =  `bytes1`+7 WHERE `death_state` = '1' AND `bytes1` != `bytes1`|7;

UPDATE creature_spawns SET emote_state = 233 WHERE entry = 598 AND map = 36;

DELETE FROM npc_monstersay WHERE entry = 644;

DELETE FROM `creature_waypoints` WHERE `spawnid` = 62311; -- Well Watcher Solanian (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 79500; -- Kyrenna (Eversong Woods)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 65063; -- Silvermoon City Guardian
DELETE FROM `creature_waypoints` WHERE `spawnid` = 65174; -- Sathein (Eversong Woods)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 76672; -- Kinamisa (Eversong Woods)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 65169; -- Matheryn (Eversong Woods)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62907; -- Ranger Jaela (Eversong Woods)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62255; -- Jainthess Thelryn (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62256; -- Faraden Thelryn (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62313; -- Arcanist Helion (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62254; -- Raelis Dawnstar (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62312; -- Arcanist Ithanas (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 63003; -- Marsilla Dawnstar (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62252; -- Pathstalker Kariel (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 63034; -- Ranger Sallina (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62251; -- Matron Arena (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62247; -- Jethenis Sunstriker (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62246; -- Julia Sunstriker (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 62250; -- Summoner Teli'Larien (Sunstrider Isle)
DELETE FROM `creature_waypoints` WHERE `spawnid` = 63004; -- Jasmine Teli'Larien (Sunstrider Isle)

-- Eversong Ranger
DELETE FROM `creature_waypoints` WHERE `spawnid` = 64047;
DELETE FROM `creature_waypoints` WHERE `spawnid` = 64048;
DELETE FROM `creature_waypoints` WHERE `spawnid` = 64049;
DELETE FROM `creature_waypoints` WHERE `spawnid` = 64050;
DELETE FROM `creature_waypoints` WHERE `spawnid` = 64051;
DELETE FROM `creature_waypoints` WHERE `spawnid` = 64052;

DELETE FROM `creature_waypoints` WHERE `spawnid` IN ('62255', '62254', '62256', '62311', '62312', '62313', '63003', '62245', '63004', '62250', '65033', '65065', '65064', '65169', '76672', '65174', '64975', '65161', '84040', '80513', '84039', '84029', '84033', '84041', '80512', '65176', '64192', '64190', '64189', '64191', '64192', '64193', '64048', '64049', '64051', '64050', '64047', '64052', '62907', '74098', '62251', '63034', '62253', '62247', '64070', '64069', '67844', '62898', '64061', '64084', '64062', '64063', '64059', '64060', '64032', '62901', '79627', '86487', '64096', '65038', '65157', '65037', '62897', '65041', '65043', '65160', '62896', '66559', '65042', '65040', '65039', '64188', '62252', '62899', '66210', '62895', '65027');

-- Fixes the displayid of object 2066 (Should not be visible) Thanks TDB. Fixes the braziers in Hellfire citadel
UPDATE `gameobject_names` SET `DisplayID` = '0' WHERE `entry` = '2066';

-- Quest Reforging The Sword (alliance)
UPDATE `quests` SET `RequiredQuest1` = '24454' WHERE `entry` = '24461';
-- Quest Reforging The Sword (horde)
UPDATE `quests` SET `RequiredQuest1` = '24558' WHERE `entry` = '24559';

-- Gormok The Impaler and Icehowl in argent tournament channel spells.
UPDATE `creature_spawns` SET `channel_spell` = '43368', `channel_target_sqlid_creature` = '133173' WHERE `id` IN ('133181', '133182', '133183', '133179');
UPDATE `creature_spawns` SET `channel_spell` = '43368', `channel_target_sqlid_creature` = '133174' WHERE `id` IN ('133177', '133178', '133184', '133180');
-- Channeling for the buble in Coldarra
UPDATE `creature_spawns` SET `channel_spell` = '48310', `channel_target_sqlid_creature` = '111516' WHERE `id` = '110629';
UPDATE `creature_spawns` SET `channel_spell` = '48310', `channel_target_sqlid_creature` = '111517' WHERE `id` = '113990';
UPDATE `creature_spawns` SET `channel_spell` = '48310', `channel_target_sqlid_creature` = '111515' WHERE `id` = '113989';
-- Dalaran buble
UPDATE `creature_spawns` SET `displayid` = '11686' WHERE `id` IN ('111519', '111520', '111518');
UPDATE `creature_spawns` SET `channel_spell` = '48310', `channel_target_sqlid_creature` = '111519' WHERE `id` = '129888';
UPDATE `creature_spawns` SET `channel_spell` = '48310', `channel_target_sqlid_creature` = '111520' WHERE `id` = '129889';
UPDATE `creature_spawns` SET `channel_spell` = '48310', `channel_target_sqlid_creature` = '111518' WHERE `id` = '129890';

REPLACE INTO `worldstate_templates` (`map`, `zone`, `field`, `value`) VALUES
   -- Outland / Hellfire Peninsula
   ('530','3483','2476','0'),
   ('530','3483','2478','0'),
   ('530','3483','2489','1'),
   ('530','3483','2490','1'),
   ('530','3483','2474','0'),
   ('530','3483','2475','0'),
   ('530','3483','2473','0'),
   ('530','3483','2470','0'),
   ('530','3483','2471','0'),
   ('530','3483','2472','1'),
   ('530','3483','2480','0'),
   ('530','3483','2481','0'),
   ('530','3483','2482','1'),
   ('530','3483','2483','0'),
   ('530','3483','2484','0'),
   ('530','3483','2485','1'),
   -- Outland / Terokkar Forest
   ('530','3519','2621','0'),
   ('530','3519','2622','0'),
   ('530','3519','2623','0'),
   ('530','3519','2625','0'),
   ('530','3519','2620','1'),
   ('530','3519','2681','1'),
   ('530','3519','2682','0'),
   ('530','3519','2683','0'),
   ('530','3519','2684','0'),
   ('530','3519','2685','0'),
   ('530','3519','2686','1'),
   ('530','3519','2688','0'),
   ('530','3519','2689','0'),
   ('530','3519','2690','1'),
   ('530','3519','2691','0'),
   ('530','3519','2692','0'),
   ('530','3519','2693','1'),
   ('530','3519','2694','0'),
   ('530','3519','2695','0'),
   ('530','3519','2696','1'),
   -- Outland / Nagrand
   ('530','3518','2491','0'),
   ('530','3518','2502','0'),
   ('530','3518','2503','0'),
   ('530','3518','3493','0'),
   ('530','3518','2493','15'),
   ('530','3518','2659','0'),
   ('530','3518','2660','0'),
   ('530','3518','2661','0'),
   ('530','3518','2763','0'),
   ('530','3518','2671','1'),
   ('530','3518','2672','0'),
   ('530','3518','2673','0'),
   ('530','3518','2676','0'),
   ('530','3518','2677','0'),
   ('530','3518','2495','0'),
   ('530','3518','2494','0'),
   ('530','3518','2497','0'),
   ('530','3518','2762','0'),
   ('530','3518','2662','0'),
   ('530','3518','2663','0'),
   ('530','3518','2664','0'),
   ('530','3518','2760','0'),
   ('530','3518','2670','0'),
   ('530','3518','2668','0'),
   ('530','3518','2669','0'),
   ('530','3518','2761','0'),
   ('530','3518','2667','0'),
   ('530','3518','2665','0'),
   ('530','3518','2666','0'),
   -- Outland / Zangarmarsh
   ('530','3521','2527','0'),
   ('530','3521','2528','50'),
   ('530','3521','2529','70'),
   ('530','3521','2533','0'),
   ('530','3521','2534','50'),
   ('530','3521','2535','70'),
   ('530','3521','2555','0'),
   ('530','3521','2556','0'),
   ('530','3521','2557','1'),
   ('530','3521','2558','0'),
   ('530','3521','2559','0'),
   ('530','3521','2560','1'),
   ('530','3521','2644','0'),
   ('530','3521','2645','0'),
   ('530','3521','2646','1'),
   ('530','3521','2647','1'),
   ('530','3521','2648','0'),
   ('530','3521','2649','0'),
   ('530','3521','2650','0'),
   ('530','3521','2651','0'),
   ('530','3521','2652','1'),
   ('530','3521','2653','0'),
   ('530','3521','2655','0'),
   ('530','3521','2656','1'),
   ('530','3521','2657','1'),
   ('530','3521','2658','0'),
   -- Eastern Kingdoms / Eastern Plaguelands
   ('0','139','2327','0'),
   ('0','139','2328','0'),
   ('0','139','2354','0'),
   ('0','139','2356','0'),
   ('0','139','2359','0'),
   ('0','139','2360','0'),
   ('0','139','2361','1'),
   ('0','139','2352','1'),
   ('0','139','2362','0'),
   ('0','139','2363','0'),
   ('0','139','2372','0'),
   ('0','139','2373','0'),
   ('0','139','2366','0'),
   ('0','139','2353','1'),
   ('0','139','2370','0'),
   ('0','139','2371','0'),
   ('0','139','2374','0'),
   ('0','139','2375','0'),
   ('0','139','2378','0'),
   ('0','139','2379','0'),
   ('0','139','2355','1'),
   ('0','139','2367','0'),
   ('0','139','2426','0'),
   ('0','139','2427','50'),
   ('0','139','2428','20'),
   -- Kalimdor / Silithus
   ('1','1377','2313','0'),
   ('1','1377','2314','0'),
   ('1','1377','2317','200'),
   -- Arathi Basin
   ('529','3358','1842','1'),
   ('529','3358','1843','1'),
   ('529','3358','1844','1'),
   ('529','3358','1845','1'),
   ('529','3358','1846','1'),
   ('529','3358','1776','0'),
   ('529','3358','1777','0'),
   ('529','3358','1778','0'),
   ('529','3358','1779','0'),
   ('529','3358','1780','1600'),
   ('529','3358','1767','0'),
   ('529','3358','1768','0'),
   ('529','3358','1769','0'),
   ('529','3358','1770','0'),
   ('529','3358','1772','0'),
   ('529','3358','1773','0'),
   ('529','3358','1774','0'),
   ('529','3358','1775','0'),
   ('529','3358','1782','0'),
   ('529','3358','1783','0'),
   ('529','3358','1784','0'),
   ('529','3358','1785','0'),
   ('529','3358','1787','0'),
   ('529','3358','1788','0'),
   ('529','3358','1789','0'),
   ('529','3358','1790','0'),
   ('529','3358','1792','0'),
   ('529','3358','1793','0'),
   ('529','3358','1794','0'),
   ('529','3358','1795','0'),
   -- Warsong Gulch
   ('489','3277','2338','1'),
   ('489','3277','2339','1'),
   ('489','3277','1581','0'),
   ('489','3277','1582','0'),
   ('489','3277','1601','3'),
   -- Alterac Valley
   ('30','2597','3128','600'),
   ('30','2597','3133','1'),
   ('30','2597','3134','1'),
   ('30','2597','1325','1'),
   ('30','2597','1326','0'),
   ('30','2597','1327','0'),
   ('30','2597','1328','0'),
   ('30','2597','1333','1'),
   ('30','2597','1334','0'),
   ('30','2597','1335','0'),
   ('30','2597','1336','0'),
   ('30','2597','1301','0'),
   ('30','2597','1302','1'),
   ('30','2597','1303','0'),
   ('30','2597','1304','0'),
   ('30','2597','1966','1'),
   ('30','2597','1341','0'),
   ('30','2597','1342','0'),
   ('30','2597','1343','0'),
   ('30','2597','1344','0'),
   ('30','2597','1355','0'),
   ('30','2597','1356','0'),
   ('30','2597','1357','1'),
   ('30','2597','1358','0'),
   ('30','2597','1359','0'),
   ('30','2597','1360','1'),
   ('30','2597','1346','0'),
   ('30','2597','1347','1'),
   ('30','2597','1348','0'),
   ('30','2597','1349','0'),
   ('30','2597','1337','0'),
   ('30','2597','1338','1'),
   ('30','2597','1339','0'),
   ('30','2597','1340','0'),
   ('30','2597','1329','0'),
   ('30','2597','1330','1'),
   ('30','2597','1331','0'),
   ('30','2597','1332','0'),
   ('30','2597','1361','1'),
   ('30','2597','1370','0'),
   ('30','2597','1378','0'),
   ('30','2597','1362','1'),
   ('30','2597','1371','0'),
   ('30','2597','1379','0'),
   ('30','2597','1363','1'),
   ('30','2597','1372','0'),
   ('30','2597','1380','0'),
   ('30','2597','1364','1'),
   ('30','2597','1373','0'),
   ('30','2597','1381','0'),
   ('30','2597','1368','0'),
   ('30','2597','1385','1'),
   ('30','2597','1390','0'),
   ('30','2597','1367','0'),
   ('30','2597','1384','1'),
   ('30','2597','1389','0'),
   ('30','2597','1366','0'),
   ('30','2597','1383','1'),
   ('30','2597','1388','0'),
   ('30','2597','1365','0'),
   ('30','2597','1382','1'),
   ('30','2597','1387','0'),
   ('30','2597','3127','600'),
   -- Eye of the Storm
   ('566','3820','2718','0'),
   ('566','3820','2719','0'),
   ('566','3820','2720','40'),
   ('566','3820','2722','1'),
   ('566','3820','2723','0'),
   ('566','3820','2724','0'),
   ('566','3820','2725','1'),
   ('566','3820','2726','0'),
   ('566','3820','2727','0'),
   ('566','3820','2728','1'),
   ('566','3820','2729','0'),
   ('566','3820','2730','0'),
   ('566','3820','2731','1'),
   ('566','3820','2732','0'),
   ('566','3820','2733','0'),
   ('566','3820','2749','0'),
   ('566','3820','2750','0'),
   ('566','3820','2752','0'),
   ('566','3820','2753','0'),
   ('566','3820','2757','1'),
   ('566','3820','2769','1'),
   ('566','3820','2770','1'),
   -- Nagrand Arena
   ('559','3698','2577','1'),
   ('559','3698','3600','0'),
   ('559','3698','3601','0'),
   -- Blade's Edge Arena
   ('562','3702','2547','1'),
   ('562','3702','3600','0'),
   ('562','3702','3601','0'),
   -- Ruins of Lordaeron
   ('572','3968','3002','1'),
   ('572','3968','3600','0'),
   ('572','3968','3601','0'),
   -- The Escape From Durnholde
   ('560','2367','2436','0'),
   -- Northrend / lake Wintergrasp
   ('571','4197','3808','0'),
   ('571','4197','3807','0'),
   ('571','4197','3806','0'),
   ('571','4197','3706','1'),
   ('571','4197','3705','1'),
   ('571','4197','3704','1'),
   ('571','4197','3703','1'),
   ('571','4197','3702','1'),
   ('571','4197','3701','4'),
   ('571','4197','3700','4'),
   ('571','4197','3699','4'),
   ('571','4197','3805','0'),
   ('571','4197','3804','0'),
   ('571','4197','3698','4'),
   ('571','4197','3799','0'),
   ('571','4197','3798','0'),
   ('571','4197','3797','0'),
   ('571','4197','3796','0'),
   ('571','4197','3795','0'),
   ('571','4197','3794','0'),
   ('571','4197','3793','0'),
   ('571','4197','3792','0'),
   ('571','4197','3791','0'),
   ('571','4197','3790','0'),
   ('571','4197','3788','0'),
   ('571','4197','3781','0'),
   ('571','4197','3779','0'),
   ('571','4197','3778','0'),
   ('571','4197','3777','0'),
   ('571','4197','3776','0'),
   ('571','4197','3775','0'),
   ('571','4197','3774','0'),
   ('571','4197','3773','4'),
   ('571','4197','3772','4'),
   ('571','4197','3771','4'),
   ('571','4197','3770','4'),
   ('571','4197','3769','4'),
   ('571','4197','3768','4'),
   ('571','4197','3767','4'),
   ('571','4197','3766','4'),
   ('571','4197','3765','4'),
   ('571','4197','3764','4'),
   ('571','4197','3763','4'),
   ('571','4197','3762','4'),
   ('571','4197','3761','4'),
   ('571','4197','3760','4'),
   ('571','4197','3759','4'),
   ('571','4197','3758','4'),
   ('571','4197','3757','4'),
   ('571','4197','3756','4'),
   ('571','4197','3755','4'),
   ('571','4197','3754','4'),
   ('571','4197','3753','4'),
   ('571','4197','3752','4'),
   ('571','4197','3751','4'),
   ('571','4197','3750','4'),
   ('571','4197','3749','4'),
   ('571','4197','3748','0'),
   ('571','4197','3747','0'),
   ('571','4197','3746','0'),
   ('571','4197','3745','0'),
   ('571','4197','3744','0'),
   ('571','4197','3743','0'),
   ('571','4197','3742','0'),
   ('571','4197','3741','0'),
   ('571','4197','3739','0'),
   ('571','4197','3738','0'),
   ('571','4197','3737','0'),
   ('571','4197','3731','0'),
   ('571','4197','3730','0'),
   ('571','4197','3729','0'),
   ('571','4197','3728','0'),
   ('571','4197','3727','0'),
   ('571','4197','3726','0'),
   ('571','4197','3725','0'),
   ('571','4197','3724','0'),
   ('571','4197','3723','0'),
   ('571','4197','3714','4'),
   ('571','4197','3713','4'),
   ('571','4197','3712','4'),
   ('571','4197','3711','4'),
   ('571','4197','3801','1'),
   ('571','4197','3802','1'),
   ('571','4197','3803','0'),
   ('571','4197','3710','0'),
   ('571','4197','3681','0'),
   ('571','4197','3680','0'),
   ('571','4197','3491','0'),
   ('571','4197','3490','0'),
   ('571','4197','3809','0'),
   ('571','4197','3810','0'),
   ('571','4197','3811','0'),
   ('571','4197','3812','0'),
   ('571','4197','3813','0'),
   ('571','4197','4354','30'),
   ('571','4197','3467','50'),
   ('571','4197','3468','60'),
   ('571','4197','3501','0'),
   ('571','4197','3502','50'),
   ('571','4197','3508','60'),
   ('571','4197','3466','0'),
   ('571','4197','3740','0'),
   -- Strand of the Ancients
   ('607','4384','3623','1'),
   ('607','3623','3620','1'),
   ('607','3623','3617','1'),
   ('607','3623','3623','1'),
   ('607','3623','3638','1'),
   ('607','4384','3849','1'),
   ('607','4384','4352','0'),
   ('607','4384','4353','0'),
   ('607','4384','3614','1'),
   ('607','4384','3617','1'),
   ('607','4384','3620','1'),
   ('607','4384','3638','1'),
   ('607','4384','3635','0'),
   ('607','4384','3636','0'),
   ('607','4384','3637','0'),
   ('607','4384','3627','1'),
   ('607','4384','3626','1'),
   ('607','4384','3629','0'),
   ('607','4384','3628','0'),
   ('607','4384','3631','0'),
   ('607','4384','3630','0'),
   ('607','4384','3632','0'),
   ('607','4384','3633','0'),
   ('607','4384','3634','0'),
   ('607','4384','3536','0'),
   ('607','4384','3537','0'),
   ('607','4384','3571','0'),
   ('607','4384','3559','1'),
   ('607','4384','3560','1'),
   ('607','4384','3561','1'),
   ('607','4384','3564','0'),
   ('607','4384','3565','0'),
   -- Isle of Conquest
   ('628','4710','4221','1'),
   ('628','4710','4222','1'),
   ('628','4710','4226','300'),
   ('628','4710','4227','300'),
   ('628','4710','4317','1'),
   ('628','4710','4318','1'),
   ('628','4710','4319','1'),
   ('628','4710','4328','1'),
   ('628','4710','4327','1'),
   ('628','4710','4326','1'),
   ('628','4710','4322','0'),
   ('628','4710','4321','0'),
   ('628','4710','4320','0'),
   ('628','4710','4323','0'),
   ('628','4710','4324','0'),
   ('628','4710','4325','0'),
   ('628','4710','4301','1'),
   ('628','4710','4305','0'),
   ('628','4710','4302','0'),
   ('628','4710','4304','0'),
   ('628','4710','4303','0'),
   ('628','4710','4296','1'),
   ('628','4710','4300','0'),
   ('628','4710','4297','0'),
   ('628','4710','4299','0'),
   ('628','4710','4298','0'),
   ('628','4710','4306','1'),
   ('628','4710','4310','0'),
   ('628','4710','4307','0'),
   ('628','4710','4309','0'),
   ('628','4710','4308','0'),
   ('628','4710','4311','1'),
   ('628','4710','4315','0'),
   ('628','4710','4312','0'),
   ('628','4710','4314','0'),
   ('628','4710','4313','0'),
   ('628','4710','4294','1'),
   ('628','4710','4228','0'),
   ('628','4710','4293','0'),
   ('628','4710','4229','0'),
   ('628','4710','4230','0'),
   ('628','4710','4341','0'),
   ('628','4710','4342','0'),
   ('628','4710','4343','0'),
   ('628','4710','4339','1'),
   ('628','4710','4340','0'),
   ('628','4710','4346','0'),
   ('628','4710','4347','0'),
   ('628','4710','4348','0'),
   ('628','4710','4344','0'),
   ('628','4710','4345','1'),
   -- The Culling of Stratholme
   ('595','411','3479','0'),
   ('595','411','3480','0'),
   ('595','411','3504','0'),
   ('595','411','3931','25'),
   ('595','411','3932','0'),
   -- Ulduar / Algalon timer.
   ('603','4273','4132','0'),
   ('603','4273','4131','0'),
   -- Icecrown Citadel
   ('631','4812','4903','0'),
   ('631','4812','4131','30'),
   ('631','4812','4940','0'),
   ('631','4812','4941','0'),
   ('631','4812','4942','0'),
   -- The Ruby Sanctum
   ('724','4987','5051','0'),
   ('724','4987','5049','0'),
   ('724','4987','5050','0'),
   -- Trial of the Crusader
   ('649','4722','4390','0'),
   ('649','4722','4389','20'),
   -- Violet Hold
   ('608','4415','3816','0'),
   ('608','4415','3815','100'),
   ('608','4415','3810','0'),
   -- The Oculus
   ('578','4228','3524','1'),
   ('578','4228','3486','10'),
   -- Halls of Reflection
   ('668','4820','4884','0'),
   ('668','4820','4882','0'),
   -- Ebon Hold
   ('609','4298','3605','0'),
   ('609','4298','3603','1'),
   ('609','4298','3604','10'),
   ('609','4298','3592','0'),
   ('609','4298','3590','0'),
   ('609','4298','3591','0'),
   -- Zul'Aman
   ('568','3805','3104','0'),
   ('568','3805','3106','0'),
   -- The Battle for Mount Hyjal
   ('534','3606','2453','0'),
   ('534','3606','2486','0'),
   ('534','3606','2454','0'),
   ('534','3606','2842','0'),
   -- The Black Morass
   ('269','2366','2541','0'),
   ('269','2366','2540','100'),
   ('269','2366','2784','0');
REPLACE INTO `worldstate_templates` (`map`, `zone`, `field`, `value`) VALUES
-- Ulduar
   ('603', '4445', '4195', '1'),
   ('603', '4445', '4196', '1'),
   ('603', '4445', '4197', '1'),
   ('603', '4273', '4053', '1'),
-- COS markers
   ('595', '4100', '3585', '0'),
   ('595', '4100', '3584', '0'),
   ('595', '4100', '3583', '0'),
   ('595', '4100', '3582', '0'),
   ('595', '4100', '3581', '0'),
-- Silithus Sandworm
   ('1', '1377', '2325', '0'),
   ('1', '1377', '2324', '0'),
   ('1', '1377', '2323', '0'),
   ('1', '1377', '2322', '0'),
-- Under atack!
   ('0', '139', '2264', '0'),
   ('1', '0', '2263', '0'),
   ('0', '46', '2262', '0'),
   ('0', '4', '2261', '0'),
   ('1', '0', '2260', '0'),
   ('1', '0', '2259', '0'),
  -- Missed pvp activity in wintergrasp
   ('571', '4253', '3776', '0'),
-- States for Eastern Plaguelands pvp
   ('0', '139', '2376', '0'),
   ('0', '139', '2377', '0'),
   ('0', '139', '2357', '0'),
   ('0', '139', '2358', '0'),
   ('0', '139', '2364', '0'),
   ('0', '139', '2365', '0'),
   ('0', '139', '2369', '0'),
   ('0', '139', '2368', '0'),
-- States for Alterrac Valley
   ('30', '0', '1375', '0'),
   ('30', '0', '1374', '0'),
   ('30', '0', '1393', '0'),
   ('30', '0', '1395', '0'),
   ('30', '0', '1376', '0'),
   ('30', '0', '1665', '0'),
   ('30', '0', '1377', '0'),
   ('30', '0', '1394', '0'),
   ('30', '0', '1392', '0'),
-- States for Isle of Quel'Danas
   ('530', '4080', '3414', '1'),
   ('530', '4080', '3415', '0'),
   ('530', '4080', '3416', '1'),
   ('530', '4080', '3417', '0'),
   ('530', '4080', '3418', '1'),
   ('530', '4080', '3419', '0'),
-- In Conflict States for EOTS
   ('566', '3820', '2735', '0'),
   ('566', '3820', '2736', '0'),
   ('566', '3820', '2738', '0'),
   ('566', '3820', '2737', '0'),
   ('566', '3820', '2739', '0'),
   ('566', '3820', '2740', '0'),
   ('566', '3820', '2741', '0'),
   ('566', '3820', '2742', '0'),
-- UI worldstate for the wotlk arenas:
   ('618', '4408', '3610', '1'),
   ('618', '4408', '3600', '0'),
   ('618', '4408', '3601', '0'),
   ('617', '4378', '3610', '1'),
   ('617', '4378', '3600', '0'),
   ('617', '4378', '3601', '0');

-- quest chain lightforge iron
UPDATE `quests` SET `RemoveQuests` = "526" WHERE `entry` = 324;
UPDATE `quests` SET `RequiredQuest1` = 321 WHERE `entry` = 526;
UPDATE `quests` SET `RemoveQuests` = "324" WHERE `entry` = 526;

-- Horde Warbringer
DELETE FROM vendors WHERE entry = 15350;
INSERT INTO vendors VALUES
(15350, 54637, 1, 0, 0, 2991),
(15350, 54637, 1, 0, 0, 2992),
(15350, 54637, 1, 0, 0, 2993),
(15350, 54637, 1, 0, 0, 2994),
(15350, 54637, 1, 0, 0, 2995),
(15350, 54637, 1, 0, 0, 2996);

-- Alliance Brigadier General
DELETE FROM vendors WHERE entry = 15351;
INSERT INTO vendors VALUES
(15351, 54637, 1, 0, 0, 2991),
(15351, 54637, 1, 0, 0, 2992),
(15351, 54637, 1, 0, 0, 2993),
(15351, 54637, 1, 0, 0, 2994),
(15351, 54637, 1, 0, 0, 2995),
(15351, 54637, 1, 0, 0, 2996);

-- Horde Warbringer and Alliance Brigadier General npc flags
UPDATE creature_proto SET npcflags = 131 WHERE entry IN (15350, 15351);

-- Added questst which should be started from Horde Warbringer.
-- This is still not full blizzlike, but it can't be done blizzlike with current system
DELETE FROM creature_quest_starter WHERE id = 15350;
INSERT INTO creature_quest_starter VALUES
(15350, 11339),
(15350, 11340),
(15350, 11341),
(15350, 11342);

-- Same for Alliance Brigadier General
DELETE FROM creature_quest_starter WHERE id = 15351;
INSERT INTO creature_quest_starter VALUES
(15351, 11335),
(15351, 11336),
(15351, 11337),
(15351, 11338);

-- Quests should be finished directly in battleground, after winning BG
DELETE FROM creature_quest_finisher WHERE id IN (15350, 15351);

-- Quest: "Rescue the Survivors!" in Azuremyst Isle
UPDATE `quests` SET `ReqCastSpellId1` = '28880' WHERE `entry` = '9283';

-- Missing gossip text for NPC #17073 Draenei Mourner
REPLACE INTO `npc_gossip_textid` (`creatureid`, `textid`) VALUES (17073, 8780);

-- Added 2 more texts for Bazil Thredd
UPDATE `npc_monstersay` SET `text1`='More of the warden\'s errand boys!', `text2`='Tell the warden this prison is ours now! ' WHERE `entry`=1716;

UPDATE `quests` SET `requiredquest1` = 552 WHERE `entry` = 553;
UPDATE `quests` SET `requiredquest1` = 918 WHERE `entry` = 927;
UPDATE `quests` SET `requiredquest1` = 918 WHERE `entry` = 931;
UPDATE `quests` SET `requiredquest1` = 10211 WHERE `entry` = 10551;
UPDATE `quests` SET `requiredquest1` = 10211 WHERE `entry` = 10552;
UPDATE `quests` SET `requiredquest1` = 11285 WHERE `entry` = 11303;
UPDATE `quests` SET `requiredquest1` = 11511 WHERE `entry` = 11568;
UPDATE `quests` SET `requiredquest1` = 11644 WHERE `entry` = 11651;
UPDATE `quests` SET `requiredquest1` = 11872 WHERE `entry` = 11892;
UPDATE `quests` SET `requiredquest1` = 12091 WHERE `entry` = 12095;
UPDATE `quests` SET `requiredquest1` = 12125 WHERE `entry` = 12132;
UPDATE `quests` SET `requiredquest1` = 12307 WHERE `entry` = 12300;
UPDATE `quests` SET `requiredquest1` = 12525 WHERE `entry` = 12520;
UPDATE `quests` SET `requiredquest1` = 12534 WHERE `entry` = 12532;
UPDATE `quests` SET `requiredquest1` = 12535 WHERE `entry` = 12536;
UPDATE `quests` SET `requiredquest1` = 12538 WHERE `entry` = 12539;
UPDATE `quests` SET `requiredquest1` = 12525 WHERE `entry` = 12549;
UPDATE `quests` SET `requiredquest1` = 12520 WHERE `entry` = 12551;
UPDATE `quests` SET `requiredquest1` = 12575 WHERE `entry` = 12577;
UPDATE `quests` SET `requiredquest1` = 12579 WHERE `entry` = 12581;
UPDATE `quests` SET `requiredquest1` = 12525 WHERE `entry` = 12589;
UPDATE `quests` SET `requiredquest1` = 12556 WHERE `entry` = 12595;
UPDATE `quests` SET `requiredquest1` = 12605 WHERE `entry` = 12607;
UPDATE `quests` SET `requiredquest1` = 12660 WHERE `entry` = 12620;
UPDATE `quests` SET `requiredquest1` = 12549 WHERE `entry` = 12634;
UPDATE `quests` SET `requiredquest1` = 12549 WHERE `entry` = 12651;
UPDATE `quests` SET `requiredquest1` = 12603 WHERE `entry` = 12658;
UPDATE `quests` SET `requiredquest1` = 12603 WHERE `entry` = 12681;
UPDATE `quests` SET `requiredquest1` = 12525 WHERE `entry` = 12696;
UPDATE `quests` SET `requiredquest1` = 12717 WHERE `entry` = 12723;
UPDATE `quests` SET `requiredquest1` = 12520 WHERE `entry` = 12804;
UPDATE `quests` SET `requiredquest1` = 12832 WHERE `entry` = 12821;
UPDATE `quests` SET `requiredquest1` = 12836 WHERE `entry` = 12828;
UPDATE `quests` SET `requiredquest1` = 12824 WHERE `entry` = 12833;
UPDATE `quests` SET `requiredquest1` = 12824 WHERE `entry` = 12862;
UPDATE `quests` SET `requiredquest1` = 13417 WHERE `entry` = 12869;
UPDATE `quests` SET `requiredquest1` = 13039 WHERE `entry` = 13044;
UPDATE `quests` SET `requiredquest1` = 13005 WHERE `entry` = 13047;
UPDATE `quests` SET `requiredquest1` = 12824 WHERE `entry` = 13060;
UPDATE `quests` SET `requiredquest1` = 13163 WHERE `entry` = 13164;
UPDATE `quests` SET `requiredquest1` = 13829 WHERE `entry` = 13673;
UPDATE `quests` SET `requiredquest1` = 13829 WHERE `entry` = 13674;
UPDATE `quests` SET `requiredquest1` = 13829 WHERE `entry` = 13675;
UPDATE `quests` SET `requiredquest1` = 13829 WHERE `entry` = 13676;
UPDATE `quests` SET `requiredquest1` = 13829 WHERE `entry` = 13677;
UPDATE `quests` SET `requiredquest1` = 6582 WHERE `entry` = 6585;
UPDATE `quests` SET `requiredquest1` = 6608 WHERE `entry` = 6607;
UPDATE `quests` SET `requiredquest1` = 6623 WHERE `entry` = 6622;
UPDATE `quests` SET `requiredquest1` = 6625 WHERE `entry` = 6624;
UPDATE `quests` SET `requiredquest1` = 7721 WHERE `entry` = 7003;
UPDATE `quests` SET `requiredquest1` = 7044 WHERE `entry` = 7046;
UPDATE `quests` SET `requiredquest1` = 7221 WHERE `entry` = 7141;
UPDATE `quests` SET `requiredquest1` = 7163 WHERE `entry` = 7164;
UPDATE `quests` SET `requiredquest1` = 7164 WHERE `entry` = 7165;
UPDATE `quests` SET `requiredquest1` = 7463 WHERE `entry` = 7483;
UPDATE `quests` SET `requiredquest1` = 7483 WHERE `entry` = 7484;
UPDATE `quests` SET `requiredquest1` = 7484 WHERE `entry` = 7485;
UPDATE `quests` SET `requiredquest1` = 7581 WHERE `entry` = 7582;
UPDATE `quests` SET `requiredquest1` = 7582 WHERE `entry` = 7583;
UPDATE `quests` SET `requiredquest1` = 7627 WHERE `entry` = 7630;
UPDATE `quests` SET `requiredquest1` = 7644 WHERE `entry` = 7645;
UPDATE `quests` SET `requiredquest1` = 7667 WHERE `entry` = 7668;
UPDATE `quests` SET `requiredquest1` = 7731 WHERE `entry` = 7732;
UPDATE `quests` SET `requiredquest1` = 7733 WHERE `entry` = 7735;
UPDATE `quests` SET `requiredquest1` = 7734 WHERE `entry` = 7738;
UPDATE `quests` SET `requiredquest1` = 7791 WHERE `entry` = 7793;
UPDATE `quests` SET `requiredquest1` = 7793 WHERE `entry` = 7794;
UPDATE `quests` SET `requiredquest1` = 7794 WHERE `entry` = 7795;
UPDATE `quests` SET `requiredquest1` = 7792 WHERE `entry` = 7798;
UPDATE `quests` SET `requiredquest1` = 10354 WHERE `entry` = 7799;
UPDATE `quests` SET `requiredquest1` = 7799 WHERE `entry` = 7800;
UPDATE `quests` SET `requiredquest1` = 7802 WHERE `entry` = 7803;
UPDATE `quests` SET `requiredquest1` = 7803 WHERE `entry` = 7804;
UPDATE `quests` SET `requiredquest1` = 7804 WHERE `entry` = 7805;
UPDATE `quests` SET `requiredquest1` = 7807 WHERE `entry` = 7808;
UPDATE `quests` SET `requiredquest1` = 7808 WHERE `entry` = 7809;
UPDATE `quests` SET `requiredquest1` = 7809 WHERE `entry` = 7811;
UPDATE `quests` SET `requiredquest1` = 7813 WHERE `entry` = 7814;
UPDATE `quests` SET `requiredquest1` = 7814 WHERE `entry` = 7817;
UPDATE `quests` SET `requiredquest1` = 7817 WHERE `entry` = 7818;
UPDATE `quests` SET `requiredquest1` = 7820 WHERE `entry` = 7821;
UPDATE `quests` SET `requiredquest1` = 7821 WHERE `entry` = 7822;
UPDATE `quests` SET `requiredquest1` = 7822 WHERE `entry` = 7823;
UPDATE `quests` SET `requiredquest1` = 7831 WHERE `entry` = 7824;
UPDATE `quests` SET `requiredquest1` = 7826 WHERE `entry` = 7827;
UPDATE `quests` SET `requiredquest1` = 7827 WHERE `entry` = 7831;
UPDATE `quests` SET `requiredquest1` = 7833 WHERE `entry` = 7834;
UPDATE `quests` SET `requiredquest1` = 7834 WHERE `entry` = 7835;
UPDATE `quests` SET `requiredquest1` = 7835 WHERE `entry` = 7836;
UPDATE `quests` SET `requiredquest1` = 7893 WHERE `entry` = 7939;
UPDATE `quests` SET `requiredquest1` = 7885 WHERE `entry` = 7941;
UPDATE `quests` SET `requiredquest1` = 7898 WHERE `entry` = 7942;
UPDATE `quests` SET `requiredquest1` = 7903 WHERE `entry` = 7943;
UPDATE `quests` SET `requiredquest1` = 8079 WHERE `entry` = 8041;
UPDATE `quests` SET `requiredquest1` = 8055 WHERE `entry` = 8045;
UPDATE `quests` SET `requiredquest1` = 8071 WHERE `entry` = 8049;
UPDATE `quests` SET `requiredquest1` = 8053 WHERE `entry` = 8054;
UPDATE `quests` SET `requiredquest1` = 8054 WHERE `entry` = 8055;
UPDATE `quests` SET `requiredquest1` = 8057 WHERE `entry` = 8064;
UPDATE `quests` SET `requiredquest1` = 8064 WHERE `entry` = 8065;
UPDATE `quests` SET `requiredquest1` = 8062 WHERE `entry` = 8066;
UPDATE `quests` SET `requiredquest1` = 8066 WHERE `entry` = 8067;
UPDATE `quests` SET `requiredquest1` = 8060 WHERE `entry` = 8068;
UPDATE `quests` SET `requiredquest1` = 8068 WHERE `entry` = 8069;
UPDATE `quests` SET `requiredquest1` = 8061 WHERE `entry` = 8070;
UPDATE `quests` SET `requiredquest1` = 8070 WHERE `entry` = 8071;
UPDATE `quests` SET `requiredquest1` = 8063 WHERE `entry` = 8072;
UPDATE `quests` SET `requiredquest1` = 8072 WHERE `entry` = 8073;
UPDATE `quests` SET `requiredquest1` = 8056 WHERE `entry` = 8074;
UPDATE `quests` SET `requiredquest1` = 8074 WHERE `entry` = 8075;
UPDATE `quests` SET `requiredquest1` = 8059 WHERE `entry` = 8076;
UPDATE `quests` SET `requiredquest1` = 8076 WHERE `entry` = 8077;
UPDATE `quests` SET `requiredquest1` = 8058 WHERE `entry` = 8078;
UPDATE `quests` SET `requiredquest1` = 8078 WHERE `entry` = 8079;
UPDATE `quests` SET `requiredquest1` = 8069 WHERE `entry` = 8101;
UPDATE `quests` SET `requiredquest1` = 8065 WHERE `entry` = 8110;
UPDATE `quests` SET `requiredquest1` = 8075 WHERE `entry` = 8116;
UPDATE `quests` SET `requiredquest1` = 8067 WHERE `entry` = 8145;
UPDATE `quests` SET `requiredquest1` = 8190 WHERE `entry` = 8184;
UPDATE `quests` SET `requiredquest1` = 8187 WHERE `entry` = 8185;
UPDATE `quests` SET `requiredquest1` = 8184 WHERE `entry` = 8186;
UPDATE `quests` SET `requiredquest1` = 8192 WHERE `entry` = 8187;
UPDATE `quests` SET `requiredquest1` = 9209 WHERE `entry` = 8188;
UPDATE `quests` SET `requiredquest1` = 8191 WHERE `entry` = 8189;
UPDATE `quests` SET `requiredquest1` = 8188 WHERE `entry` = 8190;
UPDATE `quests` SET `requiredquest1` = 8186 WHERE `entry` = 8191;
UPDATE `quests` SET `requiredquest1` = 8189 WHERE `entry` = 8192;
UPDATE `quests` SET `requiredquest1` = 8243 WHERE `entry` = 8196;
UPDATE `quests` SET `requiredquest1` = 8222 WHERE `entry` = 8223;
UPDATE `quests` SET `requiredquest1` = 8196 WHERE `entry` = 8246;
UPDATE `quests` SET `requiredquest1` = 8274 WHERE `entry` = 8270;
UPDATE `quests` SET `requiredquest1` = 8276 WHERE `entry` = 8280;
UPDATE `quests` SET `requiredquest1` = 8309 WHERE `entry` = 8314;
UPDATE `quests` SET `requiredquest1` = 8325 WHERE `entry` = 8328;
UPDATE `quests` SET `requiredquest1` = 8345 WHERE `entry` = 8330;
UPDATE `quests` SET `requiredquest1` = 9357 WHERE `entry` = 8463;
UPDATE `quests` SET `requiredquest1` = 8325 WHERE `entry` = 8563;
UPDATE `quests` SET `requiredquest1` = 8325 WHERE `entry` = 8564;
UPDATE `quests` SET `requiredquest1` = 8595 WHERE `entry` = 8592;
UPDATE `quests` SET `requiredquest1` = 8595 WHERE `entry` = 8593;
UPDATE `quests` SET `requiredquest1` = 8575 WHERE `entry` = 8599;
UPDATE `quests` SET `requiredquest1` = 8595 WHERE `entry` = 8603;
UPDATE `quests` SET `requiredquest1` = 8587 WHERE `entry` = 8728;
UPDATE `quests` SET `requiredquest1` = 8741 WHERE `entry` = 8742;
UPDATE `quests` SET `requiredquest1` = 76 WHERE `entry` = 40;
UPDATE `quests` SET `requiredquest1` = 52 WHERE `entry` = 46;
UPDATE `quests` SET `requiredquest1` = 35 WHERE `entry` = 52;
UPDATE `quests` SET `requiredquest1` = 54 WHERE `entry` = 62;
UPDATE `quests` SET `requiredquest1` = 52 WHERE `entry` = 109;
UPDATE `quests` SET `requiredquest1` = 117 WHERE `entry` = 116;
UPDATE `quests` SET `requiredquest1` = 127 WHERE `entry` = 150;
UPDATE `quests` SET `requiredquest1` = 558 WHERE `entry` = 171;
UPDATE `quests` SET `requiredquest1` = 203 WHERE `entry` = 204;
UPDATE `quests` SET `requiredquest1` = 188 WHERE `entry` = 208;
UPDATE `quests` SET `requiredquest1` = 2 WHERE `entry` = 247;
UPDATE `quests` SET `requiredquest1` = 9262 WHERE `entry` = 250;
UPDATE `quests` SET `requiredquest1` = 1339 WHERE `entry` = 307;
UPDATE `quests` SET `requiredquest1` = 415 WHERE `entry` = 315;
UPDATE `quests` SET `requiredquest1` = 310 WHERE `entry` = 403;
UPDATE `quests` SET `requiredquest1` = 431 WHERE `entry` = 410;
UPDATE `quests` SET `requiredquest1` = 469 WHERE `entry` = 484;
UPDATE `quests` SET `requiredquest1` = 1479 WHERE `entry` = 558;
UPDATE `quests` SET `requiredquest1` = 203 WHERE `entry` = 574;
UPDATE `quests` SET `requiredquest1` = 578 WHERE `entry` = 579;
UPDATE `quests` SET `requiredquest1` = 586 WHERE `entry` = 588;
UPDATE `quests` SET `requiredquest1` = 592 WHERE `entry` = 593;
UPDATE `quests` SET `requiredquest1` = 663 WHERE `entry` = 664;
UPDATE `quests` SET `requiredquest1` = 663 WHERE `entry` = 665;
UPDATE `quests` SET `requiredquest1` = 688 WHERE `entry` = 687;
UPDATE `quests` SET `requiredquest1` = 714 WHERE `entry` = 734;
UPDATE `quests` SET `requiredquest1` = 736 WHERE `entry` = 737;
UPDATE `quests` SET `requiredquest1` = 785 WHERE `entry` = 786;
UPDATE `quests` SET `requiredquest1` = 805 WHERE `entry` = 823;
UPDATE `quests` SET `requiredquest1` = 854 WHERE `entry` = 871;
UPDATE `quests` SET `requiredquest1` = 997 WHERE `entry` = 919;
UPDATE `quests` SET `requiredquest1` = 910 WHERE `entry` = 925;
UPDATE `quests` SET `requiredquest1` = 918 WHERE `entry` = 927;
UPDATE `quests` SET `requiredquest1` = 918 WHERE `entry` = 930;
UPDATE `quests` SET `requiredquest1` = 918 WHERE `entry` = 931;
UPDATE `quests` SET `requiredquest1` = 853 WHERE `entry` = 962;
UPDATE `quests` SET `requiredquest1` = 99 WHERE `entry` = 1014;
UPDATE `quests` SET `requiredquest1` = 1056 WHERE `entry` = 1057;
UPDATE `quests` SET `requiredquest1` = 100 WHERE `entry` = 1103;
UPDATE `quests` SET `requiredquest1` = 1118 WHERE `entry` = 1119;
UPDATE `quests` SET `requiredquest1` = 1120 WHERE `entry` = 1122;
UPDATE `quests` SET `requiredquest1` = 1123 WHERE `entry` = 1124;
UPDATE `quests` SET `requiredquest1` = 868 WHERE `entry` = 1145;
UPDATE `quests` SET `requiredquest1` = 11225 WHERE `entry` = 1218;
UPDATE `quests` SET `requiredquest1` = 11124 WHERE `entry` = 1251;
UPDATE `quests` SET `requiredquest1` = 11123 WHERE `entry` = 1252;
UPDATE `quests` SET `requiredquest1` = 11123 WHERE `entry` = 1253;
UPDATE `quests` SET `requiredquest1` = 11124 WHERE `entry` = 1268;
UPDATE `quests` SET `requiredquest1` = 11124 WHERE `entry` = 1269;
UPDATE `quests` SET `requiredquest1` = 1270 WHERE `entry` = 1271;
UPDATE `quests` SET `requiredquest1` = 11123 WHERE `entry` = 1284;
UPDATE `quests` SET `requiredquest1` = 1220 WHERE `entry` = 1288;
UPDATE `quests` SET `requiredquest1` = 1366 WHERE `entry` = 1365;
UPDATE `quests` SET `requiredquest1` = 1386 WHERE `entry` = 1367;
UPDATE `quests` SET `requiredquest1` = 1386 WHERE `entry` = 1369;
UPDATE `quests` SET `requiredquest1` = 1384 WHERE `entry` = 1370;
UPDATE `quests` SET `requiredquest1` = 1289 WHERE `entry` = 1390;
UPDATE `quests` SET `requiredquest1` = 1418 WHERE `entry` = 1419;
UPDATE `quests` SET `requiredquest1` = 705 WHERE `entry` = 1559;
UPDATE `quests` SET `requiredquest1` = 2999 WHERE `entry` = 1641;
UPDATE `quests` SET `requiredquest1` = 1793 WHERE `entry` = 1649;
UPDATE `quests` SET `requiredquest1` = 1653 WHERE `entry` = 1655;
UPDATE `quests` SET `requiredquest1` = 4486 WHERE `entry` = 1661;
UPDATE `quests` SET `requiredquest1` = 1685 WHERE `entry` = 1715;
UPDATE `quests` SET `requiredquest1` = 4739 WHERE `entry` = 1796;
UPDATE `quests` SET `requiredquest1` = 4969 WHERE `entry` = 1799;
UPDATE `quests` SET `requiredquest1` = 172 WHERE `entry` = 1800;
UPDATE `quests` SET `requiredquest1` = 1947 WHERE `entry` = 1948;
UPDATE `quests` SET `requiredquest1` = 2205 WHERE `entry` = 2206;
UPDATE `quests` SET `requiredquest1` = 2278 WHERE `entry` = 2279;
UPDATE `quests` SET `requiredquest1` = 2763 WHERE `entry` = 2765;
UPDATE `quests` SET `requiredquest1` = 2769 WHERE `entry` = 2770;
UPDATE `quests` SET `requiredquest1` = 2783 WHERE `entry` = 2801;
UPDATE `quests` SET `requiredquest1` = 2852 WHERE `entry` = 2853;
UPDATE `quests` SET `requiredquest1` = 2858 WHERE `entry` = 2860;
UPDATE `quests` SET `requiredquest1` = 2880 WHERE `entry` = 2881;
UPDATE `quests` SET `requiredquest1` = 2966 WHERE `entry` = 2954;
UPDATE `quests` SET `requiredquest1` = 2998 WHERE `entry` = 2999;
UPDATE `quests` SET `requiredquest1` = 3063 WHERE `entry` = 3062;
UPDATE `quests` SET `requiredquest1` = 369 WHERE `entry` = 3096;
UPDATE `quests` SET `requiredquest1` = 3127 WHERE `entry` = 3128;
UPDATE `quests` SET `requiredquest1` = 3128 WHERE `entry` = 3129;
UPDATE `quests` SET `requiredquest1` = 2771 WHERE `entry` = 3321;
UPDATE `quests` SET `requiredquest1` = 3445 WHERE `entry` = 3444;
UPDATE `quests` SET `requiredquest1` = 836 WHERE `entry` = 3721;
UPDATE `quests` SET `requiredquest1` = 4022 WHERE `entry` = 4023;
UPDATE `quests` SET `requiredquest1` = 4082 WHERE `entry` = 4122;
UPDATE `quests` SET `requiredquest1` = 4288 WHERE `entry` = 4321;
UPDATE `quests` SET `requiredquest1` = 4489 WHERE `entry` = 4490;
UPDATE `quests` SET `requiredquest1` = 162 WHERE `entry` = 4493;
UPDATE `quests` SET `requiredquest1` = 4494 WHERE `entry` = 4496;
UPDATE `quests` SET `requiredquest1` = 4294 WHERE `entry` = 4642;
UPDATE `quests` SET `requiredquest1` = 4737 WHERE `entry` = 4738;
UPDATE `quests` SET `requiredquest1` = 1479 WHERE `entry` = 4822;
UPDATE `quests` SET `requiredquest1` = 4976 WHERE `entry` = 4962;
UPDATE `quests` SET `requiredquest1` = 4976 WHERE `entry` = 4963;
UPDATE `quests` SET `requiredquest1` = 5049 WHERE `entry` = 5050;
UPDATE `quests` SET `requiredquest1` = 5221 WHERE `entry` = 5058;
UPDATE `quests` SET `requiredquest1` = 5058 WHERE `entry` = 5059;
UPDATE `quests` SET `requiredquest1` = 5059 WHERE `entry` = 5060;
UPDATE `quests` SET `requiredquest1` = 5154 WHERE `entry` = 5206;
UPDATE `quests` SET `requiredquest1` = 5126 WHERE `entry` = 5218;
UPDATE `quests` SET `requiredquest1` = 5220 WHERE `entry` = 5221;
UPDATE `quests` SET `requiredquest1` = 5223 WHERE `entry` = 5224;
UPDATE `quests` SET `requiredquest1` = 8875 WHERE `entry` = 8867;
UPDATE `quests` SET `requiredquest1` = 8888 WHERE `entry` = 8889;
UPDATE `quests` SET `requiredquest1` = 8923 WHERE `entry` = 8921;
UPDATE `quests` SET `requiredquest1` = 8930 WHERE `entry` = 8945;
UPDATE `quests` SET `requiredquest1` = 9032 WHERE `entry` = 8961;
UPDATE `quests` SET `requiredquest1` = 11558 WHERE `entry` = 8979;
UPDATE `quests` SET `requiredquest1` = 8979 WHERE `entry` = 8980;
UPDATE `quests` SET `requiredquest1` = 8980 WHERE `entry` = 8982;
UPDATE `quests` SET `requiredquest1` = 9123 WHERE `entry` = 9033;
UPDATE `quests` SET `requiredquest1` = 9210 WHERE `entry` = 9208;
UPDATE `quests` SET `requiredquest1` = 9208 WHERE `entry` = 9209;
UPDATE `quests` SET `requiredquest1` = 9312 WHERE `entry` = 9305;
UPDATE `quests` SET `requiredquest1` = 9365 WHERE `entry` = 9319;
UPDATE `quests` SET `requiredquest1` = 9499 WHERE `entry` = 9340;
UPDATE `quests` SET `requiredquest1` = 9409 WHERE `entry` = 9371;
UPDATE `quests` SET `requiredquest1` = 10443 WHERE `entry` = 9372;
UPDATE `quests` SET `requiredquest1` = 8325 WHERE `entry` = 9392;
UPDATE `quests` SET `requiredquest1` = 8325 WHERE `entry` = 9393;
UPDATE `quests` SET `requiredquest1` = 9369 WHERE `entry` = 9409;
UPDATE `quests` SET `requiredquest1` = 9472 WHERE `entry` = 9483;
UPDATE `quests` SET `requiredquest1` = 9505 WHERE `entry` = 9506;
UPDATE `quests` SET `requiredquest1` = 9512 WHERE `entry` = 9513;
UPDATE `quests` SET `requiredquest1` = 9533 WHERE `entry` = 9517;
UPDATE `quests` SET `requiredquest1` = 9512 WHERE `entry` = 9523;
UPDATE `quests` SET `requiredquest1` = 9517 WHERE `entry` = 9526;
UPDATE `quests` SET `requiredquest1` = 9432 WHERE `entry` = 9533;
UPDATE `quests` SET `requiredquest1` = 8325 WHERE `entry` = 9676;
UPDATE `quests` SET `requiredquest1` = 9668 WHERE `entry` = 9693;
UPDATE `quests` SET `requiredquest1` = 9329 WHERE `entry` = 9758;
UPDATE `quests` SET `requiredquest1` = 9825 WHERE `entry` = 9826;
UPDATE `quests` SET `requiredquest1` = 9872 WHERE `entry` = 9868;
UPDATE `quests` SET `requiredquest1` = 10011 WHERE `entry` = 9872;
UPDATE `quests` SET `requiredquest1` = 9925 WHERE `entry` = 9900;
UPDATE `quests` SET `requiredquest1` = 9896 WHERE `entry` = 9901;
UPDATE `quests` SET `requiredquest1` = 9930 WHERE `entry` = 9941;
UPDATE `quests` SET `requiredquest1` = 9958 WHERE `entry` = 9963;
UPDATE `quests` SET `requiredquest1` = 9957 WHERE `entry` = 9968;
UPDATE `quests` SET `requiredquest1` = 10107 WHERE `entry` = 9983;
UPDATE `quests` SET `requiredquest1` = 9983 WHERE `entry` = 9991;
UPDATE `quests` SET `requiredquest1` = 9996 WHERE `entry` = 10014;
UPDATE `quests` SET `requiredquest1` = 9997 WHERE `entry` = 10015;
UPDATE `quests` SET `requiredquest1` = 10553 WHERE `entry` = 10024;
UPDATE `quests` SET `requiredquest1` = 10053 WHERE `entry` = 10054;
UPDATE `quests` SET `requiredquest1` = 10155 WHERE `entry` = 10059;
UPDATE `quests` SET `requiredquest1` = 10180 WHERE `entry` = 10097;
UPDATE `quests` SET `requiredquest1` = 10097 WHERE `entry` = 10098;
UPDATE `quests` SET `requiredquest1` = 10124 WHERE `entry` = 10110;
UPDATE `quests` SET `requiredquest1` = 10254 WHERE `entry` = 10141;
UPDATE `quests` SET `requiredquest1` = 10254 WHERE `entry` = 10160;
UPDATE `quests` SET `requiredquest1` = 10253 WHERE `entry` = 10164;
UPDATE `quests` SET `requiredquest1` = 10343 WHERE `entry` = 10222;
UPDATE `quests` SET `requiredquest1` = 10241 WHERE `entry` = 10243;
UPDATE `quests` SET `requiredquest1` = 9294 WHERE `entry` = 10304;
UPDATE `quests` SET `requiredquest1` = 10211 WHERE `entry` = 10325;
UPDATE `quests` SET `requiredquest1` = 10246 WHERE `entry` = 10328;
UPDATE `quests` SET `requiredquest1` = 10352 WHERE `entry` = 10354;
UPDATE `quests` SET `requiredquest1` = 7798 WHERE `entry` = 10356;
UPDATE `quests` SET `requiredquest1` = 10356 WHERE `entry` = 10357;
UPDATE `quests` SET `requiredquest1` = 10359 WHERE `entry` = 10360;
UPDATE `quests` SET `requiredquest1` = 10360 WHERE `entry` = 10361;
UPDATE `quests` SET `requiredquest1` = 10361 WHERE `entry` = 10362;
UPDATE `quests` SET `requiredquest1` = 10681 WHERE `entry` = 10458;
UPDATE `quests` SET `requiredquest1` = 10445 WHERE `entry` = 10460;
UPDATE `quests` SET `requiredquest1` = 10445 WHERE `entry` = 10461;
UPDATE `quests` SET `requiredquest1` = 10445 WHERE `entry` = 10462;
UPDATE `quests` SET `requiredquest1` = 10445 WHERE `entry` = 10463;
UPDATE `quests` SET `requiredquest1` = 10615 WHERE `entry` = 10567;
UPDATE `quests` SET `requiredquest1` = 10523 WHERE `entry` = 10588;
UPDATE `quests` SET `requiredquest1` = 10602 WHERE `entry` = 10603;
UPDATE `quests` SET `requiredquest1` = 10635 WHERE `entry` = 10636;
UPDATE `quests` SET `requiredquest1` = 10325 WHERE `entry` = 10653;
UPDATE `quests` SET `requiredquest1` = 10663 WHERE `entry` = 10664;
UPDATE `quests` SET `requiredquest1` = 10667 WHERE `entry` = 10676;
UPDATE `quests` SET `requiredquest1` = 10761 WHERE `entry` = 10777;
UPDATE `quests` SET `requiredquest1` = 10862 WHERE `entry` = 10863;
UPDATE `quests` SET `requiredquest1` = 10886 WHERE `entry` = 10888;
UPDATE `quests` SET `requiredquest1` = 10863 WHERE `entry` = 10908;
UPDATE `quests` SET `requiredquest1` = 10903 WHERE `entry` = 10919;
UPDATE `quests` SET `requiredquest1` = 10942 WHERE `entry` = 10945;
UPDATE `quests` SET `requiredquest1` = 10943 WHERE `entry` = 10950;
UPDATE `quests` SET `requiredquest1` = 10942 WHERE `entry` = 10951;
UPDATE `quests` SET `requiredquest1` = 10943 WHERE `entry` = 10952;
UPDATE `quests` SET `requiredquest1` = 10942 WHERE `entry` = 10953;
UPDATE `quests` SET `requiredquest1` = 10943 WHERE `entry` = 10954;
UPDATE `quests` SET `requiredquest1` = 10950 WHERE `entry` = 10956;
UPDATE `quests` SET `requiredquest1` = 10945 WHERE `entry` = 10960;
UPDATE `quests` SET `requiredquest1` = 10950 WHERE `entry` = 10962;
UPDATE `quests` SET `requiredquest1` = 10945 WHERE `entry` = 10963;
UPDATE `quests` SET `requiredquest1` = 10968 WHERE `entry` = 10966;
UPDATE `quests` SET `requiredquest1` = 11975 WHERE `entry` = 10967;
UPDATE `quests` SET `requiredquest1` = 10985 WHERE `entry` = 10998;
UPDATE `quests` SET `requiredquest1` = 11098 WHERE `entry` = 11004;
UPDATE `quests` SET `requiredquest1` = 10707 WHERE `entry` = 11052;
UPDATE `quests` SET `requiredquest1` = 11084 WHERE `entry` = 11063;
UPDATE `quests` SET `requiredquest1` = 11009 WHERE `entry` = 11091;
UPDATE `quests` SET `requiredquest1` = 11062 WHERE `entry` = 11102;
UPDATE `quests` SET `requiredquest1` = 11010 WHERE `entry` = 11119;
UPDATE `quests` SET `requiredquest1` = 11160 WHERE `entry` = 11159;
UPDATE `quests` SET `requiredquest1` = 11281 WHERE `entry` = 11256;
UPDATE `quests` SET `requiredquest1` = 11258 WHERE `entry` = 11261;
UPDATE `quests` SET `requiredquest1` = 11234 WHERE `entry` = 11272;
UPDATE `quests` SET `requiredquest1` = 11285 WHERE `entry` = 11303;
UPDATE `quests` SET `requiredquest1` = 11312 WHERE `entry` = 11313;
UPDATE `quests` SET `requiredquest1` = 11220 WHERE `entry` = 11392;
UPDATE `quests` SET `requiredquest1` = 11393 WHERE `entry` = 11394;
UPDATE `quests` SET `requiredquest1` = 11319 WHERE `entry` = 11428;
UPDATE `quests` SET `requiredquest1` = 11483 WHERE `entry` = 11485;
UPDATE `quests` SET `requiredquest1` = 11495 WHERE `entry` = 11501;
UPDATE `quests` SET `requiredquest1` = 11573 WHERE `entry` = 11504;
UPDATE `quests` SET `requiredquest1` = 11496 WHERE `entry` = 11523;
UPDATE `quests` SET `requiredquest1` = 11524 WHERE `entry` = 11525;
UPDATE `quests` SET `requiredquest1` = 11554 WHERE `entry` = 11555;
UPDATE `quests` SET `requiredquest1` = 11555 WHERE `entry` = 11556;
UPDATE `quests` SET `requiredquest1` = 11556 WHERE `entry` = 11557;
UPDATE `quests` SET `requiredquest1` = 11511 WHERE `entry` = 11568;
UPDATE `quests` SET `requiredquest1` = 11702 WHERE `entry` = 11571;
UPDATE `quests` SET `requiredquest1` = 11575 WHERE `entry` = 11587;
UPDATE `quests` SET `requiredquest1` = 11586 WHERE `entry` = 11595;
UPDATE `quests` SET `requiredquest1` = 11586 WHERE `entry` = 11596;
UPDATE `quests` SET `requiredquest1` = 12141 WHERE `entry` = 11613;
UPDATE `quests` SET `requiredquest1` = 11644 WHERE `entry` = 11651;
UPDATE `quests` SET `requiredquest1` = 11955 WHERE `entry` = 11696;
UPDATE `quests` SET `requiredquest1` = 11708 WHERE `entry` = 11704;
UPDATE `quests` SET `requiredquest1` = 11882 WHERE `entry` = 11731;
UPDATE `quests` SET `requiredquest1` = 11789 WHERE `entry` = 11790;
UPDATE `quests` SET `requiredquest1` = 11872 WHERE `entry` = 11892;
UPDATE `quests` SET `requiredquest1` = 11722 WHERE `entry` = 11916;
UPDATE `quests` SET `requiredquest1` = 11789 WHERE `entry` = 11920;
UPDATE `quests` SET `requiredquest1` = 11731 WHERE `entry` = 11921;
UPDATE `quests` SET `requiredquest1` = 11915 WHERE `entry` = 11922;
UPDATE `quests` SET `requiredquest1` = 11657 WHERE `entry` = 11924;
UPDATE `quests` SET `requiredquest1` = 11923 WHERE `entry` = 11925;
UPDATE `quests` SET `requiredquest1` = 11922 WHERE `entry` = 11926;
UPDATE `quests` SET `requiredquest1` = 12012 WHERE `entry` = 11955;
UPDATE `quests` SET `requiredquest1` = 12088 WHERE `entry` = 11956;
UPDATE `quests` SET `requiredquest1` = 10960 WHERE `entry` = 11975;
UPDATE `quests` SET `requiredquest1` = 12210 WHERE `entry` = 11984;
UPDATE `quests` SET `requiredquest1` = 12439 WHERE `entry` = 11995;
UPDATE `quests` SET `requiredquest1` = 12008 WHERE `entry` = 12034;
UPDATE `quests` SET `requiredquest1` = 12029 WHERE `entry` = 12038;
UPDATE `quests` SET `requiredquest1` = 12072 WHERE `entry` = 12063;
UPDATE `quests` SET `requiredquest1` = 12054 WHERE `entry` = 12073;
UPDATE `quests` SET `requiredquest1` = 12077 WHERE `entry` = 12078;
UPDATE `quests` SET `requiredquest1` = 12077 WHERE `entry` = 12080;
UPDATE `quests` SET `requiredquest1` = 12083 WHERE `entry` = 12092;
UPDATE `quests` SET `requiredquest1` = 12091 WHERE `entry` = 12095;
UPDATE `quests` SET `requiredquest1` = 12084 WHERE `entry` = 12096;
UPDATE `quests` SET `requiredquest1` = 12115 WHERE `entry` = 12125;
UPDATE `quests` SET `requiredquest1` = 12115 WHERE `entry` = 12126;
UPDATE `quests` SET `requiredquest1` = 12115 WHERE `entry` = 12127;
UPDATE `quests` SET `requiredquest1` = 12125 WHERE `entry` = 12132;
UPDATE `quests` SET `requiredquest1` = 12147 WHERE `entry` = 12148;
UPDATE `quests` SET `requiredquest1` = 12140 WHERE `entry` = 12189;
UPDATE `quests` SET `requiredquest1` = 12073 WHERE `entry` = 12204;
UPDATE `quests` SET `requiredquest1` = 12206 WHERE `entry` = 12211;
UPDATE `quests` SET `requiredquest1` = 12221 WHERE `entry` = 12224;
UPDATE `quests` SET `requiredquest1` = 12211 WHERE `entry` = 12230;
UPDATE `quests` SET `requiredquest1` = 12232 WHERE `entry` = 12234;
UPDATE `quests` SET `requiredquest1` = 12220 WHERE `entry` = 12246;
UPDATE `quests` SET `requiredquest1` = 12220 WHERE `entry` = 12247;
UPDATE `quests` SET `requiredquest1` = 12247 WHERE `entry` = 12248;
UPDATE `quests` SET `requiredquest1` = 12247 WHERE `entry` = 12250;
UPDATE `quests` SET `requiredquest1` = 12222 WHERE `entry` = 12255;
UPDATE `quests` SET `requiredquest1` = 12251 WHERE `entry` = 12258;
UPDATE `quests` SET `requiredquest1` = 12263 WHERE `entry` = 12264;
UPDATE `quests` SET `requiredquest1` = 12263 WHERE `entry` = 12265;
UPDATE `quests` SET `requiredquest1` = 12272 WHERE `entry` = 12281;
UPDATE `quests` SET `requiredquest1` = 12157 WHERE `entry` = 12297;
UPDATE `quests` SET `requiredquest1` = 12281 WHERE `entry` = 12325;
UPDATE `quests` SET `requiredquest1` = 12425 WHERE `entry` = 12328;
UPDATE `quests` SET `requiredquest1` = 12124 WHERE `entry` = 12435;
UPDATE `quests` SET `requiredquest1` = 12496 WHERE `entry` = 12497;
UPDATE `quests` SET `requiredquest1` = 12498 WHERE `entry` = 12500;
UPDATE `quests` SET `requiredquest1` = 12510 WHERE `entry` = 12527;
UPDATE `quests` SET `requiredquest1` = 12654 WHERE `entry` = 12528;
UPDATE `quests` SET `requiredquest1` = 12596 WHERE `entry` = 12563;
UPDATE `quests` SET `requiredquest1` = 12552 WHERE `entry` = 12584;
UPDATE `quests` SET `requiredquest1` = 12549 WHERE `entry` = 12634;
UPDATE `quests` SET `requiredquest1` = 12520 WHERE `entry` = 12804;
UPDATE `quests` SET `requiredquest1` = 12982 WHERE `entry` = 12806;
UPDATE `quests` SET `requiredquest1` = 12814 WHERE `entry` = 12815;
UPDATE `quests` SET `requiredquest1` = 12832 WHERE `entry` = 12821;
UPDATE `quests` SET `requiredquest1` = 12836 WHERE `entry` = 12828;
UPDATE `quests` SET `requiredquest1` = 12824 WHERE `entry` = 12833;
UPDATE `quests` SET `requiredquest1` = 12854 WHERE `entry` = 12855;
UPDATE `quests` SET `requiredquest1` = 12824 WHERE `entry` = 12862;
UPDATE `quests` SET `requiredquest1` = 13417 WHERE `entry` = 12869;
UPDATE `quests` SET `requiredquest1` = 12872 WHERE `entry` = 12871;
UPDATE `quests` SET `requiredquest1` = 12874 WHERE `entry` = 12876;
UPDATE `quests` SET `requiredquest1` = 12872 WHERE `entry` = 12885;
UPDATE `quests` SET `requiredquest1` = 12893 WHERE `entry` = 12896;
UPDATE `quests` SET `requiredquest1` = 12893 WHERE `entry` = 12897;
UPDATE `quests` SET `requiredquest1` = 12917 WHERE `entry` = 12920;
UPDATE `quests` SET `requiredquest1` = 12956 WHERE `entry` = 12924;
UPDATE `quests` SET `requiredquest1` = 12928 WHERE `entry` = 12929;
UPDATE `quests` SET `requiredquest1` = 12930 WHERE `entry` = 12931;
UPDATE `quests` SET `requiredquest1` = 12974 WHERE `entry` = 12932;
UPDATE `quests` SET `requiredquest1` = 12930 WHERE `entry` = 12937;
UPDATE `quests` SET `requiredquest1` = 12939 WHERE `entry` = 12949;
UPDATE `quests` SET `requiredquest1` = 12931 WHERE `entry` = 12957;
UPDATE `quests` SET `requiredquest1` = 12931 WHERE `entry` = 12964;
UPDATE `quests` SET `requiredquest1` = 12957 WHERE `entry` = 12965;
UPDATE `quests` SET `requiredquest1` = 12880 WHERE `entry` = 12973;
UPDATE `quests` SET `requiredquest1` = 12976 WHERE `entry` = 12977;
UPDATE `quests` SET `requiredquest1` = 12957 WHERE `entry` = 12978;
UPDATE `quests` SET `requiredquest1` = 12900 WHERE `entry` = 12983;
UPDATE `quests` SET `requiredquest1` = 12980 WHERE `entry` = 12984;
UPDATE `quests` SET `requiredquest1` = 12900 WHERE `entry` = 12989;
UPDATE `quests` SET `requiredquest1` = 12984 WHERE `entry` = 12991;
UPDATE `quests` SET `requiredquest1` = 12988 WHERE `entry` = 12993;
UPDATE `quests` SET `requiredquest1` = 12951 WHERE `entry` = 12995;
UPDATE `quests` SET `requiredquest1` = 13001 WHERE `entry` = 13003;
UPDATE `quests` SET `requiredquest1` = 13057 WHERE `entry` = 13005;
UPDATE `quests` SET `requiredquest1` = 12987 WHERE `entry` = 13006;
UPDATE `quests` SET `requiredquest1` = 13057 WHERE `entry` = 13035;
UPDATE `quests` SET `requiredquest1` = 13034 WHERE `entry` = 13037;
UPDATE `quests` SET `requiredquest1` = 13037 WHERE `entry` = 13038;
UPDATE `quests` SET `requiredquest1` = 13036 WHERE `entry` = 13039;
UPDATE `quests` SET `requiredquest1` = 13036 WHERE `entry` = 13040;
UPDATE `quests` SET `requiredquest1` = 12999 WHERE `entry` = 13042;
UPDATE `quests` SET `requiredquest1` = 12999 WHERE `entry` = 13043;
UPDATE `quests` SET `requiredquest1` = 13039 WHERE `entry` = 13044;
UPDATE `quests` SET `requiredquest1` = 13005 WHERE `entry` = 13047;
UPDATE `quests` SET `requiredquest1` = 12999 WHERE `entry` = 13059;
UPDATE `quests` SET `requiredquest1` = 12824 WHERE `entry` = 13060;
UPDATE `quests` SET `requiredquest1` = 13157 WHERE `entry` = 13068;
UPDATE `quests` SET `requiredquest1` = 13075 WHERE `entry` = 13076;
UPDATE `quests` SET `requiredquest1` = 13079 WHERE `entry` = 13080;
UPDATE `quests` SET `requiredquest1` = 13082 WHERE `entry` = 13083;
UPDATE `quests` SET `requiredquest1` = 12951 WHERE `entry` = 13085;
UPDATE `quests` SET `requiredquest1` = 12999 WHERE `entry` = 13092;
UPDATE `quests` SET `requiredquest1` = 13092 WHERE `entry` = 13093;
UPDATE `quests` SET `requiredquest1` = 13086 WHERE `entry` = 13104;
UPDATE `quests` SET `requiredquest1` = 13086 WHERE `entry` = 13105;
UPDATE `quests` SET `requiredquest1` = 13108 WHERE `entry` = 13109;
UPDATE `quests` SET `requiredquest1` = 13105 WHERE `entry` = 13110;
UPDATE `quests` SET `requiredquest1` = 13105 WHERE `entry` = 13118;
UPDATE `quests` SET `requiredquest1` = 13117 WHERE `entry` = 13119;
UPDATE `quests` SET `requiredquest1` = 13117 WHERE `entry` = 13120;
UPDATE `quests` SET `requiredquest1` = 13105 WHERE `entry` = 13122;
UPDATE `quests` SET `requiredquest1` = 13118 WHERE `entry` = 13125;
UPDATE `quests` SET `requiredquest1` = 13105 WHERE `entry` = 13130;
UPDATE `quests` SET `requiredquest1` = 13119 WHERE `entry` = 13134;
UPDATE `quests` SET `requiredquest1` = 13105 WHERE `entry` = 13135;
UPDATE `quests` SET `requiredquest1` = 13136 WHERE `entry` = 13138;
UPDATE `quests` SET `requiredquest1` = 13110 WHERE `entry` = 13139;
UPDATE `quests` SET `requiredquest1` = 13136 WHERE `entry` = 13140;
UPDATE `quests` SET `requiredquest1` = 13152 WHERE `entry` = 13144;
UPDATE `quests` SET `requiredquest1` = 13145 WHERE `entry` = 13146;
UPDATE `quests` SET `requiredquest1` = 13145 WHERE `entry` = 13147;
UPDATE `quests` SET `requiredquest1` = 13138 WHERE `entry` = 13152;
UPDATE `quests` SET `requiredquest1` = 13172 WHERE `entry` = 13155;
UPDATE `quests` SET `requiredquest1` = 13145 WHERE `entry` = 13160;
UPDATE `quests` SET `requiredquest1` = 13160 WHERE `entry` = 13161;
UPDATE `quests` SET `requiredquest1` = 13160 WHERE `entry` = 13162;
UPDATE `quests` SET `requiredquest1` = 13160 WHERE `entry` = 13163;
UPDATE `quests` SET `requiredquest1` = 13163 WHERE `entry` = 13164;
UPDATE `quests` SET `requiredquest1` = 13168 WHERE `entry` = 13169;
UPDATE `quests` SET `requiredquest1` = 13168 WHERE `entry` = 13170;
UPDATE `quests` SET `requiredquest1` = 13168 WHERE `entry` = 13171;
UPDATE `quests` SET `requiredquest1` = 13169 WHERE `entry` = 13172;
UPDATE `quests` SET `requiredquest1` = 13169 WHERE `entry` = 13174;
UPDATE `quests` SET `requiredquest1` = 11528 WHERE `entry` = 13203;
UPDATE `quests` SET `requiredquest1` = 13138 WHERE `entry` = 13211;
UPDATE `quests` SET `requiredquest1` = 13144 WHERE `entry` = 13212;
UPDATE `quests` SET `requiredquest1` = 13213 WHERE `entry` = 13214;
UPDATE `quests` SET `requiredquest1` = 13214 WHERE `entry` = 13215;
UPDATE `quests` SET `requiredquest1` = 13215 WHERE `entry` = 13216;
UPDATE `quests` SET `requiredquest1` = 13216 WHERE `entry` = 13217;
UPDATE `quests` SET `requiredquest1` = 13217 WHERE `entry` = 13218;
UPDATE `quests` SET `requiredquest1` = 13218 WHERE `entry` = 13219;
UPDATE `quests` SET `requiredquest1` = 13157 WHERE `entry` = 13224;
UPDATE `quests` SET `requiredquest1` = 13157 WHERE `entry` = 13225;
UPDATE `quests` SET `requiredquest1` = 13224 WHERE `entry` = 13228;
UPDATE `quests` SET `requiredquest1` = 13228 WHERE `entry` = 13230;
UPDATE `quests` SET `requiredquest1` = 13225 WHERE `entry` = 13231;
UPDATE `quests` SET `requiredquest1` = 13231 WHERE `entry` = 13233;
UPDATE `quests` SET `requiredquest1` = 13228 WHERE `entry` = 13234;
UPDATE `quests` SET `requiredquest1` = 13228 WHERE `entry` = 13238;
UPDATE `quests` SET `requiredquest1` = 12500 WHERE `entry` = 13242;
UPDATE `quests` SET `requiredquest1` = 13224 WHERE `entry` = 13258;
UPDATE `quests` SET `requiredquest1` = 13228 WHERE `entry` = 13260;
UPDATE `quests` SET `requiredquest1` = 13239 WHERE `entry` = 13261;
UPDATE `quests` SET `requiredquest1` = 13237 WHERE `entry` = 13264;
UPDATE `quests` SET `requiredquest1` = 12928 WHERE `entry` = 13273;
UPDATE `quests` SET `requiredquest1` = 13264 WHERE `entry` = 13276;
UPDATE `quests` SET `requiredquest1` = 13237 WHERE `entry` = 13277;
UPDATE `quests` SET `requiredquest1` = 13277 WHERE `entry` = 13278;
UPDATE `quests` SET `requiredquest1` = 13279 WHERE `entry` = 13281;
UPDATE `quests` SET `requiredquest1` = 13341 WHERE `entry` = 13284;
UPDATE `quests` SET `requiredquest1` = 13231 WHERE `entry` = 13286;
UPDATE `quests` SET `requiredquest1` = 13287 WHERE `entry` = 13288;
UPDATE `quests` SET `requiredquest1` = 13288 WHERE `entry` = 13289;
UPDATE `quests` SET `requiredquest1` = 13231 WHERE `entry` = 13290;
UPDATE `quests` SET `requiredquest1` = 13291 WHERE `entry` = 13292;
UPDATE `quests` SET `requiredquest1` = 13224 WHERE `entry` = 13293;
UPDATE `quests` SET `requiredquest1` = 13287 WHERE `entry` = 13294;
UPDATE `quests` SET `requiredquest1` = 13225 WHERE `entry` = 13296;
UPDATE `quests` SET `requiredquest1` = 13295 WHERE `entry` = 13297;
UPDATE `quests` SET `requiredquest1` = 13294 WHERE `entry` = 13298;
UPDATE `quests` SET `requiredquest1` = 13225 WHERE `entry` = 13300;
UPDATE `quests` SET `requiredquest1` = 13340 WHERE `entry` = 13301;
UPDATE `quests` SET `requiredquest1` = 13224 WHERE `entry` = 13302;
UPDATE `quests` SET `requiredquest1` = 13304 WHERE `entry` = 13305;
UPDATE `quests` SET `requiredquest1` = 13366 WHERE `entry` = 13306;
UPDATE `quests` SET `requiredquest1` = 13367 WHERE `entry` = 13307;
UPDATE `quests` SET `requiredquest1` = 13224 WHERE `entry` = 13308;
UPDATE `quests` SET `requiredquest1` = 13341 WHERE `entry` = 13309;
UPDATE `quests` SET `requiredquest1` = 13340 WHERE `entry` = 13310;
UPDATE `quests` SET `requiredquest1` = 13306 WHERE `entry` = 13312;
UPDATE `quests` SET `requiredquest1` = 13306 WHERE `entry` = 13313;
UPDATE `quests` SET `requiredquest1` = 13332 WHERE `entry` = 13314;
UPDATE `quests` SET `requiredquest1` = 13288 WHERE `entry` = 13315;
UPDATE `quests` SET `requiredquest1` = 13329 WHERE `entry` = 13316;
UPDATE `quests` SET `requiredquest1` = 13315 WHERE `entry` = 13318;
UPDATE `quests` SET `requiredquest1` = 13315 WHERE `entry` = 13319;
UPDATE `quests` SET `requiredquest1` = 13315 WHERE `entry` = 13320;
UPDATE `quests` SET `requiredquest1` = 13321 WHERE `entry` = 13322;
UPDATE `quests` SET `requiredquest1` = 13318 WHERE `entry` = 13323;
UPDATE `quests` SET `requiredquest1` = 13329 WHERE `entry` = 13328;
UPDATE `quests` SET `requiredquest1` = 13224 WHERE `entry` = 13330;
UPDATE `quests` SET `requiredquest1` = 13313 WHERE `entry` = 13331;
UPDATE `quests` SET `requiredquest1` = 13345 WHERE `entry` = 13332;
UPDATE `quests` SET `requiredquest1` = 13314 WHERE `entry` = 13333;
UPDATE `quests` SET `requiredquest1` = 13346 WHERE `entry` = 13334;
UPDATE `quests` SET `requiredquest1` = 13225 WHERE `entry` = 13336;
UPDATE `quests` SET `requiredquest1` = 13332 WHERE `entry` = 13337;
UPDATE `quests` SET `requiredquest1` = 13335 WHERE `entry` = 13338;
UPDATE `quests` SET `requiredquest1` = 13335 WHERE `entry` = 13339;
UPDATE `quests` SET `requiredquest1` = 13224 WHERE `entry` = 13340;
UPDATE `quests` SET `requiredquest1` = 13225 WHERE `entry` = 13341;
UPDATE `quests` SET `requiredquest1` = 13318 WHERE `entry` = 13342;
UPDATE `quests` SET `requiredquest1` = 13342 WHERE `entry` = 13344;
UPDATE `quests` SET `requiredquest1` = 13318 WHERE `entry` = 13345;
UPDATE `quests` SET `requiredquest1` = 13346 WHERE `entry` = 13350;
UPDATE `quests` SET `requiredquest1` = 13264 WHERE `entry` = 13351;
UPDATE `quests` SET `requiredquest1` = 13351 WHERE `entry` = 13352;
UPDATE `quests` SET `requiredquest1` = 13352 WHERE `entry` = 13353;
UPDATE `quests` SET `requiredquest1` = 13351 WHERE `entry` = 13354;
UPDATE `quests` SET `requiredquest1` = 13351 WHERE `entry` = 13355;
UPDATE `quests` SET `requiredquest1` = 13356 WHERE `entry` = 13357;
UPDATE `quests` SET `requiredquest1` = 13352 WHERE `entry` = 13358;
UPDATE `quests` SET `requiredquest1` = 13349 WHERE `entry` = 13359;
UPDATE `quests` SET `requiredquest1` = 13359 WHERE `entry` = 13360;
UPDATE `quests` SET `requiredquest1` = 13362 WHERE `entry` = 13363;
UPDATE `quests` SET `requiredquest1` = 13358 WHERE `entry` = 13365;
UPDATE `quests` SET `requiredquest1` = 13352 WHERE `entry` = 13366;
UPDATE `quests` SET `requiredquest1` = 13367 WHERE `entry` = 13368;
UPDATE `quests` SET `requiredquest1` = 13239 WHERE `entry` = 13379;
UPDATE `quests` SET `requiredquest1` = 13291 WHERE `entry` = 13383;
UPDATE `quests` SET `requiredquest1` = 13372 WHERE `entry` = 13384;
UPDATE `quests` SET `requiredquest1` = 13375 WHERE `entry` = 13385;
UPDATE `quests` SET `requiredquest1` = 13393 WHERE `entry` = 13394;
UPDATE `quests` SET `requiredquest1` = 13380 WHERE `entry` = 13404;
UPDATE `quests` SET `requiredquest1` = 13373 WHERE `entry` = 13406;
UPDATE `quests` SET `requiredquest1` = 10143 WHERE `entry` = 13408;
UPDATE `quests` SET `requiredquest1` = 10124 WHERE `entry` = 13409;
UPDATE `quests` SET `requiredquest1` = 10143 WHERE `entry` = 13410;
UPDATE `quests` SET `requiredquest1` = 10124 WHERE `entry` = 13411;
UPDATE `quests` SET `requiredquest1` = 12880 WHERE `entry` = 13417;
UPDATE `quests` SET `requiredquest1` = 12906 WHERE `entry` = 13422;
UPDATE `quests` SET `requiredquest1` = 12971 WHERE `entry` = 13423;
UPDATE `quests` SET `requiredquest1` = 12997 WHERE `entry` = 13424;
UPDATE `quests` SET `requiredquest1` = 12925 WHERE `entry` = 13425;
UPDATE `quests` SET `requiredquest1` = 13285 WHERE `entry` = 13426;
UPDATE `quests` SET `requiredquest1` = 13724 WHERE `entry` = 13593;
UPDATE `quests` SET `requiredquest1` = 13607 WHERE `entry` = 13606;
UPDATE `quests` SET `requiredquest1` = 13604 WHERE `entry` = 13607;
UPDATE `quests` SET `requiredquest1` = 13607 WHERE `entry` = 13609;
UPDATE `quests` SET `requiredquest1` = 13607 WHERE `entry` = 13610;
UPDATE `quests` SET `requiredquest1` = 13607 WHERE `entry` = 13611;
UPDATE `quests` SET `requiredquest1` = 13828 WHERE `entry` = 13625;
UPDATE `quests` SET `requiredquest1` = 13820 WHERE `entry` = 13627;
UPDATE `quests` SET `requiredquest1` = 13641 WHERE `entry` = 13643;
UPDATE `quests` SET `requiredquest1` = 13663 WHERE `entry` = 13664;
UPDATE `quests` SET `requiredquest1` = 13828 WHERE `entry` = 13669;
UPDATE `quests` SET `requiredquest1` = 13828 WHERE `entry` = 13670;
UPDATE `quests` SET `requiredquest1` = 13828 WHERE `entry` = 13671;
UPDATE `quests` SET `requiredquest1` = 13829 WHERE `entry` = 13673;
UPDATE `quests` SET `requiredquest1` = 13829 WHERE `entry` = 13674;
UPDATE `quests` SET `requiredquest1` = 13829 WHERE `entry` = 13675;
UPDATE `quests` SET `requiredquest1` = 13829 WHERE `entry` = 13676;
UPDATE `quests` SET `requiredquest1` = 13829 WHERE `entry` = 13677;
UPDATE `quests` SET `requiredquest1` = 13820 WHERE `entry` = 13681;
UPDATE `quests` SET `requiredquest1` = 13794 WHERE `entry` = 13682;
UPDATE `quests` SET `requiredquest1` = 13699 WHERE `entry` = 13703;
UPDATE `quests` SET `requiredquest1` = 13713 WHERE `entry` = 13704;
UPDATE `quests` SET `requiredquest1` = 13725 WHERE `entry` = 13705;
UPDATE `quests` SET `requiredquest1` = 13723 WHERE `entry` = 13706;
UPDATE `quests` SET `requiredquest1` = 13731 WHERE `entry` = 13707;
UPDATE `quests` SET `requiredquest1` = 13728 WHERE `entry` = 13708;
UPDATE `quests` SET `requiredquest1` = 13726 WHERE `entry` = 13709;
UPDATE `quests` SET `requiredquest1` = 13727 WHERE `entry` = 13710;
UPDATE `quests` SET `requiredquest1` = 13729 WHERE `entry` = 13711;
UPDATE `quests` SET `requiredquest1` = 13795 WHERE `entry` = 13788;
UPDATE `quests` SET `requiredquest1` = 13794 WHERE `entry` = 13789;
UPDATE `quests` SET `requiredquest1` = 13794 WHERE `entry` = 13790;
UPDATE `quests` SET `requiredquest1` = 13795 WHERE `entry` = 13791;
UPDATE `quests` SET `requiredquest1` = 13795 WHERE `entry` = 13793;
UPDATE `quests` SET `requiredquest1` = 13702 WHERE `entry` = 13794;
UPDATE `quests` SET `requiredquest1` = 13702 WHERE `entry` = 13795;
UPDATE `quests` SET `requiredquest1` = 13794 WHERE `entry` = 13809;
UPDATE `quests` SET `requiredquest1` = 13794 WHERE `entry` = 13810;
UPDATE `quests` SET `requiredquest1` = 13794 WHERE `entry` = 13811;
UPDATE `quests` SET `requiredquest1` = 13795 WHERE `entry` = 13812;
UPDATE `quests` SET `requiredquest1` = 13795 WHERE `entry` = 13813;
UPDATE `quests` SET `requiredquest1` = 13795 WHERE `entry` = 13814;
UPDATE `quests` SET `requiredquest1` = 13817 WHERE `entry` = 13816;
UPDATE `quests` SET `requiredquest1` = 13816 WHERE `entry` = 13821;
UPDATE `quests` SET `requiredquest1` = 13816 WHERE `entry` = 13822;
UPDATE `quests` SET `requiredquest1` = 13816 WHERE `entry` = 13823;
UPDATE `quests` SET `requiredquest1` = 13816 WHERE `entry` = 13824;
UPDATE `quests` SET `requiredquest1` = 13794 WHERE `entry` = 13861;
UPDATE `quests` SET `requiredquest1` = 13794 WHERE `entry` = 13862;
UPDATE `quests` SET `requiredquest1` = 13795 WHERE `entry` = 13863;
UPDATE `quests` SET `requiredquest1` = 13795 WHERE `entry` = 13864;
UPDATE `quests` SET `requiredquest1` = 13926 WHERE `entry` = 13929;
UPDATE `quests` SET `requiredquest1` = 13927 WHERE `entry` = 13930;
UPDATE `quests` SET `requiredquest1` = 13926 WHERE `entry` = 13933;
UPDATE `quests` SET `requiredquest1` = 13927 WHERE `entry` = 13934;
UPDATE `quests` SET `requiredquest1` = 13954 WHERE `entry` = 13937;
UPDATE `quests` SET `requiredquest1` = 13955 WHERE `entry` = 13938;
UPDATE `quests` SET `requiredquest1` = 13926 WHERE `entry` = 13950;
UPDATE `quests` SET `requiredquest1` = 13927 WHERE `entry` = 13951;
UPDATE `quests` SET `requiredquest1` = 13929 WHERE `entry` = 13954;
UPDATE `quests` SET `requiredquest1` = 13930 WHERE `entry` = 13955;
UPDATE `quests` SET `requiredquest1` = 13929 WHERE `entry` = 13956;
UPDATE `quests` SET `requiredquest1` = 13930 WHERE `entry` = 13957;
UPDATE `quests` SET `requiredquest1` = 13937 WHERE `entry` = 13959;
UPDATE `quests` SET `requiredquest1` = 13938 WHERE `entry` = 13960;
UPDATE `quests` SET `requiredquest1` = 13664 WHERE `entry` = 14016;
UPDATE `quests` SET `requiredquest1` = 14016 WHERE `entry` = 14017;
UPDATE `quests` SET `requiredquest1` = 14349 WHERE `entry` = 14350;
UPDATE `quests` SET `requiredquest1` = 1885 WHERE `entry` = 14420;
UPDATE `quests` SET `requiredquest1` = 24454 WHERE `entry` = 24461;
UPDATE `quests` SET `requiredquest1` = 24711 WHERE `entry` = 24500;
UPDATE `quests` SET `requiredquest1` = 24535 WHERE `entry` = 24553;
UPDATE `quests` SET `requiredquest1` = 24558 WHERE `entry` = 24559;
UPDATE `quests` SET `requiredquest1` = 24563 WHERE `entry` = 24564;
UPDATE `quests` SET `requiredquest1` = 24851 WHERE `entry` = 24576;
UPDATE `quests` SET `requiredquest1` = 24563 WHERE `entry` = 24594;
UPDATE `quests` SET `requiredquest1` = 24535 WHERE `entry` = 24595;
UPDATE `quests` SET `requiredquest1` = 24563 WHERE `entry` = 24596;
UPDATE `quests` SET `requiredquest1` = 24563 WHERE `entry` = 24598;
UPDATE `quests` SET `requiredquest1` = 24576 WHERE `entry` = 24638;
UPDATE `quests` SET `requiredquest1` = 24576 WHERE `entry` = 24645;
UPDATE `quests` SET `requiredquest1` = 24576 WHERE `entry` = 24647;
UPDATE `quests` SET `requiredquest1` = 24576 WHERE `entry` = 24648;
UPDATE `quests` SET `requiredquest1` = 24576 WHERE `entry` = 24649;
UPDATE `quests` SET `requiredquest1` = 24576 WHERE `entry` = 24650;
UPDATE `quests` SET `requiredquest1` = 24576 WHERE `entry` = 24651;
UPDATE `quests` SET `requiredquest1` = 24576 WHERE `entry` = 24652;
UPDATE `quests` SET `requiredquest1` = 24657 WHERE `entry` = 24658;
UPDATE `quests` SET `requiredquest1` = 24657 WHERE `entry` = 24659;
UPDATE `quests` SET `requiredquest1` = 24657 WHERE `entry` = 24660;
UPDATE `quests` SET `requiredquest1` = 24657 WHERE `entry` = 24662;
UPDATE `quests` SET `requiredquest1` = 24657 WHERE `entry` = 24663;
UPDATE `quests` SET `requiredquest1` = 24657 WHERE `entry` = 24664;
UPDATE `quests` SET `requiredquest1` = 24657 WHERE `entry` = 24665;
UPDATE `quests` SET `requiredquest1` = 24657 WHERE `entry` = 24666;
UPDATE `quests` SET `requiredquest1` = 24710 WHERE `entry` = 24711;
UPDATE `quests` SET `requiredquest1` = 24657 WHERE `entry` = 24792;
UPDATE `quests` SET `requiredquest1` = 24713 WHERE `entry` = 24802;
UPDATE `quests` SET `requiredquest1` = 24803 WHERE `entry` = 24806;
UPDATE `quests` SET `requiredquest1` = 24828 WHERE `entry` = 24823;
UPDATE `quests` SET `requiredquest1` = 24815 WHERE `entry` = 24825;
UPDATE `quests` SET `requiredquest1` = 24815 WHERE `entry` = 24826;
UPDATE `quests` SET `requiredquest1` = 24815 WHERE `entry` = 24827;
UPDATE `quests` SET `requiredquest1` = 24815 WHERE `entry` = 24828;
UPDATE `quests` SET `requiredquest1` = 24823 WHERE `entry` = 24829;
UPDATE `quests` SET `requiredquest1` = 24825 WHERE `entry` = 24830;
UPDATE `quests` SET `requiredquest1` = 24830 WHERE `entry` = 24831;
UPDATE `quests` SET `requiredquest1` = 24826 WHERE `entry` = 24832;
UPDATE `quests` SET `requiredquest1` = 24832 WHERE `entry` = 24833;
UPDATE `quests` SET `requiredquest1` = 24827 WHERE `entry` = 24834;
UPDATE `quests` SET `requiredquest1` = 24834 WHERE `entry` = 24835;
UPDATE `quests` SET `requiredquest1` = 24541 WHERE `entry` = 24850;
UPDATE `quests` SET `requiredquest1` = 5518 WHERE `entry` = 5519;
UPDATE `quests` SET `requiredquest1` = 5542 WHERE `entry` = 5543;
UPDATE `quests` SET `requiredquest1` = 5543 WHERE `entry` = 5544;
UPDATE `quests` SET `requiredquest1` = 5659 WHERE `entry` = 5658;
UPDATE `quests` SET `requiredquest1` = 8460 WHERE `entry` = 6131;
UPDATE `quests` SET `requiredquest1` = 6133 WHERE `entry` = 6136;
UPDATE `quests` SET `requiredquest1` = 8461 WHERE `entry` = 6221;
UPDATE `quests` SET `requiredquest1` = 8464 WHERE `entry` = 6241;
UPDATE `quests` SET `requiredquest1` = 6543 WHERE `entry` = 6545;
UPDATE `quests` SET `requiredquest1` = 6543 WHERE `entry` = 6546;
UPDATE `quests` SET `requiredquest1` = 6543 WHERE `entry` = 6547;
UPDATE `quests` SET `requiredquest1` = 24815 WHERE `entry` = 25239;
UPDATE `quests` SET `requiredquest1` = 25239 WHERE `entry` = 25240;
UPDATE `quests` SET `requiredquest1` = 25240 WHERE `entry` = 25242;
UPDATE `quests` SET `requiredquest1` = 583 WHERE `entry` = 339;
UPDATE `quests` SET `requiredquest1` = 583 WHERE `entry` = 340;
UPDATE `quests` SET `requiredquest1` = 583 WHERE `entry` = 341;
UPDATE `quests` SET `requiredquest1` = 583 WHERE `entry` = 342;
UPDATE `quests` SET `requiredquest1` = 3517 WHERE `entry` = 356;
UPDATE `quests` SET `requiredquest1` = 527 WHERE `entry` = 546;
UPDATE `quests` SET `requiredquest1` = 678 WHERE `entry` = 680;
UPDATE `quests` SET `requiredquest1` = 812 WHERE `entry` = 813;
UPDATE `quests` SET `requiredquest1` = 1079 WHERE `entry` = 1091;
UPDATE `quests` SET `requiredquest1` = 3791 WHERE `entry` = 3792;
UPDATE `quests` SET `requiredquest1` = 4601 WHERE `entry` = 4602;
UPDATE `quests` SET `requiredquest1` = 6065 WHERE `entry` = 6061;
UPDATE `quests` SET `requiredquest1` = 6068 WHERE `entry` = 6062;
UPDATE `quests` SET `requiredquest1` = 6071 WHERE `entry` = 6063;
UPDATE `quests` SET `requiredquest1` = 6074 WHERE `entry` = 6064;
UPDATE `quests` SET `requiredquest1` = 6804 WHERE `entry` = 6821;
UPDATE `quests` SET `requiredquest1` = 7564 WHERE `entry` = 7562;
UPDATE `quests` SET `requiredquest1` = 7621 WHERE `entry` = 7622;

-- Mangletooth should cast these spells on you, not teach them
UPDATE `quests` SET `rewspell` = '0' WHERE entry IN (5043,5042,5046,5045,889,5044);

-- Warlock should start with Imp spell
REPLACE INTO `playercreateinfo_spells` VALUES (38, 688);
REPLACE INTO `playercreateinfo_spells` VALUES (39, 688);
REPLACE INTO `playercreateinfo_spells` VALUES (40, 688);
REPLACE INTO `playercreateinfo_spells` VALUES (41, 688);
REPLACE INTO `playercreateinfo_spells` VALUES (55, 688);

-- Areatriggers now check for level requirement
DELETE FROM areatriggers WHERE type = 0 AND name LIKE "Unknown";
UPDATE areatriggers Set type = 1 WHERE type = 4 AND required_level != 0;

-- Fix quest Cuergos Gold (2882)
UPDATE `gameobject_spawns` SET `Flags` = '2' WHERE `id` = '22407';

-- Tenders in Eversong woods should be neutral
UPDATE creature_proto SET faction = 7 WHERE entry = 15271;
UPDATE creature_proto SET faction = 7 WHERE entry = 15294;
UPDATE creature_spawns SET faction = 7 WHERE entry = 15294;
UPDATE creature_spawns SET faction = 7 WHERE entry = 15271;

-- Delete some unwanted triggers
DELETE FROM creature_spawns WHERE entry = 34281;

-- fix for quest "Thirst Unending" (8346)
UPDATE `quests` SET `ReqKillMobOrGOId1` = '15274' WHERE `entry` = '8346';


-- fix for quest "Inoculation" (9303)
UPDATE `quests` SET `ReqKillMobOrGOId1` = '16518' WHERE `entry` = '9303';

-- Tame Beast quests
-- Tauren
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=2956 WHERE entry=6061;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=2959 WHERE entry=6087;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=2970 WHERE entry=6088;

-- Nightelf
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=1998 WHERE entry=6063;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=2043 WHERE entry=6101;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=1996 WHERE entry=6102;

-- Orc, Troll
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=3099 WHERE entry=6062;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=3126 WHERE entry=6082;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=3107 WHERE entry=6083;

-- Dwarf
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=1126 WHERE entry=6064;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=1201 WHERE entry=6084;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=1196 WHERE entry=6085;

-- Bloodelf
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=15650 WHERE entry=9484;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=16353 WHERE entry=9485;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=15652 WHERE entry=9486;

-- Draenei
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=17217 WHERE entry=9591;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=17374 WHERE entry=9592;
UPDATE quests SET ReqKillMobOrGOCount1=1, ReqKillMobOrGoId1=17203 WHERE entry=9593;

-- Shaman's call of water
UPDATE quests SET RequiredOneOfQuest="1528 1529 2985 2986" WHERE entry=1530;
UPDATE quests SET RemoveQuests="1529 2985 2986" WHERE entry=1528;
UPDATE quests SET RemoveQuests="1528 2985 2986" WHERE entry=1529;
UPDATE quests SET RemoveQuests="1528 1529 2986" WHERE entry=2985;
UPDATE quests SET RemoveQuests="1528 1529 2985" WHERE entry=2986;

-- fix gossip for Squire Rowe
REPLACE INTO `npc_gossip_textid` VALUES (17804, 9066);

-- these quests are completed by script
UPDATE quests SET iscompletedbyspelleffect=1 WHERE entry IN (5929,5930);
UPDATE quests SET iscompletedbyspelleffect=1 WHERE entry IN (6001,6002);

-- fix Lore Keeper Protection Unit
UPDATE `creature_spawns` SET `CanFly` = '1' WHERE `id` = '132051';

-- Archmage Pantarus (Ulduar)
REPLACE INTO `npc_gossip_textid` (`creatureid`, `textid`) VALUES (33624, 14362);

-- Well Watcher Solanian (Sunstrider Isle)
REPLACE INTO `npc_gossip_textid` (`creatureid`, `textid`) VALUES (15295, 7784);

-- fix for The RP-GG
UPDATE `creature_proto` SET `npcflags` = '16777216' WHERE `entry` = '30560';
REPLACE INTO `spellclickspells` (`CreatureID`, `SpellID`) VALUES (30560, 57347);

-- fix gossip for Gatewatcher Aendor
REPLACE INTO `npc_gossip_textid` (`creatureid`, `textid`) VALUES (18790, 9577);

-- fix gossip for Harassed Citizen
REPLACE INTO `npc_gossip_textid` (`creatureid`, `textid`) VALUES (18792, 9587);

-- Remove all pvp flags from NPCs (over 60k)
UPDATE creature_spawns SET bytes2 = bytes2 - 256 WHERE bytes2 = bytes2|256;

UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 727 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 17549 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 17703 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18103 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18103 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 19000 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 19000 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 68 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 2525 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1283 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1277 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1278 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1279 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3291 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 11701 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 5732 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 36273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23713 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28830 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 36225 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 5747 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 5706 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3190 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33019 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33018 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 5595 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 5595 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3083 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3084 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3084 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3084 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3084 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3084 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14378 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14379 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14380 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26112 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26112 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26112 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26112 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26112 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26112 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26880 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26112 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26112 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26881 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27137 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25602 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27138 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28674 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32514 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27139 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24067 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28675 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32515 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27140 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25604 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28676 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32516 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32773 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28677 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27141 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32774 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26374 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25606 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30726 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27142 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29702 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27143 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29703 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27144 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27145 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26634 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27146 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27147 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26379 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26380 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27148 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26381 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23565 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29965 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27149 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29965 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29965 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29965 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24333 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29966 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27150 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29966 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29966 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26382 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27151 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28175 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31247 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28687 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28177 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25617 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25617 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25617 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25617 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25617 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25617 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25617 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25617 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25617 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25617 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28690 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26387 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28691 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29715 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29716 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26388 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26900 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28692 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26901 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29973 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29973 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29973 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29973 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29973 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29973 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28693 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24341 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26645 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26645 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28694 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24342 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24086 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26903 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28951 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23831 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24343 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26904 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27416 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26392 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28696 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24088 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26649 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27673 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27673 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28697 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26905 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27673 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27673 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27673 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24089 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23833 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26906 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27930 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24090 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24090 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24090 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24090 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24090 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27163 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27163 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26907 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24347 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28699 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27163 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27163 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27163 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27163 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27163 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27163 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27163 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27163 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26652 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26908 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24348 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28956 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28700 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23836 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28701 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24349 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25374 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28702 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26910 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27422 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24350 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28958 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23839 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23839 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30239 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32287 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23839 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28703 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23839 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23839 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23839 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23839 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23839 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23839 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27423 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26912 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28704 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27425 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28705 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26913 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30241 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26914 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28706 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23842 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26915 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28707 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24356 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23844 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23844 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26916 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27172 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28708 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29476 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23844 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23844 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23844 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23844 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24357 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29478 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27174 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24359 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27176 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26666 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27178 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28714 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24362 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24106 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28715 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23851 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23851 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23851 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29740 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26156 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28716 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28205 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27181 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30253 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26158 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27182 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28718 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30254 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29743 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26415 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27183 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30255 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24111 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29744 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30256 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29745 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27185 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30257 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28721 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28722 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27186 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30259 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23859 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27187 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28723 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23860 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27188 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32564 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30261 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29493 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28725 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27190 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28726 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29494 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23862 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26935 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30263 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30263 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30263 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30263 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30263 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30263 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29495 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28727 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26935 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26936 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26680 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29496 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24376 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28728 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27193 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30265 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30265 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30265 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30265 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29497 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30265 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30265 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24634 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26170 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26170 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26939 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27195 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24123 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29499 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27451 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24125 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30269 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28989 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31805 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28990 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30271 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24127 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31807 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28991 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26944 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28992 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24129 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29505 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28994 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29506 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29250 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24131 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29507 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28995 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27204 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28228 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26180 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29508 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29252 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28997 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26181 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29509 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29253 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26950 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26182 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24390 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28742 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29510 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29511 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24135 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26951 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27463 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27464 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26952 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29512 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26184 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26697 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30281 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30281 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29513 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26185 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26186 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26954 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29514 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26187 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24139 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26955 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26956 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27468 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24141 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26957 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24142 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24142 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26958 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26959 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26960 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26448 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32337 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26961 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30290 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30290 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26962 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26707 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23891 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29523 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26963 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24147 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27475 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26964 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24148 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32596 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32596 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27221 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26709 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24149 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32597 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30039 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28247 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28247 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28247 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28247 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32599 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29527 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29528 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29529 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29530 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24154 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27482 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27482 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27482 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27482 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27482 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27482 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27482 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27482 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32602 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26459 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24155 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27484 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29532 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25437 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29277 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26973 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26205 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24157 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25438 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26718 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25439 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29535 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26720 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29537 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26721 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29282 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29538 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23906 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28771 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23908 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26725 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29285 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29285 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28261 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27749 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25702 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28262 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28774 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27494 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27495 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28263 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27751 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23911 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28264 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28776 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26984 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26985 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30569 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27497 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26986 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30058 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30058 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30058 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30058 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26474 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25194 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26987 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29547 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26988 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29548 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26989 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27501 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26990 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27758 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26991 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26992 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27248 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24176 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27760 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26993 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26994 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26226 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27250 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27251 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27251 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27251 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29043 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26995 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27251 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27251 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27251 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26228 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 15732 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26996 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26997 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26229 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26485 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26485 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27509 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26998 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28790 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26999 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28791 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27511 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27000 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28792 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27001 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28794 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24188 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28796 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28797 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25982 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24702 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28798 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26870 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25983 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24703 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28031 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24191 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28799 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 68 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 68 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 68 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 68 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29016 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29019 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29019 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29019 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29019 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29019 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29019 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 6237 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 6237 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 6237 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27904 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27906 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32538 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27173 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28827 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31808 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31833 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31833 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31833 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31834 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31078 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30067 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3626 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1721 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30189 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31701 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31701 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31701 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31701 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31701 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30431 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30433 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25379 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27432 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27432 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27432 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27432 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27432 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27432 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27432 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27440 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29233 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27441 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25394 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32565 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26938 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26941 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26945 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26968 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26969 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26972 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26974 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26975 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26976 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26977 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26980 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26981 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26982 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25446 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25459 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25978 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25237 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25242 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25243 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25244 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25247 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25256 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25272 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25274 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25276 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25276 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25276 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25276 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25276 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25276 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25276 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25276 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26044 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25276 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25276 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25277 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25278 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25279 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25286 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25286 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25286 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25286 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25286 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25286 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25288 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25289 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32474 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29155 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25327 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26109 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26109 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26109 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29203 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29205 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29207 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29208 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27928 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29480 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28486 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28488 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28488 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28488 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28488 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29141 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29142 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28070 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29712 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29203 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29205 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29207 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29208 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27928 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29212 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28486 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28487 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28487 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28488 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28488 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28488 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28488 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28489 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18103 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 13076 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 68 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28383 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28383 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28383 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28383 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28390 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28390 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28390 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28391 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28391 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28391 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18103 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28889 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28889 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28889 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28390 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28390 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28390 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28391 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28391 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28391 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29191 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29191 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29191 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29191 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29191 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29191 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 13076 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32533 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27935 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27938 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27940 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27943 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27948 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27950 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27953 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30058 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30058 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30058 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30058 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30058 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30058 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26851 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27136 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27661 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27661 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27661 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27661 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27155 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27156 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27158 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27159 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27161 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27314 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27316 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27317 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26878 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31053 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31091 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31091 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 15350 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25380 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25381 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25440 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25808 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25808 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25808 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25808 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25808 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25808 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25809 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25810 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25811 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25819 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25819 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25819 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24807 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27665 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27671 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27671 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27671 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27671 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27671 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27161 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27161 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27161 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27162 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27164 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27677 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27713 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27713 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27713 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27713 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27516 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27516 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27516 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27516 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27519 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27521 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27521 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27521 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27521 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27521 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27521 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27521 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27784 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27537 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27538 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27536 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27540 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26780 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26780 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27038 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27039 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27040 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27043 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27045 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27560 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27318 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27576 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27576 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27576 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27576 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27576 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27857 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27872 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27361 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27361 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27361 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27361 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26877 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 5081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24750 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24720 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24719 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24717 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27532 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27748 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29251 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27708 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26934 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26909 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23823 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24330 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 5595 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 5595 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 13076 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1976 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 68 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33060 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33060 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33062 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33062 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33109 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33109 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33629 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33669 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33264 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33264 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33264 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33264 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33264 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33264 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33264 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33264 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33264 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25240 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27566 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27566 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35090 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35098 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35098 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35098 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35098 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35098 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35098 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35098 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35098 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35098 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35098 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35102 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28624 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29583 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35070 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35070 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35070 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35070 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35070 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35070 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35070 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35070 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35070 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33580 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33581 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33583 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33586 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33587 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33588 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33589 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33590 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33591 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33594 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33596 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33597 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33854 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33598 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33434 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33435 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32371 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35587 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35587 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35131 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35132 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35133 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35135 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35496 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35497 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35498 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25258 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25259 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25261 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 34252 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35790 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25335 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35093 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35100 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35068 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 14730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 40160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 23840 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26780 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26780 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26780 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27844 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27843 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26870 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26859 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26979 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31033 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 36224 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 36226 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28832 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28828 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28829 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 17664 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 16733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 17549 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18800 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18800 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18800 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18815 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18815 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18815 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18815 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18815 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18038 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32734 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32735 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 19000 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 68 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 277 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 279 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 482 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 483 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1257 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1275 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1285 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1286 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1287 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1289 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1291 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1295 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1297 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1298 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1301 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1402 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1427 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1431 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1432 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 1976 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 2198 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 2455 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 2456 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 2457 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3469 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3518 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 3681 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 4974 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 4981 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 5193 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 6174 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 6740 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 6781 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 8670 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 8719 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 9047 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 11050 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 11867 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 12480 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 12481 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 12778 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 12779 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 12780 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 15659 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 18704 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 19848 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29143 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30723 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30724 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27106 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27107 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27108 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27110 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28490 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24364 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31304 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30377 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35599 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30610 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30715 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35281 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 37688 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 37696 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 34179 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28951 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28690 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24528 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24052 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30124 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35336 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35335 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33059 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33063 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33060 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33167 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33062 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33067 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33669 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33109 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33666 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33629 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33782 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33318 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33323 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33322 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33317 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33319 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33316 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33321 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33324 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33320 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33845 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33844 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33217 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28054 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28703 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28723 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28722 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28721 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28718 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28728 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28697 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28694 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28956 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28989 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28714 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28702 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28701 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28742 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28725 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28698 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28693 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28774 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28704 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28706 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28691 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28692 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28715 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28707 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28674 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 31238 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28776 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32596 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32602 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32601 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28716 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28687 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28699 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28726 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28708 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28958 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28727 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32287 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32739 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32736 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32737 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32734 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32735 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 36558 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27692 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27756 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 27755 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28990 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28991 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28992 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28994 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28995 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28997 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29156 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29476 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29478 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29491 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29493 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29494 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29495 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29496 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29497 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29499 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29505 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29506 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29509 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29510 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29511 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29512 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29513 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29514 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29523 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29527 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29528 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29529 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29530 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29532 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29535 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29537 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29538 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29547 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29548 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29628 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29636 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29640 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29641 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29702 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29703 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29715 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29716 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30104 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30352 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30604 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30605 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30607 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30726 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30755 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32172 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32216 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32337 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32411 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32451 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32509 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32514 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32515 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32516 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32668 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32669 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32675 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32676 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32677 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32678 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32679 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32680 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32681 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32683 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32684 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32685 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32686 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32687 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32688 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32689 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32690 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32691 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32692 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32693 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32723 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32726 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32727 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32728 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32729 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32730 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32731 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32732 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 32733 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33027 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 34252 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35496 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35497 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35498 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35500 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35790 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 40160 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25477 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26600 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26599 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26634 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26645 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26817 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 25783 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 40388 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 17539 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30652 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 30653 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 34075 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 34081 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 40607 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 34078 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 28306 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 34793 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 34775 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 36355 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 35273 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 34802 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 36213 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 10578 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 17119 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 33114 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24062 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 29093 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24046 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 24045 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 26932 AND bytes2 != bytes2|256;
UPDATE creature_spawns SET bytes2 = bytes2 + 256 WHERE entry = 38066 AND bytes2 != bytes2|256;

