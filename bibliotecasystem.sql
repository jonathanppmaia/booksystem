-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 21-Ago-2022 às 13:40
-- Versão do servidor: 10.8.3-MariaDB
-- versão do PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bibliotecasystem`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id_aluno` int(5) NOT NULL,
  `aluno_nome` varchar(60) NOT NULL,
  `aluno_matricula` varchar(25) NOT NULL,
  `aluno_email` varchar(50) NOT NULL,
  `aluno_criadoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `aluno_nome`, `aluno_matricula`, `aluno_email`, `aluno_criadoem`) VALUES
(1, 'Ana Silva', '649', 'anasilva@hotmail.com', '2022-08-20 20:42:39'),
(2, 'Ana Abreu', '897', 'anaabreu@gmail.com', '2022-08-20 20:42:39'),
(3, 'Diego Silva', '534', 'diegosilva@hotmail.com', '2022-08-20 20:42:39'),
(4, 'Ana Souza', '573', 'anasouza@gmail.com', '2022-08-20 20:42:39'),
(5, 'Jessica Matos', '514', 'jessicamatos@hotmail.com', '2022-08-20 20:42:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `id_emprestimos` int(5) NOT NULL,
  `id_aluno` int(5) NOT NULL,
  `id_funcionario` int(3) NOT NULL,
  `emprestimo_data` date NOT NULL,
  `emprestimo_criadoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exemplares`
--

CREATE TABLE `exemplares` (
  `id_exemplares` int(11) NOT NULL,
  `id_livros` int(11) NOT NULL,
  `tipo_exemplar` int(20) NOT NULL,
  `status_exemplar` varchar(20) NOT NULL,
  `exemplar_criadoem` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(3) NOT NULL,
  `funcionario_nome` varchar(60) NOT NULL,
  `funcionario_cpf` varchar(20) NOT NULL,
  `funcionario_ criadoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id_livro` int(11) NOT NULL,
  `livro_nome` int(11) NOT NULL,
  `livro_autor` varchar(50) NOT NULL,
  `livro_capa` varchar(255) NOT NULL,
  `livro_editora` varchar(50) NOT NULL,
  `livro_edição` int(2) NOT NULL,
  `livro_data` date NOT NULL,
  `livro_criadoem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices para tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`id_emprestimos`);

--
-- Índices para tabela `exemplares`
--
ALTER TABLE `exemplares`
  ADD PRIMARY KEY (`id_exemplares`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id_livro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
