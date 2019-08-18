-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2019 a las 02:25:26
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
('Damian Ignacio', 'Peña Afreq', 'Admin1', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'damianpeaf@gmail.com', '1234567890987', '12345678', 'Guatemala', 'Guatemala', '2003-01-12'),
('Werner', 'Baldizon', 'Admin3', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'werner@gmail.com', '1958748709756', '12345678', 'Guatemala', 'Guatemala', '2003-02-02'),
('Jose', 'Barrios', 'Admin2', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', 'elsayansdb@gmail.com', '8760967846806', '12345678', 'Guatemala', 'Guatemala', '2003-01-01');

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
(144, '1234567890987', 'Programador', 'Creador De Facilito Lo Hago', '1234567890987cv.docx', 0, 0, '1234567890987avatar.jpg');

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
  MODIFY `idV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

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
