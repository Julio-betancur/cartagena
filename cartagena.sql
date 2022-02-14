-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33065
-- Tiempo de generación: 21-01-2022 a las 02:46:09
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cartagena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answer`
--

CREATE TABLE `answer` (
  `idRespuesta` int(11) NOT NULL,
  `idPregunta` int(11) NOT NULL,
  `respuesta` varchar(3) NOT NULL,
  `cedulaUsuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department`
--

CREATE TABLE `department` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `department`
--

INSERT INTO `department` (`id_departamento`, `nombre_departamento`) VALUES
(5, 'Antioquia'),
(8, 'Atlántico'),
(11, 'Bogotá D.C.'),
(13, 'Bolívar'),
(15, 'Boyacá'),
(17, 'Caldas'),
(18, 'Caquetá'),
(19, 'Cauca'),
(20, 'Cesar'),
(23, 'Córdoba'),
(25, 'Cundinamarca'),
(27, 'Chocó'),
(41, 'Huila'),
(44, 'La Guajira'),
(47, 'Magdalena'),
(50, 'Meta'),
(52, 'Nariño'),
(54, 'Norte de Santander'),
(63, 'Quindío'),
(66, 'Risaralda'),
(68, 'Santander'),
(70, 'Sucre'),
(73, 'Tolima'),
(76, 'Valle del Cauca'),
(81, 'Arauca'),
(85, 'Casanare'),
(86, 'Putumayo'),
(88, 'Archipiélago de San '),
(91, 'Amazonas'),
(94, 'Guainía'),
(95, 'Guaviare'),
(99, 'Vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipality`
--

