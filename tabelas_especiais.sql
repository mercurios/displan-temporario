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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
