-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2021 a las 06:58:41
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mapa_intera`
--
CREATE DATABASE IF NOT EXISTS `mapa_intera` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mapa_intera`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre_depa` varchar(30) NOT NULL,
  `historia` varchar(600) NOT NULL,
  `poblacion` varchar(8) NOT NULL,
  `extension` varchar(15) NOT NULL,
  `turistico` varchar(100) NOT NULL,
  `info_general` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre_depa`, `historia`, `poblacion`, `extension`, `turistico`, `info_general`) VALUES
(1, 'San Salvador', 'Después de las victorias sobre las huestes pipiles en las batallas de Acajutla y Tacuzcalco, el conquistador Pedro de Alvarado intentó someter a los nativos de la capital del Señorío de Cuzcatlán a su arribo el 18 de junio de 1524. Los cuscatlecos, sin embargo, huyeron a las montañas vecinas y el extremeño tuvo que replegarse hacia la zona de la actual Guatemala. La primera villa de San Salvador se fundó a menos de un año de esta expedición, por una misión no documentada al mando de Gonzalo de Alvarado. ​La primera mención que existe acerca este asentamiento es una carta del mismo Pedro de Alv', '621,123 ', '72,25 km²', 'Catedral Metropolitana, Teatro Nacional', 'San Salvador (con abreviatura “S.S” o llamado también El Gran San Salvador debido a su densa población urbana en la región centroamericana) es la capital y la urbe más grande de la República de El Salvador y una de las ciudades más pobladas de Centroamérica. Ubicada en uno de los 14 departamentos de la nación, específicamente en el departamento de San Salvador, alberga las sedes del gobierno, de los tres poderes del estado, las principales empresas de economía, desarrollo, telecomunicaciones, embajadas, hoteles de primera categoría, Centro Internacional de Ferias y Convenciones (CIFCO), así co'),
(2, 'Santa Ana', 'El municipio de Santa Ana tiene una población estimada de 264 091 habitantes para el año 2013, ocupando el segundo lugar en población. Para su administración se divide en 34 cantones y 312 caseríos,5 mientras que la propia ciudad se divide en 12 barrios y varias colonias. La localidad celebra sus fiestas patronales durante las «Fiestas Julias», del 17 al 26 de julio, en homenaje a la Señora Santa Ana, patrona del departamento.7 Aunque hay registros arqueológicos que datan del período preclásico, la ciudad fue fundada alrededor del siglo V o VI, por los mayas, para luego ser ocupada por los náh', '270,413 ', '408 km²', 'Lago de Coatepeque, Parque Acuatico Sihuatehuacán', 'Santa Ana es una ciudad salvadoreña, cabecera del municipio, departamento, distrito y sede de la diócesis homónimos; y es la ciudad principal de la zona occidental, y tercera ciudad en importancia de El Salvador, ubicada a 64 km de la capital estatal, San Salvador.'),
(3, 'Sonsonate', 'Sonsonate es una ciudad y municipio del departamento homónimo, del cual es también su cabecera. Tiene una población estimada de 72 158 habitantes para el año 2013.4 La localidad se fundó con el nombre de «Villa del Espíritu Santo» en unos predios baldíos cercanos al pueblo de los Izalcos en 1552. Sin embargo, esta fundación sería sumamente efímera, pues al año siguiente, en 1553, esta villa sería trasladada a su emplazamiento actual, con el nombre de «Villa de la Santísima Trinidad de Sonsonate»,5 en una zona productora de cacao. Con el paso del tiempo, a la localidad se le iría conociendo sim', '438,960 ', '1,226 km²', 'Parque Central de Juayua, Chorros de la Calera', 'Sonsonate es un departamento de las 14 entidades que conforman la república de El Salvador cuya cabecera es el municipio homónimo. Se distingue a nivel nacional por la riqueza cultural, religiosa, histórica y turística.'),
(4, 'Usulután', 'Usulután fue habitado originalmente por grupos lencas. Hacia el siglo XV, sin embargo, fueron conquistados por pipiles. Durante la época de la conquista, los residentes repelieron durante un mes a las milicias españolas en el año 1529, quienes estaban bajo el mando de Diego de Rojas. Asimismo, en 1539 hostigaron a una avanzada de Pedro de Alvarado en la zona de la actual Bahía de Jiquilisco. No fue hasta 1553 que Diego de Holguín logró la pacificación del sitio.Centro público de educación media de la ciudad. De acuerdo al arzobispo Pedro Cortés y Larraz, en 1770 la aldea era cabeza de curato y', '73,064  ', '2.130 km²', 'Laguna de Alegría, Volcán Tecapa, Bahía De Jiquilisco', 'Usulután es una ciudad de El Salvador, que es cabecera del municipio y departamento homónimos.'),
(5, 'San Vicente', 'A mediados del siglo XVII, varias familias de españoles dedicadas al cultivo del añil residían en las poblaciones de Apastepeque, Tepetitán e Ixtepeque. Esta situación era prohibida por las Leyes de Indias, que dictaminaban el impedimento de convivir en pueblos de indios. Precisamente, el Presidente, Gobernador y Capitán General del Reino de Guatemala, don Álvaro de Quiñónez y Osorio, estipuló el 7 de julio de 1634 que los alcaldes mayores echasen “de dichos pueblos a los españoles, mestizos, negros y mulatos” de dichas localidades. Esto motivó a los vecinos desplazados a fundar una nueva colo', '161,645 ', '1,184 km²', 'Laguna de Apastepeque, Amapulapa', 'San Vicente es la ciudad cabecera del municipio y departamento homónimos en El Salvador. Fue fundada en el año 1635 y llegó a ser capital del Estado entre 1834 a 1840, cuando El Salvador formaba parte de la República Federal de Centro América, esto debido a que San Salvador se convirtió en capital federal. Durante la colonización española, fue una de las localidades más importantes de la Intendencia de San Salvador.'),
(6, 'San Miguel', 'En 1865, durante el Gobierno de Francisco Dueñas, fue determinado que el departamento redujera su dimensión y se creara a expensas del territorio los departamentos de La Unión y Usulután. Entre las figuras políticas notables originarias de este departamento se encuentran el Capitán General Gerardo Barrios, y el Capitán General Miguel Santín del Castillo, quienes en sendos periodos presidenciales hicieron contribuciones importantes como la introducción de la educación normal y las escuelas públicas; y el fomento al cultivo industrializado del café.', '434,003 ', '2,077 km²', 'Laguna Aramuaca, Turicentro Altos de La Cueva', ' El territorio fue poblado originalmente por grupos lencas. Tras la fundación de la villa de San Salvador en 1525, los españoles encomendaron al capitán Luis de Moscoso la fundación de San Miguel de la Frontera, la cual tuvo lugar en 1530.'),
(7, 'Cabañas', 'Según uno de sus biógrafos, el general hondureño José Trinidad Cabañas; \"era centroamericano por sus ideales y aspiraciones a las que dedicó su vida.\" Esto inspiró a los legisladores del país quienes, queriendo honrar la memoria de este valeroso soldado bautizaron con su nombre este departamento el 10 de febrero de 1873 por medio de Decreto Legislativo. Los historiadores afirman que el General Cabañas, peleó al lado del General Francisco Morazán, a quien logró rescatar el 14 de septiembre de 1842, cuando se encontraba situado en San José, Costa Rica. En 1852, el Gral. Cabañas asumió la preside', '149,326 ', '1,104    km²', 'Cascada Los Tercios, Parque Ecologico Bosque De Cinquera', 'Cabañas es un departamento de El Salvador que pertenece a la zona central del país. Sus límites geográficos son: al norte y noreste por el río Lempa, que sirve como linea divisoria entre El Salvador y Honduras, al este por San Miguel, al sur por San Vicente y al oeste por Cuscatlán. En realidad este es uno de los departamentos más jóvenes de El Salvador. Su creación data del 10 de febrero de 1873, siendo su cabecera Sensuntepeque. Otra ciudad importantes es Ilobasco, cuna de los muñecos y de las figuras de barro.'),
(8, 'Cuscatlán', 'El departamento fue constituido durante la administración del Jefe de Estado Nicolás Espinoza, por Decreto Ejecutivo el 22 de mayo de 1835. Originalmente Suchitoto fue su cabecera, pero a partir del 12 de noviembre de 1861 es la ciudad de Cojutepeque. Es de origen náhua, Kuskat, \"collar,piedra preciosa, tesoro\" y Tan \"locativo\". Etimológicamente significaría: \"lugar de algo precioso\". Su topónimo es: Kuskatan. Se encuentra situado en la región central del país y limita al N y NE con el departamento de Chalatenango, al E con Cabañas, al SE con San Vicente, al S con el Lago de Ilopango y el depa', '231 480 ', '756   km²', 'Cerro de las pavas, Lago de ilopango', 'Cuscatlán es un departamento que se ubica en la zona central de El Salvador. Este departamento posee los siguientes límites geográficos: al norte con el departamento de Chalatenango, al sur con La Paz y San Vicente, al este por los departamentos de Cabañas y San Vicente, y al oeste con San Salvador.'),
(9, 'Morazán', 'En la época colonial, el territorio estuvo subdivido en los partidos de Gotera y Osicala. Fue creado con el nombre de departamento de Gotera el 14 de julio de 1875, por disposición del presidente Santiago González. Por decreto de la Asamblea Legislativa recibió su nombre actual el 14 de marzo de 1887, en homenaje al unionista centroamericano general Francisco Morazán. Durante la Guerra Civil de El Salvador, Morazán fue una de las zonas más disputadas del territorio nacional. El Ejército Revolucionario del Pueblo, una de las organizaciones integrantes del FMLN, concentró una numerosa tropa insu', '252,500 ', '1.447 km²', 'El chorreton, Pequin, Turicentro Atecozol', 'En el departamento todavía se conservan rastros de la presencia de los paleoindios —primeros pobladores de El Salvador— en la Cueva del Espíritu Santo, un sitio arqueológico con pinturas rupestres en las cercanías del municipio de Corinto. En la época previa a la conquista española, Morazán estuvo habitado por indígenas lencas.'),
(10, 'Ahuachapán', 'El departamento de Ahuachapán (Del Idioma Náhuat Ajwech-apan (Río de rocío)) es el más occidental de los 14 departamentos en los que está dividida la República de El Salvador. Su cabecera, la ciudad de Ahuachapán se encuentra a 100 km de San Salvador (capital de la república). El departamento tiene una extensión de 1.239,60 km². Colinda al norte con el departamento de Santa Ana , al noreste y al este con el departamento de Jutiapa de Guatemala, al sur con el Océano Pacífico y al oeste con el departamento de Sonsonate.', '375,496 ', '1240 km²', 'Cerro Laguna Verde, Laberinto de Apaneca', 'Ahuachapán fue fundado en el siglo V por los mayas de la tribu pokomames, y sometida en el siglo XV por belicosos Náhuas de Kuskatan de los izalcos. Gradualmente la región fue invadida por los españoles. En el 22 de agosto de 1823, se le dio el título de villa al pueblo de Ahuachapán. En el informe de mejoras materiales del departamento de Sonsonate hecho por el gobernador Teodoro Moreno en el 21 de junio de 1854, notó: \"Se está edificando el cabildo, dándole una capacidad suficiente para contener tres oficinas: hay abundantes materiales; sin embargo a causa de las lluvias se ha suspendido est'),
(11, 'Chalatenango', 'Chalatenango (Chalatenango es la cabecera del Departamento homónimo de El Salvador. Su territorio se divide en 6 cantones y 36 caseríos. En 2007 la población era de 29 271 habitantes según censo de 2007. La extensión territorial del municipio está distribuida de tal manera que tiene un área rural de 131,05 km² aproximadamente y un área urbana de 0,75 km² aproximadamente.)', '192,788 ', '2,017 km²', 'Cerro El Pital, Lago Suchitlan', 'Esta población fue fundada en tiempos de la época precolombina por tribus lencas, pero a fines del siglo XV fue sometida por pipiles procedentes de Cuzcatlán. A la llegada de los españoles según Will Fowler, Chalatenango estaba habitado por tres etnias, pipiles, chortís y lencas, desafortunadamente no existe suficiente evidencia para validar la hipótesis de heterogeneidad de la zona, por otro lado no significa negar la posibilidad de existencia de dos o más grupos distinto en el mismo territorio. Sin embargo existe evidencia arqueológica y lingüística que demuestra que la zona oriental del río'),
(12, 'La Libertad', 'la Libertad es un departamento de El Salvador. Su Cabecera es la ciudad de Santa Tecla, Cabecera también del municipio homónimo. Tiene una extensión territorial de 1653 km² y una población de 843 500 habitantes (censo oficial, 2018).', '660,652 ', '1,653  km²', 'Jardin Botanico La Laguna, Playa el Tunco', 'El departamento fue creado en 1865 por un decreto legislativo que fue publicado en el periódico oficial del gobierno \"El Constitucional\" Tomo 1, Número 70, en el 9 de febrero de 1865. De acuerdo con la estadística del departamento de La Libertad hecha por el gobernador José López en el 23 de mayo de 1865, el departamento tenía una población de 16 759 personas.'),
(13, 'La Paz', 'El territorio del departamento, de acuerdo con los restos arqueológicos hallados en el sector comprendido entre los ríos Lempa y Jiboa, estuvo poblado por comunidades mayances hasta fines del siglo XI. Por entonces se produjo la primera oleada invasora de pueblos nahuas mesoamericanos. Tras la ocupación tolteca, en cuyo proceso de asentamiento tendieron a mezclarse con las tribus locales, se establecieron cuatro siglos más tarde los nonualcos, pertenecientes al grupo náhua de kuskatan. A ellos se debe la fundación o repoblación de núcleos urbanos como los de Cuyultitán, Analco, Tecoluca, Santi', '2,706  h', '1.224 km²', 'Playa Costa del Sol, Turicentro Ichanmichen', 'La Paz es un departamento de El Salvador que se ubica en la zona central del país. Sus límites geográficos son los siguientes: al norte con Cuscatlán, al este con San Vicente, al sur con el Océano Pacífico y al oeste con San Salvador. El departamento de La Paz se encuentra a una altitud de 220 metros sobre el nivel del mar y posee una extensión territorial de 1,223 kilómetros cuadrados.'),
(14, 'La Unión', ' Fue erigido durante la administración del licenciado Francisco Dueñas, por Decreto Ejecutivo de 22 de junio de 1865.', '34.045 h', '144,4 km²', 'Playa El Icacal, Volcan De Conchagua', 'La Unión es un departamento de la zona oriental de El Salvador. Es el más oriental de los departamentos salvadoreños y el que posee en su jurisdicción las aguas e islas cuzcatlecas del Golfo de Fonseca, bahía compartida con Honduras y Nicaragua. En este departamento y golfo se encuentra el único municipio insular de El Salvador, Meanguera del Golfo. Su cabecera departamental es la ciudad y puerto de La Unión.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id_muni` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `nombre_muni` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id_muni`, `id_departamento`, `nombre_muni`) VALUES
(1, 1, 'San Salvador'),
(2, 1, 'Aguilares'),
(3, 1, 'Apopa'),
(4, 1, 'Ayutuxtepeque'),
(5, 1, 'Ciudad Delgado'),
(6, 2, 'Santa Ana'),
(7, 2, 'Candelaria de la Fro'),
(9, 2, 'Chalchuapa'),
(10, 2, 'Coatepeque'),
(11, 5, 'San Cayetano Istepeq'),
(12, 5, 'Guadalupe'),
(13, 5, 'San Vicente'),
(14, 5, 'Apastepeque'),
(15, 5, 'San Esteban Catarina'),
(16, 3, 'Sonsonate'),
(17, 3, 'Acajutla'),
(18, 3, 'Armenia'),
(19, 3, 'Caluco'),
(20, 3, 'Cuisnahuat'),
(21, 4, 'Usulután'),
(22, 4, 'Alegría'),
(23, 4, 'Berlín'),
(24, 4, 'California'),
(25, 4, 'Concepción Batres'),
(26, 1, 'Cuscatancingo'),
(27, 1, 'El paisnal'),
(28, 1, 'Guazapa'),
(29, 1, 'Ilopango'),
(30, 1, 'Mejicanos'),
(31, 1, 'Nejapa'),
(32, 1, 'Panchimalco'),
(33, 1, 'Rosario de Mora'),
(34, 1, 'San Marcos'),
(35, 1, 'San Martin'),
(36, 1, 'Santiago Texacuangos'),
(37, 1, 'Santo Tomas'),
(38, 1, 'Soyapango'),
(39, 1, 'Tonacatepeque'),
(40, 2, 'El Congo'),
(41, 2, 'El Porvenir'),
(42, 2, 'Masahuat'),
(43, 2, 'Metapán'),
(44, 2, 'San Antonio Pajonal'),
(45, 2, 'San Sebastián Salist'),
(46, 2, 'Santa Rosa Guachilip'),
(47, 2, 'Santiago de la Front'),
(48, 2, 'Texistepeque'),
(49, 3, 'Izalco'),
(50, 3, 'Juayúa'),
(51, 3, 'Nahuizalco'),
(52, 3, 'Salcoatitán'),
(53, 3, 'San Antonio del Mont'),
(54, 3, 'San Julián'),
(55, 3, 'Santa Catarina Masah'),
(56, 3, 'Santa Isabel Ishuatá'),
(57, 3, 'Santo Domingo de Guz'),
(58, 3, 'Sonzacate'),
(59, 3, 'Nahulingo'),
(60, 4, 'El Triunfo'),
(61, 4, 'Ereguayquín'),
(62, 4, 'Estanzuelas'),
(63, 4, 'Jiquilisco'),
(64, 4, 'Jucuapa'),
(65, 4, 'Jucuarán'),
(66, 4, 'Mercedes Umaña'),
(67, 4, 'Nueva Granada'),
(68, 4, 'Ozatlán'),
(69, 4, 'Puerto el Triunfo'),
(70, 4, 'San Agustín'),
(71, 4, 'San Buenaventura'),
(72, 4, 'San Dionisio'),
(73, 4, 'San Francisco Javier'),
(74, 4, 'Santa Elena'),
(75, 4, 'Santa María'),
(76, 4, 'Santiago de María'),
(77, 4, 'Tecapán'),
(78, 5, 'San Ildefonso'),
(79, 5, 'San Lorenzo'),
(80, 5, 'San Sebastián'),
(81, 5, 'Santa Clara'),
(82, 5, 'Santo Domingo'),
(83, 5, 'Tecoluca'),
(84, 5, 'Tepetitán'),
(85, 5, 'Verapaz'),
(86, 6, 'Carolina '),
(87, 6, 'Chapeltique '),
(88, 6, 'Chinameca '),
(89, 6, 'Chirilagua '),
(90, 6, 'Ciudad Barrios'),
(91, 6, 'Comacarán'),
(92, 6, 'El Tránsito'),
(93, 6, 'Lolotique '),
(94, 6, 'Moncagua '),
(95, 6, 'Nueva Guadalupe'),
(96, 6, 'Nuevo Edén de San Ju'),
(97, 6, 'Quelepa '),
(98, 6, 'San Antonio del Mosc'),
(99, 6, 'San Gerardo'),
(100, 6, 'San Jorge'),
(101, 6, 'San Luis de la Reina'),
(102, 6, 'San Miguel'),
(103, 6, 'San Rafael Oriente'),
(104, 6, 'Sesori '),
(105, 6, 'Uluazapa'),
(106, 7, 'Cinquera '),
(107, 7, 'Dolores '),
(108, 7, 'Guacotecti '),
(109, 7, 'Ilobasco '),
(110, 7, 'Jutiapa '),
(111, 7, 'San Isidro'),
(112, 7, 'Sensuntepeque '),
(113, 7, 'Tejutepeque '),
(114, 7, 'Victoria'),
(115, 8, 'Candelaria '),
(116, 8, 'Cojutepeque '),
(117, 8, 'El Carmen'),
(118, 8, 'El Rosario'),
(119, 8, 'Monte San Juan'),
(120, 8, 'Oratorio de Concepci'),
(121, 8, 'San Bartolomé Perula'),
(122, 8, 'San Cristóbal'),
(123, 8, 'San José Guayabal'),
(124, 8, 'San Pedro Perulapán'),
(125, 8, 'San Rafael Cedros'),
(126, 8, 'San Ramón'),
(127, 8, 'Santa Cruz Analquito'),
(128, 8, 'Santa Cruz Michapa'),
(129, 8, 'Suchitoto '),
(130, 8, 'Tenancingo'),
(131, 9, 'Arambala '),
(132, 9, 'Cacaopera '),
(133, 9, 'Chilanga '),
(134, 9, 'Corinto '),
(135, 9, 'Delicias de Concepci'),
(136, 9, 'El Divisadero'),
(137, 9, 'El Rosario'),
(138, 9, 'Gualococti '),
(139, 9, 'Guatajiagua '),
(140, 9, 'Joateca '),
(141, 9, 'Jocoaitique '),
(142, 9, 'Jocoro '),
(143, 9, 'Lolotiquillo '),
(144, 9, 'Meanguera '),
(145, 9, 'Osicala '),
(146, 9, 'Perquín '),
(147, 9, 'San Carlos'),
(148, 9, 'San Fernando'),
(149, 9, 'San Francisco Gotera'),
(150, 9, 'San Isidro '),
(151, 9, 'San Simón'),
(152, 9, 'Sensembra '),
(153, 9, 'Sociedad '),
(154, 9, 'Torola '),
(155, 9, 'Yamabal '),
(156, 9, 'Yoloaiquín'),
(157, 10, 'Ahuachapán'),
(158, 10, 'Apaneca '),
(159, 10, 'Atiquizaya '),
(160, 10, 'Concepción de Ataco'),
(161, 10, 'El Refugio'),
(162, 10, 'Guaymango '),
(163, 10, 'Jujutla '),
(164, 10, 'San Francisco Menénd'),
(165, 10, 'San Lorenzo'),
(166, 10, 'San Pedro Puxtla'),
(167, 10, 'Tacuba '),
(168, 10, 'Turín'),
(169, 11, 'Agua caliente'),
(170, 11, 'Arcatao '),
(171, 11, 'Azacualpa '),
(172, 11, 'Cancasque '),
(173, 11, 'Chalatenango '),
(174, 11, 'Citalá '),
(175, 11, 'Comalapa '),
(176, 11, 'Concepción Quezaltep'),
(177, 11, 'Dulce Nombre de Marí'),
(178, 11, 'El Carrizal'),
(179, 11, 'El Paraíso'),
(180, 11, 'La Laguna'),
(181, 11, 'La Palma'),
(182, 11, 'La Reina'),
(183, 11, 'Las Flores'),
(184, 11, 'Las vueltas'),
(185, 11, 'Nombre de Jesús'),
(186, 11, 'Nueva concepción'),
(187, 11, 'Nueva Trinidad'),
(188, 11, 'Ojos de Agua '),
(189, 11, 'Potonico '),
(190, 11, 'San Antonio de la Cr'),
(191, 11, 'San Antonio Los Ranc'),
(192, 11, 'San Fernando '),
(193, 11, 'San Francisco Lempa'),
(194, 11, 'San Francisco Morazá'),
(195, 11, 'San Ignacio'),
(196, 11, 'San Isidro Labrador'),
(197, 11, 'San Luis del Carmen'),
(198, 11, 'San Miguel de Merced'),
(199, 11, 'San Rafael'),
(200, 11, 'Santa Rita'),
(201, 11, 'Tejutla'),
(202, 12, 'Antiguo Cuscatlán'),
(203, 12, 'Chiltiupán '),
(204, 12, 'Ciudad Arce'),
(205, 12, 'Colón '),
(206, 12, 'Comasagua '),
(207, 12, 'Huizúcar '),
(208, 12, 'Jayaque '),
(209, 12, 'Jicalapa '),
(210, 12, 'La Libertad '),
(211, 12, 'Santa Tecla'),
(212, 12, 'Nuevo Cuscatlán'),
(213, 12, 'San Juan Opico'),
(214, 12, 'Quezaltepeque '),
(215, 12, 'Sacacoyo '),
(216, 12, 'San José Villanueva'),
(217, 12, 'San Matías'),
(218, 12, 'San Pablo Tacachico '),
(219, 12, 'Talnique '),
(220, 12, 'Tamanique '),
(221, 12, 'Teotepeque '),
(222, 12, 'Tepecoyo '),
(223, 12, 'Zaragoza'),
(224, 13, 'Zacatecoluca'),
(225, 13, 'Cuyultitán '),
(226, 13, 'El Rosario'),
(227, 13, 'Jerusalén '),
(228, 13, 'Mercedes La Ceiba'),
(229, 13, 'Olocuilta '),
(230, 13, 'Paraíso de Osorio'),
(231, 13, 'San Antonio Masahuat'),
(232, 13, 'San Emigdio'),
(233, 13, ' San Francisco China'),
(234, 13, 'San Pedro Masahuat'),
(235, 13, 'San Juan Nonualco'),
(236, 13, 'San Juan Talpa '),
(237, 13, 'San Juan Tepezontes'),
(238, 13, 'San Luis La Herradur'),
(239, 13, 'San Luis Talpa'),
(240, 13, 'San Miguel Tepezonte'),
(241, 13, 'San Pedro Nonualco '),
(242, 13, 'San Rafael Obrajuelo'),
(243, 13, 'Santa María Ostuma'),
(244, 13, 'Santiago Nonualco'),
(245, 13, 'Tapalhuaca'),
(246, 14, 'Anamorós '),
(247, 14, 'Bolívar '),
(248, 14, 'Concepción de Orient'),
(249, 14, 'Conchagua '),
(250, 14, 'El Carmen'),
(251, 14, 'El Sauce'),
(252, 14, 'Intipucá '),
(253, 14, 'La Unión'),
(254, 14, 'Lislique '),
(255, 14, 'Meanguera del Golfo'),
(256, 14, 'Nueva Esparta'),
(257, 14, 'Pasaquina '),
(258, 14, 'Polorós '),
(259, 14, 'San Alejo'),
(260, 14, 'San José'),
(261, 14, 'Santa Rosa de Lima'),
(262, 14, 'Yayantique '),
(263, 14, 'Yucuaiquín');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id_muni`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id_muni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
