-- gameobject_spawns recount
ALTER TABLE `gameobject_spawns` DROP `id`;
ALTER TABLE `gameobject_spawns` ADD COLUMN `id` int(11) unsigned NOT NULL auto_increment FIRST,
ADD PRIMARY KEY (`id`);

-- creature_spawns, waypoints, formations, timed_emotes, instance_bosses recount
ALTER TABLE `creature_spawns` ADD COLUMN `id2` int(11) unsigned NOT NULL AFTER `phase`;
UPDATE `creature_spawns` SET `id2` = `id`;
ALTER TABLE `creature_spawns` ADD INDEX `id2` (`id2`);
ALTER TABLE `creature_spawns` DROP `id`;
ALTER TABLE `creature_spawns` ADD COLUMN `id` int(11) unsigned NOT NULL auto_increment FIRST,
ADD PRIMARY KEY (`id`);

ALTER TABLE `creature_waypoints` DROP INDEX `PRIMARY`;
UPDATE `creature_waypoints` cw JOIN `creature_spawns` cs ON cw.`spawnid` = cs.`id2` SET cw.`spawnid` = cs.`id`;
ALTER TABLE `creature_waypoints` ADD PRIMARY KEY (`spawnid`, `waypointid`);
ALTER TABLE `creature_formations` DROP INDEX `PRIMARY`;
UPDATE `creature_formations` cf JOIN `creature_spawns` cs ON cf.`spawn_id` = cs.`id2` SET cf.`spawn_id` = cs.`id`;
UPDATE `creature_formations` cf JOIN `creature_spawns` cs ON cf.`target_spawn_id` = cs.`id2` SET cf.`target_spawn_id` = cs.`id`;
ALTER TABLE `creature_formations` ADD PRIMARY KEY (`spawn_id`);
ALTER TABLE `creature_timed_emotes` DROP INDEX `PRIMARY`;
UPDATE `creature_timed_emotes` ce JOIN `creature_spawns` cs ON ce.`spawnid` = cs.`id2` SET ce.`spawnid` = cs.`id`;
ALTER TABLE `creature_formations` ADD PRIMARY KEY (`spawnid`, `rowid`);
ALTER TABLE `instance_bosses` DROP INDEX `PRIMARY`;
UPDATE `instance_bosses` ib JOIN `creature_spawns` cs ON ib.`creatureid` = cs.`id2` SET ib.`creatureid` = cs.`id`;
ALTER TABLE `instance_bosses` ADD PRIMARY KEY (`mapid`, `creatureid`);

ALTER TABLE `creature_spawns` DROP `id2`;

