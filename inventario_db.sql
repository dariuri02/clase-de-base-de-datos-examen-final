-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2026 a las 16:51:15
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
-- Base de datos: `inventario_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `cantidad`, `precio`, `fecha_registro`) VALUES
(1, 'papa guisada', 'papa guisada', 3, 2500.00, '2026-05-21 14:30:08'),
(2, 'pollo al horno', 'pollo al horno', 10, 20000.00, '2026-05-21 14:30:33'),
(3, 'hipinto', 'refresco', 30, 5000.00, '2026-05-21 14:31:11'),
(4, 'hit mora', 'jugo', 30, 3500.00, '2026-05-21 14:31:46'),
(6, 'vasos', 'vasos 9oz', 50, 6000.00, '2026-05-21 14:33:28'),
(8, 'Esponjas de cocina', 'esponja', 20, 500.00, '2026-05-21 14:34:59'),
(9, 'cuchara', 'cuchara de plastico', 80, 1000.00, '2026-05-21 14:35:28'),
(12, 'mantequilla', 'mantequilla mavesa', 3, 18000.00, '2026-05-21 14:36:59'),
(13, 'popetas', 'popetas de caramelo', 50, 3500.00, '2026-05-21 14:37:25'),
(14, 'kitipo', 'kitipo explosivo', 24, 600.00, '2026-05-21 14:37:42'),
(16, 'chocolate savoy', 'chocolate con leche', 12, 5000.00, '2026-05-21 14:39:57'),
(17, 'samba', 'galleta de chocolate con fresa', 23, 4000.00, '2026-05-21 14:40:14'),
(19, 'cafe negro', 'cafe negro pequeño', 20, 2600.00, '2026-05-21 14:41:21'),
(20, 'cafe leche ', 'cafe leche pequeño', 20, 2300.00, '2026-05-21 14:41:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `password`) VALUES
(1, 'darina uribe', 'dariuro02@gmail.com', '$2y$10$E5g0lx8L/v3xSgq5pT.Km.GZ.VMPBaW0RgsnEcYHW.wek0w5DFTwK'),
(4, 'wilder', 'wilder@fesc.edu.co', '$2y$10$KZf1am5tkZKCrO1wcmcD..OnAx7NYDLFYymtE5Q4dU/eW94WZbmdG'),
(5, 'mayre vargas', 'mayrevargas@gmail.com', '$2y$10$/CuywgO0Yy9uYXbR1GczzectmTdd53c6RwBP5mT/COE/5r73PwOiO'),
(6, 'jheorman lopez', 'jheorma@gmail.com', '$2y$10$oak3w47NvMogTpl/mOjZqeFAU6v/phPBxe/f8fMw8NKhOTFUqjBIG'),
(7, 'angela viviana', 'angela@kitipo.com', '$2y$10$pZX9gRGMJKyI6OcLBigG8OYAf/BDHCNqLeUtka2qazuH.kbpuq5Iq');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
