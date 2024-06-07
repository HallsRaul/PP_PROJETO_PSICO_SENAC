-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/06/2024 às 13:19
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

--
-- Despejando dados para a tabela `comoasociedade`
--

INSERT INTO `comoasociedade` (`comoid`, `img`, `titulo`, `texto`, `tiposdeterapia_id`) VALUES
(0, NULL, 'Como a sociedade enxerga a psicologia:', 'Na sociedade contemporânea é muito comum encontrarmos pessoas que possuem uma visão distorcida da psicologia, isto devido a formação histórica, onde a saúde mental era e ainda é vista como um tabu. Antigamente, o preconceito era mais forte em virtude da psicanálise, onde o processo de tratamento era completamente rígido (alguns sendo considerados tortura). Os pacientes em tratamento eram denominados de “loucos”. Deploravelmente, o preconceito continua presente, pela falta de conhecimento sobre o assunto e a disseminação das Fake News, favorecem cada vez mais esse olhar maldoso. Vale enfatizar as pessoas que desejam trabalhar nessa área, que são pouco incentivadas e cercadas de falas preconceituosas.   ', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudos`
--

CREATE TABLE `conteudos` (
  `conteudosid` int(11) NOT NULL,
  `texto` varchar(25) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `conteudos`
--

INSERT INTO `conteudos` (`conteudosid`, `texto`, `img`, `titulo`) VALUES
(1, 'TESTE TESTE TESTE TESTE T', NULL, 'Conteúdos:');

-- --------------------------------------------------------

--
-- Estrutura para tabela `duvidas`
--

CREATE TABLE `duvidas` (
  `duvidasid` int(11) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `titulo` text NOT NULL,
  `texto` longtext DEFAULT NULL,
  `conteudos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `duvidas`
--

INSERT INTO `duvidas` (`duvidasid`, `img`, `titulo`, `texto`, `conteudos_id`) VALUES
(0, '', 'Dúvidas:', 'Como os tratamentos funcionam? \r\n\r\nCada profissional tem sua forma de exercer sua profissão, no qual utilizam técnicas, frequência de sessões. Os psicólogos possuem o mesmo objetivo de tratar comportamentos, emoções e um mar de sentimentos do paciente. \r\n\r\nComo escolher um psicólogo? \r\n\r\nPrimeiramente, é importante checar as credenciais do profissional e avaliações. É importante analisar o perfil e a personalidade, o processo de tratamento se torna mais fácil e leve desenvolvendo uma boa confiança entre profissional e paciente. Como existem vários tipos de terapia, é bom pesquisar com qual você se identifica e se o psicólogo exerce a técnica escolhida por você. \r\n\r\nO que esperar da primeira consulta? \r\n\r\nNas primeiras sessões é comum sentir-se tímido e nervoso. O início é introdutório, o profissional vai perguntar coisas básicas sobre a sua vida e seus gostos pessoais. ', NULL);

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

--
-- Despejando dados para a tabela `introducao`
--

INSERT INTO `introducao` (`introducaoid`, `img`, `texto`, `titulo`) VALUES
(0, NULL, 'A psicologia estuda o comportamento e questões do ser humano, abrange muitas ideias, pensamentos e métodos que servem para auxiliar e resolver problemas, sejam eles psicológicos ou na análise das pessoas. Com base em estudos, nem sempre os métodos ou pesquisas serão 100% eficientes, na realidade, como se é trabalhado a mente e o cérebro humano, pode-se ter diversos resultados para os mesmos estímulos e problemas e por isso temos uma série de estudos e pessoas profissionais na área, para sempre se adaptar, ter uma forma de controlar, estudar vários temas e variações destes. ', 'Introdução:');

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

--
-- Despejando dados para a tabela `porquedevemosfazer`
--

INSERT INTO `porquedevemosfazer` (`porqueid`, `img`, `titulo`, `texto`) VALUES
(0, NULL, 'Porque devemos fazer terapia:', 'A terapia é tão essencial para o nosso bem-estar quanto pensamos, por meio da terapia é possível nos conhecer de uma forma mais profunda e saudável, como resolver e acolher sentimentos difíceis, comportamentos e hábitos autodestrutivos, relações de convívios e entre outras questões pessoais. O processo terapêutico é confidencial, nada do que conversado entre o profissional e paciente será comentado a terceiros, a não ser que o paciente esteja correndo risco de vida.  ');

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

--
-- Despejando dados para a tabela `projeto`
--

INSERT INTO `projeto` (`projetoid`, `conteudos_id`, `duvidas_id`, `introducao_id`) VALUES
(0, NULL, NULL, NULL);

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

--
-- Despejando dados para a tabela `psiconocotidiano`
--

INSERT INTO `psiconocotidiano` (`psicoid`, `img`, `titulo`, `texto`, `porquedevemosfazer_id`) VALUES
(0, NULL, 'Psicologia no cotidiano:', 'Considerando diversos fatores sociais e observando o nosso mundo, assim como já citado antes, a psicologia tem sido algo cada vez mais presente nas nossas vidas, de forma direta ou indireta, isso considerando o fato de que se tem normalizado a alguns anos cuidar da saúde em geral, e claro que não podemos ignorar a necessidade para muitos, que tem aumentado consideravelmente no mundo inteiro com o decorrer do tempo e com a pandemia tem apenas agravado esse crescimento, principalmente em adolescentes e pessoas mais jovens, considerando uma pesquisa feita durante o primeiro ano da pandemia de covid-19 pela Organização Mundial da Saúde (OMS), que inclusive alertou no ano de 2020 que já era necessária a manutenção dos serviços de assistência à Saúde mental e a ampliação de atendimentos, sendo esse tema levado cada vez mais a sério pelas autoridades e organizações. ', 0);

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
-- Despejando dados para a tabela `tiposdeterapia`
--

INSERT INTO `tiposdeterapia` (`tiposid`, `img`, `titulo`, `texto`, `psiconocotidiano_id`) VALUES
(0, NULL, 'Tipos de terapia:', 'Terapia Psicanalítica de Freud \r\n\r\nEsse tipo de terapia foi desenvolvido pelo austríaco Sigmund Freud. Ele percebeu que poderia tratar a curar as pessoas de seus transtornos mentais através da fala. Atualmente existem consultórios de atendimento psicanalítico freudiano, ao entrar na sala o paciente vai se deparar com um divã. Os profissionais que seguem essa linha preferem que o cliente não os encare frente a frente. Isso porque querem evitar que as pessoas fiquem inibidas. As primeiras sessões são geralmente avaliativas. Sendo assim o psicanalista irá realizar perguntas preliminares para ver se você necessita da ajuda da psicanálise ou te encaminhar para outro profissional. \r\n\r\nDurante as sessões você será livre para falar sobre absolutamente tudo. Do mesmo modo, o psicanalista vai te ajudar a remover barreiras que te impedem de expressar ideias e sentimentos. Por fim, a partir dos seus relatos, o profissional fará interpretações e compartilhará ideias. O psicanalista normalmente não te dirá o que fazer ou como agir. Mas, mesmo assim, fará questionamentos que te levarão a refletir e falar mais sobre as questões que serão trabalhadas. \r\n\r\n \r\n\r\nTerapia Junguiana \r\n\r\nA terapia Junguiana também tem seu nome como inspiração, já que foi desenvolvida por Carl G. Jung. Uma das características mais marcantes da terapia junguiana é que você vai responder algumas perguntas sobre os seus sonhos.  \r\n\r\nIsso porque, o inconsciente é uma das principais fontes de análise nesse tipo de terapia. Sendo assim, uma das suas formas de análise é entender seus sonhos. \r\n\r\nAlém disso, é muito comum que o profissional desta linha se utilize de técnicas relacionadas à arte, como por exemplo desenhos e a escrita. O foco aqui é fazer com que o paciente se sinta confiante e guie a sessão da forma como sentir que deve. \r\n\r\n \r\n\r\nTerapia Behaviorista \r\n\r\nA princípio, existem vários braços que derivam da psicologia behaviorista – ou comportamental. Mas a abordagem geral é muito parecida. \r\n\r\nNesse sentido, para os profissionais desta linha o comportamento humano é produto de uma série de fatores. Ou seja, nada que fazemos é por acaso. Por exemplo, você se apresenta de maneiras diferentes quando está almoçando com a sua mãe e quando está num happy hour com o pessoal do escritório. O meio tem influência grande na maneira como agimos. \r\n\r\nEsta abordagem é mais direta e visa à correção de comportamentos por meio da exposição da pessoa a seus medos. Por exemplo, se você tem medo de falar em público, seu psicólogo comportamental provavelmente irá propor uma série de exercícios que farão o medo diminuir aos poucos. \r\n\r\nAlém disso, é possível que seu terapeuta proponha alguma “tarefa de casa”, podendo até mesmo te acompanhar em alguma atividade externa. Por exemplo, como em uma apresentação, caso seu medo seja falar em público. \r\n\r\n \r\n\r\nTerapia Cognitivo Comportamental (TCC)  \r\n\r\nEsta é uma modalidade de terapia similar à behaviorista. Muito indicada para pessoas que sofrem com transtornos de ansiedade. \r\n\r\nOs profissionais que trabalham com terapia cognitivo-comportamental acreditam que a maneira como as pessoas entendem o mundo é a fonte dos transtornos da mente. Ou seja, não foi o assalto semana passada que fez de você uma pessoa ansiosa, mas a sua percepção sobre o ocorrido é que está mexendo com a sua cabeça. \r\n\r\nO objetivo da TCC é ajudar o cliente a se conhecer melhor. Ou seja, analisar os próprios pensamentos, – especialmente os pensamentos automáticos, intrusivos – seus sentimentos e a influência dos mesmos em seu comportamento. A maioria dos nossos pensamentos são automáticos, e aceitos como verdades absolutas. \r\n\r\nO terapeuta cognitivo-comportamental vai trabalhar na mudança da sua visão sobre o mundo e os acontecimentos. Sendo assim, é uma técnica diretiva que tem sessões bem estruturadas. Na maioria das vezes, no início do tratamento, o profissional vai te informar sobre o número de sessões necessárias para tratar do problema. \r\n\r\n \r\n\r\nHumanismo \r\n\r\nDe maneira bem resumida, os humanistas entendem que só podemos mudar o mundo quando nos aceitamos inteiramente. Pode parecer um pouco estranho dizer que o melhor jeito de mudar é se aceitando, mas na terapia do humanismo essa afirmação faz sentido. \r\n\r\nOu seja, muitas pessoas que enfrentam problemas com vícios, como álcool e drogas, se beneficiam bastante desta linha de trabalho. O tratamento para essas pessoas começa a fazer efeito quando eles aceitam que existe um vício. A partir daí, começa a mudança. \r\n\r\nEsta linha de trabalho não se limita somente a esses casos. O fim de um relacionamento longo pode ser tratado pelo viés humanista, por exemplo. \r\n\r\nEsse é um dos tipos de terapia que não tem uma estrutura tão rígida quanto o comportamental, por exemplo. Sendo assim, o foco aqui é trabalhar a autoaceitação e o amor-próprio. \r\n\r\n \r\n\r\nPsicoterapia breve focal \r\n\r\nO objetivo é melhorar a qualidade de vida em um curto espaço de tempo. Sendo assim, as dificuldades mais comuns a serem resolvidas são ansiedade, crises de relacionamento, estresse, problemas de autoestima e dúvidas em relação à carreira. \r\n\r\nEssa técnica chegou no Brasil no começo dos anos 1970. A princípio, veio para suprir a necessidade de dar assistência às pessoas que não tinham acesso a consultórios particulares. \r\n\r\nPara o psicólogo Renisson Araújo, o atendimento por vídeo-consulta faz esse papel hoje. Ele relata que percebeu no atendimento online um novo público, que traz suas vivências e busca por orientações mais breves. \r\n\r\n \r\n\r\nPsicoterapia Corporal Reichiana \r\n\r\nNão confundir com Reiki. Para Wilhelm Reich, sentar-se e falar sobre problemas não era o bastante. Era preciso colocar a mão na massa. \r\n\r\nPara os profissionais reichianos, as dores da mente se traduzem no corpo todo. De modo que este terapeuta irá propor exercícios de mudança de postura e respiração, por exemplo. É uma terapia que trabalha o mental através do físico. \r\n\r\nOs clientes passam por avaliações e têm técnicas desenvolvidas individualmente. \r\n\r\n \r\n\r\nMindfulness – Atenção Plena \r\n\r\nPara terminar nossa lista de tipos de terapia vamos falar de algo recente no mundo. Acontece tanta coisa à nossa volta que concentrar-se em uma tarefa por vez se tornou um desafio e tanto. O Mindfulness ou Psicologia da Atenção Plena é uma forma de ensinar a mente e tem como objetivo aumentar o foco do cliente. \r\n\r\nO terapeuta de Mindfulness emprega técnicas de meditação para aumentar o potencial de foco do cliente. Esta linha emprega muitas técnicas do budismo, mas sem viés religioso algum. \r\n\r\nO mais legal dessa linha é que além de te transformar em um mestre do foco e da atenção, esse método ainda contribui muito para a diminuição do estresse. \r\n\r\n \r\n\r\n \r\n\r\n- As principais abordagens da psicologia \r\n\r\n- Psicanálise;\r\n-Psicologia Analítica de Jung/Análise Junguiana;\r\n-Behaviorismo ou Analítico Comportamental;\r\n-Humanismo; \r\n-Psicoterapia Corporal;\r\n-TCC; \r\n-Gestalt-Terapia;\r\n\r\n \r\n\r\n ', 0);

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
