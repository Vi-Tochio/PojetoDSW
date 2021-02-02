-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Jan-2021 às 21:05
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `studio_dance`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `cpf` int(14) NOT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `numero` int(5) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `motivo_aprender` varchar(200) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`cpf`, `rua`, `bairro`, `numero`, `cep`, `email`, `telefone`, `motivo_aprender`, `nome`) VALUES
(0, '854783964520', 'bairro 2', 136, '1347811525', 'maria@.com', '37258910', 'Meu sonho é me tornar profissional em dança!!', 'Maria'),
(12365852, 'Rua Sete de Setembro ', 'bairro dos anjos', 180, '13571385', 'emily@gamil.com', '33753734', 'quero dan?ar', 'emily'),
(55447788, 'rua das flores', 'bairro  das flores', 14, '12369', 'lucas@gmail.com', '54872585', 'gosto de dan?ar de verdade', 'Lucas'),
(84868525, 'rua 1', 'bairro 1', 1, '12352', 'francis@gmail.com', '33669966', 'gosto de dan?ar muito', 'fraancis'),
(2147483647, 'rua verde', 'bairro jo', 15236, '1347820525', 'marina@.com', '34258910', NULL, 'Marina');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curi_danca`
--

CREATE TABLE `curi_danca` (
  `codi_curi` int(6) NOT NULL,
  `curiosidade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `curi_danca`
--

INSERT INTO `curi_danca` (`codi_curi`, `curiosidade`) VALUES
(1, 'No começo, a Valsa era chamada de dança proibida!!');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursa`
--

CREATE TABLE `cursa` (
  `cpf_aluno` int(14) NOT NULL,
  `nome_cur` varchar(100) NOT NULL,
  `data_ingresso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursa`
--

INSERT INTO `cursa` (`cpf_aluno`, `nome_cur`, `data_ingresso`) VALUES
(2147483647, 'Ballet', '2020-03-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `preco` float DEFAULT NULL,
  `num_horas_aulas` time DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `numero_aula` int(11) DEFAULT NULL,
  `conteudo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`preco`, `num_horas_aulas`, `nome`, `numero_aula`, `conteudo`) VALUES
(830, '02:00:00', 'Ballet', 5, 'Passos expecificos de ballet, saltos.'),
(800, '02:00:00', 'Dança do Ventre', 6, 'Passos expecificos da dança do ventre.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `codi_curi` int(6) NOT NULL,
  `ano` int(4) NOT NULL,
  `filme` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`codi_curi`, `ano`, `filme`) VALUES
(520148, 2017, 'Como eu era antes de você'),
(520151, 2020, 'Dançarina Imperfeita');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `codi_curi` int(6) NOT NULL,
  `ano` int(4) NOT NULL,
  `livro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`codi_curi`, `ano`, `livro`) VALUES
(1, 2021, 'Garota Online'),
(3, 2017, 'Dança dança');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ministra`
--

CREATE TABLE `ministra` (
  `cpf` int(14) NOT NULL,
  `RE` int(15) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_ingresso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ministra`
--

INSERT INTO `ministra` (`cpf`, `RE`, `nome`, `data_ingresso`) VALUES
(2147483647, 15487236, 'Ballet', '2014-11-18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `cpf` int(14) NOT NULL,
  `RE` int(15) NOT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `numero` int(5) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `motivo_ensinar` varchar(200) DEFAULT NULL,
  `formacao` varchar(150) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`cpf`, `RE`, `rua`, `bairro`, `numero`, `cep`, `email`, `telefone`, `motivo_ensinar`, `formacao`, `nome`) VALUES
(2147483647, 15487236, 'Rua Branca', 'Bairro joana', 14785, '1345291463', 'maria@.com', '33520548', 'Adoro ensinar as pessoas!', 'professora valsa', 'Maria'),
(2147483647, 25853214, 'rua machado', 'bairro machado', 18, '13571387', 'marcos@gmail.com', '33458796', 'gosto de ensinar de um jeito diferente', 'jazz', 'marcos'),
(0, 2147483647, 'Bairro 333', '785', 1345336463, 'dayane@.co', '33528848', '15488436', 'Adoro ensinar as pessoas!', 'professora jazz', 'Dayane'),
(559985258, 2147483647, 'rua das arvores', 'bairro das arvores', 185, '136566', 'vitoria@gmail.com', '1681824942', 'gosto de passar aquilo que sei', 'dan?a de sal?o', 'Vit?ria Tochio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turno_aulas`
--

CREATE TABLE `turno_aulas` (
  `curso` varchar(100) NOT NULL,
  `turno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turno_aulas`
--

INSERT INTO `turno_aulas` (`curso`, `turno`) VALUES
('Ballet', 'Tarde');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `curi_danca`
--
ALTER TABLE `curi_danca`
  ADD PRIMARY KEY (`codi_curi`);

--
-- Índices para tabela `cursa`
--
ALTER TABLE `cursa`
  ADD PRIMARY KEY (`cpf_aluno`,`nome_cur`),
  ADD KEY `nome_cur` (`nome_cur`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`nome`);

--
-- Índices para tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`codi_curi`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`codi_curi`);

--
-- Índices para tabela `ministra`
--
ALTER TABLE `ministra`
  ADD PRIMARY KEY (`RE`,`cpf`,`nome`),
  ADD KEY `nome` (`nome`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`RE`,`cpf`);

--
-- Índices para tabela `turno_aulas`
--
ALTER TABLE `turno_aulas`
  ADD PRIMARY KEY (`curso`,`turno`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `curi_danca`
--
ALTER TABLE `curi_danca`
  MODIFY `codi_curi` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `codi_curi` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520152;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `codi_curi` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cursa`
--
ALTER TABLE `cursa`
  ADD CONSTRAINT `cursa_ibfk_1` FOREIGN KEY (`cpf_aluno`) REFERENCES `aluno` (`cpf`),
  ADD CONSTRAINT `cursa_ibfk_2` FOREIGN KEY (`nome_cur`) REFERENCES `curso` (`nome`);

--
-- Limitadores para a tabela `ministra`
--
ALTER TABLE `ministra`
  ADD CONSTRAINT `ministra_ibfk_1` FOREIGN KEY (`RE`,`cpf`) REFERENCES `professor` (`RE`, `cpf`),
  ADD CONSTRAINT `ministra_ibfk_2` FOREIGN KEY (`nome`) REFERENCES `curso` (`nome`);

--
-- Limitadores para a tabela `turno_aulas`
--
ALTER TABLE `turno_aulas`
  ADD CONSTRAINT `turno_aulas_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `curso` (`nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
