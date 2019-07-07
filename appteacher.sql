-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 07-Jul-2019 às 10:09
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wowpoint_ifoptec`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id_curso` varchar(254) NOT NULL,
  `nome_curso` varchar(50) CHARACTER SET utf8 NOT NULL,
  `duracao` varchar(20) NOT NULL,
  `data` varchar(20) NOT NULL,
  `responsavel` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id_curso`, `nome_curso`, `duracao`, `data`, `responsavel`) VALUES
('02fb76c76c0fc73ee137b9d3e0dca0fa', 'Ciencias Juridicas e Sociais', '2', '12-09-2018 14:09', 'Administrador '),
('0f24daef9e335db8de2dbc6a43965695', 'Saude Publica e Aconselhamento', '2', '11-09-2018 13:09', 'Administrador '),
('0faaf7bab76bc20ab0b05f309e339a69', 'Engenharia Tecnica de Informatica ', '2', '11-09-2018 13:09', 'Administrador '),
('2ee5175240fdad86ca7f9d4642f71c7a', 'Engenharia Tecnica de Construcao Civil', '2', '11-09-2018 13:09', 'Administrador '),
('43a34c32eca3b3fa62eeda3f60ed4cfb', 'Medicina Preventiva e Primeiros Socorros', '2', '11-09-2018 13:09', 'Administrador '),
('68ed3254a48090f9d827010dc62d1cce', 'Administracao Hospitalar', '2', '11-09-2018 13:09', 'Administrador '),
('8e67bc35300ff4d3f8f1b2dfcaca3f10', 'agricultura', '4', '25-01-2019 10:01', 'Administrador '),
('9dda50c180e16c668b1bae3131d76a33', 'Assistente Juridico', '2', '24-11-2018 13:11', 'Quine Francisco  Guambe'),
('b0cbfa3b4d34a5abbaf223020d8603b7', 'Contabilidade e Gestao de Empresas', '2', '11-09-2018 13:09', 'Administrador '),
('c583b05da346971d57e1b9101f2a4f71', 'Administracao Publica e Recursos Humanos', '2', '11-09-2018 13:09', 'Administrador '),
('c7edc420e9b0fab86fd5b4a3dad27fc6', 'Engenharia Tecnica de Petroleo e Gas', '2', '11-09-2018 13:09', 'Administrador '),
('fbb22fcfa22edbcae7cadabd1fe8ac50', 'Perito Aduaneiro e Administracao Tributaria', '2', '11-09-2018 13:09', 'Administrador '),
('ff19ba1cb217b8f0ce15f71622a4fa4d', 'Engenharia de Automacao', '2', '11-09-2018 13:09', 'Administrador ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso_disciplina`
--

