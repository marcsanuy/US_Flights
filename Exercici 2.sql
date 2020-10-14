-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2020 a las 10:48:30
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
-- Base de datos: `usairlineflights2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flights`
--

CREATE TABLE `flights` (
  `flightID` int(11) NOT NULL,
  `colYear` smallint(6) DEFAULT NULL,
  `colMonth` smallint(6) DEFAULT NULL,
  `DayOfMonths` smallint(6) DEFAULT NULL,
  `DayOfWeek` smallint(6) DEFAULT NULL,
  `DepTime` smallint(6) DEFAULT NULL,
  `CRSDepTime` smallint(6) DEFAULT NULL,
  `ArrTime` smallint(6) DEFAULT NULL,
  `CRSArrTime` smallint(6) DEFAULT NULL,
  `UniqueCarrier` varchar(32) DEFAULT NULL,
  `FlightNum` varchar(32) DEFAULT NULL,
  `TailNum` varchar(32) DEFAULT NULL,
  `ActualElapsedTime` smallint(6) DEFAULT NULL,
  `CRSElapsedTime` smallint(6) DEFAULT NULL,
  `AirTime` smallint(6) DEFAULT NULL,
  `ArrDelay` smallint(6) DEFAULT NULL,
  `DepDelay` smallint(6) DEFAULT NULL,
  `Origin` varchar(32) DEFAULT NULL,
  `Dest` varchar(32) DEFAULT NULL,
  `Distance` smallint(6) DEFAULT NULL,
  `TaxiIn` smallint(6) DEFAULT NULL,
  `TaxiOut` smallint(6) DEFAULT NULL,
  `Cancelled` tinyint(1) DEFAULT NULL,
  `CancellationCode` varchar(32) DEFAULT NULL,
  `Diverted` tinyint(1) DEFAULT NULL,
  `CarrierDelay` smallint(6) DEFAULT NULL,
  `WeatherDelay` smallint(6) DEFAULT NULL,
  `NASDelay` smallint(6) DEFAULT NULL,
  `SecurityDelay` smallint(6) DEFAULT NULL,
  `LateAircraftDelay` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flights`
--

INSERT INTO `flights` (`Origin`, `prom_arribades`, `prom_sortides`) VALUES
('ABE', '17.1250', '15.7500'),
('ABQ', '3.8158', '6.8684'),
('ABY', '4.5000', '19.0000'),
('AGS', '19.0000', '15.3333'),
('ALB', '-2.2500', '-0.1250'),
('AMA', '1.2500', '0.0000'),
('ANC', '1.8571', '3.5000'),
('ASE', '7.0000', '10.0000'),
('ATL', '9.5720', '9.8833'),
('ATW', '0.6667', '1.6667'),
('AUS', '1.5455', '1.2273'),
('AVL', '-7.6667', '-3.3333'),
('AZO', '-10.0000', '-5.0000'),
('BDL', '-4.4348', '2.7826'),
('BET', '1.0000', '-2.0000'),
('BFL', '-6.0000', '0.0000'),
('BGR', '45.0000', '60.0000'),
('BHM', '5.7500', '8.3750'),
('BIL', '14.0000', '4.5000'),
('BIS', '17.0000', '0.0000'),
('BNA', '7.8936', '8.9574'),
('BOI', '3.6667', '2.0000'),
('BOS', '5.8286', '8.3238'),
('BTR', '7.6667', '-0.8333'),
('BTV', '-11.4444', '-4.0000'),
('BUF', '1.6818', '4.4091'),
('BUR', '6.0000', '6.6667'),
('BWI', '13.2794', '12.4559'),
('BZN', '-5.5000', '-1.5000'),
('CAE', '16.8750', '22.7500'),
('CHA', '5.0000', '6.0000'),
('CHO', '1.0000', '-0.5000'),
('CHS', '21.6000', '18.8000'),
('CID', '12.2000', '7.8000'),
('CLE', '4.4154', '5.6154'),
('CLL', '-16.0000', '-5.0000'),
('CLT', '10.2653', '12.6020'),
('CMH', '13.6429', '13.5000'),
('CMI', '-1.0000', '-1.5000'),
('COS', '20.4167', '20.1667'),
('CRP', '-6.8333', '-2.3333'),
('CRW', '14.0000', '17.7500'),
('CSG', '18.0000', '0.0000'),
('CVG', '6.2500', '6.1750'),
('DAB', '24.0000', '20.0000'),
('DAL', '7.3095', '8.4286'),
('DAY', '27.8000', '31.5000'),
('DCA', '3.8485', '3.1970'),
('DEN', '5.1681', '6.4454'),
('DET', '1.6667', '2.0000'),
('DFW', '6.1975', '9.2058'),
('DSM', '-4.6667', '-1.8333'),
('DTW', '12.8700', '12.9600'),
('EGE', '480.0000', '496.0000'),
('EKO', '-14.5000', '-4.5000'),
('ELP', '-0.5500', '1.9000'),
('ERI', '4.5000', '6.0000'),
('EUG', '7.0000', '15.6667'),
('EVV', '2.0000', '-1.0000'),
('EWR', '13.3839', '13.9196'),
('FAI', '4.0000', '4.5000'),
('FAT', '-3.3333', '-1.6667'),
('FAY', '1.0000', '4.0000'),
('FLL', '22.4186', '22.7674'),
('FNT', '-4.0000', '-7.5000'),
('FSD', '2.7500', '4.0000'),
('FWA', '-2.0000', '-0.8333'),
('GCN', '-3.0000', '0.0000'),
('GEG', '3.2143', '5.3571'),
('GFK', '6.0000', '-1.0000'),
('GNV', '79.3333', '78.3333'),
('GPT', '5.6667', '-3.0000'),
('GRB', '2.5000', '-0.5000'),
('GRK', '7.0000', '1.5000'),
('GRR', '-3.8333', '-1.6667'),
('GSO', '-5.3077', '-1.8462'),
('GSP', '11.0000', '15.1667'),
('GTF', '-6.0000', '-2.0000'),
('HDN', '1.0000', '-5.0000'),
('HLN', '24.0000', '14.0000'),
('HNL', '22.9048', '25.6667'),
('HOU', '8.1667', '9.6667'),
('HPN', '24.2500', '34.7500'),
('HRL', '-3.5000', '-0.7500'),
('HSV', '10.7143', '10.5714'),
('HTS', '0.3333', '0.3333'),
('IAD', '0.6591', '2.8409'),
('IAH', '4.8396', '5.6415'),
('ICT', '10.1429', '8.7143'),
('IDA', '31.0000', '35.0000'),
('ILM', '9.0000', '-3.5000'),
('IND', '22.7647', '22.8235'),
('ISP', '1.8000', '6.3000'),
('ITO', '-2.6667', '-2.0000'),
('JAC', '11.0000', '7.0000'),
('JAN', '-2.7273', '1.1818'),
('JAX', '3.6667', '4.2778'),
('JFK', '24.3485', '26.3788'),
('JNU', '16.6667', '13.3333'),
('KOA', '-5.8571', '-2.2857'),
('KTN', '-18.5000', '-8.5000'),
('LAN', '10.0000', '7.0000'),
('LAS', '6.7882', '7.5647'),
('LAX', '3.6599', '7.0816'),
('LBB', '1.6000', '5.0000'),
('LEX', '-5.3333', '-0.6667'),
('LGA', '11.9043', '10.2261'),
('LGB', '11.0000', '9.0000'),
('LIH', '1.0000', '-5.0000'),
('LIT', '9.0000', '7.1111'),
('LNK', '-4.5000', '-3.5000'),
('MAF', '-3.4000', '0.0000'),
('MBS', '-1.3333', '-0.6667'),
('MCI', '19.2889', '19.2000'),
('MCN', '5.0000', '0.0000'),
('MCO', '10.6269', '13.4478'),
('MDT', '7.8750', '1.6250'),
('MDW', '6.2619', '9.2857'),
('MEM', '6.0238', '6.0714'),
('MFE', '-4.5000', '-4.0000'),
('MFR', '11.0000', '2.0000'),
('MGM', '-2.0000', '1.0000'),
('MHT', '-1.5000', '2.0000'),
('MIA', '5.9706', '8.6618'),
('MKE', '-1.1538', '0.4615'),
('MLB', '35.6667', '37.6667'),
('MLI', '5.4000', '1.4000'),
('MLU', '0.0000', '-4.0000'),
('MOB', '21.0000', '13.8000'),
('MOD', '-13.0000', '-1.0000'),
('MOT', '-5.0000', '-3.0000'),
('MRY', '-4.5000', '-2.5000'),
('MSN', '4.0000', '1.4286'),
('MSO', '-4.6667', '-1.3333'),
('MSP', '3.6036', '5.7207'),
('MSY', '1.8621', '1.6552'),
('MTJ', '37.0000', '41.0000'),
('MYR', '-8.0000', '-2.0000'),
('OAK', '3.3000', '4.4250'),
('OGG', '0.0000', '-0.3333'),
('OKC', '-1.8667', '2.0667'),
('OMA', '21.9500', '23.9000'),
('OME', '-5.5000', '-6.3333'),
('ONT', '2.3448', '4.4828'),
('ORD', '12.4648', '13.0859'),
('ORF', '6.1579', '5.7368'),
('OTZ', '9.6667', '3.3333'),
('OXR', '-2.0000', '0.0000'),
('PBI', '5.7619', '9.0476'),
('PDX', '2.1250', '3.6875'),
('PHF', '-12.5000', '1.5000'),
('PHL', '5.7667', '9.4833'),
('PHX', '9.4925', '12.8433'),
('PIA', '-6.3333', '0.0000'),
('PIE', '14.0000', '6.0000'),
('PIT', '7.3855', '6.8313'),
('PMD', '-11.0000', '0.0000'),
('PNS', '1.4000', '1.5000'),
('PSC', '9.0000', '2.0000'),
('PSP', '-3.7500', '-4.2500'),
('PUB', '3.5000', '9.0000'),
('PVD', '1.3889', '6.1667'),
('PWM', '-6.1429', '3.1429'),
('RAP', '-19.0000', '-6.0000'),
('RDD', '-4.0000', '0.0000'),
('RDU', '12.8372', '12.5814'),
('RIC', '-4.2500', '-0.9167'),
('RNO', '1.1905', '2.4762'),
('ROA', '20.5000', '11.0000'),
('ROC', '4.7333', '5.2000'),
('RST', '4.0000', '-3.6667'),
('RSW', '22.3571', '20.4286'),
('SAN', '4.1930', '7.1754'),
('SAT', '26.8000', '27.2667'),
('SAV', '14.3333', '18.3333'),
('SBA', '2.0000', '0.3333'),
('SBN', '-2.0000', '1.5000'),
('SBP', '9.2000', '4.4000'),
('SCC', '-1.6667', '-4.6667'),
('SCE', '-5.0000', '0.0000'),
('SDF', '-3.1538', '-0.2308'),
('SEA', '3.6087', '4.9710'),
('SFO', '4.5391', '7.4000'),
('SGF', '-4.0000', '-3.3333'),
('SHV', '-6.2000', '-0.8000'),
('SIT', '-16.0000', '-9.0000'),
('SJC', '-2.7250', '0.5500'),
('SJT', '11.0000', '13.0000'),
('SJU', '-1.3182', '3.5455'),
('SLC', '7.3971', '8.3529'),
('SMF', '6.0000', '9.4167'),
('SMX', '-2.0000', '0.0000'),
('SNA', '4.7813', '6.3125'),
('SPN', '3.0000', '4.5000'),
('SPS', '-10.0000', '-5.0000'),
('SRQ', '-5.3333', '-3.0000'),
('STL', '4.1959', '6.2062'),
('STT', '1.8000', '1.0000'),
('STX', '0.5000', '-9.0000'),
('SYR', '2.6316', '5.6842'),
('TLH', '6.3333', '3.3333'),
('TOL', '-6.5000', '-8.0000'),
('TPA', '3.9000', '4.9500'),
('TUL', '1.5714', '1.3571'),
('TUS', '16.5714', '19.5000'),
('TVC', '-6.6667', '-4.0000'),
('TXK', '0.0000', '-9.0000'),
('TYS', '-7.6000', '-3.4000'),
('VPS', '15.0000', '21.0000'),
('WRG', '12.5000', '12.0000'),
('XNA', '3.2500', '-1.7500'),
('YAK', '55.0000', '58.0000'),
('YUM', '18.6667', '12.3333');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flightID`),
  ADD KEY `Origin` (`Origin`),
  ADD KEY `Dest` (`Dest`),
  ADD KEY `UniqueCarrier` (`UniqueCarrier`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `flights`
--
ALTER TABLE `flights`
  MODIFY `flightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4759;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`Origin`) REFERENCES `usairports` (`IATA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `flights_ibfk_2` FOREIGN KEY (`Dest`) REFERENCES `usairports` (`IATA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `flights_ibfk_3` FOREIGN KEY (`UniqueCarrier`) REFERENCES `carriers` (`CarrierCode`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