-- Re-order table
ALTER TABLE `ai_agents` ORDER BY `entry` ASC;
ALTER TABLE `ai_threattospellid` ORDER BY `spell` ASC;
ALTER TABLE `areatriggers` ORDER BY `entry` ASC;
ALTER TABLE `auctionhouse` ORDER BY `creature_entry` ASC;
ALTER TABLE `battlemasters` ORDER BY `creature_entry` ASC;
ALTER TABLE `clientaddons` ORDER BY `id` ASC;
ALTER TABLE `command_overrides` ORDER BY `command_name` ASC;
ALTER TABLE `creature_formations` ORDER BY `spawn_id` ASC;
ALTER TABLE `creature_names` ORDER BY `entry` ASC;
ALTER TABLE `creature_names_localized` ORDER BY `id` ASC;
ALTER TABLE `creature_proto` ORDER BY `entry` ASC;
ALTER TABLE `creature_quest_finisher` ORDER BY `id` ASC;
ALTER TABLE `creature_quest_starter` ORDER BY `id` ASC;
ALTER TABLE `creature_staticspawns` ORDER BY `id` ASC;
ALTER TABLE `creature_timed_emotes` ORDER BY `spawnid` ASC;
ALTER TABLE `creature_waypoints` ORDER BY `spawnid` ASC, `waypointid` ASC;
ALTER TABLE `display_bounding_boxes` ORDER BY `displayid` ASC;
ALTER TABLE `fishing` ORDER BY `Zone` ASC;
ALTER TABLE `gameobject_names` ORDER BY `entry` ASC;
ALTER TABLE `gameobject_names_localized` ORDER BY `entry` ASC;
ALTER TABLE `gameobject_quest_finisher` ORDER BY `id` ASC;
ALTER TABLE `gameobject_quest_item_binding` ORDER BY `entry` ASC;
ALTER TABLE `gameobject_quest_pickup_binding` ORDER BY `entry` ASC;
ALTER TABLE `gameobject_quest_starter` ORDER BY `id` ASC;
ALTER TABLE `gameobject_staticspawns` ORDER BY `id` ASC;
ALTER TABLE `graveyards` ORDER BY `id` ASC;
ALTER TABLE `instance_bosses` ORDER BY `mapid` ASC;
ALTER TABLE `item_quest_association` ORDER BY `item` ASC, `quest`;
ALTER TABLE `item_randomprop_groups` ORDER BY `entry_id` ASC;
ALTER TABLE `item_randomsuffix_groups` ORDER BY `entry_id` ASC;
ALTER TABLE `itemnames` ORDER BY `entry` ASC;
ALTER TABLE `itempages` ORDER BY `entry` ASC;
ALTER TABLE `itempages_localized` ORDER BY `entry` ASC;
ALTER TABLE `itempetfood` ORDER BY `entry` ASC;
ALTER TABLE `items` ORDER BY `entry` ASC;
ALTER TABLE `items_localized` ORDER BY `entry` ASC;
ALTER TABLE `loot_creatures` ORDER BY `entryid` ASC, `itemid` ASC;
ALTER TABLE `loot_fishing` ORDER BY `entryid` ASC, `itemid` ASC;
ALTER TABLE `loot_gameobjects` ORDER BY `entryid` ASC, `itemid` ASC;
ALTER TABLE `loot_items` ORDER BY `entryid` ASC, `itemid` ASC;
ALTER TABLE `loot_pickpocketing` ORDER BY `entryid` ASC, `itemid` ASC;
ALTER TABLE `loot_skinning` ORDER BY `entryid` ASC, `itemid` ASC;
ALTER TABLE `npc_gossip_textid` ORDER BY `creatureid` ASC;
ALTER TABLE `npc_monstersay` ORDER BY `entry` ASC;
ALTER TABLE `npc_text` ORDER BY `entry` ASC;
ALTER TABLE `npc_text_localized` ORDER BY `entry` ASC;
ALTER TABLE `petdefaultspells` ORDER BY `entry` ASC;
ALTER TABLE `playercreateinfo` ORDER BY `index` ASC;
ALTER TABLE `playercreateinfo_bars` ORDER BY `race` ASC;
ALTER TABLE `playercreateinfo_items` ORDER BY `indexid` ASC;
ALTER TABLE `playercreateinfo_skills` ORDER BY `indexid` ASC;
ALTER TABLE `playercreateinfo_spells` ORDER BY `indexid` ASC;
ALTER TABLE `professiondiscoveries` ORDER BY `SpellId` ASC;
ALTER TABLE `quest_poi` ORDER BY `questId` ASC, `poiId` ASC;
ALTER TABLE `quest_poi_points` ORDER BY `questId` ASC, `poiId` ASC;
ALTER TABLE `quests` ORDER BY `entry` ASC;
ALTER TABLE `quests_localized` ORDER BY `entry` ASC;
ALTER TABLE `recall` ORDER BY `id` ASC;
ALTER TABLE `reputation_creature_onkill` ORDER BY `creature_id` ASC;
ALTER TABLE `reputation_faction_onkill` ORDER BY `faction_id` ASC;
ALTER TABLE `reputation_instance_onkill` ORDER BY `mapid` ASC;
ALTER TABLE `spell_coef_override` ORDER BY `id` ASC;
ALTER TABLE `spell_disable` ORDER BY `spellid` ASC;
ALTER TABLE `spell_effects_override` ORDER BY `spellId` ASC;
ALTER TABLE `spell_proc` ORDER BY `spellid` ASC;
ALTER TABLE `spellclickspells` ORDER BY `CreatureID` ASC;
ALTER TABLE `spelloverride` ORDER BY `overrideId` ASC;
ALTER TABLE `spelltargetconstraints` ORDER BY `SpellID`;
ALTER TABLE `teleport_coords` ORDER BY `id` ASC;
ALTER TABLE `totemspells` ORDER BY `spell` ASC;
ALTER TABLE `trainer_defs` ORDER BY `entry` ASC;
ALTER TABLE `trainer_spells` ORDER BY `entry` ASC;
ALTER TABLE `transport_creatures` ORDER BY `transport_entry`;
ALTER TABLE `transport_data` ORDER BY `entry` ASC;
ALTER TABLE `unit_display_sizes` ORDER BY `DisplayID` ASC;
ALTER TABLE `vendor_restrictions` ORDER BY `entry` ASC;
ALTER TABLE `vendors` ORDER BY `entry` ASC;
ALTER TABLE `weather` ORDER BY `zoneId` ASC;
ALTER TABLE `worldbroadcast` ORDER BY `entry` ASC;
ALTER TABLE `worldbroadcast_localized` ORDER BY `entry` ASC;
ALTER TABLE `worldmap_info` ORDER BY `entry` ASC;
ALTER TABLE `worldmap_info_localized` ORDER BY `entry` ASC;
ALTER TABLE `worldstring_tables` ORDER BY `entry` ASC;
ALTER TABLE `worldstring_tables_localized` ORDER BY `entry` ASC;
ALTER TABLE `zoneguards` ORDER BY `zone` ASC;

