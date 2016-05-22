-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2016 a las 15:12:19
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formula1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuderia`
--

CREATE TABLE `escuderia` (
  `CODIGO` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `MOTOR` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `escuderia`
--

INSERT INTO `escuderia` (`CODIGO`, `NOMBRE`, `MOTOR`) VALUES
(1, 'Mercedes AMG Petronas F1 Team', 'Mercedes PU106C Hybrid'),
(2, 'Ferrari', 'Ferrari 059/5'),
(3, 'Williams Martini Racing', 'Mercedes PU106C Hybrid'),
(4, ' Red Bull Racing', 'TAG Heuer'),
(5, 'Sahara Force India F1 Team', 'Mercedes PU106C Hybrid'),
(6, 'Renault Sport F1 Team', 'Renault RE16'),
(7, 'Scuderia Toro Rosso', 'Ferrari 059/4'),
(8, 'Sauber F1 Team', 'Ferrari 059/5'),
(9, 'McLaren Honda F1 Team', 'Honda RA616H'),
(10, 'Manor Racing MRT', '	Mercedes PU106C Hybrid'),
(11, ' Haas F1 Team', 'Ferrari 059/5'),
(12, 'zambrana', 'Er mas polluo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pilotos`
--

CREATE TABLE `pilotos` (
  `CODIGO` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDOS` varchar(50) NOT NULL,
  `Fecha_nacimiento` date NOT NULL,
  `NACIONALIDAD` varchar(50) DEFAULT NULL,
  `TITULOS` int(11) DEFAULT '0',
  `NUMERO` int(11) DEFAULT NULL,
  `CODIGO ESCUDERIA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pilotos`
--

INSERT INTO `pilotos` (`CODIGO`, `NOMBRE`, `APELLIDOS`, `Fecha_nacimiento`, `NACIONALIDAD`, `TITULOS`, `NUMERO`, `CODIGO ESCUDERIA`) VALUES
(1, 'Nico', 'Rosberg', '1985-06-06', 'Alemana', 0, 6, 1),
(2, 'Kimi', 'Räikkönen', '1979-10-17', 'Finlandia', 1, 7, 2),
(3, 'Lewis', 'Hamilton', '1985-01-07', 'Inglesa', 3, 44, 1),
(4, 'Sebastian', 'Vettel', '1987-07-03', 'Alemana', 4, 5, 2),
(5, 'Daniel', 'Ricciardo', '1989-07-01', 'Australiana', 0, 3, 4),
(6, 'Max', 'Verstappen', '1997-09-30', 'Belgica', 0, 33, 4),
(7, 'Felipe', 'Massa', '1981-04-25', 'Brazileña', 0, 19, 3),
(8, 'Valtteri', 'Bottas', '1989-08-28', 'Finlandia', 0, 77, 3),
(9, 'Daniil', 'Kvyat', '1994-04-26', 'Rusa', 0, 26, 7),
(10, 'Romain', 'Grosjean', '1986-04-17', 'Suiza', 0, 8, 11),
(11, 'Carlos', 'Sainz', '1994-09-01', 'España', 0, 55, 7),
(12, 'Fernando', 'Alonso', '1981-07-29', 'España', 2, 14, 9),
(13, 'Sergio', 'Perez', '1990-01-26', 'Mexico', 0, 11, 5),
(14, 'Kevin', 'Magnussen', '1992-10-05', 'Dinamarca', 0, 20, 6),
(15, 'Nico', 'Hulkenberg', '1987-08-19', 'Alemana', 0, 27, 5),
(16, 'Jenson', 'Button', '1980-01-19', 'Inglesa', 1, 22, 9),
(17, 'Stoffel', 'Vandoorne', '1992-03-26', 'Belgica', 0, 47, 9),
(18, 'Jolyon', 'Palmer', '1991-01-20', 'Ingles', 0, 30, 6),
(19, 'Esteban', 'Gutierrez', '1991-08-05', 'Mexico', 0, 21, 11),
(20, 'Marcus', 'Ericsson', '1990-09-02', 'Suecia', 0, 9, 8),
(21, 'Pascal', 'Wehrlein', '1994-10-18', 'Alemania', 0, 94, 10),
(22, 'Felipe', 'Nasr', '1992-08-21', 'Brazileña', 0, 12, 8),
(23, 'Rio', 'Haryanto', '1993-01-22', 'Indonesia', 0, 88, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `escuderia`
--
ALTER TABLE `escuderia`
  ADD PRIMARY KEY (`CODIGO`);

--
-- Indices de la tabla `pilotos`
--
ALTER TABLE `pilotos`
  ADD PRIMARY KEY (`CODIGO`),
  ADD KEY `FOREIGN_KEY` (`CODIGO ESCUDERIA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `escuderia`
--
ALTER TABLE `escuderia`
  MODIFY `CODIGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `pilotos`
--
ALTER TABLE `pilotos`
  MODIFY `CODIGO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pilotos`
--
ALTER TABLE `pilotos`
  ADD CONSTRAINT `pilotos_ibfk_1` FOREIGN KEY (`CODIGO ESCUDERIA`) REFERENCES `escuderia` (`CODIGO`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
