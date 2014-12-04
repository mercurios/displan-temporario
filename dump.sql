-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: displan_temporario
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `adm_sessions`
--

DROP TABLE IF EXISTS `adm_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adm_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(200) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_sessions`
--

LOCK TABLES `adm_sessions` WRITE;
/*!40000 ALTER TABLE `adm_sessions` DISABLE KEYS */;
INSERT INTO `adm_sessions` VALUES ('48b438594b301aadd125688f83f83311','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:35.0) Gecko/20100101 Firefox/35.0',1416274181,'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:4:{s:2:\"id\";s:1:\"1\";s:5:\"email\";s:18:\"tassianomac@me.com\";s:4:\"name\";s:16:\"Tassiano Alencar\";s:6:\"logado\";b:1;}}'),('ce42fed07578d69d2d9a5a5a8edf643c','::1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.3',1416275218,'a:2:{s:9:\"user_data\";s:0:\"\";s:9:\"logged_in\";a:4:{s:2:\"id\";s:1:\"1\";s:5:\"email\";s:18:\"tassianomac@me.com\";s:4:\"name\";s:16:\"Tassiano Alencar\";s:6:\"logado\";b:1;}}');
/*!40000 ALTER TABLE `adm_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `mensagem` text,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'Tassiano Alencar','Logou no sistema','2014-12-03 10:51:04'),(2,NULL,'Deslogou do sistema','2014-12-03 10:54:13'),(3,'Tassiano Alencar','Logou no sistema','2014-12-03 11:04:52'),(4,'Tassiano Alencar','Logou no sistema','2014-12-03 15:00:42'),(5,'Tassiano Alencar','Cadastrou a operadora (New saúde)','2014-12-03 15:06:47'),(6,'Tassiano Alencar','Atualizou a operadora. (New saúde)','2014-12-03 15:08:36'),(7,'Tassiano Alencar','Atualizou a operadora. (New saúde)','2014-12-03 15:11:37'),(8,'Tassiano Alencar','Atualizou a operadora. (New saúde)','2014-12-03 15:12:10'),(9,'Tassiano Alencar','Cadastrou o plano (Premium)','2014-12-03 15:14:39'),(10,'Tassiano Alencar','Adicionou uma tabela individual.','2014-12-03 15:15:33'),(11,'Tassiano Alencar','Adicionou uma nova tabela empresarial','2014-12-03 15:17:12'),(12,'Tassiano Alencar','Atualizou uma nova tabela empresarial','2014-12-03 15:18:55'),(13,'Tassiano Alencar','Adicionou uma tabela especial.','2014-12-03 17:36:16'),(14,'Tassiano Alencar','Atualizou uma tabela especial.','2014-12-03 17:51:37'),(15,'Tassiano Alencar','Atualizou uma tabela especial.','2014-12-03 17:53:06'),(16,'Tassiano Alencar','Atualizou uma tabela especial.','2014-12-03 17:53:10'),(17,'Tassiano Alencar','Deletou uma tabela especial','2014-12-03 17:53:12'),(18,'Tassiano Alencar','Deletou uma tabela individual','2014-12-03 17:53:22'),(19,'Tassiano Alencar','Atualizou a operadora. (New saúde)','2014-12-03 17:54:16'),(20,'Tassiano Alencar','Atualizou o plano (Premium)','2014-12-03 18:46:31'),(21,'Tassiano Alencar','Logou no sistema','2014-12-04 12:59:09'),(22,'Tassiano Alencar','Adicionou uma tabela individual.','2014-12-04 13:03:30'),(23,'Tassiano Alencar','Logou no sistema','2014-12-04 16:03:17'),(24,'Tassiano Alencar','Cadastrou a operadora (Mercurios Saúde)','2014-12-04 16:04:01'),(25,'Tassiano Alencar','Atualizou a operadora. (Mercurios Saúde)','2014-12-04 16:23:22'),(26,'Tassiano Alencar','Cadastrou a operadora (Unimed Saúde)','2014-12-04 16:32:10'),(27,'Tassiano Alencar','Adicionou uma tabela individual.','2014-12-04 18:23:23'),(28,'Tassiano Alencar','Atualizou uma tabela individual.','2014-12-04 18:23:43'),(29,'Tassiano Alencar','Atualizou uma tabela individual.','2014-12-04 18:25:10');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operadoras`
--

DROP TABLE IF EXISTS `operadoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operadoras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `criado` datetime DEFAULT NULL,
  `editado` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operadoras`
--

LOCK TABLES `operadoras` WRITE;
/*!40000 ALTER TABLE `operadoras` DISABLE KEYS */;
INSERT INTO `operadoras` VALUES (1,'7eb348d7c0230c705d62dd13d841cc9f.png','Mercurios Saúde','2014-12-04 16:04:01','2014-12-04 16:23:22','mercurios-saude'),(2,'88f9ad2434cf6bea56031cbfd5dec540.jpg','Unimed Saúde','2014-12-04 16:32:10','2014-12-04 16:32:10','unimed-saude');
/*!40000 ALTER TABLE `operadoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planos`
--

DROP TABLE IF EXISTS `planos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `operadora_id` varchar(45) DEFAULT NULL,
  `credenciados` text,
  `info` text,
  `criado` datetime DEFAULT NULL,
  `editado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planos`
--

LOCK TABLES `planos` WRITE;
/*!40000 ALTER TABLE `planos` DISABLE KEYS */;
INSERT INTO `planos` VALUES (1,'Premium','1','','','2014-12-03 15:14:39','2014-12-03 18:46:31');
/*!40000 ALTER TABLE `planos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabelas_empresariais`
--

DROP TABLE IF EXISTS `tabelas_empresariais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabelas_empresariais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operadora_id` int(11) DEFAULT NULL,
  `plano_id` int(11) DEFAULT NULL,
  `acomodacao` varchar(45) DEFAULT NULL,
  `titulos` text,
  `categoria` varchar(45) DEFAULT NULL,
  `vida_min` int(11) DEFAULT NULL,
  `vida_max` int(11) DEFAULT NULL,
  `idade0018` text,
  `idade1923` text,
  `idade2428` text,
  `idade2933` text,
  `idade3438` text,
  `idade3943` text,
  `idade4448` text,
  `idade4953` text,
  `idade5458` text,
  `idade59` text,
  `criado` datetime DEFAULT NULL,
  `editado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabelas_empresariais`
--

LOCK TABLES `tabelas_empresariais` WRITE;
/*!40000 ALTER TABLE `tabelas_empresariais` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabelas_empresariais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabelas_especiais`
--

DROP TABLE IF EXISTS `tabelas_especiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabelas_especiais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operadora_id` int(11) DEFAULT NULL,
  `plano_id` int(11) DEFAULT NULL,
  `acomodacao` varchar(45) DEFAULT NULL,
  `categorias` text,
  `titulos` text,
  `idade0018` text,
  `idade1923` text,
  `idade2428` text,
  `idade2933` text,
  `idade3438` text,
  `idade3943` text,
  `idade4448` text,
  `idade4953` text,
  `idade5458` text,
  `idade59` text,
  `criado` datetime DEFAULT NULL,
  `editado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabelas_especiais`
--

LOCK TABLES `tabelas_especiais` WRITE;
/*!40000 ALTER TABLE `tabelas_especiais` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabelas_especiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabelas_individuais`
--

DROP TABLE IF EXISTS `tabelas_individuais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tabelas_individuais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operadora_id` int(11) DEFAULT NULL,
  `plano_id` int(11) DEFAULT NULL,
  `acomodacao` varchar(45) DEFAULT NULL,
  `titulos` text,
  `idade0018` text,
  `idade1923` text,
  `idade2428` text,
  `idade2933` text,
  `idade3438` text,
  `idade3943` text,
  `idade4448` text,
  `idade4953` text,
  `idade5458` text,
  `idade59` text,
  `criado` datetime DEFAULT NULL,
  `editado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabelas_individuais`
--

LOCK TABLES `tabelas_individuais` WRITE;
/*!40000 ALTER TABLE `tabelas_individuais` DISABLE KEYS */;
INSERT INTO `tabelas_individuais` VALUES (1,1,1,'Apartamento','a:1:{i:0;s:6:\"1 Vida\";}','a:1:{i:0;s:6:\"200,00\";}','a:1:{i:0;s:6:\"250,00\";}','a:1:{i:0;s:6:\"260,00\";}','a:1:{i:0;s:6:\"300,00\";}','a:1:{i:0;s:6:\"350,00\";}','a:1:{i:0;s:6:\"400,00\";}','a:1:{i:0;s:6:\"600,00\";}','a:1:{i:0;s:8:\"1.500,00\";}','a:1:{i:0;s:7:\"1550,00\";}','a:1:{i:0;s:8:\"2.000,00\";}','2014-12-04 13:03:30','2014-12-04 13:03:30'),(2,1,1,'Enfermaria','a:2:{i:0;s:6:\"1 Vida\";i:1;s:7:\"2 vidas\";}','a:2:{i:0;s:6:\"200,00\";i:1;s:6:\"200,00\";}','a:2:{i:0;s:6:\"200,00\";i:1;s:6:\"200,00\";}','a:2:{i:0;s:6:\"200,00\";i:1;s:6:\"200,00\";}','a:2:{i:0;s:6:\"200,00\";i:1;s:6:\"200,00\";}','a:2:{i:0;s:6:\"200,00\";i:1;s:6:\"200,00\";}','a:2:{i:0;s:6:\"200,00\";i:1;s:6:\"200,00\";}','a:2:{i:0;s:6:\"200,00\";i:1;s:6:\"200,00\";}','a:2:{i:0;s:6:\"200,00\";i:1;s:6:\"200,00\";}','a:2:{i:0;s:6:\"200,00\";i:1;s:6:\"200,00\";}','a:2:{i:0;s:6:\"200,00\";i:1;s:6:\"200,00\";}','2014-12-04 18:23:23','2014-12-04 18:25:10');
/*!40000 ALTER TABLE `tabelas_individuais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Tassiano Alencar','tassianomac@me.com','21232f297a57a5a743894a0e4a801fc3',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-04 19:06:02