-- Optimize requests
OPTIMIZE TABLE `ai_agents`, `ai_threattospellid`, `arcemu_db_version`, `areatriggers`, `auctionhouse`, `battlemasters`, `clientaddons`, `command_overrides`, `creature_formations`, `creature_names`, `creature_names_localized`, `creature_proto`, `creature_quest_finisher`, `creature_quest_starter`, `creature_spawns`, `creature_staticspawns`, `creature_timed_emotes`, `creature_waypoints`, `display_bounding_boxes`, `fishing`, `gameobject_names`, `gameobject_names_localized`, `gameobject_quest_finisher`, `gameobject_quest_item_binding`, `gameobject_quest_pickup_binding`, `gameobject_quest_starter`, `gameobject_spawns`, `gameobject_staticspawns`, `graveyards`, `instance_bosses`,  `item_quest_association`, `item_randomprop_groups`, `item_randomsuffix_groups`, `itemnames`, `itempages`, `itempages_localized`, `itempetfood`, `items`, `items_localized`, `loot_creatures`, `loot_fishing`, `loot_gameobjects`, `loot_items`, `loot_pickpocketing`, `loot_skinning`, `npc_gossip_textid`, `npc_monstersay`, `npc_text`, `npc_text_localized`, `petdefaultspells`, `playercreateinfo`, `playercreateinfo_bars`, `playercreateinfo_items`, `playercreateinfo_skills`, `playercreateinfo_spells`, `professiondiscoveries`, `quest_poi`, `quest_poi_points`, `quests`, `quests_localized`, `recall`, `reputation_creature_onkill`, `reputation_faction_onkill`, `reputation_instance_onkill`, `spell_coef_override`, `spell_disable`, `spell_effects_override`, `spell_proc`, `spellclickspells`, `spelloverride`, `spelltargetconstraints`, `teleport_coords`, `totemspells`, `trainer_defs`, `trainer_spells`, `transport_creatures`, `transport_data`, `unit_display_sizes`, `vendor_restrictions`, `vendors`, `weather`, `wordfilter_character_names`, `wordfilter_chat`, `worldbroadcast`, `worldbroadcast_localized`, `worldmap_info`, `worldmap_info_localized`, `worldstring_tables`, `worldstring_tables_localized`, `zoneguards`;
