-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-03-2023 a las 13:49:53
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectofinalgg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` text NOT NULL,
  `detalle` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `detalle`) VALUES
(1, 'UTN - Nov2022 - Abr2023', 'Desarrollador Web - Inicial'),
(15, 'Proaxion Consultora - Oct2010', 'Taller sobre Workforce y Management'),
(16, 'Taller sobre Workforce y Management', 'Oratoria'),
(17, 'Grupo Clarín - Jul2007', 'Curso de Liderazgo'),
(18, 'Multicanal - Oct1997', 'Venta Telefónica'),
(3, 'COPC Inc - Nov2016', 'Certificado Coordinador Registrad VMO - Versión 5.2'),
(5, 'Universidad de Palermo - Sept2016', 'Convivencia Generacional'),
(6, 'Cablevisión/Fibertel - Nov 2014', 'Programa de Desarrollo y conducción'),
(12, 'Universidad de Palermo - Sept2013', 'Programa ejecutivo – NEGOCIACION'),
(13, 'EXO Training Center - Jul2013', 'EXO Training Center - Jul2013'),
(14, 'Grupo Clarín - Jul2011', 'Innovación y Creatividad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'gabriel', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'eduardo', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'galeano', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
