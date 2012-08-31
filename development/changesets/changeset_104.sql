/* Changeset 104
	* Fixed quest starter for Quest #6069 (The Hunter's Path)
	* Fixed Serpent-Touched Berserker not counting toward quest Foundation for Revenge
	* Redid whole gameobject_quest_pickup_binding and gameobject_quest_item_binding
	* Fix for 1 more item that sold for gold and badges
	* Npc selling free honor that isnt even suppost to sell stuff http://www.wowhead.com/npc=15350
	* Removed dalaran visters falling from sky (these are event only)
	* Violet Hold Guards should not be attackable
	* Fixed required targets for spell id #19512 (Quest Curing the Sick)
	* Fixed Required quests for Tame the beast quests
	* All creature quest starters and finishers have been redone!
	* Fixed few gameobject states (according to arcemu r4054).
	* Add some missing itempages and deleted those which are unused.
	* Add 6 missing items.
	* Delete a wrong entry in item_quest_association.
	* Add a lot of emote for quests (thanks UDB).
*/

-- Fix starting NPC for quest The Hunter's Path
UPDATE `creature_quest_starter` SET `id` = '3171' WHERE `creature_quest_starter`.`id` =3605 AND `creature_quest_starter`.`quest` =6069;

-- Fix for Serpent-Touched Berserker not counting toward quest Foundation for Revenge
UPDATE `creature_names` SET `killcredit2` = '28713' WHERE `creature_names`.`entry` =28748;

TRUNCATE gameobject_quest_item_binding;
TRUNCATE gameobject_quest_pickup_binding;
INSERT INTO gameobject_quest_item_binding VALUES ('144053', '10', '8593', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2039', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3658', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153473', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153472', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3719', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3694', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3662', '16', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('126049', '17', '8047', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('128293', '17', '8047', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('177675', '17', '8047', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('177785', '28', '15877', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177785', '29', '15877', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177792', '30', '15883', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177794', '30', '15883', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177790', '30', '15882', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177844', '30', '15882', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('759', '48', '737', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('50936', '49', '738', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('50935', '49', '739', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('50937', '49', '740', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '50', '6037', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('50982', '53', '743', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('290', '64', '841', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('183445', '64', '841', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191819', '64', '841', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193019', '64', '841', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1560', '70', '910', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('23505', '70', '910', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('183331', '70', '910', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('183332', '70', '910', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1562', '75', '921', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('183294', '75', '921', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142191', '77', '8684', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('1562', '78', '921', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('183294', '78', '921', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177241', '105', '17114', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('32', '125', '1309', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('119', '134', '1349', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2724', '151', '1528', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('74731', '151', '1528', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('19019', '174', '4371', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19020', '174', '4371', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('263', '204', '2634', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('264', '204', '2634', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184595', '204', '2634', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185461', '204', '2634', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185462', '204', '2634', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185463', '204', '2634', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185464', '204', '2634', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185465', '204', '2634', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185466', '204', '2634', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185467', '204', '2634', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('57', '207', '2005', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('58', '207', '2006', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179426', '207', '2006', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('52', '207', '2007', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188471', '207', '2007', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188505', '207', '2007', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188506', '207', '2007', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188507', '207', '2007', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188706', '207', '2007', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189977', '207', '2007', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194092', '207', '2007', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('54', '207', '2008', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177241', '211', '17114', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177792', '272', '15883', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177794', '272', '15883', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177790', '272', '15882', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177844', '272', '15882', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('35252', '299', '2658', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182521', '299', '2658', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('334', '299', '2659', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('333', '299', '2660', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('331', '299', '2661', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('271', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182484', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182486', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182487', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182488', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182489', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182490', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182491', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182492', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182493', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182494', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182495', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182496', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182497', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182498', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182499', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182500', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182501', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182502', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182503', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('182504', '307', '2640', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('272', '312', '2667', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('276', '315', '2676', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('177241', '326', '17114', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('321', '335', '2779', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2084', '335', '2784', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176694', '335', '2784', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184164', '335', '2784', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2055', '347', '2798', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('186287', '347', '2798', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2054', '347', '2798', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('1165', '357', '2833', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('375', '365', '2846', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184588', '365', '2846', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('1166', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184418', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184419', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184420', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184421', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184422', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184423', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184424', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184425', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184426', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184427', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184428', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184429', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184430', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184431', '399', '2998', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1571', '422', '3155', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1594', '450', '3255', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1610', '466', '3340', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('1667', '466', '3340', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('2740', '483', '3405', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2739', '483', '3406', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2741', '483', '3407', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2742', '483', '3408', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1673', '489', '3418', '3');
INSERT INTO gameobject_quest_pickup_binding VALUES ('1721', '498', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('1722', '498', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1723', '509', '3502', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('1727', '517', '3517', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1736', '529', '3564', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1759', '532', '3657', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('1761', '532', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1760', '540', '3659', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1765', '551', '3706', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('1768', '553', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('1769', '553', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('1770', '553', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1765', '554', '3706', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '565', '2997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('759', '573', '737', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2068', '580', '3900', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2891', '585', '3906', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2892', '585', '3907', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186306', '585', '3907', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194255', '585', '3907', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2893', '585', '3908', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2086', '604', '3920', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2087', '604', '3921', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2653', '627', '4278', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('58', '629', '4094', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179426', '629', '4094', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('2704', '633', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2689', '651', '4483', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2691', '651', '4484', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2690', '651', '4485', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '658', '4482', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2707', '662', '4487', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2709', '662', '4489', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2708', '662', '4488', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2710', '662', '4490', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2712', '666', '4492', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '689', '4521', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2717', '696', '4530', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2716', '696', '4531', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2718', '696', '4532', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2743', '704', '4610', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2744', '705', '4611', '9');
INSERT INTO gameobject_quest_item_binding VALUES ('19017', '705', '4611', '9');
INSERT INTO gameobject_quest_item_binding VALUES ('19018', '705', '4611', '9');
INSERT INTO gameobject_quest_item_binding VALUES ('126260', '709', '4631', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179486', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179487', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179488', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179489', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179490', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179491', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179492', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179493', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193417', '715', '929', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2867', '718', '4629', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('337', '753', '4755', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2907', '753', '4755', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '768', '2318', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '769', '2318', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2910', '771', '4808', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('2912', '771', '4809', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('2842', '779', '4845', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2848', '779', '4844', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2858', '779', '4843', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142487', '779', '4843', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('3189', '786', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('3190', '786', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('3192', '786', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2842', '795', '4845', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2848', '795', '4844', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2858', '795', '4843', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142487', '795', '4843', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3237', '808', '4864', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142958', '808', '4864', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3240', '815', '4890', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('3238', '819', '4926', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3236', '825', '4863', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('3290', '834', '4918', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3640', '848', '5012', '4');
INSERT INTO gameobject_quest_pickup_binding VALUES ('3644', '849', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3646', '857', '5038', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1617', '866', '5056', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('1619', '866', '5056', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('1620', '866', '5056', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('1621', '866', '5056', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('3725', '866', '5056', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('3724', '866', '5056', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('3726', '866', '5056', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('3727', '866', '5056', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('3729', '866', '5056', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('3685', '868', '5058', '12');
INSERT INTO gameobject_quest_pickup_binding VALUES ('3737', '877', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3767', '888', '5076', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3768', '888', '5077', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3763', '889', '5075', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3764', '889', '5075', '10');
INSERT INTO gameobject_quest_pickup_binding VALUES ('4072', '900', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('61936', '900', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('61935', '900', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('6907', '905', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('6908', '905', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('6906', '905', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177964', '908', '16762', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4406', '917', '5167', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4608', '919', '5169', '12');
INSERT INTO gameobject_quest_pickup_binding VALUES ('3525', '924', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('9630', '943', '5234', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('11714', '947', '5271', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('164', '947', '5271', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('187578', '947', '5271', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('11713', '947', '5270', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('12654', '951', '5273', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('13360', '951', '5273', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('13872', '951', '5273', '6');
INSERT INTO gameobject_quest_pickup_binding VALUES ('17188', '953', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('17189', '953', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('16393', '957', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('13891', '962', '5339', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('175324', '969', '12334', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('13949', '971', '5359', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175407', '978', '12383', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('175165', '982', '12191', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175166', '982', '12192', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('17783', '1007', '5424', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('17282', '1010', '5437', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('18036', '1011', '5440', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('36738', '1013', '6283', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('174597', '1013', '6283', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('19027', '1022', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19022', '1026', '5464', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '1027', '5519', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19015', '1033', '5493', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19016', '1034', '5494', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('19877', '1038', '5520', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('19030', '1043', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103664', '1049', '5535', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19283', '1049', '5535', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19284', '1050', '5536', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19541', '1069', '5570', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('19542', '1069', '5570', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3658', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '1073', '2455', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('19602', '1079', '5718', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19603', '1080', '5717', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19596', '1089', '5689', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19597', '1089', '5690', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19598', '1089', '5691', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19595', '1089', '5687', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19603', '1091', '5717', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19868', '1110', '5798', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('19869', '1110', '5798', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('19870', '1110', '5798', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('19871', '1110', '5798', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('19872', '1110', '5798', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('19873', '1110', '5798', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('178553', '1126', '17345', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142088', '1139', '5824', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('19901', '1140', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('20352', '1140', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('20725', '1154', '5860', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('20726', '1160', '5861', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19903', '1165', '5833', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('19904', '1166', '5834', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19905', '1166', '5835', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19906', '1166', '5836', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('20359', '1172', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('20691', '1182', '5852', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('20691', '1183', '5852', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('20727', '1187', '5862', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('20727', '1188', '5862', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19903', '1192', '5833', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('20807', '1197', '5869', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('20925', '1202', '5882', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('20920', '1221', '5876', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('21277', '1221', '5880', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('21530', '1221', '5897', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('68865', '1221', '6684', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('21052', '1244', '5947', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('21052', '1245', '5947', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179545', '1318', '18336', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('124389', '1360', '8027', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('22246', '1369', '6083', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('22245', '1370', '6069', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('22550', '1389', '6071', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('24798', '1398', '6146', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('28024', '1421', '6170', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('28604', '1423', '6172', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('30854', '1424', '6175', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('30855', '1424', '6175', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('30856', '1424', '6175', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('37098', '1473', '6285', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('174608', '1473', '6285', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('37099', '1475', '6288', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('174605', '1475', '6288', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('58595', '1501', '6535', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176197', '1501', '6535', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('58369', '1503', '6534', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175233', '1503', '6534', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('83763', '1598', '6785', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2039', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '1644', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2039', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '1648', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('91138', '1654', '6895', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('92420', '1655', '6992', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('85563', '1667', '6782', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('85562', '1681', '6800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('86492', '1686', '6808', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('89634', '1708', '6848', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('89635', '1710', '6849', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2041', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('185519', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('2560', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '1712', '3357', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('93192', '1738', '6912', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('92013', '1802', '6931', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('92423', '1802', '6997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('92013', '1803', '6931', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('92423', '1803', '6997', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105170', '1821', '7567', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105171', '1821', '7568', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105172', '1821', '7568', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105172', '1821', '7569', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105171', '1821', '7569', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105169', '1821', '7566', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('102984', '1880', '7226', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('102985', '1882', '7227', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('102986', '1884', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('103600', '1899', '7294', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103574', '1920', '7292', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('105174', '1920', '7247', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105175', '1920', '7308', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2039', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '1921', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('271', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182484', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182486', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182487', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182488', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182489', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182490', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182491', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182492', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182493', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182494', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182495', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182496', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182497', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182498', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182499', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182500', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182501', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182502', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182503', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182504', '1921', '7249', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('103628', '1938', '7266', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1732', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103711', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1735', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('73939', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1734', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('73941', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150080', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2560', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179490', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179491', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179492', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179493', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2054', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3764', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179494', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179496', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179497', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181109', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181249', '1948', '1529', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103662', '1948', '7272', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103664', '1951', '7274', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103574', '1960', '7292', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('105174', '1960', '7247', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105175', '1960', '7308', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2039', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '1961', '2589', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('103600', '1978', '7294', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103815', '1999', '7309', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105176', '2020', '7389', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('104564', '2038', '7343', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('104565', '2038', '7343', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('104566', '2038', '7343', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('104569', '2038', '7345', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('104565', '2038', '7345', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('104566', '2038', '7345', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('104574', '2038', '7346', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('104565', '2038', '7346', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('104566', '2038', '7346', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('104575', '2038', '7376', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '2199', '2842', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('113757', '2201', '7669', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('125477', '2201', '7671', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('126049', '2202', '8047', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('128293', '2202', '8047', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('177675', '2202', '8047', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('121264', '2282', '7871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('113757', '2339', '7669', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('125477', '2339', '7671', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('124388', '2342', '8026', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123214', '2359', '7908', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103774', '2381', '5060', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('126158', '2438', '8048', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('129127', '2478', '8073', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19019', '2609', '4371', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('19020', '2609', '4371', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('140911', '2609', '8431', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('141853', '2641', '8526', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('141931', '2741', '8564', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '2746', '4306', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('142076', '2746', '8683', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '2762', '6037', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('1735', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('73939', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('1734', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('73941', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('150080', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2040', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('123310', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('150079', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2560', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142184', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176645', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179490', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179491', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179492', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179493', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179494', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179496', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179497', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2047', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('123309', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('150081', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('141979', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181108', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181109', '2763', '3864', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142477', '2841', '9153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('144054', '2845', '9189', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2847', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '2848', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '2848', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2848', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '2849', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '2849', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2849', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '2850', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '2850', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2850', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '2851', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '2851', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2851', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '2852', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '2852', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2852', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2854', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '2855', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '2855', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2855', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '2856', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '2856', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2856', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '2857', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '2857', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2857', '8153', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '2858', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '2858', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2858', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '2859', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '2859', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '2859', '8153', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '2868', '9243', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '2868', '9243', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142181', '2873', '9244', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142344', '2924', '9278', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '2948', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1732', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103711', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1733', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('73940', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105569', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3642', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('152608', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('152618', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181665', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2054', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3764', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179486', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179487', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179488', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179489', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179490', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179491', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179492', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179493', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181249', '2948', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '2950', '2842', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1732', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103711', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1733', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('73940', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105569', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3642', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('152608', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('152618', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181665', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2054', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3764', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179486', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179487', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179488', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179489', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179490', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179491', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179492', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179493', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181249', '2950', '1206', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('143980', '2978', '9370', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('144064', '2987', '9463', '12');
INSERT INTO gameobject_quest_pickup_binding VALUES ('144066', '2988', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('144067', '2988', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('144068', '2988', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('144070', '2994', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('144071', '2995', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('144072', '2995', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('144073', '2995', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('140971', '3161', '8443', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('147557', '3281', '5061', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('148499', '3361', '10438', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190097', '3361', '10438', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('178084', '3361', '16313', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('178085', '3361', '16314', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('148506', '3372', '10442', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190098', '3372', '10442', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179697', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193418', '3375', '3827', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('20691', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179490', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179491', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179492', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179493', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3706', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179486', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179487', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179488', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179489', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179494', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179496', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179497', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('21146', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('21148', '3375', '1708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('149036', '3444', '10556', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('149480', '3449', '10564', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('149482', '3449', '10565', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('149483', '3449', '10566', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('149025', '3463', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('149030', '3463', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('149031', '3463', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('149032', '3463', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('148516', '3517', '10538', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('148513', '3517', '10539', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('148514', '3517', '10540', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('148515', '3517', '10541', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('148516', '3518', '10538', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('152094', '3521', '10639', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('152095', '3521', '10641', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('175207', '3524', '12242', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('148513', '3541', '10539', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('148514', '3542', '10540', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('148515', '3561', '10541', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153123', '3601', '10717', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153123', '3601', '10715', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153123', '3601', '10722', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153123', '3601', '10718', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('152620', '3602', '10714', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('152621', '3602', '10714', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('152622', '3602', '10714', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('152631', '3602', '10714', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('152620', '3602', '10839', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('152621', '3602', '10839', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('152620', '3602', '10840', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('152621', '3602', '10840', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153239', '3661', '10819', '15');
INSERT INTO gameobject_quest_pickup_binding VALUES ('153556', '3701', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('154357', '3741', '10958', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('157936', '3761', '11018', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('157936', '3764', '11018', '20');
INSERT INTO gameobject_quest_pickup_binding VALUES ('160840', '3825', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('161526', '3881', '11113', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('161521', '3881', '11112', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('161527', '3882', '11114', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('164662', '3902', '11127', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('161557', '3904', '11119', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('164798', '3909', '11242', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('161752', '3922', '11143', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('164910', '3962', '11179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('164690', '4021', '11227', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('164798', '4041', '11242', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2040', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('123310', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('150079', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('142184', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('160845', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('176645', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179498', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179697', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('2047', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('123309', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('150081', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('141979', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('176224', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179494', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179496', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179497', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181108', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '4083', '7910', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '4083', '3577', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '4083', '6037', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '4104', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176645', '4104', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181108', '4104', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181109', '4104', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142141', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142145', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176583', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176584', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176586', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176587', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176636', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176637', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176638', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176639', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176640', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180164', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180167', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180168', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180166', '4105', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '4109', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176645', '4109', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181108', '4109', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181109', '4109', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142141', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142145', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176583', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176584', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176586', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176587', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176636', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176637', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176638', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176639', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176640', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180164', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180167', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180168', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180166', '4110', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('165554', '4123', '11309', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('164958', '4144', '11315', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('164958', '4148', '11315', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('142145', '4201', '8846', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176637', '4201', '8846', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('164660', '4284', '11186', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('164780', '4284', '11186', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('164661', '4284', '11188', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('164781', '4284', '11188', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('164659', '4284', '11185', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('164779', '4284', '11185', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('164658', '4284', '11184', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('164778', '4284', '11184', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('166863', '4290', '11504', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('165739', '4295', '11325', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('165738', '4295', '11325', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('164661', '4381', '11188', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164781', '4381', '11188', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164659', '4381', '11185', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164779', '4381', '11185', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164659', '4382', '11185', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164779', '4382', '11185', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164658', '4382', '11184', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164778', '4382', '11184', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164660', '4383', '11186', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164780', '4383', '11186', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164659', '4383', '11185', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164779', '4383', '11185', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164660', '4384', '11186', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164780', '4384', '11186', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164658', '4384', '11184', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164778', '4384', '11184', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164660', '4385', '11186', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164780', '4385', '11186', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164661', '4385', '11188', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164781', '4385', '11188', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164658', '4386', '11184', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164778', '4386', '11184', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164661', '4386', '11188', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('164781', '4386', '11188', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('171938', '4402', '11583', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '4449', '4306', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('173266', '4450', '11727', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('174728', '4450', '11724', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('160845', '4463', '11752', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('160845', '4482', '11753', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('160845', '4483', '11751', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('157936', '4496', '11018', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('176189', '4681', '12289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176189', '4722', '12289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175207', '4723', '12242', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175264', '4726', '12283', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('176189', '4727', '12289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175207', '4728', '12242', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175207', '4730', '12242', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176189', '4732', '12289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175207', '4733', '12242', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175322', '4743', '12324', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177624', '4763', '12355', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175331', '4763', '12342', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175329', '4763', '12343', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175330', '4763', '12341', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175382', '4764', '12352', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175384', '4767', '12356', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('175385', '4768', '12358', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '4781', '3577', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175889', '4787', '12402', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175949', '4788', '12740', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175950', '4788', '12741', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175565', '4821', '12467', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175588', '4862', '12530', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('175606', '4862', '12530', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184142', '4862', '12530', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('175628', '4864', '12525', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175629', '4864', '12525', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175785', '4903', '12562', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175802', '4972', '12638', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('175802', '4973', '12638', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('175334', '4982', '12345', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175334', '5001', '12345', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175708', '5041', '12708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3763', '5042', '5075', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3764', '5042', '5075', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3763', '5043', '5075', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3764', '5043', '5075', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3763', '5044', '5075', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3764', '5044', '5075', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3763', '5045', '5075', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3764', '5045', '5075', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3763', '5046', '5075', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3764', '5046', '5075', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3763', '5052', '5075', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3764', '5052', '5075', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175928', '5062', '12732', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '5063', '12363', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '5063', '12363', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '5063', '12363', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '5063', '12363', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '5063', '12363', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '5063', '12363', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '5063', '12363', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '5063', '12363', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('175966', '5063', '12734', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('176344', '5064', '12765', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190483', '5064', '12766', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190484', '5064', '12768', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175487', '5065', '12411', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175488', '5065', '12412', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175965', '5067', '12736', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('175964', '5068', '12753', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('176092', '5096', '12814', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176112', '5122', '12845', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176089', '5124', '12812', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2040', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('123310', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('150079', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142184', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('160845', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176645', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179498', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179697', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2047', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('123309', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('150081', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('141979', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176224', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179494', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179496', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179497', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181108', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '5124', '7910', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('175970', '5127', '12806', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '5141', '8165', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '5144', '7079', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '5145', '8165', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '5146', '7079', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('176116', '5149', '12886', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176142', '5149', '12887', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176143', '5149', '12888', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('164958', '5150', '11315', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('176145', '5153', '12894', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176151', '5154', '12900', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176150', '5154', '12900', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('176158', '5165', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('176159', '5165', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('176160', '5165', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('176161', '5165', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176213', '5166', '12938', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('176213', '5167', '12938', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('175964', '5167', '12753', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('176206', '5168', '12954', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176207', '5168', '12955', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176208', '5181', '12956', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176209', '5181', '12957', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176249', '5213', '13176', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '5218', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '5218', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '5218', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '5218', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '5218', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '5218', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '5221', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '5221', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '5221', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '5221', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '5221', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '5221', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '5224', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '5224', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '5224', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '5224', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '5224', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '5224', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '5227', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '5227', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '5227', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '5227', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '5227', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '5227', '14047', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176224', '5243', '13180', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181085', '5243', '13180', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('176356', '5246', '13313', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('176245', '5251', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176634', '5321', '13536', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176484', '5341', '13471', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176485', '5341', '13448', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176486', '5341', '13450', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176487', '5341', '13451', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176484', '5343', '13471', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176485', '5343', '13448', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176486', '5343', '13450', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176487', '5343', '13451', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('176544', '5382', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('176545', '5382', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176582', '5421', '13545', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('176630', '5461', '13585', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176630', '5462', '13585', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176630', '5463', '13585', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175566', '5481', '12737', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('176753', '5482', '13702', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('176751', '5501', '13703', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('176752', '5501', '13703', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '5518', '14048', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '5518', '8170', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('179499', '5518', '18240', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '5518', '18240', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '5519', '14048', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '5519', '8170', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('179499', '5519', '18240', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '5519', '18240', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179559', '5526', '18501', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179565', '5527', '22201', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176785', '5541', '13850', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176793', '5545', '13872', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('177241', '5803', '14610', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177241', '5804', '14610', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177264', '5845', '14625', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177287', '5848', '14679', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '5883', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176645', '5883', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181108', '5883', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181109', '5883', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142141', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142145', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176583', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176584', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176586', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176587', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176636', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176637', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176638', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176639', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176640', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180164', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180167', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180168', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180166', '5884', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '5888', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176645', '5888', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181108', '5888', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181109', '5888', '11513', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142141', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('142145', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176583', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176584', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176586', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176587', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176636', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176637', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176638', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176639', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('176640', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180164', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180167', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180168', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180166', '5889', '11514', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('178785', '5892', '17522', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('178784', '5893', '17542', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('177464', '5901', '15043', '100');
INSERT INTO gameobject_quest_item_binding VALUES ('177464', '5903', '15043', '100');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '6031', '14047', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '6031', '14047', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '6031', '14047', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '6031', '14047', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '6031', '14047', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '6031', '14047', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('1619', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2039', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3726', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '6123', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('177750', '6123', '15851', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('1619', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2039', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('3726', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '6128', '2449', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('177747', '6133', '15847', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177784', '6142', '15874', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('177789', '6164', '15884', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177806', '6185', '16003', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177804', '6185', '16001', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177805', '6185', '16002', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201742', '6185', '16002', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2039', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3658', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153473', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153472', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3719', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3694', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3662', '6201', '159', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '6201', '2070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '6201', '2070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '6201', '2070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '6201', '2070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '6201', '2070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153473', '6201', '2070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153472', '6201', '2070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3719', '6201', '2070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3694', '6201', '2070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3662', '6201', '2070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177926', '6301', '16205', '10');
INSERT INTO gameobject_quest_pickup_binding VALUES ('177929', '6381', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('178087', '6394', '16332', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('178090', '6395', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('178104', '6421', '16581', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('178105', '6421', '16581', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('178106', '6421', '16581', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('178144', '6462', '16602', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('178184', '6563', '16784', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('178185', '6563', '16784', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('178186', '6563', '16784', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('178204', '6571', '16745', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('178195', '6571', '16744', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153471', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179498', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('176224', '6610', '8932', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('178227', '6621', '16976', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('165658', '6642', '11370', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('165658', '6646', '11382', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177964', '6921', '16762', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3693', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3694', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3690', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3662', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3705', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '6962', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('178784', '6982', '17542', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('178785', '6985', '17522', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3693', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3694', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3690', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3662', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('3705', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7025', '1179', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179025', '7161', '17850', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179024', '7162', '17849', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7384', '15416', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176213', '7483', '12938', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('175964', '7484', '12753', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179553', '7487', '18412', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179547', '7498', '18356', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179548', '7498', '18356', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179547', '7499', '18357', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179548', '7499', '18357', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179547', '7500', '18358', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179548', '7500', '18358', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179548', '7501', '18359', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179547', '7501', '18359', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179547', '7502', '18360', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179548', '7502', '18360', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179547', '7503', '18361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179548', '7503', '18361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179547', '7504', '18362', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179548', '7504', '18362', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179548', '7505', '18363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179547', '7505', '18363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179547', '7506', '18364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179548', '7506', '18364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179562', '7509', '18488', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179644', '7583', '18605', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('165658', '7627', '11370', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7628', '15416', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('179703', '7632', '18703', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176224', '7642', '13180', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181085', '7642', '13180', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('142141', '7642', '8836', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('176642', '7642', '8836', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7642', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7642', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7642', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7642', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7642', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7642', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '7646', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '7667', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179828', '7702', '18943', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179545', '7703', '18336', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179832', '7704', '18950', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179826', '7722', '18922', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('1624', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2560', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('140971', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7736', '3356', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7791', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7792', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7793', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7794', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7795', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7795', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7795', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7795', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7795', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7795', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7796', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7796', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7796', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7796', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7796', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7796', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7798', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7799', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7800', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7800', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7800', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7800', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7800', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7800', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7801', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7801', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7801', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7801', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7801', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7801', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7802', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7803', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7804', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7805', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7805', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7805', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7805', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7805', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7805', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7806', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7806', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7806', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7806', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7806', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7806', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7807', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7808', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7809', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7811', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7811', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7811', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7811', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7811', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7811', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7812', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7812', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7812', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7812', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7812', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7812', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7813', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7814', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7817', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7818', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7818', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7818', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7818', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7818', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7818', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7819', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7819', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7819', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7819', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7819', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7819', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7820', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7821', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7822', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7823', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7823', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7823', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7823', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7823', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7823', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7824', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7824', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7824', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7824', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7824', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7824', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7825', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7825', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7825', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7825', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7825', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7825', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7826', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7827', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7831', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7832', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7832', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7832', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7832', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7832', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7832', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7833', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7834', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7835', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7836', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7836', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7836', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7836', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7836', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7836', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '7837', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '7837', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '7837', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '7837', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '7837', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '7837', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179697', '7838', '18706', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('179908', '7839', '19033', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179553', '7848', '18412', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179915', '7849', '19069', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179914', '7849', '19070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179922', '7850', '19071', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('19019', '7894', '4363', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('19020', '7894', '4363', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('165739', '7946', '11325', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('165738', '7946', '11325', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '8184', '19813', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '8184', '19813', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '8185', '19815', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '8185', '19815', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '8186', '19814', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '8186', '19814', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '8187', '19816', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '8187', '19816', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '8188', '19817', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '8188', '19817', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '8189', '19818', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '8189', '19818', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '8190', '19819', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '8190', '19819', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '8191', '19820', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '8191', '19820', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '8192', '19821', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '8192', '19821', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180248', '8193', '19807', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('180248', '8194', '19807', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('180248', '8221', '19805', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180248', '8224', '19806', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180248', '8225', '19803', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('2560', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8242', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('180435', '8282', '20379', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180436', '8284', '20378', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('180501', '8284', '20378', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('180510', '8330', '20470', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180511', '8330', '20471', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180512', '8330', '20472', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('180516', '8345', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '8410', '7070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '8411', '7070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8419', '14256', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8420', '14256', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180600', '8463', '20743', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('181107', '8480', '22413', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('180671', '8481', '21145', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180921', '8487', '20771', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '8497', '7079', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('2045', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180663', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180752', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180902', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180750', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180900', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180683', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180655', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180751', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180901', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180684', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184956', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180582', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180656', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180682', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180658', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180662', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180657', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180661', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180664', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180712', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180685', '8503', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2045', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180663', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180752', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180902', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180750', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180900', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180683', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180655', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180751', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180901', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180684', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184956', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180582', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180656', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180682', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180658', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180662', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180657', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180661', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180664', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180712', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180685', '8504', '3820', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8505', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8506', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('142141', '8509', '8836', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('176642', '8509', '8836', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('142141', '8510', '8836', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('176642', '8510', '8836', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8511', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8512', '2318', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2560', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8513', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2560', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8514', '2319', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8515', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8516', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3707', '8528', '6887', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153470', '8528', '6887', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3707', '8529', '6887', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153470', '8529', '6887', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8544', '20875', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('1618', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180184', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3724', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '8549', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('1618', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180184', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3724', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '8550', '2447', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8556', '20868', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8557', '20867', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8558', '20873', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8559', '20882', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8560', '20876', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8561', '20874', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8562', '20882', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8580', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8580', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8580', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8580', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8580', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8580', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2866', '8580', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8580', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8580', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8580', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8581', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8581', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8581', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8581', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8581', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8581', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2866', '8581', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8581', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8581', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8581', '4625', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8582', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180165', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('142140', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8583', '8831', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8586', '8150', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2560', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8588', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2560', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8589', '4234', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8590', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8591', '4304', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8592', '20877', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8593', '20879', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8594', '20878', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8596', '20876', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8600', '8170', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8601', '8170', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8602', '20879', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8603', '20876', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('3707', '8613', '6887', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153470', '8613', '6887', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('3707', '8614', '6887', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('153470', '8614', '6887', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8621', '20877', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8622', '20877', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8623', '20878', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8624', '20881', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8625', '20876', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8626', '20879', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8627', '20877', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8628', '20878', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8629', '20881', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8630', '20879', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8631', '20877', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8632', '20875', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8633', '20874', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8634', '20874', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8637', '20881', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8638', '20881', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8639', '20882', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8640', '20875', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8641', '20874', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8655', '20877', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8656', '20879', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8657', '20881', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8658', '20874', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8659', '20882', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8660', '20875', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8661', '20875', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8662', '20876', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8663', '20878', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8664', '20877', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8665', '20878', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8666', '20878', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8667', '20879', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8668', '20882', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180690', '8669', '20881', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8689', '20870', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8690', '20871', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8691', '20873', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8692', '20872', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8693', '20866', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8694', '20869', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8695', '20871', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8696', '20868', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8697', '20871', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8698', '20872', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8699', '20866', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8700', '20873', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8701', '20867', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8702', '20870', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8703', '20872', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8704', '20869', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8705', '20868', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8706', '20869', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8707', '20871', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8708', '20870', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8709', '20872', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8710', '20867', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8711', '20869', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180691', '8712', '20866', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '8728', '12800', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '8728', '12361', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8763', '8150', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '8779', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8782', '14048', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '8799', '8150', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '8804', '7079', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '8807', '12364', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '8808', '14048', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('175964', '8829', '12753', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '8856', '7079', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180917', '8886', '21771', '6');
INSERT INTO gameobject_quest_pickup_binding VALUES ('180916', '8889', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('180919', '8889', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('180920', '8889', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('141931', '8893', '8564', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181098', '8921', '22338', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('181053', '8970', '22094', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('164958', '9052', '22434', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181110', '9062', '22414', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181110', '9064', '22414', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9093', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9093', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9093', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9093', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '9093', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9093', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9093', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9093', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9101', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9101', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9101', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9101', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '9101', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9101', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9101', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9101', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9102', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9102', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9102', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9102', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '9102', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9102', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9102', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9102', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9109', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9109', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9109', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9109', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '9109', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9109', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9109', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9109', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9110', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9110', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9110', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9110', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '9110', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9110', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9110', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9110', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9117', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9117', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9117', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9117', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '9117', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9117', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9117', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9117', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9118', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9118', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9118', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9118', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '9118', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9118', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9118', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9118', '12363', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9121', '12363', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9121', '12363', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9121', '12363', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9121', '12363', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '9121', '12363', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9121', '12363', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9121', '12363', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9121', '12363', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9122', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9122', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9122', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9122', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '9122', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9122', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9122', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9122', '12363', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181133', '9152', '22583', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181151', '9157', '22674', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181138', '9163', '22590', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181139', '9163', '22591', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181140', '9163', '22592', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181359', '9169', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181239', '9176', '22599', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181238', '9176', '22598', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181148', '9193', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('179564', '9200', '13444', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184930', '9200', '13444', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184931', '9200', '13444', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184932', '9200', '13444', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184933', '9200', '13444', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184934', '9200', '13444', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184935', '9200', '13444', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9200', '13444', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('179494', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179496', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179497', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179564', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184740', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184741', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184930', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184931', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184932', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184933', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184934', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184935', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179490', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179491', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179492', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179493', '9202', '13446', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180248', '9204', '13422', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('180712', '9204', '13422', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9230', '22682', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9230', '12361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9232', '22682', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9232', '7080', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9232', '12361', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9234', '22682', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9234', '7080', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9235', '22682', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9235', '7080', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9236', '22682', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9236', '7080', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9237', '22682', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9237', '14048', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9237', '7080', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9238', '22682', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9238', '14048', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9238', '7080', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9239', '22682', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9239', '14048', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9239', '7080', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9240', '22682', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9240', '14048', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9240', '7080', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9241', '22682', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9241', '7080', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9242', '22682', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9242', '7080', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9243', '22682', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9243', '7080', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9244', '22682', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '9244', '15408', '16');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9244', '7080', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9245', '22682', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '9245', '15408', '16');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9245', '7080', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181287', '9246', '22682', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '9246', '15408', '24');
INSERT INTO gameobject_quest_item_binding VALUES ('180753', '9246', '7080', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '9259', '4306', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '9266', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '9266', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9266', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '9266', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '9266', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '9266', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2039', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '9267', '2589', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '9268', '4338', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '9268', '4338', '40');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181250', '9275', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181251', '9275', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181252', '9275', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181433', '9294', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181283', '9305', '22978', '4');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181346', '9319', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181347', '9319', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181348', '9319', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181349', '9319', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181342', '9322', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181339', '9322', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181343', '9322', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181340', '9322', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181344', '9323', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181338', '9323', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181345', '9323', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181341', '9323', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181372', '9345', '23205', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('181385', '9348', '23217', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('181385', '9349', '23217', '12');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181332', '9367', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181333', '9367', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181334', '9367', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181336', '9368', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181337', '9368', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181335', '9368', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184115', '9374', '23339', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184115', '9374', '31955', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184478', '9376', '23343', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181574', '9383', '23442', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181346', '9386', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181347', '9386', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181348', '9386', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181349', '9386', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181561', '9388', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181560', '9388', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181563', '9388', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181562', '9388', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181566', '9389', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181564', '9389', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181565', '9389', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181567', '9389', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181581', '9391', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181580', '9391', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181579', '9391', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181594', '9402', '23551', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181637', '9430', '23642', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181620', '9435', '23646', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181626', '9437', '23657', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181628', '9439', '23658', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181627', '9439', '23660', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181680', '9442', '23753', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181629', '9443', '23661', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181653', '9444', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181629', '9445', '23661', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181644', '9473', '23692', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181629', '9474', '23661', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181645', '9475', '23694', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('2039', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '9488', '2589', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181665', '9491', '23717', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181671', '9497', '23729', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181675', '9506', '23738', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181674', '9506', '23739', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181687', '9517', '23776', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181686', '9517', '23776', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181916', '9517', '24081', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181681', '9519', '23760', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181683', '9523', '23779', '8');
INSERT INTO gameobject_quest_pickup_binding VALUES ('181690', '9526', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181696', '9530', '23790', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181697', '9530', '23791', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181746', '9548', '23830', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176224', '9556', '13180', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181085', '9556', '13180', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181757', '9562', '23849', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('182532', '9567', '23859', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181770', '9569', '23863', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181771', '9569', '23863', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('30854', '9610', '6175', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('30855', '9610', '6175', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('30856', '9610', '6175', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '9614', '23449', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '9614', '23449', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '9615', '23449', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '9615', '23449', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181854', '9624', '23927', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181963', '9631', '24152', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181871', '9635', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181872', '9635', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181873', '9635', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181874', '9635', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181875', '9635', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181876', '9635', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181871', '9636', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181872', '9636', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181873', '9636', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181874', '9636', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181875', '9636', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181876', '9636', '23981', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181892', '9648', '24041', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181891', '9648', '24040', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181893', '9648', '24042', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181894', '9648', '24043', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181897', '9649', '24049', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('181963', '9680', '24152', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181981', '9687', '24185', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182011', '9692', '24224', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182031', '9702', '24233', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('182256', '9702', '24233', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181898', '9703', '24236', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('182050', '9709', '24240', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('183385', '9714', '24246', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('183385', '9715', '24246', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('182054', '9717', '24247', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '9723', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '9723', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9723', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '9723', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '9723', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '9723', '14047', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('176636', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('180164', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('142142', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '9723', '8838', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '9723', '8838', '10');
INSERT INTO gameobject_quest_pickup_binding VALUES ('182058', '9725', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('182063', '9735', '24284', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('324', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('123848', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('150082', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176643', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('175404', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('180215', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('177388', '9736', '12800', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182069', '9739', '24290', '10');
INSERT INTO gameobject_quest_pickup_binding VALUES ('182026', '9740', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182069', '9742', '24290', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('182116', '9777', '24383', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182119', '9782', '24400', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182139', '9787', '24422', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182122', '9788', '24411', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182127', '9799', '24416', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('182128', '9800', '24419', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182053', '9808', '24245', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('182053', '9809', '24245', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('182095', '9814', '24468', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182166', '9822', '24471', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182199', '9843', '24492', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182184', '9848', '24499', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182185', '9848', '24500', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182258', '9882', '25416', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('182258', '9883', '25416', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('182265', '9916', '25460', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('182355', '9928', '25554', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('185200', '9949', '25638', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182505', '9949', '25642', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185201', '9949', '25642', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182505', '9950', '25642', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185201', '9950', '25642', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185200', '9950', '25638', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182520', '9956', '25647', '10');
INSERT INTO gameobject_quest_pickup_binding VALUES ('183789', '9971', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182542', '9990', '25727', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182541', '9992', '25745', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('182541', '9993', '25745', '30');
INSERT INTO gameobject_quest_pickup_binding VALUES ('182563', '10021', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('182565', '10021', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('182566', '10021', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182581', '10028', '25841', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182584', '10030', '25842', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('182601', '10045', '25863', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182600', '10045', '25862', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182599', '10045', '25864', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182606', '10045', '25865', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('182789', '10047', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182797', '10055', '25912', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182798', '10055', '25912', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182937', '10055', '25912', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182938', '10055', '25912', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182799', '10055', '25911', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182936', '10055', '25911', '8');
INSERT INTO gameobject_quest_pickup_binding VALUES ('182800', '10056', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('182804', '10058', '25938', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182797', '10086', '25912', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182798', '10086', '25912', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182937', '10086', '25912', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182938', '10086', '25912', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182799', '10086', '25911', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182936', '10086', '25911', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('182940', '10091', '27480', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('183050', '10098', '27634', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('183147', '10111', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('184414', '10144', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('184415', '10144', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('182800', '10158', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('183394', '10161', '28116', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('183395', '10161', '28116', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('183396', '10161', '28116', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('183397', '10161', '28116', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('183441', '10168', '28283', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('183767', '10186', '28364', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184121', '10192', '28472', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184122', '10192', '28473', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184123', '10192', '28474', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('183805', '10203', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('183806', '10203', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('183807', '10203', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('183808', '10203', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('183813', '10206', '28457', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('183814', '10206', '28457', '10');
INSERT INTO gameobject_quest_pickup_binding VALUES ('184290', '10208', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('184289', '10208', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('183933', '10226', '28548', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('183935', '10234', '28551', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('183934', '10236', '28554', '6');
INSERT INTO gameobject_quest_pickup_binding VALUES ('183936', '10238', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('183940', '10238', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('183941', '10238', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('183945', '10239', '28564', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184031', '10267', '28913', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184075', '10270', '28969', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184077', '10272', '28971', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184310', '10319', '29361', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184433', '10343', '29461', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184443', '10348', '29474', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('201295', '10348', '29474', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('201296', '10348', '29474', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('201297', '10348', '29474', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('201298', '10348', '29474', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('201931', '10348', '29474', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('201932', '10348', '29474', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('201933', '10348', '29474', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '10352', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '10354', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '10356', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10357', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10357', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10357', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '10357', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '10357', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '10357', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10358', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10358', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10358', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '10358', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '10358', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '10358', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75293', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2843', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2884', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '10359', '2592', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2849', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('111095', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('19021', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2844', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2845', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106318', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2846', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2847', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('106319', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '10360', '4306', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2714', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2855', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105570', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105578', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105579', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2857', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('105581', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128308', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('128403', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('141596', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('187882', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153451', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153462', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2850', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3714', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('3715', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184619', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184620', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184621', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('184622', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('2852', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4095', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4096', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75295', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75298', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74447', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('74448', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75296', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75299', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75297', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('75300', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('4149', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131978', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('131979', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153453', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153454', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181798', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153463', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153468', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153464', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('153469', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '10361', '4338', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10362', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10362', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10362', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '10362', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '10362', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '10362', '14047', '60');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10363', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10363', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10363', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '10363', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '10363', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '10363', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('184466', '10367', '29501', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184466', '10368', '29501', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184560', '10384', '29582', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('182935', '10392', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('182935', '10397', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184589', '10417', '29741', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184607', '10435', '29798', '10');
INSERT INTO gameobject_quest_pickup_binding VALUES ('184631', '10457', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184689', '10510', '30315', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184504', '10511', '29443', '11');
INSERT INTO gameobject_quest_item_binding VALUES ('184691', '10514', '30356', '10');
INSERT INTO gameobject_quest_pickup_binding VALUES ('184684', '10515', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184716', '10522', '30428', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184727', '10524', '30433', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184726', '10524', '30432', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184728', '10524', '30434', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184744', '10542', '30468', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184504', '10542', '29443', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('184795', '10547', '30500', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184793', '10548', '30503', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184793', '10549', '30503', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184869', '10568', '30596', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('184870', '10568', '30596', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('184859', '10572', '30628', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184860', '10572', '30631', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184859', '10597', '30628', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184860', '10597', '30631', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184947', '10606', '30713', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185233', '10606', '30713', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184947', '10611', '30713', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185233', '10611', '30713', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184948', '10624', '30716', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('184980', '10629', '30794', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184948', '10642', '30716', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10664', '23793', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10664', '23793', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('185015', '10665', '30824', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185033', '10675', '30890', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184869', '10683', '30596', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('184870', '10683', '30596', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('185152', '10721', '31349', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10757', '23445', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10757', '23445', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10757', '23445', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181555', '10757', '22574', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '10757', '22574', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('185877', '10757', '22574', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10763', '23445', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10763', '23445', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10763', '23445', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181555', '10763', '22574', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '10763', '22574', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('185877', '10763', '22574', '4');
INSERT INTO gameobject_quest_pickup_binding VALUES ('185124', '10771', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('185147', '10771', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('185148', '10771', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185128', '10778', '31317', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185130', '10780', '31324', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('185152', '10800', '31349', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185182', '10837', '31504', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('185200', '10847', '25638', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('182505', '10847', '25642', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185201', '10847', '25642', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('185211', '10861', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('185033', '10867', '30890', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('185216', '10874', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('185217', '10874', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('185218', '10874', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('185219', '10874', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185220', '10877', '31697', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185226', '10881', '31709', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185224', '10881', '31709', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185225', '10881', '31710', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185224', '10881', '31708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185226', '10881', '31708', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184940', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184941', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184936', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184937', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184938', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184939', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184716', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('193402', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('190552', '10897', '22829', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184940', '10897', '22832', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184941', '10897', '22832', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184936', '10897', '22832', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184937', '10897', '22832', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184938', '10897', '22832', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184939', '10897', '22832', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10897', '22832', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10897', '22832', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('186744', '10897', '22832', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('184716', '10897', '22832', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('185302', '10916', '31795', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185497', '10961', '31950', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181278', '10961', '22790', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '10961', '22786', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '10961', '22786', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181271', '10961', '22786', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('183045', '10961', '22786', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '10961', '22786', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('185541', '10988', '32313', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('185567', '10995', '32379', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185569', '10996', '32380', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185574', '10997', '32382', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185562', '10998', '32358', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185577', '11000', '32383', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185881', '11017', '32468', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('185877', '11018', '32464', '40');
INSERT INTO gameobject_quest_item_binding VALUES ('185911', '11025', '32569', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('185877', '11049', '32506', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185881', '11049', '32506', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185915', '11049', '32506', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185877', '11050', '32506', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185881', '11050', '32506', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185915', '11050', '32506', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185954', '11056', '32687', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('185939', '11076', '32723', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('186263', '11127', '33007', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186266', '11128', '33008', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186733', '11132', '33013', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186273', '11139', '33038', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186272', '11139', '33039', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186301', '11148', '33071', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('186325', '11154', '33084', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('186329', '11160', '33086', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186390', '11167', '33099', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('186423', '11181', '33112', '9');
INSERT INTO gameobject_quest_item_binding VALUES ('186427', '11190', '33123', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('186301', '11200', '33071', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('186450', '11207', '33163', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('186450', '11208', '33163', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186463', '11217', '33175', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('186468', '11218', '33188', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('186404', '11218', '33187', '18');
INSERT INTO gameobject_quest_item_binding VALUES ('186466', '11218', '33187', '18');
INSERT INTO gameobject_quest_item_binding VALUES ('186467', '11218', '33187', '18');
INSERT INTO gameobject_quest_pickup_binding VALUES ('186565', '11244', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('186591', '11269', '33348', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('186591', '11271', '33348', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('186587', '11277', '33355', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('186595', '11277', '33355', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('186397', '11286', '33109', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('186607', '11288', '33485', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186607', '11289', '33485', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186618', '11290', '33488', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186618', '11291', '33488', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186619', '11292', '33487', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('186632', '11298', '33541', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('186640', '11300', '33545', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186679', '11327', '33620', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186679', '11328', '33620', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186662', '11333', '33635', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186684', '11349', '33794', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186684', '11351', '33794', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186729', '11380', '33849', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('186828', '11420', '34031', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186831', '11423', '34040', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186830', '11423', '34042', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186832', '11423', '34041', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186885', '11434', '34069', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186886', '11434', '34070', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186912', '11443', '34081', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('186938', '11460', '34102', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186938', '11465', '34102', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('186938', '11468', '34102', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('186950', '11475', '34131', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186954', '11483', '34133', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('186955', '11483', '34134', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187022', '11504', '34222', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187023', '11504', '34223', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187026', '11504', '34224', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187027', '11504', '34225', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187033', '11511', '34236', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187032', '11512', '34237', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187039', '11513', '34246', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('187039', '11514', '34246', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('187072', '11520', '34254', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('187072', '11521', '34254', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('187238', '11529', '34468', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187264', '11535', '34479', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('187264', '11536', '34479', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('187333', '11546', '34502', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('187367', '11559', '34597', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('187381', '11567', '34239', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('187655', '11602', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('188131', '11603', '34714', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('187662', '11605', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('187663', '11605', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('187664', '11605', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187659', '11606', '34709', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187660', '11606', '34709', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187661', '11606', '34709', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187670', '11609', '34713', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('187671', '11609', '34713', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('187677', '11630', '34774', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('187674', '11632', '34777', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187673', '11638', '34773', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187683', '11643', '34785', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187684', '11644', '34786', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('187685', '11644', '34786', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('187686', '11644', '34786', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('187687', '11644', '34786', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('187689', '11645', '34787', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('187697', '11650', '34802', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187577', '11658', '34690', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187875', '11671', '34909', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187875', '11679', '34909', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187886', '11695', '34964', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187885', '11695', '34963', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187897', '11710', '34972', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187898', '11710', '34972', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187899', '11710', '34972', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187900', '11710', '34972', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187901', '11710', '34972', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187902', '11716', '34974', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('187981', '11728', '35123', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('187980', '11789', '35119', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188015', '11871', '35222', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('188016', '11871', '35222', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('188017', '11871', '35222', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('188018', '11871', '35222', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('181555', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181556', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181557', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181271', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181275', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181276', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181277', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181278', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181279', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181280', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181281', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('183043', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('183045', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181569', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('181570', '11875', '35229', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188066', '11879', '35234', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188100', '11900', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188101', '11900', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188102', '11900', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188103', '11900', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188104', '11904', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187897', '11906', '34972', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187898', '11906', '34972', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187899', '11906', '34972', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187900', '11906', '34972', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('187901', '11906', '34972', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('188120', '11908', '35481', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188113', '11912', '35492', '10');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188133', '11936', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('188164', '11945', '35711', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188140', '11951', '35685', '10');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188163', '11965', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187892', '11972', '35723', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('187892', '11976', '35723', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188236', '11978', '35726', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('188237', '11978', '35726', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('188238', '11978', '35726', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('188260', '11982', '35734', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('188262', '11986', '35737', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188263', '11986', '35737', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('190208', '11989', '38083', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188600', '11990', '37085', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('188351', '11990', '35795', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188264', '11993', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188288', '11993', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188289', '11993', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188359', '12009', '35802', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188367', '12014', '35819', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188262', '12026', '35737', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188263', '12026', '35737', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188432', '12039', '36725', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('188442', '12044', '36727', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188441', '12047', '36730', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('188434', '12049', '36731', '6');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188264', '12058', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188288', '12058', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188289', '12058', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188461', '12068', '36757', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188462', '12069', '36759', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188489', '12102', '36803', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188499', '12116', '36825', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('188501', '12130', '36852', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188502', '12130', '36852', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188503', '12130', '36852', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188518', '12137', '36859', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188525', '12137', '36868', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('188530', '12152', '36870', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188501', '12196', '36852', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188502', '12196', '36852', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188503', '12196', '36852', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188646', '12200', '37124', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188650', '12200', '37124', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188658', '12209', '37136', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188659', '12209', '37137', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188670', '12226', '37246', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('188671', '12230', '37248', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('188676', '12234', '37268', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188675', '12234', '37267', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188677', '12234', '37269', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188691', '12242', '37302', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188691', '12250', '37302', '8');
INSERT INTO gameobject_quest_pickup_binding VALUES ('188695', '12265', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('188702', '12268', '37412', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('188703', '12268', '37413', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('188705', '12268', '37416', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('188699', '12272', '37359', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('189288', '12277', '37465', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188702', '12280', '37412', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('188703', '12280', '37413', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('188705', '12280', '37416', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189291', '12282', '37538', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189293', '12283', '37540', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189295', '12290', '37569', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('189298', '12292', '37572', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189298', '12293', '37572', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189306', '12303', '37580', '6');
INSERT INTO gameobject_quest_pickup_binding VALUES ('189313', '12307', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('189983', '12414', '37707', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('189992', '12417', '37727', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('189976', '12433', '37664', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189976', '12434', '37664', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189976', '12443', '37664', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189976', '12446', '37664', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189992', '12449', '37727', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190032', '12455', '37879', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('190127', '12467', '37920', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190127', '12472', '37920', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190189', '12475', '37930', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('188345', '12483', '35782', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('188601', '12483', '37087', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('190223', '12484', '38149', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190354', '12498', '38305', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190399', '12514', '38326', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('190447', '12522', '38334', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190453', '12523', '38349', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('190454', '12523', '38349', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('190455', '12523', '38349', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('190500', '12535', '38504', '8');
INSERT INTO gameobject_quest_pickup_binding VALUES ('190700', '12550', '3');
INSERT INTO gameobject_quest_pickup_binding VALUES ('190508', '12559', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190533', '12560', '38553', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('190534', '12564', '38552', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('181574', '12572', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190558', '12572', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190560', '12572', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190561', '12572', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190562', '12572', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190563', '12572', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190578', '12575', '38601', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190696', '12579', '39063', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('190702', '12579', '39063', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('190537', '12583', '38560', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190540', '12584', '38562', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('190541', '12585', '38563', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('190542', '12585', '38563', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('190543', '12585', '38563', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('190534', '12597', '38552', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('190541', '12599', '38563', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('190542', '12599', '38563', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('190543', '12599', '38563', '20');
INSERT INTO gameobject_quest_pickup_binding VALUES ('190509', '12613', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190584', '12619', '38607', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190614', '12622', '38637', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190613', '12622', '38639', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190612', '12622', '38638', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('190618', '12627', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('190630', '12627', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('190619', '12627', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('190620', '12627', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190624', '12634', '38656', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190625', '12634', '38653', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('190623', '12634', '38655', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190633', '12635', '38677', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('190643', '12644', '38688', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190660', '12658', '38705', '7');
INSERT INTO gameobject_quest_pickup_binding VALUES ('190590', '12660', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('190717', '12672', '39156', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('190718', '12672', '39156', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('190719', '12672', '39156', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('190720', '12677', '39159', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('190691', '12679', '39160', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('190778', '12699', '39264', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('181574', '12704', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190558', '12704', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190560', '12704', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190561', '12704', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190562', '12704', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190563', '12704', '38575', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('190836', '12709', '39301', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('191458', '12713', '40425', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191458', '12713', '43059', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190937', '12716', '39324', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190938', '12716', '39326', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190947', '12719', '39362', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191084', '12724', '39504', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191092', '12727', '39510', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191179', '12758', '39667', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191210', '12759', '39696', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191210', '12759', '39695', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191210', '12759', '39697', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191209', '12761', '39693', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191209', '12761', '39689', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191209', '12761', '39694', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('191229', '12790', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('191230', '12790', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191530', '12818', '40603', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191531', '12818', '40603', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191532', '12818', '40603', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191533', '12818', '40603', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191534', '12818', '40603', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191535', '12818', '40603', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191536', '12818', '40603', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191537', '12818', '40603', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191519', '12819', '40642', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191576', '12821', '40731', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('184075', '12821', '40731', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191843', '12827', '40645', '16');
INSERT INTO gameobject_quest_item_binding VALUES ('191567', '12828', '40728', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('192693', '12828', '40728', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('191543', '12838', '40640', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('191543', '12839', '40666', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191568', '12844', '40726', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('191708', '12854', '40947', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191770', '12867', '41341', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('191773', '12867', '41341', '15');
INSERT INTO gameobject_quest_item_binding VALUES ('190586', '12870', '42780', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('193996', '12870', '42780', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('192243', '12874', '42624', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('190586', '12882', '42780', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('193996', '12882', '42780', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191708', '12895', '40947', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191780', '12901', '41399', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191781', '12901', '41399', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191782', '12901', '41399', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191783', '12901', '41399', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('191814', '12915', '41506', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191815', '12915', '41506', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '12918', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '12918', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '12918', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '12918', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '12918', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '12918', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '12918', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '12918', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '12918', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '12918', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '12918', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '12918', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '12918', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '12918', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '12918', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '12918', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '12918', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '12918', '36926', '2');
INSERT INTO gameobject_quest_pickup_binding VALUES ('191840', '12925', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('191844', '12930', '41614', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('191845', '12930', '41614', '7');
INSERT INTO gameobject_quest_item_binding VALUES ('190663', '12930', '33470', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('201299', '12930', '33470', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('201300', '12930', '33470', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('201301', '12930', '33470', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('201855', '12930', '33470', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('201934', '12930', '33470', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('201935', '12930', '33470', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('201936', '12930', '33470', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('193597', '12930', '33470', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '12952', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '12952', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '12952', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '12952', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '12952', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '12952', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '12952', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '12952', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '12952', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '12952', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '12952', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '12952', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '12952', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '12952', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '12952', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '12952', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '12952', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '12952', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('192058', '12964', '42109', '5');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192120', '12965', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192121', '12965', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192122', '12965', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192081', '12975', '42162', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('192082', '12975', '42162', '8');
INSERT INTO gameobject_quest_item_binding VALUES ('192127', '12981', '42252', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('192171', '12993', '42475', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192172', '12993', '42476', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192187', '13001', '42541', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('192188', '13001', '42541', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('192189', '13001', '42541', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('192190', '13001', '42541', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('192191', '13001', '42541', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('192192', '13001', '42541', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '13002', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '13002', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '13002', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '13002', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '13002', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '13002', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '13002', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '13002', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '13002', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '13002', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '13002', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '13002', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '13002', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '13002', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '13002', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '13002', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '13002', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '13002', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '13004', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '13004', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '13004', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '13004', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '13004', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '13004', '36929', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '13004', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '13004', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '13004', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '13004', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '13004', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '13004', '36932', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '13004', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '13004', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '13004', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '13004', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '13004', '36926', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '13004', '36926', '2');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192493', '13034', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192494', '13034', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192495', '13034', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189978', '13041', '36923', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189979', '13041', '36923', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189980', '13041', '36923', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('189981', '13041', '36923', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('191133', '13041', '36923', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('195036', '13041', '36923', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192536', '13050', '42784', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('192556', '13055', '42926', '8');
INSERT INTO gameobject_quest_pickup_binding VALUES ('194123', '13058', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192676', '13074', '44790', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('192676', '13075', '44790', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192773', '13078', '43084', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('191820', '13084', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('192788', '13094', '43095', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192788', '13095', '43095', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192826', '13098', '43140', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('192818', '13100', '43100', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('192823', '13101', '43128', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192828', '13102', '43148', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('192824', '13103', '43138', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('192825', '13103', '43137', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192827', '13107', '43143', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('192818', '13112', '43100', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('192823', '13113', '43128', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192828', '13114', '43148', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('192824', '13115', '43138', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('192825', '13115', '43137', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192827', '13116', '43143', '4');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192858', '13117', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192914', '13120', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192915', '13120', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192916', '13120', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192908', '13130', '43217', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('192909', '13130', '43218', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('192910', '13130', '43218', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('192911', '13130', '43218', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('192912', '13130', '43218', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('192941', '13131', '43238', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('192944', '13131', '43238', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('192942', '13131', '43239', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('192943', '13131', '43239', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('192944', '13131', '43240', '2');
INSERT INTO gameobject_quest_item_binding VALUES ('192945', '13131', '43241', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192933', '13134', '5');
INSERT INTO gameobject_quest_pickup_binding VALUES ('192932', '13134', '5');
INSERT INTO gameobject_quest_pickup_binding VALUES ('193025', '13152', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193403', '13174', '43688', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193404', '13174', '43689', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193405', '13174', '43691', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193406', '13174', '43690', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('193051', '13182', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('193059', '13205', '43513', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('193059', '13206', '43513', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('193092', '13220', '43568', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193091', '13220', '43567', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193201', '13239', '43616', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193200', '13239', '43610', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193199', '13239', '43609', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193197', '13242', '43615', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193603', '13247', '43668', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193597', '13251', '43697', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193200', '13261', '43610', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193201', '13261', '43616', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193199', '13261', '43609', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193561', '13273', '43984', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193560', '13273', '43983', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193201', '13291', '43616', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193200', '13291', '43610', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193199', '13291', '43609', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193199', '13292', '43609', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193201', '13292', '43616', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193200', '13292', '43610', '3');
INSERT INTO gameobject_quest_item_binding VALUES ('193944', '13346', '44477', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193946', '13346', '44479', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193945', '13346', '44478', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193943', '13346', '44476', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193196', '13347', '44474', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193944', '13350', '44477', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193946', '13350', '44479', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193945', '13350', '44478', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193943', '13350', '44476', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193944', '13367', '44477', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193946', '13367', '44479', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193945', '13367', '44478', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193943', '13367', '44476', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193944', '13368', '44477', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193946', '13368', '44479', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193945', '13368', '44478', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193943', '13368', '44476', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194158', '13384', '44650', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194159', '13385', '44651', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193997', '13420', '44724', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('193997', '13421', '44724', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('191840', '13425', '30');
INSERT INTO gameobject_quest_item_binding VALUES ('194126', '13556', '44921', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('190586', '13559', '42780', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('193996', '13559', '42780', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13600', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13600', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194327', '13606', '45788', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194324', '13606', '45788', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194325', '13606', '45788', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194326', '13606', '45788', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194329', '13606', '45788', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194330', '13606', '45788', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194331', '13606', '45788', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194200', '13609', '45786', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194313', '13610', '45784', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194314', '13610', '45784', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194957', '13611', '45787', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194958', '13611', '45787', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194821', '13631', '46052', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194822', '13631', '46052', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194340', '13633', '45058', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194341', '13634', '45062', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('194537', '13643', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('194539', '13643', '1');
INSERT INTO gameobject_quest_pickup_binding VALUES ('194538', '13643', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194423', '13663', '45121', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194424', '13663', '45122', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13669', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13669', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13674', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13674', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('192053', '13692', '45328', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13742', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13742', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13747', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13747', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13753', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13753', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13758', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13758', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13763', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13763', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13769', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13769', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13774', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13774', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13779', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13779', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194238', '13784', '44978', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194213', '13784', '45000', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('194822', '13819', '46053', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194324', '13821', '45814', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194325', '13821', '45814', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194326', '13821', '45814', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194329', '13821', '45814', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194330', '13821', '45814', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194331', '13821', '45814', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194314', '13823', '45817', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194958', '13824', '45816', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192057', '13830', '45902', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('194479', '13833', '45905', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('192053', '13836', '45328', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('195022', '13887', '46364', '4');
INSERT INTO gameobject_quest_item_binding VALUES ('195037', '13904', '46382', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '13906', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '13906', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '13906', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '13906', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '13906', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '13906', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '13906', '8170', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '13908', '8170', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181800', '13908', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181802', '13908', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('181804', '13908', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('179501', '13908', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180228', '13908', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('180229', '13908', '14047', '20');
INSERT INTO gameobject_quest_item_binding VALUES ('195037', '13916', '46382', '12');
INSERT INTO gameobject_quest_item_binding VALUES ('195274', '14074', '46859', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('176751', '14106', '13703', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('176752', '14106', '13703', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('195344', '14107', '47035', '6');
INSERT INTO gameobject_quest_item_binding VALUES ('195274', '14143', '46859', '10');
INSERT INTO gameobject_quest_item_binding VALUES ('103600', '14418', '7294', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('103600', '14421', '7294', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201384', '20438', '49648', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201367', '24442', '49678', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201592', '24461', '49718', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('201937', '24545', '49869', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('202238', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('201874', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('202180', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('202240', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('202339', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('201872', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('202177', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('201875', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('202179', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('202241', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('202338', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('202340', '24545', '49908', '25');
INSERT INTO gameobject_quest_item_binding VALUES ('201874', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('202180', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('202240', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('202339', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('201872', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('202177', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('201875', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('202179', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('202238', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('202241', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('202338', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('202340', '24548', '50274', '50');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24553', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201384', '24556', '49648', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201592', '24559', '49718', '5');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24564', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24594', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24595', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24596', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24598', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24795', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24796', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24798', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24799', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24800', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('201794', '24801', '49871', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192050', '24803', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192052', '24803', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192051', '24803', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192054', '24803', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192053', '24803', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192057', '24803', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192059', '24803', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192048', '24803', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192049', '24803', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192046', '24803', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192050', '24806', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192052', '24806', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192051', '24806', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192054', '24806', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192053', '24806', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192057', '24806', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192059', '24806', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192048', '24806', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192049', '24806', '50289', '1');
INSERT INTO gameobject_quest_item_binding VALUES ('192046', '24806', '50289', '1');


--Fix for 1 more item that sold for gold and badges
UPDATE `items` SET `buyprice` = '0' WHERE `entry` = '49908';

-- Npc selling free honor that isnt even suppost to sell stuff http://www.wowhead.com/npc=15350
Delete from `vendors` where `entry` = '15350';

-- Removed dalaran visters falling from sky (these are event only)
Delete from `creature_spawns` where `id` = '130315';

-- Violet Hold Guards should not be attackable
Update `creature_proto` set `faction` = '2007' where entry = '30659';

-- Required Targets for spell #19512
DELETE FROM SpellTargetConstraints WHERE spellid = '19512';
INSERT INTO SpellTargetConstraints VALUEs (19512,0,12296);

INSERT INTO SpellTargetConstraints VALUEs (19512,0,12298);

-- Fixed some shit about Tame the beast quests
UPDATE `quests` SET `RequiredQuest1` = '0' WHERE `quests`.`entry` =6064;

UPDATE `quests` SET `RequiredQuest1` = '0' WHERE `quests`.`entry` =6062;

UPDATE `quests` SET `RequiredQuest1` = '0' WHERE `RequiredOneOfQuest` != '' AND Title LIKE 'Taming the Beast';

UPDATE `quests` SET `ReqKillMobOrGOId1` = '0', `ReqKillMobOrGOCount1` = '0' WHERE `title` LIKE "%taming the beast%";
UPDATE quests q JOIN items i ON (q.srcItem = i.entry) SET q.ReqCastSpellId1 =  i.spellid_1 WHERE q.title LIKE "%taming the beast%";

UPDATE `gameobject_spawns` SET flags = flags&~4 WHERE entry = 3719;

-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2011 at 05:28 odp.
-- Server version: 5.5.8
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `whydb_world`
--

-- --------------------------------------------------------

--
-- Table structure for table `creature_quest_finisher`
--

DROP TABLE IF EXISTS `creature_quest_finisher`;
CREATE TABLE IF NOT EXISTS `creature_quest_finisher` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED COMMENT='Creature System';

--
-- Dumping data for table `creature_quest_finisher`
--

INSERT INTO `creature_quest_finisher` (`id`, `quest`) VALUES
(196, 33),
(196, 5261),
(197, 7),
(197, 15),
(197, 21),
(197, 783),
(198, 3104),
(233, 9),
(234, 12),
(234, 13),
(234, 14),
(234, 109),
(234, 132),
(234, 141),
(234, 142),
(234, 143),
(234, 155),
(234, 166),
(235, 22),
(235, 36),
(235, 38),
(237, 64),
(237, 184),
(238, 151),
(239, 48),
(239, 49),
(239, 50),
(239, 51),
(239, 53),
(239, 117),
(240, 39),
(240, 40),
(240, 54),
(240, 62),
(240, 76),
(240, 123),
(240, 147),
(240, 176),
(241, 47),
(244, 88),
(246, 86),
(246, 87),
(247, 84),
(247, 85),
(248, 111),
(251, 114),
(252, 106),
(253, 60),
(253, 107),
(253, 112),
(255, 16),
(261, 35),
(261, 46),
(261, 52),
(261, 71),
(263, 145),
(263, 160),
(263, 252),
(263, 253),
(264, 56),
(264, 57),
(264, 58),
(264, 79),
(264, 97),
(264, 227),
(264, 228),
(265, 98),
(265, 101),
(265, 148),
(265, 154),
(265, 262),
(266, 65),
(267, 66),
(267, 68),
(267, 80),
(267, 265),
(267, 1041),
(268, 225),
(268, 251),
(268, 401),
(270, 377),
(272, 5),
(272, 90),
(272, 93),
(273, 78),
(273, 156),
(273, 158),
(273, 266),
(276, 174),
(276, 177),
(276, 181),
(278, 59),
(278, 83),
(279, 61),
(288, 163),
(288, 240),
(288, 453),
(289, 133),
(289, 134),
(289, 157),
(289, 159),
(289, 165),
(294, 74),
(294, 75),
(294, 1666),
(294, 1667),
(295, 69),
(295, 2158),
(297, 70),
(302, 149),
(302, 175),
(311, 55),
(311, 164),
(311, 230),
(311, 268),
(311, 323),
(311, 325),
(313, 178),
(313, 249),
(332, 135),
(332, 393),
(332, 394),
(332, 2205),
(332, 2206),
(332, 2359),
(332, 6182),
(332, 6183),
(341, 89),
(341, 125),
(341, 345),
(342, 34),
(342, 130),
(343, 92),
(344, 121),
(344, 144),
(344, 146),
(344, 169),
(344, 180),
(346, 116),
(352, 6261),
(375, 3103),
(377, 5623),
(377, 5624),
(379, 131),
(381, 127),
(381, 150),
(382, 19),
(382, 20),
(382, 115),
(382, 219),
(384, 7677),
(384, 7678),
(392, 103),
(392, 104),
(392, 152),
(415, 119),
(415, 122),
(415, 124),
(415, 126),
(415, 1618),
(459, 1598),
(459, 3105),
(460, 1599),
(460, 3115),
(464, 129),
(466, 120),
(469, 202),
(469, 215),
(469, 329),
(469, 331),
(469, 574),
(482, 350),
(482, 434),
(482, 1242),
(482, 1245),
(482, 1247),
(491, 6285),
(514, 118),
(523, 6181),
(576, 229),
(620, 3861),
(656, 167),
(656, 168),
(658, 179),
(661, 223),
(661, 1042),
(661, 1043),
(663, 173),
(663, 221),
(663, 222),
(713, 170),
(714, 183),
(714, 233),
(715, 194),
(715, 195),
(715, 196),
(715, 197),
(715, 208),
(715, 583),
(715, 5762),
(715, 5763),
(716, 338),
(716, 339),
(716, 340),
(716, 341),
(716, 342),
(717, 185),
(717, 186),
(717, 187),
(717, 188),
(718, 190),
(718, 191),
(718, 192),
(718, 193),
(733, 203),
(733, 204),
(737, 189),
(737, 209),
(737, 213),
(738, 198),
(739, 205),
(739, 206),
(739, 207),
(770, 622),
(773, 201),
(773, 210),
(773, 627),
(773, 1115),
(773, 1116),
(786, 182),
(786, 218),
(786, 234),
(820, 214),
(821, 102),
(823, 6),
(823, 18),
(836, 3364),
(837, 3110),
(840, 1243),
(840, 1244),
(859, 386),
(878, 153),
(888, 245),
(893, 226),
(895, 3108),
(900, 91),
(903, 128),
(911, 3100),
(912, 3106),
(912, 3112),
(915, 3102),
(916, 3109),
(916, 3113),
(925, 3101),
(926, 3107),
(928, 7638),
(928, 7639),
(928, 7640),
(928, 7644),
(928, 7646),
(928, 7648),
(928, 7666),
(928, 7669),
(928, 7670),
(944, 3114),
(951, 344),
(951, 347),
(952, 3905),
(963, 11),
(963, 239),
(1068, 782),
(1068, 793),
(1070, 244),
(1070, 246),
(1071, 304),
(1071, 472),
(1073, 161),
(1074, 303),
(1074, 378),
(1075, 632),
(1075, 633),
(1076, 305),
(1077, 299),
(1078, 294),
(1078, 295),
(1078, 296),
(1089, 224),
(1090, 263),
(1091, 237),
(1092, 217),
(1092, 267),
(1093, 199),
(1093, 274),
(1093, 278),
(1093, 283),
(1105, 298),
(1105, 302),
(1139, 255),
(1139, 256),
(1141, 212),
(1141, 1271),
(1154, 385),
(1156, 531),
(1182, 261),
(1182, 6141),
(1187, 257),
(1187, 258),
(1187, 271),
(1212, 269),
(1217, 270),
(1217, 292),
(1217, 324),
(1217, 526),
(1226, 5625),
(1226, 5626),
(1231, 6064),
(1231, 6074),
(1231, 6075),
(1231, 6076),
(1231, 6084),
(1231, 6085),
(1239, 288),
(1239, 289),
(1242, 279),
(1242, 286),
(1243, 5541),
(1244, 275),
(1244, 276),
(1244, 277),
(1244, 463),
(1252, 287),
(1252, 420),
(1254, 432),
(1261, 7673),
(1261, 7674),
(1265, 314),
(1266, 312),
(1267, 384),
(1267, 4126),
(1267, 4128),
(1268, 2926),
(1268, 2927),
(1268, 2962),
(1269, 412),
(1274, 291),
(1284, 293),
(1284, 3636),
(1293, 12326),
(1293, 12455),
(1293, 12457),
(1293, 12465),
(1309, 1921),
(1309, 1940),
(1309, 1941),
(1309, 1942),
(1323, 6281),
(1340, 414),
(1340, 416),
(1342, 468),
(1343, 307),
(1343, 353),
(1343, 1339),
(1344, 309),
(1344, 704),
(1344, 707),
(1344, 739),
(1345, 297),
(1345, 436),
(1356, 301),
(1356, 514),
(1356, 554),
(1356, 2240),
(1373, 308),
(1374, 315),
(1374, 318),
(1374, 319),
(1374, 415),
(1375, 311),
(1376, 400),
(1377, 313),
(1377, 466),
(1377, 467),
(1378, 317),
(1378, 320),
(1379, 454),
(1416, 322),
(1416, 1097),
(1416, 1700),
(1416, 1705),
(1416, 1706),
(1416, 7641),
(1416, 7642),
(1422, 330),
(1428, 333),
(1429, 334),
(1431, 332),
(1435, 335),
(1435, 24428),
(1439, 336),
(1440, 337),
(1440, 343),
(1440, 542),
(1442, 1420),
(1443, 1424),
(1443, 1444),
(1443, 1445),
(1444, 346),
(1449, 349),
(1470, 17),
(1470, 2500),
(1470, 2501),
(1495, 356),
(1495, 359),
(1496, 404),
(1496, 426),
(1496, 1818),
(1496, 1819),
(1497, 366),
(1497, 409),
(1498, 357),
(1498, 405),
(1498, 411),
(1498, 444),
(1498, 491),
(1499, 355),
(1499, 358),
(1499, 360),
(1499, 408),
(1499, 440),
(1500, 354),
(1500, 362),
(1500, 1820),
(1500, 1821),
(1500, 1822),
(1515, 370),
(1515, 371),
(1515, 372),
(1515, 383),
(1515, 398),
(1515, 427),
(1518, 365),
(1518, 367),
(1518, 368),
(1518, 369),
(1521, 375),
(1560, 361),
(1569, 363),
(1569, 364),
(1569, 3901),
(1570, 380),
(1570, 381),
(1570, 382),
(1572, 6387),
(1573, 6388),
(1646, 373),
(1646, 392),
(1646, 395),
(1646, 399),
(1652, 374),
(1661, 376),
(1661, 6395),
(1681, 6392),
(1719, 387),
(1719, 389),
(1719, 391),
(1721, 388),
(1733, 397),
(1740, 3902),
(1749, 396),
(1776, 1389),
(1776, 1392),
(1842, 5862),
(1854, 8414),
(1855, 5542),
(1855, 5543),
(1855, 5544),
(1855, 5742),
(1855, 5781),
(1855, 5845),
(1855, 5848),
(1855, 5944),
(1931, 407),
(1937, 429),
(1937, 443),
(1937, 445),
(1937, 446),
(1937, 450),
(1937, 3221),
(1938, 99),
(1938, 421),
(1938, 422),
(1938, 423),
(1938, 424),
(1938, 481),
(1938, 1014),
(1950, 425),
(1950, 428),
(1950, 435),
(1951, 430),
(1952, 437),
(1952, 439),
(1952, 442),
(1952, 448),
(1952, 449),
(1959, 413),
(1960, 417),
(1963, 418),
(1965, 282),
(1977, 433),
(1992, 458),
(1992, 459),
(2050, 441),
(2050, 530),
(2055, 447),
(2055, 451),
(2055, 513),
(2055, 1109),
(2055, 1113),
(2055, 2938),
(2055, 12787),
(2057, 273),
(2058, 452),
(2078, 476),
(2078, 483),
(2078, 486),
(2079, 456),
(2079, 457),
(2080, 918),
(2080, 919),
(2080, 927),
(2080, 930),
(2080, 931),
(2080, 997),
(2080, 2498),
(2080, 2499),
(2082, 916),
(2082, 917),
(2083, 1581),
(2086, 455),
(2092, 708),
(2094, 469),
(2094, 471),
(2094, 484),
(2096, 306),
(2104, 464),
(2104, 473),
(2104, 474),
(2107, 475),
(2111, 470),
(2119, 3095),
(2121, 478),
(2121, 479),
(2121, 480),
(2121, 482),
(2121, 516),
(2122, 3096),
(2123, 3097),
(2124, 3098),
(2126, 3099),
(2129, 5650),
(2129, 5651),
(2150, 488),
(2150, 489),
(2151, 487),
(2211, 492),
(2215, 494),
(2215, 527),
(2215, 528),
(2215, 529),
(2215, 532),
(2215, 539),
(2215, 541),
(2215, 549),
(2215, 566),
(2215, 567),
(2216, 493),
(2216, 496),
(2216, 501),
(2216, 509),
(2216, 515),
(2216, 517),
(2216, 1065),
(2216, 1066),
(2216, 2933),
(2216, 2934),
(2216, 2937),
(2226, 6321),
(2227, 521),
(2228, 536),
(2228, 559),
(2228, 561),
(2228, 562),
(2229, 498),
(2229, 506),
(2229, 508),
(2229, 533),
(2230, 499),
(2263, 500),
(2263, 504),
(2263, 560),
(2274, 502),
(2276, 505),
(2276, 510),
(2276, 512),
(2276, 522),
(2276, 523),
(2276, 525),
(2276, 537),
(2277, 511),
(2277, 538),
(2277, 540),
(2277, 551),
(2278, 495),
(2278, 518),
(2278, 519),
(2278, 520),
(2285, 543),
(2285, 4765),
(2308, 3341),
(2316, 503),
(2317, 507),
(2333, 535),
(2357, 7645),
(2382, 564),
(2391, 2479),
(2391, 2480),
(2393, 7321),
(2410, 544),
(2410, 545),
(2418, 546),
(2419, 547),
(2425, 550),
(2425, 1048),
(2425, 1978),
(2425, 5725),
(2425, 6521),
(2425, 6522),
(2429, 552),
(2430, 555),
(2437, 556),
(2437, 557),
(2438, 565),
(2439, 563),
(2464, 568),
(2464, 569),
(2465, 570),
(2465, 571),
(2465, 572),
(2465, 573),
(2486, 348),
(2487, 599),
(2487, 604),
(2487, 608),
(2487, 669),
(2488, 587),
(2490, 597),
(2491, 580),
(2493, 576),
(2494, 617),
(2495, 575),
(2495, 577),
(2495, 628),
(2496, 578),
(2496, 601),
(2496, 611),
(2496, 616),
(2496, 1181),
(2496, 1182),
(2497, 581),
(2497, 582),
(2497, 592),
(2497, 2932),
(2498, 600),
(2498, 605),
(2498, 621),
(2498, 1118),
(2498, 1122),
(2498, 1127),
(2500, 614),
(2500, 618),
(2500, 8551),
(2500, 8552),
(2500, 8554),
(2501, 607),
(2501, 609),
(2501, 613),
(2501, 2874),
(2502, 606),
(2504, 579),
(2519, 588),
(2519, 589),
(2519, 591),
(2519, 596),
(2519, 598),
(2519, 629),
(2519, 1240),
(2530, 593),
(2542, 603),
(2542, 610),
(2543, 602),
(2546, 1036),
(2546, 4621),
(2546, 9272),
(2594, 615),
(2594, 8553),
(2610, 663),
(2610, 667),
(2610, 668),
(2610, 670),
(2616, 623),
(2634, 594),
(2634, 630),
(2670, 4781),
(2670, 4785),
(2695, 637),
(2700, 634),
(2700, 681),
(2700, 682),
(2700, 684),
(2700, 685),
(2703, 638),
(2703, 639),
(2703, 641),
(2703, 643),
(2703, 644),
(2703, 646),
(2705, 647),
(2706, 640),
(2706, 655),
(2706, 671),
(2706, 672),
(2706, 673),
(2706, 675),
(2706, 701),
(2706, 847),
(2708, 697),
(2711, 661),
(2712, 658),
(2712, 659),
(2712, 660),
(2713, 657),
(2767, 662),
(2769, 664),
(2771, 676),
(2771, 677),
(2771, 678),
(2771, 679),
(2772, 680),
(2774, 665),
(2774, 666),
(2784, 683),
(2784, 700),
(2784, 4361),
(2784, 4363),
(2784, 7063),
(2784, 8484),
(2784, 12771),
(2784, 24609),
(2785, 687),
(2785, 692),
(2785, 709),
(2785, 737),
(2786, 653),
(2786, 727),
(2786, 735),
(2786, 968),
(2786, 971),
(2787, 688),
(2788, 691),
(2788, 694),
(2789, 690),
(2789, 693),
(2789, 695),
(2789, 696),
(2790, 686),
(2790, 689),
(2792, 674),
(2792, 702),
(2817, 703),
(2817, 705),
(2817, 1559),
(2817, 2418),
(2860, 706),
(2860, 718),
(2860, 733),
(2888, 717),
(2888, 732),
(2909, 721),
(2909, 722),
(2910, 719),
(2910, 720),
(2910, 723),
(2911, 942),
(2911, 943),
(2912, 741),
(2913, 730),
(2913, 731),
(2916, 724),
(2916, 726),
(2916, 2963),
(2916, 2977),
(2916, 7062),
(2917, 729),
(2918, 725),
(2918, 762),
(2918, 1139),
(2920, 715),
(2920, 716),
(2920, 734),
(2921, 710),
(2921, 711),
(2921, 712),
(2921, 713),
(2921, 714),
(2921, 777),
(2921, 778),
(2921, 4062),
(2921, 4063),
(2930, 4740),
(2930, 4811),
(2930, 4813),
(2934, 728),
(2934, 736),
(2934, 1013),
(2947, 761),
(2948, 748),
(2948, 754),
(2948, 756),
(2948, 758),
(2948, 759),
(2948, 760),
(2980, 747),
(2980, 750),
(2980, 780),
(2981, 753),
(2981, 757),
(2981, 781),
(2981, 24857),
(2982, 755),
(2984, 772),
(2985, 743),
(2986, 1149),
(2986, 1150),
(2986, 1151),
(2986, 1394),
(2987, 744),
(2988, 751),
(2988, 764),
(2988, 765),
(2991, 752),
(2993, 745),
(2993, 746),
(2993, 763),
(2994, 773),
(2995, 6363),
(3007, 2860),
(3009, 2440),
(3033, 31),
(3033, 5926),
(3033, 5927),
(3033, 5928),
(3033, 5932),
(3033, 6002),
(3033, 6130),
(3039, 6089),
(3050, 768),
(3050, 769),
(3052, 770),
(3054, 767),
(3054, 771),
(3055, 766),
(3057, 775),
(3057, 776),
(3057, 7061),
(3057, 24614),
(3059, 3091),
(3060, 3094),
(3061, 3092),
(3062, 3093),
(3065, 6061),
(3065, 6065),
(3065, 6066),
(3065, 6067),
(3065, 6087),
(3065, 6088),
(3139, 784),
(3139, 825),
(3139, 830),
(3139, 837),
(3140, 786),
(3142, 806),
(3142, 823),
(3143, 787),
(3143, 788),
(3143, 789),
(3143, 804),
(3143, 4641),
(3145, 792),
(3145, 794),
(3145, 1499),
(3147, 791),
(3153, 2383),
(3153, 3065),
(3154, 3082),
(3154, 3087),
(3155, 3083),
(3155, 3088),
(3156, 3090),
(3157, 3084),
(3157, 3089),
(3171, 6062),
(3171, 6068),
(3171, 6069),
(3171, 6070),
(3171, 6082),
(3171, 6083),
(3188, 805),
(3188, 808),
(3188, 826),
(3188, 2935),
(3188, 2936),
(3189, 813),
(3190, 812),
(3191, 815),
(3193, 816),
(3194, 817),
(3208, 827),
(3208, 828),
(3209, 3376),
(3216, 829),
(3216, 832),
(3216, 5729),
(3216, 5761),
(3216, 24429),
(3230, 9401),
(3230, 9406),
(3230, 9495),
(3230, 9588),
(3230, 9608),
(3230, 10136),
(3230, 10291),
(3230, 10388),
(3230, 10390),
(3230, 10391),
(3230, 10392),
(3230, 10755),
(3230, 10875),
(3230, 10876),
(3230, 11003),
(3233, 833),
(3287, 790),
(3292, 819),
(3292, 821),
(3292, 822),
(3293, 834),
(3293, 835),
(3304, 818),
(3309, 4511),
(3310, 6385),
(3337, 840),
(3338, 842),
(3338, 844),
(3338, 845),
(3338, 860),
(3338, 881),
(3338, 903),
(3338, 905),
(3339, 891),
(3339, 898),
(3341, 843),
(3341, 846),
(3341, 849),
(3352, 6081),
(3362, 7660),
(3362, 7661),
(3387, 882),
(3387, 883),
(3387, 884),
(3387, 885),
(3387, 897),
(3387, 907),
(3387, 913),
(3387, 3261),
(3388, 873),
(3388, 874),
(3389, 850),
(3389, 851),
(3389, 852),
(3389, 855),
(3389, 1361),
(3389, 4021),
(3390, 848),
(3390, 1358),
(3391, 887),
(3391, 888),
(3391, 892),
(3391, 895),
(3391, 1178),
(3401, 2378),
(3401, 2380),
(3401, 2460),
(3401, 2478),
(3401, 10794),
(3402, 2379),
(3412, 2841),
(3412, 2949),
(3412, 2950),
(3419, 853),
(3419, 962),
(3419, 1064),
(3419, 1067),
(3419, 1086),
(3421, 857),
(3428, 868),
(3428, 1148),
(3429, 854),
(3429, 871),
(3429, 872),
(3429, 906),
(3429, 5041),
(3430, 878),
(3430, 879),
(3430, 889),
(3430, 5042),
(3430, 5043),
(3430, 5044),
(3430, 5045),
(3430, 5046),
(3430, 5052),
(3432, 899),
(3432, 4921),
(3433, 893),
(3433, 1153),
(3439, 858),
(3441, 861),
(3441, 1130),
(3441, 1131),
(3441, 1136),
(3441, 1205),
(3442, 863),
(3442, 902),
(3442, 1094),
(3443, 862),
(3446, 865),
(3446, 866),
(3446, 1069),
(3446, 1221),
(3446, 1270),
(3446, 1491),
(3448, 870),
(3448, 877),
(3448, 880),
(3448, 886),
(3448, 6127),
(3448, 6128),
(3449, 867),
(3449, 875),
(3449, 876),
(3453, 890),
(3453, 896),
(3453, 1039),
(3453, 1111),
(3453, 1492),
(3464, 869),
(3464, 1509),
(3464, 3281),
(3483, 6364),
(3484, 1945),
(3484, 1946),
(3489, 6386),
(3514, 920),
(3514, 921),
(3515, 928),
(3515, 929),
(3515, 933),
(3515, 7383),
(3516, 935),
(3516, 940),
(3516, 1015),
(3516, 1019),
(3516, 1047),
(3516, 3763),
(3516, 3789),
(3516, 3790),
(3516, 4902),
(3516, 5253),
(3516, 10520),
(3517, 922),
(3517, 923),
(3519, 937),
(3519, 938),
(3520, 5048),
(3521, 809),
(3521, 924),
(3567, 932),
(3567, 2438),
(3567, 2459),
(3583, 947),
(3585, 945),
(3593, 3116),
(3594, 3118),
(3595, 3119),
(3596, 3117),
(3597, 3120),
(3600, 5621),
(3600, 5622),
(3601, 6063),
(3601, 6071),
(3601, 6072),
(3601, 6073),
(3601, 6101),
(3601, 6102),
(3601, 6721),
(3601, 6722),
(3615, 6361),
(3615, 6365),
(3616, 948),
(3616, 950),
(3616, 951),
(3616, 952),
(3616, 960),
(3616, 961),
(3639, 953),
(3644, 963),
(3649, 958),
(3649, 1442),
(3649, 4761),
(3649, 4762),
(3649, 4763),
(3649, 9633),
(3650, 954),
(3650, 955),
(3650, 956),
(3650, 957),
(3661, 965),
(3661, 966),
(3661, 1143),
(3661, 1167),
(3663, 967),
(3663, 970),
(3663, 973),
(3663, 976),
(3663, 981),
(3663, 1140),
(3665, 959),
(3666, 1579),
(3666, 1580),
(3685, 7662),
(3685, 7663),
(3690, 14087),
(3691, 990),
(3691, 1023),
(3691, 1025),
(3691, 1029),
(3691, 1046),
(3691, 1054),
(3691, 10752),
(3692, 993),
(3693, 984),
(3693, 985),
(3693, 986),
(3693, 994),
(3693, 995),
(3701, 2118),
(3701, 2138),
(3701, 2139),
(3702, 2178),
(3702, 6122),
(3702, 6123),
(3706, 5648),
(3706, 5649),
(3707, 3085),
(3836, 3181),
(3836, 3201),
(3838, 6341),
(3845, 1008),
(3845, 1134),
(3846, 1007),
(3846, 1009),
(3847, 1010),
(3848, 1011),
(3848, 1012),
(3848, 4261),
(3848, 4581),
(3848, 9519),
(3880, 1022),
(3885, 1016),
(3885, 1017),
(3891, 991),
(3894, 1020),
(3894, 1033),
(3894, 1034),
(3894, 1035),
(3897, 1030),
(3897, 1045),
(3901, 1031),
(3901, 1032),
(3916, 1024),
(3916, 1026),
(3916, 1027),
(3916, 1055),
(3920, 1021),
(3936, 2867),
(3936, 4266),
(3945, 1040),
(3978, 1049),
(3978, 2280),
(3978, 2968),
(3979, 1050),
(3980, 1052),
(3980, 1053),
(3982, 1051),
(3994, 1056),
(3994, 1057),
(3995, 1058),
(3995, 1060),
(4046, 1063),
(4046, 3518),
(4046, 5062),
(4047, 1262),
(4047, 7541),
(4048, 1059),
(4048, 1100),
(4048, 1101),
(4048, 4281),
(4049, 1061),
(4049, 1062),
(4049, 1068),
(4077, 1071),
(4077, 1074),
(4077, 1077),
(4077, 1079),
(4077, 1080),
(4077, 1085),
(4078, 1075),
(4078, 1076),
(4078, 1078),
(4079, 1082),
(4080, 1070),
(4080, 1083),
(4080, 1084),
(4080, 1091),
(4081, 1072),
(4081, 1073),
(4088, 1683),
(4088, 1684),
(4088, 1686),
(4090, 3378),
(4146, 6103),
(4155, 4510),
(4163, 2241),
(4163, 2242),
(4197, 1510),
(4198, 1087),
(4198, 1088),
(4200, 6342),
(4201, 1092),
(4201, 1093),
(4201, 1095),
(4201, 1096),
(4201, 1483),
(4212, 2853),
(4214, 2259),
(4217, 3370),
(4217, 3781),
(4217, 3785),
(4217, 3803),
(4217, 4986),
(4217, 5061),
(4217, 5923),
(4217, 5924),
(4217, 5925),
(4217, 5931),
(4217, 6001),
(4217, 6125),
(4217, 6761),
(4256, 6391),
(4276, 1090),
(4444, 1098),
(4451, 1102),
(4452, 1110),
(4452, 1112),
(4452, 1117),
(4452, 1119),
(4453, 1105),
(4453, 1107),
(4453, 1179),
(4453, 2769),
(4453, 2770),
(4454, 1104),
(4454, 1114),
(4454, 1137),
(4483, 1146),
(4483, 1147),
(4485, 1145),
(4485, 1184),
(4485, 2976),
(4485, 3507),
(4486, 1164),
(4488, 1159),
(4488, 1160),
(4488, 6628),
(4489, 1152),
(4489, 1154),
(4489, 6627),
(4495, 1120),
(4496, 1121),
(4498, 1433),
(4498, 1435),
(4498, 1480),
(4498, 1481),
(4498, 1482),
(4500, 1166),
(4500, 1170),
(4501, 1169),
(4501, 1171),
(4501, 1172),
(4501, 1173),
(4502, 1168),
(4503, 1177),
(4508, 1144),
(4521, 1142),
(4544, 2973),
(4544, 2974),
(4551, 6322),
(4556, 6323),
(4568, 1881),
(4568, 1882),
(4568, 1959),
(4568, 1960),
(4576, 1961),
(4576, 1962),
(4618, 1106),
(4618, 1108),
(4629, 1175),
(4630, 1176),
(4630, 1183),
(4630, 1192),
(4630, 1194),
(4631, 1180),
(4706, 1186),
(4706, 1187),
(4706, 1189),
(4708, 1188),
(4709, 1191),
(4721, 1195),
(4722, 1196),
(4722, 1197),
(4730, 7671),
(4730, 7672),
(4732, 14079),
(4752, 14086),
(4753, 14085),
(4772, 14083),
(4773, 14089),
(4783, 1200),
(4784, 1199),
(4787, 1198),
(4791, 1201),
(4791, 1202),
(4791, 1238),
(4791, 1239),
(4791, 1261),
(4791, 11186),
(4792, 1203),
(4792, 1206),
(4792, 1218),
(4792, 11177),
(4792, 11225),
(4794, 1204),
(4794, 1222),
(4794, 1258),
(4794, 1260),
(4926, 1251),
(4926, 1268),
(4926, 1269),
(4926, 1273),
(4926, 1323),
(4926, 11200),
(4926, 11201),
(4926, 11204),
(4926, 11206),
(4941, 1319),
(4943, 1276),
(4944, 1220),
(4944, 1252),
(4944, 1253),
(4944, 1282),
(4944, 1284),
(4944, 1285),
(4944, 1287),
(4944, 1320),
(4944, 11151),
(4944, 11152),
(4948, 1259),
(4949, 4001),
(4949, 4002),
(4949, 4004),
(4949, 4941),
(4949, 4974),
(4949, 5726),
(4949, 5727),
(4949, 5728),
(4949, 5730),
(4949, 6566),
(4949, 7783),
(4949, 8485),
(4949, 9438),
(4949, 9626),
(4949, 9813),
(4949, 10175),
(4949, 13189),
(4949, 24612),
(4959, 1241),
(4960, 1274),
(4961, 1246),
(4961, 1447),
(4963, 1248),
(4963, 1249),
(4963, 1250),
(4964, 1264),
(4966, 1266),
(4967, 1265),
(4967, 1324),
(4967, 7070),
(4968, 1267),
(4968, 11141),
(4968, 11142),
(5082, 1301),
(5083, 1302),
(5086, 11136),
(5086, 11137),
(5087, 1321),
(5087, 1322),
(5089, 1286),
(5111, 8353),
(5144, 1879),
(5144, 1880),
(5149, 1794),
(5164, 5283),
(5165, 2218),
(5165, 2239),
(5165, 2299),
(5204, 238),
(5204, 864),
(5204, 1359),
(5353, 3374),
(5384, 1448),
(5384, 1469),
(5384, 1475),
(5385, 1364),
(5386, 1363),
(5387, 2279),
(5387, 2964),
(5393, 1395),
(5393, 1423),
(5393, 1425),
(5394, 1418),
(5394, 1419),
(5395, 1362),
(5395, 1365),
(5395, 1366),
(5397, 1368),
(5397, 1370),
(5397, 1373),
(5397, 1374),
(5397, 1380),
(5397, 1382),
(5397, 1384),
(5398, 1367),
(5398, 1369),
(5398, 1371),
(5398, 1375),
(5398, 1381),
(5398, 1385),
(5398, 1386),
(5411, 4450),
(5411, 5514),
(5411, 5538),
(5413, 1338),
(5413, 1701),
(5413, 1702),
(5413, 1782),
(5414, 1372),
(5414, 1383),
(5416, 1391),
(5418, 1388),
(5464, 1477),
(5476, 1396),
(5476, 1398),
(5476, 1421),
(5476, 9609),
(5497, 1860),
(5497, 1861),
(5497, 1919),
(5497, 1920),
(5591, 1430),
(5592, 698),
(5592, 699),
(5592, 1427),
(5593, 1422),
(5593, 1426),
(5593, 1428),
(5594, 82),
(5594, 110),
(5594, 4493),
(5594, 4494),
(5594, 4496),
(5594, 4507),
(5598, 1429),
(5598, 1446),
(5634, 1451),
(5634, 1452),
(5635, 1449),
(5636, 1450),
(5636, 2988),
(5636, 2989),
(5636, 2993),
(5636, 2994),
(5637, 1457),
(5637, 1467),
(5638, 1453),
(5638, 1455),
(5638, 1456),
(5638, 1458),
(5638, 1459),
(5638, 1466),
(5640, 1431),
(5640, 1436),
(5641, 1432),
(5641, 1434),
(5641, 1484),
(5641, 1488),
(5642, 1440),
(5642, 1465),
(5644, 1438),
(5644, 1439),
(5651, 2342),
(5667, 1470),
(5675, 1471),
(5675, 1473),
(5675, 1474),
(5675, 1476),
(5675, 1478),
(5675, 10605),
(5675, 10789),
(5688, 8),
(5693, 1472),
(5694, 1938),
(5694, 1939),
(5752, 1387),
(5765, 1485),
(5767, 1486),
(5768, 1487),
(5769, 936),
(5769, 1000),
(5769, 1004),
(5769, 1018),
(5769, 1489),
(5769, 3369),
(5769, 3762),
(5769, 3784),
(5770, 914),
(5770, 1490),
(5770, 2965),
(5770, 2967),
(5770, 4883),
(5770, 4987),
(5810, 1498),
(5810, 1505),
(5875, 1501),
(5875, 1504),
(5875, 1506),
(5875, 1512),
(5875, 1513),
(5875, 10790),
(5878, 1502),
(5878, 1503),
(5878, 1825),
(5878, 1838),
(5878, 1848),
(5880, 1883),
(5880, 1884),
(5884, 3086),
(5885, 1943),
(5885, 1944),
(5887, 1463),
(5887, 1516),
(5887, 1518),
(5888, 1462),
(5888, 1519),
(5888, 1521),
(5891, 1517),
(5891, 1520),
(5895, 100),
(5899, 1530),
(5899, 1534),
(5899, 1535),
(5899, 1536),
(5900, 1464),
(5900, 1524),
(5900, 1525),
(5901, 96),
(5901, 220),
(5901, 972),
(5901, 1528),
(5901, 1529),
(5901, 2985),
(5901, 2986),
(5901, 5158),
(5905, 1531),
(5905, 1532),
(5907, 1522),
(5907, 1523),
(5907, 1527),
(5907, 2983),
(5907, 2984),
(5908, 1515),
(5909, 1507),
(5910, 1508),
(5911, 1511),
(6015, 1560),
(6019, 6132),
(6019, 6134),
(6030, 1578),
(6031, 1680),
(6031, 1681),
(6031, 1682),
(6034, 1582),
(6089, 1638),
(6089, 1665),
(6090, 1639),
(6090, 1640),
(6114, 1678),
(6114, 1679),
(6122, 1685),
(6122, 1688),
(6122, 1689),
(6122, 1715),
(6122, 1717),
(6122, 1738),
(6122, 1739),
(6134, 3509),
(6134, 3510),
(6142, 1692),
(6142, 1693),
(6142, 1703),
(6142, 1710),
(6142, 1711),
(6166, 1698),
(6166, 1699),
(6166, 10371),
(6169, 1704),
(6169, 1708),
(6169, 1709),
(6169, 2924),
(6169, 2925),
(6171, 1641),
(6171, 1642),
(6171, 1649),
(6171, 1652),
(6171, 1780),
(6171, 1788),
(6171, 1790),
(6171, 1793),
(6171, 2998),
(6171, 3681),
(6171, 4485),
(6171, 4486),
(6172, 1786),
(6173, 1781),
(6173, 1787),
(6174, 1643),
(6174, 1644),
(6175, 1647),
(6175, 1648),
(6176, 1712),
(6176, 1713),
(6176, 1791),
(6176, 1792),
(6176, 8410),
(6176, 8412),
(6176, 8413),
(6177, 1783),
(6178, 1779),
(6178, 1784),
(6179, 1645),
(6179, 1646),
(6179, 1778),
(6179, 1785),
(6179, 1789),
(6179, 2997),
(6179, 2999),
(6179, 3000),
(6181, 1653),
(6181, 1654),
(6181, 1806),
(6182, 1650),
(6182, 1651),
(6236, 1718),
(6236, 1719),
(6241, 1655),
(6244, 1716),
(6247, 1740),
(6251, 1795),
(6251, 1798),
(6251, 1804),
(6251, 1805),
(6251, 2996),
(6251, 3001),
(6266, 1796),
(6266, 4736),
(6266, 4737),
(6266, 4738),
(6266, 4739),
(6266, 4782),
(6266, 4783),
(6266, 4784),
(6266, 4786),
(6266, 4962),
(6266, 4963),
(6266, 4964),
(6266, 4965),
(6266, 4967),
(6266, 4968),
(6266, 4969),
(6266, 4975),
(6266, 4976),
(6286, 4161),
(6293, 1801),
(6293, 1803),
(6294, 1360),
(6294, 1758),
(6294, 1802),
(6301, 982),
(6389, 6324),
(6394, 1823),
(6394, 1824),
(6408, 1839),
(6408, 1842),
(6408, 1843),
(6410, 1840),
(6410, 1844),
(6410, 1845),
(6411, 1841),
(6411, 1846),
(6411, 1847),
(6446, 1858),
(6446, 1859),
(6446, 1963),
(6446, 2019),
(6467, 1885),
(6467, 1998),
(6467, 1999),
(6467, 14420),
(6467, 14421),
(6522, 3542),
(6522, 14419),
(6546, 1799),
(6546, 1947),
(6546, 1948),
(6546, 1951),
(6546, 1952),
(6546, 1953),
(6546, 1954),
(6546, 1955),
(6546, 1956),
(6546, 1957),
(6546, 1958),
(6546, 2846),
(6546, 2861),
(6546, 4961),
(6546, 11149),
(6546, 11150),
(6546, 11203),
(6546, 11205),
(6546, 11212),
(6546, 11213),
(6548, 1949),
(6548, 1950),
(6568, 3402),
(6577, 2038),
(6577, 2039),
(6579, 2040),
(6579, 2041),
(6579, 2928),
(6667, 2078),
(6667, 2098),
(6707, 6681),
(6707, 8249),
(6735, 8357),
(6736, 2159),
(6740, 8356),
(6740, 8860),
(6740, 9026),
(6741, 8354),
(6741, 8982),
(6746, 8360),
(6746, 8861),
(6747, 1656),
(6766, 6701),
(6768, 8233),
(6768, 8236),
(6784, 590),
(6806, 2160),
(6826, 2198),
(6826, 2199),
(6826, 2201),
(6826, 2204),
(6826, 2361),
(6826, 2947),
(6826, 2948),
(6826, 3375),
(6826, 8355),
(6868, 2202),
(6868, 2203),
(6868, 2258),
(6868, 2318),
(6868, 2338),
(6868, 2339),
(6868, 2341),
(6886, 2238),
(6906, 2398),
(6912, 2200),
(6912, 2284),
(6928, 2161),
(6929, 6384),
(6929, 8359),
(6946, 2260),
(6946, 2298),
(6946, 2300),
(6966, 2281),
(6966, 2282),
(6986, 81),
(6986, 2283),
(6986, 2340),
(6987, 649),
(7007, 1103),
(7009, 2358),
(7010, 32),
(7010, 4509),
(7010, 7732),
(7024, 2360),
(7161, 2381),
(7161, 2382),
(7207, 2607),
(7207, 2608),
(7207, 2609),
(7233, 2458),
(7292, 2439),
(7311, 3002),
(7311, 7068),
(7313, 2518),
(7313, 2519),
(7313, 2520),
(7317, 2541),
(7317, 2561),
(7363, 2521),
(7363, 2522),
(7363, 3501),
(7363, 3502),
(7406, 648),
(7406, 836),
(7406, 2767),
(7406, 3635),
(7406, 3637),
(7406, 3642),
(7406, 3643),
(7406, 3647),
(7406, 3721),
(7406, 8857),
(7407, 243),
(7407, 379),
(7407, 654),
(7407, 841),
(7407, 1690),
(7407, 1691),
(7407, 2768),
(7407, 2781),
(7408, 1707),
(7408, 1878),
(7505, 2581),
(7505, 2582),
(7505, 2583),
(7505, 2584),
(7505, 2585),
(7505, 2586),
(7505, 2601),
(7505, 2603),
(7505, 2604),
(7506, 2601),
(7506, 2602),
(7506, 2603),
(7506, 2604),
(7564, 2605),
(7564, 2661),
(7564, 2662),
(7572, 2623),
(7572, 2681),
(7572, 2743),
(7572, 2783),
(7572, 2784),
(7572, 2801),
(7572, 3626),
(7572, 3627),
(7572, 3628),
(7572, 8417),
(7572, 8423),
(7572, 8424),
(7572, 8425),
(7583, 2606),
(7583, 2641),
(7623, 2621),
(7643, 2622),
(7683, 232),
(7724, 10),
(7724, 113),
(7724, 992),
(7729, 2721),
(7740, 162),
(7740, 4267),
(7740, 4508),
(7750, 2701),
(7750, 2702),
(7763, 2747),
(7763, 2748),
(7763, 2749),
(7763, 2750),
(7763, 2941),
(7764, 2942),
(7764, 2943),
(7765, 2845),
(7766, 2745),
(7766, 2746),
(7771, 3161),
(7771, 3380),
(7771, 3444),
(7771, 3445),
(7773, 3567),
(7774, 2844),
(7775, 4041),
(7775, 4142),
(7776, 3062),
(7776, 3063),
(7776, 4120),
(7776, 7489),
(7776, 7492),
(7777, 2975),
(7777, 2978),
(7777, 2979),
(7777, 2980),
(7777, 2981),
(7783, 2744),
(7783, 3141),
(7783, 3508),
(7783, 3511),
(7783, 3602),
(7784, 351),
(7790, 2751),
(7790, 2752),
(7790, 2753),
(7790, 2754),
(7790, 2755),
(7792, 2756),
(7794, 2757),
(7794, 2759),
(7798, 2758),
(7801, 77),
(7801, 650),
(7802, 2760),
(7802, 2761),
(7802, 2762),
(7802, 2763),
(7802, 2765),
(7802, 3621),
(7802, 3625),
(7804, 2764),
(7804, 2771),
(7804, 2772),
(7804, 2773),
(7804, 3042),
(7804, 3321),
(7806, 485),
(7807, 2766),
(7825, 2782),
(7825, 2995),
(7825, 8273),
(7852, 2821),
(7852, 2847),
(7852, 2848),
(7852, 2849),
(7852, 2850),
(7852, 2851),
(7852, 2852),
(7852, 7733),
(7852, 7735),
(7853, 2842),
(7853, 2843),
(7853, 2904),
(7854, 2822),
(7854, 2854),
(7854, 2855),
(7854, 2856),
(7854, 2857),
(7854, 2858),
(7854, 2859),
(7854, 7734),
(7854, 7738),
(7866, 5141),
(7867, 5145),
(7868, 5144),
(7869, 5146),
(7870, 5143),
(7871, 5148),
(7875, 2862),
(7875, 2863),
(7875, 2903),
(7875, 7730),
(7875, 7731),
(7876, 2864),
(7876, 2865),
(7876, 3362),
(7876, 4504),
(7877, 2869),
(7877, 2870),
(7877, 3130),
(7877, 7488),
(7877, 7494),
(7878, 2871),
(7879, 3787),
(7879, 3788),
(7879, 3791),
(7879, 3792),
(7879, 4129),
(7880, 4124),
(7880, 4127),
(7880, 4130),
(7880, 4265),
(7881, 2872),
(7881, 2873),
(7882, 2875),
(7882, 2876),
(7882, 8366),
(7884, 2877),
(7884, 2880),
(7900, 2982),
(7907, 2939),
(7907, 2940),
(7907, 2944),
(7916, 978),
(7916, 3022),
(7916, 3661),
(7916, 4901),
(7937, 2929),
(7937, 12809),
(7944, 2922),
(7944, 2923),
(7944, 3630),
(7944, 3632),
(7944, 3634),
(7944, 3640),
(7944, 3641),
(7944, 3645),
(7950, 2930),
(7950, 2931),
(7952, 7664),
(7952, 7665),
(7953, 14088),
(7954, 14084),
(7955, 7675),
(7955, 7676),
(7956, 2969),
(7957, 2970),
(7999, 1081),
(7999, 2972),
(7999, 12773),
(7999, 24610),
(8001, 8001),
(8021, 2987),
(8022, 2990),
(8022, 2991),
(8022, 2992),
(8026, 1037),
(8026, 1038),
(8026, 1044),
(8115, 3122),
(8115, 3123),
(8115, 3124),
(8115, 3125),
(8115, 3126),
(8115, 3127),
(8115, 3128),
(8115, 3129),
(8125, 6610),
(8125, 6611),
(8125, 6612),
(8125, 8584),
(8125, 8585),
(8125, 8586),
(8126, 3526),
(8126, 3629),
(8126, 3633),
(8126, 3638),
(8126, 3639),
(8126, 3644),
(8126, 4181),
(8256, 3182),
(8256, 3368),
(8256, 3566),
(8359, 6362),
(8379, 3561),
(8379, 8234),
(8379, 8235),
(8379, 8251),
(8379, 8252),
(8379, 8253),
(8379, 9362),
(8379, 9364),
(8380, 3382),
(8385, 3301),
(8390, 3568),
(8390, 3570),
(8392, 3449),
(8393, 3569),
(8395, 3503),
(8395, 8250),
(8399, 3421),
(8403, 5049),
(8405, 8151),
(8405, 8153),
(8405, 8231),
(8405, 8232),
(8405, 8254),
(8405, 8255),
(8405, 8256),
(8416, 3361),
(8417, 3371),
(8418, 6981),
(8420, 3601),
(8420, 5534),
(8436, 3377),
(8439, 3379),
(8439, 3385),
(8479, 3441),
(8479, 3442),
(8479, 3443),
(8479, 3452),
(8479, 3453),
(8496, 4147),
(8496, 4502),
(8507, 3448),
(8507, 3461),
(8509, 3462),
(8509, 3463),
(8516, 3523),
(8516, 3525),
(8517, 3450),
(8517, 3451),
(8517, 3483),
(8576, 3504),
(8576, 3506),
(8579, 3520),
(8579, 3527),
(8579, 3528),
(8579, 4787),
(8579, 8181),
(8582, 3513),
(8582, 3514),
(8582, 6541),
(8582, 6542),
(8582, 6543),
(8583, 3519),
(8583, 3521),
(8584, 3522),
(8584, 4495),
(8587, 3517),
(8587, 3562),
(8587, 3563),
(8587, 3564),
(8587, 3565),
(8588, 3512),
(8659, 3541),
(8659, 4300),
(8737, 3845),
(8737, 3914),
(8737, 3961),
(8737, 3962),
(8738, 3646),
(8879, 3701),
(8879, 3702),
(8888, 3801),
(8929, 4003),
(8929, 4362),
(8962, 3741),
(8997, 1275),
(8997, 3765),
(9020, 3981),
(9020, 3982),
(9021, 4341),
(9021, 4342),
(9047, 3764),
(9076, 3761),
(9077, 4081),
(9077, 4082),
(9077, 4132),
(9077, 4903),
(9078, 4133),
(9078, 4134),
(9078, 4768),
(9078, 4769),
(9078, 7201),
(9079, 4061),
(9080, 4121),
(9080, 4983),
(9081, 4724),
(9082, 3822),
(9084, 3906),
(9084, 3907),
(9087, 3782),
(9087, 3786),
(9087, 3804),
(9087, 6561),
(9116, 939),
(9116, 3942),
(9116, 4084),
(9116, 4421),
(9116, 4441),
(9116, 4442),
(9116, 4906),
(9117, 3941),
(9117, 4005),
(9117, 4284),
(9117, 4285),
(9117, 4287),
(9117, 4288),
(9117, 4321),
(9118, 4145),
(9118, 4146),
(9118, 4148),
(9119, 4141),
(9119, 4143),
(9119, 4144),
(9136, 3821),
(9177, 3823),
(9177, 3824),
(9177, 3825),
(9177, 4283),
(9177, 4286),
(9238, 3841),
(9238, 3842),
(9270, 3881),
(9270, 3884),
(9271, 3883),
(9272, 3882),
(9274, 5150),
(9296, 3903),
(9296, 3904),
(9298, 980),
(9298, 3908),
(9298, 3909),
(9298, 4842),
(9298, 5082),
(9298, 5083),
(9298, 5085),
(9298, 5086),
(9298, 5087),
(9298, 5121),
(9298, 5123),
(9298, 6603),
(9299, 3912),
(9316, 3921),
(9316, 3922),
(9317, 3923),
(9317, 3924),
(9459, 4022),
(9459, 4023),
(9459, 4024),
(9500, 4201),
(9503, 4295),
(9516, 7623),
(9516, 7624),
(9520, 4122),
(9528, 4101),
(9528, 4103),
(9528, 4104),
(9528, 4105),
(9528, 4106),
(9528, 4107),
(9528, 4108),
(9528, 4109),
(9528, 4110),
(9528, 4111),
(9528, 4112),
(9529, 4102),
(9529, 5882),
(9529, 5883),
(9529, 5884),
(9529, 5885),
(9529, 5886),
(9529, 5887),
(9529, 5888),
(9529, 5889),
(9529, 5890),
(9529, 5891),
(9536, 4123),
(9536, 4296),
(9544, 4136),
(9544, 4324),
(9560, 5002),
(9560, 5081),
(9560, 5089),
(9560, 5102),
(9561, 4262),
(9561, 4263),
(9562, 4701),
(9563, 4866),
(9565, 4764),
(9565, 4766),
(9616, 4512),
(9616, 4513),
(9618, 4245),
(9619, 4289),
(9619, 4290),
(9619, 4291),
(9619, 4292),
(9619, 4301),
(9619, 9051),
(9619, 9052),
(9619, 9053),
(9619, 9063),
(9620, 6162),
(9623, 4243),
(9623, 4244),
(9660, 3843),
(9660, 4297),
(9660, 4298),
(9796, 4402),
(9836, 4463),
(9836, 4481),
(9836, 4482),
(9836, 4483),
(9836, 4484),
(9996, 4505),
(9996, 4506),
(9996, 6605),
(9997, 4491),
(9997, 4501),
(9998, 4503),
(9999, 4492),
(10090, 6086),
(10118, 6343),
(10118, 6344),
(10136, 4293),
(10136, 4294),
(10136, 4642),
(10181, 9180),
(10181, 9621),
(10181, 9812),
(10181, 10592),
(10181, 14349),
(10181, 24613),
(10182, 6567),
(10182, 6601),
(10182, 6602),
(10216, 1138),
(10216, 1141),
(10219, 3524),
(10219, 4681),
(10219, 4722),
(10219, 4723),
(10219, 4725),
(10219, 4727),
(10219, 4728),
(10219, 4730),
(10219, 4731),
(10219, 4732),
(10219, 4733),
(10257, 4981),
(10257, 4982),
(10257, 5001),
(10260, 4729),
(10260, 4862),
(10267, 4726),
(10267, 4734),
(10267, 4735),
(10267, 4810),
(10267, 4907),
(10296, 4742),
(10296, 4743),
(10300, 979),
(10301, 4864),
(10301, 5244),
(10301, 6604),
(10302, 974),
(10303, 5054),
(10303, 5055),
(10303, 5056),
(10303, 5057),
(10304, 5245),
(10304, 5246),
(10304, 5247),
(10305, 977),
(10305, 3783),
(10305, 5163),
(10305, 8798),
(10306, 4521),
(10306, 4721),
(10306, 4741),
(10306, 4882),
(10307, 969),
(10307, 975),
(10307, 4801),
(10307, 4802),
(10307, 4803),
(10307, 4804),
(10307, 4805),
(10307, 4806),
(10307, 4807),
(10307, 6606),
(10321, 6570),
(10321, 6582),
(10321, 6583),
(10321, 6584),
(10321, 6585),
(10377, 4767),
(10428, 4770),
(10428, 4865),
(10428, 5088),
(10460, 4788),
(10460, 5065),
(10468, 4808),
(10468, 4809),
(10537, 4542),
(10537, 4841),
(10537, 5064),
(10537, 5147),
(10539, 4821),
(10540, 831),
(10616, 5545),
(10618, 4970),
(10618, 5201),
(10618, 5981),
(10637, 5047),
(10637, 5063),
(10637, 5067),
(10637, 5068),
(10637, 5103),
(10637, 5124),
(10638, 4881),
(10638, 4966),
(10645, 4904),
(10665, 5481),
(10665, 5482),
(10667, 4971),
(10667, 4972),
(10667, 4973),
(10667, 5153),
(10667, 5154),
(10667, 5941),
(10684, 5248),
(10739, 4984),
(10739, 4985),
(10778, 5050),
(10778, 5051),
(10781, 5023),
(10782, 5022),
(10799, 4867),
(10837, 105),
(10837, 5093),
(10837, 5094),
(10837, 5095),
(10837, 5096),
(10837, 5098),
(10837, 5237),
(10837, 5511),
(10837, 10374),
(10838, 211),
(10838, 5066),
(10838, 5090),
(10838, 5091),
(10838, 5092),
(10838, 5097),
(10838, 5238),
(10838, 5505),
(10838, 8415),
(10838, 8416),
(10838, 8418),
(10838, 10373),
(10839, 5402),
(10839, 5403),
(10839, 5406),
(10839, 5503),
(10839, 6029),
(10840, 5401),
(10840, 5404),
(10840, 5407),
(10840, 5408),
(10840, 6028),
(10856, 5504),
(10856, 5524),
(10857, 5405),
(10857, 5507),
(10857, 5521),
(10917, 5122),
(10917, 5125),
(10918, 5126),
(10918, 5127),
(10920, 5128),
(10921, 5156),
(10922, 5155),
(10922, 5157),
(10922, 5159),
(10922, 5165),
(10922, 5242),
(10922, 8257),
(10926, 5142),
(10926, 5149),
(10926, 5601),
(10926, 5721),
(10927, 5152),
(10929, 5160),
(10929, 5161),
(10941, 5151),
(10941, 9431),
(10941, 9433),
(10976, 5162),
(10976, 5166),
(10976, 5167),
(11016, 5202),
(11019, 5203),
(11019, 5385),
(11020, 5204),
(11022, 5341),
(11022, 5342),
(11023, 5343),
(11023, 5344),
(11033, 5214),
(11033, 6026),
(11033, 6041),
(11034, 5264),
(11034, 8859),
(11035, 4771),
(11035, 5212),
(11035, 5213),
(11035, 5529),
(11035, 5531),
(11035, 5582),
(11036, 5243),
(11036, 5462),
(11036, 5464),
(11036, 5522),
(11038, 6021),
(11039, 5251),
(11039, 5262),
(11039, 5263),
(11039, 5508),
(11039, 5509),
(11039, 5510),
(11039, 6030),
(11053, 5215),
(11053, 5217),
(11053, 5220),
(11053, 5223),
(11053, 5226),
(11053, 9446),
(11055, 5228),
(11055, 5230),
(11055, 5232),
(11055, 5234),
(11055, 5236),
(11056, 5533),
(11056, 5537),
(11056, 5801),
(11056, 5803),
(11057, 838),
(11057, 964),
(11057, 5802),
(11057, 5804),
(11063, 5168),
(11063, 5181),
(11063, 5206),
(11063, 5210),
(11063, 5211),
(11063, 5241),
(11079, 5249),
(11079, 5250),
(11079, 5252),
(11140, 5281),
(11140, 5282),
(11146, 5284),
(11177, 5301),
(11178, 5302),
(11191, 5305),
(11192, 5306),
(11193, 5307),
(11216, 5382),
(11216, 5384),
(11216, 5515),
(11219, 5321),
(11259, 5361),
(11259, 5386),
(11286, 5461),
(11286, 5465),
(11286, 5466),
(11317, 5421),
(11378, 5441),
(11378, 6394),
(11406, 7637),
(11438, 5501),
(11536, 5513),
(11536, 5517),
(11536, 9221),
(11536, 9222),
(11536, 9223),
(11536, 9224),
(11536, 9225),
(11536, 9226),
(11536, 9227),
(11536, 9228),
(11548, 5535),
(11548, 5536),
(11554, 6131),
(11554, 8460),
(11554, 8466),
(11555, 8481),
(11556, 8464),
(11556, 8465),
(11556, 8469),
(11557, 6031),
(11557, 6032),
(11558, 8470),
(11558, 8471),
(11596, 5561),
(11596, 5821),
(11596, 5943),
(11610, 6004),
(11610, 6023),
(11610, 6025),
(11615, 5901),
(11615, 6390),
(11616, 5903),
(11616, 6389),
(11624, 5381),
(11624, 5581),
(11701, 13850),
(11701, 13887),
(11701, 13906),
(11715, 7041),
(11758, 5863),
(11799, 28),
(11799, 29),
(11801, 1123),
(11801, 5526),
(11801, 5527),
(11801, 6762),
(11801, 6845),
(11802, 26),
(11802, 27),
(11802, 30),
(11802, 272),
(11802, 5921),
(11802, 5922),
(11802, 5929),
(11802, 5930),
(11802, 6121),
(11802, 6124),
(11802, 6126),
(11802, 6129),
(11806, 5713),
(11811, 8575),
(11811, 8576),
(11811, 8578),
(11811, 8587),
(11811, 8598),
(11811, 8599),
(11811, 8606),
(11811, 8620),
(11811, 8728),
(11814, 8358),
(11820, 6571),
(11823, 7029),
(11832, 7066),
(11832, 8446),
(11832, 8447),
(11832, 8734),
(11832, 8735),
(11832, 8736),
(11832, 13073),
(11832, 13074),
(11833, 5723),
(11833, 5724),
(11834, 5722),
(11857, 6523),
(11857, 6548),
(11857, 6629),
(11860, 6282),
(11860, 6283),
(11860, 6284),
(11861, 6421),
(11861, 6481),
(11862, 6393),
(11863, 5741),
(11863, 6027),
(11864, 6301),
(11864, 6381),
(11864, 6401),
(11872, 5861),
(11872, 6568),
(11872, 6569),
(11878, 5961),
(11878, 6022),
(11878, 6042),
(11878, 6133),
(11878, 6135),
(11878, 6136),
(11878, 6145),
(11878, 6147),
(11878, 6148),
(11878, 6163),
(11878, 14350),
(11898, 6146),
(11936, 5846),
(11939, 1185),
(11939, 6844),
(11940, 5805),
(11941, 5841),
(11942, 5842),
(11943, 5843),
(11944, 5844),
(11945, 5847),
(12031, 6142),
(12096, 5892),
(12096, 6982),
(12096, 7121),
(12097, 5893),
(12097, 6985),
(12097, 7123),
(12340, 6143),
(12384, 6164),
(12425, 6184),
(12425, 6185),
(12576, 5881),
(12696, 2),
(12696, 23),
(12696, 24),
(12696, 235),
(12696, 247),
(12696, 742),
(12696, 6382),
(12696, 6383),
(12718, 6504),
(12719, 6442),
(12721, 6462),
(12724, 6441),
(12724, 6581),
(12736, 824),
(12736, 6562),
(12736, 6563),
(12736, 6564),
(12736, 6565),
(12736, 6921),
(12736, 6922),
(12737, 25),
(12737, 1918),
(12738, 3365),
(12757, 216),
(12757, 6621),
(12816, 6461),
(12837, 6482),
(12862, 6547),
(12863, 6545),
(12863, 6641),
(12864, 6546),
(12866, 6626),
(12867, 6503),
(12877, 6544),
(12919, 6607),
(12919, 6608),
(12919, 6609),
(12919, 8227),
(12919, 11194),
(12919, 11209),
(12920, 6622),
(12920, 6623),
(12939, 6624),
(12939, 6625),
(12944, 6642),
(12944, 6643),
(12944, 6644),
(12944, 6645),
(12944, 6646),
(12944, 7604),
(12997, 6661),
(13018, 6662),
(13151, 6847),
(13151, 6848),
(13176, 6741),
(13176, 7224),
(13179, 6825),
(13180, 6826),
(13181, 6827),
(13220, 1124),
(13220, 1125),
(13220, 1126),
(13236, 6801),
(13236, 7385),
(13257, 6781),
(13257, 7223),
(13278, 6805),
(13278, 6821),
(13278, 6822),
(13278, 6823),
(13278, 6824),
(13377, 6861),
(13377, 6862),
(13417, 6964),
(13417, 7667),
(13417, 8258),
(13418, 6983),
(13418, 8746),
(13433, 7043),
(13433, 8762),
(13437, 6943),
(13438, 6942),
(13439, 6941),
(13441, 7002),
(13442, 6881),
(13442, 7386),
(13444, 7021),
(13444, 7022),
(13444, 7023),
(13444, 7024),
(13444, 7025),
(13444, 7045),
(13444, 8827),
(13445, 6961),
(13445, 6962),
(13445, 6984),
(13445, 8828),
(13446, 6846),
(13448, 7401),
(13449, 6901),
(13577, 7026),
(13597, 7368),
(13598, 7367),
(13616, 7001),
(13617, 7027),
(13636, 6963),
(13636, 7042),
(13656, 7028),
(13698, 7065),
(13699, 7064),
(13716, 7044),
(13716, 7046),
(13717, 7067),
(13776, 7082),
(13776, 7101),
(13776, 7124),
(13777, 7081),
(13777, 7102),
(13777, 7122),
(13816, 7141),
(13816, 8271),
(13817, 7142),
(13817, 8272),
(13840, 7161),
(13840, 7163),
(13840, 7164),
(13840, 7165),
(13840, 7166),
(13840, 7167),
(13840, 7181),
(13840, 7241),
(13840, 7381),
(13841, 7162),
(13841, 7168),
(13841, 7169),
(13841, 7170),
(13841, 7171),
(13841, 7172),
(13841, 7202),
(13841, 7261),
(13841, 7382),
(14182, 7341),
(14183, 7342),
(14185, 7361),
(14186, 7362),
(14188, 7424),
(14305, 558),
(14305, 1468),
(14305, 1479),
(14305, 1558),
(14305, 1687),
(14305, 4822),
(14322, 5528),
(14325, 1318),
(14325, 7703),
(14338, 5518),
(14338, 5519),
(14338, 5525),
(14338, 7429),
(14347, 7785),
(14347, 7786),
(14347, 7787),
(14355, 7441),
(14358, 7461),
(14368, 7463),
(14368, 7483),
(14368, 7484),
(14368, 7485),
(14368, 7649),
(14368, 7650),
(14368, 7651),
(14373, 7481),
(14374, 7482),
(14381, 7504),
(14381, 7505),
(14381, 7506),
(14382, 7501),
(14382, 7502),
(14382, 7503),
(14383, 7498),
(14383, 7499),
(14383, 7500),
(14387, 7487),
(14387, 7848),
(14392, 7493),
(14392, 7784),
(14394, 7497),
(14436, 7562),
(14436, 7563),
(14437, 7564),
(14437, 7625),
(14437, 7626),
(14437, 7627),
(14437, 7628),
(14437, 7629),
(14437, 7630),
(14444, 172),
(14444, 910),
(14444, 911),
(14444, 915),
(14444, 925),
(14444, 1800),
(14450, 171),
(14451, 5502),
(14463, 7581),
(14463, 7582),
(14463, 7583),
(14469, 7603),
(14470, 7601),
(14470, 7602),
(14470, 8419),
(14470, 8420),
(14470, 8421),
(14470, 8422),
(14494, 7621),
(14494, 7622),
(14504, 7631),
(14508, 7810),
(14508, 7838),
(14524, 7632),
(14524, 7633),
(14524, 7636),
(14525, 7635),
(14526, 7634),
(14566, 7643),
(14567, 7652),
(14567, 7653),
(14567, 7654),
(14567, 7655),
(14567, 7656),
(14567, 7657),
(14567, 7658),
(14567, 7659),
(14567, 10891),
(14567, 10892),
(14568, 7647),
(14624, 7722),
(14624, 7736),
(14624, 7737),
(14624, 8241),
(14624, 8242),
(14624, 13662),
(14625, 8858),
(14626, 7728),
(14626, 7729),
(14627, 7723),
(14627, 7724),
(14627, 7727),
(14628, 7702),
(14628, 7704),
(14634, 7701),
(14637, 7003),
(14637, 7721),
(14637, 7725),
(14637, 7726),
(14721, 7782),
(14722, 7791),
(14722, 7793),
(14722, 7794),
(14722, 7795),
(14722, 7796),
(14723, 7804),
(14723, 7805),
(14723, 7806),
(14723, 7807),
(14723, 7808),
(14724, 7802),
(14724, 7803),
(14724, 7809),
(14724, 7811),
(14724, 7812),
(14725, 7792),
(14725, 7798),
(14725, 7799),
(14725, 7800),
(14725, 7801),
(14726, 7826),
(14726, 7827),
(14726, 7831),
(14726, 7836),
(14726, 7837),
(14727, 7824),
(14727, 7832),
(14727, 7833),
(14727, 7834),
(14727, 7835),
(14728, 7820),
(14728, 7821),
(14728, 7822),
(14728, 7823),
(14728, 7825),
(14729, 7813),
(14729, 7814),
(14729, 7817),
(14729, 7818),
(14729, 7819),
(14731, 7840),
(14733, 9521),
(14736, 7847),
(14736, 7850),
(14736, 7861),
(14736, 7862),
(14737, 7839),
(14738, 7841),
(14738, 7842),
(14738, 7843),
(14739, 7844),
(14740, 7815),
(14740, 7816),
(14741, 7828),
(14741, 7829),
(14741, 7830),
(14741, 7849),
(14753, 7863),
(14753, 7864),
(14753, 7865),
(14754, 7866),
(14754, 7867),
(14754, 7868),
(14757, 7845),
(14757, 7846),
(14828, 7905),
(14828, 7926),
(14828, 7930),
(14828, 7931),
(14828, 7932),
(14828, 7933),
(14828, 7934),
(14828, 7935),
(14828, 7936),
(14828, 7940),
(14828, 7981),
(14828, 9249),
(14829, 7899),
(14829, 7900),
(14829, 7901),
(14829, 7902),
(14829, 7903),
(14829, 7943),
(14829, 8222),
(14829, 8223),
(14832, 7889),
(14832, 7890),
(14832, 7891),
(14832, 7892),
(14832, 7893),
(14832, 7939),
(14833, 7881),
(14833, 7882),
(14833, 7883),
(14833, 7884),
(14833, 7885),
(14833, 7941),
(14841, 7894),
(14841, 7895),
(14841, 7896),
(14841, 7897),
(14841, 7898),
(14841, 7942),
(14847, 7907),
(14847, 7927),
(14847, 7928),
(14847, 7929),
(14847, 10938),
(14847, 10939),
(14847, 10940),
(14847, 10941),
(14847, 13324),
(14847, 13325),
(14847, 13326),
(14847, 13327),
(14871, 7946),
(14875, 8182),
(14875, 8183),
(14902, 8041),
(14902, 8042),
(14902, 8043),
(14902, 8044),
(14902, 8045),
(14902, 8046),
(14902, 8047),
(14902, 8048),
(14902, 8053),
(14902, 8054),
(14902, 8055),
(14902, 8058),
(14902, 8078),
(14902, 8079),
(14903, 8049),
(14903, 8050),
(14903, 8051),
(14903, 8052),
(14903, 8059),
(14903, 8060),
(14903, 8061),
(14903, 8068),
(14903, 8069),
(14903, 8070),
(14903, 8071),
(14903, 8076),
(14903, 8077),
(14903, 8101),
(14903, 8102),
(14903, 8103),
(14903, 8104),
(14903, 8106),
(14903, 8107),
(14903, 8108),
(14903, 8109),
(14904, 8056),
(14904, 8057),
(14904, 8064),
(14904, 8065),
(14904, 8074),
(14904, 8075),
(14904, 8110),
(14904, 8111),
(14904, 8112),
(14904, 8113),
(14904, 8116),
(14904, 8117),
(14904, 8118),
(14904, 8119),
(14905, 8062),
(14905, 8063),
(14905, 8066),
(14905, 8067),
(14905, 8072),
(14905, 8073),
(14905, 8141),
(14905, 8142),
(14905, 8144),
(14905, 8145),
(14905, 8146),
(14905, 8147),
(14905, 8148),
(14910, 8201),
(14921, 8196),
(14921, 8243),
(14921, 8246),
(14983, 8105),
(14983, 8114),
(14983, 8115),
(14983, 8166),
(14983, 8167),
(14983, 8168),
(14984, 8080),
(14984, 8081),
(14984, 8154),
(14984, 8155),
(14984, 8156),
(14984, 8157),
(14984, 8158),
(14984, 8159),
(14984, 8297),
(14984, 8298),
(15011, 8149),
(15012, 8150),
(15021, 8120),
(15021, 8121),
(15021, 8122),
(15021, 8169),
(15021, 8170),
(15021, 8171),
(15022, 8123),
(15022, 8124),
(15022, 8160),
(15022, 8161),
(15022, 8162),
(15022, 8163),
(15022, 8164),
(15022, 8165),
(15022, 8299),
(15022, 8300),
(15042, 8184),
(15042, 8185),
(15042, 8186),
(15042, 8187),
(15042, 8188),
(15042, 8189),
(15042, 8190),
(15042, 8191),
(15042, 8192),
(15042, 9208),
(15042, 9209),
(15042, 9210),
(15070, 8195),
(15070, 8238),
(15070, 8239),
(15070, 8240),
(15077, 8193),
(15078, 8194),
(15079, 8221),
(15079, 8224),
(15079, 8225),
(15116, 8229),
(15119, 8228),
(15126, 8263),
(15126, 8264),
(15126, 8265),
(15127, 8260),
(15127, 8261),
(15127, 8262),
(15165, 8365),
(15170, 8308),
(15170, 8309),
(15171, 8310),
(15174, 8313),
(15174, 8317),
(15174, 8497),
(15174, 8804),
(15176, 8548),
(15176, 8572),
(15176, 8573),
(15176, 8574),
(15176, 8783),
(15176, 8800),
(15176, 8809),
(15180, 8286),
(15180, 8288),
(15180, 8301),
(15180, 8302),
(15181, 8287),
(15181, 8304),
(15181, 8306),
(15181, 8498),
(15181, 8501),
(15181, 8502),
(15181, 8538),
(15181, 8539),
(15181, 8687),
(15181, 8770),
(15181, 8771),
(15181, 8772),
(15181, 8773),
(15181, 8774),
(15181, 8775),
(15181, 8776),
(15181, 8777),
(15181, 8791),
(15182, 8283),
(15182, 8540),
(15182, 8541),
(15182, 8805),
(15182, 8806),
(15183, 8284),
(15183, 8314),
(15183, 8315),
(15183, 8316),
(15183, 8376),
(15183, 8377),
(15183, 8378),
(15183, 8379),
(15183, 8380),
(15183, 8381),
(15183, 8382),
(15183, 8779),
(15183, 8807),
(15189, 8277),
(15189, 8278),
(15190, 8282),
(15191, 8275),
(15191, 8276),
(15191, 8280),
(15191, 8281),
(15191, 8496),
(15191, 8534),
(15191, 8738),
(15191, 8739),
(15191, 8740),
(15191, 8782),
(15191, 8808),
(15191, 8810),
(15192, 8303),
(15192, 8519),
(15192, 8555),
(15192, 8729),
(15192, 8730),
(15192, 8741),
(15192, 8742),
(15192, 8747),
(15192, 8748),
(15192, 8749),
(15192, 8750),
(15192, 8751),
(15192, 8752),
(15192, 8753),
(15192, 8754),
(15192, 8755),
(15192, 8756),
(15192, 8757),
(15192, 8758),
(15192, 8759),
(15192, 8760),
(15192, 8761),
(15192, 8764),
(15192, 8765),
(15192, 8766),
(15192, 8802),
(15192, 9250),
(15192, 9251),
(15192, 9257),
(15192, 9269),
(15192, 9270),
(15192, 9271),
(15194, 8279),
(15194, 8285),
(15194, 8323),
(15194, 8324),
(15197, 1657),
(15197, 8409),
(15199, 1658),
(15199, 8373),
(15270, 8320),
(15270, 8321),
(15278, 8325),
(15278, 8326),
(15279, 8328),
(15280, 9676),
(15281, 8327),
(15281, 8334),
(15281, 8335),
(15282, 8331),
(15282, 8332),
(15282, 8333),
(15282, 8341),
(15282, 8342),
(15282, 8343),
(15282, 8829),
(15282, 9248),
(15283, 8344),
(15283, 8563),
(15284, 8564),
(15285, 9392),
(15295, 8330),
(15295, 8345),
(15295, 10068),
(15295, 10069),
(15295, 10070),
(15295, 10071),
(15295, 10072),
(15295, 10073),
(15296, 8336),
(15297, 8338),
(15297, 8346),
(15301, 8347),
(15301, 9705),
(15306, 8318),
(15306, 8319),
(15306, 8348),
(15306, 8349),
(15306, 8351),
(15306, 8352),
(15306, 8361),
(15306, 8362),
(15306, 8363),
(15306, 8364),
(15306, 8535),
(15306, 8536),
(15306, 8537),
(15306, 8737),
(15309, 8312),
(15310, 8311),
(15351, 8371),
(15351, 8385),
(15351, 13478),
(15351, 24427),
(15378, 8790),
(15379, 8801),
(15380, 8789),
(15383, 8492),
(15383, 8493),
(15395, 8461),
(15395, 8462),
(15395, 8467),
(15398, 8473),
(15398, 8474),
(15398, 9258),
(15399, 8476),
(15399, 9359),
(15399, 9360),
(15399, 9484),
(15399, 9485),
(15399, 9486),
(15399, 9617),
(15399, 10530),
(15400, 8477),
(15401, 8486),
(15401, 9119),
(15401, 9352),
(15402, 8487),
(15402, 8488),
(15402, 9254),
(15403, 8463),
(15403, 8482),
(15403, 8483),
(15404, 8480),
(15404, 9076),
(15405, 8895),
(15406, 8479),
(15416, 8475),
(15417, 8491),
(15418, 8472),
(15431, 8494),
(15431, 8495),
(15432, 8499),
(15432, 8500),
(15433, 8350),
(15434, 8503),
(15434, 8504),
(15437, 8505),
(15437, 8506),
(15440, 8508),
(15443, 8780),
(15443, 8781),
(15444, 8778),
(15445, 8509),
(15445, 8510),
(15446, 8511),
(15446, 8512),
(15448, 8513),
(15448, 8514),
(15450, 8515),
(15450, 8516),
(15451, 8517),
(15451, 8518),
(15452, 8520),
(15452, 8521),
(15453, 8522),
(15453, 8523),
(15455, 8524),
(15455, 8525),
(15456, 8526),
(15456, 8527),
(15457, 8528),
(15457, 8529),
(15459, 8532),
(15459, 8533),
(15460, 8542),
(15460, 8543),
(15469, 8545),
(15469, 8546),
(15477, 8549),
(15477, 8550),
(15493, 8547),
(15498, 8556),
(15498, 8697),
(15498, 8698),
(15498, 8699),
(15498, 8700),
(15498, 8701),
(15498, 8702),
(15498, 8703),
(15498, 8704),
(15499, 8558),
(15499, 8705),
(15499, 8706),
(15499, 8707),
(15499, 8708),
(15499, 8709),
(15499, 8710),
(15499, 8711),
(15499, 8712),
(15500, 8557),
(15500, 8689),
(15500, 8690),
(15500, 8691),
(15500, 8692),
(15500, 8693),
(15500, 8694),
(15500, 8695),
(15500, 8696),
(15502, 8544),
(15502, 8561),
(15502, 8592),
(15502, 8594),
(15502, 8602),
(15502, 8623),
(15502, 8625),
(15502, 8628),
(15502, 8630),
(15502, 8632),
(15502, 8639),
(15502, 8641),
(15502, 8657),
(15502, 8659),
(15502, 8662),
(15502, 8664),
(15502, 8667),
(15502, 8669),
(15502, 8784),
(15503, 8559),
(15503, 8560),
(15503, 8593),
(15503, 8595),
(15503, 8596),
(15503, 8621),
(15503, 8624),
(15503, 8626),
(15503, 8629),
(15503, 8631),
(15503, 8634),
(15503, 8637),
(15503, 8640),
(15503, 8655),
(15503, 8658),
(15503, 8660),
(15503, 8663),
(15503, 8665),
(15503, 8668),
(15504, 8562),
(15504, 8603),
(15504, 8622),
(15504, 8627),
(15504, 8633),
(15504, 8638),
(15504, 8656),
(15504, 8661),
(15504, 8666),
(15508, 8580),
(15508, 8581),
(15512, 8582),
(15512, 8583),
(15513, 9393),
(15515, 8588),
(15515, 8589),
(15522, 8590),
(15522, 8591),
(15525, 8600),
(15525, 8601),
(15528, 8604),
(15528, 8605),
(15529, 8607),
(15529, 8608),
(15532, 8609),
(15532, 8610),
(15533, 8611),
(15533, 8612),
(15534, 8613),
(15534, 8614),
(15535, 8615),
(15540, 8507),
(15540, 8731),
(15540, 9338),
(15549, 8619),
(15556, 8635),
(15557, 8636),
(15558, 8642),
(15559, 8643),
(15560, 8644),
(15561, 8645),
(15562, 8646),
(15563, 8647),
(15564, 8648),
(15565, 8649),
(15566, 8650),
(15567, 8651),
(15568, 8652),
(15569, 8653),
(15570, 8654),
(15572, 8670),
(15573, 8671),
(15574, 8672),
(15575, 8673),
(15576, 8674),
(15577, 8675),
(15578, 8676),
(15579, 8677),
(15580, 8678),
(15581, 8679),
(15582, 8680),
(15583, 8681),
(15584, 8682),
(15585, 8683),
(15586, 8684),
(15587, 8685),
(15588, 8686),
(15592, 8688),
(15593, 8713),
(15594, 8714),
(15595, 8715),
(15596, 8716),
(15597, 8717),
(15598, 8718),
(15599, 8719),
(15600, 8720),
(15601, 8721),
(15602, 8722),
(15603, 8723),
(15604, 8724),
(15605, 8725),
(15606, 8726),
(15607, 8727),
(15608, 9836),
(15612, 8732),
(15613, 8786),
(15613, 8787),
(15615, 8785),
(15624, 8733),
(15693, 8745),
(15700, 8792),
(15700, 8793),
(15700, 8794),
(15700, 10500),
(15761, 8818),
(15761, 8826),
(15761, 8844),
(15761, 8845),
(15762, 8813),
(15762, 8821),
(15762, 8836),
(15762, 8837),
(15763, 8814),
(15763, 8822),
(15763, 8838),
(15763, 8839),
(15764, 8812),
(15764, 8820),
(15764, 8834),
(15764, 8835),
(15765, 8815),
(15765, 8823),
(15765, 8832),
(15765, 8833),
(15767, 8817),
(15767, 8825),
(15767, 8842),
(15767, 8843),
(15768, 8816),
(15768, 8824),
(15768, 8840),
(15768, 8841),
(15864, 8862),
(15864, 8863),
(15864, 8864),
(15864, 8865),
(15864, 8868),
(15864, 8883),
(15871, 8866),
(15895, 8867),
(15895, 8870),
(15895, 8871),
(15895, 8872),
(15895, 8873),
(15895, 8874),
(15895, 8875),
(15909, 8876),
(15909, 8877),
(15909, 8878),
(15909, 8879),
(15909, 8880),
(15909, 8881),
(15909, 8882),
(15920, 8884),
(15920, 8885),
(15921, 8886),
(15921, 8887),
(15924, 8888),
(15924, 8889),
(15939, 8892),
(15939, 9256),
(15939, 9363),
(15942, 9252),
(15942, 9358),
(15945, 9035),
(15945, 9062),
(15951, 8890),
(15951, 8891),
(15969, 8894),
(15969, 9394),
(15970, 9064),
(15970, 9066),
(15970, 9402),
(15970, 9403),
(15970, 9404),
(16002, 8897),
(16002, 8898),
(16002, 8899),
(16004, 8900),
(16004, 8901),
(16004, 8902),
(16012, 8913),
(16012, 8914),
(16012, 8915),
(16012, 8916),
(16012, 8917),
(16012, 8918),
(16012, 8919),
(16012, 8920),
(16012, 8927),
(16012, 8938),
(16012, 8939),
(16012, 8940),
(16012, 8941),
(16012, 8942),
(16012, 8943),
(16012, 8944),
(16012, 8957),
(16012, 8978),
(16012, 8998),
(16012, 9007),
(16012, 9008),
(16012, 9009),
(16012, 9010),
(16012, 9011),
(16012, 9012),
(16012, 9013),
(16012, 9014),
(16012, 9016),
(16012, 9017),
(16012, 9018),
(16012, 9019),
(16012, 9020),
(16012, 9021),
(16012, 9022),
(16012, 10493),
(16012, 10495),
(16012, 10497),
(16012, 10499),
(16013, 8905),
(16013, 8906),
(16013, 8907),
(16013, 8908),
(16013, 8909),
(16013, 8910),
(16013, 8911),
(16013, 8912),
(16013, 8926),
(16013, 8931),
(16013, 8932),
(16013, 8933),
(16013, 8934),
(16013, 8935),
(16013, 8936),
(16013, 8937),
(16013, 8951),
(16013, 8952),
(16013, 8953),
(16013, 8954),
(16013, 8955),
(16013, 8956),
(16013, 8958),
(16013, 8959),
(16013, 8977),
(16013, 8997),
(16013, 8999),
(16013, 9000),
(16013, 9001),
(16013, 9002),
(16013, 9003),
(16013, 9004),
(16013, 9005),
(16013, 9006),
(16013, 10492),
(16013, 10494),
(16013, 10496),
(16013, 10498),
(16014, 8921),
(16014, 8922),
(16014, 8923),
(16014, 8924),
(16014, 8925),
(16014, 8928),
(16016, 8929),
(16016, 8930),
(16016, 8946),
(16016, 8947),
(16016, 9015),
(16031, 8945),
(16032, 8948),
(16032, 8949),
(16032, 8950),
(16033, 8960),
(16033, 8961),
(16033, 8962),
(16033, 8963),
(16033, 8964),
(16033, 8965),
(16033, 8966),
(16033, 8967),
(16033, 8968),
(16033, 8969),
(16033, 8970),
(16033, 8985),
(16033, 8986),
(16033, 8987),
(16033, 8988),
(16033, 8989),
(16033, 8990),
(16033, 8991),
(16033, 8992),
(16033, 8994),
(16033, 8996),
(16033, 9032),
(16073, 8995),
(16091, 9023),
(16106, 9027),
(16107, 8984),
(16107, 9028),
(16108, 8980),
(16109, 8983),
(16112, 9131),
(16112, 9132),
(16115, 9033),
(16115, 9045),
(16116, 9121),
(16116, 9122),
(16116, 9123),
(16116, 9128),
(16116, 9129),
(16128, 13631),
(16128, 13819),
(16131, 9126),
(16131, 9127),
(16132, 9124),
(16132, 9125),
(16133, 9211),
(16133, 9213),
(16135, 9136),
(16135, 9137),
(16144, 9067),
(16144, 9395),
(16183, 9144),
(16187, 9135),
(16189, 9130),
(16191, 9133),
(16192, 9134),
(16196, 9147),
(16197, 9138),
(16197, 9139),
(16197, 9140),
(16197, 9148),
(16197, 9315),
(16197, 9487),
(16197, 9488),
(16197, 9758),
(16198, 9149),
(16198, 9877),
(16199, 9150),
(16200, 9155),
(16200, 9156),
(16201, 9157),
(16201, 9174),
(16202, 9158),
(16202, 9159),
(16203, 9162),
(16203, 9282),
(16204, 9151),
(16204, 9170),
(16204, 9220),
(16205, 9216),
(16205, 9217),
(16205, 9218),
(16205, 9219),
(16210, 9255),
(16212, 9141),
(16212, 9142),
(16212, 9165),
(16219, 9143),
(16219, 9145),
(16220, 9146),
(16220, 9212),
(16220, 9214),
(16220, 9215),
(16224, 9152),
(16231, 9160),
(16231, 9163),
(16237, 9166),
(16237, 9169),
(16239, 9167),
(16239, 9172),
(16239, 9176),
(16240, 9164),
(16251, 9192),
(16251, 9199),
(16252, 9173),
(16252, 9175),
(16252, 9327),
(16252, 9329),
(16253, 9171),
(16268, 9491),
(16268, 10372),
(16268, 10548),
(16276, 9489),
(16280, 14081),
(16281, 9247),
(16281, 9295),
(16281, 9299),
(16281, 9300),
(16281, 9301),
(16281, 9302),
(16281, 9304),
(16283, 9178),
(16283, 9179),
(16283, 9181),
(16283, 9182),
(16283, 9183),
(16283, 9184),
(16283, 9185),
(16283, 9186),
(16283, 9187),
(16283, 9188),
(16283, 9190),
(16283, 9191),
(16283, 9194),
(16283, 9195),
(16283, 9196),
(16283, 9197),
(16283, 9198),
(16283, 9200),
(16283, 9201),
(16283, 9202),
(16283, 9203),
(16283, 9204),
(16283, 9205),
(16283, 9206),
(16285, 12616),
(16288, 9189),
(16289, 9193),
(16291, 9207),
(16361, 9085),
(16361, 9153),
(16362, 8490),
(16362, 9253),
(16376, 9232),
(16376, 9233),
(16376, 9234),
(16376, 9235),
(16376, 9236),
(16376, 9237),
(16376, 9238),
(16376, 9239),
(16376, 9240),
(16376, 9241),
(16376, 9242),
(16376, 9243),
(16376, 9244),
(16376, 9245),
(16376, 9246),
(16388, 9840),
(16399, 9259),
(16416, 9266),
(16417, 9268),
(16418, 9267),
(16462, 9274),
(16463, 9276),
(16463, 9277),
(16464, 9275),
(16476, 9278),
(16477, 9279),
(16477, 9280),
(16477, 9369),
(16478, 9260),
(16478, 9292),
(16480, 9281),
(16494, 9265),
(16494, 9310),
(16499, 9288),
(16500, 9290),
(16501, 9287),
(16502, 9283),
(16502, 9291),
(16502, 9409),
(16503, 9289),
(16514, 9293),
(16514, 9294),
(16514, 9371),
(16514, 10302),
(16535, 9303),
(16535, 9311),
(16535, 9798),
(16535, 10304),
(16546, 9309),
(16546, 10303),
(16551, 9313),
(16553, 9314),
(16574, 9405),
(16575, 9496),
(16583, 10756),
(16583, 10757),
(16583, 10758),
(16588, 10835),
(16588, 10838),
(16588, 10864),
(16647, 9619),
(16647, 10788),
(16669, 9707),
(16669, 9710),
(16675, 9673),
(16684, 9618),
(16712, 9675),
(16768, 9604),
(16788, 9319),
(16788, 9322),
(16788, 9323),
(16788, 9339),
(16788, 9365),
(16788, 9386),
(16788, 9388),
(16788, 9389),
(16789, 9340),
(16789, 9391),
(16789, 9466),
(16789, 9498),
(16789, 9499),
(16790, 9381),
(16790, 9397),
(16791, 9366),
(16791, 9370),
(16792, 9396),
(16793, 9374),
(16793, 9472),
(16793, 10287),
(16794, 9387),
(16796, 9426),
(16796, 9427),
(16796, 9430),
(16796, 9543),
(16796, 9545),
(16796, 10093),
(16797, 9398),
(16799, 9399),
(16799, 9490),
(16802, 9328),
(16802, 9627),
(16802, 9811),
(16802, 24615),
(16813, 9630),
(16814, 9638),
(16815, 9639),
(16815, 9640),
(16817, 9324),
(16817, 9325),
(16817, 9326),
(16817, 9367),
(16817, 11935),
(16817, 11970),
(16818, 9330),
(16818, 9331),
(16818, 9332),
(16818, 9368),
(16818, 11933),
(16818, 11971),
(16819, 9492),
(16819, 9587),
(16819, 9607),
(16819, 10254),
(16819, 10400),
(16819, 10754),
(16819, 10936),
(16819, 10937),
(16819, 11002),
(16820, 10160),
(16820, 10482),
(16825, 10058),
(16827, 10050),
(16827, 10057),
(16829, 9494),
(16830, 9493),
(16833, 9424),
(16834, 9423),
(16837, 9355),
(16837, 10079),
(16837, 10099);
INSERT INTO `creature_quest_finisher` (`id`, `quest`) VALUES
(16839, 10047),
(16839, 10395),
(16839, 10399),
(16845, 9410),
(16845, 9441),
(16850, 9385),
(16850, 9417),
(16850, 9558),
(16851, 9420),
(16851, 9563),
(16852, 9390),
(16858, 9344),
(16858, 9345),
(16885, 9724),
(16888, 10159),
(16915, 10236),
(16915, 10238),
(16915, 10629),
(16915, 10630),
(16924, 8468),
(16991, 9372),
(16991, 9373),
(16991, 10255),
(16991, 10442),
(16991, 10443),
(17006, 9383),
(17015, 9375),
(17015, 9376),
(17062, 9400),
(17069, 9664),
(17071, 9305),
(17071, 9312),
(17072, 9665),
(17076, 10960),
(17079, 9416),
(17079, 9422),
(17080, 9415),
(17080, 9419),
(17085, 9418),
(17087, 9449),
(17087, 9450),
(17089, 9421),
(17089, 9451),
(17092, 9425),
(17093, 9434),
(17094, 9436),
(17094, 9457),
(17095, 9437),
(17097, 9439),
(17099, 9443),
(17099, 9444),
(17099, 9601),
(17099, 10590),
(17099, 10593),
(17100, 9428),
(17101, 9452),
(17104, 9429),
(17106, 9432),
(17109, 9440),
(17110, 9453),
(17110, 9454),
(17110, 10324),
(17114, 9544),
(17116, 9455),
(17116, 9456),
(17116, 9602),
(17116, 9612),
(17116, 9616),
(17116, 9622),
(17120, 10350),
(17123, 9442),
(17123, 9447),
(17127, 9448),
(17204, 9500),
(17204, 9502),
(17204, 9509),
(17204, 9547),
(17204, 9551),
(17204, 9554),
(17204, 9555),
(17204, 10490),
(17204, 10491),
(17204, 10968),
(17205, 9464),
(17205, 9465),
(17205, 9467),
(17212, 9462),
(17212, 9468),
(17214, 9463),
(17215, 9473),
(17218, 9435),
(17223, 9470),
(17223, 9471),
(17223, 9475),
(17224, 9460),
(17224, 9532),
(17226, 9483),
(17238, 9474),
(17240, 9505),
(17240, 9506),
(17240, 9530),
(17240, 9531),
(17240, 9537),
(17241, 9513),
(17241, 9514),
(17241, 9515),
(17242, 9523),
(17246, 9512),
(17275, 9501),
(17275, 9503),
(17275, 9504),
(17275, 9508),
(17287, 9518),
(17290, 9524),
(17291, 9533),
(17296, 9525),
(17303, 9516),
(17303, 9520),
(17303, 9522),
(17310, 9517),
(17310, 9526),
(17311, 9527),
(17311, 9528),
(17311, 10428),
(17355, 9534),
(17355, 9535),
(17355, 9536),
(17360, 9538),
(17361, 9539),
(17362, 9540),
(17363, 9541),
(17364, 9542),
(17421, 9548),
(17421, 9549),
(17421, 10063),
(17423, 9581),
(17423, 9584),
(17423, 9585),
(17423, 9628),
(17423, 9646),
(17424, 9557),
(17431, 9552),
(17433, 9567),
(17433, 9569),
(17433, 9594),
(17434, 9574),
(17434, 9576),
(17434, 9579),
(17434, 9629),
(17435, 9553),
(17440, 9559),
(17440, 9566),
(17441, 9562),
(17441, 9564),
(17442, 9560),
(17442, 9571),
(17443, 9570),
(17445, 9573),
(17468, 9461),
(17468, 9698),
(17468, 9762),
(17468, 12776),
(17468, 24611),
(17479, 9575),
(17479, 9589),
(17480, 9582),
(17482, 9586),
(17508, 9578),
(17509, 9598),
(17509, 9600),
(17509, 10366),
(17514, 9595),
(17538, 10956),
(17545, 10101),
(17553, 9606),
(17554, 9603),
(17555, 9605),
(17558, 9572),
(17558, 9590),
(17584, 9623),
(17586, 9625),
(17586, 9634),
(17599, 9624),
(17600, 9620),
(17613, 9644),
(17613, 9645),
(17613, 9680),
(17613, 9824),
(17613, 9825),
(17613, 9838),
(17613, 9843),
(17613, 9844),
(17613, 11216),
(17614, 9591),
(17614, 9592),
(17614, 9593),
(17614, 9632),
(17614, 9757),
(17634, 9636),
(17634, 11531),
(17636, 9631),
(17636, 9637),
(17637, 9635),
(17642, 9580),
(17642, 9643),
(17642, 9647),
(17649, 9663),
(17649, 9666),
(17658, 9668),
(17658, 9753),
(17658, 9756),
(17658, 9759),
(17663, 9648),
(17663, 9649),
(17674, 9687),
(17674, 9688),
(17674, 9689),
(17676, 9669),
(17684, 9641),
(17684, 9642),
(17684, 9693),
(17684, 9694),
(17684, 9699),
(17684, 9700),
(17684, 9779),
(17686, 9670),
(17703, 9671),
(17712, 9672),
(17712, 9674),
(17712, 9682),
(17712, 9683),
(17712, 9751),
(17717, 9677),
(17717, 9678),
(17717, 9684),
(17717, 9685),
(17717, 9691),
(17717, 9692),
(17718, 9681),
(17807, 9686),
(17807, 9690),
(17825, 9696),
(17831, 9697),
(17831, 9701),
(17831, 9702),
(17831, 9708),
(17831, 9709),
(17831, 9911),
(17834, 9895),
(17841, 9716),
(17841, 9718),
(17841, 9720),
(17841, 9731),
(17841, 9732),
(17841, 9752),
(17841, 9764),
(17841, 9765),
(17841, 9766),
(17841, 9912),
(17843, 9703),
(17843, 9706),
(17843, 9711),
(17844, 9740),
(17844, 9741),
(17844, 9746),
(17844, 9748),
(17849, 9704),
(17856, 9714),
(17856, 9715),
(17856, 9726),
(17856, 9727),
(17856, 9729),
(17857, 9717),
(17858, 9728),
(17858, 9730),
(17858, 9778),
(17858, 9817),
(17866, 9719),
(17876, 10283),
(17884, 9738),
(17884, 9763),
(17884, 9876),
(17909, 9784),
(17909, 9802),
(17909, 9875),
(17909, 10096),
(17909, 10897),
(17909, 10905),
(17923, 9739),
(17923, 9742),
(17923, 9743),
(17923, 9744),
(17924, 9808),
(17924, 9809),
(17924, 9919),
(17925, 9806),
(17925, 9807),
(17927, 10064),
(17927, 10065),
(17956, 9747),
(17956, 9788),
(17986, 9760),
(17986, 9761),
(17986, 10066),
(17986, 10067),
(18003, 9786),
(18003, 9787),
(18003, 9801),
(18003, 9803),
(18004, 9782),
(18004, 9783),
(18005, 9781),
(18005, 9790),
(18006, 9780),
(18006, 9791),
(18007, 9777),
(18007, 9827),
(18007, 10355),
(18008, 9776),
(18008, 9835),
(18008, 9839),
(18008, 10115),
(18008, 10116),
(18009, 9830),
(18009, 9833),
(18009, 9902),
(18010, 9834),
(18010, 9905),
(18011, 9772),
(18011, 9774),
(18011, 10103),
(18012, 9770),
(18012, 9828),
(18012, 9898),
(18013, 9775),
(18013, 9820),
(18013, 9822),
(18013, 9823),
(18013, 10117),
(18013, 10118),
(18014, 9814),
(18014, 9816),
(18015, 9841),
(18015, 9842),
(18016, 9769),
(18016, 9773),
(18016, 9899),
(18017, 9846),
(18017, 9847),
(18018, 9845),
(18018, 9903),
(18018, 9904),
(18019, 9848),
(18035, 9771),
(18063, 9868),
(18063, 9872),
(18063, 9934),
(18063, 10171),
(18066, 9863),
(18067, 9866),
(18068, 9867),
(18070, 9785),
(18070, 9894),
(18072, 9869),
(18072, 9870),
(18072, 10953),
(18073, 9800),
(18073, 9804),
(18073, 9805),
(18073, 9810),
(18073, 9815),
(18074, 9861),
(18074, 9862),
(18090, 9797),
(18097, 9792),
(18098, 9794),
(18099, 9818),
(18099, 9819),
(18099, 9821),
(18099, 9849),
(18099, 9853),
(18106, 9891),
(18106, 9906),
(18106, 9907),
(18141, 10044),
(18141, 10045),
(18141, 10170),
(18141, 10172),
(18141, 10212),
(18165, 9826),
(18165, 9860),
(18166, 9829),
(18166, 9831),
(18166, 9832),
(18166, 9837),
(18166, 10211),
(18166, 10551),
(18166, 10552),
(18180, 9789),
(18180, 9850),
(18180, 9851),
(18180, 9852),
(18180, 10113),
(18183, 9871),
(18183, 9873),
(18183, 9879),
(18183, 9923),
(18183, 9924),
(18183, 9933),
(18183, 9955),
(18200, 9854),
(18200, 9855),
(18200, 9856),
(18200, 10114),
(18218, 9857),
(18218, 9858),
(18218, 9859),
(18218, 9897),
(18221, 9610),
(18222, 9874),
(18223, 9920),
(18223, 9921),
(18223, 9922),
(18224, 9878),
(18229, 9864),
(18229, 9865),
(18248, 9795),
(18249, 9796),
(18252, 9793),
(18252, 9984),
(18252, 10026),
(18252, 10104),
(18253, 10725),
(18253, 10726),
(18253, 10727),
(18253, 10728),
(18253, 10729),
(18253, 10730),
(18253, 10731),
(18253, 10732),
(18253, 10733),
(18253, 10734),
(18253, 10735),
(18253, 10736),
(18253, 10738),
(18253, 10739),
(18253, 10740),
(18253, 10741),
(18253, 11031),
(18253, 11032),
(18253, 11033),
(18253, 11034),
(18261, 9927),
(18261, 9928),
(18261, 9931),
(18261, 9932),
(18261, 10107),
(18261, 10108),
(18262, 9889),
(18265, 9882),
(18265, 9883),
(18265, 9885),
(18265, 9886),
(18265, 9887),
(18265, 9892),
(18265, 9893),
(18265, 9913),
(18266, 10106),
(18266, 13408),
(18266, 13410),
(18267, 10110),
(18267, 13409),
(18267, 13411),
(18273, 9888),
(18273, 9890),
(18276, 9900),
(18276, 9925),
(18295, 9896),
(18295, 9901),
(18300, 9910),
(18300, 9916),
(18333, 9914),
(18333, 9915),
(18353, 9917),
(18353, 9918),
(18369, 9954),
(18383, 9985),
(18383, 10027),
(18384, 10018),
(18384, 10023),
(18384, 10791),
(18385, 9993),
(18385, 10105),
(18385, 10201),
(18386, 9987),
(18386, 10013),
(18387, 10012),
(18387, 10016),
(18387, 10022),
(18389, 9986),
(18390, 9992),
(18390, 10028),
(18407, 9935),
(18407, 9937),
(18407, 9939),
(18407, 10478),
(18407, 10479),
(18408, 9936),
(18408, 9938),
(18408, 9940),
(18408, 10476),
(18408, 10477),
(18414, 9944),
(18414, 9945),
(18414, 9946),
(18415, 9948),
(18416, 9956),
(18417, 9982),
(18417, 9983),
(18417, 9991),
(18417, 9999),
(18417, 10001),
(18417, 10010),
(18417, 10011),
(18417, 10640),
(18417, 10641),
(18417, 10646),
(18417, 10649),
(18417, 10668),
(18417, 10669),
(18417, 10689),
(18424, 9951),
(18446, 9957),
(18446, 9960),
(18446, 9961),
(18446, 9968),
(18446, 9971),
(18446, 9990),
(18446, 10005),
(18446, 10006),
(18447, 9995),
(18447, 10447),
(18459, 9994),
(18459, 10446),
(18481, 10102),
(18481, 10210),
(18481, 10280),
(18481, 10560),
(18481, 10704),
(18481, 10708),
(18481, 10781),
(18481, 10882),
(18481, 10883),
(18481, 10884),
(18481, 10885),
(18481, 10886),
(18481, 10888),
(18481, 10948),
(18481, 11007),
(18481, 13081),
(18481, 13430),
(18482, 9978),
(18484, 9979),
(18484, 10112),
(18528, 10949),
(18528, 10985),
(18530, 10416),
(18530, 10419),
(18530, 10507),
(18530, 10509),
(18530, 10553),
(18531, 10412),
(18531, 10414),
(18531, 10415),
(18531, 10656),
(18531, 10658),
(18531, 10659),
(18537, 10325),
(18537, 10326),
(18537, 10327),
(18537, 10653),
(18537, 10654),
(18537, 10655),
(18538, 10021),
(18538, 10409),
(18538, 10410),
(18538, 10420),
(18538, 10421),
(18538, 10554),
(18565, 9998),
(18565, 10002),
(18565, 10007),
(18566, 10000),
(18566, 10003),
(18566, 10008),
(18584, 10004),
(18584, 10009),
(18596, 10024),
(18596, 10025),
(18597, 10017),
(18597, 10019),
(18597, 10020),
(18653, 10037),
(18675, 10031),
(18687, 10081),
(18687, 10082),
(18687, 10085),
(18687, 10168),
(18704, 10033),
(18704, 10035),
(18705, 10034),
(18705, 10036),
(18712, 10043),
(18712, 10052),
(18712, 10868),
(18713, 10042),
(18713, 10869),
(18714, 10039),
(18714, 10041),
(18715, 10038),
(18715, 10040),
(18723, 10282),
(18723, 10284),
(18745, 10051),
(18803, 9667),
(18816, 10074),
(18816, 10075),
(18817, 10076),
(18817, 10077),
(18891, 10178),
(18893, 10091),
(18893, 10095),
(18930, 10120),
(18931, 10288),
(18933, 10097),
(18933, 10098),
(18933, 10180),
(19035, 10109),
(19035, 10111),
(19052, 10902),
(19052, 10906),
(19202, 11875),
(19217, 10173),
(19217, 10300),
(19227, 11195),
(19229, 10119),
(19253, 9407),
(19255, 10289),
(19256, 10121),
(19256, 10123),
(19273, 10124),
(19273, 10129),
(19273, 10162),
(19273, 10208),
(19293, 10132),
(19293, 10134),
(19294, 10349),
(19294, 10351),
(19308, 10140),
(19309, 10141),
(19309, 10142),
(19310, 10143),
(19310, 10144),
(19310, 10146),
(19333, 10623),
(19333, 10627),
(19344, 9349),
(19344, 9356),
(19344, 9361),
(19361, 10367),
(19361, 10368),
(19361, 10369),
(19361, 10403),
(19367, 9351),
(19367, 10161),
(19367, 10213),
(19370, 10621),
(19370, 10626),
(19401, 10347),
(19409, 10895),
(19412, 10167),
(19417, 10030),
(19417, 10227),
(19417, 10253),
(19456, 10166),
(19466, 10241),
(19466, 10246),
(19466, 10313),
(19466, 10328),
(19466, 10381),
(19466, 11038),
(19467, 10245),
(19467, 10299),
(19467, 10321),
(19467, 10322),
(19467, 10323),
(19467, 10407),
(19468, 10189),
(19468, 10193),
(19468, 10200),
(19468, 10329),
(19468, 10338),
(19468, 10365),
(19468, 10432),
(19468, 10508),
(19468, 11039),
(19469, 10204),
(19469, 10341),
(19475, 11880),
(19481, 10176),
(19481, 10256),
(19481, 10257),
(19488, 10182),
(19488, 10184),
(19488, 10185),
(19488, 10222),
(19488, 10223),
(19488, 10305),
(19488, 10306),
(19488, 10307),
(19488, 10312),
(19488, 10314),
(19488, 10319),
(19488, 10320),
(19489, 10233),
(19489, 10239),
(19489, 10240),
(19489, 10343),
(19542, 10177),
(19570, 10183),
(19570, 10186),
(19570, 10237),
(19570, 10249),
(19570, 10701),
(19570, 11036),
(19570, 11037),
(19570, 11040),
(19570, 11042),
(19578, 10190),
(19578, 10191),
(19617, 10199),
(19617, 10342),
(19634, 10203),
(19634, 10221),
(19644, 10174),
(19644, 10188),
(19644, 10192),
(19644, 10209),
(19644, 10301),
(19645, 10206),
(19645, 10232),
(19645, 10261),
(19674, 10165),
(19674, 10218),
(19682, 10220),
(19683, 10278),
(19683, 10294),
(19683, 10295),
(19690, 10309),
(19698, 10164),
(19709, 10224),
(19709, 10225),
(19709, 10226),
(19715, 10228),
(19720, 10231),
(19728, 10234),
(19728, 10235),
(19728, 10333),
(19736, 10229),
(19736, 10230),
(19736, 10250),
(19832, 10247),
(19832, 10248),
(19840, 10197),
(19840, 10198),
(19840, 10330),
(19840, 10652),
(19844, 10251),
(19844, 10252),
(19880, 10205),
(19880, 10262),
(19880, 10263),
(19880, 10264),
(19880, 10265),
(19880, 10308),
(19932, 10285),
(19932, 10298),
(19935, 10445),
(19935, 10460),
(19935, 10461),
(19935, 10462),
(19935, 10463),
(19935, 10464),
(19935, 10465),
(19935, 10466),
(19935, 10467),
(19935, 10468),
(19935, 10469),
(19935, 10470),
(19935, 10471),
(19935, 10472),
(19935, 10473),
(19935, 10474),
(19935, 10475),
(19935, 11103),
(19935, 11104),
(19935, 11105),
(19935, 11106),
(19935, 13432),
(19937, 10258),
(20066, 10266),
(20066, 10267),
(20066, 10310),
(20067, 10290),
(20067, 10293),
(20084, 10268),
(20084, 10276),
(20092, 10269),
(20110, 10272),
(20110, 10273),
(20110, 10274),
(20110, 10281),
(20112, 10275),
(20112, 10318),
(20130, 10277),
(20130, 10279),
(20154, 10271),
(20159, 10286),
(20162, 10194),
(20201, 10296),
(20201, 10297),
(20205, 10434),
(20205, 10435),
(20206, 10919),
(20232, 10163),
(20232, 10344),
(20233, 9799),
(20234, 10340),
(20235, 10346),
(20281, 10311),
(20341, 10315),
(20393, 10317),
(20415, 10334),
(20448, 10353),
(20448, 10425),
(20448, 10969),
(20448, 10970),
(20448, 10971),
(20448, 10972),
(20448, 10973),
(20449, 10411),
(20449, 10413),
(20450, 10422),
(20463, 10331),
(20463, 10332),
(20464, 10337),
(20470, 10335),
(20471, 10336),
(20471, 10855),
(20471, 10856),
(20471, 10857),
(20482, 10339),
(20482, 10384),
(20482, 10385),
(20482, 10405),
(20482, 10406),
(20482, 10408),
(20482, 10974),
(20482, 10975),
(20482, 10976),
(20482, 10977),
(20482, 10981),
(20482, 10982),
(20494, 11047),
(20500, 11498),
(20510, 11043),
(20511, 11497),
(20518, 10270),
(20551, 10345),
(20604, 10352),
(20604, 10354),
(20604, 10356),
(20604, 10357),
(20604, 10358),
(20612, 10359),
(20612, 10360),
(20612, 10361),
(20612, 10362),
(20612, 10363),
(20735, 24579),
(20735, 24580),
(20735, 24581),
(20735, 24582),
(20735, 24583),
(20735, 24584),
(20735, 24585),
(20735, 24586),
(20735, 24587),
(20735, 24588),
(20735, 24589),
(20735, 24590),
(20780, 10380),
(20780, 10431),
(20793, 10382),
(20793, 10394),
(20793, 10396),
(20793, 10397),
(20810, 10348),
(20810, 10417),
(20810, 10418),
(20811, 10423),
(20811, 10424),
(20811, 10440),
(20871, 10426),
(20871, 10427),
(20871, 10429),
(20907, 10437),
(20907, 10438),
(20907, 10439),
(20913, 10430),
(20913, 10436),
(20914, 14082),
(20920, 10202),
(20921, 10433),
(21006, 9996),
(21006, 10444),
(21007, 9997),
(21007, 10448),
(21024, 10451),
(21024, 10458),
(21024, 10480),
(21024, 10481),
(21024, 10588),
(21024, 10680),
(21024, 10681),
(21066, 10455),
(21066, 10456),
(21066, 10457),
(21066, 10506),
(21088, 10860),
(21110, 10609),
(21117, 10486),
(21117, 10487),
(21117, 10488),
(21118, 10632),
(21133, 10483),
(21133, 10484),
(21133, 10485),
(21147, 10489),
(21147, 10503),
(21147, 10505),
(21147, 10784),
(21147, 10786),
(21147, 10928),
(21151, 10511),
(21151, 10512),
(21158, 10502),
(21158, 10504),
(21158, 10518),
(21158, 10690),
(21158, 10927),
(21175, 10389),
(21175, 10393),
(21183, 10513),
(21183, 10514),
(21183, 10515),
(21183, 10519),
(21183, 10523),
(21183, 10541),
(21183, 10579),
(21197, 10510),
(21209, 10055),
(21209, 10078),
(21209, 10762),
(21209, 10763),
(21209, 10764),
(21256, 10450),
(21257, 10449),
(21277, 10516),
(21277, 10517),
(21279, 10242),
(21279, 10538),
(21283, 10086),
(21283, 10087),
(21291, 10521),
(21291, 10522),
(21292, 10527),
(21292, 10528),
(21293, 10546),
(21293, 10550),
(21293, 10570),
(21293, 10576),
(21293, 10577),
(21293, 10578),
(21311, 10524),
(21311, 10525),
(21311, 10526),
(21318, 10537),
(21318, 10540),
(21330, 10744),
(21349, 10542),
(21349, 10543),
(21349, 10544),
(21349, 10545),
(21357, 10562),
(21357, 10563),
(21357, 10564),
(21357, 10572),
(21357, 10586),
(21357, 10589),
(21357, 11044),
(21359, 10595),
(21359, 10596),
(21359, 10597),
(21359, 10598),
(21359, 10603),
(21359, 10604),
(21359, 11048),
(21402, 10568),
(21402, 10571),
(21402, 10574),
(21402, 11099),
(21411, 10547),
(21460, 10557),
(21460, 10710),
(21460, 10711),
(21465, 10662),
(21465, 10663),
(21465, 10664),
(21465, 10665),
(21465, 10666),
(21465, 10667),
(21465, 10670),
(21465, 10676),
(21465, 10679),
(21469, 10556),
(21471, 10573),
(21471, 10582),
(21471, 10583),
(21471, 10585),
(21475, 10599),
(21475, 10600),
(21475, 10601),
(21475, 10602),
(21496, 10565),
(21496, 10566),
(21638, 10842),
(21657, 10811),
(21657, 10814),
(21657, 10836),
(21657, 10837),
(21657, 10854),
(21690, 10580),
(21691, 10581),
(21691, 10584),
(21691, 10657),
(21691, 10674),
(21691, 10675),
(21700, 10628),
(21700, 10706),
(21700, 10707),
(21700, 10944),
(21700, 10946),
(21700, 10947),
(21755, 10594),
(21755, 10608),
(21769, 10702),
(21769, 10745),
(21769, 10769),
(21770, 10660),
(21770, 10672),
(21770, 10673),
(21771, 10647),
(21772, 10624),
(21772, 10625),
(21772, 10639),
(21772, 11046),
(21773, 10703),
(21773, 10776),
(21774, 10642),
(21774, 10643),
(21774, 10645),
(21774, 11045),
(21775, 10648),
(21777, 10661),
(21777, 10677),
(21777, 10678),
(21782, 10567),
(21782, 10607),
(21782, 10615),
(21789, 10611),
(21789, 10613),
(21789, 10767),
(21790, 10606),
(21790, 10612),
(21790, 10766),
(21797, 10633),
(21797, 10634),
(21797, 10635),
(21797, 10636),
(21797, 10644),
(21822, 10619),
(21822, 10816),
(21824, 10620),
(21824, 10671),
(21826, 10575),
(21826, 10622),
(21826, 10686),
(21860, 10587),
(21860, 10637),
(21860, 10650),
(21860, 10651),
(21895, 10617),
(21896, 10618),
(21953, 10807),
(21953, 10817),
(21954, 10687),
(21954, 10688),
(21954, 10691),
(21954, 10692),
(21955, 10683),
(21955, 10684),
(21955, 10685),
(21955, 11094),
(21962, 10705),
(21983, 10717),
(21983, 10747),
(21984, 10709),
(21984, 10714),
(21984, 10718),
(21984, 10720),
(21984, 10723),
(21984, 10724),
(21984, 10742),
(21984, 10749),
(21984, 10785),
(21998, 10750),
(21998, 10751),
(21998, 10765),
(21998, 10768),
(22004, 10614),
(22004, 10843),
(22004, 10845),
(22004, 10846),
(22004, 10865),
(22007, 10682),
(22007, 10713),
(22007, 10719),
(22007, 10722),
(22007, 10748),
(22007, 10825),
(22020, 10712),
(22020, 10810),
(22024, 10759),
(22024, 10761),
(22024, 10777),
(22024, 10778),
(22024, 10780),
(22024, 10782),
(22024, 10808),
(22042, 10569),
(22043, 10760),
(22053, 10770),
(22053, 10771),
(22059, 10772),
(22059, 10773),
(22059, 10774),
(22059, 10775),
(22103, 10715),
(22103, 10721),
(22103, 10783),
(22103, 10798),
(22103, 10799),
(22103, 10800),
(22103, 10805),
(22103, 10806),
(22103, 10818),
(22107, 10792),
(22107, 10809),
(22112, 10858),
(22112, 10866),
(22113, 10804),
(22113, 10870),
(22113, 11012),
(22127, 10812),
(22127, 10821),
(22127, 10912),
(22133, 10753),
(22149, 10795),
(22149, 10797),
(22149, 10801),
(22149, 10802),
(22150, 10796),
(22150, 10803),
(22208, 10831),
(22211, 10822),
(22211, 10823),
(22211, 10824),
(22212, 10833),
(22213, 10832),
(22214, 10826),
(22214, 10827),
(22214, 10828),
(22215, 10829),
(22215, 10830),
(22231, 10813),
(22231, 10834),
(22272, 10839),
(22272, 10848),
(22272, 10849),
(22272, 10861),
(22272, 10874),
(22278, 10840),
(22278, 10842),
(22292, 10847),
(22292, 10862),
(22292, 10863),
(22292, 10879),
(22292, 10889),
(22292, 10898),
(22292, 10908),
(22292, 11024),
(22293, 10850),
(22312, 10851),
(22312, 10853),
(22312, 10859),
(22312, 10867),
(22364, 10873),
(22364, 10926),
(22365, 10852),
(22370, 10878),
(22370, 10880),
(22370, 10881),
(22370, 10887),
(22386, 10893),
(22386, 10894),
(22420, 10896),
(22421, 10900),
(22421, 10901),
(22421, 13431),
(22423, 10904),
(22423, 10910),
(22423, 10911),
(22427, 10899),
(22427, 10907),
(22429, 10917),
(22429, 10918),
(22430, 10903),
(22430, 10909),
(22430, 10916),
(22430, 10935),
(22433, 11063),
(22433, 11064),
(22433, 11067),
(22433, 11068),
(22433, 11069),
(22433, 11070),
(22433, 11071),
(22446, 10913),
(22446, 10914),
(22446, 10915),
(22456, 10877),
(22456, 10923),
(22462, 10920),
(22462, 10921),
(22479, 10924),
(22481, 10922),
(22481, 10929),
(22481, 10930),
(22817, 10942),
(22817, 10951),
(22817, 10963),
(22817, 11975),
(22818, 10942),
(22818, 10943),
(22818, 10950),
(22818, 10952),
(22818, 10962),
(22819, 10966),
(22819, 10967),
(22823, 10945),
(22832, 10955),
(22832, 10961),
(22832, 10978),
(22832, 10993),
(22832, 10994),
(22832, 11001),
(22832, 11011),
(22834, 10964),
(22836, 10954),
(22837, 10965),
(22893, 9962),
(22893, 9967),
(22893, 9970),
(22893, 9972),
(22893, 9973),
(22893, 9977),
(22924, 10979),
(22924, 10980),
(22924, 10988),
(22924, 10992),
(22940, 10984),
(22941, 10983),
(22941, 10989),
(22941, 10995),
(22941, 10996),
(22941, 10997),
(22941, 10998),
(22941, 11000),
(22941, 11022),
(22941, 11057),
(22981, 10986),
(22981, 10987),
(23038, 11005),
(23038, 11021),
(23038, 11028),
(23038, 11073),
(23042, 11004),
(23042, 11006),
(23048, 11008),
(23048, 11085),
(23048, 11098),
(23120, 11010),
(23120, 11023),
(23120, 11102),
(23139, 11013),
(23139, 11041),
(23139, 11053),
(23139, 11084),
(23139, 11086),
(23139, 11092),
(23139, 11097),
(23139, 11101),
(23139, 11107),
(23140, 11014),
(23140, 11015),
(23140, 11016),
(23140, 11017),
(23140, 11018),
(23141, 11019),
(23141, 11020),
(23141, 11035),
(23141, 11049),
(23141, 11050),
(23149, 11075),
(23149, 11076),
(23149, 11081),
(23149, 11082),
(23158, 10957),
(23158, 10958),
(23158, 10959),
(23166, 11083),
(23233, 11009),
(23233, 11025),
(23233, 11058),
(23233, 11059),
(23233, 11080),
(23253, 11026),
(23253, 11051),
(23291, 11054),
(23291, 11055),
(23300, 11027),
(23300, 11060),
(23300, 11079),
(23306, 11029),
(23306, 11056),
(23306, 11074),
(23306, 11885),
(23316, 11030),
(23316, 11061),
(23334, 11062),
(23334, 11078),
(23335, 11065),
(23335, 11066),
(23338, 10990),
(23338, 10991),
(23376, 11077),
(23415, 11093),
(23427, 11089),
(23427, 11090),
(23428, 11091),
(23433, 11108),
(23434, 11095),
(23449, 11096),
(23452, 11100),
(23461, 11112),
(23462, 11109),
(23463, 11111),
(23464, 11110),
(23465, 11114),
(23466, 11113),
(23473, 11119),
(23486, 11117),
(23486, 11118),
(23546, 11228),
(23546, 11243),
(23546, 11244),
(23546, 11252),
(23546, 11255),
(23546, 11290),
(23548, 11278),
(23558, 11122),
(23558, 11318),
(23559, 11130),
(23559, 11132),
(23559, 11166),
(23559, 11171),
(23559, 11178),
(23566, 11126),
(23566, 11128),
(23566, 11133),
(23566, 11134),
(23567, 11123),
(23567, 11124),
(23568, 11143),
(23568, 11144),
(23568, 11148),
(23569, 11138),
(23569, 11139),
(23569, 11140),
(23570, 11217),
(23572, 11184),
(23572, 11208),
(23572, 11211),
(23572, 11214),
(23572, 11215),
(23579, 11158),
(23579, 11159),
(23579, 11160),
(23579, 11161),
(23579, 11162),
(23600, 11156),
(23601, 11169),
(23601, 11173),
(23618, 11129),
(23627, 11293),
(23628, 11294),
(23710, 11321),
(23710, 13932),
(23723, 11145),
(23723, 11146),
(23723, 11147),
(23728, 11420),
(23728, 11426),
(23728, 11436),
(23730, 11443),
(23749, 11157),
(23749, 11235),
(23749, 11236),
(23749, 11250),
(23749, 11291),
(23749, 11331),
(23749, 11332),
(23749, 11452),
(23749, 11501),
(23761, 11164),
(23770, 11190),
(23773, 11155),
(23778, 11232),
(23778, 11233),
(23780, 11221),
(23780, 11234),
(23780, 11254),
(23780, 11262),
(23780, 11270),
(23780, 11272),
(23780, 13206),
(23797, 11172),
(23797, 11174),
(23797, 11207),
(23804, 11504),
(23804, 11511),
(23804, 11512),
(23804, 11530),
(23804, 11567),
(23804, 11568),
(23804, 11573),
(23833, 11393),
(23833, 11394),
(23833, 11395),
(23833, 11396),
(23843, 11180),
(23843, 11181),
(23843, 11183),
(23858, 11163),
(23859, 12297),
(23870, 11182),
(23872, 11454),
(23872, 12062),
(23888, 11187),
(23888, 11188),
(23888, 11237),
(23888, 11238),
(23888, 11432),
(23891, 11175),
(23892, 11191),
(23892, 11192),
(23895, 11153),
(23896, 11193),
(23897, 11165),
(23905, 11198),
(23905, 11210),
(23906, 11199),
(23906, 11202),
(23906, 11327),
(23938, 11227),
(23942, 11185),
(23951, 1219),
(23973, 11219),
(23973, 11357),
(23973, 11361),
(23973, 11403),
(23973, 11449),
(23973, 11450),
(23973, 12139),
(23973, 12155),
(23975, 11333),
(23975, 11343),
(23975, 11344),
(23976, 11218),
(23976, 11240),
(23978, 11224),
(24027, 11282),
(24027, 11283),
(24027, 11285),
(24027, 11295),
(24032, 11266),
(24032, 11267),
(24037, 11229),
(24037, 11230),
(24038, 11231),
(24038, 11239),
(24038, 11249),
(24056, 11329),
(24056, 11410),
(24060, 11245),
(24060, 11246),
(24060, 11247),
(24060, 11248),
(24111, 11251),
(24111, 13205),
(24117, 11302),
(24117, 11312),
(24117, 11313),
(24117, 11314),
(24117, 11315),
(24117, 11316),
(24117, 11319),
(24117, 11428),
(24122, 11273),
(24123, 11275),
(24123, 11281),
(24126, 11167),
(24126, 11168),
(24126, 11170),
(24126, 11241),
(24127, 11271),
(24127, 11433),
(24129, 11261),
(24129, 11263),
(24129, 11264),
(24129, 11411),
(24129, 11453),
(24129, 12566),
(24130, 11256),
(24130, 11257),
(24130, 11258),
(24130, 11259),
(24131, 11292),
(24135, 11260),
(24135, 11265),
(24135, 11268),
(24139, 11269),
(24139, 11406),
(24139, 11418),
(24145, 11274),
(24150, 11276),
(24150, 11277),
(24150, 11300),
(24151, 11299),
(24152, 11297),
(24152, 11298),
(24155, 12181),
(24157, 11279),
(24157, 11280),
(24176, 11284),
(24186, 11286),
(24186, 11287),
(24186, 11317),
(24186, 11324),
(24189, 11288),
(24191, 11289),
(24209, 11296),
(24218, 11301),
(24227, 11154),
(24251, 11304),
(24251, 11305),
(24251, 11306),
(24251, 11307),
(24252, 11308),
(24252, 11309),
(24252, 11310),
(24252, 11424),
(24256, 11311),
(24261, 11323),
(24261, 11325),
(24261, 11414),
(24261, 11415),
(24261, 11416),
(24261, 11417),
(24273, 11322),
(24273, 11326),
(24283, 11328),
(24283, 11330),
(24328, 11346),
(24328, 11348),
(24328, 11349),
(24359, 11397),
(24359, 11398),
(24359, 11399),
(24362, 11350),
(24362, 11351),
(24362, 11352),
(24369, 11354),
(24369, 11362),
(24369, 11363),
(24369, 11368),
(24369, 11369),
(24369, 11370),
(24369, 11372),
(24369, 11373),
(24369, 11374),
(24369, 11375),
(24369, 11378),
(24369, 11382),
(24369, 11384),
(24369, 11386),
(24369, 11388),
(24369, 11499),
(24370, 11364),
(24370, 11371),
(24370, 11376),
(24370, 11383),
(24370, 11385),
(24370, 11387),
(24370, 11389),
(24370, 11500),
(24376, 11355),
(24376, 11358),
(24376, 11359),
(24390, 11365),
(24390, 11366),
(24390, 11367),
(24393, 11377),
(24393, 11379),
(24393, 11380),
(24393, 11381),
(24399, 11176),
(24399, 11390),
(24399, 11391),
(24458, 11303),
(24458, 12481),
(24468, 11400),
(24468, 13938),
(24495, 11413),
(24497, 11409),
(24497, 11412),
(24510, 11419),
(24510, 13931),
(24519, 11131),
(24519, 11242),
(24519, 11356),
(24519, 11360),
(24519, 11439),
(24519, 11440),
(24519, 12133),
(24519, 12135),
(24525, 11473),
(24525, 11476),
(24537, 11434),
(24537, 11455),
(24537, 11459),
(24537, 11479),
(24539, 11509),
(24539, 11510),
(24541, 11464),
(24541, 11466),
(24541, 11467),
(24544, 11422),
(24548, 11423),
(24634, 11421),
(24634, 11427),
(24634, 11429),
(24634, 11430),
(24643, 11508),
(24657, 11120),
(24657, 11431),
(24702, 11684),
(24703, 11628),
(24703, 11630),
(24703, 11633),
(24703, 11640),
(24703, 11898),
(24703, 11916),
(24706, 11641),
(24709, 11647),
(24710, 11441),
(24710, 11442),
(24710, 11486),
(24710, 12491),
(24711, 11446),
(24711, 11447),
(24711, 11487),
(24711, 12492),
(24717, 11448),
(24717, 11478),
(24727, 11451),
(24730, 11685),
(24730, 11695),
(24730, 11706),
(24733, 11659),
(24741, 11471),
(24741, 11480),
(24750, 11460),
(24750, 11465),
(24750, 11468),
(24750, 11470),
(24755, 11456),
(24755, 11457),
(24755, 11458),
(24755, 11507),
(24755, 11572),
(24784, 11469),
(24795, 11679),
(24795, 11682),
(24807, 11474),
(24807, 11475),
(24807, 11483),
(24807, 11484),
(24807, 11485),
(24807, 11489),
(24807, 11491),
(24807, 11494),
(24807, 11495),
(24810, 11472),
(24811, 11477),
(24813, 11481),
(24813, 11482),
(24813, 11492),
(24822, 11488),
(24848, 11490),
(24866, 11502),
(24881, 11503),
(24885, 11505),
(24886, 11506),
(24910, 11519),
(24910, 11527),
(24910, 11529),
(24932, 11513),
(24932, 11514),
(24932, 11517),
(24932, 11534),
(24937, 11515),
(24937, 11516),
(24937, 11526),
(24965, 11524),
(24965, 11525),
(24967, 11496),
(24967, 11523),
(24975, 11520),
(24975, 11546),
(24975, 11521),
(25032, 11554),
(25032, 11555),
(25032, 11556),
(25032, 11557),
(25046, 11535),
(25046, 11536),
(25046, 11544),
(25057, 11532),
(25057, 11533),
(25061, 11537),
(25061, 11538),
(25069, 11539),
(25069, 11540),
(25088, 11541),
(25108, 11542),
(25108, 11543),
(25112, 11545),
(25112, 11548),
(25133, 11547),
(25140, 11877),
(25163, 11549),
(25169, 11550),
(25197, 11560),
(25197, 11565),
(25197, 11566),
(25197, 11570),
(25197, 11571),
(25197, 11702),
(25197, 11704),
(25199, 11561),
(25205, 11562),
(25205, 11563),
(25206, 11559),
(25211, 11564),
(25223, 9721),
(25223, 9722),
(25223, 9723),
(25223, 9725),
(25223, 9735),
(25223, 9736),
(25223, 9737),
(25235, 11962),
(25237, 11585),
(25237, 11586),
(25237, 11616),
(25237, 11652),
(25237, 11705),
(25237, 11722),
(25245, 11601),
(25250, 11672),
(25250, 11791),
(25251, 11600),
(25251, 11927),
(25256, 11632),
(25256, 13242),
(25257, 12224),
(25257, 12500),
(25262, 11574),
(25262, 11575),
(25262, 11587),
(25262, 11590),
(25262, 11663),
(25262, 11671),
(25279, 11595),
(25279, 11596),
(25279, 11597),
(25279, 11598),
(25279, 11602),
(25280, 11611),
(25285, 11792),
(25289, 11634),
(25291, 11576),
(25291, 11582),
(25291, 12728),
(25292, 11612),
(25292, 11617),
(25292, 11623),
(25298, 11920),
(25302, 11603),
(25314, 11733),
(25314, 11900),
(25314, 11905),
(25314, 11910),
(25314, 11911),
(25324, 11886),
(25324, 11891),
(25326, 11592),
(25327, 11606),
(25327, 11608),
(25328, 11614),
(25329, 11636),
(25329, 11651),
(25336, 11591),
(25336, 11593),
(25336, 11594),
(25339, 11629),
(25339, 11631),
(25339, 11638),
(25339, 12486),
(25356, 11680),
(25374, 11639),
(25376, 11624),
(25376, 11627),
(25376, 11649),
(25379, 11709),
(25380, 11720),
(25380, 11721),
(25381, 11716),
(25381, 11717),
(25381, 11719),
(25381, 11724),
(25385, 11599),
(25394, 11615),
(25395, 11604),
(25425, 11635),
(25425, 11637),
(25435, 11613),
(25435, 11619),
(25435, 11626),
(25435, 11662),
(25435, 12141),
(25435, 12471),
(25437, 11618),
(25437, 11686),
(25438, 11676),
(25440, 11711),
(25440, 11714),
(25450, 11620),
(25450, 11625),
(25462, 12636),
(25462, 12641),
(25475, 11642),
(25475, 11643),
(25475, 11644),
(25476, 11655),
(25476, 11656),
(25476, 11660),
(25476, 11661),
(25477, 11645),
(25477, 11650),
(25477, 11653),
(25477, 11658),
(25477, 11670),
(25477, 11729),
(25477, 11730),
(25480, 11646),
(25480, 11648),
(25503, 11664),
(25516, 11654),
(25580, 11665),
(25580, 11666),
(25580, 11667),
(25580, 11668),
(25580, 11669),
(25590, 11673),
(25590, 11701),
(25590, 11707),
(25590, 11798),
(25590, 11873),
(25602, 11689),
(25602, 11899),
(25602, 11909),
(25604, 11674),
(25604, 11675),
(25604, 11677),
(25604, 11683),
(25604, 11687),
(25607, 11688),
(25607, 11690),
(25658, 11678),
(25697, 11696),
(25697, 11972),
(25702, 11710),
(25705, 11692),
(25705, 11693),
(25705, 11694),
(25705, 11698),
(25705, 11700),
(25710, 11955),
(25714, 11697),
(25714, 11699),
(25729, 11703),
(25747, 11708),
(25747, 11712),
(25747, 11788),
(25780, 11713),
(25780, 11715),
(25780, 11718),
(25780, 11723),
(25785, 11681),
(25807, 11725),
(25807, 11726),
(25807, 11728),
(25807, 11795),
(25807, 11796),
(25809, 11864),
(25809, 11866),
(25809, 11867),
(25809, 11876),
(25809, 11879),
(25809, 11892),
(25810, 11869),
(25810, 11872),
(25811, 11865),
(25811, 11868),
(25812, 11884),
(25816, 11727),
(25816, 11797),
(25816, 11889),
(25816, 11897),
(25825, 11789),
(25826, 11793),
(25826, 11794),
(25838, 11870),
(25838, 11871),
(25849, 11881),
(25849, 11887),
(25849, 11894),
(25862, 11878),
(25889, 11807),
(25919, 11836),
(25921, 11838),
(25926, 11843),
(25937, 11821),
(25940, 11856),
(25945, 11861),
(25975, 11657),
(25975, 11731),
(25975, 11882),
(25975, 11921),
(25975, 11924),
(25982, 11888),
(25982, 11890),
(25982, 11895),
(25982, 11896),
(25982, 11907),
(25983, 11893),
(26083, 11902),
(26083, 11903),
(26083, 11904),
(26083, 11928),
(26083, 11963),
(26083, 11965),
(26084, 11908),
(26084, 12035),
(26085, 11913),
(26104, 11906),
(26110, 11912),
(26110, 11914),
(26110, 13094),
(26110, 13095),
(26113, 11882),
(26113, 11915),
(26113, 11922),
(26113, 11923),
(26113, 11925),
(26113, 11926),
(26117, 11918),
(26117, 11919),
(26117, 11931),
(26117, 11936),
(26117, 11940),
(26117, 11941),
(26117, 11943),
(26117, 11967),
(26117, 11969),
(26117, 11973),
(26117, 13128),
(26156, 11930),
(26158, 11929),
(26169, 11932),
(26169, 11949),
(26170, 11938),
(26170, 11942),
(26170, 11956),
(26170, 12019),
(26170, 12088),
(26180, 11980),
(26181, 11977),
(26181, 11978),
(26181, 11979),
(26181, 11983),
(26187, 11944),
(26187, 12086),
(26194, 11958),
(26194, 11959),
(26194, 12117),
(26194, 12118),
(26206, 11946),
(26206, 11951),
(26206, 11957),
(26212, 12109),
(26212, 12160),
(26213, 11945),
(26218, 11950),
(26218, 11961),
(26218, 11968),
(26221, 11917),
(26221, 11947),
(26221, 11948),
(26221, 11952),
(26221, 11953),
(26221, 11954),
(26221, 12012),
(26226, 11998),
(26226, 12002),
(26226, 12003),
(26226, 12014),
(26228, 11960),
(26245, 12009),
(26245, 12011),
(26245, 12016),
(26245, 12017),
(26260, 11981),
(26260, 11982),
(26260, 11985),
(26260, 12070),
(26260, 12074),
(26361, 11986),
(26361, 11988),
(26361, 11993),
(26371, 12027),
(26377, 12414),
(26379, 12008),
(26379, 12041),
(26379, 12069),
(26379, 12085),
(26379, 12140),
(26401, 11964),
(26415, 12034),
(26415, 12036),
(26415, 12053),
(26420, 12081),
(26420, 12093),
(26420, 12094),
(26420, 12099),
(26423, 11989),
(26423, 11990),
(26424, 11984),
(26424, 12208),
(26424, 12210),
(26443, 12119),
(26443, 12122),
(26443, 12768),
(26443, 12769),
(26459, 12067),
(26471, 11996),
(26471, 11999),
(26471, 12005),
(26471, 12059),
(26471, 12061),
(26471, 12066),
(26471, 12084),
(26471, 12110),
(26471, 12173),
(26473, 12077),
(26473, 12079),
(26473, 12080),
(26484, 12279),
(26500, 11991),
(26500, 12007),
(26500, 12068),
(26500, 12802),
(26501, 12006),
(26501, 12013),
(26504, 12100),
(26504, 12104),
(26504, 12111),
(26505, 12101),
(26505, 12102),
(26505, 12221),
(26514, 12010),
(26519, 12483),
(26520, 11966),
(26564, 12039),
(26564, 12048),
(26574, 12071),
(26574, 12072),
(26581, 12115),
(26581, 12125),
(26581, 12126),
(26581, 12127),
(26581, 12132),
(26584, 12026),
(26584, 12054),
(26584, 12058),
(26593, 12262),
(26593, 12263),
(26593, 12264),
(26593, 12265),
(26593, 12267),
(26593, 12447),
(26595, 12028),
(26595, 12032),
(26604, 12029),
(26604, 12038),
(26604, 12484),
(26604, 13129),
(26618, 12056),
(26618, 12057),
(26618, 12089),
(26618, 12090),
(26618, 12091),
(26618, 12097),
(26618, 12136),
(26647, 12043),
(26647, 12052),
(26649, 12033),
(26653, 12040),
(26653, 13167),
(26653, 13182),
(26653, 13187),
(26653, 13190),
(26653, 13204),
(26659, 12075),
(26659, 12076),
(26659, 12078),
(26659, 12112),
(26660, 12044),
(26660, 12049),
(26660, 12050),
(26660, 12469),
(26661, 12045),
(26661, 12046),
(26661, 12047),
(26664, 12037),
(26666, 12073),
(26666, 12201),
(26666, 12202),
(26666, 12203),
(26666, 12204),
(26666, 12451),
(26673, 11995),
(26673, 12000),
(26673, 12004),
(26673, 12055),
(26673, 12060),
(26673, 12065),
(26673, 12083),
(26673, 12107),
(26673, 12172),
(26673, 12440),
(26719, 12318),
(26733, 12063),
(26733, 12064),
(26821, 12295),
(26837, 12092),
(26854, 12096),
(26859, 12095),
(26860, 12178),
(26860, 12412),
(26860, 12413),
(26860, 12423),
(26860, 12487),
(26868, 12436),
(26873, 12098),
(26873, 12106),
(26875, 12105),
(26875, 12292),
(26875, 12294),
(26875, 12308),
(26875, 12310),
(26875, 12511),
(26878, 12439),
(26881, 12171),
(26883, 12128),
(26883, 12129),
(26883, 12130),
(26883, 12131),
(26883, 12138),
(26883, 12153),
(26883, 12154),
(26884, 12082),
(26884, 12113),
(26884, 12114),
(26884, 12190),
(26885, 12180),
(26885, 12183),
(26885, 12184),
(26885, 12185),
(26886, 12116),
(26886, 12120),
(26886, 12137),
(26886, 12152),
(26905, 13087),
(26914, 13268),
(26915, 12918),
(26917, 12123),
(26917, 12124),
(26917, 12495),
(26917, 12496),
(26917, 12498),
(26917, 13077),
(26917, 13078),
(26917, 13372),
(26917, 13375),
(26924, 12121),
(26932, 12158),
(26932, 12159),
(26935, 12134),
(26935, 12164),
(26935, 12329),
(26935, 12330),
(26944, 12415),
(26949, 12497),
(26953, 13089),
(26960, 12952),
(26964, 13269),
(26969, 13270),
(26972, 13090),
(26973, 12166),
(26973, 12167),
(26973, 12168),
(26973, 12169),
(26978, 12142),
(26978, 12143),
(26979, 12144),
(26979, 12145),
(26982, 13002),
(26983, 12146),
(26983, 12147),
(26983, 12148),
(26983, 12149),
(26983, 12150),
(26983, 12151),
(26989, 13088),
(26997, 13004),
(27001, 13265),
(27028, 12214),
(27037, 12175),
(27037, 12176),
(27037, 12177),
(27060, 12157),
(27102, 12424),
(27102, 12431),
(27120, 12170),
(27136, 12174),
(27136, 12251),
(27136, 12253),
(27136, 12281),
(27136, 12298),
(27136, 12319),
(27136, 12321),
(27136, 12467),
(27136, 12473),
(27136, 12477),
(27155, 12258),
(27155, 12476),
(27156, 12269),
(27156, 12438),
(27156, 12441),
(27156, 12442),
(27157, 12325),
(27159, 12272),
(27159, 12275),
(27159, 12277),
(27172, 12182),
(27172, 12188),
(27172, 12189),
(27172, 12200),
(27172, 12218),
(27215, 12020),
(27215, 12022),
(27216, 12191),
(27216, 12192),
(27221, 12195),
(27221, 12199),
(27227, 12165),
(27227, 12196),
(27227, 12197),
(27227, 12198),
(27243, 12205),
(27243, 12245),
(27243, 12252),
(27243, 12271),
(27243, 12273),
(27243, 12283),
(27243, 12285),
(27243, 12488),
(27248, 12206),
(27248, 12211),
(27248, 12240),
(27248, 12243),
(27255, 12454),
(27255, 12456),
(27262, 12207),
(27262, 12213),
(27262, 12229),
(27262, 12231),
(27262, 12236),
(27262, 12241),
(27262, 12242),
(27262, 12453),
(27267, 12209),
(27267, 12303),
(27277, 12212),
(27277, 12215),
(27277, 12216),
(27277, 12217),
(27277, 12225),
(27277, 12226),
(27277, 12227),
(27295, 12219),
(27295, 12220),
(27295, 12246),
(27295, 12247),
(27295, 12248),
(27295, 12249),
(27295, 12250),
(27314, 12282),
(27314, 12305),
(27314, 12475),
(27314, 12478),
(27316, 12320),
(27317, 12235),
(27317, 12237),
(27318, 12309),
(27318, 12311),
(27318, 12312),
(27319, 12462),
(27320, 12230),
(27320, 12232),
(27337, 12234),
(27347, 12287),
(27347, 12290),
(27347, 12291),
(27347, 12301),
(27350, 12239),
(27350, 12254),
(27350, 12260),
(27350, 12274),
(27371, 12244),
(27388, 12256),
(27388, 12257),
(27388, 12259),
(27388, 12468),
(27391, 12222),
(27391, 12223),
(27391, 12255),
(27412, 12276),
(27416, 12268),
(27422, 12280),
(27423, 12270),
(27430, 12261),
(27451, 12284),
(27464, 12288),
(27468, 12289),
(27469, 12293),
(27478, 12278),
(27478, 12420),
(27484, 12296),
(27486, 12299),
(27489, 12306),
(27489, 12421),
(27495, 12443),
(27497, 12300),
(27497, 12422),
(27499, 12302),
(27506, 12416),
(27506, 12417),
(27506, 12418),
(27506, 12460),
(27520, 12314),
(27532, 12315),
(27545, 12307),
(27562, 12316),
(27563, 12317),
(27565, 12433),
(27575, 12372),
(27575, 12435),
(27581, 12161),
(27581, 12327),
(27581, 12328),
(27581, 12425),
(27602, 12323),
(27606, 12324),
(27646, 12411),
(27658, 13124),
(27708, 12432),
(27720, 12427),
(27720, 12428),
(27720, 12429),
(27720, 12430),
(27759, 12437),
(27763, 12448),
(27763, 12449),
(27763, 12450),
(27763, 12461),
(27765, 12266),
(27783, 12444),
(27784, 12464),
(27785, 12458),
(27785, 12459),
(27801, 12546),
(27801, 12559),
(27801, 12561),
(27801, 12608),
(27801, 12611),
(27801, 12613),
(27801, 12617),
(27801, 12620),
(27801, 12621),
(27801, 12660),
(27801, 12797),
(27801, 12803),
(27801, 12805),
(27803, 12766),
(27804, 12767),
(27828, 12463),
(27840, 12470),
(27844, 12466),
(27856, 13343),
(27857, 12472),
(27858, 12474),
(27872, 12499),
(27915, 13149),
(27922, 12482),
(27928, 12781),
(27986, 12489),
(27986, 12520),
(27986, 12544),
(27986, 12556),
(27986, 12688),
(27987, 12521),
(27990, 12419),
(27990, 13384),
(27990, 13385),
(27990, 26012),
(27990, 26034),
(28012, 13126),
(28012, 13127),
(28016, 12238),
(28027, 12570),
(28027, 12571),
(28027, 12572),
(28027, 12573),
(28027, 12577),
(28027, 12695),
(28027, 12704),
(28030, 12667),
(28030, 12668),
(28030, 12672),
(28030, 12674),
(28031, 12549),
(28031, 12550),
(28031, 12558),
(28032, 12524),
(28032, 12525),
(28032, 12551),
(28032, 12560),
(28032, 12569),
(28033, 12522),
(28033, 12523),
(28039, 12501),
(28039, 12563),
(28039, 12587),
(28039, 12596),
(28039, 12604),
(28042, 12502),
(28042, 12564),
(28042, 12588),
(28042, 12597),
(28043, 12519),
(28043, 12585),
(28043, 12594),
(28043, 12599),
(28044, 12509),
(28044, 12568),
(28044, 12591),
(28044, 12598),
(28044, 12606),
(28045, 12609),
(28045, 12610),
(28045, 12799),
(28046, 12804),
(28056, 12504),
(28056, 12505),
(28059, 12503),
(28059, 12740),
(28059, 12795),
(28062, 12506),
(28062, 12507),
(28062, 12510),
(28062, 12514),
(28062, 12516),
(28070, 13207),
(28082, 12528),
(28082, 12529),
(28082, 12530),
(28082, 12531),
(28082, 12533),
(28082, 12534),
(28082, 12535),
(28082, 12539),
(28092, 12547),
(28092, 12548),
(28099, 12508),
(28106, 12703),
(28106, 12759),
(28106, 12760),
(28107, 12705),
(28107, 12761),
(28107, 12762),
(28114, 12574),
(28114, 12575),
(28114, 12576),
(28121, 12689),
(28122, 12578),
(28122, 12579),
(28122, 12580),
(28125, 12512),
(28126, 12513),
(28138, 12532),
(28138, 12692),
(28138, 12702),
(28160, 13107),
(28160, 13116),
(28179, 13045),
(28179, 13226),
(28179, 13227),
(28191, 12526),
(28191, 12543),
(28205, 12527),
(28205, 12541),
(28205, 12557),
(28216, 12536),
(28216, 12537),
(28216, 12538),
(28216, 12582),
(28217, 12540),
(28228, 12542),
(28228, 12545),
(28244, 12584),
(28283, 12552),
(28283, 12554),
(28284, 12553),
(28284, 12555),
(28284, 12583),
(28309, 12562),
(28328, 12589),
(28328, 12592),
(28357, 12593),
(28357, 12619),
(28357, 12842),
(28357, 12848),
(28374, 12607),
(28374, 12658),
(28375, 11569),
(28376, 12595),
(28376, 12603),
(28376, 12605),
(28376, 12614),
(28377, 12670),
(28377, 12678),
(28377, 12700),
(28377, 12701),
(28401, 12628),
(28401, 12632),
(28401, 12653),
(28401, 12665),
(28401, 12666),
(28401, 12675),
(28401, 12684),
(28401, 12712),
(28401, 12729),
(28401, 12730),
(28444, 12657),
(28444, 12706),
(28444, 12757),
(28464, 12612),
(28472, 12849),
(28479, 12623),
(28479, 12627),
(28479, 12685),
(28479, 12721),
(28480, 12639),
(28480, 12662),
(28480, 12708),
(28484, 12622),
(28484, 12640),
(28484, 12659),
(28484, 12707),
(28497, 12624),
(28503, 12663),
(28503, 12664),
(28503, 12673),
(28503, 12686),
(28503, 12690),
(28503, 12710),
(28510, 12850),
(28518, 12629),
(28518, 12630),
(28518, 12631),
(28518, 12633),
(28518, 12637),
(28518, 12638),
(28518, 12643),
(28518, 12648),
(28518, 12649),
(28518, 12661),
(28518, 12669),
(28518, 12676),
(28518, 12677),
(28518, 12713),
(28518, 12884),
(28527, 12635),
(28527, 12650),
(28527, 12709),
(28527, 13549),
(28561, 12642),
(28561, 12646),
(28561, 12647),
(28568, 12651),
(28568, 12654),
(28589, 12652),
(28647, 12679),
(28653, 12680),
(28653, 12687),
(28658, 12697),
(28658, 12698),
(28699, 13272),
(28701, 12958),
(28701, 12959),
(28701, 12960),
(28701, 12961),
(28701, 12962),
(28701, 12963),
(28701, 13041),
(28701, 13148),
(28701, 14160),
(28703, 14151),
(28706, 13836),
(28718, 13103),
(28718, 13115),
(28742, 13830),
(28742, 13832),
(28742, 13833),
(28742, 13834),
(28746, 12671),
(28746, 12696),
(28746, 12699),
(28771, 12681),
(28771, 12683),
(28907, 12714),
(28910, 12722),
(28911, 12715),
(28911, 12719),
(28911, 12720),
(28912, 12725),
(28913, 12727),
(28913, 12751),
(28914, 12723),
(28914, 12724),
(28914, 12754),
(28914, 12756),
(28919, 12716),
(28919, 12717),
(29006, 12726),
(29006, 12735),
(29006, 12736),
(29006, 12737),
(29043, 12732),
(29043, 12734),
(29043, 12741),
(29043, 12758),
(29047, 12733),
(29049, 13101),
(29049, 13113),
(29053, 12738),
(29053, 12739),
(29053, 12742),
(29053, 12743),
(29053, 12744),
(29053, 12745),
(29053, 12746),
(29053, 12747),
(29053, 12748),
(29053, 12749),
(29053, 12750),
(29077, 12755),
(29110, 12778),
(29110, 12779),
(29137, 12763),
(29137, 12770),
(29137, 12789),
(29137, 12792),
(29137, 12793),
(29156, 12790),
(29156, 12791),
(29156, 12794),
(29156, 12796),
(29157, 12634),
(29157, 12644),
(29157, 12645),
(29173, 12801),
(29339, 12788),
(29343, 12898),
(29343, 12899),
(29343, 12951),
(29343, 12995),
(29344, 12806),
(29344, 12807),
(29344, 12810),
(29344, 12839),
(29344, 12840),
(29344, 12852),
(29346, 12785),
(29346, 12812),
(29348, 12786),
(29396, 12813),
(29405, 12814),
(29405, 12815),
(29428, 12820),
(29428, 12821),
(29428, 12822),
(29428, 12824),
(29428, 12826),
(29428, 12827),
(29428, 12828),
(29428, 12832),
(29428, 12833),
(29428, 12836),
(29430, 12829),
(29430, 12830),
(29431, 12818),
(29431, 12819),
(29431, 12853),
(29432, 12823),
(29434, 12831),
(29441, 12816),
(29442, 12817),
(29445, 12886),
(29445, 12915),
(29445, 12956),
(29445, 13009),
(29445, 13050),
(29445, 13051),
(29445, 13064),
(29455, 12904),
(29456, 12838),
(29473, 12843),
(29473, 12844),
(29481, 12841),
(29481, 12846),
(29481, 12908),
(29527, 13100),
(29527, 13112),
(29532, 13102),
(29532, 13114),
(29535, 13845),
(29560, 12847),
(29579, 12855),
(29579, 12858),
(29579, 12860),
(29579, 12872),
(29579, 12910),
(29579, 12926),
(29579, 12927),
(29579, 12928),
(29579, 13273),
(29579, 13274),
(29592, 12851),
(29592, 12856),
(29592, 12972),
(29593, 12873),
(29593, 12874),
(29611, 396),
(29611, 6186),
(29611, 6187),
(29611, 7781),
(29611, 12774),
(29611, 13188),
(29611, 13347),
(29611, 13370),
(29611, 13377),
(29611, 24597),
(29647, 12916),
(29650, 12854),
(29651, 12895),
(29651, 12920),
(29651, 13285),
(29687, 12883),
(29688, 12901),
(29688, 12912),
(29688, 12914),
(29689, 12894),
(29689, 12903),
(29689, 12919),
(29690, 12857),
(29690, 12861),
(29727, 12863),
(29727, 12864),
(29727, 12866),
(29727, 12868),
(29732, 12865),
(29732, 12867),
(29732, 12869),
(29732, 12876),
(29733, 12859),
(29743, 12871),
(29744, 12862),
(29744, 12870),
(29751, 12875),
(29795, 12897),
(29795, 13237),
(29795, 13260),
(29795, 13264),
(29795, 13276),
(29795, 13277),
(29795, 13278),
(29795, 13279),
(29795, 13281),
(29795, 13282),
(29795, 13306),
(29795, 13307),
(29795, 13312),
(29795, 13316),
(29795, 13328),
(29795, 13329),
(29795, 13348),
(29795, 13349),
(29795, 13351),
(29795, 13352),
(29795, 13353),
(29795, 13354),
(29795, 13358),
(29795, 13362),
(29795, 13365),
(29795, 13366),
(29795, 13367),
(29795, 13368),
(29796, 13062),
(29796, 13422),
(29796, 13423),
(29796, 13424),
(29796, 13425),
(29799, 12896),
(29799, 13286),
(29799, 13287),
(29799, 13288),
(29799, 13289),
(29799, 13294),
(29799, 13295),
(29799, 13297),
(29799, 13298),
(29799, 13315),
(29799, 13318),
(29799, 13319),
(29799, 13323),
(29799, 13332),
(29799, 13334),
(29799, 13335),
(29799, 13337),
(29799, 13338),
(29799, 13339),
(29799, 13342),
(29799, 13344),
(29799, 13345),
(29799, 13346),
(29799, 13350),
(29799, 13392),
(29799, 13396),
(29799, 13397),
(29799, 13401),
(29801, 12885),
(29801, 12929),
(29801, 12930),
(29801, 12931),
(29801, 12937),
(29801, 12957),
(29801, 12964),
(29801, 12965),
(29801, 12984),
(29801, 12988),
(29801, 12993),
(29801, 12998),
(29801, 13007),
(29804, 12887),
(29804, 12891),
(29804, 12892),
(29804, 12893),
(29806, 12888),
(29839, 12900),
(29839, 12983),
(29839, 12989),
(29839, 12996),
(29839, 12997),
(29839, 13063),
(29855, 12909),
(29885, 12905),
(29885, 12906),
(29885, 12907),
(29937, 12913),
(29937, 12917),
(29975, 12921),
(29975, 12969),
(29975, 12970),
(29975, 12971),
(29975, 13061),
(29997, 12942),
(29997, 12953),
(29997, 12968),
(30002, 12938),
(30002, 12939),
(30002, 12943),
(30002, 13084),
(30007, 12974),
(30009, 12932),
(30009, 12933),
(30009, 12934),
(30009, 12935),
(30009, 12936),
(30009, 12948),
(30009, 12954),
(30041, 12925),
(30052, 12877),
(30052, 12986),
(30056, 12949),
(30074, 12955),
(30074, 13069),
(30082, 12879),
(30099, 12966),
(30099, 12967),
(30105, 12975),
(30105, 13011),
(30105, 13047),
(30105, 13108),
(30105, 13109),
(30115, 24796),
(30116, 24800),
(30116, 24801),
(30127, 12924),
(30127, 12976),
(30127, 12985),
(30127, 12987),
(30152, 12978),
(30152, 12979),
(30152, 12980),
(30152, 12991),
(30216, 12992),
(30216, 13071),
(30218, 12982),
(30218, 13085),
(30223, 13008),
(30223, 13036),
(30224, 13039),
(30226, 13040),
(30227, 13044),
(30232, 12999),
(30232, 13042),
(30232, 13043),
(30232, 13091),
(30232, 13092),
(30232, 13093),
(30232, 13121),
(30232, 13133),
(30232, 13137),
(30232, 13142),
(30247, 13000),
(30252, 13001),
(30294, 12994),
(30295, 13005),
(30295, 13035),
(30295, 13057),
(30344, 13225),
(30344, 13231),
(30344, 13232),
(30344, 13233),
(30344, 13314),
(30344, 13333),
(30344, 13418),
(30345, 13290),
(30345, 13291),
(30345, 13292),
(30345, 13320),
(30345, 13321),
(30345, 13322),
(30348, 13012),
(30357, 13013),
(30358, 13014),
(30359, 13015),
(30360, 13016),
(30362, 13018),
(30363, 13019),
(30364, 13033),
(30365, 13024),
(30367, 13025),
(30368, 13026),
(30369, 13027),
(30370, 13028),
(30371, 13029),
(30372, 13030),
(30373, 13031),
(30374, 13032),
(30375, 13020),
(30381, 13034),
(30381, 13037),
(30381, 13038),
(30381, 13048),
(30381, 13049),
(30381, 13058),
(30381, 13426),
(30382, 12880),
(30390, 13010),
(30401, 12973),
(30406, 13059),
(30469, 13054),
(30469, 13055),
(30469, 13056),
(30472, 12882),
(30472, 13060),
(30481, 12517),
(30481, 12518),
(30481, 12798),
(30481, 13311),
(30531, 13017),
(30533, 13022),
(30534, 13023),
(30535, 13066),
(30536, 13021),
(30537, 13065),
(30538, 13067),
(30548, 12878),
(30596, 13104),
(30596, 13105),
(30596, 13118),
(30596, 13122),
(30596, 13125),
(30631, 13106),
(30631, 13117),
(30631, 13119),
(30631, 13120),
(30631, 13134),
(30631, 13144),
(30631, 13152),
(30631, 13212),
(30631, 13220),
(30631, 13235),
(30657, 13070),
(30657, 13086),
(30671, 13096),
(30671, 13097),
(30676, 13098),
(30676, 13099),
(30676, 13111),
(30677, 13139),
(30683, 13110),
(30683, 13141),
(30686, 13130),
(30708, 13136),
(30708, 13138),
(30708, 13140),
(30708, 13211),
(30714, 13135),
(30824, 13224),
(30824, 13228),
(30824, 13230),
(30824, 13234),
(30824, 13313),
(30824, 13331),
(30824, 13419),
(30825, 13238),
(30825, 13239),
(30825, 13261),
(30825, 13355),
(30825, 13356),
(30825, 13357),
(30871, 13131),
(30871, 13132),
(30944, 13143),
(30944, 13145),
(30944, 13146),
(30944, 13147),
(30944, 13155),
(30944, 13160),
(30944, 13161),
(30944, 13162),
(30944, 13163),
(30944, 13164),
(30946, 13168),
(30946, 13169),
(30946, 13170),
(30946, 13171),
(30946, 13172),
(30946, 13174),
(30997, 13151),
(31036, 236),
(31036, 13177),
(31036, 13179),
(31036, 13197),
(31044, 13072),
(31044, 13076),
(31044, 13080),
(31044, 13083),
(31044, 13157),
(31044, 13363),
(31044, 13364),
(31044, 13402),
(31044, 13403),
(31051, 13153),
(31051, 13198),
(31052, 13154),
(31052, 13196),
(31053, 13194),
(31053, 13201),
(31054, 13156),
(31054, 13195),
(31080, 13158),
(31080, 13159),
(31082, 12800),
(31084, 13165),
(31084, 13166),
(31091, 13178),
(31091, 13180),
(31091, 13191),
(31091, 13200),
(31101, 13192),
(31101, 13202),
(31102, 13193),
(31102, 13199),
(31107, 13185),
(31107, 13223),
(31109, 13186),
(31109, 13222),
(31135, 13213),
(31151, 13183),
(31151, 13539),
(31153, 13181),
(31153, 13538),
(31154, 13214),
(31154, 13215),
(31154, 13216),
(31154, 13217),
(31154, 13218),
(31154, 13219),
(31237, 13271),
(31237, 13275),
(31237, 13390),
(31237, 13391),
(31259, 13221),
(31259, 13300),
(31259, 13482),
(31261, 13229),
(31261, 13302),
(31261, 13481),
(31412, 13257),
(31440, 13258),
(31440, 13259),
(31444, 13386),
(31444, 13387),
(31649, 13266),
(31650, 13267),
(31776, 13280),
(31776, 13296),
(31781, 13283),
(31781, 13293),
(31808, 13284),
(31808, 13309),
(31808, 13341),
(31834, 13301),
(31834, 13310),
(31834, 13340),
(31868, 13304),
(31868, 13393),
(31892, 13308),
(32301, 13330),
(32302, 13336),
(32337, 14203),
(32337, 24431),
(32363, 13369),
(32376, 13371),
(32404, 13236),
(32404, 13305),
(32404, 13394),
(32404, 13395),
(32423, 13359),
(32423, 13398),
(32430, 13373),
(32430, 13376),
(32430, 13379),
(32430, 13406),
(32444, 13380),
(32444, 13382),
(32444, 13383),
(32444, 13404),
(32497, 13360),
(32497, 13361),
(32497, 13399),
(32497, 13400),
(32516, 13571),
(32540, 13559),
(32548, 13412),
(32548, 13413),
(32548, 13414),
(32594, 13420),
(32599, 12304),
(32798, 13479),
(32798, 13483),
(32799, 13480),
(32799, 13484),
(32836, 13502),
(32837, 13503),
(33025, 13556),
(33222, 13592),
(33223, 13665),
(33223, 13847),
(33225, 13593),
(33225, 13600),
(33225, 13603),
(33225, 13616),
(33225, 13684),
(33225, 13699),
(33225, 13718),
(33309, 13745),
(33309, 13851),
(33312, 13685),
(33312, 13703),
(33312, 13713),
(33312, 13714),
(33312, 13741),
(33312, 13742),
(33312, 13743),
(33315, 13744),
(33335, 13688),
(33335, 13704),
(33335, 13715),
(33335, 13723),
(33335, 13746),
(33335, 13747),
(33335, 13748),
(33361, 13691),
(33361, 13697),
(33361, 13707),
(33361, 13726),
(33361, 13762),
(33361, 13763),
(33361, 13764),
(33372, 13693),
(33372, 13708),
(33372, 13719),
(33372, 13727),
(33372, 13768),
(33372, 13769),
(33372, 13770),
(33373, 13695),
(33373, 13710),
(33373, 13721),
(33373, 13729),
(33373, 13778),
(33373, 13779),
(33373, 13780),
(33379, 13696),
(33379, 13711),
(33379, 13722),
(33379, 13731),
(33379, 13783),
(33379, 13784),
(33379, 13785),
(33403, 13694),
(33403, 13709),
(33403, 13720),
(33403, 13728),
(33403, 13773),
(33403, 13774),
(33403, 13775),
(33405, 13765),
(33417, 13633),
(33417, 13634),
(33417, 13641),
(33417, 13643),
(33417, 13654),
(33417, 13663),
(33417, 13664),
(33417, 14016),
(33417, 14017),
(33532, 13927),
(33532, 13930),
(33532, 13934),
(33532, 13951),
(33532, 13955),
(33532, 13957),
(33533, 13926),
(33533, 13929),
(33533, 13933),
(33533, 13937),
(33533, 13950),
(33533, 13954),
(33533, 13956),
(33538, 13786),
(33539, 13776),
(33540, 13771),
(33541, 13781),
(33542, 13668),
(33542, 13673),
(33542, 13674),
(33542, 13675),
(33542, 13678),
(33542, 13680),
(33542, 13829),
(33544, 13767),
(33544, 13856),
(33545, 13772),
(33545, 13857),
(33547, 13782),
(33547, 13860),
(33548, 13787),
(33548, 13859),
(33549, 13777),
(33549, 13858),
(33592, 13689),
(33592, 13706),
(33592, 13717),
(33592, 13725),
(33592, 13757),
(33592, 13758),
(33592, 13759),
(33593, 13690),
(33593, 13705),
(33593, 13716),
(33593, 13724),
(33593, 13752),
(33593, 13753),
(33593, 13754),
(33625, 13666),
(33625, 13667),
(33625, 13669),
(33625, 13670),
(33625, 13672),
(33625, 13679),
(33625, 13828),
(33646, 13671),
(33646, 13837),
(33647, 13625),
(33647, 13835),
(33648, 13749),
(33649, 13750),
(33649, 13852),
(33652, 13760),
(33654, 13761),
(33654, 13855),
(33655, 13755),
(33656, 13756),
(33656, 13854),
(33658, 13676),
(33658, 13839),
(33659, 13677),
(33659, 13838),
(33759, 13682),
(33759, 13794),
(33759, 13809),
(33759, 13861),
(33759, 13862),
(33762, 13788),
(33762, 13795),
(33762, 13812),
(33762, 13863),
(33762, 13864),
(33763, 13789),
(33763, 13810),
(33769, 13791),
(33769, 13813),
(33770, 13793),
(33770, 13814),
(33771, 13790),
(33771, 13811),
(33817, 13702),
(33817, 13732),
(33817, 13733),
(33817, 13734),
(33817, 13735),
(33817, 13736),
(33817, 13737),
(33817, 13738),
(33817, 13739),
(33817, 13740),
(33817, 24442),
(33817, 24795),
(33817, 24798),
(33817, 24799),
(33956, 13606),
(33956, 13607),
(33956, 13609),
(33956, 13610),
(33956, 13611),
(33957, 13816),
(33957, 13821),
(33957, 13822),
(33957, 13823),
(33957, 13824),
(34210, 13846),
(34320, 13889),
(34320, 13903),
(34320, 13904),
(34320, 13905),
(34320, 13914),
(34320, 13915),
(34320, 13916),
(34320, 13917),
(34365, 13959),
(34365, 13960),
(34435, 13952),
(34476, 14174),
(34477, 14175),
(34478, 14167),
(34479, 14170),
(34480, 14176),
(34481, 14168),
(34482, 14177),
(34483, 14171),
(34484, 14169),
(34526, 13986),
(34644, 14024),
(34653, 14064),
(34654, 14065),
(34675, 14033),
(34676, 14030),
(34676, 14035),
(34677, 14047),
(34678, 14041),
(34679, 14040),
(34679, 14043),
(34679, 14047),
(34708, 14048),
(34708, 14051),
(34710, 14053),
(34711, 14054),
(34712, 14059),
(34713, 14061),
(34713, 14062),
(34714, 14060),
(34744, 14055),
(34768, 14058),
(34771, 14136),
(34771, 14140),
(34771, 14142),
(34771, 14143),
(34771, 14144),
(34880, 14074),
(34880, 14077),
(34880, 14080),
(34880, 14096),
(34880, 14152),
(34882, 14101),
(34882, 14102),
(34882, 14104),
(34882, 14105),
(34912, 14076),
(34912, 14090),
(34912, 14112),
(34914, 14092),
(34914, 14141),
(34914, 14145),
(35068, 14100),
(35073, 14111),
(35094, 14095),
(35094, 14107),
(35094, 14108),
(35256, 14166),
(35260, 14172),
(35261, 14173),
(36208, 3121),
(36273, 6144),
(36273, 14351),
(36273, 14352),
(36273, 14353),
(36273, 14355),
(36273, 14356),
(36296, 14488),
(36479, 14409),
(36517, 14418),
(36624, 14441),
(36624, 14443),
(36624, 24454),
(36624, 24461),
(36624, 24476),
(36624, 24480),
(36624, 24553),
(36624, 24595),
(36642, 24554),
(36642, 24558),
(36642, 24559),
(36642, 24560),
(36642, 24561),
(36642, 24564),
(36642, 24594),
(36642, 24596),
(36642, 24598),
(36669, 14444),
(36669, 14457),
(36669, 20438),
(36669, 20439),
(36670, 24451),
(36670, 24555),
(36670, 24556),
(36670, 24557),
(36955, 24500),
(36990, 24682),
(36993, 24683),
(37120, 24545),
(37120, 24547),
(37120, 24548),
(37120, 24549),
(37120, 24743),
(37120, 24748),
(37120, 24749),
(37120, 24756),
(37120, 24757),
(37120, 24914),
(37120, 24915),
(37120, 24916),
(37120, 24917),
(37120, 24918),
(37120, 24919),
(37172, 14483),
(37172, 24536),
(37172, 24541),
(37172, 24576),
(37172, 24638),
(37172, 24645),
(37172, 24647),
(37172, 24648),
(37172, 24649),
(37172, 24650),
(37172, 24651),
(37172, 24652),
(37172, 24805),
(37221, 24711),
(37223, 24713);
INSERT INTO `creature_quest_finisher` (`id`, `quest`) VALUES
(37527, 24522),
(37527, 24535),
(37527, 24562),
(37527, 24563),
(37554, 24802),
(37591, 24498),
(37592, 24507),
(37596, 24506),
(37596, 24511),
(37597, 24510),
(37675, 24629),
(37675, 24635),
(37675, 24636),
(38066, 24655),
(38066, 24658),
(38066, 24659),
(38066, 24660),
(38066, 24662),
(38066, 24663),
(38066, 24664),
(38066, 24665),
(38066, 24666),
(38160, 24499),
(38161, 24511),
(38188, 24710),
(38189, 24712),
(38208, 24792),
(38208, 24793),
(38294, 24803),
(38294, 24806),
(38316, 24815),
(38316, 24823),
(38316, 24825),
(38316, 24826),
(38316, 24827),
(38316, 24828),
(38316, 24829),
(38316, 24830),
(38316, 24831),
(38316, 24832),
(38316, 24833),
(38316, 24834),
(38316, 24835),
(38316, 24836),
(38316, 24837),
(38316, 24838),
(38316, 24839),
(38316, 24840),
(38316, 24841),
(38316, 24842),
(38316, 24843),
(38316, 24844),
(38316, 24845),
(38316, 24846),
(38316, 24847),
(38316, 25239),
(38316, 25240),
(38316, 25242),
(38316, 25246),
(38316, 25248),
(38316, 25249),
(38328, 24850),
(38328, 24851),
(38471, 24869),
(38471, 24875),
(38491, 24870),
(38491, 24877),
(38492, 24871),
(38492, 24876),
(38501, 24873),
(38501, 24878),
(38551, 24874),
(38551, 24879),
(38589, 24872),
(38589, 24880),
(39271, 25287),
(39386, 25212),
(39509, 24819),
(39509, 24820),
(39509, 24821),
(39509, 24822),
(39509, 24836),
(39509, 24837),
(39509, 24838),
(39509, 24839),
(39509, 24840),
(39509, 24841),
(39509, 24842),
(39509, 24843),
(39509, 24844),
(39509, 24845),
(39509, 24846),
(39509, 24847),
(39509, 25246),
(39509, 25247),
(39509, 25248),
(39509, 25249),
(39678, 25283),
(40391, 25480),
(40429, 26013);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2011 at 05:28 odp.
-- Server version: 5.5.8
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `whydb_world`
--

-- --------------------------------------------------------

--
-- Table structure for table `creature_quest_starter`
--

DROP TABLE IF EXISTS `creature_quest_starter`;
CREATE TABLE IF NOT EXISTS `creature_quest_starter` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED COMMENT='Creature System';

--
-- Dumping data for table `creature_quest_starter`
--

INSERT INTO `creature_quest_starter` (`id`, `quest`) VALUES
(196, 33),
(197, 7),
(197, 15),
(197, 21),
(197, 54),
(197, 3100),
(197, 3101),
(197, 3102),
(197, 3103),
(197, 3104),
(197, 3105),
(233, 9),
(234, 12),
(234, 13),
(234, 14),
(234, 65),
(234, 135),
(234, 142),
(234, 144),
(234, 166),
(235, 22),
(235, 38),
(237, 64),
(238, 36),
(238, 151),
(239, 48),
(239, 49),
(239, 50),
(239, 51),
(239, 53),
(239, 117),
(240, 35),
(240, 59),
(240, 62),
(240, 76),
(240, 147),
(240, 239),
(241, 40),
(241, 47),
(244, 88),
(246, 84),
(246, 85),
(247, 86),
(247, 87),
(248, 107),
(251, 106),
(252, 111),
(253, 60),
(253, 61),
(253, 112),
(253, 114),
(255, 16),
(261, 37),
(261, 39),
(261, 46),
(261, 52),
(261, 109),
(263, 146),
(263, 251),
(263, 253),
(264, 56),
(264, 57),
(264, 58),
(264, 80),
(264, 98),
(264, 228),
(264, 229),
(265, 66),
(265, 101),
(265, 149),
(265, 157),
(265, 265),
(266, 132),
(267, 67),
(267, 69),
(267, 97),
(267, 266),
(267, 1042),
(268, 227),
(268, 252),
(268, 401),
(270, 377),
(272, 90),
(272, 93),
(272, 240),
(273, 79),
(273, 156),
(273, 159),
(273, 453),
(276, 174),
(276, 175),
(276, 181),
(278, 83),
(288, 5),
(288, 268),
(289, 133),
(289, 134),
(289, 148),
(289, 158),
(289, 160),
(294, 75),
(294, 78),
(294, 1667),
(295, 70),
(297, 72),
(302, 154),
(302, 177),
(311, 55),
(311, 95),
(311, 262),
(311, 269),
(311, 323),
(313, 94),
(328, 1860),
(328, 1919),
(332, 141),
(332, 350),
(332, 395),
(332, 2206),
(332, 2360),
(332, 2607),
(332, 6183),
(332, 6184),
(338, 1363),
(341, 89),
(341, 125),
(341, 347),
(342, 34),
(342, 131),
(343, 92),
(344, 120),
(344, 143),
(344, 145),
(346, 116),
(349, 219),
(352, 6285),
(375, 5623),
(376, 8254),
(377, 5624),
(379, 129),
(381, 127),
(381, 150),
(382, 19),
(382, 20),
(382, 115),
(384, 7677),
(384, 7678),
(392, 103),
(392, 104),
(392, 152),
(415, 118),
(415, 122),
(415, 124),
(415, 126),
(415, 1097),
(459, 1598),
(460, 1599),
(461, 4738),
(461, 4968),
(461, 8419),
(464, 130),
(464, 244),
(466, 121),
(467, 155),
(469, 200),
(469, 202),
(469, 330),
(482, 394),
(482, 1243),
(482, 1246),
(482, 1248),
(482, 2745),
(491, 6181),
(514, 119),
(514, 1097),
(523, 6281),
(576, 231),
(620, 3861),
(633, 163),
(633, 164),
(633, 165),
(656, 167),
(656, 168),
(658, 179),
(658, 233),
(658, 3106),
(658, 3107),
(658, 3108),
(658, 3109),
(658, 3110),
(658, 3112),
(658, 3113),
(658, 3114),
(658, 3115),
(661, 1043),
(661, 1044),
(663, 173),
(663, 221),
(663, 222),
(663, 223),
(713, 170),
(714, 183),
(714, 234),
(715, 194),
(715, 195),
(715, 196),
(715, 197),
(715, 208),
(716, 338),
(716, 339),
(716, 340),
(716, 341),
(716, 342),
(716, 583),
(717, 185),
(717, 186),
(717, 187),
(717, 188),
(718, 190),
(718, 191),
(718, 192),
(718, 193),
(733, 203),
(733, 204),
(733, 574),
(737, 189),
(737, 209),
(737, 213),
(738, 215),
(739, 205),
(739, 206),
(739, 207),
(770, 210),
(773, 198),
(773, 201),
(773, 616),
(773, 622),
(773, 627),
(773, 1116),
(773, 1117),
(773, 2864),
(786, 182),
(786, 218),
(786, 282),
(820, 214),
(821, 102),
(823, 6),
(823, 18),
(823, 783),
(823, 3903),
(823, 5261),
(836, 3365),
(837, 5626),
(840, 1244),
(840, 1245),
(859, 386),
(878, 153),
(888, 245),
(893, 226),
(895, 6074),
(900, 91),
(903, 128),
(913, 1638),
(917, 2205),
(917, 2300),
(918, 8233),
(927, 2998),
(928, 3000),
(928, 7637),
(928, 7640),
(928, 7641),
(928, 7643),
(928, 7646),
(928, 7647),
(928, 7666),
(928, 7669),
(928, 8415),
(951, 345),
(951, 346),
(963, 11),
(986, 8410),
(988, 8419),
(1068, 782),
(1068, 793),
(1070, 246),
(1071, 304),
(1073, 274),
(1074, 303),
(1074, 378),
(1075, 631),
(1075, 633),
(1075, 634),
(1076, 306),
(1077, 299),
(1078, 294),
(1078, 295),
(1078, 296),
(1089, 224),
(1090, 263),
(1091, 237),
(1092, 217),
(1092, 267),
(1093, 161),
(1093, 250),
(1093, 278),
(1093, 280),
(1105, 273),
(1105, 301),
(1105, 436),
(1139, 255),
(1141, 212),
(1141, 1260),
(1141, 1271),
(1154, 385),
(1156, 271),
(1182, 261),
(1182, 1052),
(1187, 257),
(1187, 258),
(1187, 531),
(1212, 270),
(1217, 293),
(1217, 321),
(1217, 322),
(1217, 526),
(1226, 5625),
(1228, 1879),
(1228, 1919),
(1229, 1679),
(1231, 6064),
(1231, 6084),
(1231, 6085),
(1231, 6086),
(1232, 2997),
(1234, 2218),
(1234, 2299),
(1239, 288),
(1239, 289),
(1239, 290),
(1239, 463),
(1242, 279),
(1242, 281),
(1244, 275),
(1244, 276),
(1244, 277),
(1252, 287),
(1252, 291),
(1254, 432),
(1261, 7673),
(1261, 7674),
(1265, 314),
(1266, 312),
(1267, 384),
(1267, 4126),
(1268, 2926),
(1268, 2962),
(1269, 412),
(1284, 3636),
(1293, 12455),
(1293, 12457),
(1293, 12463),
(1293, 12466),
(1309, 1941),
(1309, 1942),
(1323, 6261),
(1340, 416),
(1340, 467),
(1340, 468),
(1340, 1339),
(1342, 455),
(1343, 307),
(1343, 1338),
(1344, 298),
(1344, 704),
(1344, 738),
(1345, 297),
(1356, 302),
(1356, 525),
(1356, 707),
(1356, 2398),
(1365, 7062),
(1373, 308),
(1374, 315),
(1374, 319),
(1374, 320),
(1374, 413),
(1375, 310),
(1377, 313),
(1377, 466),
(1378, 317),
(1378, 318),
(1379, 309),
(1416, 325),
(1416, 353),
(1416, 1705),
(1416, 1706),
(1416, 7642),
(1416, 7648),
(1422, 331),
(1427, 333),
(1428, 334),
(1432, 332),
(1435, 335),
(1435, 336),
(1435, 397),
(1440, 344),
(1440, 538),
(1442, 1418),
(1443, 1424),
(1443, 1429),
(1443, 1445),
(1444, 343),
(1449, 349),
(1470, 17),
(1470, 2500),
(1470, 2501),
(1495, 356),
(1495, 360),
(1496, 404),
(1496, 426),
(1496, 1819),
(1496, 1820),
(1497, 409),
(1497, 411),
(1498, 357),
(1498, 366),
(1498, 446),
(1499, 358),
(1499, 359),
(1499, 405),
(1499, 408),
(1499, 441),
(1500, 354),
(1500, 355),
(1500, 362),
(1500, 1821),
(1500, 1822),
(1515, 370),
(1515, 371),
(1515, 372),
(1515, 427),
(1518, 367),
(1518, 368),
(1518, 369),
(1518, 407),
(1518, 445),
(1518, 492),
(1519, 365),
(1521, 375),
(1568, 363),
(1569, 364),
(1569, 3095),
(1569, 3096),
(1569, 3097),
(1569, 3098),
(1569, 3099),
(1569, 3901),
(1570, 380),
(1570, 381),
(1570, 382),
(1570, 383),
(1572, 6391),
(1573, 6392),
(1646, 389),
(1646, 393),
(1646, 396),
(1646, 399),
(1652, 374),
(1661, 376),
(1661, 6395),
(1681, 6387),
(1694, 5541),
(1719, 387),
(1719, 391),
(1719, 392),
(1721, 388),
(1740, 3902),
(1748, 6182),
(1748, 7782),
(1776, 1389),
(1842, 5944),
(1854, 8416),
(1855, 5542),
(1855, 5543),
(1855, 5544),
(1855, 5742),
(1855, 5781),
(1855, 5845),
(1855, 5846),
(1855, 5861),
(1872, 400),
(1872, 415),
(1937, 430),
(1937, 444),
(1937, 447),
(1937, 448),
(1937, 451),
(1937, 493),
(1937, 1359),
(1938, 99),
(1938, 421),
(1938, 422),
(1938, 423),
(1938, 424),
(1938, 482),
(1938, 1014),
(1950, 425),
(1950, 429),
(1950, 449),
(1952, 428),
(1952, 437),
(1952, 438),
(1952, 440),
(1952, 442),
(1952, 443),
(1952, 1098),
(1952, 3221),
(1959, 414),
(1960, 419),
(1963, 418),
(1965, 420),
(1977, 433),
(1978, 435),
(1992, 459),
(2050, 530),
(2055, 450),
(2055, 515),
(2055, 1109),
(2055, 1113),
(2057, 454),
(2058, 452),
(2077, 458),
(2078, 475),
(2078, 483),
(2078, 486),
(2079, 456),
(2079, 457),
(2079, 3116),
(2079, 3117),
(2079, 3118),
(2079, 3119),
(2079, 3120),
(2080, 918),
(2080, 919),
(2080, 922),
(2080, 941),
(2080, 2499),
(2081, 489),
(2082, 916),
(2082, 917),
(2082, 920),
(2083, 489),
(2083, 997),
(2083, 1581),
(2086, 473),
(2092, 1179),
(2093, 469),
(2094, 471),
(2094, 484),
(2096, 305),
(2097, 472),
(2104, 464),
(2104, 465),
(2107, 476),
(2111, 470),
(2121, 477),
(2121, 479),
(2121, 480),
(2121, 481),
(2121, 516),
(2123, 5651),
(2128, 1881),
(2128, 1959),
(2129, 5650),
(2130, 1885),
(2131, 1818),
(2142, 171),
(2150, 488),
(2151, 487),
(2151, 489),
(2151, 1684),
(2155, 489),
(2198, 1015),
(2198, 5066),
(2198, 7494),
(2214, 494),
(2215, 527),
(2215, 528),
(2215, 529),
(2215, 532),
(2215, 539),
(2215, 541),
(2215, 550),
(2215, 14351),
(2216, 496),
(2216, 499),
(2216, 501),
(2216, 502),
(2216, 509),
(2216, 513),
(2216, 517),
(2216, 524),
(2216, 1066),
(2216, 1067),
(2216, 2934),
(2216, 2935),
(2216, 2938),
(2226, 6323),
(2227, 495),
(2228, 536),
(2228, 559),
(2228, 560),
(2228, 562),
(2228, 563),
(2229, 498),
(2229, 503),
(2229, 507),
(2229, 533),
(2229, 1361),
(2263, 500),
(2263, 504),
(2263, 561),
(2276, 505),
(2276, 512),
(2276, 523),
(2276, 537),
(2277, 514),
(2277, 540),
(2277, 542),
(2277, 554),
(2278, 518),
(2278, 519),
(2278, 520),
(2278, 521),
(2285, 543),
(2285, 4766),
(2308, 3341),
(2316, 506),
(2317, 508),
(2333, 535),
(2357, 7645),
(2382, 564),
(2391, 2480),
(2393, 7321),
(2410, 544),
(2410, 545),
(2418, 546),
(2419, 547),
(2425, 1048),
(2425, 5725),
(2425, 6145),
(2425, 6521),
(2429, 552),
(2429, 553),
(2430, 555),
(2437, 556),
(2437, 557),
(2438, 565),
(2464, 568),
(2464, 569),
(2465, 570),
(2465, 571),
(2465, 572),
(2465, 573),
(2486, 348),
(2487, 604),
(2487, 608),
(2487, 670),
(2488, 587),
(2490, 595),
(2490, 599),
(2491, 580),
(2493, 576),
(2494, 617),
(2494, 623),
(2495, 575),
(2495, 577),
(2495, 628),
(2496, 578),
(2496, 601),
(2496, 602),
(2496, 1182),
(2496, 1183),
(2497, 581),
(2497, 582),
(2497, 584),
(2497, 638),
(2497, 2932),
(2498, 600),
(2498, 605),
(2498, 621),
(2498, 1119),
(2498, 1127),
(2500, 614),
(2500, 615),
(2500, 8551),
(2500, 8553),
(2501, 606),
(2501, 609),
(2501, 613),
(2501, 2872),
(2502, 607),
(2504, 579),
(2519, 589),
(2519, 591),
(2519, 592),
(2519, 596),
(2519, 598),
(2519, 629),
(2530, 593),
(2542, 610),
(2542, 611),
(2543, 603),
(2545, 1036),
(2546, 4621),
(2546, 9272),
(2594, 618),
(2594, 8554),
(2610, 667),
(2610, 669),
(2634, 630),
(2670, 4782),
(2670, 4785),
(2695, 683),
(2696, 647),
(2700, 681),
(2700, 682),
(2703, 639),
(2703, 640),
(2703, 643),
(2703, 644),
(2703, 645),
(2706, 641),
(2706, 671),
(2706, 672),
(2706, 673),
(2706, 674),
(2706, 701),
(2706, 702),
(2708, 690),
(2711, 659),
(2712, 657),
(2712, 658),
(2712, 661),
(2713, 660),
(2766, 663),
(2767, 662),
(2768, 665),
(2769, 664),
(2770, 676),
(2771, 677),
(2771, 678),
(2771, 679),
(2772, 680),
(2774, 666),
(2774, 668),
(2784, 686),
(2784, 4341),
(2784, 4362),
(2785, 656),
(2785, 692),
(2785, 709),
(2785, 727),
(2785, 728),
(2786, 687),
(2786, 735),
(2786, 737),
(2786, 971),
(2787, 687),
(2788, 691),
(2788, 695),
(2789, 693),
(2789, 694),
(2789, 696),
(2789, 697),
(2790, 689),
(2790, 700),
(2792, 655),
(2792, 675),
(2792, 847),
(2817, 703),
(2817, 705),
(2817, 1559),
(2817, 2418),
(2860, 706),
(2860, 718),
(2860, 733),
(2888, 717),
(2888, 732),
(2909, 722),
(2909, 723),
(2910, 719),
(2910, 721),
(2910, 724),
(2911, 943),
(2912, 730),
(2912, 942),
(2913, 729),
(2913, 741),
(2916, 725),
(2916, 762),
(2916, 2946),
(2916, 2964),
(2916, 3448),
(2916, 7063),
(2917, 731),
(2918, 726),
(2918, 1139),
(2920, 715),
(2920, 716),
(2920, 777),
(2921, 710),
(2921, 711),
(2921, 712),
(2921, 713),
(2921, 714),
(2921, 734),
(2921, 778),
(2921, 4063),
(2930, 4811),
(2930, 4812),
(2934, 736),
(2934, 737),
(2934, 1013),
(2947, 761),
(2948, 748),
(2948, 754),
(2948, 756),
(2948, 758),
(2948, 759),
(2948, 760),
(2980, 747),
(2980, 750),
(2980, 780),
(2980, 3091),
(2980, 3092),
(2980, 3093),
(2980, 3094),
(2981, 752),
(2981, 755),
(2981, 763),
(2982, 757),
(2984, 773),
(2985, 743),
(2986, 1149),
(2986, 1150),
(2986, 1151),
(2986, 1152),
(2987, 744),
(2988, 749),
(2988, 764),
(2988, 765),
(2991, 753),
(2993, 745),
(2993, 746),
(2993, 767),
(2994, 775),
(2995, 6364),
(3030, 8410),
(3030, 14100),
(3031, 8410),
(3032, 1523),
(3032, 8410),
(3033, 27),
(3033, 5922),
(3033, 6002),
(3033, 6126),
(3033, 9063),
(3034, 9063),
(3038, 6065),
(3038, 8151),
(3041, 1718),
(3041, 8417),
(3045, 8254),
(3046, 8254),
(3047, 8250),
(3048, 2861),
(3049, 1959),
(3049, 8250),
(3050, 768),
(3050, 769),
(3052, 861),
(3054, 771),
(3054, 772),
(3055, 766),
(3057, 776),
(3060, 5927),
(3061, 6066),
(3063, 1505),
(3064, 5926),
(3065, 6061),
(3065, 6087),
(3065, 6088),
(3065, 6089),
(3065, 10530),
(3066, 2984),
(3066, 2986),
(3139, 784),
(3139, 825),
(3139, 831),
(3139, 837),
(3140, 786),
(3142, 806),
(3142, 828),
(3143, 788),
(3143, 789),
(3143, 2383),
(3143, 3065),
(3143, 3082),
(3143, 3083),
(3143, 3084),
(3143, 3085),
(3143, 3086),
(3143, 3087),
(3143, 3088),
(3143, 3089),
(3143, 3090),
(3144, 787),
(3145, 792),
(3145, 794),
(3145, 805),
(3147, 791),
(3154, 6068),
(3169, 1505),
(3170, 1859),
(3170, 2380),
(3171, 6062),
(3171, 6067),
(3171, 6081),
(3171, 6082),
(3171, 6083),
(3173, 2983),
(3173, 2985),
(3188, 808),
(3188, 823),
(3188, 826),
(3188, 2936),
(3188, 2937),
(3189, 813),
(3190, 812),
(3191, 815),
(3193, 816),
(3194, 817),
(3208, 827),
(3208, 829),
(3209, 3376),
(3216, 809),
(3216, 5730),
(3216, 5761),
(3230, 9400),
(3230, 9405),
(3230, 9438),
(3230, 9495),
(3230, 10121),
(3230, 10136),
(3230, 10390),
(3230, 10391),
(3230, 10392),
(3230, 10756),
(3230, 10876),
(3233, 833),
(3287, 790),
(3287, 804),
(3292, 821),
(3292, 822),
(3293, 834),
(3293, 835),
(3294, 1506),
(3304, 818),
(3310, 6386),
(3324, 8419),
(3325, 8419),
(3326, 4737),
(3326, 4967),
(3326, 8419),
(3328, 8233),
(3332, 6608),
(3336, 840),
(3337, 842),
(3338, 844),
(3338, 845),
(3338, 881),
(3338, 903),
(3338, 905),
(3338, 3261),
(3339, 891),
(3341, 843),
(3341, 846),
(3341, 849),
(3344, 8410),
(3354, 1505),
(3354, 1718),
(3354, 1823),
(3354, 8417),
(3362, 7660),
(3362, 7661),
(3373, 6623),
(3387, 874),
(3387, 882),
(3387, 907),
(3387, 913),
(3387, 1130),
(3387, 6382),
(3388, 873),
(3389, 850),
(3389, 851),
(3389, 852),
(3389, 855),
(3389, 1362),
(3389, 4021),
(3390, 848),
(3390, 853),
(3390, 1492),
(3391, 887),
(3391, 888),
(3391, 890),
(3391, 1180),
(3399, 6611),
(3401, 2379),
(3401, 2458),
(3401, 2460),
(3401, 2479),
(3402, 2382),
(3403, 8410),
(3406, 8151),
(3407, 6069),
(3407, 6070),
(3412, 2841),
(3412, 2950),
(3413, 2842),
(3418, 854),
(3419, 962),
(3419, 1065),
(3419, 1086),
(3421, 857),
(3428, 868),
(3428, 1145),
(3428, 1184),
(3429, 871),
(3429, 872),
(3429, 5041),
(3429, 6541),
(3430, 878),
(3430, 879),
(3430, 889),
(3430, 906),
(3430, 5042),
(3430, 5043),
(3430, 5044),
(3430, 5045),
(3430, 5046),
(3430, 5052),
(3432, 899),
(3432, 4921),
(3433, 893),
(3433, 1153),
(3439, 858),
(3439, 863),
(3441, 860),
(3441, 1131),
(3441, 1136),
(3441, 1205),
(3442, 894),
(3442, 1095),
(3442, 1483),
(3442, 3921),
(3443, 862),
(3446, 865),
(3446, 866),
(3446, 1069),
(3446, 1221),
(3446, 1491),
(3448, 870),
(3448, 877),
(3448, 880),
(3448, 1489),
(3448, 3301),
(3448, 6128),
(3448, 6129),
(3449, 867),
(3449, 875),
(3449, 876),
(3449, 1060),
(3453, 892),
(3453, 896),
(3453, 1040),
(3453, 1112),
(3464, 869),
(3464, 1510),
(3464, 3281),
(3465, 898),
(3483, 6361),
(3484, 1946),
(3489, 6365),
(3494, 3633),
(3494, 3634),
(3494, 3637),
(3514, 921),
(3514, 928),
(3515, 929),
(3515, 933),
(3515, 935),
(3515, 7383),
(3516, 952),
(3516, 3764),
(3516, 3781),
(3516, 3803),
(3516, 6761),
(3517, 923),
(3517, 2498),
(3519, 937),
(3519, 940),
(3520, 5050),
(3521, 924),
(3567, 932),
(3567, 2438),
(3567, 2459),
(3568, 938),
(3583, 947),
(3583, 948),
(3584, 945),
(3595, 5622),
(3596, 6072),
(3598, 1684),
(3599, 2241),
(3599, 2259),
(3600, 5621),
(3601, 6063),
(3601, 6101),
(3601, 6102),
(3601, 6103),
(3602, 5923),
(3615, 6362),
(3615, 6384),
(3616, 944),
(3616, 951),
(3616, 960),
(3616, 961),
(3639, 953),
(3644, 963),
(3649, 954),
(3649, 958),
(3649, 1442),
(3649, 4762),
(3649, 4763),
(3649, 10752),
(3650, 955),
(3650, 956),
(3650, 957),
(3657, 965),
(3661, 966),
(3661, 967),
(3661, 981),
(3661, 1143),
(3663, 970),
(3663, 973),
(3663, 1140),
(3663, 1167),
(3665, 959),
(3666, 983),
(3666, 1579),
(3666, 1580),
(3685, 7662),
(3685, 7663),
(3691, 991),
(3691, 1024),
(3691, 1025),
(3691, 1030),
(3691, 1054),
(3692, 994),
(3692, 995),
(3693, 984),
(3693, 985),
(3693, 986),
(3693, 993),
(3693, 4761),
(3694, 990),
(3701, 2118),
(3701, 2138),
(3701, 2139),
(3702, 2178),
(3702, 6123),
(3702, 6124),
(3706, 5648),
(3707, 5649),
(3836, 3182),
(3838, 6342),
(3845, 1008),
(3845, 1134),
(3845, 4581),
(3846, 1007),
(3846, 1009),
(3847, 1010),
(3847, 1020),
(3848, 1011),
(3848, 1012),
(3848, 9519),
(3880, 1022),
(3880, 1037),
(3885, 1016),
(3885, 1017),
(3891, 1023),
(3894, 1033),
(3894, 1034),
(3894, 1035),
(3897, 1045),
(3897, 1046),
(3901, 1021),
(3901, 1032),
(3916, 1026),
(3916, 1027),
(3916, 1028),
(3916, 1029),
(3920, 1031),
(3936, 2866),
(3936, 3130),
(3936, 4267),
(3945, 1041),
(3978, 1049),
(3978, 2440),
(3978, 2965),
(3979, 1050),
(3980, 1053),
(3981, 1051),
(3994, 1057),
(3994, 1059),
(3995, 1058),
(3996, 1056),
(4046, 1064),
(4046, 3562),
(4046, 5088),
(4047, 1061),
(4047, 7541),
(4048, 1101),
(4049, 1062),
(4049, 1063),
(4049, 1068),
(4077, 1071),
(4077, 1072),
(4077, 1075),
(4077, 1079),
(4077, 1080),
(4077, 1091),
(4077, 2931),
(4078, 1076),
(4078, 1077),
(4078, 1078),
(4079, 1070),
(4079, 1081),
(4080, 1082),
(4080, 1083),
(4080, 1084),
(4080, 1085),
(4081, 1073),
(4081, 1074),
(4088, 1683),
(4088, 1686),
(4088, 1692),
(4090, 8254),
(4091, 8254),
(4146, 6071),
(4163, 2242),
(4197, 1511),
(4198, 1087),
(4198, 1088),
(4198, 1089),
(4200, 6343),
(4201, 1093),
(4201, 1094),
(4201, 1096),
(4205, 6073),
(4205, 8151),
(4214, 2260),
(4215, 8233),
(4217, 26),
(4217, 3785),
(4217, 5921),
(4217, 6001),
(4217, 6121),
(4217, 6762),
(4217, 9063),
(4218, 9063),
(4241, 6344),
(4256, 6388),
(4276, 1090),
(4276, 1092),
(4451, 1102),
(4452, 1110),
(4452, 1111),
(4452, 1114),
(4452, 1115),
(4452, 1118),
(4452, 1120),
(4452, 1121),
(4452, 1122),
(4452, 5762),
(4453, 1105),
(4453, 1107),
(4453, 2770),
(4454, 1104),
(4454, 1106),
(4483, 1147),
(4484, 976),
(4485, 1146),
(4485, 2981),
(4485, 3504),
(4486, 1164),
(4488, 1160),
(4488, 1394),
(4488, 6628),
(4489, 1154),
(4489, 1159),
(4489, 6627),
(4498, 1435),
(4498, 1481),
(4498, 1482),
(4498, 1484),
(4500, 1166),
(4500, 1171),
(4500, 1173),
(4501, 1169),
(4501, 1170),
(4501, 1172),
(4501, 11225),
(4502, 1168),
(4503, 1177),
(4508, 1144),
(4510, 1142),
(4544, 2973),
(4544, 2974),
(4544, 2976),
(4551, 6324),
(4556, 6322),
(4563, 4739),
(4563, 4969),
(4563, 8419),
(4564, 8419),
(4565, 8419),
(4567, 8250),
(4568, 1882),
(4568, 1943),
(4568, 1953),
(4568, 1960),
(4568, 1961),
(4568, 2861),
(4576, 1962),
(4583, 8233),
(4586, 3526),
(4586, 3635),
(4593, 8417),
(4595, 1718),
(4595, 1818),
(4606, 8254),
(4608, 8254),
(4618, 1108),
(4618, 1137),
(4629, 1175),
(4630, 1176),
(4630, 1178),
(4630, 1186),
(4630, 1190),
(4630, 1192),
(4631, 1181),
(4706, 1187),
(4706, 1188),
(4708, 1189),
(4709, 1191),
(4721, 1195),
(4721, 1196),
(4722, 1197),
(4730, 7671),
(4730, 7672),
(4784, 1199),
(4786, 1198),
(4787, 1200),
(4787, 6561),
(4791, 1201),
(4791, 1202),
(4791, 1240),
(4791, 1262),
(4791, 11213),
(4791, 11215),
(4792, 1203),
(4792, 1206),
(4792, 1218),
(4794, 1204),
(4794, 1258),
(4880, 1222),
(4880, 1270),
(4921, 1282),
(4921, 11212),
(4926, 1276),
(4926, 1321),
(4926, 11124),
(4926, 11200),
(4926, 11201),
(4926, 11203),
(4941, 1320),
(4943, 11204),
(4944, 1259),
(4944, 1286),
(4944, 1319),
(4944, 11123),
(4944, 11143),
(4944, 11152),
(4947, 1220),
(4948, 1285),
(4949, 4002),
(4949, 4003),
(4949, 4974),
(4949, 5726),
(4949, 5727),
(4949, 5728),
(4949, 5729),
(4949, 6566),
(4949, 6567),
(4949, 7784),
(4949, 9441),
(4949, 9627),
(4949, 10212),
(4959, 1242),
(4960, 1241),
(4961, 1247),
(4961, 1447),
(4962, 1250),
(4963, 1249),
(4963, 1264),
(4964, 1265),
(4966, 1324),
(4967, 1266),
(4967, 7070),
(4968, 1267),
(4968, 11142),
(4982, 1274),
(4983, 1273),
(4984, 3765),
(5081, 1301),
(5082, 1302),
(5086, 11137),
(5086, 11138),
(5087, 1322),
(5087, 1323),
(5089, 1287),
(5111, 3763),
(5111, 3789),
(5111, 8353),
(5113, 1718),
(5113, 8417),
(5116, 8151),
(5117, 6075),
(5117, 6721),
(5141, 8254),
(5142, 8254),
(5144, 1880),
(5144, 1939),
(5144, 1953),
(5144, 2861),
(5145, 8250),
(5149, 1794),
(5149, 2999),
(5149, 3681),
(5149, 4486),
(5149, 7670),
(5150, 6625),
(5159, 6612),
(5161, 6609),
(5164, 5283),
(5165, 2238),
(5165, 2298),
(5166, 8233),
(5167, 8233),
(5171, 8419),
(5172, 4736),
(5172, 4965),
(5172, 8419),
(5173, 8419),
(5174, 3629),
(5174, 3632),
(5204, 232),
(5204, 243),
(5204, 1358),
(5204, 4133),
(5204, 4769),
(5353, 3512),
(5384, 1448),
(5384, 1449),
(5384, 1475),
(5386, 1364),
(5387, 2439),
(5387, 2963),
(5391, 1393),
(5394, 1419),
(5394, 1420),
(5395, 1365),
(5395, 1366),
(5396, 1382),
(5396, 1385),
(5397, 1370),
(5397, 1373),
(5397, 1374),
(5397, 1380),
(5397, 1384),
(5398, 1369),
(5398, 1371),
(5398, 1375),
(5398, 1381),
(5398, 1386),
(5411, 5801),
(5411, 5802),
(5412, 1367),
(5412, 1368),
(5413, 1700),
(5413, 1701),
(5413, 1703),
(5413, 1704),
(5413, 1782),
(5414, 1383),
(5414, 1388),
(5418, 1372),
(5418, 1391),
(5464, 1395),
(5476, 1396),
(5476, 1398),
(5476, 1421),
(5476, 1425),
(5479, 1698),
(5479, 1718),
(5479, 8417),
(5480, 1638),
(5489, 8254),
(5491, 4485),
(5495, 8419),
(5496, 8419),
(5497, 1861),
(5497, 1920),
(5497, 1921),
(5497, 1939),
(5497, 1947),
(5497, 1953),
(5497, 2861),
(5498, 8250),
(5504, 9063),
(5505, 5924),
(5505, 9063),
(5515, 6076),
(5515, 6722),
(5516, 8151),
(5518, 3630),
(5518, 4181),
(5520, 7562),
(5543, 264),
(5566, 3787),
(5591, 698),
(5591, 1430),
(5592, 699),
(5592, 1422),
(5593, 1426),
(5593, 1427),
(5593, 1428),
(5594, 113),
(5594, 4496),
(5594, 4507),
(5594, 4508),
(5594, 4509),
(5598, 1444),
(5598, 1446),
(5634, 1452),
(5634, 1469),
(5635, 1450),
(5636, 1451),
(5636, 2988),
(5636, 2989),
(5636, 2990),
(5636, 2994),
(5637, 1453),
(5638, 1454),
(5638, 1456),
(5638, 1457),
(5638, 1458),
(5638, 1459),
(5638, 1466),
(5638, 1467),
(5639, 1431),
(5640, 1432),
(5641, 1433),
(5641, 1434),
(5641, 1436),
(5641, 1488),
(5642, 1437),
(5642, 1438),
(5644, 1439),
(5644, 1440),
(5651, 2342),
(5667, 1470),
(5675, 1471),
(5675, 1472),
(5675, 1473),
(5675, 1474),
(5675, 3001),
(5675, 10788),
(5675, 10790),
(5693, 1476),
(5694, 1477),
(5694, 1938),
(5694, 1940),
(5724, 1478),
(5752, 1387),
(5753, 7562),
(5765, 1485),
(5765, 1499),
(5767, 1486),
(5768, 1487),
(5769, 886),
(5769, 1123),
(5769, 1490),
(5769, 3761),
(5769, 3782),
(5770, 914),
(5770, 2966),
(5770, 2968),
(5810, 1498),
(5810, 1502),
(5815, 7562),
(5875, 1501),
(5875, 1504),
(5875, 1507),
(5875, 1513),
(5875, 2996),
(5875, 10788),
(5875, 10789),
(5878, 1503),
(5878, 1838),
(5878, 1839),
(5878, 1840),
(5878, 1841),
(5878, 1848),
(5880, 1884),
(5880, 1959),
(5883, 8250),
(5885, 1944),
(5885, 1945),
(5885, 1947),
(5885, 2861),
(5887, 1463),
(5887, 1516),
(5887, 1517),
(5888, 1462),
(5888, 1519),
(5888, 1520),
(5891, 1518),
(5891, 1521),
(5892, 1522),
(5892, 1528),
(5892, 1531),
(5895, 96),
(5899, 220),
(5899, 1534),
(5899, 1535),
(5899, 1536),
(5900, 1464),
(5900, 1525),
(5900, 1526),
(5901, 63),
(5901, 972),
(5901, 1530),
(5901, 5159),
(5906, 1529),
(5906, 1532),
(5907, 1524),
(5908, 1512),
(5909, 1508),
(5910, 1509),
(5911, 1515),
(5955, 1560),
(6014, 8254),
(6018, 8254),
(6019, 6134),
(6031, 1578),
(6031, 1618),
(6031, 1681),
(6031, 1682),
(6034, 1582),
(6089, 1639),
(6089, 1666),
(6090, 1640),
(6090, 1665),
(6114, 1678),
(6114, 1680),
(6120, 1715),
(6120, 1717),
(6120, 1798),
(6121, 1685),
(6122, 1688),
(6122, 1689),
(6122, 1716),
(6122, 1739),
(6122, 1798),
(6134, 3510),
(6134, 3511),
(6142, 1693),
(6142, 1710),
(6142, 1711),
(6142, 2925),
(6166, 1699),
(6166, 1702),
(6169, 1708),
(6169, 1709),
(6169, 2769),
(6169, 2924),
(6171, 1641),
(6171, 1643),
(6171, 1650),
(6171, 1653),
(6171, 1781),
(6171, 1790),
(6171, 1793),
(6171, 7638),
(6172, 1787),
(6173, 1786),
(6173, 1788),
(6174, 1644),
(6174, 1780),
(6175, 1648),
(6175, 1778),
(6176, 1712),
(6176, 1713),
(6176, 1792),
(6176, 8412),
(6176, 8413),
(6177, 1784),
(6178, 1783),
(6178, 1785),
(6179, 1645),
(6179, 1647),
(6179, 1779),
(6179, 1789),
(6181, 1654),
(6181, 1806),
(6182, 1651),
(6182, 1652),
(6236, 1719),
(6236, 1791),
(6241, 1655),
(6244, 1738),
(6247, 1740),
(6251, 1758),
(6251, 1795),
(6251, 1801),
(6252, 4963),
(6254, 4962),
(6266, 1796),
(6266, 1799),
(6266, 4781),
(6266, 4783),
(6266, 4784),
(6266, 4786),
(6266, 4964),
(6266, 4975),
(6286, 4161),
(6293, 1803),
(6293, 1805),
(6294, 1360),
(6294, 1802),
(6294, 1804),
(6301, 982),
(6382, 7562),
(6389, 6321),
(6394, 1824),
(6394, 1825),
(6408, 1842),
(6408, 1843),
(6410, 1844),
(6410, 1845),
(6411, 1846),
(6411, 1847),
(6446, 1858),
(6446, 1963),
(6467, 1978),
(6467, 1998),
(6467, 1999),
(6467, 2019),
(6467, 2378),
(6467, 14418),
(6467, 14419),
(6467, 14420),
(6522, 3564),
(6522, 14421),
(6546, 1948),
(6546, 1949),
(6546, 1952),
(6546, 1954),
(6546, 1955),
(6546, 1956),
(6546, 1957),
(6546, 1958),
(6546, 2846),
(6546, 4961),
(6546, 4976),
(6546, 11150),
(6546, 11151),
(6546, 11205),
(6546, 11206),
(6546, 11211),
(6548, 1950),
(6548, 1951),
(6569, 2039),
(6569, 2041),
(6569, 2927),
(6577, 2038),
(6579, 2040),
(6579, 2928),
(6667, 2078),
(6667, 2098),
(6707, 8249),
(6735, 3763),
(6735, 8357),
(6740, 3790),
(6741, 3784),
(6741, 8354),
(6746, 3762),
(6746, 8360),
(6766, 6701),
(6768, 8234),
(6774, 2158),
(6775, 1656),
(6780, 2159),
(6782, 2160),
(6784, 8),
(6784, 590),
(6786, 2161),
(6826, 2199),
(6826, 2200),
(6826, 2204),
(6826, 2361),
(6826, 2948),
(6826, 3375),
(6826, 8355),
(6868, 2202),
(6868, 2203),
(6868, 2258),
(6868, 2338),
(6868, 2339),
(6868, 2340),
(6886, 2239),
(6906, 2240),
(6912, 2201),
(6912, 2318),
(6929, 936),
(6929, 6385),
(6929, 8359),
(6946, 2281),
(6966, 2282),
(6986, 649),
(6986, 2283),
(6986, 2284),
(6986, 2341),
(6987, 650),
(7007, 100),
(7007, 1103),
(7009, 2358),
(7010, 4494),
(7010, 4511),
(7024, 2359),
(7161, 2381),
(7207, 2608),
(7207, 2609),
(7233, 2478),
(7311, 1883),
(7311, 1953),
(7311, 1959),
(7311, 7068),
(7312, 1919),
(7313, 2518),
(7313, 2520),
(7315, 1718),
(7315, 8417),
(7316, 2519),
(7317, 2541),
(7317, 2561),
(7363, 2521),
(7363, 2522),
(7363, 3501),
(7363, 3502),
(7406, 3642),
(7406, 3643),
(7406, 3647),
(7406, 3721),
(7407, 379),
(7407, 841),
(7407, 864),
(7407, 1690),
(7407, 1691),
(7407, 2768),
(7408, 1707),
(7408, 1878),
(7505, 2581),
(7505, 2582),
(7505, 2583),
(7505, 2584),
(7505, 2585),
(7505, 2586),
(7505, 2601),
(7505, 2603),
(7505, 2604),
(7506, 2601),
(7506, 2602),
(7506, 2603),
(7506, 2604),
(7564, 2605),
(7564, 2606),
(7564, 2662),
(7572, 2621),
(7572, 2681),
(7572, 2702),
(7572, 2721),
(7572, 2744),
(7572, 2784),
(7572, 2801),
(7572, 3627),
(7572, 3628),
(7572, 8423),
(7572, 8424),
(7572, 8425),
(7583, 2641),
(7583, 2661),
(7623, 2622),
(7643, 2623),
(7683, 238),
(7724, 10),
(7724, 32),
(7724, 82),
(7724, 110),
(7724, 162),
(7724, 992),
(7729, 2743),
(7736, 3788),
(7740, 4493),
(7740, 4510),
(7750, 2701),
(7763, 2747),
(7763, 2748),
(7763, 2749),
(7763, 2750),
(7763, 2944),
(7763, 3022),
(7764, 2879),
(7764, 2939),
(7765, 2844),
(7766, 434),
(7766, 2746),
(7771, 3161),
(7771, 3444),
(7771, 3446),
(7771, 3447),
(7773, 3567),
(7774, 2845),
(7775, 4041),
(7775, 4143),
(7776, 3062),
(7776, 3063),
(7776, 4120),
(7776, 7489),
(7777, 2975),
(7777, 2979),
(7777, 2980),
(7777, 3002),
(7780, 2742),
(7783, 3141),
(7783, 3508),
(7783, 3509),
(7783, 3602),
(7783, 3621),
(7784, 648),
(7790, 2751),
(7790, 2752),
(7790, 2753),
(7790, 2754),
(7790, 2755),
(7792, 2756),
(7793, 2757),
(7794, 2760),
(7798, 2758),
(7798, 2759),
(7801, 77),
(7801, 81),
(7802, 2761),
(7802, 2762),
(7802, 2763),
(7802, 2764),
(7802, 2765),
(7802, 3625),
(7802, 3626),
(7804, 2771),
(7804, 2772),
(7804, 2773),
(7804, 3042),
(7804, 3321),
(7806, 836),
(7807, 2767),
(7825, 2995),
(7825, 8273),
(7826, 2783),
(7850, 2904),
(7852, 2821),
(7852, 2847),
(7852, 2848),
(7852, 2849),
(7852, 2850),
(7852, 2851),
(7852, 2852),
(7852, 2853),
(7852, 7733),
(7853, 2843),
(7854, 2822),
(7854, 2854),
(7854, 2855),
(7854, 2856),
(7854, 2857),
(7854, 2858),
(7854, 2859),
(7854, 2860),
(7854, 7734),
(7866, 5141),
(7867, 5145),
(7868, 5144),
(7869, 5146),
(7870, 5143),
(7871, 5148),
(7875, 2862),
(7875, 2863),
(7875, 2902),
(7875, 7730),
(7875, 7731),
(7875, 7732),
(7876, 2865),
(7876, 3362),
(7876, 4504),
(7877, 2869),
(7877, 2870),
(7877, 2871),
(7877, 4124),
(7877, 7488),
(7879, 3791),
(7879, 3792),
(7879, 4130),
(7880, 4125),
(7880, 4129),
(7880, 4131),
(7880, 4266),
(7881, 2873),
(7881, 2874),
(7882, 8366),
(7884, 2877),
(7884, 2880),
(7900, 2982),
(7900, 3445),
(7907, 2941),
(7907, 2943),
(7907, 5250),
(7916, 978),
(7916, 979),
(7916, 3661),
(7916, 4902),
(7917, 2923),
(7918, 2954),
(7937, 2929),
(7944, 2922),
(7944, 3640),
(7944, 3641),
(7944, 3645),
(7950, 2930),
(7952, 7664),
(7952, 7665),
(7955, 7675),
(7955, 7676),
(7956, 2969),
(7956, 3841),
(7957, 2970),
(7957, 2972),
(8001, 8001),
(8021, 2987),
(8022, 2991),
(8022, 2992),
(8022, 2993),
(8026, 1038),
(8026, 1039),
(8115, 3121),
(8115, 3123),
(8115, 3124),
(8115, 3125),
(8115, 3126),
(8115, 3127),
(8115, 3128),
(8115, 3129),
(8115, 3380),
(8125, 6610),
(8125, 8585),
(8125, 8586),
(8125, 8587),
(8126, 3638),
(8126, 3639),
(8126, 3644),
(8142, 9063),
(8256, 3201),
(8256, 3371),
(8284, 3367),
(8359, 6363),
(8379, 3565),
(8379, 8235),
(8379, 8236),
(8379, 8251),
(8379, 8252),
(8379, 8253),
(8379, 9362),
(8379, 9364),
(8380, 3382),
(8390, 3568),
(8390, 3569),
(8390, 3570),
(8392, 3461),
(8395, 3503),
(8399, 3421),
(8403, 5050),
(8405, 8153),
(8405, 8231),
(8405, 8232),
(8405, 8255),
(8405, 8256),
(8405, 8257),
(8416, 3361),
(8417, 3372),
(8417, 3566),
(8418, 3369),
(8418, 3370),
(8420, 3601),
(8420, 5534),
(8436, 3377),
(8436, 3378),
(8439, 3379),
(8439, 3385),
(8439, 3402),
(8479, 3441),
(8479, 3442),
(8479, 3443),
(8479, 3452),
(8479, 3453),
(8479, 3454),
(8479, 3462),
(8496, 4146),
(8496, 4502),
(8507, 3449),
(8507, 3450),
(8509, 3463),
(8516, 3523),
(8516, 3525),
(8517, 3451),
(8517, 3483),
(8576, 3505),
(8576, 3507),
(8579, 3520),
(8579, 3527),
(8579, 3528),
(8579, 4787),
(8582, 3514),
(8582, 6543),
(8583, 3521),
(8583, 3522),
(8583, 4495),
(8584, 3519),
(8587, 3517),
(8587, 3518),
(8587, 3541),
(8587, 3542),
(8587, 3561),
(8659, 3563),
(8659, 4300),
(8737, 3908),
(8737, 3941),
(8737, 3962),
(8738, 3646),
(8879, 3701),
(8879, 3702),
(8888, 3801),
(8888, 3802),
(8929, 4004),
(8929, 4363),
(8965, 3741),
(8997, 1275),
(9020, 3982),
(9020, 4001),
(9021, 4342),
(9021, 4361),
(9077, 4132),
(9077, 4903),
(9077, 4941),
(9078, 4134),
(9078, 4768),
(9078, 7201),
(9079, 4061),
(9079, 4062),
(9080, 4122),
(9080, 4981),
(9081, 3981),
(9081, 4724),
(9082, 3821),
(9084, 3906),
(9084, 3907),
(9087, 3786),
(9087, 3804),
(9116, 4005),
(9116, 4084),
(9116, 4421),
(9116, 4441),
(9116, 4442),
(9116, 4906),
(9117, 3942),
(9117, 3961),
(9117, 4284),
(9117, 4285),
(9117, 4287),
(9117, 4288),
(9117, 4321),
(9118, 4145),
(9118, 4147),
(9118, 4148),
(9119, 4141),
(9119, 4142),
(9119, 4144),
(9136, 3822),
(9177, 3823),
(9177, 3824),
(9177, 3825),
(9177, 4283),
(9177, 4286),
(9238, 3842),
(9238, 3843),
(9270, 3881),
(9271, 3883),
(9272, 3882),
(9274, 5150),
(9296, 3904),
(9296, 3905),
(9298, 3909),
(9298, 3912),
(9298, 4842),
(9298, 5082),
(9298, 5084),
(9298, 5086),
(9298, 5087),
(9298, 5121),
(9298, 5128),
(9299, 3913),
(9316, 3922),
(9316, 3923),
(9317, 3924),
(9459, 4022),
(9459, 4023),
(9459, 4024),
(9465, 9063),
(9500, 4201),
(9503, 4295),
(9516, 7624),
(9516, 7625),
(9520, 4121),
(9528, 4101),
(9528, 4103),
(9528, 4104),
(9528, 4105),
(9528, 4106),
(9528, 4107),
(9528, 4108),
(9528, 4109),
(9528, 4110),
(9528, 4111),
(9528, 4112),
(9529, 4102),
(9529, 5882),
(9529, 5883),
(9529, 5884),
(9529, 5885),
(9529, 5886),
(9529, 5887),
(9529, 5888),
(9529, 5889),
(9529, 5890),
(9529, 5891),
(9536, 4123),
(9536, 4296),
(9540, 4128),
(9544, 4136),
(9550, 6964),
(9560, 5081),
(9560, 5102),
(9561, 4262),
(9561, 4263),
(9562, 4701),
(9563, 4866),
(9565, 4764),
(9565, 4765),
(9598, 4261),
(9616, 4512),
(9616, 4513),
(9618, 4243),
(9619, 4289),
(9619, 4290),
(9619, 4291),
(9619, 4292),
(9619, 4301),
(9619, 9051),
(9619, 9052),
(9619, 9053),
(9620, 6162),
(9623, 4244),
(9623, 4245),
(9660, 4297),
(9660, 4298),
(9706, 4324),
(9796, 4402),
(9836, 4463),
(9836, 4481),
(9836, 4482),
(9836, 4483),
(9836, 4484),
(9996, 4505),
(9996, 4506),
(9997, 4492),
(9998, 4503),
(9999, 4491),
(10079, 4542),
(10118, 6341),
(10136, 4293),
(10136, 4294),
(10136, 4642),
(10176, 4641),
(10181, 5961),
(10181, 9626),
(10181, 9813),
(10181, 10593),
(10181, 14350),
(10182, 6568),
(10182, 6602),
(10216, 1138),
(10216, 1141),
(10219, 3524),
(10219, 4681),
(10257, 4982),
(10257, 4983),
(10257, 5001),
(10257, 5002),
(10260, 4729),
(10260, 4862),
(10267, 4726),
(10267, 4734),
(10267, 4735),
(10267, 4808),
(10267, 5522),
(10296, 4742),
(10296, 4743),
(10300, 4901),
(10301, 4861),
(10301, 5245),
(10302, 974),
(10302, 980),
(10303, 5054),
(10303, 5055),
(10303, 5056),
(10303, 5057),
(10304, 5246),
(10304, 5247),
(10304, 5248),
(10305, 977),
(10305, 3783),
(10305, 5163),
(10305, 8798),
(10306, 4521),
(10306, 4721),
(10306, 4741),
(10306, 4883),
(10307, 969),
(10307, 975),
(10307, 4801),
(10307, 4802),
(10307, 4803),
(10307, 4804),
(10307, 4805),
(10307, 4806),
(10307, 4807),
(10321, 6582),
(10321, 6583),
(10321, 6584),
(10321, 6585),
(10321, 6601),
(10377, 4767),
(10427, 4770),
(10428, 5062),
(10431, 6028),
(10431, 6029),
(10431, 6030),
(10460, 4788),
(10460, 5065),
(10460, 8181),
(10460, 8182),
(10468, 4809),
(10468, 4810),
(10468, 4907),
(10537, 4841),
(10537, 5064),
(10537, 5361),
(10539, 4821),
(10539, 4865),
(10616, 5545),
(10618, 4970),
(10618, 5201),
(10618, 5981),
(10637, 5124),
(10638, 4966),
(10646, 4904),
(10665, 5482),
(10666, 5481),
(10667, 4971),
(10667, 4972),
(10667, 4973),
(10667, 5154),
(10667, 5210),
(10667, 5721),
(10684, 5252),
(10739, 4984),
(10739, 4985),
(10739, 4986),
(10739, 4987),
(10740, 5160),
(10776, 5047),
(10778, 5021),
(10778, 5051),
(10781, 5049),
(10782, 5048),
(10799, 4867),
(10837, 105),
(10837, 838),
(10837, 5096),
(10837, 5098),
(10837, 5228),
(10837, 5237),
(10837, 5511),
(10838, 211),
(10838, 5092),
(10838, 5097),
(10838, 5215),
(10838, 5238),
(10838, 5505),
(10838, 5533),
(10838, 8414),
(10838, 8418),
(10839, 5402),
(10839, 5403),
(10839, 5406),
(10839, 5503),
(10840, 5401),
(10840, 5404),
(10840, 5407),
(10840, 5408),
(10856, 5504),
(10856, 5524),
(10857, 5405),
(10857, 5507),
(10857, 5521),
(10877, 1019),
(10877, 5090),
(10877, 7494),
(10878, 1047),
(10878, 5091),
(10878, 7494),
(10879, 1004),
(10879, 5094),
(10879, 7492),
(10880, 235),
(10880, 1018),
(10880, 5093),
(10880, 7492),
(10881, 742),
(10881, 1000),
(10881, 5095),
(10881, 7492),
(10917, 5122),
(10917, 5125),
(10918, 5126),
(10918, 5127),
(10921, 5156),
(10922, 5155),
(10922, 5157),
(10922, 5158),
(10922, 5165),
(10922, 5242),
(10924, 5249),
(10926, 5149),
(10926, 5152),
(10926, 5241),
(10926, 5942),
(10927, 5142),
(10927, 5153),
(10929, 5161),
(10929, 5162),
(10941, 5151),
(10941, 9433),
(10941, 9434),
(10976, 5164),
(11016, 5203),
(11019, 5204),
(11020, 5385),
(11022, 5341),
(11022, 5342),
(11023, 5343),
(11023, 5344),
(11033, 5214),
(11033, 6026),
(11033, 6041),
(11034, 5265),
(11035, 4771),
(11035, 5212),
(11035, 5213),
(11035, 5529),
(11036, 5243),
(11036, 5463),
(11036, 5465),
(11036, 5531),
(11038, 5281),
(11038, 6021),
(11039, 5251),
(11039, 5263),
(11039, 5264),
(11039, 5508),
(11039, 5509),
(11039, 5510),
(11053, 5216),
(11053, 5219),
(11053, 5222),
(11053, 5225),
(11055, 5229),
(11055, 5231),
(11055, 5233),
(11055, 5235),
(11056, 5537),
(11056, 5538),
(11056, 5803),
(11057, 964),
(11057, 5514),
(11057, 5804),
(11063, 5168),
(11063, 5181),
(11063, 5206),
(11063, 5211),
(11063, 5941),
(11079, 5244),
(11079, 5253),
(11140, 5282),
(11145, 10891),
(11146, 5284),
(11176, 10892),
(11177, 5301),
(11178, 5302),
(11191, 5305),
(11192, 5306),
(11193, 5307),
(11216, 5382),
(11216, 5384),
(11216, 5515),
(11218, 5321),
(11259, 5386),
(11286, 5461),
(11286, 5462),
(11286, 5466),
(11317, 5421),
(11378, 5441),
(11378, 6394),
(11401, 8254),
(11406, 7639),
(11406, 8254),
(11438, 5501),
(11536, 5513),
(11536, 5517),
(11536, 9221),
(11536, 9222),
(11536, 9223),
(11536, 9224),
(11536, 9225),
(11536, 9226),
(11536, 9227),
(11536, 9228),
(11548, 5535),
(11548, 5536),
(11554, 6131),
(11554, 8460),
(11554, 8462),
(11554, 8466),
(11555, 8481),
(11555, 8484),
(11555, 8485),
(11556, 8464),
(11556, 8469),
(11557, 6031),
(11557, 6032),
(11596, 5561),
(11610, 6004),
(11610, 6023),
(11610, 6025),
(11615, 5901),
(11615, 5902),
(11616, 5903),
(11616, 5904),
(11624, 5381),
(11624, 5581),
(11625, 5821),
(11626, 5943),
(11629, 5601),
(11701, 13850),
(11701, 13887),
(11701, 13906),
(11711, 5713),
(11715, 7041),
(11754, 6603),
(11755, 6604),
(11755, 6605),
(11755, 6606),
(11758, 5863),
(11799, 30),
(11799, 272),
(11801, 1124),
(11801, 5526),
(11801, 5527),
(11802, 28),
(11802, 29),
(11802, 31),
(11802, 5061),
(11802, 5929),
(11802, 5930),
(11802, 5931),
(11802, 5932),
(11802, 6122),
(11802, 6125),
(11802, 6127),
(11802, 6130),
(11811, 8576),
(11811, 8577),
(11811, 8584),
(11811, 8597),
(11811, 8606),
(11811, 8620),
(11811, 8728),
(11811, 8729),
(11814, 8358),
(11820, 6571),
(11821, 6542),
(11823, 7029),
(11832, 8447),
(11832, 8735),
(11832, 8736),
(11832, 8741),
(11832, 13074),
(11832, 13075),
(11833, 5722),
(11833, 5723),
(11834, 5724),
(11856, 6523),
(11857, 6401),
(11857, 6548),
(11857, 6629),
(11860, 5881),
(11860, 6282),
(11860, 6283),
(11861, 6421),
(11861, 6481),
(11862, 6393),
(11862, 6562),
(11863, 5741),
(11863, 6027),
(11864, 6301),
(11864, 6381),
(11872, 5862),
(11872, 6569),
(11872, 6570),
(11877, 5763),
(11878, 6022),
(11878, 6042),
(11878, 6133),
(11878, 6135),
(11878, 6136),
(11878, 6144),
(11878, 6146),
(11878, 6148),
(11878, 6163),
(11878, 14349),
(11898, 6147),
(11936, 5848),
(11939, 1185),
(11939, 6845),
(12031, 6142),
(12042, 9063),
(12042, 10955),
(12096, 5892),
(12096, 6982),
(12097, 5893),
(12097, 6985),
(12238, 7066),
(12277, 6132),
(12336, 6141),
(12340, 6143),
(12384, 6164),
(12425, 6185),
(12425, 6186),
(12696, 247),
(12696, 6383),
(12717, 6641),
(12718, 6504),
(12719, 6442),
(12721, 6462),
(12724, 6441),
(12724, 6581),
(12736, 6563),
(12736, 6565),
(12736, 6921),
(12737, 25),
(12737, 824),
(12738, 3364),
(12757, 216),
(12757, 6621),
(12807, 7562),
(12816, 6461),
(12818, 6482),
(12858, 6544),
(12862, 6547),
(12863, 6545),
(12864, 6546),
(12866, 6626),
(12867, 6503),
(12919, 6607),
(12919, 11209),
(12919, 11210),
(12920, 6622),
(12939, 6624),
(12944, 6642),
(12944, 6643),
(12944, 6644),
(12944, 6645),
(12944, 6646),
(12997, 6661),
(12997, 6662),
(13020, 8730),
(13151, 6847),
(13151, 6848),
(13176, 6741),
(13176, 7224),
(13179, 6825),
(13180, 6826),
(13181, 6827),
(13220, 1125),
(13220, 1126),
(13220, 6844),
(13236, 6801),
(13236, 7385),
(13257, 6781),
(13257, 7223),
(13278, 6805),
(13278, 6821),
(13278, 6822),
(13278, 6823),
(13278, 6824),
(13278, 7486),
(13283, 8233),
(13377, 6861),
(13377, 6862),
(13417, 7061),
(13417, 7667),
(13417, 8258),
(13417, 8410),
(13417, 14100),
(13418, 6961),
(13418, 6963),
(13418, 6984),
(13429, 7022),
(13429, 7024),
(13431, 7021),
(13433, 7045),
(13434, 7042),
(13435, 7023),
(13437, 6943),
(13437, 11069),
(13438, 6942),
(13439, 6941),
(13441, 7002),
(13442, 6881),
(13442, 7386),
(13444, 7025),
(13445, 6962),
(13446, 6846),
(13449, 6901),
(13577, 7026),
(13597, 7368),
(13598, 7367),
(13616, 7001),
(13617, 7027),
(13636, 6983),
(13636, 7043),
(13656, 7028),
(13697, 7044),
(13698, 7065),
(13699, 7064),
(13716, 7046),
(13717, 7067),
(13776, 7082),
(13776, 7101),
(13776, 7124),
(13777, 7081),
(13777, 7102),
(13777, 7122),
(13797, 7121),
(13798, 7123),
(13816, 7141),
(13816, 8271),
(13817, 7142),
(13817, 8272),
(13840, 7161),
(13840, 7163),
(13840, 7164),
(13840, 7165),
(13840, 7166),
(13840, 7167),
(13840, 7181),
(13840, 7381),
(13841, 7162),
(13841, 7168),
(13841, 7169),
(13841, 7170),
(13841, 7171),
(13841, 7172),
(13841, 7202),
(13841, 7382),
(13842, 7241),
(13843, 7261),
(14182, 7341),
(14183, 7342),
(14185, 7361),
(14186, 7362),
(14188, 7424),
(14305, 558),
(14305, 1479),
(14305, 1558),
(14305, 1687),
(14305, 4822),
(14322, 5528),
(14325, 1318),
(14325, 7703),
(14338, 5518),
(14338, 5519),
(14338, 5525),
(14338, 7429),
(14347, 7786),
(14355, 7441),
(14358, 7461),
(14358, 7462),
(14358, 7877),
(14368, 7463),
(14368, 7483),
(14368, 7484),
(14368, 7485),
(14373, 7481),
(14374, 7482),
(14387, 7487),
(14387, 7848),
(14392, 7493),
(14394, 7497),
(14436, 7563),
(14436, 7564),
(14436, 7626),
(14436, 7627),
(14436, 7628),
(14436, 7631),
(14437, 7623),
(14437, 7629),
(14437, 7630),
(14444, 910),
(14444, 911),
(14444, 915),
(14444, 925),
(14444, 1800),
(14444, 5502),
(14463, 7581),
(14463, 7582),
(14463, 7583),
(14469, 7601),
(14470, 7602),
(14470, 7603),
(14470, 8420),
(14470, 8421),
(14470, 8422),
(14494, 7621),
(14494, 7622),
(14508, 7838),
(14524, 7633),
(14524, 7636),
(14525, 7635),
(14526, 7634),
(14566, 7644),
(14567, 7652),
(14567, 7653),
(14567, 7654),
(14567, 7655),
(14567, 7656),
(14567, 7657),
(14567, 7658),
(14567, 7659),
(14624, 7722),
(14624, 7736),
(14624, 7737),
(14624, 8241),
(14624, 8242),
(14624, 13662),
(14627, 7723),
(14627, 7724),
(14627, 7727),
(14628, 7702),
(14637, 7003),
(14637, 7721),
(14637, 7725),
(14637, 7726),
(14722, 7791),
(14722, 7793),
(14722, 7794),
(14722, 7795),
(14722, 7796),
(14723, 7804),
(14723, 7805),
(14723, 7806),
(14723, 7807),
(14723, 7808),
(14724, 7802),
(14724, 7803),
(14724, 7809),
(14724, 7811),
(14724, 7812),
(14725, 7792),
(14725, 7798),
(14725, 7799),
(14725, 7800),
(14725, 7801),
(14726, 7826),
(14726, 7827),
(14726, 7831),
(14726, 7836),
(14726, 7837),
(14727, 7824),
(14727, 7832),
(14727, 7833),
(14727, 7834),
(14727, 7835),
(14728, 7820),
(14728, 7821),
(14728, 7822),
(14728, 7823),
(14728, 7825),
(14729, 7813),
(14729, 7814),
(14729, 7817),
(14729, 7818),
(14729, 7819),
(14731, 7840),
(14736, 7845),
(14736, 7850),
(14737, 7839),
(14738, 7841),
(14738, 7842),
(14738, 7843),
(14739, 7844),
(14740, 7815),
(14740, 7816),
(14741, 7828),
(14741, 7829),
(14741, 7830),
(14741, 7849),
(14753, 7863),
(14753, 7864),
(14753, 7865),
(14754, 7866),
(14754, 7867),
(14754, 7868),
(14757, 7846),
(14757, 7847),
(14828, 7930),
(14828, 7931),
(14828, 7932),
(14828, 7933),
(14828, 7934),
(14828, 7935),
(14828, 7936),
(14828, 7940),
(14828, 7981),
(14828, 9249),
(14829, 7899),
(14829, 7900),
(14829, 7901),
(14829, 7902),
(14829, 7903),
(14829, 7943),
(14829, 8222),
(14829, 8223),
(14832, 7889),
(14832, 7890),
(14832, 7891),
(14832, 7892),
(14832, 7893),
(14833, 7881),
(14833, 7882),
(14833, 7883),
(14833, 7884),
(14833, 7885),
(14833, 7939),
(14833, 7941),
(14841, 7894),
(14841, 7895),
(14841, 7896),
(14841, 7897),
(14841, 7898),
(14841, 7942),
(14842, 7905),
(14843, 7926),
(14871, 7946),
(14902, 8041),
(14902, 8042),
(14902, 8043),
(14902, 8044),
(14902, 8045),
(14902, 8046),
(14902, 8047),
(14902, 8048),
(14902, 8053),
(14902, 8054),
(14902, 8055),
(14902, 8058),
(14902, 8078),
(14902, 8079),
(14903, 8049),
(14903, 8050),
(14903, 8051),
(14903, 8052),
(14903, 8059),
(14903, 8060),
(14903, 8061),
(14903, 8068),
(14903, 8069),
(14903, 8070),
(14903, 8071),
(14903, 8076),
(14903, 8077),
(14903, 8101),
(14903, 8102),
(14903, 8103),
(14903, 8104),
(14903, 8106),
(14903, 8107),
(14903, 8108),
(14903, 8109),
(14904, 8056),
(14904, 8057),
(14904, 8064),
(14904, 8065),
(14904, 8074),
(14904, 8075),
(14904, 8110),
(14904, 8111),
(14904, 8112),
(14904, 8113),
(14904, 8116),
(14904, 8117),
(14904, 8118),
(14904, 8119),
(14905, 8062),
(14905, 8063),
(14905, 8066),
(14905, 8067),
(14905, 8072),
(14905, 8073),
(14905, 8141),
(14905, 8142),
(14905, 8144),
(14905, 8145),
(14905, 8146),
(14905, 8147),
(14905, 8148),
(14910, 8201),
(14921, 8196),
(14921, 8243),
(14921, 8246),
(14983, 8105),
(14983, 8114),
(14983, 8115),
(14983, 8166),
(14983, 8167),
(14983, 8168),
(14984, 8080),
(14984, 8081),
(14984, 8154),
(14984, 8155),
(14984, 8156),
(14984, 8157),
(14984, 8158),
(14984, 8159),
(14984, 8297),
(14984, 8298),
(15011, 8149),
(15012, 8150),
(15021, 8120),
(15021, 8121),
(15021, 8122),
(15021, 8169),
(15021, 8170),
(15021, 8171),
(15022, 8123),
(15022, 8124),
(15022, 8160),
(15022, 8161),
(15022, 8162),
(15022, 8163),
(15022, 8164),
(15022, 8165),
(15022, 8299),
(15022, 8300),
(15042, 8184),
(15042, 8185),
(15042, 8186),
(15042, 8187),
(15042, 8188),
(15042, 8189),
(15042, 8190),
(15042, 8191),
(15042, 8192),
(15042, 9208),
(15042, 9209),
(15042, 9210),
(15069, 8183),
(15070, 8195),
(15070, 8238),
(15070, 8239),
(15070, 8240),
(15077, 8193),
(15078, 8194),
(15079, 8221),
(15079, 8224),
(15079, 8225),
(15116, 8229),
(15119, 8228),
(15126, 8263),
(15126, 8264),
(15126, 8265),
(15127, 8260),
(15127, 8261),
(15127, 8262),
(15165, 8365),
(15170, 8309),
(15170, 8314),
(15171, 8310),
(15174, 8307),
(15174, 8317),
(15176, 8548),
(15176, 8572),
(15176, 8573),
(15176, 8574),
(15180, 8286),
(15180, 8288),
(15180, 8301),
(15180, 8302),
(15180, 8303),
(15181, 8304),
(15181, 8306),
(15183, 8284),
(15183, 8285),
(15183, 8315),
(15183, 8316),
(15183, 8376),
(15183, 8377),
(15183, 8378),
(15183, 8379),
(15183, 8380),
(15183, 8381),
(15183, 8382),
(15187, 8275),
(15188, 8276),
(15189, 8277),
(15189, 8278),
(15190, 8282),
(15191, 8280),
(15191, 8281),
(15192, 8305),
(15192, 8555),
(15192, 8742),
(15192, 8747),
(15192, 8748),
(15192, 8749),
(15192, 8750),
(15192, 8751),
(15192, 8752),
(15192, 8753),
(15192, 8754),
(15192, 8755),
(15192, 8756),
(15192, 8757),
(15192, 8758),
(15192, 8759),
(15192, 8760),
(15192, 8761),
(15192, 8764),
(15192, 8765),
(15192, 8766),
(15192, 9251),
(15192, 9257),
(15192, 9269),
(15192, 9270),
(15192, 9271),
(15194, 8279),
(15194, 8287),
(15194, 8323),
(15194, 8324),
(15197, 1657),
(15197, 8322),
(15199, 1658),
(15199, 8373),
(15270, 8320),
(15270, 8321),
(15270, 8331),
(15270, 8343),
(15278, 8325),
(15278, 8326),
(15278, 8327),
(15278, 8328),
(15278, 8563),
(15278, 8564),
(15278, 9392),
(15278, 9393),
(15278, 9676),
(15279, 10069),
(15280, 10068),
(15281, 8334),
(15281, 8335),
(15281, 8347),
(15282, 8332),
(15282, 8333),
(15282, 8341),
(15282, 8342),
(15282, 8349),
(15282, 8351),
(15282, 9248),
(15283, 8344),
(15283, 10073),
(15284, 10070),
(15285, 10071),
(15295, 8330),
(15295, 8345),
(15296, 8336),
(15297, 8346),
(15301, 8350),
(15301, 9704),
(15306, 8318),
(15306, 8319),
(15306, 8348),
(15306, 8352),
(15306, 8361),
(15306, 8362),
(15306, 8363),
(15306, 8364),
(15309, 8312),
(15310, 8311),
(15350, 8367),
(15350, 8388),
(15350, 13476),
(15362, 8733),
(15378, 8790),
(15379, 8802),
(15380, 8789),
(15383, 8492),
(15383, 8493),
(15395, 8461),
(15395, 8465),
(15395, 8467),
(15397, 9358),
(15398, 8473),
(15398, 10166),
(15399, 8476),
(15399, 9363),
(15399, 9484),
(15399, 9485),
(15399, 9486),
(15399, 9673),
(15400, 8477),
(15401, 8486),
(15402, 8487),
(15402, 8488),
(15402, 9255),
(15403, 8463),
(15403, 8483),
(15403, 9256),
(15403, 9352),
(15404, 8480),
(15404, 9076),
(15405, 9119),
(15406, 8479),
(15416, 8475),
(15417, 8491),
(15418, 8472),
(15418, 8895),
(15431, 8494),
(15431, 8495),
(15432, 8499),
(15432, 8500),
(15434, 8503),
(15434, 8504),
(15437, 8505),
(15437, 8506),
(15440, 8508),
(15445, 8509),
(15445, 8510),
(15446, 8511),
(15446, 8512),
(15448, 8513),
(15448, 8514),
(15450, 8515),
(15450, 8516),
(15451, 8517),
(15451, 8518),
(15452, 8520),
(15452, 8521),
(15453, 8522),
(15453, 8523),
(15455, 8524),
(15455, 8525),
(15456, 8526),
(15456, 8527),
(15457, 8528),
(15457, 8529),
(15459, 8532),
(15459, 8533),
(15460, 8542),
(15460, 8543),
(15469, 8545),
(15469, 8546),
(15477, 8549),
(15477, 8550),
(15498, 8556),
(15498, 8697),
(15498, 8698),
(15498, 8699),
(15498, 8700),
(15498, 8701),
(15498, 8702),
(15498, 8703),
(15498, 8704),
(15499, 8558),
(15499, 8705),
(15499, 8706),
(15499, 8707),
(15499, 8708),
(15499, 8709),
(15499, 8710),
(15499, 8711),
(15499, 8712),
(15500, 8557),
(15500, 8689),
(15500, 8690),
(15500, 8691),
(15500, 8692),
(15500, 8693),
(15500, 8694),
(15500, 8695),
(15500, 8696),
(15502, 8544),
(15502, 8561),
(15502, 8592),
(15502, 8594),
(15502, 8602),
(15502, 8623),
(15502, 8625),
(15502, 8628),
(15502, 8630),
(15502, 8632),
(15502, 8639),
(15502, 8641),
(15502, 8657),
(15502, 8659),
(15502, 8662),
(15502, 8664),
(15502, 8667),
(15502, 8669),
(15503, 8559),
(15503, 8560),
(15503, 8593),
(15503, 8595),
(15503, 8596),
(15503, 8621),
(15503, 8624),
(15503, 8626),
(15503, 8629),
(15503, 8631),
(15503, 8634),
(15503, 8637),
(15503, 8640),
(15503, 8655),
(15503, 8658),
(15503, 8660),
(15503, 8663),
(15503, 8665),
(15503, 8668),
(15504, 8562),
(15504, 8603),
(15504, 8622),
(15504, 8627),
(15504, 8633),
(15504, 8638),
(15504, 8656),
(15504, 8661),
(15504, 8666),
(15508, 8580),
(15508, 8581),
(15512, 8582),
(15512, 8583),
(15513, 10072),
(15515, 8588),
(15515, 8589),
(15522, 8590),
(15522, 8591),
(15525, 8600),
(15525, 8601),
(15526, 8599),
(15528, 8604),
(15528, 8605),
(15529, 8607),
(15529, 8608),
(15532, 8609),
(15532, 8610),
(15533, 8611),
(15533, 8612),
(15534, 8613),
(15534, 8614),
(15535, 8615),
(15540, 8507),
(15540, 8731),
(15540, 8800),
(15540, 9338),
(15549, 8619),
(15556, 8635),
(15557, 8636),
(15558, 8642),
(15559, 8643),
(15560, 8644),
(15561, 8645),
(15562, 8646),
(15563, 8647),
(15564, 8648),
(15565, 8649),
(15566, 8650),
(15567, 8651),
(15568, 8652),
(15569, 8653),
(15570, 8654),
(15572, 8670),
(15573, 8671),
(15574, 8672),
(15575, 8673),
(15576, 8674),
(15577, 8675),
(15578, 8676),
(15579, 8677),
(15580, 8678),
(15581, 8679),
(15582, 8680),
(15583, 8681),
(15584, 8682),
(15585, 8683),
(15586, 8684),
(15587, 8685),
(15588, 8686),
(15592, 8688),
(15593, 8713),
(15594, 8714),
(15595, 8715),
(15596, 8716),
(15597, 8717),
(15598, 8718),
(15599, 8719),
(15600, 8720),
(15601, 8721),
(15602, 8722),
(15603, 8723),
(15604, 8724),
(15605, 8725),
(15606, 8726),
(15607, 8727),
(15608, 9837),
(15612, 8732),
(15624, 8734),
(15693, 8745),
(15702, 8792),
(15703, 8793),
(15704, 8794),
(15707, 8795),
(15708, 8796),
(15709, 8797),
(15732, 8827),
(15732, 8828),
(15732, 8860),
(15732, 8861),
(15761, 8818),
(15761, 8826),
(15761, 8844),
(15761, 8845),
(15762, 8813),
(15762, 8821),
(15762, 8836),
(15762, 8837),
(15763, 8814),
(15763, 8822),
(15763, 8838),
(15763, 8839),
(15764, 8812),
(15764, 8820),
(15764, 8834),
(15764, 8835),
(15765, 8815),
(15765, 8823),
(15765, 8832),
(15765, 8833),
(15767, 8817),
(15767, 8825),
(15767, 8842),
(15767, 8843),
(15768, 8816),
(15768, 8824),
(15768, 8840),
(15768, 8841),
(15797, 8859),
(15798, 8857),
(15799, 8858),
(15864, 8868),
(15871, 8866),
(15891, 8873),
(15891, 8874),
(15891, 8875),
(15892, 8870),
(15892, 8871),
(15892, 8872),
(15895, 8867),
(15895, 8883),
(15920, 8884),
(15920, 8885),
(15921, 8886),
(15924, 8889),
(15924, 8890),
(15924, 9394),
(15939, 8892),
(15939, 9359),
(15941, 9035),
(15942, 9252),
(15942, 9253),
(15945, 9062),
(15945, 9064),
(15951, 8888),
(15969, 8894),
(15970, 9066),
(15970, 9402),
(15970, 9403),
(15970, 9404),
(15991, 10863),
(16001, 8899),
(16003, 8902),
(16005, 8897),
(16007, 8900),
(16008, 8901),
(16009, 8898),
(16012, 8913),
(16012, 8914),
(16012, 8915),
(16012, 8916),
(16012, 8917),
(16012, 8918),
(16012, 8919),
(16012, 8920),
(16012, 8923),
(16012, 8927),
(16012, 8930),
(16012, 8938),
(16012, 8939),
(16012, 8940),
(16012, 8941),
(16012, 8942),
(16012, 8943),
(16012, 8944),
(16012, 9007),
(16012, 9008),
(16012, 9009),
(16012, 9010),
(16012, 9011),
(16012, 9012),
(16012, 9013),
(16012, 9014),
(16012, 9032),
(16012, 10493),
(16012, 10495),
(16012, 10499),
(16013, 8905),
(16013, 8906),
(16013, 8907),
(16013, 8908),
(16013, 8909),
(16013, 8910),
(16013, 8911),
(16013, 8912),
(16013, 8922),
(16013, 8926),
(16013, 8929),
(16013, 8931),
(16013, 8932),
(16013, 8933),
(16013, 8934),
(16013, 8935),
(16013, 8936),
(16013, 8937),
(16013, 8960),
(16013, 8999),
(16013, 9000),
(16013, 9001),
(16013, 9002),
(16013, 9003),
(16013, 9004),
(16013, 9005),
(16013, 9006),
(16013, 10492),
(16013, 10494),
(16013, 10498),
(16014, 8921),
(16014, 8924),
(16014, 8925),
(16014, 8928),
(16014, 8977),
(16014, 8978),
(16016, 8945),
(16016, 8947),
(16016, 8948),
(16016, 8951),
(16016, 8952),
(16016, 8953),
(16016, 8954),
(16016, 8955),
(16016, 8956),
(16016, 8957),
(16016, 8958),
(16016, 8959),
(16016, 9016),
(16016, 9017),
(16016, 9018),
(16016, 9019),
(16016, 9020),
(16016, 9021),
(16016, 9022),
(16016, 10496),
(16016, 10497),
(16031, 8946),
(16032, 8949),
(16032, 8950),
(16032, 9015),
(16033, 8961),
(16033, 8962),
(16033, 8963),
(16033, 8964),
(16033, 8965),
(16033, 8966),
(16033, 8967),
(16033, 8968),
(16033, 8969),
(16033, 8970),
(16033, 8985),
(16033, 8986),
(16033, 8987),
(16033, 8988),
(16033, 8989),
(16033, 8990),
(16033, 8991),
(16033, 8992),
(16033, 8994),
(16033, 8995),
(16033, 8997),
(16033, 8998),
(16073, 8996),
(16091, 9023),
(16105, 9026),
(16106, 9028),
(16108, 8982),
(16109, 8984),
(16112, 9131),
(16112, 9132),
(16115, 9033),
(16115, 9045),
(16116, 9121),
(16116, 9122),
(16116, 9123),
(16116, 9128),
(16116, 9129),
(16128, 13158),
(16128, 26012),
(16131, 9126),
(16131, 9127),
(16132, 9124),
(16132, 9125),
(16133, 9211),
(16133, 9213),
(16135, 9136),
(16135, 9137),
(16144, 9067),
(16183, 9148),
(16187, 9130),
(16189, 9133),
(16191, 9134),
(16192, 9135),
(16196, 9147),
(16197, 9138),
(16197, 9139),
(16197, 9140),
(16197, 9327),
(16197, 9329),
(16197, 9487),
(16197, 9488),
(16198, 9149),
(16198, 9164),
(16199, 9150),
(16199, 9151),
(16200, 9155),
(16201, 9157),
(16201, 9174),
(16202, 9158),
(16202, 9159),
(16203, 9161),
(16203, 9172),
(16204, 9170),
(16204, 9220),
(16205, 9216),
(16205, 9217),
(16205, 9218),
(16205, 9219),
(16210, 9144),
(16210, 9254),
(16210, 9395),
(16212, 9141),
(16212, 9142),
(16213, 9145),
(16219, 9143),
(16219, 9146),
(16220, 9214),
(16224, 9152),
(16226, 9165),
(16231, 9160),
(16231, 9163),
(16231, 9166),
(16237, 9169),
(16239, 9167),
(16239, 9176),
(16239, 9282),
(16239, 9328),
(16239, 9811),
(16240, 9877),
(16251, 9192),
(16251, 9199),
(16252, 9173),
(16252, 9180),
(16252, 9758),
(16253, 9171),
(16268, 9491),
(16268, 10548),
(16275, 9677),
(16276, 9489),
(16285, 12616),
(16287, 9189),
(16287, 9425),
(16289, 9193),
(16293, 9207),
(16295, 9212),
(16361, 9085),
(16361, 9153),
(16362, 8490),
(16376, 9234),
(16376, 9235),
(16376, 9236),
(16376, 9237),
(16376, 9238),
(16376, 9239),
(16376, 9240),
(16376, 9241),
(16376, 9242),
(16376, 9243),
(16376, 9244),
(16376, 9245),
(16376, 9246),
(16388, 9843),
(16397, 9258),
(16399, 9259),
(16416, 9266),
(16417, 9268),
(16418, 9267),
(16462, 9274),
(16463, 9276),
(16463, 9277),
(16464, 9275),
(16475, 9279),
(16477, 9280),
(16477, 9369),
(16477, 9371),
(16477, 9409),
(16478, 9260),
(16480, 9281),
(16494, 9265),
(16499, 9288),
(16500, 9290),
(16501, 9287),
(16502, 9283),
(16502, 9291),
(16503, 9289),
(16514, 9293),
(16514, 9294),
(16514, 10302),
(16514, 10304),
(16531, 9292),
(16531, 9310),
(16535, 9303),
(16535, 9309),
(16535, 9312),
(16546, 9311),
(16546, 10303),
(16554, 9314),
(16574, 9344),
(16574, 9410),
(16575, 9496),
(16576, 10388),
(16577, 9498),
(16577, 9499),
(16583, 10757),
(16583, 10758),
(16588, 10838),
(16588, 10864),
(16588, 10875),
(16588, 10905),
(16588, 10906),
(16588, 10907),
(16601, 9315),
(16646, 3001),
(16646, 4968),
(16646, 8419),
(16646, 10605),
(16647, 8419),
(16647, 9529),
(16647, 10789),
(16647, 10790),
(16648, 8419),
(16649, 7562),
(16651, 2861),
(16652, 1943),
(16652, 8250),
(16655, 5928),
(16658, 8254),
(16659, 8254),
(16669, 9710),
(16673, 8151),
(16673, 9617),
(16681, 9601),
(16684, 9532),
(16684, 10372),
(16684, 10794),
(16685, 8233),
(16721, 5925),
(16738, 8151),
(16739, 10520),
(16756, 8254),
(16768, 9605),
(16771, 10371),
(16788, 9319),
(16788, 9322),
(16788, 9323),
(16788, 9339),
(16788, 9365),
(16788, 9386),
(16789, 9340),
(16789, 9391),
(16789, 10103),
(16790, 9381),
(16790, 9397),
(16790, 10442),
(16791, 9366),
(16791, 9370),
(16792, 9396),
(16793, 9374),
(16793, 9472),
(16793, 10286),
(16794, 9387),
(16796, 9426),
(16796, 9427),
(16796, 9430),
(16796, 9545),
(16796, 10443),
(16797, 9398),
(16799, 9399),
(16799, 9490),
(16802, 9621),
(16802, 9812),
(16813, 9638),
(16814, 9639),
(16815, 9640),
(16815, 9645),
(16817, 9367),
(16817, 9388),
(16817, 9389),
(16817, 11935),
(16817, 11964),
(16818, 9368),
(16818, 9388),
(16818, 9389),
(16818, 11933),
(16818, 11966),
(16819, 9492),
(16819, 10141),
(16819, 10160),
(16819, 10400),
(16819, 10762),
(16819, 10937),
(16820, 10482),
(16820, 10483),
(16825, 10058),
(16826, 9558),
(16827, 10050),
(16827, 10057),
(16829, 9494),
(16830, 9493),
(16833, 9424),
(16834, 9390),
(16834, 9543),
(16837, 9355),
(16837, 10079),
(16837, 10099),
(16839, 10047),
(16839, 10093),
(16839, 10399),
(16841, 10119),
(16845, 9406),
(16850, 9385),
(16850, 9417),
(16851, 9420),
(16851, 9563),
(16852, 9423),
(16858, 9345),
(16858, 10213),
(16885, 9732),
(16885, 9912),
(16888, 10159),
(16915, 10236),
(16915, 10238),
(16915, 10629),
(16915, 10630),
(16991, 9372),
(16991, 10255),
(16993, 9375),
(17006, 9383),
(17015, 9376),
(17062, 9401),
(17069, 9664),
(17071, 9305),
(17071, 9313),
(17072, 9665),
(17079, 9422),
(17080, 9419),
(17081, 9416),
(17082, 9415),
(17087, 9450),
(17087, 9451),
(17089, 9421),
(17089, 9449),
(17093, 9431),
(17094, 9436),
(17094, 9457),
(17095, 9437),
(17097, 9439),
(17098, 9428),
(17099, 9443),
(17099, 9444),
(17099, 10590),
(17099, 10592),
(17101, 9452),
(17101, 9453),
(17103, 9429),
(17105, 9432),
(17106, 9533),
(17109, 9440),
(17110, 9454),
(17110, 9757),
(17110, 10324),
(17114, 9559),
(17116, 9456),
(17116, 9623),
(17120, 8417),
(17123, 9442),
(17123, 9447),
(17127, 9448),
(17127, 9609),
(17204, 9501),
(17204, 9552),
(17205, 9465),
(17205, 9467),
(17205, 9468),
(17212, 9461),
(17212, 9464),
(17214, 9463),
(17215, 9473),
(17215, 9505),
(17218, 9435),
(17219, 8410),
(17219, 9462),
(17219, 9500),
(17219, 9551),
(17219, 14111),
(17223, 9469),
(17223, 9470),
(17223, 9471),
(17224, 9460),
(17224, 9618),
(17226, 9483),
(17232, 9538),
(17238, 9446),
(17238, 9474),
(17240, 9506),
(17240, 9530),
(17240, 9531),
(17240, 9537),
(17240, 9602),
(17240, 9751),
(17241, 9513),
(17241, 9515),
(17242, 9523),
(17246, 9512),
(17275, 9503),
(17275, 9504),
(17275, 9508),
(17275, 9509),
(17287, 9518),
(17287, 9521),
(17288, 9524),
(17291, 9517),
(17294, 9525),
(17303, 9516),
(17303, 9522),
(17310, 9526),
(17311, 9527),
(17312, 9528),
(17355, 9534),
(17355, 9536),
(17360, 9539),
(17361, 9540),
(17362, 9541),
(17363, 9542),
(17364, 9544),
(17421, 9548),
(17421, 9549),
(17423, 9581),
(17423, 9584),
(17423, 9585),
(17423, 9620),
(17423, 10064),
(17424, 9561),
(17424, 9632),
(17431, 9553),
(17433, 9567),
(17433, 9569),
(17434, 9574),
(17434, 9578),
(17434, 9629),
(17435, 9554),
(17440, 9565),
(17440, 9622),
(17441, 9562),
(17442, 9560),
(17443, 9570),
(17443, 9571),
(17445, 9573),
(17468, 9555),
(17468, 9699),
(17468, 9762),
(17479, 9589),
(17479, 9607),
(17480, 9582),
(17480, 10350),
(17481, 9595),
(17482, 9586),
(17483, 10366),
(17488, 10428),
(17493, 9572),
(17508, 9579),
(17509, 9598),
(17509, 9600),
(17511, 8254),
(17513, 1939),
(17513, 8250),
(17519, 8410);
INSERT INTO `creature_quest_starter` (`id`, `quest`) VALUES
(17520, 8410),
(17538, 10968),
(17545, 10102),
(17553, 9603),
(17554, 9604),
(17555, 9606),
(17557, 9575),
(17558, 9590),
(17558, 9608),
(17584, 9625),
(17586, 9634),
(17587, 9612),
(17599, 9624),
(17600, 9628),
(17613, 9630),
(17613, 9631),
(17613, 9680),
(17613, 9824),
(17613, 9825),
(17613, 9826),
(17613, 9840),
(17613, 9844),
(17613, 9860),
(17614, 9591),
(17614, 9592),
(17614, 9593),
(17614, 9633),
(17614, 9675),
(17634, 9636),
(17636, 9637),
(17636, 9644),
(17637, 9635),
(17642, 9580),
(17642, 9643),
(17642, 9647),
(17649, 9663),
(17649, 9666),
(17649, 9668),
(17658, 9693),
(17658, 9756),
(17658, 9760),
(17663, 9648),
(17663, 9649),
(17674, 9687),
(17674, 9688),
(17674, 9689),
(17676, 9669),
(17682, 9667),
(17684, 9641),
(17684, 9642),
(17684, 9694),
(17684, 9696),
(17684, 9700),
(17684, 9779),
(17686, 9670),
(17703, 9671),
(17712, 9674),
(17712, 9682),
(17712, 9683),
(17717, 9678),
(17717, 9681),
(17717, 9685),
(17717, 9690),
(17717, 9692),
(17717, 9707),
(17717, 9721),
(17718, 9684),
(17807, 9686),
(17807, 9691),
(17825, 9698),
(17831, 9701),
(17831, 9702),
(17831, 9708),
(17831, 9709),
(17834, 9697),
(17834, 9895),
(17834, 9957),
(17841, 9716),
(17841, 9718),
(17841, 9720),
(17841, 9724),
(17841, 9765),
(17841, 9766),
(17841, 9778),
(17841, 9876),
(17843, 9703),
(17843, 9711),
(17844, 9740),
(17844, 9746),
(17844, 9748),
(17844, 9753),
(17849, 9705),
(17856, 9714),
(17856, 9715),
(17856, 9726),
(17856, 9727),
(17857, 9717),
(17858, 9728),
(17866, 9719),
(17876, 10284),
(17877, 9729),
(17884, 9738),
(17884, 9763),
(17909, 9784),
(17909, 9802),
(17909, 10096),
(17909, 10897),
(17923, 9739),
(17923, 9742),
(17923, 9743),
(17923, 9744),
(17923, 9919),
(17924, 9808),
(17924, 9809),
(17925, 9806),
(17925, 9807),
(17926, 9741),
(17927, 10065),
(17956, 9747),
(17956, 9788),
(17969, 9752),
(17982, 9759),
(17986, 9761),
(17986, 10066),
(17986, 10067),
(18003, 9776),
(18003, 9786),
(18003, 9787),
(18003, 9801),
(18003, 9803),
(18004, 9782),
(18004, 9783),
(18004, 9793),
(18005, 9781),
(18005, 9790),
(18006, 9780),
(18006, 9791),
(18007, 9777),
(18007, 10355),
(18008, 9792),
(18008, 9835),
(18008, 9839),
(18008, 10104),
(18008, 10115),
(18009, 9830),
(18009, 9833),
(18009, 9902),
(18010, 9834),
(18010, 9905),
(18011, 9771),
(18011, 9774),
(18011, 9775),
(18011, 9796),
(18012, 9770),
(18012, 9898),
(18013, 9795),
(18013, 9822),
(18013, 9823),
(18013, 10105),
(18013, 10118),
(18014, 9814),
(18014, 9816),
(18015, 9841),
(18015, 9842),
(18016, 9769),
(18016, 9773),
(18016, 9899),
(18017, 9846),
(18017, 9847),
(18018, 9845),
(18018, 9903),
(18018, 9904),
(18019, 9794),
(18019, 9848),
(18020, 10066),
(18020, 10067),
(18024, 10066),
(18024, 10067),
(18035, 9772),
(18063, 10044),
(18063, 10172),
(18066, 9863),
(18067, 9864),
(18068, 9867),
(18070, 9785),
(18070, 9894),
(18071, 9818),
(18073, 9800),
(18073, 9804),
(18073, 9805),
(18073, 9810),
(18073, 9815),
(18074, 9862),
(18090, 11048),
(18091, 9797),
(18099, 9819),
(18099, 9821),
(18099, 9849),
(18099, 9853),
(18106, 9888),
(18106, 9906),
(18106, 9907),
(18106, 10107),
(18141, 10045),
(18141, 10081),
(18141, 10171),
(18141, 10175),
(18165, 9829),
(18166, 9831),
(18166, 9832),
(18166, 9836),
(18166, 9838),
(18166, 10211),
(18166, 10551),
(18166, 10552),
(18166, 10553),
(18166, 10554),
(18166, 10883),
(18180, 9789),
(18180, 9850),
(18180, 9851),
(18180, 9852),
(18183, 9873),
(18183, 9924),
(18183, 9954),
(18200, 9854),
(18200, 9855),
(18200, 9856),
(18209, 9879),
(18210, 9868),
(18218, 9857),
(18218, 9858),
(18218, 9859),
(18221, 9610),
(18222, 9874),
(18223, 9921),
(18223, 9922),
(18223, 10108),
(18224, 9878),
(18229, 9865),
(18229, 9866),
(18233, 9869),
(18234, 9870),
(18252, 10026),
(18253, 10725),
(18253, 10726),
(18253, 10727),
(18253, 10728),
(18253, 10729),
(18253, 10730),
(18253, 10731),
(18253, 10732),
(18253, 10733),
(18253, 10734),
(18253, 10735),
(18253, 10736),
(18253, 10738),
(18253, 10739),
(18253, 10740),
(18253, 10741),
(18253, 11031),
(18253, 11032),
(18253, 11033),
(18253, 11034),
(18261, 9927),
(18261, 9928),
(18261, 9931),
(18261, 9932),
(18261, 9933),
(18261, 9934),
(18262, 9890),
(18265, 9882),
(18265, 9883),
(18265, 9885),
(18265, 9886),
(18265, 9887),
(18265, 9892),
(18265, 9893),
(18266, 10106),
(18266, 13408),
(18266, 13410),
(18267, 10110),
(18267, 13409),
(18267, 13411),
(18273, 9889),
(18273, 9891),
(18276, 9900),
(18276, 9925),
(18294, 9897),
(18295, 9896),
(18295, 9901),
(18300, 9910),
(18300, 9916),
(18301, 9983),
(18302, 9944),
(18333, 9914),
(18333, 9915),
(18335, 9913),
(18353, 9917),
(18353, 9918),
(18353, 9920),
(18369, 9955),
(18383, 10000),
(18383, 10027),
(18384, 10018),
(18384, 10023),
(18384, 10791),
(18385, 9993),
(18385, 10201),
(18386, 9987),
(18386, 10862),
(18387, 9998),
(18387, 10016),
(18387, 10022),
(18389, 9986),
(18390, 9992),
(18390, 10028),
(18407, 9937),
(18407, 10478),
(18407, 10479),
(18408, 9938),
(18408, 10476),
(18408, 10477),
(18414, 9945),
(18414, 9946),
(18415, 9948),
(18416, 9956),
(18416, 9982),
(18417, 9991),
(18417, 9999),
(18417, 10001),
(18417, 10004),
(18417, 10011),
(18417, 10641),
(18417, 10646),
(18417, 10649),
(18417, 10650),
(18417, 10668),
(18417, 10669),
(18417, 10691),
(18424, 9951),
(18445, 9923),
(18446, 9968),
(18446, 9971),
(18446, 9978),
(18446, 9994),
(18446, 9995),
(18447, 9960),
(18447, 10006),
(18447, 10448),
(18459, 9961),
(18459, 10005),
(18459, 10444),
(18471, 9962),
(18471, 9967),
(18471, 9970),
(18471, 9972),
(18471, 9973),
(18471, 9977),
(18481, 10167),
(18481, 10560),
(18481, 10704),
(18481, 10882),
(18481, 10884),
(18481, 10885),
(18481, 10886),
(18481, 10888),
(18481, 10949),
(18481, 13082),
(18481, 13430),
(18482, 9979),
(18484, 9990),
(18484, 10112),
(18528, 10958),
(18528, 10985),
(18530, 10416),
(18530, 10419),
(18530, 10507),
(18531, 10412),
(18531, 10414),
(18531, 10415),
(18531, 10656),
(18531, 10658),
(18531, 10659),
(18537, 10325),
(18537, 10326),
(18537, 10327),
(18537, 10653),
(18537, 10654),
(18537, 10655),
(18537, 11481),
(18538, 10021),
(18538, 10409),
(18538, 10420),
(18538, 10421),
(18565, 10002),
(18565, 10007),
(18566, 10003),
(18566, 10008),
(18584, 10009),
(18584, 10010),
(18594, 11482),
(18596, 10024),
(18596, 10025),
(18597, 10017),
(18597, 10019),
(18597, 10020),
(18653, 10037),
(18675, 10030),
(18687, 10082),
(18687, 10085),
(18687, 10101),
(18687, 10170),
(18704, 10035),
(18705, 10036),
(18712, 10039),
(18712, 10868),
(18713, 10038),
(18713, 10869),
(18714, 10041),
(18714, 10043),
(18715, 10040),
(18715, 10042),
(18723, 10283),
(18723, 10285),
(18760, 10051),
(18760, 10052),
(18802, 10905),
(18802, 10906),
(18802, 10907),
(18804, 10063),
(18816, 10074),
(18816, 10075),
(18817, 10076),
(18817, 10077),
(18891, 10091),
(18893, 10177),
(18927, 14022),
(18930, 10289),
(18931, 10140),
(18933, 10097),
(18933, 10098),
(18940, 11497),
(18940, 11498),
(19035, 10109),
(19035, 10111),
(19045, 10180),
(19052, 10902),
(19133, 10114),
(19137, 10113),
(19169, 14036),
(19202, 11875),
(19217, 10173),
(19217, 10174),
(19217, 10300),
(19227, 11130),
(19229, 10288),
(19253, 10120),
(19254, 9407),
(19255, 10291),
(19256, 10123),
(19256, 10124),
(19273, 10129),
(19273, 10162),
(19273, 10208),
(19273, 10388),
(19293, 10132),
(19293, 10349),
(19294, 10351),
(19308, 10254),
(19309, 10142),
(19309, 10143),
(19310, 10144),
(19310, 10146),
(19310, 10340),
(19333, 10627),
(19333, 10663),
(19344, 9349),
(19344, 9356),
(19344, 9361),
(19361, 10367),
(19361, 10368),
(19361, 10369),
(19367, 9351),
(19367, 10161),
(19370, 10626),
(19370, 10662),
(19401, 10347),
(19409, 10895),
(19412, 10168),
(19417, 10031),
(19417, 10228),
(19466, 10241),
(19466, 10246),
(19466, 10313),
(19466, 10328),
(19466, 10431),
(19467, 10243),
(19467, 10263),
(19467, 10299),
(19467, 10321),
(19467, 10322),
(19467, 10323),
(19467, 10407),
(19467, 10410),
(19468, 10189),
(19468, 10193),
(19468, 10194),
(19468, 10264),
(19468, 10329),
(19468, 10338),
(19468, 10365),
(19468, 10508),
(19468, 10509),
(19469, 10202),
(19469, 10204),
(19469, 10341),
(19471, 11036),
(19475, 11880),
(19481, 10256),
(19481, 10257),
(19488, 10184),
(19488, 10185),
(19488, 10222),
(19488, 10223),
(19488, 10312),
(19488, 10316),
(19488, 10319),
(19488, 10320),
(19489, 10233),
(19489, 10239),
(19489, 10240),
(19489, 10343),
(19496, 10178),
(19542, 10094),
(19569, 10183),
(19570, 10186),
(19570, 10203),
(19570, 10225),
(19570, 10247),
(19578, 10190),
(19589, 10191),
(19617, 10199),
(19617, 10342),
(19634, 10221),
(19644, 10176),
(19644, 10188),
(19644, 10192),
(19644, 10209),
(19644, 10301),
(19645, 10206),
(19645, 10232),
(19645, 10333),
(19670, 10216),
(19671, 10218),
(19674, 10165),
(19678, 11045),
(19678, 11046),
(19682, 10220),
(19683, 10278),
(19683, 10294),
(19683, 10295),
(19684, 10210),
(19690, 10309),
(19697, 10227),
(19698, 10164),
(19709, 10224),
(19709, 10226),
(19715, 10231),
(19720, 10251),
(19728, 10234),
(19728, 10235),
(19728, 10237),
(19736, 10230),
(19736, 10250),
(19736, 10258),
(19832, 10248),
(19832, 10249),
(19840, 10197),
(19840, 10198),
(19840, 10200),
(19840, 10330),
(19844, 10252),
(19844, 10253),
(19880, 10205),
(19880, 10262),
(19880, 10265),
(19880, 10266),
(19880, 10308),
(19932, 10296),
(19935, 10460),
(19935, 10461),
(19935, 10462),
(19935, 10463),
(19935, 10464),
(19935, 10465),
(19935, 10466),
(19935, 10467),
(19935, 10468),
(19935, 10469),
(19935, 10470),
(19935, 10471),
(19935, 10472),
(19935, 10473),
(19935, 10474),
(19935, 10475),
(19935, 11103),
(19935, 11104),
(19935, 11105),
(19935, 11106),
(19935, 13432),
(20066, 10267),
(20066, 10268),
(20066, 10311),
(20067, 10290),
(20067, 10293),
(20071, 10270),
(20084, 10269),
(20084, 10280),
(20092, 10275),
(20110, 10272),
(20110, 10273),
(20110, 10274),
(20112, 10276),
(20112, 10317),
(20130, 10277),
(20130, 10282),
(20142, 10279),
(20154, 10281),
(20159, 10287),
(20162, 10652),
(20201, 10297),
(20201, 10298),
(20205, 10435),
(20206, 10919),
(20232, 10163),
(20232, 10382),
(20233, 9799),
(20234, 10344),
(20235, 10346),
(20281, 10310),
(20341, 10315),
(20393, 10318),
(20406, 9601),
(20407, 8410),
(20407, 10490),
(20407, 10491),
(20407, 14111),
(20415, 10337),
(20448, 10339),
(20448, 10970),
(20448, 10971),
(20448, 10972),
(20448, 10973),
(20448, 10974),
(20449, 10411),
(20450, 10422),
(20463, 10331),
(20463, 10332),
(20464, 10334),
(20470, 10335),
(20471, 10336),
(20471, 10855),
(20471, 10856),
(20471, 10857),
(20482, 10384),
(20482, 10385),
(20482, 10405),
(20482, 10406),
(20482, 10408),
(20482, 10975),
(20482, 10976),
(20482, 10977),
(20482, 10981),
(20482, 10982),
(20518, 10271),
(20551, 10345),
(20552, 10353),
(20604, 10352),
(20604, 10354),
(20604, 10356),
(20604, 10357),
(20604, 10358),
(20612, 10359),
(20612, 10360),
(20612, 10361),
(20612, 10362),
(20612, 10363),
(20677, 10403),
(20678, 10403),
(20679, 10403),
(20722, 7494),
(20722, 10373),
(20724, 7492),
(20724, 10374),
(20735, 24579),
(20735, 24580),
(20735, 24581),
(20735, 24582),
(20735, 24583),
(20735, 24584),
(20735, 24585),
(20735, 24586),
(20735, 24587),
(20735, 24588),
(20735, 24589),
(20735, 24590),
(20763, 10425),
(20780, 10380),
(20780, 10381),
(20793, 10394),
(20793, 10396),
(20793, 10397),
(20810, 10348),
(20810, 10417),
(20810, 10418),
(20810, 10423),
(20811, 10424),
(20811, 10430),
(20871, 10426),
(20871, 10427),
(20871, 10429),
(20907, 10437),
(20907, 10438),
(20907, 10439),
(20913, 10436),
(20913, 10440),
(20920, 10432),
(20921, 10433),
(20921, 10434),
(21006, 9996),
(21006, 10446),
(21007, 9997),
(21007, 10447),
(21024, 10458),
(21024, 10480),
(21024, 10481),
(21024, 10513),
(21027, 10451),
(21066, 10455),
(21066, 10456),
(21066, 10457),
(21066, 10506),
(21088, 10860),
(21107, 11043),
(21110, 10609),
(21112, 11040),
(21117, 10486),
(21117, 10487),
(21117, 10488),
(21118, 10632),
(21133, 10484),
(21133, 10485),
(21133, 10903),
(21147, 10503),
(21147, 10505),
(21147, 10784),
(21147, 10786),
(21151, 10511),
(21151, 10512),
(21155, 10500),
(21156, 10501),
(21158, 10502),
(21158, 10504),
(21158, 10580),
(21175, 10389),
(21183, 10514),
(21183, 10515),
(21183, 10519),
(21183, 10521),
(21183, 10527),
(21183, 10546),
(21183, 10588),
(21197, 10510),
(21209, 10055),
(21209, 10078),
(21209, 10763),
(21209, 10764),
(21256, 10449),
(21256, 10450),
(21257, 10242),
(21277, 10516),
(21277, 10517),
(21277, 10518),
(21279, 10538),
(21279, 10835),
(21283, 10086),
(21283, 10087),
(21291, 10522),
(21291, 10523),
(21292, 10528),
(21293, 10547),
(21293, 10570),
(21293, 10576),
(21293, 10577),
(21293, 10578),
(21293, 10579),
(21311, 10525),
(21311, 10526),
(21318, 10537),
(21318, 10540),
(21318, 10541),
(21349, 10542),
(21349, 10543),
(21349, 10544),
(21349, 10545),
(21357, 10562),
(21357, 10563),
(21357, 10564),
(21357, 10572),
(21357, 10573),
(21357, 10589),
(21357, 10766),
(21359, 10595),
(21359, 10596),
(21359, 10597),
(21359, 10598),
(21359, 10599),
(21359, 10604),
(21359, 10767),
(21402, 10568),
(21402, 10571),
(21402, 10574),
(21402, 10575),
(21402, 11100),
(21411, 10550),
(21460, 10557),
(21460, 10710),
(21460, 10711),
(21460, 10712),
(21460, 10716),
(21465, 10664),
(21465, 10665),
(21465, 10666),
(21465, 10667),
(21465, 10670),
(21465, 10676),
(21465, 10679),
(21469, 10555),
(21471, 10582),
(21471, 10583),
(21471, 10585),
(21471, 10586),
(21475, 10600),
(21475, 10601),
(21475, 10602),
(21475, 10603),
(21496, 10565),
(21496, 10566),
(21496, 10615),
(21657, 10814),
(21657, 10836),
(21657, 10837),
(21657, 10854),
(21657, 10858),
(21690, 10581),
(21691, 10584),
(21691, 10657),
(21691, 10674),
(21691, 10675),
(21700, 10705),
(21700, 10707),
(21700, 10708),
(21700, 10946),
(21700, 10947),
(21700, 10948),
(21755, 10594),
(21755, 10608),
(21769, 10702),
(21769, 10750),
(21770, 10660),
(21770, 10672),
(21770, 10673),
(21772, 10624),
(21772, 10625),
(21772, 10633),
(21773, 10703),
(21773, 10772),
(21774, 10642),
(21774, 10643),
(21774, 10644),
(21777, 10661),
(21777, 10677),
(21777, 10678),
(21782, 10567),
(21782, 10607),
(21789, 10611),
(21789, 10613),
(21789, 10745),
(21790, 10606),
(21790, 10612),
(21790, 10744),
(21797, 10634),
(21797, 10635),
(21797, 10636),
(21797, 10639),
(21797, 10645),
(21822, 10619),
(21822, 10816),
(21824, 10620),
(21824, 10671),
(21826, 10622),
(21826, 10628),
(21860, 10587),
(21860, 10637),
(21860, 10640),
(21860, 10651),
(21895, 10617),
(21896, 10618),
(21937, 10680),
(21938, 10681),
(21950, 10718),
(21953, 10807),
(21953, 10817),
(21954, 10687),
(21954, 10688),
(21954, 10689),
(21954, 10692),
(21955, 10683),
(21955, 10684),
(21955, 10685),
(21955, 10686),
(21955, 11095),
(21962, 10706),
(21983, 10717),
(21983, 10747),
(21984, 10614),
(21984, 10714),
(21984, 10720),
(21984, 10721),
(21984, 10723),
(21984, 10724),
(21984, 10742),
(21984, 10783),
(21998, 10751),
(21998, 10765),
(21998, 10768),
(21998, 10769),
(22004, 10709),
(22004, 10843),
(22004, 10845),
(22004, 10846),
(22004, 10867),
(22007, 10682),
(22007, 10713),
(22007, 10748),
(22007, 10829),
(22007, 10894),
(22020, 10812),
(22024, 10777),
(22024, 10778),
(22024, 10780),
(22024, 10782),
(22024, 10808),
(22042, 10569),
(22042, 10759),
(22043, 10760),
(22043, 10761),
(22053, 10770),
(22053, 10771),
(22059, 10773),
(22059, 10774),
(22059, 10775),
(22059, 10776),
(22103, 10715),
(22103, 10749),
(22103, 10785),
(22103, 10799),
(22103, 10800),
(22103, 10801),
(22103, 10805),
(22103, 10806),
(22107, 10792),
(22112, 10866),
(22112, 10870),
(22113, 10804),
(22113, 10811),
(22113, 11012),
(22113, 11013),
(22127, 10819),
(22127, 10910),
(22133, 10753),
(22149, 10795),
(22149, 10798),
(22149, 10802),
(22149, 10818),
(22150, 10796),
(22150, 10803),
(22208, 10831),
(22211, 10822),
(22211, 10823),
(22211, 10824),
(22212, 10833),
(22213, 10832),
(22214, 10826),
(22214, 10827),
(22214, 10828),
(22215, 10830),
(22231, 10813),
(22231, 10834),
(22272, 10839),
(22272, 10848),
(22272, 10861),
(22272, 10874),
(22272, 10889),
(22272, 10908),
(22278, 10840),
(22278, 10842),
(22292, 10847),
(22292, 10849),
(22292, 11028),
(22293, 10850),
(22312, 10851),
(22312, 10853),
(22312, 10859),
(22312, 10865),
(22364, 10873),
(22365, 10852),
(22370, 10878),
(22370, 10881),
(22373, 10879),
(22377, 10887),
(22386, 10722),
(22386, 10893),
(22420, 10896),
(22421, 10900),
(22421, 10901),
(22421, 13431),
(22423, 10904),
(22423, 10911),
(22423, 10912),
(22424, 10898),
(22427, 10899),
(22429, 10917),
(22429, 10918),
(22430, 10909),
(22430, 10916),
(22430, 10935),
(22430, 10936),
(22433, 11063),
(22446, 10913),
(22446, 10914),
(22446, 10915),
(22456, 10877),
(22456, 10923),
(22458, 10922),
(22462, 10920),
(22462, 10921),
(22462, 10926),
(22479, 10924),
(22481, 10929),
(22481, 10930),
(22488, 10927),
(22489, 10928),
(22497, 10984),
(22817, 10945),
(22817, 10951),
(22817, 10953),
(22817, 10960),
(22817, 10963),
(22817, 10967),
(22817, 11975),
(22818, 10950),
(22818, 10952),
(22818, 10954),
(22818, 10956),
(22818, 10962),
(22818, 10966),
(22820, 10944),
(22832, 10961),
(22832, 10964),
(22832, 10979),
(22832, 10994),
(22832, 11001),
(22832, 11011),
(22834, 10965),
(22837, 10978),
(22899, 10969),
(22924, 10980),
(22924, 10986),
(22924, 10990),
(22924, 10993),
(22940, 10983),
(22941, 10995),
(22941, 10996),
(22941, 10997),
(22941, 10998),
(22941, 11000),
(22941, 11009),
(22981, 10987),
(22981, 10988),
(22995, 10989),
(23010, 7023),
(23038, 11005),
(23038, 11024),
(23038, 11073),
(23042, 11004),
(23042, 11006),
(23048, 11008),
(23053, 11022),
(23120, 11010),
(23120, 11023),
(23120, 11102),
(23127, 8410),
(23127, 9462),
(23127, 9502),
(23127, 9547),
(23127, 14111),
(23139, 11014),
(23139, 11086),
(23139, 11094),
(23139, 11099),
(23139, 11108),
(23140, 11015),
(23140, 11016),
(23140, 11017),
(23140, 11018),
(23140, 11053),
(23140, 11075),
(23140, 11084),
(23140, 11092),
(23140, 11107),
(23141, 11019),
(23141, 11020),
(23141, 11035),
(23141, 11049),
(23141, 11050),
(23149, 11076),
(23149, 11082),
(23158, 10957),
(23158, 10959),
(23166, 11083),
(23233, 11025),
(23233, 11057),
(23233, 11058),
(23233, 11059),
(23233, 11062),
(23233, 11080),
(23233, 11091),
(23253, 11026),
(23253, 11051),
(23265, 11037),
(23268, 11042),
(23268, 11044),
(23270, 11038),
(23271, 11038),
(23272, 11039),
(23273, 11039),
(23280, 11047),
(23291, 11054),
(23291, 11055),
(23300, 11027),
(23300, 11060),
(23300, 11079),
(23306, 11029),
(23306, 11056),
(23306, 11074),
(23306, 11885),
(23316, 11030),
(23316, 11061),
(23334, 11078),
(23334, 11119),
(23335, 11065),
(23335, 11066),
(23338, 10991),
(23338, 10992),
(23340, 11064),
(23342, 11067),
(23344, 11068),
(23346, 11070),
(23348, 11071),
(23376, 11077),
(23383, 11085),
(23415, 11093),
(23427, 11089),
(23427, 11090),
(23434, 11097),
(23449, 11096),
(23449, 11098),
(23452, 11101),
(23461, 11112),
(23462, 11109),
(23463, 11111),
(23464, 11110),
(23465, 11114),
(23466, 11113),
(23486, 11117),
(23486, 11118),
(23534, 8419),
(23535, 7562),
(23546, 11243),
(23546, 11244),
(23546, 11255),
(23546, 11290),
(23546, 11291),
(23547, 11228),
(23548, 11273),
(23548, 11448),
(23558, 11122),
(23558, 11318),
(23559, 11132),
(23559, 11166),
(23559, 11171),
(23566, 11126),
(23566, 11128),
(23566, 11133),
(23566, 11134),
(23568, 11144),
(23568, 11148),
(23568, 11149),
(23569, 11139),
(23569, 11140),
(23569, 11141),
(23570, 11217),
(23579, 11158),
(23579, 11159),
(23579, 11160),
(23579, 11161),
(23579, 11162),
(23600, 11156),
(23600, 11172),
(23601, 11169),
(23601, 11173),
(23618, 11129),
(23627, 11293),
(23628, 11294),
(23723, 11145),
(23723, 11146),
(23723, 11147),
(23728, 11420),
(23728, 11426),
(23728, 11427),
(23729, 12794),
(23730, 11443),
(23749, 11157),
(23749, 11187),
(23749, 11199),
(23749, 11235),
(23749, 11236),
(23749, 11248),
(23749, 11332),
(23749, 12297),
(23761, 11164),
(23761, 11165),
(23770, 11190),
(23773, 11155),
(23778, 11233),
(23778, 11234),
(23780, 11221),
(23780, 11229),
(23780, 11270),
(23780, 11272),
(23780, 11295),
(23784, 11241),
(23797, 11174),
(23797, 11207),
(23797, 11208),
(23804, 11504),
(23804, 11507),
(23804, 11568),
(23804, 11572),
(23831, 11175),
(23833, 11394),
(23833, 11396),
(23835, 11177),
(23835, 11191),
(23843, 11180),
(23843, 11181),
(23843, 11183),
(23858, 11163),
(23859, 12298),
(23870, 11182),
(23872, 11486),
(23872, 11487),
(23888, 11188),
(23888, 11238),
(23888, 11432),
(23891, 11176),
(23891, 11393),
(23892, 11192),
(23892, 11193),
(23895, 11153),
(23896, 11194),
(23897, 11195),
(23904, 11242),
(23904, 11403),
(23905, 11198),
(23906, 11202),
(23906, 11327),
(23906, 11328),
(23938, 11227),
(23938, 11253),
(23948, 11216),
(23951, 11136),
(23951, 11214),
(23973, 11219),
(23973, 11220),
(23973, 11361),
(23973, 11449),
(23973, 11450),
(23973, 12139),
(23975, 11333),
(23975, 11343),
(23975, 11344),
(23976, 11218),
(23976, 11240),
(23978, 11224),
(24027, 11282),
(24027, 11283),
(24027, 11285),
(24027, 11303),
(24032, 11267),
(24037, 11230),
(24037, 11232),
(24038, 11231),
(24038, 11239),
(24056, 11329),
(24056, 11410),
(24060, 11245),
(24060, 11246),
(24060, 11247),
(24060, 11250),
(24106, 11251),
(24111, 11252),
(24111, 13205),
(24117, 11313),
(24117, 11314),
(24117, 11315),
(24117, 11316),
(24117, 11319),
(24117, 11428),
(24122, 11274),
(24123, 11275),
(24123, 11281),
(24123, 11312),
(24125, 11411),
(24126, 11167),
(24126, 11168),
(24126, 11170),
(24126, 11304),
(24127, 11271),
(24127, 11433),
(24129, 11256),
(24129, 11263),
(24129, 11264),
(24130, 11257),
(24130, 11258),
(24130, 11259),
(24130, 11261),
(24131, 11292),
(24135, 11265),
(24135, 11268),
(24135, 11287),
(24137, 11262),
(24137, 13206),
(24139, 11269),
(24139, 11418),
(24145, 11276),
(24150, 11277),
(24150, 11278),
(24150, 11299),
(24151, 11300),
(24152, 11298),
(24155, 12182),
(24157, 11279),
(24157, 11280),
(24176, 11284),
(24186, 11286),
(24186, 11317),
(24186, 11323),
(24189, 11288),
(24189, 11289),
(24209, 11296),
(24218, 11301),
(24227, 11154),
(24234, 11297),
(24251, 11305),
(24251, 11306),
(24251, 11307),
(24251, 11308),
(24251, 12181),
(24252, 11309),
(24252, 11310),
(24252, 11424),
(24256, 11311),
(24261, 11324),
(24261, 11326),
(24261, 11414),
(24261, 11415),
(24261, 11416),
(24261, 11417),
(24273, 11322),
(24273, 11325),
(24282, 11302),
(24283, 11330),
(24283, 11331),
(24328, 11346),
(24328, 11348),
(24328, 11349),
(24359, 11397),
(24359, 11399),
(24362, 11350),
(24362, 11351),
(24362, 11352),
(24369, 11354),
(24369, 11362),
(24369, 11363),
(24369, 11368),
(24369, 11369),
(24369, 11370),
(24369, 11372),
(24369, 11373),
(24369, 11374),
(24369, 11375),
(24369, 11378),
(24369, 11382),
(24369, 11384),
(24369, 11386),
(24369, 11388),
(24369, 11499),
(24370, 11364),
(24370, 11371),
(24370, 11376),
(24370, 11383),
(24370, 11385),
(24370, 11387),
(24370, 11389),
(24370, 11500),
(24376, 11355),
(24376, 11358),
(24376, 11359),
(24390, 11365),
(24390, 11366),
(24390, 11367),
(24393, 11377),
(24393, 11379),
(24393, 11380),
(24393, 11381),
(24399, 11390),
(24399, 11391),
(24458, 12481),
(24468, 11321),
(24468, 12193),
(24468, 13932),
(24468, 13938),
(24494, 11406),
(24497, 11409),
(24497, 11412),
(24498, 11407),
(24499, 11408),
(24510, 11413),
(24510, 13931),
(24519, 11131),
(24519, 11135),
(24519, 11360),
(24519, 11439),
(24519, 11440),
(24519, 12135),
(24525, 11459),
(24525, 11479),
(24537, 11434),
(24537, 11455),
(24537, 11473),
(24537, 11476),
(24537, 11480),
(24539, 11510),
(24539, 11511),
(24539, 11512),
(24539, 11519),
(24539, 11567),
(24541, 11464),
(24541, 11466),
(24541, 11467),
(24544, 11422),
(24548, 11423),
(24634, 11421),
(24634, 11429),
(24634, 11430),
(24634, 11436),
(24643, 11509),
(24657, 11120),
(24657, 11431),
(24702, 11684),
(24702, 11685),
(24703, 11628),
(24703, 11630),
(24703, 11633),
(24703, 11640),
(24703, 11898),
(24703, 11929),
(24706, 11641),
(24709, 11647),
(24710, 11442),
(24711, 11447),
(24717, 11474),
(24729, 11451),
(24730, 11695),
(24730, 11706),
(24741, 11471),
(24750, 11460),
(24750, 11465),
(24750, 11468),
(24750, 11470),
(24755, 11456),
(24755, 11457),
(24755, 11458),
(24755, 11508),
(24784, 11469),
(24795, 11680),
(24795, 11733),
(24807, 11475),
(24807, 11483),
(24807, 11484),
(24807, 11485),
(24807, 11489),
(24807, 11491),
(24807, 11494),
(24807, 11495),
(24807, 11501),
(24810, 11472),
(24810, 12118),
(24811, 11477),
(24811, 11478),
(24813, 11488),
(24822, 11490),
(24848, 11492),
(24866, 11502),
(24881, 11503),
(24885, 11505),
(24886, 11506),
(24910, 11527),
(24910, 11529),
(24910, 11530),
(24932, 11514),
(24937, 11515),
(24937, 11516),
(24965, 11525),
(24967, 11523),
(24967, 11526),
(24975, 11520),
(24975, 11546),
(24975, 11521),
(25032, 11554),
(25032, 11555),
(25032, 11556),
(25032, 11557),
(25046, 11535),
(25046, 11536),
(25046, 11544),
(25057, 11532),
(25057, 11533),
(25061, 11537),
(25061, 11538),
(25069, 11539),
(25069, 11540),
(25088, 11541),
(25108, 11542),
(25108, 11543),
(25112, 11545),
(25112, 11548),
(25133, 11547),
(25140, 11877),
(25163, 11549),
(25167, 11550),
(25197, 11559),
(25197, 11560),
(25197, 11562),
(25197, 11566),
(25197, 11571),
(25199, 11561),
(25205, 11563),
(25205, 11565),
(25208, 11570),
(25211, 11564),
(25223, 9722),
(25223, 9723),
(25223, 9725),
(25223, 9735),
(25223, 9736),
(25223, 9737),
(25233, 11573),
(25235, 11963),
(25237, 11618),
(25237, 11709),
(25237, 11916),
(25245, 11603),
(25247, 11574),
(25249, 11575),
(25250, 11727),
(25251, 11599),
(25251, 11601),
(25256, 11595),
(25256, 11596),
(25256, 11597),
(25256, 13257),
(25257, 12496),
(25262, 11587),
(25262, 11590),
(25262, 11646),
(25262, 11671),
(25262, 11679),
(25272, 12486),
(25273, 11585),
(25273, 11586),
(25279, 11598),
(25279, 11602),
(25279, 11634),
(25280, 11611),
(25285, 11792),
(25285, 11793),
(25289, 11636),
(25291, 11576),
(25291, 11582),
(25291, 12728),
(25292, 11612),
(25292, 11617),
(25292, 11623),
(25299, 11791),
(25301, 12141),
(25302, 11604),
(25307, 11672),
(25314, 11900),
(25314, 11905),
(25314, 11910),
(25314, 11911),
(25324, 11891),
(25324, 12012),
(25326, 11591),
(25327, 11606),
(25327, 11608),
(25328, 11615),
(25329, 11642),
(25329, 11652),
(25335, 11592),
(25336, 11593),
(25336, 11594),
(25339, 11624),
(25339, 11631),
(25339, 11635),
(25356, 11681),
(25374, 11639),
(25376, 11627),
(25376, 11629),
(25376, 11649),
(25379, 11711),
(25380, 11721),
(25380, 11722),
(25381, 11716),
(25381, 11717),
(25381, 11719),
(25381, 11720),
(25385, 11600),
(25394, 11614),
(25394, 11616),
(25395, 11932),
(25425, 11637),
(25425, 11638),
(25435, 11613),
(25435, 11619),
(25435, 11620),
(25437, 11686),
(25437, 11703),
(25438, 11676),
(25440, 11714),
(25450, 11625),
(25450, 11626),
(25462, 12593),
(25462, 12641),
(25462, 12657),
(25475, 11643),
(25475, 11644),
(25475, 11651),
(25476, 11655),
(25476, 11656),
(25476, 11660),
(25476, 11661),
(25476, 11662),
(25477, 11645),
(25477, 11650),
(25477, 11653),
(25477, 11658),
(25477, 11670),
(25477, 11730),
(25480, 11648),
(25480, 11663),
(25504, 11664),
(25516, 11659),
(25580, 11665),
(25580, 11666),
(25580, 11667),
(25580, 11668),
(25580, 11669),
(25589, 11673),
(25590, 11708),
(25590, 11725),
(25602, 11674),
(25602, 11899),
(25602, 11909),
(25604, 11675),
(25604, 11677),
(25604, 11678),
(25604, 11683),
(25604, 11689),
(25607, 11688),
(25607, 11690),
(25636, 12471),
(25658, 11687),
(25697, 11691),
(25702, 11692),
(25702, 11704),
(25702, 11710),
(25705, 11693),
(25705, 11694),
(25705, 11697),
(25705, 11698),
(25705, 11701),
(25710, 11696),
(25714, 11699),
(25714, 11700),
(25729, 11705),
(25736, 11702),
(25737, 11707),
(25747, 11712),
(25747, 11788),
(25747, 11798),
(25780, 11713),
(25780, 11715),
(25780, 11718),
(25780, 11723),
(25784, 11682),
(25785, 11682),
(25807, 11726),
(25807, 11728),
(25807, 11795),
(25807, 11796),
(25807, 11873),
(25809, 11864),
(25809, 11866),
(25809, 11867),
(25809, 11876),
(25809, 11878),
(25809, 11892),
(25810, 11869),
(25810, 11870),
(25811, 11865),
(25811, 11868),
(25812, 11884),
(25816, 11797),
(25816, 11889),
(25816, 11897),
(25816, 11928),
(25825, 11789),
(25826, 11794),
(25838, 11871),
(25838, 11872),
(25849, 11881),
(25849, 11894),
(25862, 11879),
(25889, 11807),
(25919, 11836),
(25921, 11838),
(25926, 11843),
(25937, 11821),
(25940, 11856),
(25962, 11882),
(25975, 11657),
(25975, 11731),
(25975, 11921),
(25975, 11924),
(25978, 11888),
(25982, 11890),
(25982, 11895),
(25982, 11896),
(25982, 11907),
(25983, 11893),
(25984, 11887),
(25994, 11915),
(26083, 11901),
(26083, 11903),
(26083, 11904),
(26083, 11962),
(26083, 11965),
(26084, 11908),
(26084, 12035),
(26085, 11913),
(26104, 11906),
(26110, 11912),
(26110, 11914),
(26110, 13094),
(26110, 13095),
(26110, 13412),
(26113, 11922),
(26113, 11923),
(26113, 11925),
(26113, 11926),
(26117, 11918),
(26117, 11919),
(26117, 11931),
(26117, 11936),
(26117, 11940),
(26117, 11943),
(26117, 11969),
(26117, 11973),
(26117, 13124),
(26155, 11927),
(26156, 11977),
(26158, 11930),
(26169, 11949),
(26169, 11950),
(26169, 12086),
(26170, 11938),
(26170, 11942),
(26170, 11956),
(26170, 12019),
(26180, 11980),
(26181, 11978),
(26181, 11983),
(26181, 12008),
(26186, 12157),
(26187, 11944),
(26187, 12088),
(26194, 11958),
(26194, 11959),
(26206, 11946),
(26206, 11951),
(26206, 11957),
(26206, 11967),
(26212, 11998),
(26212, 12158),
(26212, 12770),
(26213, 11945),
(26218, 11961),
(26218, 11968),
(26221, 11886),
(26221, 11917),
(26221, 11947),
(26221, 11948),
(26221, 11952),
(26221, 11953),
(26221, 11954),
(26221, 11955),
(26226, 12002),
(26226, 12003),
(26226, 12010),
(26226, 12128),
(26228, 11960),
(26245, 12009),
(26245, 12016),
(26245, 12017),
(26260, 11982),
(26260, 11985),
(26260, 12070),
(26260, 12081),
(26335, 11981),
(26361, 11988),
(26361, 11993),
(26377, 12414),
(26379, 12034),
(26379, 12140),
(26379, 12224),
(26415, 11979),
(26415, 12036),
(26415, 12053),
(26415, 12071),
(26415, 12488),
(26420, 12093),
(26420, 12094),
(26420, 12099),
(26423, 11989),
(26423, 11990),
(26423, 11991),
(26424, 11984),
(26440, 11995),
(26441, 11996),
(26443, 12123),
(26443, 12124),
(26443, 12766),
(26443, 12767),
(26471, 11999),
(26471, 12005),
(26471, 12061),
(26471, 12066),
(26471, 12084),
(26471, 12106),
(26471, 12122),
(26471, 12173),
(26471, 12791),
(26473, 12079),
(26473, 12080),
(26484, 12279),
(26500, 12007),
(26500, 12042),
(26500, 12068),
(26500, 12238),
(26501, 12006),
(26501, 12013),
(26504, 12100),
(26504, 12101),
(26504, 12111),
(26505, 12102),
(26505, 12104),
(26505, 12189),
(26514, 12014),
(26519, 12190),
(26519, 12483),
(26519, 12484),
(26527, 13149),
(26564, 12039),
(26564, 12048),
(26574, 12072),
(26581, 12125),
(26581, 12126),
(26581, 12127),
(26581, 12132),
(26581, 12136),
(26584, 12054),
(26584, 12058),
(26588, 12027),
(26593, 12262),
(26593, 12263),
(26593, 12264),
(26593, 12265),
(26593, 12266),
(26593, 12267),
(26595, 12028),
(26595, 12030),
(26604, 12029),
(26604, 12037),
(26604, 12038),
(26618, 12056),
(26618, 12095),
(26618, 12115),
(26647, 12043),
(26647, 12052),
(26647, 12112),
(26649, 12033),
(26652, 12063),
(26653, 12040),
(26653, 12041),
(26653, 13167),
(26653, 13182),
(26653, 13187),
(26653, 13190),
(26659, 12075),
(26659, 12076),
(26659, 12077),
(26659, 12078),
(26660, 12044),
(26660, 12049),
(26661, 12045),
(26661, 12046),
(26661, 12047),
(26664, 13129),
(26666, 12073),
(26666, 12074),
(26666, 12201),
(26666, 12202),
(26666, 12203),
(26666, 12204),
(26666, 12763),
(26673, 12000),
(26673, 12004),
(26673, 12060),
(26673, 12065),
(26673, 12083),
(26673, 12098),
(26673, 12119),
(26673, 12172),
(26673, 12794),
(26719, 12062),
(26733, 12064),
(26733, 12069),
(26814, 12082),
(26837, 12092),
(26854, 12096),
(26859, 12097),
(26860, 12412),
(26860, 12413),
(26860, 12424),
(26860, 12468),
(26868, 12436),
(26873, 12107),
(26873, 12110),
(26875, 12109),
(26875, 12210),
(26875, 12292),
(26875, 12293),
(26875, 12295),
(26875, 12310),
(26878, 12440),
(26881, 12174),
(26883, 12129),
(26883, 12130),
(26883, 12131),
(26883, 12138),
(26883, 12153),
(26883, 12154),
(26884, 12113),
(26884, 12114),
(26885, 12180),
(26885, 12183),
(26885, 12184),
(26885, 12185),
(26886, 12116),
(26886, 12120),
(26886, 12121),
(26886, 12152),
(26896, 12469),
(26905, 13087),
(26914, 13268),
(26915, 12918),
(26917, 12435),
(26917, 12497),
(26917, 12499),
(26917, 12500),
(26917, 13078),
(26917, 13079),
(26924, 12137),
(26932, 12159),
(26932, 12160),
(26935, 12134),
(26935, 12164),
(26935, 12330),
(26935, 12411),
(26944, 12415),
(26949, 12498),
(26953, 13089),
(26960, 12952),
(26964, 13269),
(26969, 13270),
(26972, 13090),
(26973, 12166),
(26973, 12167),
(26973, 12169),
(26978, 12142),
(26978, 12143),
(26979, 12144),
(26979, 12145),
(26982, 13002),
(26983, 12148),
(26983, 12149),
(26983, 12150),
(26983, 12151),
(26989, 13088),
(26997, 13004),
(27001, 13265),
(27028, 12214),
(27037, 12175),
(27037, 12176),
(27037, 12177),
(27037, 12178),
(27060, 12171),
(27102, 12422),
(27102, 12425),
(27120, 12170),
(27136, 12235),
(27136, 12253),
(27136, 12275),
(27136, 12309),
(27136, 12320),
(27136, 12325),
(27136, 12472),
(27136, 12474),
(27136, 12477),
(27155, 12258),
(27155, 12476),
(27156, 12269),
(27157, 12326),
(27158, 12439),
(27158, 12794),
(27159, 12272),
(27159, 12276),
(27159, 12281),
(27172, 12188),
(27172, 12200),
(27172, 12218),
(27172, 12221),
(27215, 12020),
(27215, 12022),
(27216, 12191),
(27216, 12192),
(27221, 12165),
(27221, 12195),
(27227, 12196),
(27227, 12197),
(27227, 12198),
(27227, 12199),
(27243, 12252),
(27243, 12273),
(27243, 12285),
(27243, 12487),
(27248, 12206),
(27248, 12211),
(27248, 12240),
(27248, 12243),
(27255, 12454),
(27255, 12456),
(27262, 12207),
(27262, 12213),
(27262, 12229),
(27262, 12231),
(27262, 12236),
(27262, 12241),
(27262, 12242),
(27262, 12453),
(27266, 12208),
(27267, 12209),
(27267, 12303),
(27277, 12212),
(27277, 12215),
(27277, 12216),
(27277, 12217),
(27277, 12226),
(27277, 12227),
(27295, 12219),
(27295, 12220),
(27295, 12246),
(27295, 12247),
(27295, 12248),
(27295, 12249),
(27295, 12250),
(27314, 12282),
(27314, 12287),
(27314, 12475),
(27314, 12478),
(27316, 12321),
(27317, 12237),
(27317, 12251),
(27317, 12511),
(27318, 12311),
(27318, 12319),
(27319, 12462),
(27320, 12230),
(27320, 12232),
(27337, 12234),
(27337, 12239),
(27337, 12245),
(27347, 12290),
(27347, 12291),
(27347, 12301),
(27347, 12305),
(27348, 12542),
(27350, 12254),
(27350, 12260),
(27350, 12274),
(27350, 12283),
(27371, 12244),
(27388, 12256),
(27388, 12257),
(27388, 12259),
(27388, 12451),
(27391, 12222),
(27391, 12223),
(27391, 12255),
(27412, 12277),
(27416, 12268),
(27422, 12280),
(27423, 12270),
(27430, 12263),
(27451, 12284),
(27464, 12288),
(27468, 12289),
(27469, 12294),
(27484, 12296),
(27486, 12299),
(27486, 12300),
(27495, 12443),
(27497, 12302),
(27499, 12308),
(27506, 12416),
(27506, 12417),
(27506, 12418),
(27506, 12768),
(27520, 12314),
(27532, 12315),
(27545, 12307),
(27562, 12316),
(27563, 12317),
(27565, 12433),
(27575, 12372),
(27581, 12327),
(27581, 12328),
(27581, 12329),
(27582, 12161),
(27584, 12318),
(27602, 12323),
(27606, 12324),
(27658, 13126),
(27708, 12432),
(27719, 12427),
(27719, 12428),
(27719, 12429),
(27719, 12430),
(27719, 12431),
(27759, 12437),
(27763, 12448),
(27763, 12449),
(27763, 12450),
(27763, 12769),
(27765, 12447),
(27783, 12444),
(27784, 12464),
(27785, 12458),
(27785, 12459),
(27801, 12546),
(27801, 12548),
(27801, 12559),
(27801, 12561),
(27801, 12611),
(27801, 12612),
(27801, 12613),
(27801, 12617),
(27801, 12620),
(27801, 12621),
(27801, 12660),
(27801, 12805),
(27803, 12460),
(27804, 12461),
(27828, 12465),
(27844, 12467),
(27856, 12470),
(27856, 13343),
(27857, 12473),
(27872, 12495),
(27915, 13151),
(27922, 12482),
(27986, 12520),
(27986, 12526),
(27986, 12556),
(27986, 12595),
(27986, 12651),
(27987, 12489),
(27990, 13384),
(27990, 13385),
(27990, 26013),
(28012, 13127),
(28012, 13128),
(28027, 12571),
(28027, 12573),
(28027, 12574),
(28027, 12578),
(28027, 12704),
(28030, 12668),
(28030, 12672),
(28030, 12674),
(28030, 12675),
(28031, 12549),
(28031, 12550),
(28031, 12558),
(28032, 12524),
(28032, 12525),
(28032, 12551),
(28032, 12560),
(28032, 12569),
(28033, 12522),
(28033, 12523),
(28039, 12501),
(28039, 12505),
(28039, 12563),
(28039, 12587),
(28039, 12596),
(28039, 12604),
(28039, 12792),
(28042, 12502),
(28042, 12564),
(28042, 12588),
(28042, 12597),
(28043, 12519),
(28043, 12585),
(28043, 12594),
(28043, 12599),
(28044, 12509),
(28044, 12568),
(28044, 12584),
(28044, 12591),
(28044, 12598),
(28044, 12606),
(28045, 12609),
(28045, 12610),
(28045, 12799),
(28046, 12804),
(28056, 12504),
(28059, 12503),
(28059, 12740),
(28062, 12506),
(28062, 12510),
(28062, 12514),
(28062, 12516),
(28062, 12565),
(28062, 12623),
(28070, 13207),
(28082, 12529),
(28082, 12533),
(28082, 12535),
(28082, 12536),
(28082, 12540),
(28092, 12547),
(28092, 12797),
(28095, 12528),
(28099, 12508),
(28114, 12575),
(28114, 12576),
(28114, 12577),
(28120, 12572),
(28122, 12579),
(28122, 12580),
(28122, 12581),
(28125, 12512),
(28126, 12513),
(28138, 12531),
(28138, 12532),
(28138, 12534),
(28138, 12702),
(28160, 12521),
(28179, 13036),
(28179, 13070),
(28191, 12543),
(28191, 12544),
(28204, 12527),
(28205, 12541),
(28205, 12557),
(28214, 12530),
(28216, 12537),
(28216, 12538),
(28216, 12539),
(28216, 12582),
(28217, 12570),
(28228, 12545),
(28228, 12789),
(28266, 12696),
(28283, 12552),
(28283, 12554),
(28284, 12553),
(28284, 12555),
(28284, 12583),
(28309, 12562),
(28314, 12566),
(28318, 12785),
(28318, 12786),
(28318, 12787),
(28318, 12788),
(28318, 12812),
(28328, 12589),
(28328, 12592),
(28357, 12619),
(28357, 12636),
(28357, 12842),
(28357, 12848),
(28374, 12607),
(28374, 12658),
(28375, 11569),
(28376, 12603),
(28376, 12605),
(28376, 12614),
(28377, 12678),
(28377, 12697),
(28377, 12701),
(28377, 12706),
(28382, 12117),
(28401, 12632),
(28401, 12642),
(28401, 12665),
(28401, 12666),
(28401, 12667),
(28401, 12684),
(28401, 12685),
(28401, 12712),
(28401, 12721),
(28401, 12730),
(28401, 13097),
(28444, 12714),
(28444, 12778),
(28444, 12850),
(28464, 12608),
(28472, 12849),
(28479, 12615),
(28479, 12627),
(28479, 12628),
(28479, 12655),
(28479, 12729),
(28479, 12793),
(28480, 12639),
(28480, 12662),
(28480, 12708),
(28484, 12622),
(28484, 12640),
(28484, 12659),
(28484, 12707),
(28497, 12624),
(28503, 12663),
(28503, 12664),
(28503, 12673),
(28503, 12686),
(28503, 12690),
(28503, 12710),
(28510, 12670),
(28518, 12629),
(28518, 12630),
(28518, 12637),
(28518, 12638),
(28518, 12643),
(28518, 12648),
(28518, 12649),
(28518, 12661),
(28518, 12669),
(28518, 12676),
(28518, 12677),
(28518, 12713),
(28527, 12635),
(28527, 12650),
(28527, 12709),
(28527, 13099),
(28527, 13549),
(28532, 12795),
(28561, 12646),
(28561, 12647),
(28561, 12653),
(28568, 12654),
(28589, 12652),
(28647, 12679),
(28653, 12680),
(28653, 12687),
(28658, 12698),
(28658, 12700),
(28667, 12689),
(28667, 12695),
(28668, 12692),
(28699, 13272),
(28701, 12958),
(28701, 12959),
(28701, 12960),
(28701, 12961),
(28701, 12962),
(28701, 12963),
(28701, 13041),
(28703, 14151),
(28705, 13100),
(28705, 13101),
(28705, 13102),
(28705, 13103),
(28705, 13107),
(28742, 13830),
(28742, 13832),
(28742, 13833),
(28742, 13834),
(28742, 13836),
(28746, 12671),
(28746, 12699),
(28746, 12803),
(28771, 12681),
(28771, 12683),
(28787, 12688),
(28907, 12715),
(28910, 12722),
(28911, 12719),
(28911, 12720),
(28911, 12723),
(28912, 12727),
(28913, 12725),
(28913, 12738),
(28914, 12724),
(28914, 12754),
(28914, 12755),
(28914, 12757),
(28919, 12716),
(28919, 12717),
(29006, 12726),
(29006, 12735),
(29006, 12736),
(29006, 12737),
(29043, 12732),
(29043, 12734),
(29043, 12741),
(29043, 12758),
(29047, 12733),
(29053, 12739),
(29053, 12742),
(29053, 12743),
(29053, 12744),
(29053, 12745),
(29053, 12746),
(29053, 12747),
(29053, 12748),
(29053, 12749),
(29053, 12750),
(29053, 12751),
(29077, 12756),
(29087, 12771),
(29087, 12773),
(29087, 12774),
(29087, 12776),
(29087, 12809),
(29110, 12779),
(29110, 12800),
(29146, 12703),
(29146, 12759),
(29146, 12760),
(29149, 12705),
(29149, 12761),
(29149, 12762),
(29155, 12791),
(29156, 12790),
(29157, 12634),
(29157, 12644),
(29157, 12645),
(29158, 12794),
(29159, 12791),
(29160, 12791),
(29161, 12794),
(29162, 12791),
(29169, 12796),
(29173, 13165),
(29343, 12806),
(29343, 12938),
(29343, 12995),
(29343, 13085),
(29343, 13106),
(29344, 12807),
(29344, 12810),
(29344, 12814),
(29344, 12840),
(29344, 12847),
(29396, 12813),
(29405, 12815),
(29428, 12820),
(29428, 12821),
(29428, 12822),
(29428, 12827),
(29428, 12828),
(29428, 12833),
(29428, 12836),
(29428, 12862),
(29428, 13060),
(29430, 12829),
(29430, 12830),
(29431, 12818),
(29431, 12819),
(29431, 12826),
(29432, 12823),
(29432, 12824),
(29434, 12831),
(29434, 12832),
(29441, 12816),
(29442, 12817),
(29445, 12915),
(29445, 12924),
(29445, 13010),
(29445, 13050),
(29445, 13051),
(29445, 13064),
(29455, 12904),
(29456, 12838),
(29473, 12843),
(29473, 12844),
(29473, 12846),
(29481, 12841),
(29481, 12905),
(29481, 12921),
(29560, 12852),
(29579, 12858),
(29579, 12860),
(29579, 12871),
(29579, 12885),
(29579, 12913),
(29579, 12927),
(29579, 12929),
(29579, 13273),
(29579, 13274),
(29579, 13285),
(29579, 13415),
(29579, 13416),
(29592, 12851),
(29592, 12856),
(29592, 13063),
(29593, 12874),
(29593, 12875),
(29611, 396),
(29611, 6182),
(29611, 6187),
(29611, 7782),
(29611, 13369),
(29611, 13371),
(29631, 13112),
(29631, 13113),
(29631, 13114),
(29631, 13115),
(29631, 13116),
(29647, 12912),
(29647, 12919),
(29650, 12854),
(29650, 12855),
(29651, 12895),
(29651, 12909),
(29651, 12920),
(29651, 12926),
(29651, 13426),
(29687, 12884),
(29687, 12894),
(29687, 12902),
(29688, 12901),
(29688, 12914),
(29688, 12916),
(29689, 12903),
(29690, 12861),
(29727, 12864),
(29727, 12866),
(29727, 12868),
(29732, 12865),
(29732, 12867),
(29732, 12869),
(29732, 12876),
(29733, 12859),
(29743, 12863),
(29743, 12873),
(29744, 12870),
(29751, 12877),
(29795, 12892),
(29795, 12899),
(29795, 13237),
(29795, 13258),
(29795, 13264),
(29795, 13276),
(29795, 13277),
(29795, 13278),
(29795, 13279),
(29795, 13281),
(29795, 13304),
(29795, 13306),
(29795, 13307),
(29795, 13312),
(29795, 13316),
(29795, 13328),
(29795, 13329),
(29795, 13349),
(29795, 13351),
(29795, 13352),
(29795, 13353),
(29795, 13354),
(29795, 13355),
(29795, 13358),
(29795, 13363),
(29795, 13365),
(29795, 13366),
(29795, 13367),
(29795, 13368),
(29796, 12886),
(29796, 13422),
(29796, 13423),
(29796, 13424),
(29796, 13425),
(29799, 12887),
(29799, 12898),
(29799, 13287),
(29799, 13288),
(29799, 13289),
(29799, 13294),
(29799, 13295),
(29799, 13297),
(29799, 13298),
(29799, 13315),
(29799, 13318),
(29799, 13319),
(29799, 13320),
(29799, 13323),
(29799, 13332),
(29799, 13334),
(29799, 13335),
(29799, 13337),
(29799, 13338),
(29799, 13339),
(29799, 13342),
(29799, 13344),
(29799, 13345),
(29799, 13346),
(29799, 13350),
(29799, 13386),
(29799, 13393),
(29799, 13397),
(29799, 13402),
(29801, 12930),
(29801, 12931),
(29801, 12937),
(29801, 12957),
(29801, 12964),
(29801, 12965),
(29801, 12984),
(29801, 12988),
(29801, 12993),
(29801, 12998),
(29801, 13007),
(29804, 12891),
(29804, 12893),
(29804, 12896),
(29804, 12897),
(29806, 12889),
(29839, 12900),
(29839, 12983),
(29839, 12989),
(29839, 12996),
(29839, 12997),
(29839, 13061),
(29855, 12910),
(29885, 12906),
(29885, 12907),
(29885, 12908),
(29937, 12917),
(29975, 12969),
(29975, 12970),
(29975, 12971),
(29975, 12972),
(29975, 13062),
(29997, 12942),
(29997, 12968),
(30002, 12939),
(30002, 12943),
(30002, 13084),
(30007, 12932),
(30007, 12933),
(30007, 12934),
(30007, 12935),
(30007, 12936),
(30007, 12948),
(30007, 12954),
(30041, 12925),
(30052, 12878),
(30052, 12986),
(30056, 12949),
(30056, 12951),
(30074, 12955),
(30074, 12999),
(30074, 13069),
(30082, 12880),
(30099, 12967),
(30105, 12966),
(30105, 12975),
(30105, 12976),
(30105, 13011),
(30105, 13108),
(30105, 13109),
(30127, 12985),
(30127, 12987),
(30127, 13009),
(30137, 12974),
(30152, 12978),
(30152, 12980),
(30152, 12991),
(30216, 12992),
(30216, 13071),
(30218, 12982),
(30223, 13008),
(30223, 13044),
(30224, 13039),
(30226, 13040),
(30227, 13045),
(30232, 13042),
(30232, 13091),
(30232, 13092),
(30232, 13093),
(30232, 13121),
(30232, 13133),
(30232, 13137),
(30232, 13142),
(30232, 13213),
(30247, 13000),
(30247, 13054),
(30252, 13001),
(30294, 12994),
(30295, 13005),
(30295, 13035),
(30295, 13047),
(30344, 13231),
(30344, 13233),
(30344, 13286),
(30344, 13290),
(30344, 13314),
(30344, 13333),
(30345, 13291),
(30345, 13292),
(30345, 13296),
(30345, 13321),
(30345, 13322),
(30345, 13383),
(30348, 13012),
(30357, 13013),
(30358, 13014),
(30359, 13015),
(30360, 13016),
(30362, 13018),
(30363, 13019),
(30364, 13033),
(30365, 13024),
(30367, 13025),
(30368, 13026),
(30369, 13027),
(30370, 13028),
(30371, 13029),
(30372, 13030),
(30373, 13031),
(30374, 13032),
(30375, 13020),
(30381, 13034),
(30381, 13037),
(30381, 13048),
(30381, 13049),
(30381, 13058),
(30382, 12973),
(30390, 13057),
(30395, 13038),
(30405, 12881),
(30406, 13059),
(30469, 13055),
(30469, 13056),
(30472, 12882),
(30490, 12853),
(30531, 13017),
(30533, 13022),
(30534, 13023),
(30535, 13066),
(30536, 13021),
(30537, 13065),
(30538, 13067),
(30548, 12879),
(30596, 13118),
(30596, 13122),
(30596, 13125),
(30631, 13117),
(30631, 13119),
(30631, 13120),
(30631, 13134),
(30631, 13144),
(30631, 13152),
(30631, 13212),
(30631, 13220),
(30631, 13235),
(30657, 13086),
(30671, 13096),
(30676, 13098),
(30676, 13111),
(30677, 13104),
(30677, 13105),
(30677, 13141),
(30683, 13110),
(30683, 13139),
(30683, 13157),
(30686, 13130),
(30708, 13138),
(30708, 13140),
(30708, 13211),
(30714, 13135),
(30824, 13228),
(30824, 13234),
(30824, 13238),
(30824, 13260),
(30824, 13313),
(30824, 13331),
(30825, 13239),
(30825, 13261),
(30825, 13293),
(30825, 13356),
(30825, 13357),
(30825, 13379),
(30871, 13131),
(30871, 13132),
(30944, 13143),
(30944, 13145),
(30944, 13146),
(30944, 13147),
(30944, 13160),
(30944, 13161),
(30944, 13162),
(30944, 13163),
(30944, 13164),
(30946, 13155),
(30946, 13168),
(30946, 13169),
(30946, 13170),
(30946, 13171),
(30946, 13172),
(30946, 13174),
(31036, 13177),
(31036, 13179),
(31044, 13068),
(31044, 13073),
(31044, 13077),
(31044, 13081),
(31044, 13364),
(31044, 13403),
(31051, 13153),
(31051, 13198),
(31052, 13154),
(31052, 13196),
(31053, 13194),
(31053, 13201),
(31054, 13156),
(31054, 13195),
(31080, 13159),
(31081, 13418),
(31082, 12801),
(31084, 13166),
(31084, 13188),
(31084, 13189),
(31085, 13419),
(31091, 13178),
(31091, 13180),
(31101, 13192),
(31101, 13202),
(31102, 13193),
(31102, 13199),
(31106, 13191),
(31106, 13200),
(31107, 13185),
(31107, 13223),
(31108, 236),
(31108, 13197),
(31109, 13186),
(31109, 13222),
(31135, 13214),
(31135, 13215),
(31135, 13216),
(31135, 13217),
(31135, 13218),
(31135, 13219),
(31151, 13183),
(31151, 13539),
(31153, 13181),
(31153, 13538),
(31237, 13275),
(31237, 13282),
(31237, 13391),
(31237, 13392),
(31240, 13224),
(31241, 13225),
(31259, 13226),
(31259, 13300),
(31261, 13227),
(31261, 13302),
(31273, 13230),
(31279, 13221),
(31279, 13229),
(31304, 13232),
(31333, 13242),
(31333, 13347),
(31412, 13266),
(31440, 13259),
(31440, 13262),
(31444, 13387),
(31444, 13388),
(31649, 13267),
(31737, 13284),
(31776, 13280),
(31781, 13283),
(31808, 13309),
(31833, 13301),
(31834, 13310),
(31892, 13308),
(32301, 13330),
(32301, 13340),
(32302, 13336),
(32302, 13341),
(32363, 13370),
(32376, 13377),
(32404, 13236),
(32404, 13348),
(32404, 13395),
(32404, 13396),
(32408, 13305),
(32408, 13394),
(32423, 13359),
(32423, 13360),
(32423, 13398),
(32423, 13399),
(32430, 13373),
(32430, 13376),
(32430, 13406),
(32444, 13380),
(32444, 13382),
(32444, 13404),
(32497, 13361),
(32497, 13362),
(32497, 13400),
(32497, 13401),
(32516, 13571),
(32540, 13559),
(32548, 13413),
(32548, 13414),
(32599, 12304),
(32798, 13479),
(32799, 13480),
(32800, 13481),
(32800, 13482),
(32836, 13502),
(32837, 13503),
(33025, 13556),
(33222, 13592),
(33223, 13665),
(33223, 13847),
(33225, 13593),
(33225, 13600),
(33225, 13603),
(33225, 13616),
(33225, 13699),
(33225, 13702),
(33225, 13718),
(33309, 13745),
(33309, 13851),
(33312, 13703),
(33312, 13713),
(33312, 13714),
(33312, 13732),
(33312, 13741),
(33312, 13742),
(33312, 13743),
(33315, 13744),
(33335, 13704),
(33335, 13715),
(33335, 13723),
(33335, 13733),
(33335, 13746),
(33335, 13747),
(33335, 13748),
(33361, 13697),
(33361, 13707),
(33361, 13726),
(33361, 13736),
(33361, 13762),
(33361, 13763),
(33361, 13764),
(33372, 13708),
(33372, 13719),
(33372, 13727),
(33372, 13737),
(33372, 13768),
(33372, 13769),
(33372, 13770),
(33373, 13710),
(33373, 13721),
(33373, 13729),
(33373, 13739),
(33373, 13778),
(33373, 13779),
(33373, 13780),
(33379, 13711),
(33379, 13722),
(33379, 13731),
(33379, 13740),
(33379, 13783),
(33379, 13784),
(33379, 13785),
(33403, 13709),
(33403, 13720),
(33403, 13728),
(33403, 13738),
(33403, 13773),
(33403, 13774),
(33403, 13775),
(33405, 13765),
(33417, 13633),
(33417, 13634),
(33417, 13641),
(33417, 13643),
(33417, 13654),
(33417, 13663),
(33417, 13664),
(33417, 14016),
(33417, 14017),
(33532, 13930),
(33532, 13934),
(33532, 13951),
(33532, 13955),
(33532, 13957),
(33532, 13960),
(33533, 13929),
(33533, 13933),
(33533, 13937),
(33533, 13950),
(33533, 13954),
(33533, 13956),
(33533, 13959),
(33538, 13786),
(33539, 13776),
(33540, 13771),
(33541, 13781),
(33542, 13673),
(33542, 13674),
(33542, 13675),
(33542, 13678),
(33542, 13680),
(33542, 13691),
(33542, 13693),
(33542, 13694),
(33542, 13695),
(33542, 13696),
(33542, 13829),
(33544, 13767),
(33544, 13856),
(33545, 13772),
(33545, 13857),
(33547, 13782),
(33547, 13860),
(33548, 13787),
(33548, 13859),
(33549, 13777),
(33549, 13858),
(33592, 13706),
(33592, 13717),
(33592, 13725),
(33592, 13735),
(33592, 13757),
(33592, 13758),
(33592, 13759),
(33593, 13705),
(33593, 13716),
(33593, 13724),
(33593, 13734),
(33593, 13752),
(33593, 13753),
(33593, 13754),
(33625, 13666),
(33625, 13669),
(33625, 13670),
(33625, 13672),
(33625, 13679),
(33625, 13684),
(33625, 13685),
(33625, 13688),
(33625, 13689),
(33625, 13690),
(33625, 13828),
(33646, 13671),
(33646, 13837),
(33647, 13625),
(33647, 13835),
(33648, 13749),
(33649, 13750),
(33649, 13852),
(33652, 13760),
(33654, 13761),
(33654, 13855),
(33655, 13755),
(33656, 13756),
(33656, 13854),
(33658, 13676),
(33658, 13839),
(33659, 13677),
(33659, 13838),
(33759, 13682),
(33759, 13809),
(33759, 13861),
(33759, 13862),
(33762, 13788),
(33762, 13812),
(33762, 13863),
(33762, 13864),
(33763, 13789),
(33763, 13810),
(33769, 13791),
(33769, 13813),
(33770, 13793),
(33770, 13814),
(33771, 13790),
(33771, 13811),
(33817, 13667),
(33817, 13668),
(33817, 13794),
(33817, 13795),
(33956, 13606),
(33956, 13607),
(33956, 13609),
(33956, 13610),
(33956, 13611),
(33956, 13614),
(33957, 13816),
(33957, 13818),
(33957, 13821),
(33957, 13822),
(33957, 13823),
(33957, 13824),
(34210, 13846),
(34320, 13889),
(34320, 13903),
(34320, 13904),
(34320, 13905),
(34320, 13914),
(34320, 13915),
(34320, 13916),
(34320, 13917),
(34365, 13926),
(34365, 13927),
(34653, 14064),
(34654, 14065),
(34744, 14024),
(34744, 14030),
(34768, 14040),
(34771, 14136),
(34771, 14140),
(34771, 14142),
(34771, 14143),
(34771, 14144),
(34880, 14074),
(34880, 14077),
(34880, 14080),
(34880, 14096),
(34880, 14152),
(34882, 14101),
(34882, 14102),
(34882, 14104),
(34882, 14105),
(34912, 14076),
(34912, 14090),
(34912, 14112),
(34914, 14092),
(34914, 14141),
(34914, 14145),
(35094, 14107),
(35094, 14108),
(35256, 14166),
(35260, 14172),
(35261, 14173),
(35471, 13986),
(36208, 3122),
(36273, 14353),
(36273, 14355),
(36273, 14356),
(36506, 14409),
(36624, 14444),
(36624, 24461),
(36624, 24476),
(36624, 24480),
(36624, 24522),
(36624, 24795),
(36624, 24796),
(36642, 24555),
(36642, 24559),
(36642, 24560),
(36642, 24561),
(36642, 24562),
(36642, 24798),
(36642, 24799),
(36642, 24800),
(36642, 24801),
(36669, 14457),
(36669, 20438),
(36669, 20439),
(36669, 24454),
(36670, 24451),
(36670, 24556),
(36670, 24557),
(36670, 24558),
(36990, 24507),
(36993, 24498),
(37120, 24545),
(37120, 24547),
(37120, 24548),
(37120, 24549),
(37120, 24743),
(37120, 24748),
(37120, 24749),
(37120, 24756),
(37120, 24757),
(37120, 24915),
(37120, 24916),
(37120, 24917),
(37120, 24918),
(37120, 24919),
(37172, 24536),
(37172, 24541),
(37172, 24638),
(37172, 24645),
(37172, 24647),
(37172, 24648),
(37172, 24649),
(37172, 24650),
(37172, 24651),
(37172, 24652),
(37172, 24793),
(37172, 24850),
(37527, 24535),
(37527, 24553),
(37527, 24563),
(37527, 24564),
(37527, 24594),
(37527, 24595),
(37527, 24596),
(37527, 24598),
(37582, 24500),
(37591, 24710),
(37592, 24712),
(37596, 24511),
(37597, 24499),
(37675, 24629),
(37675, 24635),
(37675, 24636),
(37776, 24510),
(37779, 24802),
(37780, 24506),
(37887, 24597),
(38039, 24610),
(38040, 24611),
(38041, 24609),
(38042, 24612),
(38043, 24615),
(38044, 24614),
(38045, 24613),
(38066, 24655),
(38066, 24658),
(38066, 24659),
(38066, 24660),
(38066, 24662),
(38066, 24663),
(38066, 24664),
(38066, 24665),
(38066, 24666),
(38066, 24792),
(38160, 24683),
(38161, 24682),
(38188, 24711),
(38189, 24713),
(38208, 14488),
(38294, 24803),
(38294, 24806),
(38295, 24805),
(38316, 24815),
(38316, 24823),
(38316, 24825),
(38316, 24826),
(38316, 24827),
(38316, 24828),
(38316, 24829),
(38316, 24830),
(38316, 24831),
(38316, 24832),
(38316, 24833),
(38316, 24834),
(38316, 24835),
(38316, 24836),
(38316, 24837),
(38316, 24838),
(38316, 24839),
(38316, 24840),
(38316, 24841),
(38316, 24842),
(38316, 24843),
(38316, 24844),
(38316, 24845),
(38316, 24846),
(38316, 24847),
(38316, 25239),
(38316, 25240),
(38316, 25242),
(38316, 25246),
(38316, 25248),
(38316, 25249),
(38328, 24576),
(38328, 24851),
(38471, 24869),
(38471, 24875),
(38491, 24870),
(38491, 24877),
(38492, 24871),
(38492, 24876),
(38501, 24873),
(38501, 24878),
(38551, 24874),
(38551, 24879),
(38589, 24872),
(38589, 24880),
(39271, 25393),
(39386, 25212),
(39509, 24819),
(39509, 24820),
(39509, 24821),
(39509, 24822),
(39509, 24836),
(39509, 24837),
(39509, 24838),
(39509, 24839),
(39509, 24840),
(39509, 24841),
(39509, 24842),
(39509, 24843),
(39509, 24844),
(39509, 24845),
(39509, 24846),
(39509, 24847),
(39509, 25246),
(39509, 25247),
(39509, 25248),
(39509, 25249),
(39678, 25283),
(39678, 25286),
(39678, 25500),
(40257, 25461),
(40391, 25480),
(40429, 26034);
DELETE cs FROM `creature_quest_starter` cs LEFT JOIN `creature_names` cn ON( cs.id = cn.entry ) WHERE cs.id <> 0 AND cn.entry IS NULL;
DELETE cf FROM `creature_quest_finisher` cf LEFT JOIN `creature_names` cn ON( cf.id = cn.entry ) WHERE cf.id <> 0 AND cn.entry IS NULL;
DELETE cs FROM `creature_quest_starter` cs LEFT JOIN `quests` cn ON( cs.quest = cn.entry ) WHERE cs.id <> 0 AND cn.entry IS NULL;
DELETE cf FROM `creature_quest_finisher` cf LEFT JOIN `quests` cn ON( cf.quest = cn.entry ) WHERE cf.id <> 0 AND cn.entry IS NULL;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Fix few gameobject states (according to arcemu r4054).
UPDATE `gameobject_spawns` SET `state` = '0' WHERE `entry` IN ('181201', '181202', '181203');

-- Add some missing itempages and deleted those which are unused.
REPLACE INTO `itempages` VALUES ('3355', "Entry 4

I must believe in the Kirin Tor. The great mages of Dalaran would not desert their people. This rubble that imprisons me is no more than a trifle to a skilled spellcaster. I will be saved, and one day, I will finish my training and stand among them.", '3356');
REPLACE INTO `itempages` VALUES ('3356', "Entry 5

There are no signs of others or of my family. I have called for them. Everything above is silent now. I am not sure whether I am blessed or cursed. My heart would quiet itself and follow the others to rest, but my mind is thick with fear.", '3357');
REPLACE INTO `itempages` VALUES ('3357', "Entry 6

It grows darker and the air is thinner. The faint lights I summon to write burn into my eyes. I can do no more. My energy must be saved for what may yet come. I am audacious enough to hope that these scraps of paper will hold out against the silence as I cannot. I would become a voice, singing up through the abyss, softening until a whisper, and then fading into the sky.", '0');


REPLACE INTO `itempages` VALUES ('3622', "Tail swooshing and hips swaying, the curvy figure walked purposefully across the lake toward the man resting by the shore; rising quickly as she approached, he appeared visibly happy to be in her presence.  Blue arms flowed over his shoulders as a smooth tail coiled seductively around his waist.  \"Why must I travel so far to be meeting man like you?\"  Her voice carried a strong, alluring accent.

Grinning wildly, he gently pushed her away, openly staring as the light caught her features.

\"Up here!\", she exclaimed in playful anger.

With a helpless shrug, he reached into his pack and pulled out a small pouch.  \"My wonderful Soola, I've brought you something.\"  Confidence wrapped his words like a steel blanket.", '3623');
REPLACE INTO `itempages` VALUES ('3623', "She plucked the tiny bag from his hands, excitedly pulling it open and revealing a citrine pendant.

\"Oh... Marcus, you shouldn't have.\"

The usual teasing was gone from his voice, \"Every facet lights the sky, and my heart, with your beautiful reflection.\"

Soola frowned.  \"Uh... no. I meant you really shouldn't have.  I could craft something better by accident.\"

For the first time, possibly ever, Marcus looked hurt.  His shoulders slumped slightly, the cocky, ever-present grin missing from his handsome face.

Soola opened her mouth to speak, smiling warmly; a glowing rune appeared above her eyes.  \"I don't think I can mend your feelings, even with my Gift.\"", '3624');
REPLACE INTO `itempages` VALUES ('3624', "Despite the statement, her words seemed to do the trick.  Marcus smirked roguishly as he adjusted his leg plates, \"Well you aren't the only gifted one.\"

Silence penetrated the room with palpable force as the conversation shifted to the language shared by all races of Azeroth.

Minutes became hours, until their passionate dialog was interrupted by lightning streaking from the cloudless sky, thunderously slamming into the lake's surface and bathing them in steam.

\"Is something wrong?\", Marcus asked.

\"No my Marcus, you're just off to a great start...\"

The remaining pages have been thoroughly destroyed by the elements.", '0');


REPLACE INTO `itempages` VALUES ('2823', "Thousands of years ago, the exiled Highborne landed on the shores of Lordaeron and founded the enchanted kingdom of Quel'Thalas. These high elves, as they called themselves, created a fount of vast, magical energies within the heart of their land - the Sunwell. Over time, they grew dependant on the Sunwell's unstable energies - regardless of the bitter lessons they'd learned in ages past.", '2824');
REPLACE INTO `itempages` VALUES ('2824', "During the Third War, the villainous Prince Arthas invaded Quel'Thalas and reduced the once-mighty realm to rubble and ashes. His undead army decimated nearly ninety percent of the high elven population. In addition, he used the Sunwell's energies to resurrect Kel'thuzad - a powerful undead Lich - thereby fouling the Sunwell's mystical waters. The few elven survivors, realizing that they had been cut off from the source of their arcane power, grew increasingly volatile and desperate.", '2825');
REPLACE INTO `itempages` VALUES ('2825', "In the midst of the elves' darkest hour came Kael'thas Sunstrider - the last of Quel'Thalas' royal bloodline. Kael, as he was commonly known, knew that the remnant of his people would not long survive without the nourishing magics that once empowered them. Renaming his people blood elves, in honor of their fallen countrymen, he taught them how to tap into ambient mystical energies - even demonic energies - in order to sate their terrible thirst for magic.", '2826');
REPLACE INTO `itempages` VALUES ('2826', "In search of a new destiny for his people, Kael'thas ventured to the remote world of Outland where he encountered the fallen night elf, Illidan. Under Illidan's tutelage, Kael and his blood elves have regained much of their former power.", '2827');
REPLACE INTO `itempages` VALUES ('2827', "Unfortunately, the blood elves' practice of embracing demonic energies resulted in them being shunned by their former comrades in the Alliance. Thus, the remaining blood elves on Azeroth look desperately to the Horde to help them reach Outland, where they can reunite with Kael'thas and achieve the golden destiny he promised them.", '0');

DELETE FROM `itempages` WHERE `entry` IN ('1','2','3','4','5','27','37','40','44','57','61','77','97','99','101','103','107','109','111','113','117','152','204','217','228','243','247','260','264','265','305','339','349','351','360','363','384','386','393','416','423','466','506','547','571','606','626','689','710','730','750','770','790','791','792','793','810','830','850','851','852','853','854','870','890','910','912','930','950','970','990','1010','1030','1050','1090','1130','1150','1170','1190','1210','1270','1310','1330','1370','1391','1430','1470','1490','1510','1530','1550','1555','1590','1610','1630','1690','1710','1730','1750','1827','2063','2130','2150','2170','2190','2210','2250','2270','2290','2304','2350','2370','2390','2410','2412','2490','2510','2530','2550','2570','2590','2594','2597','2598','2599','2600','2601','2602','2603','2604','2605','2610','2630','2653','2660','2711','2770','2904','2915','2922','2927','3036','3045','3046','3047','3049','3050','3051','3052','3053','3058','3063','3064','3080','3081','3082','3084','3085','3086','3087','3088','3089','3090','3091','3127','3191','3192','3194','3195','3196','3197','3198','3199','3200','3201','3285','3286','3287','3288','3289','3290','3291','3292','3293','3294','3295','3296','3297','3298','3299','3300','3301','3312','3313','3314','3315','3316','3317','3318','3320','3321','3322','3328','3331','3333','3336','3337','3338','3339','3345','3347','3348','3349','3399','3400','3401','3402','3410','3411','3412','3413','3415','3416','3417','3420','3421','3422','3423','3424','3425','3426','3444','3445','3446','3447','3448','3449','3450','3451','3452','3453','3462','3463','3464','3465','3466','3467','3468','3473','3474','3475','3476','3480','3481','3483','3484','3485','3486','3501','3507','3508','3509','3510','3511','3602','3603','3605','8345','9999','60000');
-- Add 6 missing items.
REPLACE INTO `items` VALUES ('52541','12','0','-1','Radiageigatron','40553','1','65536','0','0','0','0','-1','-1','1','1','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','73082','0','0','-1','0','-1','75780','5','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','4','Measures radiation levels, temperature, and makes neat sounds too!','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0','0');
REPLACE INTO `items` VALUES ('52566','12','0','-1','Motivate-a-Tron','44269','1','65600','0','0','0','0','-1','-1','1','1','0','0','0','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','74035','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','4','Point, Shoot, Motivate!','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0','0');
REPLACE INTO `items` VALUES ('52709','12','0','-1','Gnomish Playback Device','22299','1','64','0','0','0','0','-1','-1','1','1','0','0','0','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','74222','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','4','There\'s a good one in here ... somewhere...','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0','0');
REPLACE INTO `items` VALUES ('53510','12','0','-1','Captured Frog','66265','1','64','0','0','0','0','-1','-1','1','1','0','0','0','0','0','0','0','5','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','74903','0','-1','1000','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','4','','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0','0');
REPLACE INTO `items` VALUES ('53637','12','0','-1','Sack o\' Frogs','8442','1','64','0','0','0','0','-1','-1','1','1','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','74977','0','0','1500','0','-1','74982','5','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','4','','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0','0');
REPLACE INTO `items` VALUES ('54215','12','0','-1','Vol\'jin\'s War Drums','67328','1','64','0','0','0','0','-1','-1','1','1','0','0','0','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','75102','0','0','1500','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','0','0','0','-1','0','-1','4','','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0','0');
-- Delete a wrong entry in item_quest_association.
DELETE FROM `item_quest_association` WHERE `quest` = '7249';
-- Add a lot of emote for quests (thanks UDB).
UPDATE quests SET completionemote1=66 WHERE entry=14;
UPDATE quests SET CompleteEmote=0,completionemote1=66 WHERE entry=46;
UPDATE quests SET CompleteEmote=0 WHERE entry=55;
UPDATE quests SET IncompleteEmote=25,completionemote1=66 WHERE entry=58;
UPDATE quests SET CompleteEmote=0 WHERE entry=59;
UPDATE quests SET completionemote1=6 WHERE entry=65;
UPDATE quests SET CompleteEmote=5,completionemote1=1 WHERE entry=82;
UPDATE quests SET CompleteEmote=6,completionemote1=1,completionemote2=1,completionemote3=16 WHERE entry=98;
UPDATE quests SET CompleteEmote=0 WHERE entry=103;
UPDATE quests SET CompleteEmote=0 WHERE entry=104;
UPDATE quests SET CompleteEmote=25,completionemote1=21 WHERE entry=116;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=120;
UPDATE quests SET detailemote1=25,CompleteEmote=6,completionemote1=1 WHERE entry=121;
UPDATE quests SET CompleteEmote=0 WHERE entry=129;
UPDATE quests SET CompleteEmote=0 WHERE entry=131;
UPDATE quests SET detailemote1=1 WHERE entry=132;
UPDATE quests SET CompleteEmote=0 WHERE entry=133;
UPDATE quests SET CompleteEmote=0 WHERE entry=134;
UPDATE quests SET CompleteEmote=6,completionemote1=1 WHERE entry=141;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=1,completionemote2=25 WHERE entry=142;
UPDATE quests SET detailemote1=1 WHERE entry=143;
UPDATE quests SET CompleteEmote=6 WHERE entry=145;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=29,CompleteEmote=6,completionemote1=5,completionemote2=6,completionemote3=1 WHERE entry=146;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=147;
UPDATE quests SET CompleteEmote=0 WHERE entry=149;
UPDATE quests SET CompleteEmote=0 WHERE entry=154;
UPDATE quests SET detailemote1=6,completionemote1=21 WHERE entry=155;
UPDATE quests SET detailemote1=1,completionemote1=2 WHERE entry=156;
UPDATE quests SET CompleteEmote=0 WHERE entry=157;
UPDATE quests SET CompleteEmote=0 WHERE entry=159;
UPDATE quests SET CompleteEmote=0 WHERE entry=160;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,CompleteEmote=6,completionemote1=1 WHERE entry=161;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=66 WHERE entry=166;
UPDATE quests SET CompleteEmote=6,completionemote1=1 WHERE entry=167;
UPDATE quests SET CompleteEmote=6,completionemote1=1 WHERE entry=168;
UPDATE quests SET CompleteEmote=6,completionemote1=4 WHERE entry=181;
UPDATE quests SET completionemote1=21 WHERE entry=185;
UPDATE quests SET detailemote1=1,IncompleteEmote=25,completionemote1=21 WHERE entry=186;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=21 WHERE entry=187;
UPDATE quests SET detailemote1=1,completionemote1=21 WHERE entry=188;
UPDATE quests SET completionemote1=21 WHERE entry=190;
UPDATE quests SET detailemote1=1,completionemote1=21 WHERE entry=191;
UPDATE quests SET detailemote1=1,completionemote1=21 WHERE entry=192;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=21 WHERE entry=193;
UPDATE quests SET detailemote1=6,detailemote2=1,completionemote1=21 WHERE entry=194;
UPDATE quests SET detailemote1=1,completionemote1=21 WHERE entry=195;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=21 WHERE entry=196;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=6 WHERE entry=197;
UPDATE quests SET CompleteEmote=0 WHERE entry=198;
UPDATE quests SET CompleteEmote=6,completionemote1=5 WHERE entry=199;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=201;
UPDATE quests SET CompleteEmote=0 WHERE entry=202;
UPDATE quests SET CompleteEmote=0 WHERE entry=204;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=205;
UPDATE quests SET CompleteEmote=0 WHERE entry=207;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=21 WHERE entry=208;
UPDATE quests SET CompleteEmote=0 WHERE entry=209;
UPDATE quests SET CompleteEmote=0 WHERE entry=210;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1 WHERE entry=211;
UPDATE quests SET CompleteEmote=0 WHERE entry=214;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=215;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=66 WHERE entry=217;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=20,completionemote1=66 WHERE entry=219;
UPDATE quests SET detailemote1=66,CompleteEmote=0 WHERE entry=223;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,completionemote1=66 WHERE entry=224;
UPDATE quests SET CompleteEmote=0 WHERE entry=230;
UPDATE quests SET CompleteEmote=0 WHERE entry=231;
UPDATE quests SET detailemote1=1,completionemote1=11,completionemoteDelay1=100 WHERE entry=236;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=237;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=29 WHERE entry=250;
UPDATE quests SET CompleteEmote=0 WHERE entry=251;
UPDATE quests SET CompleteEmote=0 WHERE entry=252;
UPDATE quests SET CompleteEmote=0 WHERE entry=253;
UPDATE quests SET CompleteEmote=6,completionemote1=1,completionemote2=1 WHERE entry=256;
UPDATE quests SET CompleteEmote=0 WHERE entry=262;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=66 WHERE entry=263;
UPDATE quests SET CompleteEmote=0 WHERE entry=265;
UPDATE quests SET CompleteEmote=0 WHERE entry=266;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=66 WHERE entry=267;
UPDATE quests SET CompleteEmote=0 WHERE entry=268;
UPDATE quests SET CompleteEmote=0 WHERE entry=269;
UPDATE quests SET CompleteEmote=0 WHERE entry=271;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=5,completionemote2=274 WHERE entry=273;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=274;
UPDATE quests SET CompleteEmote=0 WHERE entry=277;
UPDATE quests SET CompleteEmote=0 WHERE entry=279;
UPDATE quests SET CompleteEmote=0 WHERE entry=286;
UPDATE quests SET detailemote1=1,completionemote1=4 WHERE entry=288;
UPDATE quests SET CompleteEmote=0 WHERE entry=289;
UPDATE quests SET CompleteEmote=0 WHERE entry=290;
UPDATE quests SET CompleteEmote=0 WHERE entry=292;
UPDATE quests SET CompleteEmote=0 WHERE entry=293;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1 WHERE entry=294;
UPDATE quests SET detailemote1=1,completionemote1=21 WHERE entry=295;
UPDATE quests SET detailemote1=1,detailemote2=5,completionemote1=2 WHERE entry=296;
UPDATE quests SET CompleteEmote=0 WHERE entry=297;
UPDATE quests SET CompleteEmote=0 WHERE entry=298;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,completionemote1=1 WHERE entry=299;
UPDATE quests SET CompleteEmote=0 WHERE entry=301;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,completionemote1=66 WHERE entry=303;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1,completionemote2=1,completionemote3=2 WHERE entry=304;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=5,completionemote1=5 WHERE entry=305;
UPDATE quests SET detailemote1=5,detailemote2=1,CompleteEmote=6,completionemote1=5,completionemote2=6,completionemote3=1 WHERE entry=306;
UPDATE quests SET CompleteEmote=0 WHERE entry=307;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=273 WHERE entry=309;
UPDATE quests SET CompleteEmote=0 WHERE entry=322;
UPDATE quests SET CompleteEmote=0 WHERE entry=324;
UPDATE quests SET CompleteEmote=0 WHERE entry=325;
UPDATE quests SET CompleteEmote=0 WHERE entry=328;
UPDATE quests SET CompleteEmote=0 WHERE entry=329;
UPDATE quests SET CompleteEmote=0 WHERE entry=332;
UPDATE quests SET CompleteEmote=0 WHERE entry=333;
UPDATE quests SET CompleteEmote=0 WHERE entry=334;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=21 WHERE entry=335;
UPDATE quests SET detailemote1=1,CompleteEmote=5,completionemote1=1 WHERE entry=336;
UPDATE quests SET detailemote1=0,CompleteEmote=0 WHERE entry=337;
UPDATE quests SET CompleteEmote=6,completionemote1=21 WHERE entry=338;
UPDATE quests SET completionemote1=21 WHERE entry=339;
UPDATE quests SET completionemote1=21 WHERE entry=340;
UPDATE quests SET completionemote1=21 WHERE entry=341;
UPDATE quests SET completionemote1=21 WHERE entry=342;
UPDATE quests SET CompleteEmote=0 WHERE entry=346;
UPDATE quests SET CompleteEmote=0 WHERE entry=347;
UPDATE quests SET completionemote1=5,completionemote2=1,completionemote3=1 WHERE entry=349;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=6,completionemote2=1,completionemote3=11,completionemote4=1 WHERE entry=350;
UPDATE quests SET CompleteEmote=0 WHERE entry=351;
UPDATE quests SET CompleteEmote=0,completionemote1=6,completionemote2=2,completionemote3=1 WHERE entry=373;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=378;
UPDATE quests SET CompleteEmote=0 WHERE entry=385;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=6,completionemote2=5,completionemote3=1,completionemote4=1 WHERE entry=389;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=6,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=391;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=6,completionemote2=1,completionemote3=1 WHERE entry=392;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=6,completionemote2=1,completionemote3=1 WHERE entry=393;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=6,completionemote2=1,completionemote3=1,completionemote4=2 WHERE entry=394;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=2,completionemote2=1,completionemote3=1 WHERE entry=395;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=1,completionemote2=1,completionemote3=2 WHERE entry=396;
UPDATE quests SET detailemote1=1 WHERE entry=397;
UPDATE quests SET CompleteEmote=0 WHERE entry=399;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=412;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,completionemote1=6,completionemote2=1,completionemote3=1 WHERE entry=434;
UPDATE quests SET CompleteEmote=0 WHERE entry=453;
UPDATE quests SET detailemote1=1 WHERE entry=463;
UPDATE quests SET CompleteEmote=0 WHERE entry=464;
UPDATE quests SET CompleteEmote=0 WHERE entry=465;
UPDATE quests SET CompleteEmote=0,completionemote1=5 WHERE entry=466;
UPDATE quests SET detailemote1=0,CompleteEmote=0 WHERE entry=470;
UPDATE quests SET detailemote1=1,completionemote1=6,completionemote2=11,completionemoteDelay2=3000 WHERE entry=471;
UPDATE quests SET completionemote1=6,completionemote2=1 WHERE entry=472;
UPDATE quests SET CompleteEmote=0 WHERE entry=474;
UPDATE quests SET completionemote1=5 WHERE entry=476;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=483;
UPDATE quests SET detailemote1=2,CompleteEmote=6,completionemote1=21 WHERE entry=484;
UPDATE quests SET CompleteEmote=0 WHERE entry=485;
UPDATE quests SET detailemote1=1,detailemote2=5 WHERE entry=489;
UPDATE quests SET CompleteEmote=0,completionemote1=11,completionemote2=1 WHERE entry=531;
UPDATE quests SET detailemote1=7 WHERE entry=536;
UPDATE quests SET CompleteEmote=0 WHERE entry=540;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=21 WHERE entry=555;
UPDATE quests SET detailemote1=10,detailemote2=23 WHERE entry=565;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=6,CompleteEmote=3,completionemote1=4 WHERE entry=576;
UPDATE quests SET CompleteEmote=0 WHERE entry=577;
UPDATE quests SET CompleteEmote=0 WHERE entry=579;
UPDATE quests SET detailemote1=1,detailemote2=5 WHERE entry=580;
UPDATE quests SET detailemote1=2,detailemote2=1,detailemote3=1,completionemote1=2,completionemote2=1,completionemote3=1 WHERE entry=583;
UPDATE quests SET CompleteEmote=6,completionemote1=21 WHERE entry=587;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=595;
UPDATE quests SET completionemote1=1 WHERE entry=597;
UPDATE quests SET detailemote1=5,detailemote2=6,detailemote3=5,completionemote1=6,completionemote2=1 WHERE entry=599;
UPDATE quests SET CompleteEmote=0 WHERE entry=600;
UPDATE quests SET CompleteEmote=0 WHERE entry=601;
UPDATE quests SET CompleteEmote=0 WHERE entry=602;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=604;
UPDATE quests SET CompleteEmote=25,completionemote1=6 WHERE entry=606;
UPDATE quests SET CompleteEmote=0 WHERE entry=607;
UPDATE quests SET detailemote1=5,detailemote2=1,IncompleteEmote=6,completionemote1=21 WHERE entry=608;
UPDATE quests SET CompleteEmote=0 WHERE entry=610;
UPDATE quests SET CompleteEmote=0 WHERE entry=611;
UPDATE quests SET CompleteEmote=0 WHERE entry=613;
UPDATE quests SET CompleteEmote=0,completionemote1=1,completionemote2=1 WHERE entry=617;
UPDATE quests SET CompleteEmote=0 WHERE entry=622;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,CompleteEmote=6,completionemote1=6,completionemote2=1,completionemote3=1 WHERE entry=623;
UPDATE quests SET CompleteEmote=0 WHERE entry=627;
UPDATE quests SET CompleteEmote=0 WHERE entry=628;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=2,completionemote2=1 WHERE entry=630;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=6 WHERE entry=631;
UPDATE quests SET CompleteEmote=6,completionemote1=18 WHERE entry=632;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=5,completionemote1=21 WHERE entry=633;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=634;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=5,CompleteEmote=6,completionemote1=1,completionemote2=2 WHERE entry=647;
UPDATE quests SET completionemote1=4 WHERE entry=648;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6 WHERE entry=659;
UPDATE quests SET detailemote1=2,detailemote2=1,detailemote3=6,completionemote1=6,completionemote2=1 WHERE entry=690;
UPDATE quests SET CompleteEmote=0 WHERE entry=709;
UPDATE quests SET detailemote1=3,detailemote2=1,detailemote3=1,detailemote4=6 WHERE entry=719;
UPDATE quests SET completionemote1=1,completionemote2=2,completionemoteDelay2=1000 WHERE entry=917;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=920;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=921;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=928;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=929;
UPDATE quests SET detailemote1=2,detailemoteDelay1=500 WHERE entry=932;
UPDATE quests SET detailemote1=1 WHERE entry=933;
UPDATE quests SET CompleteEmote=6,completionemote1=1 WHERE entry=939;
UPDATE quests SET detailemote1=1,CompleteEmote=11,completionemote1=5 WHERE entry=969;
UPDATE quests SET detailemote1=6,detailemote2=4,completionemote1=4 WHERE entry=974;
UPDATE quests SET detailemote1=1,completionemote1=6 WHERE entry=975;
UPDATE quests SET detailemote1=1,CompleteEmote=0,completionemote1=1 WHERE entry=977;
UPDATE quests SET completionemote1=3 WHERE entry=979;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=980;
UPDATE quests SET detailemote1=1 WHERE entry=992;
UPDATE quests SET detailemote1=15,detailemote2=5,detailemote3=1 WHERE entry=1015;
UPDATE quests SET detailemote1=15,detailemote2=5,detailemote3=1 WHERE entry=1019;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=4,completionemote2=1,completionemote3=2 WHERE entry=1050;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=66 WHERE entry=1053;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=1078;
UPDATE quests SET CompleteEmote=6,completionemote1=6,completionemote2=1 WHERE entry=1100;
UPDATE quests SET detailemote1=18,detailemote2=1,detailemote3=1,CompleteEmote=0,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=1101;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=1111;
UPDATE quests SET detailemote1=1 WHERE entry=1112;
UPDATE quests SET completionemote1=3,completionemote2=1,completionemoteDelay2=1000 WHERE entry=1132;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=2 WHERE entry=1144;
UPDATE quests SET CompleteEmote=0 WHERE entry=1193;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=29 WHERE entry=1198;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1,completionemote2=36,completionemote3=4,completionemoteDelay2=1000 WHERE entry=1203;
UPDATE quests SET CompleteEmote=0 WHERE entry=1204;
UPDATE quests SET detailemote1=1,detailemote2=6,CompleteEmote=0,completionemote1=4,completionemote2=1,completionemote3=3,completionemoteDelay3=2000 WHERE entry=1206;
UPDATE quests SET completionemote1=4 WHERE entry=1218;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=1219;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=1220;
UPDATE quests SET completionemote1=1,completionemote2=2 WHERE entry=1222;
UPDATE quests SET detailemote1=2,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=6 WHERE entry=1241;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=9,CompleteEmote=6,completionemote1=6,completionemote2=9,completionemote3=6,completionemote4=11 WHERE entry=1242;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1,CompleteEmote=2,completionemote1=6,completionemote2=11,completionemote3=6 WHERE entry=1243;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=9,completionemote3=1 WHERE entry=1244;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=6,completionemote1=1,completionemote2=1 WHERE entry=1245;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=14,completionemote2=1 WHERE entry=1246;
UPDATE quests SET detailemote1=11,detailemote2=1,detailemote3=1,completionemote1=3,completionemote2=1,completionemote3=1 WHERE entry=1247;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=3,completionemote2=1,completionemote3=6,completionemote4=1 WHERE entry=1248;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,completionemote1=6,completionemote2=1,completionemote3=1,completionemote4=6 WHERE entry=1249;
UPDATE quests SET detailemote1=18,detailemote2=1,detailemote3=1,detailemote4=5,completionemote1=5,completionemote2=1,completionemote3=1,completionemote4=1 WHERE entry=1250;
UPDATE quests SET CompleteEmote=6,completionemote1=1 WHERE entry=1252;
UPDATE quests SET CompleteEmote=6,completionemote1=1 WHERE entry=1253;
UPDATE quests SET detailemote1=1,completionemote1=4,completionemote2=1 WHERE entry=1258;
UPDATE quests SET detailemote1=1 WHERE entry=1259;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=66,completionemote2=1,completionemote3=1 WHERE entry=1264;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=2 WHERE entry=1265;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=2,completionemote2=1,completionemote3=1,completionemote4=1 WHERE entry=1266;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=1267;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=2,completionemote1=2,completionemote2=1,completionemote3=1 WHERE entry=1274;
UPDATE quests SET completionemote1=6 WHERE entry=1284;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=1285;
UPDATE quests SET detailemote1=1 WHERE entry=1286;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=1287;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=1319;
UPDATE quests SET detailemote1=1,detailemote2=3,completionemote1=1 WHERE entry=1320;
UPDATE quests SET detailemote1=5,detailemote2=14,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=1324;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=1338;
UPDATE quests SET completionemote1=1 WHERE entry=1339;
UPDATE quests SET detailemote1=1 WHERE entry=1360;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1,detailemote4=6 WHERE entry=1363;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,detailemote4=6,CompleteEmote=6 WHERE entry=1364;
UPDATE quests SET detailemote1=0,CompleteEmote=0,completionemote1=1,completionemote2=66 WHERE entry=1387;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=1389;
UPDATE quests SET detailemote1=0 WHERE entry=1392;
UPDATE quests SET detailemote1=1 WHERE entry=1393;
UPDATE quests SET CompleteEmote=0,completionemote1=4 WHERE entry=1395;
UPDATE quests SET completionemote1=4 WHERE entry=1396;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=2 WHERE entry=1398;
UPDATE quests SET detailemote1=1,CompleteEmote=0,completionemote1=1 WHERE entry=1421;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=1423;
UPDATE quests SET CompleteEmote=0,completionemote1=2 WHERE entry=1425;
UPDATE quests SET detailemote1=2,detailemote2=1,detailemote3=1 WHERE entry=1437;
UPDATE quests SET detailemote1=14,detailemote2=6,completionemote1=1,completionemote2=6 WHERE entry=1447;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=2 WHERE entry=1453;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=1458;
UPDATE quests SET detailemote1=1 WHERE entry=1581;
UPDATE quests SET detailemote1=1 WHERE entry=1618;
UPDATE quests SET completionemote1=2,completionemote2=1,completionemote3=1 WHERE entry=1641;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=2,completionemote2=6,completionemote3=1,completionemote4=1 WHERE entry=1642;
UPDATE quests SET detailemote1=2,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=1643;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=16,completionemote1=21,completionemote2=1,completionemote3=1,completionemote4=2 WHERE entry=1644;
UPDATE quests SET completionemote1=2,completionemote2=1,completionemote3=1,completionemote4=6 WHERE entry=1649;
UPDATE quests SET detailemote1=21,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=2,completionemote2=1,completionemote3=1,completionemote4=24 WHERE entry=1650;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,completionemote1=4,completionemote2=1,completionemote3=1 WHERE entry=1651;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=4,completionemote3=1 WHERE entry=1652;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=2,completionemote2=1,completionemote3=1,completionemote4=6 WHERE entry=1653;
UPDATE quests SET detailemote1=6,detailemote2=2,detailemote3=1,detailemote4=6 WHERE entry=1654;
UPDATE quests SET detailemote1=25,completionemote1=4 WHERE entry=1690;
UPDATE quests SET detailemote1=1,IncompleteEmote=6,completionemote1=66 WHERE entry=1691;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=4 WHERE entry=1707;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=6 WHERE entry=1758;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=3,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=1780;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=33,completionemote2=2,completionemote3=1,completionemote4=1 WHERE entry=1781;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=2,completionemote2=1,completionemote3=1,completionemote4=1 WHERE entry=1786;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=1,CompleteEmote=6,completionemote1=4,completionemote2=1,completionemote3=1 WHERE entry=1787;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=2,completionemote1=1,completionemote2=1,completionemote3=1,completionemote4=2 WHERE entry=1788;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=1790;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=6,completionemote4=1 WHERE entry=1793;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=2 WHERE entry=1795;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=1,completionemote2=1 WHERE entry=1796;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=11,completionemote2=1 WHERE entry=1798;
UPDATE quests SET CompleteEmote=6,completionemote1=6,completionemote2=1 WHERE entry=1799;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=2,CompleteEmote=6 WHERE entry=1802;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=2,CompleteEmote=6,completionemote1=21,completionemote2=1 WHERE entry=1804;
UPDATE quests SET completionemote1=4 WHERE entry=1878;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=4 WHERE entry=2038;
UPDATE quests SET detailemote1=1,completionemote1=6 WHERE entry=2039;
UPDATE quests SET detailemote1=1,CompleteEmote=0,completionemote1=4 WHERE entry=2040;
UPDATE quests SET CompleteEmote=6,completionemote1=25 WHERE entry=2198;
UPDATE quests SET detailemote1=1,CompleteEmote=0,completionemote1=21 WHERE entry=2199;
UPDATE quests SET detailemote1=1,detailemote2=5,completionemote1=1,completionemote2=5 WHERE entry=2240;
UPDATE quests SET CompleteEmote=5 WHERE entry=2279;
UPDATE quests SET detailemote1=1 WHERE entry=2398;
UPDATE quests SET detailemote1=1,completionemote1=4,completionemote2=1 WHERE entry=2418;
UPDATE quests SET detailemote1=1,completionemote1=4 WHERE entry=2438;
UPDATE quests SET detailemote1=4,CompleteEmote=6,completionemote1=1 WHERE entry=2439;
UPDATE quests SET detailemote1=15,detailemote2=1,detailemoteDelay2=100,completionemote1=2,completionemoteDelay1=200 WHERE entry=2459;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemoteDelay2=100,CompleteEmote=0,completionemote1=7,completionemoteDelay1=200 WHERE entry=2605;
UPDATE quests SET detailemote1=7,detailemote2=5,CompleteEmote=0,completionemote1=1 WHERE entry=2606;
UPDATE quests SET detailemote1=1,detailemote2=11,CompleteEmote=0,completionemote1=4 WHERE entry=2641;
UPDATE quests SET detailemote1=1,CompleteEmote=0 WHERE entry=2661;
UPDATE quests SET detailemote1=5,completionemote1=4,completionemote2=5,completionemote3=11,completionemoteDelay2=100,completionemoteDelay3=400 WHERE entry=2662;
UPDATE quests SET CompleteEmote=0 WHERE entry=2741;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=1,completionemote1=5,completionemote2=1,completionemote3=6,completionemote4=5 WHERE entry=2745;
UPDATE quests SET CompleteEmote=0,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=2746;
UPDATE quests SET CompleteEmote=0,completionemote1=1,completionemote2=1,completionemote3=1,completionemote4=2 WHERE entry=2758;
UPDATE quests SET CompleteEmote=0,completionemote1=5,completionemote2=1,completionemote3=1 WHERE entry=2759;
UPDATE quests SET CompleteEmote=0,completionemote1=1,completionemote2=1,completionemote3=2 WHERE entry=2760;
UPDATE quests SET CompleteEmote=0 WHERE entry=2761;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=2,CompleteEmote=0,completionemote1=1,completionemote2=1,completionemote3=5 WHERE entry=2762;
UPDATE quests SET CompleteEmote=0,completionemote1=1,completionemote2=1,completionemote3=2 WHERE entry=2763;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=2 WHERE entry=2764;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=2,completionemote1=1,completionemote2=2 WHERE entry=2765;
UPDATE quests SET detailemote1=5,completionemote1=4 WHERE entry=2768;
UPDATE quests SET completionemote1=1 WHERE entry=2769;
UPDATE quests SET CompleteEmote=0 WHERE entry=2771;
UPDATE quests SET CompleteEmote=0,completionemote1=5,completionemote2=1,completionemote3=2 WHERE entry=2772;
UPDATE quests SET CompleteEmote=0 WHERE entry=2773;
UPDATE quests SET CompleteEmote=6,completionemote1=4 WHERE entry=2781;
UPDATE quests SET detailemote1=1,completionemote1=4,completionemote2=1 WHERE entry=2846;
UPDATE quests SET completionemote1=1 WHERE entry=2864;
UPDATE quests SET detailemote1=1,CompleteEmote=0,completionemote1=1 WHERE entry=2865;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=2872;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=4 WHERE entry=2873;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1,completionemote2=34,completionemote3=1,completionemoteDelay2=1000 WHERE entry=2874;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=2875;
UPDATE quests SET CompleteEmote=0,completionemote1=5,completionemote2=1 WHERE entry=2876;
UPDATE quests SET CompleteEmote=0 WHERE entry=2878;
UPDATE quests SET CompleteEmote=0 WHERE entry=2882;
UPDATE quests SET CompleteEmote=0,completionemote1=4,completionemote2=1 WHERE entry=2922;
UPDATE quests SET completionemote1=18,completionemote2=6 WHERE entry=2923;
UPDATE quests SET CompleteEmote=0,completionemote1=4,completionemote2=2 WHERE entry=2924;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=5,completionemote1=1,completionemote2=1 WHERE entry=2926;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=2927;
UPDATE quests SET CompleteEmote=0,completionemote1=1,completionemote2=1 WHERE entry=2928;
UPDATE quests SET completionemote1=5 WHERE entry=2929;
UPDATE quests SET CompleteEmote=0,completionemote1=4,completionemote2=1,completionemote3=2 WHERE entry=2930;
UPDATE quests SET CompleteEmote=0 WHERE entry=2945;
UPDATE quests SET CompleteEmote=5 WHERE entry=2947;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=4 WHERE entry=2948;
UPDATE quests SET CompleteEmote=0 WHERE entry=2951;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1 WHERE entry=2962;
UPDATE quests SET completionemote1=1 WHERE entry=2989;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=2990;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=2998;
UPDATE quests SET detailemote1=4,CompleteEmote=0,completionemote1=1 WHERE entry=3022;
UPDATE quests SET detailemote1=1,CompleteEmote=0,completionemote1=1 WHERE entry=3042;
UPDATE quests SET detailemote1=1,CompleteEmote=2,completionemote1=1,completionemote2=1 WHERE entry=3117;
UPDATE quests SET detailemote1=1,CompleteEmote=0 WHERE entry=3161;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=3181;
UPDATE quests SET CompleteEmote=0 WHERE entry=3182;
UPDATE quests SET CompleteEmote=0,completionemote1=1,completionemote2=1 WHERE entry=3201;
UPDATE quests SET detailemote1=6,detailemote2=5 WHERE entry=3362;
UPDATE quests SET CompleteEmote=0 WHERE entry=3363;
UPDATE quests SET CompleteEmote=0,completionemote1=5 WHERE entry=3368;
UPDATE quests SET CompleteEmote=0 WHERE entry=3372;
UPDATE quests SET CompleteEmote=0,completionemote1=2 WHERE entry=3378;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=3379;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=2,completionemote2=1 WHERE entry=3382;
UPDATE quests SET CompleteEmote=0,completionemote1=5,completionemote2=1,completionemote3=1 WHERE entry=3385;
UPDATE quests SET completionemote1=4,completionemote2=4,completionemote3=5 WHERE entry=3402;
UPDATE quests SET detailemote1=1,detailemoteDelay1=1000 WHERE entry=3441;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemoteDelay1=2000,detailemoteDelay2=1000,CompleteEmote=0,completionemote1=21,completionemote2=1,completionemote3=1,completionemoteDelay1=1000,completionemoteDelay2=500 WHERE entry=3442;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemoteDelay1=500,detailemoteDelay2=500,CompleteEmote=0,completionemote1=1,completionemote2=1 WHERE entry=3443;
UPDATE quests SET detailemote1=6,detailemote2=1 WHERE entry=3448;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=3449;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=3450;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1 WHERE entry=3451;
UPDATE quests SET detailemoteDelay1=500,detailemoteDelay2=500,completionemote1=1,completionemote2=1 WHERE entry=3452;
UPDATE quests SET detailemote1=1,detailemoteDelay1=500,completionemote1=1,completionemote2=1 WHERE entry=3453;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6 WHERE entry=3461;
UPDATE quests SET detailemote1=1,detailemoteDelay1=200,completionemote1=1 WHERE entry=3462;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=5,completionemote2=5 WHERE entry=3463;
UPDATE quests SET detailemote1=1 WHERE entry=3520;
UPDATE quests SET completionemote1=2 WHERE entry=3521;
UPDATE quests SET detailemote1=1 WHERE entry=3522;
UPDATE quests SET detailemote1=5,completionemote1=21 WHERE entry=3523;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=3524;
UPDATE quests SET detailemote1=1 WHERE entry=3525;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=3527;
UPDATE quests SET CompleteEmote=0,completionemote1=5,completionemote2=18 WHERE entry=3566;
UPDATE quests SET completionemote1=6 WHERE entry=3567;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,completionemote1=11,completionemote2=1 WHERE entry=3601;
UPDATE quests SET detailemote1=1 WHERE entry=3636;
UPDATE quests SET detailemote1=1 WHERE entry=3661;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=3701;
UPDATE quests SET detailemote1=6,completionemote1=6 WHERE entry=3702;
UPDATE quests SET CompleteEmote=24,completionemote1=4,completionemote2=1,completionemote3=6 WHERE entry=3741;
UPDATE quests SET detailemote1=1 WHERE entry=3763;
UPDATE quests SET detailemote1=1,CompleteEmote=4,completionemote1=1 WHERE entry=3764;
UPDATE quests SET detailemote1=1,detailemote2=5,CompleteEmote=0,completionemote1=1 WHERE entry=3783;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=5,completionemote2=1,completionemote3=1 WHERE entry=3823;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=3824;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=3845;
UPDATE quests SET detailemote1=1,completionemote1=4 WHERE entry=3881;
UPDATE quests SET detailemote1=1 WHERE entry=3882;
UPDATE quests SET detailemote1=5 WHERE entry=3883;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=3908;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemoteDelay2=200,CompleteEmote=0 WHERE entry=3909;
UPDATE quests SET detailemote1=1,CompleteEmote=5,completionemote1=1 WHERE entry=4101;
UPDATE quests SET completionemote1=1 WHERE entry=4103;
UPDATE quests SET completionemote1=1 WHERE entry=4104;
UPDATE quests SET completionemote1=1 WHERE entry=4107;
UPDATE quests SET CompleteEmote=0 WHERE entry=4116;
UPDATE quests SET CompleteEmote=0 WHERE entry=4126;
UPDATE quests SET detailemote1=0 WHERE entry=4128;
UPDATE quests SET detailemoteDelay3=200 WHERE entry=4141;
UPDATE quests SET detailemote1=6,detailemote2=1,completionemote1=1 WHERE entry=4142;
UPDATE quests SET detailemote1=1 WHERE entry=4143;
UPDATE quests SET completionemote1=1,completionemote2=2 WHERE entry=4161;
UPDATE quests SET CompleteEmote=0 WHERE entry=4221;
UPDATE quests SET detailemote1=18,detailemote2=1,detailemote3=1 WHERE entry=4243;
UPDATE quests SET detailemote1=1,completionemote1=1,completionemote2=2 WHERE entry=4261;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=4262;
UPDATE quests SET completionemote1=6,completionemote2=1 WHERE entry=4263;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=5,detailemote4=193 WHERE entry=4283;
UPDATE quests SET detailemote1=1,detailemote2=5 WHERE entry=4284;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=4289;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=4290;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=4291;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=2 WHERE entry=4292;
UPDATE quests SET detailemote1=1 WHERE entry=4296;
UPDATE quests SET completionemote1=1 WHERE entry=4324;
UPDATE quests SET CompleteEmote=0 WHERE entry=4381;
UPDATE quests SET CompleteEmote=0 WHERE entry=4382;
UPDATE quests SET CompleteEmote=0 WHERE entry=4383;
UPDATE quests SET CompleteEmote=0 WHERE entry=4384;
UPDATE quests SET CompleteEmote=0 WHERE entry=4385;
UPDATE quests SET CompleteEmote=0 WHERE entry=4386;
UPDATE quests SET detailemote1=1,detailemote2=2,detailemote3=1 WHERE entry=4421;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=0,completionemote1=2 WHERE entry=4441;
UPDATE quests SET detailemote1=1,completionemote1=2 WHERE entry=4442;
UPDATE quests SET CompleteEmote=0 WHERE entry=4443;
UPDATE quests SET CompleteEmote=0 WHERE entry=4445;
UPDATE quests SET CompleteEmote=0 WHERE entry=4449;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=1,completionemote2=1 WHERE entry=4450;
UPDATE quests SET CompleteEmote=0 WHERE entry=4451;
UPDATE quests SET CompleteEmote=0 WHERE entry=4462;
UPDATE quests SET CompleteEmote=0 WHERE entry=4464;
UPDATE quests SET CompleteEmote=0 WHERE entry=4466;
UPDATE quests SET completionemote1=1,completionemote2=4 WHERE entry=4491;
UPDATE quests SET CompleteEmote=0 WHERE entry=4492;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=4493;
UPDATE quests SET detailemote1=1,completionemote1=21 WHERE entry=4496;
UPDATE quests SET completionemote1=1,completionemote2=4 WHERE entry=4501;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=4,completionemote2=1 WHERE entry=4502;
UPDATE quests SET detailemote2=1 WHERE entry=4503;
UPDATE quests SET detailemote1=1,completionemote1=4 WHERE entry=4507;
UPDATE quests SET detailemote1=1,CompleteEmote=5,completionemote1=1,completionemote2=1,completionemote3=5 WHERE entry=4508;
UPDATE quests SET detailemote1=4,CompleteEmote=2,completionemote1=1 WHERE entry=4510;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,completionemote1=5,completionemote2=1,completionemote3=1 WHERE entry=4512;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,completionemote1=6,completionemote2=4,completionemote3=1 WHERE entry=4513;
UPDATE quests SET CompleteEmote=0 WHERE entry=4601;
UPDATE quests SET detailemote1=1,completionemote1=4 WHERE entry=4681;
UPDATE quests SET detailemote1=1 WHERE entry=4726;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=2,completionemote2=1 WHERE entry=4738;
UPDATE quests SET detailemote1=1,CompleteEmote=0,completionemote1=1,completionemote2=2 WHERE entry=4764;
UPDATE quests SET detailemote1=1,CompleteEmote=0 WHERE entry=4765;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=2,completionemote1=4,completionemote2=1 WHERE entry=4781;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=4782;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=21,completionemote2=6 WHERE entry=4783;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=4,completionemote2=1 WHERE entry=4784;
UPDATE quests SET completionemote1=1,completionemote2=5 WHERE entry=4785;
UPDATE quests SET detailemote1=1,completionemote1=1,completionemote2=1 WHERE entry=4786;
UPDATE quests SET CompleteEmote=0,completionemote1=5,completionemote2=2 WHERE entry=4787;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=4842;
UPDATE quests SET detailemote1=3,detailemote2=1 WHERE entry=4861;
UPDATE quests SET completionemote1=1,completionemote2=2 WHERE entry=4864;
UPDATE quests SET detailemoteDelay3=3000,completionemote1=5,completionemote2=6,completionemote3=1,completionemoteDelay1=500,completionemoteDelay2=1500,completionemoteDelay3=2500 WHERE entry=4866;
UPDATE quests SET detailemote1=1,completionemote1=6 WHERE entry=4901;
UPDATE quests SET detailemote1=1,completionemote1=6 WHERE entry=4902;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=2 WHERE entry=4906;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=4,completionemote2=1 WHERE entry=4961;
UPDATE quests SET CompleteEmote=6,completionemote1=21,completionemote2=1 WHERE entry=4963;
UPDATE quests SET detailemote1=21,completionemote1=6,completionemote2=1,completionemote3=1 WHERE entry=4968;
UPDATE quests SET detailemote1=1 WHERE entry=4971;
UPDATE quests SET detailemote1=1 WHERE entry=4972;
UPDATE quests SET detailemote1=1 WHERE entry=4973;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=4975;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=21,completionemote2=1 WHERE entry=4976;
UPDATE quests SET detailemote1=0 WHERE entry=4984;
UPDATE quests SET detailemote1=0 WHERE entry=4985;
UPDATE quests SET detailemote1=0 WHERE entry=4986;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=6 WHERE entry=5002;
UPDATE quests SET detailemote1=0 WHERE entry=5021;
UPDATE quests SET detailemote1=0 WHERE entry=5022;
UPDATE quests SET detailemote1=1 WHERE entry=5048;
UPDATE quests SET detailemote1=2 WHERE entry=5050;
UPDATE quests SET detailemote1=0 WHERE entry=5051;
UPDATE quests SET completionemote1=1 WHERE entry=5054;
UPDATE quests SET detailemote1=1,detailemote2=2 WHERE entry=5055;
UPDATE quests SET detailemote1=1,detailemote2=2,completionemote1=2 WHERE entry=5056;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=5057;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=5081;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=6 WHERE entry=5082;
UPDATE quests SET CompleteEmote=6,completionemote1=5 WHERE entry=5085;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=0,completionemote1=1 WHERE entry=5086;
UPDATE quests SET detailemote1=1,CompleteEmote=0,completionemote1=1 WHERE entry=5087;
UPDATE quests SET CompleteEmote=6,completionemote1=1 WHERE entry=5089;
UPDATE quests SET detailemote1=5,completionemote1=66 WHERE entry=5090;
UPDATE quests SET detailemote1=1 WHERE entry=5092;
UPDATE quests SET detailemote1=1 WHERE entry=5097;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=5102;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=5121;
UPDATE quests SET CompleteEmote=0 WHERE entry=5122;
UPDATE quests SET CompleteEmote=6,completionemote1=1 WHERE entry=5123;
UPDATE quests SET detailemote1=1,detailemote2=2,CompleteEmote=2,completionemote1=1,completionemote2=1 WHERE entry=5128;
UPDATE quests SET detailemote1=1,detailemote2=20 WHERE entry=5142;
UPDATE quests SET detailemote1=0 WHERE entry=5149;
UPDATE quests SET detailemote1=0,completionemoteDelay2=1000,completionemoteDelay3=1000 WHERE entry=5152;
UPDATE quests SET detailemote1=1 WHERE entry=5153;
UPDATE quests SET detailemote1=1 WHERE entry=5154;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=4,completionemote2=1,completionemote3=1 WHERE entry=5155;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=2,completionemote2=1 WHERE entry=5157;
UPDATE quests SET detailemote1=1,CompleteEmote=2,completionemote1=1,completionemote2=1 WHERE entry=5158;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=2,completionemote1=4,completionemote2=1 WHERE entry=5159;
UPDATE quests SET detailemote1=1,detailemote2=11,detailemote3=11,CompleteEmote=11,completionemote1=11,completionemote2=11 WHERE entry=5163;
UPDATE quests SET detailemote1=1,detailemote2=1,IncompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=5165;
UPDATE quests SET detailemote1=1 WHERE entry=5168;
UPDATE quests SET detailemote1=1 WHERE entry=5181;
UPDATE quests SET CompleteEmote=0 WHERE entry=5202;
UPDATE quests SET completionemote1=1 WHERE entry=5203;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=2 WHERE entry=5204;
UPDATE quests SET detailemote1=1 WHERE entry=5206;
UPDATE quests SET detailemote1=1 WHERE entry=5210;
UPDATE quests SET detailemote1=5,detailemote2=1,IncompleteEmote=5 WHERE entry=5211;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=5,completionemote1=1,completionemote2=1 WHERE entry=5212;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=5,completionemote1=5,completionemote2=1,completionemote3=1 WHERE entry=5213;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,detailemote4=20,CompleteEmote=5,completionemote1=1 WHERE entry=5214;
UPDATE quests SET detailemote1=1 WHERE entry=5215;
UPDATE quests SET detailemote1=1 WHERE entry=5216;
UPDATE quests SET detailemote1=0 WHERE entry=5217;
UPDATE quests SET detailemote1=1 WHERE entry=5219;
UPDATE quests SET detailemote1=0 WHERE entry=5220;
UPDATE quests SET detailemote1=1 WHERE entry=5222;
UPDATE quests SET detailemote1=0 WHERE entry=5223;
UPDATE quests SET detailemote1=1 WHERE entry=5225;
UPDATE quests SET detailemote1=0 WHERE entry=5226;
UPDATE quests SET detailemote1=0 WHERE entry=5241;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=4,completionemote2=1,completionemote3=2 WHERE entry=5242;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=25,completionemote1=1,completionemote2=1 WHERE entry=5243;
UPDATE quests SET CompleteEmote=0 WHERE entry=5245;
UPDATE quests SET detailemote1=2,CompleteEmote=0,completionemote1=1 WHERE entry=5246;
UPDATE quests SET detailemote1=1,CompleteEmote=0,completionemote1=1 WHERE entry=5247;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=2 WHERE entry=5248;
UPDATE quests SET detailemote1=1,completionemote1=1,completionemote2=2 WHERE entry=5249;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,IncompleteEmote=5,completionemote1=5,completionemote2=1,completionemote3=1 WHERE entry=5251;
UPDATE quests SET CompleteEmote=25,completionemote1=5,completionemote2=1,completionemote3=1,completionemote4=25 WHERE entry=5262;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=0,completionemote1=1,completionemote2=25 WHERE entry=5263;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,completionemote1=1 WHERE entry=5264;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=2 WHERE entry=5265;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=5281;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=5282;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=6,completionemote1=25,completionemote2=1,completionemote3=1 WHERE entry=5283;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,completionemote1=1,completionemote2=25 WHERE entry=5343;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=0 WHERE entry=5344;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=5382;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=1,completionemote3=1,completionemote4=25 WHERE entry=5384;
UPDATE quests SET CompleteEmote=6 WHERE entry=5385;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=0,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=5461;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=25,completionemote1=1,completionemote2=1 WHERE entry=5462;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=51,detailemote4=25,CompleteEmote=0 WHERE entry=5463;
UPDATE quests SET CompleteEmote=0,completionemote1=1,completionemote2=1 WHERE entry=5464;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=5465;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=4 WHERE entry=5466;
UPDATE quests SET detailemote1=5,detailemote2=1 WHERE entry=5501;
UPDATE quests SET completionemote1=5 WHERE entry=5503;
UPDATE quests SET detailemote1=1,detailemote2=66,detailemote3=1 WHERE entry=5504;
UPDATE quests SET completionemote1=1 WHERE entry=5505;
UPDATE quests SET completionemote1=4 WHERE entry=5508;
UPDATE quests SET detailemote1=1,detailemote2=66,detailemote3=1 WHERE entry=5513;
UPDATE quests SET completionemote1=5 WHERE entry=5515;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=1 WHERE entry=5518;
UPDATE quests SET detailemote1=5,detailemote2=1,completionemote1=4 WHERE entry=5529;
UPDATE quests SET detailemote1=1 WHERE entry=5533;
UPDATE quests SET detailemote1=5,detailemote2=6,detailemote3=1,CompleteEmote=6,completionemote1=4,completionemote2=1 WHERE entry=5534;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=5535;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=2,completionemote2=1 WHERE entry=5536;
UPDATE quests SET detailemote1=1 WHERE entry=5537;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=5 WHERE entry=5538;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=5561;
UPDATE quests SET detailemote1=5,detailemote2=18,detailemote3=20,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=5601;
UPDATE quests SET detailemote1=1 WHERE entry=5721;
UPDATE quests SET detailemote1=1 WHERE entry=5762;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=6 WHERE entry=5801;
UPDATE quests SET detailemote1=1,completionemote1=4 WHERE entry=5803;
UPDATE quests SET completionemote1=1 WHERE entry=5882;
UPDATE quests SET completionemote1=1 WHERE entry=5883;
UPDATE quests SET completionemote1=1 WHERE entry=5886;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=5903;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=5904;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=5921;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=5924;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=5929;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=5931;
UPDATE quests SET detailemote1=1 WHERE entry=5941;
UPDATE quests SET detailemote1=1,completionemote1=4 WHERE entry=6001;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=6004;
UPDATE quests SET detailemote1=5 WHERE entry=6021;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=6023;
UPDATE quests SET detailemote1=0 WHERE entry=6024;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=6025;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=6026;
UPDATE quests SET detailemote1=1,CompleteEmote=66,completionemote1=1 WHERE entry=6028;
UPDATE quests SET detailemote1=1,CompleteEmote=2,completionemote1=1 WHERE entry=6030;
UPDATE quests SET CompleteEmote=0 WHERE entry=6032;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,IncompleteEmote=1 WHERE entry=6041;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=6141;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,detailemoteDelay1=1000,detailemoteDelay2=2000,detailemoteDelay3=3000,detailemoteDelay4=4000,completionemoteDelay1=1000,completionemoteDelay2=2000 WHERE entry=6182;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=6,detailemoteDelay1=1000,detailemoteDelay2=2000,detailemoteDelay3=3000,detailemoteDelay4=4000 WHERE entry=6183;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,detailemoteDelay1=1000,detailemoteDelay2=2000,detailemoteDelay3=3000,detailemoteDelay4=4000,completionemoteDelay1=1000,completionemoteDelay2=1500 WHERE entry=6184;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=6185;
UPDATE quests SET detailemote1=33,detailemote2=1,detailemote3=1,detailemote4=25,detailemoteDelay1=1000,detailemoteDelay2=2000,detailemoteDelay3=3000,detailemoteDelay4=4000,completionemote1=5,completionemote2=35,completionemote3=6,completionemote4=274,completionemoteDelay1=1000,completionemoteDelay2=1500,completionemoteDelay3=2500,completionemoteDelay4=3500 WHERE entry=6186;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=25,detailemoteDelay1=1000,detailemoteDelay2=2000,detailemoteDelay3=3000,detailemoteDelay4=3500 WHERE entry=6187;
UPDATE quests SET detailemote1=1 WHERE entry=6341;
UPDATE quests SET detailemote1=0 WHERE entry=6389;
UPDATE quests SET completionemote1=3,completionemote2=1 WHERE entry=6603;
UPDATE quests SET detailemote1=6,detailemote2=1,completionemote1=1 WHERE entry=6604;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,detailemote4=1,CompleteEmote=6,completionemote1=5,completionemote2=1,completionemoteDelay2=1000 WHERE entry=6607;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=2 WHERE entry=6624;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5 WHERE entry=6625;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=6626;
UPDATE quests SET CompleteEmote=0 WHERE entry=7066;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=7070;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,detailemoteDelay1=500,detailemoteDelay2=1000,detailemoteDelay3=1500,detailemoteDelay4=2000,completionemote1=1,completionemote2=1,completionemote3=2,completionemoteDelay1=500,completionemoteDelay2=1000,completionemoteDelay3=1500 WHERE entry=7441;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=2,detailemoteDelay1=500,detailemoteDelay2=1000,detailemoteDelay3=1500,detailemoteDelay4=2000,completionemote1=21 WHERE entry=7461;
UPDATE quests SET CompleteEmote=5,completionemote1=1,completionemote2=1,completionemote3=5 WHERE entry=7495;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=4,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=7496;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=7497;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1 WHERE entry=7601;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=0 WHERE entry=7602;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=0,completionemote1=1,completionemote2=1,completionemote3=5 WHERE entry=7603;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=7637;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=7638;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=7641;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=7650;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=7652;
UPDATE quests SET completionemote1=1 WHERE entry=7653;
UPDATE quests SET CompleteEmote=11 WHERE entry=7654;
UPDATE quests SET CompleteEmote=0,completionemote1=1 WHERE entry=7655;
UPDATE quests SET completionemote1=1 WHERE entry=7656;
UPDATE quests SET completionemote1=1 WHERE entry=7657;
UPDATE quests SET completionemote1=1 WHERE entry=7659;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=7670;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=7701;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=6 WHERE entry=7722;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=25,completionemote1=1,completionemote2=21 WHERE entry=7723;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=5 WHERE entry=7724;
UPDATE quests SET completionemote1=1 WHERE entry=7727;
UPDATE quests SET completionemote1=1,completionemote2=21 WHERE entry=7728;
UPDATE quests SET IncompleteEmote=1 WHERE entry=7729;
UPDATE quests SET completionemote1=5 WHERE entry=7737;
UPDATE quests SET completionemote1=4 WHERE entry=7791;
UPDATE quests SET completionemote1=1 WHERE entry=7792;
UPDATE quests SET completionemote1=4 WHERE entry=7793;
UPDATE quests SET completionemote1=4 WHERE entry=7794;
UPDATE quests SET completionemote1=4,completionemote2=1 WHERE entry=7795;
UPDATE quests SET completionemote1=1 WHERE entry=7798;
UPDATE quests SET completionemote1=4 WHERE entry=7799;
UPDATE quests SET completionemote1=4,completionemote2=1 WHERE entry=7800;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=7801;
UPDATE quests SET completionemote1=4 WHERE entry=7807;
UPDATE quests SET completionemote1=4 WHERE entry=7808;
UPDATE quests SET completionemote1=4 WHERE entry=7809;
UPDATE quests SET completionemote1=4,completionemote2=1 WHERE entry=7811;
UPDATE quests SET completionemote1=1 WHERE entry=7812;
UPDATE quests SET detailemote1=1,detailemote2=2 WHERE entry=7877;
UPDATE quests SET detailemote1=1 WHERE entry=8151;
UPDATE quests SET detailemote1=1 WHERE entry=8167;
UPDATE quests SET CompleteEmote=0 WHERE entry=8194;
UPDATE quests SET completionemote1=1 WHERE entry=8242;
UPDATE quests SET detailemote1=5 WHERE entry=8275;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=2 WHERE entry=8318;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=8365;
UPDATE quests SET detailemote1=5,completionemote1=5,completionemote2=6 WHERE entry=8366;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=8414;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=8415;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=8416;
UPDATE quests SET detailemote1=1,CompleteEmote=0 WHERE entry=8418;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=8419;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=8421;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6 WHERE entry=8422;
UPDATE quests SET completionemote1=2 WHERE entry=8460;
UPDATE quests SET detailemote1=1,completionemote1=1,completionemote2=2 WHERE entry=8462;
UPDATE quests SET completionemote1=1 WHERE entry=8647;
UPDATE quests SET completionemote1=1 WHERE entry=8649;
UPDATE quests SET completionemote1=1 WHERE entry=8653;
UPDATE quests SET completionemote1=1 WHERE entry=8675;
UPDATE quests SET completionemote1=1 WHERE entry=8684;
UPDATE quests SET completionemote1=1 WHERE entry=8718;
UPDATE quests SET completionemote1=1 WHERE entry=8721;
UPDATE quests SET completionemote1=1 WHERE entry=8725;
UPDATE quests SET CompleteEmote=1 WHERE entry=8836;
UPDATE quests SET CompleteEmote=1 WHERE entry=8837;
UPDATE quests SET completionemote1=1 WHERE entry=8866;
UPDATE quests SET completionemote1=2 WHERE entry=8868;
UPDATE quests SET CompleteEmote=0,completionemote1=17 WHERE entry=8897;
UPDATE quests SET completionemote1=1 WHERE entry=8898;
UPDATE quests SET detailemote1=1,detailemote2=24,detailemote3=1,CompleteEmote=6,completionemote1=1,completionemote2=22 WHERE entry=8903;
UPDATE quests SET completionemote1=1 WHERE entry=8993;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=9023;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1,CompleteEmote=6,completionemote1=1,completionemote2=1 WHERE entry=9024;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1 WHERE entry=9025;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=9026;
UPDATE quests SET detailemote1=6,detailemote2=1 WHERE entry=9027;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9033;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=9121;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=9122;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9124;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=9126;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1,detailemote4=1 WHERE entry=9128;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=25 WHERE entry=9131;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=9136;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=9141;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1,detailemote4=1 WHERE entry=9221;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1,detailemote4=1 WHERE entry=9226;
UPDATE quests SET IncompleteEmote=6 WHERE entry=9355;
UPDATE quests SET detailemote1=1 WHERE entry=9383;
UPDATE quests SET detailemote1=1 WHERE entry=9385;
UPDATE quests SET detailemote1=0 WHERE entry=9390;
UPDATE quests SET detailemote1=0 WHERE entry=9398;
UPDATE quests SET detailemote1=0 WHERE entry=9399;
UPDATE quests SET detailemote1=1,detailemote2=11 WHERE entry=9415;
UPDATE quests SET detailemote1=0 WHERE entry=9418;
UPDATE quests SET detailemote1=0 WHERE entry=9420;
UPDATE quests SET detailemote1=0,completionemoteDelay1=500 WHERE entry=9423;
UPDATE quests SET detailemote1=0,detailemote2=0,detailemoteDelay1=500 WHERE entry=9424;
UPDATE quests SET detailemote1=0 WHERE entry=9427;
UPDATE quests SET detailemote1=0 WHERE entry=9430;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=0,detailemoteDelay2=1000,IncompleteEmote=6,completionemoteDelay2=1000 WHERE entry=9446;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=1,completionemote2=1,completionemoteDelay2=1000 WHERE entry=9448;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=9474;
UPDATE quests SET detailemote1=0 WHERE entry=9490;
UPDATE quests SET detailemote1=0 WHERE entry=9543;
UPDATE quests SET detailemote1=0 WHERE entry=9545;
UPDATE quests SET detailemote1=0 WHERE entry=9563;
UPDATE quests SET completionemoteDelay2=1000 WHERE entry=9575;
UPDATE quests SET detailemote1=0,completionemoteDelay2=1000,completionemoteDelay3=1000,completionemoteDelay4=1000 WHERE entry=9587;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=9589;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=0,detailemoteDelay2=1000 WHERE entry=9607;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=2,completionemote2=6,completionemoteDelay2=1000 WHERE entry=9610;
UPDATE quests SET detailemote1=66,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1 WHERE entry=9664;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=9697;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=9701;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemoteDelay2=1000 WHERE entry=9702;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=9708;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000,CompleteEmote=6 WHERE entry=9709;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=9715;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=9717;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=9719;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=9724;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000,IncompleteEmote=6,completionemoteDelay2=1000 WHERE entry=9726;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=9727;
UPDATE quests SET detailemote1=0 WHERE entry=9731;
UPDATE quests SET detailemoteDelay2=1000 WHERE entry=9732;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=9738;
UPDATE quests SET detailemote1=0 WHERE entry=9739;
UPDATE quests SET CompleteEmote=0 WHERE entry=9742;
UPDATE quests SET detailemote1=0 WHERE entry=9743;
UPDATE quests SET detailemote1=0 WHERE entry=9752;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=9776;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9777;
UPDATE quests SET detailemote1=0 WHERE entry=9778;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9780;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9781;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9782;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9783;
UPDATE quests SET detailemote1=0 WHERE entry=9785;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9786;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9787;
UPDATE quests SET detailemote1=0 WHERE entry=9788;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=11,detailemote4=0, detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=1 WHERE entry=9789;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9790;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=9791;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9792;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9793;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=11,completionemote3=11 WHERE entry=9794;
UPDATE quests SET detailemote1=0 WHERE entry=9800;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=9801;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=9803;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9804;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=9805;
UPDATE quests SET detailemote1=0 WHERE entry=9806;
UPDATE quests SET CompleteEmote=0 WHERE entry=9807;
UPDATE quests SET detailemote1=0 WHERE entry=9810;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9815;
UPDATE quests SET detailemote1=0 WHERE entry=9819;
UPDATE quests SET detailemote1=0 WHERE entry=9821;
UPDATE quests SET detailemote1=0 WHERE entry=9827;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9830;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9833;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9834;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,IncompleteEmote=1 WHERE entry=9835;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=9839;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9848;
UPDATE quests SET detailemote1=0 WHERE entry=9849;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=9850;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemoteDelay2=1000,completionemote1=4 WHERE entry=9851;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=6,detailemoteDelay2=1000,detailemoteDelay3=1000,CompleteEmote=1,completionemote1=4,completionemote2=1,completionemote3=2,completionemoteDelay2=1000,completionemoteDelay3=1000 WHERE entry=9852;
UPDATE quests SET detailemote1=0 WHERE entry=9853;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemoteDelay2=1000 WHERE entry=9854;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000,completionemote1=1 WHERE entry=9855;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1,completionemote2=2,completionemoteDelay2=1000 WHERE entry=9856;
UPDATE quests SET detailemote1=0 WHERE entry=9857;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=9869;
UPDATE quests SET CompleteEmote=6,completionemote1=1,completionemote2=5 WHERE entry=9871;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=6,completionemote2=1,completionemote3=1 WHERE entry=9873;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=9874;
UPDATE quests SET detailemote1=0 WHERE entry=9875;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=25,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=9878;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=1,completionemote3=274 WHERE entry=9879;
UPDATE quests SET detailemote1=0 WHERE entry=9882;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=9894;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1 WHERE entry=9896;
UPDATE quests SET detailemote1=1 WHERE entry=9900;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=9901;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9902;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9905;
UPDATE quests SET detailemote1=0 WHERE entry=9912;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=9913;
UPDATE quests SET detailemote1=0 WHERE entry=9914;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=25,CompleteEmote=6,completionemote1=1,completionemote2=1,completionemote3=5 WHERE entry=9917;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=6,completionemote2=1 WHERE entry=9918;
UPDATE quests SET detailemote1=0 WHERE entry=9919;
UPDATE quests SET detailemote1=5,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=9920;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,completionemote1=1,completionemote2=6,completionemote3=1,completionemote4=5 WHERE entry=9921;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9922;
UPDATE quests SET detailemote1=5,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=9923;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1 WHERE entry=9924;
UPDATE quests SET detailemote1=1 WHERE entry=9925;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=6,completionemote2=1 WHERE entry=9927;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=5,completionemote1=5,completionemote2=1 WHERE entry=9928;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=0,completionemote1=1,completionemote2=1 WHERE entry=9931;
UPDATE quests SET CompleteEmote=6,completionemote1=1,completionemote2=1 WHERE entry=9932;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=2,CompleteEmote=6 WHERE entry=9933;
UPDATE quests SET detailemote1=0,IncompleteEmote=6 WHERE entry=9936;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9938;
UPDATE quests SET detailemote1=0 WHERE entry=9940;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=5,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=9951;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=1 WHERE entry=9954;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9955;
UPDATE quests SET CompleteEmote=0,completionemote1=21,completionemote2=5 WHERE entry=9956;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=9957;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=9962;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=9967;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=9968;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9970;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=9971;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9972;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=1 WHERE entry=9973;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=9977;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemoteDelay2=1000 WHERE entry=9978;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=9979;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=6,completionemote2=1 WHERE entry=9982;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=9986;
UPDATE quests SET CompleteEmote=6,completionemote1=5 WHERE entry=9990;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,IncompleteEmote=6,completionemote1=5,completionemote2=1 WHERE entry=9991;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=9992;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemoteDelay2=1000,CompleteEmote=6,completionemote1=1,completionemote2=1,completionemoteDelay2=1000 WHERE entry=9994;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=1,completionemote2=1,completionemoteDelay2=1000 WHERE entry=9996;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=9998;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=9999;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=5,completionemote1=1,completionemote2=1 WHERE entry=10001;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=10002;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=1,completionemote1=5,completionemote2=1 WHERE entry=10004;
UPDATE quests SET detailemote1=1,completionemote1=6,completionemote2=1,completionemote3=1,completionemoteDelay2=1000,completionemoteDelay3=1000 WHERE entry=10005;
UPDATE quests SET detailemote1=274,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=10007;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=10009;
UPDATE quests SET completionemote1=5 WHERE entry=10010;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=5,completionemote2=4 WHERE entry=10011;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=10012;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=10016;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=2,completionemote2=1,completionemote3=1 WHERE entry=10022;
UPDATE quests SET detailemote1=24,detailemote2=1,detailemote3=1,completionemote1=273,completionemote2=1,completionemote3=1 WHERE entry=10026;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=10028;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemoteDelay2=1000,CompleteEmote=6,completionemote1=1,completionemote2=1,completionemoteDelay2=1000 WHERE entry=10030;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=1,completionemote2=2,completionemoteDelay2=1000 WHERE entry=10031;
UPDATE quests SET detailemote1=0,completionemote1=1,completionemote2=1,completionemoteDelay2=1000 WHERE entry=10033;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemoteDelay2=1000,CompleteEmote=6,completionemote1=21,completionemote2=1,completionemoteDelay2=1000 WHERE entry=10035;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=10037;
UPDATE quests SET detailemote1=1,detailemote2=25,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=5 WHERE entry=10038;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=6 WHERE entry=10040;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=5,completionemote2=1,completionemote3=1,completionemoteDelay2=1000,completionemoteDelay3=1000 WHERE entry=10042;
UPDATE quests SET IncompleteEmote=1 WHERE entry=10047;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1 WHERE entry=10076;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=10077;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,CompleteEmote=6,completionemote1=273,completionemote2=1,completionemote3=1,completionemoteDelay2=1000,completionemoteDelay3=1000 WHERE entry=10091;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=10094;
UPDATE quests SET completionemote1=5,completionemote2=1,completionemote3=2,completionemoteDelay2=1000,completionemoteDelay3=1000 WHERE entry=10095;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=0,detailemoteDelay3=1000 WHERE entry=10096;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=10097;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=10098;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=6 WHERE entry=10108;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=4 WHERE entry=10109;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=5,completionemote1=6,completionemote2=1 WHERE entry=10111;
UPDATE quests SET detailemote1=0,CompleteEmote=0 WHERE entry=10112;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=1 WHERE entry=10113;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=10115;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=10116;
UPDATE quests SET IncompleteEmote=6 WHERE entry=10132;
UPDATE quests SET IncompleteEmote=1 WHERE entry=10142;
UPDATE quests SET IncompleteEmote=1 WHERE entry=10144;
UPDATE quests SET completionemoteDelay2=1000 WHERE entry=10159;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=10165;
UPDATE quests SET detailemote1=15,detailemote2=1,detailemote3=1,detailemote4=18,completionemote1=1 WHERE entry=10178;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=10180;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=10218;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=10226;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=10227;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=10228;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=5,completionemote2=1 WHERE entry=10231;
UPDATE quests SET detailemote1=1,CompleteEmote=0,completionemote1=4,completionemote2=1,completionemoteDelay1=2000,completionemoteDelay2=4000 WHERE entry=10236;
UPDATE quests SET detailemote1=1,completionemote1=1,completionemoteDelay1=4000 WHERE entry=10238;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=10251;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=10252;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=10255;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,CompleteEmote=1,completionemote1=1 WHERE entry=10275;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,CompleteEmote=1,completionemote1=1,completionemote2=1,completionemoteDelay2=1000 WHERE entry=10276;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=6,completionemote2=1,completionemoteDelay2=1000 WHERE entry=10317;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,detailemoteDelay2=1000,detailemoteDelay3=1000,detailemoteDelay4=1000,completionemote1=1,completionemote2=6,completionemote3=1,completionemoteDelay2=1000,completionemoteDelay3=1000 WHERE entry=10318;
UPDATE quests SET CompleteEmote=0 WHERE entry=10325;
UPDATE quests SET CompleteEmote=0 WHERE entry=10326;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=10352;
UPDATE quests SET completionemote1=4 WHERE entry=10354;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=10355;
UPDATE quests SET completionemote1=1 WHERE entry=10356;
UPDATE quests SET completionemote1=4,completionemote2=1 WHERE entry=10357;
UPDATE quests SET detailemote1=0 WHERE entry=10367;
UPDATE quests SET detailemote1=0 WHERE entry=10368;
UPDATE quests SET detailemote1=0 WHERE entry=10369;
UPDATE quests SET IncompleteEmote=1 WHERE entry=10400;
UPDATE quests SET detailemote1=0 WHERE entry=10412;
UPDATE quests SET detailemote1=0,CompleteEmote=0 WHERE entry=10416;
UPDATE quests SET CompleteEmote=0 WHERE entry=10420;
UPDATE quests SET CompleteEmote=0 WHERE entry=10421;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemoteDelay2=1000 WHERE entry=10443;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=1,completionemote2=1,completionemoteDelay2=1000 WHERE entry=10444;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=4,completionemote2=1,completionemoteDelay2=1000 WHERE entry=10446;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=6,completionemote2=1,completionemoteDelay2=1000 WHERE entry=10455;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=1,completionemote2=1,completionemoteDelay2=1000 WHERE entry=10456;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,CompleteEmote=6,completionemote1=1,completionemote2=1,completionemote3=2,completionemoteDelay2=1000,completionemoteDelay3=1000 WHERE entry=10457;
UPDATE quests SET detailemote1=0 WHERE entry=10476;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25,detailemoteDelay2=1000,detailemoteDelay3=1000,IncompleteEmote=1 WHERE entry=10502;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=10506;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=10510;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=0 WHERE entry=10555;
UPDATE quests SET completionemote1=1 WHERE entry=10556;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1 WHERE entry=10562;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=10563;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=10609;
UPDATE quests SET CompleteEmote=0,completionemote1=1,completionemoteDelay1=6000 WHERE entry=10629;
UPDATE quests SET CompleteEmote=5,completionemote1=1,completionemote2=1 WHERE entry=10648;
UPDATE quests SET CompleteEmote=0 WHERE entry=10653;
UPDATE quests SET IncompleteEmote=6,completionemote1=6,completionemote2=1,completionemote3=1,completionemoteDelay2=1000,completionemoteDelay3=1000 WHERE entry=10690;
UPDATE quests SET CompleteEmote=0 WHERE entry=10793;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=10804;
UPDATE quests SET CompleteEmote=0 WHERE entry=10827;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=10833;
UPDATE quests SET CompleteEmote=0,completionemote1=396,completionemote2=396,completionemote3=396 WHERE entry=10839;
UPDATE quests SET detailemote1=1 WHERE entry=10840;
UPDATE quests SET detailemote1=1 WHERE entry=10842;
UPDATE quests SET detailemote1=396,detailemote2=396,detailemote3=396,completionemote1=396,completionemote2=396,completionemote3=396 WHERE entry=10848;
UPDATE quests SET detailemote1=396,detailemote2=396,detailemote3=396,completionemote1=396,completionemote2=396,completionemote3=396 WHERE entry=10861;
UPDATE quests SET detailemoteDelay2=3000,detailemoteDelay3=5000,completionemote1=5,completionemote2=1 WHERE entry=10873;
UPDATE quests SET completionemote1=396,completionemote2=396,completionemote3=396 WHERE entry=10874;
UPDATE quests SET CompleteEmote=0 WHERE entry=10877;
UPDATE quests SET detailemote1=0 WHERE entry=10878;
UPDATE quests SET detailemote1=396,detailemote2=396,detailemote3=396,completionemote1=396,completionemote2=396,completionemote3=396 WHERE entry=10879;
UPDATE quests SET CompleteEmote=0 WHERE entry=10881;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396,completionemote3=396 WHERE entry=10889;
UPDATE quests SET IncompleteEmote=5 WHERE entry=10895;
UPDATE quests SET detailemote1=0,completionemote1=2 WHERE entry=10896;
UPDATE quests SET completionemote1=396,completionemote2=396,completionemote3=396 WHERE entry=10898;
UPDATE quests SET IncompleteEmote=6 WHERE entry=10909;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,completionemote1=4,completionemote2=1 WHERE entry=10915;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=10917;
UPDATE quests SET completionemote1=68,completionemote2=66,completionemote3=68,completionemoteDelay2=3000,completionemoteDelay3=7000 WHERE entry=10920;
UPDATE quests SET completionemote1=5,completionemote2=1 WHERE entry=10922;
UPDATE quests SET CompleteEmote=0 WHERE entry=10923;
UPDATE quests SET completionemote1=396,completionemote2=396 WHERE entry=10927;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=5,completionemote1=6,completionemote2=1,completionemote3=1,completionemote4=5 WHERE entry=10929;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=5,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=10930;
UPDATE quests SET completionemoteDelay2=1000 WHERE entry=10937;
UPDATE quests SET detailemote1=0,CompleteEmote=0,completionemote1=4 WHERE entry=11008;
UPDATE quests SET completionemote2=5,completionemote3=6,completionemote4=5 WHERE entry=11012;
UPDATE quests SET detailemote2=1,detailemote3=1,completionemote1=11,completionemote2=6,completionemote3=25 WHERE entry=11013;
UPDATE quests SET detailemote2=1,detailemote3=1,detailemote4=1,completionemote2=1,completionemote3=273 WHERE entry=11014;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1 WHERE entry=11015;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1 WHERE entry=11016;
UPDATE quests SET completionemote2=1,completionemote3=1 WHERE entry=11019;
UPDATE quests SET detailemote2=1,detailemote3=1,completionemote2=1 WHERE entry=11020;
UPDATE quests SET detailemote2=1,detailemote3=6,CompleteEmote=6,completionemote2=6 WHERE entry=11023;
UPDATE quests SET detailemote2=1,detailemote3=1,completionemote2=1 WHERE entry=11035;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1 WHERE entry=11038;
UPDATE quests SET completionemote2=1 WHERE entry=11039;
UPDATE quests SET CompleteEmote=388,completionemote1=6,completionemote2=1,completionemote3=1 WHERE entry=11041;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1 WHERE entry=11042;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,completionemote1=5,completionemote2=274,completionemote3=25 WHERE entry=11044;
UPDATE quests SET detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote2=1 WHERE entry=11049;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1,completionemote3=5,completionemote4=15 WHERE entry=11053;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=5,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=11054;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=11055;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=6,completionemote4=5 WHERE entry=11063;
UPDATE quests SET detailemote2=1,detailemote3=1,completionemote1=6,completionemote2=1 WHERE entry=11064;
UPDATE quests SET detailemote2=1,detailemote3=1,completionemote2=1 WHERE entry=11067;
UPDATE quests SET detailemote1=6,detailemote2=11,detailemote3=1,detailemote4=1,completionemote2=1 WHERE entry=11068;
UPDATE quests SET detailemote2=1,detailemote3=1,completionemote1=5,completionemote2=1 WHERE entry=11069;
UPDATE quests SET detailemote2=1,detailemote3=1,completionemote2=1,completionemote3=1 WHERE entry=11070;
UPDATE quests SET detailemote1=25,detailemote2=1,detailemote3=1,completionemote2=1,completionemote3=1 WHERE entry=11071;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=11075;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=1,completionemote2=1 WHERE entry=11076;
UPDATE quests SET detailemote1=0,completionemote2=1 WHERE entry=11077;
UPDATE quests SET CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=11081;
UPDATE quests SET CompleteEmote=6,completionemote1=1,completionemote2=1,completionemote3=5 WHERE entry=11082;
UPDATE quests SET detailemote1=0,completionemote2=1 WHERE entry=11083;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=11084;
UPDATE quests SET detailemote2=1,detailemote3=1,detailemote4=1,completionemote2=1,completionemote3=5 WHERE entry=11086;
UPDATE quests SET detailemote1=0,CompleteEmote=6,completionemote2=1 WHERE entry=11089;
UPDATE quests SET detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote2=1,completionemote3=25 WHERE entry=11090;
UPDATE quests SET detailemote1=1,detailemote2=66,completionemote1=1,completionemote2=1 WHERE entry=11092;
UPDATE quests SET detailemote2=1,detailemote3=1 WHERE entry=11099;
UPDATE quests SET detailemote2=1,CompleteEmote=273,completionemote2=1 WHERE entry=11100;
UPDATE quests SET detailemote1=0,completionemote1=11,completionemote2=1,completionemote3=1 WHERE entry=11101;
UPDATE quests SET detailemote1=1,detailemote2=20,completionemote1=1 WHERE entry=11107;
UPDATE quests SET detailemote1=0,completionemote2=1,completionemote3=1 WHERE entry=11108;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=11111;
UPDATE quests SET detailemote2=1,detailemote3=1,completionemote2=1 WHERE entry=11123;
UPDATE quests SET detailemote2=1 WHERE entry=11126;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11128;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11133;
UPDATE quests SET detailemote2=1,completionemote1=2,completionemote2=1,completionemote3=1 WHERE entry=11134;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11136;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11137;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11138;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11139;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11140;
UPDATE quests SET detailemote2=1,completionemote1=0 WHERE entry=11141;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11142;
UPDATE quests SET detailemote2=1,detailemote3=1,completionemote2=1 WHERE entry=11143;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11144;
UPDATE quests SET detailemote2=1,completionemote1=2,completionemote2=1 WHERE entry=11145;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11146;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11147;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11148;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11149;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11150;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11151;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11152;
UPDATE quests SET detailemote1=5,detailemote2=25,detailemote3=1 WHERE entry=11153;
UPDATE quests SET detailemote1=25,detailemote2=5,detailemote3=20 WHERE entry=11154;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,CompleteEmote=1,completionemote1=1,completionemote2=11,completionemoteDelay2=2000 WHERE entry=11155;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11172;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=20,completionemote1=5 WHERE entry=11175;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1 WHERE entry=11176;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11177;
UPDATE quests SET completionemote2=1 WHERE entry=11180;
UPDATE quests SET detailemote2=1 WHERE entry=11181;
UPDATE quests SET detailemote1=33 WHERE entry=11182;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11183;
UPDATE quests SET detailemote1=0,completionemote2=1 WHERE entry=11185;
UPDATE quests SET detailemote1=15,detailemote2=1 WHERE entry=11187;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,completionemoteDelay1=1000 WHERE entry=11188;
UPDATE quests SET detailemote1=6,detailemote2=5,detailemote3=1,CompleteEmote=6,completionemote1=4 WHERE entry=11190;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11191;
UPDATE quests SET detailemote1=0,completionemote2=1 WHERE entry=11192;
UPDATE quests SET detailemote1=0,completionemote2=1 WHERE entry=11193;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11194;
UPDATE quests SET completionemote2=1 WHERE entry=11198;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25 WHERE entry=11199;
UPDATE quests SET detailemote1=0 WHERE entry=11202;
UPDATE quests SET detailemote2=1,completionemote1=0 WHERE entry=11209;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11210;
UPDATE quests SET completionemote2=1 WHERE entry=11211;
UPDATE quests SET detailemote2=1,completionemote2=1 WHERE entry=11212;
UPDATE quests SET detailemote2=1 WHERE entry=11214;
UPDATE quests SET detailemote1=0 WHERE entry=11216;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25,completionemoteDelay2=2000 WHERE entry=11218;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=389 WHERE entry=11224;
UPDATE quests SET detailemote1=5,detailemote2=274,detailemote3=25,detailemote4=273,detailemoteDelay2=1000,detailemoteDelay3=1000,detailemoteDelay4=1000,completionemote1=1,completionemote2=1,completionemote3=1,completionemote4=274 WHERE entry=11228;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5 WHERE entry=11231;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25 WHERE entry=11235;
UPDATE quests SET detailemote1=5,detailemote2=25,detailemote3=5,completionemoteDelay1=1000 WHERE entry=11236;
UPDATE quests SET detailemote1=1,detailemote2=25,detailemote3=1,IncompleteEmote=6 WHERE entry=11238;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=1 WHERE entry=11239;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11240;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,completionemote1=4,completionemote2=1 WHERE entry=11243;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,completionemote1=1,completionemote2=1,completionemote3=1,completionemote4=15 WHERE entry=11244;
UPDATE quests SET detailemote1=66,detailemote2=1,detailemote3=1 WHERE entry=11245;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,IncompleteEmote=1 WHERE entry=11246;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=66 WHERE entry=11247;
UPDATE quests SET detailemote1=25,detailemote2=1,detailemote3=66 WHERE entry=11248;
UPDATE quests SET detailemote1=0 WHERE entry=11249;
UPDATE quests SET detailemote1=1,detailemote2=25,detailemote3=6 WHERE entry=11250;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=5 WHERE entry=11252;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1 WHERE entry=11255;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=11269;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=6 WHERE entry=11273;
UPDATE quests SET completionemote1=5,completionemote2=1,completionemote3=1 WHERE entry=11276;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=4,completionemote1=4,completionemote2=1,completionemote3=1,completionemote4=5 WHERE entry=11277;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=5,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=11278;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=11284;
UPDATE quests SET CompleteEmote=5,completionemote1=2,completionemote2=1,completionemote3=1,completionemoteDelay2=1000,completionemoteDelay3=1000 WHERE entry=11289;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=11290;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11291;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1 WHERE entry=11292;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=14,completionemote2=1,completionemote3=1 WHERE entry=11299;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=1,completionemote2=1 WHERE entry=11300;
UPDATE quests SET CompleteEmote=1 WHERE entry=11313;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=11314;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=11315;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11319;
UPDATE quests SET detailemote1=1,detailemote2=25,detailemote3=1 WHERE entry=11322;
UPDATE quests SET detailemote1=0 WHERE entry=11325;
UPDATE quests SET detailemote1=0 WHERE entry=11326;
UPDATE quests SET detailemote1=1,detailemote2=6 WHERE entry=11327;
UPDATE quests SET detailemote1=0 WHERE entry=11328;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=11329;
UPDATE quests SET detailemote1=274,detailemote2=6,completionemoteDelay2=1000 WHERE entry=11330;
UPDATE quests SET detailemote1=1,detailemote2=25 WHERE entry=11331;
UPDATE quests SET detailemote1=0 WHERE entry=11332;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,CompleteEmote=6,completionemote1=1,completionemote2=1,completionemote3=1,completionemote4=1 WHERE entry=11333;
UPDATE quests SET detailemote1=0,IncompleteEmote=0,completionemote1=0 WHERE entry=11335;
UPDATE quests SET detailemote1=0,IncompleteEmote=0 WHERE entry=11336;
UPDATE quests SET detailemote1=0,IncompleteEmote=0,completionemote1=0 WHERE entry=11337;
UPDATE quests SET detailemote1=0,IncompleteEmote=0,completionemote1=0 WHERE entry=11338;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=6 WHERE entry=11343;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=11344;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11346;
UPDATE quests SET detailemote1=1,detailemote2=1,IncompleteEmote=1 WHERE entry=11348;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11349;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11355;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11358;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11359;
UPDATE quests SET detailemote2=1 WHERE entry=11371;
UPDATE quests SET detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=0 WHERE entry=11377;
UPDATE quests SET detailemote2=1,detailemote3=1 WHERE entry=11379;
UPDATE quests SET CompleteEmote=6,completionemote1=0 WHERE entry=11380;
UPDATE quests SET CompleteEmote=6,completionemote1=0 WHERE entry=11381;
UPDATE quests SET detailemote1=5,detailemote2=1,completionemote1=25 WHERE entry=11390;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=5,completionemoteDelay1=1000 WHERE entry=11393;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=6,completionemote1=1,completionemote2=1 WHERE entry=11394;
UPDATE quests SET CompleteEmote=1,completionemote1=5,completionemote2=1 WHERE entry=11395;
UPDATE quests SET detailemote1=69,detailemote2=30,detailemote3=6,detailemoteDelay2=2000,completionemote1=4,completionemote2=1,completionemoteDelay2=1000 WHERE entry=11396;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11406;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=11410;
UPDATE quests SET detailemote1=0 WHERE entry=11414;
UPDATE quests SET detailemote1=0 WHERE entry=11416;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=11418;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,CompleteEmote=6,completionemote1=4,completionemote2=5 WHERE entry=11420;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11421;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=4,completionemote2=1,completionemote3=5 WHERE entry=11426;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11427;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11428;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=274 WHERE entry=11429;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11430;
UPDATE quests SET detailemote1=1,detailemote2=273,detailemote3=25 WHERE entry=11432;
UPDATE quests SET detailemote1=0 WHERE entry=11434;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11436;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=24,CompleteEmote=6,completionemote1=5,completionemote2=1,completionemote3=1,completionemote4=70 WHERE entry=11443;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=1,completionemote2=1,completionemote3=5 WHERE entry=11448;
UPDATE quests SET detailemote1=1 WHERE entry=11451;
UPDATE quests SET detailemote1=0 WHERE entry=11452;
UPDATE quests SET detailemote1=0 WHERE entry=11455;
UPDATE quests SET detailemote1=0 WHERE entry=11456;
UPDATE quests SET detailemote1=0 WHERE entry=11457;
UPDATE quests SET detailemote1=0 WHERE entry=11458;
UPDATE quests SET detailemote1=0 WHERE entry=11459;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=21,completionemote2=1,completionemote3=273 WHERE entry=11460;
UPDATE quests SET detailemote1=0 WHERE entry=11464;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=1,completionemote1=5,completionemote2=1,completionemote3=1 WHERE entry=11465;
UPDATE quests SET detailemote1=0 WHERE entry=11466;
UPDATE quests SET detailemote1=0 WHERE entry=11467;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1 WHERE entry=11468;
UPDATE quests SET detailemote1=1,detailemote2=25,detailemote3=5 WHERE entry=11469;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11470;
UPDATE quests SET detailemote1=1 WHERE entry=11471;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11472;
UPDATE quests SET detailemote1=0 WHERE entry=11473;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=11474;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=11475;
UPDATE quests SET detailemote1=0 WHERE entry=11476;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=11477;
UPDATE quests SET detailemote1=0 WHERE entry=11479;
UPDATE quests SET detailemote1=0 WHERE entry=11480;
UPDATE quests SET detailemote1=6,detailemote2=6,detailemote3=273,detailemote4=1 WHERE entry=11483;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11484;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11485;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11489;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11491;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11494;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11495;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11501;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=11504;
UPDATE quests SET detailemote1=0 WHERE entry=11505;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11507;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11508;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11509;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11510;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=11511;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=11512;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11519;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11527;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11529;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=2 WHERE entry=11530;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemoteDelay2=1000 WHERE entry=11546;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=389,completionemote1=389 WHERE entry=11559;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25,completionemote1=1 WHERE entry=11560;
UPDATE quests SET detailemote1=35,detailemote2=36,completionemote1=35 WHERE entry=11561;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=20,completionemote1=35 WHERE entry=11562;
UPDATE quests SET detailemote1=54,detailemote2=36,CompleteEmote=389,completionemote1=389 WHERE entry=11563;
UPDATE quests SET detailemote1=389,CompleteEmote=36,completionemote1=36 WHERE entry=11564;
UPDATE quests SET detailemote1=389,CompleteEmote=6,completionemote1=1 WHERE entry=11565;
UPDATE quests SET detailemote1=1,detailemote2=5,CompleteEmote=6,completionemote1=1,completionemote2=2 WHERE entry=11566;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11567;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11568;
UPDATE quests SET detailemote1=36,CompleteEmote=35,completionemote1=36 WHERE entry=11569;
UPDATE quests SET detailemote1=389,completionemote1=6,completionemote2=1,completionemote3=5 WHERE entry=11570;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=25 WHERE entry=11571;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11572;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1 WHERE entry=11573;
UPDATE quests SET detailemote1=5,detailemote2=5,detailemote3=1,detailemoteDelay2=1000,detailemoteDelay3=1000,completionemote1=1,completionemote2=1,completionemoteDelay2=500 WHERE entry=11575;
UPDATE quests SET detailemote1=2,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=500,detailemoteDelay3=1000,completionemoteDelay2=500 WHERE entry=11576;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=11582;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=11587;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=500 WHERE entry=11590;
UPDATE quests SET detailemote1=0 WHERE entry=11599;
UPDATE quests SET detailemote1=0 WHERE entry=11600;
UPDATE quests SET detailemote1=0 WHERE entry=11601;
UPDATE quests SET detailemote1=0 WHERE entry=11603;
UPDATE quests SET detailemote1=1 WHERE entry=11604;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11605;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11607;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11609;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11610;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11612;
UPDATE quests SET detailemote1=1 WHERE entry=11613;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11617;
UPDATE quests SET detailemote1=0 WHERE entry=11619;
UPDATE quests SET detailemote1=0 WHERE entry=11620;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11623;
UPDATE quests SET detailemote1=0 WHERE entry=11625;
UPDATE quests SET detailemote1=0 WHERE entry=11626;
UPDATE quests SET detailemote1=5,detailemote2=6,detailemote3=1,detailemote4=1,CompleteEmote=6,completionemote1=4 WHERE entry=11645;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=11646;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=500,completionemoteDelay2=500 WHERE entry=11648;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=5 WHERE entry=11650;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=5,completionemote2=18,completionemote3=1 WHERE entry=11653;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=25 WHERE entry=11658;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=11663;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11665;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=5 WHERE entry=11666;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=20,completionemote1=1,completionemote2=5,completionemoteDelay2=4 WHERE entry=11667;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=1 WHERE entry=11668;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=5,completionemote2=1 WHERE entry=11669;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=11670;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=11671;
UPDATE quests SET detailemote1=1 WHERE entry=11672;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=1,completionemote1=6,completionemote2=1,completionemote3=1 WHERE entry=11673;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=500 WHERE entry=11679;
UPDATE quests SET detailemote1=0 WHERE entry=11680;
UPDATE quests SET detailemote1=1 WHERE entry=11681;
UPDATE quests SET detailemote1=2,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=11682;
UPDATE quests SET detailemote1=4,detailemote2=5,detailemote3=6,detailemote4=1,completionemote1=6 WHERE entry=11692;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25 WHERE entry=11693;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=6 WHERE entry=11694;
UPDATE quests SET detailemote1=274,detailemote2=1,detailemote3=5,detailemote4=25 WHERE entry=11697;
UPDATE quests SET detailemote1=0 WHERE entry=11698;
UPDATE quests SET detailemote1=0 WHERE entry=11699;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6 WHERE entry=11700;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=4 WHERE entry=11701;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,completionemote1=5,completionemote2=1 WHERE entry=11704;
UPDATE quests SET detailemote1=6,detailemote2=5,detailemote3=1,completionemote1=1 WHERE entry=11707;
UPDATE quests SET detailemote1=1,completionemote1=6,completionemote2=1 WHERE entry=11708;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=1,completionemote1=5 WHERE entry=11710;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=4,completionemote2=1 WHERE entry=11712;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11713;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11715;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11718;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11723;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11725;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11726;
UPDATE quests SET detailemote1=0 WHERE entry=11727;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11728;
UPDATE quests SET CompleteEmote=1,completionemote1=4,completionemote2=6 WHERE entry=11729;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=5,completionemote2=1 WHERE entry=11730;
UPDATE quests SET detailemote1=0 WHERE entry=11733;
UPDATE quests SET completionemote1=1 WHERE entry=11788;
UPDATE quests SET detailemote1=0 WHERE entry=11789;
UPDATE quests SET detailemote1=1 WHERE entry=11791;
UPDATE quests SET detailemote1=0 WHERE entry=11792;
UPDATE quests SET detailemote1=0 WHERE entry=11793;
UPDATE quests SET detailemote1=0 WHERE entry=11794;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11795;
UPDATE quests SET detailemote1=1,detailemote2=1,IncompleteEmote=1 WHERE entry=11796;
UPDATE quests SET detailemote1=0 WHERE entry=11797;
UPDATE quests SET IncompleteEmote=6,completionemoteDelay1=1000 WHERE entry=11798;
UPDATE quests SET completionemote1=6,completionemote2=1,completionemote3=1,completionemote4=15 WHERE entry=11864;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,IncompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=11865;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=1,completionemote1=1,completionemote2=5,completionemote3=15 WHERE entry=11866;
UPDATE quests SET CompleteEmote=1,completionemote1=1,completionemote2=5,completionemote3=15 WHERE entry=11867;
UPDATE quests SET IncompleteEmote=5,completionemote1=1,completionemote2=1 WHERE entry=11868;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,IncompleteEmote=1,completionemote1=1,completionemote2=1,completionemote3=5 WHERE entry=11869;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,completionemote1=1,completionemote2=1 WHERE entry=11870;
UPDATE quests SET CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=11871;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=21 WHERE entry=11872;
UPDATE quests SET detailemote1=0 WHERE entry=11873;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,completionemote1=1,completionemote2=1 WHERE entry=11876;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=2 WHERE entry=11878;
UPDATE quests SET CompleteEmote=6,completionemote1=6,completionemote2=1,completionemote3=4 WHERE entry=11879;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,IncompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=11884;
UPDATE quests SET detailemote1=1 WHERE entry=11889;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=11892;
UPDATE quests SET detailemote1=1 WHERE entry=11897;
UPDATE quests SET detailemote1=0 WHERE entry=11901;
UPDATE quests SET detailemote1=0 WHERE entry=11902;
UPDATE quests SET detailemote1=0 WHERE entry=11903;
UPDATE quests SET detailemote1=0 WHERE entry=11904;
UPDATE quests SET detailemote1=0 WHERE entry=11908;
UPDATE quests SET completionemote1=1 WHERE entry=11911;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=11912;
UPDATE quests SET detailemote1=0 WHERE entry=11913;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=500,detailemoteDelay3=500 WHERE entry=11918;
UPDATE quests SET detailemote1=0 WHERE entry=11920;
UPDATE quests SET detailemote1=0 WHERE entry=11927;
UPDATE quests SET detailemote1=0 WHERE entry=11928;
UPDATE quests SET detailemote1=0 WHERE entry=11932;
UPDATE quests SET detailemote1=0 WHERE entry=11938;
UPDATE quests SET detailemote1=0,IncompleteEmote=1,completionemoteDelay2=1000 WHERE entry=11940;
UPDATE quests SET detailemote1=0 WHERE entry=11942;
UPDATE quests SET completionemoteDelay2=1000 WHERE entry=11943;
UPDATE quests SET detailemote1=0 WHERE entry=11944;
UPDATE quests SET detailemote1=0 WHERE entry=11945;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=500 WHERE entry=11946;
UPDATE quests SET detailemote1=0 WHERE entry=11949;
UPDATE quests SET detailemote1=1 WHERE entry=11950;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=500,detailemoteDelay3=1000,completionemoteDelay2=1000 WHERE entry=11951;
UPDATE quests SET detailemote1=0 WHERE entry=11956;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=1000,detailemoteDelay3=1000 WHERE entry=11957;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11958;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11959;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=11960;
UPDATE quests SET detailemote1=0 WHERE entry=11961;
UPDATE quests SET detailemote1=0 WHERE entry=11962;
UPDATE quests SET detailemote1=0 WHERE entry=11963;
UPDATE quests SET detailemote1=0 WHERE entry=11965;
UPDATE quests SET detailemote1=0 WHERE entry=11967;
UPDATE quests SET detailemote1=0 WHERE entry=11968;
UPDATE quests SET detailemote1=1 WHERE entry=11969;
UPDATE quests SET detailemote1=6,detailemote2=5,detailemote3=1,completionemote1=1,completionemote2=1,completionemote3=1,completionemoteDelay2=500 WHERE entry=11973;
UPDATE quests SET detailemote1=0 WHERE entry=11981;
UPDATE quests SET detailemote1=1,detailemote2=1,IncompleteEmote=1 WHERE entry=11982;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=0,detailemoteDelay2=500,detailemoteDelay3=1000 WHERE entry=11984;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11985;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11986;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11988;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=11989;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=11990;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=11991;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11993;
UPDATE quests SET detailemote1=1,detailemote2=66 WHERE entry=11995;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=11998;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12000;
UPDATE quests SET detailemote1=1,detailemote2=1,IncompleteEmote=1 WHERE entry=12002;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12003;
UPDATE quests SET detailemote1=25,detailemote2=1 WHERE entry=12004;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemoteDelay2=1000 WHERE entry=12007;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1 WHERE entry=12009;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12010;
UPDATE quests SET detailemote1=0 WHERE entry=12011;
UPDATE quests SET detailemote1=0 WHERE entry=12014;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1 WHERE entry=12016;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25 WHERE entry=12017;
UPDATE quests SET detailemote1=1 WHERE entry=12019;
UPDATE quests SET detailemote1=1,detailemote2=18 WHERE entry=12027;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1 WHERE entry=12028;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemoteDelay2=1000 WHERE entry=12029;
UPDATE quests SET detailemote1=15,detailemote2=1,detailemote3=1 WHERE entry=12030;
UPDATE quests SET detailemote1=0 WHERE entry=12031;
UPDATE quests SET detailemote1=0 WHERE entry=12032;
UPDATE quests SET detailemote1=0 WHERE entry=12035;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=500,completionemote1=5 WHERE entry=12037;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=12042;
UPDATE quests SET detailemote1=0 WHERE entry=12043;
UPDATE quests SET detailemote1=1 WHERE entry=12044;
UPDATE quests SET detailemote1=6 WHERE entry=12045;
UPDATE quests SET detailemote1=0 WHERE entry=12046;
UPDATE quests SET detailemote1=5 WHERE entry=12047;
UPDATE quests SET detailemote1=1 WHERE entry=12049;
UPDATE quests SET detailemote1=1,completionemoteDelay2=300 WHERE entry=12050;
UPDATE quests SET detailemote1=5,IncompleteEmote=1 WHERE entry=12052;
UPDATE quests SET detailemote1=0 WHERE entry=12055;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25,detailemote4=1 WHERE entry=12060;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1 WHERE entry=12065;
UPDATE quests SET detailemote1=0,completionemoteDelay2=1000 WHERE entry=12067;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=12068;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12070;
UPDATE quests SET detailemote1=1 WHERE entry=12075;
UPDATE quests SET detailemote1=1 WHERE entry=12076;
UPDATE quests SET detailemote1=1 WHERE entry=12077;
UPDATE quests SET detailemote1=5 WHERE entry=12078;
UPDATE quests SET detailemote1=1 WHERE entry=12079;
UPDATE quests SET detailemote1=1,IncompleteEmote=1 WHERE entry=12080;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12081;
UPDATE quests SET detailemote1=1 WHERE entry=12082;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12083;
UPDATE quests SET detailemote1=0 WHERE entry=12086;
UPDATE quests SET detailemote1=0 WHERE entry=12088;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12092;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12093;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12094;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1 WHERE entry=12098;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12099;
UPDATE quests SET detailemote1=0 WHERE entry=12105;
UPDATE quests SET detailemote1=0,completionemoteDelay2=1000 WHERE entry=12107;
UPDATE quests SET detailemote1=66 WHERE entry=12109;
UPDATE quests SET detailemote1=1 WHERE entry=12112;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=0,detailemoteDelay2=1000 WHERE entry=12113;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=5,detailemoteDelay2=1000 WHERE entry=12114;
UPDATE quests SET detailemote1=1 WHERE entry=12116;
UPDATE quests SET detailemote1=15,detailemote2=6,detailemote3=1,completionemote1=6,completionemote2=1 WHERE entry=12117;
UPDATE quests SET detailemote1=15,detailemote2=6,detailemote3=1,completionemote1=6,completionemote2=1 WHERE entry=12118;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=2 WHERE entry=12119;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000 WHERE entry=12120;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12121;
UPDATE quests SET detailemote1=273,detailemote2=1,detailemote3=1,detailemoteDelay1=2000,completionemoteDelay3=2000 WHERE entry=12123;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12128;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12129;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12130;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12131;
UPDATE quests SET detailemote1=1 WHERE entry=12134;
UPDATE quests SET detailemote1=1 WHERE entry=12137;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12138;
UPDATE quests SET detailemote1=0 WHERE entry=12141;
UPDATE quests SET detailemote1=5 WHERE entry=12142;
UPDATE quests SET detailemote1=1 WHERE entry=12143;
UPDATE quests SET detailemote1=0 WHERE entry=12146;
UPDATE quests SET detailemote1=1 WHERE entry=12148;
UPDATE quests SET detailemote1=1 WHERE entry=12149;
UPDATE quests SET detailemote1=1 WHERE entry=12150;
UPDATE quests SET detailemote1=1 WHERE entry=12151;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=1000,completionemoteDelay2=500 WHERE entry=12152;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12153;
UPDATE quests SET detailemote1=1,detailemote2=1,IncompleteEmote=1 WHERE entry=12154;
UPDATE quests SET detailemote1=1 WHERE entry=12158;
UPDATE quests SET detailemote1=1 WHERE entry=12159;
UPDATE quests SET detailemote1=0 WHERE entry=12160;
UPDATE quests SET detailemote1=1 WHERE entry=12161;
UPDATE quests SET detailemote1=1 WHERE entry=12164;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1 WHERE entry=12166;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=25 WHERE entry=12167;
UPDATE quests SET detailemote1=0 WHERE entry=12168;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,IncompleteEmote=1 WHERE entry=12169;
UPDATE quests SET detailemote1=2,detailemote2=1,detailemote3=1,detailemote4=25,completionemote1=1 WHERE entry=12172;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12180;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12183;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12184;
UPDATE quests SET detailemote1=0 WHERE entry=12185;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=0,detailemoteDelay2=500 WHERE entry=12190;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12210;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12212;
UPDATE quests SET detailemote1=1 WHERE entry=12215;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12216;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12217;
UPDATE quests SET detailemote1=1 WHERE entry=12219;
UPDATE quests SET detailemote1=1 WHERE entry=12220;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12222;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12223;
UPDATE quests SET detailemote1=0 WHERE entry=12225;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12226;
UPDATE quests SET detailemote1=1,detailemote2=5 WHERE entry=12227;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=12235;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,IncompleteEmote=5 WHERE entry=12237;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=1 WHERE entry=12238;
UPDATE quests SET detailemote1=5,detailemote2=5,detailemote3=6,detailemote4=1 WHERE entry=12244;
UPDATE quests SET detailemote1=1,completionemote1=274 WHERE entry=12246;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12247;
UPDATE quests SET detailemote1=1,completionemote1=2 WHERE entry=12248;
UPDATE quests SET detailemote1=1 WHERE entry=12249;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12250;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=66 WHERE entry=12251;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12253;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12255;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12258;
UPDATE quests SET IncompleteEmote=6 WHERE entry=12261;
UPDATE quests SET detailemote1=1 WHERE entry=12266;
UPDATE quests SET IncompleteEmote=1 WHERE entry=12267;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1 WHERE entry=12268;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12269;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=12272;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12275;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12276;
UPDATE quests SET detailemote1=0 WHERE entry=12277;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12279;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12281;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12282;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12287;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,detailemote4=5 WHERE entry=12289;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12290;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12291;
UPDATE quests SET detailemote1=66 WHERE entry=12292;
UPDATE quests SET detailemote1=1 WHERE entry=12293;
UPDATE quests SET detailemote1=0 WHERE entry=12294;
UPDATE quests SET detailemote1=0 WHERE entry=12295;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12296;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,detailemote4=25,completionemoteDelay1=2000 WHERE entry=12297;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=1 WHERE entry=12298;
UPDATE quests SET detailemote1=1 WHERE entry=12299;
UPDATE quests SET detailemote1=1 WHERE entry=12300;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12301;
UPDATE quests SET detailemote1=1 WHERE entry=12302;
UPDATE quests SET detailemote1=2,detailemote2=1,detailemote3=1,detailemote4=3 WHERE entry=12305;
UPDATE quests SET detailemote1=1 WHERE entry=12307;
UPDATE quests SET detailemote1=0 WHERE entry=12308;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12309;
UPDATE quests SET detailemote1=1 WHERE entry=12310;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12311;
UPDATE quests SET detailemote1=0 WHERE entry=12312;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=12314;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=12316;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=274,detailemote4=1 WHERE entry=12319;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25 WHERE entry=12320;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12321;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=113 WHERE entry=12323;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12325;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12326;
UPDATE quests SET detailemote1=1 WHERE entry=12327;
UPDATE quests SET detailemote1=1 WHERE entry=12328;
UPDATE quests SET detailemote1=1 WHERE entry=12329;
UPDATE quests SET detailemote1=1 WHERE entry=12330;
UPDATE quests SET detailemote1=1 WHERE entry=12411;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12414;
UPDATE quests SET detailemote1=1,IncompleteEmote=1 WHERE entry=12416;
UPDATE quests SET detailemote1=1 WHERE entry=12417;
UPDATE quests SET detailemote1=1 WHERE entry=12418;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5 WHERE entry=12437;
UPDATE quests SET detailemote1=0 WHERE entry=12438;
UPDATE quests SET detailemote1=0,IncompleteEmote=6 WHERE entry=12441;
UPDATE quests SET detailemote1=0,IncompleteEmote=5 WHERE entry=12442;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1 WHERE entry=12443;
UPDATE quests SET detailemote1=1 WHERE entry=12444;
UPDATE quests SET detailemote1=1 WHERE entry=12447;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12455;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=66 WHERE entry=12457;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25 WHERE entry=12458;
UPDATE quests SET detailemote1=1 WHERE entry=12460;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12462;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12463;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=25,completionemoteDelay3=1000 WHERE entry=12464;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=12465;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=2,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=12466;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=12467;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=25,detailemote4=1 WHERE entry=12470;
UPDATE quests SET detailemote1=1 WHERE entry=12471;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=4,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12472;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=4,completionemote2=1,completionemote3=66,completionemote4=1 WHERE entry=12473;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12474;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12475;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12476;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1 WHERE entry=12477;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12478;
UPDATE quests SET detailemote1=396,detailemote2=396,detailemote3=396 WHERE entry=12483;
UPDATE quests SET detailemote1=1 WHERE entry=12484;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12497;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12498;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=2 WHERE entry=12499;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=25,detailemote4=1,completionemote1=2,completionemote2=1,completionemote3=1 WHERE entry=12503;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=1,detailemoteDelay1=2000,IncompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12504;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=6,completionemoteDelay1=2000 WHERE entry=12505;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,completionemote1=6,completionemote2=1,completionemote3=5,completionemoteDelay2=2000 WHERE entry=12506;
UPDATE quests SET CompleteEmote=6,completionemote1=5 WHERE entry=12507;
UPDATE quests SET detailemote1=1,detailemote2=6,IncompleteEmote=6,completionemote1=1 WHERE entry=12508;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,detailemoteDelay1=2000,CompleteEmote=6,completionemote1=1 WHERE entry=12510;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12511;
UPDATE quests SET completionemote1=6,completionemote2=1 WHERE entry=12512;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=25,completionemoteDelay1=2000 WHERE entry=12514;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=25,IncompleteEmote=6,completionemote1=4,completionemote2=1 WHERE entry=12516;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=12520;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12521;
UPDATE quests SET detailemote1=5,detailemote2=1 WHERE entry=12522;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12523;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=12525;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=12526;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=5,CompleteEmote=6,completionemote1=2,completionemote2=1 WHERE entry=12527;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12528;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12529;
UPDATE quests SET detailemote1=1,IncompleteEmote=1,completionemote1=1 WHERE entry=12530;
UPDATE quests SET detailemote1=1,CompleteEmote=1,completionemote1=6 WHERE entry=12531;
UPDATE quests SET detailemote1=1,CompleteEmote=6,completionemote1=1 WHERE entry=12532;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12533;
UPDATE quests SET detailemote1=1,CompleteEmote=1,completionemote1=5 WHERE entry=12534;
UPDATE quests SET detailemote1=1,CompleteEmote=1,completionemote1=1 WHERE entry=12535;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12536;
UPDATE quests SET detailemote1=1,completionemote1=153 WHERE entry=12537;
UPDATE quests SET detailemote1=1,detailemote2=273,detailemoteDelay2=60,completionemote1=5,completionemote2=1,completionemoteDelay2=30 WHERE entry=12538;
UPDATE quests SET detailemote1=1,completionemote1=11,completionemote2=1,completionemoteDelay2=60 WHERE entry=12539;
UPDATE quests SET detailemote1=1,completionemote1=6 WHERE entry=12540;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12542;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12543;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=12544;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12545;
UPDATE quests SET detailemote1=1,detailemote2=1,IncompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12549;
UPDATE quests SET detailemote1=1,detailemote2=1,IncompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12550;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1 WHERE entry=12551;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=25,completionemote1=5 WHERE entry=12552;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=274,detailemote4=1,CompleteEmote=1,completionemote1=1 WHERE entry=12553;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1,completionemote2=2,completionemoteDelay2=2000 WHERE entry=12554;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=273,completionemote1=4,completionemote2=1,completionemote3=6 WHERE entry=12555;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12556;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12557;
UPDATE quests SET CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12558;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1 WHERE entry=12560;
UPDATE quests SET detailemote1=0 WHERE entry=12561;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=66 WHERE entry=12562;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12565;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1 WHERE entry=12569;
UPDATE quests SET detailemote1=6,completionemote1=6 WHERE entry=12570;
UPDATE quests SET detailemote1=1,completionemote1=6 WHERE entry=12571;
UPDATE quests SET detailemote1=1,CompleteEmote=1,completionemote1=5,completionemoteDelay1=20 WHERE entry=12572;
UPDATE quests SET IncompleteEmote=6,completionemote1=5 WHERE entry=12573;
UPDATE quests SET detailemote1=1,detailemoteDelay1=60,completionemote1=1 WHERE entry=12574;
UPDATE quests SET detailemote1=1,CompleteEmote=1,completionemote1=5 WHERE entry=12575;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12576;
UPDATE quests SET detailemote1=1,completionemote1=6 WHERE entry=12577;
UPDATE quests SET detailemote1=1,IncompleteEmote=1,completionemote1=1 WHERE entry=12578;
UPDATE quests SET detailemote1=1,CompleteEmote=1,completionemote1=1 WHERE entry=12579;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12580;
UPDATE quests SET detailemote1=1 WHERE entry=12581;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=29,CompleteEmote=6,completionemote1=5,completionemote2=1,completionemoteDelay1=2000 WHERE entry=12583;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=25,CompleteEmote=1,completionemote1=6,completionemote2=5 WHERE entry=12584;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=12589;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=5,completionemote2=6 WHERE entry=12592;
UPDATE quests SET detailemote1=396,detailemote2=397,detailemote3=396,detailemote4=396,detailemoteDelay1=500,detailemoteDelay2=1000,detailemoteDelay3=1000,detailemoteDelay4=1000 WHERE entry=12593;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=12595;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=6,detailemote4=1,completionemote1=5,completionemote2=1,completionemote3=5,completionemote4=1 WHERE entry=12596;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1 WHERE entry=12597;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=1,completionemote1=1,completionemote2=1 WHERE entry=12598;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1 WHERE entry=12599;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=12603;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1 WHERE entry=12605;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5 WHERE entry=12606;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12607;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=12609;
UPDATE quests SET completionemote1=1 WHERE entry=12610;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=12614;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12619;
UPDATE quests SET detailemote1=6,detailemote2=11,detailemote3=1,CompleteEmote=1,completionemote1=11,completionemote2=25 WHERE entry=12622;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=2 WHERE entry=12623;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=25,completionemote1=1 WHERE entry=12627;
UPDATE quests SET detailemote1=1 WHERE entry=12628;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1 WHERE entry=12629;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1 WHERE entry=12630;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12634;
UPDATE quests SET detailemote1=2,detailemote2=1,detailemote3=6,CompleteEmote=1,completionemote1=1,completionemote2=1,completionemote3=6 WHERE entry=12635;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12636;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=6 WHERE entry=12637;
UPDATE quests SET CompleteEmote=1 WHERE entry=12639;
UPDATE quests SET detailemote1=25,detailemote2=5,completionemote1=1 WHERE entry=12640;
UPDATE quests SET detailemote1=396,detailemote2=397,detailemote3=396 WHERE entry=12641;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=12644;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1 WHERE entry=12645;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=1,completionemote2=1 WHERE entry=12648;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=273,CompleteEmote=274,completionemote1=1,completionemote2=1,completionemote3=1,completionemote4=1,completionemoteDelay2=2000 WHERE entry=12650;
UPDATE quests SET completionemote1=1 WHERE entry=12652;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12654;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12655;
UPDATE quests SET detailemote1=396,detailemote2=15,detailemote3=396,detailemote4=0,detailemoteDelay1=1000,detailemoteDelay2=2000,detailemoteDelay3=2000 WHERE entry=12657;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12658;
UPDATE quests SET detailemote1=1,detailemote2=5,completionemote1=11,completionemote2=6 WHERE entry=12659;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12661;
UPDATE quests SET detailemote1=6,detailemote2=274,detailemote3=25,detailemote4=1,detailemoteDelay1=2000,completionemote1=4,completionemote2=1,completionemote3=1,completionemoteDelay2=2000 WHERE entry=12662;
UPDATE quests SET detailemote1=6,detailemote2=1,detailemote3=1,detailemote4=66 WHERE entry=12670;
UPDATE quests SET completionemote1=1,completionemote2=1 WHERE entry=12673;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=12678;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12679;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12680;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12681;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1,completionemote2=1 WHERE entry=12683;
UPDATE quests SET IncompleteEmote=6,completionemote1=1,completionemote2=5,completionemoteDelay1=2000 WHERE entry=12685;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12687;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=12688;
UPDATE quests SET completionemote1=1 WHERE entry=12689;
UPDATE quests SET completionemote1=1 WHERE entry=12695;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12697;
UPDATE quests SET detailemote1=5,detailemote2=25,detailemote3=1,detailemote4=1 WHERE entry=12698;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12700;
UPDATE quests SET detailemote1=274,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12701;
UPDATE quests SET detailemote1=1,CompleteEmote=1,completionemote1=1 WHERE entry=12704;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12705;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12706;
UPDATE quests SET detailemote1=25,detailemote2=5,detailemote3=1,detailemote4=1,completionemote1=4,completionemote2=94 WHERE entry=12707;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=5,detailemote4=6,completionemote1=1,completionemote2=6,completionemoteDelay2=2000 WHERE entry=12708;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=2,CompleteEmote=6,completionemote1=5,completionemote2=1,completionemote3=1,completionemote4=1 WHERE entry=12709;
UPDATE quests SET CompleteEmote=1 WHERE entry=12713;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=273,detailemote4=25 WHERE entry=12714;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=12715;
UPDATE quests SET detailemote1=1,detailemote2=5,detailemote3=1,detailemote4=6 WHERE entry=12716;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12717;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12719;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=273 WHERE entry=12720;
UPDATE quests SET completionemote1=5,completionemote2=1,completionemote3=274 WHERE entry=12721;
UPDATE quests SET detailemote1=0 WHERE entry=12722;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12723;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12724;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=12725;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12727;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12728;
UPDATE quests SET detailemote1=1,detailemote2=25,detailemote3=1 WHERE entry=12729;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12733;
UPDATE quests SET detailemote1=0 WHERE entry=12738;
UPDATE quests SET detailemote1=5,detailemote2=1,completionemote1=1,completionemote2=1 WHERE entry=12740;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12742;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=66 WHERE entry=12751;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=25 WHERE entry=12754;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12755;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=15 WHERE entry=12756;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12757;
UPDATE quests SET detailemote1=1 WHERE entry=12761;
UPDATE quests SET detailemote1=1,CompleteEmote=1,completionemote1=1 WHERE entry=12762;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1,detailemoteDelay1=1000 WHERE entry=12766;
UPDATE quests SET detailemote1=1 WHERE entry=12768;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12778;
UPDATE quests SET detailemote1=396,detailemote2=396,detailemote3=396,detailemote4=397 WHERE entry=12779;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=12789;
UPDATE quests SET detailemote1=1,detailemote2=273,detailemote3=1 WHERE entry=12790;
UPDATE quests SET CompleteEmote=1,completionemote1=2 WHERE entry=12794;
UPDATE quests SET detailemote1=1 WHERE entry=12795;
UPDATE quests SET detailemote1=396,detailemote2=396,detailemote3=396,detailemote4=397 WHERE entry=12800;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=15 WHERE entry=12801;
UPDATE quests SET detailemote1=0 WHERE entry=12802;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=1,completionemote1=1 WHERE entry=12804;
UPDATE quests SET detailemote1=1,detailemote2=6,detailemote3=1,completionemote1=5 WHERE entry=12806;
UPDATE quests SET completionemote1=1,completionemote2=274,completionemote3=5 WHERE entry=12807;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25 WHERE entry=12810;
UPDATE quests SET detailemote1=1,detailemote2=274,detailemote3=5,detailemote4=25 WHERE entry=12813;
UPDATE quests SET detailemote1=1,CompleteEmote=1,completionemote1=1,completionemote2=6,completionemoteDelay2=120 WHERE entry=12818;
UPDATE quests SET detailemote1=5,completionemote1=11,completionemote2=1,completionemoteDelay2=60 WHERE entry=12819;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemoteDelay2=60 WHERE entry=12820;
UPDATE quests SET detailemote1=5,completionemote1=5 WHERE entry=12821;
UPDATE quests SET detailemote1=1,completionemote1=5 WHERE entry=12822;
UPDATE quests SET detailemote1=1,completionemote1=5 WHERE entry=12823;
UPDATE quests SET detailemote1=1,completionemote1=6 WHERE entry=12824;
UPDATE quests SET detailemote1=5,CompleteEmote=6,completionemote1=5 WHERE entry=12826;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemoteDelay2=60,CompleteEmote=1,completionemote1=1 WHERE entry=12827;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemoteDelay2=60,CompleteEmote=1,completionemote1=1 WHERE entry=12828;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12829;
UPDATE quests SET detailemote1=1,completionemote1=1 WHERE entry=12830;
UPDATE quests SET completionemote1=1 WHERE entry=12832;
UPDATE quests SET detailemote1=3,detailemote2=6,detailemoteDelay2=120 WHERE entry=12833;
UPDATE quests SET detailemote1=5,completionemote1=5 WHERE entry=12836;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12842;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=25 WHERE entry=12848;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=12850;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=1 WHERE entry=12851;
UPDATE quests SET detailemote1=5,completionemoteDelay2=60 WHERE entry=12853;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396 WHERE entry=12856;
UPDATE quests SET CompleteEmote=1,completionemote1=7,completionemote2=1,completionemote3=1 WHERE entry=12857;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=12861;
UPDATE quests SET detailemote1=1 WHERE entry=12862;
UPDATE quests SET detailemote1=0 WHERE entry=12883;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,CompleteEmote=6,completionemote1=1,completionemote2=1 WHERE entry=12884;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=6,completionemote2=25 WHERE entry=12887;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=12894;
UPDATE quests SET detailemote1=1,completionemote1=6 WHERE entry=12896;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemoteDelay2=2000 WHERE entry=12898;
UPDATE quests SET detailemote1=396,detailemote2=396,detailemote3=396,CompleteEmote=274,completionemote1=273,completionemote2=396 WHERE entry=12901;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=12902;
UPDATE quests SET detailemote1=396,detailemote2=396,detailemote3=396,detailemote4=6,completionemote1=1,completionemote2=1,completionemote3=66 WHERE entry=12903;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1,completionemote1=6,completionemote2=1 WHERE entry=12912;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=5,CompleteEmote=1,completionemote1=396,completionemote2=396 WHERE entry=12914;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,IncompleteEmote=1,completionemote1=53,completionemote2=1,completionemote3=1 WHERE entry=12916;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=5,completionemote2=1,completionemote3=1 WHERE entry=12919;
UPDATE quests SET completionemote1=396,completionemote2=396 WHERE entry=12924;
UPDATE quests SET detailemote1=396,detailemote2=396 WHERE entry=12966;
UPDATE quests SET detailemote1=396,detailemote2=396 WHERE entry=12967;
UPDATE quests SET detailemote1=1 WHERE entry=12971;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396 WHERE entry=12975;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396 WHERE entry=12976;
UPDATE quests SET detailemote1=1,detailemote2=25,detailemote3=5,completionemote1=2 WHERE entry=12982;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396 WHERE entry=12985;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396 WHERE entry=12987;
UPDATE quests SET detailemote1=1 WHERE entry=12989;
UPDATE quests SET detailemote1=33,completionemote1=35 WHERE entry=12992;
UPDATE quests SET detailemote1=1 WHERE entry=12996;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396 WHERE entry=13001;
UPDATE quests SET detailemote1=396,detailemote2=396 WHERE entry=13009;
UPDATE quests SET completionemote1=396,completionemote2=396 WHERE entry=13010;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396 WHERE entry=13011;
UPDATE quests SET completionemote1=1 WHERE entry=13012;
UPDATE quests SET completionemote1=1 WHERE entry=13013;
UPDATE quests SET completionemote1=1 WHERE entry=13014;
UPDATE quests SET completionemote1=1 WHERE entry=13015;
UPDATE quests SET completionemote1=1 WHERE entry=13016;
UPDATE quests SET completionemote1=1 WHERE entry=13018;
UPDATE quests SET completionemote1=1 WHERE entry=13019;
UPDATE quests SET completionemote1=1 WHERE entry=13021;
UPDATE quests SET completionemote1=1 WHERE entry=13022;
UPDATE quests SET completionemote1=1 WHERE entry=13023;
UPDATE quests SET completionemote1=1 WHERE entry=13024;
UPDATE quests SET completionemote1=1 WHERE entry=13025;
UPDATE quests SET completionemote1=1 WHERE entry=13026;
UPDATE quests SET completionemote1=1 WHERE entry=13027;
UPDATE quests SET completionemote1=1 WHERE entry=13028;
UPDATE quests SET completionemote1=1 WHERE entry=13030;
UPDATE quests SET completionemote1=1 WHERE entry=13033;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,detailemote4=1 WHERE entry=13036;
UPDATE quests SET completionemote1=53 WHERE entry=13047;
UPDATE quests SET detailemote1=1 WHERE entry=13057;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=153 WHERE entry=13063;
UPDATE quests SET completionemote1=1 WHERE entry=13065;
UPDATE quests SET completionemote1=1 WHERE entry=13066;
UPDATE quests SET completionemote1=1 WHERE entry=13067;
UPDATE quests SET detailemote1=1,detailemote2=25,detailemote3=11,completionemote1=1,completionemote2=1,completionemoteDelay1=2000 WHERE entry=13084;
UPDATE quests SET detailemote1=5,completionemote1=1 WHERE entry=13085;
UPDATE quests SET detailemote1=22 WHERE entry=13087;
UPDATE quests SET detailemote1=22,completionemote1=5 WHERE entry=13088;
UPDATE quests SET IncompleteEmote=1 WHERE entry=13091;
UPDATE quests SET completionemote1=25 WHERE entry=13093;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396 WHERE entry=13094;
UPDATE quests SET completionemote1=396 WHERE entry=13096;
UPDATE quests SET completionemote1=396,completionemote2=396 WHERE entry=13097;
UPDATE quests SET completionemote1=396 WHERE entry=13098;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396 WHERE entry=13099;
UPDATE quests SET detailemote1=1 WHERE entry=13100;
UPDATE quests SET detailemote1=396,detailemote2=396 WHERE entry=13108;
UPDATE quests SET detailemote1=396,detailemote2=396 WHERE entry=13109;
UPDATE quests SET detailemote1=396,detailemote2=396 WHERE entry=13124;
UPDATE quests SET completionemote1=396 WHERE entry=13128;
UPDATE quests SET detailemote1=396,detailemote2=396 WHERE entry=13129;
UPDATE quests SET CompleteEmote=6,completionemote1=5,completionemoteDelay1=100 WHERE entry=13153;
UPDATE quests SET completionemote1=6,completionemote2=396 WHERE entry=13159;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=13165;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=13166;
UPDATE quests SET detailemote1=1 WHERE entry=13177;
UPDATE quests SET detailemote1=1,completionemote1=66 WHERE entry=13179;
UPDATE quests SET detailemote1=1 WHERE entry=13181;
UPDATE quests SET detailemote1=1 WHERE entry=13186;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1 WHERE entry=13188;
UPDATE quests SET detailemote1=1,completionemote1=11,completionemoteDelay1=100 WHERE entry=13197;
UPDATE quests SET CompleteEmote=6,completionemote1=5,completionemoteDelay1=100 WHERE entry=13198;
UPDATE quests SET detailemote1=5,detailemote2=396,detailemote3=5,detailemote4=396 WHERE entry=13205;
UPDATE quests SET detailemote1=1,completionemote1=66 WHERE entry=13222;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=1,detailemote4=5 WHERE entry=13226;
UPDATE quests SET detailemote1=1,detailemote2=25,IncompleteEmote=1,completionemote1=273,completionemoteDelay1=2000 WHERE entry=13240;
UPDATE quests SET detailemote1=1,detailemote2=25,IncompleteEmote=1,completionemote1=1 WHERE entry=13241;
UPDATE quests SET detailemote1=5,detailemote2=25,completionemote1=2,completionemote2=1 WHERE entry=13243;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=25,IncompleteEmote=6 WHERE entry=13244;
UPDATE quests SET detailemote1=25,detailemote2=1,CompleteEmote=6,completionemote1=1 WHERE entry=13245;
UPDATE quests SET detailemote1=5,detailemote2=6,detailemote3=1,CompleteEmote=6,completionemote1=2,completionemote2=6 WHERE entry=13247;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=25,CompleteEmote=1,completionemote1=1,completionemoteDelay1=2000 WHERE entry=13248;
UPDATE quests SET detailemote1=1,detailemote2=274,detailemote3=6,CompleteEmote=6,completionemote1=1,completionemote2=6,completionemoteDelay2=2000 WHERE entry=13249;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=6,CompleteEmote=6,completionemote1=2,completionemote2=6 WHERE entry=13250;
UPDATE quests SET detailemote1=6,detailemote2=1,CompleteEmote=6,completionemote1=6 WHERE entry=13252;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=25,CompleteEmote=6,completionemote1=1,completionemote2=6,completionemoteDelay1=2000 WHERE entry=13253;
UPDATE quests SET detailemote1=1,detailemote2=1,CompleteEmote=6,completionemote1=6,completionemote2=1,completionemoteDelay1=2000,completionemoteDelay2=2000 WHERE entry=13255;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=6,CompleteEmote=6,completionemote1=1,completionemote2=2,completionemote3=5 WHERE entry=13256;
UPDATE quests SET CompleteEmote=1 WHERE entry=13272;
UPDATE quests SET completionemote1=5,completionemote2=4,completionemote3=1,completionemote4=25 WHERE entry=13343;
UPDATE quests SET completionemote1=1,completionemote2=1,completionemote3=15 WHERE entry=13347;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=1,completionemote3=1 WHERE entry=13369;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=6,completionemote2=1 WHERE entry=13370;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=1,completionemote1=6,completionemote2=1 WHERE entry=13371;
UPDATE quests SET detailemote1=1,detailemote2=1,completionemote1=1,completionemote2=6,completionemote3=274,completionemote4=15 WHERE entry=13377;
UPDATE quests SET completionemote1=1 WHERE entry=13405;
UPDATE quests SET detailemote1=1 WHERE entry=13410;
UPDATE quests SET detailemote1=396,detailemote2=396 WHERE entry=13412;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396 WHERE entry=13413;
UPDATE quests SET detailemote1=396,detailemote2=396,completionemote1=396,completionemote2=396 WHERE entry=13414;
UPDATE quests SET detailemote1=5,detailemote2=1,detailemote3=5,detailemote4=0,detailemoteDelay2=60,detailemoteDelay3=60,completionemote1=1,completionemote2=1,completionemoteDelay2=60 WHERE entry=13418;
UPDATE quests SET completionemote1=66 WHERE entry=13478;
UPDATE quests SET detailemote1=1 WHERE entry=13538;
UPDATE quests SET detailemote1=1,detailemote2=1,detailemote3=6,detailemote4=25,IncompleteEmote=274,completionemote1=1 WHERE entry=13549;
UPDATE quests SET CompleteEmote=6,completionemote1=4 WHERE entry=13556;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=13627;
UPDATE quests SET CompleteEmote=1,completionemote1=5 WHERE entry=13662;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=13681;
UPDATE quests SET detailemote1=1,detailemote2=1 WHERE entry=13820;
UPDATE quests SET detailemotecount = '0';
UPDATE quests SET detailemotecount = '1' WHERE detailemote1 != '0' AND detailemote2 = '0' AND detailemote3 = '0' AND detailemote4 = '0';
UPDATE quests SET detailemotecount = '2' WHERE detailemote1 != '0' AND detailemote2 != '0' AND detailemote3 = '0' AND detailemote4 = '0';
UPDATE quests SET detailemotecount = '3' WHERE detailemote1 != '0' AND detailemote2 != '0' AND detailemote3 != '0' AND detailemote4 = '0';
UPDATE quests SET detailemotecount = '4' WHERE detailemote1 != '0' AND detailemote2 != '0' AND detailemote3 != '0' AND detailemote4 != '0';
UPDATE quests SET completionemotecnt = '0';
UPDATE quests SET completionemotecnt = '1' WHERE completionemote1 != '0' AND completionemote2 = '0' AND completionemote3 = '0' AND completionemote4 = '0';
UPDATE quests SET completionemotecnt = '2' WHERE completionemote1 != '0' AND completionemote2 != '0' AND completionemote3 = '0' AND completionemote4 = '0';
UPDATE quests SET completionemotecnt = '3' WHERE completionemote1 != '0' AND completionemote2 != '0' AND completionemote3 != '0' AND completionemote4 = '0';
UPDATE quests SET completionemotecnt = '4' WHERE completionemote1 != '0' AND completionemote2 != '0' AND completionemote3 != '0' AND completionemote4 != '0';
-- db_version
UPDATE `db_version` SET `revision` = '153', `changeset` = '104', `last_db_update_by` = 'Sadikum';
-- delete bad waypoints
DELETE cw FROM `creature_waypoints` cw LEFT JOIN `creature_spawns` cs ON (cw.`spawnid` = cs.`id`) WHERE cw.`spawnid` != '0' AND cs.`id` IS NULL;
