/* 
=========================
=== NPC Flags redone  ===
===   by ClaudeNegm   ===
=========================

This should fix any problems you are having with creature_proto flags, if this didn't fix it, please report your problem on WhyDB forums.

This has been created for WhyDB ONLY!

*/

# UNIT_NPC_FLAG_NONE {Reset npc flags}
UPDATE `creature_proto` SET `npcflags` = '0';

# UNIT_NPC_FLAG_GOSSIP
UPDATE `creature_proto` SET `npcflags` = `npcflags` | '1' WHERE `entry` IN (SELECT `creatureid` FROM `npc_gossip_textid` UNION SELECT `entry` FROM `creature_names` WHERE `info_str` = 'Directions');

# UNIT_NPC_FLAG_QUESTGIVER
UPDATE `creature_proto` SET `npcflags` = `npcflags` | '2' WHERE `entry` IN (SELECT DISTINCT `id` FROM `creature_quest_starter` UNION SELECT DISTINCT `id` FROM `creature_quest_finisher`);

# UNIT_NPC_FLAG_TRAINER
UPDATE `creature_proto` JOIN `trainer_defs` USING(`entry`) SET `npcflags` = `npcflags` | '16';

# UNIT_NPC_FLAG_TRAINER_CLASS
UPDATE `creature_proto` JOIN `trainer_defs` USING(`entry`) SET `npcflags` = `npcflags` | '32' WHERE `req_class` > '0' AND `trainer_type` != '3';

# UNIT_NPC_FLAG_TRAINER_PROF
UPDATE `creature_proto` JOIN `trainer_defs` USING(`entry`) SET `npcflags` = `npcflags` | '64' WHERE `trainer_type` = '2';

# UNIT_NPC_FLAG_VENDOR
UPDATE `creature_proto` JOIN `vendors` USING(`entry`) SET `npcflags` = `npcflags` | '128';

# UNIT_NPC_FLAG_VENDOR_AMMO
UPDATE `creature_proto` JOIN `vendors` USING(`entry`) SET `npcflags` = `npcflags` | '256' WHERE `item` IN (SELECT `entry` FROM `items` WHERE `class` = '6');

# UNIT_NPC_FLAG_VENDOR_FOOD
UPDATE `creature_proto` JOIN `vendors` USING(`entry`) SET `npcflags` = `npcflags` | '512' WHERE `item` IN (SELECT `entry` FROM `items` WHERE `class` = '0' AND `subclass` = '5');

# UNIT_NPC_FLAG_VENDOR_POISON
UPDATE `creature_proto` JOIN `vendors` USING(`entry`) SET `npcflags` = `npcflags` | '1024' WHERE `item` IN (SELECT `entry` FROM `items` WHERE `class` = '0' AND `subclass` = '8' AND `name1` LIKE '%poison%');

# UNIT_NPC_FLAG_VENDOR_REAGENT
UPDATE `creature_proto` JOIN `vendors` USING(`entry`) SET `npcflags` = `npcflags` | '2048' WHERE `item` IN (SELECT `entry` FROM `items` WHERE `class` = '15' AND `subclass` = '1');

# UNIT_NPC_FLAG_ARMORER
# according to wowwiki anyone who sells weapons (class 2) or armor (class 4) or blacksmithing supplies can repair
UPDATE `creature_proto` JOIN `vendors` USING(`entry`) SET `npcflags` = `npcflags` | '4096' WHERE 
	( 
		(`item` IN (SELECT `entry` FROM `items` WHERE (`class` = '2' AND `subclass` NOT IN ('14', '16', '20')) OR (`class` = '4' AND `subclass` != '0')) AND `max_amount` = '0' AND `extended_cost` = '0')
		OR
		(`entry` IN (SELECT `entry` FROM `creature_names` WHERE `subname` LIKE '%blacksmithing%supplies'))
	)
	AND `entry` NOT IN (SELECT `entry` FROM `creature_names` WHERE `subname` LIKE '%quartermaster%')
	AND `entry` NOT IN ('5783','11555','19020','19021','19836','24539');

