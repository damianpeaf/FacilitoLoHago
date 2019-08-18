-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2019 a las 02:52:14
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(11) NOT NULL,
  `idV` int(11) DEFAULT NULL,
  `comentario` varchar(350) DEFAULT NULL,
  `idC` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `departamento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `departamento`) VALUES
(1, 'Alta Verapaz'),
(2, 'Baja Verapaz'),
(3, 'Chimaltenango'),
(4, 'Chiquimula'),
(5, 'Peten'),
(6, 'El Progreso'),
(7, 'Quiche'),
(8, 'Escuintla'),
(9, 'Guatemala'),
(10, 'Huehuetenango'),
(11, 'Izabal'),
(12, 'Jalapa'),
(13, 'Jutiapa'),
(14, 'Quetzaltenango'),
(15, 'Retalhuleu'),
(16, 'Sacatquez'),
(17, 'San Marcos'),
(18, 'Santa rosa'),
(19, 'Solola'),
(20, 'Suchitepequez'),
(21, 'totonicapan'),
(22, 'Zacapa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dm`
--

CREATE TABLE `dm` (
  `idChat` int(11) NOT NULL,
  `idC` varchar(13) DEFAULT NULL,
  `idV` int(11) DEFAULT NULL,
  `idCVendedor` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `idMensaje` int(11) NOT NULL,
  `idChat` int(11) DEFAULT NULL,
  `mensaje` varchar(700) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id` int(11) NOT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `municipio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id`, `id_municipio`, `municipio`) VALUES
(1, 1, 'Coban'),
(2, 1, 'Santa Cruz Verapaz'),
(3, 1, 'Tactic'),
(4, 1, 'Tamahu'),
(5, 1, 'Tucurú'),
(6, 1, 'Panzos'),
(7, 1, 'Senahú'),
(8, 1, 'San Pedro Carchá'),
(9, 1, 'San Juan Chamelco'),
(10, 1, 'Lanquín'),
(11, 1, 'Santa María Cahabón'),
(12, 1, 'Chisex'),
(13, 1, 'Chahal'),
(14, 1, 'Fray Bartolomé de las Casas'),
(15, 1, 'Santa Catalina La Tinta'),
(16, 1, 'Raxruha'),
(17, 2, 'Salama'),
(18, 2, 'Cubulco'),
(19, 2, 'Granados'),
(20, 2, 'Purulhá'),
(21, 2, 'Rabinal'),
(22, 2, 'San Jeronimo'),
(23, 2, 'Miguel Chicaj'),
(24, 2, 'Zruz El Chol'),
(25, 3, 'chimaltenango'),
(26, 3, 'Acatenango'),
(27, 3, 'El Tejar'),
(28, 3, 'Parramos'),
(29, 3, 'Patzicia'),
(30, 3, 'Patzun'),
(31, 3, 'San Andres Itzaltapa'),
(32, 3, 'San Jose Poaquil'),
(33, 3, 'Juan Comalapa'),
(34, 3, 'San Martin Jilotepeque'),
(35, 3, 'Micguel Pochuta'),
(36, 3, 'Pedro Yepocapa'),
(37, 3, 'Santa Apolonia'),
(38, 3, 'Santa Cruz Balanya'),
(39, 3, 'Tecpan'),
(40, 3, 'Zaragoza'),
(41, 4, 'Chiquimula'),
(42, 4, 'Camotan'),
(43, 4, 'Concepcion de las minas'),
(44, 4, 'Esquipulas'),
(45, 4, 'Ipala'),
(46, 4, 'Jocotan'),
(47, 4, 'Quezaltepeque'),
(48, 4, 'San Jacinto'),
(49, 4, 'San Jose La Arada'),
(50, 4, 'San Juan Ermita'),
(51, 5, 'Flores'),
(52, 5, 'Dolores'),
(53, 5, 'El Chal'),
(54, 5, 'Libertad'),
(55, 5, 'Melchor de Mencos'),
(56, 5, 'Poptun'),
(57, 5, 'San Andres'),
(58, 5, 'San Benito'),
(59, 5, 'San Francisco'),
(60, 5, 'San Jose'),
(61, 5, 'San Luis'),
(62, 5, 'Santa Ana'),
(63, 5, 'Sayaxche'),
(64, 6, 'Guastatoya'),
(65, 6, 'El Jicaro'),
(66, 6, 'Morazan'),
(67, 6, 'San Agustin acasagustlan'),
(68, 6, 'Antonio La Paz'),
(69, 6, 'Cristobal Acasaguastlan'),
(70, 6, 'Sanarate'),
(71, 6, 'Sansare'),
(72, 7, 'Cruz del chiche'),
(73, 7, 'canilla'),
(74, 7, 'chajul'),
(75, 7, 'chicaman'),
(76, 7, 'Chiche'),
(77, 7, 'Chichicastenango'),
(78, 7, 'Chinique'),
(79, 7, 'Cunen'),
(80, 7, 'Ixcan'),
(81, 7, 'Joyabaj'),
(82, 7, 'Pachalum'),
(83, 7, 'Patzite'),
(84, 7, 'sacapulas'),
(85, 7, 'Andres Sajcabaja'),
(86, 7, 'canilla'),
(87, 7, 'Antonio Ilotenango'),
(88, 7, 'Bartolome Jocotenango'),
(89, 7, 'Juan Cotzal'),
(90, 7, 'San Pedro Jocopilas'),
(91, 7, 'Maria Nebaj'),
(92, 7, 'Uspantan'),
(93, 7, 'zacualpa'),
(94, 8, 'escuintla'),
(95, 8, 'Guanagazapa'),
(96, 8, 'Iztapa'),
(97, 8, 'Democracia'),
(98, 8, 'Gomera'),
(99, 8, 'Masagua'),
(100, 8, 'Nueva Concepcion'),
(101, 8, 'Palin'),
(102, 8, 'San Jose'),
(103, 8, 'San Vicente Pacaya'),
(104, 8, 'Santa Lucia Cotzumalguapa'),
(105, 8, 'Sipacate'),
(106, 8, 'Siquinala'),
(107, 8, 'Tiquisate'),
(108, 9, 'San Juan Sacatepequez'),
(109, 9, 'San Raymundo'),
(110, 9, 'Chuarrancho'),
(111, 9, 'San Joose del Golfo'),
(112, 9, 'Sab Pedro Ayampuc'),
(113, 9, 'Chinautla'),
(114, 9, 'San Pedro Sacatequez'),
(115, 9, 'Mixco'),
(116, 9, 'Guatemala'),
(117, 9, 'Palencia'),
(118, 9, 'San Jose Pinula'),
(119, 9, 'Santa Catarina Pinula'),
(120, 9, 'Villa Nueva'),
(121, 9, 'Petapa'),
(122, 9, 'Frasijanes'),
(123, 9, 'Villa Canales'),
(124, 9, 'Amatitlan'),
(125, 10, 'Huehuetenango'),
(126, 10, 'San Aguacatan'),
(127, 10, 'Chiantla'),
(128, 10, 'Colotenango'),
(129, 10, 'Concepcion Huista'),
(130, 10, 'Cuilco'),
(131, 10, 'Jacaltenango'),
(132, 10, 'Libertad'),
(133, 10, 'Democracia'),
(134, 10, 'Malacatancito'),
(135, 10, 'Nenton'),
(136, 10, 'Antonio Huista'),
(137, 10, 'San Gaspar ixchil'),
(138, 10, 'San Ildefonso Ixtahuacan'),
(139, 10, 'San Juan Atitan'),
(140, 10, 'San Juan Ixcoy'),
(141, 10, 'San Mateo Ixtatan'),
(142, 10, 'San Miguel Acatan'),
(143, 10, 'San Pedro Necta'),
(144, 10, 'San Pedro Soloma'),
(145, 10, 'San Rafael La Independencia'),
(146, 10, 'San Rafael Petza'),
(147, 10, 'San Sebastian huehuetenango'),
(148, 10, 'Santa Ana Huista'),
(149, 10, 'Santa Barbara'),
(150, 10, 'San Cruz Barillas'),
(151, 10, 'Santa Eulalia'),
(152, 10, 'Santago Chimaltenango'),
(153, 10, 'San Tectitan'),
(154, 10, 'Todos los Santos Cuchumatan'),
(155, 10, 'Union Cantinil'),
(156, 11, 'Puerto Barrios'),
(157, 11, 'El Estor'),
(158, 11, 'Livingston'),
(159, 11, 'Amates'),
(160, 11, 'morales'),
(161, 12, 'Jalapa'),
(162, 12, 'Mataquescuintla'),
(163, 12, 'Monjas'),
(164, 12, 'San Carlos Alzatate'),
(165, 12, 'San Luis Jilotque'),
(166, 12, 'San Manuel Chaparron'),
(167, 12, 'San Pedro Pinula'),
(168, 13, 'Jutiapa'),
(169, 13, 'Agua Blanca'),
(170, 13, 'Asuncion Mita'),
(171, 13, 'Atescatempa'),
(172, 13, 'Comapa'),
(173, 13, 'Conguaco'),
(174, 13, 'El Adelanto'),
(175, 13, 'El Progreso'),
(176, 13, 'Jalpatagua'),
(177, 13, 'Jerez'),
(178, 13, 'Moyuta'),
(179, 13, 'Pasaco'),
(180, 13, 'Quesada'),
(181, 13, 'Jose Acatempa'),
(182, 13, 'Santa Catarina Mita'),
(183, 13, 'Yuplitepeque'),
(184, 13, 'Zapotitlan'),
(185, 14, 'Quetzaltenango'),
(186, 14, 'Almolonga'),
(187, 14, 'Cabrican'),
(188, 14, 'Cajola'),
(189, 14, 'Cantel'),
(190, 14, 'Coatepeque'),
(191, 15, 'El Asintal'),
(192, 15, 'Nuevo San Carlos'),
(193, 15, 'San Felipe'),
(194, 15, 'San Sebastian'),
(195, 15, 'San Martin Zapotitlan'),
(196, 15, 'San Andres Villa seca'),
(197, 15, 'Santa Cruz Mulua'),
(198, 15, 'Retalhuleu'),
(199, 15, 'Champerico'),
(200, 16, 'Antigua Guatemala'),
(201, 16, 'Ciudad Vieja'),
(202, 16, 'Jocotenango'),
(203, 16, 'Magdalena Milpas Altas'),
(204, 16, 'Pastores'),
(205, 16, 'San Antonio Aguas Calientes'),
(206, 16, 'San Bartolome Milpas Altas'),
(207, 16, 'San Juan Alotenango'),
(208, 16, 'San Lucas Sacatepequez'),
(209, 16, 'San Miguel Dueñas'),
(210, 16, 'Santa Catarina Barahona'),
(211, 16, 'Santa Lucia Milpas Altas'),
(212, 16, 'Santa Maria de Jesus'),
(213, 16, 'Santiago Sacatepequez'),
(214, 16, 'Santo Domingo Xenacoj'),
(215, 16, 'Sumpango'),
(216, 17, 'San Marcos'),
(217, 17, 'Ayutla'),
(218, 17, 'Catarina'),
(219, 17, 'Comitancillo'),
(220, 17, 'Concepcion Tutuapa'),
(221, 17, 'Municipio de El Quetzal'),
(222, 17, 'El Tumbador'),
(223, 17, 'Esquipulas Palo Gordo'),
(224, 17, 'Ixchiguacan'),
(225, 17, 'La Blanca'),
(226, 17, 'La Reforma'),
(227, 17, 'Malacatan'),
(228, 17, 'Nuevo Progreso'),
(229, 17, 'Ocos'),
(230, 17, 'Pajapita'),
(231, 17, 'Rio Blanco'),
(232, 17, 'San Antonio Sacatepequez'),
(233, 17, 'San Cristobal Cucho'),
(234, 17, 'San Jose El Rodeo'),
(235, 17, 'San Jose Ojetenam'),
(236, 17, 'San Lorenzo'),
(237, 17, 'San Miguel Ixtahuacan'),
(238, 17, 'San Pablo'),
(239, 17, 'San Pedro Sacatepequez'),
(240, 17, 'San Rafael Pie de Cuesta'),
(241, 17, 'Sibinal'),
(242, 17, 'Sipacapa'),
(243, 17, 'Tacana'),
(244, 17, 'Tajumulco'),
(245, 17, 'Tejutla'),
(246, 18, 'Cuilapa'),
(247, 18, 'Barberena'),
(248, 18, 'Casillas'),
(249, 18, 'Chiquimula'),
(250, 18, 'Guazacapan'),
(251, 18, 'Nueva Santa Rosa'),
(252, 18, 'Oratorio'),
(253, 18, 'Pueblo Nuevo Viñas'),
(254, 18, 'San Juan Tecuaco'),
(255, 18, 'San Rafael las Flores'),
(256, 18, 'Santa Cruz Naranjo'),
(257, 18, 'Santa Maria Ixhuatan'),
(258, 18, 'Santa Rosa de la Lima'),
(259, 18, 'Taxisco'),
(260, 19, 'Nahuala'),
(261, 19, 'Santa Clara La Laguna'),
(262, 19, 'Santa Visitacion'),
(263, 19, 'San Juan la Laguna'),
(264, 19, 'Santiago Atitlan'),
(265, 19, 'San Lucas Toliman'),
(266, 19, 'San Antonio Palopo'),
(267, 19, 'Santa Catarina Ixtahuacan'),
(268, 19, 'San ANdres Semetabaj'),
(269, 19, 'Panajachel'),
(270, 19, 'Concepcion'),
(271, 19, 'Solola'),
(272, 19, 'Santa Cruz La Laguna'),
(273, 19, 'San Marcos La Laguna'),
(274, 19, 'San Pablo la Laguna'),
(275, 19, 'Santa Caratina Palopo'),
(276, 19, 'Santa Lucia Utatlan'),
(277, 19, 'San Jose Chacaya'),
(278, 20, 'Mazatenango'),
(279, 20, 'Chicacao'),
(280, 20, 'Cuyotenango'),
(281, 20, 'Patulul'),
(282, 20, 'Pueblo Nuevo'),
(283, 20, 'Rio Bravo'),
(284, 20, 'Samayac'),
(285, 20, 'San Antonio Suchitepequez'),
(286, 20, 'San Bernanrdino'),
(287, 20, 'Francisco Zapotitlan'),
(288, 20, 'San Gabriel'),
(289, 20, 'San Jose El Idolo'),
(290, 20, 'San Jose La Maquina'),
(291, 20, 'San Juan Bautista'),
(292, 20, 'San Lorenzo'),
(293, 20, 'San Miguel Panan'),
(294, 20, 'San Pablo Jocopilas'),
(295, 20, 'Municipio de Santa Barbara'),
(296, 20, 'Santo Domingo Suchitepequez'),
(297, 20, 'Santo Tomas la Union'),
(298, 20, 'Zunilito'),
(299, 21, 'Santa Lucia la Reforma'),
(300, 21, 'San Bartolo'),
(301, 21, 'Momostenango'),
(302, 21, 'Santa Maria Chiquimula'),
(303, 21, 'San Francisco el Alto'),
(304, 21, 'Totonicapan'),
(305, 21, 'San Cristobal Totonicapan'),
(306, 21, 'San Andres Xecul'),
(307, 22, 'Zacapa'),
(308, 22, 'Cabañas'),
(309, 22, 'Estanzuela'),
(310, 22, 'Gualan'),
(311, 22, 'Huite'),
(312, 22, 'La Union'),
(313, 22, 'Rio Hondo'),
(314, 22, 'San Diego'),
(315, 22, 'San Jorge'),
(316, 22, 'Teculutan'),
(317, 22, 'Usumatlan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofi`
--

CREATE TABLE `ofi` (
  `idF` int(11) NOT NULL,
  `descrip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ofi`
--

INSERT INTO `ofi` (`idF`, `descrip`) VALUES
(1, 'Electricista'),
(2, 'Dentista'),
(3, 'Veterinario'),
(4, 'Carpintero'),
(5, 'Tutor'),
(6, 'Plomero'),
(7, 'Zapatero'),
(8, 'Albañil'),
(9, 'Sastre'),
(10, 'Diseñador Grafico'),
(11, 'Mecanico'),
(12, 'Editor'),
(13, 'Traductor'),
(14, 'Interprete'),
(15, 'Chofer'),
(16, 'Arquitecto'),
(17, 'Fotografo'),
(18, 'Organizador de eventos'),
(19, 'Panadero'),
(20, 'Pastelero'),
(21, 'Musico'),
(22, 'Guia Turistico'),
(23, 'DJ'),
(24, 'Cerrajero'),
(25, 'Pintor'),
(26, 'Exterminador de Plagas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajosrealizados`
--

CREATE TABLE `trabajosrealizados` (
  `idImagen` int(11) NOT NULL,
  `idV` int(11) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `descripcion` varchar(350) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioscliente`
--

CREATE TABLE `usuarioscliente` (
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `nombreUsuario` varchar(10) DEFAULT NULL,
  `contra` varchar(500) DEFAULT NULL,
  `correo` varchar(75) DEFAULT NULL,
  `dpi` varchar(13) NOT NULL,
  `telefono` varchar(8) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarioscliente`
--

INSERT INTO `usuarioscliente` (`nombres`, `apellidos`, `nombreUsuario`, `contra`, `correo`, `dpi`, `telefono`, `departamento`, `municipio`, `fechaNac`) VALUES
('Ignacio', 'López Campollo', 'iglopezcam', ' 956a9e20f7574aef220837c80d7cdf2d', 'igcamp@yahoo.es', '0245637896112', '45852369', 'Zacapa', 'Zacapa', '1993-01-12'),
('Alicia', 'Perez', 'AliceSkyes', 'bf12b50c9d653fbc41d5cf01697d7fa0', 'AliceSkyes@gmail.com', '1020306248975', '9246531', 'Quiche', 'Pachalum', '1986-07-01'),
('Iveraldo', 'Rios', 'verasRios9', '5d1ffeb4cb756bf1d8c1569689fc1ac9', 'verasRios9@gmail.com', '1231231234578', '19154816', 'Guatemala', 'Guatemala', '1984-12-12'),
('Damian Ignacio', 'Peña Afreq', 'Admin1', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'damianpeaf@gmail.com', '1234567890987', '12345678', 'Guatemala', 'Guatemala', '2003-01-12'),
('Luke', 'Walker', 'LukeKer333', 'bd8ea86a92ce258bcd78a943db890d64', 'DieZapat2@gmail.com', '1258145673189', '45645845', 'Quiche', 'Ixcan', '1978-11-05'),
('Natalia', 'Arevalo', 'Natycrack1', '9041f8b47639faff683ac2eeaca05d75', 'Natylovercrack1@gmail.com', '1346798520192', '25486531', 'Guatemala', 'Guatemala', '2000-04-07'),
('Fernanda', 'Ibarra', 'feribar3', 'bc13292220fe35b60976b5763ddfc7aa', 'fernanba213@gmail.com', '1564158798123', '13123458', 'Guatemala', 'Guatemala', '1975-03-12'),
('Ana', 'Lucia', 'Analu_m1', 'e8eea6e0c7fc2be1052b3a8cb963c35d', 'miloso2@gmail.com', '1691658645732', '13152198', 'Guatemala', 'Guatemala', '1994-02-12'),
('Alvaro', 'Garcia', 'Garcebalo8', 'bc38acba1560dc066e0bcafcfd54d387', 'Garcebalo89@gmail.com', '1815436197584', '34853621', 'Chimaltenango', 'Tecpan', '1984-11-30'),
('Valeria', 'Quinteros', 'ValeriQ2', '9d5aa586feb6695f6702a803fd6c62a6', 'ValeriQ2@gmail.com', '1926354870526', '70230150', 'Quiche', 'canilla', '2001-12-01'),
('Werner', 'Baldizon', 'Admin3', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'werner@gmail.com', '1958748709756', '12345678', 'Guatemala', 'Guatemala', '2003-02-02'),
('Fabio', 'Ortega', 'Fabga142', '7fdebe15499ce8366129b31084cf812f', 'Fabga142@gmail.com', '2030654789410', '97864530', 'totonicapan', 'totonicapan', '1975-08-31'),
('Carlos', 'Mata', 'Asasincarl', 'a557215d4573030db13da044370ff9d7', 'Asasincarl13@gmail.com', '2123564796584', '84568213', 'Guatemala', 'Mixco', '1963-04-28'),
('Alberto', 'Ramirez', 'Rami001', '9abbb2f58f4be2e28337e10baa5d3ea4', 'alramirez@gmail.com', '2136547896584', '39682517', 'Peten', 'Sayaxche', '2000-01-15'),
('Alejandro', 'Rodas', 'alerodas', ' 96ac9a11d94d8f982ba476aa4b5ef503', 'rodasale@gmail.com', '2356478219456', '12369852', 'Totonocapan', 'San Francisco el Alto', '1990-11-21'),
('Marco', 'Sandoval', 'M4rcoval', '048a874706e376a412dbd7ce08481226', 'M4rcoval@gmail.com', '2458452136759', '12345216', 'Huehuetenango', 'Malacatancito', '1976-06-15'),
('Ernestino', 'Valero', 'Ernestero2', '261dd391421ca514b7a46bc14816fab8', 'Ernestero2@gmail.com', '2486257923154', '57948545', 'Guatemala', 'Guatemala', '1995-03-09'),
('Inmanuel', 'Kanteras', 'InmKanter0', 'fde6ea8de6b8151a48d37dfe8743c96e', 'InmKanter02@gmail.com', '2493568712658', '89785462', ' totonicapan', 'San Bartolo', '1986-11-18'),
('Javier', 'Barrios', 'Elsayan', '31928f9655c1db0bb28ca7db77341237', 'elsayan1@gmail.com', '2957316482935', '17935642', 'Guatemala', 'Guatemala', '2001-04-09'),
('Sofia', 'Melgar', 'Sofi002', 'eec585ea5bb892f26f04ab3aa1e374a3', 'Sofi002@gmail.com', '3049568710265', '20469087', 'Guatemala', 'Villa Nueva', '1982-06-30'),
('Alvaro', 'Rodriguez', 'Rodrivaro0', 'c774e5cb705e2df22845b11411e26601', 'Rodrivaro00@gmail.com', '3214563879347', '35393478', 'Guatemala', 'San Juan Sacatepequez', '1983-08-18'),
('Yahaira', 'Flores', 'Yahares13', 'dcb66fefbc7ee30e541c14aeff7b1bdf', 'Yahares13@gmail.com', '3789654201569', '28520136', 'Escuintla', 'Palin', '1969-02-24'),
('Esbin', 'Chitay', 'eschiti', ' ad1403ee3cde85eb37cdbcc731267f79', 'esbinrata@hotmail.com', '4569235210789', '25697852', 'Chimaltenango', 'El Tejar', '1962-12-03'),
('Alex', 'Casas', 'Alexsasytp', '7471ce9dbb8919cc5c9f99f8efb5f3ec', 'Alexsasytph@gmail.com', '4682159370258', '45678912', 'Huehuetenango', 'Union Cantinil', '1972-12-24'),
('Enrrique', 'paniagua', 'panikike1', 'ed05f060fc698d3fe5b6d053e25d88da', 'panikike1@gmail.com', '5632147896325', '12345609', 'Guatemala', 'Guatemala', '1986-01-16'),
('Aldo', 'Garcia', 'Aldgarc01', 'c7f1043863a9e6d46435af39caee3117', 'Aldgarc01@gmail.com', '5731926840255', '30789620', 'Solola', 'Solola', '1995-06-29'),
('Cristian', 'De Leon', 'Cristileon', 'c5a3d8cf65daf24093e4d8e46389019b', 'Cristileon10@gmail.com', '5825645915375', '97864502', 'Jalapa', 'Monjas', '1978-08-27'),
('Carlos', 'Martinez', 'Calres12', '954d9052fbacc24b049d7ea43b656abe', 'Calres12@gmail.com', '5937164829764', '56897412', 'Chiquimula', 'Jocotan', '1995-07-07'),
('Andres', 'Benitez', 'Benides41', 'a09a1c403f2b44c51cd717a65ccf5f1f', 'Benides41@gmail.com', '6014785223269', '19760524', 'Zacapa', 'Gualan', '1987-03-24'),
('Maria', 'Del Valle', 'vallesM2', '1c833822b1774191b14533027725d62f', 'vallesM2@gmail.com', '6180527930502', '20106986', 'Huehuetenango', 'Cuilco', '1992-04-11'),
('Ivan', 'Gomez', 'Ivanez12', '454fde21c3f280a463419285271b30fa', 'Ivanez12@gmail.com', '6325896321478', '94632581', 'Santa rosa', 'Guazacapan', '1979-01-02'),
('Thiago', 'Messolini', 'tesolinE3', '576a37642f2e0d0be88fa2a5ffd9338f', 'tesolinE3@gmail.com', '6469685273185', '98795461', 'Guatemala', 'San Raymundo', '1992-04-07'),
('Daniel', 'Ruiz', 'Ruizan99', 'f1d0a05356eb7e20f64a6f31f375f793', 'Ruizan99@gmail.com', '6476845591478', '17145252', 'Baja Verapaz', 'Salama', '1975-05-17'),
('Mario', 'Martinez', 'Firestorme', 'bc38acba1560dc066e0bcafcfd54d387', 'Firestormentos2@gmail.com', '6546526315879', '36323574', 'Peten', 'Dolores', '1976-06-15'),
('Emilio', 'Reinos', 'EmilPos10', '0464bd6018c0f67ab2ec395c8b5788a5', 'EmilPos10@gmail.com', '7172737679785', '16235908', 'Guatemala', 'Mixco', '0000-00-00'),
('Diego', 'Zapata', 'DieZapat2', 'e58fe6130e1379adcd88fd5a5bcd033d', 'DieZapat2@gmail.com', '7547854125632', '78978546', 'El Progreso', 'Guastatoya', '1984-12-06'),
('Dante', 'Andrade', 'Dantade4', '0d045ade8b54812f5dbc205136e45763', 'Dantade4@gmail.com', '7567568493158', '78975876', 'Escuintla', 'Palin', '1966-12-08'),
('Victor', 'Vera', 'VictorVera', '5401c917bc23e13700948dbd04c62740', 'VictorVera2@gmail.com', '7584967854315', '45645245', 'Solola', 'Nahuala', '1978-12-21'),
('Enrique', 'Gonzales', 'Gonzique12', '4599c2ecb17c08cd6166f1aea1e20aa1', 'Gonzique12@gmail.com', '7678475123879', '45684213', 'Guatemala', 'Chuarrancho', '1990-08-06'),
('Agustin', 'Posadas', 'Agustpos', '7d7ca2d1c97bb98033593af0f1591824', 'Agustpos@gmail.com', '7682134925024', '63256985', 'Guatemala', 'Guatemala', '1985-10-06'),
('Alexander', 'Acabal', 'Alexcabal1', '5aa26e92648d1f802cb5c9d509473b12', 'Alexcabal1@gmail.com', '7685874125478', '12312365', 'Guatemala', 'Guatemala', '1986-11-21'),
('Rodrigo', 'Valdez', 'rcval', ' 8ee73096a6cf4295cc66ea2b5e150ffb', 'rcvald@gmail.com', '7896451232154', '45963652', 'Alta Verapaz', 'San Pedro Carchá', '1981-10-26'),
('Arturo', 'Vidalero', 'Vidalerox9', '37a6bd86733293678d055f219ed794bb', 'Vidalerox99@gmail.com', '7946130258439', '23605048', 'Huehuetenango', 'Santa Ana Huista', '1985-11-04'),
('Jose', 'Barrios', 'Admin2', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'elsayansdb@gmail.com', '8760967846806', '12345678', 'Guatemala', 'Guatemala', '2003-01-01'),
('Elias', 'Ezequiel', 'EzeliasJS1', '37d73cb7c476350a78b97353334aa65a', 'EzeliasJS12@gmail.com', '8789845612364', '97896451', 'Guatemala', 'Petapa', '1978-04-16'),
('Ana', 'Gutierrez', 'AnaMonkey', '2f2ee02011465989ee606212eb60cb29', 'AnaMonkey@gmail.com', '9083462517902', '58595320', 'Solola', 'Concepcion', '2001-02-15'),
('Erick', 'Mazariegos', 'ErickKing1', '65c9409b514449d5637c3d1ecdeea2e3', 'ErickKing1@gmail.com', '9173826457913', '20907065', 'Jalapa', 'Mataquescuintla', '1984-02-18'),
('José', 'Uluan', 'gualancast', '860f955b2bb66a54650fff9bfdb72658', 'jjulu@gmail.com', '9365125647892', '78951247', 'Zacapa', 'Gualan', '1975-08-12'),
('Ernesto', 'Valmarillo', 'Valmarille', '3701dfd211d9b4a16bb959ef3647b28b', 'Valmarilles_1@gmail.com', '9713054862049', '32165090', 'Chiquimula', 'San Jacinto', '1977-10-30'),
('Samuel', 'Maldonado', 'Samdonado1', 'e30e27ac87568c4648e730136e775716', 'Samdonado11@gmail.com', '9764312580549', '82546591', 'Escuintla', 'Siquinala', '1979-07-21'),
('Isabel', 'Contreras', 'Isacont1', 'ef3f3d614b10acee68e47c05b4fe767a', 'Isacont1@gmail.com', '9764325813952', '20905084', 'Zacapa', 'Teculutan', '1995-09-10'),
('Mateo', 'Sanchez', 'Matenches2', '7df9ee032208865c0952c9f3244ed917', 'Matenches23@gmail.com', '9798456128963', '54586586', 'Alta Verapaz', 'Coban', '1986-07-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vend`
--

CREATE TABLE `vend` (
  `idV` int(11) NOT NULL,
  `idC` varchar(13) DEFAULT NULL,
  `oficio` varchar(100) DEFAULT NULL,
  `descrip` varchar(200) DEFAULT NULL,
  `cv` varchar(50) DEFAULT NULL,
  `trabajosRealizados` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vend`
--

INSERT INTO `vend` (`idV`, `idC`, `oficio`, `descrip`, `cv`, `trabajosRealizados`, `rating`, `avatar`) VALUES
(144, '1234567890987', 'Programador', 'Creador De Facilito Lo Hago', '1234567890987cv.docx', 0, 0, '1234567890987avatar.jpg'),
(145, '7685874125478', 'Musico', 'the music is life', 'cv.docx', 15, 3, 'nuevoavatar1.jpg'),
(146, '1231231234578', 'Editor', 'edito todo lo que imagines', 'cv.docx', 25, 3, 'nuevoavatar2.jpg'),
(147, '2486257923154', 'Pintor', 'pinto hasta el ultimo rincon', 'cv.docx', 99, 5, 'nuevoavatar3.jpg'),
(148, '1691658645732', 'Exterminador', 'ni un solo insecto se quedara en tu hogar', 'cv.docx', 22, 4, 'nuevoavatar4.jpg'),
(149, '1564158798123', 'Electricista', 'de todo en electricidad ', 'cv.docx', 3, 4, 'nuevoavatar5.jpg'),
(150, '3214563879347', 'Zapatero', 'arreglo zapatos', 'cv.docx', 201, 5, 'nuevoavatar6.jpg'),
(151, '6469685273185', 'DJ', 'encendere tu fiesta', 'cv.docx', 18, 4, 'nuevoavatar7.jpg'),
(152, '7678475123879', 'Interprete', 'cualquier idioma no es un problema', 'cv.docx', 56, 2, 'nuevoavatar8.jpg'),
(153, '2123564796584', 'Tutor', 'lo dificil no es aprender', 'cv.docx', 24, 5, 'nuevoavatar9.jpg'),
(154, '8789845612364', 'Guia Turistico', 'en cualquier sitio que visites', 'cv.docx', 36, 3, 'nuevoavatar10.jpg'),
(155, '9798456128963', 'Cerrajero', 'hasta el ultimo candado', 'cv.docx', 84, 5, 'nuevoavatar11.jpg'),
(156, '6476845591478', 'Chofer', 'adonde quiera que vayas', 'cv.docx', 75, 4, 'nuevoavatar12.jpg'),
(157, '1815436197584', 'Dentista', 'todo lo que necesita tu sonrisa', 'cv.docx', 12, 1, 'nuevoavatar13.jpg'),
(158, '6546526315879', 'Plomero', 'no veras ni una gota', 'cv.docx', 14, 2, 'nuevoavatar14.jpg'),
(159, '7547854125632', 'Albañil', 'lo que inmagines lo construire', 'cv.docx', 74, 5, 'nuevoavatar15.jpg'),
(160, '1258145673189', 'Zapatero', 'cualquier calzado sera reparado', 'cv.docx', 78, 4, 'nuevoavatar16.jpg'),
(161, '7567568493158', 'Cerrajero', 'ni un candado se resiste', 'cv.docx', 21, 4, 'nuevoavatar17.jpg'),
(162, '2458452136759', 'Sastre', 'no hay zapato que no se pueda arreglar', 'cv.docx', 14, 5, 'nuevoavatar18.jpg'),
(163, '7584967854315', 'Panadero', 'vendo pan recien saido del horno', 'cv.docx', 32, 3, 'nuevoavatar19.jpg'),
(164, '2136547896584', 'Editor', 'todo tipo de ediciones', 'cv.docx', 12, 2, 'avatar2.jpg'),
(165, '2136547896584', 'Musico', 'musica de mi para el mundo', 'cv.docx', 76, 5, 'avatar3.jpg'),
(166, '5937164829764', 'Pintor', 'pinto todo tipo de cosas', 'cv.docx', 10, 3, 'avatar4.jpg'),
(167, '2493568712658', 'Exterminador de Plagas', 'hasta la ultima hormiga', 'cv.docx', 30, 4, 'avatar5.jpg'),
(168, '9764312580549', 'Dentista', 'dentista profecional', 'cv.docx', 20, 2, 'avatar6.jpg'),
(169, '2030654789410', 'Zapatero', 'arreglo zapatos y tennis', 'cv.docx', 45, 2, 'avatar7.jpg'),
(170, '3049568710265', 'Albañil', 'el mejor para construir tus sueños', 'cv.docx', 21, 4, 'avatar8.jpg'),
(171, '3789654201569', 'Cerrajero', 'usa la llave del alma', 'cv.docx', 11, 1, 'avatar9.jpg'),
(172, '1926354870526', 'Guia Turistico', 'por toda guatemala', 'cv.docx', 47, 3, 'avatar10.jpg'),
(173, '1346798520192', 'Musico', 'musica que sale del alma', 'cv.docx', 68, 5, 'avatar11.jpg'),
(174, '9083462517902', 'Tutor', 'todo tipo de materias ', 'cv.docx', 10, 2, 'avatar12.jpg'),
(175, '6180527930502', 'Chofer', 'te llevo a donde tu quieras', 'cv.docx', 40, 4, 'avatar12.jpg'),
(176, '1020306248975', 'Interprete', 'sesde mandarin hasta ingles', 'cv.docx', 30, 3, 'avatar14.jpg'),
(177, '9764325813952', 'Plomero', 'arreglo todo', 'cv.docx', 26, 5, 'avatar15.jpg'),
(178, '9713054862049', 'Sastre', 'hago trajes de calidad', 'cv.docx', 54, 4, 'avatar16.jpg'),
(179, '7896451232154', 'Veterinario', 'Arreglo Animales', 'cv.docx', 20, 4, 'avatar18.png'),
(180, '7896451232154', 'Tutor', 'Hasta que entiendas', 'cv.docx', 10, 5, 'avatar19.jpg'),
(181, '4569235210789', 'carpintero', 'Toda clase de muebles', 'cv.docx', 50, 3, 'avatar20.jpg'),
(182, '4569235210789', 'Transero', 'Dinero facil', 'cv.docx', 2, 2, 'avatar21.jpg'),
(183, '0245637896112', 'Entrenadoer personal', 'Juntos, lo lograremos', 'cv.docx', 12, 4, 'avatar22.jpg'),
(184, '0245637896112', 'Programador', 'Has crecer tu negocio', 'cv.docx', 6, 4, 'avatar23.jpg'),
(185, '2356478219456', 'Cantante', 'Amenizo tu evento', 'cv.docx', 3, 5, 'avatar24.jpg'),
(186, '2356478219456', 'Bailarin', 'Preparado para tu concierto', 'cv.docx', 1, 3, 'avatar25.jpg'),
(187, '9365125647892', 'Guardaespaldas', 'Te protejo a ti y a tu familia', 'cv.docx', 10, 5, 'avatar26.jpg'),
(188, '9365125647892', 'Chofer personal', 'Te llevo a donde quieras', 'cv.docx', 8, 4, 'avatar27.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`),
  ADD KEY `idV` (`idV`),
  ADD KEY `idC` (`idC`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dm`
--
ALTER TABLE `dm`
  ADD PRIMARY KEY (`idChat`),
  ADD KEY `idV` (`idV`),
  ADD KEY `idC` (`idC`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`idMensaje`),
  ADD KEY `idChat` (`idChat`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ofi`
--
ALTER TABLE `ofi`
  ADD PRIMARY KEY (`idF`);

--
-- Indices de la tabla `trabajosrealizados`
--
ALTER TABLE `trabajosrealizados`
  ADD PRIMARY KEY (`idImagen`),
  ADD KEY `idV` (`idV`);

--
-- Indices de la tabla `usuarioscliente`
--
ALTER TABLE `usuarioscliente`
  ADD PRIMARY KEY (`dpi`);

--
-- Indices de la tabla `vend`
--
ALTER TABLE `vend`
  ADD PRIMARY KEY (`idV`),
  ADD KEY `idC` (`idC`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `dm`
--
ALTER TABLE `dm`
  MODIFY `idChat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `idMensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT de la tabla `ofi`
--
ALTER TABLE `ofi`
  MODIFY `idF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `trabajosrealizados`
--
ALTER TABLE `trabajosrealizados`
  MODIFY `idImagen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vend`
--
ALTER TABLE `vend`
  MODIFY `idV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idV`) REFERENCES `vend` (`idV`),
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idC`) REFERENCES `usuarioscliente` (`dpi`);

--
-- Filtros para la tabla `dm`
--
ALTER TABLE `dm`
  ADD CONSTRAINT `dm_ibfk_1` FOREIGN KEY (`idC`) REFERENCES `usuarioscliente` (`dpi`),
  ADD CONSTRAINT `dm_ibfk_2` FOREIGN KEY (`idV`) REFERENCES `vend` (`idV`),
  ADD CONSTRAINT `dm_ibfk_3` FOREIGN KEY (`idC`) REFERENCES `usuarioscliente` (`dpi`);

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`idChat`) REFERENCES `dm` (`idChat`);

--
-- Filtros para la tabla `trabajosrealizados`
--
ALTER TABLE `trabajosrealizados`
  ADD CONSTRAINT `trabajosrealizados_ibfk_1` FOREIGN KEY (`idV`) REFERENCES `vend` (`idV`);

--
-- Filtros para la tabla `vend`
--
ALTER TABLE `vend`
  ADD CONSTRAINT `vend_ibfk_1` FOREIGN KEY (`idC`) REFERENCES `usuarioscliente` (`dpi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
