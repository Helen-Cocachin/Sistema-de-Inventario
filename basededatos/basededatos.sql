-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: basededatos
-- ------------------------------------------------------
-- Server version	8.4.5

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `importe_comprado` double DEFAULT NULL,
  `importe_pagado` double DEFAULT NULL,
  `importe_debido` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Estrella','juan@mail.com','123456','Calle Falsa 123',2000,1500,0),(2,'Evelin','Evelin7@gmail.com','987654231','calle 1,nuevo chimbote,chimbote',3000,2000,0),(3,'Joselin','Joselin@gmail.com','985478632','calle 3,nuevo chimbote,chimbote',9000,4000,NULL),(14,'Marisol','marisolsanchez@gamil.com','975684234','calle10,Pinos,Lima',11110,11110,111110),(35,'Gadiel','u22222779@utp.edu.pe','975684234','callev2',400.2,57214.01,152242),(36,'Maiiiiii@gamil.comcccccccccccc','marisolllllllll@gamil.com','975684234','calle10,Pinos,Lima',0,0,0),(37,'Maiiiiii@gamil.comcccccccccccc','marisolllllllll@gamil.com','975684234','calle10,Pinos,Lima',0,0,0),(38,'SANTIAGO','santiago@gmail.com','987456321','calle7,Lima,Lima',0,0,0),(39,'SANTIAGO','santiago@gmail.com','987456321','calle7,Lima,Lima',0,0,0),(40,'SANTIAGO','santiago@gmail.com','987456321','calle7,Lima,Lima',0,0,0),(41,'santiago@gmail.com','santiago@gmail.com','987456321','calle7,Lima,Lima',0,0,0),(42,'santiago@gmail.com','santiago@gmail.com','987456321','calle7,Lima,Lima',0,0,0),(43,'santiago@gmail.com','santiago@gmail.com','987456321','calle7,Lima,Lima',0,0,0),(44,'santiago@gmail.com','santiago@gmail.com','987456321','calle7,Lima,Lima',0,0,0),(45,'santiago@gmail.com','santiago@gmail.com','987456321','calle7,Lima,Lima',0,0,0),(46,'santiago@gmail.com','santiago@gmail.com','987456321','calle7,Lima,Lima',0,0,0),(47,'Gadiel','u22222779@utp.edu.pe','975684234','callev2',400.2,57214.01,152242),(48,'santiago@gmail.com','santiago@gmail.com','987456321','calle7,Lima,Lima',0,0,0);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','admin123',NULL),(2,'Gadiel','clave1',NULL),(3,'Evelin','clave2',NULL),(4,'Helen','clave3',NULL),(5,'Leslie','clave4',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-24  1:43:37
