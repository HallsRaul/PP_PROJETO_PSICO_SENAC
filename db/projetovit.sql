-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/04/2024 às 14:49
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetovit`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `comoasociedade`
--

CREATE TABLE `comoasociedade` (
  `comoid` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `tiposdeterapia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudos`
--

CREATE TABLE `conteudos` (
  `conteudosid` int(11) NOT NULL,
  `texto` longtext DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `duvidas`
--

CREATE TABLE `duvidas` (
  `duvidasid` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `conteudos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `introducao`
--

CREATE TABLE `introducao` (
  `introducaoid` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `porquedevemosfazer`
--

CREATE TABLE `porquedevemosfazer` (
  `porqueid` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `texto` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `projeto`
--

CREATE TABLE `projeto` (
  `projetoid` int(11) NOT NULL,
  `conteudos_id` int(11) DEFAULT NULL,
  `duvidas_id` int(11) DEFAULT NULL,
  `introducao_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `psiconocotidiano`
--

CREATE TABLE `psiconocotidiano` (
  `psicoid` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `porquedevemosfazer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tiposdeterapia`
--

CREATE TABLE `tiposdeterapia` (
  `tiposid` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  `psiconocotidiano_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `comoasociedade`
--
ALTER TABLE `comoasociedade`
  ADD PRIMARY KEY (`comoid`),
  ADD KEY `fk_comoasociedade_tiposdeterapia1_idx` (`tiposdeterapia_id`);

--
-- Índices de tabela `conteudos`
--
ALTER TABLE `conteudos`
  ADD PRIMARY KEY (`conteudosid`);

--
-- Índices de tabela `duvidas`
--
ALTER TABLE `duvidas`
  ADD PRIMARY KEY (`duvidasid`),
  ADD KEY `fk_duvidas_conteudos1_idx` (`conteudos_id`);

--
-- Índices de tabela `introducao`
--
ALTER TABLE `introducao`
  ADD PRIMARY KEY (`introducaoid`);

--
-- Índices de tabela `porquedevemosfazer`
--
ALTER TABLE `porquedevemosfazer`
  ADD PRIMARY KEY (`porqueid`);

--
-- Índices de tabela `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`projetoid`),
  ADD KEY `fk_projeto_conteudos_idx` (`conteudos_id`),
  ADD KEY `fk_projeto_duvidas1_idx` (`duvidas_id`),
  ADD KEY `fk_projeto_introducao1_idx` (`introducao_id`);

--
-- Índices de tabela `psiconocotidiano`
--
ALTER TABLE `psiconocotidiano`
  ADD PRIMARY KEY (`psicoid`),
  ADD KEY `fk_psiconocotidiano_porquedevemosfazer1_idx` (`porquedevemosfazer_id`);

--
-- Índices de tabela `tiposdeterapia`
--
ALTER TABLE `tiposdeterapia`
  ADD PRIMARY KEY (`tiposid`),
  ADD KEY `fk_tiposdeterapia_psiconocotidiano1_idx` (`psiconocotidiano_id`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `comoasociedade`
--
ALTER TABLE `comoasociedade`
  ADD CONSTRAINT `fk_comoasociedade_tiposdeterapia1` FOREIGN KEY (`tiposdeterapia_id`) REFERENCES `tiposdeterapia` (`tiposid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `duvidas`
--
ALTER TABLE `duvidas`
  ADD CONSTRAINT `fk_duvidas_conteudos1` FOREIGN KEY (`conteudos_id`) REFERENCES `conteudos` (`conteudosid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `projeto`
--
ALTER TABLE `projeto`
  ADD CONSTRAINT `fk_projeto_conteudos` FOREIGN KEY (`conteudos_id`) REFERENCES `conteudos` (`conteudosid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_projeto_duvidas1` FOREIGN KEY (`duvidas_id`) REFERENCES `duvidas` (`duvidasid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_projeto_introducao1` FOREIGN KEY (`introducao_id`) REFERENCES `introducao` (`introducaoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `psiconocotidiano`
--
ALTER TABLE `psiconocotidiano`
  ADD CONSTRAINT `fk_psiconocotidiano_porquedevemosfazer1` FOREIGN KEY (`porquedevemosfazer_id`) REFERENCES `porquedevemosfazer` (`porqueid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tiposdeterapia`
--
ALTER TABLE `tiposdeterapia`
  ADD CONSTRAINT `fk_tiposdeterapia_psiconocotidiano1` FOREIGN KEY (`psiconocotidiano_id`) REFERENCES `psiconocotidiano` (`psicoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
