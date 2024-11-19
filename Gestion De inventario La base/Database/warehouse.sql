-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2024 a las 16:27:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `warehouse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branddb`
--

CREATE TABLE `branddb` (
  `Brand` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `branddb`
--

INSERT INTO `branddb` (`Brand`) VALUES
('Abengoa Bioenergy'),
('Alto Paraná'),
('Azucarera del Norte S.A'),
('Bung'),
('Cargill'),
('Cosan'),
('Flying Machine'),
('Law Man'),
('Raízen'),
('Sucroliq'),
('Usina Coruripe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorydb`
--

CREATE TABLE `categorydb` (
  `Category` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorydb`
--

INSERT INTO `categorydb` (`Category`) VALUES
('Azúcar'),
('Bagazo'),
('Bioetanol'),
('Combustibles sólidos'),
('Melaza'),
('Vinaza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordersdb`
--

CREATE TABLE `ordersdb` (
  `TransactionID` varchar(45) NOT NULL,
  `ItemID` varchar(45) NOT NULL,
  `ItemName` varchar(45) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `Size` varchar(45) NOT NULL,
  `Amount` varchar(45) NOT NULL,
  `TransactionDate` varchar(45) NOT NULL,
  `TransactionTime` varchar(45) NOT NULL,
  `CustomerNumber` varchar(15) NOT NULL,
  `TMonth` int(11) DEFAULT NULL,
  `TYear` int(11) DEFAULT NULL,
  `TDay` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ordersdb`
--

INSERT INTO `ordersdb` (`TransactionID`, `ItemID`, `ItemName`, `Category`, `Brand`, `Size`, `Amount`, `TransactionDate`, `TransactionTime`, `CustomerNumber`, `TMonth`, `TYear`, `TDay`) VALUES
('SHW179202492320', '1', 'Azucar Manuelita', 'Azúcar', 'Azucarera del Norte S.A', 'Libra', '7', '17/10/2024', '9:23:20', '3128395505', 10, 2024, 17),
('SHW3122021221327', 'B12891', 'Duke Shirt', 'Shirt', 'Duke', 'L', '1599', '31/3/2021', '22:13:27', '9870956890', 3, 2021, 31),
('SHW3320211016', 'B452832', 'Adidas Trouser', 'Trouser', 'Adidas', 'S', '2199', '3/4/2021', '10:1:6', '9870956890', 4, 2021, 3),
('SHW232021111859', 'F798129', 'Adven T-Shirt', 'T-Shirt', 'Adven', 'L', '987', '2/4/2021', '11:18:59', '9870956890', 4, 2021, 2),
('SHW3320211016', 'L037218', 'John Player Pajama', 'Pajama', 'John Player', 'M', '1199', '3/4/2021', '10:1:6', '9870956890', 4, 2021, 3),
('SHW332021132054', 'M53839', 'Adidas Vest', 'Vest', 'Adidas', 'L', '1499', '3/4/2021', '13:20:54', '7209755363', 4, 2021, 3),
('SHW332021121826', 'Q272910', 'Donear Pant', 'Half-Pant', 'Donear', 'S', '599', '3/4/2021', '12:18:26', '8970654234', 4, 2021, 3),
('SHW3320211016', 'R829102', 'Duke Pant', 'Cotton Pant', 'Duke', 'L', '899', '3/4/2021', '10:1:6', '9870956890', 4, 2021, 3),
('SHW232021111859', 'S89021', 'Flying Machine Jeans', 'Jeans', 'Flying Machine', 'M', '1199', '2/4/2021', '11:18:59', '9870956890', 4, 2021, 2),
('SHW332021121243', 'S89291', 'Law Man Kurta', 'Kurta', 'Law Man', 'L', '799', '3/4/2021', '12:12:43', '7826142536', 4, 2021, 3),
('SHW232021111859', 'Y829102', 'Adven T-Shirt', 'T-Shirt', 'Adven', 'L', '799', '2/4/2021', '11:18:59', '9870956890', 4, 2021, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sizedb`
--

CREATE TABLE `sizedb` (
  `Size` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sizedb`
--

INSERT INTO `sizedb` (`Size`) VALUES
('Caja'),
('Cargamento'),
('Kilo'),
('Libra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stockdb`
--

CREATE TABLE `stockdb` (
  `ItemID` varchar(25) NOT NULL,
  `ItemName` varchar(55) NOT NULL,
  `Category` varchar(55) NOT NULL,
  `Brand` varchar(55) NOT NULL,
  `Size` varchar(55) NOT NULL,
  `Amount` int(11) NOT NULL,
  `StockDate` varchar(55) DEFAULT NULL,
  `StockTime` varchar(55) DEFAULT NULL,
  `TDay` int(11) DEFAULT NULL,
  `TMonth` int(11) DEFAULT NULL,
  `TYear` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stockdb`
--

INSERT INTO `stockdb` (`ItemID`, `ItemName`, `Category`, `Brand`, `Size`, `Amount`, `StockDate`, `StockTime`, `TDay`, `TMonth`, `TYear`) VALUES
('2', 'BioDiesel', 'Combustibles sólidos', 'Abengoa Bioenergy', 'Cargamento', 2, '17/10/2024', '9:25:26', 17, 10, 2024),
('3', 'Azucar Rio Paila', 'Azúcar', 'Alto Paraná', 'Kilo', 8, '17/10/2024', '9:25:26', 17, 10, 2024);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouse`
--

CREATE TABLE `warehouse` (
  `TransactionID` varchar(30) NOT NULL,
  `ItemName` varchar(45) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `Size` varchar(45) NOT NULL,
  `Amount` int(11) NOT NULL,
  `TransactionDate` varchar(45) NOT NULL,
  `TransactionTime` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `warehouse`
--

INSERT INTO `warehouse` (`TransactionID`, `ItemName`, `Category`, `Brand`, `Size`, `Amount`, `TransactionDate`, `TransactionTime`) VALUES
('1', 'Flying Machine Jeans', 'Jeans', 'Flying Machine', 'L', 899, '18-03-2021', '10:08:55'),
('11', 'Duke Pant', 'Cotton Pant', 'Duke', 'L', 1699, '20/2/2021', '22:23:43'),
('12', 'US Polo Shirt', 'Shirt', 'US Polo', 'M', 999, '20/2/2021', '23:58:3'),
('13', 'Adven Jeans', 'Jeans', 'Adven', 'M', 999, '21/2/2021', '10:12:49'),
('14', 'US Polo Shirt', 'T-Shirt', 'US Polo', 'L', 1199, '21/2/2021', '12:25:34'),
('15', 'Duke Shirt', 'Shirt', 'Duke', 'M', 799, '21/2/2021', '18:46:57'),
('16', 'US Polo Shirt', 'Shirt', 'US Polo', 'M', 1499, '21/2/2021', '19:12:53'),
('17', 'US Polo Shirt', 'Kurta', 'US Polo', 'M', 789, '22/2/2021', '22:43:46'),
('18', 'Turtle Jeans', 'Jeans', 'Turtle', 'S', 2712, '22/2/2021', '22:45:16'),
('19', 'US Polo Shirt', 'Shirt', 'US Polo', 'M', 899, '23/2/2021', '20:55:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `branddb`
--
ALTER TABLE `branddb`
  ADD PRIMARY KEY (`Brand`);

--
-- Indices de la tabla `categorydb`
--
ALTER TABLE `categorydb`
  ADD PRIMARY KEY (`Category`);

--
-- Indices de la tabla `ordersdb`
--
ALTER TABLE `ordersdb`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indices de la tabla `sizedb`
--
ALTER TABLE `sizedb`
  ADD PRIMARY KEY (`Size`);

--
-- Indices de la tabla `stockdb`
--
ALTER TABLE `stockdb`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indices de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`TransactionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
