-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 01:37 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyect`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `ID_CLIENTES` int(10) UNSIGNED NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDOS` varchar(50) NOT NULL,
  `TELEFONO` varchar(10) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  `CP` char(5) NOT NULL,
  `CIUDAD` varchar(50) DEFAULT NULL,
  `PAIS` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`ID_CLIENTES`, `NOMBRE`, `APELLIDOS`, `TELEFONO`, `EMAIL`, `DIRECCION`, `CP`, `CIUDAD`, `PAIS`) VALUES
(1, 'SANTIAGO', 'MONDRAGON', '5515964448', 'SANTY@GMAIL.COM', 'AVE ALVARO OBREGON 317 A', '53100', 'CDMX', 141),
(2, 'OZCAR', 'NUNEZ', '5586760560', 'OZCAR@GMAIL.COM', 'AVE RAMON MENDOZA NO 223', '53100', 'CDMX', 141),
(3, 'EDGAR', 'PINTO', '5562013401', 'EDGAR@GMAIL.COM', 'MONTE ALBAN NO. 2574', '53100', 'CDMX', 141),
(4, 'EDSON', 'GUTIERREZ', '5547796350', 'EDSON@GMAIL.COM', 'HIDALGO 303', '53100', 'CDMX', 141),
(5, 'CHRISTOPHER', 'ORTIZ', '5526839879', 'CHRIS@GMAIL.COM', 'AV. ADOLFO RUIZ CORTINEZ NO. 2103', '53100', 'CDMX', 141),
(6, 'ANDRES', 'CORTES', '5549611984', 'ANDY@GMAIL.COM', 'INSURGENTES SUR 265', '53100', 'CDMX', 141),
(7, 'JUAN', 'LOPEZ', '5539131714', 'JP@GMAIL.COM', 'AV TEXCOCO MZA 66', '53100', 'CDMX', 141),
(8, 'SEBASTIAN', 'LEON', '5584577497', 'SEBASTIAN@GMAIL.COM', 'CONVENTO DE ACTOPAN NO. 62', '53100', 'CDMX', 141),
(9, 'RODRIGO', 'NERIA', '5566806397', 'POG@GMAIL.COM', 'LOPEZ MATEOS NO. 171', '53100', 'CDMX', 141),
(10, 'RODRIGO', 'LEIJA', '5547128425', 'RODRI@GMAIL.COM', 'CIENFUEGOS 678 NO. 5', '53100', 'CDMX', 141);

-- --------------------------------------------------------

--
-- Table structure for table `especificaciones`
--

