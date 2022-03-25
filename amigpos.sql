-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-03-2022 a las 21:00:37
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
-- Base de datos: `amigos2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigpos`
--

CREATE TABLE `amigpos` (
  `id` int(11) NOT NULL,
  `fecha_soli` date DEFAULT NULL,
  `id_emisor` int(11) DEFAULT NULL,
  `id_receptor` int(11) DEFAULT NULL,
  `fecha_acepta` date DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `amigpos`
--

INSERT INTO `amigpos` (`id`, `fecha_soli`, `id_emisor`, `id_receptor`, `fecha_acepta`, `estado`) VALUES
(3, '2021-06-08', 1, 2, '2021-12-01', 'true '),
(4, '2021-11-17', 2, 1, '2022-03-09', 'false ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amigpos`
--
ALTER TABLE `amigpos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona1` (`id_emisor`),
  ADD KEY `persona` (`id_receptor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `amigpos`
--
ALTER TABLE `amigpos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `amigpos`
--
ALTER TABLE `amigpos`
  ADD CONSTRAINT `persona` FOREIGN KEY (`id_receptor`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `persona1` FOREIGN KEY (`id_emisor`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