CREATE TABLE `curso_disciplina` (
  `id_curso_disc` int(9) NOT NULL,
  `id_curso` varchar(254) NOT NULL,
  `id_disciplina` varchar(254) NOT NULL,
  `responsavel` varchar(254) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso_disciplina`
--

INSERT INTO `curso_disciplina` (`id_curso_disc`, `id_curso`, `id_disciplina`, `responsavel`) VALUES
(3, 'd84ff6f6134e74ae298262bcf2483884', '7fc2ce24aa2c92038bb134583151cb85', 'Administrador '),
(4, 'd84ff6f6134e74ae298262bcf2483884', '953fd97a34843690c7172e0c57255f47', 'Administrador '),
(5, '0faaf7bab76bc20ab0b05f309e339a69', '7fc2ce24aa2c92038bb134583151cb85', 'Administrador '),
(6, '43a34c32eca3b3fa62eeda3f60ed4cfb', '57c0a6420f6e4e36e939ee46b1be74d2', ' '),
(7, '68ed3254a48090f9d827010dc62d1cce', 'ef81ae25c2b698a8eb4fef13e93c9f17', ' '),
(8, '43a34c32eca3b3fa62eeda3f60ed4cfb', '65b5255c8b65f5374e70fc2a411b3056', ' '),
(9, '43a34c32eca3b3fa62eeda3f60ed4cfb', 'ef81ae25c2b698a8eb4fef13e93c9f17', ' '),
(10, '43a34c32eca3b3fa62eeda3f60ed4cfb', 'dc1183a30fd37c41731b183291719b23', ' '),
(11, 'c583b05da346971d57e1b9101f2a4f71', '63c22b333e624282ca6c1c7eaa293c9e', ' '),
(12, 'c583b05da346971d57e1b9101f2a4f71', '925079a2cb779cae91ac4bacf2869260', ' '),
(13, 'c583b05da346971d57e1b9101f2a4f71', 'e3a924f5f9038e505f91174ddc85422b', ' '),
(14, 'c583b05da346971d57e1b9101f2a4f71', '682c25779c7e893e6345a015a6f19df5', ' '),
(15, 'b0cbfa3b4d34a5abbaf223020d8603b7', '63c22b333e624282ca6c1c7eaa293c9e', ' '),
(16, 'b0cbfa3b4d34a5abbaf223020d8603b7', '16b5c4d50d63209038f45cc2d85092c5', ' '),
(17, 'b0cbfa3b4d34a5abbaf223020d8603b7', 'e3a924f5f9038e505f91174ddc85422b', ' '),
(18, 'b0cbfa3b4d34a5abbaf223020d8603b7', '6f9a1726c32688c1547aa4f4f0c9b150', ' '),
(19, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '63c22b333e624282ca6c1c7eaa293c9e', ' '),
(20, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '6f9a1726c32688c1547aa4f4f0c9b150', ' '),
(21, 'fbb22fcfa22edbcae7cadabd1fe8ac50', 'e3a924f5f9038e505f91174ddc85422b', ' '),
(22, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '682c25779c7e893e6345a015a6f19df5', ' '),
(23, '9dda50c180e16c668b1bae3131d76a33', 'e3a924f5f9038e505f91174ddc85422b', ' '),
(24, '9dda50c180e16c668b1bae3131d76a33', '925079a2cb779cae91ac4bacf2869260', ' '),
(25, '9dda50c180e16c668b1bae3131d76a33', '8b32f031f3f22c1bc89d251a9e76e5c1', ' '),
(26, '9dda50c180e16c668b1bae3131d76a33', 'dc61995204f92881dec2046f6cdb5f6e', ' '),
(27, '0faaf7bab76bc20ab0b05f309e339a69', '71fb29d5fce600b35eecee25c5893a32', ' '),
(28, '', '', ' '),
(29, '', '', ' '),
(30, '0faaf7bab76bc20ab0b05f309e339a69', 'af29c351e856149bc86df5d1d966d7c8', ' '),
(31, '0faaf7bab76bc20ab0b05f309e339a69', '800f79eb0ff64b14c95725a0814ed27c', ' '),
(32, '0faaf7bab76bc20ab0b05f309e339a69', 'b7a48ec2bfe5fc65d505bbfffed62d9a', ' '),
(33, 'c7edc420e9b0fab86fd5b4a3dad27fc6', 'a81b35d77b4b6a9c9c4bdbee80570fae', ' '),
(34, 'c7edc420e9b0fab86fd5b4a3dad27fc6', 'a716bb0a24e187e64de7426333c2c8c5', ' '),
(35, 'c7edc420e9b0fab86fd5b4a3dad27fc6', '999f454ddf6d10af7345fd96f2d5da80', ' '),
(36, 'c7edc420e9b0fab86fd5b4a3dad27fc6', '98bfd9d54ae720576655351c26b9bc58', ' '),
(37, 'ff19ba1cb217b8f0ce15f71622a4fa4d', '61a1e55737de92ca62c322453644c71b', ' '),
(38, 'ff19ba1cb217b8f0ce15f71622a4fa4d', 'f6c8eae323160856af34104a49f49e3c', ' '),
(39, 'ff19ba1cb217b8f0ce15f71622a4fa4d', 'c9f80e0286a89dd62ca8ddb7b275615b', ' '),
(40, 'ff19ba1cb217b8f0ce15f71622a4fa4d', 'cbf87b4291c259b9a275c401db3989e6', ' '),
(41, '2ee5175240fdad86ca7f9d4642f71c7a', 'f42a04cf3eef892e98788306b598ba4c', ' '),
(42, '2ee5175240fdad86ca7f9d4642f71c7a', '9317b3b92ac09d609cd2dc0cec3ce292', ' '),
(43, '2ee5175240fdad86ca7f9d4642f71c7a', '999f454ddf6d10af7345fd96f2d5da80', ' '),
(44, '2ee5175240fdad86ca7f9d4642f71c7a', 'ded208e0ff3527ebfecd117255a7ceda', ' '),
(45, '2ee5175240fdad86ca7f9d4642f71c7a', 'a716bb0a24e187e64de7426333c2c8c5', ' '),
(46, 'c583b05da346971d57e1b9101f2a4f71', '63c22b333e624282ca6c1c7eaa293c9e', ' '),
(47, 'c583b05da346971d57e1b9101f2a4f71', '925079a2cb779cae91ac4bacf2869260', ' '),
(48, 'c583b05da346971d57e1b9101f2a4f71', 'e3a924f5f9038e505f91174ddc85422b', ' '),
(49, 'c583b05da346971d57e1b9101f2a4f71', '682c25779c7e893e6345a015a6f19df5', ' '),
(50, '0f24daef9e335db8de2dbc6a43965695', 'ef81ae25c2b698a8eb4fef13e93c9f17', ' '),
(51, '0f24daef9e335db8de2dbc6a43965695', '0f42c77b55539682bd95124d0a8be560', ' '),
(52, '0f24daef9e335db8de2dbc6a43965695', 'a07213bf702ec25a693438d332f4fd6f', ' '),
(53, '0f24daef9e335db8de2dbc6a43965695', '264a64374ab289a8639ff7d918f99513', ' '),
(54, '0f24daef9e335db8de2dbc6a43965695', 'ec4ca3c5a098e46867217bc94a0d3792', ' '),
(55, '68ed3254a48090f9d827010dc62d1cce', '4521132c5f50a0053a2578004da7c383', ' '),
(56, '68ed3254a48090f9d827010dc62d1cce', 'fcc864e3ac20fd3eb3f3a738f28267b9', ' '),
(57, '68ed3254a48090f9d827010dc62d1cce', '999f454ddf6d10af7345fd96f2d5da80', ' '),
(58, '68ed3254a48090f9d827010dc62d1cce', '54de5b3b90864ee5152e8f91612fcb30', ' '),
(59, 'c583b05da346971d57e1b9101f2a4f71', 'fcc864e3ac20fd3eb3f3a738f28267b9', ' '),
(60, 'c583b05da346971d57e1b9101f2a4f71', 'de33ae092e20809d8e85a944f37d73db', ' '),
(61, 'b0cbfa3b4d34a5abbaf223020d8603b7', 'cae130e2030ff38858665b9073d4b171', ' '),
(62, 'b0cbfa3b4d34a5abbaf223020d8603b7', '8946bf1c5951918a81f2f06bfaa0bd98', ' '),
(63, 'b0cbfa3b4d34a5abbaf223020d8603b7', 'fcc864e3ac20fd3eb3f3a738f28267b9', ' '),
(64, 'b0cbfa3b4d34a5abbaf223020d8603b7', '7dc402a98fc1ccbee06534e3891f5bac', ' '),
(65, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '71176134c9542582394e2e4d41557c78', ' '),
(66, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '45d7fbbf9f1de5d348406b29e1cc8a8b', ' '),
(67, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '9c97d8c2af32b8851f3d5b68ad0ee6bb', ' '),
(68, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '709fdfa8ff76c066ff9f8c71dcd50fb9', ' '),
(69, '9dda50c180e16c668b1bae3131d76a33', 'b98739e4cd46484aacb906f28c42a083', ' '),
(70, '9dda50c180e16c668b1bae3131d76a33', '5df1e85094268e86c079ad6d32dd9947', ' '),
(71, '9dda50c180e16c668b1bae3131d76a33', 'cef55f511fe20b612684791f7b7762ef', ' '),
(72, '9dda50c180e16c668b1bae3131d76a33', 'ca16440ea2ed18378ba4f153e27772ba', ' '),
(73, '0faaf7bab76bc20ab0b05f309e339a69', '46745002b522222da6d15524a16ec547', 'Administrador '),
(74, '0faaf7bab76bc20ab0b05f309e339a69', '505122e7f0207e67830eb96b5c1859cf', 'Administrador '),
(75, '0faaf7bab76bc20ab0b05f309e339a69', 'ac67d3ac1b7c61ac25e3527be385eae4', 'Administrador '),
(76, '0faaf7bab76bc20ab0b05f309e339a69', '5bf0075db153d648b46dcdf65d3d92a1', 'Administrador '),
(77, 'c7edc420e9b0fab86fd5b4a3dad27fc6', 'c8ef516f97ac54f0ac8a863feda8d0d0', 'Administrador '),
(78, 'c7edc420e9b0fab86fd5b4a3dad27fc6', 'a1d2626ac8b911113897b1c8a77aad30', 'Administrador '),
(79, 'c7edc420e9b0fab86fd5b4a3dad27fc6', 'd49a32c11aeb804bbcefdb69fe500290', 'Administrador '),
(80, 'c7edc420e9b0fab86fd5b4a3dad27fc6', '46481c1e8d546e1e95f225ce20eaa5cb', 'Administrador '),
(81, '2ee5175240fdad86ca7f9d4642f71c7a', 'dd842956e8c9cfad2ccdb83e9667fe71', 'Administrador '),
(82, '2ee5175240fdad86ca7f9d4642f71c7a', 'a9d030da9ff205cb4d860bac68becffc', 'Administrador '),
(83, '2ee5175240fdad86ca7f9d4642f71c7a', 'f12253e85172be5d051737f08b84f4c9', 'Administrador '),
(84, '2ee5175240fdad86ca7f9d4642f71c7a', '3134747ef96f7894dd0868b58c4e286f', 'Administrador '),
(85, 'b0cbfa3b4d34a5abbaf223020d8603b7', 'cae130e2030ff38858665b9073d4b171', 'Administrador '),
(86, 'b0cbfa3b4d34a5abbaf223020d8603b7', '8946bf1c5951918a81f2f06bfaa0bd98', 'Administrador '),
(87, 'b0cbfa3b4d34a5abbaf223020d8603b7', 'fcc864e3ac20fd3eb3f3a738f28267b9', 'Administrador '),
(88, 'b0cbfa3b4d34a5abbaf223020d8603b7', '7dc402a98fc1ccbee06534e3891f5bac', 'Administrador '),
(89, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '71176134c9542582394e2e4d41557c78', 'Administrador '),
(90, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '71176134c9542582394e2e4d41557c78', 'Administrador '),
(91, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '45d7fbbf9f1de5d348406b29e1cc8a8b', 'Administrador '),
(92, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '9c97d8c2af32b8851f3d5b68ad0ee6bb', 'Administrador '),
(93, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '709fdfa8ff76c066ff9f8c71dcd50fb9', 'Administrador '),
(95, '9dda50c180e16c668b1bae3131d76a33', '2b236e9b3cf392365e4463a276bb2d95', 'Administrador '),
(96, '9dda50c180e16c668b1bae3131d76a33', 'a45984c71c5eeca00df14b79a5d556e9', 'Administrador '),
(97, 'b0cbfa3b4d34a5abbaf223020d8603b7', '504da7ba06fd83dc2e4b3c4668cf1056', 'Administrador '),
(98, 'c583b05da346971d57e1b9101f2a4f71', '504da7ba06fd83dc2e4b3c4668cf1056', 'Administrador '),
(99, 'b0cbfa3b4d34a5abbaf223020d8603b7', 'ac0320fe3b994e6a495bebeb10a63096', 'Administrador '),
(100, 'b0cbfa3b4d34a5abbaf223020d8603b7', 'de33ae092e20809d8e85a944f37d73db', ' '),
(101, 'b0cbfa3b4d34a5abbaf223020d8603b7', 'de33ae092e20809d8e85a944f37d73db', ' '),
(102, '', '', 'Administrador '),
(103, 'b0cbfa3b4d34a5abbaf223020d8603b7', '30f1f1529fd2d32d30f99c82a8ed78f9', 'Administrador '),
(104, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '30f1f1529fd2d32d30f99c82a8ed78f9', 'Administrador '),
(105, 'c583b05da346971d57e1b9101f2a4f71', '1072d6374017490fe7c469a4e6dabe69', ' '),
(106, 'c583b05da346971d57e1b9101f2a4f71', 'b4d7b9258cded7030f193088cf87cd39', ' '),
(107, 'c583b05da346971d57e1b9101f2a4f71', '23f9f9b6c07f8d84e570945619c8c167', 'Administrador '),
(108, '9dda50c180e16c668b1bae3131d76a33', '23f9f9b6c07f8d84e570945619c8c167', 'Administrador '),
(109, '9dda50c180e16c668b1bae3131d76a33', 'dacc9d08f6375ef8ded7fbd357a84009', 'Administrador '),
(110, 'ff19ba1cb217b8f0ce15f71622a4fa4d', '88ddaa1e7e249f71a34e74cf4e487210', 'Administrador '),
(111, 'c7edc420e9b0fab86fd5b4a3dad27fc6', 'b93de7ce4adb86f72e671e61eefb6d33', 'Administrador '),
(112, '2ee5175240fdad86ca7f9d4642f71c7a', 'b93de7ce4adb86f72e671e61eefb6d33', 'Administrador '),
(113, '2ee5175240fdad86ca7f9d4642f71c7a', 'edc56e065bda6e1395651908afadcc78', 'Administrador '),
(114, '0faaf7bab76bc20ab0b05f309e339a69', '5a0740328604c5a63fd5762a727400f1', 'Administrador '),
(115, '0faaf7bab76bc20ab0b05f309e339a69', '5b5684b7ebb6885e1e6bd8d8cbf3efb6', 'Administrador '),
(116, 'c7edc420e9b0fab86fd5b4a3dad27fc6', '44617fa6d3a0b66258b81182d9e7d0ab', 'Administrador '),
(117, '2ee5175240fdad86ca7f9d4642f71c7a', '6eff8f167f98cc265af149b96aaea62c', 'Administrador '),
(118, '2ee5175240fdad86ca7f9d4642f71c7a', '6eff8f167f98cc265af149b96aaea62c', 'Administrador '),
(119, 'ff19ba1cb217b8f0ce15f71622a4fa4d', '6eff8f167f98cc265af149b96aaea62c', 'Administrador '),
(120, 'c583b05da346971d57e1b9101f2a4f71', '1072d6374017490fe7c469a4e6dabe69', 'Administrator '),
(121, 'c583b05da346971d57e1b9101f2a4f71', 'edc56e065bda6e1395651908afadcc78', 'Administrator '),
(122, 'c583b05da346971d57e1b9101f2a4f71', 'c276c954d1df2f1df82201830901d402', ' '),
(123, '0faaf7bab76bc20ab0b05f309e339a69', '5b5684b7ebb6885e1e6bd8d8cbf3efb6', ' '),
(124, '0faaf7bab76bc20ab0b05f309e339a69', '11d12df9b0bbb36da50866676486edba', ' '),
(125, '0faaf7bab76bc20ab0b05f309e339a69', '5a0740328604c5a63fd5762a727400f1', ' '),
(126, '0faaf7bab76bc20ab0b05f309e339a69', '5a0740328604c5a63fd5762a727400f1', ' '),
(127, '0faaf7bab76bc20ab0b05f309e339a69', 'c9303fa930eecd586c1e06b7db8b0763', ' '),
(128, '0faaf7bab76bc20ab0b05f309e339a69', 'c9303fa930eecd586c1e06b7db8b0763', ' '),
(129, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '168ad80f2e7e044a629bd7ed94f8eb0b', ' '),
(130, 'fbb22fcfa22edbcae7cadabd1fe8ac50', '168ad80f2e7e044a629bd7ed94f8eb0b', ' '),
(131, '0faaf7bab76bc20ab0b05f309e339a69', '339695c4065799385a42e99d6ec9f3dd', ' '),
(132, '0faaf7bab76bc20ab0b05f309e339a69', '339695c4065799385a42e99d6ec9f3dd', ' '),
(133, '0faaf7bab76bc20ab0b05f309e339a69', 'a41c567bcebeca8bb0777af7204ee099', ' '),
(134, '43a34c32eca3b3fa62eeda3f60ed4cfb', '6b588ca65b6efbb47e57a1855cdea66f', 'Administrador '),
(135, '43a34c32eca3b3fa62eeda3f60ed4cfb', '6b588ca65b6efbb47e57a1855cdea66f', 'Administrador '),
(136, '43a34c32eca3b3fa62eeda3f60ed4cfb', '4e00f1c872395ff6c51f1fc12f5bbf00', 'Administrador '),
(137, '43a34c32eca3b3fa62eeda3f60ed4cfb', '4e00f1c872395ff6c51f1fc12f5bbf00', 'Administrador '),
(138, '43a34c32eca3b3fa62eeda3f60ed4cfb', 'ef588e0fd0b43167aeff0ced3583d6c1', 'Administrador '),
(139, '43a34c32eca3b3fa62eeda3f60ed4cfb', 'ef588e0fd0b43167aeff0ced3583d6c1', 'Administrador '),
(140, 'c583b05da346971d57e1b9101f2a4f71', '368a939f04ff4b3de80456bf0446dcb8', 'Administrador '),
(141, 'c583b05da346971d57e1b9101f2a4f71', '368a939f04ff4b3de80456bf0446dcb8', 'Administrador '),
(142, 'b0cbfa3b4d34a5abbaf223020d8603b7', '368a939f04ff4b3de80456bf0446dcb8', 'Administrador '),
(143, 'b0cbfa3b4d34a5abbaf223020d8603b7', '368a939f04ff4b3de80456bf0446dcb8', 'Administrador '),
(144, 'b0cbfa3b4d34a5abbaf223020d8603b7', '9cd4e0d92a34bac05ad137d6678feab0', 'Administrador '),
(145, 'b0cbfa3b4d34a5abbaf223020d8603b7', '9cd4e0d92a34bac05ad137d6678feab0', 'Administrador '),
(146, 'b0cbfa3b4d34a5abbaf223020d8603b7', '9cd4e0d92a34bac05ad137d6678feab0', 'Administrador '),
(147, 'b0cbfa3b4d34a5abbaf223020d8603b7', 'c822eaef8ba6ff174849d6dcff14212a', 'Administrador '),
(148, 'c7edc420e9b0fab86fd5b4a3dad27fc6', '8ae07ea0840cc43bc6c9102a90decf5c', 'Administrador '),
(149, 'ff19ba1cb217b8f0ce15f71622a4fa4d', 'c0f589be4114e7eb694b23347e2182a6', 'Administrador '),
(150, 'ff19ba1cb217b8f0ce15f71622a4fa4d', 'bed44b33eb0896bed68306e15f47e2c4', 'Administrador '),
(151, '2ee5175240fdad86ca7f9d4642f71c7a', '2c24fbfa90d64705e08f0c1c6f43b888', 'Administrador '),
(152, '2ee5175240fdad86ca7f9d4642f71c7a', '0c347acb94426d3e7ca27f1020b157e8', 'Administrador '),
(153, '2ee5175240fdad86ca7f9d4642f71c7a', '8ae07ea0840cc43bc6c9102a90decf5c', 'Administrador '),
(154, '2ee5175240fdad86ca7f9d4642f71c7a', 'd6222c499a21585a2bf1d503c9873281', 'Administrador '),
(155, '0f24daef9e335db8de2dbc6a43965695', 'a4ba95a8184ae3ea98a5abff0602a2e7', 'Administrador '),
(156, '0f24daef9e335db8de2dbc6a43965695', '3916851ff40e4741521b48bd0cd2182b', 'Administrador '),
(157, '68ed3254a48090f9d827010dc62d1cce', '69a6b30cd7637127dd36dcb1a64b4cde', 'Administrador '),
(158, '68ed3254a48090f9d827010dc62d1cce', '5007c090582a86152618b9893f4b3b40', 'Administrador '),
(159, '68ed3254a48090f9d827010dc62d1cce', '1cb96522672451d462610b15a641e0d3', 'Administrador '),
(160, '2ee5175240fdad86ca7f9d4642f71c7a', '999f454ddf6d10af7345fd96f2d5da80', 'Administrador '),
(161, 'ff19ba1cb217b8f0ce15f71622a4fa4d', '999f454ddf6d10af7345fd96f2d5da80', 'Administrador '),
(162, '8e67bc35300ff4d3f8f1b2dfcaca3f10', '8da87e275d6c89d4bc01f46a9aba295c', 'Administrador ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso_docente`
--

CREATE TABLE `curso_docente` (
  `id_curso_doc` varchar(254) NOT NULL,
  `id_util` varchar(254) NOT NULL,
  `id_curso` varchar(254) NOT NULL,
  `id_turno` varchar(254) NOT NULL,
  `id_turma` varchar(254) NOT NULL,
  `id_disciplina` varchar(254) NOT NULL,
  `responsavel` varchar(254) NOT NULL,
  `data` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso_docente`
--

INSERT INTO `curso_docente` (`id_curso_doc`, `id_util`, `id_curso`, `id_turno`, `id_turma`, `id_disciplina`, `responsavel`, `data`) VALUES
('00ba9c545ee0d9402507ac8f462afb0d', '8ecf3e0825951df33c740f0817b70ed2', '9dda50c180e16c668b1bae3131d76a33', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '2b236e9b3cf392365e4463a276bb2d95', 'Administrador ', '22-11-2018 14:11'),
('01aad10be139108a94c4960c0a79c896', '51e9d1cd08fcfa24fd5822f1ed945241', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '800f79eb0ff64b14c95725a0814ed27c', 'Administrador ', '07-01-2019 21:01'),
('07d56c5ffcde42dfee73f73569f406f5', '09e23571dd6fa0f4cc86c3e4f6d890f2', 'b0cbfa3b4d34a5abbaf223020d8603b7', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '30f1f1529fd2d32d30f99c82a8ed78f9', 'Administrador ', '22-11-2018 22:11'),
('08a1e5bb77552850aa10bc0ced29d5fc', 'f4e952f3bbd561fa4faa8fe68aca059d', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '23f9f9b6c07f8d84e570945619c8c167', 'Administrador ', '23-11-2018 10:11'),
('0900a889a40dd0c6317585724a0c867b', '8d9b1d35598537a7f85c90c94e66017c', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '6eff8f167f98cc265af149b96aaea62c', 'Administrador ', '23-11-2018 13:11'),
('093446754711553fb83fface2b0fed53', '67afaff05d4e5d0ff713444fa3921366', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '999f454ddf6d10af7345fd96f2d5da80', 'Administrador ', '20-01-2019 17:01'),
('0ad20464a60a6f57f6594551c4cf8297', 'ccbcc204ff4263789c91f6824922954a', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '3583051952f2416efdcde1578a9c053c', '8b9891a5e1fdb768a0f41e4de4cdaac2', '45d7fbbf9f1de5d348406b29e1cc8a8b', 'Administrador ', '06-11-2018 02:11'),
('0c0c2c4922da93e8bead3ba3cd9dc05c', '05f82f2c2728fd524dfb2c662674911b', '9dda50c180e16c668b1bae3131d76a33', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'a45984c71c5eeca00df14b79a5d556e9', 'Administrador ', '22-11-2018 15:11'),
('0f20154b82af18804462d06581315b6a', '7ff547e06eb337908476064dd12bb77c', '68ed3254a48090f9d827010dc62d1cce', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'ef588e0fd0b43167aeff0ced3583d6c1', 'Administrador ', '26-11-2018 03:11'),
('102dcc753f4c0e740e391c7cec0772ef', '7ff547e06eb337908476064dd12bb77c', '43a34c32eca3b3fa62eeda3f60ed4cfb', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'd6222c499a21585a2bf1d503c9873281', 'Administrador ', '25-11-2018 23:11'),
('10df76ee9e4a86cc0b903fefc79861c8', '51e9d1cd08fcfa24fd5822f1ed945241', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '7fc2ce24aa2c92038bb134583151cb85', 'Administrador ', '25-09-2018 23:09'),
('13e33ed9f33b2aab0ad4810154016ab4', 'fbde81585fbcf2faf55070a477bea73f', 'b0cbfa3b4d34a5abbaf223020d8603b7', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'ac0320fe3b994e6a495bebeb10a63096', 'Administrador ', '22-11-2018 16:11'),
('152f6e8f2523535670977e879c038ca4', 'ccbcc204ff4263789c91f6824922954a', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '9d59fbd6b2c70bcc7bc802ed22b114c7', 'Administrador ', '22-11-2018 11:11'),
('17934040813fc020e09c6e9efa37c259', '172f4e7b2b9647dc023cfc25780eb565', 'b0cbfa3b4d34a5abbaf223020d8603b7', '3583051952f2416efdcde1578a9c053c', '8b9891a5e1fdb768a0f41e4de4cdaac2', '7dc402a98fc1ccbee06534e3891f5bac', 'Samora Francisco  Chivambo', '25-10-2018 23:10'),
('1f5bf1917d8c1511187ab6f668899702', '7ff547e06eb337908476064dd12bb77c', '68ed3254a48090f9d827010dc62d1cce', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '1cb96522672451d462610b15a641e0d3', 'Administrador ', '26-11-2018 03:11'),
('21abdffce91f2983e7d94f039e16c866', '8d9b1d35598537a7f85c90c94e66017c', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8b9891a5e1fdb768a0f41e4de4cdaac2', '6eff8f167f98cc265af149b96aaea62c', 'Administrador ', '23-11-2018 13:11'),
('245a71bbbd0158844557ef1da159fb3e', 'e2a3b1076d2145ec5ea2c9595df2c807', '68ed3254a48090f9d827010dc62d1cce', '3583051952f2416efdcde1578a9c053c', '8b9891a5e1fdb768a0f41e4de4cdaac2', '682c25779c7e893e6345a015a6f19df5', 'Administrador ', '05-11-2018 15:11'),
('253972223cb597741b27eebf72a90d9a', '138f454c9294649a6172f623a84dd730', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'b93de7ce4adb86f72e671e61eefb6d33', 'Administrador ', '23-11-2018 11:11'),
('25a3b958b836e5136b72cf573e02b9c3', 'f4e952f3bbd561fa4faa8fe68aca059d', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'c276c954d1df2f1df82201830901d402', ' ', '25-11-2018 00:11'),
('29bbb8d7eaaf1662c12203373b70d374', '7839ca31408eeb3da07bfcac89af8e38', '0f24daef9e335db8de2dbc6a43965695', 'ea2364a63418ad82affd163a6a706aec', '8f352246aa954bad7a3a14bb42fdea73', '3916851ff40e4741521b48bd0cd2182b', 'Administrador ', '26-11-2018 03:11'),
('332cd263088816cbe64d276bb66b8401', '67afaff05d4e5d0ff713444fa3921366', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '88ddaa1e7e249f71a34e74cf4e487210', 'Administrador ', '26-11-2018 02:11'),
('353371c802e673edfbf76ccc2dfc98c0', '2b4eae056802a0439d039a2da12ed95a', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '1072d6374017490fe7c469a4e6dabe69', 'Administrator ', '24-11-2018 21:11'),
('373799094b97290e07a5f87f5c13a273', 'deda481283289e5561ed18cfe351b50e', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '46745002b522222da6d15524a16ec547', 'Fernando Mabunda', '18-10-2018 01:10'),
('38d689d321423f7396d6751fdf0deaa3', '67afaff05d4e5d0ff713444fa3921366', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '61a1e55737de92ca62c322453644c71b', 'Administrador ', '31-10-2018 14:10'),
('39f16d6ae87ee73dd3c2aefafe09da36', '138f454c9294649a6172f623a84dd730', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '88ddaa1e7e249f71a34e74cf4e487210', 'Administrador ', '23-11-2018 11:11'),
('3bfeb1e2dd34edd90e1cf99e4b46005f', '67afaff05d4e5d0ff713444fa3921366', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'c0f589be4114e7eb694b23347e2182a6', 'Administrador ', '26-11-2018 01:11'),
('3e73c4943c5cf1654edd325c589fd4df', '67afaff05d4e5d0ff713444fa3921366', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '8ae07ea0840cc43bc6c9102a90decf5c', 'Administrador ', '26-11-2018 01:11'),
('3fd5516f608dc07419f7389e3c71db4b', '60ee0f67375a4678b01453489dfd6522', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '66ce24f2e9986da882f8ca6a6f8e541c', 'Administrador ', '21-11-2018 11:11'),
('45d92a0fccd5a54e383cefb4d4fa814f', '138f454c9294649a6172f623a84dd730', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'edc56e065bda6e1395651908afadcc78', 'Administrador ', '23-11-2018 11:11'),
('46db28e784da180ff071fa824c6197a1', '7839ca31408eeb3da07bfcac89af8e38', '0f24daef9e335db8de2dbc6a43965695', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '3916851ff40e4741521b48bd0cd2182b', 'Administrador ', '26-11-2018 03:11'),
('48e6f2798256319ede0776b94877a310', '09e23571dd6fa0f4cc86c3e4f6d890f2', '68ed3254a48090f9d827010dc62d1cce', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '71f33fd352132b117fd81dd6afd1e886', 'Administrador ', '26-11-2018 03:11'),
('49475ef3c4d5648b4e4a287ec5995364', '09e23571dd6fa0f4cc86c3e4f6d890f2', '68ed3254a48090f9d827010dc62d1cce', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '5007c090582a86152618b9893f4b3b40', 'Administrador ', '26-11-2018 03:11'),
('4b9fdbdf58b583957388bf0f27b0a3ea', '37e1a5208fbb41378a2f15da98a97276', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8b9891a5e1fdb768a0f41e4de4cdaac2', '5b5684b7ebb6885e1e6bd8d8cbf3efb6', ' ', '25-11-2018 01:11'),
('4c7f61b8d3a567adbec826cff97753fb', 'f4e952f3bbd561fa4faa8fe68aca059d', 'c583b05da346971d57e1b9101f2a4f71', '3583051952f2416efdcde1578a9c053c', '8b9891a5e1fdb768a0f41e4de4cdaac2', '23f9f9b6c07f8d84e570945619c8c167', 'Administrador ', '23-11-2018 10:11'),
('4d5affbb96cafdc3bb92a539591c298f', '67afaff05d4e5d0ff713444fa3921366', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'a81b35d77b4b6a9c9c4bdbee80570fae', 'Ricardo Jamissiano Nhachengo', '31-10-2018 14:10'),
('4fc742840e6bdecd141ef6d1d505639d', '172f4e7b2b9647dc023cfc25780eb565', 'b0cbfa3b4d34a5abbaf223020d8603b7', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '7dc402a98fc1ccbee06534e3891f5bac', 'Administrador ', '26-10-2018 21:10'),
('52cea0c2998232fd8a376240aa332609', 'ccbcc204ff4263789c91f6824922954a', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '68a1b7870e85ce84d02559cf6a3e011a', '8b9891a5e1fdb768a0f41e4de4cdaac2', '65b5255c8b65f5374e70fc2a411b3056', 'Administrador ', '19-01-2019 20:01'),
('57a2fc4da2ea63b7d2b71f1679a9cbff', 'fbde81585fbcf2faf55070a477bea73f', 'b0cbfa3b4d34a5abbaf223020d8603b7', '3583051952f2416efdcde1578a9c053c', '8b9891a5e1fdb768a0f41e4de4cdaac2', 'ac0320fe3b994e6a495bebeb10a63096', 'Administrador ', '22-11-2018 16:11'),
('596d95f49dd82d9a1c18f1a88db72cf0', 'ade2c7b022d26f27740197eae66f00be', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '3ccd2346a80bdd991fe907a798724602', 'Administrador ', '21-11-2018 09:11'),
('5bb1fbcd0edd7db7d469f215ffa8b351', '51e9d1cd08fcfa24fd5822f1ed945241', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '11d12df9b0bbb36da50866676486edba', ' ', '25-11-2018 12:11'),
('5e26c027c85c4cbf10421fb42cd03d87', '07f4bf4dcd0f6cd5287d4268f725ae40', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'd49a32c11aeb804bbcefdb69fe500290', ' ', '27-10-2018 22:10'),
('6107223f324a1511ebb4407fe53028f2', '8d9b1d35598537a7f85c90c94e66017c', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '6eff8f167f98cc265af149b96aaea62c', 'Administrador ', '23-11-2018 13:11'),
('615a2716198e9daafd279b290f7f9f30', '34de5fb4171167ec34082720d7e40a2a', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '71176134c9542582394e2e4d41557c78', 'Administrador ', '05-11-2018 15:11'),
('63bc735de64f30a66c1be483e8df97e4', 'ade2c7b022d26f27740197eae66f00be', 'c583b05da346971d57e1b9101f2a4f71', '3583051952f2416efdcde1578a9c053c', '8f352246aa954bad7a3a14bb42fdea73', '3ccd2346a80bdd991fe907a798724602', 'Administrador ', '21-11-2018 20:11'),
('659e31fbfb301b7140f9a0c500f2c6da', '29496b4788d3e10f7d058a17b943971f', '0f24daef9e335db8de2dbc6a43965695', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'a4ba95a8184ae3ea98a5abff0602a2e7', 'Administrador ', '26-11-2018 02:11'),
('67bd80138252ad9d44c8f385346890a3', 'ccbcc204ff4263789c91f6824922954a', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '68a1b7870e85ce84d02559cf6a3e011a', '8b9891a5e1fdb768a0f41e4de4cdaac2', '45d7fbbf9f1de5d348406b29e1cc8a8b', 'Administrador ', '19-01-2019 19:01'),
('697e6b857c8e08b7348191683542fbe2', '51e9d1cd08fcfa24fd5822f1ed945241', '0faaf7bab76bc20ab0b05f309e339a69', '3583051952f2416efdcde1578a9c053c', '8b9891a5e1fdb768a0f41e4de4cdaac2', '925079a2cb779cae91ac4bacf2869260', 'Tania Pires', '27-10-2018 13:10'),
('69ed57e3aff3022007b1d9f6ac634964', '9caf0162a9b2e3f0fdf3e0d3db10f8a8', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'f6c8eae323160856af34104a49f49e3c', 'Administrador ', '01-11-2018 10:11'),
('6b11dc0e4737acedda2faf94fa539673', '172f4e7b2b9647dc023cfc25780eb565', 'b0cbfa3b4d34a5abbaf223020d8603b7', '3583051952f2416efdcde1578a9c053c', '8f352246aa954bad7a3a14bb42fdea73', '7dc402a98fc1ccbee06534e3891f5bac', 'Administrador ', '26-10-2018 21:10'),
('722149174bba4056798ae514a4245e07', 'f633dc82f3a23c7ca8eb7890e01a07a8', '9dda50c180e16c668b1bae3131d76a33', '68a1b7870e85ce84d02559cf6a3e011a', '8b9891a5e1fdb768a0f41e4de4cdaac2', '2b236e9b3cf392365e4463a276bb2d95', 'Administrador ', '23-11-2018 16:11'),
('724538a6077099624006bdcd66c4234b', '67afaff05d4e5d0ff713444fa3921366', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8b9891a5e1fdb768a0f41e4de4cdaac2', '88ddaa1e7e249f71a34e74cf4e487210', 'Administrador ', '19-01-2019 20:01'),
('73f42e2467347c97441b026cef84e074', '531e515670894faba33cbc7402e9773f', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '2c24fbfa90d64705e08f0c1c6f43b888', 'Administrador ', '26-11-2018 02:11'),
('76c1e8e1e1ba95a7b9d3cd84f3d05040', '51e9d1cd08fcfa24fd5822f1ed945241', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'c9303fa930eecd586c1e06b7db8b0763', ' ', '25-11-2018 12:11'),
('76cb4c95ba61d2756656b703b8c11cd3', '67afaff05d4e5d0ff713444fa3921366', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '61a1e55737de92ca62c322453644c71b', 'Administrador ', '27-10-2018 13:10'),
('7c9836f2c47dff0102d0546aac890bb9', '34de5fb4171167ec34082720d7e40a2a', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '3583051952f2416efdcde1578a9c053c', '8b9891a5e1fdb768a0f41e4de4cdaac2', '71176134c9542582394e2e4d41557c78', 'Administrador ', '05-11-2018 15:11'),
('7e4992b95e0055ca9030423462cbb2d2', '09e23571dd6fa0f4cc86c3e4f6d890f2', 'b0cbfa3b4d34a5abbaf223020d8603b7', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'de33ae092e20809d8e85a944f37d73db', 'Administrador ', '22-11-2018 21:11'),
('7e9951d01d95537b53399abacd464385', '37e1a5208fbb41378a2f15da98a97276', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '5a0740328604c5a63fd5762a727400f1', 'Administrador ', '23-11-2018 11:11'),
('81e13c1b1a970595cde304025cbeb698', '51e9d1cd08fcfa24fd5822f1ed945241', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '368a939f04ff4b3de80456bf0446dcb8', 'Administrador ', '19-12-2018 03:12'),
('82289a7c272e7903e7914aa5482bdb25', '46d9a18f6ca825f645bafb9c6e4f3fcb', '68ed3254a48090f9d827010dc62d1cce', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'ded208e0ff3527ebfecd117255a7ceda', 'Administrador ', '27-10-2018 12:10'),
('8353ed1caa0b1716343cee8936f3109b', '67afaff05d4e5d0ff713444fa3921366', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '999f454ddf6d10af7345fd96f2d5da80', 'Administrador ', '19-01-2019 20:01'),
('874a0ea94ce0e37db62367a7d914873a', '51e9d1cd08fcfa24fd5822f1ed945241', '0f24daef9e335db8de2dbc6a43965695', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '953fd97a34843690c7172e0c57255f47', 'Tania Pires', '19-10-2018 16:10'),
('876bcdf1d4baba46b25eff375fbaaffe', '67afaff05d4e5d0ff713444fa3921366', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'c0f589be4114e7eb694b23347e2182a6', 'Administrador ', '22-01-2019 05:01'),
('88329eebfab6260a664384c5b76faa56', '37e1a5208fbb41378a2f15da98a97276', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '5b5684b7ebb6885e1e6bd8d8cbf3efb6', 'Administrador ', '23-11-2018 11:11'),
('8b3175219f8300d07d4a5381407d236e', 'ade2c7b022d26f27740197eae66f00be', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '3ccd2346a80bdd991fe907a798724602', 'Administrador ', '21-11-2018 20:11'),
('8c4b2e6347501b79cb431e19b861064b', 'ade2c7b022d26f27740197eae66f00be', 'b0cbfa3b4d34a5abbaf223020d8603b7', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '504da7ba06fd83dc2e4b3c4668cf1056', 'Administrador ', '22-11-2018 16:11'),
('8c5094165fb70a8cf957a12e937a300d', 'e2a3b1076d2145ec5ea2c9595df2c807', 'b0cbfa3b4d34a5abbaf223020d8603b7', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'c822eaef8ba6ff174849d6dcff14212a', 'Administrador ', '26-11-2018 00:11'),
('8cde531d4c1c1ffe85af05f9f9d093bc', 'e245a29cc09b19c395067c0c4558f5dc', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '44617fa6d3a0b66258b81182d9e7d0ab', 'Administrador ', '23-11-2018 13:11'),
('8de7670de7c9307cb6990a858d7c8ccc', '531e515670894faba33cbc7402e9773f', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'd6222c499a21585a2bf1d503c9873281', 'Administrador ', '26-11-2018 02:11'),
('8edbadc2d50a231eb8bf9e822ff9d168', '67afaff05d4e5d0ff713444fa3921366', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '999f454ddf6d10af7345fd96f2d5da80', 'Administrador ', '19-01-2019 19:01'),
('90a090f46e1691ba3e1fad714e64fa77', '7ff547e06eb337908476064dd12bb77c', '43a34c32eca3b3fa62eeda3f60ed4cfb', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '6b588ca65b6efbb47e57a1855cdea66f', 'Administrador ', '25-11-2018 22:11'),
('920dceedbf3a966a2ca7b2b3ac8b50f9', '51e9d1cd08fcfa24fd5822f1ed945241', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8b9891a5e1fdb768a0f41e4de4cdaac2', '339695c4065799385a42e99d6ec9f3dd', ' ', '25-11-2018 20:11'),
('94d9db3785e3ed0b87ab7e39b6952de4', 'f4e952f3bbd561fa4faa8fe68aca059d', '9dda50c180e16c668b1bae3131d76a33', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'dacc9d08f6375ef8ded7fbd357a84009', 'Administrador ', '23-11-2018 10:11'),
('95cfb6635b2ac1aa59a383806eb8079a', '138f454c9294649a6172f623a84dd730', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'dd842956e8c9cfad2ccdb83e9667fe71', 'Administrador ', '05-11-2018 14:11'),
('96a197aaf58765e6271f8891075641f6', '8d9b1d35598537a7f85c90c94e66017c', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'cf752f397b1f9cb1d115caee97485f21', 'Administrador ', '26-11-2018 02:11'),
('980da6be7b8c2d7f3e3a1d48b1577908', '7839ca31408eeb3da07bfcac89af8e38', '0f24daef9e335db8de2dbc6a43965695', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '264a64374ab289a8639ff7d918f99513', 'Marquezine Alves Lugela Camacho', '27-10-2018 10:10'),
('9c6714a8f52b4454b700817de3c785b8', '09e23571dd6fa0f4cc86c3e4f6d890f2', 'b0cbfa3b4d34a5abbaf223020d8603b7', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '9cd4e0d92a34bac05ad137d6678feab0', 'Administrador ', '26-11-2018 00:11'),
('9d0803d8de6e7b332e87b70af08e441e', '67afaff05d4e5d0ff713444fa3921366', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'a81b35d77b4b6a9c9c4bdbee80570fae', 'Administrador ', '31-10-2018 14:10'),
('9eceff082dfa21ebffdfd4d5fa53b9b2', '67afaff05d4e5d0ff713444fa3921366', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '61a1e55737de92ca62c322453644c71b', 'Administrador ', '22-01-2019 09:01'),
('a1941df9b82b867a15e6480d69bf035a', '67afaff05d4e5d0ff713444fa3921366', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'a81b35d77b4b6a9c9c4bdbee80570fae', ' ', '31-10-2018 14:10'),
('a3586afa3f606a5c8c75d3b6cce6b4ce', 'fbde81585fbcf2faf55070a477bea73f', '68ed3254a48090f9d827010dc62d1cce', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '54de5b3b90864ee5152e8f91612fcb30', ' ', '01-11-2018 08:11'),
('a44a3991e41f0cb4d4f1b9c31c475510', '09e23571dd6fa0f4cc86c3e4f6d890f2', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '30f1f1529fd2d32d30f99c82a8ed78f9', 'Administrador ', '22-11-2018 22:11'),
('a9d174fd7356ec17b4c066e4038ea203', 'ade2c7b022d26f27740197eae66f00be', 'c583b05da346971d57e1b9101f2a4f71', '3583051952f2416efdcde1578a9c053c', '8f352246aa954bad7a3a14bb42fdea73', '504da7ba06fd83dc2e4b3c4668cf1056', 'Administrator ', '24-11-2018 20:11'),
('ae0967a38fa472271fc1a9110da32113', '51e9d1cd08fcfa24fd5822f1ed945241', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'c9303fa930eecd586c1e06b7db8b0763', ' ', '25-11-2018 12:11'),
('ae5e36e9d7391fcb6f88e8aeb21702c6', 'd0112b6a10836b57aa8fa66fd20e4fd5', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '368a939f04ff4b3de80456bf0446dcb8', 'Administrador ', '26-11-2018 00:11'),
('b03fc2323905e1844b8dc274df42d451', '34de5fb4171167ec34082720d7e40a2a', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '168ad80f2e7e044a629bd7ed94f8eb0b', ' ', '25-11-2018 17:11'),
('b3458212c0330d8d8545a570cde13d79', 'ade2c7b022d26f27740197eae66f00be', '9dda50c180e16c668b1bae3131d76a33', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '504da7ba06fd83dc2e4b3c4668cf1056', 'Administrador ', '25-11-2018 19:11'),
('b60187f6dc5834c28173318335e6add2', '8d9b1d35598537a7f85c90c94e66017c', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '6eff8f167f98cc265af149b96aaea62c', 'Administrador ', '23-11-2018 13:11'),
('b836759f05783f19b3c767d9e6ba1c9c', '51e9d1cd08fcfa24fd5822f1ed945241', '0f24daef9e335db8de2dbc6a43965695', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '65b5255c8b65f5374e70fc2a411b3056', 'Administrador ', '19-10-2018 16:10'),
('b9cbe85ff2bb710fee9c7cba770e2720', '8d9b1d35598537a7f85c90c94e66017c', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '8ae07ea0840cc43bc6c9102a90decf5c', 'Administrador ', '26-11-2018 02:11'),
('bb7a454143f2a0967344f3f9de2835a5', '09e23571dd6fa0f4cc86c3e4f6d890f2', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '30f1f1529fd2d32d30f99c82a8ed78f9', 'Administrador ', '22-11-2018 22:11'),
('bc3372a1bc8ba378bcd8a41022ac1ff5', '51e9d1cd08fcfa24fd5822f1ed945241', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'a41c567bcebeca8bb0777af7204ee099', 'Administrador ', '26-11-2018 03:11'),
('bc6f1f9b6b2a28fdbc25a744c9eacfb8', '138f454c9294649a6172f623a84dd730', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'ded208e0ff3527ebfecd117255a7ceda', 'Administrador ', '05-11-2018 14:11'),
('be84a5db55710723308c2df786336d89', '8d9b1d35598537a7f85c90c94e66017c', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'a9d030da9ff205cb4d860bac68becffc', 'Administrador ', '26-11-2018 02:11'),
('beaa4fd5d039977ea3c812eb1373f101', '2b4eae056802a0439d039a2da12ed95a', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'b4d7b9258cded7030f193088cf87cd39', ' ', '23-11-2018 09:11'),
('c3c418eb430e5d2607505b34f231a0b2', '138f454c9294649a6172f623a84dd730', 'c7edc420e9b0fab86fd5b4a3dad27fc6', 'ea2364a63418ad82affd163a6a706aec', 'fe24bb1bf0439bb53663635a9d8796fc', 'ded208e0ff3527ebfecd117255a7ceda', 'Administrador ', '05-11-2018 14:11'),
('c5b64c77d4b09d079bb863ee14bb48bb', '8d9b1d35598537a7f85c90c94e66017c', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'a9d030da9ff205cb4d860bac68becffc', ' ', '27-10-2018 22:10'),
('c8e0e83be8237918a3a29b72598dee03', '51e9d1cd08fcfa24fd5822f1ed945241', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '71fb29d5fce600b35eecee25c5893a32', 'Tania Pires', '18-10-2018 00:10'),
('c9ad84e44e7809613a1656df45e86e2f', 'a1f1e6bcaa0866bedbbbe0f3dae76d66', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '1072d6374017490fe7c469a4e6dabe69', 'Administrator ', '24-11-2018 21:11'),
('ca62af62a1d3a61572918734a11fd34f', '8d9b1d35598537a7f85c90c94e66017c', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '6eff8f167f98cc265af149b96aaea62c', 'Administrador ', '23-11-2018 13:11'),
('cce4424d2d35b997b0828905ebe29fc5', 'ccbcc204ff4263789c91f6824922954a', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '45d7fbbf9f1de5d348406b29e1cc8a8b', 'Administrador ', '05-11-2018 15:11'),
('cd7e1d34d5b1723a485fa4bbd7c2dbc7', 'a1f1e6bcaa0866bedbbbe0f3dae76d66', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'edc56e065bda6e1395651908afadcc78', 'Administrator ', '24-11-2018 21:11'),
('cfcd208495d565ef66e7dff9f98764da', 'be03a6ccd9924e46b4ae4f23b2f67832', 'd84ff6f6134e74ae298262bcf2483884', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '7fc2ce24aa2c92038bb134583151cb85', 'Administrador ', '10-09-2018 12:09'),
('d46ec50af1dc823e5160c450d3ae11cd', 'c9f3a6be55b10c602c0f169f23cb7861', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'a1d2626ac8b911113897b1c8a77aad30', 'Administrador ', '06-11-2018 01:11'),
('d93ee2f960c38847ccac8d9e5f2181ec', 'e2a3b1076d2145ec5ea2c9595df2c807', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '682c25779c7e893e6345a015a6f19df5', 'Administrador ', '06-11-2018 00:11'),
('d9551198a2ddbc7e81d90c08513177ce', 'deda481283289e5561ed18cfe351b50e', '68ed3254a48090f9d827010dc62d1cce', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '925079a2cb779cae91ac4bacf2869260', ' ', '18-10-2018 01:10'),
('daf5aba6dce0d27bfae9e781c92c13bc', '09e23571dd6fa0f4cc86c3e4f6d890f2', 'b0cbfa3b4d34a5abbaf223020d8603b7', '3583051952f2416efdcde1578a9c053c', '8b9891a5e1fdb768a0f41e4de4cdaac2', 'de33ae092e20809d8e85a944f37d73db', 'Administrador ', '22-11-2018 22:11'),
('dde087dfd2e5ec2ce4212334ed2073f5', '138f454c9294649a6172f623a84dd730', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'b93de7ce4adb86f72e671e61eefb6d33', 'Administrador ', '23-11-2018 11:11'),
('dde9d002a73324848b7ddbf6ebf92c9d', '138f454c9294649a6172f623a84dd730', 'c7edc420e9b0fab86fd5b4a3dad27fc6', '68a1b7870e85ce84d02559cf6a3e011a', '8b9891a5e1fdb768a0f41e4de4cdaac2', 'ded208e0ff3527ebfecd117255a7ceda', 'Administrador ', '05-11-2018 14:11'),
('e7743ff77d829bed09127a87d758a8ed', '67afaff05d4e5d0ff713444fa3921366', '2ee5175240fdad86ca7f9d4642f71c7a', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'ded208e0ff3527ebfecd117255a7ceda', ' ', '27-10-2018 23:10'),
('e78f2dce1342b518b830d60ea71cd382', '05f82f2c2728fd524dfb2c662674911b', '9dda50c180e16c668b1bae3131d76a33', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '5df1e85094268e86c079ad6d32dd9947', 'Administrador ', '26-10-2018 21:10'),
('e7b1c3ee102e767faba02d5d79be2c6f', '67afaff05d4e5d0ff713444fa3921366', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'c0f589be4114e7eb694b23347e2182a6', 'Administrador ', '26-11-2018 01:11'),
('e982c63ff78a1e27393f7dfa25e76dba', '37e1a5208fbb41378a2f15da98a97276', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '5b5684b7ebb6885e1e6bd8d8cbf3efb6', ' ', '25-11-2018 00:11'),
('ea404b45fc3ab92592a416271f7ea587', '138f454c9294649a6172f623a84dd730', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'c9f80e0286a89dd62ca8ddb7b275615b', 'Administrador ', '05-11-2018 14:11'),
('ea8145be7ac4c99dba90b589b9664daf', 'ade2c7b022d26f27740197eae66f00be', 'b0cbfa3b4d34a5abbaf223020d8603b7', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '3ccd2346a80bdd991fe907a798724602', 'Administrador ', '21-11-2018 20:11'),
('ebb5e790b275034d15552236b90b0be6', 'f633dc82f3a23c7ca8eb7890e01a07a8', '9dda50c180e16c668b1bae3131d76a33', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '2b236e9b3cf392365e4463a276bb2d95', 'Administrador ', '22-11-2018 14:11'),
('f049c7f028b300e9041f72df37d1a9aa', 'd0112b6a10836b57aa8fa66fd20e4fd5', 'b0cbfa3b4d34a5abbaf223020d8603b7', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '368a939f04ff4b3de80456bf0446dcb8', 'Administrador ', '26-11-2018 00:11'),
('f1f5265712a099b59100d2f163ddaa09', '44023073ef0c0c1764ca71c66f401bd2', '43a34c32eca3b3fa62eeda3f60ed4cfb', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', '4e00f1c872395ff6c51f1fc12f5bbf00', 'Administrador ', '25-11-2018 23:11'),
('f2ca8ed895d0e91a1c336384466d2467', '51e9d1cd08fcfa24fd5822f1ed945241', '68ed3254a48090f9d827010dc62d1cce', '3583051952f2416efdcde1578a9c053c', '8b9891a5e1fdb768a0f41e4de4cdaac2', '5bf0075db153d648b46dcdf65d3d92a1', 'Administrador ', '27-10-2018 13:10'),
('f76fdef616772176f9816ddb0f49026c', '37e1a5208fbb41378a2f15da98a97276', '0faaf7bab76bc20ab0b05f309e339a69', '68a1b7870e85ce84d02559cf6a3e011a', '8b9891a5e1fdb768a0f41e4de4cdaac2', '5b5684b7ebb6885e1e6bd8d8cbf3efb6', ' ', '25-11-2018 00:11'),
('fb068a2d514f3bbb4310bc74ac534809', '60ee0f67375a4678b01453489dfd6522', 'c583b05da346971d57e1b9101f2a4f71', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'd249bc99d28e104dfdff5ed1d54c06ca', 'Administrador ', '21-11-2018 11:11'),
('fc1e39d1f2bd0f174cbe4d9b5c5667d9', 'ccbcc204ff4263789c91f6824922954a', 'fbb22fcfa22edbcae7cadabd1fe8ac50', '68a1b7870e85ce84d02559cf6a3e011a', '8b9891a5e1fdb768a0f41e4de4cdaac2', '9d59fbd6b2c70bcc7bc802ed22b114c7', 'Administrador ', '19-01-2019 20:01'),
('ff99280de561230c9e1808d5ce6958f6', '67afaff05d4e5d0ff713444fa3921366', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '68a1b7870e85ce84d02559cf6a3e011a', '8f352246aa954bad7a3a14bb42fdea73', 'bed44b33eb0896bed68306e15f47e2c4', 'Administrador ', '26-11-2018 02:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso_preco`
--

CREATE TABLE `curso_preco` (
  `id_curso` varchar(254) NOT NULL,
  `nome_curso` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `turno` varchar(254) DEFAULT NULL,
  `custo` varchar(20) NOT NULL,
  `responsavel` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso_preco`
--

INSERT INTO `curso_preco` (`id_curso`, `nome_curso`, `turno`, `custo`, `responsavel`) VALUES
('0554f4f8e870f902451aafddac88f131', 'Administracao Hospitalar', 'M', '3500', 'Administrador '),
('071fec90676366ea03bce9bd5eb5c7a4', 'Engenharia Tecnica de Petroleo e Gas', 'M', '3800', 'Alda  Bazilio Vembane'),
('0bb789c92997824478b72df1c0905b28', 'Engenharia Tecnica de Informatica ', 'M', '3800', 'Alda  Bazilio Vembane'),
('3691339bd1b84c32b717ccdff9e1abe8', 'Engenharia Tecnica de Informatica ', 'T', '3800', 'Alda  Bazilio Vembane'),
('3936fe998644a033121256ecb1422020', 'Engenharia Tecnica de Informatica ', 'N', '3800', 'Administrador '),
('4033df804fb1b84c01d51a9d5d252658', 'Ciencias Juridicas e Sociais', 'M', '2500', 'Alda  Bazilio Vembane'),
('5d900dab5690334835ce3dba3374e602', 'Administracao Publica e Recursos Humanos', 'M', '3000', 'Administrador '),
('5ddd874764d37f534a9bd78c9ba85ff7', 'Engenharia Tecnica de Construcao Civil', 'M', '3800', 'Alda  Bazilio Vembane'),
('6286575fbbca4705108df8f16d0d77f4', 'Assistente Juridico', 'M', '2500', 'Administrador '),
('93026ae32b6bdaca46608846c98ab72b', 'Medicina Preventiva e Primeiros Socorros', 'M', '3500', 'Alda  Bazilio Vembane'),
('b303494a5cefed4e0a07c5ab8a8f6dfa', 'Perito Aduaneiro e Administracao Tributaria', 'M', '3000', 'Alda  Bazilio Vembane'),
('cec51625b0946083004b22138ce09b1f', 'Contabilidade e Gestao de Empresas', 'M', '3000', 'Alda  Bazilio Vembane'),
('d66acaf03f1e6eac7d7ee8052a431ae8', 'Engenharia de Automacao', 'M', '3800', 'Alda  Bazilio Vembane'),
('efaa72a45be308e0fd11448001ed1742', 'Assistente Juridico', 'N', '5000', 'Administrador '),
('f37ef93c9ec64a8c7dedbe8a5329bef5', 'Saude Publica e Aconselhamento', 'M', '3500', 'Alda  Bazilio Vembane');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id_disciplina` varchar(254) NOT NULL,
  `nome_disciplina` varchar(50) CHARACTER SET utf8 NOT NULL,
  `semestre` varchar(20) NOT NULL,
  `ano` varchar(20) NOT NULL,
  `data` varchar(20) NOT NULL,
  `responsavel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`id_disciplina`, `nome_disciplina`, `semestre`, `ano`, `data`, `responsavel`) VALUES
('0c347acb94426d3e7ca27f1020b157e8', 'Metrologia de Equip e Maquinas', '2', '1', '26-11-2018 02:11', 'Administrador '),
('0f42c77b55539682bd95124d0a8be560', 'Planificacao e Gestao de Saude', '2', '2', '26-09-2018 13:09', ' '),
('1072d6374017490fe7c469a4e6dabe69', 'Gestao de Carreiras', '2', '2', '23-11-2018 09:11', ' '),
('11d12df9b0bbb36da50866676486edba', 'Redes de Computadores 2', '2', '1', '25-11-2018 11:11', ' '),
('168ad80f2e7e044a629bd7ed94f8eb0b', 'Fiscalidade e Controlo', '2', '2', '25-11-2018 17:11', ' '),
('16b5c4d50d63209038f45cc2d85092c5', 'Gestao de Empresas', '2', '1', '26-09-2018 12:09', ' '),
('1cb96522672451d462610b15a641e0d3', 'Gestao de Servicos Hospitalares', '2', '2', '26-11-2018 03:11', 'Administrador '),
('23f9f9b6c07f8d84e570945619c8c167', 'Legislacao da Funcao Publica', '2', '1', '23-11-2018 10:11', 'Administrador '),
('264a64374ab289a8639ff7d918f99513', 'Vigilancia Epidemologica', '2', '2', '26-09-2018 13:09', ' '),
('2b236e9b3cf392365e4463a276bb2d95', 'Filosofia do Direito', '2', '1', '22-11-2018 14:11', 'Administrador '),
('2c24fbfa90d64705e08f0c1c6f43b888', 'Fundações e Calculo Estrutural', '2', '1', '26-11-2018 02:11', 'Administrador '),
('30f1f1529fd2d32d30f99c82a8ed78f9', 'Gestao Financeira', '2', '1', '22-11-2018 22:11', 'Administrador '),
('3134747ef96f7894dd0868b58c4e286f', 'Instalaçoes Prediais Electricas', '2', '2', '26-09-2018 13:09', ' '),
('368a939f04ff4b3de80456bf0446dcb8', 'Estatistica Aplicada e Probabilidade', '2', '1', '26-11-2018 00:11', 'Administrador '),
('3916851ff40e4741521b48bd0cd2182b', 'Praticas e Saude na Comunidade', '2', '2', '26-11-2018 03:11', 'Administrador '),
('44617fa6d3a0b66258b81182d9e7d0ab', 'Quimica Organica', '2', '1', '23-11-2018 13:11', 'Administrador '),
('4521132c5f50a0053a2578004da7c383', 'Humanizacao e Atendimento', '2', '2', '26-09-2018 13:09', ' '),
('45d7fbbf9f1de5d348406b29e1cc8a8b', 'Tecnologia de Mercadoria', '2', '2', '26-09-2018 13:09', ' '),
('46481c1e8d546e1e95f225ce20eaa5cb', 'Pratica em Petroléo e Gas', '2', '2', '26-09-2018 13:09', ' '),
('46745002b522222da6d15524a16ec547', 'Auditoria e Seguranca de Sistemas', '2', '2', '26-09-2018 13:09', ' '),
('4e00f1c872395ff6c51f1fc12f5bbf00', 'Envolvimento C. E. Saude', '2', '1', '25-11-2018 23:11', 'Administrador '),
('5007c090582a86152618b9893f4b3b40', 'Contabilidade Publica', '2', '2', '26-11-2018 03:11', 'Administrador '),
('504da7ba06fd83dc2e4b3c4668cf1056', 'Teoria Geral do Direito', '2', '1', '21-11-2018 21:11', 'Administrador '),
('505122e7f0207e67830eb96b5c1859cf', 'Arquitetura Tecnologica e Computacional', '2', '2', '26-09-2018 13:09', ' '),
('512ce7502d2d2bc0cc4559298d5eeb7b', 'Redes de Computadores2', '2', '1', '25-11-2018 11:11', ' '),
('54de5b3b90864ee5152e8f91612fcb30', 'Planeamento Financeiro e Orcamental', '2', '2', '26-09-2018 13:09', ' '),
('57c0a6420f6e4e36e939ee46b1be74d2', 'Demografia Estatistica Sanitaria', '1', '1', '26-09-2018 12:09', ' '),
('5a0740328604c5a63fd5762a727400f1', 'Programacao 2', '2', '2', '23-11-2018 11:11', 'Administrador '),
('5b5684b7ebb6885e1e6bd8d8cbf3efb6', 'Praticas de Programacao', '2', '1', '23-11-2018 11:11', 'Administrador '),
('5bf0075db153d648b46dcdf65d3d92a1', 'Praticas Computacionais(Projetos)', '2', '2', '26-09-2018 13:09', ' '),
('5d3a4e8f2980d90609db7b39647292c0', 'Tecnica(Pratica Aduaneira 2)', '2', '2', '26-09-2018 13:09', ' '),
('5df1e85094268e86c079ad6d32dd9947', 'Direito Processual Civil', '2', '2', '26-09-2018 13:09', ' '),
('61a1e55737de92ca62c322453644c71b', 'Eletronica Analogica', '2', '1', '26-09-2018 13:09', ' '),
('63c22b333e624282ca6c1c7eaa293c9e', 'Contabilidade Geral', '2', '1', '26-09-2018 12:09', ' '),
('65b5255c8b65f5374e70fc2a411b3056', 'Tecnica de Expressao em lingua Portuguesa', '2', '1', '26-09-2018 12:09', ' '),
('66ce24f2e9986da882f8ca6a6f8e541c', 'Controlo e Avaliacao de Desempenho', '2', '1', '21-11-2018 11:11', 'Administrador '),
('682c25779c7e893e6345a015a6f19df5', 'Gestao Geral', '2', '1', '26-09-2018 12:09', ' '),
('69a6b30cd7637127dd36dcb1a64b4cde', 'PLanificão e Saude', '2', '2', '26-11-2018 03:11', 'Administrador '),
('6b588ca65b6efbb47e57a1855cdea66f', 'Planificação e Gestã Hospitalar', '2', '1', '25-11-2018 22:11', 'Administrador '),
('6eff8f167f98cc265af149b96aaea62c', 'Esboco e Desenho Tecnico', '2', '1', '23-11-2018 13:11', 'Administrador '),
('6f9a1726c32688c1547aa4f4f0c9b150', 'Calculo Financeiro', '2', '1', '26-09-2018 12:09', ' '),
('709fdfa8ff76c066ff9f8c71dcd50fb9', 'Financas e Operacoes Tributarias', '2', '2', '26-09-2018 13:09', ' '),
('71176134c9542582394e2e4d41557c78', 'Tecnica/Pauta Aduaneira(Pratica Aduaneira2)', '2', '2', '26-09-2018 16:09', ' '),
('71f33fd352132b117fd81dd6afd1e886', 'Contabilidade Publicda', '2', '2', '26-11-2018 03:11', 'Administrador '),
('71fb29d5fce600b35eecee25c5893a32', 'Logaritimo e Logica de Programacao', '2', '1', '26-09-2018 12:09', ' '),
('7dc402a98fc1ccbee06534e3891f5bac', 'Auditoria Financeira', '2', '2', '26-09-2018 13:09', ' '),
('7dd9c892a6ac00af2bc57b6028a97d38', 'Quimica', '1', '1', '10-09-2018 10:09', 'Administrador '),
('7fc2ce24aa2c92038bb134583151cb85', 'Matemática', '2', '2', '10-09-2018 10:09', 'Administrador '),
('800f79eb0ff64b14c95725a0814ed27c', 'Sistemas Operativos', '2', '1', '26-09-2018 12:09', ' '),
('88ddaa1e7e249f71a34e74cf4e487210', 'Controle e Automacao', '2', '1', '23-11-2018 11:11', 'Administrador '),
('8946bf1c5951918a81f2f06bfaa0bd98', 'Psicologia Social das Organizacoes', '2', '2', '26-09-2018 13:09', ' '),
('8ae07ea0840cc43bc6c9102a90decf5c', 'Esboço e Desenho Tecnico', '2', '1', '26-11-2018 01:11', 'Administrador '),
('8b32f031f3f22c1bc89d251a9e76e5c1', 'Historia do Direito', '2', '1', '26-09-2018 12:09', ' '),
('8da87e275d6c89d4bc01f46a9aba295c', 'introducao a Agricultura', '1', '1', '25-01-2019 10:01', 'Administrador '),
('925079a2cb779cae91ac4bacf2869260', 'Administracao de Recursos Humanos', '2', '1', '26-09-2018 12:09', ' '),
('9317b3b92ac09d609cd2dc0cec3ce292', 'Mecanica de Construcoes', '2', '1', '26-09-2018 13:09', ' '),
('93688c987729e8464e95cb462eeab094', 'Fisica', '1', '1', '10-09-2018 10:09', 'Administrador '),
('953fd97a34843690c7172e0c57255f47', 'Português', '1', '2', '10-09-2018 10:09', 'Administrador '),
('98bfd9d54ae720576655351c26b9bc58', 'Direito de Petroleo e Gas', '2', '1', '26-09-2018 13:09', ' '),
('999f454ddf6d10af7345fd96f2d5da80', 'Gestao Ambiental e de Recursos Naturais', '2', '2', '26-09-2018 13:09', ' '),
('9c97d8c2af32b8851f3d5b68ad0ee6bb', 'Logistica e Transporte(Operacoes de Frente )', '2', '2', '26-09-2018 13:09', ' '),
('9cd4e0d92a34bac05ad137d6678feab0', 'Praticas de Gestão', '2', '1', '26-11-2018 00:11', 'Administrador '),
('9d59fbd6b2c70bcc7bc802ed22b114c7', 'Contrabando e Investigacao Tributaria', '2', '1', '21-11-2018 11:11', 'Administrador '),
('a07213bf702ec25a693438d332f4fd6f', 'Educacao para a saude', '2', '2', '26-09-2018 13:09', ' '),
('a1d2626ac8b911113897b1c8a77aad30', 'Refinacao e Processamento', '2', '2', '26-09-2018 13:09', ' '),
('a41c567bcebeca8bb0777af7204ee099', 'Gestao de Sistemas de Informação', '2', '2', '25-11-2018 20:11', ' '),
('a45984c71c5eeca00df14b79a5d556e9', 'Direito da Familia e do Processo Civil', '2', '2', '22-11-2018 15:11', 'Administrador '),
('a4ba95a8184ae3ea98a5abff0602a2e7', 'Inspenção Sanitaria', '2', '2', '26-11-2018 02:11', 'Administrador '),
('a716bb0a24e187e64de7426333c2c8c5', 'Geologia Geral e Solos', '2', '1', '26-09-2018 12:09', ' '),
('a81b35d77b4b6a9c9c4bdbee80570fae', 'Termodinamica', '2', '1', '26-09-2018 12:09', ' '),
('a9d030da9ff205cb4d860bac68becffc', 'Arquitetura e Desenho Técnico', '2', '2', '26-09-2018 13:09', ' '),
('ac0320fe3b994e6a495bebeb10a63096', 'Gestao Bancaria', '2', '2', '22-11-2018 16:11', 'Administrador '),
('ac67d3ac1b7c61ac25e3527be385eae4', 'Programacao em Dispositivos Moveis', '2', '2', '26-09-2018 13:09', ' '),
('af29c351e856149bc86df5d1d966d7c8', 'Sistema de Gestao de Base de dados', '2', '1', '26-09-2018 12:09', ' '),
('b4d7b9258cded7030f193088cf87cd39', 'Pratica Profissional', '2', '2', '23-11-2018 09:11', ' '),
('b7a48ec2bfe5fc65d505bbfffed62d9a', 'Redes de Computadores', '2', '1', '26-09-2018 12:09', ' '),
('b93de7ce4adb86f72e671e61eefb6d33', 'Metrologia, equipamentos e Maquinas', '2', '1', '23-11-2018 11:11', 'Administrador '),
('b98739e4cd46484aacb906f28c42a083', 'Medicina, Conciliacao e Arbitragem', '2', '2', '26-09-2018 13:09', ' '),
('bed44b33eb0896bed68306e15f47e2c4', 'Mecatronica', '2', '1', '26-11-2018 02:11', 'Administrador '),
('c0f589be4114e7eb694b23347e2182a6', 'Eletronica e Sistemas Digitais', '2', '1', '26-11-2018 01:11', 'Administrador '),
('c276c954d1df2f1df82201830901d402', 'Praticas Juridicas e Administrativas', '2', '1', '25-11-2018 00:11', ' '),
('c37a70bf0971f0153f2c0506fb30be0f', 'Negociacao e Gestao de Conflitos', '2', '2', '26-09-2018 13:09', ' '),
('c822eaef8ba6ff174849d6dcff14212a', 'Teoria Geral da Tributação', '2', '1', '26-11-2018 00:11', 'Administrador '),
('c8ef516f97ac54f0ac8a863feda8d0d0', 'Manutencao Industrial', '2', '2', '26-09-2018 13:09', ' '),
('c9303fa930eecd586c1e06b7db8b0763', ' Programação Java', '2', '1', '25-11-2018 11:11', ' '),
('c9f80e0286a89dd62ca8ddb7b275615b', 'Eletricidade e Sistemas Eletricos', '2', '1', '26-09-2018 13:09', ' '),
('ca16440ea2ed18378ba4f153e27772ba', 'Direito Internacional', '2', '2', '26-09-2018 13:09', ' '),
('cae130e2030ff38858665b9073d4b171', 'Planeamento e Financas Empresariais', '2', '2', '26-09-2018 13:09', ' '),
('cbf87b4291c259b9a275c401db3989e6', 'Tecnologia de Informacao e Comunicacao', '2', '1', '26-09-2018 13:09', ' '),
('cef55f511fe20b612684791f7b7762ef', 'Direito Processual do Trabalho', '2', '2', '26-09-2018 13:09', ' '),
('cf752f397b1f9cb1d115caee97485f21', 'Arquitetura e Desenho Tecnico', '2', '1', '26-11-2018 01:11', 'Administrador '),
('d249bc99d28e104dfdff5ed1d54c06ca', 'Planeamento de Recursos Humanos', '2', '1', '21-11-2018 11:11', 'Administrador '),
('d49a32c11aeb804bbcefdb69fe500290', 'Sondagem e Negociaçao', '2', '2', '26-09-2018 13:09', ' '),
('d6222c499a21585a2bf1d503c9873281', 'Pratica1', '2', '1', '25-11-2018 23:11', 'Administrador '),
('dacc9d08f6375ef8ded7fbd357a84009', 'Contencioso Administrativo', '2', '2', '23-11-2018 10:11', 'Administrador '),
('dc1183a30fd37c41731b183291719b23', 'Indicadores e Planos de Saude', '2', '1', '26-09-2018 12:09', ' '),
('dc61995204f92881dec2046f6cdb5f6e', 'Hermeneutica Juridica', '2', '1', '26-09-2018 12:09', ' '),
('dd842956e8c9cfad2ccdb83e9667fe71', 'Resistencia de Materiais', '2', '2', '26-09-2018 13:09', ' '),
('de33ae092e20809d8e85a944f37d73db', 'Analise e Gestao de Projectos', '2', '2', '26-09-2018 13:09', ' '),
('e301923a0cc1516bd15fff770c6ecec2', 'Programacao Java', '2', '1', '25-11-2018 11:11', ' '),
('e3a924f5f9038e505f91174ddc85422b', 'Direito Administrativo', '2', '1', '26-09-2018 12:09', ' '),
('ec4ca3c5a098e46867217bc94a0d3792', 'Nocoes de Enfermagem', '2', '2', '26-09-2018 13:09', ' '),
('edc56e065bda6e1395651908afadcc78', 'Praticas Profissionais', '2', '1', '23-11-2018 11:11', 'Administrador '),
('ef588e0fd0b43167aeff0ced3583d6c1', 'Pratica 1', '2', '1', '25-11-2018 23:11', 'Administrador '),
('ef81ae25c2b698a8eb4fef13e93c9f17', 'Diagnostico Comunitario', '2', '1', '26-09-2018 12:09', ' '),
('f12253e85172be5d051737f08b84f4c9', 'Tecnologia de Construçoes', '2', '2', '26-09-2018 13:09', ' '),
('f42a04cf3eef892e98788306b598ba4c', 'Materiais de Construcao 1', '2', '1', '26-09-2018 13:09', ' '),
('f6c8eae323160856af34104a49f49e3c', 'Instrumentacao Industrial', '2', '1', '26-09-2018 13:09', ' '),
('fcc864e3ac20fd3eb3f3a738f28267b9', 'Gestao de Recursos Humanos', '2', '2', '26-09-2018 13:09', ' ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo_livro`
--

CREATE TABLE `emprestimo_livro` (
  `id_empLivros` int(9) NOT NULL,
  `id_livro` varchar(254) CHARACTER SET utf8 NOT NULL,
  `id_est` varchar(254) CHARACTER SET utf8 NOT NULL,
  `dataL` varchar(254) CHARACTER SET utf8 NOT NULL,
  `dataD` varchar(254) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `emprestimo_livro`
--

INSERT INTO `emprestimo_livro` (`id_empLivros`, `id_livro`, `id_est`, `dataL`, `dataD`) VALUES
(6, '3', 'ab931617f64ecc34edde4beada7856cb', '23/12/2018', '02/12/2018'),
(5, '2', '4eab3adaeb3147a7f1062a413d9251fe', '23/12/2018', '23/12/2018'),
(7, '3', 'e882fcefdf5e101b27041cdb61e04421', '25/01/2019', '12/01/018');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estudante`
--

CREATE TABLE `estudante` (
  `id_est` varchar(254) NOT NULL,
  `codigo` varchar(45) DEFAULT '#codigo',
  `nome` varchar(50) CHARACTER SET utf8 NOT NULL,
  `apelido` varchar(50) CHARACTER SET utf8 NOT NULL,
  `data_nascimento` varchar(50) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `filiacao` varchar(160) CHARACTER SET utf8 NOT NULL,
  `tipo_doc` varchar(50) NOT NULL,
  `num_doc` varchar(50) NOT NULL,
  `local_residencia` varchar(50) CHARACTER SET utf8 NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `contacto` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` int(2) NOT NULL,
  `data` varchar(20) NOT NULL,
  `responsavel` varchar(50) CHARACTER SET utf8 NOT NULL,
  `curso` varchar(254) CHARACTER SET utf8 NOT NULL,
  `turma` varchar(20) NOT NULL,
  `turno` varchar(20) NOT NULL,
  `ano_letivo` int(11) NOT NULL DEFAULT '1',
  `data_anoLetivo` datetime DEFAULT NULL,
  `ano_ingresso` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estudante`
--

INSERT INTO `estudante` (`id_est`, `codigo`, `nome`, `apelido`, `data_nascimento`, `sexo`, `filiacao`, `tipo_doc`, `num_doc`, `local_residencia`, `estado_civil`, `username`, `password`, `categoria`, `contacto`, `email`, `estado`, `data`, `responsavel`, `curso`, `turma`, `turno`, `ano_letivo`, `data_anoLetivo`, `ano_ingresso`) VALUES
('0033b2e2cc48d4f406890d91dc85e090', NULL, 'Constancia Jaime ', 'Mabongo', '07/09/1995', 'F', 'Jaime Alberto Mabongo e Ermelinda xavier Guiambe', '', '', 'Infulene A', 'Solteiro', 'CM842150206', '123456', 'E', '842150206', '', 1, '01-11-2018 09:11', ' ', 'Administracao Hospitalar', '', 'M', 1, NULL, NULL),
('00aa64de039e97f620fc90b93d59f75b', NULL, 'Geeraldina ', 'Abranques Muhela Membele', '10/11/1981', 'F', 'Abranques Muhela Nacelequete e Carolina Afoso Celestino ', 'BI', '040102108973B', 'Matola  C', 'Solteiro', 'GA845986583', '123456', 'E', '845986583', 'geraldinaambe@gmail.com', 1, '18-11-21 09:40:15', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('01f607c94c6edaf91bf493f0b63350cc', NULL, 'Alice Cesar ', 'Sitoe', '01/07/1997', 'F', 'Cesar Benar Sitoe e Josina Belarmino Mendes', 'BI', '100107820295B', 'Mozal', 'Solteiro', 'AS846128029', 'qwerty', 'E', '846128029', '', 1, '18-12-09 06:50:26', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('03167973c75f1cd6ab9a5bde487d6a17', NULL, 'Moises Ezequiel ', 'Mula Junior', '02/04/1991', 'F', 'Moises Ezequiel Mula e Maria Aventina Cossa', 'BI', '090101478542B', 'Chinonanquila', 'Solteiro', 'MM846872686', '123456', 'E', '846872686', '', 1, '21-10-2018 00:10', ' ', 'Engenharia Tecnica de Informatica ', 'B', 'N', 1, NULL, NULL),
('03b410bb2b6c7079e48bd86e43e81175', NULL, 'Stela ', 'Cancao Muchanga', '19/12/1996', 'F', 'Fatima Amade Remane e Sansao Andre Muchanga', '', '', 'Malhampswene', 'Solteiro', 'SC84461188', '123456', 'E', '84461188', '', 1, '12-09-2018 15:09', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('03de42c7b8e9351163c4b8286dc6ceb4', NULL, 'Flugencio Isaias', 'Ubisse', '12/09/1999', 'M', 'Laiss Agostinho Ubisse e Fina Tomas Savanguane', '', '110504818818A', 'Matola A', 'Solteiro', 'FU842100649', '654321', 'E', '842100649', '', 1, '19-01-15 02:25:50', ' ', 'Engenharia Tecnica de Informatica ', 'B', 'M', 1, NULL, NULL),
('03fd36d181a4840794f5d2fad5340f58', NULL, 'Babuchi Jaime', 'Monjui', '26/05/1998', 'M', 'Jaime Sebastiao Cossa Monjui e Edna Clarisso Nhancale', 'BI', '100422035B', 'Djuba', 'Solteiro', 'BM846894741', '123456', 'E', '846894741', '', 1, '01-11-2018 09:11', ' ', 'Administracao Hospitalar', 'A', 'M', 1, NULL, NULL),
('052b8ed207cc9c02a9fbcddd2cd739f1', NULL, 'Laura ', 'Orlando Nhare', '28/10/1997', 'F', 'Orlando Fernando Nhare e Paulina Armando Cossa', 'BI', '100102331400J', 'Boane', 'Solteiro', 'LO844433879', '123456', 'E', '844433879', 'lauraorlandonhare1@gmail.com', 1, '08-10-2018 12:10', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('09b999dddf4f697a7af18d22d8c30a52', NULL, 'Rachel ', 'Helga Manuel Cossa', '26/05/1998', 'F', 'Manuel Simioao Cossa e Helga Hernesto Bucuane', 'BI', '100102683640B', 'Matola Rio', 'Solteiro', 'RH842658679', '0000123456789', 'E', '842658679', 'rachelhelgacossa@gmail.com', 1, '18-11-22 09:19:04', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('0b37fb070e01d14639499283139b28e4', NULL, 'Silvia Domingos ', 'Gulamo', '23/09/1979', 'F', 'Domingos Gulamo e Ilda Quibe', 'BI', '110501816909M', 'Boane', 'Solteiro', 'SG849529610', '123456', 'E', '849529610', '', 1, '08-10-2018 16:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('0bc11a972118fc834fa60511f4d0aed6', NULL, 'Isabel ', 'Joao Samboso', '03/01/1998', 'F', 'Joao Manuel Samboco e Marluz da Conceicao Chiziane', 'BI', '', 'Matola A', 'Solteiro', 'IJ', '123456', 'E', '', '', 1, '12-09-2018 14:09', 'Administrador ', 'Ciencias Juridicas e Sociais', 'A', 'M', 1, NULL, NULL),
('0cd1fc6410a213bf664eed191bfa4e24', NULL, 'Olga ', 'Jorge Evaristo', '70/04/1991', 'F', 'Anabela Machava e Jorge Evaristo', 'BI', '110101779637C', 'Matola  F', 'Solteiro', 'OJ821759960', '123456', 'E', '821759960', 'olgajorgemachava@gmail.com', 1, '11-09-2018 13:09', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('0d1ac4fa52e92718036d214cf4285240', NULL, 'Teresa Alfredo ', 'Chihurre', '08/05/1998', 'F', 'Alfredo Chihanhane Chihurre e Narcisia Antonio Nhanguila', 'BI', '100104404385N', 'Sao Damaso', 'Solteiro', 'TC843527700', '123456', 'E', '843527700', '', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('0d58b6c5d904d682bbb332e42c5ab84a', NULL, 'Ruthe ', 'Ernesto Asikulava', '13/03/1999', 'F', 'Ernesto Focaz Assiculava e Eulalia Felipe Machava', 'BI', '110205308505Q', 'Luis Cabral', 'Solteiro', 'RE844065756', '123456', 'E', '844065756', '', 1, '03-10-2018 14:10', 'Administrador ', 'Engenharia Tecnica de Petroleo e Gas', 'A', 'M', 1, NULL, NULL),
('0d8539e1d86d5f4eb2e7ebfb6c922e2f', NULL, 'Stela Bento ', 'Macamo', '8/09/1996', 'F', 'Bento Arao Macamo e Catarina Arlindo Chimene', 'BI', '100105263343', 'Matola Rio', 'Solteiro', 'SM848911014', '123456', 'E', '848911014', '', 1, '20-10-2018 22:10', ' ', 'Administracao Hospitalar', 'A', 'M', 1, NULL, NULL),
('0dc1a9a47ef2757ea7c24e24c682b55c', NULL, 'Quiteria Custodio ', 'Vilanculos', '16/02/1997', 'F', 'Custodio Feliciano Vilanculo e Albertina Armando Machava', 'BI', '1101049909990GF', 'Djonasse', 'Solteiro', 'QV843621286', '123456', 'E', '843621286', '', 1, '25-10-2018 15:10', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'M', 1, NULL, NULL),
('0ddbc0794da0317c7a5c7cd440c0ec6e', NULL, 'Ercilia Alfredo ', 'Nhantumbo', '02/02/1987', 'F', 'Alfredo Temoteo Nhantumbo e Daria Lucas Massango', 'BI', '100102075800B', 'Matola Rio', 'Solteiro', 'EN845419617', '123456', 'E', '845419617', '', 1, '20-10-2018 23:10', ' ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('0fbce7065b7ba18fba1bf02fa28789de', NULL, 'Richard ', 'Bruno Vilanculo', '21/10/1998', 'M', 'Bruno Francisco Vilanculo e Meguy Lili Tomaz Magaia', 'BI', '110300433889C', 'Malhangalene', 'Solteiro', 'RV846236904', '6236904', 'E', '846236904', 'richardbruno@gmail.com', 1, '13-09-2018 14:09', ' ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('10870b2fad8bd463654c4c221ea38fdd', NULL, 'Mauro Armando', 'Bauque', '28/07/1995', 'M', 'Armando Vasco Bauque e Paula Suzana Muianga', 'BI', '110100996600N', 'Xipamanine', 'Solteiro', 'MB845992026', '123456', 'E', '845992026', '', 1, '05-11-2018 15:11', 'Administrador ', 'Perito', 'B', 'N', 1, NULL, NULL),
('10d1c836dfa1c552068d14e743612884', NULL, 'Andercia ', 'Samel Rovicene Dambiane', '21/06/1996', 'F', 'Samuel Joao ', 'BI', '10010501219B', 'Matola Rio', 'Solteiro', 'AS842473060', '123456', 'E', '842473060', '', 1, '02-10-2018 15:10', ' ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('11a0b3aa706f38fc7abdd66d3b39a57c', NULL, 'Luzidina da Graca Queifasse ', 'Chiwira Sultane', '18/01/1988', 'F', 'Francisco Queifasse Chiwira e Constancia Jeremias Penicela', 'BI', '110101137670P', 'Djonasse', 'Solteiro', 'LC847101816', '123456', 'E', '847101816', 'lchiwira@yahoo.com', 1, '20-10-2018 22:10', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'N', 1, NULL, NULL),
('13c6b57c11c91a5587a8ba4df348741f', NULL, 'Berta Maria Virgolino ', 'Mpaika', '27/11/1990', 'F', 'Virgilio Carlos Chilave Mpaika e Fanica Josefina Dique Nguenha', 'BI', '110100807301P', 'AV. Samora  Machel', 'Solteiro', 'BM849281233', '123456', 'E', '849281233', '', 1, '25-10-2018 16:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('147b69d22af5a0ab09d51507483efa9e', NULL, 'Shelton', ' Massinga', '21/08/2002', 'M', 'Joao Tome Massinga e Paula Maxlhuza', 'BI', '11010505160M', 'Jonasse', 'Solteiro', 'SM845864313', '845864', 'E', '845864313', '', 1, '18-11-26 03:55:47', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('1484eb0b6f4e697791953d22a4301ed8', NULL, 'Jose Charles', ' Paiva', '14/03/1993', 'M', 'Jose Vasco Paiva e Palmira Nhantumbo', 'BI', '100100304653P', 'Matola C', 'Solteiro', 'J 844134073', '123456', 'E', '844134073', 'charlespaiva1@gmail.com', 1, '05-11-2018 15:11', 'Administrador ', 'Perito', 'B', 'N', 1, NULL, NULL),
('172fb93ca9edc1afb47a27161178371a', NULL, 'Cidalia ', 'Lurdes Antonio Bie', '20/04/1989', 'F', 'Antonio Jaime Bie e Celeste Fiosse', 'BI', '110100693072N', 'Mulotana', 'Solteiro', 'CL845540765', '123456', 'E', '845540765', '', 1, '27-09-2018 15:09', ' ', 'Medicina', 'A', 'M', 1, NULL, NULL),
('17eca6f9a313994c09c3e6cb6d09408c', NULL, 'Elisa  ', 'Gilda Maculuve', '29/04/1996', 'F', 'Gilda da Elisa Maculue ', 'BI', '100102329290JJ', 'Bairro do Ndavela', 'Solteiro', 'EG841391338', '123456', 'E', '841391338', '', 1, '27-09-2018 16:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('18aece9e748bed63d885fc6e14d5a40e', NULL, 'Aquiles Geremias Marcos ', 'Nhampulo', '23/01/2001', 'M', 'Carlota Aventina Banze Macuacua  ', 'BI', '110506277316A', 'Malhampswene', 'Solteiro', 'AN845696279', '654321', 'E', '845696279', '', 1, '18-12-19 09:53:58', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('1916de1c9e0681f1ca06bb3cb4156f62', NULL, 'Franco ', 'Gregorio Boaventura Matsule', '1/10/1985', 'M', 'Boaventura Manuel Matsul e Fatima Joaquina Gregorio de Souza', 'BI', '020100131783S', 'Kongolote', 'Casado', 'FG844281045', '123456', 'E', '844281045', 'kiana.matsul3@gmail.com', 1, '08-10-2018 13:10', ' ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('19609eca61d7cacbadcee90a197a3840', NULL, 'Albertina Januario Fernando Pinto', 'Boa', '15/05/1983', 'F', 'Januario Fernando Pinto e Celeste Aganice Pinto', 'BI', '110104993040Q', 'Campuane', 'Solteiro', 'AB846729460', '123456', 'E', '846729460', 'albertina.pinto@wakabrics', 1, '23-11-2018 15:11', 'Administrador ', 'Contabilidade e Gestao de Empresas', 'B', 'N', 1, NULL, NULL),
('196c39a2d3dbb6d7b897fae5b13964cc', NULL, 'Gervasio Domingos ', 'Malhopes', '20/09/1988', 'M', 'Domingos Johanice Malhopes e Maria Filipe Jojo Sitoe', 'BI', '1008006251C', 'Namaacha', 'Solteiro', 'GM842608007', '123456', 'E', '842608007', '', 1, '11-10-2018 15:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('19f0a2db480a704eade90f66270a5556', NULL, 'Adelino', ' Eliado Mussengue', '29/05/2000', 'M', 'Eliado Jossias Mussengue e Adelina Ana Manjate', 'BI', '', 'Djonasse', 'Solteiro', 'AM844605247', '313131', 'E', '844605247', '', 1, '18-12-08 01:07:51', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('1a3cce9e7bc77dbecc3b486929296904', NULL, 'Rosa Antonio ', 'Passuela Sarmento', '12/10/1986', 'F', 'Antonio Passuela e Elisa PAssuela', 'BI', '100101886449M', 'Chinonanquila', 'Casado', 'RP848011358', '123456', 'E', '848011358', '', 1, '08-10-2018 16:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('1be1ce2a79115e42bc10496fbda2b928', NULL, 'Neyma Juvencia ', 'Nhassengo', '02/12/1999', 'F', 'Miguel Francisco Nhassengo e Gilda Antonio Chone', 'BI', '100104393609B', 'Matola A', 'Solteiro', 'NN845794780', '123456', 'E', '845794780', '', 1, '26-09-2018 14:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('1ed60c52fccac7e1bee9db47d3985b1e', NULL, 'Amelia Julio Sabonete', 'Tapula', '11/10/1990', 'F', 'Julio Sabonete Tapula e Julieta Tomas', 'BI', '100101924743B', 'Liberdade', 'Solteiro', 'AT8472666', '123456', 'E', '8472666', 'ameliasabonetesabonete@gmail.com', 1, '23-11-2018 16:11', 'Administrador ', 'Assistente Juridico', 'B', 'M', 1, NULL, NULL),
('1ef9a15d4430fb6e2637501f71f9e505', NULL, 'Zenaida Eusebio ', 'Tembe', '13/09/19955', 'F', 'Eusebio Tembe e Celeste Manjate', 'BI', '110502652184M', 'Machava Sede', 'Solteiro', 'ZT843741689', '123456', 'E', '843741689', '', 1, '26-09-2018 14:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('1f69ad89730779bcfc6d680ffdfedcb5', NULL, 'Nilza ', 'Atanasio Manjate', '24/09/1993', 'F', 'Atanasio Timoteo e Gilda Afonso Manjate', 'BI', '100101376152B', 'Liberdade', 'Solteiro', 'NA844255136', '123456', 'E', '844255136', 'nilzamonjito@gmail.com', 1, '27-09-2018 16:09', ' ', 'Medicina Preventiva e Primeiros Socorros', '', 'M', 1, NULL, NULL),
('22c47e96f7f4e8b60d75b8e360806cfe', NULL, 'Tinossia Quileria ', 'Chauque', '07/11/1994', 'F', 'Rosalina Amelia Cuna Chauque ', 'BI', '100702781107J', 'Moamba', 'Solteiro', 'TC840217730', '123456', 'E', '840217730', '', 1, '20-10-2018 23:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('2338f42525e64730fb282f197faa7edd', NULL, 'Lenira Dinis ', 'Muholove', '02/02/1983', 'F', 'Dinis Marcos Muholove e Lidia Salomao', 'PASSAPORTE', '13AE41832', 'Matola A', 'Solteiro', 'LM848156645', '123456', 'E', '848156645', '', 1, '25-10-2018 16:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', '', 'M', 1, NULL, NULL),
('236f4cb69c2d08b16bcd5b6988db40bc', NULL, 'Joaquim ', 'Filomena Manhinda', '06/11/1981', 'M', 'Filomeno Manhinda e Laura da Silva Comboio', 'BI', '110100972183J', 'Matola  C', 'Solteiro', 'JF845506106', '123456', 'E', '845506106', '', 1, '08-10-2018 14:10', ' ', 'Assistente', 'B', 'N', 1, NULL, NULL),
('2491e32d4e1a9d9fa9d6a2ad5170ce3c', NULL, 'Juliao Adilson Noe', 'Nhantumbo', '11/04/1996', 'M', 'Noe Nhantumbo Junior e Sandra Alberto Chambala', 'BI', '110104363376S', 'Chinonanquila', 'Solteiro', 'JN844033824', '123456', 'E', '844033824', '', 1, '22-11-2018 15:11', 'Administrador ', 'Assistente Juridico', 'A', 'M', 1, NULL, NULL),
('25d35b542fad96c9e51f44b23538dbad', NULL, 'Ruth ', 'Rosalina Manjate', '04/06/1986', 'M', 'Rosalina Antonio Manjate ', 'BI', '110101164691I', 'Magoanine', 'Solteiro', 'RR846823706', '123456', 'E', '846823706', 'ruthduvane@gmail.com', 1, '08-10-2018 15:10', ' ', 'Administracao', 'B', 'N', 1, NULL, NULL),
('263ece5d8a7ab7a1744d790bae03ba57', NULL, 'Sharlene Bica ', 'Ariginave', '15/09/1999', 'F', 'Rafique Arigivane e SArifa Bica Bijal Arigivane', 'BI', '100100613448F', 'Djonasse', 'Solteiro', 'SA847690702', '123456', 'E', '847690702', 'carigivane@yahoo.com', 1, '29-10-2018 15:10', 'Administrador ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('26eef1f40df1a043437c83f52febd0ab', NULL, 'Tarcila ', 'Mahomed Carsane Cara', '03/10/2001', 'F', 'Arisha Carsane Cara e Hamida Nuro Mahomad', 'BI', '100100272140N', 'Fomento', 'Solteiro', 'TM847001409', '123456', 'E', '847001409', 'hamidacara@hotmail.com', 1, '11-09-2018 15:09', 'Administrador ', 'Assistente Juridico', 'A', 'M', 1, NULL, NULL),
('279b76b43777feb2f95c29f348eab05b', NULL, 'Jessica Mena Joao', 'Cossa', '31/01/1997', 'F', 'Joao Cossa e Rosalina Paulo Chicala', 'BI', '110104943451F', 'Tchumene', 'Solteiro', 'JC844491945', '123456', 'E', '844491945', '', 1, '26-09-2018 14:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('2866d982c4fab4be3df5fd1bce0db653', NULL, 'Igor ', 'Daniel Correia Madeira', '13/09/2001', 'M', 'Vanda Maria Correia e Elisio Ferreira', 'BI', '1101105270416Q', 'Matola Rio', 'Solteiro', 'ID844005021', '654321', 'E', '844005021', 'igormadeira@gmail.com', 1, '18-11-26 10:16:16', ' ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('2a386dd8c60f298c93f9fac0a81e317b', NULL, 'Salvca Rita Carlos', 'Cossa', '07/05/1989', 'M', 'Carlos David Cossa e Celeste Macamo', 'BI', '100102792904J', 'Djonasse', 'Solteiro', 'SC844727257', '123456', 'E', '844727257', '', 1, '29-10-2018 15:10', 'Administrador ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('2a59874a985118522d6b544c9120b09b', NULL, 'Alexandrina Flora ', 'Nhamtumbo', '02/02/1983', 'F', 'Flora Alexandre Nhamtumbo ', 'BI', '100102021086P', 'Mozal', 'Solteiro', 'AN847815297', '123456', 'E', '847815297', '', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('2afe76c2d76df74ce286cb6c9fedcbec', NULL, 'Celeste Paulino', 'Nhantumbo', '11/09/1980', 'F', 'Paulino Mananane Nhantumbo e Maria Anita Costa Fernando', 'BI', '100100654901B', 'Djonasse', 'Solteiro', 'CN844500758', '654321', 'E', '844500758', '', 1, '18-12-19 01:23:51', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('2b51e69efd3940b64ad3ac85c83241fd', NULL, 'Ilda Joaquim', ' Monjane', '28/10/1997', 'F', 'Joaquim Monjane e Ana Luisa Muiamba', 'BI', '100104510715N', 'Machava-Bunhica', 'Solteiro', 'I ', '123456', 'E', '', '', 1, '25-10-2018 15:10', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'M', 1, NULL, NULL),
('2c32156f7e4c3e4f7e7f5fc4b47decb9', NULL, 'Rosa Tailane Pacule', 'Nhamuave', '12/11/1983', 'F', 'Tailane Chale Pacule e Flora Gulumele', 'BI', '110101199569B', 'Chinonanquila', 'Solteiro', 'RN825690724', '123456', 'E', '825690724', '', 1, '23-11-2018 16:11', 'Administrador ', 'Contabilidade e Gestao de Empresas', 'B', 'N', 1, NULL, NULL),
('2c3d00d5af823a34cc9c34fbb5f4ee1d', NULL, 'Nalia Yonice ', 'Chilaule', '07/08/1998', 'F', 'Raul Simao Chilaule e Isabel Monica Magaia', 'BI', '110100510632B', 'Maxaquene', 'Solteiro', 'NC825488858', '123456', 'E', '825488858', '', 1, '27-09-2018 15:09', ' ', 'Medicina', 'A', 'M', 1, NULL, NULL),
('30110af24cbd3f37ae5df251e95aece3', NULL, 'Vitoria Paulo ', 'Machava', '07/04/1995', 'F', 'Paulo Albino Machava e Isabel Joaquim Marinosa', 'BI', '090204374677J', 'Beluluane', 'Solteiro', 'VM841409072', '123456', 'E', '841409072', '', 1, '20-10-2018 22:10', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'N', 1, NULL, NULL),
('30881a4eb0df3500a5ed8538b187d57c', NULL, 'Constancia Atanasio', 'Nhasengo', '18/03/1999', 'F', 'Atanasio Henriques S. Nhasengo e Constancia Francisco Zunguza', 'BI', '110205832666i', 'Damanssio', 'Solteiro', 'CN842107264', '123456', 'E', '842107264', '', 1, '19-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('30d07e4fe7a6a3bb635836e03c786ef5', NULL, 'Celsia Miranda', '  Manuel Macamo', '11/03/1994', 'F', 'Manuel Nataniel Macamo e Elina Isabel Manhique', 'BI', '0906550922B', 'Machava', 'Solteiro', 'C 846117541', '123456', 'E', '846117541', 'mirandacelsy@gmail.com', 1, '27-09-2018 13:09', 'Administrador ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('31a10c66c16193b324525549b4073d7c', NULL, 'Angelina Manuel ', 'Manjate', '01/02/1995', 'F', 'Manuel Lino Manjate e Judite Ezequiel Dolane', 'BI', '100101765237C', 'Tsalala', 'Solteiro', 'AM848368639', '0852', 'E', '848368639', '', 1, '18-11-29 04:22:06', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'M', 1, NULL, NULL),
('31eae98d256c02e3ea623f35e4e355f4', NULL, 'Filomena', ' Ernesto Matsinhe', '30/04/1992', 'F', 'Ernesto Vitorino e Maria Jenita Meque', 'BI', '100101323713B', 'Boane', 'Solteiro', 'F 847301232', '123456', 'E', '847301232', '', 1, '14-09-2018 13:09', 'Administrador ', 'Engenharia de Automacao', 'A', 'M', 1, NULL, NULL),
('32e05443f8fbd6e4b8d6fdb82d897c24', NULL, 'Afonso', 'Feliciano Nhamahango', '24/07/1997', 'M', 'Feliciano Luis e Palmira Maoco', 'CARTA DE CONDUÃ‡ÃƒO', '', 'Infulene D', 'Solteiro', 'AF845302277', '257813', 'E', '845302277', 'afonsomazivila@gmail.com', 1, '18-12-04 06:37:51', ' ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('344550be1292bcbd920661b514755cec', NULL, 'Fauzina Humberto', ' Maunde', '03/01/1988', 'M', 'Maria Adelia e Humberto Valentim', '', '11504635672C', 'Luis Cabral', 'Solteiro', 'F 826060730', '123456', 'E', '826060730', '', 1, '20-10-2018 22:10', ' ', 'Administracao Hospitalar', 'A', 'M', 1, NULL, NULL),
('36f715696bbfe9bc86a563d37e4786d2', NULL, 'Jonaide Momade', 'Tarmomade', '17/03/1998', 'F', 'Momade Caribo Tarmomade e Acisa Sultuane Ualde', 'BI', '110100298443J', 'Jonasse', 'Solteiro', 'JT843762683', '123456', 'E', '843762683', 'denymomade@gmail.com', 1, '22-11-2018 15:11', 'Administrador ', 'Assistente Juridico', 'A', 'M', 1, NULL, NULL),
('37966b738be17a32abe75d4a3154a1ec', NULL, 'Percina ', 'Isac Muianga', '08/05/1989', 'F', 'Isac Ruben Muianga e Cristina Antonio Langa', 'BI', '110100061914B', 'Mussumbuluco', 'Solteiro', 'PI844557991', '123456', 'E', '844557991', '', 1, '27-09-2018 16:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('38827043d9bd350c8b08e37bd0967af8', NULL, 'Charlenee Bica ', 'Arigivane', '15/09/1999', 'F', 'Rafique Arigivane e SArifa Bica Bijal Arigivane', '', '100100613448F', 'Djonasse', 'Solteiro', 'CA847690702', '123456', 'E', '847690702', 'carigivane@yahoo.com', 1, '25-10-2018 16:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('3c072fc6e38d9b7e06843d46e0299dfb', NULL, 'Margarida ', 'Jose Rui', '03/08/1993', 'F', 'Jose Rui e Anifa Augusto Rui', '', '', 'Bairro da Liberdade', 'Solteiro', 'MJ827706300', '123456', 'E', '827706300', 'guidajoserui@gmail.com', 1, '20-10-2018 22:10', ' ', 'Administracao Hospitalar', 'A', 'M', 1, NULL, NULL),
('3c69d47260197fbcf555bb96e443ef18', NULL, 'Tais Telmo', ' Cuna', '23/06/2001', 'F', 'Telmo Elias Cuna e Telma Ivodio Eugenio Sambane', 'BI', '100305800582N', 'Matola A', 'Solteiro', 'T 846875682', '123456', 'E', '846875682', '', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('3cc21103ddab4b747684ed0d664b7ba2', NULL, 'Edmilson Edmundo Lucas', 'Matsinhe', '17/05/1999', 'M', 'Edmundo Albino Lucas Matsinhe e Telma Sebastiao Josefa', 'BI', '110505452875A', 'Matola A', 'Solteiro', 'EM848107720', '654321', 'E', '848107720', '', 1, '18-12-06 08:39:32', ' ', 'Engenharia Tecnica de Informatica ', 'B', 'M', 1, NULL, NULL),
('3f1696d3573f7e77fbb7edcbf45f939a', NULL, 'Arnaldo Zacarias ', 'Machanguele', '30/03/1998', 'M', 'Zacarias Arnaldo Machanguele e Irene Zefanias Homo', 'BI', '110502309940J', 'Zona Verde', 'Solteiro', 'AM840298878', '123456', 'E', '840298878', 'machanguele13@gmail.com', 1, '25-10-2018 15:10', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'M', 1, NULL, NULL),
('3f1d8fd0353a017a444d126594a7994f', NULL, 'Dionisio Frederico', 'Manhique', '15/05/1995', '', 'Frederico Vicente Manhique e Sandra Joaquim Machava', 'BI', '110404816284F', 'Mahotas', '', 'D ', '123456', 'E', '', 'dionisiofrederico@gmail.com', 1, '11-09-2018 15:09', 'Administrador ', 'Engenharia Tecnica de Construcao Civil', 'A', 'M', 1, NULL, ''),
('3f707194c944c2423784e51c58e6402c', '#codigo', 'Teste', 'Mabunda', '02/07/1999', 'F', 'Feliciano Luis e Palmira Maoco', '', '110101779637C', 'Matola D', 'Solteiro', 'TM87654332210', '654321', 'E', '87654332210', 'maura@gmail.com', 1, '19-01-25 07:53:15', 'Administrador ', 'Engenharia de Automacao', 'A', '', 1, NULL, '2020'),
('41040f1507ff6854ad7b2c7142454c95', NULL, 'Boavida ', 'Munetua ', '22/08/1992', 'M', 'Cacilda Jose Munetua ', 'BI', '110101521724I', 'Infulene A', 'Solteiro', 'BM842414648', '123456', 'E', '842414648', 'munetuaboavida@gmail.com', 1, '08-10-2018 14:10', ' ', 'Administracao', 'B', 'N', 1, NULL, NULL),
('41ed29bbeaf35c609e2898cfb60bdbf6', NULL, 'Yuran Geronimo', ' Macuacua', '03/03/1999', 'M', 'Jeronimo Augusto Macuacua e de Eugenia Bernardo Matsinhe', '', '', 'Matola Rio', 'Solteiro', 'Y 846743896', '123456', 'E', '846743896', '', 1, '11-10-2018 14:10', ' ', 'Administracao', 'B', 'N', 1, NULL, NULL),
('41f5643f26c8cd4375e6ff68958f48c8', NULL, 'Denilson ', 'Americo Mahumane', '26/50/1999', 'M', 'Americo Amancio Mahumane ', 'BI', '110106438388Q', 'Matola A', 'Solteiro', 'DA843617759', '123456', 'E', '843617759', '', 1, '08-10-2018 14:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('4312453cedf752f8bd9d268fae93643f', NULL, 'Moises Feliciano', 'Nhantumbo', '04/12/1996', 'M', 'Feliciano Nhantumbo e Joana Tembe', 'BI', '100104369064P', 'Moamba', 'Solteiro', 'MN845868185', '123456', 'E', '845868185', '', 1, '26-11-2018 01:11', 'Administrador ', 'Engenharia de Automacao', 'A', 'M', 1, NULL, NULL),
('467b545ca12fd0cfe3ed25894b5eb91c', NULL, 'Helena Abel ', 'Chivure', '12/11/1999', 'F', 'Abel Alfredo Chivule e Laurinda Daniel Mabote', 'BI', '100104695757A', 'Sao Damaso', 'Solteiro', 'HC847422183', '123456', 'E', '847422183', '', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('4688c521706ed51ac12b6aee624b526e', NULL, 'Cristina ', 'Daniel Novela ', '18/06/1999', 'F', 'Daniel Samboco Novela e Sandra Antonio Saranga', 'BI', '100101955539I', 'Tsalala', 'Solteiro', 'CD847772174', '123456', 'E', '847772174', '', 1, '08-10-2018 12:10', 'Administrador ', 'Perito', 'A', 'M', 1, NULL, NULL),
('478c4bc7ddb37d26c0163e117baf8a3e', NULL, 'Celia ', 'Americo Macasse', '01/03/1997', 'F', 'Albertina Chiziane e Amerco Matusse', 'BI', '11010100123153B', 'Boane', 'Solteiro', 'CA848269833', '123456', 'E', '848269833', '', 1, '08-10-2018 16:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('49f83f7139aed1270f0812c710de12ad', NULL, 'Michael Gabriel', ' Massango', '18/02/2002', 'M', 'Gabriel Marcos Massango e Ines Sarmento Massave', '', '100104613058P', 'Matola A', 'Solteiro', 'M 844433990', '123456', 'E', '844433990', '', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('4a591dc890559c52bd446df84ec8589b', NULL, 'Elsa Odete Alexandre ', 'Massangp', '13/01/1993', 'F', 'Alexandre Massango e Leocalde Herculano', 'BI', '', 'Trevo Machava', 'Solteiro', 'EM845732831', '123456', 'E', '845732831', '', 1, '26-09-2018 15:09', ' ', 'Medicina', 'A', 'M', 1, NULL, NULL),
('4b2b0c0353e0d56601737bda21c96212', NULL, 'Julieta', ' Camilo Matias', '05/12/1986', 'F', 'Camilo Matias e Isabel Luis', 'BI', '100104319112Q', 'Machava', 'Solteiro', 'J 845674331', '123456', 'E', '845674331', '', 1, '27-09-2018 15:09', ' ', 'Medicina', 'A', 'M', 1, NULL, NULL),
('4c2966fea547e71fca28d2763d8c0ac6', NULL, 'Ana ', 'Alberto Nhambane', '23/12/1993', 'M', 'Alberto Nhambane e Conceicao Pedro Goncalves', 'BI', '100201092992B', 'Boane', 'Solteiro', 'AA847522804', '654321', 'E', '847522804', 'anaalbertonhambane@gmail.com', 1, '18-12-23 03:59:53', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('4d81430b905bff9732ec1c69512c5ffa', NULL, 'Amelia Francisco', 'Mboa', '08/04/1998', 'F', 'Francisco Zacarias Mboa e Berta Valentim Paruque', 'BI', '110102098364P', 'Djonasse', 'Solteiro', 'AM844093694', '123456', 'E', '844093694', 'meloide24@gmail.com', 1, '08-10-2018 16:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('4e2568f9d5f7f970583fa06b093aa0f4', NULL, 'Eduardo Simao ', 'Come', '13/08/1992', 'M', 'Simiao Joanisse Come e Zilda Ricardo Bila', '', '100100422062I', 'Matola C', 'Solteiro', 'EC848425094', '123456', 'E', '848425094', 'eduardo.s.come@gmail.com', 1, '21-10-2018 00:10', ' ', 'Engenharia Tecnica de Informatica ', 'B', 'N', 1, NULL, NULL),
('4eab3adaeb3147a7f1062a413d9251fe', NULL, 'Aida Jose ', 'Magalhaes', '23/05/1985', 'F', 'Jose Frederico Magalhaes e Lucia Toicomo', 'BI', '', 'Boane', 'Solteiro', 'AM842040049', '123456', 'E', '842040049', '', 1, '11-10-2018 15:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('4f0424343ee0d5095959e3e5c80c9e7c', NULL, 'Cleide Madalena ', 'Daimon Manhica', '23/08/2000', 'F', 'Lina Helena e Francisco Manhara', 'BI', '110106487371C', 'Bairro do Tsalala', 'Solteiro', 'CD844930684', '123456', 'E', '844930684', 'linapaulo@gmail.com', 1, '11-09-2018 14:09', 'Administrador ', 'Administracao', 'A', 'M', 1, NULL, NULL),
('50306d077651bc0f9a03174ac63ab0bb', NULL, 'Angelica Jorge ', 'Matsimbe', '16/09/1994', 'F', 'Jorge Miguel Matsimbe', 'BI', '110105700552N', 'Matola Rio', 'Solteiro', 'AM', '123456', 'E', '', '', 1, '26-09-2018 15:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('532fdac68b3ad2a80d57e9ce46f2a276', NULL, 'Milva Eduarda', 'Ntseco', '29/10/1991', 'F', 'Alfredo FRancisco Ntseco e Lucinda Agostinho Bila', 'BI', '100100188821F', '', 'Solteiro', 'MN821805600', '123456', 'E', '821805600', '', 1, '23-11-2018 15:11', 'Administrador ', 'Contabilidade e Gestao de Empresas', 'B', 'N', 1, NULL, NULL),
('538886d27d6fc900e9a74ba65299bdf7', NULL, 'Ermelinda', ' Joaquim Djote', '26/03/1985', 'F', 'Joaquim Djote e Flora Chionhela Mucache', 'BI', '', 'Matola Rio', 'Solteiro', 'E 846337581', '123456', 'E', '846337581', '', 1, '08-10-2018 16:10', ' ', 'Assistente', 'B', 'N', 1, NULL, NULL),
('54ce18bcf61bd82c0baad2691fc1e109', NULL, 'Helena Eulalia', ' Nhantsale', '25/03/1994', 'F', 'Baptista Nhantsale e Carolina Felisberto Matsolo', 'BI', '100101663357C', 'Mussumbuluco', 'Solteiro', 'H 847195134', '123456', 'E', '847195134', 'nhamtsave@gmail.com', 1, '08-10-2018 16:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('55534615d5297eae916185bdfcc8485d', NULL, 'Dara ', 'Olivia Amade Ribeiro', '17/11/1990', 'F', 'Celio da Costa Ribeiro e Sandra Antonio Sadida', 'BI', '110101577315J', 'Matola Rio', 'Solteiro', 'DO', '123456', 'E', '', '', 1, '13-09-2018 16:09', ' ', 'Perito', 'A', 'M', 1, NULL, NULL),
('5587c798c143cae716fe4c56654752be', NULL, 'Marta ', 'Laurinda Mussumbe', '17/11/1988', 'F', 'Laurinda Isac Mussumbe ', 'BI', '110200629418J', 'Djuba', 'Solteiro', 'ML842400532', '123456', 'E', '842400532', 'martazimba123@gmail.com', 1, '08-10-2018 11:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('5665c0e080435dbb4fa739daeb3d96e5', NULL, 'Jessica ', 'Marta Jose Muiambo', '05/02/1997', 'F', 'Jose Feliciano Muiambo e Constancia Francisco Manhique', 'BI', '110202395430I', 'Patrice Lumumba', 'Solteiro', 'JM847044402', '123456', 'E', '847044402', '', 1, '03-10-2018 15:10', 'Administrador ', 'Engenharia Tecnica de Petroleo e Gas', 'A', 'M', 1, NULL, NULL),
('56f9a7cddd11909b9f323709f91c8110', '#codigo', 'Herica', 'Manjate', '03/08/1993', 'F', 'Neila Mazuze e Fernando Manjate', 'BI', '01634262782876F', 'Fomento', 'Solteiro', 'HM8432202560', '123456', 'E', '8432202560', 'hericam@gmail.com', 1, '22-01-2019 10:01', 'Administrador ', 'Engenharia', 'A', 'M', 1, NULL, '2018'),
('57c59df9d92bf26696437b868f43afa1', NULL, 'Pedro', ' Jacinto Manhica', '05/60/1992', 'M', 'Luis Manhica e Amelia Libombo', 'BI', '110101953244N', 'Mafuiane', 'Solteiro', 'P 844296008', '123456', 'E', '844296008', '', 1, '08-10-2018 13:10', ' ', 'Administracao Publica e Recursos Humanos', '', '', 1, NULL, NULL),
('5b2de90ebd6baac13e40f290da18f3dd', NULL, 'Fernando Valentim ', 'Muianga', '21/06/1997', 'M', 'Joao Ernesto Muianga e Alda Carla Valentim da Luisa Augusto', 'BI', '110100640320A', 'Matola Rio', 'Solteiro', 'FM824631450', '123456', 'E', '824631450', '', 1, '20-10-2018 23:10', ' ', 'Engenharia Tecnica de Petroleo e Gas', 'A', 'M', 1, NULL, NULL),
('5d556c60c44e58b9b0943352d97c9ea8', NULL, 'Jacir Joaquim Samora ', ' Oliveira ', '24/04/1999', 'F', 'Osorio Samora de Oliveira e Fausia Cassamo Mahomad', 'BI', '100101672806Q', 'Liberdade', 'Solteiro', 'J 846901383', '123456', 'E', '846901383', 'jacirdeoliveira@gmail.com', 1, '25-10-2018 16:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('5daa11aa3529fe8bc031ac184f3f6079', NULL, 'Marcia da Isabel Manuel ', 'Simiao', '25/11/1988', 'F', 'Manuel Simiao e Isabel Henrique ', 'BI', '100101274859B', 'Matola Rio', 'Solteiro', 'MS845938655', '123456', 'E', '845938655', '', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('5dad1da4a14644f22f8e1cfbf4550ac6', NULL, 'Caissa ', 'Casmiro Ramos', '20/03/2000', 'F', 'Flavio Casmiro Ramos e Marcia Marisa Ferrao', 'BI', '100105715798A', 'Mussumbuluco', 'Solteiro', 'CC848736959', '123456', 'E', '848736959', '', 1, '03-10-2018 13:10', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('5fde2e14b8ecd99e02dc72bc22f699aa', NULL, 'Alice ', 'Vicente Sitoe', '30/01/1995', 'F', 'Vicente Sitoe e Elisa Joao Cossa', 'BI', '', 'Beleluane', 'Solteiro', 'AV849494192', '654321', 'E', '849494192', '', 1, '18-12-09 07:09:53', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('60593bee2637398b2b5b3a2eda430cdd', NULL, 'Sheila Marcia ', 'Chingubo', '24/09/1992', 'F', 'Anisio Roberto Chingubo e Mara Antonieta Mucavel', 'BI', '110200380039B', 'Matola-700', 'Solteiro', 'SC840228729', '123456', 'E', '840228729', '', 1, '20-10-2018 23:10', ' ', 'Engenharia Tecnica de Petroleo e Gas', 'A', 'M', 1, NULL, NULL),
('622bdff8aa1cfe4843b65d246d125892', NULL, 'Zidanio', 'Antonio Muculo', '24/90/1999', 'M', 'Antonio Vicente Mucuro e Laura Luisa Manhica', 'BI', '100102617319J', 'Matola A', 'Solteiro', 'ZA', '123456', 'E', '', '', 1, '08-10-2018 11:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('630fce90ce98519d35edcd24648faa9e', NULL, 'Amelia Felix ', 'Nhantumbo', '26/06/1997', 'F', 'Felix de Oliveira Nhantumbo e Helena Cristina', '', '', 'Machava Socimol', 'Solteiro', 'AN844058652', '123456', 'E', '844058652', '', 1, '25-10-2018 15:10', ' ', 'Assistente Juridico', 'A', 'M', 1, NULL, NULL),
('63138d4e3cf86f09f7c1a13210a61a9f', NULL, 'Alef ', 'Mara Chaguala', '19/90/1995', 'M', 'Mara Mario  Chaguala ', 'BI', '110100231986M', 'Matola Rio', 'Solteiro', 'AM847103003', '123456', 'E', '847103003', 'alefmara1@gmail.com', 1, '18-11-18 05:03:36', ' ', 'Engenharia Tecnica de Informatica', '', 'M', 1, NULL, NULL),
('63c2080b15e639c27db4f5834fa5d50c', NULL, 'Aventina ', 'Beny Ngonhama', '27/10/1985', 'F', 'Beny Ngonhama e Virginia Maposse', 'BI', '110101193569B', 'Matola Rio', 'Solteiro', 'AB845469591', '123456', 'E', '845469591', '', 1, '08-10-2018 16:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, ''),
('643dddbab5a051b51debb4bbc4b93fd8', NULL, 'Rahela ', 'Cuna Muculo', '16/02/1997', 'F', 'Amelia Matanguane Cuna e Silasse Macambane Muculo', 'BI', '', 'Moamba', 'Solteiro', 'RC847476874', '123456', 'E', '847476874', '', 1, '08-10-2018 11:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('644293eb471b8cdbc6150aa9b807649e', NULL, 'Azita Sebastiao ', 'Uetela Jale', '14/03/1987', 'F', 'Sebastiao Uetela Jale e Autelia Zefanias Mahamele', 'BI', '100101452315B', 'Mozal', 'Solteiro', 'AU848107846', '123456', 'E', '848107846', '', 1, '08-10-2018 16:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('65a24cfa0a126941049f6b2ea020c85a', NULL, 'Fernando Osorio Elias ', 'Chongo', '27/09/1984', 'M', 'Elias Francisco Chingo e Vitoria Salvador Mabote', 'BI', '100105148697N', 'Liberdade', 'Solteiro', 'FC842256501', '123456', 'E', '842256501', '', 1, '21-10-2018 00:10', ' ', 'Engenharia Tecnica de Informatica ', 'B', 'N', 1, NULL, NULL),
('67e19fff6d93a4a0be979c5d3605149b', NULL, 'Marcia ', 'Nogueira Bata Chauque', '27/03/1989', 'F', 'Nogueira Augusto Pequenino Bata e Felizarda Luis Gueloviosa', 'BI', '110102163027M', 'Boane', 'Solteiro', 'MN844745752', '123456', 'E', '844745752', '', 1, '27-09-2018 16:09', ' ', 'Medicina Preventiva e Primeiros Socorros', '', 'M', 1, NULL, NULL),
('6800ca158f0462367cd14c72f61b1273', NULL, 'Albertina Margarida ', 'Matos', '25/02/1999', 'M', 'Margarida Albertina de Matos ', 'BI', '100105148639B', 'Matola Rio', 'Solteiro', 'AM845210421', '123456', 'E', '845210421', '', 1, '20-10-2018 23:10', ' ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('68f39b434e981c702fa4acb8baf5660e', NULL, 'Celia ', 'Norberto Cufuvane', '27/12/1997', 'F', 'Norberto Luis Cufuvane e Rosa Elias Chihure', 'BI', '100101503855F', 'Matola A', 'Solteiro', 'CN84777488', '123456', 'E', '84777488', '', 1, '27-09-2018 16:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('69e3a093fb626079c45c91c6de313001', NULL, 'Virginia Fatima', ' Macuacua', '30/12/1997', 'F', 'Fatima Melita Macuacua', '', '', 'Matola Rio', 'Solteiro', 'V 825458476', '123456', 'E', '825458476', '', 1, '20-10-2018 22:10', ' ', 'Administracao Hospitalar', 'A', 'M', 1, NULL, NULL),
('6b767b85d908d87ec1ceea441b78748c', NULL, 'Neusia Joaquim ', 'Machava', '06/07/1997', 'F', 'Joaquim Fernando Machava e Natercia Armando Macumbana', 'BI', '1101005205M', 'Belo Horizonte', 'Solteiro', 'NM843680997', '123456', 'E', '843680997', '', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', '', 'M', 1, NULL, NULL),
('6d11cf6191f5807e00a1aff51024efc8', NULL, 'Titos ', 'Fernando Alberto ', '19/01/1995', 'M', 'Fernando Alberto e Alzira Cipriano Waieca', 'BI', '110100895768P', 'Matola F', 'Solteiro', 'TF842026272', '123456', 'E', '842026272', '', 1, '25-10-2018 16:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('6ddff2eef4082a6ca6ea1d8299d09121', NULL, 'Bridget Ralph ', 'Chimenya', '04/10/2001', 'F', 'Ralph Monte Chimenya e Laura Diana Cuamba', '', '1001018840658', 'Matola Rio', 'Solteiro', 'BC843885737', '123456', 'E', '843885737', '', 1, '18-11-02 01:53:42', ' ', 'Engenharia Tecnica de Construcao Civil', 'A', 'M', 1, NULL, NULL),
('72d36c306e47e306037e0994a7e86209', NULL, 'Vicente Dinis', 'Mabote', '28/08/1996', 'M', 'Dinis Vicente Mabote e Rabeca Luis Cipriano', 'CARTA DE CONDUÃ‡ÃƒO', '10681351/1', 'Matola A', 'Solteiro', 'VM845538615', '123456', 'E', '845538615', '', 1, '23-11-2018 21:11', 'Administrador ', 'Engenharia Tecnica de Construcao Civil', 'A', 'M', 1, NULL, NULL),
('73028bfb3fa5b546d9872e8b291832cd', NULL, 'Helena ', 'Samusone Rambulo', '30/04/1994', 'F', 'Samsone Arone Cambulo e Arlete Efraime Chihule', 'BI', '110504671507J', 'Campuane', 'Solteiro', 'HS842930064', '123456', 'E', '842930064', '', 1, '08-10-2018 16:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('732f844fd107ac27485965fe40bb5732', NULL, 'Moises ', 'Pinto Tembe', '16/60/1996', 'M', 'Pinto Guija Tembe e Olita Antonio Laise', 'BI', '110102477841C', 'Liberdade', 'Solteiro', 'MP847000194', '123456', 'E', '847000194', '', 1, '08-10-2018 12:10', 'Administrador ', 'Perito', 'A', 'M', 1, NULL, NULL),
('747be341d1b4b08a07a245bf2c12f541', NULL, 'Tamirce', 'Veronica Dionisio Dengo', '21/02/1991', 'F', 'Dionisio Francisco Dengo e Helena Maria Jose Tembe', 'BI', '100102331426O', 'Malhampswene', 'Solteiro', 'TV845029071', '123456', 'E', '845029071', 'tamirceveronicadengo@gmail.com', 1, '19-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('749ce880d35260058302800a027103dc', NULL, 'Helena ', 'Ricardo Cuinhane', '12/10/1992', 'M', 'Ricardo Fanicela Cuinhane e Albertina Mundlhovo', 'BI', '1105019653753', 'Patrice Lumumba', 'Solteiro', 'HR849602312', '123456', 'E', '849602312', '', 1, '12-09-2018 15:09', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('7581c23e33250db3a7f29bb4e7515a4b', NULL, 'Virginia Suzana ', 'Zunguza', '18/12/1998', 'F', 'Arlindo Zungiuze e Florentina Pacule', '', '', 'Infulene', 'Solteiro', 'VZ845195333', '123456', 'E', '845195333', '', 1, '25-10-2018 15:10', ' ', 'Assistente Juridico', 'A', 'M', 1, NULL, NULL),
('75ad3be3a372d216c8ffeee648f15a5e', NULL, 'Nilza', 'Manuel Mimbir', '30/08/1997', 'F', 'Manuel Julio Mimbir e Laura Albuquerque', 'BI', '100302340673S', 'Xinavane', 'Solteiro', 'NM847975453', '123456', 'E', '847975453', '', 1, '13-09-2018 15:09', ' ', '', 'A', 'M', 1, NULL, NULL),
('76c2d2064abe1bb71395a972f53b48f6', NULL, 'Maria.Jesus Sales Borges', ' Veloso', '30/01/1992', 'F', 'Antonio Alves Borges Veloso e Cidalisa Arca Sales', 'BI', '110100696494C', 'Jonasse', 'Solteiro', 'M 844331728', '123456', 'E', '844331728', 'tancinhaveloso@hotmail.com', 1, '11-09-2018 15:09', 'Administrador ', 'Perito', 'A', 'M', 1, NULL, NULL),
('76c94d74723aa97bdb99b2667c57bdb3', NULL, 'Artur', 'Mario Domingos Mbepo', '18/01/1996', 'M', 'Mario Domingos Artur Mbepo e Cecilia Blaunde Joao', 'BI', '100100776371N', 'Infulene A', 'Solteiro', 'AM848154482', '654321', 'E', '848154482', '', 1, '18-12-18 09:22:07', 'Administrador ', 'Perito Aduaneiro e Administracao Tributaria', 'C', 'N', 1, NULL, NULL),
('77e668a2c568375a600ca838a07533ae', NULL, 'Vanilson ', 'Cleusio Mateus Elson', '05/06/2001', 'M', 'Henrique Jacinto Elson e Maria do Ceu Mateus Elson', 'BI', '110100806552M', 'Malhampswene', 'Solteiro', 'VC84724355', '123456', 'E', '84724355', '', 1, '13-09-2018 17:09', 'Administrador ', 'Perito', 'A', 'M', 1, NULL, NULL),
('79601928828ef96645109eda73a394d8', NULL, 'Albertina Joao', 'Mapenga', '04/08/1998', 'F', 'Joao Mapenga e Caretinna Dinis Mabangule', 'BI', '100106443304D', 'Djuba', 'Solteiro', 'AM82702845o', '123456', 'E', '82702845o', '', 1, '26-09-2018 14:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('7a3d158d52fcdadde4e20e522abac0ad', NULL, 'Lucia Custodio Paulo', 'Sitoe', '22/07/1992', 'F', 'Custodia Paulo Sitoe ', 'BI', '100101089627P', 'Matola', 'Solteiro', 'LS842177150', '123456', 'E', '842177150', '', 1, '05-11-2018 15:11', 'Administrador ', 'Perito Aduaneiro e Administracao Tributaria', 'B', 'N', 1, NULL, NULL),
('7a4d18d34b784ad9b518879d954f3547', NULL, 'Yara Ibraimo', '  Oliveira', '07/04/1998', 'F', 'Alberto Fernandis de Oliveira e Saquina Satar', 'BI', '110105145258B', 'Mozal', 'Solteiro', 'Y 848890455', '123456', 'E', '848890455', 'oliveirayara@gmail.com', 1, '12-09-2018 15:09', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('7b133e4c04405477c688178b58bda1c9', NULL, 'Salvador  ', 'Israel Francisco Junior', '12/11/2002', 'M', 'Salvador Francisco Gimo e Isabel Ilda Machaela Manjate Gimo', 'BI', '110104756189A', 'Boane', 'Solteiro', 'SI847090156', '123456', 'E', '847090156', '', 1, '14-09-2018 13:09', 'Administrador ', 'Engenharia de Automacao', 'A', 'M', 1, NULL, NULL),
('7b3eb7c8101fff39d7003fd82322167c', NULL, 'Jessica ', 'Bibi Carvalho', '17/01/2002', 'F', 'Amina Adamo Ismael e Salimo Bapo', 'BI', '', 'AV 5 de Fevereiro', 'Solteiro', 'JB847686190', '123456', 'E', '847686190', '', 1, '03-10-2018 15:10', 'Administrador ', 'Engenharia Tecnica de Petroleo e Gas', 'A', 'M', 1, NULL, NULL),
('7c9506e01aaef0b1146693bdfffcf87c', NULL, 'Laura ', 'Celeste Inguane', '19/30/1999', 'F', 'Celeste Enoque Inguane ', 'BI', '100105317377Q', 'Zimpeto', 'Solteiro', 'LC845501184', '123456', 'E', '845501184', '', 1, '08-10-2018 12:10', 'Administrador ', 'Perito', '', 'M', 1, NULL, NULL),
('7d63615e140314690a877bd5b671490e', NULL, 'Delfa Virgolino ', 'Pelembe', '05/11/1991', 'F', 'Virgulino Domingos  Pelembe e Cristina Alves Madjuaia', 'BI', '1001011964927', 'Jardim', 'Solteiro', 'DP848353837', '123456', 'E', '848353837', 'delfapelembe@gmail.com', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('7e1f846c2374b4be0b4e0c9ba743bb09', NULL, 'Nivalda Aissa Samora de Oliveira', 'Gaveta', '12/06/1991', 'F', 'Osorio Samora de Oliveira e Fausis Casamo Mahomad', 'BI', '10010004771i', 'Mussumbuluco', 'Solteiro', 'NG845584290', '123456', 'E', '845584290', '', 1, '25-10-2018 15:10', ' ', 'Assistente Juridico', 'A', 'M', 1, NULL, NULL),
('7e4253d65c9d59923c4fd356980d5625', NULL, 'Fernando Armindo ', 'Xerinda', '29/08/1998', 'M', 'Armindo Penalva Ernesto Beno e Jordina Gracieta Maluana', 'BI', '110104249422J', 'Manhica', 'Solteiro', 'FX845484320', '123456', 'E', '845484320', 'fernandoarmindo@gmail.com', 1, '20-10-2018 22:10', ' ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('7fc1c242455f51ccdad338b8516f3129', NULL, 'Cinhara ', 'Graca Faustino Mucavel', '03/60/1997', 'F', 'Faustino Foquiso Mucavel e Julia Graca Alberto Juliao', 'BI', '110100637360I', 'T3', 'Solteiro', 'CG847504974', '123456', 'E', '847504974', '', 1, '03-10-2018 14:10', 'Administrador ', 'Administracao', 'A', 'M', 1, NULL, NULL),
('80e0260be89828a68cf71fb922766752', NULL, 'Denilson Alvaro', 'Baloi', '04/10/1999', 'M', 'Inercia Cossa Baloi', 'BI', '', 'Matola B', 'Solteiro', 'DB828944940', '123456', 'E', '828944940', '', 1, '03-10-2018 16:10', 'Administrador ', 'Perito', 'A', 'M', 1, NULL, NULL),
('84bde9466fae004e9a03e912d2a1827c', NULL, 'Candida Pethasse Chimangane', 'Timane', '26/09/1997', 'F', 'Candido Jonas Chimangane Timane e Teresa Lucio Tembe', 'BI', '110102476381N', 'Matola A', 'Solteiro', 'CT844148856', '123456', 'E', '844148856', '', 1, '25-10-2018 15:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('84d1ebaa998510b27a080d26d8f73cc7', NULL, 'Nil ', 'Tefane de Jesus Clinoromos', '06/07/2001', 'M', 'Atanasio Adolfo Clinoromos e Maria Fernanda de Jesus Vitorino Maiela', 'BI', '110100339432F', 'Mozal', 'Solteiro', 'NT846165088', '123456', 'E', '846165088', '', 1, '14-09-2018 13:09', 'Administrador ', 'Engenharia de Automacao', 'A', 'M', 1, NULL, NULL),
('852170bad9ce9ae73a5c131df7a4a165', NULL, 'Igor Roberto ', ' Romao Chissico', '26/06/2001', 'M', 'Pedro Sicobell Chissico e Elizabeth Chissico', 'BI', '100101618880B', 'Matola A', 'Solteiro', 'IC843983880', '654321', 'E', '843983880', '', 1, '19-01-21 10:41:21', 'Administrador ', 'Engenharia de Automacao', 'A', 'M', 1, NULL, NULL),
('8657fcebef06a3c89cd54c7f8cb122bc', NULL, 'Laura ', 'Orlando Whare', '28/10/1997', 'F', 'Orlando Fernando Whare', 'BI', '100102331400', 'Boane', 'Solteiro', 'LO844433879', '123456', 'E', '844433879', '', 1, '12-09-2018 14:09', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('8706406480f98f080bc4aefee9b94c54', NULL, 'Naayrah', 'Amade Bai', '22/03/2002', 'F', 'Justina Candida Monteiro e Jair Amade Bay', 'BI', '110101801073P', 'Jonasse', 'Solteiro', 'NA843136245', '123456', 'E', '843136245', 'justinamonteiro@gmail.co.mz', 1, '03-10-2018 16:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('8ab1a7d3d0c00c3215444b353a78f106', NULL, 'Rosalia Gabriel ', ' Nhamunze', '29/01/1982', 'F', 'Gabriel Nhamunze e Celeste Joao Chambule', 'BI', '110400403937Q', 'BAirro Militar Boane', 'Solteiro', 'R 842072752', '123456', 'E', '842072752', '', 1, '20-10-2018 21:10', ' ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('8bde19af05461906f33c856a823d01c3', NULL, 'Paula', 'Lourenco Tivane', '14/11/1996', 'F', 'Lourenco Manuel Tivane e Orpa Ernesto Mavone', '', '', 'Chokwe', 'Solteiro', 'PL820675519', '123456', 'E', '820675519', '', 1, '19-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('8d4dff461c273e81d23f0a7fddeab1df', NULL, 'Julia Abel ', 'Dacala', '14/06/1996', 'F', 'Abel Ricardo Luis Dacala e Rosa Tomas Augusto Mudumela', 'BI', '110100641959C', 'Hulene B', 'Solteiro', 'JD848238475', '123456', 'E', '848238475', '', 1, '01-11-2018 09:11', ' ', 'Administracao', 'A', 'M', 1, NULL, NULL),
('8fe58a14f292013d242268edec608426', NULL, 'Cinia Jose ', 'Mahumane', '06/03/1996', 'F', 'Olga Atalia Nhaca e Jose Mahumane', 'BI', '', 'Matola A', 'Solteiro', 'CM845667050', '123456', 'E', '845667050', '', 1, '25-10-2018 16:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('92a66a72cf9f7d503b98ef4dcf70f0aa', NULL, 'Pedro ', 'Goncalo', '23/01/1996', 'M', 'Pedro Goncalo e Cidalia Francisco Manuel', 'BI', '100101880064A', 'Matola H', 'Solteiro', 'PG847505127', '123456', 'E', '847505127', '', 1, '25-10-2018 16:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('9324d8f57f45a6f02274d2e01c1af448', NULL, 'Isaias Manuel Jorgre ', 'Mabica', '10/05/2000', 'M', 'Manuel Jorge Mabica e Lucia Serafim Mutambe', 'BI', '100105102635N', 'Djonasse', 'Solteiro', 'IM842981024', '123456', 'E', '842981024', '', 1, '29-10-2018 15:10', 'Administrador ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('9381cbe3d958fa8d407cb7031e2479fb', NULL, 'Jorge ', 'Filimao Cossa', '16/12/1991', 'M', 'Paulo Cossa e Julieta Sitoe', 'BI', '110101582812B', 'Machava Socimol km 15', 'Solteiro', 'JF848671646', '123456', 'E', '848671646', '', 1, '22-10-2018 14:10', 'Administrador ', 'Perito Aduaneiro e Administracao Tributaria', 'C', 'N', 1, NULL, NULL),
('94cdaf021a4e1c631ce3abda7199314a', NULL, 'Rubao ', 'Vicente Cuna ', '10/10/1999', 'M', 'Vicente Albino Cuna e Fatima Avelina Cambula', 'BI', '100105638536F', 'Fomento', 'Solteiro', 'RV84526665', '123456', 'E', '84526665', '', 1, '08-10-2018 11:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('95db407c77c730c42d7ccee4c3dda99b', NULL, 'Francisco ', 'Raul Francisco', '19/08/2000', 'M', 'Raul Francisco  e Moline Buzuze Cofe', 'BI', '060704585005F', 'Mozal', 'Solteiro', 'FR849000365', '192000', 'E', '849000365', 'francisco@gmail.com', 1, '18-12-03 08:01:15', ' ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('963d45d3c419b9913690882e84494c14', NULL, 'Sofia da Graca Alfredo ', 'Simbine', '29/04/1997', 'F', 'Alfredo Lourenco Simbine e Ana Francisco Mucavela', 'BI', '100100053140N', 'Djonasse', 'Solteiro', 'SS842669417', '123456', 'E', '842669417', '', 1, '25-10-2018 15:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('9671dc1783b7390559831aa50ca20bfa', NULL, 'Denilson ', 'Arone Cumbe', '07/10/1990', 'M', 'Arone Semo Cumbe e Helena Matule', 'BI', '100102759796M', 'Matola Rio', 'Solteiro', 'DA', '123456', 'E', '', '', 1, '13-09-2018 16:09', ' ', 'Perito', 'A', 'M', 1, NULL, NULL),
('9797b0a6502309cb3d4b208e50988cb0', NULL, 'Joao Da Silva', ' Mussa', '08/12/1993', 'M', 'Mussa Culeti e Rabia Machude', 'BI', '', 'Matola Rio', 'Solteiro', 'J 846529592', '123456', 'E', '846529592', 'joaodasilvamussa907@gmail.com', 1, '03-10-2018 15:10', 'Administrador ', 'Engenharia de Automacao', 'A', 'M', 1, NULL, NULL),
('97e20eab157f0110f0e6f55b32413b9d', NULL, 'Jelson ', 'Bartolomeu Bai', '02/07/1999', 'M', 'Bartolomeu Afonso Bai ', 'BI', '100105653801C', 'Matola D', 'Solteiro', 'JB840242019', '123456', 'E', '840242019', 'baigelson@gmail.com', 1, '11-09-2018 15:09', 'Administrador ', 'Engenharia de Automacao', 'A', 'M', 1, NULL, NULL);
INSERT INTO `estudante` (`id_est`, `codigo`, `nome`, `apelido`, `data_nascimento`, `sexo`, `filiacao`, `tipo_doc`, `num_doc`, `local_residencia`, `estado_civil`, `username`, `password`, `categoria`, `contacto`, `email`, `estado`, `data`, `responsavel`, `curso`, `turma`, `turno`, `ano_letivo`, `data_anoLetivo`, `ano_ingresso`) VALUES
('98e262afa86515fb2268330da2a79aa4', NULL, 'Maria Graca Ana', 'Nhantumbo', '22/05/1994', 'F', 'Ana Paulino Nhantumbo ', 'BI', '100100019960C', 'Bairro do 700', 'Solteiro', 'MN827450041', '123456', 'E', '827450041', '', 1, '19-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('9d25ee9434f7ae2fa3e92c97b6d6bbc9', NULL, 'Dulce Mario', ' Mavie', '09/08/1989', 'F', 'Mario Mavie Junior e Amelia Muianga', 'BI', '100104004159B', 'Matola Rio', 'Solteiro', 'D 847596316', '123456', 'E', '847596316', 'dulcemarie76@gmail.com', 1, '21-10-2018 00:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'B', 'N', 1, NULL, NULL),
('9e1ea1eb27bd93086442c9fe9ef9d1f4', NULL, 'Pedro ', 'Goncalo ', '23/01/1996', 'M', 'Pedro Goncalo e Cidalia Francisco Manuel', 'BI', '100101880064A', 'Matola H', 'Solteiro', 'PG847505127', '123456', 'E', '847505127', 'pedro.piter23@gmail.com', 1, '29-10-2018 15:10', 'Administrador ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('9ed09b78e596105d1f83daf482d39faf', NULL, 'Diolinda ', 'Paulino Francisco Xiluvane', '16/04/1985', 'M', 'Paulino Xiluvane e Alice Americo Mabote', 'BI', '110100510992J', 'Djonasse', 'Solteiro', 'DP846012662', '123456', 'E', '846012662', '', 1, '08-10-2018 14:10', ' ', 'Administracao', 'B', 'N', 1, NULL, NULL),
('9f8c3c4d574ffbdb92d5f3ad482b969d', NULL, 'Sara ', 'Sadia Chambe', '10/90/1997', 'F', 'David Alberto Chambe e MAdalena Jorge Muianga', 'BI', '', 'Matola A', 'Solteiro', 'SS844136411', '123456', 'E', '844136411', '', 1, '08-10-2018 12:10', 'Administrador ', 'Perito', 'A', 'M', 1, NULL, NULL),
('9fd4ebb3a4f796bc4961db22290ff447', NULL, 'Alda Tacher Alberto ', 'Jazide', '10/03/1999', 'F', 'Aguida Balane e Alberto Jazide', 'BI', '110205061991N', 'Chamanculo', 'Solteiro', 'AJ845851676', '123456', 'E', '845851676', 'tacherzjazite@gmail.com', 1, '18-11-02 01:51:33', ' ', 'Engenharia Tecnica de Construcao Civil', 'A', 'M', 1, NULL, NULL),
('a39734af0c078a0097ae8e362cf443a5', NULL, 'Artur ', 'Agostinho Nhamposse', '03/08/1992', 'M', 'Americo Nhamposse e Celeste Simbine', 'BI', '100101900957N', 'Matola A', 'Solteiro', 'AA844249614', '654321', 'E', '844249614', '', 1, '18-12-18 09:18:12', ' ', 'Assistente', 'B', 'N', 1, NULL, NULL),
('a48f787b9b60175f3d4851224ef47691', NULL, 'Lucinda ', 'Jorge Mandlaze', '24/05/1994', 'F', 'Jorge Laise Mandlhaze e Ana Albino Milane', 'BI', '140101327888P', 'Bairro do Tsalala', 'Solteiro', 'LJ847193949', '123456', 'E', '847193949', 'lucindamandlaze@gmail.com', 1, '11-09-2018 13:09', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('a754f3dd6fb86641696e077280144f84', NULL, 'Horacio ', 'Pedro Dengo Junior', '05/30/2002', 'M', 'Horacio Pedro Dengo e Sonia Silvino MAssua Dengo', 'BI', '110106781394I', 'Singathela', 'Solteiro', 'HP849819564', '123456', 'E', '849819564', '', 1, '08-10-2018 12:10', 'Administrador ', 'Perito', 'A', 'M', 1, NULL, NULL),
('a8e8205d2e42ce589a2519c4ae11b7dd', NULL, 'Violeta ', 'Gertrudes Siqueira da Fosenca', '15/09/1999', 'F', 'Gualter Ricardo  Langa da Foseca e Carmen Cristina Jonas Milanga Silva', 'BI', '080104402917S', 'Maxaquene A', 'Solteiro', 'VG848623551', '123456', 'E', '848623551', '', 1, '27-09-2018 16:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('a8feb651a85a4e131146d3680b487a6f', NULL, 'Maria Eunice Soares ', 'Tembe', '09/03/1995', 'F', 'Alberto Soares Roque e Alda Maria Michangule', 'BI', '1001000616351J', 'Matola A', 'Solteiro', 'MT842118836', '123456', 'E', '842118836', '', 1, '26-09-2018 14:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('a9045914a991a300266adab75ab54f3c', NULL, 'Felizarda Aurelio', 'Mavie', '24/08/1995', 'F', 'Aurelio Joao Mavie e Isaura Filipe Nhavene', 'BI', '100104785636A', 'Bonhiça', 'Solteiro', 'FM24/08/1995', '123456', 'E', '24/08/1995', '', 1, '26-09-2018 14:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('ab931617f64ecc34edde4beada7856cb', NULL, 'Abdul ', 'Rahimo Abdula Sabado', '25/10/1996', 'M', 'Cesar Manuel Amaral Sabado', 'BI', '110104034097B', 'Matola  F', 'Solteiro', 'AR829693850', '123456', 'E', '829693850', 'abdulrahimo.sabado@gmail.com', 1, '11-09-2018 13:09', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('b1e8d4f5d5def1d03ee76e3465b8b71b', NULL, 'Meldrite ', 'Luis Zandamela', '16/70/1997', 'F', 'Luis Alberto Mandlhate Zandamela e Felizarda Armando Nombora', 'BI', '110100276446P', 'Matola  F', 'Solteiro', 'ML849528107', 'melly1997', 'E', '849528107', '', 1, '18-12-05 08:10:39', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('b2201ee8f4647782e8a4cdcdd77248d8', NULL, 'Zuneide', ' da Silva Filomeno', '24/05/1997', 'M', 'Filomeno Monteiro da Silva e Sandra Mariano Osman Casamo', 'BI', '070102687243I', 'Matola Rio', 'Solteiro', 'Z 843703761', '123456', 'E', '843703761', '', 1, '03-10-2018 13:10', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('b23ff9377435f30c60ac200577b12d61', NULL, 'Claudia Georgina Anacleto', 'Nhavene', '08/02/2000', 'F', 'Anacleta  Adolfo Nhavene e Aida Rabeca Jeremias', 'BI', '110100695067A', 'Jardim', 'Solteiro', 'CN845238666', '123456', 'E', '845238666', '', 1, '26-09-2018 14:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('b25bedbd1fea431e2d313c977cf7ea50', NULL, 'Dulce Mario Mario  ', 'Mavie', '09/08/1989', 'F', 'Mario Mavie Junior e Amelia Carolina Muianga', 'BI', '100104004159B', 'Djonasse', 'Solteiro', 'DM842467434', '123456', 'E', '842467434', 'dulcemavie76@gmail.com', 1, '22-10-2018 15:10', 'Administrador ', 'Perito Aduaneiro e Administracao Tributaria', 'B', 'N', 1, NULL, NULL),
('b26d28d81ff4096a56112d0e1d859c42', NULL, 'Vanda ', 'Flora Ndava', '29/70/1992', 'F', 'Flora Armando Ndava ', 'BI', '110301273347M', 'Campuane', 'Solteiro', 'VF847413077', '123456', 'E', '847413077', '', 1, '08-10-2018 11:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('b383dac682e91d768e78c2b41394975f', NULL, 'Auria ', 'Luisa Jorge Zandamela', '31/07/1993', 'F', 'Jorge Zandamela  e Monica Zandamela', 'BI', '110102849321Q', 'Djuba', 'Solteiro', 'AL840153105', '123456', 'E', '840153105', '', 1, '03-10-2018 16:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('b3bc03e704563cb4b8c6b98289743c63', NULL, 'Alfredo', ' Manuel Mucavel', '11/10/2001', 'M', 'Manuel Alfredo Mucavel e Palmira Jentemane Ngulele', 'BI', '110101520445A', 'Guava', 'Solteiro', 'AM846138023', '789632', 'E', '842537795', 'fredmucavel@gmail.com', 1, '18-12-02 06:03:59', 'Administrador ', 'Engenharia de Automacao', 'A', 'M', 1, NULL, NULL),
('b52c51d7b6110a4f9e427289d25e3ce6', NULL, 'Laura ', 'Arnado Mboa Cumbe', '09/03/1987', 'F', 'Arnaldo Damiao Mboa e Maria Salomao Nhantumbo', '', '', 'Boane', 'Casado', 'LA846739550', '123456', 'E', '846739550', '', 1, '08-10-2018 15:10', ' ', 'Assistente', 'B', 'N', 1, NULL, NULL),
('b67ede6743585fb98d1372dbad446a7e', NULL, 'Maria Augusto ', 'Santos', '03/11/1993', 'F', 'Augusto Antonio dos Santos e Isabel Jose Langa', 'BI', '100191397646P', 'B', 'Solteiro', 'MS', '123456', 'E', '', '', 1, '18-10-2018 13:10', ' ', '', '', '', 1, NULL, NULL),
('b6cae4db43ba49d8462dd40ad79ec5b2', NULL, 'Diolinda Amos ', 'Cavilane', '26/03/1990', 'F', 'Amos Jossai Cvilane', 'BI', '110204567756A', 'Bairro do Tsalala', 'Solteiro', 'DC844065101', '123456', 'E', '844065101', '', 1, '26-09-2018 14:09', ' ', 'Medicina', 'A', 'M', 1, NULL, NULL),
('b76c516d535cc60c9cba99b5bc9843ab', NULL, 'Adercia Alberto ', 'Banze', '27/11/1990', 'M', 'Alberto Fabiao Banze e Arminda Alberto Mondlhane', 'BI', '100102329471M', 'Sikwama', 'Solteiro', 'AB829404401', '123456', 'E', '829404401', '', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('b7faf3cf934f6618821c1e8d6cab200a', NULL, 'Assia Arao ', 'Samuel Filipe', '18/04/1994', 'M', 'Arao Samuel Filipe Junior e Halima Domingos', 'BI', '110101326868P', 'Matola D', 'Solteiro', 'AS841875764', '123456', 'E', '841875764', '', 1, '11-10-2018 15:10', ' ', 'Administracao', 'B', 'N', 1, NULL, NULL),
('b9306feac638ec142d7828e3a0331b0f', NULL, 'Igor Madureira ', 'Poxes', '29/04/1996', 'M', 'Antonio madureira Poxes Junior ', '', '', 'Matola Rio', 'Solteiro', 'IP845210801', 'madujr10', 'E', '845210801', '', 1, '18-11-26 06:21:57', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'M', 1, NULL, NULL),
('ba4339f218d5cb8283765ae130ce5f57', NULL, 'Lucia Armando ', 'Machava', '21/06/1991', 'F', 'Armando Machava Castigo e Cacilda Luis Mathe', 'BI', '100105463566N', 'Matola Rio', 'Solteiro', 'LM840190232', '123456', 'E', '840190232', '', 1, '08-10-2018 16:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('bacd634a6d4f621ba1cd5587f0b6591b', NULL, 'Atalia Bernardo ', 'Chongo', '21/03/2001', 'F', 'Bernardo Armando Chongo e Catarina Paulo Timba', 'BI', '', '25 de Junho', 'Solteiro', 'AC842936944', '123456', 'E', '842936944', '', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', '', 'M', 1, NULL, NULL),
('bb40267920128bf7633e76ba3f9ff11b', NULL, 'Joaquina Joao ', 'Zaqueu', '14/02/1999', 'F', 'Joao Zaqueu Mavure e Marta Augusto Armando', 'BI', '11304335413l', 'Boane', 'Solteiro', 'JZ825140360', '123456', 'E', '825140360', '', 1, '20-10-2018 23:10', ' ', 'Engenharia Tecnica de Petroleo e Gas', 'A', 'M', 1, NULL, NULL),
('bb5e4d6108f76a11a8ec4f21bd37bfcd', NULL, 'Luisa Aurombo', ' Butao', '27/03/1997', 'M', 'Aurombo Joao Butao e Teresa Gabriel', 'BI', '1101040023105D', 'Matola A', 'Solteiro', 'L 845333671', '123456', 'E', '845333671', '', 1, '11-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('bdd13e6fec0a43b76292bd022d04ef62', NULL, 'Sonia Ines ', 'Antonio', '29/09/1994', 'F', 'Antonio Tualufo Gumbo e Diolinda Pedro Dzango', 'BI', '110101780368M', 'Tchumene 2', 'Solteiro', 'SA846113009', '123456', 'E', '846113009', '', 1, '25-10-2018 16:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('bf793a6b48c940d16f99907ec97bcf4b', NULL, 'Benilde Joaquim ', 'Chirindja', '18/09/1997', 'F', 'Joaquim Fernando Chirindja e Rosa Moises Machalele', 'BI', '110101140535I', 'Hulene B', 'Solteiro', 'BC', '123456', 'E', '', '', 1, '26-09-2018 14:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('bf99c3d2731e2b1940706b29581095ea', NULL, 'Emilia Isabel Horacio ', 'Dengo', '16/01/1999', 'F', 'Horacio Pedro Dengo e Sonia Silvino Massua DEngo', 'BI', '110105412831C', 'Patrice Lumumba', 'Solteiro', 'ED840501639', '123456', 'E', '840501639', '', 1, '25-10-2018 15:10', ' ', 'Assistente Juridico', 'A', 'M', 1, NULL, NULL),
('c057fe584e16d88b3b83a99d78a5103c', NULL, 'Edmilson ', 'Manuel Bazilio Nube', '18/7/1995', 'M', 'Bazilio Cesar Nube e Felicidade Antonio Manjate ', 'BI', '110101080925N', 'Matola  C', 'Solteiro', 'EM825474437', '123456', 'E', '825474437', '', 1, '08-10-2018 15:10', ' ', 'Administracao', 'A', 'M', 1, NULL, NULL),
('c0d961e9ca57b664a8746c5628490fa8', NULL, 'Denilse ', 'Aida Manculo', '12/05/1999', 'F', 'Vicente Vasco e Flora Beatriz', 'BI', '110201649099J', 'Matola D', 'Solteiro', 'DA841307350', '123456', 'E', '841307350', '', 1, '03-10-2018 13:10', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('c195f4e7d61e0f4621ed7d62219c7268', NULL, 'Honorio ', 'Pedro Bernardo', '18/06/1990', 'M', 'Pedro Bernardo e Flora Jose', 'BI', '100100144189C', 'Fomento', 'Solteiro', 'HP845590662', '123456', 'E', '845590662', 'hpbchambane@gmail.com', 1, '13-09-2018 12:09', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('c418900d18384c63e947063b97e29c71', NULL, 'Egnalia', ' Rock Mamudo', '10/10/1990', 'F', 'Rock Mamudo Elias e Laurinda Alberto', 'BI', '030205311171D', 'Matola A', 'Solteiro', 'E 849088014', '123456', 'E', '849088014', '', 1, '08-10-2018 16:10', ' ', 'Administracao', 'B', 'N', 1, NULL, NULL),
('c4e19f3633e9f9c305db70135ea97dfa', NULL, 'Dulce Mazive ', 'Mahomela', '11/11/1992', 'F', 'Carmona Pequenino Mahomela e Anastancia Albino Mazive', 'BI', '100700774160J', 'Moamba', 'Solteiro', 'DM845699020', '123456', 'E', '845699020', '', 1, '20-10-2018 23:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('c5fdae64967ef8da76d9ebe8deb8de0a', NULL, 'Amarildo Simao', 'Machachane', '03/11/1996', 'M', 'Simao Machachane Nhapimbe e Esperanca Goncalves', 'BI', '110500702069S', 'Matola ', 'Solteiro', 'AM845356120', '123456', 'E', '845356120', '', 1, '26-11-2018 02:11', 'Administrador ', 'Engenharia de Automacao', 'A', 'M', 1, NULL, NULL),
('c6cd21716c14bb99a1fb96ac8b3f51ce', NULL, 'Helder Goncalves ', 'Tomocene', '18/01/1995', 'M', 'Goncalves Joao Tomocene e  Hortencia Candida Langa', 'BI', '100504922170N', 'Matola A', 'Solteiro', 'HT848560697', '123456', 'E', '848560697', '', 1, '20-10-2018 23:10', ' ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('c87f0e202a70e08ce128f598cbcf6388', NULL, 'Emilia', ' Estevao Magaia', '06/11/2000', 'F', 'Estevao Albino Magaia e Alice Carlos Mutombene', 'BI', '100104077216Q', 'Matola Rio', 'Solteiro', 'E 843893755', '123456', 'E', '843893755', '', 1, '13-09-2018 16:09', ' ', 'Perito', 'A', 'M', 1, NULL, NULL),
('c94c2dacb8700c741d5460a323f0fab1', NULL, 'Elisabeth', 'Vasco Valoi', '09/04/1988', 'F', 'Vasco Joao Valoin e Rossina Jossias Timba', 'BI', '110100785084F', 'Matola A', 'Solteiro', 'EV827968409', '123456', 'E', '827968409', '', 1, '03-10-2018 16:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('c962eb03d9264e937750e7aac1898287', NULL, 'Rabeca Lilia Dias ', 'Massiquela', '03/08/1995', 'F', 'Dias massiquela e Palmira Lilia Mabota', 'BI', '110202167763B', 'Chamanculo B', 'Solteiro', 'RM820821410', '123456', 'E', '820821410', 'rabecaliliamassiquela@gmail.com', 1, '01-11-2018 09:11', ' ', 'Administracao Hospitalar', 'A', 'M', 1, NULL, NULL),
('c9d20351fe9cd490641932a5a6b3f0b4', NULL, 'Keni ', 'Matias Tembe', '09/01/1997', 'M', 'Matias Faustino Tembe e Ana Paula Mahulana Bernardo', 'BI', '100104558656F', 'Matola D', 'Solteiro', 'KM845285741', '123456', 'E', '845285741', 'kenimatiastembe@gmail.com', 1, '03-10-2018 15:10', 'Administrador ', 'Engenharia Tecnica de Petroleo e Gas', 'A', 'M', 1, NULL, NULL),
('c9eae461d0f27cf1e1ca4ca00400ed24', NULL, 'Nilza ', 'Manuel Mimbir', '30/0/1997', 'F', 'Manuel Julio Mimbir e Laura Albuquerque', 'BI', '100302340673S', 'Manhica', 'Solteiro', 'NM847975453', '123456', 'E', '847975453', '', 1, '08-10-2018 12:10', 'Administrador ', 'Perito', 'A', 'M', 1, NULL, NULL),
('cb48857dec2a59c84ee91f35072b9026', NULL, 'Neima ', 'Adriano Massinga', '11/05/1998', 'F', 'Adriano Massinga e Ortencia Julio Nhandzilo', '', '', 'Matola D', 'Solteiro', 'NA', '123456', 'E', '', '', 1, '03-10-2018 14:10', 'Administrador ', 'Administracao', 'A', 'M', 1, NULL, NULL),
('cc509a1632bddca035dd2bbefee39c20', NULL, 'Laza da Vania', 'Simbine', '27/09/1995', 'F', 'Silva Jose Simbine e Argentina Lucas Mazuze Simbine', 'BI', '', 'Matola Rio', 'Solteiro', 'LS84268777', '123456', 'E', '84268777', '', 1, '20-10-2018 21:10', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'N', 1, NULL, NULL),
('cd01ee24e016391c5f091d2f9cd38475', NULL, 'Mariana Madaia Fernando', 'Novela', '26/03/1993', 'F', 'Madaia Fernando Novela', 'BI', '100102400347N', 'Tsalala', 'Solteiro', 'MN843704528', '123456', 'E', '843704528', 'marianachiluvananovela@gmail.com', 1, '08-10-2018 16:10', ' ', 'Administracao Publica e Recursos Humanos', '', 'N', 1, NULL, NULL),
('cd43a2ea8c7a05519d39a82ab93e6421', NULL, 'Dina', ' Timoteo Licusse', '25/11/1997', 'F', 'Timoteo Joao Lipcusse e Antonieta Selica', 'BI', '110104338225J', '', 'Solteiro', 'D 845752914', '123456', 'E', '845752914', '', 1, '08-10-2018 15:10', ' ', 'Ciencias Juridicas e Sociais', 'B', 'M', 1, NULL, NULL),
('cde5edfec4ebf44ef44ae948d26a272f', NULL, 'Julio Joao ', 'Guambe', '16/04/1997', 'M', 'Joao Luis Guambe e Margarida Julio Castro', '', '100105544982N', 'Mussumbuluco', 'Solteiro', 'JG846157460', '654321', 'E', '846157460', '', 1, '18-12-03 10:01:18', ' ', 'Perito Aduaneiro e Administracao Tributaria', '', 'M', 1, NULL, NULL),
('ce172b01895e287ad7bf0a691452e9f3', NULL, 'Aboobacar Ismael', 'Sultane', '02/12/1985', 'M', 'Ismael Aboobacar Sultane e Berta Cossa', 'BI', '110100319724M', 'Djonasse', 'Solteiro', 'AS845006769', '123456', 'E', '845006769', 'aboobacar.sultane@gmail.com', 1, '23-11-2018 15:11', 'Administrador ', 'Contabilidade e Gestao de Empresas', 'B', 'N', 1, NULL, NULL),
('ce72e5da2231a8fb8935c26dd071d547', NULL, 'Orpa', 'Armando Nuvunga', '18/05/1996', 'F', 'Armando Nuvunga e Gina Sandra Lourenco Tivane', 'BI', '', '', 'Solteiro', 'OA827807187', '123456', 'E', '827807187', '', 1, '19-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('cfeb0861c918d084154963c5738d5302', NULL, 'Antonio Messaba ', 'Manganhela', '12/03/1989', 'M', 'Massaba Manganhela e  Amelia Rola', 'BI', '10100318784A', 'Matola Rio', 'Solteiro', 'AM843560190', '123456', 'E', '843560190', 'antonio.manganhela@gmail.com', 1, '21-10-2018 00:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'B', 'N', 1, NULL, NULL),
('cfee8ca56bdc895f3340866dd0a8aff0', NULL, 'Salvador', 'Bila', '02/07/1999', 'M', 'Alberto Fernandis de Oliveira e Saquina Satar', 'BI', '02299828F', 'Boane', 'Solteiro', 'SB821759960', '123456', 'E', '821759960', 'salvador@gmail.com', 1, '19-09-2018 12:09', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('d02a2f7e79bc1f1480979ee806a2ce60', NULL, 'Preselina ', 'Amalia Nhantsave', '02/50/1997', 'F', 'Baptista Nhantsave e Carolina Felisberto Matsolo', 'BI', '100102256325P', 'Mussumbuluco', 'Solteiro', 'PA845754080', '123456', 'E', '845754080', '', 1, '03-10-2018 14:10', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('d207417ca0b0ea1f1542703693f01278', NULL, 'Queen ', 'Simone Manhica', '04/12/2001', 'F', 'Simone Albino e Isaura Da Silva', 'BI', '', 'Bairro do Tsalala', 'Solteiro', 'QS844081529', '123456', 'E', '844081529', '', 1, '03-10-2018 16:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('d36688cbe01859e39e5b608bc83a5eb5', NULL, 'Alda ', 'Bazilio Vembane', '15/04/1989', 'F', 'Bazilio Simone Vembane e Delfina Francisco Machava', 'BI', '100800991193I', 'Matola Rio', 'Solteiro', 'AB825777444', '654321', 'E', '825777444', 'aldavembane@gmail.com', 1, '18-12-09 09:00:56', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, NULL),
('d3a5633d487b9a897220ab918a7f8d8f', NULL, 'Alexandre', 'Gomes Chirindja', '17/01/1992', 'M', 'Alexandre Chirindja e Veronica Xavier Madoho', 'BI', '100102811822C', 'Matola  C', 'Solteiro', 'AG822770037', '123456', 'E', '822770037', '', 1, '22-10-2018 14:10', 'Administrador ', 'Perito Aduaneiro e Administracao Tributaria', 'C', 'N', 1, NULL, NULL),
('d4e7e2e39e18ac531c25f1ffd52ae949', NULL, 'Neila ', 'Felipe Zavala', '21/09/1995', 'F', 'Filipe Jose Zavala e Zelia Aurelio Cumaio', 'BI', '100101805364N', 'Kongolote', 'Solteiro', 'NF849526586', '123456', 'E', '849526586', '', 1, '13-09-2018 16:09', ' ', 'Perito', 'A', 'M', 1, NULL, NULL),
('d6bd886e2cc81511e844cb18a02ddb95', NULL, 'Atalia', ' Carlos Matavele', '11/09/2000', 'F', 'Carlos Ernesto Matavele e Salvina Mario Bila', 'BI', '100104076403P', 'Matola Rio', 'Solteiro', 'A 844249446', '123456', 'E', '844249446', '', 1, '27-09-2018 13:09', 'Administrador ', 'Medicina Preventiva e Primeiros Socorros', '', 'M', 1, NULL, NULL),
('d77b698cc103bb6d7e8fbb686bc490fe', NULL, 'Anisia ', 'Xavier Romao', '27/11/1989', 'F', 'Xavier Romao e Cacilda Luis Notico', 'BI', '100105080866B', 'Malhampswene', 'Solteiro', 'AX849376548', '123456', 'E', '849376548', 'anisiaxavierromao@gmail.com', 1, '08-10-2018 15:10', ' ', 'Assistente', 'B', 'N', 1, NULL, NULL),
('d78991902127d3c5f7df643289313af1', NULL, 'Gloria', 'Arlindo Munguambe', '28/10/1987', 'F', 'Arlindo Antonio Munguambe e Palmira Carlos Dima', 'BI', '110100122904N', 'Mulotana', 'Solteiro', 'GA824165224', '123456', 'E', '824165224', '', 1, '22-10-2018 14:10', 'Administrador ', 'Perito Aduaneiro e Administracao Tributaria', 'C', 'N', 1, NULL, NULL),
('d7e03c790cfcfe5e5d7c7d30810a26fa', NULL, 'Albino ', 'Benedito Ruco', '20/08/1994', 'M', 'Benedito Silva Ruco e Ana Firmino Mungoi', 'BI', '09092286390S', 'Matola A', 'Solteiro', 'AB840301705', '123456', 'E', '840301705', '', 1, '12-09-2018 14:09', 'Administrador ', 'Assistente', 'A', 'M', 1, NULL, NULL),
('d87479851ad439b18909f8db72806ba6', NULL, 'Milton ', 'Ananias Miguel', '25/06/1999', 'M', 'Ananias Miguel e Alice Jose Simbine', 'BI', '100106019749P', '', 'Solteiro', 'MA846494496', '123456', 'E', '846494496', '', 1, '03-10-2018 16:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('d90742b343c0c5b13e88522a0060a6c9', NULL, 'Cecilia ', 'Felicidade Alfredo Manjate', '08/08/1983', 'F', 'Alfredo Mungone Manjate e Gilda Jose Muguambe', 'BI', '110104163400A', 'Boane', 'Solteiro', 'CF849507588', '123456', 'E', '849507588', '', 1, '03-10-2018 13:10', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('d9e6e4a59a15228444585ac013d35f87', NULL, 'Francisco', ' Raul Francisco', '19/08/2000', 'M', 'Raul Francisco Josefa e Moline Buzuze Cofe', 'BI', '060704585005F', 'Mozal', 'Solteiro', 'FF849000365', '192000', 'E', '84900365', 'francisco@gmail.com', 1, '18-11-27 05:55:38', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('da32d02ae55e0372e8cff9d1966fd38c', NULL, 'Heylen', ' Pedro Daniel Nhapulo', '24/09/2000', 'M', 'Denise Nhapulo e Daniel Nhapulo', '', '', 'Tchumene', 'Solteiro', 'HN846348272', '654321', 'E', '846348272', '', 1, '18-12-06 08:41:03', 'Administrador ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('da91b144d01e9db4fafdb5d1990393e6', NULL, 'Madalena Joao', ' Mahumane', '02/02/1984', 'F', 'Joao Mahumane e Matilde Chavane', 'BI', '100100775393A', 'Matola Rio', 'Solteiro', 'M 848903656', '123456', 'E', '848903656', '', 1, '20-10-2018 22:10', ' ', 'Administracao Hospitalar', 'A', 'M', 1, NULL, NULL),
('dbad0b1fc9978bd48843fd8d48a043c0', NULL, 'Isaias Daniel', ' Manjate', '22/10/1993', 'M', 'Daniel Antonio Manjate e Aida Dinis', 'BI', '100100773329B', 'Matola H', 'Solteiro', 'I 8499047553', '123456', 'E', '8499047553', 'isaias.300.@hotmail.com', 1, '21-10-2018 00:10', ' ', 'Engenharia Tecnica de Informatica ', 'A', 'N', 1, NULL, NULL),
('dbee292ffe0fa2db9fcc7f6394d3c3c1', NULL, 'Mohamad ', 'Zaide Ansuar Hossain', '17/10/1999', 'M', 'Mohammad Anssuar Honssain e Ansya Begum ', '', '040801497715J', 'Malhampswene', 'Solteiro', 'MZ843702157', '123456', 'E', '843702157', '', 1, '08-10-2018 11:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('dc5e971352e9dad2932f1b864c32bdc1', NULL, 'Vania Justino ', 'Sitoe', '26/02/1998', 'M', 'Justino Ernesto Sitoe e Rosa Joao Mboa', 'BI', '100406059240', 'Nkobe', 'Solteiro', 'VS843743292', '123456', 'E', '843743292', '', 1, '20-10-2018 22:10', ' ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('dc8fc7831cef097c1946cf06d17a88b9', NULL, 'Palmira ', 'Antonio Mazoio', '01/10/1997', 'F', 'Cidonia Sebastiao Ngomane e Antronio Mateus Mazoio', '', '', 'Matola Rio', 'Solteiro', 'PA847280933', '123456', 'E', '847280933', '', 1, '03-10-2018 14:10', 'Administrador ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('dd0d270109821ed3d98ca3cc69fc72ac', NULL, 'Luis ', 'Janeiro Mariano', '09/11/1989', 'M', 'Janeiro Mariamo e Gilda da Gloria Simone', 'BI', '100100211296M', 'Namaacha', 'Solteiro', 'LJ842309745', 'euetuja', 'E', '842309745', 'ljmariamo35@gmail.com', 1, '18-11-22 10:13:18', 'Administrador ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('dd860eb1d0f2fc460cbd49a820668e15', NULL, 'Carolina ', 'Samson Nhantsale', '28/10/2000', 'F', 'Samson Antonio Nhantsale e Julieta Wiliam Mandlhate', 'BI', '100105776314A', 'Mussumbuluco', 'Solteiro', 'CS847606845', '123456', 'E', '847606845', '', 1, '08-10-2018 12:10', 'Administrador ', 'Perito', 'A', 'M', 1, NULL, NULL),
('dde35a064304801a61f15b2891478dda', NULL, 'Ivan ', 'Filina Morais ', '02/07/2000', 'M', 'Helga Sambo e Nelson Morais', '', '', 'Malhampswene', 'Solteiro', 'IF846472072', '123456', 'E', '846472072', '', 1, '12-09-2018 17:09', ' ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('de40bf361d7be822e996a6300e194fda', NULL, 'Shadrek Tacudzua', 'Dombe', '22/09/1998', 'M', 'Shadrek Joao Dombe e Febbie Sherume', 'BI', '', 'Matola Rio', 'Solteiro', 'SD846764535', '654321', 'E', '846764535', '', 1, '18-12-06 08:40:10', ' ', 'Engenharia Tecnica de Informatica ', 'B', 'M', 1, NULL, NULL),
('de878b8dfebd7bbf20e0a97fd922f3f0', NULL, 'Isabel ', 'Juliao Mimbir', '22/08/1997', 'F', 'Juliao Machavambana Mimbir e Felismina Antonio Sitoe', 'BI', '100304136944F', 'Manhica', 'Solteiro', 'IJ849209810', '123456', 'E', '849209810', '', 1, '27-09-2018 16:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('deaf3ec3b7c10cd9010c32f537f73d45', NULL, 'Aissa Momad', 'Bai', '13/09/1990', 'F', 'Momad Bai Abdul Rahim Momad Bai e Ana Feniasse Guambe', 'PASSAPORTE', '123456', 'Liberdade', 'Solteiro', 'AB846192590', '123456', 'E', '846192590', '', 1, '11-10-2018 15:10', ' ', 'Administracao Publica e Recursos Humanos', 'B', 'N', 1, NULL, '2018'),
('df035dc619959193aafcbaa161ce1be8', NULL, 'Francisco ', 'Mendosa', '07/02/2003', 'M', 'Mahendre Cumar', '', '', '', 'Solteiro', 'FM828515760', '123456', 'E', '828515760', '', 1, '03-10-2018 16:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('e1530fd000d66c2c8ac2e4aec0ebf807', NULL, 'Lidia Jose ', 'Mugabe', '21/10/1995', 'F', 'Jose Armando Mugabe e Rosalina Lidia Faife', '', '', '25 de Junho B', 'Solteiro', 'LM844217638', '123456', 'E', '844217638', '', 1, '18-10-2018 13:10', ' ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('e2f25598128010d99c890e8a6976ca3a', NULL, 'Angelina Horacio ', 'Zandamela', '07/06/2001', 'F', 'Horacio Zandamela e Alzira Ananias Macamo', 'BI', '', 'Tchumene', 'Solteiro', 'AZ849225877', '123456', 'E', '849225877', '', 1, '20-10-2018 22:10', ' ', 'Administracao Publica e Recursos Humanos', 'A', 'M', 1, NULL, NULL),
('e553a8fe824fc02d5bd434f2b1c0b83d', NULL, 'Neusa Fernando ', 'Chambule', '04/05/1996', 'F', 'Fernando Esteves Chambule e Cacilda Alfredo Macuacua', '', '', '3 De Fevereiro', 'Solteiro', 'NC825078856', '123456', 'E', '825078856', '', 1, '25-10-2018 15:10', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'M', 1, NULL, NULL),
('e64412e5f2f2470c63f933a8a12eeb94', NULL, 'Ajaina Antonio ', 'Raisse', '10/09/1990', 'F', 'Antonio Raisse e Helena Bate', 'BI', '100401715919B', 'Namaacha', 'Solteiro', 'AR827262555', '123456', 'E', '827262555', '', 1, '01-11-2018 09:11', ' ', 'Administracao', 'A', 'M', 1, NULL, NULL),
('e882fcefdf5e101b27041cdb61e04421', NULL, 'Edilson da Costa ', 'Nhaliguangue', '23/11/1999', 'M', 'Constantino Litoluane Nhaliguangue e Apolinaria Utilia Naife', '', '', 'MatolaC', 'Solteiro', 'EN', '123456', 'E', '', '', 1, '14-09-2018 13:09', 'Administrador ', 'Engenharia Tecnica de Construcao Civil', 'A', 'M', 1, NULL, NULL),
('e890913fa552b321ab142783ce65b072', NULL, 'Acacio ', 'Alda Idalina Das Dores', '27/04/1999', 'M', 'Alda Idalina Das Dores', 'BI', '040126051259J', 'Boane', 'Solteiro', 'AA84780174', '123456', 'E', '84780174', '', 1, '19-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('e9c08d0189c8190655fa91f6853b1388', NULL, 'Bruno Cassamo ', 'Williams', '17/08/2000', 'M', 'Artur Williams e Aissa Cassamo', 'BI', '100100613443P', 'Mussumbuluco', 'Solteiro', 'BW846596277', 'cassamo3', 'E', '846596277', '', 1, '18-12-01 04:45:23', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'M', 1, NULL, NULL),
('ea28d3ecbed270ab43a7c3eb0f6dfd07', NULL, 'Elvira Cecilia Abilio ', 'Chirindza', '29/09/1992', 'F', 'Abilio Cecilia Chirindza e Anastancia Salvador Mambo', 'BI', '100100775332Q', 'Matola A', 'Solteiro', 'EC843698996', '123456', 'E', '843698996', '', 1, '25-10-2018 15:10', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'M', 1, NULL, NULL),
('eadd223ced0eb411f8db2e42f7e019f6', NULL, 'Zolick', 'Manuel Arlindo Munguambe', '04/08/1998', 'F', 'Arlindo Antonio Munguambe e Palmira Carlos Dima', 'BI', '110104570695B', 'Liberdade', 'Solteiro', 'ZM845146836', '123456', 'E', '845146836', '', 1, '19-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('eb103549832c55b2fea6685ec2c2f898', NULL, 'Edite Aventina ', 'Zita', '27/07/1986', 'F', 'Eugenio Vasco Zita e Joana Pedro Timba', 'BI', '100100902840M', 'Mussumbuluco', 'Solteiro', 'EZ848446750', '123456', 'E', '848446750', 'editezita@gmail.com', 1, '25-10-2018 16:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', '', 'M', 1, NULL, NULL),
('eb7a135790e71bf62df012fa62bec3a4', NULL, 'Valter', ' Fernando Massingue', '16/09/2002', 'M', 'Fernando Joao e Luisa Abilio Muthombene', 'BI', '110304562508A', 'Belo Horizonte', 'Solteiro', 'VM846783880', 'VALTER', 'E', '846783880', '', 1, '18-11-26 10:12:32', 'Administrador ', 'Engenharia Tecnica de Petroleo e Gas', 'A', 'M', 1, NULL, NULL),
('ebae7014f2f13c679f540f31b1ade2e0', NULL, 'Costa Pedro ', 'Chicate', '19/08/1977', 'M', 'Pedro Jose Chicate e Isabel Antonio', 'BI', '1001047351110B', 'Djonasse', 'Solteiro', 'CC824497770', '123456', 'E', '824497770', 'costapedrochicate@gmail.com', 1, '21-10-2018 00:10', ' ', 'Engenharia Tecnica de Informatica ', 'B', 'N', 1, NULL, NULL),
('ee9f8b0c237bd67501947d970184c82e', NULL, 'Sarah Daniel Suelmia', 'Khimji', '29/11/2000', 'F', 'Queirunissa Suelma e Daniel Khimiji', 'BI', '090101058058M', 'Belo Horizonte', 'Solteiro', 'SK847448956', '123456', 'E', '847448956', '', 1, '24-11-2018 23:11', ' ', 'Assistente Juridico', 'A', 'M', 1, NULL, NULL),
('efa6fbbf852261d9a2870db9e6892a6a', NULL, 'Bordina ', 'Fabiao Mbanimuamuene', '30/03/2000', 'F', 'Fabiao Barbosa Mbanimuamuene e Isabel Jorge Mulhuine', 'BI', '110102048830P', 'Matola A', 'Solteiro', 'BF842360067', '123456', 'E', '842360067', '', 1, '08-10-2018 11:10', 'Administrador ', 'Contabilidade', 'A', 'M', 1, NULL, NULL),
('f015c68191ae8adcccf96c0a0d0cb333', NULL, 'Ivan ', 'Claudio Mondlhane', '21/10/1999', 'M', 'Claudio Mondlane e Arlete Bombe ', 'BI', '100105196285C', 'Sikwama', 'Solteiro', 'IC845682223', '845682', 'E', '845682223', 'ivanmondlane1@gmail.com', 1, '18-11-26 09:53:07', ' ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('f1bffdde2ce8447003a712d537944a0a', NULL, 'Sandra Carmona Nhampossa', 'Sitoe', '10/04/1981', 'F', 'Carmona Joao Guirrengana e Rosita Amelia Mazive', 'BI', '110100643495J', 'Maxaquene B', 'Solteiro', 'SS840591078', '123456', 'E', '840591078', '', 1, '26-09-2018 15:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('f2658582fc246d9beae75263734750b1', NULL, 'Dulce Amelia Manuel', 'Jotamo', '05/11/1994', 'F', 'Manuel Alfinete Jotamo e Stefania Jose Intocola', 'BI', '100100258379F', 'Moamba', 'Solteiro', 'DJ846387221', '123456', 'E', '846387221', '', 1, '19-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('f4618f7c995546e9eb0dd0a0bd0ab538', NULL, 'Graca ', 'Fernando Joao', '14/01/1996', 'F', 'Fernando Joao e Mariana Gena Meque ', 'BI', '100100367219S', 'Siquama', 'Solteiro', 'GF849097924', '123456', 'E', '849097924', '', 1, '27-09-2018 15:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('f4d121864a8c5ef6f8244ea6d66ce17f', NULL, 'Eugenio ', 'Mateus Mazivila', '20/02/2000', 'M', 'Mateus Eugenio Mazivila e Helena Gracieta Chambela', 'BI', '110105702233D', 'Matola Rio', 'Solteiro', 'EM847606188', '654321', 'E', '847606188', '', 1, '19-01-24 08:24:07', 'Administrador ', 'Engenharia de Automacao', 'A', 'M', 1, NULL, NULL),
('f5028f2d2c92258653262685444419bf', NULL, 'Filomena Manuel ', 'Machie', '02/08/1998', 'F', 'Manuel Francisco Machie e Helena Jeremias Xerinda', 'BI', '110205542717B', 'Sao Damaso', 'Solteiro', 'FM846999281', '123456', 'E', '846999281', '', 1, '26-09-2018 14:09', ' ', 'Medicina Preventiva e Primeiros Socorros', 'A', 'M', 1, NULL, NULL),
('f70ebf50abda04deb2b8c3a793fa97c8', NULL, 'Francisca ', 'Martins Taibo', '30/10/1990', 'F', 'Francisco Martins Taibo e Helena Maria Quamba', '', '', 'Matola A', 'Solteiro', 'FM', '123456', 'E', '', '', 1, '13-09-2018 16:09', ' ', 'Perito', 'A', 'M', 1, NULL, NULL),
('f7a8b378a45ad6a7735054f0adae7ad7', NULL, 'Alcina Mota', 'Namurro', '05/06/2000', 'F', 'Macario Corrente Namurro e Zena Antonio Serrame da Mota', 'BI', '040105240816I', 'Fomento', 'Solteiro', 'AN846977176', '654321', 'E', '84368866', '', 1, '19-01-21 09:52:12', 'Administrador ', 'Engenharia Tecnica de Informatica ', 'B', 'M', 1, NULL, NULL),
('f85ef56e2378b408d3da8ca52d646d36', NULL, 'Liorindo Jaime', ' Banze', '15/04/1999', 'M', 'Jaime Carlos Banzdze e Cecilia Alexandre Nhaluindo', '', '', 'Matola A', 'Solteiro', 'L 845142947', '123456', 'E', '845142947', '', 1, '20-10-2018 22:10', ' ', 'Engenharia Tecnica de Construcao Civil', 'A', 'M', 1, NULL, NULL),
('f8ae2fa5dc4d335ab3eff21a4ab289eb', NULL, 'Sheila Julieta Loide Sitole', 'Sitole', '20/06/1999', 'F', 'Filipe Dos Santos Sitole e Loide Luis Mazibe', 'BI', '110104924269P', 'Liberdade', 'Solteiro', 'SS844779200', '123456', 'E', '844779200', '', 1, '19-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('f8c5bc6d4fea8010f773da0443abdaaa', NULL, 'Suneila Rafique ', 'Bapu', '26/02/1991', 'F', 'Rafael Ismael Mussa e Amina Ismael Agy Abdula', 'BI', '100100051317C', 'Matola B', 'Solteiro', 'SB848820760', '123456', 'E', '848820760', '', 1, '20-10-2018 22:10', ' ', 'Contabilidade e Gestao de Empresas', 'A', 'N', 1, NULL, NULL),
('f9207af93e605f6cfafb46ba2f862c67', NULL, 'Isaias Manuel jorge', ' Mabica', '10/05/2000', 'M', 'Manuel Jorge Mabica e Lucia Serafim Mutambe', 'BI', '100106102635N', 'Djonasse', 'Solteiro', 'I 842981024', '123456', 'E', '842981024', '', 1, '25-10-2018 16:10', ' ', 'Perito Aduaneiro e Administracao Tributaria', 'A', 'M', 1, NULL, NULL),
('fab7cbbec15f0827e437e4f74220a856', NULL, 'Marta Abel', ' Chihure', '22/02/2011', 'F', 'Abel Alfredo Chivurre e Hermelinda Xavier Massicane', '', '110204538388J', 'Matola Gar', 'Solteiro', 'M 847422183', '123456', 'E', '847422183', '', 1, '18-10-2018 13:10', ' ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('fd6a9c8365d8f24e3ae72ad18442c5f2', NULL, 'Ailton ', 'Abel Chibite', '11/11/1998', 'M', 'Joao Machava Chibite e Margarida Rui Murrombe', 'BI', '', 'Boane', 'Solteiro', 'AA845327223', 'Blessbl', 'E', '845327223', '', 1, '18-12-03 09:08:35', ' ', 'Engenharia Tecnica de Informatica', 'A', 'M', 1, NULL, NULL),
('ff73e4e8152fee2d3e3aab9f4e95bd3f', NULL, 'Otilia', 'Veronica Muchave', '28/04/1990', 'F', 'Veronica Luisa Muchave', 'BI', '110101833481S', 'Patrice Lumumba', 'Solteiro', 'OV845062445', '123456', 'E', '845062445', '', 1, '19-10-2018 16:10', 'Administrador ', 'Saude Publica e Aconselhamento', 'A', 'M', 1, NULL, NULL),
('fff27498ca18e62294b2b419c711e2d6', NULL, 'Mercia Hortencia ', 'Mabuie', '06/01/1994', 'F', 'Hortencia Naftal Mabure', 'BI', '110104020903S', 'Matola A', 'Solteiro', 'MM847407505', '123456', 'E', '847407505', 'marciahortencia@gmail.com', 1, '21-10-2018 00:10', ' ', 'Engenharia Tecnica de Informatica ', 'B', 'N', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id_livro` int(9) NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `autor` varchar(100) CHARACTER SET utf8 NOT NULL,
  `editora` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ano` varchar(100) CHARACTER SET utf8 NOT NULL,
  `volume` varchar(100) CHARACTER SET utf8 NOT NULL,
  `data` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id_livro`, `titulo`, `autor`, `editora`, `ano`, `volume`, `data`) VALUES
(2, 'Teste1', 'Teste2', 'Teste3', '2018', '7', '23-12-2018 15:12'),
(3, 'Programacao1', 'tttt', 'aaaaaa', '2017', '2', '23-12-2018 17:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalidade`
--

CREATE TABLE `mensalidade` (
  `id_mensalidade` int(11) NOT NULL,
  `id_util` varchar(194) NOT NULL,
  `ano` varchar(10) NOT NULL,
  `taxa_multa` int(11) NOT NULL,
  `semestre` int(2) NOT NULL,
  `mes1` int(2) DEFAULT NULL,
  `mes2` int(2) DEFAULT NULL,
  `mes3` int(2) DEFAULT NULL,
  `mes4` int(2) DEFAULT NULL,
  `mes5` int(2) DEFAULT NULL,
  `mes6` int(2) DEFAULT NULL,
  `mes7` int(2) DEFAULT NULL,
  `mes8` int(2) DEFAULT NULL,
  `mes9` int(2) DEFAULT NULL,
  `mes10` int(2) DEFAULT NULL,
  `mes11` int(2) DEFAULT NULL,
  `data_pagamento` varchar(30) DEFAULT NULL,
  `status_pag` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensalidade`
--

INSERT INTO `mensalidade` (`id_mensalidade`, `id_util`, `ano`, `taxa_multa`, `semestre`, `mes1`, `mes2`, `mes3`, `mes4`, `mes5`, `mes6`, `mes7`, `mes8`, `mes9`, `mes10`, `mes11`, `data_pagamento`, `status_pag`) VALUES
(1, 'f7a8b378a45ad6a7735054f0adae7ad7', '1', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notas`
--

CREATE TABLE `notas` (
  `id_notas` int(9) NOT NULL,
  `id_util` varchar(254) CHARACTER SET utf8 NOT NULL,
  `id_discp` varchar(254) CHARACTER SET utf8 NOT NULL,
  `id_curso` varchar(254) CHARACTER SET utf8 NOT NULL,
  `teste1` varchar(10) NOT NULL,
  `teste2` varchar(10) NOT NULL,
  `mini_teste1` varchar(10) NOT NULL,
  `mini_teste2` varchar(10) NOT NULL,
  `exame_normal` varchar(10) NOT NULL,
  `exame_recor` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `notas`
--

INSERT INTO `notas` (`id_notas`, `id_util`, `id_discp`, `id_curso`, `teste1`, `teste2`, `mini_teste1`, `mini_teste2`, `exame_normal`, `exame_recor`) VALUES
(1, 'f4d121864a8c5ef6f8244ea6d66ce17f', '999f454ddf6d10af7345fd96f2d5da80', 'ff19ba1cb217b8f0ce15f71622a4fa4d', ' 6.5', ' 9.8', ' 12.7', ' 14', '11', ' '),
(2, '97e20eab157f0110f0e6f55b32413b9d', '999f454ddf6d10af7345fd96f2d5da80', 'ff19ba1cb217b8f0ce15f71622a4fa4d', ' 13.8', ' 18.8', ' 13', ' 16.5', ' ', ' '),
(3, '852170bad9ce9ae73a5c131df7a4a165', '999f454ddf6d10af7345fd96f2d5da80', 'ff19ba1cb217b8f0ce15f71622a4fa4d', ' 17', ' 17', ' 16', ' 16', ' ', ' '),
(4, '9797b0a6502309cb3d4b208e50988cb0', '999f454ddf6d10af7345fd96f2d5da80', 'ff19ba1cb217b8f0ce15f71622a4fa4d', ' 12', ' 18', ' 15', ' 15', ' ', ' '),
(5, '7b133e4c04405477c688178b58bda1c9', '999f454ddf6d10af7345fd96f2d5da80', 'ff19ba1cb217b8f0ce15f71622a4fa4d', ' 17', ' 16', ' 17', ' 17', ' ', ' '),
(6, '31eae98d256c02e3ea623f35e4e355f4', '999f454ddf6d10af7345fd96f2d5da80', 'ff19ba1cb217b8f0ce15f71622a4fa4d', ' ', ' ', ' ', ' ', ' ', ' '),
(7, 'f4d121864a8c5ef6f8244ea6d66ce17f', 'c0f589be4114e7eb694b23347e2182a6', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '15', '15', ' ', ' ', ' ', ' '),
(8, '3f707194c944c2423784e51c58e6402c', 'c0f589be4114e7eb694b23347e2182a6', 'ff19ba1cb217b8f0ce15f71622a4fa4d', ' ', ' ', ' ', ' ', ' ', ' '),
(9, 'b3bc03e704563cb4b8c6b98289743c63', 'c0f589be4114e7eb694b23347e2182a6', 'ff19ba1cb217b8f0ce15f71622a4fa4d', '13', ' ', ' ', ' ', ' ', ' ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `taxas`
--

CREATE TABLE `taxas` (
  `id` int(11) NOT NULL,
  `taxa_multa` varchar(45) NOT NULL,
  `data` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `taxas`
--

INSERT INTO `taxas` (`id`, `taxa_multa`, `data`) VALUES
(1, '0.05', '6'),
(2, '0.1', '11'),
(3, '0.15', '16'),
(4, '0.5', '20'),
(99, '0', '--');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` varchar(254) NOT NULL,
  `id_curso_doc` varchar(254) NOT NULL,
  `nome_turma` varchar(50) NOT NULL,
  `data` varchar(20) NOT NULL,
  `responsavel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`id_turma`, `id_curso_doc`, `nome_turma`, `data`, `responsavel`) VALUES
('8b9891a5e1fdb768a0f41e4de4cdaac2', '0', 'B', '10-09-2018 10:09', 'Administrador '),
('8f352246aa954bad7a3a14bb42fdea73', '0', 'A', '10-09-2018 10:09', 'Administrador '),
('fe24bb1bf0439bb53663635a9d8796fc', '0', 'C', '10-09-2018 10:09', 'Administrador ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turno`
--

CREATE TABLE `turno` (
  `id_turno` varchar(254) NOT NULL,
  `nome_turno` varchar(20) NOT NULL,
  `data` varchar(20) NOT NULL,
  `responsavel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turno`
--

INSERT INTO `turno` (`id_turno`, `nome_turno`, `data`, `responsavel`) VALUES
('3583051952f2416efdcde1578a9c053c', 'N', '10-09-2018 10:09', 'Administrador '),
('68a1b7870e85ce84d02559cf6a3e011a', 'M', '10-09-2018 10:09', 'Administrador '),
('ea2364a63418ad82affd163a6a706aec', 'T', '10-09-2018 10:09', 'Administrador ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador`
--

CREATE TABLE `utilizador` (
  `id_util` varchar(254) CHARACTER SET utf8 NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 NOT NULL,
  `apelido` varchar(50) CHARACTER SET utf8 NOT NULL,
  `data_nascimento` varchar(50) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `filiacao` varchar(160) CHARACTER SET utf8 NOT NULL,
  `tipo_doc` varchar(50) NOT NULL,
  `num_doc` varchar(50) NOT NULL,
  `local_residencia` varchar(50) CHARACTER SET utf8 NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `contacto` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` int(2) NOT NULL,
  `datal` varchar(20) NOT NULL,
  `responsavel` varchar(50) CHARACTER SET utf8 NOT NULL,
  `curso` varchar(254) CHARACTER SET utf8 NOT NULL,
  `turma` varchar(20) NOT NULL,
  `turno` varchar(20) NOT NULL,
  `foto` varchar(254) NOT NULL,
  `area` varchar(254) CHARACTER SET utf8 NOT NULL,
  `experiencia` varchar(254) CHARACTER SET utf8 NOT NULL,
  `nivel` varchar(254) CHARACTER SET utf8 NOT NULL,
  `formacao` varchar(254) CHARACTER SET utf8 NOT NULL,
  `formacao2` varchar(254) CHARACTER SET utf8 NOT NULL,
  `regime` varchar(254) NOT NULL,
  `disciplinas` varchar(254) NOT NULL,
  `anexo1` varchar(254) NOT NULL,
  `anexo2` varchar(254) NOT NULL,
  `anexo3` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `utilizador`
--

INSERT INTO `utilizador` (`id_util`, `nome`, `apelido`, `data_nascimento`, `sexo`, `filiacao`, `tipo_doc`, `num_doc`, `local_residencia`, `estado_civil`, `username`, `password`, `categoria`, `contacto`, `email`, `estado`, `datal`, `responsavel`, `curso`, `turma`, `turno`, `foto`, `area`, `experiencia`, `nivel`, `formacao`, `formacao2`, `regime`, `disciplinas`, `anexo1`, `anexo2`, `anexo3`) VALUES
('', 'Administrador', '', '', '', '', '', '', '', '', 'Administrador', '654321', 'A', '', '', 1, '19-04-29 06:49:29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('05f82f2c2728fd524dfb2c662674911b', 'Nadia Albertina', 'Fernando', '14/10/1992', 'F', 'Hassane Mussagy Assan e Beatriz Portugues ', 'BI', '110104884798B', 'Katembe', 'Solteiro', 'NF844464714', '654321', 'D', '844464714', 'nadyfernando114@gmail', 0, '18-11-22 03:53:35', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Direito', '1', 'Licenciado', '', '', 'Parcial', 'Direito Processual Civil', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('07f4bf4dcd0f6cd5287d4268f725ae40', 'Valeriano Alberto ', 'Moiane', '05/12/1976', 'M', 'Alberto Malapane Moiane e Maria de Fatima Francisco muchanga', 'BI', '110400381258N', 'Matola Rio', 'Solteiro', 'VM846806135', '123456', 'D', '846806135', 'gmoiane@gmail.com', 0, '18-11-02 01:24:39', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Gestao Ambiental', '', '', 'SIM', 'CBT', '', 'Sondagem e Negociacao', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('09e23571dd6fa0f4cc86c3e4f6d890f2', 'Manuel Caetano ', 'Guirrugo', '13/05/1988', 'M', 'Caetano Levi Joaquim Feuse e Elisa Sarangane Nhantumbo', 'BI', '110100481333N', 'Liberdade', 'Solteiro', 'MG844433917', '880513', 'D', '844433917', 'mcguirrugo@gmail.com', 0, '19-01-24 08:15:52', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Financas', '1', 'Licenciado', '', '', '', 'Auditoria Financeira, Analise e Gestao de Projetos', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('138f454c9294649a6172f623a84dd730', 'Lazaro Jamiciano ', 'Nhachengo', '27/03/1989', 'M', 'Jamiciano Nhachengo e Teresa Mosse Maringule', 'BI', '110102252107F', 'Djuba', 'Solteiro', 'LN842249381', '198927', 'D', '842249381', 'gemionhachengo2@gmail.com', 0, '19-01-24 08:16:58', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Fisica Aplicada', '7 ', 'Licenciado', 'SIM', 'CBT', 'Parcial', 'Gestao Ambiental e Recursos Naturais e Resistencia de Materiais', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('172f4e7b2b9647dc023cfc25780eb565', 'Samora Francisco ', 'Chivambo', '26/08/1978', 'M', 'Francisco Silva Chivambo e Mutima Memba Manhique', 'BI', '100047518W', 'Matola ', 'Solteiro', 'SC843206255', '123456', 'D', '843206255', 'schivambo@gmail.com', 1, '18-11-02 01:08:29', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Contabilidade e Auditoria', '', 'Licenciado', '', '', 'Parcial', '', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('26001ac40c53948d8034671bdb5ebe79', 'Nafisa Joaquim Constantino ', 'Val', '03/10/1979', 'F', 'Joaquim Constantino Vale e Maria Jose Anselmo', 'PASSAPORTE', '12AC72081', '', 'Solteiro', 'NV845500537', '123456', 'D', '845500537', '', 1, '23-10-2018 16:10', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Licenciatura em Psicologia Social', '2', 'Licenciado', '', 'CBT', 'Parcial', 'Psicologia Social das Organizacoes ', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('29496b4788d3e10f7d058a17b943971f', 'Anisio Manuel ', 'Masango', '04/02/1982', 'M', 'Manuel Jossefa Massango e Elisa Fernado Vutane', 'BI', '100200587847S', 'Tsalala', 'Solteiro', 'AM842714662', '654321', 'D', '842714662', 'animasango@gmail.com', 0, '19-01-24 08:17:58', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Saude Publica', '3', '', '', '', '', 'Inspencao Sanitaria', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('2b4eae056802a0439d039a2da12ed95a', 'Joaquina Augusto', 'Cossa', '19/09/1990', 'F', 'Augusto Valente Cossa e Violante Jose Loforte', 'BI', '110100615896A', 'Massaca 2', 'Solteiro', 'JC845734342', '23456', 'D', '845734342', 'quinacossa@gmail.com', 0, '19-01-24 08:18:24', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Gestao de Recursos Humanos', '3', 'Licenciado', '', 'Formacao Psicopedagogica para Docentes do Ensino Superior', 'Parcial', 'Gestao de carreira e Praticas Profissionais', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('34de5fb4171167ec34082720d7e40a2a', 'Adolfo Obadias ', 'Sitoe', '03/08/1993', 'M', 'Obadias Sitoe e Veronica Fabiao Sitoe', 'BI', '100200587869S', 'Boane', 'Solteiro', 'AS843548727', 'adobase93', 'D', '843548727', 'adolfositoe93@gmail.com', 0, '18-11-26 09:18:57', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Tecnico Aduaneiro', '1', 'Medio', '', '', 'Parcial', 'Tecnica Pautal Aduaneira', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('37e1a5208fbb41378a2f15da98a97276', 'Elton Aurelio ', 'Muhandzule', '03/06/1997', 'M', 'Aurelio Vallente Muhandzule e Livia Ana Joao', 'BI', '110101358172M', 'Marracuene', 'Solteiro', 'EM840616849', '3003emhz', 'D', '840616849', 'elton37muhandzule@gmail.com', 0, '18-11-25 11:01:32', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Informatica', '1', 'Medio', 'SIM', '', 'Parcial', 'Base de dados, programacao java', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('3d876e5af09fbc03231a6ea336ba0a2a', 'Alda Marcos', 'Chichava', '16/02/1974', 'F', 'Marcos Niquice Chichava e Luisa Diogo', 'BI', '110101044996A', 'Boane', 'Solteiro', 'AC842802705', '222222', 'D', '842802705', 'aldamchichava@gmail.com', 0, '18-11-23 01:27:36', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Planificacao e Gestao da Educacao', '16', 'Licenciado', 'SIM', 'Formacao Psicopedagogica para Docentes do Ensino Superior', '', 'Gestao Comercial e Markting', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('43e08e324c31826974e7c053f6239a87', 'Ofelia Bernardo ', 'Langa', '14/06/1994', 'F', 'Bernardo Gabriel Langa e Leonor Feliciano Ngonhele', 'BI', '110500632832B', 'Unidade 7', 'Solteiro', 'OL846244574', '123456', 'D', '846244574', 'ofelialanga@gmail.com', 1, '23-10-2018 16:10', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Ensino de Ciencias de Administracao', '3', 'Licenciado', '', '', '', 'Gestao de Empresas, Planeamento e Financas Empresariais', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('44023073ef0c0c1764ca71c66f401bd2', 'Maria Elisa Titos ', 'Mucavel', '01/12/1961', 'F', 'Abilio Ernesto Titos Mucavele e Lidioa Isac Maguele', 'BI', '100100903820S', 'Malanga', 'Solteiro', 'MM848126521', '654321', 'D', '848126521', 'mucavel61@gmail.com', 0, '19-01-24 08:19:17', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Psicologia/Pedagogia', '2', 'Licenciado', '', '', 'Parcial', 'Educacao para Saude ', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('46d9a18f6ca825f645bafb9c6e4f3fcb', 'Marquezine Alves Lugela', 'Camacho', '28/10/1992', 'M', 'Oscar Lugela Camacho e Esmenia Alves Rafael', 'BI', '110101009507J', 'Polana Canico B', 'Solteiro', 'MC842127260', '123456', 'D', '842127260', 'marquizinealvescamacho@gmail.com', 0, '18-11-02 01:28:36', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Educacao Ambiental ', '2', 'Licenciado', '', '', 'Parcial', 'Gestao Ambiental e Recursos Naturais', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('51e9d1cd08fcfa24fd5822f1ed945241', 'Tania', 'Pires', '02/07/1999', 'F', 'Alberto Fernandis de Oliveira e Saquina Satar', 'BI', '02299828F', 'Fomento', 'Solteiro', 'TP842039385', '654321', 'D', '842039385', 'tania@gmail.com', 0, '19-01-24 08:19:55', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/thWQQ07POL.jpg', 'Engenharia', '5', 'Licenciado', '', 'sim', 'Pemanente', 'Programacao, Matematica, Estatistica', '/ifoptec/uploads/anexos/Cursos.docx', '/ifoptec/uploads/anexos/Cursos.docx', '/ifoptec/uploads/anexos/Cursos.docx'),
('531e515670894faba33cbc7402e9773f', 'Joaquim Alberto Tivane', 'Quive', '18/04/1979', 'M', 'Alberto Tivane Quive e Teresa Manhique', 'BI', '110101207149B', '', 'Solteiro', 'JQ829862522', '654321', 'D', '829862522', 'quive.joaquim@gmail.com', 0, '18-11-26 12:42:30', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Engenharia Civil', '2', '', 'SIM', 'CBT', 'Parcial', 'Saneamento Basico ,  Desenho de Construcao, Mecanica de Construcoes', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('60ee0f67375a4678b01453489dfd6522', 'Neusa Marilia Gomes ', 'Goncalves', '02/10/1988', 'F', 'Mateus Airone Goncalves e Cutasse Jose Gomes', 'BI', '100101270917P', 'Boane', 'Solteiro', 'NG845890740', '654321', 'D', '845890740', 'neusagoncalves45@gmail.com', 0, '19-01-24 08:20:50', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Gestao de Recursos Humanos', '2', '', 'NAO', '', '', '', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('67afaff05d4e5d0ff713444fa3921366', 'Ricardo Jamissiano', 'Nhachengo', '27/03/1989', 'M', 'Jamissiano Nhachengo e Teresa Amosse Maringula', 'BI', '110102174613B', '', 'Solteiro', 'RN843743448', '654321', 'D', '843743448', 'ric.nhachengo@gmail.com', 1, '19-01-25 08:43:37', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Fisica Aplicada', '7', 'Licenciado', 'SIM', 'CBT', 'Parcial', 'Fisica', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('7011cd0da08355245a4c270f7c74d101', 'Benigna Paulo ', 'Nhantsale', '05/10/1970', 'F', 'Paulo Maceful Nhantsale e Diolinda Elias Nhamuneque', 'BI', '110100571332F', 'MatolaC', 'Solteiro', 'BN844113988', '123456', 'D', '844113988', '', 0, '18-11-01 01:53:35', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Administracao Publica', '2', 'Licenciado', 'NAO', '', 'Parcial', 'Demografia Estatistica Sanitaria ', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('78251e12f11594b5554f7bbe7613fecb', 'Maria Carmita', 'Sambo', '30/09/1989', 'F', 'Carlos Silva Sambo e Mequelina Estevao Motumbene', 'BI', '100100901375M', 'Rua da Mozal', 'Solteiro', 'MS843915010', '123456', 'D', '843915010', 'mcarmitasambo@gmail.com', 1, '25-10-2018 15:10', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Gestao de Recursos Humanos', '', '', 'NAO', '', 'Parcial', '', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('7839ca31408eeb3da07bfcac89af8e38', 'Diogo Frederico', 'Paulo', '29/08/1960', 'M', 'Frederico Paulo e Joana Diogo Maciel Goca', 'BI', '110100011695N', '25 de Junho', 'Solteiro', 'DP849209964', '654321', 'D', '849209964', 'diogofpaulo@gmail.com', 0, '18-12-09 06:51:22', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Direcao Estrategica de DEsenvolvimento de Saude', '30', '', '', 'CBT', 'Parcial', 'Vigilancia Epidemologica, Diagnostico Comunitario', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('7b2fededb71f8e7cb026ffa0ce300be7', 'Paulino Francisco ', 'Chitoquisso', '03/10/1978', 'M', 'Luciano Chitoquisso e Meri Francisco', 'BI', '110100533045C', 'Matola Rio', 'Solteiro', 'PC823079046', '123456', 'D', '823079046', 'paul.chitoquico@gmail.com', 1, '23-10-2018 16:10', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Informatica', '2', 'Licenciado', 'SIM', 'CBT', 'Parcial', 'Auditoria e Seguranca de Sistemas', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('7ff547e06eb337908476064dd12bb77c', 'Edson Fernando ', 'Zandamela', '31/03/1992', 'M', 'Fernando Zandamela e Judite Beliche', 'BI', '110100011052J', '', 'Solteiro', 'EZ845123530', '654321', 'D', '845123530', 'edsnedsn92@gmail.com', 0, '18-11-26 01:48:38', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Administracao e Gestao Hospitalar', '2', 'Licenciado', '', '', '', 'Indicadores e Planos de Saude', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('8257dcc2bc24ba39b112bb751d71265a', 'Floriana Eusebio ', 'Chibante', '13/04/1994', 'F', 'Eusebio Chibante Siqueira e Sabina Zacarias Chibante', 'BI', '110100067940N', 'Sommarchield', 'Solteiro', 'FC828208847', '123456', 'D', '828208847', 'florchibante@gmail.com', 0, '18-11-02 01:41:39', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Ciencias Juridicas economicas-Empresarial', '1', 'Licenciado', '', '', 'Parcial', 'Direito Processual do Trabalho', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('8d9b1d35598537a7f85c90c94e66017c', 'Ilote Fernando Armando ', 'Tualufo', '01/02/1996', 'M', 'Arnaldo Lucas Tualufo e Ana Foquisso Peichisso', 'BI', '110101083809N', 'Chamanculo B', 'Solteiro', 'IT846427248', 'dyndadynda', 'D', '846427248', 'ilotetualufo@gmail.com', 1, '18-11-26 12:31:09', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Construcao de Edificios', '2', 'Medio', 'SIM', 'CBT', '', 'Arquitetura e Desenho Tecnico', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('94e606dc359309bad9826cbc4106feeb', 'Ana Maria Julana ', 'Gomane', '22/04/1988', 'F', 'Januario Mutondo e Juliana Diogo', 'BI', '110302269660C', 'AV. Karl Max', 'Solteiro', 'AG840265597', '123456', 'D', '840265597', 'anamariamutundo@gmail.com', 1, '19-01-24 08:07:44', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Saude Publica', '2', 'Licenciado', '', '', '', 'Diagnostico Comunitario', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('951ffd9662f3fdfd517d40ef5cbef4bb', 'Irenre Roda Alberto ', 'Juliao', '26/20/1979', 'F', 'Teixeira Razao Alberto Juliao e  Zetuna Foquisso Mucambe ', 'BI', '110500858741B', 'Inhagoi A', 'Solteiro', 'IJ840116088', '123456', 'D', '840116088', '', 1, '23-10-2018 16:10', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Ciencias Religiosas', '2', 'Licenciado', 'SIM', 'CBT', 'Parcial', 'Tecnica de Expressao, Sociologia do Trabalho', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('981bfc87415f32b2a1afa71d5203bc86', 'Abel Joseph ', 'Manhique', '19/04/1990', 'M', 'Joseph Manhique e Gloria Paulo Deve', 'BI', '110100269087S', 'Matola B', 'Solteiro', 'AM847221204', '123456', 'D', '847221204', 'abelmanhique@gmail.com', 1, '25-10-2018 14:10', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Petroleo e Gas', '2', '', 'NAO', '', '', 'Direito de Petroleo e Gas, Praticas em Petroleo e Gas', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('9caf0162a9b2e3f0fdf3e0d3db10f8a8', 'Lewis Domingos ', 'Guibunda', '13/12/1985', 'M', 'Domingos Rolario Guibunda e Lina Correia Ganancio', 'BI', '110104577024Q', 'Fomento', 'Solteiro', 'LG847349999', '123456', 'D', '847349999', 'lewisdmngs1@gmail.com', 0, '18-11-06 12:00:57', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Engenharia Eletronica', '4', 'Licenciado', 'SIM', 'CBT', 'Parcial', 'Instrumentacao Industrial', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('a1f1e6bcaa0866bedbbbe0f3dae76d66', 'Joaquina', 'Cossa', '19/09/1990', 'F', 'Augusto Valente Cossa e Violante Jose Loforte', 'BI', '1101006158960', 'Boane', 'Solteiro', 'JC845734342', '23456', 'D', '845734342', '', 0, '19-01-24 08:18:24', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Gestao de Recursos Humanos', '', '', '', '', '', '', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('ade2c7b022d26f27740197eae66f00be', 'Defim', 'Franca', '23/05/1979', 'M', 'Joao Bambo Franca e Elisa Chivite', 'BI', '100101910721F', 'Boane', 'Solteiro', 'DF842569333', '654321', 'D', '842569333', 'fininhofranca@yahoo.com.br', 0, '18-11-26 12:48:52', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Administracao Publica', '6', 'Licenciado', 'SIM', 'CBT, Elaboracao do Plano A. Ensino Superior', 'Parcial', 'Geografia, Historia, Direito Administrativo, Teoria Geral do Direito e Comunicacao Administrativa.', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('be03a6ccd9924e46b4ae4f23b2f67832', 'Hélder', 'Timba', '14/05/1985', 'M', 'Joao Vicente Pires e Teresa Emilia dos Santos', 'BI', '111233114P', 'Rua B', 'Casado', 'HT82123456', '123456', 'D', '82123456', 'suporte@interactive.co.mz', 0, '18-09-19 10:52:40', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Teste', '5', 'Licenciado', 'SIM', 'Teste', 'Parcial', 'Teste', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('c9f3a6be55b10c602c0f169f23cb7861', 'Julio Douglas', 'Mandlaze', '01/07/1984', 'M', 'Julio Mandlaze e Laura Sitoe', 'BI', '110102499740A', 'Rua Anguane', 'Solteiro', 'JM827192589', '123456', 'D', '827192589', 'jdmandlhaze@gmail.com', 0, '18-11-21 06:49:14', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Geologia', '2', 'Licenciado', 'NAO', '', 'Parcial', 'Refinacao e Processamento', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('ccbcc204ff4263789c91f6824922954a', 'Amade', ' Abudo', '01/01/1985', 'M', 'Abudo Assane e Charima Selemane', 'BI', '110100278217Q', '', 'Solteiro', 'AA824778870', '196808', 'D', '824778870', 'amade.abudo@gmail.com', 0, '19-01-19 08:49:01', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Direito Tributario', '5', '', '', 'CBT', 'Parcial', 'Tecnologia de Mercadoria', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('d0112b6a10836b57aa8fa66fd20e4fd5', 'Celso Jose', 'Maibasse', '14/02/1983', 'M', 'Jose dos Santos Ruben Maibasse e Maria Alice da Conceicao Fumo', 'BI', '100100118003B', 'Machava ', 'Solteiro', 'CM848355758', '654321', 'D', '848355758', 'celsiomaibasse@gmail.com', 0, '18-11-25 10:23:20', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Matematica', '11', 'Licenciado', '', '', 'Parcial', 'Estatistica Aplicada e Probabilidade, Matematica', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('deda481283289e5561ed18cfe351b50e', 'Fernando', 'Mabunda', '13/05/1988', 'M', 'Elisa Nhantumbo e Caetano Zandamele', 'CARTA DE CONDUÃ‡ÃƒO', '02299828F', 'Bairro do Ndavela', 'Solteiro', 'FM821759960', '123456', 'D', '821759960', 'afonsomazivila@gmail.com', 1, '18-10-19 10:50:03', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Engenharia', '5', 'Licenciado', 'SIM', 'CBT', '', 'Programacao, Matematica,.......', '/ifoptec/uploads/anexos/Cursos.docx', '/ifoptec/uploads/anexos/Cursos.docx', '/ifoptec/uploads/anexos/Cursos.docx'),
('e245a29cc09b19c395067c0c4558f5dc', 'Clara Muniz', 'Maique', '08/06/1988', 'F', 'Muniz Joaquim Maique e Argentina Jose Manganhela', 'BI', '110105164406P', 'Matlemele', 'Solteiro', 'CM840427326', '080688', 'D', '840427326', 'clara.m.maique@gmail.com', 1, '18-11-23 11:29:48', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Zotecnia', '5', 'Licenciado', 'SIM', 'CBT', 'Parcial', 'Quimica Organica', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('e2a3b1076d2145ec5ea2c9595df2c807', 'Domingos Joao', 'Bila', '17/12/1960', 'M', 'Joao Bai Bila e Musseu Sitole', 'BI', '110102267408', 'Laulane', 'Solteiro', 'DB845103784', '654321', 'D', '845103784', '', 0, '18-11-25 10:28:15', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Gestao e Financas', '35', 'Licenciado', '', 'CBT', '', 'Gestao Geral', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('e5d97aeb11a2e6e85a71dcb60ad61ffa', 'Toberto Lembranca ', 'Matavele', '09/05/1979', 'M', 'Lembranca Francisco Matavele e Julia Alberto Langa', 'BI', '110101459177C', 'Vlademir Lenine', 'Solteiro', 'TM845955297', '123456', 'D', '845955297', 'tobertolm@gmail.com', 1, '25-10-2018 14:10', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Enfermagem', '2', 'Licenciado', '', '', 'Parcial', 'Humanizacao e Atendimento', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('f094b6d708d36170a7f67befbe38cf08', 'Miguel Timoteo ', 'Ambrosio Manjate', '20/09/1990', 'M', 'Ambrosio Eduardo Manjate e Pascoa Raimundo Manjate', 'BI', '100100204981N', 'Fomento', 'Solteiro', 'MA844830446', '123456', 'D', '844830446', 'miguelmmajamte@gmail.com', 1, '23-10-2018 15:10', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Informatica', '', 'Bacharel', 'NAO', '', '', 'Redes  de Computadores', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('f4e952f3bbd561fa4faa8fe68aca059d', 'Celio Martins Pequinino', 'Muando', '26/10/1986', 'M', 'Armando Pequenino Muando e Maria Jose Uana', 'BI', '110102502360A', 'Mozal', 'Solteiro', 'CM840145994', '244444', 'D', '840145994', 'wallacecelio@gmail.com', 1, '18-11-27 08:45:11', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Direito e Historia', '10', 'Licenciado', 'SIM', 'Formacao Psicopedagogica para Docentes do Ensino Superior, CBT', 'Parcial', 'Contencioso Administrativo e Legislacao da Funcao Publica', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('f633dc82f3a23c7ca8eb7890e01a07a8', 'Lauro Germano de Jesus Fernandes Jestala', 'Phiry', '12/12/1981', 'M', 'Jestala Phiry e Berta Armando Jose Fernandes', 'BI', '110101833655F', 'Machava Sede', 'Solteiro', 'LP847937060', '654321', 'D', '847937060', '', 0, '18-11-27 08:01:58', 'Administrador ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Ensino de Filosofia', '2', 'Licenciado', 'NAO', '', 'Parcial', 'Filosofia do Direito e Hermeneutica Juridica', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('fbde81585fbcf2faf55070a477bea73f', 'Telma Manuela ', 'Bahane', '03/11/1969', 'F', 'Joao Mauel Bahane e Delfina Simao', 'BI', '100104076778S', 'Liberdade', 'Solteiro', 'TB844489439', '654321', 'D', '844489439', '', 1, '19-01-05 01:31:13', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Contabilidade e Auditoria', '2', 'Licenciado', 'SIM', 'CBT', '', 'Planeamento Financeiro e Orcamento', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/'),
('fe4ab0cfc481aa6c160f67de0eefe678', 'Josefa Jose', 'Manjate', '12/02/1983', 'F', 'Jose Simiao Manjate e Hermenengilda Diolinda', 'BI', '100101222178P', 'Beluluane', 'Solteiro', 'JM847537003', '123456', 'D', '847537003', '', 1, '25-10-2018 14:10', ' ', '-', '-', '-', '/ifoptec/uploads/fotos/', 'Gestao Financeira', '7', 'Licenciado', '', '', '', 'Gestao Geral, Planeamento e Financas Empresariais', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/', '/ifoptec/uploads/anexos/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indexes for table `curso_disciplina`
--
ALTER TABLE `curso_disciplina`
  ADD PRIMARY KEY (`id_curso_disc`);

--
-- Indexes for table `curso_docente`
--
ALTER TABLE `curso_docente`
  ADD PRIMARY KEY (`id_curso_doc`);

--
-- Indexes for table `curso_preco`
--
ALTER TABLE `curso_preco`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`);

--
-- Indexes for table `emprestimo_livro`
--
ALTER TABLE `emprestimo_livro`
  ADD PRIMARY KEY (`id_empLivros`);

--
-- Indexes for table `estudante`
--
ALTER TABLE `estudante`
  ADD PRIMARY KEY (`id_est`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id_livro`);

--
-- Indexes for table `mensalidade`
--
ALTER TABLE `mensalidade`
  ADD PRIMARY KEY (`id_mensalidade`),
  ADD KEY `fk_taxa_multas_idx` (`taxa_multa`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id_notas`);

--
-- Indexes for table `taxas`
--
ALTER TABLE `taxas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taxa_multa_UNIQUE` (`taxa_multa`),
  ADD UNIQUE KEY `data_UNIQUE` (`data`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`);

--
-- Indexes for table `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indexes for table `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`id_util`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curso_disciplina`
--
ALTER TABLE `curso_disciplina`
  MODIFY `id_curso_disc` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `emprestimo_livro`
--
ALTER TABLE `emprestimo_livro`
  MODIFY `id_empLivros` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `id_livro` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `id_notas` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `taxas`
--
ALTER TABLE `taxas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `mensalidade`
--
ALTER TABLE `mensalidade`
  ADD CONSTRAINT `fk_taxa_multas` FOREIGN KEY (`taxa_multa`) REFERENCES `taxas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