# UNIT_NPC_FLAG_TAXIVENDOR
UPDATE `creature_proto` JOIN `creature_names` USING(`entry`) SET `npcflags` = `npcflags` | '8192' WHERE `subname` LIKE '%Bat Handler%' OR `subname` LIKE '%Wind Rider Master%' OR subname LIKE '%Hippogryph Master%' OR subname LIKE '%Gryphon Master%' OR subname LIKE '%Dragonhawk Master%' OR subname LIKE '%Flight Master%';

# UNIT_NPC_FLAG_SPIRITHEALER
UPDATE `creature_proto` JOIN `creature_names` USING(`entry`) SET `npcflags` = `npcflags` | '16384' WHERE `name` = 'Spirit Healer';

# UNIT_NPC_FLAG_INNKEEPER
UPDATE `creature_proto` JOIN `creature_names` USING(`entry`) SET `npcflags` = `npcflags` | '65536' WHERE `subname` LIKE '%Innkeeper%';

# UNIT_NPC_FLAG_BANKER
UPDATE `creature_proto` JOIN `creature_names` USING(`entry`) SET `npcflags` = `npcflags` | '131072' WHERE `subname` LIKE '%Banker%';

# UNIT_NPC_FLAG_ARENACHARTER
UPDATE `creature_proto` JOIN `creature_names` USING(`entry`) SET `npcflags` = `npcflags` | '262144' WHERE `subname` LIKE '%Arena Organizer%' OR `name` LIKE '%Arena Organizer%' OR `subname` = 'Guild Master';

# UNIT_NPC_FLAG_TABARDCHANGER
UPDATE `creature_proto` JOIN `creature_names` USING(`entry`) SET `npcflags` = `npcflags` | '524288' WHERE `subname` = 'Guild Master';

# UNIT_NPC_FLAG_BATTLEFIELDPERSON
UPDATE `creature_proto` JOIN `battlemasters` ON (`entry` = `creature_entry`) SET `npcflags` = `npcflags` | '1048576';

# UNIT_NPC_FLAG_AUCTIONEER
UPDATE `creature_proto` JOIN `auctionhouse` ON (`entry` = `creature_entry`) SET `npcflags` = `npcflags` | '2097152';

# UNIT_NPC_FLAG_STABLEMASTER
UPDATE `creature_proto` JOIN `creature_names` USING(`entry`) SET `npcflags` = `npcflags` | '4194304' WHERE `subname` = 'Stable Master';

# UNIT_NPC_FLAG_GUILD_BANK
UPDATE `creature_proto` JOIN `creature_names` USING(`entry`) SET `npcflags` = `npcflags` | '8388608' WHERE `subname` = 'Guild Banker';

# UNIT_NPC_FLAG_SPELLCLICK
UPDATE `creature_proto` JOIN `creature_names` USING(`entry`) SET `npcflags` = `npcflags` | '16777216' WHERE `info_str` = 'vehichleCursor';

# UNIT_NPC_FLAG_GOSSIP for UNIT_NPC_FLAG_TRAINER + UNIT_NPC_FLAG_VENDOR or UNIT_NPC_FLAG_INNKEEPER + UNIT_NPC_FLAG_VENDOR or UNIT_NPC_FLAG_ARENACHARTER + UNIT_NPC_FLAG_TABARDCHANGER
UPDATE `creature_proto` SET `npcflags` = `npcflags` | '1'  WHERE `npcflags` & '144' OR `npcflags` & '65664' OR `npcflags` & '786432';

# no UNIT_NPC_FLAG_GOSSIP for UNIT_NPC_FLAG_SPIRITHEALER or UNIT_NPC_FLAG_STABLE
UPDATE `creature_proto` SET `npcflags` = `npcflags` &~ '1' WHERE `npcflags` & '16384' OR `npcflags` & '4194304';

/* End, updated 28/12/2011 by Sadikum */
