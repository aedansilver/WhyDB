-- MySQL dump 10.11
--
-- Host: localhost    Database: whydb_svn
-- ------------------------------------------------------
-- Server version	5.5.20

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
-- Table structure for table `worldstate_templates`
--

DROP TABLE IF EXISTS `worldstate_templates`;
CREATE TABLE `worldstate_templates` (
  `map` int(10) unsigned NOT NULL DEFAULT '0',
  `zone` int(10) unsigned NOT NULL DEFAULT '0',
  `field` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`map`,`zone`,`field`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worldstate_templates`
--

LOCK TABLES `worldstate_templates` WRITE;
/*!40000 ALTER TABLE `worldstate_templates` DISABLE KEYS */;
INSERT INTO `worldstate_templates` VALUES (530,3483,2476,0),(530,3483,2478,0),(530,3483,2490,1),(530,3483,2489,1),(530,3483,2473,0),(530,3483,2474,0),(530,3483,2472,1),(530,3483,2471,0),(530,3483,2470,0),(530,3483,2482,1),(530,3483,2480,0),(530,3483,2481,0),(530,3483,2485,1),(530,3483,2483,0),(530,3483,2484,0),(530,3518,2502,0),(530,3518,2503,0),(530,3518,2491,0),(530,3518,2493,15),(530,3483,2475,0),(530,3519,2621,0),(530,3519,2622,0),(530,3519,2623,0),(530,3519,2625,0),(530,3519,2620,1),(530,3519,2681,1),(530,3519,2682,0),(530,3519,2683,0),(530,3519,2684,0),(530,3519,2685,0),(530,3519,2686,1),(530,3519,2688,0),(530,3519,2689,0),(530,3519,2690,1),(530,3519,2691,0),(530,3519,2692,0),(530,3519,2693,1),(530,3519,2694,0),(530,3519,2695,0),(530,3519,2696,1),(530,3518,3493,0),(530,3518,2659,0),(530,3518,2660,0),(530,3518,2661,0),(530,3518,2763,0),(530,3518,2671,1),(530,3518,2672,0),(530,3518,2673,0),(530,3518,2676,0),(530,3518,2677,0),(530,3518,2495,0),(530,3518,2494,0),(530,3518,2497,0),(530,3518,2762,0),(530,3518,2662,0),(530,3518,2663,0),(530,3518,2664,0),(530,3518,2760,0),(530,3518,2670,0),(530,3518,2668,0),(530,3518,2669,0),(530,3518,2761,0),(530,3518,2667,0),(530,3518,2665,0),(530,3518,2666,0),(530,3521,2527,0),(530,3521,2528,50),(530,3521,2529,70),(530,3521,2533,0),(530,3521,2534,50),(530,3521,2535,70),(530,3521,2555,0),(530,3521,2556,0),(530,3521,2557,1),(530,3521,2558,0),(530,3521,2559,0),(530,3521,2560,1),(530,3521,2644,0),(530,3521,2645,0),(530,3521,2646,1),(530,3521,2647,1),(530,3521,2648,0),(530,3521,2649,0),(530,3521,2650,0),(530,3521,2651,0),(530,3521,2652,1),(530,3521,2653,0),(530,3521,2655,0),(530,3521,2656,1),(530,3521,2657,1),(530,3521,2658,0),(0,139,2327,0),(0,139,2328,0),(0,139,2354,0),(0,139,2356,0),(0,139,2359,0),(0,139,2360,0),(0,139,2361,1),(0,139,2352,1),(0,139,2362,0),(0,139,2363,0),(0,139,2372,0),(0,139,2373,0),(0,139,2366,0),(0,139,2353,1),(0,139,2370,0),(0,139,2371,0),(0,139,2374,0),(0,139,2375,0),(0,139,2378,0),(0,139,2379,0),(0,139,2355,1),(0,139,2367,0),(0,139,2426,0),(0,139,2427,50),(0,139,2428,20),(1,1377,2313,0),(1,1377,2314,0),(1,1377,2317,200),(529,3358,1842,1),(529,3358,1843,1),(529,3358,1844,1),(529,3358,1845,1),(529,3358,1846,1),(529,3358,1776,0),(529,3358,1777,0),(529,3358,1778,0),(529,3358,1779,0),(529,3358,1780,1600),(529,3358,1767,0),(529,3358,1768,0),(529,3358,1769,0),(529,3358,1770,0),(529,3358,1772,0),(529,3358,1773,0),(529,3358,1774,0),(529,3358,1775,0),(529,3358,1782,0),(529,3358,1783,0),(529,3358,1784,0),(529,3358,1785,0),(529,3358,1787,0),(529,3358,1788,0),(529,3358,1789,0),(529,3358,1790,0),(529,3358,1792,0),(529,3358,1793,0),(529,3358,1794,0),(529,3358,1795,0),(489,3277,2338,1),(489,3277,2339,1),(489,3277,1581,0),(489,3277,1582,0),(489,3277,1601,3),(30,2597,3128,600),(30,2597,3133,1),(30,2597,3134,1),(30,2597,1325,1),(30,2597,1326,0),(30,2597,1327,0),(30,2597,1328,0),(30,2597,1333,1),(30,2597,1334,0),(30,2597,1335,0),(30,2597,1336,0),(30,2597,1301,0),(30,2597,1302,1),(30,2597,1303,0),(30,2597,1304,0),(30,2597,1966,1),(30,2597,1341,0),(30,2597,1342,0),(30,2597,1343,0),(30,2597,1344,0),(30,2597,1355,0),(30,2597,1356,0),(30,2597,1357,1),(30,2597,1358,0),(30,2597,1359,0),(30,2597,1360,1),(30,2597,1346,0),(30,2597,1347,1),(30,2597,1348,0),(30,2597,1349,0),(30,2597,1337,0),(30,2597,1338,1),(30,2597,1339,0),(30,2597,1340,0),(30,2597,1329,0),(30,2597,1330,1),(30,2597,1331,0),(30,2597,1332,0),(30,2597,1361,1),(30,2597,1370,0),(30,2597,1378,0),(30,2597,1362,1),(30,2597,1371,0),(30,2597,1379,0),(30,2597,1363,1),(30,2597,1372,0),(30,2597,1380,0),(30,2597,1364,1),(30,2597,1373,0),(30,2597,1381,0),(30,2597,1368,0),(30,2597,1385,1),(30,2597,1390,0),(30,2597,1367,0),(30,2597,1384,1),(30,2597,1389,0),(30,2597,1366,0),(30,2597,1383,1),(30,2597,1388,0),(30,2597,1365,0),(30,2597,1382,1),(30,2597,1387,0),(30,2597,3127,600),(566,3820,2718,0),(566,3820,2719,0),(566,3820,2720,40),(566,3820,2722,1),(566,3820,2723,0),(566,3820,2724,0),(566,3820,2725,1),(566,3820,2726,0),(566,3820,2727,0),(566,3820,2728,1),(566,3820,2729,0),(566,3820,2730,0),(566,3820,2731,1),(566,3820,2732,0),(566,3820,2733,0),(566,3820,2749,0),(566,3820,2750,0),(566,3820,2752,0),(566,3820,2753,0),(566,3820,2757,1),(566,3820,2769,1),(566,3820,2770,1),(559,3698,2577,1),(559,3698,3600,0),(559,3698,3601,0),(562,3702,2547,1),(562,3702,3600,0),(562,3702,3601,0),(572,3968,3002,1),(572,3968,3600,0),(572,3968,3601,0),(560,2367,2436,0),(571,4197,3808,0),(571,4197,3807,0),(571,4197,3806,0),(571,4197,3706,1),(571,4197,3705,1),(571,4197,3704,1),(571,4197,3703,1),(571,4197,3702,1),(571,4197,3701,4),(571,4197,3700,4),(571,4197,3699,4),(571,4197,3805,0),(571,4197,3804,0),(571,4197,3698,4),(571,4197,3799,0),(571,4197,3798,0),(571,4197,3797,0),(571,4197,3796,0),(571,4197,3795,0),(571,4197,3794,0),(571,4197,3793,0),(571,4197,3792,0),(571,4197,3791,0),(571,4197,3790,0),(571,4197,3788,0),(571,4197,3781,0),(571,4197,3779,0),(571,4197,3778,0),(571,4197,3777,0),(571,4197,3776,0),(571,4197,3775,0),(571,4197,3774,0),(571,4197,3773,4),(571,4197,3772,4),(571,4197,3771,4),(571,4197,3770,4),(571,4197,3769,4),(571,4197,3768,4),(571,4197,3767,4),(571,4197,3766,4),(571,4197,3765,4),(571,4197,3764,4),(571,4197,3763,4),(571,4197,3762,4),(571,4197,3761,4),(571,4197,3760,4),(571,4197,3759,4),(571,4197,3758,4),(571,4197,3757,4),(571,4197,3756,4),(571,4197,3755,4),(571,4197,3754,4),(571,4197,3753,4),(571,4197,3752,4),(571,4197,3751,4),(571,4197,3750,4),(571,4197,3749,4),(571,4197,3748,0),(571,4197,3747,0),(571,4197,3746,0),(571,4197,3745,0),(571,4197,3744,0),(571,4197,3743,0),(571,4197,3742,0),(571,4197,3741,0),(571,4197,3739,0),(571,4197,3738,0),(571,4197,3737,0),(571,4197,3731,0),(571,4197,3730,0),(571,4197,3729,0),(571,4197,3728,0),(571,4197,3727,0),(571,4197,3726,0),(571,4197,3725,0),(571,4197,3724,0),(571,4197,3723,0),(571,4197,3714,4),(571,4197,3713,4),(571,4197,3712,4),(571,4197,3711,4),(571,4197,3801,1),(571,4197,3802,1),(571,4197,3803,0),(571,4197,3710,0),(571,4197,3681,0),(571,4197,3680,0),(571,4197,3491,0),(571,4197,3490,0),(571,4197,3809,0),(571,4197,3810,0),(571,4197,3811,0),(571,4197,3812,0),(571,4197,3813,0),(571,4197,4354,30),(571,4197,3467,50),(571,4197,3468,60),(571,4197,3501,0),(571,4197,3502,50),(571,4197,3508,60),(571,4197,3466,0),(571,4197,3740,0),(607,4384,3623,1),(607,3623,3620,1),(607,3623,3617,1),(607,3623,3623,1),(607,3623,3638,1),(607,4384,3849,1),(607,4384,4352,0),(607,4384,4353,0),(607,4384,3614,1),(607,4384,3617,1),(607,4384,3620,1),(607,4384,3638,1),(607,4384,3635,0),(607,4384,3636,0),(607,4384,3637,0),(607,4384,3627,1),(607,4384,3626,1),(607,4384,3629,0),(607,4384,3628,0),(607,4384,3631,0),(607,4384,3630,0),(607,4384,3632,0),(607,4384,3633,0),(607,4384,3634,0),(607,4384,3536,0),(607,4384,3537,0),(607,4384,3571,0),(607,4384,3559,1),(607,4384,3560,1),(607,4384,3561,1),(607,4384,3564,0),(607,4384,3565,0),(628,4710,4221,1),(628,4710,4222,1),(628,4710,4226,300),(628,4710,4227,300),(628,4710,4317,1),(628,4710,4318,1),(628,4710,4319,1),(628,4710,4328,1),(628,4710,4327,1),(628,4710,4326,1),(628,4710,4322,0),(628,4710,4321,0),(628,4710,4320,0),(628,4710,4323,0),(628,4710,4324,0),(628,4710,4325,0),(628,4710,4301,1),(628,4710,4305,0),(628,4710,4302,0),(628,4710,4304,0),(628,4710,4303,0),(628,4710,4296,1),(628,4710,4300,0),(628,4710,4297,0),(628,4710,4299,0),(628,4710,4298,0),(628,4710,4306,1),(628,4710,4310,0),(628,4710,4307,0),(628,4710,4309,0),(628,4710,4308,0),(628,4710,4311,1),(628,4710,4315,0),(628,4710,4312,0),(628,4710,4314,0),(628,4710,4313,0),(628,4710,4294,1),(628,4710,4228,0),(628,4710,4293,0),(628,4710,4229,0),(628,4710,4230,0),(628,4710,4341,0),(628,4710,4342,0),(628,4710,4343,0),(628,4710,4339,1),(628,4710,4340,0),(628,4710,4346,0),(628,4710,4347,0),(628,4710,4348,0),(628,4710,4344,0),(628,4710,4345,1),(595,411,3479,0),(595,411,3480,0),(595,411,3504,0),(595,411,3931,25),(595,411,3932,0),(603,4273,4132,0),(603,4273,4131,0),(631,4812,4903,0),(631,4812,4131,30),(631,4812,4940,0),(631,4812,4941,0),(631,4812,4942,0),(724,4987,5051,0),(724,4987,5049,0),(724,4987,5050,0),(649,4722,4390,0),(649,4722,4389,20),(608,4415,3816,0),(608,4415,3815,100),(608,4415,3810,0),(578,4228,3524,1),(578,4228,3486,10),(668,4820,4884,0),(668,4820,4882,0),(609,4298,3605,0),(609,4298,3603,1),(609,4298,3604,10),(609,4298,3592,0),(609,4298,3590,0),(609,4298,3591,0),(568,3805,3104,0),(568,3805,3106,0),(534,3606,2453,0),(534,3606,2486,0),(534,3606,2454,0),(534,3606,2842,0),(269,2366,2541,0),(269,2366,2540,100),(269,2366,2784,0),(603,4445,4195,1),(603,4445,4196,1),(603,4445,4197,1),(603,4273,4053,1),(595,4100,3585,0),(595,4100,3584,0),(595,4100,3583,0),(595,4100,3582,0),(595,4100,3581,0),(1,1377,2325,0),(1,1377,2324,0),(1,1377,2323,0),(1,1377,2322,0),(0,139,2264,0),(1,0,2263,0),(0,46,2262,0),(0,4,2261,0),(1,0,2260,0),(1,0,2259,0),(571,4253,3776,0),(0,139,2376,0),(0,139,2377,0),(0,139,2357,0),(0,139,2358,0),(0,139,2364,0),(0,139,2365,0),(0,139,2369,0),(0,139,2368,0),(30,0,1375,0),(30,0,1374,0),(30,0,1393,0),(30,0,1395,0),(30,0,1376,0),(30,0,1665,0),(30,0,1377,0),(30,0,1394,0),(30,0,1392,0),(530,4080,3414,1),(530,4080,3415,0),(530,4080,3416,1),(530,4080,3417,0),(530,4080,3418,1),(530,4080,3419,0),(566,3820,2735,0),(566,3820,2736,0),(566,3820,2738,0),(566,3820,2737,0),(566,3820,2739,0),(566,3820,2740,0),(566,3820,2741,0),(566,3820,2742,0),(618,4408,3610,1),(618,4408,3600,0),(618,4408,3601,0),(617,4378,3610,1),(617,4378,3600,0),(617,4378,3601,0);
/*!40000 ALTER TABLE `worldstate_templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-29 14:24:04
