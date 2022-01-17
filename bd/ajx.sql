/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ajx`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `Data_Hora` datetime NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `CPF` int(11) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Removido` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_telefone`
--

CREATE TABLE `cliente_telefone` (
  `Data_Hora` datetime NOT NULL,
  `ClienteID` int(11) NOT NULL,
  `OperadoraID` int(11) NOT NULL,
  `Telefone` int(11) NOT NULL,
  `Removido` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `operadora`
--

CREATE TABLE `operadora` (
  `Data_Hora` datetime NOT NULL,
  `Operadora` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
