-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2024 a las 23:15:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `booking`
--

CREATE TABLE `booking` (
  `Booking_id` int(11) NOT NULL,
  `room_number` int(11) DEFAULT NULL,
  `guest_ssn` int(11) DEFAULT NULL,
  `STARTING_DATE` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `booking`
--

INSERT INTO `booking` (`Booking_id`, `room_number`, `guest_ssn`, `STARTING_DATE`, `end_date`) VALUES
(1, 301, 1256, '2023-01-01', '2023-01-03'),
(2, 303, 1344, '2022-02-09', '2022-02-19'),
(3, 302, 1239, '2023-01-01', '2023-01-03'),
(4, 301, 1239, '2023-01-01', '2023-01-03'),
(5, 202, 1033, '2023-01-01', '2023-01-03'),
(6, 204, 1344, '2023-01-01', '2023-01-03'),
(7, 304, 1033, '2024-05-21', '2024-05-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `employee_SSN` int(11) DEFAULT NULL,
  `employee_first_Name` varchar(32) DEFAULT NULL,
  `employee_father_Name` varchar(32) DEFAULT NULL,
  `employee_family_Name` varchar(32) DEFAULT NULL,
  `employee_email` varchar(32) DEFAULT NULL,
  `employee_nationality` varchar(32) DEFAULT NULL,
  `starting_date` date DEFAULT curdate(),
  `salary` double DEFAULT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`eid`, `employee_SSN`, `employee_first_Name`, `employee_father_Name`, `employee_family_Name`, `employee_email`, `employee_nationality`, `starting_date`, `salary`, `password`) VALUES
(1000, 1, 'root', 'root', 'root', 'root@gmail.com', 'PS', '2024-05-18', 999.9, 'password'),
(1001, 2, 'Faris', 'Amer', 'Abufarha', 'farisabufarha33@gmail.com', 'PS', '2024-05-18', 1299.9, 'faris'),
(1002, 3, 'Saja', 'Musheer', 'Shareef', 'saja@gmail.com', 'PS', '2024-05-18', 999.9, 'saja'),
(1003, 4, 'Shereen', 'Khaled', 'Ibdah', 'shereen@gmail.com', 'PS', '2024-05-18', 999.9, 'shereen'),
(1004, 5, 'Hamza', 'hamza father', 'Awashra', 'hamza@gmail.com', 'PS', '2024-05-18', 10000, 'hamza'),
(1005, NULL, 'xd', 'dddddddddd', 'no se', 'nose@gmail.com', 'negro', '0000-00-00', 0.1, 'ddddddddddddddddd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_phone`
--

CREATE TABLE `employee_phone` (
  `phone_num` varchar(32) NOT NULL,
  `eid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `employee_phone`
--

INSERT INTO `employee_phone` (`phone_num`, `eid`) VALUES
('0569157426', 1001),
('0595110186', 1001);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guest`
--

CREATE TABLE `guest` (
  `Guest_SSN` int(11) NOT NULL,
  `Guest_first_Name` varchar(32) DEFAULT NULL,
  `Guest_father_Name` varchar(32) DEFAULT NULL,
  `Guest_family_Name` varchar(32) DEFAULT NULL,
  `Guest_email` varchar(32) DEFAULT NULL,
  `Guest_nationality` varchar(32) DEFAULT NULL,
  `phone_num` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `guest`
--

INSERT INTO `guest` (`Guest_SSN`, `Guest_first_Name`, `Guest_father_Name`, `Guest_family_Name`, `Guest_email`, `Guest_nationality`, `phone_num`) VALUES
(1033, 'ahmed', 'hasan', 'mohammed', 'ahmad@gmail.com', 'ps', '0599929359'),
(1239, 'mohammed', 'husni', 'sh', 'moh@gmail.com', 'ps', '0599293678'),
(1256, 'tala', 'sharif', 'mosheer', 'tala@outlook.com', 'ps', '0596349522'),
(1283, 'amro', 'saif', 'ahmad', 'amro@gmail.com', 'PS', '0598378134'),
(1344, 'narmeen', 'ibdah', 'ibdah', 'narmeen@gmail.com', 'PS', '0259390233'),
(12345, 'ramez', 'ibdah', 'yazeed', 'ahmad@gmail.com', 'PS', '0599274443');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `Payment_id` int(11) NOT NULL,
  `Payment_way` varchar(32) DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `Guest_SSN` int(11) NOT NULL,
  `amountPaid` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `room`
--

CREATE TABLE `room` (
  `room_number` int(11) NOT NULL,
  `room_price` double DEFAULT NULL,
  `number_of_beds` int(11) DEFAULT NULL,
  `room_type` varchar(32) DEFAULT NULL,
  `room_status` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `room`
--

INSERT INTO `room` (`room_number`, `room_price`, `number_of_beds`, `room_type`, `room_status`) VALUES
(101, 99.9, 2, 'sweet', 'FREE'),
(102, 99.9, 2, 'sweet', 'FREE'),
(103, 99.9, 2, 'sweet', 'FREE'),
(104, 99.9, 2, 'sweet', 'FREE'),
(201, 199.9, 2, 'sweet', 'FREE'),
(202, 199.9, 2, 'sweet', 'FREE'),
(203, 199.9, 2, 'sweet', 'FREE'),
(204, 199.9, 2, 'sweet', 'FREE'),
(301, 170.9, 1, 'single', 'FREE'),
(302, 170.9, 1, 'single', 'FREE'),
(303, 170.9, 1, 'single', 'FREE'),
(304, 170.9, 1, 'single', 'FREE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_type` varchar(32) DEFAULT NULL,
  `service_price` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `service`
--

INSERT INTO `service` (`service_id`, `service_type`, `service_price`) VALUES
(1, 'Cleaning', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service_to_room`
--

CREATE TABLE `service_to_room` (
  `room_number` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `isPaid` tinyint(1) DEFAULT 0,
  `service_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `service_to_room`
--

INSERT INTO `service_to_room` (`room_number`, `eid`, `service_id`, `isPaid`, `service_date`) VALUES
(101, 1000, 1, 0, '2024-05-18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_id`),
  ADD KEY `room_number` (`room_number`),
  ADD KEY `guest_ssn` (`guest_ssn`);

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`),
  ADD UNIQUE KEY `employee_SSN` (`employee_SSN`);

--
-- Indices de la tabla `employee_phone`
--
ALTER TABLE `employee_phone`
  ADD PRIMARY KEY (`phone_num`,`eid`),
  ADD KEY `eid` (`eid`);

--
-- Indices de la tabla `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`Guest_SSN`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_id`),
  ADD KEY `Guest_SSN` (`Guest_SSN`);

--
-- Indices de la tabla `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_number`);

--
-- Indices de la tabla `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indices de la tabla `service_to_room`
--
ALTER TABLE `service_to_room`
  ADD PRIMARY KEY (`room_number`,`eid`,`service_id`),
  ADD KEY `eid` (`eid`),
  ADD KEY `service_id` (`service_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`room_number`) REFERENCES `room` (`room_number`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`guest_ssn`) REFERENCES `guest` (`Guest_SSN`);

--
-- Filtros para la tabla `employee_phone`
--
ALTER TABLE `employee_phone`
  ADD CONSTRAINT `employee_phone_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`);

--
-- Filtros para la tabla `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Guest_SSN`) REFERENCES `guest` (`Guest_SSN`);

--
-- Filtros para la tabla `service_to_room`
--
ALTER TABLE `service_to_room`
  ADD CONSTRAINT `service_to_room_ibfk_1` FOREIGN KEY (`room_number`) REFERENCES `room` (`room_number`),
  ADD CONSTRAINT `service_to_room_ibfk_2` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`),
  ADD CONSTRAINT `service_to_room_ibfk_3` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
