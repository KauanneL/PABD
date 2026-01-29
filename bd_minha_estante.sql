-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Jan-2026 às 19:08
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_minha_estante`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_autor`
--

CREATE TABLE `tb_autor` (
  `id_autor` smallint(6) NOT NULL,
  `cpf` char(11) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `nome_chamada` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_autor`
--

INSERT INTO `tb_autor` (`id_autor`, `cpf`, `nome`, `nome_chamada`) VALUES
(1, '11111111111', 'Robert T. Kiyosaki', 'KIYOSAKI, Robert T.'),
(3, '33333333333', 'Sidney Sheldon', 'Sheldon, S.'),
(4, '44444444444', 'Dan Brown', 'Brown, D.'),
(5, '55555555555', 'Stephen King', 'King, S.'),
(6, '66666666666', 'George Orwell', 'Orwell, G.'),
(7, '77777777777', 'Agatha Christie', 'Christie, A.'),
(8, '88888888888', 'J. K. Rowling', 'Rowling, J.K.'),
(9, '99999999999', 'Paulo Coelho', 'Coelho, P.'),
(10, '01010101010', 'Isabel Allende', 'Allende, I.'),
(11, '10110110110', 'Margaret Atwood', 'Atwood, M.'),
(12, '10101010101', 'Chimamanda Ngozi Adichie', 'Adichie, C. N.'),
(13, '12121212121', 'Haruki Murakami', 'Murakami, H.'),
(14, '13131313131', 'Yuval Noah Harari', 'Harari, Y. N.'),
(15, '14141414141', 'Elena Ferrante', 'Ferrante, E.'),
(16, '15151515151', 'Khaled Hosseini', 'Hosseini, K.'),
(17, '16161616161', 'Gabriel García Márquez', 'GGM, G.'),
(18, '17171717171', 'Yasunari Kawabata', 'Kawabata, Y.'),
(19, '18181818181', 'C. S. Lewis', 'Lewis, C. S.'),
(20, '19191919191', 'Neil Gaiman', 'Gaiman, N.'),
(21, '20202020202', 'Toni Morrison', 'Morrison, T.'),
(22, '21212121212', 'Mario Vargas Llosa', 'Vargas Llosa, M.'),
(23, '22222222223', 'F. Scott Fitzgerald', 'Fitzgerald, F. S.'),
(24, '23232323232', 'Ernest Hemingway', 'Hemingway, E.'),
(25, '24242424242', 'Virginia Woolf', 'Woolf, V.'),
(26, '25252525252', 'Jules Verne', 'Verne, J.'),
(27, '26262626262', 'H. P. Lovecraft', 'Lovecraft, H. P.'),
(28, '27272727272', 'Leo Tolstoy', 'Tolstoy, L.'),
(29, '28282828282', 'Colleen Hoover', 'Hoover, C.'),
(30, '29292929292', 'Sally Rooney', 'Rooney, S.'),
(31, '30303030303', 'John Grisham', 'Grisham, J.'),
(32, '31313131313', 'Danielle Steel', 'Steel, D.'),
(33, '32323232323', 'Nicholas Sparks', 'Sparks, N.'),
(34, '33333333334', 'J. R. R. Tolkien', 'Tolkien, J. R. R.'),
(35, '34343434343', 'Agnes Martin-Lugand', 'Martin-Lugand, A.'),
(36, '35353535353', 'E. L. James', 'James, E. L.'),
(37, '36363636363', 'Marina Colasanti', 'Colasanti, M.'),
(38, '37373737373', 'Svetlana Alexievich', 'Alexievich, S.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_autor_livro`
--

CREATE TABLE `tb_autor_livro` (
  `id_autor_livro` int(11) NOT NULL,
  `id_autor` smallint(6) NOT NULL,
  `id_livro` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_autor_livro`
--

INSERT INTO `tb_autor_livro` (`id_autor_livro`, `id_autor`, `id_livro`) VALUES
(1, 1, 1),
(2, 3, 3),
(3, 3, 4),
(4, 3, 5),
(5, 4, 6),
(6, 4, 7),
(7, 4, 8),
(8, 5, 9),
(9, 5, 10),
(10, 5, 11),
(11, 6, 12),
(12, 6, 13),
(13, 7, 14),
(14, 7, 15),
(15, 8, 16),
(16, 8, 17),
(17, 8, 18),
(18, 8, 19),
(19, 8, 20),
(20, 9, 21),
(21, 9, 22),
(22, 10, 23),
(23, 10, 24),
(24, 10, 25),
(25, 37, 37),
(26, 11, 26),
(27, 11, 27),
(28, 11, 28),
(29, 12, 29),
(30, 13, 30),
(31, 14, 31),
(32, 14, 32),
(33, 15, 33),
(34, 16, 34),
(35, 17, 35),
(36, 18, 36),
(37, 19, 38),
(38, 19, 39),
(39, 20, 40),
(40, 21, 41),
(41, 22, 42),
(42, 23, 43),
(43, 24, 44),
(44, 25, 45),
(45, 26, 46),
(46, 27, 47),
(47, 28, 48),
(48, 29, 49),
(49, 30, 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_editora`
--

CREATE TABLE `tb_editora` (
  `id_editora` smallint(6) NOT NULL,
  `cnpj` char(14) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `avaliacao` decimal(2,1) DEFAULT 0.0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_editora`
--

INSERT INTO `tb_editora` (`id_editora`, `cnpj`, `nome`, `avaliacao`) VALUES
(1, '11111111111111', 'Alta Books', '2.9'),
(3, '12345678000199', 'Editora Record', '4.3'),
(4, '98765432000188', 'Editora Arqueiro', '4.4'),
(5, '11223344000177', 'Editora Intrínseca', '4.6'),
(6, '01234567000100', 'Companhia das Letras', NULL),
(7, '02234567000111', 'Rocco', NULL),
(8, '03234567000122', 'HarperCollins Brasil', NULL),
(9, '04234567000133', 'Sextante', NULL),
(10, '05234567000144', 'Planeta', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_editora_avaliacoes`
--

CREATE TABLE `tb_editora_avaliacoes` (
  `id_editora_avaliacoes` int(11) NOT NULL,
  `id_editora` smallint(6) NOT NULL,
  `avaliacao` decimal(2,1) DEFAULT 1.0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_editora_avaliacoes`
--

INSERT INTO `tb_editora_avaliacoes` (`id_editora_avaliacoes`, `id_editora`, `avaliacao`) VALUES
(1, 1, '2.0'),
(2, 1, '3.5'),
(3, 1, '5.0'),
(4, 1, '1.0'),
(5, 3, '4.1'),
(6, 3, '4.5'),
(7, 3, '4.3'),
(8, 3, '3.8'),
(9, 3, '4.7'),
(10, 3, '4.0'),
(11, 3, '3.9'),
(12, 3, '4.4'),
(13, 3, '4.8'),
(14, 3, '4.2'),
(15, 4, '4.6'),
(16, 4, '4.7'),
(17, 4, '4.4'),
(18, 4, '4.1'),
(19, 4, '3.9'),
(20, 4, '4.8'),
(21, 4, '4.3'),
(22, 4, '4.5'),
(23, 4, '4.9'),
(24, 4, '4.2'),
(25, 5, '4.9'),
(26, 5, '4.6'),
(27, 5, '4.3'),
(28, 5, '4.7'),
(29, 5, '4.8'),
(30, 5, '4.5'),
(31, 5, '4.4'),
(32, 5, '4.9'),
(33, 5, '4.2'),
(34, 5, '4.8');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_livro`
--

CREATE TABLE `tb_livro` (
  `id_livro` smallint(6) NOT NULL,
  `isbn` char(13) DEFAULT NULL,
  `titulo` varchar(100) NOT NULL,
  `sinopse` text NOT NULL,
  `ano` smallint(6) NOT NULL,
  `preco` decimal(6,2) NOT NULL,
  `estoque` smallint(6) NOT NULL,
  `conservacao` tinyint(4) NOT NULL,
  `media_avaliacao` decimal(2,1) DEFAULT 0.0,
  `num_avaliacoes` int(11) DEFAULT 0,
  `id_editora` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_livro`
--

INSERT INTO `tb_livro` (`id_livro`, `isbn`, `titulo`, `sinopse`, `ano`, `preco`, `estoque`, `conservacao`, `media_avaliacao`, `num_avaliacoes`, `id_editora`) VALUES
(1, '9788550801483', 'Pai rico, pai pobre', 'Celebrando 20 anos com o livro n° 1 em finanças pessoais. A escola prepara as crianças para o mundo real?Essa é a primeira pergunta com a qual o leitor se depara neste livro.O recado é ousado e direto: boa formação e notas altas não bastam para assegurar o sucesso de alguém.O mundo mudou; a maioria dos jovens tem cartão de crédito, antes mesmo de concluir os estudos, e nunca teve aula sobre dinheiro, investimentos, juros etc.Ou seja, eles vão para a escola, mas continuam financeiramente improficientes, despreparados para enfrentar um mundo que valoriza mais as despesas do que a poupança. Para o autor,o conselho mais perigoso que se pode dar a um jovem nos dias de hoje é: “Vá para a escola, tire notas altas e depois procure um trabalho seguro.”O fato é que agora as regras são outras, e não existe mais emprego garantido para ninguém.Pai Rico, Pai Pobre demonstra que a questão não é ser empregado ou empregador, mas ter o controle do próprio destino ou delegá-lo a alguém.É essa a tese de Robert Kiyosaki neste livro substancial e visionário.Para ele, a formação proporcionada pelo sistema educacional não prepara os jovens para o mundo que encontrarão depois de formadosE como os pais podem ensinar aos filhos o que a escola relega? Essa é outra das muitas perguntas que o leitor encontra em Pai Rico, Pai Pobre.Nesse sentido, a proposta do autor é facilitar a tarefa dos pais. Quem entende de contabilidade deve esquecer seus conhecimentos acadêmicos, pois muitas das teorias expostas por Robert Kiyosaki contrariam os princípios contábeis comumente aceitos, e apresentam uma valiosa e moderna percepção do modo como se realizam os investimentos. A sociedade sofre mudanças radicais e, talvez, de proporções maiores do que as ocorridas em séculos passados. Não existe bola de cristal, mas algo é certo: a perspectiva global de transformações transcende nossa realidade imediata. Aconteça o que acontecer,só existem duas alternativas: segurança ou independência financeira.E o objetivo de Pai Rico, Pai Pobre é instruir o leitor e despertar sua inteligência financeira e a de seus filhos. \"A principal razão pela qual as pessoas têm problemas financeiros é que passaram anos na escola, mas não aprenderam nada sobre dinheiro. O resultado é que elas aprendem a trabalhar por dinheiro… mas nunca a fazê-lo trabalhar para elas.\"- Robert Kiyosaki.', 2018, '10.00', 1, 0, '4.0', 4, 1),
(2, '9786555208054', 'Capital Humano', 'A preparação de um plano de treinamento de desenvolvimento de pessoas para um determinado período, normalmente para o ano seguinte, é comum nas organizações de médio e grande porte, públicas e privadas. No entanto, diversos fatores contribuem para que esses planos não sejam cumpridos, embora aprovados. A fragilidade dos métodos, das técnicas e dos instrumentos de identificação das necessidades é um desses fatores. Isso acarreta o desperdício de tempo e dificulta a avaliação de resultados, uma vez que as atividades de treinamento acabam sendo definidas de maneira intuitiva e até impulsiva. Para aumentar as chances de sucesso e resultados, o processo de levantamento de necessidades de treinamento e desenvolvimento precisa ser feito de maneira consistente e de acordo com os objetivos desejados ou esperados. À medida que boas escolhas e alguns passos metodológicos forem sendo seguidos, isso facilitará o projeto e o planejamento das atividades de aprendizagem, bem como a avaliação de resultados, que é feita após a execução e a aplicação. O LNT estruturado é essencial para que a atividade proporcione resultados para pessoas, para as equipes e para a organização e o RH atue com mais protagonismo e conquiste seu espaço no coração e na mente das pessoas e da organização. É isso que o leitor encontrará neste livro. Um conteúdo rico, consistente e abrangente que, se bem aprendido e aplicado, mesmo que em parte, tem potencial para transformar o RH de centro de despesas e custos para um centro de resultados efetivos e concretos. Todo processo gerencial ou organizacional é formado por uma sequência de etapas. As iniciais normalmente se relacionam ao diagnóstico e ao planejamento que, se não forem bem-feitas, colocam em risco todas as demais etapas subsequentes. No RH, particularmente no T&D, não é diferente. Qualquer método se inicia com um diagnóstico seguido de análises essenciais para a efetividade da atividade. Além disso, existe uma diversidade de contextos que devem ser considerados antes de proceder esse levantamento. Por isso, os profissionais de RH precisam ter à sua disposição diversos recursos metodológicos para realizar o levantamento de necessidades de treinamento, conforme a situação e o contexto que se apresenta. A identificação bem estruturada e consistente das necessidades de treinamento aumenta significativamente o potencial de obtenção de resultados concretos para as pessoas, para a equipe e para a organização. Aqui são apresentados e detalhados conceitos e modelos, além de vários métodos e instrumentos de LNT, para aplicação imediata em situações típicas e comuns nas organizações públicas e privadas. Por isso este livro é essencial para todos os profissionais de RH, sobretudo àqueles que atuam na área de desenvolvimento de pessoase que estão preocupados e engajados para que a construção de processos propicie efetividade e credibilidade ao seu trabalho e à gestão de pessoas', 2022, '50.00', 3, 0, '0.0', 0, 1),
(3, '9788501011234', 'Se Houver Amanhã', 'Uma jovem enfrenta traições e armações após ser injustamente presa.', 1985, '59.90', 15, 9, '0.0', 0, 3),
(4, '9788501011235', 'O Outro Lado da Meia-Noite', 'Um romance de amor e vingança ambientado na Segunda Guerra.', 1973, '49.90', 10, 8, '0.0', 0, 3),
(5, '9788501011236', 'Lembranças da Meia-Noite', 'Continuação de O Outro Lado da Meia-Noite.', 1977, '54.90', 12, 8, '0.0', 0, 3),
(6, '9788580413494', 'O Código Da Vinci', 'Um simbologista desvenda um segredo escondido há séculos.', 2003, '79.90', 20, 10, '0.0', 0, 4),
(7, '9788580413500', 'Anjos e Demônios', 'Um professor de Harvard investiga um assassinato ligado ao Vaticano.', 2000, '69.90', 25, 9, '0.0', 0, 4),
(8, '9788580413517', 'Inferno', 'Langdon segue pistas misteriosas por Florença, inspiradas na Divina Comédia.', 2013, '84.90', 18, 10, '0.0', 0, 4),
(9, '9788551000001', 'It: A Coisa', 'Um grupo enfrenta uma entidade maligna que aterroriza uma cidade.', 1986, '89.90', 10, 9, '0.0', 0, 5),
(10, '9788551000002', 'O Iluminado', 'Um homem enlouquece enquanto cuida de um hotel isolado.', 1977, '79.90', 8, 10, '0.0', 0, 5),
(11, '9788551000003', 'Misery: Louca Obsessão', 'Um escritor é sequestrado por uma fã obcecada.', 1987, '74.90', 6, 8, '0.0', 0, 5),
(12, '9788535914849', '1984', 'Uma distopia sobre vigilância e controle social.', 1949, '39.90', 30, 9, '0.0', 0, 3),
(13, '9788535914850', 'A Revolução dos Bichos', 'Uma fábula sobre poder e corrupção.', 1945, '34.90', 25, 9, '0.0', 0, 3),
(14, '9788525430011', 'Assassinato no Expresso do Oriente', 'Um detetive investiga um assassinato dentro de um trem luxuoso.', 1934, '49.90', 12, 10, '0.0', 0, 4),
(15, '9788525430012', 'O Caso dos Dez Negrinhos', 'Dez pessoas são convidadas a uma ilha e começam a morrer misteriosamente.', 1939, '44.90', 10, 9, '0.0', 0, 4),
(16, '9788535902778', 'Harry Potter e a Pedra Filosofal', 'Um garoto descobre que é um bruxo e vai estudar em Hogwarts.', 1997, '69.90', 25, 10, '0.0', 0, 5),
(17, '9788535902785', 'Harry Potter e a Câmara Secreta', 'O segundo ano em Hogwarts é marcado por novos perigos.', 1998, '72.90', 20, 10, '0.0', 0, 5),
(18, '9788535902792', 'Harry Potter e o Prisioneiro de Azkaban', 'Sirius Black escapa da prisão e ameaça Harry.', 1999, '74.90', 18, 10, '0.0', 0, 5),
(19, '9788535902808', 'Harry Potter e o Cálice de Fogo', 'Harry é escolhido para um perigoso torneio de magia.', 2000, '84.90', 15, 10, '0.0', 0, 5),
(20, '9788535902815', 'Harry Potter e a Ordem da Fênix', 'A resistência contra o retorno de Voldemort se organiza.', 2003, '89.90', 14, 10, '0.0', 0, 5),
(21, '9788535930818', 'A Revolução dos Bichos', 'Uma sátira política sobre o poder e a corrupção.', 2021, '39.90', 25, 9, '4.6', 12, 6),
(22, '9788532530783', '1984', 'Um clássico distópico sobre vigilância e totalitarismo.', 2020, '42.50', 30, 8, '4.9', 15, 6),
(23, '9788579800245', 'O Código Da Vinci', 'Um mistério envolvendo a Igreja e segredos históricos.', 2019, '49.90', 40, 9, '4.5', 20, 8),
(24, '9788573026641', 'Anjos e Demônios', 'O simbologista Robert Langdon enfrenta uma seita misteriosa.', 2018, '44.90', 35, 8, '4.3', 18, 8),
(25, '9788532528056', 'Inferno', 'Um mistério baseado em Dante Alighieri e o inferno de Florença.', 2017, '46.90', 28, 9, '4.2', 10, 8),
(26, '9788535914823', 'O Iluminado', 'Uma história aterrorizante sobre isolamento e loucura.', 2019, '59.90', 20, 8, '4.8', 14, 7),
(27, '9788599296494', 'It: A Coisa', 'Um grupo enfrenta um mal ancestral que aterroriza uma cidade.', 2021, '69.90', 18, 9, '4.9', 22, 7),
(28, '9786555320463', 'Misery: Louca obsessão', 'Um escritor é mantido em cativeiro por uma fã obcecada.', 2016, '54.90', 22, 9, '4.7', 16, 7),
(29, '9788543107718', 'A Garota no Trem', 'Uma mulher se envolve em um desaparecimento misterioso.', 2022, '45.90', 40, 8, '4.4', 11, 10),
(30, '9788535933833', 'A Mulher na Janela', 'Uma psicóloga vive isolada e testemunha algo terrível.', 2021, '47.50', 32, 8, '4.3', 9, 10),
(31, '9788542219764', 'Pequenas Grandes Mentiras', 'Três mulheres com segredos em uma comunidade tranquila.', 2020, '49.90', 27, 9, '4.2', 8, 9),
(32, '9788542216893', 'O Segredo do Meu Marido', 'Um segredo revelado muda a vida de uma família.', 2018, '44.90', 35, 8, '4.0', 6, 9),
(33, '9788595084767', 'A Paciente Silenciosa', 'Uma mulher que parou de falar após cometer um crime.', 2020, '52.90', 29, 9, '4.6', 17, 10),
(34, '9786558380013', 'Verity', 'Um suspense psicológico intenso e perturbador.', 2022, '56.90', 31, 9, '4.7', 19, 9),
(35, '9788535931396', 'Torto Arado', 'Uma narrativa poderosa sobre identidade e resistência.', 2020, '49.90', 34, 9, '4.8', 21, 6),
(36, '9786559210340', 'Tudo é Rio', 'Um drama poético sobre amor e perdão.', 2021, '42.90', 27, 8, '4.9', 13, 9),
(37, '9786555600206', 'O Enigma do Quatro', 'Uma trama histórica e intelectual entre jovens estudantes.', 2019, '39.90', 33, 8, '4.1', 8, 8),
(38, '9788535931877', 'Sapiens', 'Uma breve história da humanidade.', 2018, '64.90', 40, 9, '4.9', 25, 6),
(39, '9788535931570', 'Homo Deus', 'Reflexões sobre o futuro da humanidade.', 2019, '66.90', 37, 9, '4.8', 20, 6),
(40, '9788542212345', 'O Homem de Giz', 'Um suspense sombrio sobre infância e segredos.', 2020, '43.90', 22, 8, '4.3', 10, 9),
(41, '9788535934724', 'O Conto da Aia', 'Uma distopia sobre opressão e liberdade.', 2017, '59.90', 30, 9, '4.8', 14, 6),
(42, '9788532526267', 'Cem Anos de Solidão', 'A saga da família Buendía na aldeia de Macondo.', 2019, '62.90', 25, 9, '4.9', 26, 6),
(43, '9786555600077', 'O Nome do Vento', 'Um jovem prodígio narra sua vida de aventuras e magia.', 2018, '69.90', 20, 9, '4.7', 15, 7),
(44, '9786555320210', 'A Menina que Roubava Livros', 'Uma menina encontra esperança em meio à guerra.', 2020, '49.90', 28, 9, '4.8', 24, 10),
(45, '9788573027884', 'A Culpa é das Estrelas', 'Dois adolescentes lidam com o amor e a doença.', 2019, '47.90', 40, 9, '4.9', 28, 9),
(46, '9788532531025', 'A Sombra do Vento', 'Um jovem descobre um livro que mudará sua vida.', 2021, '64.90', 35, 9, '4.9', 19, 6),
(47, '9786555320401', 'O Pequeno Príncipe', 'Um clássico sobre amizade e o sentido da vida.', 2019, '29.90', 50, 9, '4.9', 33, 10),
(48, '9788532529954', 'Orgulho e Preconceito', 'Um romance sobre amor, orgulho e classe social.', 2020, '39.90', 42, 9, '4.8', 27, 6),
(49, '9788573026726', 'Dom Casmurro', 'Um clássico brasileiro sobre ciúme e dúvida.', 2019, '34.90', 45, 9, '4.7', 23, 6),
(50, '9786558380044', 'Grande Sertão: Veredas', 'Uma epopeia sertaneja e filosófica.', 2020, '59.90', 30, 9, '4.9', 20, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_livro_avaliacoes`
--

CREATE TABLE `tb_livro_avaliacoes` (
  `id_livro_avaliacoes` int(11) NOT NULL,
  `id_livro` smallint(6) NOT NULL,
  `avaliacao` decimal(2,1) DEFAULT 1.0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_livro_avaliacoes`
--

INSERT INTO `tb_livro_avaliacoes` (`id_livro_avaliacoes`, `id_livro`, `avaliacao`) VALUES
(1, 1, '3.5'),
(2, 1, '4.0'),
(3, 1, '5.0'),
(4, 1, '4.5'),
(5, 3, '4.1'),
(6, 3, '4.5'),
(7, 3, '3.9'),
(8, 3, '4.4'),
(9, 3, '4.2'),
(10, 3, '4.7'),
(11, 3, '4.8'),
(12, 4, '4.3'),
(13, 4, '4.6'),
(14, 4, '4.5'),
(15, 4, '4.1'),
(16, 4, '3.8'),
(17, 4, '4.7'),
(18, 4, '4.9'),
(19, 5, '3.9'),
(20, 5, '4.2'),
(21, 5, '4.0'),
(22, 5, '4.3'),
(23, 5, '4.5'),
(24, 5, '4.6'),
(25, 5, '4.7'),
(26, 6, '4.9'),
(27, 6, '4.8'),
(28, 6, '4.6'),
(29, 6, '4.4'),
(30, 6, '4.5'),
(31, 6, '4.7'),
(32, 6, '4.9'),
(33, 7, '4.5'),
(34, 7, '4.2'),
(35, 7, '4.8'),
(36, 7, '4.6'),
(37, 7, '4.9'),
(38, 7, '4.3'),
(39, 7, '4.7'),
(40, 8, '4.7'),
(41, 8, '4.8'),
(42, 8, '4.9'),
(43, 8, '4.6'),
(44, 8, '4.5'),
(45, 8, '4.4'),
(46, 8, '4.9'),
(47, 9, '4.9'),
(48, 9, '4.8'),
(49, 9, '4.7'),
(50, 9, '4.6'),
(51, 9, '4.5'),
(52, 9, '4.3'),
(53, 9, '4.4'),
(54, 10, '4.7'),
(55, 10, '4.8'),
(56, 10, '4.9'),
(57, 10, '4.6'),
(58, 10, '4.3'),
(59, 10, '4.5'),
(60, 10, '4.9'),
(61, 11, '4.5'),
(62, 11, '4.4'),
(63, 11, '4.7'),
(64, 11, '4.8'),
(65, 11, '4.9'),
(66, 11, '4.6'),
(67, 11, '4.3'),
(68, 12, '4.8'),
(69, 12, '4.7'),
(70, 12, '4.6'),
(71, 12, '4.5'),
(72, 12, '4.4'),
(73, 12, '4.9'),
(74, 12, '4.8'),
(75, 13, '4.7'),
(76, 13, '4.8'),
(77, 13, '4.9'),
(78, 13, '4.6'),
(79, 13, '4.5'),
(80, 13, '4.4'),
(81, 13, '4.9'),
(82, 14, '4.8'),
(83, 14, '4.7'),
(84, 14, '4.6'),
(85, 14, '4.9'),
(86, 14, '4.5'),
(87, 14, '4.4'),
(88, 14, '4.8'),
(89, 15, '4.7'),
(90, 15, '4.8'),
(91, 15, '4.9'),
(92, 15, '4.6'),
(93, 15, '4.5'),
(94, 15, '4.9'),
(95, 15, '4.4'),
(96, 16, '4.9'),
(97, 16, '4.8'),
(98, 16, '4.7'),
(99, 16, '4.6'),
(100, 16, '4.5'),
(101, 16, '4.9'),
(102, 16, '4.8'),
(103, 17, '4.8'),
(104, 17, '4.7'),
(105, 17, '4.6'),
(106, 17, '4.9'),
(107, 17, '4.5'),
(108, 17, '4.9'),
(109, 17, '4.4'),
(110, 18, '4.7'),
(111, 18, '4.8'),
(112, 18, '4.9'),
(113, 18, '4.6'),
(114, 18, '4.5'),
(115, 18, '4.8'),
(116, 18, '4.9'),
(117, 19, '4.9'),
(118, 19, '4.8'),
(119, 19, '4.7'),
(120, 19, '4.6'),
(121, 19, '4.5'),
(122, 19, '4.9'),
(123, 19, '4.8'),
(124, 20, '4.9'),
(125, 20, '4.8'),
(126, 20, '4.7'),
(127, 20, '4.6'),
(128, 20, '4.5'),
(129, 20, '4.9'),
(130, 20, '4.8'),
(131, 21, '4.5'),
(132, 21, '4.0'),
(133, 21, '5.0'),
(134, 21, '3.5'),
(135, 21, '4.5'),
(136, 22, '5.0'),
(137, 22, '4.5'),
(138, 22, '5.0'),
(139, 22, '4.0'),
(140, 23, '4.5'),
(141, 23, '4.0'),
(142, 23, '4.5'),
(143, 24, '4.0'),
(144, 24, '4.5'),
(145, 24, '4.0'),
(146, 25, '4.0'),
(147, 25, '4.5'),
(148, 26, '5.0'),
(149, 26, '4.5'),
(150, 26, '5.0'),
(151, 27, '4.5'),
(152, 27, '5.0'),
(153, 27, '5.0'),
(154, 27, '4.0'),
(155, 28, '4.5'),
(156, 28, '4.0'),
(157, 29, '4.0'),
(158, 29, '3.5'),
(159, 29, '4.5'),
(160, 30, '4.0'),
(161, 30, '3.5'),
(162, 31, '4.0'),
(163, 31, '4.5'),
(164, 32, '3.5'),
(165, 32, '4.0'),
(166, 33, '4.5'),
(167, 33, '5.0'),
(168, 34, '4.5'),
(169, 34, '5.0'),
(170, 34, '4.0'),
(171, 35, '5.0'),
(172, 35, '4.5'),
(173, 35, '5.0'),
(174, 36, '5.0'),
(175, 36, '5.0'),
(176, 36, '4.5'),
(177, 38, '5.0'),
(178, 38, '4.5'),
(179, 38, '5.0'),
(180, 38, '4.0'),
(181, 39, '4.5'),
(182, 39, '4.0'),
(183, 39, '4.5'),
(184, 41, '5.0'),
(185, 41, '4.5'),
(186, 46, '5.0'),
(187, 46, '4.5'),
(188, 46, '5.0'),
(189, 47, '5.0'),
(190, 47, '5.0'),
(191, 47, '4.5'),
(192, 49, '4.0'),
(193, 49, '4.5'),
(194, 49, '5.0'),
(195, 50, '5.0'),
(196, 50, '5.0'),
(197, 50, '4.5');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_autor`
--
ALTER TABLE `tb_autor`
  ADD PRIMARY KEY (`id_autor`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices para tabela `tb_autor_livro`
--
ALTER TABLE `tb_autor_livro`
  ADD PRIMARY KEY (`id_autor_livro`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_livro` (`id_livro`);

--
-- Índices para tabela `tb_editora`
--
ALTER TABLE `tb_editora`
  ADD PRIMARY KEY (`id_editora`),
  ADD UNIQUE KEY `cnpj` (`cnpj`);

--
-- Índices para tabela `tb_editora_avaliacoes`
--
ALTER TABLE `tb_editora_avaliacoes`
  ADD PRIMARY KEY (`id_editora_avaliacoes`),
  ADD KEY `id_editora` (`id_editora`);

--
-- Índices para tabela `tb_livro`
--
ALTER TABLE `tb_livro`
  ADD PRIMARY KEY (`id_livro`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `id_editora` (`id_editora`);

--
-- Índices para tabela `tb_livro_avaliacoes`
--
ALTER TABLE `tb_livro_avaliacoes`
  ADD PRIMARY KEY (`id_livro_avaliacoes`),
  ADD KEY `id_livro` (`id_livro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_autor`
--
ALTER TABLE `tb_autor`
  MODIFY `id_autor` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `tb_autor_livro`
--
ALTER TABLE `tb_autor_livro`
  MODIFY `id_autor_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `tb_editora`
--
ALTER TABLE `tb_editora`
  MODIFY `id_editora` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tb_editora_avaliacoes`
--
ALTER TABLE `tb_editora_avaliacoes`
  MODIFY `id_editora_avaliacoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `tb_livro`
--
ALTER TABLE `tb_livro`
  MODIFY `id_livro` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `tb_livro_avaliacoes`
--
ALTER TABLE `tb_livro_avaliacoes`
  MODIFY `id_livro_avaliacoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_autor_livro`
--
ALTER TABLE `tb_autor_livro`
  ADD CONSTRAINT `tb_autor_livro_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `tb_autor` (`id_autor`),
  ADD CONSTRAINT `tb_autor_livro_ibfk_2` FOREIGN KEY (`id_livro`) REFERENCES `tb_livro` (`id_livro`);

--
-- Limitadores para a tabela `tb_editora_avaliacoes`
--
ALTER TABLE `tb_editora_avaliacoes`
  ADD CONSTRAINT `tb_editora_avaliacoes_ibfk_1` FOREIGN KEY (`id_editora`) REFERENCES `tb_editora` (`id_editora`);

--
-- Limitadores para a tabela `tb_livro`
--
ALTER TABLE `tb_livro`
  ADD CONSTRAINT `tb_livro_ibfk_1` FOREIGN KEY (`id_editora`) REFERENCES `tb_editora` (`id_editora`);

--
-- Limitadores para a tabela `tb_livro_avaliacoes`
--
ALTER TABLE `tb_livro_avaliacoes`
  ADD CONSTRAINT `tb_livro_avaliacoes_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `tb_livro` (`id_livro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
