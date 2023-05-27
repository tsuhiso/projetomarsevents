-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.27-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para marsevents
CREATE DATABASE IF NOT EXISTS `marsevents` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `marsevents`;

-- Copiando estrutura para tabela marsevents.adm
CREATE TABLE IF NOT EXISTS `adm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.adm: ~0 rows (aproximadamente)
DELETE FROM `adm`;
INSERT INTO `adm` (`id`, `nome`, `email`, `senha`, `foto`, `id_usuario`) VALUES
	(2, 'isabele', 'isa@gmail.com', '123', 'b00561e7e754ca64719e9957a3819880y.png', 3);

-- Copiando estrutura para tabela marsevents.categoria_evento
CREATE TABLE IF NOT EXISTS `categoria_evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.categoria_evento: ~0 rows (aproximadamente)
DELETE FROM `categoria_evento`;

-- Copiando estrutura para tabela marsevents.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` int(11) NOT NULL,
  `data_nasc` date NOT NULL,
  `rg` int(25) NOT NULL,
  `tel` varchar(25) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.cliente: ~1 rows (aproximadamente)
DELETE FROM `cliente`;
INSERT INTO `cliente` (`id_usuario`, `nome`, `cpf`, `data_nasc`, `rg`, `tel`, `endereco`, `email`, `senha`, `foto`) VALUES
	(2, 'marcos vinicius', 2147483647, '2009-02-21', 2147483647, '29403840', 'registro', 'marcosqueiroz495@gmail.com', '123', '814d0c331f26e3c3162e6e3b92114b6br.png');

-- Copiando estrutura para tabela marsevents.especializacao
CREATE TABLE IF NOT EXISTS `especializacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.especializacao: ~6 rows (aproximadamente)
DELETE FROM `especializacao`;
INSERT INTO `especializacao` (`id`, `desc`) VALUES
	(1, 'decoracao'),
	(2, 'alimentos'),
	(3, 'iluminacao'),
	(4, 'som'),
	(5, 'limpeza'),
	(6, 'locucao'),
	(7, 'locação'),
	(8, 'buffet');

-- Copiando estrutura para tabela marsevents.eventos
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `id_categoria` varchar(255) DEFAULT NULL,
  `data_evento` date DEFAULT NULL,
  `horario` time DEFAULT NULL,
  `local_evento` varchar(255) DEFAULT NULL,
  `servico` int(11) DEFAULT NULL,
  `formas_pagamento` varchar(50) DEFAULT NULL,
  `email_dono` varchar(255) DEFAULT NULL,
  `nome_dono` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `rest_idade` int(11) DEFAULT NULL,
  `qtd_pessoas` int(11) DEFAULT NULL,
  `valor_ingresso` double DEFAULT NULL,
  `qtd_ingressos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.eventos: ~0 rows (aproximadamente)
DELETE FROM `eventos`;
INSERT INTO `eventos` (`id`, `nome`, `id_categoria`, `data_evento`, `horario`, `local_evento`, `servico`, `formas_pagamento`, `email_dono`, `nome_dono`, `foto`, `descricao`, `rest_idade`, `qtd_pessoas`, `valor_ingresso`, `qtd_ingressos`) VALUES
	(7, 'Taylor Swift Tour', '6', '2023-05-26', '18:20:00', 'Allianz Parque', 3, 'pago', 'marcosqueiroz495@gmail.com', 'marcos vinicius', 'b2e717a59f1dd1d4188eacdf3d558eebs.jpg', 'Tour Taylor Swift', 18, 50, 300, 50);

-- Copiando estrutura para tabela marsevents.feitos
CREATE TABLE IF NOT EXISTS `feitos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_fornecedor` varchar(255) DEFAULT NULL,
  `especializacao` int(11) DEFAULT NULL,
  `nome_evento` varchar(255) DEFAULT NULL,
  `data_evento` date DEFAULT NULL,
  `horario` time DEFAULT NULL,
  `local_evento` varchar(255) DEFAULT NULL,
  `nome_dono` varchar(255) DEFAULT NULL,
  `email_dono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela marsevents.feitos: ~3 rows (aproximadamente)
DELETE FROM `feitos`;
INSERT INTO `feitos` (`id`, `email_fornecedor`, `especializacao`, `nome_evento`, `data_evento`, `horario`, `local_evento`, `nome_dono`, `email_dono`) VALUES
	(4, 'bbelequeiroz@gmail.com', 4, 'Taylor Swift Tour', '2023-05-26', '18:20:00', 'Allianz Parque', 'marcos vinicius', 'marcosqueiroz495@gmail.com'),
	(5, 'bbelequeiroz@gmail.com', 4, 'Taylor Swift Tour', '2023-05-26', '18:20:00', 'Allianz Parque', 'marcos vinicius', 'marcosqueiroz495@gmail.com'),
	(6, 'bbelequeiroz@gmail.com', 4, 'Taylor Swift Tour', '2023-05-26', '18:20:00', 'Allianz Parque', 'marcos vinicius', 'marcosqueiroz495@gmail.com');

