-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2018 a las 22:23:45
-- Versión del servidor: 5.6.40-log
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `asesoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesores`
--

CREATE TABLE IF NOT EXISTS `usuarioC` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `usr` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `numidentificacion` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `categoria` varchar(100) NOT NULL,
  `acerca` varchar(400) DEFAULT NULL,
  `saldo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `usuarioc`
--

INSERT INTO `asesores` (`id`, `usr`, `nombre`, `apellido`, `correo`, `numidentificacion`, `telefono`, `pais`, `profesion`, `categoria`, `acerca`, `saldo`) VALUES
(1, 'pedro21', 'Pedro', 'Gomez', 'pedro12@gmail.com', '46456', '041276567567', 'Argentina', 'Ingeniero', 'Abogado', 'Abogado\n', 0),
(2, 'antonio21', 'Antonio Perez', 'Gutierrez Marcano', 'Marcano@gmail.com', '69675', '79876867', 'Venezuela', 'Abogado', 'abogado', 'abogado de profesion para lo que necesite', 0),
(3, 'pedro123', 'Pedro Domingo', 'Gonzalez', 'pedro123@gmail.com', '34536464', '8989797', 'Colombia', 'Psicologo', 'Psicologo de Geriatrico', 'Psicologo con más de 20 años de experiencia', 0),
(4, '19093770', 'Emilio', 'GONZALEZ', 'gujhijo@gmail.com', '979797', '4121859903', 'venezuela', 'Psicologo', 'Psicologo de Geriatrico', 'Psicologo', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(40) NOT NULL,
  `asesor` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` () VALUES
(1, 'emilio', 'antonio21'),
(2, 'emilio', 'pedro21'),
(3, 'joshua', 'pedro21'),
(4, 'juan01', 'pedro21'),
(6, 'jose01', 'pedro21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS  (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `usr` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `saldo` int(11) DEFAULT NULL,
  `pais` varchar(50) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `acerca` varchar(400) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `usr`, `nombre`, `apellido`, `saldo`, `pais`, `correo`, `acerca`, `ciudad`) VALUES
