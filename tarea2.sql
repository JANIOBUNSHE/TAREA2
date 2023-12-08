-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-12-2023 a las 13:08:49
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tarea2`
--
CREATE DATABASE IF NOT EXISTS `tarea2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tarea2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacient`
--

CREATE TABLE `pacient` (
  `paciente_id` int(10) NOT NULL,
  `cedula` int(10) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(500) NOT NULL,
  `tipo_enfermedad` varchar(500) NOT NULL,
  `correo` varchar(500) NOT NULL,
  `test` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pacient`
--

INSERT INTO `pacient` (`paciente_id`, `cedula`, `nombre`, `fecha_nacimiento`, `genero`, `tipo_enfermedad`, `correo`, `test`) VALUES
(1, 1600717100, 'Franklin', '2023-12-12', 'wedqw', 'diabetico', 'reivajfaelata@gmail.com', 'test'),
(2, 1600717100, 'La Arboleda', '2023-12-12', '23e213', 'hipertencion', 'janiobunshe@gmail.com', ''),
(3, 1500757743, 'Alexander Ramos', '2023-12-12', '23e213', 'hipertencion', 'info@igotravel.app', ''),
(4, 1600100422, 'jajasj', '2222-02-02', 'masculino', 'hipertencion', 'lleroc1@gmail.com', 'test'),
(5, 1600100422, 'sasasas', '1889-03-03', 'masculino', 'cancer', 'janiobunshe@gmail.com', ''),
(23, 0, 'sasasasasas', '1990-03-02', 'femino', 'fracturas', 'reivajfaelata@gmail.com', 'test'),
(24, 1600100422, 'as', '1990-03-03', 'masculino', 'hipertencion', 'lleroc1@gmail.com', 'test'),
(25, 1600100422, 'sasasassss', '2222-11-11', 'masculino', 'hipertencion', 'lleroc1@gmail.com', 'test'),
(26, 1600492399, 'janio', '0191-04-04', 'MASCULINO', 'fracturas', 'janiobunshe@gmail.com', 'test');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioId` int(11) NOT NULL,
  `Cedula` varchar(17) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Telefono` varchar(17) NOT NULL,
  `Correo` varchar(150) NOT NULL,
  `Contrasenia` text NOT NULL,
  `Rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`UsuarioId`, `Cedula`, `Nombres`, `Apellidos`, `Telefono`, `Correo`, `Contrasenia`, `Rol`) VALUES
(1, '1600492399', 'JANIO XAVIER', 'BUNSHE AGUIRRE', '0993781401', 'janiobunshe@gmail.com', 'janio9193', 'a'),
(3, '1500757743', 'Franklin', 'Casco', '0960401840', 'reivajfaelata@gmail.com', 'reload666', 'Administrador'),
(4, '1600717100', 'Joselyn Estefania', 'Casco LLanga', '2d32d', 'g@gm.com', 'reload666', 'Administrador'),
(5, '23', '23e', '23e', '23e', 'gg@gmail.com', '123456', 'Vendedor'),
(6, '1600717100', 'Franklin', 'Casco', '0960401840', 'r@gmail.com', 'reload666', 'Administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pacient`
--
ALTER TABLE `pacient`
  ADD PRIMARY KEY (`paciente_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pacient`
--
ALTER TABLE `pacient`
  MODIFY `paciente_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UsuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
