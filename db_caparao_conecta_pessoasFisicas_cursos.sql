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
-- Table structure for table `pessoasFisicas_cursos`
--

DROP TABLE IF EXISTS `pessoasFisicas_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoasFisicas_cursos` (
  `id_cursos` int NOT NULL,
  `id_pessoasFisicas` int NOT NULL,
  PRIMARY KEY (`id_cursos`,`id_pessoasFisicas`),
  KEY `fk_cursos_has_candidato_candidato1_idx` (`id_pessoasFisicas`),
  KEY `fk_cursos_has_candidato_cursos1_idx` (`id_cursos`),
  CONSTRAINT `fk_cursos_has_candidato_candidato1` FOREIGN KEY (`id_pessoasFisicas`) REFERENCES `pessoasFisicas` (`id_pessoas`),
  CONSTRAINT `fk_cursos_has_candidato_cursos1` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoasFisicas_cursos`
--

LOCK TABLES `pessoasFisicas_cursos` WRITE;
/*!40000 ALTER TABLE `pessoasFisicas_cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoasFisicas_cursos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-01  8:30:44
