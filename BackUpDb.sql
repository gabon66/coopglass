
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-04-2016 a las 14:43:49
-- Versión del servidor: 10.0.20-MariaDB
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u983385565_coop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `descript` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `img`, `type`, `ranking`, `descript`) VALUES
(6, 'globo', '1_min.JPG', NULL, NULL, '10 x 18 cm  rojo negro verde fucsia blanco'),
(7, 'reja barroco', '2_min.JPG', NULL, NULL, 'boca 13 x 28 cm'),
(8, '.piramide color', '5_min.JPG', NULL, NULL, ''),
(9, 'irico negro', 'DSC_0304.JPG', NULL, NULL, ''),
(10, 'julia barroco', '7_min.JPG', NULL, NULL, ''),
(11, 'potiche color', '8_min.JPG', NULL, NULL, ''),
(12, 'cuadrado', 'DSC_0280.JPG', NULL, NULL, '18x18 x 5 cm alt'),
(13, 'cuadrado', 'DSC_0283.JPG', NULL, NULL, '15x15x10cm alt'),
(14, 'cuadrado', 'DSC_0284.JPG', NULL, NULL, '15x15 15 alt'),
(15, 'platos pizza', 'DSC_0303.JPG', NULL, NULL, ''),
(16, 'jarron grande color', 'DSC_0279.JPG', NULL, NULL, '14cm boca x 30 cm alt'),
(18, 'pc terrarios', 'DSC_0309.JPG', NULL, NULL, '12 x 25  boca lateral'),
(19, 'gota chica', 'DSC_0308.JPG', NULL, NULL, ''),
(20, 'licorera barroco', 'DSC_0296.JPG', NULL, NULL, ''),
(21, 'maceta 4 color', 'DSC_0288.JPG', NULL, NULL, '18 cm boca  x 16 cm alt'),
(22, 'caja c 6 copas vino', 'DSC_0298.JPG', NULL, NULL, 'copa segustacion'),
(25, 'susp mini susp decanter g', 'floreros008.jpg', NULL, NULL, 'suspiro 30 cm,'),
(26, 'cilindros', 'floreros006.jpg', NULL, NULL, '12x30   12x40  12 x 50'),
(27, 'macetas', 'florertelefono439.jpg', NULL, NULL, 'mac 1  9x8cm alt  mac chica y grande'),
(28, 'candelabros', 'floreros260.jpg', NULL, NULL, ''),
(30, 'vasos bombe y copas', 'florertelefono183.jpg', NULL, NULL, ''),
(31, 'bases y cuadrado', 'florertelefono187.jpg', NULL, NULL, 'base 15 boca x 10 alt    cuadrado 10x10'),
(32, 'nuevo colores', 'florertelefono412.jpg', NULL, NULL, ''),
(33, 'santos  conico alto color', 'florertelefono132.jpg', NULL, NULL, ''),
(34, 'copon y conico rojo', 'florertelefono131.jpg', NULL, NULL, ''),
(35, 'boinas altas', 'florertelefono056.jpg', NULL, NULL, 'boinas de 15 cm'),
(36, 'hexagonal proveta 20 tubo 25', 'florertelefono049.jpg', NULL, NULL, ''),
(37, 'infinitos', 'florertelefono 041.jpg', NULL, NULL, '40cm y de 30cm  van hasta 1mts alt'),
(38, 'macetas c/aujeros', 'florertelefono119.jpg', NULL, NULL, 'especial drenaje para armar orquideas o plantas'),
(39, 'cuadrados y rectangulos', 'florertelefono037.jpg', NULL, NULL, ''),
(40, 'tubos', 'florertelefono036.jpg', NULL, NULL, 'boca 6 cmx 20cm,23,30  de alt'),
(41, 'conico invertido jade', 'florertelefono024.jpg', NULL, NULL, ''),
(42, 'colet', 'florertelefono021.jpg', NULL, NULL, ''),
(43, 'satinados', 'florertelefono020.jpg', NULL, NULL, ''),
(44, '500 grande', 'florertelefono006.jpg', NULL, NULL, ''),
(45, 'bizcochera', 'floreros242.jpg', NULL, NULL, ''),
(46, 'bandeja pez', 'floreros262.jpg', NULL, NULL, ''),
(47, 'platos varios color', 'floreros259.jpg', NULL, NULL, ''),
(48, 'cilindros', 'IMG_20160312_120339.jpg', NULL, NULL, '17x30  17x40  17x50'),
(49, 'talon alto,lechero', 'IMG_20160312_122736.jpg', NULL, NULL, ''),
(50, 'victoria', 'IMG_20160312_115810.jpg', NULL, NULL, ''),
(51, 'talon alto,lechero', 'IMG_20160312_122810.jpg', NULL, NULL, ''),
(52, 'base,slim,paris grande', 'IMG_20160312_121916.jpg', NULL, NULL, ''),
(53, 'yani,irico,satelite', 'IMG_20160312_123316.jpg', NULL, NULL, '12 boca x20 alt  2)9x22 3)  13 x 32'),
(55, 'mercedes grande', 'image_coop_glass_1.jpg', NULL, NULL, 'naranja  16 cm boca x45 cm altura'),
(62, 'florero tipo triangulo grande', 'image_coop_glass_8.jpg', NULL, NULL, 'de base 12 cm  alt 60 cm'),
(59, 'Copon grande  tipo cognac', 'image_coop_glass_5.jpg', NULL, NULL, 'boca 11 cm  x   22 alt'),
(61, 'FABIANA', 'image_coop_glass_7.jpg', NULL, NULL, 'boca 13 cm  x  50 cm alt'),
(63, 'conico uzzi  anfora', 'image_coop_glass_9.jpg', NULL, NULL, '8 cm base  23 cm alt ,10bx23alt, 9 x 25 alt'),
(111, 'vaso pipa SWEEEP', 'image_coop_glass_57.jpg', NULL, NULL, ''),
(114, 'provetas  tubos c base', 'image_coop_glass_60.jpg', NULL, NULL, 'provet  20 com  25cm 27 cm  t/base 28 cm'),
(113, 'pata de elefante  o infinito', 'image_coop_glass_59.jpg', NULL, NULL, 'izquierda  0,70   otro    0,90'),
(115, '', 'image_coop_glass_61.jpg', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TABLE 1`
--

CREATE TABLE IF NOT EXISTS `TABLE 1` (
  `COL 1` varchar(33) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TABLE 1`
--

INSERT INTO `TABLE 1` (`COL 1`) VALUES
('id;name;img;type;ranking;descript'),
('6;";1_min.JPG;0;0;"'),
('7;";2_min.JPG;0;0;"'),
('8;";5_min.JPG;0;0;"'),
('9;";DSC_0304.JPG;0;0;"'),
('10;";7_min.JPG;0;0;"'),
('11;";8_min.JPG;0;0;"'),
('12;";DSC_0280.JPG;0;0;"'),
('13;";DSC_0283.JPG;0;0;"'),
('14;";DSC_0284.JPG;0;0;"'),
('15;";DSC_0303.JPG;0;0;"'),
('16;";DSC_0279.JPG;0;0;"'),
('17;";DSC_0278.JPG;0;0;"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descript` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitors`
--

CREATE TABLE IF NOT EXISTS `visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `dir` varchar(100) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
