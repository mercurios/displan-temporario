-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 03/02/2015 às 17:37
-- Versão do servidor: 5.5.37-cll
-- Versão do PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `displan_tmp`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adm_sessions`
--

CREATE TABLE IF NOT EXISTS `adm_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(255) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `adm_sessions`
--

INSERT INTO `adm_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('ce99c6e9e96fb3b0d2a213a5d8feba50', '200.215.168.216', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1421420203, 'a:3:{s:9:"user_data";s:0:"";s:9:"logged_in";a:4:{s:2:"id";s:1:"1";s:5:"email";s:17:"admin@displan.com";s:4:"name";s:13:"Administrador";s:6:"logado";b:1;}s:20:"flash:old:msgSuccess";s:30:"Tabela atualizada com sucesso!";}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  `criado` datetime DEFAULT NULL,
  `editado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Fazendo dump de dados para tabela `categorias`
--

INSERT INTO `categorias` (`id`, `name`, `slug`, `criado`, `editado`) VALUES
(3, 'Advogados', 'advogados', '2014-12-15 09:53:57', '2014-12-15 09:53:57'),
(4, 'Arquitetos', 'arquitetos', '2014-12-15 09:54:18', '2014-12-15 09:54:18'),
(5, 'Enfermeiros', 'enfermeiros', '2014-12-15 09:54:54', '2014-12-15 09:54:54'),
(6, 'Engenheiros', 'engenheiros', '2014-12-15 09:55:03', '2014-12-15 09:55:03'),
(7, 'Estudantes', 'estudantes', '2014-12-15 09:55:11', '2014-12-15 09:55:11'),
(8, 'Físioterapeutas', 'fisioterapeutas', '2014-12-15 10:00:42', '2014-12-15 10:00:42'),
(10, 'Agronomos', 'agronomos', '2014-12-15 10:00:59', '2014-12-15 10:00:59'),
(11, 'Comerciantes (CDL)', 'comerciantes-cdl', '2014-12-19 12:16:19', '2014-12-19 12:16:19'),
(12, 'Administradores', 'administradores', '2014-12-19 13:46:49', '2014-12-19 13:46:49'),
(13, 'Profissionais de ED. Física', 'profissionais-de-ed-fisica', '2014-12-19 13:47:31', '2014-12-19 13:47:31'),
(14, 'Profissionais liberais', 'profissionais-liberais', '2014-12-19 13:49:16', '2014-12-19 13:49:16'),
(15, 'Funcionários públicos', 'funcionarios-publicos', '2014-12-19 13:51:07', '2014-12-19 13:51:07'),
(16, 'Médicos', 'medicos', '2014-12-19 20:24:49', '2014-12-19 20:24:49'),
(17, 'Relações públicas', 'relac-es-publicas', '2014-12-19 20:25:04', '2014-12-19 20:25:19'),
(18, 'Economistas', 'economistas', '2014-12-19 20:25:31', '2014-12-19 20:25:31'),
(19, 'Contabilistas', 'contabilistas', '2014-12-19 20:25:43', '2014-12-19 20:25:43'),
(20, 'Fonoaudiólogos', 'fonoaudiologos', '2014-12-19 20:26:00', '2014-12-19 20:26:00'),
(21, 'Farmacêuticos', 'farmac-uticos', '2014-12-19 20:26:23', '2014-12-19 20:26:23'),
(22, 'Veterinários', 'veterinarios', '2014-12-19 20:26:47', '2014-12-19 20:26:47'),
(23, 'Nutricionistas', 'nutricionistas', '2014-12-19 20:29:20', '2014-12-19 20:29:20'),
(24, 'Dentistas', 'dentistas', '2014-12-19 20:29:51', '2014-12-19 20:29:51'),
(25, 'Psicólogos', 'psicologos', '2014-12-19 20:30:39', '2014-12-19 20:30:39'),
(26, 'Empregadores do comércio e serviços', 'empregadores-do-comercio-e-servicos', '2014-12-19 20:31:05', '2014-12-19 21:28:39'),
(27, 'Profissionais do comércio e serviços', 'profissionais-do-comercio-e-servicos', '2014-12-19 20:32:04', '2014-12-19 20:32:17'),
(28, 'Jornalistas', 'jornalistas', '2014-12-19 20:32:27', '2014-12-19 20:32:27');

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `mensagem` text,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=367 ;

--
-- Fazendo dump de dados para tabela `logs`
--

