-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/08/2023 às 20:12
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdalberto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblaluno`
--

CREATE TABLE `tblaluno` (
  `idaluno` int(11) NOT NULL,
  `aluno` varchar(50) NOT NULL,
  `dtmat` date NOT NULL,
  `mensalidade` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblaluno`
--

INSERT INTO `tblaluno` (`idaluno`, `aluno`, `dtmat`, `mensalidade`) VALUES
(1, 'Juan', '2023-08-05', 258.00),
(2, 'Alberto', '2023-03-02', 258.00),
(3, 'Monique', '2023-03-14', 150.02),
(4, 'Morganna', '2021-06-06', 200.00),
(5, 'Giullianna', '2016-05-10', 258.00),
(6, 'Maria Lys', '2015-08-12', 258.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblcliente`
--

CREATE TABLE `tblcliente` (
  `idcliente` int(11) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblcliente`
--

INSERT INTO `tblcliente` (`idcliente`, `cliente`, `cpf`, `email`) VALUES
(1, 'Carlos Marcos', '45195125802', 'carlosmarcos@gmail.com'),
(2, 'Fátima Cardoso', '95885625102', 'fátimacardoso@hotmail.com.br'),
(3, 'Antônio Carlos', '78532545295', 'antoniocarlos@gmail.com'),
(4, 'Flávia Siqueira', '12345895165', 'flaviasiqueira@hotmail.com.br'),
(5, 'Jorge Carlos', '75458625136', 'jorgecarlos@uol.com.br'),
(6, 'Alan Costa', '22565845136', 'alanconsta@hotmail.com.br');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tblaluno`
--
ALTER TABLE `tblaluno`
  ADD PRIMARY KEY (`idaluno`);

--
-- Índices de tabela `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tblaluno`
--
ALTER TABLE `tblaluno`
  MODIFY `idaluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tblcliente`
--
ALTER TABLE `tblcliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