CREATE TABLE `municipality` (
  `id_municipio` int(11) NOT NULL,
  `nombre_municipio` varchar(20) NOT NULL,
  `id_departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipality`
--

INSERT INTO `municipality` (`id_municipio`, `nombre_municipio`, `id_departamento`) VALUES
(1, 'Medellín', 5),
(2, 'Abejorral', 5),
(3, 'Abriaquí', 5),
(4, 'Alejandría', 5),
(5, 'Amagá', 5),
(6, 'Amalfi', 5),
(7, 'Andes', 5),
(8, 'Angelópolis', 5),
(9, 'Angostura', 5),
(10, 'Anorí', 5),
(11, 'Anza', 5),
(12, 'Apartadó', 5),
(13, 'Arboletes', 5),
(14, 'Argelia', 5),
(15, 'Armenia', 5),
(16, 'Barbosa', 5),
(17, 'Bello', 5),
(18, 'Betania', 5),
(19, 'Betulia', 5),
(20, 'Ciudad Bolívar', 5),
(21, 'Briceño', 5),
(22, 'Buriticá', 5),
(23, 'Cáceres', 5),
(24, 'Caicedo', 5),
(25, 'Caldas', 5),
(26, 'Campamento', 5),
(27, 'Cañasgordas', 5),
(28, 'Caracolí', 5),
(29, 'Caramanta', 5),
(30, 'Carepa', 5),
(31, 'Carolina', 5),
(32, 'Caucasia', 5),
(33, 'Chigorodó', 5),
(34, 'Cisneros', 5),
(35, 'Cocorná', 5),
(36, 'Concepción', 5),
(37, 'Concordia', 5),
(38, 'Copacabana', 5),
(39, 'Dabeiba', 5),
(40, 'Don Matías', 5),
(41, 'Ebéjico', 5),
(42, 'El Bagre', 5),
(43, 'Entrerrios', 5),
(44, 'Envigado', 5),
(45, 'Fredonia', 5),
(46, 'Giraldo', 5),
(47, 'Girardota', 5),
(48, 'Gómez Plata', 5),
(49, 'Guadalupe', 5),
(50, 'Guarne', 5),
(51, 'Guatapé', 5),
(52, 'Heliconia', 5),
(53, 'Hispania', 5),
(54, 'Itagui', 5),
(55, 'Ituango', 5),
(56, 'Belmira', 5),
(57, 'Jericó', 5),
(58, 'La Ceja', 5),
(59, 'La Estrella', 5),
(60, 'La Pintada', 5),
(61, 'La Unión', 5),
(62, 'Liborina', 5),
(63, 'Maceo', 5),
(64, 'Marinilla', 5),
(65, 'Montebello', 5),
(66, 'Murindó', 5),
(67, 'Mutatá', 5),
(68, 'Nariño', 5),
(69, 'Necoclí', 5),
(70, 'Nechí', 5),
(71, 'Olaya', 5),
(72, 'Peñol', 5),
(73, 'Peque', 5),
(74, 'Pueblorrico', 5),
(75, 'Puerto Berrío', 5),
(76, 'Puerto Nare', 5),
(77, 'Puerto Triunfo', 5),
(78, 'Remedios', 5),
(79, 'Retiro', 5),
(80, 'Rionegro', 5),
(81, 'Sabanalarga', 5),
(82, 'Sabaneta', 5),
(83, 'Salgar', 5),
(84, 'San Francisco', 5),
(85, 'San Jerónimo', 5),
(86, 'San Luis', 5),
(87, 'San Pedro', 5),
(88, 'San Rafael', 5),
(89, 'San Roque', 5),
(90, 'San Vicente', 5),
(91, 'Santa Bárbara', 5),
(92, 'Santo Domingo', 5),
(93, 'El Santuario', 5),
(94, 'Segovia', 5),
(95, 'Sopetrán', 5),
(96, 'Támesis', 5),
(97, 'Tarazá', 5),
(98, 'Tarso', 5),
(99, 'Titiribí', 5),
(100, 'Toledo', 5),
(101, 'Turbo', 5),
(102, 'Uramita', 5),
(103, 'Urrao', 5),
(104, 'Valdivia', 5),
(105, 'Valparaíso', 5),
(106, 'Vegachí', 5),
(107, 'Venecia', 5),
(108, 'Yalí', 5),
(109, 'Yarumal', 5),
(110, 'Yolombó', 5),
(111, 'Yondó', 5),
(112, 'Zaragoza', 5),
(113, 'San Pedro de Uraba', 5),
(114, 'Santafé de Antioquia', 5),
(115, 'Santa Rosa de Osos', 5),
(116, 'San Andrés de Cuerqu', 5),
(117, 'Vigía del Fuerte', 5),
(118, 'San José de La Monta', 5),
(119, 'San Juan de Urabá', 5),
(120, 'El Carmen de Viboral', 5),
(121, 'San Carlos', 5),
(122, 'Frontino', 5),
(123, 'Granada', 5),
(124, 'Jardín', 5),
(125, 'Sonsón', 5),
(126, 'Barranquilla', 8),
(127, 'Baranoa', 8),
(128, 'Candelaria', 8),
(129, 'Galapa', 8),
(130, 'Luruaco', 8),
(131, 'Malambo', 8),
(132, 'Manatí', 8),
(133, 'Piojó', 8),
(134, 'Polonuevo', 8),
(135, 'Sabanagrande', 8),
(136, 'Sabanalarga', 8),
(137, 'Santa Lucía', 8),
(138, 'Santo Tomás', 8),
(139, 'Soledad', 8),
(140, 'Suan', 8),
(141, 'Tubará', 8),
(142, 'Usiacurí', 8),
(143, 'Juan de Acosta', 8),
(144, 'Palmar de Varela', 8),
(145, 'Campo de La Cruz', 8),
(146, 'Repelón', 8),
(147, 'Puerto Colombia', 8),
(148, 'Ponedera', 8),
(149, 'Bogotá D.C.', 11),
(150, 'Achí', 13),
(151, 'Arenal', 13),
(152, 'Arjona', 13),
(153, 'Arroyohondo', 13),
(154, 'Calamar', 13),
(155, 'Cantagallo', 13),
(156, 'Cicuco', 13),
(157, 'Córdoba', 13),
(158, 'Clemencia', 13),
(159, 'El Guamo', 13),
(160, 'Magangué', 13),
(161, 'Mahates', 13),
(162, 'Margarita', 13),
(163, 'Montecristo', 13),
(164, 'Mompós', 13),
(165, 'Morales', 13),
(166, 'Norosí', 13),
(167, 'Pinillos', 13),
(168, 'Regidor', 13),
(169, 'Río Viejo', 13),
(170, 'San Estanislao', 13),
(171, 'San Fernando', 13),
(172, 'San Juan Nepomuceno', 13),
(173, 'Santa Catalina', 13),
(174, 'Santa Rosa', 13),
(175, 'Simití', 13),
(176, 'Soplaviento', 13),
(177, 'Talaigua Nuevo', 13),
(178, 'Tiquisio', 13),
(179, 'Turbaco', 13),
(180, 'Turbaná', 13),
(181, 'Villanueva', 13),
(182, 'Barranco de Loba', 13),
(183, 'Santa Rosa del Sur', 13),
(184, 'Hatillo de Loba', 13),
(185, 'El Carmen de Bolívar', 13),
(186, 'San Martín de Loba', 13),
(187, 'Altos del Rosario', 13),
(188, 'San Jacinto del Cauc', 13),
(189, 'San Pablo de Borbur', 13),
(190, 'San Jacinto', 13),
(191, 'El Peñón', 13),
(192, 'Cartagena', 13),
(193, 'María la Baja', 13),
(194, 'San Cristóbal', 13),
(195, 'Zambrano', 13),
(196, 'Tununguá', 15),
(197, 'Motavita', 15),
(198, 'Ciénega', 15),
(199, 'Tunja', 15),
(200, 'Almeida', 15),
(201, 'Aquitania', 15),
(202, 'Arcabuco', 15),
(203, 'Berbeo', 15),
(204, 'Betéitiva', 15),
(205, 'Boavita', 15),
(206, 'Boyacá', 15),
(207, 'Briceño', 15),
(208, 'Buena Vista', 15),
(209, 'Busbanzá', 15),
(210, 'Caldas', 15),
(211, 'Campohermoso', 15),
(212, 'Cerinza', 15),
(213, 'Chinavita', 15),
(214, 'Chiquinquirá', 15),
(215, 'Chiscas', 15),
(216, 'Chita', 15),
(217, 'Chitaraque', 15),
(218, 'Chivatá', 15),
(219, 'Cómbita', 15),
(220, 'Coper', 15),
(221, 'Corrales', 15),
(222, 'Covarachía', 15),
(223, 'Cubará', 15),
(224, 'Cucaita', 15),
(225, 'Cuítiva', 15),
(226, 'Chíquiza', 15),
(227, 'Chivor', 15),
(228, 'Duitama', 15),
(229, 'El Cocuy', 15),
(230, 'El Espino', 15),
(231, 'Firavitoba', 15),
(232, 'Floresta', 15),
(233, 'Gachantivá', 15),
(234, 'Gameza', 15),
(235, 'Garagoa', 15),
(236, 'Guacamayas', 15),
(237, 'Guateque', 15),
(238, 'Guayatá', 15),
(239, 'Güicán', 15),
(240, 'Iza', 15),
(241, 'Jenesano', 15),
(242, 'Jericó', 15),
(243, 'Labranzagrande', 15),
(244, 'La Capilla', 15),
(245, 'La Victoria', 15),
(246, 'Macanal', 15),
(247, 'Maripí', 15),
(248, 'Miraflores', 15),
(249, 'Mongua', 15),
(250, 'Monguí', 15),
(251, 'Moniquirá', 15),
(252, 'Muzo', 15),
(253, 'Nobsa', 15),
(254, 'Nuevo Colón', 15),
(255, 'Oicatá', 15),
(256, 'Otanche', 15),
(257, 'Pachavita', 15),
(258, 'Páez', 15),
(259, 'Paipa', 15),
(260, 'Pajarito', 15),
(261, 'Panqueba', 15),
(262, 'Pauna', 15),
(263, 'Paya', 15),
(264, 'Pesca', 15),
(265, 'Pisba', 15),
(266, 'Puerto Boyacá', 15),
(267, 'Quípama', 15),
(268, 'Ramiriquí', 15),
(269, 'Ráquira', 15),
(270, 'Rondón', 15),
(271, 'Saboyá', 15),
(272, 'Sáchica', 15),
(273, 'Samacá', 15),
(274, 'San Eduardo', 15),
(275, 'San Mateo', 15),
(276, 'Santana', 15),
(277, 'Santa María', 15),
(278, 'Santa Sofía', 15),
(279, 'Sativanorte', 15),
(280, 'Sativasur', 15),
(281, 'Siachoque', 15),
(282, 'Soatá', 15),
(283, 'Socotá', 15),
(284, 'Socha', 15),
(285, 'Sogamoso', 15),
(286, 'Somondoco', 15),
(287, 'Sora', 15),
(288, 'Sotaquirá', 15),
(289, 'Soracá', 15),
(290, 'Susacón', 15),
(291, 'Sutamarchán', 15),
(292, 'Sutatenza', 15),
(293, 'Tasco', 15),
(294, 'Tenza', 15),
(295, 'Tibaná', 15),
(296, 'Tinjacá', 15),
(297, 'Tipacoque', 15),
(298, 'Toca', 15),
(299, 'Tópaga', 15),
(300, 'Tota', 15),
(301, 'Turmequé', 15),
(302, 'Tutazá', 15),
(303, 'Umbita', 15),
(304, 'Ventaquemada', 15),
(305, 'Viracachá', 15),
(306, 'Zetaquira', 15),
(307, 'Togüí', 15),
(308, 'Villa de Leyva', 15),
(309, 'Paz de Río', 15),
(310, 'Santa Rosa de Viterb', 15),
(311, 'San Pablo de Borbur', 15),
(312, 'San Luis de Gaceno', 15),
(313, 'San José de Pare', 15),
(314, 'San Miguel de Sema', 15),
(315, 'Tuta', 15),
(316, 'Tibasosa', 15),
(317, 'La Uvita', 15),
(318, 'Belén', 15),
(319, 'Manizales', 17),
(320, 'Aguadas', 17),
(321, 'Anserma', 17),
(322, 'Aranzazu', 17),
(323, 'Belalcázar', 17),
(324, 'Chinchiná', 17),
(325, 'Filadelfia', 17),
(326, 'La Dorada', 17),
(327, 'La Merced', 17),
(328, 'Manzanares', 17),
(329, 'Marmato', 17),
(330, 'Marulanda', 17),
(331, 'Neira', 17),
(332, 'Norcasia', 17),
(333, 'Pácora', 17),
(334, 'Palestina', 17),
(335, 'Pensilvania', 17),
(336, 'Riosucio', 17),
(337, 'Risaralda', 17),
(338, 'Salamina', 17),
(339, 'Samaná', 17),
(340, 'San José', 17),
(341, 'Supía', 17),
(342, 'Victoria', 17),
(343, 'Villamaría', 17),
(344, 'Viterbo', 17),
(345, 'Marquetalia', 17),
(346, 'Florencia', 18),
(347, 'Albania', 18),
(348, 'Curillo', 18),
(349, 'El Doncello', 18),
(350, 'El Paujil', 18),
(351, 'Morelia', 18),
(352, 'Puerto Rico', 18),
(353, 'Solano', 18),
(354, 'Solita', 18),
(355, 'Valparaíso', 18),
(356, 'San José del Fragua', 18),
(357, 'Belén de Los Andaqui', 18),
(358, 'Cartagena del Chairá', 18),
(359, 'Milán', 18),
(360, 'La Montañita', 18),
(361, 'San Vicente del Cagu', 18),
(362, 'Popayán', 19),
(363, 'Almaguer', 19),
(364, 'Argelia', 19),
(365, 'Balboa', 19),
(366, 'Bolívar', 19),
(367, 'Buenos Aires', 19),
(368, 'Cajibío', 19),
(369, 'Caldono', 19),
(370, 'Caloto', 19),
(371, 'Corinto', 19),
(372, 'El Tambo', 19),
(373, 'Florencia', 19),
(374, 'Guachené', 19),
(375, 'Guapi', 19),
(376, 'Inzá', 19),
(377, 'Jambaló', 19),
(378, 'La Sierra', 19),
(379, 'La Vega', 19),
(380, 'López', 19),
(381, 'Mercaderes', 19),
(382, 'Miranda', 19),
(383, 'Morales', 19),
(384, 'Padilla', 19),
(385, 'Patía', 19),
(386, 'Piamonte', 19),
(387, 'Piendamó', 19),
(388, 'Puerto Tejada', 19),
(389, 'Puracé', 19),
(390, 'Rosas', 19),
(391, 'Santa Rosa', 19),
(392, 'Silvia', 19),
(393, 'Sotara', 19),
(394, 'Suárez', 19),
(395, 'Sucre', 19),
(396, 'Timbío', 19),
(397, 'Timbiquí', 19),
(398, 'Toribio', 19),
(399, 'Totoró', 19),
(400, 'Villa Rica', 19),
(401, 'Santander de Quilich', 19),
(402, 'San Sebastián', 19),
(403, 'Páez', 19),
(404, 'Valledupar', 20),
(405, 'Aguachica', 20),
(406, 'Agustín Codazzi', 20),
(407, 'Astrea', 20),
(408, 'Becerril', 20),
(409, 'Bosconia', 20),
(410, 'Chimichagua', 20),
(411, 'Chiriguaná', 20),
(412, 'Curumaní', 20),
(413, 'El Copey', 20),
(414, 'El Paso', 20),
(415, 'Gamarra', 20),
(416, 'González', 20),
(417, 'La Gloria', 20),
(418, 'Manaure', 20),
(419, 'Pailitas', 20),
(420, 'Pelaya', 20),
(421, 'Pueblo Bello', 20),
(422, 'La Paz', 20),
(423, 'San Alberto', 20),
(424, 'San Diego', 20),
(425, 'San Martín', 20),
(426, 'Tamalameque', 20),
(427, 'Río de Oro', 20),
(428, 'La Jagua de Ibirico', 20),
(429, 'San Bernardo del Vie', 23),
(430, 'Montería', 23),
(431, 'Ayapel', 23),
(432, 'Buenavista', 23),
(433, 'Canalete', 23),
(434, 'Cereté', 23),
(435, 'Chimá', 23),
(436, 'Chinú', 23),
(437, 'Cotorra', 23),
(438, 'Lorica', 23),
(439, 'Los Córdobas', 23),
(440, 'Momil', 23),
(441, 'Moñitos', 23),
(442, 'Planeta Rica', 23),
(443, 'Pueblo Nuevo', 23),
(444, 'Puerto Escondido', 23),
(445, 'Purísima', 23),
(446, 'Sahagún', 23),
(447, 'San Andrés Sotavento', 23),
(448, 'San Antero', 23),
(449, 'San Pelayo', 23),
(450, 'Tierralta', 23),
(451, 'Tuchín', 23),
(452, 'Valencia', 23),
(453, 'San José de Uré', 23),
(454, 'Ciénaga de Oro', 23),
(455, 'San Carlos', 23),
(456, 'Montelíbano', 23),
(457, 'La Apartada', 23),
(458, 'Puerto Libertador', 23),
(459, 'Anapoima', 25),
(460, 'Arbeláez', 25),
(461, 'Beltrán', 25),
(462, 'Bituima', 25),
(463, 'Bojacá', 25),
(464, 'Cabrera', 25),
(465, 'Cachipay', 25),
(466, 'Cajicá', 25),
(467, 'Caparrapí', 25),
(468, 'Caqueza', 25),
(469, 'Chaguaní', 25),
(470, 'Chipaque', 25),
(471, 'Choachí', 25),
(472, 'Chocontá', 25),
(473, 'Cogua', 25),
(474, 'Cota', 25),
(475, 'Cucunubá', 25),
(476, 'El Colegio', 25),
(477, 'El Rosal', 25),
(478, 'Fomeque', 25),
(479, 'Fosca', 25),
(480, 'Funza', 25),
(481, 'Fúquene', 25),
(482, 'Gachala', 25),
(483, 'Gachancipá', 25),
(484, 'Gachetá', 25),
(485, 'Girardot', 25),
(486, 'Granada', 25),
(487, 'Guachetá', 25),
(488, 'Guaduas', 25),
(489, 'Guasca', 25),
(490, 'Guataquí', 25),
(491, 'Guatavita', 25),
(492, 'Guayabetal', 25),
(493, 'Gutiérrez', 25),
(494, 'Jerusalén', 25),
(495, 'Junín', 25),
(496, 'La Calera', 25),
(497, 'La Mesa', 25),
(498, 'La Palma', 25),
(499, 'La Peña', 25),
(500, 'La Vega', 25),
(501, 'Lenguazaque', 25),
(502, 'Macheta', 25),
(503, 'Madrid', 25),
(504, 'Manta', 25),
(505, 'Medina', 25),
(506, 'Mosquera', 25),
(507, 'Nariño', 25),
(508, 'Nemocón', 25),
(509, 'Nilo', 25),
(510, 'Nimaima', 25),
(511, 'Nocaima', 25),
(512, 'Venecia', 25),
(513, 'Pacho', 25),
(514, 'Paime', 25),
(515, 'Pandi', 25),
(516, 'Paratebueno', 25),
(517, 'Pasca', 25),
(518, 'Puerto Salgar', 25),
(519, 'Pulí', 25),
(520, 'Quebradanegra', 25),
(521, 'Quetame', 25),
(522, 'Quipile', 25),
(523, 'Apulo', 25),
(524, 'Ricaurte', 25),
(525, 'San Bernardo', 25),
(526, 'San Cayetano', 25),
(527, 'San Francisco', 25),
(528, 'Sesquilé', 25),
(529, 'Sibaté', 25),
(530, 'Silvania', 25),
(531, 'Simijaca', 25),
(532, 'Soacha', 25),
(533, 'Subachoque', 25),
(534, 'Suesca', 25),
(535, 'Supatá', 25),
(536, 'Susa', 25),
(537, 'Sutatausa', 25),
(538, 'Tabio', 25),
(539, 'Tausa', 25),
(540, 'Tena', 25),
(541, 'Tenjo', 25),
(542, 'Tibacuy', 25),
(543, 'Tibirita', 25),
(544, 'Tocaima', 25),
(545, 'Tocancipá', 25),
(546, 'Topaipí', 25),
(547, 'Ubalá', 25),
(548, 'Ubaque', 25),
(549, 'Une', 25),
(550, 'Útica', 25),
(551, 'Vianí', 25),
(552, 'Villagómez', 25),
(553, 'Villapinzón', 25),
(554, 'Villeta', 25),
(555, 'Viotá', 25),
(556, 'Zipacón', 25),
(557, 'San Juan de Río Seco', 25),
(558, 'Villa de San Diego d', 25),
(559, 'Guayabal de Siquima', 25),
(560, 'San Antonio del Tequ', 25),
(561, 'Agua de Dios', 25),
(562, 'Carmen de Carupa', 25),
(563, 'Vergara', 25),
(564, 'Albán', 25),
(565, 'Anolaima', 25),
(566, 'Chía', 25),
(567, 'El Peñón', 25),
(568, 'Sopó', 25),
(569, 'Gama', 25),
(570, 'Sasaima', 25),
(571, 'Yacopí', 25),
(572, 'Fusagasugá', 25),
(573, 'Zipaquirá', 25),
(574, 'Facatativá', 25),
(575, 'Istmina', 27),
(576, 'Quibdó', 27),
(577, 'Acandí', 27),
(578, 'Alto Baudo', 27),
(579, 'Atrato', 27),
(580, 'Bagadó', 27),
(581, 'Bahía Solano', 27),
(582, 'Bajo Baudó', 27),
(583, 'Bojaya', 27),
(584, 'Cértegui', 27),
(585, 'Condoto', 27),
(586, 'Juradó', 27),
(587, 'Lloró', 27),
(588, 'Medio Atrato', 27),
(589, 'Medio Baudó', 27),
(590, 'Medio San Juan', 27),
(591, 'Nóvita', 27),
(592, 'Nuquí', 27),
(593, 'Río Iro', 27),
(594, 'Río Quito', 27),
(595, 'Riosucio', 27),
(596, 'Sipí', 27),
(597, 'Unguía', 27),
(598, 'El Litoral del San J', 27),
(599, 'El Cantón del San Pa', 27),
(600, 'El Carmen de Atrato', 27),
(601, 'San José del Palmar', 27),
(602, 'Belén de Bajira', 27),
(603, 'Carmen del Darien', 27),
(604, 'Tadó', 27),
(605, 'Unión Panamericana', 27),
(606, 'Neiva', 41),
(607, 'Acevedo', 41),
(608, 'Agrado', 41),
(609, 'Aipe', 41),
(610, 'Algeciras', 41),
(611, 'Altamira', 41),
(612, 'Baraya', 41),
(613, 'Campoalegre', 41),
(614, 'Colombia', 41),
(615, 'Elías', 41),
(616, 'Garzón', 41),
(617, 'Gigante', 41),
(618, 'Guadalupe', 41),
(619, 'Hobo', 41),
(620, 'Iquira', 41),
(621, 'Isnos', 41),
(622, 'La Argentina', 41),
(623, 'La Plata', 41),
(624, 'Nátaga', 41),
(625, 'Oporapa', 41),
(626, 'Paicol', 41),
(627, 'Palermo', 41),
(628, 'Palestina', 41),
(629, 'Pital', 41),
(630, 'Pitalito', 41),
(631, 'Rivera', 41),
(632, 'Saladoblanco', 41),
(633, 'Santa María', 41),
(634, 'Suaza', 41),
(635, 'Tarqui', 41),
(636, 'Tesalia', 41),
(637, 'Tello', 41),
(638, 'Teruel', 41),
(639, 'Timaná', 41),
(640, 'Villavieja', 41),
(641, 'Yaguará', 41),
(642, 'San Agustín', 41),
(643, 'Riohacha', 44),
(644, 'Albania', 44),
(645, 'Barrancas', 44),
(646, 'Dibula', 44),
(647, 'Distracción', 44),
(648, 'El Molino', 44),
(649, 'Fonseca', 44),
(650, 'Hatonuevo', 44),
(651, 'Maicao', 44),
(652, 'Manaure', 44),
(653, 'Uribia', 44),
(654, 'Urumita', 44),
(655, 'Villanueva', 44),
(656, 'La Jagua del Pilar', 44),
(657, 'San Juan del Cesar', 44),
(658, 'Santa Marta', 47),
(659, 'Algarrobo', 47),
(660, 'Aracataca', 47),
(661, 'Ariguaní', 47),
(662, 'Cerro San Antonio', 47),
(663, 'Chivolo', 47),
(664, 'Concordia', 47),
(665, 'El Banco', 47),
(666, 'El Piñon', 47),
(667, 'El Retén', 47),
(668, 'Fundación', 47),
(669, 'Guamal', 47),
(670, 'Nueva Granada', 47),
(671, 'Pedraza', 47),
(672, 'Pivijay', 47),
(673, 'Plato', 47),
(674, 'Remolino', 47),
(675, 'Salamina', 47),
(676, 'San Zenón', 47),
(677, 'Santa Ana', 47),
(678, 'Sitionuevo', 47),
(679, 'Tenerife', 47),
(680, 'Zapayán', 47),
(681, 'Zona Bananera', 47),
(682, 'San Sebastián de Bue', 47),
(683, 'Sabanas de San Angel', 47),
(684, 'Pijiño del Carmen', 47),
(685, 'Santa Bárbara de Pin', 47),
(686, 'Pueblo Viejo', 47),
(687, 'Ciénaga', 47),
(688, 'Uribe', 50),
(689, 'Villavicencio', 50),
(690, 'Acacias', 50),
(691, 'Cabuyaro', 50),
(692, 'Cubarral', 50),
(693, 'Cumaral', 50),
(694, 'El Calvario', 50),
(695, 'El Castillo', 50),
(696, 'El Dorado', 50),
(697, 'Granada', 50),
(698, 'Guamal', 50),
(699, 'Mapiripán', 50),
(700, 'Mesetas', 50),
(701, 'La Macarena', 50),
(702, 'Lejanías', 50),
(703, 'Puerto Concordia', 50),
(704, 'Puerto Gaitán', 50),
(705, 'Puerto López', 50),
(706, 'Puerto Lleras', 50),
(707, 'Puerto Rico', 50),
(708, 'Restrepo', 50),
(709, 'San Juanito', 50),
(710, 'San Martín', 50),
(711, 'Vista Hermosa', 50),
(712, 'Barranca de Upía', 50),
(713, 'Fuente de Oro', 50),
(714, 'San Carlos de Guaroa', 50),
(715, 'San Juan de Arama', 50),
(716, 'Castilla la Nueva', 50),
(717, 'Santacruz', 52),
(718, 'Pasto', 52),
(719, 'Albán', 52),
(720, 'Aldana', 52),
(721, 'Ancuyá', 52),
(722, 'Barbacoas', 52),
(723, 'Colón', 52),
(724, 'Consaca', 52),
(725, 'Contadero', 52),
(726, 'Córdoba', 52),
(727, 'Cuaspud', 52),
(728, 'Cumbal', 52),
(729, 'Cumbitara', 52),
(730, 'El Charco', 52),
(731, 'El Peñol', 52),
(732, 'El Rosario', 52),
(733, 'El Tambo', 52),
(734, 'Funes', 52),
(735, 'Guachucal', 52),
(736, 'Guaitarilla', 52),
(737, 'Gualmatán', 52),
(738, 'Iles', 52),
(739, 'Imués', 52),
(740, 'Ipiales', 52),
(741, 'La Cruz', 52),
(742, 'La Florida', 52),
(743, 'La Llanada', 52),
(744, 'La Tola', 52),
(745, 'La Unión', 52),
(746, 'Leiva', 52),
(747, 'Linares', 52),
(748, 'Los Andes', 52),
(749, 'Magüí', 52),
(750, 'Mallama', 52),
(751, 'Mosquera', 52),
(752, 'Nariño', 52),
(753, 'Olaya Herrera', 52),
(754, 'Ospina', 52),
(755, 'Francisco Pizarro', 52),
(756, 'Policarpa', 52),
(757, 'Potosí', 52),
(758, 'Providencia', 52),
(759, 'Puerres', 52),
(760, 'Pupiales', 52),
(761, 'Ricaurte', 52),
(762, 'Roberto Payán', 52),
(763, 'Samaniego', 52),
(764, 'Sandoná', 52),
(765, 'San Bernardo', 52),
(766, 'San Lorenzo', 52),
(767, 'San Pablo', 52),
(768, 'Santa Bárbara', 52),
(769, 'Sapuyes', 52),
(770, 'Taminango', 52),
(771, 'Tangua', 52),
(772, 'Túquerres', 52),
(773, 'Yacuanquer', 52),
(774, 'San Pedro de Cartago', 52),
(775, 'El Tablón de Gómez', 52),
(776, 'Buesaco', 52),
(777, 'San Andrés de Tumaco', 52),
(778, 'Belén', 52),
(779, 'Chachagüí', 52),
(780, 'Arboleda', 52),
(781, 'Silos', 54),
(782, 'Cácota', 54),
(783, 'Toledo', 54),
(784, 'Mutiscua', 54),
(785, 'El Zulia', 54),
(786, 'Salazar', 54),
(787, 'Cucutilla', 54),
(788, 'Puerto Santander', 54),
(789, 'Gramalote', 54),
(790, 'El Tarra', 54),
(791, 'Teorama', 54),
(792, 'Arboledas', 54),
(793, 'Lourdes', 54),
(794, 'Bochalema', 54),
(795, 'Convención', 54),
(796, 'Hacarí', 54),
(797, 'Herrán', 54),
(798, 'Tibú', 54),
(799, 'San Cayetano', 54),
(800, 'San Calixto', 54),
(801, 'La Playa', 54),
(802, 'Chinácota', 54),
(803, 'Ragonvalia', 54),
(804, 'La Esperanza', 54),
(805, 'Villa del Rosario', 54),
(806, 'Chitagá', 54),
(807, 'Sardinata', 54),
(808, 'Abrego', 54),
(809, 'Los Patios', 54),
(810, 'Ocaña', 54),
(811, 'Bucarasica', 54),
(812, 'Santiago', 54),
(813, 'Labateca', 54),
(814, 'Cachirá', 54),
(815, 'Villa Caro', 54),
(816, 'Durania', 54),
(817, 'Pamplona', 54),
(818, 'Pamplonita', 54),
(819, 'Cúcuta', 54),
(820, 'El Carmen', 54),
(821, 'Armenia', 63),
(822, 'Buenavista', 63),
(823, 'Circasia', 63),
(824, 'Córdoba', 63),
(825, 'Filandia', 63),
(826, 'La Tebaida', 63),
(827, 'Montenegro', 63),
(828, 'Pijao', 63),
(829, 'Quimbaya', 63),
(830, 'Salento', 63),
(831, 'Calarcá', 63),
(832, 'Génova', 63),
(833, 'Pereira', 66),
(834, 'Apía', 66),
(835, 'Balboa', 66),
(836, 'Dosquebradas', 66),
(837, 'Guática', 66),
(838, 'La Celia', 66),
(839, 'La Virginia', 66),
(840, 'Marsella', 66),
(841, 'Mistrató', 66),
(842, 'Pueblo Rico', 66),
(843, 'Quinchía', 66),
(844, 'Santuario', 66),
(845, 'Santa Rosa de Cabal', 66),
(846, 'Belén de Umbría', 66),
(847, 'Puerto Wilches', 68),
(848, 'Puerto Parra', 68),
(849, 'Bucaramanga', 68),
(850, 'Aguada', 68),
(851, 'Albania', 68),
(852, 'Aratoca', 68),
(853, 'Barbosa', 68),
(854, 'Barichara', 68),
(855, 'Barrancabermeja', 68),
(856, 'Betulia', 68),
(857, 'Bolívar', 68),
(858, 'Cabrera', 68),
(859, 'California', 68),
(860, 'Carcasí', 68),
(861, 'Cepitá', 68),
(862, 'Cerrito', 68),
(863, 'Charalá', 68),
(864, 'Charta', 68),
(865, 'Chipatá', 68),
(866, 'Cimitarra', 68),
(867, 'Concepción', 68),
(868, 'Confines', 68),
(869, 'Contratación', 68),
(870, 'Coromoro', 68),
(871, 'Curití', 68),
(872, 'El Guacamayo', 68),
(873, 'El Playón', 68),
(874, 'Encino', 68),
(875, 'Enciso', 68),
(876, 'Florián', 68),
(877, 'Floridablanca', 68),
(878, 'Galán', 68),
(879, 'Gambita', 68),
(880, 'Girón', 68),
(881, 'Guaca', 68),
(882, 'Guadalupe', 68),
(883, 'Guapotá', 68),
(884, 'Guavatá', 68),
(885, 'Güepsa', 68),
(886, 'Jesús María', 68),
(887, 'Jordán', 68),
(888, 'La Belleza', 68),
(889, 'Landázuri', 68),
(890, 'La Paz', 68),
(891, 'Lebríja', 68),
(892, 'Los Santos', 68),
(893, 'Macaravita', 68),
(894, 'Málaga', 68),
(895, 'Matanza', 68),
(896, 'Mogotes', 68),
(897, 'Molagavita', 68),
(898, 'Ocamonte', 68),
(899, 'Oiba', 68),
(900, 'Onzaga', 68),
(901, 'Palmar', 68),
(902, 'Páramo', 68),
(903, 'Piedecuesta', 68),
(904, 'Pinchote', 68),
(905, 'Puente Nacional', 68),
(906, 'Rionegro', 68),
(907, 'San Andrés', 68),
(908, 'San Gil', 68),
(909, 'San Joaquín', 68),
(910, 'San Miguel', 68),
(911, 'Santa Bárbara', 68),
(912, 'Simacota', 68),
(913, 'Socorro', 68),
(914, 'Suaita', 68),
(915, 'Sucre', 68),
(916, 'Suratá', 68),
(917, 'Tona', 68),
(918, 'Vélez', 68),
(919, 'Vetas', 68),
(920, 'Villanueva', 68),
(921, 'Zapatoca', 68),
(922, 'Palmas del Socorro', 68),
(923, 'San Vicente de Chucu', 68),
(924, 'San José de Miranda', 68),
(925, 'Santa Helena del Opó', 68),
(926, 'Sabana de Torres', 68),
(927, 'El Carmen de Chucurí', 68),
(928, 'Valle de San José', 68),
(929, 'San Benito', 68),
(930, 'Hato', 68),
(931, 'Chimá', 68),
(932, 'Capitanejo', 68),
(933, 'El Peñón', 68),
(934, 'Sincelejo', 70),
(935, 'Buenavista', 70),
(936, 'Caimito', 70),
(937, 'Coloso', 70),
(938, 'Coveñas', 70),
(939, 'Chalán', 70),
(940, 'El Roble', 70),
(941, 'Galeras', 70),
(942, 'Guaranda', 70),
(943, 'La Unión', 70),
(944, 'Los Palmitos', 70),
(945, 'Majagual', 70),
(946, 'Morroa', 70),
(947, 'Ovejas', 70),
(948, 'Palmito', 70),
(949, 'San Benito Abad', 70),
(950, 'San Marcos', 70),
(951, 'San Onofre', 70),
(952, 'San Pedro', 70),
(953, 'Sucre', 70),
(954, 'Tolú Viejo', 70),
(955, 'San Luis de Sincé', 70),
(956, 'San Juan de Betulia', 70),
(957, 'Santiago de Tolú', 70),
(958, 'Sampués', 70),
(959, 'Corozal', 70),
(960, 'Alpujarra', 73),
(961, 'Alvarado', 73),
(962, 'Ambalema', 73),
(963, 'Armero', 73),
(964, 'Ataco', 73),
(965, 'Cajamarca', 73),
(966, 'Chaparral', 73),
(967, 'Coello', 73),
(968, 'Coyaima', 73),
(969, 'Cunday', 73),
(970, 'Dolores', 73),
(971, 'Espinal', 73),
(972, 'Falan', 73),
(973, 'Flandes', 73),
(974, 'Fresno', 73),
(975, 'Guamo', 73),
(976, 'Herveo', 73),
(977, 'Honda', 73),
(978, 'Icononzo', 73),
(979, 'Mariquita', 73),
(980, 'Melgar', 73),
(981, 'Murillo', 73),
(982, 'Natagaima', 73),
(983, 'Ortega', 73),
(984, 'Palocabildo', 73),
(985, 'Piedras', 73),
(986, 'Planadas', 73),
(987, 'Prado', 73),
(988, 'Purificación', 73),
(989, 'Rio Blanco', 73),
(990, 'Roncesvalles', 73),
(991, 'Rovira', 73),
(992, 'Saldaña', 73),
(993, 'Santa Isabel', 73),
(994, 'Venadillo', 73),
(995, 'Villahermosa', 73),
(996, 'Villarrica', 73),
(997, 'Valle de San Juan', 73),
(998, 'Carmen de Apicala', 73),
(999, 'San Luis', 73),
(1000, 'San Antonio', 73),
(1001, 'Casabianca', 73),
(1002, 'Anzoátegui', 73),
(1003, 'Ibagué', 73),
(1004, 'Líbano', 73),
(1005, 'Lérida', 73),
(1006, 'Suárez', 73),
(1007, 'El Dovio', 76),
(1008, 'Roldanillo', 76),
(1009, 'Argelia', 76),
(1010, 'Sevilla', 76),
(1011, 'Zarzal', 76),
(1012, 'El Cerrito', 76),
(1013, 'Cartago', 76),
(1014, 'Caicedonia', 76),
(1015, 'El Cairo', 76),
(1016, 'La Unión', 76),
(1017, 'Restrepo', 76),
(1018, 'Dagua', 76),
(1019, 'Guacarí', 76),
(1020, 'Ansermanuevo', 76),
(1021, 'Bugalagrande', 76),
(1022, 'La Victoria', 76),
(1023, 'Ginebra', 76),
(1024, 'Yumbo', 76),
(1025, 'Obando', 76),
(1026, 'Bolívar', 76),
(1027, 'Cali', 76),
(1028, 'San Pedro', 76),
(1029, 'Guadalajara de Buga', 76),
(1030, 'Calima', 76),
(1031, 'Andalucía', 76),
(1032, 'Pradera', 76),
(1033, 'Yotoco', 76),
(1034, 'Palmira', 76),
(1035, 'Riofrío', 76),
(1036, 'Alcalá', 76),
(1037, 'Versalles', 76),
(1038, 'El Águila', 76),
(1039, 'Toro', 76),
(1040, 'Candelaria', 76),
(1041, 'La Cumbre', 76),
(1042, 'Ulloa', 76),
(1043, 'Trujillo', 76),
(1044, 'Vijes', 76),
(1045, 'Tuluá', 76),
(1046, 'Florida', 76),
(1047, 'Jamundí', 76),
(1048, 'Buenaventura', 76),
(1049, 'Arauquita', 81),
(1050, 'Cravo Norte', 81),
(1051, 'Fortul', 81),
(1052, 'Puerto Rondón', 81),
(1053, 'Saravena', 81),
(1054, 'Tame', 81),
(1055, 'Arauca', 81),
(1056, 'Yopal', 85),
(1057, 'Aguazul', 85),
(1058, 'Chámeza', 85),
(1059, 'Hato Corozal', 85),
(1060, 'La Salina', 85),
(1061, 'Monterrey', 85),
(1062, 'Pore', 85),
(1063, 'Recetor', 85),
(1064, 'Sabanalarga', 85),
(1065, 'Sácama', 85),
(1066, 'Tauramena', 85),
(1067, 'Trinidad', 85),
(1068, 'Villanueva', 85),
(1069, 'San Luis de Gaceno', 85),
(1070, 'Paz de Ariporo', 85),
(1071, 'Nunchía', 85),
(1072, 'Maní', 85),
(1073, 'Támara', 85),
(1074, 'Orocué', 85),
(1075, 'Mocoa', 86),
(1076, 'Colón', 86),
(1077, 'Orito', 86),
(1078, 'Puerto Caicedo', 86),
(1079, 'Puerto Guzmán', 86),
(1080, 'Leguízamo', 86),
(1081, 'Sibundoy', 86),
(1082, 'San Francisco', 86),
(1083, 'San Miguel', 86),
(1084, 'Santiago', 86),
(1085, 'Valle de Guamez', 86),
(1086, 'Puerto Asís', 86),
(1087, 'Villagarzón', 86),
(1088, 'Providencia', 88),
(1089, 'San Andrés', 88),
(1090, 'Leticia', 91),
(1091, 'El Encanto', 91),
(1092, 'La Chorrera', 91),
(1093, 'La Pedrera', 91),
(1094, 'La Victoria', 91),
(1095, 'Puerto Arica', 91),
(1096, 'Puerto Nariño', 91),
(1097, 'Puerto Santander', 91),
(1098, 'Tarapacá', 91),
(1099, 'Puerto Alegría', 91),
(1100, 'Miriti Paraná', 91),
(1101, 'Inírida', 94),
(1102, 'Barranco Minas', 94),
(1103, 'Mapiripana', 94),
(1104, 'San Felipe', 94),
(1105, 'Puerto Colombia', 94),
(1106, 'La Guadalupe', 94),
(1107, 'Cacahual', 94),
(1108, 'Pana Pana', 94),
(1109, 'Morichal', 94),
(1110, 'Calamar', 95),
(1111, 'San José del Guaviar', 95),
(1112, 'Miraflores', 95),
(1113, 'El Retorno', 95),
(1114, 'Puerto Carreño', 99),
(1115, 'La Primavera', 99),
(1116, 'Santa Rosalía', 99),
(1117, 'Cumaribo', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phase`
--

CREATE TABLE `phase` (
  `idFase` int(11) NOT NULL,
  `nombreFase` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question`
--

CREATE TABLE `question` (
  `idPregunta` int(11) NOT NULL,
  `idPrueba` int(11) NOT NULL,
  `numeroPregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE `test` (
  `idPrueba` int(11) NOT NULL,
  `nombrePrueba` varchar(45) NOT NULL,
  `idFase` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `time`
--

CREATE TABLE `time` (
  `idTiempo` int(11) NOT NULL,
  `idPrueba` int(11) NOT NULL,
  `identification` varchar(20) NOT NULL,
  `tiempo` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `identification` varchar(20) NOT NULL,
  `password` varbinary(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `lastname1` varchar(20) NOT NULL,
  `lastname2` varchar(20) DEFAULT NULL,
  `maritalStatus` varchar(10) NOT NULL,
  `birthDate` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `idMunicipality` int(11) NOT NULL,
  `educationLevel` varchar(20) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `workArea` varchar(45) NOT NULL,
  `company` varchar(45) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `permission` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `registrationDate` date NOT NULL,
  `terms` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`identification`, `password`, `name`, `lastname1`, `lastname2`, `maritalStatus`, `birthDate`, `gender`, `idMunicipality`, `educationLevel`, `occupation`, `workArea`, `company`, `phone`, `email`, `permission`, `status`, `registrationDate`, `terms`) VALUES
('1037642684', 0x501defc4013f3f21529c123f33c065ad, 'Julio', 'Betancur', 'Salazar', 'soltero', '1995-06-06', 'Masculino', 1, 'Tecnologo', 'Estudiante', 'Tecnologia', 'SQA', '3148001676', 'juliobetancur2@gmail.com', 'Administrador', 1, '2021-11-27', 1),
('43616548', 0x2b6baef93b7aaef0438187461fb14b63, 'Lina', 'Rodriguez', 'Bedoya', 'soltero', '2000-05-12', 'femenino', 1, 'bachillerato', 'Estudiante', 'Filosofia', 'Universidad Haveriana', '3008953484', 'linarroma@gmail.com', 'Postulante', 1, '2021-12-15', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`idRespuesta`),
  ADD KEY `fk_respuestas_preguntas` (`idPregunta`),
  ADD KEY `fk_respuestas_usuarios` (`cedulaUsuario`);

--
-- Indices de la tabla `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `municipality`
--
ALTER TABLE `municipality`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `phase`
--
ALTER TABLE `phase`
  ADD PRIMARY KEY (`idFase`);

--
-- Indices de la tabla `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`idPregunta`);

--
-- Indices de la tabla `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`idPrueba`);

--
-- Indices de la tabla `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`idTiempo`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`identification`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `answer`
--
ALTER TABLE `answer`
  MODIFY `idRespuesta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `department`
--
ALTER TABLE `department`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `municipality`
--
ALTER TABLE `municipality`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1118;

--
-- AUTO_INCREMENT de la tabla `phase`
--
ALTER TABLE `phase`
  MODIFY `idFase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `question`
--
ALTER TABLE `question`
  MODIFY `idPregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `test`
--
ALTER TABLE `test`
  MODIFY `idPrueba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `time`
--
ALTER TABLE `time`
  MODIFY `idTiempo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipality`
--
ALTER TABLE `municipality`
  ADD CONSTRAINT `municipality_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `department` (`id_departamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
