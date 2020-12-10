-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: warehouse
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `name` varchar(255) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('Generic Items',1),('Beer',2),('Car Parts',3),('Vegetables',4),('It & Computers',5),('Insurance',6),('bla',7),('some new cat',8);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `creationDate` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name_unique` (`name`),
  UNIQUE KEY `product_code_unique` (`code`),
  KEY `categoryId_idx` (`categoryId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'prod1','Product1','2020-11-26 01:31:42.406',2516.38,1),(2,'prod2','Product2','2020-11-26 01:34:28.78',2516.38,1),(3,'prod3','Product3','2020-11-26 01:40:28.685',2516.38,1),(4,'prod4','Product4','2020-11-26 02:07:31.751',2516.38,1),(5,'prod5','Product5','2020-11-26 02:12:12.012',2516.38,1),(80,'gdfg','gfdg','2020-12-06 01:26:41.05',38019.2,2),(81,'Product 50',' product no 50','2020-12-06 02:59:33.898',14346.3,3),(82,'Product 51',' product no 51','2020-12-06 02:59:37.421',14488.4,3),(83,'Product 52',' product no 52','2020-12-06 02:59:37.765',14630.4,3),(84,'Product 53',' product no 53','2020-12-06 02:59:37.983',14772.5,3),(85,'Product 54',' product no 54','2020-12-06 02:59:38.383',14914.5,3),(86,'Product 55',' product no 55','2020-12-06 02:59:38.594',4829.46,2),(87,'Product 56',' product no 56','2020-12-06 02:59:38.768',3124.95,3),(88,'Product 57',' product no 57','2020-12-06 02:59:38.938',1562.47,3),(89,'Product 58',' product no 58','2020-12-06 02:59:39.133',6107.85,3),(90,'Product 59',' product no 59','2020-12-06 02:59:39.325',94316.5,3),(91,'Product 60',' product no 60','2020-12-06 02:59:39.478',4403.33,4),(92,'Product 61',' product no 61','2020-12-06 02:59:39.642',4971.5,4),(93,'Product 62',' product no 62','2020-12-06 02:59:39.765',6249.89,4),(94,'Product 63',' product no 63','2020-12-06 02:59:39.935',2272.69,4),(95,'Product 64',' product no 64','2020-12-06 02:59:40.107',928108,4),(96,'Product 65',' product no 65','2020-12-06 02:59:40.259',6107.85,4),(97,'Product 66',' product no 66','2020-12-06 02:59:40.403',12215.7,4),(98,'Product 67',' product no 67','2020-12-06 02:59:40.542',6533.98,4),(99,'Product 68',' product no 68','2020-12-06 02:59:40.685',7812.36,4),(100,'Product 69',' product no 69','2020-12-06 02:59:40.871',12641.8,4),(101,'Product 70',' product no 70','2020-12-06 02:59:41.015',6043.93,1),(102,'Product 71',' product no 71','2020-12-06 02:59:41.141',7670.32,1),(103,'Product 72',' product no 72','2020-12-06 02:59:41.274',840.894,1),(104,'Product 73',' product no 73','2020-12-06 02:59:41.37',4971.5,1),(105,'Product 74',' product no 74','2020-12-06 02:59:41.476',7670.32,1),(106,'Product 75',' product no 75','2020-12-06 02:59:41.622',312.494,1),(107,'Product 76',' product no 76','2020-12-06 02:59:41.739',1562.47,1),(108,'Product 77',' product no 77','2020-12-06 02:59:41.846',6533.98,1),(109,'Product 78',' product no 78','2020-12-06 02:59:41.942',7528.27,1),(110,'Product 79',' product no 79','2020-12-06 02:59:42.062',10937.3,1),(111,'Product 80',' product no 80','2020-12-06 02:59:42.193',7827.99,1),(174,'prod insert test 1','prod insert test 1','2020-12-06 09:48:26.068',2478.12,5),(176,'Product 81',' product no 81','2020-12-08 13:40:20.84',131.1,3),(177,'Product 82',' product no 82','2020-12-08 13:40:20.918',144.21,3),(179,'Product 83',' product no 83','2020-12-08 17:09:24.069',196.995,3),(180,'Product 85',' product no 85','2020-12-09 09:43:08.396',1681.87,2),(181,'Product 86',' product no 86','2020-12-09 09:48:13.311',446.033,1),(183,'Product 87',' product no 87','2020-12-09 09:52:43.435',84.9683,1),(185,'Product 89',' product no 89','2020-12-10 09:05:50.79',48.3214,5),(186,'Product 90',' product no 90','2020-12-10 09:05:51.199',48.3214,2),(187,'Product 91',' product no 91','2020-12-10 09:05:51.499',48.3214,2),(188,'Product 92',' product no 92','2020-12-10 09:05:51.667',48.3214,3),(189,'Product 93',' product no 93','2020-12-10 09:05:51.835',48.3214,3),(190,'testp1556','test input web','2020-12-10 12:26:09.427',456,4),(191,'ssdfds','fdsfsgjk','2020-12-10 23:05:13.238',709.5,8);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'warehouse'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `price_increase` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `price_increase` ON SCHEDULE EVERY 1 HOUR STARTS '2020-12-04 16:14:52' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE product SET price = price * 1.1 */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'warehouse'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-10 23:17:26
