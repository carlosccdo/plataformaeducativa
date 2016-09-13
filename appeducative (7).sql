-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2015 a las 02:00:51
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=442 ;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`idchat`, `idemisor`, `idreceptor`, `mensaje`) VALUES
(163, 95, 100, 'ss'),
(164, 95, 100, 'ss'),
(165, 95, 99, 'jj'),
(166, 99, 95, 'iiiiii'),
(167, 99, 95, 'df'),
(168, 99, 95, 'd'),
(169, 99, 95, 'd'),
(170, 99, 95, 'd'),
(171, 99, 95, 'd'),
(172, 99, 95, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
(173, 99, 95, 'd'),
(174, 99, 95, 'd'),
(175, 99, 95, 'd'),
(176, 99, 95, 'd'),
(177, 99, 95, 'd'),
(178, 99, 95, 'd'),
(179, 99, 95, 'dd'),
(180, 99, 95, 'd'),
(181, 99, 95, 't'),
(182, 99, 95, 't'),
(183, 99, 95, 'd'),
(184, 99, 95, 'c'),
(185, 99, 95, 'r'),
(186, 99, 95, 'dd'),
(187, 99, 95, 'h'),
(188, 99, 95, 't'),
(189, 99, 95, 'f'),
(190, 99, 95, 't'),
(191, 99, 95, 't'),
(192, 99, 95, 'erg'),
(193, 99, 95, 'efer'),
(194, 99, 95, ''),
(195, 99, 95, 't'),
(196, 99, 95, 'd'),
(197, 99, 95, 'd'),
(198, 99, 95, ''),
(199, 99, 95, 'r'),
(200, 99, 95, 'r'),
(201, 95, 99, 'd'),
(202, 95, 95, 'd'),
(203, 95, 99, 'd'),
(204, 95, 95, 'df'),
(205, 95, 99, 'r'),
(206, 99, 99, 't'),
(207, 99, 95, 'y'),
(208, 99, 95, 'r'),
(209, 99, 95, ''),
(210, 99, 95, 'y'),
(211, 99, 95, 'tt'),
(212, 99, 95, 't'),
(213, 99, 95, 't'),
(214, 99, 95, 'hy'),
(215, 99, 95, 'hhj'),
(216, 95, 99, 'ff'),
(217, 99, 95, 'g'),
(218, 99, 95, ''),
(219, 99, 95, ''),
(220, 99, 95, ''),
(221, 95, 99, 'c'),
(222, 95, 95, 'cc'),
(223, 95, 99, 'n'),
(224, 95, 99, 'h'),
(225, 95, 99, ''),
(226, 95, 99, 'b'),
(227, 95, 99, 'j'),
(228, 95, 99, 'vgg'),
(229, 95, 99, 'h'),
(230, 95, 99, 'j'),
(231, 95, 99, 'g'),
(232, 99, 95, 'k'),
(233, 99, 99, 'h'),
(234, 99, 99, 'j'),
(235, 99, 95, 'h'),
(236, 99, 95, 'r'),
(237, 99, 95, 't'),
(238, 99, 95, 'r'),
(239, 99, 95, 'rr'),
(240, 99, 95, 'r'),
(241, 99, 95, 'h'),
(242, 99, 95, 'jm'),
(243, 99, 95, 'n'),
(244, 95, 99, 'h'),
(245, 99, 95, 'j'),
(246, 99, 99, 'kkk'),
(247, 99, 94, 'ww'),
(248, 99, 94, 'd'),
(249, 99, 94, 'd'),
(250, 99, 94, 'd'),
(251, 99, 94, 'd'),
(252, 99, 94, 'd'),
(253, 99, 94, 'd'),
(254, 99, 94, 'd'),
(255, 99, 94, 'd'),
(256, 99, 94, 'd'),
(257, 99, 94, 'd'),
(258, 99, 94, 'd'),
(259, 99, 94, 'd'),
(260, 99, 94, 'd'),
(261, 99, 94, 'd'),
(262, 99, 94, 'd'),
(263, 99, 94, 'd'),
(264, 0, 94, 'm'),
(265, 95, 99, 'n'),
(266, 99, 95, 'g'),
(267, 99, 95, 'h'),
(268, 99, 95, 'm'),
(269, 99, 95, 'm'),
(270, 99, 95, 'h'),
(271, 99, 95, 'h'),
(272, 99, 95, 'j'),
(273, 99, 95, 'h'),
(274, 99, 95, 'h'),
(275, 99, 95, 'j'),
(276, 99, 95, 'h'),
(277, 99, 95, 'h'),
(278, 99, 95, 'j'),
(279, 99, 95, 'j'),
(280, 99, 95, 'h'),
(281, 95, 99, 'j'),
(282, 95, 95, 'h'),
(283, 95, 99, 'h'),
(284, 95, 99, 'ggg'),
(285, 95, 99, 'f'),
(286, 95, 99, 'h'),
(287, 95, 99, 'h'),
(288, 95, 99, 'hh'),
(289, 95, 99, ''),
(290, 95, 99, 'h'),
(291, 95, 99, 'j'),
(292, 95, 99, 'h'),
(293, 95, 99, 'k'),
(294, 95, 99, 'h'),
(295, 95, 99, 'j'),
(296, 99, 95, 'k'),
(297, 99, 99, 'mm'),
(298, 99, 99, 'n'),
(299, 95, 95, 'j'),
(300, 95, 99, 'n'),
(301, 95, 99, 'j'),
(302, 95, 99, 'h'),
(303, 95, 99, 'k'),
(304, 95, 99, 'h'),
(305, 95, 99, 'k'),
(306, 95, 99, 'k'),
(307, 99, 95, 'mmm'),
(308, 99, 99, 'jj'),
(309, 95, 99, 'k'),
(310, 95, 99, 'lll'),
(311, 99, 95, 'k'),
(312, 99, 95, 'loll'),
(313, 99, 95, 'jiy'),
(314, 99, 95, 'ihvu'),
(315, 99, 95, 'kkkkk'),
(316, 99, 95, 'm'),
(317, 99, 95, 'jm'),
(318, 99, 95, 'kkk'),
(319, 99, 95, 'kjj'),
(320, 99, 95, 'cy'),
(321, 95, 99, 'hhh'),
(322, 95, 99, 'yyy'),
(323, 95, 99, 'mmm'),
(324, 95, 99, 'mm'),
(325, 95, 99, 'kkkkkk'),
(326, 99, 95, 'l'),
(327, 99, 95, 'ggg'),
(328, 95, 99, 'jjjj'),
(329, 95, 99, 'fghj'),
(330, 95, 99, 'hfiuaeghfiu'),
(331, 95, 101, 'kk'),
(332, 95, 101, 'l'),
(333, 95, 101, 'l'),
(334, 95, 101, 'ulu'),
(335, 95, 101, 'u'),
(336, 95, 101, 'u'),
(337, 95, 101, 'u'),
(338, 95, 101, 'u'),
(339, 95, 101, 'u'),
(340, 95, 101, 'u'),
(341, 95, 101, 'u'),
(342, 95, 101, 'u'),
(343, 95, 101, 'u'),
(344, 95, 101, 'u'),
(345, 95, 101, 'u'),
(346, 95, 101, 'u'),
(347, 95, 101, 'kl'),
(348, 95, 101, 'm'),
(349, 95, 101, ''),
(350, 95, 101, 'mmmmmmmmmmm'),
(351, 95, 101, 'kkkkkkkk'),
(352, 95, 101, 'm'),
(353, 95, 101, 'jk'),
(354, 95, 101, 'n'),
(355, 95, 101, 'k'),
(356, 95, 101, 'm'),
(357, 95, 0, 'k'),
(358, 95, 101, ''),
(359, 95, 101, 'k'),
(360, 95, 101, 'n'),
(361, 95, 101, 'ik'),
(362, 95, 99, 'l'),
(363, 95, 99, ','),
(364, 95, 99, 'm'),
(365, 99, 99, 'r'),
(366, 99, 95, 't'),
(367, 99, 99, 't'),
(368, 99, 95, 'ttt'),
(369, 99, 95, 'tt'),
(370, 99, 99, 'ttt'),
(371, 99, 99, 't'),
(372, 99, 99, 't'),
(373, 99, 95, 'kjmjn'),
(374, 99, 99, 'mmmmmmmmmmmmm'),
(375, 95, 99, 'kkj'),
(376, 99, 99, 'kkkk'),
(377, 99, 95, 'k'),
(378, 99, 99, 'k'),
(379, 99, 95, 'kkk'),
(380, 99, 99, 'kkkkkkkkk'),
(381, 99, 95, 'pl'),
(382, 99, 99, 'uj'),
(383, 99, 99, 'kjhg'),
(384, 95, 99, 'rtyu'),
(385, 95, 99, 'hola'),
(386, 99, 99, 'hola otra vez'),
(387, 99, 95, 'adios'),
(388, 99, 95, 'l'),
(389, 99, 95, 'l'),
(390, 99, 95, 'o'),
(391, 95, 99, 'ki'),
(392, 99, 95, 'hola'),
(393, 95, 99, 'adios'),
(394, 99, 95, 'iii'),
(395, 95, 99, 'ooo'),
(396, 99, 95, 'j'),
(397, 99, 95, 'jj'),
(398, 95, 99, 'hola'),
(399, 99, 94, 'hola'),
(400, 95, 99, 'lokkkkkkkkkkkkkkkk'),
(401, 99, 94, 'k'),
(402, 99, 95, 'jok'),
(403, 95, 99, 'jol'),
(404, 95, 99, ','),
(405, 99, 95, 'j'),
(406, 99, 95, 'jh'),
(407, 99, 95, 'jhj'),
(408, 99, 95, 'jhj'),
(409, 99, 95, 'j'),
(410, 99, 95, 'hkjh'),
(411, 95, 99, 'h'),
(412, 95, 99, 'hola'),
(413, 95, 99, 'adios'),
(414, 95, 99, 'u'),
(415, 99, 95, 'jjjjj'),
(416, 95, 99, 'jjj'),
(417, 95, 99, 'uuuuuuuuuuuuuuuu'),
(418, 99, 95, 'hhhh'),
(419, 99, 95, 'nhn'),
(420, 99, 95, 'nnnnnnn'),
(421, 95, 99, 'h'),
(422, 95, 99, 'bbbbbbbbbb'),
(423, 95, 99, 'jj'),
(424, 99, 95, 'hhhhhhh'),
(425, 95, 99, 'h'),
(426, 99, 95, 'nnnn'),
(427, 95, 99, 'nnnn'),
(428, 99, 95, 'nn'),
(429, 95, 99, 'jjj'),
(430, 95, 99, 'n'),
(431, 95, 99, 'b'),
(432, 99, 95, 'bb'),
(433, 95, 99, 'b'),
(434, 99, 95, 'b'),
(435, 99, 95, 'b'),
(436, 99, 95, 'nbb'),
(437, 95, 99, 'lñlm'),
(438, 99, 95, 'lkoj'),
(439, 95, 99, 'ñppk'),
(440, 99, 95, 'lklk'),
(441, 99, 94, 'dd');

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
  `idprofe` int(11) DEFAULT NULL,
  `idtema` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Volcado de datos para la tabla `examenes`
--

INSERT INTO `examenes` (`idexamen`, `denominacion`, `idprofe`, `idtema`) VALUES
(46, 'l', 94, 26),
(47, 's', 94, 27),
(48, 'ww', 94, 28),
(49, 'rs', 94, 29),
(50, 'jjjjj', 94, 29),
(51, 'uq', 94, 29),
(52, 'q', 94, 32),
(53, 'g', 94, 29),
(54, 'll', 94, 34),
(55, 'u', 94, 31),
(56, 'uss', 94, 30),
(57, 'uf', 94, 38),
(58, 'i', 94, 34),
(59, 'd', 94, 38),
(60, 'iww', 94, 26),
(61, 'titulocrear', 94, 41),
(62, 'k', 94, 37),
(63, 'j', 94, 42),
(64, 'ikk', 94, 28),
(65, 'ikkk', 94, 28),
(66, 'kklk', 94, 28),
(67, 'pp', 94, 30),
(68, 'iwws', 94, 28),
(69, 'ex', 94, 27),
(70, 'ccc', 94, 26),
(71, 'ho', 94, 26),
(72, ',ll', 94, 26);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

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
(31, 31, 'f1'),
(32, 32, 'f2'),
(33, 33, 'f3'),
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
(59, 59, '3'),
(60, 60, 'n'),
(61, 61, 'j'),
(62, 62, 'j'),
(63, 63, 'ffff'),
(64, 64, 'fff'),
(65, 65, 'fff'),
(66, 66, 'm'),
(67, 67, 'k'),
(68, 68, 'l'),
(69, 69, 'k'),
(70, 70, 'k'),
(71, 71, 'j'),
(72, 72, 'k'),
(73, 73, 't'),
(74, 74, 'j'),
(75, 75, 'j'),
(76, 76, 'i'),
(77, 77, 'q'),
(78, 78, 'r'),
(79, 79, 'tt'),
(80, 80, 'e'),
(81, 81, 't'),
(82, 82, 'g'),
(83, 83, 'sss'),
(84, 84, 'k'),
(85, 85, 's'),
(86, 86, 'h'),
(87, 87, 'q'),
(88, 88, 'q'),
(89, 89, 'g'),
(90, 90, 's'),
(91, 91, 'j'),
(92, 92, 'd'),
(93, 93, 'g'),
(94, 94, 'f'),
(95, 95, 'd'),
(96, 96, 'j'),
(97, 97, 'fedd1'),
(98, 98, 'fedd2'),
(99, 99, 'esc4'),
(100, 100, 'fed4'),
(101, 101, 'hjkjm'),
(102, 102, 'i'),
(103, 103, 'q'),
(104, 104, 'll'),
(105, 105, 'rr'),
(106, 106, 'pkpkh'),
(107, 107, 'k'),
(108, 108, 'c'),
(109, 109, 'c'),
(110, 110, 'v'),
(111, 111, 'v'),
(112, 112, 'tg'),
(113, 113, 'h'),
(114, 114, 'rjr'),
(115, 115, 'rh'),
(116, 116, ' lj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
`idforumpropietario` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `forum`
--

INSERT INTO `forum` (`idforumpropietario`, `idusuario`, `idgrupo`) VALUES
(3, 95, 1189),
(4, 95, 1190),
(13, 95, 1192),
(20, 99, 1191),
(21, 99, 1200);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=177 ;

--
-- Volcado de datos para la tabla `forummensaje`
--

INSERT INTO `forummensaje` (`idforummensaje`, `idforum`, `idusuario`, `mensaje`, `rutaimg`, `titulo`, `subtitulo`, `fecha`) VALUES
(168, 12, 95, 's', 'img/blogImg/', 'uu', 'u', '2015-01-29 23:03:52'),
(170, 13, 95, 's', 'img/blogImg/ali y yo_copy3.jpg', 'mMm', 'mm', '2015-01-29 23:05:11'),
(171, 12, 99, 'm', 'img/blogImg/', 'm', 'm', '2015-01-29 23:16:44'),
(174, 4, 95, 'tyj', 'img/blogImg/', 'oiu', 'ert', '2015-03-18 17:05:19'),
(176, 20, 99, 'f', 'img/blogImg/', 'f', 'd', '2015-04-02 14:46:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
`idgrupo` int(11) NOT NULL,
  `nombregrupo` varchar(20) NOT NULL,
  `idcentro` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1201 ;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`idgrupo`, `nombregrupo`, `idcentro`) VALUES
(1189, 'grupo 1', 2),
(1190, 'grupo 2', 2),
(1191, 'grupo 3', 2),
(1192, 'grupo 4', 2),
(1199, 'jj', 3),
(1200, 'cc', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupointegrantes`
--

CREATE TABLE IF NOT EXISTS `grupointegrantes` (
`idgrupointegrante` int(11) NOT NULL,
  `idgrupo` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1507 ;

--
-- Volcado de datos para la tabla `grupointegrantes`
--

INSERT INTO `grupointegrantes` (`idgrupointegrante`, `idgrupo`, `idusuario`) VALUES
(1219, 1189, 95),
(1222, 1190, 95),
(1482, 1192, 95),
(1485, 1192, 100),
(1486, 1192, 101),
(1497, 1191, 99),
(1498, 1191, 94),
(1499, 1191, 95),
(1501, 1199, 99),
(1503, 1199, 108),
(1505, 1200, 99),
(1506, 1200, 110);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

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
(14, 'pregunta examen 1', 3, 16),
(15, 'gfnjfg', 3, 17),
(16, 'cuanto años tenes', 4, 18),
(17, 'kj', 4, 18),
(18, 'j ', 4, 18),
(19, 'crea una entrevista', 5, 19),
(20, 'entrevista', 6, 20),
(21, 'cuento', 6, 20),
(22, 'pregunaf2', 1, 21),
(23, '1', 7, 22),
(24, 'm', 8, 23),
(25, '1', 6, 24),
(26, 'm', 7, 25),
(27, 'pr', 5, 26),
(28, 'k', 3, 27),
(29, 't', 5, 28),
(30, 'j', 9, 29),
(31, 's', 110, 30),
(32, 'Ijj', 4, 31),
(33, 'o', 11, 32),
(34, 't', 212, 33),
(35, 'wwww', 14, 34),
(36, 'r', 15, 35),
(37, 'rr', 16, 36),
(38, 'w', 17, 37),
(39, 'r', 18, 38),
(40, 'w', 19, 39),
(41, 'r', 20, 40),
(42, 't', 21, 41),
(43, 'uk', 22, 42),
(44, 'tj', 923, 43),
(45, 'k', 24, 44),
(46, 'sssss', 25, 45),
(47, 'k', 26, 46),
(48, 's', 27, 47),
(49, 'w', 28, 48),
(50, 'sr', 29, 49),
(51, 'q', 29, 51),
(52, 'q', 32, 52),
(53, 'g', 29, 53),
(54, 'k', 34, 54),
(55, 'k', 31, 55),
(56, 's', 30, 56),
(57, 'ff', 38, 57),
(58, 'r', 34, 58),
(59, 'dd', 38, 59),
(60, 'wf', 26, 60),
(61, 'pre1', 41, 61),
(62, 'pre2', 41, 61),
(63, 'ghjgh', 37, 62),
(64, 'ss', 42, 63),
(65, 'i', 28, 64),
(66, 'k', 28, 65),
(67, 'k', 28, 66),
(68, 'r', 30, 67),
(69, 'ss', 28, 68),
(70, 'pre', 27, 69),
(71, 'cc', 26, 70),
(72, 'vvv', 26, 70),
(73, 'htrh', 26, 71),
(74, 'n', 26, 71),
(75, 'opik', 26, 72);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursostiporespuestaofrecida`
--

CREATE TABLE IF NOT EXISTS `recursostiporespuestaofrecida` (
`idrecursostiporespuestaofrecida` int(11) NOT NULL,
  `idtiporesppropuesta` int(11) DEFAULT NULL,
  `recursovalor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `recursostiporespuestaofrecida`
--

INSERT INTO `recursostiporespuestaofrecida` (`idrecursostiporespuestaofrecida`, `idtiporesppropuesta`, `recursovalor`) VALUES
(1, -1, 'recursosSubidos/app2.png'),
(2, -1, 'recursosSubidos/2.png'),
(3, -1, 'recursosSubidos/images.jpg'),
(4, -1, 'recursosSubidos/app1.png'),
(5, -1, 'recursosSubidos/fondodemo.jpg'),
(6, -1, 'recursosSubidos/mesa2.jpg'),
(7, -1, 'recursosSubidos/mesa1.jpg'),
(8, -1, 'recursosSubidos/2.png'),
(9, -1, 'recursosSubidos/399049_10150538180257619_2117');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursostiporespuestapropuesta`
--

CREATE TABLE IF NOT EXISTS `recursostiporespuestapropuesta` (
`idrecursostiporespuestapropuesta` int(11) NOT NULL,
  `recursovalor` varchar(45) DEFAULT NULL,
  `idtiporesppropuesta` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=194 ;

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
(45, 'recursov1', 31),
(46, 'recursov2', 32),
(47, 'recursov3', 33),
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
(89, '3', 59),
(90, 'n', 60),
(91, 'recursosSubidos/11960216.jpg', 61),
(92, 'recursosSubidos/3709457_640px.jpg', 61),
(93, 'j', 61),
(94, 'k', 62),
(95, 'recursosSubidos/Bonita panorámica de la ciuda', 63),
(96, 'eee', 63),
(97, 'eee', 64),
(98, 'eee', 65),
(99, 'jll', 66),
(100, 'km', 67),
(101, 'l', 68),
(102, 'j', 69),
(103, 'k', 70),
(104, 'j', 71),
(105, 'recursosSubidos/IMG_0463.JPG', 72),
(106, 'k', 72),
(107, 't', 73),
(108, 'j', 74),
(109, 's', 75),
(110, 'i', 76),
(111, 'q', 77),
(112, 'r', 78),
(113, 'recursosSubidos/2.png', 79),
(114, 'recursosSubidos/ali y yo_copy3_copy.jpg', 79),
(115, 'i', 79),
(116, 'recursosSubidos/2.png', 80),
(117, 'recursosSubidos/ali y yo_copy3.jpg', 80),
(118, 'recursosSubidos/ali y yo_copy3.jpg', 80),
(119, 'recursosSubidos/ali y yo_copy3.jpg', 80),
(120, 'recursosSubidos/fondodemo.jpg', 80),
(121, 'recursosSubidos/ali y yo_copy3.jpg', 80),
(122, 'recursosSubidos/2.png', 80),
(123, 'recursosSubidos/informacion.txt', 80),
(124, 'Archivo no valido', -3),
(125, 'recursosSubidos/mesa3.jpg', 80),
(126, 'recursosSubidos/mesa2.jpg', 80),
(127, 'recursosSubidos/mesa6.jpg', 80),
(128, 'Archivo no valido', -3),
(129, 'e', 80),
(130, 'recursosSubidos/mesa3.jpg', 81),
(131, 't', 81),
(132, 'f', 82),
(133, 'recursosSubidos/mesa6.jpg', 83),
(134, 'sss', 83),
(135, 'k', 84),
(136, 'recursosSubidos/mesa2.jpg', 85),
(137, 's', 85),
(138, 'recursosSubidos/CRONOGRAMA.docx', 86),
(139, 'recursosSubidos/corba.ppt', 86),
(140, 'recursosSubidos/Extracto_Octubre_14.pdf', 86),
(141, 'recursosSubidos/BoardingPass (1).pdf', 86),
(142, 'recursosSubidos/Extracto_Diciembre_14.pdf', 86),
(143, 'recursosSubidos/CRONOGRAMA.docx', 86),
(144, 'recursosSubidos/mesa1.jpg', 86),
(145, 'h', 86),
(146, 'q\n', 87),
(147, 'q', 88),
(148, 'g', 89),
(149, 's', 90),
(150, 's', 91),
(151, 'd', 92),
(152, 'f', 93),
(153, 'f', 94),
(154, 'r', 95),
(155, 'j', 96),
(156, 'escrb1', 97),
(157, 'recursosSubidos/mesa2.jpg', 98),
(158, 'escr2', 98),
(159, 'recursosSubidos/mesa1.jpg', 99),
(160, 'esc3', 99),
(161, 'escr4', 100),
(162, 'recursosSubidos/mesa1.jpg', 101),
(163, 'hjhghjhj', 101),
(164, 'k', 102),
(165, 'recursosSubidos/mesa2.jpg', 103),
(166, 'q', 103),
(167, 'lk', 104),
(168, 'recursosSubidos/mesa2.jpg', 105),
(169, 'rr', 105),
(170, 'recursosSubidos/mesa1.jpg', 106),
(171, 'recursosSubidos/Twitter-icon.png', 106),
(172, 'recursosSubidos/mesa3.jpg', 106),
(173, 'recursosSubidos/CURRICULUM ingles carlos.doc', 106),
(174, 'recursosSubidos/CURRICULUM ingles carlos.doc', 106),
(175, 'recursosSubidos/20140313 Fra Iberdrola.pdf', 106),
(176, 'recursosSubidos/Groupon-7AE3312FC6.pdf', 106),
(177, 'jytj', 106),
(178, 'recursosSubidos/399049_10150538180257619_2117', 107),
(179, 'recursosSubidos/ali y yo_copy3.jpg', 107),
(180, 'recursosSubidos/399049_10150538180257619_2117', 107),
(181, 'k', 107),
(182, 'c', 108),
(183, 'recursosSubidos/ali y yo_copy3.jpg', 109),
(184, 'c', 109),
(185, 'recursosSubidos/ad.png', 110),
(186, 'v', 110),
(187, 'vvv', 111),
(188, 'tg', 112),
(189, 'recursosSubidos/2.png', 113),
(190, 'h', 113),
(191, 'ryh', 114),
(192, 'hr', 115),
(193, 'k', 116);

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
(1, 69, 100),
(2, 16, 101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacionexamenprofesor`
--

CREATE TABLE IF NOT EXISTS `relacionexamenprofesor` (
`idrelacion` int(11) NOT NULL,
  `idprofesor` int(11) DEFAULT NULL,
  `idexamen` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Volcado de datos para la tabla `relacionexamenprofesor`
--

INSERT INTO `relacionexamenprofesor` (`idrelacion`, `idprofesor`, `idexamen`) VALUES
(1, 95, 17),
(2, 99, 17),
(3, 95, 18),
(4, 95, 20),
(5, 99, 21),
(6, 95, 22),
(7, 99, 23),
(8, 95, 24),
(9, 99, 24),
(10, 95, 25),
(11, 99, 25),
(12, 95, 26),
(13, 99, 26),
(14, 95, 27),
(15, 95, 28),
(16, 99, 28),
(17, 99, 34),
(18, 99, 40),
(19, 99, 41),
(20, 99, 52),
(21, 95, 56),
(22, 95, 46),
(23, 95, 52),
(24, 99, 52),
(25, 95, 57),
(26, 99, 57),
(27, 99, 51),
(28, 95, 55),
(29, 99, 58),
(30, 95, 59),
(31, 99, 52),
(32, 99, 60),
(33, 95, 47),
(34, 99, 47),
(35, 95, 61),
(36, 99, 61),
(37, 95, 61),
(38, 99, 61),
(39, 99, 62),
(40, 99, 50),
(41, 95, 63),
(42, 99, 60),
(43, 95, 66),
(44, 95, 66),
(45, 95, 69),
(46, 99, 50);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE IF NOT EXISTS `temas` (
`idtema` int(11) NOT NULL,
  `temas` varchar(45) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`idtema`, `temas`) VALUES
(26, 'jjjj'),
(27, 'ss'),
(28, 'sss'),
(29, 'frr'),
(30, 'k'),
(31, 'm'),
(32, 'jk'),
(33, 'frr'),
(34, 'ss'),
(35, 'k'),
(36, 'ijk'),
(37, 'klk'),
(38, 'ffff'),
(39, 'fds'),
(40, 'kk'),
(41, 'uno'),
(42, 'aaa'),
(43, 'l'),
(44, 'l'),
(45, 'hola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiporespuestapropuesta`
--

CREATE TABLE IF NOT EXISTS `tiporespuestapropuesta` (
`idtiporespuesta` int(11) NOT NULL,
  `idpregunta` int(11) NOT NULL,
  `denominacion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

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
(31, 14, 'tipo1'),
(32, 14, 'tipo2'),
(33, 14, 'tipo3'),
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
(59, 23, '3'),
(60, 24, 'k'),
(61, 24, 'n'),
(62, 24, 'j'),
(63, 25, 'hh'),
(64, 25, '222'),
(65, 25, '3'),
(66, 26, ','),
(67, 26, 'k'),
(68, 26, 'ñ'),
(69, 27, 'uno'),
(70, 27, 'dos'),
(71, 27, 'tres'),
(72, 28, 'ññ'),
(73, 29, 't'),
(74, 30, 'j'),
(75, 31, 's'),
(76, 32, 'k'),
(77, 33, 'i'),
(78, 34, 't'),
(79, 35, 'ww'),
(80, 41, 'r'),
(81, 42, 't'),
(82, 44, 'tuj'),
(83, 46, 'sssssss'),
(84, 47, 'kk'),
(85, 48, 's'),
(86, 50, 'rsr'),
(87, 51, 'q'),
(88, 52, 'q'),
(89, 53, 'g'),
(90, 54, 'l'),
(91, 55, 's'),
(92, 56, 'u'),
(93, 57, 'u'),
(94, 58, 'k'),
(95, 59, 'r'),
(96, 60, 'f'),
(97, 61, 'rec1'),
(98, 61, 'rec2'),
(99, 62, 'recr3'),
(100, 62, 'rec4'),
(101, 63, 'jjj'),
(102, 64, 's'),
(103, 66, 'i'),
(104, 67, 'oll'),
(105, 68, 'rr'),
(106, 69, 'dee'),
(107, 70, 'recur1'),
(108, 71, 'ccc'),
(109, 71, 'cc'),
(110, 72, 'vv'),
(111, 72, 'v'),
(112, 73, 'rtgtrtg'),
(113, 73, 'fyhy'),
(114, 74, 'rhrr'),
(115, 74, 'yhrh'),
(116, 75, 'k');

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
  `edad` tinyint(4) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `activo` varchar(2) NOT NULL DEFAULT 'si',
  `idcentro` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `clave`, `nivel`, `correo`, `apellido1`, `apellido2`, `edad`, `dni`, `telefono`, `activo`, `idcentro`) VALUES
(94, 'alejandra', '123', 1, 'a', '', NULL, 0, NULL, NULL, 'si', 1),
(95, 'carlos', '123', 2, 'c', NULL, NULL, 0, NULL, NULL, 'si', 2),
(99, 'javier', '123', 2, 'j@', NULL, NULL, 0, NULL, NULL, 'si', 3),
(100, 'helio', '123', 3, 'h', 'bhone', 'ccccccccccc', 0, '', '', 'si', 2),
(101, 'k', '123', 2, 'cc', 'ccc', '', 0, '', '', 'si', 2),
(102, 'i', '', 3, 'ii', 'i', 'ii', NULL, '', '', 'si', 2),
(103, 'f', 'eeee', 3, '', '', '', NULL, '', '', 'si', 2),
(104, '', '', 3, 'y', '', '', 0, '', '', 'si', 2),
(105, '', '', 3, 'h', '', '', 0, '', '', 'si', 2),
(108, '', 'ik', 3, 'k', '', 'ddd', 0, '', '', 'si', 3),
(110, '', '', 3, 'd', '', 'dd', 0, '', '', 'si', 3);

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
MODIFY `idchat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=442;
--
-- AUTO_INCREMENT de la tabla `email`
--
ALTER TABLE `email`
MODIFY `idemail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `examenes`
--
ALTER TABLE `examenes`
MODIFY `idexamen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT de la tabla `feedback`
--
ALTER TABLE `feedback`
MODIFY `idfeedback` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `feedbacktiporespuestapropuesta`
--
ALTER TABLE `feedbacktiporespuestapropuesta`
MODIFY `idfeedbacktiporespuestapropuesta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT de la tabla `forum`
--
ALTER TABLE `forum`
MODIFY `idforumpropietario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `forummensaje`
--
ALTER TABLE `forummensaje`
MODIFY `idforummensaje` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1201;
--
-- AUTO_INCREMENT de la tabla `grupointegrantes`
--
ALTER TABLE `grupointegrantes`
MODIFY `idgrupointegrante` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1507;
--
-- AUTO_INCREMENT de la tabla `preguntacuestionario`
--
ALTER TABLE `preguntacuestionario`
MODIFY `idpregunta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
MODIFY `idpregunta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT de la tabla `recursostiporespuestaofrecida`
--
ALTER TABLE `recursostiporespuestaofrecida`
MODIFY `idrecursostiporespuestaofrecida` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `recursostiporespuestapropuesta`
--
ALTER TABLE `recursostiporespuestapropuesta`
MODIFY `idrecursostiporespuestapropuesta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT de la tabla `relacionexamenalumno`
--
ALTER TABLE `relacionexamenalumno`
MODIFY `idrelacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `relacionexamenprofesor`
--
ALTER TABLE `relacionexamenprofesor`
MODIFY `idrelacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
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
MODIFY `idtablon` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
MODIFY `idtema` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `tiporespuestapropuesta`
--
ALTER TABLE `tiporespuestapropuesta`
MODIFY `idtiporespuesta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
