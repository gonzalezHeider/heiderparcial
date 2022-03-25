-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-03-2022 a las 03:18:31
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: ` empresa sti.`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL,
  `calorias` int(11) DEFAULT NULL,
  `propiedades` varchar(45) DEFAULT NULL,
  `nombreingredientes` varchar(45) DEFAULT NULL,
  `id_plato` int(11) DEFAULT NULL,
  `id_pasoreceta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `precio` int(11) DEFAULT NULL,
  `tipomenu` varchar(45) DEFAULT NULL,
  `id_plato` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `precio`, `tipomenu`, `id_plato`) VALUES
(10, 1012, 'ejecutivo', 12),
(11, 1012, 'gastronomico', 12),
(13, 1012, 'fijo', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasoreceta`
--

CREATE TABLE `pasoreceta` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `numpaso` int(11) DEFAULT NULL,
  `operacion` varchar(45) DEFAULT NULL,
  `tiempototal` int(11) DEFAULT NULL,
  `utencilios` varchar(45) DEFAULT NULL,
  `id_receta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

CREATE TABLE `plato` (
  `id` int(11) NOT NULL,
  `nombreplato` varchar(45) DEFAULT NULL,
  `tipoplato` varchar(50) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plato`
--

INSERT INTO `plato` (`id`, `nombreplato`, `tipoplato`, `precio`, `comentario`, `id_menu`) VALUES
(1, 'pescadofrito', 'entrada', 100, 'muy rico', 11),
(2, 'pescadofrito', 'entrada', 100, 'muy rico', 11),
(3, 'pizza', 'merienda', 200, 'deliciosa', 13),
(4, 'paella', 'postre', 500, 'bueno', 10),
(9, 'pescadofrito', 'entrada', 100, 'muy rico', 11),
(17, 'pescadofrito', 'entrada', 100, 'muy rico', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `id` int(11) NOT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `fuente` varchar(45) DEFAULT NULL,
  `tiemporeal` int(11) DEFAULT NULL,
  `id_plato` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasoreceta` (`id_pasoreceta`),
  ADD KEY `pto` (`id_plato`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pasoreceta`
--
ALTER TABLE `pasoreceta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receta` (`id_receta`);

--
-- Indices de la tabla `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu` (`id_menu`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plato` (`id_plato`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD CONSTRAINT `pasoreceta` FOREIGN KEY (`id_pasoreceta`) REFERENCES `pasoreceta` (`id`),
  ADD CONSTRAINT `pto` FOREIGN KEY (`id_plato`) REFERENCES `plato` (`id`);

--
-- Filtros para la tabla `pasoreceta`
--
ALTER TABLE `pasoreceta`
  ADD CONSTRAINT `receta` FOREIGN KEY (`id_receta`) REFERENCES `receta` (`id`);

--
-- Filtros para la tabla `plato`
--
ALTER TABLE `plato`
  ADD CONSTRAINT `menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`);

--
-- Filtros para la tabla `receta`
--
ALTER TABLE `receta`
  ADD CONSTRAINT `plato` FOREIGN KEY (`id_plato`) REFERENCES `plato` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
