CREATE DATABASE  IF NOT EXISTS `sistema_imobiliario` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistema_imobiliario`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_imobiliario
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_propriedade` int NOT NULL,
  `nota` int NOT NULL,
  `comentario` text,
  PRIMARY KEY (`id`),
  KEY `id_propriedade` (`id_propriedade`),
  CONSTRAINT `avaliacoes_ibfk_1` FOREIGN KEY (`id_propriedade`) REFERENCES `propriedade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacoes`
--

LOCK TABLES `avaliacoes` WRITE;
/*!40000 ALTER TABLE `avaliacoes` DISABLE KEYS */;
INSERT INTO `avaliacoes` VALUES (1,2,0,'piririrpirporporop'),(2,2,0,'MUITO LEGAL'),(3,2,0,'LUGAR AGRADAVEL'),(4,2,0,'Nao gostei'),(5,5,0,'Bom'),(6,17,0,'Impecavel'),(7,6,0,'sadwadasd');
/*!40000 ALTER TABLE `avaliacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propriedade`
--

DROP TABLE IF EXISTS `propriedade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propriedade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cnpj` bigint DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `areaimovel` double DEFAULT NULL,
  `valordiaria` double DEFAULT NULL,
  `caracteristicas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propriedade`
--

LOCK TABLES `propriedade` WRITE;
/*!40000 ALTER TABLE `propriedade` DISABLE KEYS */;
INSERT INTO `propriedade` VALUES (1,12345678901234,'jose@jose','46988074645','Fonseca 829','Palmas','PR',123,1230,'nada'),(2,37752092618812,'jose@jose','46999002233','Lazio 22','Palmas','PR',234,1000,'Boa Localizaçao'),(3,6224372987153,'jose@jose','46998882221','Espedicionario 233','Palmas','PR',221,2000,'Centro da Cidade'),(4,52316549874532,'jose@jose','46988234555','Orvalina Oliveira 882','Palmas','PR',234,1111,'Aconchegante, perto mercados e farmacias'),(5,13658745697456,'artur@artur','469223344','Marco Polo 245','Palmas','PR',125,700,'Aconchegante'),(6,17493513487954,'jose@jose126','46998654213','Rua das Palmeiras 120','São Paulo','SP',120.5,1546.8,'moderno,bem localizado,pacote completo'),(7,62478599163873,'maria@maria544','46997543214','Centro 212','Rio de Janeiro','RJ',200,1875.3,'bonito,limpo,arrumado'),(8,43827609850124,'pedro@pedro033','46992634922','Avenida Brasil 876','Belo Horizonte','MG',140.3,1450.5,'perto de farmácias,mercados,transporte'),(9,85792049742368,'jose@jose733','46990284757','Rua do Sol 450','Salvador','BA',158,1205.9,'novo,bem decorado,confortável'),(10,73846278539357,'artur@artur199','46991223843','Jardim das Flores 303','Curitiba','PR',112,1678.25,'seguro,organizado,calmo'),(11,13958276490365,'maria@maria555','46999874532','Rua das Palmeiras 908','Brasília','DF',145.5,1340.75,'moderno,bem decorado,confortável'),(13,23478523769815,'jose@jose753','46997638940','Rua das Rosas 445','Manaus','AM',160,1874.4,'bonito,limpo,arrumado'),(14,62458723978356,'artur@artur250','46993214758','Rua do Porto 123','Recife','PE',155.8,2000,'amplo,bem ventilado,iluminado'),(15,14563269823547,'maria@maria234','46992847460','Avenida das Américas 111','Porto Alegre','RS',130.9,1452.2,'moderno,bem localizado,pacote completo'),(16,98345874623560,'pedro@pedro443','46993563213','Rua das Flores 902','Campinas','SP',200.1,1580.5,'seguro,organizado,calmo'),(17,37658924518902,'jose@jose9021','46996874420','Praça Central 213','São Luís','MA',170,1520.75,'novo,bem decorado,confortável'),(18,15834769201423,'artur@artur320','46992457890','Rua da Paz 467','Florianópolis','SC',142.5,1390.9,'perto de farmácias,mercados,transporte'),(19,25948583624918,'maria@maria656','46994322875','Rua do Sol 232','Aracaju','SE',180.2,2000,'bonito,limpo,arrumado'),(21,72358927845163,'jose@jose563','46992215438','Avenida Central 783','Belém','PA',160.9,1680,'moderno,bem decorado,confortável'),(22,18927638579154,'artur@artur250','46998126524','Rua dos Jacarandás 225','Vitória','ES',115.7,1235.8,'perto de escolas,mercados,transporte'),(23,15974838549263,'maria@maria412','46993958812','Avenida Costa e Silva 812','Cuiabá','MT',140.8,1790.5,'seguro,organizado,calmo'),(24,27364529486152,'pedro@pedro828','46995487459','Rua do Lago 540','Campo Grande','MS',138,1545.3,'bonito,limpo,arrumado'),(25,37594619597324,'jose@jose322','46998065412','Rua das Acácias 611','João Pessoa','PB',122.1,1600,'moderno,bem localizado,pacote completo'),(26,68456198760345,'artur@artur500','46993875533','Avenida Brasil 999','São Paulo','SP',175.3,1865.5,'amplo,bem ventilado,iluminado'),(27,35896248738456,'maria@maria775','46996587431','Rua da Independência 188','Rio de Janeiro','RJ',130.6,1225,'perto de farmácias,mercados,transporte'),(28,24985673419324,'pedro@pedro771','46993725418','Avenida das Palmeiras 232','Salvador','BA',150,1555,'bonito,limpo,arrumado'),(29,68249537569321,'jose@jose563','46992458319','Rua do Sol 332','Curitiba','PR',165,1902.5,'seguro,organizado,calmo'),(30,85974632097314,'artur@artur347','46991234756','Rua das Mangueiras 331','Florianópolis','SC',180,1845.1,'moderno,bem decorado,confortável'),(31,18349573629945,'maria@maria101','46993754212','Avenida Rio Branco 785','Campinas','SP',115.3,1250.9,'perto de escolas,mercados,transporte'),(32,92745628304657,'pedro@pedro567','46993258724','Rua do Parque 512','Belém','PA',120,1368,'bonito,limpo,arrumado'),(33,17486257382064,'jose@jose115','46995341276','Avenida Senador 724','Porto Alegre','RS',165,1570,'perto de farmácias,mercados,transporte'),(34,63895137483622,'artur@artur485','46993341265','Rua de Cima 895','São Luís','MA',180.5,1600.5,'amplo,bem ventilado,iluminado'),(35,92147653948125,'maria@maria809','46997123458','Rua Central 999','Recife','PE',170,1420.75,'moderno,bem decorado,confortável');
/*!40000 ALTER TABLE `propriedade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `tipo_usuario` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Artur Nunes','artur@artur','1234','Avaliador'),(2,'Jose','jose@jose','1234','Corretor');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-23 16:18:32
