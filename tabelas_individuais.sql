-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 02/12/2014 às 12:59
-- Versão do servidor: 5.5.40-0ubuntu0.14.04.1
-- Versão do PHP: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `displan_temporario`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabelas_individuais`
--

CREATE TABLE IF NOT EXISTS `tabelas_individuais` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
