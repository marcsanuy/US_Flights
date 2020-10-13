-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2020 a las 11:30:02
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usairlineflights`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flights`
--

CREATE TABLE `flights` (
  `colYear` int(11) DEFAULT NULL,
  `colMonth` int(11) DEFAULT NULL,
  `DayOfMonths` int(11) DEFAULT NULL,
  `DayOfWeek` int(11) DEFAULT NULL,
  `DepTime` int(11) DEFAULT NULL,
  `CRSDepTime` int(11) DEFAULT NULL,
  `ArrTime` int(11) DEFAULT NULL,
  `CRSArrTime` int(11) DEFAULT NULL,
  `UniqueCarrier` text DEFAULT NULL,
  `FlightNum` int(11) DEFAULT NULL,
  `TailNum` text DEFAULT NULL,
  `ActualElapsedTime` int(11) DEFAULT NULL,
  `CRSElapsedTime` int(11) DEFAULT NULL,
  `AirTime` int(11) DEFAULT NULL,
  `ArrDelay` int(11) DEFAULT NULL,
  `DepDelay` int(11) DEFAULT NULL,
  `Origin` text DEFAULT NULL,
  `Dest` text DEFAULT NULL,
  `Distance` int(11) DEFAULT NULL,
  `TaxiIn` int(11) DEFAULT NULL,
  `TaxiOut` int(11) DEFAULT NULL,
  `Cancelled` int(11) DEFAULT NULL,
  `CancellationCode` text DEFAULT NULL,
  `Diverted` int(11) DEFAULT NULL,
  `CarrierDelay` int(11) DEFAULT NULL,
  `WeatherDelay` int(11) DEFAULT NULL,
  `NASDelay` int(11) DEFAULT NULL,
  `SecurityDelay` int(11) DEFAULT NULL,
  `LateAircraftDelay` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flights`
--

INSERT INTO `flights` (`count(FlightNum)`) VALUES
(4758);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
