-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (x86_64)
--
-- Host: localhost    Database: db_caparao_conecta
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `vagas_habilidades`
--

DROP TABLE IF EXISTS `vagas_habilidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vagas_habilidades` (
  `id_habilidades` int NOT NULL,
  `id_vagas` int NOT NULL,
  PRIMARY KEY (`id_habilidades`,`id_vagas`),
  KEY `fk_habilidades_has_vagas_vagas1_idx` (`id_vagas`),
  KEY `fk_habilidades_has_vagas_habilidades1_idx` (`id_habilidades`),
  CONSTRAINT `fk_habilidades_has_vagas_habilidades1` FOREIGN KEY (`id_habilidades`) REFERENCES `habilidades` (`id_habilidades`),
  CONSTRAINT `fk_habilidades_has_vagas_vagas1` FOREIGN KEY (`id_vagas`) REFERENCES `vagas` (`id_vagas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagas_habilidades`
--

LOCK TABLES `vagas_habilidades` WRITE;
/*!40000 ALTER TABLE `vagas_habilidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `vagas_habilidades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-01  8:30:43
