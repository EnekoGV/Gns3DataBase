-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: parkit_db
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking`
--

DROP TABLE IF EXISTS `parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `capacity` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priceperday` float NOT NULL,
  `priceperhour` float NOT NULL,
  `pricepermonth` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking`
--

LOCK TABLES `parking` WRITE;
/*!40000 ALTER TABLE `parking` DISABLE KEYS */;
INSERT INTO `parking` VALUES (1,'Gurtubay Kalea, 1, 48013 Bilbo, Bizkaia',15,'SanMames',18,3,100),(2,'Don Diego López Haroko Kale Nagusia, 45, 48009 Bilbo, Bizkaia',15,'Moyua',18,3,100),(3,'Areatzako Pasealekua, 1, 48005 Bilbo, Bizkaia',15,'AldeZaharra',18,3,100);
/*!40000 ALTER TABLE `parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor`
--

DROP TABLE IF EXISTS `sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensor` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `parking_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8uffmjsri1g74hyynyiebo8cv` (`parking_id`),
  CONSTRAINT `FK8uffmjsri1g74hyynyiebo8cv` FOREIGN KEY (`parking_id`) REFERENCES `parking` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor`
--

LOCK TABLES `sensor` WRITE;
/*!40000 ALTER TABLE `sensor` DISABLE KEYS */;
INSERT INTO `sensor` VALUES (1,'sensor1',_binary '\0',1),(2,'sensor2',_binary '',1),(3,'sensor3',_binary '\0',1),(4,'sensor4',_binary '',1),(5,'sensor5',_binary '\0',1),(6,'sensor6',_binary '',1),(7,'sensor7',_binary '\0',1),(8,'sensor8',_binary '',1),(9,'sensor9',_binary '\0',1),(10,'sensor10',_binary '',1),(11,'sensor11',_binary '\0',1),(12,'sensor12',_binary '',1),(13,'sensor13',_binary '\0',1),(14,'sensor14',_binary '',1),(15,'sensor15',_binary '\0',1),(16,'sensor16',_binary '',2),(17,'sensor17',_binary '\0',2),(18,'sensor18',_binary '',2),(19,'sensor19',_binary '\0',2),(20,'sensor20',_binary '',2),(21,'sensor21',_binary '\0',2),(22,'sensor22',_binary '',2),(23,'sensor23',_binary '\0',2),(24,'sensor24',_binary '',2),(25,'sensor25',_binary '\0',2),(26,'sensor26',_binary '',2),(27,'sensor27',_binary '\0',2),(28,'sensor28',_binary '',2),(29,'sensor29',_binary '\0',2),(30,'sensor30',_binary '',2),(31,'sensor31',_binary '\0',3),(32,'sensor32',_binary '',3),(33,'sensor33',_binary '\0',3),(34,'sensor34',_binary '',3),(35,'sensor35',_binary '\0',3),(36,'sensor36',_binary '',3),(37,'sensor37',_binary '\0',3),(38,'sensor38',_binary '',3),(39,'sensor39',_binary '\0',3),(40,'sensor40',_binary '',3),(41,'sensor41',_binary '\0',3),(42,'sensor42',_binary '',3),(43,'sensor43',_binary '\0',3),(44,'sensor44',_binary '',3),(45,'sensor45',_binary '\0',3);
/*!40000 ALTER TABLE `sensor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-24  3:26:25
