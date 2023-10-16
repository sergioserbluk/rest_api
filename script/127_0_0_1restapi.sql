-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2023 a las 15:40:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restapi`
--
CREATE DATABASE IF NOT EXISTS `restapi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restapi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `anio_publicacion` year(4) NOT NULL,
  `isbn` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `autor`, `categoria`, `anio_publicacion`, `isbn`) VALUES
(11, 'Cien años de soledad', 'Gabriel García Márquez', 'Ficción', 1967, '978-0307351949'),
(12, '1984', 'George Orwell', 'Ficción', 1949, '978-0451524935'),
(13, 'To Kill a Mockingbird', 'Harper Lee', 'Ficción', 1960, '978-0061120084'),
(14, 'El alquimista', 'Paulo Coelho', 'Ficción', 1988, '978-0061122415'),
(15, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Ficción', 1925, '978-0743273565'),
(16, 'The Catcher in the Rye', 'J.D. Salinger', 'Ficción', 1951, '978-0316769174'),
(17, 'Sapiens: A Brief History of Hu', 'Yuval Noah Harari', 'Historia', 2014, '978-0062316097'),
(18, 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Psicología', 2011, '978-0374533557'),
(19, 'The Power of Habit', 'Charles Duhigg', 'Autoayuda', 2012, '978-0812981605'),
(20, 'Educated: A Memoir', 'Tara Westover', 'Biografía', 2018, '978-0399590504'),
(22, 'Platero y Yo', 'Juan Ramon Jimenez', 'narrativa', 1914, 'x456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