CREATE TABLE `especificaciones` (
  `ID_ESPECIFICACIONES` int(10) UNSIGNED NOT NULL,
  `PANTALLA` varchar(80) DEFAULT NULL,
  `CAMARA_PRINCIPAL` varchar(50) DEFAULT NULL,
  `MEMORIA` varchar(50) DEFAULT NULL,
  `PROCESADOR` varchar(50) DEFAULT NULL,
  `PRECIO` varchar(50) DEFAULT NULL,
  `ID_MODELOS` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `especificaciones`
--

INSERT INTO `especificaciones` (`ID_ESPECIFICACIONES`, `PANTALLA`, `CAMARA_PRINCIPAL`, `MEMORIA`, `PROCESADOR`, `PRECIO`, `ID_MODELOS`) VALUES
(1, 'PANTALLA_SUPER_RETINA_XDR', '48MP', '6GB', 'A16_BIONIC', '$28.999.00', 1),
(2, 'DYNAMIC_AMOLED_2X', '108MP', '8GB', 'EXYNOS_2200', '$30.999.00', 2),
(3, 'OLED', '50MP', '8GB', 'SNAPDRAGON_888', '$24.688.78', 3),
(4, 'OLED_4K_HDR', '12MP', '12GB', 'SNAPDRAGON_8_GEN_1', '$27.371.87', 4),
(5, 'OLED_LTPO_QHD+', '50MP', '12GB', 'GOOGLE_TENZOR_G2', '$17.608.78', 5),
(6, 'QHD+', '50MP', '12GB', 'SNAPDRAGON_8_GEN_1', '$24.853.09', 6),
(7, 'AMOLED', '50MP', '16GB', 'SNAPDRAGON_8_GEN_1', '$15.290.78', 7),
(8, 'OLED', '50MP', '12GB', 'SNAPDRAGON_788G+', '$12.888.11', 8),
(9, 'AMOLED_LTPO', '48MP', '12GB', 'SNAPDRAGON_8_GEN_1', '$16.283.90', 9),
(10, 'AMOLED_WQHD+', '50MP', '12GB', 'SNAPDRAGON_8_GEN_1', '$15.886.53', 10);

-- --------------------------------------------------------

--
-- Table structure for table `marcas`
--

CREATE TABLE `marcas` (
  `ID_MARCAS` int(10) UNSIGNED NOT NULL,
  `NOMBRE_DE_MARCA` varchar(50) NOT NULL,
  `SISTEMA_OPERATIVO` varchar(40) NOT NULL,
  `FECHA_DE_FUNDACION` date NOT NULL,
  `LUGAR_DE_FUNDACION` varchar(80) DEFAULT NULL,
  `FUNDADORES` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marcas`
--

INSERT INTO `marcas` (`ID_MARCAS`, `NOMBRE_DE_MARCA`, `SISTEMA_OPERATIVO`, `FECHA_DE_FUNDACION`, `LUGAR_DE_FUNDACION`, `FUNDADORES`) VALUES
(1, 'APPLE', 'IOS', '1976-04-01', 'ESTADOS_UNIDOS_CALIFORNIA', 'STEVE_JOBS'),
(2, 'SAMSUNG', 'ANDROID', '1938-03-01', 'COREA_DEL_SUR_DAEGU', 'LEE_BYUNG_CHUL'),
(3, 'HUAWEI', 'HARMONY_OS', '2015-09-15', 'CHINA_SHENZHEN', 'REN_ZHENGFEI'),
(4, 'SONY', 'ANDROID', '1946-05-07', 'JAPON_NIHONBASHI', 'AKIO_MORITA'),
(5, 'GOOGLE', 'ANDROID', '1998-09-04', 'ESTADOS_UNIDOS_CALIFORNIA', 'LARRY_PAGE'),
(6, 'OPPO', 'COLOROS', '2004-01-01', 'CHINA_DONGGUAN', 'TONY_CHEN'),
(7, 'ASUS', 'ANDROID', '1989-04-02', 'TAIWAN_TAIPEI', 'T.H._TUNG'),
(8, 'NOTHING', 'ANDROID', '2020-09-29', 'UNITED_KINGDON_LONDON', 'CARL_PEI'),
(9, 'ONEPLUS', 'OXYGENOS', '2013-12-16', 'SHENZHEN_CHINA', 'CARL_PEI'),
(10, 'VIVO', 'FUNTOUCH_OS_12', '2009-01-01', 'CHINA_DONGGUAN', 'SHEN_WEI');

-- --------------------------------------------------------

--
-- Table structure for table `modelos`
--

CREATE TABLE `modelos` (
  `ID_MODELOS` int(10) UNSIGNED NOT NULL,
  `NOMBRE_DE_MODELO` varchar(40) NOT NULL,
  `LANZAMIENTO_YEAR` year(4) DEFAULT NULL,
  `ID_MARCAS` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modelos`
--

INSERT INTO `modelos` (`ID_MODELOS`, `NOMBRE_DE_MODELO`, `LANZAMIENTO_YEAR`, `ID_MARCAS`) VALUES
(1, 'IPHONE_14_PRO_MAX', 2022, 1),
(2, 'S22_ULTRA', 2021, 2),
(3, 'P50_PRO', 2021, 3),
(4, 'XPERIA_1_IV', 2022, 4),
(5, 'GOOGLE_PIXEL_7_PRO', 2022, 5),
(6, 'OPPO_FIND_X5_PRO', 2022, 6),
(7, 'ASUS_ZENPHONE_9', 2022, 7),
(8, 'NOTHING_PHONE(1)', 2022, 8),
(9, 'ONEPLUS_10_Pro', 2022, 9),
(10, 'VIVO_X80_PRO', 2022, 10);

-- --------------------------------------------------------

--
-- Table structure for table `paises`
--

CREATE TABLE `paises` (
  `ID_PAISES` int(10) UNSIGNED NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `DOMINIO` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paises`
--

INSERT INTO `paises` (`ID_PAISES`, `NOMBRE`, `DOMINIO`) VALUES
(1, 'Afganistán', 'AF'),
(2, 'Albania', 'AL'),
(3, 'Alemania', 'DE'),
(4, 'Andorra', 'AD'),
(5, 'Angola', 'AO'),
(6, 'Anguila', 'AI'),
(7, 'Antártida', 'AQ'),
(8, 'Antigua y Barbuda', 'AG'),
(9, 'Arabia Saudita', 'SA'),
(10, 'Argelia', 'DZ'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaiyán', 'AZ'),
(17, 'Bélgica', 'BE'),
(18, 'Bahamas', 'BS'),
(19, 'Bahrein', 'BH'),
(20, 'Bangladesh', 'BD'),
(21, 'Barbados', 'BB'),
(22, 'Belice', 'BZ'),
(23, 'Benín', 'BJ'),
(24, 'Bhután', 'BT'),
(25, 'Bielorrusia', 'BY'),
(26, 'Birmania', 'MM'),
(27, 'Bolivia', 'BO'),
(28, 'Bosnia y Herzegovina', 'BA'),
(29, 'Botsuana', 'BW'),
(30, 'Brasil', 'BR'),
(31, 'Brunéi', 'BN'),
(32, 'Bulgaria', 'BG'),
(33, 'Burkina Faso', 'BF'),
(34, 'Burundi', 'BI'),
(35, 'Cabo Verde', 'CV'),
(36, 'Camboya', 'KH'),
(37, 'Camerún', 'CM'),
(38, 'Canadá', 'CA'),
(39, 'Chad', 'TD'),
(40, 'Chile', 'CL'),
(41, 'China', 'CN'),
(42, 'Chipre', 'CY'),
(43, 'Ciudad del Vaticano', 'VA'),
(44, 'Colombia', 'CO'),
(45, 'Comoras', 'KM'),
(46, 'República del Congo', 'CG'),
(47, 'República Democrática del Congo', 'CD'),
(48, 'Corea del Norte', 'KP'),
(49, 'Corea del Sur', 'KR'),
(50, 'Costa de Marfil', 'CI'),
(51, 'Costa Rica', 'CR'),
(52, 'Croacia', 'HR'),
(53, 'Cuba', 'CU'),
(54, 'Curazao', 'CW'),
(55, 'Dinamarca', 'DK'),
(56, 'Dominica', 'DM'),
(57, 'Ecuador', 'EC'),
(58, 'Egipto', 'EG'),
(59, 'El Salvador', 'SV'),
(60, 'Emiratos Árabes Unidos', 'AE'),
(61, 'Eritrea', 'ER'),
(62, 'Eslovaquia', 'SK'),
(63, 'Eslovenia', 'SI'),
(64, 'España', 'ES'),
(65, 'Estados Unidos de América', 'US'),
(66, 'Estonia', 'EE'),
(67, 'Etiopía', 'ET'),
(68, 'Filipinas', 'PH'),
(69, 'Finlandia', 'FI'),
(70, 'Fiyi', 'FJ'),
(71, 'Francia', 'FR'),
(72, 'Gabón', 'GA'),
(73, 'Gambia', 'GM'),
(74, 'Georgia', 'GE'),
(75, 'Ghana', 'GH'),
(76, 'Gibraltar', 'GI'),
(77, 'Granada', 'GD'),
(78, 'Grecia', 'GR'),
(79, 'Groenlandia', 'GL'),
(80, 'Guadalupe', 'GP'),
(81, 'Guam', 'GU'),
(82, 'Guatemala', 'GT'),
(83, 'Guayana Francesa', 'GF'),
(84, 'Guernsey', 'GG'),
(85, 'Guinea', 'GN'),
(86, 'Guinea Ecuatorial', 'GQ'),
(87, 'Guinea-Bissau', 'GW'),
(88, 'Guyana', 'GY'),
(89, 'Haití', 'HT'),
(90, 'Honduras', 'HN'),
(91, 'Hong kong', 'HK'),
(92, 'Hungría', 'HU'),
(93, 'India', 'IN'),
(94, 'Indonesia', 'ID'),
(95, 'Irán', 'IR'),
(96, 'Irak', 'IQ'),
(97, 'Irlanda', 'IE'),
(98, 'Isla Bouvet', 'BV'),
(99, 'Isla de Man', 'IM'),
(100, 'Isla de Navidad', 'CX'),
(101, 'Isla Norfolk', 'NF'),
(102, 'Islandia', 'IS'),
(103, 'Islas Bermudas', 'BM'),
(104, 'Islas Caimán', 'KY'),
(105, 'Islas Cocos (Keeling)', 'CC'),
(106, 'Islas Cook', 'CK'),
(107, 'Islas de Åland', 'AX'),
(108, 'Islas Feroe', 'FO'),
(109, 'Islas Georgias del Sur y Sandwich del Sur', 'GS'),
(110, 'Islas Heard y McDonald', 'HM'),
(111, 'Islas Maldivas', 'MV'),
(112, 'Islas Malvinas', 'FK'),
(113, 'Islas Marianas del Norte', 'MP'),
(114, 'Islas Marshall', 'MH'),
(115, 'Islas Pitcairn', 'PN'),
(116, 'Islas Salomón', 'SB'),
(117, 'Islas Turcas y Caicos', 'TC'),
(118, 'Islas Ultramarinas Menores de Estados Unidos', 'UM'),
(119, 'Islas Vírgenes Británicas', 'VG'),
(120, 'Islas Vírgenes de los Estados Unidos', 'VI'),
(121, 'Israel', 'IL'),
(122, 'Italia', 'IT'),
(123, 'Jamaica', 'JM'),
(124, 'Japón', 'JP'),
(125, 'Jersey', 'JE'),
(126, 'Jordania', 'JO'),
(127, 'Kazajistán', 'KZ'),
(128, 'Kenia', 'KE'),
(129, 'Kirguistán', 'KG'),
(130, 'Kiribati', 'KI'),
(131, 'Kuwait', 'KW'),
(132, 'Líbano', 'LB'),
(133, 'Laos', 'LA'),
(134, 'Lesoto', 'LS'),
(135, 'Letonia', 'LV'),
(136, 'Liberia', 'LR'),
(137, 'Libia', 'LY'),
(138, 'Liechtenstein', 'LI'),
(139, 'Lituania', 'LT'),
(140, 'Luxemburgo', 'LU'),
(141, 'México', 'MX'),
(142, 'Mónaco', 'MC'),
(143, 'Macao', 'MO'),
(144, 'Macedônia', 'MK'),
(145, 'Madagascar', 'MG'),
(146, 'Malasia', 'MY'),
(147, 'Malawi', 'MW'),
(148, 'Mali', 'ML'),
(149, 'Malta', 'MT'),
(150, 'Marruecos', 'MA'),
(151, 'Martinica', 'MQ'),
(152, 'Mauricio', 'MU'),
(153, 'Mauritania', 'MR'),
(154, 'Mayotte', 'YT'),
(155, 'Micronesia', 'FM'),
(156, 'Moldavia', 'MD'),
(157, 'Mongolia', 'MN'),
(158, 'Montenegro', 'ME'),
(159, 'Montserrat', 'MS'),
(160, 'Mozambique', 'MZ'),
(161, 'Namibia', 'NA'),
(162, 'Nauru', 'NR'),
(163, 'Nepal', 'NP'),
(164, 'Nicaragua', 'NI'),
(165, 'Niger', 'NE'),
(166, 'Nigeria', 'NG'),
(167, 'Niue', 'NU'),
(168, 'Noruega', 'NO'),
(169, 'Nueva Caledonia', 'NC'),
(170, 'Nueva Zelanda', 'NZ'),
(171, 'Omán', 'OM'),
(172, 'Países Bajos', 'NL'),
(173, 'Pakistán', 'PK'),
(174, 'Palau', 'PW'),
(175, 'Palestina', 'PS'),
(176, 'Panamá', 'PA'),
(177, 'Papúa Nueva Guinea', 'PG'),
(178, 'Paraguay', 'PY'),
(179, 'Perú', 'PE'),
(180, 'Polinesia Francesa', 'PF'),
(181, 'Polonia', 'PL'),
(182, 'Portugal', 'PT'),
(183, 'Puerto Rico', 'PR'),
(184, 'Qatar', 'QA'),
(185, 'Reino Unido', 'GB'),
(186, 'República Centroafricana', 'CF'),
(187, 'República Checa', 'CZ'),
(188, 'República Dominicana', 'DO'),
(189, 'República de Sudán del Sur', 'SS'),
(190, 'Reunión', 'RE'),
(191, 'Ruanda', 'RW'),
(192, 'Rumanía', 'RO'),
(193, 'Rusia', 'RU'),
(194, 'Sahara Occidental', 'EH'),
(195, 'Samoa', 'WS'),
(196, 'Samoa Americana', 'AS'),
(197, 'San Bartolomé', 'BL'),
(198, 'San Cristóbal y Nieves', 'KN'),
(199, 'San Marino', 'SM'),
(200, 'San Martín (Francia)', 'MF'),
(201, 'San Pedro y Miquelón', 'PM'),
(202, 'San Vicente y las Granadinas', 'VC'),
(203, 'Santa Elena', 'SH'),
(204, 'Santa Lucía', 'LC'),
(205, 'Santo Tomé y Príncipe', 'ST'),
(206, 'Senegal', 'SN'),
(207, 'Serbia', 'RS'),
(208, 'Seychelles', 'SC'),
(209, 'Sierra Leona', 'SL'),
(210, 'Singapur', 'SG'),
(211, 'Sint Maarten', 'SX'),
(212, 'Siria', 'SY'),
(213, 'Somalia', 'SO'),
(214, 'Sri lanka', 'LK'),
(215, 'Sudáfrica', 'ZA'),
(216, 'Sudán', 'SD'),
(217, 'Suecia', 'SE'),
(218, 'Suiza', 'CH'),
(219, 'Surinám', 'SR'),
(220, 'Svalbard y Jan Mayen', 'SJ'),
(221, 'Swazilandia', 'SZ'),
(222, 'Tayikistán', 'TJ'),
(223, 'Tailandia', 'TH'),
(224, 'Taiwán', 'TW'),
(225, 'Tanzania', 'TZ'),
(226, 'Territorio Británico del Océano Índico', 'IO'),
(227, 'Territorios Australes y Antárticas Franceses', 'TF'),
(228, 'Timor Oriental', 'TL'),
(229, 'Togo', 'TG'),
(230, 'Tokelau', 'TK'),
(231, 'Tonga', 'TO'),
(232, 'Trinidad y Tobago', 'TT'),
(233, 'Tunez', 'TN'),
(234, 'Turkmenistán', 'TM'),
(235, 'Turquía', 'TR'),
(236, 'Tuvalu', 'TV'),
(237, 'Ucrania', 'UA'),
(238, 'Uganda', 'UG'),
(239, 'Uruguay', 'UY'),
(240, 'Uzbekistán', 'UZ'),
(241, 'Vanuatu', 'VU'),
(242, 'Venezuela', 'VE'),
(243, 'Vietnam', 'VN'),
(244, 'Wallis y Futuna', 'WF'),
(245, 'Yemen', 'YE'),
(246, 'Yibuti', 'DJ'),
(247, 'Zambia', 'ZM'),
(248, 'Zimbabue', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `ID_VENTAS` int(10) UNSIGNED NOT NULL,
  `ID_MODELOS` int(10) UNSIGNED DEFAULT NULL,
  `ID_CLIENTES` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`ID_VENTAS`, `ID_MODELOS`, `ID_CLIENTES`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_CLIENTES`),
  ADD UNIQUE KEY `TELEFONO` (`TELEFONO`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`),
  ADD KEY `PAIS` (`PAIS`);

--
-- Indexes for table `especificaciones`
--
ALTER TABLE `especificaciones`
  ADD PRIMARY KEY (`ID_ESPECIFICACIONES`),
  ADD KEY `ID_MODELOS` (`ID_MODELOS`);

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`ID_MARCAS`);

--
-- Indexes for table `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`ID_MODELOS`),
  ADD KEY `ID_MARCAS` (`ID_MARCAS`);

--
-- Indexes for table `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`ID_PAISES`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`ID_VENTAS`),
  ADD KEY `ID_MODELOS` (`ID_MODELOS`),
  ADD KEY `ID_CLIENTES` (`ID_CLIENTES`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_CLIENTES` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `especificaciones`
--
ALTER TABLE `especificaciones`
  MODIFY `ID_ESPECIFICACIONES` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `ID_MARCAS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `modelos`
--
ALTER TABLE `modelos`
  MODIFY `ID_MODELOS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `paises`
--
ALTER TABLE `paises`
  MODIFY `ID_PAISES` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `ID_VENTAS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`PAIS`) REFERENCES `paises` (`ID_PAISES`) ON UPDATE CASCADE;

--
-- Constraints for table `especificaciones`
--
ALTER TABLE `especificaciones`
  ADD CONSTRAINT `especificaciones_ibfk_1` FOREIGN KEY (`ID_MODELOS`) REFERENCES `modelos` (`ID_MODELOS`) ON UPDATE CASCADE;

--
-- Constraints for table `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`ID_MARCAS`) REFERENCES `marcas` (`ID_MARCAS`) ON UPDATE CASCADE;

--
-- Constraints for table `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`ID_MODELOS`) REFERENCES `modelos` (`ID_MODELOS`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`ID_CLIENTES`) REFERENCES `clientes` (`ID_CLIENTES`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