INSERT INTO `logs` (`id`, `usuario`, `mensagem`, `data`) VALUES
(1, 'Administrador', 'Logou no sistema', '2014-12-10 11:19:18'),
(2, 'Administrador', 'Logou no sistema', '2014-12-10 11:28:44'),
(3, 'Administrador', 'Cadastrou um administrador (Tassiano Alencar)', '2014-12-10 11:35:55'),
(4, 'Administrador', 'Logou no sistema', '2014-12-10 14:46:49'),
(5, 'Administrador', 'Cadastrou a operadora (HapVida)', '2014-12-10 14:48:30'),
(6, 'Administrador', 'Cadastrou o plano (Standard)', '2014-12-10 14:49:00'),
(7, 'Administrador', 'Logou no sistema', '2014-12-10 14:49:23'),
(8, 'Administrador', 'Adicionou uma tabela individual.', '2014-12-10 14:50:47'),
(9, 'Administrador', 'Logou no sistema', '2014-12-10 14:51:38'),
(10, 'Administrador', 'Atualizou uma tabela individual.', '2014-12-10 14:53:11'),
(11, 'Administrador', 'Logou no sistema', '2014-12-10 15:00:29'),
(12, 'Administrador', 'Atualizou a operadora. (HapVida)', '2014-12-10 15:01:39'),
(13, 'Administrador', 'Logou no sistema', '2014-12-10 15:04:44'),
(14, 'Tassiano Alencar', 'Logou no sistema', '2014-12-10 15:57:48'),
(15, 'Tassiano Alencar', 'Logou no sistema', '2014-12-10 16:00:38'),
(16, 'Tassiano Alencar', 'Logou no sistema', '2014-12-10 16:02:19'),
(17, 'Administrador', 'Logou no sistema', '2014-12-10 16:07:38'),
(18, 'Administrador', 'Adicionou uma nova tabela empresarial', '2014-12-10 17:51:53'),
(19, 'Administrador', 'Atualizou uma nova tabela empresarial', '2014-12-10 18:31:25'),
(20, NULL, 'Cadastrou a categoria (Advogados)', '2014-12-10 18:32:07'),
(21, NULL, 'Cadastrou a categoria (Engenheiros)', '2014-12-10 18:32:19'),
(22, 'Administrador', 'Adicionou uma tabela especial.', '2014-12-10 18:33:09'),
(23, 'Administrador', 'Cadastrou a operadora (Sul América)', '2014-12-10 18:34:13'),
(24, 'Administrador', 'Cadastrou o plano (Básico)', '2014-12-10 18:34:44'),
(25, 'Administrador', 'Atualizou o plano (Standard)', '2014-12-10 18:35:13'),
(26, 'Administrador', 'Cadastrou o plano (Especial)', '2014-12-10 18:35:53'),
(27, 'Administrador', 'Adicionou uma tabela especial.', '2014-12-10 18:36:36'),
(28, 'Administrador', 'Adicionou uma tabela especial.', '2014-12-10 18:37:02'),
(29, 'Administrador', 'Atualizou uma tabela especial.', '2014-12-10 18:42:49'),
(30, 'Tassiano Alencar', 'Logou no sistema', '2014-12-10 18:47:03'),
(31, 'Administrador', 'Logou no sistema', '2014-12-11 11:24:16'),
(32, 'Administrador', 'Adicionou uma nova tabela empresarial', '2014-12-11 11:38:00'),
(33, 'Administrador', 'Deletou uma tabela especial', '2014-12-11 13:29:52'),
(34, 'Tassiano Alencar', 'Logou no sistema', '2014-12-11 14:54:28'),
(35, 'Administrador', 'Logou no sistema', '2014-12-11 19:55:25'),
(36, 'Administrador', 'Logou no sistema', '2014-12-12 12:20:35'),
(37, NULL, 'Deletou uma tabela individual', '2014-12-12 12:20:50'),
(38, NULL, 'Deletou uma tabela empresarial', '2014-12-12 12:20:59'),
(39, NULL, 'Deletou uma tabela empresarial', '2014-12-12 12:21:05'),
(40, NULL, 'Deletou uma tabela especial', '2014-12-12 12:21:15'),
(41, NULL, 'Deletou uma tabela especial', '2014-12-12 12:21:18'),
(42, NULL, 'Deletou a categoria (Advogados)', '2014-12-12 12:21:26'),
(43, NULL, 'Deletou a categoria (Engenheiros)', '2014-12-12 12:21:29'),
(44, NULL, 'Deletou uma plano. (Standard)', '2014-12-12 12:21:35'),
(45, NULL, 'Deletou uma plano. (Básico)', '2014-12-12 12:21:45'),
(46, NULL, 'Deletou uma plano. (Especial)', '2014-12-12 12:21:49'),
(47, NULL, 'Deletou a operadora (HapVida)', '2014-12-12 12:21:56'),
(48, NULL, 'Deletou a operadora (Sul América)', '2014-12-12 12:22:00'),
(49, NULL, 'Cadastrou a operadora (HapVida)', '2014-12-12 12:25:16'),
(50, NULL, 'Atualizou a operadora. (HapVida)', '2014-12-12 12:25:38'),
(51, 'Administrador', 'Logou no sistema', '2014-12-12 18:12:09'),
(52, NULL, 'Cadastrou o plano (Standard)', '2014-12-12 19:35:34'),
(53, 'Administrador', 'Logou no sistema', '2014-12-12 19:35:56'),
(54, NULL, 'Adicionou uma tabela individual.', '2014-12-12 19:39:33'),
(55, NULL, 'Adicionou uma nova tabela empresarial', '2014-12-12 20:09:55'),
(56, 'Administrador', 'Logou no sistema', '2014-12-13 18:47:57'),
(57, NULL, 'Atualizou o plano (Nosso Plano)', '2014-12-13 18:48:31'),
(58, NULL, 'Adicionou uma tabela individual.', '2014-12-13 18:50:01'),
(59, NULL, 'Atualizou uma tabela individual.', '2014-12-13 19:16:41'),
(60, NULL, 'Atualizou uma tabela individual.', '2014-12-13 19:24:32'),
(61, NULL, 'Cadastrou o plano (Mix)', '2014-12-13 19:25:02'),
(62, NULL, 'Adicionou uma tabela individual.', '2014-12-13 19:35:54'),
(63, NULL, 'Adicionou uma tabela individual.', '2014-12-13 19:44:58'),
(64, 'Administrador', 'Logou no sistema', '2014-12-15 09:46:13'),
(65, NULL, 'Cadastrou a categoria (Advogados)', '2014-12-15 09:53:57'),
(66, NULL, 'Cadastrou a categoria (Arquitetos)', '2014-12-15 09:54:18'),
(67, NULL, 'Cadastrou a categoria (Enfermeiros)', '2014-12-15 09:54:54'),
(68, NULL, 'Cadastrou a categoria (Engenheiros)', '2014-12-15 09:55:03'),
(69, NULL, 'Cadastrou a categoria (Estudantes)', '2014-12-15 09:55:11'),
(70, NULL, 'Cadastrou a categoria (Físioterapeutas)', '2014-12-15 10:00:42'),
(71, NULL, 'Cadastrou a categoria (Agronomos)', '2014-12-15 10:00:58'),
(72, NULL, 'Cadastrou a categoria (Agronomos)', '2014-12-15 10:01:00'),
(73, NULL, 'Adicionou uma tabela especial.', '2014-12-15 10:03:32'),
(74, NULL, 'Adicionou uma tabela especial.', '2014-12-15 10:04:20'),
(75, NULL, 'Deletou a categoria (Agronomos)', '2014-12-15 10:05:05'),
(76, 'Administrador', 'Logou no sistema', '2014-12-15 10:18:01'),
(77, NULL, 'Atualizou uma tabela individual.', '2014-12-15 10:19:40'),
(78, NULL, 'Atualizou uma tabela individual.', '2014-12-15 10:21:11'),
(79, NULL, 'Atualizou uma tabela individual.', '2014-12-15 10:21:53'),
(80, NULL, 'Atualizou uma tabela individual.', '2014-12-15 10:22:14'),
(81, NULL, 'Atualizou uma tabela especial.', '2014-12-15 10:34:27'),
(82, NULL, 'Atualizou uma tabela especial.', '2014-12-15 10:34:39'),
(83, NULL, 'Atualizou uma tabela especial.', '2014-12-15 10:35:05'),
(84, NULL, 'Atualizou uma tabela especial.', '2014-12-15 10:53:59'),
(85, NULL, 'Atualizou uma tabela especial.', '2014-12-15 10:54:19'),
(86, NULL, 'Atualizou uma tabela especial.', '2014-12-15 10:54:29'),
(87, NULL, 'Adicionou uma tabela especial.', '2014-12-15 10:55:31'),
(88, NULL, 'Deletou uma tabela especial', '2014-12-15 10:55:46'),
(89, 'Administrador', 'Logou no sistema', '2014-12-15 12:48:37'),
(90, NULL, 'Atualizou uma tabela especial.', '2014-12-15 12:49:51'),
(91, NULL, 'Atualizou uma tabela especial.', '2014-12-15 12:50:20'),
(92, NULL, 'Atualizou uma tabela especial.', '2014-12-15 12:50:48'),
(93, 'Administrador', 'Logou no sistema', '2014-12-18 17:33:05'),
(94, 'Administrador', 'Logou no sistema', '2014-12-18 19:46:43'),
(95, NULL, 'Cadastrou a operadora (Amil)', '2014-12-18 20:49:47'),
(96, NULL, 'Atualizou a operadora. (HapVida)', '2014-12-18 20:51:32'),
(97, NULL, 'Cadastrou a operadora (Bradesco)', '2014-12-18 21:02:45'),
(98, NULL, 'Cadastrou a operadora (Sul América)', '2014-12-18 21:34:56'),
(99, 'Administrador', 'Logou no sistema', '2014-12-19 12:03:33'),
(100, NULL, 'Cadastrou a operadora (Unilife)', '2014-12-19 12:07:39'),
(101, NULL, 'Cadastrou a operadora (Unimed Recife)', '2014-12-19 12:08:08'),
(102, NULL, 'Cadastrou a operadora (Viva saúde)', '2014-12-19 12:08:30'),
(103, NULL, 'Atualizou a operadora. (HapVida)', '2014-12-19 12:09:14'),
(104, NULL, 'Cadastrou o plano (Blue 200)', '2014-12-19 12:14:21'),
(105, NULL, 'Cadastrou o plano (Blue 300)', '2014-12-19 12:14:36'),
(106, NULL, 'Cadastrou o plano (Blue 400)', '2014-12-19 12:14:54'),
(107, NULL, 'Cadastrou o plano (Blue 500)', '2014-12-19 12:15:08'),
(108, NULL, 'Cadastrou o plano (Blue 600)', '2014-12-19 12:15:26'),
(109, NULL, 'Cadastrou a categoria (Comerciantes (CDL))', '2014-12-19 12:16:20'),
(110, NULL, 'Adicionou uma tabela especial.', '2014-12-19 12:18:07'),
(111, NULL, 'Adicionou uma tabela especial.', '2014-12-19 12:18:58'),
(112, NULL, 'Adicionou uma tabela especial.', '2014-12-19 12:29:57'),
(113, NULL, 'Adicionou uma tabela especial.', '2014-12-19 12:31:18'),
(114, NULL, 'Adicionou uma tabela especial.', '2014-12-19 12:32:01'),
(115, NULL, 'Adicionou uma tabela especial.', '2014-12-19 12:32:46'),
(116, NULL, 'Adicionou uma tabela especial.', '2014-12-19 12:33:32'),
(117, NULL, 'Adicionou uma tabela especial.', '2014-12-19 12:36:15'),
(118, NULL, 'Cadastrou a categoria (Administradores)', '2014-12-19 13:46:51'),
(119, NULL, 'Cadastrou a categoria (Profissionais de ED. Física)', '2014-12-19 13:47:31'),
(120, NULL, 'Cadastrou a categoria (Profissionais liberais)', '2014-12-19 13:49:17'),
(121, NULL, 'Cadastrou a categoria (Funcionários públicos)', '2014-12-19 13:51:08'),
(122, NULL, 'Adicionou uma tabela especial.', '2014-12-19 13:53:23'),
(123, NULL, 'Adicionou uma tabela especial.', '2014-12-19 13:54:10'),
(124, NULL, 'Adicionou uma tabela especial.', '2014-12-19 13:56:31'),
(125, NULL, 'Adicionou uma tabela especial.', '2014-12-19 13:57:13'),
(126, NULL, 'Adicionou uma tabela especial.', '2014-12-19 13:58:07'),
(127, NULL, 'Adicionou uma tabela especial.', '2014-12-19 13:58:48'),
(128, NULL, 'Adicionou uma tabela especial.', '2014-12-19 13:59:36'),
(129, NULL, 'Adicionou uma tabela especial.', '2014-12-19 14:00:24'),
(130, NULL, 'Cadastrou o plano (Life preferencial - Com parto)', '2014-12-19 14:40:32'),
(131, NULL, 'Cadastrou o plano (Life preferencial - Sem parto)', '2014-12-19 14:41:14'),
(132, NULL, 'Adicionou uma tabela individual.', '2014-12-19 14:51:28'),
(133, NULL, 'Adicionou uma tabela individual.', '2014-12-19 15:30:22'),
(134, NULL, 'Adicionou uma tabela individual.', '2014-12-19 15:38:46'),
(135, NULL, 'Adicionou uma tabela individual.', '2014-12-19 15:42:50'),
(136, NULL, 'Cadastrou o plano (Topázio)', '2014-12-19 15:45:02'),
(137, NULL, 'Cadastrou o plano (Prata 4)', '2014-12-19 15:45:39'),
(138, NULL, 'Cadastrou o plano (Prata Extra)', '2014-12-19 15:46:00'),
(139, NULL, 'Cadastrou o plano (Diamante)', '2014-12-19 15:46:22'),
(140, NULL, 'Adicionou uma tabela individual.', '2014-12-19 15:47:49'),
(141, NULL, 'Adicionou uma tabela individual.', '2014-12-19 15:49:12'),
(142, NULL, 'Adicionou uma tabela individual.', '2014-12-19 15:50:04'),
(143, NULL, 'Adicionou uma tabela individual.', '2014-12-19 15:51:12'),
(144, NULL, 'Adicionou uma tabela individual.', '2014-12-19 15:52:17'),
(145, NULL, 'Adicionou uma tabela individual.', '2014-12-19 15:55:22'),
(146, NULL, 'Deletou a operadora (Viva saúde)', '2014-12-19 15:57:33'),
(147, NULL, 'Atualizou o plano (Blue 200)', '2014-12-19 18:35:27'),
(148, NULL, 'Atualizou o plano (Blue 300)', '2014-12-19 19:26:26'),
(149, NULL, 'Atualizou o plano (Blue 400)', '2014-12-19 19:29:00'),
(150, NULL, 'Atualizou o plano (Blue 300)', '2014-12-19 19:29:30'),
(151, NULL, 'Atualizou o plano (Blue 400)', '2014-12-19 19:29:42'),
(152, NULL, 'Atualizou o plano (Blue 300)', '2014-12-19 19:29:54'),
(153, NULL, 'Atualizou o plano (Blue 200)', '2014-12-19 19:30:03'),
(154, NULL, 'Atualizou o plano (Blue 400)', '2014-12-19 19:30:14'),
(155, NULL, 'Atualizou o plano (Blue 500)', '2014-12-19 19:31:37'),
(156, NULL, 'Atualizou o plano (Blue 600)', '2014-12-19 19:32:08'),
(157, NULL, 'Atualizou o plano (Blue 200)', '2014-12-19 19:32:42'),
(158, NULL, 'Atualizou o plano (Blue 300)', '2014-12-19 19:33:22'),
(159, NULL, 'Atualizou o plano (Blue 300)', '2014-12-19 19:33:46'),
(160, NULL, 'Atualizou o plano (Blue 400)', '2014-12-19 19:34:19'),
(161, NULL, 'Atualizou o plano (Blue 400)', '2014-12-19 19:34:26'),
(162, NULL, 'Atualizou o plano (Blue 500)', '2014-12-19 19:34:42'),
(163, NULL, 'Atualizou o plano (Blue 600)', '2014-12-19 19:35:00'),
(164, NULL, 'Cadastrou a categoria (Médicos)', '2014-12-19 20:24:50'),
(165, NULL, 'Cadastrou a categoria (Relações Públicas)', '2014-12-19 20:25:04'),
(166, NULL, 'Atualizou a categoria (Relações públicas)', '2014-12-19 20:25:19'),
(167, NULL, 'Cadastrou a categoria (Economistas)', '2014-12-19 20:25:31'),
(168, NULL, 'Cadastrou a categoria (Contabilistas)', '2014-12-19 20:25:44'),
(169, NULL, 'Cadastrou a categoria (Fonoaudiólogos)', '2014-12-19 20:26:00'),
(170, NULL, 'Cadastrou a categoria (Farmacêuticos)', '2014-12-19 20:26:24'),
(171, NULL, 'Cadastrou a categoria (Veterinários)', '2014-12-19 20:26:47'),
(172, NULL, 'Cadastrou a categoria (Nutricionistas)', '2014-12-19 20:29:21'),
(173, NULL, 'Cadastrou a categoria (Dentistas)', '2014-12-19 20:29:51'),
(174, NULL, 'Cadastrou a categoria (Psicólogos)', '2014-12-19 20:30:39'),
(175, NULL, 'Cadastrou a categoria (Empregados do comércio e serviços)', '2014-12-19 20:31:06'),
(176, NULL, 'Cadastrou a categoria (Profissionais do comércio e serviço)', '2014-12-19 20:32:04'),
(177, NULL, 'Atualizou a categoria (Profissionais do comércio e serviços)', '2014-12-19 20:32:18'),
(178, NULL, 'Cadastrou a categoria (Jornalistas)', '2014-12-19 20:32:27'),
(179, NULL, 'Atualizou uma tabela especial.', '2014-12-19 20:42:21'),
(180, NULL, 'Atualizou uma tabela especial.', '2014-12-19 20:43:10'),
(181, NULL, 'Atualizou uma tabela especial.', '2014-12-19 20:45:50'),
(182, NULL, 'Atualizou uma tabela especial.', '2014-12-19 20:46:23'),
(183, NULL, 'Atualizou uma tabela especial.', '2014-12-19 20:46:48'),
(184, NULL, 'Atualizou uma tabela especial.', '2014-12-19 20:47:05'),
(185, NULL, 'Atualizou uma tabela especial.', '2014-12-19 20:47:23'),
(186, NULL, 'Atualizou uma tabela especial.', '2014-12-19 20:47:40'),
(187, NULL, 'Cadastrou o plano (Exato)', '2014-12-19 20:51:51'),
(188, NULL, 'Cadastrou o plano (Básico 10)', '2014-12-19 20:52:04'),
(189, NULL, 'Cadastrou o plano (Clássico)', '2014-12-19 20:52:20'),
(190, NULL, 'Cadastrou o plano (Especial)', '2014-12-19 20:52:31'),
(191, NULL, 'Atualizou o plano (Especial 100)', '2014-12-19 20:52:45'),
(192, NULL, 'Cadastrou o plano (Executivo)', '2014-12-19 20:52:58'),
(193, NULL, 'Cadastrou o plano (Perfil)', '2014-12-19 20:55:04'),
(194, NULL, 'Cadastrou o plano (Nacional flex)', '2014-12-19 20:55:22'),
(195, NULL, 'Cadastrou o plano (Top Nacional)', '2014-12-19 20:55:37'),
(196, NULL, 'Cadastrou o plano (Top nacional plus)', '2014-12-19 20:56:01'),
(197, NULL, 'Adicionou uma tabela especial.', '2014-12-19 20:58:33'),
(198, NULL, 'Adicionou uma tabela especial.', '2014-12-19 20:59:55'),
(199, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:02:28'),
(200, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:03:39'),
(201, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:04:42'),
(202, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:04:55'),
(203, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:05:06'),
(204, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:06:27'),
(205, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:08:34'),
(206, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:09:54'),
(207, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:11:10'),
(208, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:12:02'),
(209, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:12:57'),
(210, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:14:04'),
(211, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:20:56'),
(212, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:21:32'),
(213, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:21:43'),
(214, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:21:51'),
(215, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:22:00'),
(216, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:22:15'),
(217, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:22:24'),
(218, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:22:35'),
(219, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:22:45'),
(220, NULL, 'Atualizou uma tabela especial.', '2014-12-19 21:22:56'),
(221, NULL, 'Atualizou a categoria (Empregadores do comércio e serviços)', '2014-12-19 21:28:40'),
(222, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:31:17'),
(223, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:32:24'),
(224, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:33:22'),
(225, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:34:16'),
(226, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:37:10'),
(227, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:38:23'),
(228, NULL, 'Adicionou uma tabela especial.', '2014-12-19 21:39:56'),
(229, NULL, 'Atualizou o plano (Topázio)', '2014-12-19 22:08:53'),
(230, NULL, 'Atualizou o plano (Prata 4)', '2014-12-19 22:14:25'),
(231, NULL, 'Atualizou o plano (Prata Extra)', '2014-12-19 22:15:57'),
(232, NULL, 'Atualizou o plano (Diamante)', '2014-12-19 22:16:06'),
(233, 'Administrador', 'Logou no sistema', '2014-12-30 14:22:12'),
(234, NULL, 'Cadastrou o plano (Standard)', '2014-12-30 15:17:00'),
(235, NULL, 'Cadastrou o plano (Extra)', '2014-12-30 15:17:18'),
(236, NULL, 'Atualizou uma nova tabela empresarial', '2014-12-30 15:24:32'),
(237, NULL, 'Adicionou uma nova tabela empresarial', '2014-12-30 15:26:10'),
(238, NULL, 'Adicionou uma nova tabela empresarial', '2014-12-30 15:30:00'),
(239, NULL, 'Adicionou uma nova tabela empresarial', '2014-12-30 15:30:49'),
(240, NULL, 'Cadastrou o plano (Pleno)', '2014-12-30 15:31:41'),
(241, NULL, 'Adicionou uma nova tabela empresarial', '2014-12-30 15:32:24'),
(242, NULL, 'Adicionou uma nova tabela empresarial', '2014-12-30 15:34:06'),
(243, NULL, 'Adicionou uma nova tabela empresarial', '2014-12-30 15:36:08'),
(244, NULL, 'Adicionou uma nova tabela empresarial', '2014-12-30 15:37:52'),
(245, NULL, 'Atualizou uma nova tabela empresarial', '2014-12-30 15:52:27'),
(246, NULL, 'Atualizou uma nova tabela empresarial', '2014-12-30 15:57:36'),
(247, 'Administrador', 'Logou no sistema', '2015-01-05 14:39:12'),
(248, 'Administrador', 'Logou no sistema', '2015-01-05 14:39:16'),
(249, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-05 14:48:37'),
(250, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-05 14:49:25'),
(251, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-05 14:51:34'),
(252, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-05 14:53:11'),
(253, NULL, 'Atualizou uma nova tabela empresarial', '2015-01-05 14:53:48'),
(254, NULL, 'Atualizou uma nova tabela empresarial', '2015-01-05 14:54:01'),
(255, NULL, 'Atualizou a operadora. (Amil)', '2015-01-05 15:03:05'),
(256, NULL, 'Atualizou a operadora. (Sul América)', '2015-01-05 15:03:15'),
(257, NULL, 'Atualizou a operadora. (Unimed Recife)', '2015-01-05 15:24:31'),
(258, 'Tassiano Alencar', 'Logou no sistema', '2015-01-05 15:32:44'),
(259, NULL, 'Cadastrou o plano (Perfil - Compulsório)', '2015-01-05 15:38:38'),
(260, NULL, 'Cadastrou o plano (Perfil - Compulsório)', '2015-01-05 15:38:45'),
(261, NULL, 'Cadastrou o plano (Perfil - Compulsório)', '2015-01-05 15:40:21'),
(262, NULL, 'Cadastrou o plano (Perfil - Compulsório)', '2015-01-05 15:40:30'),
(263, NULL, 'Cadastrou o plano (Perfil - Compulsório)', '2015-01-05 15:49:46'),
(264, NULL, 'Cadastrou o plano (Perfil - Compulsório)', '2015-01-05 16:09:21'),
(265, NULL, 'Atualizou a operadora. (Bradesco)', '2015-01-05 16:14:23'),
(266, NULL, 'Atualizou a operadora. (Bradesco)', '2015-01-05 16:15:05'),
(267, NULL, 'Atualizou a operadora. (Bradesco)', '2015-01-05 16:19:12'),
(268, NULL, 'Atualizou a operadora. (Bradesco)', '2015-01-05 16:37:52'),
(269, NULL, 'Atualizou a operadora. (Bradesco)', '2015-01-05 18:12:18'),
(270, 'Administrador', 'Logou no sistema', '2015-01-06 14:44:27'),
(271, NULL, 'Atualizou a operadora. (Bradesco)', '2015-01-06 14:45:16'),
(272, 'Administrador', 'Logou no sistema', '2015-01-06 15:13:16'),
(273, NULL, 'Atualizou a operadora. (Amil)', '2015-01-06 15:14:15'),
(274, NULL, 'Atualizou a operadora. (Amil)', '2015-01-06 15:20:25'),
(275, NULL, 'Atualizou a operadora. (Amil)', '2015-01-06 15:23:42'),
(276, NULL, 'Atualizou a operadora. (Amil)', '2015-01-06 15:24:38'),
(277, 'Administrador', 'Logou no sistema', '2015-01-06 15:29:24'),
(278, NULL, 'Atualizou a operadora. (Amil)', '2015-01-06 15:29:37'),
(279, 'Administrador', 'Logou no sistema', '2015-01-12 17:44:54'),
(280, NULL, 'Atualizou a operadora. (Amil)', '2015-01-12 17:45:14'),
(281, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 17:47:48'),
(282, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 17:48:42'),
(283, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 17:51:16'),
(284, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 17:53:53'),
(285, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 17:55:38'),
(286, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 17:57:04'),
(287, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 17:58:49'),
(288, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 17:59:59'),
(289, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 18:03:59'),
(290, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 18:05:15'),
(291, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 18:20:35'),
(292, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 18:21:45'),
(293, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 18:24:58'),
(294, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 18:26:27'),
(295, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 18:27:52'),
(296, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-12 18:28:36'),
(297, 'Administrador', 'Logou no sistema', '2015-01-13 09:45:43'),
(298, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 09:57:45'),
(299, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 09:59:23'),
(300, NULL, 'Atualizou o plano (Nacional Flex - Compulsório)', '2015-01-13 10:02:49'),
(301, NULL, 'Atualizou o plano (Top Nacional - Compulsório)', '2015-01-13 10:03:18'),
(302, NULL, 'Atualizou uma nova tabela empresarial', '2015-01-13 10:06:15'),
(303, NULL, 'Atualizou uma nova tabela empresarial', '2015-01-13 10:07:17'),
(304, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 10:09:11'),
(305, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 10:10:16'),
(306, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 10:11:19'),
(307, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 10:12:17'),
(308, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 10:14:08'),
(309, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 10:21:04'),
(310, NULL, 'Atualizou a operadora. (Bradesco)', '2015-01-13 11:35:08'),
(311, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 11:41:34'),
(312, NULL, 'Atualizou uma nova tabela empresarial', '2015-01-13 11:43:37'),
(313, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 11:45:56'),
(314, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 11:47:04'),
(315, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 11:48:35'),
(316, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:00:43'),
(317, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:03:42'),
(318, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:05:30'),
(319, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:06:59'),
(320, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:12:15'),
(321, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:13:57'),
(322, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:22:25'),
(323, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:23:43'),
(324, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:25:05'),
(325, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:26:25'),
(326, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:29:58'),
(327, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 12:31:00'),
(328, 'Administrador', 'Logou no sistema', '2015-01-13 14:45:02'),
(329, NULL, 'Atualizou a operadora. (Sul América)', '2015-01-13 14:45:41'),
(330, NULL, 'Cadastrou o plano (Exato - Flex)', '2015-01-13 14:51:05'),
(331, NULL, 'Cadastrou o plano (Básico 10 - Flex)', '2015-01-13 14:51:34'),
(332, NULL, 'Cadastrou o plano (Clássico - Flex)', '2015-01-13 14:52:20'),
(333, NULL, 'Cadastrou o plano (Especial 100 - Flex)', '2015-01-13 14:52:46'),
(334, NULL, 'Cadastrou o plano (Executivo - Flex)', '2015-01-13 14:53:14'),
(335, NULL, 'Cadastrou o plano (Prestige - Flex)', '2015-01-13 14:53:46'),
(336, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 14:57:04'),
(337, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 14:57:54'),
(338, 'Administrador', 'Logou no sistema', '2015-01-13 17:41:24'),
(339, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 17:50:44'),
(340, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 17:53:03'),
(341, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-13 18:07:58'),
(342, 'Administrador', 'Logou no sistema', '2015-01-14 14:30:52'),
(343, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:33:26'),
(344, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:34:31'),
(345, NULL, 'Cadastrou o plano (Prestige)', '2015-01-14 14:35:10'),
(346, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:36:53'),
(347, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:38:30'),
(348, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:39:20'),
(349, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:41:21'),
(350, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:43:39'),
(351, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:45:29'),
(352, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:47:05'),
(353, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:50:55'),
(354, NULL, 'Adicionou uma nova tabela empresarial', '2015-01-14 14:53:29'),
(355, 'Administrador', 'Logou no sistema', '2015-01-15 18:53:10'),
(356, 'Administrador', 'Logou no sistema', '2015-01-16 11:04:32'),
(357, NULL, 'Deletou uma tabela individual', '2015-01-16 11:28:47'),
(358, NULL, 'Deletou uma tabela individual', '2015-01-16 11:28:52'),
(359, NULL, 'Atualizou uma tabela individual.', '2015-01-16 11:29:45'),
(360, NULL, 'Atualizou uma tabela individual.', '2015-01-16 11:30:40'),
(361, NULL, 'Atualizou uma tabela individual.', '2015-01-16 11:32:33'),
(362, NULL, 'Atualizou uma tabela individual.', '2015-01-16 11:35:19'),
(363, NULL, 'Atualizou uma tabela individual.', '2015-01-16 11:50:00'),
(364, NULL, 'Atualizou uma tabela individual.', '2015-01-16 11:53:27'),
(365, NULL, 'Atualizou uma tabela individual.', '2015-01-16 11:56:43'),
(366, NULL, 'Atualizou uma tabela individual.', '2015-01-16 11:59:57');

-- --------------------------------------------------------

--
-- Estrutura para tabela `operadoras`
--

CREATE TABLE IF NOT EXISTS `operadoras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `criado` datetime DEFAULT NULL,
  `editado` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `categoria` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Fazendo dump de dados para tabela `operadoras`
--

INSERT INTO `operadoras` (`id`, `logo`, `name`, `criado`, `editado`, `slug`, `categoria`) VALUES
(3, '00f7de34c4c97801ec1c928e5eb85217.jpg', 'HapVida', '2014-12-12 12:25:16', '2014-12-19 12:09:14', 'hapvida', 'a:3:{i:0;s:11:"individuais";i:1;s:12:"empresariais";i:2;s:9:"especiais";}'),
(4, 'eebc969d14a4a3b25b0e20376ea57772.jpg', 'Amil', '2014-12-18 20:49:47', '2015-01-12 17:45:14', 'amil', 'a:2:{i:0;s:12:"empresariais";i:1;s:9:"especiais";}'),
(5, 'baf1890d9e059bbb28a0b70db04fc039.jpg', 'Bradesco', '2014-12-18 21:02:45', '2015-01-13 11:35:06', 'bradesco', 'a:2:{i:0;s:12:"empresariais";i:1;s:9:"especiais";}'),
(6, '7aeb89eabce2a9e253a108a36cb42467.jpg', 'Sul América', '2014-12-18 21:34:56', '2015-01-13 14:45:41', 'sul-america', 'a:2:{i:0;s:12:"empresariais";i:1;s:9:"especiais";}'),
(7, 'c75b0b90e35191b704f7fb8578fe234d.jpg', 'Unilife', '2014-12-19 12:07:39', '2014-12-19 12:07:39', 'unilife', 'a:2:{i:0;s:11:"individuais";i:1;s:12:"empresariais";}'),
(8, 'fdae7f4a436430489b1e7ea575316c56.jpg', 'Unimed Recife', '2014-12-19 12:08:08', '2015-01-05 15:24:30', 'unimed-recife', 'a:2:{i:0;s:11:"individuais";i:1;s:9:"especiais";}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `planos`
--

CREATE TABLE IF NOT EXISTS `planos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `operadora_id` varchar(45) DEFAULT NULL,
  `credenciados` text,
  `info` text,
  `criado` datetime DEFAULT NULL,
  `editado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Fazendo dump de dados para tabela `planos`
--

INSERT INTO `planos` (`id`, `name`, `operadora_id`, `credenciados`, `info`, `criado`, `editado`) VALUES
(4, 'Nosso Plano', '3', '<p>Atendimento exclusivo na rede pr&oacute;pria.</p>', '', '2014-12-12 19:35:33', '2014-12-13 18:48:30'),
(5, 'Mix', '3', '', '', '2014-12-13 19:25:01', '2014-12-13 19:25:01'),
(6, 'Blue 200', '4', '<ul>\n<li>Hospital Samaritano;</li>\n<li>Casa de sa&uacute;de e maternidade S&atilde;o Sebasti&atilde;o;</li>\n<li>Hospital Memorial Guararapes;</li>\n<li>Prontolinda;</li>\n<li>Hospital S&atilde;o Salvador;</li>\n<li>Casa de sa&uacute;de Maria Lucinda;</li>\n<li>Centro hospitalar Albert Sabin;</li>\n<li>Hospital De &Aacute;vila;</li>\n<li>Hospital S&atilde;o Marcos;</li>\n<li>CEMUB;</li>\n<li>Centro Integrado de Assistencia a Mulher;</li>\n<li>COPE;</li>\n<li>P.S Infantil Jorge de Medeiros;</li>\n<li>Hospital Santa Teresinha;</li>\n<li>Otorrinos Recife;</li>\n<li>Seope;</li>\n<li>Hospital Nossa Senhora da Piedade;</li>\n<li>Hospital Nossa Senhora do &Oacute;;</li>\n</ul>', '', '2014-12-19 12:14:21', '2014-12-19 19:32:41'),
(7, 'Blue 300', '4', '<p><strong>*</strong><span style="text-decoration: underline;">Toda rede do plano blue 200 mais:</span></p>\n<ul>\n<li>Hospital Memorial S&atilde;o Jos&eacute; (exclusivo no apartamento);</li>\n<li>Hospital Jayme da Fonte;</li>\n<li>Hospital de Olhos Santa Luzia;</li>\n<li>Hospital Alfa;</li>\n</ul>', '', '2014-12-19 12:14:36', '2014-12-19 19:33:46'),
(8, 'Blue 400', '4', '<p><strong>*</strong>Toda rede do plano blue 300 mais:</p>\n<ul>\n<li>Unicordis;</li>\n<li>HOPE;</li>\n<li>IOR;</li>\n</ul>', '', '2014-12-19 12:14:54', '2014-12-19 19:34:25'),
(9, 'Blue 500', '4', '<p><strong>*</strong>Toda rede do plano blue 400 mais:</p>\n<ul>\n<li>Hospital Santa Joana;</li>\n<li>CENOR;</li>\n<li>Hospital Vis&atilde;o;</li>\n</ul>', '', '2014-12-19 12:15:06', '2014-12-19 19:34:42'),
(10, 'Blue 600', '4', '<p><strong>*</strong>Toda rede do plano blue 500 mais:</p>\n<ul>\n<li>Real Hospital Portugu&ecirc;s;</li>\n</ul>', '', '2014-12-19 12:15:26', '2014-12-19 19:35:00'),
(11, 'Life preferencial - Com parto', '7', '<ul>\n<li>Memorial S&atilde;o jos&eacute; (Exclusivo no Apartamento);</li>\n<li>HOPE&nbsp;(Exclusivo no Apartamento);</li>\n<li>Cemub;</li>\n<li>Hospital Albert Sabin;</li>\n<li>Hospital de fraturas;</li>\n<li>Hospital Santa Teresinha;</li>\n<li>Hospital Infantil Maria Lucinda;</li>\n<li>Hospital S.O.S M&atilde;os;</li>\n<li>Hospital Memorial Guararapes;</li>\n<li>Hospital Nossa Senhora do &Oacute;;</li>\n<li>Hospital Samaritano;</li>\n<li>CEDIP;</li>\n<li>Cl&iacute;nica Cl&oacute;vis Paiva;</li>\n<li>COPE;</li>\n<li>PCO;</li>\n<li>Cl&iacute;nica Mais vida;</li>\n<li>B&oacute;ris Berenstein;</li>\n<li>Lucilo Maranh&atilde;o;</li>\n<li>Derbimagem;</li>\n<li>Multimagem;</li>\n<li>Centro Diagn&oacute;stico Jos&eacute; Rocha de S&aacute;;</li>\n<li>Gilson Cidrin;</li>\n<li>Lapac;</li>\n<li>Ciac;</li>\n<li>Adolfo Lutz;</li>\n</ul>', '<ul>\n<li>Taxa de ades&atilde;o: R$ 20,00;</li>\n</ul>', '2014-12-19 14:40:32', '2014-12-19 14:40:32'),
(12, 'Life preferencial - Sem parto', '7', '<ul>\n<li>Memorial S&atilde;o jos&eacute; (Exclusivo no Apartamento);</li>\n<li>HOPE&nbsp;(Exclusivo no Apartamento);</li>\n<li>Cemub;</li>\n<li>Hospital Albert Sabin;</li>\n<li>Hospital de fraturas;</li>\n<li>Hospital Santa Teresinha;</li>\n<li>Hospital Infantil Maria Lucinda;</li>\n<li>Hospital S.O.S M&atilde;os;</li>\n<li>Hospital Memorial&nbsp;Guararapes;</li>\n<li>Hospital Nossa Senhora do &Oacute;;</li>\n<li>Hospital Samaritano;</li>\n<li>CEDIP;</li>\n<li>Cl&iacute;nica Cl&oacute;vis Paiva;</li>\n<li>COPE;</li>\n<li>PCO;</li>\n<li>Cl&iacute;nica Mais vida;</li>\n<li>B&oacute;ris Berenstein;</li>\n<li>Lucilo Maranh&atilde;o;</li>\n<li>Derbimagem;</li>\n<li>Multimagem;</li>\n<li>Centro Diagn&oacute;stico Jos&eacute; Rocha de S&aacute;;</li>\n<li>Gilson Cidrin;</li>\n<li>Lapac;</li>\n<li>Ciac;</li>\n<li>Adolfo Lutz;</li>\n</ul>', '<ul>\n<li>Taxa de ades&atilde;o: R$ 20,00;</li>\n</ul>', '2014-12-19 14:41:14', '2014-12-19 14:41:14'),
(13, 'Topázio', '8', '<ul>\n<li>Hospital Unimed Recife I;</li>\n<li>Hospital Unimed Recife III;</li>\n<li>Pronto Atendimento Unimed Recife;</li>\n<li>Centro M&eacute;dico Unimed Recife;</li>\n<li>Centro de Profissionais de Sa&uacute;de - Unimed Recife;</li>\n<li>Urg&ecirc;ncia Pedi&aacute;trica 24hs - Unimed Recife;</li>\n<li>Real Hospital Portugu&ecirc;s (parto programado, cirurgia infantil cardiol&oacute;gica / neurol&oacute;gica);</li>\n<li>Centro Integrado da Mulher - Santa L&uacute;cia;</li>\n<li>Hospital De &Aacute;vila (maternidade);</li>\n<li>Seope;</li>\n<li>Hospital Memorial Guararapes;</li>\n<li>Hospital Santa Genoveva;</li>\n<li>P.S Infantil Jorge de Medeiros;</li>\n<li>Apami;</li>\n<li>Prontolinda;</li>\n<li>Casa de Sa&uacute;de e Maternidade S&atilde;o Sebasti&atilde;o;</li>\n<li>Centro Hospitalar Santa Maria (vit&oacute;ria de santo Ant&atilde;o);</li>\n<li>Hospital das Cl&iacute;nicas (carpina);</li>\n<li>Hospital Memorial (goiana);</li>\n<li>Hospital Samaritano (cabo de santo agostinho);</li>\n<li>Hospital S&atilde;o Luiz (surubim);</li>\n<li>CAPS;</li>\n<li>Sanat&oacute;rio Psiqui&aacute;trico de Recupera&ccedil;&atilde;o;</li>\n</ul>', '', '2014-12-19 15:45:01', '2014-12-19 22:08:53'),
(14, 'Prata 4', '8', '<p><strong>*</strong>Toda rede do Top&aacute;zio mais:</p>\n<ul>\n<li>Instituto da Vis&atilde;o;</li>\n<li>Instituto da Medianeiras da Paz (araripina);</li>\n<li>H Vis&atilde;o;</li>\n<li>Hospital de Paudalho;</li>\n<li>Casa de Sa&uacute;de e Maternidade (limoeiro);</li>\n<li>Cenor;</li>\n<li>Cl&iacute;nica de Fraturas e Reabilita&ccedil;&atilde;o;</li>\n<li>GOT;</li>\n<li>Unicordis (urg&ecirc;ncias cardiol&oacute;gicas);</li>\n<li>Hospital de Ortopedia e Fratura;</li>\n<li>SOS M&atilde;os Recife;</li>\n<li>HOPE (urg&ecirc;ncia oftalmol&oacute;gica);</li>\n<li>Hospital de Olos Santa Luzia;</li>\n<li>HORE;</li>\n<li>IOR;</li>\n<li>Otorrinos Recife;</li>\n<li>Cl&iacute;nica Nossa Senhora da Piedade;</li>\n<li>Casa de Sa&uacute;de Maria Lucinda;</li>\n<li>Hospital e Maternidade S&atilde;o Luiz (olinda);</li>\n<li>CEMUB;</li>\n<li>Hospital Albert Sabin;&nbsp;</li>\n</ul>', '', '2014-12-19 15:45:38', '2014-12-19 22:14:24'),
(15, 'Prata Extra', '8', '<p><strong>*</strong>Toda rede do Prata 4 mais:</p>\n<ul>\n<li>Hospital Esperan&ccedil;a;</li>\n<li>Hospital Memorial S&atilde;o Jos&eacute;;</li>\n<li>Hospital Santa Joana;</li>\n<li>Real Hospital Portugu&ecirc;s (exceto pediatria);</li>\n</ul>', '', '2014-12-19 15:45:58', '2014-12-19 22:15:57'),
(16, 'Diamante', '8', '<p><strong>*</strong>Toda rede do Prata 4 mais:</p>\n<ul>\n<li>Hospital Esperan&ccedil;a;</li>\n<li>Hospital Memorial S&atilde;o Jos&eacute;;</li>\n<li>Hospital Santa Joana;</li>\n<li>Real Hospital Portugu&ecirc;s (exceto pediatria);</li>\n</ul>', '', '2014-12-19 15:46:22', '2014-12-19 22:16:06'),
(17, 'Exato', '6', '', '', '2014-12-19 20:51:51', '2014-12-19 20:51:51'),
(18, 'Básico 10', '6', '', '', '2014-12-19 20:52:03', '2014-12-19 20:52:03'),
(19, 'Clássico', '6', '', '', '2014-12-19 20:52:20', '2014-12-19 20:52:20'),
(20, 'Especial 100', '6', '', '', '2014-12-19 20:52:31', '2014-12-19 20:52:45'),
(21, 'Executivo', '6', '', '', '2014-12-19 20:52:58', '2014-12-19 20:52:58'),
(22, 'Perfil', '5', '', '', '2014-12-19 20:55:04', '2014-12-19 20:55:04'),
(23, 'Nacional flex', '5', '', '', '2014-12-19 20:55:21', '2014-12-19 20:55:21'),
(24, 'Top Nacional', '5', '', '', '2014-12-19 20:55:37', '2014-12-19 20:55:37'),
(25, 'Top nacional plus', '5', '', '', '2014-12-19 20:56:01', '2014-12-19 20:56:01'),
(26, 'Standard', '3', '', '', '2014-12-30 15:16:59', '2014-12-30 15:16:59'),
(27, 'Extra', '3', '', '', '2014-12-30 15:17:15', '2014-12-30 15:17:15'),
(28, 'Pleno', '3', '', '', '2014-12-30 15:31:40', '2014-12-30 15:31:40'),
(29, 'Perfil - Compulsório', '5', '', '', '2015-01-05 15:38:38', '2015-01-05 15:38:38'),
(30, 'Nacional Flex - Compulsório', '5', '', '', '2015-01-05 15:38:44', '2015-01-13 10:02:49'),
(31, 'Top Nacional - Compulsório', '5', '', '', '2015-01-05 15:40:21', '2015-01-13 10:03:18'),
(32, 'Perfil - Compulsório', '5', '', '', '2015-01-05 15:40:30', '2015-01-05 15:40:30'),
(33, 'Perfil - Compulsório', '5', '', '', '2015-01-05 15:49:46', '2015-01-05 15:49:46'),
(34, 'Perfil - Compulsório', '5', '', '', '2015-01-05 16:09:19', '2015-01-05 16:09:19'),
(35, 'Exato - Flex', '6', '', '', '2015-01-13 14:51:05', '2015-01-13 14:51:05'),
(36, 'Básico 10 - Flex', '6', '', '', '2015-01-13 14:51:33', '2015-01-13 14:51:33'),
(37, 'Clássico - Flex', '6', '', '', '2015-01-13 14:52:20', '2015-01-13 14:52:20'),
(38, 'Especial 100 - Flex', '6', '', '', '2015-01-13 14:52:44', '2015-01-13 14:52:44'),
(39, 'Executivo - Flex', '6', '', '', '2015-01-13 14:53:14', '2015-01-13 14:53:14'),
(40, 'Prestige - Flex', '6', '', '', '2015-01-13 14:53:46', '2015-01-13 14:53:46'),
(41, 'Prestige', '6', '', '', '2015-01-14 14:35:10', '2015-01-14 14:35:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabelas_empresariais`
--

CREATE TABLE IF NOT EXISTS `tabelas_empresariais` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Fazendo dump de dados para tabela `tabelas_empresariais`
--

INSERT INTO `tabelas_empresariais` (`id`, `operadora_id`, `plano_id`, `acomodacao`, `titulos`, `categoria`, `vida_min`, `vida_max`, `idade0018`, `idade1923`, `idade2428`, `idade2933`, `idade3438`, `idade3943`, `idade4448`, `idade4953`, `idade5458`, `idade59`, `criado`, `editado`) VALUES
(3, 3, 26, 'Enfermaria', 'a:1:{i:0;s:11:"1 vida ou +";}', 'pme', 2, 29, 'a:1:{i:0;s:5:"67,55";}', 'a:1:{i:0;s:5:"75,65";}', 'a:1:{i:0;s:5:"84,82";}', 'a:1:{i:0;s:5:"97,42";}', 'a:1:{i:0;s:6:"112,03";}', 'a:1:{i:0;s:6:"133,31";}', 'a:1:{i:0;s:6:"166,63";}', 'a:1:{i:0;s:6:"208,28";}', 'a:1:{i:0;s:6:"354,07";}', 'a:1:{i:0;s:6:"396,55";}', '2014-12-12 20:09:55', '2014-12-30 15:24:31'),
(4, 3, 26, 'Apartamento', 'a:1:{i:0;s:11:"1 vida ou +";}', 'pme', 2, 29, 'a:1:{i:0;s:5:"79,45";}', 'a:1:{i:0;s:5:"88,98";}', 'a:1:{i:0;s:5:"99,65";}', 'a:1:{i:0;s:6:"114,59";}', 'a:1:{i:0;s:6:"131,77";}', 'a:1:{i:0;s:6:"156,80";}', 'a:1:{i:0;s:6:"196,00";}', 'a:1:{i:0;s:6:"245,00";}', 'a:1:{i:0;s:6:"416,50";}', 'a:1:{i:0;s:6:"466,48";}', '2014-12-30 15:26:08', '2014-12-30 15:26:08'),
(5, 3, 27, 'Enfermaria', 'a:1:{i:0;s:11:"1 vida ou +";}', 'pme', 2, 29, 'a:1:{i:0;s:5:"95,59";}', 'a:1:{i:0;s:6:"107,06";}', 'a:1:{i:0;s:6:"119,90";}', 'a:1:{i:0;s:6:"137,88";}', 'a:1:{i:0;s:6:"158,56";}', 'a:1:{i:0;s:6:"188,68";}', 'a:1:{i:0;s:6:"235,85";}', 'a:1:{i:0;s:6:"294,81";}', 'a:1:{i:0;s:6:"501,17";}', 'a:1:{i:0;s:6:"561,31";}', '2014-12-30 15:30:00', '2014-12-30 15:30:00'),
(6, 3, 27, 'Apartamento', 'a:1:{i:0;s:11:"1 vida ou +";}', 'pme', 2, 29, 'a:1:{i:0;s:6:"108,27";}', 'a:1:{i:0;s:6:"121,26";}', 'a:1:{i:0;s:6:"135,81";}', 'a:1:{i:0;s:6:"156,18";}', 'a:1:{i:0;s:6:"179,60";}', 'a:1:{i:0;s:6:"213,72";}', 'a:1:{i:0;s:6:"267,15";}', 'a:1:{i:0;s:6:"333,93";}', 'a:1:{i:0;s:6:"567,68";}', 'a:1:{i:0;s:6:"635,80";}', '2014-12-30 15:30:49', '2014-12-30 15:30:49'),
(7, 3, 4, 'Enfermaria', 'a:1:{i:0;s:11:"1 vida ou +";}', 'pmg', 30, 99, 'a:1:{i:0;s:5:"62,39";}', 'a:1:{i:0;s:5:"69,87";}', 'a:1:{i:0;s:5:"78,25";}', 'a:1:{i:0;s:5:"89,98";}', 'a:1:{i:0;s:6:"103,47";}', 'a:1:{i:0;s:6:"123,12";}', 'a:1:{i:0;s:6:"153,90";}', 'a:1:{i:0;s:6:"192,37";}', 'a:1:{i:0;s:6:"327,02";}', 'a:1:{i:0;s:6:"366,26";}', '2014-12-30 15:32:24', '2014-12-30 15:52:27'),
(8, 3, 4, 'Apartamento', 'a:1:{i:0;s:11:"1 vida ou +";}', 'pmg', 30, 99, 'a:1:{i:0;s:5:"73,10";}', 'a:1:{i:0;s:5:"81,87";}', 'a:1:{i:0;s:5:"91,69";}', 'a:1:{i:0;s:6:"105,44";}', 'a:1:{i:0;s:6:"121,25";}', 'a:1:{i:0;s:6:"144,28";}', 'a:1:{i:0;s:6:"180,35";}', 'a:1:{i:0;s:6:"225,43";}', 'a:1:{i:0;s:6:"383,23";}', 'a:1:{i:0;s:6:"429,21";}', '2014-12-30 15:34:06', '2014-12-30 15:57:36'),
(9, 3, 5, 'Enfermaria', 'a:1:{i:0;s:11:"1 vida ou +";}', 'pmg', 30, 99, 'a:1:{i:0;s:5:"88,36";}', 'a:1:{i:0;s:5:"98,96";}', 'a:1:{i:0;s:6:"110,83";}', 'a:1:{i:0;s:6:"127,45";}', 'a:1:{i:0;s:6:"146,56";}', 'a:1:{i:0;s:6:"174,40";}', 'a:1:{i:0;s:6:"218,00";}', 'a:1:{i:0;s:6:"272,50";}', 'a:1:{i:0;s:6:"463,25";}', 'a:1:{i:0;s:6:"518,84";}', '2014-12-30 15:36:08', '2014-12-30 15:36:08'),
(10, 3, 5, 'Apartamento', 'a:1:{i:0;s:11:"1 vida ou +";}', 'pmg', 30, 99, 'a:1:{i:0;s:5:"99,61";}', 'a:1:{i:0;s:6:"111,56";}', 'a:1:{i:0;s:6:"124,94";}', 'a:1:{i:0;s:6:"143,68";}', 'a:1:{i:0;s:6:"165,23";}', 'a:1:{i:0;s:6:"196,62";}', 'a:1:{i:0;s:6:"245,77";}', 'a:1:{i:0;s:6:"307,21";}', 'a:1:{i:0;s:6:"522,25";}', 'a:1:{i:0;s:6:"584,92";}', '2014-12-30 15:37:52', '2014-12-30 15:37:52'),
(11, 7, 11, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 2, 29, 'a:1:{i:0;s:5:"82,18";}', 'a:1:{i:0;s:5:"93,34";}', 'a:1:{i:0;s:6:"104,67";}', 'a:1:{i:0;s:6:"133,05";}', 'a:1:{i:0;s:6:"104,67";}', 'a:1:{i:0;s:6:"174,90";}', 'a:1:{i:0;s:6:"223,63";}', 'a:1:{i:0;s:6:"313,87";}', 'a:1:{i:0;s:6:"369,61";}', 'a:1:{i:0;s:6:"479,68";}', '2015-01-05 14:48:37', '2015-01-05 14:53:48'),
(12, 7, 11, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 2, 29, 'a:1:{i:0;s:6:"106,07";}', 'a:1:{i:0;s:6:"120,47";}', 'a:1:{i:0;s:6:"135,10";}', 'a:1:{i:0;s:6:"171,73";}', 'a:1:{i:0;s:6:"135,10";}', 'a:1:{i:0;s:6:"225,75";}', 'a:1:{i:0;s:6:"288,64";}', 'a:1:{i:0;s:6:"405,11";}', 'a:1:{i:0;s:6:"477,46";}', 'a:1:{i:0;s:6:"619,65";}', '2015-01-05 14:49:24', '2015-01-05 14:54:01'),
(13, 7, 11, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pmg', 2, 29, 'a:1:{i:0;s:5:"75,05";}', 'a:1:{i:0;s:5:"85,25";}', 'a:1:{i:0;s:5:"95,60";}', 'a:1:{i:0;s:6:"121,51";}', 'a:1:{i:0;s:6:"121,51";}', 'a:1:{i:0;s:6:"159,74";}', 'a:1:{i:0;s:6:"204,24";}', 'a:1:{i:0;s:6:"286,66";}', 'a:1:{i:0;s:6:"337,57";}', 'a:1:{i:0;s:6:"438,09";}', '2015-01-05 14:51:34', '2015-01-05 14:51:34'),
(14, 7, 11, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pmg', 30, 99, 'a:1:{i:0;s:5:"96,87";}', 'a:1:{i:0;s:6:"110,03";}', 'a:1:{i:0;s:6:"123,39";}', 'a:1:{i:0;s:6:"156,84";}', 'a:1:{i:0;s:6:"156,84";}', 'a:1:{i:0;s:6:"206,18";}', 'a:1:{i:0;s:6:"263,62";}', 'a:1:{i:0;s:6:"369,99";}', 'a:1:{i:0;s:6:"436,07";}', 'a:1:{i:0;s:6:"565,93";}', '2015-01-05 14:53:11', '2015-01-05 14:53:11'),
(15, 4, 6, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 2, 29, 'a:1:{i:0;s:6:"133,20";}', 'a:1:{i:0;s:6:"180,89";}', 'a:1:{i:0;s:6:"198,98";}', 'a:1:{i:0;s:6:"218,88";}', 'a:1:{i:0;s:6:"218,88";}', 'a:1:{i:0;s:6:"229,82";}', 'a:1:{i:0;s:6:"326,34";}', 'a:1:{i:0;s:6:"424,24";}', 'a:1:{i:0;s:6:"424,24";}', 'a:1:{i:0;s:6:"799,18";}', '2015-01-12 17:47:48', '2015-01-12 17:47:48'),
(16, 4, 6, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 2, 29, 'a:1:{i:0;s:6:"145,87";}', 'a:1:{i:0;s:6:"198,09";}', 'a:1:{i:0;s:6:"217,90";}', 'a:1:{i:0;s:6:"239,69";}', 'a:1:{i:0;s:6:"239,69";}', 'a:1:{i:0;s:6:"251,67";}', 'a:1:{i:0;s:6:"357,37";}', 'a:1:{i:0;s:6:"464,58";}', 'a:1:{i:0;s:6:"464,58";}', 'a:1:{i:0;s:6:"875,18";}', '2015-01-12 17:48:42', '2015-01-12 17:48:42'),
(17, 4, 7, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 2, 29, 'a:1:{i:0;s:6:"141,31";}', 'a:1:{i:0;s:6:"191,90";}', 'a:1:{i:0;s:6:"211,09";}', 'a:1:{i:0;s:6:"232,20";}', 'a:1:{i:0;s:6:"232,20";}', 'a:1:{i:0;s:6:"243,81";}', 'a:1:{i:0;s:6:"346,21";}', 'a:1:{i:0;s:6:"450,07";}', 'a:1:{i:0;s:6:"450,07";}', 'a:1:{i:0;s:6:"847,84";}', '2015-01-12 17:51:16', '2015-01-12 17:51:16'),
(18, 4, 7, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 2, 29, 'a:1:{i:0;s:6:"153,08";}', 'a:1:{i:0;s:6:"207,88";}', 'a:1:{i:0;s:6:"228,67";}', 'a:1:{i:0;s:6:"251,54";}', 'a:1:{i:0;s:6:"251,54";}', 'a:1:{i:0;s:6:"264,12";}', 'a:1:{i:0;s:6:"375,05";}', 'a:1:{i:0;s:6:"487,57";}', 'a:1:{i:0;s:6:"487,57";}', 'a:1:{i:0;s:6:"918,48";}', '2015-01-12 17:53:53', '2015-01-12 17:53:53'),
(19, 4, 8, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 2, 29, 'a:1:{i:0;s:6:"164,86";}', 'a:1:{i:0;s:6:"223,88";}', 'a:1:{i:0;s:6:"246,27";}', 'a:1:{i:0;s:6:"270,90";}', 'a:1:{i:0;s:6:"270,90";}', 'a:1:{i:0;s:6:"284,45";}', 'a:1:{i:0;s:6:"403,92";}', 'a:1:{i:0;s:6:"525,10";}', 'a:1:{i:0;s:6:"525,10";}', 'a:1:{i:0;s:6:"989,18";}', '2015-01-12 17:55:38', '2015-01-12 17:55:38'),
(20, 4, 8, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 2, 29, 'a:1:{i:0;s:6:"176,64";}', 'a:1:{i:0;s:6:"239,88";}', 'a:1:{i:0;s:6:"263,87";}', 'a:1:{i:0;s:6:"290,26";}', 'a:1:{i:0;s:6:"290,26";}', 'a:1:{i:0;s:6:"304,77";}', 'a:1:{i:0;s:6:"432,77";}', 'a:1:{i:0;s:6:"562,60";}', 'a:1:{i:0;s:6:"562,60";}', 'a:1:{i:0;s:8:"1.059,83";}', '2015-01-12 17:57:04', '2015-01-12 17:57:04'),
(21, 4, 9, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 2, 29, 'a:1:{i:0;s:6:"190,16";}', 'a:1:{i:0;s:6:"258,24";}', 'a:1:{i:0;s:6:"284,06";}', 'a:1:{i:0;s:6:"312,47";}', 'a:1:{i:0;s:6:"312,47";}', 'a:1:{i:0;s:6:"328,09";}', 'a:1:{i:0;s:6:"465,89";}', 'a:1:{i:0;s:6:"605,66";}', 'a:1:{i:0;s:6:"605,66";}', 'a:1:{i:0;s:8:"1.140,94";}', '2015-01-12 17:58:49', '2015-01-12 17:58:49'),
(22, 4, 10, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 2, 29, 'a:1:{i:0;s:6:"235,53";}', 'a:1:{i:0;s:6:"319,85";}', 'a:1:{i:0;s:6:"351,84";}', 'a:1:{i:0;s:6:"387,02";}', 'a:1:{i:0;s:6:"387,02";}', 'a:1:{i:0;s:6:"406,37";}', 'a:1:{i:0;s:6:"577,05";}', 'a:1:{i:0;s:6:"750,17";}', 'a:1:{i:0;s:6:"750,17";}', 'a:1:{i:0;s:8:"1.413,17";}', '2015-01-12 17:59:59', '2015-01-12 17:59:59'),
(23, 4, 6, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pmg', 30, 99, 'a:1:{i:0;s:6:"126,75";}', 'a:1:{i:0;s:6:"172,13";}', 'a:1:{i:0;s:6:"189,34";}', 'a:1:{i:0;s:6:"208,27";}', 'a:1:{i:0;s:6:"208,27";}', 'a:1:{i:0;s:6:"218,68";}', 'a:1:{i:0;s:6:"310,53";}', 'a:1:{i:0;s:6:"403,69";}', 'a:1:{i:0;s:6:"403,69";}', 'a:1:{i:0;s:6:"760,47";}', '2015-01-12 18:03:59', '2015-01-12 18:03:59'),
(24, 4, 6, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pmg', 30, 99, 'a:1:{i:0;s:6:"138,82";}', 'a:1:{i:0;s:6:"188,52";}', 'a:1:{i:0;s:6:"207,37";}', 'a:1:{i:0;s:6:"228,11";}', 'a:1:{i:0;s:6:"228,11";}', 'a:1:{i:0;s:6:"239,52";}', 'a:1:{i:0;s:6:"340,12";}', 'a:1:{i:0;s:6:"442,16";}', 'a:1:{i:0;s:6:"442,16";}', 'a:1:{i:0;s:6:"832,94";}', '2015-01-12 18:05:14', '2015-01-12 18:05:14'),
(25, 4, 7, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pmg', 30, 99, 'a:1:{i:0;s:6:"134,47";}', 'a:1:{i:0;s:6:"182,61";}', 'a:1:{i:0;s:6:"200,87";}', 'a:1:{i:0;s:6:"220,96";}', 'a:1:{i:0;s:6:"220,96";}', 'a:1:{i:0;s:6:"232,01";}', 'a:1:{i:0;s:6:"329,45";}', 'a:1:{i:0;s:6:"428,29";}', 'a:1:{i:0;s:6:"428,29";}', 'a:1:{i:0;s:6:"806,81";}', '2015-01-12 18:20:35', '2015-01-12 18:20:35'),
(26, 4, 7, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pmg', 30, 99, 'a:1:{i:0;s:6:"145,68";}', 'a:1:{i:0;s:6:"197,83";}', 'a:1:{i:0;s:6:"217,61";}', 'a:1:{i:0;s:6:"239,37";}', 'a:1:{i:0;s:6:"239,37";}', 'a:1:{i:0;s:6:"251,34";}', 'a:1:{i:0;s:6:"356,90";}', 'a:1:{i:0;s:6:"463,97";}', 'a:1:{i:0;s:6:"463,97";}', 'a:1:{i:0;s:6:"874,03";}', '2015-01-12 18:21:45', '2015-01-12 18:21:45'),
(27, 4, 8, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pmg', 30, 99, 'a:1:{i:0;s:6:"156,89";}', 'a:1:{i:0;s:6:"213,06";}', 'a:1:{i:0;s:6:"234,37";}', 'a:1:{i:0;s:6:"257,81";}', 'a:1:{i:0;s:6:"257,81";}', 'a:1:{i:0;s:6:"270,70";}', 'a:1:{i:0;s:6:"384,39";}', 'a:1:{i:0;s:6:"499,71";}', 'a:1:{i:0;s:6:"499,71";}', 'a:1:{i:0;s:6:"941,35";}', '2015-01-12 18:24:58', '2015-01-12 18:24:58'),
(28, 4, 8, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pmg', 30, 99, 'a:1:{i:0;s:6:"168,10";}', 'a:1:{i:0;s:6:"228,28";}', 'a:1:{i:0;s:6:"251,11";}', 'a:1:{i:0;s:6:"276,22";}', 'a:1:{i:0;s:6:"276,22";}', 'a:1:{i:0;s:6:"290,03";}', 'a:1:{i:0;s:6:"411,84";}', 'a:1:{i:0;s:6:"535,39";}', 'a:1:{i:0;s:6:"535,39";}', 'a:1:{i:0;s:8:"1.008,57";}', '2015-01-12 18:26:27', '2015-01-12 18:26:27'),
(29, 4, 9, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pmg', 30, 99, 'a:1:{i:0;s:6:"180,96";}', 'a:1:{i:0;s:6:"245,74";}', 'a:1:{i:0;s:6:"270,31";}', 'a:1:{i:0;s:6:"297,34";}', 'a:1:{i:0;s:6:"297,34";}', 'a:1:{i:0;s:6:"312,21";}', 'a:1:{i:0;s:6:"443,34";}', 'a:1:{i:0;s:6:"576,34";}', 'a:1:{i:0;s:6:"576,34";}', 'a:1:{i:0;s:8:"1.085,71";}', '2015-01-12 18:27:52', '2015-01-12 18:27:52'),
(30, 4, 10, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pmg', 30, 99, 'a:1:{i:0;s:6:"224,12";}', 'a:1:{i:0;s:6:"304,35";}', 'a:1:{i:0;s:6:"334,79";}', 'a:1:{i:0;s:6:"368,27";}', 'a:1:{i:0;s:6:"368,27";}', 'a:1:{i:0;s:6:"386,68";}', 'a:1:{i:0;s:6:"549,09";}', 'a:1:{i:0;s:6:"713,82";}', 'a:1:{i:0;s:6:"713,82";}', 'a:1:{i:0;s:8:"1.344,69";}', '2015-01-12 18:28:36', '2015-01-12 18:28:36'),
(31, 5, 29, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"136,45";}', 'a:1:{i:0;s:6:"166,73";}', 'a:1:{i:0;s:6:"206,76";}', 'a:1:{i:0;s:6:"227,43";}', 'a:1:{i:0;s:6:"241,08";}', 'a:1:{i:0;s:6:"279,65";}', 'a:1:{i:0;s:6:"334,31";}', 'a:1:{i:0;s:6:"388,69";}', 'a:1:{i:0;s:6:"462,54";}', 'a:1:{i:0;s:6:"818,70";}', '2015-01-13 09:57:45', '2015-01-13 10:06:14'),
(32, 5, 29, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"151,61";}', 'a:1:{i:0;s:6:"185,26";}', 'a:1:{i:0;s:6:"229,73";}', 'a:1:{i:0;s:6:"252,70";}', 'a:1:{i:0;s:6:"267,86";}', 'a:1:{i:0;s:6:"310,73";}', 'a:1:{i:0;s:6:"371,45";}', 'a:1:{i:0;s:6:"431,88";}', 'a:1:{i:0;s:6:"513,94";}', 'a:1:{i:0;s:6:"909,67";}', '2015-01-13 09:59:23', '2015-01-13 10:07:17'),
(33, 5, 30, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"148,73";}', 'a:1:{i:0;s:6:"181,74";}', 'a:1:{i:0;s:6:"225,37";}', 'a:1:{i:0;s:6:"247,91";}', 'a:1:{i:0;s:6:"262,77";}', 'a:1:{i:0;s:6:"304,82";}', 'a:1:{i:0;s:6:"364,40";}', 'a:1:{i:0;s:6:"423,67";}', 'a:1:{i:0;s:6:"504,17";}', 'a:1:{i:0;s:6:"892,39";}', '2015-01-13 10:09:09', '2015-01-13 11:43:36'),
(34, 5, 30, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"165,25";}', 'a:1:{i:0;s:6:"201,94";}', 'a:1:{i:0;s:6:"250,40";}', 'a:1:{i:0;s:6:"275,45";}', 'a:1:{i:0;s:6:"291,97";}', 'a:1:{i:0;s:6:"338,69";}', 'a:1:{i:0;s:6:"404,88";}', 'a:1:{i:0;s:6:"470,75";}', 'a:1:{i:0;s:6:"560,19";}', 'a:1:{i:0;s:6:"991,54";}', '2015-01-13 10:10:15', '2015-01-13 10:10:15'),
(35, 5, 31, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"183,62";}', 'a:1:{i:0;s:6:"224,38";}', 'a:1:{i:0;s:6:"278,23";}', 'a:1:{i:0;s:6:"306,05";}', 'a:1:{i:0;s:6:"324,42";}', 'a:1:{i:0;s:6:"376,33";}', 'a:1:{i:0;s:6:"449,87";}', 'a:1:{i:0;s:6:"523,06";}', 'a:1:{i:0;s:6:"622,43";}', 'a:1:{i:0;s:8:"1.101,71";}', '2015-01-13 10:11:17', '2015-01-13 10:11:17'),
(36, 5, 31, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"258,62";}', 'a:1:{i:0;s:6:"316,03";}', 'a:1:{i:0;s:6:"391,87";}', 'a:1:{i:0;s:6:"431,07";}', 'a:1:{i:0;s:6:"456,92";}', 'a:1:{i:0;s:6:"530,03";}', 'a:1:{i:0;s:6:"633,63";}', 'a:1:{i:0;s:6:"736,69";}', 'a:1:{i:0;s:6:"876,67";}', 'a:1:{i:0;s:8:"1.551,71";}', '2015-01-13 10:12:16', '2015-01-13 10:12:16'),
(37, 5, 22, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"156,91";}', 'a:1:{i:0;s:6:"191,74";}', 'a:1:{i:0;s:6:"237,76";}', 'a:1:{i:0;s:6:"261,54";}', 'a:1:{i:0;s:6:"277,23";}', 'a:1:{i:0;s:6:"321,58";}', 'a:1:{i:0;s:6:"384,44";}', 'a:1:{i:0;s:6:"446,97";}', 'a:1:{i:0;s:6:"531,90";}', 'a:1:{i:0;s:6:"941,47";}', '2015-01-13 10:14:06', '2015-01-13 10:14:06'),
(38, 5, 22, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"174,34";}', 'a:1:{i:0;s:6:"213,05";}', 'a:1:{i:0;s:6:"264,18";}', 'a:1:{i:0;s:6:"290,59";}', 'a:1:{i:0;s:6:"308,03";}', 'a:1:{i:0;s:6:"357,32";}', 'a:1:{i:0;s:6:"427,15";}', 'a:1:{i:0;s:6:"496,64";}', 'a:1:{i:0;s:6:"591,01";}', 'a:1:{i:0;s:8:"1.046,07";}', '2015-01-13 10:21:04', '2015-01-13 10:21:04'),
(39, 5, 23, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"171,03";}', 'a:1:{i:0;s:6:"209,00";}', 'a:1:{i:0;s:6:"259,16";}', 'a:1:{i:0;s:6:"285,08";}', 'a:1:{i:0;s:6:"302,18";}', 'a:1:{i:0;s:6:"350,52";}', 'a:1:{i:0;s:6:"419,04";}', 'a:1:{i:0;s:6:"487,20";}', 'a:1:{i:0;s:6:"579,77";}', 'a:1:{i:0;s:8:"1.026,21";}', '2015-01-13 11:41:34', '2015-01-13 11:41:34'),
(40, 5, 23, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"190,03";}', 'a:1:{i:0;s:6:"232,22";}', 'a:1:{i:0;s:6:"287,95";}', 'a:1:{i:0;s:6:"316,75";}', 'a:1:{i:0;s:6:"335,75";}', 'a:1:{i:0;s:6:"389,48";}', 'a:1:{i:0;s:6:"465,60";}', 'a:1:{i:0;s:6:"541,34";}', 'a:1:{i:0;s:6:"644,20";}', 'a:1:{i:0;s:8:"1.140,22";}', '2015-01-13 11:45:56', '2015-01-13 11:45:56'),
(41, 5, 24, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"211,15";}', 'a:1:{i:0;s:6:"258,03";}', 'a:1:{i:0;s:6:"319,95";}', 'a:1:{i:0;s:6:"351,94";}', 'a:1:{i:0;s:6:"373,07";}', 'a:1:{i:0;s:6:"432,76";}', 'a:1:{i:0;s:6:"517,33";}', 'a:1:{i:0;s:6:"601,49";}', 'a:1:{i:0;s:6:"715,77";}', 'a:1:{i:0;s:8:"1.266,92";}', '2015-01-13 11:47:04', '2015-01-13 11:47:04'),
(42, 5, 24, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 3, 'a:1:{i:0;s:6:"297,40";}', 'a:1:{i:0;s:6:"363,42";}', 'a:1:{i:0;s:6:"450,63";}', 'a:1:{i:0;s:6:"495,71";}', 'a:1:{i:0;s:6:"525,44";}', 'a:1:{i:0;s:6:"609,51";}', 'a:1:{i:0;s:6:"728,64";}', 'a:1:{i:0;s:6:"847,17";}', 'a:1:{i:0;s:8:"1.008,13";}', 'a:1:{i:0;s:8:"1.784,40";}', '2015-01-13 11:48:32', '2015-01-13 11:48:32'),
(43, 5, 29, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"124,03";}', 'a:1:{i:0;s:6:"151,56";}', 'a:1:{i:0;s:6:"187,95";}', 'a:1:{i:0;s:6:"206,74";}', 'a:1:{i:0;s:6:"219,14";}', 'a:1:{i:0;s:6:"254,20";}', 'a:1:{i:0;s:6:"303,89";}', 'a:1:{i:0;s:6:"353,32";}', 'a:1:{i:0;s:6:"420,45";}', 'a:1:{i:0;s:6:"744,20";}', '2015-01-13 12:00:43', '2015-01-13 12:00:43'),
(44, 5, 29, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"137,81";}', 'a:1:{i:0;s:6:"168,41";}', 'a:1:{i:0;s:6:"208,83";}', 'a:1:{i:0;s:6:"229,70";}', 'a:1:{i:0;s:6:"243,49";}', 'a:1:{i:0;s:6:"282,45";}', 'a:1:{i:0;s:6:"337,65";}', 'a:1:{i:0;s:6:"292,58";}', 'a:1:{i:0;s:6:"467,18";}', 'a:1:{i:0;s:6:"826,89";}', '2015-01-13 12:03:42', '2015-01-13 12:03:42'),
(45, 5, 23, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"135,20";}', 'a:1:{i:0;s:6:"165,21";}', 'a:1:{i:0;s:6:"204,86";}', 'a:1:{i:0;s:6:"255,35";}', 'a:1:{i:0;s:6:"238,86";}', 'a:1:{i:0;s:6:"277,08";}', 'a:1:{i:0;s:6:"331,24";}', 'a:1:{i:0;s:6:"385,12";}', 'a:1:{i:0;s:6:"458,30";}', 'a:1:{i:0;s:6:"811,19";}', '2015-01-13 12:05:29', '2015-01-13 12:05:29'),
(46, 5, 23, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"150,21";}', 'a:1:{i:0;s:6:"183,56";}', 'a:1:{i:0;s:6:"227,62";}', 'a:1:{i:0;s:6:"250,38";}', 'a:1:{i:0;s:6:"265,40";}', 'a:1:{i:0;s:6:"307,87";}', 'a:1:{i:0;s:6:"368,04";}', 'a:1:{i:0;s:6:"427,91";}', 'a:1:{i:0;s:6:"509,22";}', 'a:1:{i:0;s:6:"901,31";}', '2015-01-13 12:06:59', '2015-01-13 12:06:59'),
(47, 5, 31, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"166,91";}', 'a:1:{i:0;s:6:"203,96";}', 'a:1:{i:0;s:6:"252,91";}', 'a:1:{i:0;s:6:"278,20";}', 'a:1:{i:0;s:6:"294,90";}', 'a:1:{i:0;s:6:"342,08";}', 'a:1:{i:0;s:6:"408,94";}', 'a:1:{i:0;s:6:"475,46";}', 'a:1:{i:0;s:6:"565,80";}', 'a:1:{i:0;s:8:"1.001,47";}', '2015-01-13 12:12:14', '2015-01-13 12:12:14'),
(48, 5, 31, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"235,09";}', 'a:1:{i:0;s:6:"287,27";}', 'a:1:{i:0;s:6:"356,21";}', 'a:1:{i:0;s:6:"391,84";}', 'a:1:{i:0;s:6:"415,35";}', 'a:1:{i:0;s:6:"481,80";}', 'a:1:{i:0;s:6:"575,97";}', 'a:1:{i:0;s:6:"669,66";}', 'a:1:{i:0;s:6:"796,90";}', 'a:1:{i:0;s:8:"1.410,52";}', '2015-01-13 12:13:55', '2015-01-13 12:13:55'),
(49, 5, 22, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"142,63";}', 'a:1:{i:0;s:6:"174,29";}', 'a:1:{i:0;s:6:"216,13";}', 'a:1:{i:0;s:6:"237,74";}', 'a:1:{i:0;s:6:"252,00";}', 'a:1:{i:0;s:6:"292,32";}', 'a:1:{i:0;s:6:"349,46";}', 'a:1:{i:0;s:6:"406,30";}', 'a:1:{i:0;s:6:"483,50";}', 'a:1:{i:0;s:6:"855,80";}', '2015-01-13 12:22:25', '2015-01-13 12:22:25'),
(50, 5, 22, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"158,48";}', 'a:1:{i:0;s:6:"193,66";}', 'a:1:{i:0;s:6:"240,14";}', 'a:1:{i:0;s:6:"264,15";}', 'a:1:{i:0;s:6:"280,00";}', 'a:1:{i:0;s:6:"324,81";}', 'a:1:{i:0;s:6:"388,28";}', 'a:1:{i:0;s:6:"451,45";}', 'a:1:{i:0;s:6:"537,23";}', 'a:1:{i:0;s:6:"950,89";}', '2015-01-13 12:23:43', '2015-01-13 12:23:43'),
(51, 5, 23, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"155,47";}', 'a:1:{i:0;s:6:"189,98";}', 'a:1:{i:0;s:6:"235,58";}', 'a:1:{i:0;s:6:"259,14";}', 'a:1:{i:0;s:6:"274,68";}', 'a:1:{i:0;s:6:"318,63";}', 'a:1:{i:0;s:6:"380,91";}', 'a:1:{i:0;s:6:"442,87";}', 'a:1:{i:0;s:6:"527,02";}', 'a:1:{i:0;s:6:"932,83";}', '2015-01-13 12:25:04', '2015-01-13 12:25:04'),
(52, 5, 23, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"172,74";}', 'a:1:{i:0;s:6:"211,09";}', 'a:1:{i:0;s:6:"261,75";}', 'a:1:{i:0;s:6:"287,93";}', 'a:1:{i:0;s:6:"305,20";}', 'a:1:{i:0;s:6:"354,04";}', 'a:1:{i:0;s:6:"423,23";}', 'a:1:{i:0;s:6:"492,08";}', 'a:1:{i:0;s:6:"585,58";}', 'a:1:{i:0;s:8:"1.036,47";}', '2015-01-13 12:26:25', '2015-01-13 12:26:25'),
(53, 5, 24, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"191,94";}', 'a:1:{i:0;s:6:"234,55";}', 'a:1:{i:0;s:6:"290,84";}', 'a:1:{i:0;s:6:"319,92";}', 'a:1:{i:0;s:6:"339,12";}', 'a:1:{i:0;s:6:"393,38";}', 'a:1:{i:0;s:6:"470,26";}', 'a:1:{i:0;s:6:"546,76";}', 'a:1:{i:0;s:6:"650,64";}', 'a:1:{i:0;s:8:"1.151,64";}', '2015-01-13 12:29:57', '2015-01-13 12:29:57'),
(54, 5, 24, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 4, 29, 'a:1:{i:0;s:6:"270,34";}', 'a:1:{i:0;s:6:"330,35";}', 'a:1:{i:0;s:6:"409,63";}', 'a:1:{i:0;s:6:"450,60";}', 'a:1:{i:0;s:6:"477,63";}', 'a:1:{i:0;s:6:"554,05";}', 'a:1:{i:0;s:6:"662,34";}', 'a:1:{i:0;s:6:"770,08";}', 'a:1:{i:0;s:6:"916,40";}', 'a:1:{i:0;s:8:"1.622,03";}', '2015-01-13 12:31:00', '2015-01-13 12:31:00'),
(55, 6, 17, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"140,53";}', 'a:1:{i:0;s:6:"182,76";}', 'a:1:{i:0;s:6:"228,49";}', 'a:1:{i:0;s:6:"274,05";}', 'a:1:{i:0;s:6:"291,12";}', 'a:1:{i:0;s:6:"300,81";}', 'a:1:{i:0;s:6:"344,37";}', 'a:1:{i:0;s:6:"411,21";}', 'a:1:{i:0;s:6:"507,02";}', 'a:1:{i:0;s:6:"843,12";}', '2015-01-13 14:57:04', '2015-01-13 14:57:04'),
(56, 6, 17, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"163,28";}', 'a:1:{i:0;s:6:"212,35";}', 'a:1:{i:0;s:6:"265,48";}', 'a:1:{i:0;s:6:"318,42";}', 'a:1:{i:0;s:6:"338,26";}', 'a:1:{i:0;s:6:"349,52";}', 'a:1:{i:0;s:6:"400,13";}', 'a:1:{i:0;s:6:"477,80";}', 'a:1:{i:0;s:6:"589,13";}', 'a:1:{i:0;s:6:"979,66";}', '2015-01-13 14:57:54', '2015-01-13 14:57:54'),
(57, 6, 18, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"145,82";}', 'a:1:{i:0;s:6:"189,64";}', 'a:1:{i:0;s:6:"237,09";}', 'a:1:{i:0;s:6:"284,37";}', 'a:1:{i:0;s:6:"302,09";}', 'a:1:{i:0;s:6:"312,15";}', 'a:1:{i:0;s:6:"357,35";}', 'a:1:{i:0;s:6:"426,71";}', 'a:1:{i:0;s:6:"526,13";}', 'a:1:{i:0;s:6:"874,90";}', '2015-01-13 17:50:44', '2015-01-13 17:50:44'),
(58, 6, 18, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"179,64";}', 'a:1:{i:0;s:6:"233,62";}', 'a:1:{i:0;s:6:"292,07";}', 'a:1:{i:0;s:6:"350,31";}', 'a:1:{i:0;s:6:"372,13";}', 'a:1:{i:0;s:6:"384,52";}', 'a:1:{i:0;s:6:"440,20";}', 'a:1:{i:0;s:6:"525,64";}', 'a:1:{i:0;s:6:"648,11";}', 'a:1:{i:0;s:8:"1.077,74";}', '2015-01-13 17:53:03', '2015-01-13 17:53:03'),
(59, 6, 19, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"190,39";}', 'a:1:{i:0;s:6:"247,60";}', 'a:1:{i:0;s:6:"309,55";}', 'a:1:{i:0;s:6:"371,27";}', 'a:1:{i:0;s:6:"394,40";}', 'a:1:{i:0;s:6:"407,53";}', 'a:1:{i:0;s:6:"466,54";}', 'a:1:{i:0;s:6:"557,10";}', 'a:1:{i:0;s:6:"686,90";}', 'a:1:{i:0;s:8:"1.142,25";}', '2015-01-13 18:07:58', '2015-01-13 18:07:58'),
(60, 6, 20, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"214,03";}', 'a:1:{i:0;s:6:"278,35";}', 'a:1:{i:0;s:6:"347,99";}', 'a:1:{i:0;s:6:"417,38";}', 'a:1:{i:0;s:6:"443,38";}', 'a:1:{i:0;s:6:"458,14";}', 'a:1:{i:0;s:6:"524,48";}', 'a:1:{i:0;s:6:"626,28";}', 'a:1:{i:0;s:6:"772,20";}', 'a:1:{i:0;s:8:"1.284,09";}', '2015-01-14 14:33:25', '2015-01-14 14:33:25'),
(61, 6, 21, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"384,54";}', 'a:1:{i:0;s:6:"500,09";}', 'a:1:{i:0;s:6:"625,21";}', 'a:1:{i:0;s:6:"749,88";}', 'a:1:{i:0;s:6:"796,60";}', 'a:1:{i:0;s:6:"823,13";}', 'a:1:{i:0;s:6:"942,32";}', 'a:1:{i:0;s:8:"1.125,22";}', 'a:1:{i:0;s:8:"1.387,40";}', 'a:1:{i:0;s:8:"2.307,11";}', '2015-01-14 14:34:30', '2015-01-14 14:34:30'),
(62, 6, 41, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"746,63";}', 'a:1:{i:0;s:6:"970,99";}', 'a:1:{i:0;s:8:"1.213,93";}', 'a:1:{i:0;s:8:"1.455,99";}', 'a:1:{i:0;s:8:"1.546,70";}', 'a:1:{i:0;s:8:"1.598,21";}', 'a:1:{i:0;s:8:"1.829,63";}', 'a:1:{i:0;s:8:"2.184,76";}', 'a:1:{i:0;s:8:"2.693,81";}', 'a:1:{i:0;s:8:"4.479,54";}', '2015-01-14 14:36:52', '2015-01-14 14:36:52'),
(63, 6, 35, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"157,39";}', 'a:1:{i:0;s:6:"204,69";}', 'a:1:{i:0;s:6:"255,90";}', 'a:1:{i:0;s:6:"306,93";}', 'a:1:{i:0;s:6:"326,05";}', 'a:1:{i:0;s:6:"336,91";}', 'a:1:{i:0;s:6:"385,69";}', 'a:1:{i:0;s:6:"460,55";}', 'a:1:{i:0;s:6:"567,86";}', 'a:1:{i:0;s:6:"944,29";}', '2015-01-14 14:38:29', '2015-01-14 14:38:29'),
(64, 6, 35, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"182,87";}', 'a:1:{i:0;s:6:"237,82";}', 'a:1:{i:0;s:6:"297,32";}', 'a:1:{i:0;s:6:"356,61";}', 'a:1:{i:0;s:6:"378,83";}', 'a:1:{i:0;s:6:"391,45";}', 'a:1:{i:0;s:6:"448,13";}', 'a:1:{i:0;s:6:"535,11";}', 'a:1:{i:0;s:6:"659,79";}', 'a:1:{i:0;s:8:"1.097,16";}', '2015-01-14 14:39:20', '2015-01-14 14:39:20'),
(65, 6, 36, 'Enfermaria', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"163,31";}', 'a:1:{i:0;s:6:"212,38";}', 'a:1:{i:0;s:6:"265,52";}', 'a:1:{i:0;s:6:"318,46";}', 'a:1:{i:0;s:6:"338,30";}', 'a:1:{i:0;s:6:"349,57";}', 'a:1:{i:0;s:6:"400,19";}', 'a:1:{i:0;s:6:"477,87";}', 'a:1:{i:0;s:6:"589,21";}', 'a:1:{i:0;s:6:"979,80";}', '2015-01-14 14:41:21', '2015-01-14 14:41:21'),
(66, 6, 36, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"201,20";}', 'a:1:{i:0;s:6:"261,66";}', 'a:1:{i:0;s:6:"327,13";}', 'a:1:{i:0;s:6:"392,36";}', 'a:1:{i:0;s:6:"416,80";}', 'a:1:{i:0;s:6:"430,68";}', 'a:1:{i:0;s:6:"493,04";}', 'a:1:{i:0;s:6:"588,74";}', 'a:1:{i:0;s:6:"725,92";}', 'a:1:{i:0;s:8:"1.207,13";}', '2015-01-14 14:43:38', '2015-01-14 14:43:38'),
(67, 6, 37, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"213,24";}', 'a:1:{i:0;s:6:"277,32";}', 'a:1:{i:0;s:6:"346,71";}', 'a:1:{i:0;s:6:"415,84";}', 'a:1:{i:0;s:6:"441,75";}', 'a:1:{i:0;s:6:"456,46";}', 'a:1:{i:0;s:6:"522,56";}', 'a:1:{i:0;s:6:"623,99";}', 'a:1:{i:0;s:6:"769,38";}', 'a:1:{i:0;s:8:"1.279,40";}', '2015-01-14 14:45:27', '2015-01-14 14:45:27'),
(68, 6, 38, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"239,72";}', 'a:1:{i:0;s:6:"311,76";}', 'a:1:{i:0;s:6:"389,76";}', 'a:1:{i:0;s:6:"467,48";}', 'a:1:{i:0;s:6:"496,60";}', 'a:1:{i:0;s:6:"513,14";}', 'a:1:{i:0;s:6:"587,44";}', 'a:1:{i:0;s:6:"701,46";}', 'a:1:{i:0;s:6:"864,90";}', 'a:1:{i:0;s:8:"1.438,24";}', '2015-01-14 14:47:03', '2015-01-14 14:47:03'),
(69, 6, 39, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"430,69";}', 'a:1:{i:0;s:6:"560,11";}', 'a:1:{i:0;s:6:"700,25";}', 'a:1:{i:0;s:6:"839,88";}', 'a:1:{i:0;s:6:"892,20";}', 'a:1:{i:0;s:6:"921,91";}', 'a:1:{i:0;s:8:"1.055,40";}', 'a:1:{i:0;s:8:"1.260,25";}', 'a:1:{i:0;s:8:"1.553,89";}', 'a:1:{i:0;s:8:"2.583,96";}', '2015-01-14 14:50:54', '2015-01-14 14:50:54'),
(70, 6, 40, 'Apartamento', 'a:1:{i:0;s:8:"Por vida";}', 'pme', 3, 29, 'a:1:{i:0;s:6:"836,23";}', 'a:1:{i:0;s:8:"1.087,52";}', 'a:1:{i:0;s:8:"1.359,62";}', 'a:1:{i:0;s:8:"1.630,73";}', 'a:1:{i:0;s:8:"1.732,32";}', 'a:1:{i:0;s:8:"1.790,01";}', 'a:1:{i:0;s:8:"2.049,20";}', 'a:1:{i:0;s:8:"2.446,95";}', 'a:1:{i:0;s:8:"3.017,09";}', 'a:1:{i:0;s:8:"5.017,12";}', '2015-01-14 14:53:28', '2015-01-14 14:53:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabelas_especiais`
--

CREATE TABLE IF NOT EXISTS `tabelas_especiais` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Fazendo dump de dados para tabela `tabelas_especiais`
--

INSERT INTO `tabelas_especiais` (`id`, `operadora_id`, `plano_id`, `acomodacao`, `categorias`, `titulos`, `idade0018`, `idade1923`, `idade2428`, `idade2933`, `idade3438`, `idade3943`, `idade4448`, `idade4953`, `idade5458`, `idade59`, `criado`, `editado`) VALUES
(3, 3, 4, 'Enfermaria', 'a:7:{i:0;s:9:"advogados";i:1;s:9:"agronomos";i:2;s:10:"arquitetos";i:3;s:11:"enfermeiros";i:4;s:11:"engenheiros";i:5;s:10:"estudantes";i:6;s:15:"fisioterapeutas";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:5:"59,94";}', 'a:1:{i:0;s:5:"67,13";}', 'a:1:{i:0;s:5:"75,17";}', 'a:1:{i:0;s:5:"86,44";}', 'a:1:{i:0;s:5:"75,17";}', 'a:1:{i:0;s:6:"118,28";}', 'a:1:{i:0;s:6:"147,85";}', 'a:1:{i:0;s:6:"184,81";}', 'a:1:{i:0;s:6:"231,00";}', 'a:1:{i:0;s:6:"358,04";}', '2014-12-15 10:03:32', '2014-12-15 12:50:48'),
(4, 3, 4, 'Apartamento', 'a:7:{i:0;s:9:"advogados";i:1;s:9:"agronomos";i:2;s:10:"arquitetos";i:3;s:11:"enfermeiros";i:4;s:11:"engenheiros";i:5;s:10:"estudantes";i:6;s:15:"fisioterapeutas";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:5:"80,89";}', 'a:1:{i:0;s:5:"90,60";}', 'a:1:{i:0;s:6:"101,46";}', 'a:1:{i:0;s:6:"116,67";}', 'a:1:{i:0;s:6:"101,46";}', 'a:1:{i:0;s:6:"159,66";}', 'a:1:{i:0;s:6:"199,57";}', 'a:1:{i:0;s:6:"249,46";}', 'a:1:{i:0;s:6:"311,83";}', 'a:1:{i:0;s:6:"483,33";}', '2014-12-15 10:04:15', '2014-12-15 12:50:20'),
(5, 4, 6, 'Enfermaria', 'a:3:{i:0;s:16:"comerciantes-cdl";i:1;s:33:"empregados-do-comercio-e-servicos";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"154,41";}', 'a:1:{i:0;s:6:"200,73";}', 'a:1:{i:0;s:6:"220,80";}', 'a:1:{i:0;s:6:"240,67";}', 'a:1:{i:0;s:6:"220,80";}', 'a:1:{i:0;s:6:"291,21";}', 'a:1:{i:0;s:6:"378,29";}', 'a:1:{i:0;s:6:"435,03";}', 'a:1:{i:0;s:6:"543,79";}', 'a:1:{i:0;s:6:"924,44";}', '2014-12-19 12:18:07', '2014-12-19 21:21:30'),
(6, 4, 6, 'Apartamento', 'a:3:{i:0;s:16:"comerciantes-cdl";i:1;s:33:"empregados-do-comercio-e-servicos";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"169,11";}', 'a:1:{i:0;s:6:"219,84";}', 'a:1:{i:0;s:6:"241,83";}', 'a:1:{i:0;s:6:"263,59";}', 'a:1:{i:0;s:6:"241,83";}', 'a:1:{i:0;s:6:"318,94";}', 'a:1:{i:0;s:6:"414,31";}', 'a:1:{i:0;s:6:"476,46";}', 'a:1:{i:0;s:6:"595,58";}', 'a:1:{i:0;s:8:"1.012,48";}', '2014-12-19 12:18:58', '2014-12-19 21:21:42'),
(7, 4, 7, 'Enfermaria', 'a:3:{i:0;s:16:"comerciantes-cdl";i:1;s:33:"empregados-do-comercio-e-servicos";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"176,46";}', 'a:1:{i:0;s:6:"229,40";}', 'a:1:{i:0;s:6:"252,34";}', 'a:1:{i:0;s:6:"275,05";}', 'a:1:{i:0;s:6:"252,34";}', 'a:1:{i:0;s:6:"332,81";}', 'a:1:{i:0;s:6:"432,32";}', 'a:1:{i:0;s:6:"497,17";}', 'a:1:{i:0;s:6:"621,47";}', 'a:1:{i:0;s:8:"1.056,50";}', '2014-12-19 12:29:55', '2014-12-19 21:21:51'),
(8, 4, 7, 'Apartamento', 'a:3:{i:0;s:16:"comerciantes-cdl";i:1;s:33:"empregados-do-comercio-e-servicos";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"191,17";}', 'a:1:{i:0;s:6:"248,52";}', 'a:1:{i:0;s:6:"273,37";}', 'a:1:{i:0;s:6:"297,97";}', 'a:1:{i:0;s:6:"273,37";}', 'a:1:{i:0;s:6:"360,54";}', 'a:1:{i:0;s:6:"468,35";}', 'a:1:{i:0;s:6:"538,60";}', 'a:1:{i:0;s:6:"673,26";}', 'a:1:{i:0;s:8:"1.144,54";}', '2014-12-19 12:31:17', '2014-12-19 21:22:24'),
(9, 4, 8, 'Enfermaria', 'a:3:{i:0;s:16:"comerciantes-cdl";i:1;s:33:"empregados-do-comercio-e-servicos";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"205,87";}', 'a:1:{i:0;s:6:"267,63";}', 'a:1:{i:0;s:6:"294,40";}', 'a:1:{i:0;s:6:"320,89";}', 'a:1:{i:0;s:6:"294,40";}', 'a:1:{i:0;s:6:"388,27";}', 'a:1:{i:0;s:6:"504,37";}', 'a:1:{i:0;s:6:"580,03";}', 'a:1:{i:0;s:6:"725,04";}', 'a:1:{i:0;s:8:"1.232,57";}', '2014-12-19 12:32:01', '2014-12-19 21:22:14'),
(10, 4, 8, 'Apartamento', 'a:3:{i:0;s:16:"comerciantes-cdl";i:1;s:33:"empregados-do-comercio-e-servicos";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"220,59";}', 'a:1:{i:0;s:6:"286,76";}', 'a:1:{i:0;s:6:"315,44";}', 'a:1:{i:0;s:6:"343,83";}', 'a:1:{i:0;s:6:"315,44";}', 'a:1:{i:0;s:6:"416,03";}', 'a:1:{i:0;s:6:"540,42";}', 'a:1:{i:0;s:6:"621,49";}', 'a:1:{i:0;s:6:"776,86";}', 'a:1:{i:0;s:8:"1.320,67";}', '2014-12-19 12:32:45', '2014-12-19 21:22:34'),
(11, 4, 9, 'Apartamento', 'a:3:{i:0;s:16:"comerciantes-cdl";i:1;s:33:"empregados-do-comercio-e-servicos";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"235,29";}', 'a:1:{i:0;s:6:"305,88";}', 'a:1:{i:0;s:6:"336,47";}', 'a:1:{i:0;s:6:"366,74";}', 'a:1:{i:0;s:6:"336,47";}', 'a:1:{i:0;s:6:"443,76";}', 'a:1:{i:0;s:6:"576,45";}', 'a:1:{i:0;s:6:"662,92";}', 'a:1:{i:0;s:6:"828,65";}', 'a:1:{i:0;s:8:"1.408,70";}', '2014-12-19 12:33:32', '2014-12-19 21:22:44'),
(12, 4, 10, 'Apartamento', 'a:3:{i:0;s:16:"comerciantes-cdl";i:1;s:33:"empregados-do-comercio-e-servicos";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"294,11";}', 'a:1:{i:0;s:6:"382,34";}', 'a:1:{i:0;s:6:"420,58";}', 'a:1:{i:0;s:6:"458,42";}', 'a:1:{i:0;s:6:"420,58";}', 'a:1:{i:0;s:6:"554,69";}', 'a:1:{i:0;s:6:"720,55";}', 'a:1:{i:0;s:6:"828,63";}', 'a:1:{i:0;s:8:"1.035,79";}', 'a:1:{i:0;s:8:"1.760,85";}', '2014-12-19 12:36:15', '2014-12-19 21:22:54'),
(13, 4, 6, 'Enfermaria', 'a:9:{i:0;s:15:"administradores";i:1;s:10:"arquitetos";i:2;s:13:"contabilistas";i:3;s:9:"dentistas";i:4;s:11:"engenheiros";i:5;s:21:"funcionarios-publicos";i:6;s:26:"profissionais-de-ed-fisica";i:7;s:22:"profissionais-liberais";i:8;s:17:"relac-es-publicas";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"138,39";}', 'a:1:{i:0;s:6:"179,91";}', 'a:1:{i:0;s:6:"197,90";}', 'a:1:{i:0;s:6:"215,71";}', 'a:1:{i:0;s:6:"197,90";}', 'a:1:{i:0;s:6:"261,01";}', 'a:1:{i:0;s:6:"339,06";}', 'a:1:{i:0;s:6:"389,92";}', 'a:1:{i:0;s:6:"487,40";}', 'a:1:{i:0;s:6:"828,58";}', '2014-12-19 13:53:22', '2014-12-19 20:42:21'),
(14, 4, 6, 'Apartamento', 'a:9:{i:0;s:15:"administradores";i:1;s:10:"arquitetos";i:2;s:13:"contabilistas";i:3;s:9:"dentistas";i:4;s:11:"engenheiros";i:5;s:21:"funcionarios-publicos";i:6;s:26:"profissionais-de-ed-fisica";i:7;s:22:"profissionais-liberais";i:8;s:17:"relac-es-publicas";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"151,57";}', 'a:1:{i:0;s:6:"197,05";}', 'a:1:{i:0;s:6:"216,75";}', 'a:1:{i:0;s:6:"236,26";}', 'a:1:{i:0;s:6:"216,75";}', 'a:1:{i:0;s:6:"285,87";}', 'a:1:{i:0;s:6:"371,35";}', 'a:1:{i:0;s:6:"427,05";}', 'a:1:{i:0;s:6:"533,81";}', 'a:1:{i:0;s:6:"907,48";}', '2014-12-19 13:54:09', '2014-12-19 20:43:09'),
(15, 4, 7, 'Enfermaria', 'a:9:{i:0;s:15:"administradores";i:1;s:10:"arquitetos";i:2;s:13:"contabilistas";i:3;s:9:"dentistas";i:4;s:11:"engenheiros";i:5;s:21:"funcionarios-publicos";i:6;s:26:"profissionais-de-ed-fisica";i:7;s:22:"profissionais-liberais";i:8;s:17:"relac-es-publicas";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"158,16";}', 'a:1:{i:0;s:6:"205,61";}', 'a:1:{i:0;s:6:"226,17";}', 'a:1:{i:0;s:6:"246,53";}', 'a:1:{i:0;s:6:"226,17";}', 'a:1:{i:0;s:6:"298,30";}', 'a:1:{i:0;s:6:"387,49";}', 'a:1:{i:0;s:6:"445,61";}', 'a:1:{i:0;s:6:"557,02";}', 'a:1:{i:0;s:6:"946,94";}', '2014-12-19 13:56:30', '2014-12-19 20:45:50'),
(16, 4, 7, 'Apartamento', 'a:9:{i:0;s:15:"administradores";i:1;s:10:"arquitetos";i:2;s:13:"contabilistas";i:3;s:9:"dentistas";i:4;s:11:"engenheiros";i:5;s:21:"funcionarios-publicos";i:6;s:26:"profissionais-de-ed-fisica";i:7;s:22:"profissionais-liberais";i:8;s:17:"relac-es-publicas";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"171,34";}', 'a:1:{i:0;s:6:"222,75";}', 'a:1:{i:0;s:6:"245,02";}', 'a:1:{i:0;s:6:"267,07";}', 'a:1:{i:0;s:6:"245,02";}', 'a:1:{i:0;s:6:"323,15";}', 'a:1:{i:0;s:6:"419,78";}', 'a:1:{i:0;s:6:"482,75";}', 'a:1:{i:0;s:6:"603,44";}', 'a:1:{i:0;s:8:"1.025,84";}', '2014-12-19 13:57:13', '2014-12-19 20:46:23'),
(17, 4, 8, 'Enfermaria', 'a:9:{i:0;s:15:"administradores";i:1;s:10:"arquitetos";i:2;s:13:"contabilistas";i:3;s:9:"dentistas";i:4;s:11:"engenheiros";i:5;s:21:"funcionarios-publicos";i:6;s:26:"profissionais-de-ed-fisica";i:7;s:22:"profissionais-liberais";i:8;s:17:"relac-es-publicas";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"184,52";}', 'a:1:{i:0;s:6:"239,88";}', 'a:1:{i:0;s:6:"263,87";}', 'a:1:{i:0;s:6:"287,61";}', 'a:1:{i:0;s:6:"263,87";}', 'a:1:{i:0;s:6:"348,01";}', 'a:1:{i:0;s:6:"452,07";}', 'a:1:{i:0;s:6:"519,88";}', 'a:1:{i:0;s:6:"649,85";}', 'a:1:{i:0;s:8:"1.104,75";}', '2014-12-19 13:58:07', '2014-12-19 20:46:48'),
(18, 4, 8, 'Apartamento', 'a:9:{i:0;s:15:"administradores";i:1;s:10:"arquitetos";i:2;s:13:"contabilistas";i:3;s:9:"dentistas";i:4;s:11:"engenheiros";i:5;s:21:"funcionarios-publicos";i:6;s:26:"profissionais-de-ed-fisica";i:7;s:22:"profissionais-liberais";i:8;s:17:"relac-es-publicas";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"197,71";}', 'a:1:{i:0;s:6:"257,02";}', 'a:1:{i:0;s:6:"282,73";}', 'a:1:{i:0;s:6:"308,17";}', 'a:1:{i:0;s:6:"282,73";}', 'a:1:{i:0;s:6:"372,88";}', 'a:1:{i:0;s:6:"484,38";}', 'a:1:{i:0;s:6:"557,04";}', 'a:1:{i:0;s:6:"696,30";}', 'a:1:{i:0;s:8:"1.183,71";}', '2014-12-19 13:58:48', '2014-12-19 20:47:04'),
(19, 4, 9, 'Apartamento', 'a:9:{i:0;s:15:"administradores";i:1;s:10:"arquitetos";i:2;s:13:"contabilistas";i:3;s:9:"dentistas";i:4;s:11:"engenheiros";i:5;s:21:"funcionarios-publicos";i:6;s:26:"profissionais-de-ed-fisica";i:7;s:22:"profissionais-liberais";i:8;s:17:"relac-es-publicas";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"210,89";}', 'a:1:{i:0;s:6:"274,16";}', 'a:1:{i:0;s:6:"301,57";}', 'a:1:{i:0;s:6:"328,71";}', 'a:1:{i:0;s:6:"301,57";}', 'a:1:{i:0;s:6:"397,74";}', 'a:1:{i:0;s:6:"516,67";}', 'a:1:{i:0;s:6:"594,17";}', 'a:1:{i:0;s:6:"742,72";}', 'a:1:{i:0;s:8:"1.262,62";}', '2014-12-19 13:59:36', '2014-12-19 20:47:23'),
(20, 4, 10, 'Apartamento', 'a:9:{i:0;s:15:"administradores";i:1;s:10:"arquitetos";i:2;s:13:"contabilistas";i:3;s:9:"dentistas";i:4;s:11:"engenheiros";i:5;s:21:"funcionarios-publicos";i:6;s:26:"profissionais-de-ed-fisica";i:7;s:22:"profissionais-liberais";i:8;s:17:"relac-es-publicas";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"263,61";}', 'a:1:{i:0;s:6:"342,69";}', 'a:1:{i:0;s:6:"376,96";}', 'a:1:{i:0;s:6:"410,88";}', 'a:1:{i:0;s:6:"376,96";}', 'a:1:{i:0;s:6:"497,17";}', 'a:1:{i:0;s:6:"645,82";}', 'a:1:{i:0;s:6:"742,70";}', 'a:1:{i:0;s:6:"928,38";}', 'a:1:{i:0;s:8:"1.578,24";}', '2014-12-19 14:00:23', '2014-12-19 20:47:40'),
(21, 6, 17, 'Enfermaria', 'a:21:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:9:"agronomos";i:3;s:10:"arquitetos";i:4;s:16:"comerciantes-cdl";i:5;s:13:"contabilistas";i:6;s:9:"dentistas";i:7;s:11:"economistas";i:8;s:11:"enfermeiros";i:9;s:11:"engenheiros";i:10;s:13:"farmac-uticos";i:11;s:15:"fisioterapeutas";i:12;s:14:"fonoaudiologos";i:13;s:21:"funcionarios-publicos";i:14;s:11:"jornalistas";i:15;s:7:"medicos";i:16;s:14:"nutricionistas";i:17;s:26:"profissionais-de-ed-fisica";i:18;s:10:"psicologos";i:19;s:17:"relac-es-publicas";i:20;s:12:"veterinarios";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"199,81";}', 'a:1:{i:0;s:6:"312,75";}', 'a:1:{i:0;s:6:"321,26";}', 'a:1:{i:0;s:6:"326,67";}', 'a:1:{i:0;s:6:"336,54";}', 'a:1:{i:0;s:6:"341,15";}', 'a:1:{i:0;s:6:"489,51";}', 'a:1:{i:0;s:6:"197,07";}', 'a:1:{i:0;s:6:"616,36";}', 'a:1:{i:0;s:8:"1.198,77";}', '2014-12-19 20:58:32', '2014-12-19 20:58:32'),
(22, 6, 17, 'Apartamento', 'a:22:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:9:"agronomos";i:3;s:10:"arquitetos";i:4;s:16:"comerciantes-cdl";i:5;s:13:"contabilistas";i:6;s:9:"dentistas";i:7;s:11:"economistas";i:8;s:11:"enfermeiros";i:9;s:11:"engenheiros";i:10;s:13:"farmac-uticos";i:11;s:15:"fisioterapeutas";i:12;s:14:"fonoaudiologos";i:13;s:21:"funcionarios-publicos";i:14;s:11:"jornalistas";i:15;s:7:"medicos";i:16;s:14:"nutricionistas";i:17;s:26:"profissionais-de-ed-fisica";i:18;s:22:"profissionais-liberais";i:19;s:10:"psicologos";i:20;s:17:"relac-es-publicas";i:21;s:12:"veterinarios";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"218,37";}', 'a:1:{i:0;s:6:"341,82";}', 'a:1:{i:0;s:6:"351,09";}', 'a:1:{i:0;s:6:"357,00";}', 'a:1:{i:0;s:6:"367,79";}', 'a:1:{i:0;s:6:"372,83";}', 'a:1:{i:0;s:6:"534,99";}', 'a:1:{i:0;s:6:"543,25";}', 'a:1:{i:0;s:6:"673,62";}', 'a:1:{i:0;s:8:"1.310,14";}', '2014-12-19 20:59:55', '2014-12-19 20:59:55'),
(23, 6, 18, 'Apartamento', 'a:22:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:9:"agronomos";i:3;s:10:"arquitetos";i:4;s:16:"comerciantes-cdl";i:5;s:13:"contabilistas";i:6;s:9:"dentistas";i:7;s:11:"economistas";i:8;s:11:"enfermeiros";i:9;s:11:"engenheiros";i:10;s:13:"farmac-uticos";i:11;s:15:"fisioterapeutas";i:12;s:14:"fonoaudiologos";i:13;s:21:"funcionarios-publicos";i:14;s:11:"jornalistas";i:15;s:7:"medicos";i:16;s:14:"nutricionistas";i:17;s:26:"profissionais-de-ed-fisica";i:18;s:22:"profissionais-liberais";i:19;s:10:"psicologos";i:20;s:17:"relac-es-publicas";i:21;s:12:"veterinarios";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"245,34";}', 'a:1:{i:0;s:6:"384,06";}', 'a:1:{i:0;s:6:"394,51";}', 'a:1:{i:0;s:6:"401,15";}', 'a:1:{i:0;s:6:"394,51";}', 'a:1:{i:0;s:6:"418,92";}', 'a:1:{i:0;s:6:"601,08";}', 'a:1:{i:0;s:6:"610,39";}', 'a:1:{i:0;s:6:"756,87";}', 'a:1:{i:0;s:8:"1.472,06";}', '2014-12-19 21:02:28', '2014-12-19 21:05:06'),
(24, 6, 19, 'Apartamento', 'a:21:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:9:"agronomos";i:3;s:10:"arquitetos";i:4;s:16:"comerciantes-cdl";i:5;s:13:"contabilistas";i:6;s:9:"dentistas";i:7;s:11:"economistas";i:8;s:11:"enfermeiros";i:9;s:11:"engenheiros";i:10;s:13:"farmac-uticos";i:11;s:15:"fisioterapeutas";i:12;s:14:"fonoaudiologos";i:13;s:21:"funcionarios-publicos";i:14;s:11:"jornalistas";i:15;s:7:"medicos";i:16;s:14:"nutricionistas";i:17;s:26:"profissionais-de-ed-fisica";i:18;s:10:"psicologos";i:19;s:17:"relac-es-publicas";i:20;s:12:"veterinarios";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"269,89";}', 'a:1:{i:0;s:6:"422,46";}', 'a:1:{i:0;s:6:"433,95";}', 'a:1:{i:0;s:6:"441,25";}', 'a:1:{i:0;s:6:"433,95";}', 'a:1:{i:0;s:6:"460,80";}', 'a:1:{i:0;s:6:"661,21";}', 'a:1:{i:0;s:6:"671,43";}', 'a:1:{i:0;s:6:"832,56";}', 'a:1:{i:0;s:8:"1.619,27";}', '2014-12-19 21:03:39', '2014-12-19 21:04:55'),
(25, 6, 20, 'Apartamento', 'a:21:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:9:"agronomos";i:3;s:10:"arquitetos";i:4;s:16:"comerciantes-cdl";i:5;s:13:"contabilistas";i:6;s:9:"dentistas";i:7;s:11:"economistas";i:8;s:11:"enfermeiros";i:9;s:11:"engenheiros";i:10;s:13:"farmac-uticos";i:11;s:15:"fisioterapeutas";i:12;s:14:"fonoaudiologos";i:13;s:21:"funcionarios-publicos";i:14;s:11:"jornalistas";i:15;s:7:"medicos";i:16;s:14:"nutricionistas";i:17;s:26:"profissionais-de-ed-fisica";i:18;s:10:"psicologos";i:19;s:17:"relac-es-publicas";i:20;s:12:"veterinarios";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"302,82";}', 'a:1:{i:0;s:6:"509,88";}', 'a:1:{i:0;s:6:"516,52";}', 'a:1:{i:0;s:6:"536,75";}', 'a:1:{i:0;s:6:"552,32";}', 'a:1:{i:0;s:6:"560,29";}', 'a:1:{i:0;s:6:"741,88";}', 'a:1:{i:0;s:6:"942,88";}', 'a:1:{i:0;s:8:"1.169,18";}', 'a:1:{i:0;s:8:"1.816,90";}', '2014-12-19 21:04:42', '2014-12-19 21:04:42'),
(26, 6, 21, 'Apartamento', 'a:21:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:9:"agronomos";i:3;s:10:"arquitetos";i:4;s:16:"comerciantes-cdl";i:5;s:13:"contabilistas";i:6;s:9:"dentistas";i:7;s:11:"economistas";i:8;s:11:"enfermeiros";i:9;s:11:"engenheiros";i:10;s:13:"farmac-uticos";i:11;s:15:"fisioterapeutas";i:12;s:14:"fonoaudiologos";i:13;s:21:"funcionarios-publicos";i:14;s:11:"jornalistas";i:15;s:7:"medicos";i:16;s:14:"nutricionistas";i:17;s:26:"profissionais-de-ed-fisica";i:18;s:10:"psicologos";i:19;s:17:"relac-es-publicas";i:20;s:12:"veterinarios";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"606,35";}', 'a:1:{i:0;s:8:"1.020,95";}', 'a:1:{i:0;s:8:"1.034,21";}', 'a:1:{i:0;s:8:"1.074,74";}', 'a:1:{i:0;s:8:"1.105,92";}', 'a:1:{i:0;s:8:"1.121,88";}', 'a:1:{i:0;s:8:"1.485,53";}', 'a:1:{i:0;s:8:"1.887,97";}', 'a:1:{i:0;s:8:"2.341,09";}', 'a:1:{i:0;s:8:"3.638,04";}', '2014-12-19 21:06:27', '2014-12-19 21:06:27'),
(27, 6, 17, 'Enfermaria', 'a:3:{i:0;s:33:"empregados-do-comercio-e-servicos";i:1;s:10:"estudantes";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"239,75";}', 'a:1:{i:0;s:6:"375,31";}', 'a:1:{i:0;s:6:"385,52";}', 'a:1:{i:0;s:6:"391,99";}', 'a:1:{i:0;s:6:"403,84";}', 'a:1:{i:0;s:6:"409,39";}', 'a:1:{i:0;s:6:"587,41";}', 'a:1:{i:0;s:6:"596,47";}', 'a:1:{i:0;s:6:"739,64";}', 'a:1:{i:0;s:8:"1.438,53";}', '2014-12-19 21:08:34', '2014-12-19 21:08:34'),
(28, 6, 17, 'Apartamento', 'a:3:{i:0;s:33:"empregados-do-comercio-e-servicos";i:1;s:10:"estudantes";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"262,03";}', 'a:1:{i:0;s:6:"410,18";}', 'a:1:{i:0;s:6:"421,33";}', 'a:1:{i:0;s:6:"428,42";}', 'a:1:{i:0;s:6:"441,36";}', 'a:1:{i:0;s:6:"447,41";}', 'a:1:{i:0;s:6:"641,98";}', 'a:1:{i:0;s:6:"651,89";}', 'a:1:{i:0;s:6:"808,34";}', 'a:1:{i:0;s:8:"1.572,18";}', '2014-12-19 21:09:53', '2014-12-19 21:09:53'),
(29, 6, 18, 'Apartamento', 'a:3:{i:0;s:33:"empregados-do-comercio-e-servicos";i:1;s:10:"estudantes";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"294,41";}', 'a:1:{i:0;s:6:"460,87";}', 'a:1:{i:0;s:6:"473,38";}', 'a:1:{i:0;s:6:"481,35";}', 'a:1:{i:0;s:6:"495,90";}', 'a:1:{i:0;s:6:"502,70";}', 'a:1:{i:0;s:6:"721,32";}', 'a:1:{i:0;s:6:"732,46";}', 'a:1:{i:0;s:6:"908,26";}', 'a:1:{i:0;s:8:"1.766,48";}', '2014-12-19 21:11:09', '2014-12-19 21:11:09'),
(30, 6, 19, 'Apartamento', 'a:3:{i:0;s:33:"empregados-do-comercio-e-servicos";i:1;s:10:"estudantes";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"323,87";}', 'a:1:{i:0;s:6:"506,97";}', 'a:1:{i:0;s:6:"520,75";}', 'a:1:{i:0;s:6:"529,52";}', 'a:1:{i:0;s:6:"545,49";}', 'a:1:{i:0;s:6:"552,97";}', 'a:1:{i:0;s:6:"793,44";}', 'a:1:{i:0;s:6:"805,70";}', 'a:1:{i:0;s:6:"999,09";}', 'a:1:{i:0;s:8:"1.943,13";}', '2014-12-19 21:12:02', '2014-12-19 21:12:02'),
(31, 6, 20, 'Apartamento', 'a:3:{i:0;s:33:"empregados-do-comercio-e-servicos";i:1;s:10:"estudantes";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"363,38";}', 'a:1:{i:0;s:6:"611,84";}', 'a:1:{i:0;s:6:"619,80";}', 'a:1:{i:0;s:6:"644,08";}', 'a:1:{i:0;s:6:"662,77";}', 'a:1:{i:0;s:6:"672,34";}', 'a:1:{i:0;s:6:"890,27";}', 'a:1:{i:0;s:8:"1.131,47";}', 'a:1:{i:0;s:8:"1.403,02";}', 'a:1:{i:0;s:8:"2.180,28";}', '2014-12-19 21:12:56', '2014-12-19 21:12:56'),
(32, 6, 21, 'Apartamento', 'a:3:{i:0;s:33:"empregados-do-comercio-e-servicos";i:1;s:10:"estudantes";i:2;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"727,62";}', 'a:1:{i:0;s:8:"1.225,13";}', 'a:1:{i:0;s:8:"1.241,07";}', 'a:1:{i:0;s:8:"1.289,68";}', 'a:1:{i:0;s:8:"1.327,11";}', 'a:1:{i:0;s:8:"1.346,26";}', 'a:1:{i:0;s:8:"1.782,63";}', 'a:1:{i:0;s:8:"2.265,55";}', 'a:1:{i:0;s:8:"2.809,32";}', 'a:1:{i:0;s:8:"4.365,63";}', '2014-12-19 21:14:03', '2014-12-19 21:14:03'),
(33, 5, 22, 'Enfermaria', 'a:10:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:10:"arquitetos";i:3;s:13:"contabilistas";i:4;s:9:"dentistas";i:5;s:35:"empregadores-do-comercio-e-servicos";i:6;s:11:"engenheiros";i:7;s:21:"funcionarios-publicos";i:8;s:7:"medicos";i:9;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"145,71";}', 'a:1:{i:0;s:6:"181,26";}', 'a:1:{i:0;s:6:"212,82";}', 'a:1:{i:0;s:6:"260,12";}', 'a:1:{i:0;s:6:"289,95";}', 'a:1:{i:0;s:6:"301,99";}', 'a:1:{i:0;s:6:"356,97";}', 'a:1:{i:0;s:6:"417,08";}', 'a:1:{i:0;s:6:"496,16";}', 'a:1:{i:0;s:6:"874,22";}', '2014-12-19 21:31:17', '2014-12-19 21:31:17'),
(34, 5, 22, 'Apartamento', 'a:10:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:10:"arquitetos";i:3;s:13:"contabilistas";i:4;s:9:"dentistas";i:5;s:35:"empregadores-do-comercio-e-servicos";i:6;s:11:"engenheiros";i:7;s:21:"funcionarios-publicos";i:8;s:7:"medicos";i:9;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"182,13";}', 'a:1:{i:0;s:6:"226,57";}', 'a:1:{i:0;s:6:"266,02";}', 'a:1:{i:0;s:6:"325,15";}', 'a:1:{i:0;s:6:"362,45";}', 'a:1:{i:0;s:6:"377,48";}', 'a:1:{i:0;s:6:"446,20";}', 'a:1:{i:0;s:6:"521,34";}', 'a:1:{i:0;s:6:"620,18";}', 'a:1:{i:0;s:8:"1.092,75";}', '2014-12-19 21:32:23', '2014-12-19 21:32:23'),
(35, 5, 23, 'Enfermaria', 'a:10:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:10:"arquitetos";i:3;s:13:"contabilistas";i:4;s:9:"dentistas";i:5;s:35:"empregadores-do-comercio-e-servicos";i:6;s:11:"engenheiros";i:7;s:21:"funcionarios-publicos";i:8;s:7:"medicos";i:9;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"180,46";}', 'a:1:{i:0;s:6:"224,50";}', 'a:1:{i:0;s:6:"263,58";}', 'a:1:{i:0;s:6:"322,17";}', 'a:1:{i:0;s:6:"359,11";}', 'a:1:{i:0;s:6:"373,99";}', 'a:1:{i:0;s:6:"442,09";}', 'a:1:{i:0;s:6:"516,55";}', 'a:1:{i:0;s:6:"614,47";}', 'a:1:{i:0;s:8:"1.082,69";}', '2014-12-19 21:33:22', '2014-12-19 21:33:22'),
(36, 5, 23, 'Apartamento', 'a:10:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:10:"arquitetos";i:3;s:13:"contabilistas";i:4;s:9:"dentistas";i:5;s:35:"empregadores-do-comercio-e-servicos";i:6;s:11:"engenheiros";i:7;s:21:"funcionarios-publicos";i:8;s:7:"medicos";i:9;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"225,57";}', 'a:1:{i:0;s:6:"280,62";}', 'a:1:{i:0;s:6:"329,48";}', 'a:1:{i:0;s:6:"402,71";}', 'a:1:{i:0;s:6:"448,89";}', 'a:1:{i:0;s:6:"467,50";}', 'a:1:{i:0;s:6:"552,62";}', 'a:1:{i:0;s:6:"645,68";}', 'a:1:{i:0;s:6:"768,10";}', 'a:1:{i:0;s:8:"1.353,38";}', '2014-12-19 21:34:16', '2014-12-19 21:34:16'),
(37, 5, 24, 'Enfermaria', 'a:10:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:10:"arquitetos";i:3;s:13:"contabilistas";i:4;s:9:"dentistas";i:5;s:35:"empregadores-do-comercio-e-servicos";i:6;s:11:"engenheiros";i:7;s:21:"funcionarios-publicos";i:8;s:7:"medicos";i:9;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"201,54";}', 'a:1:{i:0;s:6:"250,71";}', 'a:1:{i:0;s:6:"294,35";}', 'a:1:{i:0;s:6:"359,78";}', 'a:1:{i:0;s:6:"401,04";}', 'a:1:{i:0;s:6:"417,67";}', 'a:1:{i:0;s:6:"493,73";}', 'a:1:{i:0;s:6:"576,85";}', 'a:1:{i:0;s:6:"686,23";}', 'a:1:{i:0;s:8:"1.209,12";}', '2014-12-19 21:37:10', '2014-12-19 21:37:10'),
(38, 5, 24, 'Apartamento', 'a:10:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:10:"arquitetos";i:3;s:13:"contabilistas";i:4;s:9:"dentistas";i:5;s:35:"empregadores-do-comercio-e-servicos";i:6;s:11:"engenheiros";i:7;s:21:"funcionarios-publicos";i:8;s:7:"medicos";i:9;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"287,93";}', 'a:1:{i:0;s:6:"358,19";}', 'a:1:{i:0;s:6:"420,56";}', 'a:1:{i:0;s:6:"514,02";}', 'a:1:{i:0;s:6:"572,96";}', 'a:1:{i:0;s:6:"596,72";}', 'a:1:{i:0;s:6:"705,39";}', 'a:1:{i:0;s:6:"824,16";}', 'a:1:{i:0;s:6:"980,41";}', 'a:1:{i:0;s:8:"1.727,48";}', '2014-12-19 21:38:23', '2014-12-19 21:38:23'),
(39, 5, 25, 'Apartamento 3', 'a:10:{i:0;s:15:"administradores";i:1;s:9:"advogados";i:2;s:10:"arquitetos";i:3;s:13:"contabilistas";i:4;s:9:"dentistas";i:5;s:35:"empregadores-do-comercio-e-servicos";i:6;s:11:"engenheiros";i:7;s:21:"funcionarios-publicos";i:8;s:7:"medicos";i:9;s:36:"profissionais-do-comercio-e-servicos";}', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"529,82";}', 'a:1:{i:0;s:6:"656,65";}', 'a:1:{i:0;s:6:"770,95";}', 'a:1:{i:0;s:6:"942,31";}', 'a:1:{i:0;s:8:"1.050,36";}', 'a:1:{i:0;s:8:"1.093,91";}', 'a:1:{i:0;s:8:"1.293,11";}', 'a:1:{i:0;s:8:"1.510,85";}', 'a:1:{i:0;s:8:"1.797,30";}', 'a:1:{i:0;s:8:"3.166,85";}', '2014-12-19 21:39:53', '2014-12-19 21:39:53');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Fazendo dump de dados para tabela `tabelas_individuais`
--

INSERT INTO `tabelas_individuais` (`id`, `operadora_id`, `plano_id`, `acomodacao`, `titulos`, `idade0018`, `idade1923`, `idade2428`, `idade2933`, `idade3438`, `idade3943`, `idade4448`, `idade4953`, `idade5458`, `idade59`, `criado`, `editado`) VALUES
(2, 3, 4, 'Enfermaria', 'a:5:{i:0;s:6:"1 vida";i:1;s:7:"2 vidas";i:2;s:8:"3 vidas ";i:3;s:7:"4 vidas";i:4;s:7:"5 vidas";}', 'a:5:{i:0;s:5:"86,41";i:1;s:5:"82,09";i:2;s:5:"77,77";i:3;s:5:"73,45";i:4;s:5:"69,13";}', 'a:5:{i:0;s:6:"114,06";i:1;s:6:"108,36";i:2;s:6:"102,65";i:3;s:5:"96,95";i:4;s:5:"91,25";}', 'a:5:{i:0;s:6:"131,16";i:1;s:6:"124,60";i:2;s:6:"118,04";i:3;s:6:"111,49";i:4;s:6:"104,93";}', 'a:5:{i:0;s:6:"146,89";i:1;s:6:"139,55";i:2;s:6:"132,20";i:3;s:6:"124,86";i:4;s:6:"117,51";}', 'a:5:{i:0;s:6:"154,23";i:1;s:6:"146,52";i:2;s:6:"138,81";i:3;s:6:"131,10";i:4;s:6:"123,38";}', 'a:5:{i:0;s:6:"174,27";i:1;s:6:"165,56";i:2;s:6:"156,84";i:3;s:6:"148,13";i:4;s:6:"139,42";}', 'a:5:{i:0;s:6:"212,50";i:1;s:6:"201,88";i:2;s:6:"191,25";i:3;s:6:"180,63";i:4;s:6:"170,00";}', 'a:5:{i:0;s:6:"293,38";i:1;s:6:"278,71";i:2;s:6:"264,04";i:3;s:6:"249,37";i:4;s:6:"234,70";}', 'a:5:{i:0;s:6:"396,06";i:1;s:6:"376,26";i:2;s:6:"356,45";i:3;s:6:"336,65";i:4;s:6:"316,85";}', 'a:5:{i:0;s:6:"514,87";i:1;s:6:"489,13";i:2;s:6:"463,38";i:3;s:6:"437,64";i:4;s:6:"411,90";}', '2014-12-12 19:39:33', '2015-01-16 11:50:00'),
(3, 3, 4, 'Apartamento', 'a:5:{i:0;s:6:"1 Vida";i:1;s:7:"2 Vidas";i:2;s:7:"3 Vidas";i:3;s:7:"4 Vidas";i:4;s:7:"5 Vidas";}', 'a:5:{i:0;s:6:"119,02";i:1;s:6:"113,07";i:2;s:6:"107,12";i:3;s:6:"101,17";i:4;s:5:"95,22";}', 'a:5:{i:0;s:6:"157,10";i:1;s:6:"149,25";i:2;s:6:"141,39";i:3;s:6:"133,54";i:4;s:6:"125,68";}', 'a:5:{i:0;s:6:"180,66";i:1;s:6:"171,63";i:2;s:6:"162,59";i:3;s:6:"153,56";i:4;s:6:"144,53";}', 'a:5:{i:0;s:6:"202,33";i:1;s:6:"192,21";i:2;s:6:"182,10";i:3;s:6:"171,98";i:4;s:6:"161,86";}', 'a:5:{i:0;s:6:"212,44";i:1;s:6:"201,82";i:2;s:6:"191,20";i:3;s:6:"180,57";i:4;s:6:"169,95";}', 'a:5:{i:0;s:6:"240,05";i:1;s:6:"228,05";i:2;s:6:"216,05";i:3;s:6:"204,04";i:4;s:6:"192,04";}', 'a:5:{i:0;s:6:"292,86";i:1;s:6:"278,22";i:2;s:6:"263,57";i:3;s:6:"248,93";i:4;s:6:"234,29";}', 'a:5:{i:0;s:6:"404,14";i:1;s:6:"383,93";i:2;s:6:"363,73";i:3;s:6:"343,52";i:4;s:6:"323,31";}', 'a:5:{i:0;s:6:"545,58";i:1;s:6:"518,30";i:2;s:6:"491,02";i:3;s:6:"463,74";i:4;s:6:"436,46";}', 'a:5:{i:0;s:6:"709,25";i:1;s:6:"673,79";i:2;s:6:"638,33";i:3;s:6:"602,86";i:4;s:6:"567,40";}', '2014-12-13 18:50:01', '2015-01-16 11:53:27'),
(4, 3, 5, 'Enfermaria', 'a:5:{i:0;s:6:"1 Vida";i:1;s:7:"2 vidas";i:2;s:7:"3 vidas";i:3;s:7:"4 vidas";i:4;s:7:"5 vidas";}', 'a:5:{i:0;s:6:"117,53";i:1;s:6:"111,65";i:2;s:6:"105,78";i:3;s:5:"99,90";i:4;s:5:"94,02";}', 'a:5:{i:0;s:6:"155,13";i:1;s:6:"147,37";i:2;s:6:"139,62";i:3;s:6:"131,86";i:4;s:6:"124,10";}', 'a:5:{i:0;s:6:"178,39";i:1;s:6:"169,47";i:2;s:6:"160,55";i:3;s:6:"151,63";i:4;s:6:"142,71";}', 'a:5:{i:0;s:6:"199,79";i:1;s:6:"189,80";i:2;s:6:"179,81";i:3;s:6:"169,82";i:4;s:6:"159,83";}', 'a:5:{i:0;s:6:"209,77";i:1;s:6:"199,28";i:2;s:6:"188,79";i:3;s:6:"178,30";i:4;s:6:"167,82";}', 'a:5:{i:0;s:6:"237,04";i:1;s:6:"225,19";i:2;s:6:"213,34";i:3;s:6:"201,48";i:4;s:6:"189,63";}', 'a:5:{i:0;s:6:"289,18";i:1;s:6:"274,72";i:2;s:6:"260,26";i:3;s:6:"245,80";i:4;s:6:"231,34";}', 'a:5:{i:0;s:6:"399,06";i:1;s:6:"379,11";i:2;s:6:"359,15";i:3;s:6:"339,20";i:4;s:6:"319,25";}', 'a:5:{i:0;s:6:"538,73";i:1;s:6:"511,79";i:2;s:6:"484,86";i:3;s:6:"457,92";i:4;s:6:"430,98";}', 'a:5:{i:0;s:6:"700,34";i:1;s:6:"665,32";i:2;s:6:"630,31";i:3;s:6:"595,29";i:4;s:6:"560,27";}', '2014-12-13 19:35:53', '2015-01-16 11:56:43'),
(5, 3, 5, 'Apartamento', 'a:5:{i:0;s:6:"1 vida";i:1;s:7:"2 vidas";i:2;s:7:"3 vidas";i:3;s:7:"4 vidas";i:4;s:7:"5 vidas";}', 'a:5:{i:0;s:6:"160,67";i:1;s:6:"152,64";i:2;s:6:"144,60";i:3;s:6:"136,57";i:4;s:6:"128,54";}', 'a:5:{i:0;s:6:"212,08";i:1;s:6:"201,48";i:2;s:6:"190,87";i:3;s:6:"180,27";i:4;s:6:"169,66";}', 'a:5:{i:0;s:6:"243,89";i:1;s:6:"231,70";i:2;s:6:"219,50";i:3;s:6:"207,31";i:4;s:6:"195,11";}', 'a:5:{i:0;s:6:"273,15";i:1;s:6:"259,49";i:2;s:6:"245,84";i:3;s:6:"232,18";i:4;s:6:"218,52";}', 'a:5:{i:0;s:6:"286,80";i:1;s:6:"272,46";i:2;s:6:"258,12";i:3;s:6:"243,78";i:4;s:6:"229,44";}', 'a:5:{i:0;s:6:"324,08";i:1;s:6:"307,88";i:2;s:6:"291,67";i:3;s:6:"275,48";i:4;s:6:"259,26";}', 'a:5:{i:0;s:6:"395,37";i:1;s:6:"375,60";i:2;s:6:"355,83";i:3;s:6:"336,06";i:4;s:6:"316,30";}', 'a:5:{i:0;s:6:"545,37";i:1;s:6:"518,10";i:2;s:6:"490,83";i:3;s:6:"463,56";i:4;s:6:"436,30";}', 'a:5:{i:0;s:6:"736,57";i:1;s:6:"699,74";i:2;s:6:"662,91";i:3;s:6:"626,08";i:4;s:6:"589,26";}', 'a:5:{i:0;s:6:"957,54";i:1;s:6:"909,66";i:2;s:6:"861,79";i:3;s:6:"813,91";i:4;s:6:"766,03";}', '2014-12-13 19:44:58', '2015-01-16 11:59:56'),
(6, 7, 11, 'Enfermaria', 'a:5:{i:0;s:6:"1 Vida";i:1;s:7:"2 vidas";i:2;s:7:"3 vidas";i:3;s:7:"4 vidas";i:4;s:7:"5 vidas";}', 'a:5:{i:0;s:6:"108,94";i:1;s:6:"105,68";i:2;s:6:"102,51";i:3;s:5:"99,43";i:4;s:5:"96,45";}', 'a:5:{i:0;s:6:"123,74";i:1;s:6:"120,03";i:2;s:6:"116,43";i:3;s:6:"112,93";i:4;s:6:"109,55";}', 'a:5:{i:0;s:6:"138,76";i:1;s:6:"134,60";i:2;s:6:"130,56";i:3;s:6:"126,64";i:4;s:6:"122,84";}', 'a:5:{i:0;s:6:"176,38";i:1;s:6:"171,09";i:2;s:6:"165,96";i:3;s:6:"160,98";i:4;s:6:"156,15";}', 'a:5:{i:0;s:6:"176,38";i:1;s:6:"171,09";i:2;s:6:"165,96";i:3;s:6:"160,98";i:4;s:6:"156,15";}', 'a:5:{i:0;s:6:"231,87";i:1;s:6:"224,91";i:2;s:6:"218,16";i:3;s:6:"211,62";i:4;s:6:"205,27";}', 'a:5:{i:0;s:6:"296,47";i:1;s:6:"287,57";i:2;s:6:"278,95";i:3;s:6:"270,58";i:4;s:6:"262,46";}', 'a:5:{i:0;s:6:"416,09";i:1;s:6:"403,61";i:2;s:6:"391,50";i:3;s:6:"379,75";i:4;s:6:"368,36";}', 'a:5:{i:0;s:6:"489,99";i:1;s:6:"475,29";i:2;s:6:"461,03";i:3;s:6:"447,20";i:4;s:6:"433,78";}', 'a:5:{i:0;s:6:"635,91";i:1;s:6:"616,83";i:2;s:6:"598,33";i:3;s:6:"580,38";i:4;s:6:"562,96";}', '2014-12-19 14:51:27', '2014-12-19 14:51:27'),
(7, 7, 11, 'Apartamento', 'a:5:{i:0;s:6:"1 vida";i:1;s:7:"2 vidas";i:2;s:7:"3 vidas";i:3;s:7:"4 vidas";i:4;s:7:"5 vidas";}', 'a:5:{i:0;s:6:"140,61";i:1;s:6:"136,40";i:2;s:6:"132,30";i:3;s:6:"128,34";i:4;s:6:"124,49";}', 'a:5:{i:0;s:6:"159,71";i:1;s:6:"154,92";i:2;s:6:"150,27";i:3;s:6:"145,76";i:4;s:6:"141,39";}', 'a:5:{i:0;s:6:"179,10";i:1;s:6:"173,73";i:2;s:6:"168,51";i:3;s:6:"163,46";i:4;s:6:"158,56";}', 'a:5:{i:0;s:6:"227,65";i:1;s:6:"220,82";i:2;s:6:"214,20";i:3;s:6:"207,77";i:4;s:6:"201,54";}', 'a:5:{i:0;s:6:"227,65";i:1;s:6:"220,82";i:2;s:6:"214,20";i:3;s:6:"207,77";i:4;s:6:"201,54";}', 'a:5:{i:0;s:6:"299,27";i:1;s:6:"290,29";i:2;s:6:"281,59";i:3;s:6:"273,14";i:4;s:6:"264,94";}', 'a:5:{i:0;s:6:"382,65";i:1;s:6:"371,17";i:2;s:6:"360,03";i:3;s:6:"349,23";i:4;s:6:"338,76";}', 'a:5:{i:0;s:6:"537,05";i:1;s:6:"520,94";i:2;s:6:"505,31";i:3;s:6:"490,15";i:4;s:6:"475,45";}', 'a:5:{i:0;s:6:"632,43";i:1;s:6:"613,46";i:2;s:6:"595,05";i:3;s:6:"577,20";i:4;s:6:"559,88";}', 'a:5:{i:0;s:6:"820,77";i:1;s:6:"796,14";i:2;s:6:"772,26";i:3;s:6:"749,09";i:4;s:6:"726,62";}', '2014-12-19 15:30:22', '2014-12-19 15:30:22'),
(8, 7, 12, 'Enfermaria', 'a:5:{i:0;s:6:"1 Vida";i:1;s:7:"2 Vidas";i:2;s:7:"3 Vidas";i:3;s:7:"4 Vidas";i:4;s:7:"5 Vidas";}', 'a:5:{i:0;s:6:"105,66";i:1;s:6:"102,49";i:2;s:5:"99,42";i:3;s:5:"96,43";i:4;s:5:"93,54";}', 'a:5:{i:0;s:6:"120,00";i:1;s:6:"116,40";i:2;s:6:"112,91";i:3;s:6:"109,52";i:4;s:6:"106,24";}', 'a:5:{i:0;s:6:"134,57";i:1;s:6:"130,53";i:2;s:6:"126,62";i:3;s:6:"122,82";i:4;s:6:"119,13";}', 'a:5:{i:0;s:6:"171,06";i:1;s:6:"165,93";i:2;s:6:"160,95";i:3;s:6:"156,12";i:4;s:6:"151,44";}', 'a:5:{i:0;s:6:"171,06";i:1;s:6:"165,93";i:2;s:6:"160,95";i:3;s:6:"156,12";i:4;s:6:"151,44";}', 'a:5:{i:0;s:6:"224,87";i:1;s:6:"218,12";i:2;s:6:"211,58";i:3;s:6:"205,23";i:4;s:6:"199,08";}', 'a:5:{i:0;s:6:"287,51";i:1;s:6:"278,88";i:2;s:6:"270,52";i:3;s:6:"262,40";i:4;s:6:"254,53";}', 'a:5:{i:0;s:6:"403,52";i:1;s:6:"391,41";i:2;s:6:"379,67";i:3;s:6:"368,28";i:4;s:6:"357,23";}', 'a:5:{i:0;s:6:"475,20";i:1;s:6:"460,94";i:2;s:6:"447,12";i:3;s:6:"433,70";i:4;s:6:"420,69";}', 'a:5:{i:0;s:6:"616,71";i:1;s:6:"598,21";i:2;s:6:"580,26";i:3;s:6:"562,85";i:4;s:6:"545,97";}', '2014-12-19 15:38:46', '2014-12-19 15:38:46'),
(9, 7, 12, 'Apartamento', 'a:5:{i:0;s:6:"1 Vida";i:1;s:7:"2 Vidas";i:2;s:7:"3 Vidas";i:3;s:7:"4 Vidas";i:4;s:7:"5 Vidas";}', 'a:5:{i:0;s:6:"136,38";i:1;s:6:"132,28";i:2;s:6:"128,32";i:3;s:6:"124,47";i:4;s:6:"120,73";}', 'a:5:{i:0;s:6:"154,88";i:1;s:6:"150,24";i:2;s:6:"145,73";i:3;s:6:"141,36";i:4;s:6:"137,12";}', 'a:5:{i:0;s:6:"173,69";i:1;s:6:"168,48";i:2;s:6:"163,42";i:3;s:6:"158,52";i:4;s:6:"153,77";}', 'a:5:{i:0;s:6:"220,79";i:1;s:6:"214,16";i:2;s:6:"207,74";i:3;s:6:"201,51";i:4;s:6:"195,46";}', 'a:5:{i:0;s:6:"220,79";i:1;s:6:"214,16";i:2;s:6:"207,74";i:3;s:6:"201,51";i:4;s:6:"195,46";}', 'a:5:{i:0;s:6:"290,24";i:1;s:6:"281,53";i:2;s:6:"273,09";i:3;s:6:"264,89";i:4;s:6:"256,95";}', 'a:5:{i:0;s:6:"371,09";i:1;s:6:"359,96";i:2;s:6:"349,16";i:3;s:6:"338,68";i:4;s:6:"328,52";}', 'a:5:{i:0;s:6:"520,82";i:1;s:6:"505,20";i:2;s:6:"490,04";i:3;s:6:"475,34";i:4;s:6:"461,08";}', 'a:5:{i:0;s:6:"613,34";i:1;s:6:"594,94";i:2;s:6:"577,09";i:3;s:6:"559,78";i:4;s:6:"542,99";}', 'a:5:{i:0;s:6:"795,99";i:1;s:6:"772,11";i:2;s:6:"748,94";i:3;s:6:"726,48";i:4;s:6:"704,68";}', '2014-12-19 15:42:50', '2014-12-19 15:42:50'),
(12, 8, 14, 'Enfermaria', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"190,43";}', 'a:1:{i:0;s:6:"216,84";}', 'a:1:{i:0;s:6:"254,32";}', 'a:1:{i:0;s:6:"265,40";}', 'a:1:{i:0;s:6:"317,19";}', 'a:1:{i:0;s:6:"368,95";}', 'a:1:{i:0;s:6:"484,53";}', 'a:1:{i:0;s:6:"694,93";}', 'a:1:{i:0;s:6:"905,34";}', 'a:1:{i:0;s:8:"1.115,75";}', '2014-12-19 15:50:04', '2015-01-16 11:29:44'),
(13, 8, 14, 'Apartamento', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"238,87";}', 'a:1:{i:0;s:6:"271,89";}', 'a:1:{i:0;s:6:"324,71";}', 'a:1:{i:0;s:6:"344,55";}', 'a:1:{i:0;s:6:"418,19";}', 'a:1:{i:0;s:6:"491,87";}', 'a:1:{i:0;s:6:"630,38";}', 'a:1:{i:0;s:6:"885,61";}', 'a:1:{i:0;s:8:"1.140,85";}', 'a:1:{i:0;s:8:"1.396,05";}', '2014-12-19 15:51:12', '2015-01-16 11:30:39'),
(14, 8, 15, 'Apartamento', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"298,40";}', 'a:1:{i:0;s:6:"348,39";}', 'a:1:{i:0;s:6:"445,70";}', 'a:1:{i:0;s:6:"492,99";}', 'a:1:{i:0;s:6:"570,48";}', 'a:1:{i:0;s:6:"647,94";}', 'a:1:{i:0;s:6:"817,77";}', 'a:1:{i:0;s:8:"1.141,70";}', 'a:1:{i:0;s:8:"1.465,60";}', 'a:1:{i:0;s:8:"1.789,49";}', '2014-12-19 15:52:17', '2015-01-16 11:32:32'),
(15, 8, 16, 'Apartamento', 'a:1:{i:0;s:11:"1 vida ou +";}', 'a:1:{i:0;s:6:"385,90";}', 'a:1:{i:0;s:6:"450,58";}', 'a:1:{i:0;s:6:"576,42";}', 'a:1:{i:0;s:6:"637,58";}', 'a:1:{i:0;s:6:"737,81";}', 'a:1:{i:0;s:6:"838,01";}', 'a:1:{i:0;s:8:"1.057,65";}', 'a:1:{i:0;s:8:"1.476,59";}', 'a:1:{i:0;s:8:"1.895,49";}', 'a:1:{i:0;s:8:"2.314,39";}', '2014-12-19 15:55:22', '2015-01-16 11:35:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`) VALUES
(1, 'Administrador', 'admin@displan.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'Tassiano Alencar', 'tassianomac@me.com', '21232f297a57a5a743894a0e4a801fc3', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
