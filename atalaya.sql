-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: atalaya
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `detalle` varchar(999) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `categoria` varchar(999) NOT NULL,
  PRIMARY KEY (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (6,'Casa en Venta, Barrio Somisa, San Nicolás de los Arroyos, Buenos Aires.','Casa construida en 2 planta en terreno de 215m2 con entrada por 2 calles. Consta de 2 dormitorios que comparten 2 baño completo totalmente reciclado. Living comedor con vista al frente, cocina comedor diario con salida a un patio. Amplio garaje con lavadero y 1 baño de servicio y una baulera. Patio, lindo jardín con parrilla y cochera cubierta con entrada para 2 autos. Escalera exterior que nos lleva a una gran terraza.  Superficie total: 215 m² Superficie cubierta: 148 m² Superficie terreno: 215 m² Ambientes: 5 Baños: 2 Dormitorios: 3 Cocheras: 2 Antigüedad: 2 años','Atalaya1.png(1657408048278).png',170000,'Venta'),(7,'Casa en Venta, Barrio Privado Alma Verde, San Nicolás de los Arroyos, Buenos Aires.','Casa construida con materiales de primer nivel. Amplio parque verde para disfrutar al aire libre en familia. Estilo antiguo con techo a dos aguas.  Superficie total: 218.59 m² Superficie cubierta: 177.1 m² Superficie semicubierta: 41.49 m² Superficie terreno: 218.59 m² Ambientes: 6 Baños: 2 Dormitorios: 3 Cocheras: 2 Antigüedad: 5 años','Atalaya2.png(1657481443403).png',395000,'Venta'),(8,'Casa en Venta, Barrio Privado Yaguarón, San Nicolás de los Arroyos, Buenos Aires.','Casa de 2 pisos construida con materiales de excelencia. Escalera estilo colonial. Amplio parque con cancha de futbol. Estilo moderno   Superficie total: 150.00 m² Superficie cubierta: 100.00 m² Superficie semicubierta: 50.00 m² Superficie terreno: 150.00 m² Ambientes: 6 Baños: 3 Dormitorios: 4 Cocheras: 3 Antigüedad: 10 años','Atalaya3.png(1657481486740).png',120000,'Venta'),(9,'Casa en Venta, zona centro, San Nicolás de los Arroyos, Buenos Aires.','Casa de 2 pisos con ambientes amplios y muy iluminados. Cuenta con espacio de juegos en planta alta, y un despacho cerrado especial para utilizar como oficina.   Superficie total: 100.00 m² Superficie cubierta: 80.00 m² Superficie semicubierta: 20.00 m² Superficie terreno: 100.00 m² Ambientes: 5 Baños: 2 Dormitorios: 3 Cocheras: 2 Antigüedad: 15 años','Atalaya4.png(1657481525293).png',95000,'Venta'),(10,'Depto en Alquiler, zona privilegiada, San Nicolás de los Arroyos, Buenos Aires.','Depto de 2 pisos con ambientes luminosos y modernos. Totalmente amoblado en maderas especialmente elegidas para crear un ambiente moderno y minimalista. Amplio balcón con parrillero y sillones. Expensas incluidas.  Superficie total: 90.00 m² Superficie cubierta: 80.00 m² Superficie semicubierta: 10.00 m² Superficie terreno: 90.00 m² Ambientes: 4 Baños: 2 Dormitorios: 3 Cocheras: 1 Antigüedad: 2 años','Atalaya5.png(1657481618562).png',7000,'Alquiler'),(11,'Depto en Alquiler, zona centro, San Nicolás de los Arroyos, Buenos Aires.','Depto amoblado con estilo rústico y pisos de parke. Balcón con vista al río y red de seguridad colocada. Especial para disfrutar en familia con hijos pequeños por sus ambientes grandes y seguros. Cocheras ubicadas en subsuelo con bauleras. Expensas se pagan aparte.   Superficie total: 90.00 m² Superficie cubierta: 70.00 m² Superficie semicubierta: 20.00 m² Superficie terreno: 90.00 m² Ambientes: 3 Baños: 1 Dormitorios: 3 Cocheras: 2 Antigüedad: 8 años','Atalaya6.png(1657481659063).png',8000,'Alquiler'),(12,'Depto en Alquiler, en costanera pegado al río, San Nicolás de los Arroyos, Buenos Aires.','Depto amoblado con estilo rústico y minimalista. Doble balcón con vista al río y doble red de seguridad colocada. Especial para pareja, o recién casados con proyección de formar una familia. Excelentes prestaciones en el edificio. Gimnasio, pileta climatizada y spa incluidos.   Superficie total: 100.00 m² Superficie cubierta: 85.00 m² Superficie semicubierta: 15.00 m² Superficie terreno: 100.00 m² Ambientes: 5 Baños: 2 Dormitorios: 2 Cocheras: 1 Antigüedad: 3 años','Atalaya7.png(1657482803472).png',8500,'Alquiler'),(13,'Depto en Alquiler, edificio premium, San Nicolás de los Arroyos, Buenos Aires.','Depto amoblado y completo listo para habitar. 	Cuenta con segunda planta con habitaciones y baño compartido. Cocina con elementos de última tecnología y lavandería incluida en edificio.   Superficie total: 80.00 m² Superficie cubierta: 70.00 m² Superficie semicubierta: 10.00 m² Superficie terreno: 80.00 m² Ambientes: 3 Baños: 2 Dormitorios: 2 Cocheras: 1 Antigüedad: 5 años','Atalaya8.png(1657481776338).png',7500,'Alquiler'),(14,'Casa en Alquiler, a las afueras de la ciudad, San Nicolás de los Arroyos, Buenos Aires.','Casa de estilo campo, moderna y minimalista. Amoblado con muebles de madera Premium reciclada con acabados en color cobre. Cuenta con amplio espacio verde, especial para disfrutar en familia con hijos. Se puede utilizar con 1 casa o 2 casas independientes con conexión intermedia. Equipada con última tecnología de hogar inteligente.  Superficie total: 200.00 m² Superficie cubierta: 140.00 m² Superficie semicubierta: 60.00 m² Superficie terreno: 200.00 m² Ambientes: 8 Baños: 4 Dormitorios: 6 Cocheras: 3 Antigüedad: 3 años','Atalaya9.png(1657481817747).png',250000,'Alquiler'),(15,'Casa en Alquiler, barrio privado Norte, San Nicolás de los Arroyos, Buenos Aires.','Casa con techo a dos aguas con excelentes terminaciones. Cuenta con quincho semi cubierto con parrillero y horno de barro. Amplio parque con vista al río, y bajada de lancha propia directo al río Paraná. Gastos incluidos.  Superficie total: 160.00 m² Superficie cubierta: 100.00 m² Superficie semicubierta: 60.00 m² Superficie terreno: 160.00 m² Ambientes: 4 Baños: 2 Dormitorios: 2 Cocheras: 1 Antigüedad: 12 años','Atalaya10.png(1657481837466).png',200000,'Alquiler'),(16,'Casa en Alquiler, excelente ubicación, San Nicolás de los Arroyos, Buenos Aires.','Casa de 3 pisos, súper equipada, con pileta, solárium y gimnasio incluido en 2do piso. 100% amueblada con tecnología de última generación. No se pueden realizar modificaciones de ningún tipo. Un hogar de calidad Premium para muchos habitantes. ¡A ESTRENAR!  Superficie total: 220.00 m² Superficie cubierta: 180.00 m² Superficie semicubierta: 40.00 m² Superficie terreno: 220.00 m² Ambientes: 10 Baños: 3 Dormitorios: 4 Cocheras: 3 Antigüedad: 1 años','Atalaya11.png(1657482862626).png',290000,'Alquiler'),(17,'Casa en Alquiler, barrio privado Alma Verde, San Nicolás de los Arroyos, Buenos Aires.','Casa de 2 pisos, ubicada en las afueras de la ciudad, sobre ruta 188 y autopista. Terminaciones en madera, pisos de parqué y ventanas con sistema de seguridad monitoreado desde cualquier dispositivo. Cámaras instaladas en exterior e interior. Parque propio con cancha de básquet, y plaza compartida con el barrio Alma Verde.  Superficie total: 230.00 m² Superficie cubierta: 180.00 m² Superficie semicubierta: 50.00 m² Superficie terreno: 230.00 m² Ambientes: 5 Baños: 3 Dormitorios: 4 Cocheras: 2 Antigüedad: 13 años','Atalaya12.png(1657481895806).png',260000,'Alquiler');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'atalaya'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-12  0:51:21
