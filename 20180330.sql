-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2018-03-26 08:54:10','2018-03-26 08:54:10');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bookingafter`
--

DROP TABLE IF EXISTS `bookingafter`;
/*!50001 DROP VIEW IF EXISTS `bookingafter`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bookingafter` AS SELECT 
 1 AS `订单编号`,
 1 AS `客户名称`,
 1 AS `手机号码`,
 1 AS `入住日期`,
 1 AS `入住房间`,
 1 AS `订单状态`,
 1 AS `订单时间`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bookingbefore`
--

DROP TABLE IF EXISTS `bookingbefore`;
/*!50001 DROP VIEW IF EXISTS `bookingbefore`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bookingbefore` AS SELECT 
 1 AS `订单编号`,
 1 AS `客户名称`,
 1 AS `手机号码`,
 1 AS `入住日期`,
 1 AS `入住房间`,
 1 AS `订单状态`,
 1 AS `订单时间`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bookingcount`
--

DROP TABLE IF EXISTS `bookingcount`;
/*!50001 DROP VIEW IF EXISTS `bookingcount`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bookingcount` AS SELECT 
 1 AS `订单编号`,
 1 AS `入住时间`,
 1 AS `入住房间`,
 1 AS `房型`,
 1 AS `价格`,
 1 AS `订单状态`,
 1 AS `支付方式`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bookinginfo`
--

DROP TABLE IF EXISTS `bookinginfo`;
/*!50001 DROP VIEW IF EXISTS `bookinginfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bookinginfo` AS SELECT 
 1 AS `订单编号`,
 1 AS `客户名称`,
 1 AS `手机号码`,
 1 AS `入住日期`,
 1 AS `入住房间`,
 1 AS `订单状态`,
 1 AS `订单时间`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `idbookings` int(11) NOT NULL AUTO_INCREMENT,
  `customer_idcustomer` int(11) NOT NULL,
  `bookingtime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `livetime` date NOT NULL,
  `rooms_idrooms` int(11) NOT NULL,
  `state` varchar(10) NOT NULL DEFAULT '待入住',
  `payments_idpayments` int(11) NOT NULL,
  PRIMARY KEY (`idbookings`),
  KEY `fk_bookings_customer_idx` (`customer_idcustomer`),
  KEY `fk_bookings_rooms1_id x` (`rooms_idrooms`),
  KEY `fk_bookings_payments1_idx` (`payments_idpayments`),
  CONSTRAINT `fk_bookings_customer` FOREIGN KEY (`customer_idcustomer`) REFERENCES `customers` (`idcustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bookings_payments1` FOREIGN KEY (`payments_idpayments`) REFERENCES `payments` (`idpayments`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_bookings_rooms1` FOREIGN KEY (`rooms_idrooms`) REFERENCES `rooms` (`idrooms`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10018 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (10000,1,'2018-03-22 04:53:34.584508','2018-03-24',1601,'订单过期',1),(10001,2,'2018-03-22 05:48:58.576252','2018-03-22',1604,'订单完成',2),(10002,3,'2018-03-22 17:06:16.536308','2018-03-22',1601,'订单过期',2),(10003,4,'2018-03-23 07:27:21.564628','2018-03-23',1505,'订单完成',2),(10005,8,'2018-03-23 10:25:43.845641','2018-03-23',1402,'订单过期',3),(10006,6,'2018-03-23 10:26:57.694133','2018-03-24',1406,'订单过期',2),(10007,10,'2018-03-27 09:25:15.540377','2018-03-28',1606,'订单完成',3),(10008,10,'2018-03-27 09:25:38.378825','2018-03-29',1606,'订单完成',3),(10009,10,'2018-03-27 09:27:07.996981','2018-04-01',1604,'待入住',3),(10010,11,'2018-03-27 09:38:33.311064','2018-04-01',1606,'待入住',3),(10011,13,'2018-03-27 12:33:54.267759','2018-03-30',1601,'待入住',2),(10012,15,'2018-03-27 17:19:38.963776','2018-03-28',2407,'订单完成',2),(10013,13,'2018-03-28 13:49:22.555107','2018-03-28',1607,'订单完成',1),(10014,13,'2018-03-28 17:15:37.062201','2018-03-29',1608,'已入住',1),(10015,13,'2018-03-29 12:37:04.255663','2018-03-30',2401,'待入住',3),(10016,13,'2018-03-29 14:29:09.880837','2018-03-31',2403,'订单完成',1),(10017,16,'2018-03-30 16:53:53.179675','2018-03-31',1607,'待入住',1);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tri_b after update 
on bookings 
for each row 
begin
if new.state = "订单完成" then
update rooms set room_state = "空置" where rooms.idrooms = new.rooms_idrooms;
end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'李小小','13588888821'),(2,'张大状','13584673983'),(3,'马化藤','13312347849'),(4,'朱虎','13546382917'),(5,'李又小','13743883299'),(6,'武松','13923434789'),(7,'李却名','13610003000'),(8,'戴钱','18925432342'),(9,'钱江','13425433179'),(10,'陈树皮','13811223344'),(11,'陈凯皮','13522312313'),(12,'方小气','13754645646'),(13,'李小璐','13838383838'),(15,'吴颜祖','13567896789'),(16,'陈明成','13804530453');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guests` (
  `idguests` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `idcard` varchar(45) NOT NULL,
  `bookings_idbookings` int(11) NOT NULL,
  PRIMARY KEY (`idguests`),
  KEY `fk_guests_bookings1_idx` (`bookings_idbookings`),
  CONSTRAINT `fk_guests_bookings1` FOREIGN KEY (`bookings_idbookings`) REFERENCES `bookings` (`idbookings`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (1,'贝杯北','男','445263',10001),(2,'陈吉利','男','443566',10003),(3,'吴颜祖','男','488556',10012),(4,'陈吉利','男','443566',10007),(5,'卓锋','男','432555',10013),(6,'张柏芝','女','522123',10014),(7,'卓锋','男','443566',10008),(8,'张大宝','女','455276',10016);
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tri_a after insert 
on guests 
for each row 
begin
update bookings set state = "已入住" where bookings.idbookings = new.bookings_idbookings;     
update rooms set room_state = "已满" where rooms.idrooms = (select rooms_idrooms from bookings where  bookings.idbookings = new.bookings_idbookings); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `guestsinfo`
--

DROP TABLE IF EXISTS `guestsinfo`;
/*!50001 DROP VIEW IF EXISTS `guestsinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `guestsinfo` AS SELECT 
 1 AS `姓名`,
 1 AS `性别`,
 1 AS `身份证`,
 1 AS `入住时间`,
 1 AS `入住房间`,
 1 AS `订单状态`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `idpayments` int(11) NOT NULL,
  `paymentscol` varchar(10) NOT NULL,
  PRIMARY KEY (`idpayments`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'现金'),(2,'信用卡'),(3,'支付宝'),(4,'微信');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_band`
--

DROP TABLE IF EXISTS `price_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_band` (
  `idprice_band` int(11) NOT NULL,
  `season` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`idprice_band`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_band`
--

LOCK TABLES `price_band` WRITE;
/*!40000 ALTER TABLE `price_band` DISABLE KEYS */;
INSERT INTO `price_band` VALUES (1,'spring',2388),(2,'summer',1688),(3,'autumn',988),(4,'winter',1388),(5,'spring',1288),(6,'summer',1288),(7,'autumn',788),(8,'winter',1288),(9,'spring',988),(10,'summer',1088),(11,'autumn',588),(12,'winter',1088);
/*!40000 ALTER TABLE `price_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_facilities`
--

DROP TABLE IF EXISTS `room_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_facilities` (
  `idroom_facilities` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `bednum` int(11) NOT NULL,
  `hairconditon` int(11) NOT NULL,
  `telephone` int(11) NOT NULL,
  `televison` int(11) NOT NULL,
  `htoilet` int(11) NOT NULL,
  `room_type_idroom_type` int(11) NOT NULL,
  `bath` int(11) NOT NULL,
  PRIMARY KEY (`idroom_facilities`),
  KEY `fk_room_facilities_room_type1_idx` (`room_type_idroom_type`),
  CONSTRAINT `fk_room_facilities_room_type1` FOREIGN KEY (`room_type_idroom_type`) REFERENCES `room_type` (`idroom_type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_facilities`
--

LOCK TABLES `room_facilities` WRITE;
/*!40000 ALTER TABLE `room_facilities` DISABLE KEYS */;
INSERT INTO `room_facilities` VALUES (1,70,2,1,1,1,1,1,1),(2,50,2,1,1,1,1,2,0),(3,30,1,1,1,1,1,3,0);
/*!40000 ALTER TABLE `room_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_type` (
  `idroom_type` int(11) NOT NULL,
  `room_typecol` varchar(10) NOT NULL,
  `price_band_idprice_band` int(11) NOT NULL,
  PRIMARY KEY (`idroom_type`),
  KEY `fk_room_type_price_band1_idx` (`price_band_idprice_band`),
  CONSTRAINT `fk_room_type_price_band1` FOREIGN KEY (`price_band_idprice_band`) REFERENCES `price_band` (`idprice_band`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'豪华套房',1),(2,'行政套房',5),(3,'行政房',9);
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `roominfo`
--

DROP TABLE IF EXISTS `roominfo`;
/*!50001 DROP VIEW IF EXISTS `roominfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `roominfo` AS SELECT 
 1 AS `房间号`,
 1 AS `房型`,
 1 AS `价格`,
 1 AS `面积`,
 1 AS `床`,
 1 AS `吹风机`,
 1 AS `电话`,
 1 AS `电视`,
 1 AS `独立卫生间`,
 1 AS `浴缸`,
 1 AS `状态`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `idrooms` int(11) NOT NULL,
  `room_type_idroom_type` int(11) NOT NULL,
  `room_state` varchar(10) NOT NULL DEFAULT '空置',
  PRIMARY KEY (`idrooms`),
  KEY `fk_rooms_room_type1_idx` (`room_type_idroom_type`),
  CONSTRAINT `fk_rooms_room_type1` FOREIGN KEY (`room_type_idroom_type`) REFERENCES `room_type` (`idroom_type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1401,3,'空置'),(1402,3,'空置'),(1403,3,'空置'),(1404,3,'空置'),(1405,3,'空置'),(1406,3,'空置'),(1407,3,'空置'),(1408,3,'空置'),(1501,3,'空置'),(1502,3,'空置'),(1503,3,'空置'),(1504,3,'空置'),(1505,3,'空置'),(1506,3,'空置'),(1507,3,'空置'),(1508,3,'空置'),(1601,2,'空置'),(1602,2,'空置'),(1603,2,'空置'),(1604,2,'空置'),(1605,2,'空置'),(1606,2,'空置'),(1607,2,'空置'),(1608,2,'已满'),(2401,1,'空置'),(2402,1,'空置'),(2403,1,'空置'),(2404,1,'空置'),(2405,1,'空置'),(2406,1,'空置'),(2407,1,'空置'),(2408,1,'空置');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `roomtypeinfo`
--

DROP TABLE IF EXISTS `roomtypeinfo`;
/*!50001 DROP VIEW IF EXISTS `roomtypeinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `roomtypeinfo` AS SELECT 
 1 AS `房型`,
 1 AS `价格`,
 1 AS `面积`,
 1 AS `床`,
 1 AS `吹风机`,
 1 AS `电话`,
 1 AS `电视`,
 1 AS `独立卫生间`,
 1 AS `浴缸`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20180326100606');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `updatebookings` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `updatebookings` ON SCHEDULE EVERY 1 DAY STARTS '2018-03-23 01:08:00' ON COMPLETION NOT PRESERVE ENABLE DO update bookings set state = "订单过期" where state = "待入住" and livetime < current_date() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `updatebookingstofinish` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `updatebookingstofinish` ON SCHEDULE EVERY 1 DAY STARTS '2018-03-23 14:00:00' ON COMPLETION NOT PRESERVE ENABLE DO update bookings set state = "订单完成" where state = "已入住" and livetime < current_date() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `p1_bookings_find` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p1_bookings_find`(IN booking_tel varchar(45))
BEGIN
	select * from bookinginfo where 手机号码 = booking_tel;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p2_guests_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p2_guests_insert`(IN c_tel varchar(45), IN b_room int(11), IN g_name varchar(45), IN g_sex varchar(10), IN g_id int(11))
BEGIN
	declare b_id int(11);
    set b_id = (select idbookings from bookings where livetime = current_date() and customer_idcustomer = (select idcustomer from customers where telephone = c_tel) and rooms_idrooms = b_room);
    insert into guests(name, sex, idcard, bookings_idbookings) values (g_name, g_sex, g_id, b_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p3_bookings_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p3_bookings_update`(in r_id int(11))
BEGIN
	update bookings set state = "订单完成" where state = "已入住" and rooms_idrooms = r_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p4_bookings_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p4_bookings_insert`(in c_name varchar(45), in c_tel varchar(45), in b_room int(11), in b_date date, in b_pay int(11))
BEGIN
	declare c_id int(11);
	if (c_name, c_tel) not in (select name, telephone from customers) then
		insert into customers(name, telephone) values(c_name, c_tel);
    end if;
    set c_id = (select idcustomer from customers where name = c_name and telephone = c_tel);

    if(b_room not in (select rooms_idrooms from bookings where livetime = b_date)) then
      insert into bookings(customer_idcustomer, livetime, rooms_idrooms, payments_idpayments) values(c_id, b_date, b_room, b_pay);
   else
       insert into bookings(customer_idcustomer, livetime, rooms_idrooms, payments_idpayments) values();
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p5_guests_find` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p5_guests_find`(in s varchar(45))
BEGIN
	select * from guestsinfo where 身份证 = s order by 入住时间 desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `bookingafter`
--

/*!50001 DROP VIEW IF EXISTS `bookingafter`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bookingafter` AS select `bookinginfo`.`订单编号` AS `订单编号`,`bookinginfo`.`客户名称` AS `客户名称`,`bookinginfo`.`手机号码` AS `手机号码`,`bookinginfo`.`入住日期` AS `入住日期`,`bookinginfo`.`入住房间` AS `入住房间`,`bookinginfo`.`订单状态` AS `订单状态`,`bookinginfo`.`订单时间` AS `订单时间` from `bookinginfo` where (`bookinginfo`.`入住日期` between (now() - interval 1 day) and (now() + interval 7 day)) order by `bookinginfo`.`入住日期` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bookingbefore`
--

/*!50001 DROP VIEW IF EXISTS `bookingbefore`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bookingbefore` AS select `bookinginfo`.`订单编号` AS `订单编号`,`bookinginfo`.`客户名称` AS `客户名称`,`bookinginfo`.`手机号码` AS `手机号码`,`bookinginfo`.`入住日期` AS `入住日期`,`bookinginfo`.`入住房间` AS `入住房间`,`bookinginfo`.`订单状态` AS `订单状态`,`bookinginfo`.`订单时间` AS `订单时间` from `bookinginfo` where (`bookinginfo`.`入住日期` between (now() - interval 7 day) and now()) order by `bookinginfo`.`入住日期` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bookingcount`
--

/*!50001 DROP VIEW IF EXISTS `bookingcount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bookingcount` AS select `bookings`.`idbookings` AS `订单编号`,`bookings`.`livetime` AS `入住时间`,`bookings`.`rooms_idrooms` AS `入住房间`,`room_type`.`room_typecol` AS `房型`,`price_band`.`price` AS `价格`,`bookings`.`state` AS `订单状态`,`payments`.`paymentscol` AS `支付方式` from ((((`bookings` join `payments`) join `rooms`) join `room_type`) join `price_band`) where ((`bookings`.`payments_idpayments` = `payments`.`idpayments`) and (`bookings`.`rooms_idrooms` = `rooms`.`idrooms`) and (`rooms`.`room_type_idroom_type` = `room_type`.`idroom_type`) and (`price_band`.`idprice_band` = `room_type`.`price_band_idprice_band`)) order by `bookings`.`livetime` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bookinginfo`
--

/*!50001 DROP VIEW IF EXISTS `bookinginfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bookinginfo` AS select `bookings`.`idbookings` AS `订单编号`,`customers`.`name` AS `客户名称`,`customers`.`telephone` AS `手机号码`,`bookings`.`livetime` AS `入住日期`,`bookings`.`rooms_idrooms` AS `入住房间`,`bookings`.`state` AS `订单状态`,`bookings`.`bookingtime` AS `订单时间` from (`bookings` join `customers`) where (`bookings`.`customer_idcustomer` = `customers`.`idcustomer`) order by `bookings`.`livetime` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `guestsinfo`
--

/*!50001 DROP VIEW IF EXISTS `guestsinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `guestsinfo` AS select `guests`.`name` AS `姓名`,`guests`.`sex` AS `性别`,`guests`.`idcard` AS `身份证`,`bookings`.`livetime` AS `入住时间`,`bookings`.`rooms_idrooms` AS `入住房间`,`bookings`.`state` AS `订单状态` from (`guests` join `bookings`) where (`bookings`.`idbookings` = `guests`.`bookings_idbookings`) order by `bookings`.`livetime` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `roominfo`
--

/*!50001 DROP VIEW IF EXISTS `roominfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `roominfo` AS select `rooms`.`idrooms` AS `房间号`,`room_type`.`room_typecol` AS `房型`,`price_band`.`price` AS `价格`,`room_facilities`.`area` AS `面积`,`room_facilities`.`bednum` AS `床`,`room_facilities`.`hairconditon` AS `吹风机`,`room_facilities`.`telephone` AS `电话`,`room_facilities`.`televison` AS `电视`,`room_facilities`.`htoilet` AS `独立卫生间`,`room_facilities`.`bath` AS `浴缸`,`rooms`.`room_state` AS `状态` from ((`room_type` join `price_band`) join (`room_facilities` join `rooms` on((`room_facilities`.`room_type_idroom_type` = `rooms`.`room_type_idroom_type`)))) where ((`room_type`.`price_band_idprice_band` = `price_band`.`idprice_band`) and (`room_type`.`idroom_type` = `room_facilities`.`room_type_idroom_type`) and (`room_facilities`.`room_type_idroom_type` = `room_type`.`idroom_type`)) order by `rooms`.`idrooms` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `roomtypeinfo`
--

/*!50001 DROP VIEW IF EXISTS `roomtypeinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `roomtypeinfo` AS select `room_type`.`room_typecol` AS `房型`,`price_band`.`price` AS `价格`,`room_facilities`.`area` AS `面积`,`room_facilities`.`bednum` AS `床`,`room_facilities`.`hairconditon` AS `吹风机`,`room_facilities`.`telephone` AS `电话`,`room_facilities`.`televison` AS `电视`,`room_facilities`.`htoilet` AS `独立卫生间`,`room_facilities`.`bath` AS `浴缸` from ((`room_type` join `price_band`) join `room_facilities`) where ((`room_type`.`price_band_idprice_band` = `price_band`.`idprice_band`) and (`room_type`.`idroom_type` = `room_facilities`.`room_type_idroom_type`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-31  1:43:29
