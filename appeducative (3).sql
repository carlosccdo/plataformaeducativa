-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-01-2015 a las 20:15:12
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `appeducative`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
`id` int(11) NOT NULL,
  `ruta` varchar(100) NOT NULL,
  `valor` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `captcha`
--

INSERT INTO `captcha` (`id`, `ruta`, `valor`) VALUES
(1, 'captcha/a.jpg', '6ne3'),
(2, 'captcha/b.jpg', 'e5hb'),
(3, 'captcha/c.jpg\r\n', 'k4ez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro`
--

CREATE TABLE IF NOT EXISTS `centro` (
`idcentro` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `poblacion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `centro`
--

INSERT INTO `centro` (`idcentro`, `nombre`, `pais`, `poblacion`, `ciudad`, `telefono`, `correo`) VALUES
(1, 'centro1', 'españa', 'madrid', 'madrid', '911', 'carlos'),
(2, 'centro2', 'españa', 'madrid', 'madrid', '912', 'javier'),
(3, 'centro3', 'españa', 'madrid', 'madrid', '913', 'alejandra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
`idchat` int(11) NOT NULL,
  `idemisor` int(11) NOT NULL,
  `idreceptor` int(11) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`idchat`, `idemisor`, `idreceptor`, `mensaje`) VALUES
(1, 95, 100, 'gili'),
(2, 95, 100, 'gsrsgrg'),
(3, 95, 0, 'hello'),
(4, 95, 102, 'hello'),
(5, 95, 102, 'h'),
(6, 95, 102, 'k'),
(7, 95, 94, 'f'),
(8, 95, 95, 'j'),
(9, 95, 94, 'kn'),
(10, 95, 99, 'jl'),
(11, 95, 111, 'lll'),
(12, 95, 94, 'j'),
(13, 95, 0, 'j'),
(14, 95, 108, 'k'),
(15, 95, 95, 'k'),
(16, 95, 99, 'hla'),
(17, 95, 0, 'j'),
(18, 95, 0, 'u'),
(19, 95, 95, ''),
(20, 95, 95, 'k'),
(21, 95, 95, 'ug'),
(22, 95, 95, 'k'),
(23, 95, 99, 'jbguky'),
(24, 95, 95, 'h'),
(25, 95, 123, 'i'),
(26, 95, 0, 'k'),
(27, 95, 95, '5e6gtwy'),
(28, 95, 95, '4w6y'),
(29, 95, 95, 'k'),
(30, 95, 95, 'fnh'),
(31, 95, 94, ''),
(32, 95, 99, 'a'),
(33, 95, 142, 'kkk'),
(34, 95, 143, 'hola grupon'),
(35, 95, 95, 'pip'),
(36, 95, 145, 'mmm'),
(37, 95, 145, ' jjjl'),
(38, 95, 95, 'm'),
(39, 99, 95, 'll'),
(40, 99, 95, 'nkn'),
(41, 99, 94, 'nkk'),
(42, 99, 0, 'jjj'),
(43, 99, 0, 'kjj'),
(44, 99, 0, 'kk'),
(45, 99, 0, 'mm'),
(46, 99, 0, 'm'),
(47, 99, 0, 'khb'),
(48, 99, 0, 'ub'),
(49, 99, 0, 'jl'),
(50, 99, 0, 'nn'),
(51, 99, 0, 'nn'),
(52, 99, 0, 'nnk'),
(53, 99, 0, 'm'),
(54, 99, 0, 'k'),
(55, 99, 0, 'h'),
(56, 99, 94, 'j'),
(57, 99, 95, 'l'),
(58, 99, 94, 'll'),
(59, 99, 94, 'fyty'),
(60, 99, 95, 'yrt'),
(61, 99, 95, 'jhy'),
(62, 95, 99, 'kn'),
(63, 95, 94, 'm'),
(64, 95, 94, ''),
(65, 95, 147, 'hola nompru'),
(66, 95, 99, 'bb'),
(67, 95, 99, 'yguy'),
(68, 95, 99, 'jb'),
(69, 95, 99, 'nmk'),
(70, 99, 95, 'm'),
(71, 99, 99, 'k'),
(72, 99, 95, 'nn'),
(73, 99, 95, 'n mm.'),
(74, 99, 94, 'bn'),
(75, 99, 94, ''),
(76, 95, 95, 'klr'),
(77, 95, 94, 'lk'),
(78, 95, 99, 'n'),
(79, 95, 157, 'nhz'),
(80, 99, 95, 'kkkkkkkkk'),
(81, 99, 159, 'k'),
(82, 95, 99, 'ñmbfñl'),
(83, 95, 187, 'hjrt'),
(84, 95, 187, 'ht'),
(85, 95, 196, 'hola'),
(86, 95, 193, 'hola4'),
(87, 95, 192, 'hola3'),
(88, 99, 199, 'adios'),
(89, 99, 95, 'hola'),
(90, 95, 193, 'k'),
(91, 95, 191, 'ñk'),
(92, 95, 94, 'lk'),
(93, 95, 195, 'j'),
(94, 95, 191, 'k'),
(95, 95, 190, 'i'),
(96, 95, 205, 'k'),
(97, 95, 207, 'k'),
(98, 95, 207, ''),
(99, 95, 207, ''),
(100, 95, 207, 'k'),
(101, 95, 196, ''),
(102, 95, 196, 'm'),
(103, 95, 195, 'm'),
(104, 95, 192, 'p'),
(105, 95, 94, 'jh'),
(106, 95, 193, 'm'),
(107, 95, 99, 'k'),
(108, 95, 196, 'j');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email`
--

CREATE TABLE IF NOT EXISTS `email` (
`idemail` int(11) NOT NULL,
  `idusuarioemisor` int(11) DEFAULT NULL,
  `idusuarioreceptor` int(11) DEFAULT NULL,
  `mensaje` text,
  `asunto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes`
--

CREATE TABLE IF NOT EXISTS `examenes` (
`idexamen` int(11) NOT NULL,
  `denominacion` varchar(45) DEFAULT NULL,
  `idprofe` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `examenes`
--

INSERT INTO `examenes` (`idexamen`, `denominacion`, `idprofe`) VALUES
(1, 'f', 66),
(2, 'ah', 66),
(3, 'r', 66),
(4, 'rt', 66),
(5, 'ff', 66),
(6, 'lj', 66),
(7, 'racismo', 66),
(8, 'e', 66),
(9, '2re', 66),
(10, 'wef', 66),
(11, 'we', 66),
(12, 'j', 66),
(13, 'h', 66),
(14, 'westgres', 94),
(15, 'dfhbfcn', 94),
(16, 'erhydee', 94),
(17, 'fdhrftgh', 94),
(18, '44', 94),
(19, 'entrevista 1', 94),
(20, 'lenguaje', 94),
(21, 'f2', 94),
(22, 'prutitulo', 94);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
`idfeedback` int(11) NOT NULL,
  `idemisorfeed` int(11) DEFAULT NULL,
  `idreceptorfeed` int(11) DEFAULT NULL,
  `mensaje` text,
  `titulo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedbacktiporespuestapropuesta`
--

CREATE TABLE IF NOT EXISTS `feedbacktiporespuestapropuesta` (
`idfeedbacktiporespuestapropuesta` int(11) NOT NULL,
  `idtiporespuestapropuesta` int(11) DEFAULT NULL,
  `texto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Volcado de datos para la tabla `feedbacktiporespuestapropuesta`
--

INSERT INTO `feedbacktiporespuestapropuesta` (`idfeedbacktiporespuestapropuesta`, `idtiporespuestapropuesta`, `texto`) VALUES
(1, 1, 'r'),
(2, 2, 'r'),
(3, 3, 'g'),
(4, 4, 'etg'),
(5, 5, 'b'),
(6, 6, 'bg'),
(7, 7, 'feback1.1'),
(8, 8, 'fedbck1.2'),
(9, 9, 'feba1.3'),
(10, 10, 'fed2.1'),
(11, 11, 'fed2.2'),
(12, 12, 'fed2.3'),
(13, 13, 'y'),
(14, 14, 'h'),
(15, 15, 'i'),
(16, 16, 's d'),
(17, 17, 'wrf'),
(18, 18, 'etb'),
(19, 19, 'er'),
(20, 20, 'rt'),
(21, 21, 'bt'),
(22, 22, 'er'),
(23, 23, 'eg'),
(24, 24, 'eg'),
(25, 25, 'thbdt'),
(26, 26, 'gthbd'),
(27, 27, 'htfjt'),
(28, 28, 'hfg'),
(29, 29, 'fgh'),
(30, 30, 'h'),
(31, 31, 'tfh'),
(32, 32, 'tgjf'),
(33, 33, 'gfh'),
(34, 34, 'nghmxjx'),
(35, 35, 'fdg'),
(36, 36, 'gsdg'),
(37, 37, 'recuerda penarte'),
(38, 38, 'oi'),
(39, 39, 'j'),
(40, 40, 'kj'),
(41, 41, 'l'),
(42, 42, 'kl'),
(43, 43, 'mo'),
(44, 44, '´l'),
(45, 45, 'lj '),
(46, 46, 'coherencia y  ohesión'),
(47, 47, 'No olvidar aspectos esenciales en una entrevista'),
(48, 48, 'Otros recursos'),
(49, 49, 'formatos, diseño'),
(50, 50, 'Es suficientemente original'),
(51, 51, 'Está compensado'),
(52, 52, 'diversidad de formatos'),
(53, 53, 'formatos, diseño'),
(54, 54, 'fed1 recursof2'),
(55, 55, 'fed2 de recurso 2 de f2 '),
(56, 56, 'fed2 de recurso 2 de f2 '),
(57, 57, '1'),
(58, 58, '2'),
(59, 59, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
`idforumpropietario` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Volcado de datos para la tabla `forum`
--

INSERT INTO `forum` (`idforumpropietario`, `idusuario`, `idgrupo`) VALUES
(3, 95, 1189),
(4, 95, 1190),
(12, 95, 1191),
(82, 95, 1278),
(83, 95, 1279),
(84, 99, 1280);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forummensaje`
--

CREATE TABLE IF NOT EXISTS `forummensaje` (
`idforummensaje` int(11) NOT NULL,
  `idforum` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `mensaje` text,
  `rutaimg` varchar(100) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `subtitulo` varchar(55) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Volcado de datos para la tabla `forummensaje`
--

INSERT INTO `forummensaje` (`idforummensaje`, `idforum`, `idusuario`, `mensaje`, `rutaimg`, `titulo`, `subtitulo`, `fecha`) VALUES
(122, 12, 99, 'm', 'img/blogImg/', 'kKk', 'l', '2014-12-25 17:21:51'),
(136, 84, 99, 'h', 'img/blogImg/', 'hola', 'h', '2014-12-27 02:09:38'),
(147, 91, 95, 'kj', 'img/blogImg/', 'g', 'r', '2014-12-30 22:49:10'),
(148, 91, 95, '', 'img/blogImg/', '', '', '2014-12-30 22:49:18'),
(149, 91, 95, '', 'img/blogImg/399049_10150538180257619_2117352107_n.jpg', 'h', 'g', '2014-12-30 22:49:38'),
(151, 83, 95, '', 'img/blogImg/', '', '', '2014-12-30 23:52:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
`idgrupo` int(11) NOT NULL,
  `nombregrupo` varchar(20) NOT NULL,
  `idcentro` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1291 ;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`idgrupo`, `nombregrupo`, `idcentro`) VALUES
(1189, 'grupo 1', 2),
(1190, 'grupo 2', 2),
(1191, 'grupo 3', 2),
(1278, 'grupo 4', 2),
(1279, 'grupo 5', 2),
(1280, 'grupo 6', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupointegrantes`
--

CREATE TABLE IF NOT EXISTS `grupointegrantes` (
`idgrupointegrante` int(11) NOT NULL,
  `idgrupo` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1436 ;

--
-- Volcado de datos para la tabla `grupointegrantes`
--

INSERT INTO `grupointegrantes` (`idgrupointegrante`, `idgrupo`, `idusuario`) VALUES
(1219, 1189, 95),
(1222, 1190, 95),
(1225, 1191, 95),
(1227, 1191, 94),
(1228, 1191, 99),
(1264, 1189, 123),
(1297, 1189, 130),
(1364, 1190, 162),
(1368, 1189, 165),
(1369, 1189, 166),
(1401, 1278, 95),
(1402, 1279, 95),
(1403, 1278, 190),
(1404, 1278, 191),
(1405, 1278, 192),
(1406, 1279, 193),
(1408, 1191, 195),
(1409, 1279, 196),
(1410, 1280, 99),
(1413, 1280, 198),
(1414, 1280, 199),
(1417, 1279, 201);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntacuestionario`
--

CREATE TABLE IF NOT EXISTS `preguntacuestionario` (
`idpregunta` int(11) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `pregunta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
`idpregunta` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `idtema` int(11) NOT NULL,
  `idexamen` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idpregunta`, `pregunta`, `idtema`, `idexamen`) VALUES
(1, 'f', 1, 1),
(2, 'tr', 1, 2),
(3, 'f', 1, 5),
(4, 'pregunta1', 3, 7),
(5, 'pregunta2', 3, 7),
(6, 'e', 3, 8),
(7, 'wf', 3, 9),
(8, 'er', 3, 10),
(9, 'wf', 3, 11),
(10, 'e', 3, 12),
(11, 'ew', 3, 13),
(12, 'dgs', 2, 14),
(13, 'fgh', 3, 15),
(14, 'thytrh', 3, 16),
(15, 'gfnjfg', 3, 17),
(16, 'cuanto años tenes', 4, 18),
(17, 'kj', 4, 18),
(18, 'j ', 4, 18),
(19, 'crea una entrevista', 5, 19),
(20, 'entrevista', 6, 20),
(21, 'cuento', 6, 20),
(22, 'pregunaf2', 1, 21),
(23, '1', 7, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursostiporespuestaofrecida`
--

CREATE TABLE IF NOT EXISTS `recursostiporespuestaofrecida` (
`idrecursostiporespuestaofrecida` int(11) NOT NULL,
  `recursovalor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursostiporespuestapropuesta`
--

CREATE TABLE IF NOT EXISTS `recursostiporespuestapropuesta` (
`idrecursostiporespuestapropuesta` int(11) NOT NULL,
  `recursovalor` varchar(45) DEFAULT NULL,
  `idtiporesppropuesta` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Volcado de datos para la tabla `recursostiporespuestapropuesta`
--

INSERT INTO `recursostiporespuestapropuesta` (`idrecursostiporespuestapropuesta`, `recursovalor`, `idtiporesppropuesta`) VALUES
(1, 'recursosSubidos/2.png', 1),
(2, 'r', 1),
(3, 'recursosSubidos/fondodemo.jpg', 2),
(4, 'recursosSubidos/app.png', 2),
(5, 'r', 2),
(6, 'g', 3),
(7, 'gt', 4),
(8, 'recursosSubidos/ali y yo_copy3.jpg', 5),
(9, 'b', 5),
(10, 'g', 6),
(11, 'recursosSubidos/2.png', 7),
(12, 'recursosSubidos/ali y yo_copy3.jpg', 7),
(13, 'texto1.1', 7),
(14, 'recursosSubidos/app.png', 8),
(15, 'texto1,2', 8),
(16, 'texto1.3', 9),
(17, 'texto2.1', 10),
(18, 'recursosSubidos/ali y yo_copy3.jpg', 11),
(19, 'texto2.2', 11),
(20, 'tex2.3', 12),
(21, 'recursosSubidos/ali y yo_copy3.jpg', 13),
(22, 'y', 13),
(23, 'h', 14),
(24, 'i', 15),
(25, 'sdsd', 16),
(26, 'er', 17),
(27, 'ebt', 18),
(28, 'recursosSubidos/ali y yo_copy3.jpg', 19),
(29, 'eer', 19),
(30, 'tb', 20),
(31, 'trbrtrtb', 21),
(32, 'efr', 22),
(33, 'recursosSubidos/ali y yo_copy3.jpg', 23),
(34, 'er', 23),
(35, 'recursosSubidos/2.png', 24),
(36, 'er', 24),
(37, 'recursosSubidos/2.png', 25),
(38, 'egesdg', 25),
(39, 'thg', 26),
(40, 'trhd', 27),
(41, 'fg', 28),
(42, 'fg', 29),
(43, 'f', 30),
(44, 'recursosSubidos/ali y yo_copy3.jpg', 31),
(45, 'rdhygx', 31),
(46, 'fj', 32),
(47, 'fth', 33),
(48, 'recursosSubidos/fondodemo.jpg', 34),
(49, 'gfnjfg', 34),
(50, 'ghm', 35),
(51, 'sdvgds', 36),
(52, 'recursosSubidos/CRONOGRAMA.docx', 37),
(53, 'los creativo son muh malos', 37),
(54, 'recursosSubidos/NuevoDocumento 1 (4).pdf', 38),
(55, 'recursosSubidos/ciclo-de-vida-de-proyecto-bid', 38),
(56, 'recursosSubidos/doc6921.pdf', 38),
(57, 'lk', 38),
(58, 'kj', 39),
(59, 'l', 40),
(60, 'ñk', 41),
(61, 'k', 42),
(62, 'ñ,', 43),
(63, 'm', 44),
(64, ',ñ ', 45),
(65, 'recursosSubidos/MySQL Script generated by MyS', 46),
(66, 'crea una entrevista', 46),
(67, 'recursosSubidos/CRONOGRAMA.docx', 47),
(68, 'Crea una entrevista que tenga título, fotogra', 47),
(69, 'recursosSubidos/ejerciciossql.docx', 48),
(70, 'Señala los aspectos esenciales de una entrevi', 48),
(71, 'recursosSubidos/ali y yo_copy3.jpg', 49),
(72, 'recursosSubidos/image-slider-1.jpg', 49),
(73, 'Señala el procesimiento a seguir en una entre', 49),
(74, 'recursosSubidos/Nueva imagen.bmp', 50),
(75, 'Crea un cuento', 50),
(76, 'recursosSubidos/2.png', 51),
(77, 'Crea una entrevista original señalando qué no', 51),
(78, 'recursosSubidos/fondodemo.jpg', 52),
(79, 'Señala los elementos elementales en un cuento', 52),
(80, 'recursosSubidos/image-slider-3.jpg', 53),
(81, 'cuento respetando cánones', 53),
(82, 'recursosSubidos/GooglePlus-icon.png', 54),
(83, 'text1\nrecurso f2', 54),
(84, 'tex2 de recurso 2 de f2 ', 55),
(85, 'recursosSubidos/Facebook-icon.png', 56),
(86, 'tex3 de recurso 2 de f2 ', 56),
(87, '1', 57),
(88, '2', 58),
(89, '3', 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacionexamenalumno`
--

CREATE TABLE IF NOT EXISTS `relacionexamenalumno` (
`idrelacion` int(11) NOT NULL,
  `idexamen` int(11) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `relacionexamenalumno`
--

INSERT INTO `relacionexamenalumno` (`idrelacion`, `idexamen`, `idusuario`) VALUES
(1, 17, 101),
(2, 16, 101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacionexamenprofesor`
--

CREATE TABLE IF NOT EXISTS `relacionexamenprofesor` (
`idrelacion` int(11) NOT NULL,
  `idprofesor` int(11) DEFAULT NULL,
  `idexamen` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `relacionexamenprofesor`
--

INSERT INTO `relacionexamenprofesor` (`idrelacion`, `idprofesor`, `idexamen`) VALUES
(1, 95, 17),
(2, 99, 17),
(3, 95, 18),
(4, 95, 20),
(5, 99, 21),
(6, 95, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestaalumno`
--

CREATE TABLE IF NOT EXISTS `respuestaalumno` (
`idrespuestaalumno` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idrecursostiporespuestaofrecida` int(11) NOT NULL,
  `idtiporespuestapropuesta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestascuestionario`
--

CREATE TABLE IF NOT EXISTS `respuestascuestionario` (
`idrespuestascuestionario` int(11) NOT NULL,
  `idemisorcuestionario` int(11) DEFAULT NULL,
  `idpreguntacuestionario` int(11) DEFAULT NULL,
  `respuestaradio` varchar(10) DEFAULT NULL,
  `respuestatext` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablon`
--

CREATE TABLE IF NOT EXISTS `tablon` (
`idtablon` int(11) NOT NULL,
  `idemisor` int(11) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `mensaje` text,
  `titulo` varchar(45) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Volcado de datos para la tabla `tablon`
--

INSERT INTO `tablon` (`idtablon`, `idemisor`, `nombre`, `mensaje`, `titulo`, `fecha`) VALUES
(54, 95, 'm', 'm', 'm', '2015-01-01 18:49:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE IF NOT EXISTS `temas` (
`idtema` int(11) NOT NULL,
  `temas` varchar(45) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`idtema`, `temas`) VALUES
(1, 'f'),
(2, 'h'),
(3, 'diversidad'),
(4, 'tipos de pensamiento'),
(5, 'entrevista'),
(6, 'estilos de aprendizaje'),
(7, 'pru');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiporespuestapropuesta`
--

CREATE TABLE IF NOT EXISTS `tiporespuestapropuesta` (
`idtiporespuesta` int(11) NOT NULL,
  `idpregunta` int(11) NOT NULL,
  `denominacion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Volcado de datos para la tabla `tiporespuestapropuesta`
--

INSERT INTO `tiporespuestapropuesta` (`idtiporespuesta`, `idpregunta`, `denominacion`) VALUES
(1, 1, 'f'),
(2, 1, 'r'),
(3, 1, 'g'),
(4, 2, 'tg'),
(5, 2, 'bg'),
(6, 2, 'bgg'),
(7, 4, 'recurso1.1'),
(8, 4, 'recurso1.2'),
(9, 4, 'recurso1.3'),
(10, 5, 'recurso2.1'),
(11, 5, 'recurso2.2'),
(12, 5, 'recrso2.3'),
(13, 6, 'j'),
(14, 6, 'ji'),
(15, 6, 'lll'),
(16, 7, 'v'),
(17, 7, 'w'),
(18, 7, 'etb'),
(19, 8, 'e'),
(20, 8, 'be'),
(21, 8, 'rtb'),
(22, 11, 'f'),
(23, 11, 'er'),
(24, 11, 't'),
(25, 12, 'gdrsg'),
(26, 12, 'tye'),
(27, 12, 'ryheh'),
(28, 13, 'fghf'),
(29, 13, 'f'),
(30, 13, 'fgbh'),
(31, 14, 'tgjtfj'),
(32, 14, 'ygjnf'),
(33, 14, 'ftghgft'),
(34, 15, 'gfjnfg'),
(35, 15, 'ghkmhg'),
(36, 15, 'dsvfxd'),
(37, 16, 'creativa'),
(38, 16, 'l'),
(39, 16, 'jk'),
(40, 17, 'kj'),
(41, 17, 'jo'),
(42, 17, 'j'),
(43, 18, 'kn'),
(44, 18, 'om'),
(45, 18, 'k'),
(46, 20, 'abstracto amplio'),
(47, 20, 'abstracto estructurado'),
(48, 20, 'concreto amplio'),
(49, 20, 'concreto esquemático'),
(50, 21, 'abstracto amplio'),
(51, 21, 'abstracto concreto'),
(52, 21, 'concreto simple'),
(53, 21, 'concreto concreto'),
(54, 22, 'recurso1 de f2'),
(55, 22, 'recurso 2 de f2'),
(56, 22, 'recurso 3 de f2'),
(57, 23, '1'),
(58, 23, '2'),
(59, 23, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`idusuario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `clave` varchar(25) DEFAULT NULL,
  `nivel` tinyint(4) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `apellido1` varchar(25) DEFAULT NULL,
  `apellido2` varchar(25) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `activo` varchar(2) NOT NULL DEFAULT 'si',
  `idcentro` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=210 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `clave`, `nivel`, `correo`, `apellido1`, `apellido2`, `dni`, `telefono`, `activo`, `idcentro`) VALUES
(94, 'alejandra', '123', 1, 'a', '', NULL, NULL, NULL, 'si', 1),
(95, 'carlos', '123', 2, 'c', NULL, NULL, NULL, NULL, 'si', 2),
(99, 'javier', '123', 2, 'j@', NULL, NULL, NULL, NULL, 'si', 3),
(190, 'alu1', '', 3, '', '', '', '', '', 'si', 2),
(191, 'alu2', '', 3, '', 'apel2', '', '', '', 'si', 2),
(192, 'alu3', '', 3, '', '', 'm', '', '', 'si', 2),
(193, 'alu4', '', 3, '', '', '', '', '', 'si', 2),
(195, 'alu7', '', 3, '', '', '', '', '', 'si', 2),
(196, 'alu5', '', 3, '', '', '', '', '', 'si', 2),
(198, 'alu8', '', 3, '', '', '', '', '', 'si', 3),
(199, 'alu7', '', 3, '', '', '', '', '', 'si', 3),
(201, 'ki', 'n', 3, 'l', 'k', 'lk', 'jn', '', 'si', 2),
(202, 'u', 'u', 3, 'u', 'u', 'u', 'u', 'u', 'si', 2),
(205, 'hh', 'a', 3, '', '', 'aa', '', '', 'si', 2),
(207, 'kk', '', 3, '', '', 'a', '', '', 'si', 2),
(209, '', '', 3, '', 'mm', '', '', '', 'si', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `captcha`
--
ALTER TABLE `captcha`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `centro`
--
ALTER TABLE `centro`
 ADD PRIMARY KEY (`idcentro`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
 ADD PRIMARY KEY (`idchat`);

--
-- Indices de la tabla `email`
--
ALTER TABLE `email`
 ADD PRIMARY KEY (`idemail`);

--
-- Indices de la tabla `examenes`
--
ALTER TABLE `examenes`
 ADD PRIMARY KEY (`idexamen`);

--
-- Indices de la tabla `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`idfeedback`);

--
-- Indices de la tabla `feedbacktiporespuestapropuesta`
--
ALTER TABLE `feedbacktiporespuestapropuesta`
 ADD PRIMARY KEY (`idfeedbacktiporespuestapropuesta`);

--
-- Indices de la tabla `forum`
--
ALTER TABLE `forum`
 ADD PRIMARY KEY (`idforumpropietario`);

--
-- Indices de la tabla `forummensaje`
--
ALTER TABLE `forummensaje`
 ADD PRIMARY KEY (`idforummensaje`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
 ADD PRIMARY KEY (`idgrupo`);

--
-- Indices de la tabla `grupointegrantes`
--
ALTER TABLE `grupointegrantes`
 ADD PRIMARY KEY (`idgrupointegrante`);

--
-- Indices de la tabla `preguntacuestionario`
--
ALTER TABLE `preguntacuestionario`
 ADD PRIMARY KEY (`idpregunta`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
 ADD PRIMARY KEY (`idpregunta`);

--
-- Indices de la tabla `recursostiporespuestaofrecida`
--
ALTER TABLE `recursostiporespuestaofrecida`
 ADD PRIMARY KEY (`idrecursostiporespuestaofrecida`);

--
-- Indices de la tabla `recursostiporespuestapropuesta`
--
ALTER TABLE `recursostiporespuestapropuesta`
 ADD PRIMARY KEY (`idrecursostiporespuestapropuesta`);

--
-- Indices de la tabla `relacionexamenalumno`
--
ALTER TABLE `relacionexamenalumno`
 ADD PRIMARY KEY (`idrelacion`);

--
-- Indices de la tabla `relacionexamenprofesor`
--
ALTER TABLE `relacionexamenprofesor`
 ADD PRIMARY KEY (`idrelacion`);

--
-- Indices de la tabla `respuestaalumno`
--
ALTER TABLE `respuestaalumno`
 ADD PRIMARY KEY (`idrespuestaalumno`);

--
-- Indices de la tabla `respuestascuestionario`
--
ALTER TABLE `respuestascuestionario`
 ADD PRIMARY KEY (`idrespuestascuestionario`);

--
-- Indices de la tabla `tablon`
--
ALTER TABLE `tablon`
 ADD PRIMARY KEY (`idtablon`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
 ADD PRIMARY KEY (`idtema`);

--
-- Indices de la tabla `tiporespuestapropuesta`
--
ALTER TABLE `tiporespuestapropuesta`
 ADD PRIMARY KEY (`idtiporespuesta`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `captcha`
--
ALTER TABLE `captcha`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `centro`
--
ALTER TABLE `centro`
MODIFY `idcentro` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
MODIFY `idchat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT de la tabla `email`
--
ALTER TABLE `email`
MODIFY `idemail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `examenes`
--
ALTER TABLE `examenes`
MODIFY `idexamen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `feedback`
--
ALTER TABLE `feedback`
MODIFY `idfeedback` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `feedbacktiporespuestapropuesta`
--
ALTER TABLE `feedbacktiporespuestapropuesta`
MODIFY `idfeedbacktiporespuestapropuesta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `forum`
--
ALTER TABLE `forum`
MODIFY `idforumpropietario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT de la tabla `forummensaje`
--
ALTER TABLE `forummensaje`
MODIFY `idforummensaje` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1291;
--
-- AUTO_INCREMENT de la tabla `grupointegrantes`
--
ALTER TABLE `grupointegrantes`
MODIFY `idgrupointegrante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1436;
--
-- AUTO_INCREMENT de la tabla `preguntacuestionario`
--
ALTER TABLE `preguntacuestionario`
MODIFY `idpregunta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
MODIFY `idpregunta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `recursostiporespuestaofrecida`
--
ALTER TABLE `recursostiporespuestaofrecida`
MODIFY `idrecursostiporespuestaofrecida` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `recursostiporespuestapropuesta`
--
ALTER TABLE `recursostiporespuestapropuesta`
MODIFY `idrecursostiporespuestapropuesta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT de la tabla `relacionexamenalumno`
--
ALTER TABLE `relacionexamenalumno`
MODIFY `idrelacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `relacionexamenprofesor`
--
ALTER TABLE `relacionexamenprofesor`
MODIFY `idrelacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `respuestaalumno`
--
ALTER TABLE `respuestaalumno`
MODIFY `idrespuestaalumno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `respuestascuestionario`
--
ALTER TABLE `respuestascuestionario`
MODIFY `idrespuestascuestionario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tablon`
--
ALTER TABLE `tablon`
MODIFY `idtablon` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
MODIFY `idtema` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `tiporespuestapropuesta`
--
ALTER TABLE `tiporespuestapropuesta`
MODIFY `idtiporespuesta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=210;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
