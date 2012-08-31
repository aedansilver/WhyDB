/*
Charm (Mind Control, enslave demon): 1
Confuse (Blind etc): 2
Fear: 4
Root: 8
Silence : 16
Stun: 32
Sheep: 64
Banish: 128
Sap: 256
Frozen : 512
Ensnared 1024
Sleep 2048
Taunt (aura): 4096
Decrease Speed (Hamstring) (aura): 8192
Spell Haste (Curse of Tongues) (aura): 16384
Interrupt Cast: 32768
Mod Healing % (Mortal Strike) (aura): 65536
Total Stats % (Vindication) (aura): 131072
*/

/* Hyjal Summit Bosses */
UPDATE `creature_proto` SET `modImmunities` = '19587' WHERE `creature_proto`.`entry` IN (17842,17767,17808,17888,17968);
UPDATE `creature_proto` SET `modImmunities` = '32255' WHERE `creature_proto`.`entry` = 17968 ;


/* ---- DUNGEONS ---- */
/* Regefire Chasm */
UPDATE creature_proto SET modImmunities = 22783 WHERE entry IN (11519,11518,11517,11520,17830);

/* The DeadMines */
UPDATE creature_proto SET modImmunities = 16895 WHERE entry IN (596,647,645,639,626,1763,599,3586,646,644,643,624);

/* Wailing Caverns */
UPDATE creature_proto SET modImmunities = 19935 WHERE entry IN (5912,3653,3671,3669,3670,3673,3655,3654,3674,3652,5775);

/* Shadowfang Keep */
UPDATE creature_proto SET modImmunities = 19935 WHERE entry IN (4275,3887,4278,3872,4274,4279,3886,3914,3927);

