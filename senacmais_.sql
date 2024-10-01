-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/09/2024 às 20:41
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
-- Banco de dados: `senacmais.`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `apoio_saude_mental`
--

CREATE TABLE `apoio_saude_mental` (
  `id_apoio` int(255) NOT NULL,
  `id_paciente` int(255) NOT NULL,
  `id_medico` int(255) NOT NULL,
  `data_sessao` date NOT NULL,
  `observacoes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `apoio_saude_mental`
--

INSERT INTO `apoio_saude_mental` (`id_apoio`, `id_paciente`, `id_medico`, `data_sessao`, `observacoes`) VALUES
(71, 29, 60, '2024-09-04', 'boa tarde,\r\nestou me sentindo mal, com uma indisposição no corpo.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id_consulta` int(255) NOT NULL,
  `id_paciente` int(255) NOT NULL,
  `id_medico` int(255) NOT NULL,
  `data_hora` varchar(255) NOT NULL,
  `diagnóstico` varchar(255) NOT NULL,
  `tratamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`id_consulta`, `id_paciente`, `id_medico`, `data_hora`, `diagnóstico`, `tratamento`) VALUES
(15, 29, 60, '30/09/2024\r\n09:34', 'Paciente: Gabriel Moura Ferreira\r\nIdade: 35 anos\r\nSintomas: Indisposição geral há 4 dias, relatando fadiga, leve dor de cabeça e sensação de mal-estar. Sem febre, tosse, dor abdominal ou outros sintomas agudos.', 'Repouso\r\nHidratação\r\nDieta Leve');

-- --------------------------------------------------------

--
-- Estrutura para tabela `doenças`
--

CREATE TABLE `doenças` (
  `id_doencas` int(255) NOT NULL,
  `id_paciente` int(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `doenças`
--

INSERT INTO `doenças` (`id_doencas`, `id_paciente`, `nome`, `descricao`) VALUES
(1, 29, 'gabriel moura ferreira\r\nindisposição', 'A indisposição é um sintoma inespecífico que se caracteriza por uma sensação geral de mal-estar, cansaço ou desconforto. Pode envolver fadiga, falta de energia, sensação de fraqueza, tontura ou desconforto abdominal.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `educacao_saude`
--

CREATE TABLE `educacao_saude` (
  `id_educacao` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `tipo_conteudo` varchar(255) NOT NULL,
  `artigo` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `infografico` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `educacao_saude`
--

INSERT INTO `educacao_saude` (`id_educacao`, `titulo`, `descricao`, `tipo_conteudo`, `artigo`, `video`, `infografico`) VALUES
(100, 'indigestão', 'o paciente está com indigestão e foi diagnosticado com remédios e 3 dias em casa', 'Tome os remédios prescritos conforme indicado,\r\nOpte por refeições leves, como frutas, arroz e frango grelhado. Evite frituras e bebidas gaseificadas. Beba bastante água e chás de ervas, como camomila ou gengibre. Coma porções pequenas e frequentes para f', 'Cuidando da Indigestão: Dicas para o Tratamento em Casa\r\nA indigestão é uma condição comum que afeta muitas pessoas, causando desconforto abdominal, sensação de estômago cheio, náuseas e até azia. Se você foi diagnosticado com indigestão e orientado a faz', 'Indigestão, ou dispepsia, pode ser desencadeada por uma variedade de fatores, incluindo alimentação inadequada, estresse, e até mesmo condições médicas subjacentes. Embora seja geralmente inofensiva, pode causar grande desconforto e afetar a qualidade de ', '1. Siga as Recomendações Médicas\r\n\r\nTome os remédios prescritos.\r\n2. Alimentação Leve\r\n\r\nBoas opções: banana, arroz, frango grelhado.\r\nEvite: frituras, alimentos gordurosos e bebidas gaseificadas.\r\n3. Hidratação\r\n\r\nBeba bastante água e chás de ervas (camo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `exame`
--

CREATE TABLE `exame` (
  `id_exame` int(255) NOT NULL,
  `id_paciente` int(255) NOT NULL,
  `id_consulta` int(255) NOT NULL,
  `tipo_exame` varchar(255) NOT NULL,
  `data_exame` date NOT NULL,
  `resultado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `exame`
--

INSERT INTO `exame` (`id_exame`, `id_paciente`, `id_consulta`, `tipo_exame`, `data_exame`, `resultado`) VALUES
(15, 29, 15, 'Hemograma completo para verificar infecções.\r\nExame de função hepática e renal, para descartar possíveis disfunções', '2024-09-30', 'Hemograma: Normal, sem sinais de infecção ou anemia.\r\n \r\nFunção Renal: Creatinina e ureia normais.\r\n \r\nFunção Hepática: TGO e TGP normais, sem indícios de danos ao fígado.\r\n '),
(16, 0, 0, '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `loginregistro`
--

CREATE TABLE `loginregistro` (
  `id_login` int(255) NOT NULL,
  `id_usuario` int(255) NOT NULL,
  `data_login` date NOT NULL,
  `sucesso` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `loginregistro`
--

INSERT INTO `loginregistro` (`id_login`, `id_usuario`, `data_login`, `sucesso`) VALUES
(123, 456, '2024-09-30', 'sucesso');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medicamento`
--

CREATE TABLE `medicamento` (
  `id_medicamento` int(255) NOT NULL,
  `id_consulta` int(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medicamento`
--

INSERT INTO `medicamento` (`id_medicamento`, `id_consulta`, `nome`, `descricao`) VALUES
(1, 15, 'Paracetamol \r\nDipirona ', ' (Tylenol): Para alívio de dores leves e febre.\r\n(Novalgina): Também utilizado para dor e febre.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id_medico` int(255) NOT NULL,
  `crm` varchar(255) NOT NULL,
  `especialidades` varchar(255) NOT NULL,
  `anos_experiencia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id_medico`, `crm`, `especialidades`, `anos_experiencia`) VALUES
(60, 'CRM-SP 985724', 'clínico geral', '30 anos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(255) NOT NULL,
  `cpf` int(255) NOT NULL,
  `historico_medico` varchar(255) NOT NULL,
  `status_saude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `cpf`, `historico_medico`, `status_saude`) VALUES
(29, 2147483647, 'Paciente apresenta quadro de indisposição geral há 3 dias, sem febre, dores ou outros sintomas associados.', 'ruim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(255) NOT NULL,
  `senha` int(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cep` int(255) NOT NULL,
  `tipo_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `senha`, `nome`, `email`, `data_nascimento`, `cep`, `tipo_usuario`) VALUES
(456, 2005, 'gabriel moura ferreira', 'gabrielmf2603@gmail.com', '2014-09-26', 5782360, 'paciente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vacinação`
--

CREATE TABLE `vacinação` (
  `id_vacinação` int(255) NOT NULL,
  `id_paciente` int(255) NOT NULL,
  `tipo_vacina` varchar(255) NOT NULL,
  `data_vacinação` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vacinação`
--

INSERT INTO `vacinação` (`id_vacinação`, `id_paciente`, `tipo_vacina`, `data_vacinação`) VALUES
(1, 29, 'vacina contra a gripe\r\n', '2024-10-04');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `apoio_saude_mental`
--
ALTER TABLE `apoio_saude_mental`
  ADD PRIMARY KEY (`id_apoio`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `doenças`
--
ALTER TABLE `doenças`
  ADD PRIMARY KEY (`id_doencas`);

--
-- Índices de tabela `educacao_saude`
--
ALTER TABLE `educacao_saude`
  ADD PRIMARY KEY (`id_educacao`);

--
-- Índices de tabela `exame`
--
ALTER TABLE `exame`
  ADD PRIMARY KEY (`id_exame`),
  ADD UNIQUE KEY `id_consulta` (`id_consulta`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Índices de tabela `loginregistro`
--
ALTER TABLE `loginregistro`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices de tabela `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`id_medicamento`),
  ADD KEY `id_consulta` (`id_consulta`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id_medico`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `vacinação`
--
ALTER TABLE `vacinação`
  ADD PRIMARY KEY (`id_vacinação`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `apoio_saude_mental`
--
ALTER TABLE `apoio_saude_mental`
  MODIFY `id_apoio` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id_consulta` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `doenças`
--
ALTER TABLE `doenças`
  MODIFY `id_doencas` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `educacao_saude`
--
ALTER TABLE `educacao_saude`
  MODIFY `id_educacao` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `exame`
--
ALTER TABLE `exame`
  MODIFY `id_exame` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `loginregistro`
--
ALTER TABLE `loginregistro`
  MODIFY `id_login` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de tabela `medicamento`
--
ALTER TABLE `medicamento`
  MODIFY `id_medicamento` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id_medico` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT de tabela `vacinação`
--
ALTER TABLE `vacinação`
  MODIFY `id_vacinação` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
