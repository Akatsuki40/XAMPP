-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2020 a las 03:33:16
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `flights1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flights`
--

CREATE TABLE flights (
  id int(11) NOT NULL,
  origin varchar(255) NOT NULL,
  destination varchar(255) NOT NULL,
  duration int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `flights`
--

INSERT INTO flights (id, origin, destination, duration) VALUES
(1, 'New York', 'London', 415),
(2, 'Lima', 'Germany', 650),
(3, 'Mexico', 'Panama', 390),
(4, 'Moscou', 'London', 500),
(5, 'New York', 'Panama', 390),
(6, 'Panama', 'Tokyo', 950),
(7, 'Shanghai', 'Paris', 600);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `passenger`
--

CREATE TABLE passenger (
  id int(11) NOT NULL,
  name varchar(255) NOT NULL,
  flights_id int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `passenger`
--

INSERT INTO passenger (id, name, flights_id) VALUES
(1, 'Alice', 1),
(2, 'Bob', 1),
(3, 'Charlie', 2),
(4, 'Dave', 2),
(5, 'Erin', 4),
(6, 'Frank', 6),
(7, 'Grace', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `flights`
--
ALTER TABLE flights
  ADD PRIMARY KEY (id);

--
-- Indices de la tabla `passenger`
--
ALTER TABLE passenger
  ADD PRIMARY KEY (id),
  ADD KEY flights_id (flights_id);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `flights`
--
ALTER TABLE flights
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `passenger`
--
ALTER TABLE passenger
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `passenger`
--
ALTER TABLE passenger
  ADD CONSTRAINT passenger_ibfk_1 FOREIGN KEY (flights_id) REFERENCES flights (id);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
