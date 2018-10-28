-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Out-2018 às 23:32
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conves`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tpcafe`
--

CREATE TABLE `tpcafe` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sb` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tpcafe`
--

INSERT INTO `tpcafe` (`id`, `nome`, `sb`) VALUES
(13, 'CafÃ© Espresso', 'O cafÃ© espresso (ou expresso, dependendo da preferÃªncia de escrita) Ã© um dos principais tipos de cafÃ© â€“ e Ã© a base de diversos outros. O nome â€œespressoâ€ vem do italiano â€œespremido, pressionadoâ€. Ele Ã© feito em poucos segundos sob alta pressÃ£o de Ã¡gua na temperatura de consumo. Isso faz com que acumule muito sabor e intensidade'),
(15, 'CafÃ© Macchiato', 'O macchiato Ã© muito parecido com o cafÃ© espresso, mas adiciona uma dose de leite vaporizado para suavizar o sabor intenso do espresso. Ao redor do mundo, os baristas costumam fazer pequenas variaÃ§Ãµes no macchiato, embora sempre sigam os procedimento bÃ¡sicos da receita original.\r\n\r\nA receita original consiste em uma dose de espresso coberta com uma dose de leite vaporizado (ou em espuma) sobre o cafÃ©. A receita clÃ¡ssica conta, ainda, com leite vaporizado e espuma de leite, em diferentes camadas.\r\n\r\nA proporÃ§Ã£o original utiliza um terÃ§o de cafÃ©, um terÃ§o de leite vaporizado e um terÃ§o de espuma (medidos de acordo com seu volume aparente).'),
(16, 'CafÃ© Ristretto', 'O ristretto Ã© uma versÃ£o mais concentrada do cafÃ© espresso padrÃ£o. Entre os tipos de cafÃ© mais populares, Ã© o que apresenta maior intensidade. Basicamente, trata-se da extraÃ§Ã£o da mesma quantidade de cafÃ© de um espresso, mas em apenas metade da quantidade de Ã¡gua.\r\n\r\nPara ser feito, basta utilizar metade da Ã¡gua na realizaÃ§Ã£o de um espresso, ou simplesmente interromper a mÃ¡quina na metade do processo. Isso garante um sabor concentrado e bastante forte.'),
(17, 'CafÃ© Latte', 'O CafÃ© Latte nÃ£o Ã© exatamente uma forma sofisticada de se tratar do cafÃ© com leite. Em sua receita original, utiliza-se leite vaporizado misturado a uma dose de cafÃ© espresso, alÃ©m de 1 centÃ­metro de espuma de leite servido sobre a bebida.\r\n\r\nDiferencia-se de um Machiatto especialmente no que diz respeito Ã  proporÃ§Ã£o e Ã  forma como Ã© servido. No Machiatto, as trÃªs camadas sÃ£o servidas sem estarem misturadas dentro da xÃ­cara. JÃ¡ no Latte, o cafÃ© e o leite vaporizado sÃ£o misturados, com a espuma servida sobre a mistura, separadamente.'),
(18, 'Cappuccino', 'O Cappuccino Ã© bastante parecido com um Latte, e Ã© um dos tipos de cafÃ© mais populares em cafeterias e bares ao redor do mundo. A diferenÃ§a entre os dois estÃ¡ no fato de o cappuccino possuir mais leite vaporizado em sua fÃ³rmula, alÃ©m de chocolate adicionado Ã  receita.\r\n\r\nSua receita inclui uma dose de cafÃ© espresso misturado com leite vaporizado, espuma de leite e chocolate em pequenos pedaÃ§os ou em pÃ³ sobre a bebida.'),
(19, 'Mocha', 'O Mocha Ã© uma versÃ£o ainda mais achocolatada do Cappuccino. Na prÃ¡tica, Ã© uma mistura entre um Cappuccino e chocolate quente. Ã‰ feito a partir da mistura do chocolate em pÃ³ com uma dose de espresso, adicionando leite vaporizado e espuma de leite â€“ todos homogeneamente misturados dentro da bebida.\r\n\r\nPara completar na apresentaÃ§Ã£o, costuma-se polvilhar chocolate em pÃ³ ou em pequenos pedaÃ§os sobre a bebida.'),
(20, 'Affogato', 'O affogato Ã© mais uma sobremesa do que um drink, o que o torna especialmente delicioso, Consiste na mistura de uma boa colherada de sorvete de baunilha com uma ou duas doses de cafÃ© espresso. Muitas pessoas discutem sua presenÃ§a entre os tipos de cafÃ©, dizendo que deveria ser considerado um doce.\r\n\r\nNo entanto, uma receita tÃ£o deliciosa simplesmente nÃ£o poderia ficar de fora da lista. AlÃ©m disso, hÃ¡ uma versÃ£o ainda mais animada da bebida que inclui uma dose de licor de amÃªndoas na mistura.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tpcafe`
--
ALTER TABLE `tpcafe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tpcafe`
--
ALTER TABLE `tpcafe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