(1, 'emilio', 'Emilio', 'Gonzalez', 30, 'venezuela', 'emilio1909@gmail.com', '                                                Ingeniero en Informatica Mención humanidades                                                                                                                                                                                                                                                                                                                    ', 'Guayana'),
(2, 'emi', 'antonio', 'medina', 0, 'Venezuela', 'emirjose2018@gmail.com', 'Nada', 'Barcelona'),
(3, 'juan', 'juan', 'gomez', 0, 'Venezuela', 'eg@gmail.com', 'ingeniero', 'guayana'),
(4, 'hsdfuksu', 'jpojopj', 'pjpojopj', 0, 'Colombia', 'hiohiohjo@gmail.com', '', 'jopjop'),
(5, 'victor', 'Emilio', 'GONZALEZ', 0, 'Venezuela', 'er@gmail.com', '', 'guayana'),
(6, 'peter', 'Emilio', 'GONZALEZ', 0, 'Venezuela', 'gh@gmail.com', '', 'guayana'),
(7, 'ELMES', 'SEDFUHUB', 'HIOH', 0, 'Colombia', 'GUI@GMAIL.COM', '', 'KHI'),
(8, 'kopk', 'ojop', 'ojpojk', 0, 'Perú', 'okop@uih.com', '', 'opjopj'),
(9, 'lijoj', 'jpojpoj', 'pjpojp', 0, 'Perú', 'jopjp@gmail.com', '', 'opjopj'),
(10, 'ijopj', 'pojopjop', 'jopñjopñj', 0, 'Colombia', 'efi@huh.com', '', 'ojopjo'),
(11, 'rfgegf', 'pojopjop', 'jopñjopñj', 0, 'Colombia', 'rfgwefefi@huh.com', '', 'ojopjo'),
(12, 'rfgegfljioopj', 'pojopjop', 'jopñjopñj', 0, 'Colombia', 'rfgwpojpojefefi@huh.com', '', 'ojopjo'),
(13, 'rfgegfljioopjjkni', 'pojopjop', 'jopñjopñj', 0, 'Colombia', 'rfgwpooihjo9jpojefefi@huh.com', '', 'ojopjo'),
(14, 'plkokok', 'pojopjop', 'jopñjopñj', 0, 'Colombia', 'kjij@huh.com', '', 'ojopjo'),
(15, 'joshua', 'Joshua', 'Gonzalez', 0, 'Colombia', 'joshua@gmail.com', 'Ingenier', 'cali'),
(16, 'nljni', 'ij9j', 'huuih', 0, 'Colombia', 'joij@gmail.com', 'ohui8ohojhlihjoih iuhojopl', 'iho8ih'),
(17, 'nljniknuui', 'ij9j', 'huuih', 0, 'Colombia', 'jljiooij@gmail.com', 'ohui8ohojhlihjoih iuhojopl', 'iho8ih'),
(18, 'njin', 'Emilio', 'pjo9oj', 0, 'venezuela', 'jojo@hotmail.com', '', 'guayana'),
(19, 'V15089443', 'hnin', 'ih8i', 0, 'Colombia', 'hu@tju.com', '', 'ihj9'),
(20, 'juan01', 'Juan', 'Mata', 0, 'Colombia', 'juanu@gmail.com', 'Licenciado en procesos contables', 'Cali'),
(21, 'huella', 'Antonio', 'Sequera', 0, 'venezuela', 'huella@gmail.com', 'Hernesto', 'cadiz'),
(22, 'Juan12', 'Emilio', 'GONZALEZ', 0, 'venezuela', 'em@hot.com', 'dtg rtgerg erg geg ge eg ge gedge ewfw wf wf wf wf fw', 'guayana'),
(23, 'url123', 'Antonio ', 'Cedenno', 0, 'Colombia', 'url123@gmail.com', 'Spam', 'cali'),
(24, 'g', 'Emilio', 'GONZALEZ', 0, 'venezuela', 'hiio@ehi.com', '', 'guayana'),
(25, 'jose01', 'Jose', 'GONZALEZ', 0, 'venezuela', 'jgj@gmail.com', 'Ingeniero', 'guayana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallechat`
--

CREATE TABLE IF NOT EXISTS `detallechat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod` int(11) NOT NULL,
  `mensaje` varchar(400) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `stado` int(11) NOT NULL,
  `envia` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `detallechat`
--

INSERT INTO `detallechat` (`id`, `cod`, `mensaje`, `fecha`, `stado`, `envia`) VALUES
(1, 1, 'Hola necesito requiero una asesoria inmobiliria', '30/10/2018', 2, 1),
(2, 2, 'Necesito una asesoria de programacion orientada a objetos', '30/10/2018', 2, 1),
(3, 2, 'Estare Viendo mi agenda y avisare', '30/10/2018', 2, 2),
(4, 3, 'Hola necesito una asesoria', '30/10/2018', 2, 1),
(5, 4, 'Necesito una Asesoria', '30/10/2018', 2, 1),
(6, 3, 'Dejeme verificar mi agenda y le doy una fecha', '14/10/2018', 2, 2),
(7, 2, 'Le estare avisando amigo', '14/10/2018', 2, 2),
(8, 4, 'Perfecto cuando desea realizarla', '14/10/2018', 1, 2),
(9, 1, 'Amigo necesito que respinda', '14/10/2018', 1, 1),
(10, 2, 'Bueno usted me avisa amigo', '14/10/2018', 2, 1),
(12, 6, 'Titulo: Asesoria de Sexo Propuesta: Asesoria de sexo Presupuesto: 76', '17/10/2018', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE IF NOT EXISTS `experiencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr1` int(11) NOT NULL,
  `usr2` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE IF NOT EXISTS `habilidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr` varchar(40) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`id`, `usr`, `tipo`) VALUES
(1, 'pedro21', 'Psicologo Recien Graduado'),
(4, 'pedro21', 'Diseño móvil, web y grafico'),
(5, 'pedro21', 'Abogacia penal, judicial y otros'),
(6, 'pedro21', 'PSICOLOGIA DESCRIPTIVA'),
(7, '19093770', 'PSICOLOGIA DESCRIPTIVA');

-- --------------------------------------------------------

--
--
INSERT INTO ` (`id`, `titulo`, `fecha`, `presupuesto`, `propuesta`, `cliente`, `asesor`, `stado`, `status`, `liberar`, `cobrar`) VALUES
(1, 'Asesoria de bienes ', '2018-09-30', '6767', 'Adiosss\r\n', 'emilio', 'pedro21', 2, 3, 1, 0),
(2, 'Asesoria de Programacion ', '2018-09-30', '67', 'Adiosss  Portal web en Laravel con sincronización de app Android\nEl portal funciona en un host y se desarrolló en el entorno Laravel. Esta web recibe información', 'emilio', 'pedro21', 2, 1, 0, 0),
(3, 'Asesoria de Matematicas', '2018-09-30', '6768', 'tyio7gyihlig 787yli 9p 89yoh', 'emilio', 'antonio21', 1, 0, 0, 0),
(4, 'Asesoria de bienes ', '2018-09-30', '4', 'r gfiu f 3u34hfibvde uhijleju  uiebve ', 'emilio', 'antonio21', 1, 0, 0, 0),
(5, 'Asesoria de Filosofia', '2018-09-30', '875676', 'yuf6i7ut t7o8 hklnj kfye jyhb litlkuh tf5fun igyf', 'emilio', 'pedro123', 1, 0, 0, 0),
(9, 'Asesoria de Sexo', '2018-10-18', '76', 'Asesoria de sexo', 'jose01', 'pedro21', 2, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL DEFAULT '',
  `clave` varchar(20) NOT NULL DEFAULT '',
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `tipo`) VALUES
(1, 'emilio', 'empLiqezhH.Nk', 1),
(2, 'emi', 'empLiqezhH.Nk', 1),
(3, 'pedro21', 'peyoEgC8gA0/2', 2),
(4, 'antonio21', 'anJsKt1OgMqoA', 2),
(9, 'juan', 'juuPSDTvQO02.', 1),
(10, 'hsdfuksu', 'hsAvSLftWgXiE', 1),
(11, 'victor', 'viZI8k9vfbLrM', 1),
(12, 'peter', 'pefKzGZe12nqI', 1),
(13, 'ELMES', 'ELFdEI7Tla3hY', 1),
(14, 'kopk', 'koK4W51OstcHI', 1),
(15, 'lijoj', 'lisMj0kZI6zP2', 1),
(16, 'ijopj', 'ijT3A9UqKT.VM', 1),
(17, 'rfgegf', 'rfOGP8zOmU4/E', 1),
(18, 'rfgegfljioopj', 'rfUH1gfDmiLc.', 1),
(19, 'rfgegfljioopjjkni', 'rfZjss/77Uoys', 1),
(20, 'plkokok', 'pljweeBt3cmp6', 1),
(21, 'joshua', 'jobKXd0q08mEE', 1),
(22, 'nljni', 'nlMUVhjeX2JzA', 1),
(23, 'nljniknuui', 'nlYrKQ1/Igzh2', 1),
(24, 'njin', 'nj2mL8Z49eRsw', 1),
(25, 'V15089443', 'V1/09.4OCHGdw', 1),
(26, 'juan01', 'jukawCRNoJQqU', 1),
(27, 'huella', 'huXEo7Zqh/o4A', 1),
(28, 'pedro123', 'pewi/pTMb1OyQ', 2),
(29, 'Juan12', 'JupQSRPk98aF6', 1),
(30, 'url123', 'urCJS4.gofwEs', 1),
(33, '19093770', '19XPoinENLkfA', 2),
(34, 'jose01', 'joIov6yg3Mi8Y', 1),
(35, 'admin', 'adpexzg3FUZAk', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
