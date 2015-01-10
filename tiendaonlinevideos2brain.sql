-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-01-2015 a las 22:43:31
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tiendaonlinevideos2brain`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
`id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `telefono` int(13) NOT NULL,
  `movil` int(13) NOT NULL,
  `fax` int(13) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `CP` int(7) NOT NULL,
  `poblacion` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `dniif` varchar(18) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `email`, `usuario`, `contrasena`, `telefono`, `movil`, `fax`, `direccion`, `CP`, `poblacion`, `pais`, `dniif`) VALUES
(1, 'Edsel', 'Barbosa Gonzalez', 'torby@outlook.com', 'edsel', 'edsel', 3145326, 3145326, 3145326, 'Candido Aguilar #324', 28984, 'Colima', 'Mexico', 'afsafffaafdsasda'),
(3, 'perez', 'perez', 'perez', 'perez', 'perez', 233242342, 12312312, 12313312, 'perez', 1231, 'perez', 'perez', 'perez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagesproductos`
--

CREATE TABLE IF NOT EXISTS `imagesproductos` (
`id` int(10) NOT NULL,
  `idProducto` int(10) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `titulos` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagesproductos`
--

INSERT INTO `imagesproductos` (`id`, `idProducto`, `imagen`, `titulos`, `descripcion`) VALUES
(1, 1, 'Audio1.jpg', 'Titulo 1', 'Descripcion'),
(2, 1, 'Audio2.jpg', 'Titulo 2', 'Descripcion 2'),
(3, 3, 'Camara1.jpg', 'Titulo 3', 'Descripcion 3'),
(4, 3, 'Camara2.jpg', 'Titulo 4', 'Descripcion 4'),
(5, 2, 'Consola1.jpg', 'Titulo 5', 'Descripcion 5'),
(6, 2, 'Consola2.jpg', 'Titulo 6', 'Descripcion 6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaspedidos`
--

CREATE TABLE IF NOT EXISTS `lineaspedidos` (
`id` int(10) NOT NULL,
  `idPedido` int(10) NOT NULL,
  `idProducto` int(10) NOT NULL,
  `unidades` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lineaspedidos`
--

INSERT INTO `lineaspedidos` (`id`, `idPedido`, `idProducto`, `unidades`) VALUES
(1, 5, 1, 1),
(2, 5, 2, 1),
(3, 5, 3, 1),
(4, 6, 1, 1),
(5, 6, 2, 1),
(6, 6, 3, 1),
(7, 7, 1, 1),
(8, 7, 2, 1),
(9, 7, 3, 1),
(10, 8, 1, 1),
(11, 8, 2, 1),
(12, 8, 3, 1),
(13, 9, 1, 1),
(14, 9, 2, 1),
(15, 9, 3, 1),
(16, 10, 1, 1),
(17, 11, 1, 1),
(18, 11, 2, 1),
(19, 11, 3, 1),
(20, 12, 1, 1),
(21, 12, 2, 1),
(22, 12, 3, 1),
(23, 13, 1, 1),
(24, 13, 2, 1),
(25, 14, 1, 1),
(26, 14, 2, 1),
(27, 17, 1, 1),
(28, 19, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
`id` int(10) NOT NULL,
  `idCliente` int(10) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `idCliente`, `fecha`, `estado`) VALUES
(1, 1, '1419610316', '1'),
(2, 3, '1419610420', '1'),
(3, 1, '1419619913', '2'),
(4, 1, '1419620306', '2'),
(5, 1, '1419620691', '1'),
(6, 1, '1419621159', '0'),
(7, 1, '1419621330', '1'),
(8, 1, '1419621496', '0'),
(9, 1, '1419621735', '0'),
(10, 1, '1419624465', '0'),
(11, 1, '1419624569', '0'),
(12, 1, '1419651678', '0'),
(13, 1, '1419652018', '0'),
(14, 1, '1420058037', '0'),
(15, 1, '1420058053', '0'),
(16, 1, '1420058367', '0'),
(17, 1, '1420058400', '0'),
(18, 1, '1420058449', '0'),
(19, 1, '1420059143', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
`id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(10) NOT NULL,
  `peso` int(5) NOT NULL,
  `lingitud` int(5) NOT NULL,
  `altura` int(5) NOT NULL,
  `existencia` int(5) NOT NULL,
  `activado` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `peso`, `lingitud`, `altura`, `existencia`, `activado`) VALUES
(1, 'Manos libres', 'Audifonos para ambas orejas con microfono', 300, 150, 13, 13, 13, 1),
(2, 'Computadora', 'De gran calidad para trabajos rudos', 150, 120, 6, 2, 36, 1),
(3, 'Camara', 'Ideal para tomar buenas fotos', 100, 60, 20, 10, 38, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagesproductos`
--
ALTER TABLE `imagesproductos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lineaspedidos`
--
ALTER TABLE `lineaspedidos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `imagesproductos`
--
ALTER TABLE `imagesproductos`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `lineaspedidos`
--
ALTER TABLE `lineaspedidos`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
