CREATE DATABASE  IF NOT EXISTS `sales` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sales`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sales
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `commision_audit`
--

DROP TABLE IF EXISTS `commision_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commision_audit` (
  `Change_id` int(5) NOT NULL AUTO_INCREMENT,
  `Snum` int(11) NOT NULL,
  `Sname` char(15) NOT NULL,
  `changed_on` datetime DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Change_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commision_audit`
--

LOCK TABLES `commision_audit` WRITE;
/*!40000 ALTER TABLE `commision_audit` DISABLE KEYS */;
INSERT INTO `commision_audit` VALUES (1,1001,'Peel','2019-09-27 14:34:10','Update'),(2,1001,'Peel','2019-10-02 13:45:21','Update'),(3,1002,'Serres','2019-10-02 13:45:21','Update'),(4,1003,'Axelrod','2019-10-02 13:45:21','Update'),(5,1004,'Motika','2019-10-02 13:45:26','Update'),(6,1007,'Rifkin','2019-10-02 13:59:12','Update'),(7,1007,'Rifkin','2019-10-02 13:59:41','Update'),(9,1007,'Rifkin','2019-10-02 14:01:17','Update');
/*!40000 ALTER TABLE `commision_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cnum` int(11) NOT NULL,
  `cname` char(15) DEFAULT NULL,
  `city` char(15) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `snum` int(11) DEFAULT NULL,
  `sname` char(15) DEFAULT NULL,
  PRIMARY KEY (`cnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2001,'Hoffman','London',100,1001,'Peel'),(2002,'Giovanni','Rome',200,1003,'Axelrod'),(2003,'Liu','San Jose',200,1002,'Serres'),(2004,'Grass','Berlin',300,1002,'Serres'),(2006,'Clemens','London',NULL,1001,'Peel'),(2007,'Pereira','Rome',100,1004,'Motika'),(2008,'Cisneros','San Jose',300,1007,'Rifkin');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `onum` int(11) NOT NULL,
  `amot` decimal(8,2) DEFAULT NULL,
  `odate` date DEFAULT NULL,
  `cnum` int(11) DEFAULT NULL,
  `snum` int(11) DEFAULT NULL,
  `sname` char(15) DEFAULT NULL,
  `cname` char(15) DEFAULT NULL,
  PRIMARY KEY (`onum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3000,1309.95,'2000-10-06',2004,1002,'Serres','Grass'),(3001,18.69,'2000-10-03',2008,1007,'Rifkin','Cisneros'),(3002,1900.10,'2000-10-03',2007,1004,'Motika','Pereira'),(3003,767.19,'2000-10-03',2001,1001,'Peel','Hoffman'),(3005,5160.45,'2000-10-03',2003,1002,'Serres','Liu'),(3006,1098.16,'2000-10-03',2008,1007,'Rifkin','Cisneros'),(3007,75.75,'2000-10-04',2004,1002,'Serres','Grass'),(3008,4723.00,'2000-10-05',2006,1001,'Peel','Clemens'),(3009,1713.23,'2000-10-04',2002,1003,'Axelrod','Giovanni'),(3011,9891.88,'2000-10-06',2006,1001,'Peel','Clemens');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salespeople`
--

DROP TABLE IF EXISTS `salespeople`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salespeople` (
  `snum` int(11) NOT NULL,
  `sname` char(15) DEFAULT NULL,
  `city` char(15) DEFAULT NULL,
  `comm` decimal(3,2) DEFAULT NULL,
  `company_car` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`snum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salespeople`
--

LOCK TABLES `salespeople` WRITE;
/*!40000 ALTER TABLE `salespeople` DISABLE KEYS */;
INSERT INTO `salespeople` VALUES (1001,'Peel','London',0.70,'Audi'),(1002,'Serres','San Jose',0.13,'Porsche'),(1003,'Axelrod','New York',0.10,'Mercedes'),(1004,'Motika','London',0.11,'BMW'),(1007,'Rifkin','Barcelona',0.35,'Volvo'),(1009,'Miguel','Valparaiso',0.30,NULL),(1011,'Valdez','Valparaiso',0.40,NULL),(1012,'Valdez','Valparaiso',0.40,NULL),(1021,'Joe','Chicago',0.20,NULL);
/*!40000 ALTER TABLE `salespeople` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 */ /*!50003 TRIGGER `before_salespeople_update` BEFORE UPDATE ON `salespeople` FOR EACH ROW begin
 insert into commision_audit
set action = 'Update',
Snum = old.snum,
sname= old.sname,
 changed_on = now();
 end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