-- Copiando estrutura para tabela marsevents.fornecedor
CREATE TABLE IF NOT EXISTS `fornecedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(11) DEFAULT NULL,
  `cnpj` int(14) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `id_especializacao` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.fornecedor: ~0 rows (aproximadamente)
DELETE FROM `fornecedor`;
INSERT INTO `fornecedor` (`id`, `tel`, `cnpj`, `nome`, `senha`, `id_especializacao`, `email`, `id_usuario`, `endereco`, `foto`) VALUES
	(1, '123456789', 4674686, 'Isabele Leticia', '123', 4, 'bbelequeiroz@gmail.com', 1, 'FUJI', '25bdc0721da82c8ce6c11b2edf5576ccr.png');

-- Copiando estrutura para tabela marsevents.ingresso
CREATE TABLE IF NOT EXISTS `ingresso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_evento` int(11) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `email_usuario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.ingresso: ~0 rows (aproximadamente)
DELETE FROM `ingresso`;
INSERT INTO `ingresso` (`id`, `id_evento`, `qtd`, `email_usuario`) VALUES
	(5, 7, NULL, 'marcosqueiroz495@gmail.com');

-- Copiando estrutura para tabela marsevents.notificacao_cliente
CREATE TABLE IF NOT EXISTS `notificacao_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `nome_evento` varchar(255) DEFAULT NULL,
  `servico` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.notificacao_cliente: ~0 rows (aproximadamente)
DELETE FROM `notificacao_cliente`;

-- Copiando estrutura para tabela marsevents.notificacao_fornecedor
CREATE TABLE IF NOT EXISTS `notificacao_fornecedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome_evento` varchar(255) DEFAULT NULL,
  `servico` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.notificacao_fornecedor: ~0 rows (aproximadamente)
DELETE FROM `notificacao_fornecedor`;
INSERT INTO `notificacao_fornecedor` (`id`, `msg`, `email`, `nome_evento`, `servico`) VALUES
	(12, 'Seu serviÃ§o foi aceito!', 'bbelequeiroz@gmail.com', 'Taylor Swift Tour', 4),
	(13, 'Seu serviÃ§o foi aceito!', 'bbelequeiroz@gmail.com', 'Taylor Swift Tour', 4),
	(14, 'Seu serviÃ§o foi aceito!', 'bbelequeiroz@gmail.com', 'Taylor Swift Tour', 4),
	(15, 'Seu serviÃ§o foi aceito!', 'bbelequeiroz@gmail.com', 'Taylor Swift Tour', 4),
	(16, 'Seu serviÃ§o foi aceito!', 'bbelequeiroz@gmail.com', 'Taylor Swift Tour', 4);

-- Copiando estrutura para tabela marsevents.participar
CREATE TABLE IF NOT EXISTS `participar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_fornecedor` varchar(255) DEFAULT NULL,
  `email_fornecedor` varchar(255) DEFAULT NULL,
  `nome_evento` varchar(255) DEFAULT NULL,
  `data_evento` date DEFAULT NULL,
  `email_dono` varchar(255) DEFAULT NULL,
  `tel_fornecedor` int(11) DEFAULT NULL,
  `especializacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.participar: ~0 rows (aproximadamente)
DELETE FROM `participar`;

-- Copiando estrutura para tabela marsevents.servicos
CREATE TABLE IF NOT EXISTS `servicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_fornecedor` varchar(255) DEFAULT NULL,
  `nome_evento` varchar(255) DEFAULT NULL,
  `especializacao` int(11) DEFAULT NULL,
  `data_evento` date DEFAULT NULL,
  `horario` time DEFAULT NULL,
  `local_evento` varchar(255) DEFAULT NULL,
  `nome_dono` varchar(255) DEFAULT NULL,
  `email_dono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.servicos: ~0 rows (aproximadamente)
DELETE FROM `servicos`;
INSERT INTO `servicos` (`id`, `email_fornecedor`, `nome_evento`, `especializacao`, `data_evento`, `horario`, `local_evento`, `nome_dono`, `email_dono`) VALUES
	(12, 'bbelequeiroz@gmail.com', 'Taylor Swift Tour', 4, '2023-05-26', '18:20:00', 'Allianz Parque', 'marcos vinicius', 'marcosqueiroz495@gmail.com');

-- Copiando estrutura para tabela marsevents.solicitacoes
CREATE TABLE IF NOT EXISTS `solicitacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_dono` varchar(255) DEFAULT NULL,
  `email_dono` varchar(50) DEFAULT NULL,
  `nome_evento` varchar(50) DEFAULT NULL,
  `data_evento` date DEFAULT NULL,
  `id_categoria` varchar(50) DEFAULT NULL,
  `local_evento` varchar(255) DEFAULT NULL,
  `forma_pagamento` varchar(50) DEFAULT NULL,
  `qtd_ingressos` int(11) DEFAULT NULL,
  `valor_ingresso` double DEFAULT NULL,
  `qtd_pessoas` int(11) DEFAULT NULL,
  `horario_evento` time DEFAULT NULL,
  `rest_idade` int(11) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `especializacao` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.solicitacoes: ~0 rows (aproximadamente)
DELETE FROM `solicitacoes`;

-- Copiando estrutura para tabela marsevents.tipo_usuario
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela marsevents.tipo_usuario: ~0 rows (aproximadamente)
DELETE FROM `tipo_usuario`;
INSERT INTO `tipo_usuario` (`id`, `tipo_usuario`) VALUES
	(1, 'provedor'),
	(2, 'cliente'),
	(3, 'adm');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
