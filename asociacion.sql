-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-04-2022 a las 19:57:53
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asociacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id_preci` int(11) NOT NULL,
  `festivos` int(20) NOT NULL,
  `dia_espectador` int(20) NOT NULL,
  `dia_jubilado` int(20) NOT NULL,
  `vísperas` int(20) NOT NULL,
  `carnet_estudiante` int(20) NOT NULL,
  `cine_id_cine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` (`id_preci`, `festivos`, `dia_espectador`, `dia_jubilado`, `vísperas`, `carnet_estudiante`, `cine_id_cine`) VALUES
(1, 20000, 14000, 13000, 18000, 10000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_cine`
--

CREATE TABLE `tabla_cine` (
  `id` int(11) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Horario` date NOT NULL,
  `Director` varchar(50) NOT NULL,
  `Prota` varchar(50) NOT NULL,
  `Genero` varchar(50) NOT NULL,
  `Clasificación` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tabla_cine`
--

INSERT INTO `tabla_cine` (`id`, `Titulo`, `Horario`, `Director`, `Prota`, `Genero`, `Clasificación`) VALUES
(1, 'Dragon ball', '2022-04-07', 'Chico Gel ', 'Goku, Vegeta, Broly', 'Accion,animado ', 'Para todas las edades'),
(2, 'Chuky ', '2022-06-10', 'Periquito pin pin ', 'Chucky, Anabelle, Sofia', 'Terror', 'Mayores de 17 años '),
(3, 'rapido y furioso 2', '2019-04-16', 'Amparo Grisales ', 'Richard, Toreto, Brayan ', 'Accion, Familia', 'Para mayores de 13 años');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_ubi` int(11) NOT NULL,
  `dirección` varchar(50) NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`id_preci`),
  ADD KEY `cine_id_cine` (`cine_id_cine`);

--
-- Indices de la tabla `tabla_cine`
--
ALTER TABLE `tabla_cine`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_ubi`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id_preci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tabla_cine`
--
ALTER TABLE `tabla_cine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id_ubi` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
