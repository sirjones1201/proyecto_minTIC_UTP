SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



CREATE TABLE `cliente` (
  `idCliente` int(11) UNSIGNED NOT NULL,
  `Dni` varchar(10) DEFAULT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `Dni`, `Nombres`, `Direccion`, `Email`, `Password`) VALUES
(1, '93378914', 'Andres Medina', 'Ibague - Tolima', 'andresmedina@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `idCompras` int(11) UNSIGNED NOT NULL,
  `idCliente` int(11) UNSIGNED NOT NULL,
  `idPago` int(11) UNSIGNED NOT NULL,
  `FechaCompras` varchar(11) DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `idDetalle` int(10) UNSIGNED NOT NULL,
  `idProducto` int(11) UNSIGNED NOT NULL,
  `idCompras` int(11) UNSIGNED NOT NULL,
  `Cantidad` int(11) UNSIGNED DEFAULT NULL,
  `PrecioCompra` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `idPago` int(11) UNSIGNED NOT NULL,
  `Monto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) UNSIGNED NOT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `Nombres`, `Foto`, `Descripcion`, `Precio`, `Stock`) VALUES
(20, 'CHELATED ZINC X 100 TAB - SOLGAR', 'http://localhost/carrito/chelated-zinc-solgar.jpg', 'Chelated Zinc x 100 Tab - Solgar es un mineral presente en innumerables procesos enzimáticos.\r\nContiene una fórmula quelatada natural.\r\nApto para Vegetarianos.\r\nLibre de Gluten.\r\nRegistro Invima: SD2017-0000275-R1', 70000, 100),
(21, 'JARRO – DOPHILUS X 60 CAP - JARROW', 'http://localhost/carrito/jarrow-dophilus-x-60-cap-jarrow.jpg', 'Jarrow – Dophilus x 60 Cap - Jarrow sistema de probióticos avanzado, 5 billones de microorganismos vivos por cápsula y con un recubrimiento entérico para sobrevivir al ácido estomacal y administrar probióticos a los intestinos, 8 cepas clínicamente docume', 132900, 1000),
(22, 'PYRUS JARABE X 360 ML - PRONABELL LEDMAR', 'http://localhost/carrito/pyrus-jarabe-x-360-ml-pronabell-ledmar.jpg', 'PYRUS JARABE X 360 ML - PRONABELL LEDMAR\r\n29.200,00 COP\r\nImpuestos incluidos\r\nPyrus Jarabe X 360 Ml - Pronabell Ledmar está elaborado a partir de la fibra de avena. Coadyuvante en el tratamiento del estreñimiento crónico y en el tratamiento de la hipercol', 29200, 1000),
(23, 'CREA STACK X 600GR (1.03 LB) NUTRAMERICAN - ELITENUT', 'http://localhost/carrito/crea-stack-x-600gr-103-lb-nutramerican-elitenut.jpg', 'Crea Stack X 600gr (1.03 Lb) Nutramerican - Elitenut , es la última generación en suplementos con Creatina, su fórmula única en el mercado incluye HMB, así como ácido Alfa Lipoico y Sulfato de Vanadio, es ideal para que alcances los objetivos con mayor fa', 138900, 100),
(24, 'CLOROFILA LÍQUIDA X 473 ML - NATURE\'S SUNSHINE', 'http://localhost/carrito/clorofila-liquida-natures-sunshine.jpg', 'Clorofila Líquida x 473 Ml - Nature’s Sunshine producto hecho a base de clorofila líquida, que es el pigmento verde en las plantas responsable de absorber la energía del sol por medio de la fotosíntesis.\r\nBebida saborizada con menta. \r\nRegistro Invima: RS', 81900, 1000),
(25, 'MAGIC CHAI BOLSA X 100 GRS - PADAM', 'http://localhost/carrito/magic-chai-bolsa-x-100-grs-padam.jpg', 'Magic Chai Tarro x 100 Grs  - Padam mezcla de té negro y especias para preparar Massala Chai.\r\nEs una mezcla sinérgica de 8 especias y 4  superalimentos para preparar la deliciosa y famosa bebida de la India el Massala.\r\nProducto Vegano.\r\n100% Natural.\r\nR', 39850, 1000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`idCompras`),
  ADD KEY `Compras_FKIndex1` (`idPago`),
  ADD KEY `Compras_FKIndex2` (`idCliente`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`idDetalle`,`idProducto`,`idCompras`),
  ADD KEY `Producto_has_Compras_FKIndex1` (`idProducto`),
  ADD KEY `Producto_has_Compras_FKIndex2` (`idCompras`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idPago`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `idCompras` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `idDetalle` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `idPago` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idPago`) REFERENCES `pago` (`idPago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`idCompras`) REFERENCES `compras` (`idCompras`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
