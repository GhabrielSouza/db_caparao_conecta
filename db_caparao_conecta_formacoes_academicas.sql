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
-- Table structure for table `formacoes_academicas`
--

DROP TABLE IF EXISTS `formacoes_academicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacoes_academicas` (
  `id_formacoes_academicas` int NOT NULL,
  `escolaridade` varchar(255) NOT NULL,
  `area_de_estudo` varchar(255) DEFAULT NULL,
  `diploma_formacao` tinyint NOT NULL,
  `conclusao_formacao` tinyint NOT NULL,
  `data_emissao` date NOT NULL,
  `data_conclusao` date NOT NULL,
  `id_pessoasFisicas` int NOT NULL,
  `id_instituicoes` int NOT NULL,
  PRIMARY KEY (`id_formacoes_academicas`),
  KEY `fk_Formacao_academica_Candidato1_idx` (`id_pessoasFisicas`),
  KEY `fk_formacao_academica_instituicao1_idx` (`id_instituicoes`),
  CONSTRAINT `fk_Formacao_academica_Candidato1` FOREIGN KEY (`id_pessoasFisicas`) REFERENCES `pessoasFisicas` (`id_pessoas`),
  CONSTRAINT `fk_formacao_academica_instituicao1` FOREIGN KEY (`id_instituicoes`) REFERENCES `instituicoes` (`id_instituicoes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacoes_academicas`
--

LOCK TABLES `formacoes_academicas` WRITE;
/*!40000 ALTER TABLE `formacoes_academicas` DISABLE KEYS */;
/*!40000 ALTER TABLE `formacoes_academicas` ENABLE KEYS */;
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
