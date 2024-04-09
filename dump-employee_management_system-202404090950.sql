-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_management_system
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` text DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('29','ravindu@gmail.com','Ravi','Ravis'),('30','dulnka@gmail.com','Dunal','Nariz'),('20','Danisha','Tharangi','dashi'),('50','darshan','nameis','dulsa'),(NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentdb`
--

DROP TABLE IF EXISTS `studentdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentdb` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentdb`
--

LOCK TABLES `studentdb` WRITE;
/*!40000 ALTER TABLE `studentdb` DISABLE KEYS */;
INSERT INTO `studentdb` VALUES (1,'Manorias'),(2,'ShriyaniyasFashion Ltd');
/*!40000 ALTER TABLE `studentdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentdb1`
--

DROP TABLE IF EXISTS `studentdb1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentdb1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentdb1`
--

LOCK TABLES `studentdb1` WRITE;
/*!40000 ALTER TABLE `studentdb1` DISABLE KEYS */;
INSERT INTO `studentdb1` VALUES (102,'Manori','25642'),(202,'Manori','1971'),(252,'Piyath Rajapaksha','123piyath'),(253,'Malinda Geethanjana','Malith123'),(254,'Yasindu Bimsara','5698'),(255,'Ruwan Hettiyarchchi','Ruwan123'),(256,'sdf','sdf'),(257,'Manori','712fsd6'),(258,'Mano','712fsd6'),(259,'ffd','fdgdf'),(302,'omar','omar'),(303,'hasantha','564'),(304,'rawimal','rawimal'),(305,'saman','saman');
/*!40000 ALTER TABLE `studentdb1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentdb1_seq`
--

DROP TABLE IF EXISTS `studentdb1_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentdb1_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentdb1_seq`
--

LOCK TABLES `studentdb1_seq` WRITE;
/*!40000 ALTER TABLE `studentdb1_seq` DISABLE KEYS */;
INSERT INTO `studentdb1_seq` VALUES (401);
/*!40000 ALTER TABLE `studentdb1_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentdb_seq`
--

DROP TABLE IF EXISTS `studentdb_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentdb_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentdb_seq`
--

LOCK TABLES `studentdb_seq` WRITE;
/*!40000 ALTER TABLE `studentdb_seq` DISABLE KEYS */;
INSERT INTO `studentdb_seq` VALUES (101);
/*!40000 ALTER TABLE `studentdb_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (252,'Manorias');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students1`
--

DROP TABLE IF EXISTS `students1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students1`
--

LOCK TABLES `students1` WRITE;
/*!40000 ALTER TABLE `students1` DISABLE KEYS */;
/*!40000 ALTER TABLE `students1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students1_seq`
--

DROP TABLE IF EXISTS `students1_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students1_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students1_seq`
--

LOCK TABLES `students1_seq` WRITE;
/*!40000 ALTER TABLE `students1_seq` DISABLE KEYS */;
INSERT INTO `students1_seq` VALUES (201);
/*!40000 ALTER TABLE `students1_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students24`
--

DROP TABLE IF EXISTS `students24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students24` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students24`
--

LOCK TABLES `students24` WRITE;
/*!40000 ALTER TABLE `students24` DISABLE KEYS */;
INSERT INTO `students24` VALUES (1,'Manorias');
/*!40000 ALTER TABLE `students24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students24_seq`
--

DROP TABLE IF EXISTS `students24_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students24_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students24_seq`
--

LOCK TABLES `students24_seq` WRITE;
/*!40000 ALTER TABLE `students24_seq` DISABLE KEYS */;
INSERT INTO `students24_seq` VALUES (51);
/*!40000 ALTER TABLE `students24_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_seq`
--

DROP TABLE IF EXISTS `students_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_seq`
--

LOCK TABLES `students_seq` WRITE;
/*!40000 ALTER TABLE `students_seq` DISABLE KEYS */;
INSERT INTO `students_seq` VALUES (351);
/*!40000 ALTER TABLE `students_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'employee_management_system'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09  9:50:47
