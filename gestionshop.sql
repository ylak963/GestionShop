-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: gestionshop
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `articulos` (
  `idArticulo` int(11) NOT NULL AUTO_INCREMENT,
  `nombreArticulo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tamanioArticulo` int(2) DEFAULT NULL,
  `descripcionArticulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `precioArticulo` decimal(6,2) DEFAULT NULL,
  `idProveedorFK` int(11) DEFAULT NULL,
  PRIMARY KEY (`idArticulo`),
  KEY `idProveedorFK` (`idProveedorFK`),
  CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`idProveedorFK`) REFERENCES `proveedores` (`idproveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Satisfyer pro 2',15,'Para conseguir orgasmos múltiples y más intesos',36.60,1),(2,'Consolador de doble capa',20,'Base fuerte de la ventosa para el juego libre',19.99,2),(3,'Lubricante Durex larga duración',5,'Lubricante intimo de base de silicona de 50ml',9.30,3),(4,'Anillo vibrador',4,'Anillo vibrador para el pene con 30 min de duración',10.00,4),(5,'Tanga comestible de caramelo',13,'Auténtico tanga de sabor caramelo',9.99,5),(6,'Juego erótico',15,'Juego erótico para parejas, incluye dados',19.99,6),(25,'nombrePrueba',23,'descripcion',2.10,11);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disponen`
--

DROP TABLE IF EXISTS `disponen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `disponen` (
  `idReunionFK` int(11) DEFAULT NULL,
  `idArticuloFK` int(11) DEFAULT NULL,
  KEY `idReunionFK` (`idReunionFK`),
  KEY `idArticuloFK` (`idArticuloFK`),
  CONSTRAINT `disponen_ibfk_1` FOREIGN KEY (`idReunionFK`) REFERENCES `reuniones` (`idreunion`),
  CONSTRAINT `disponen_ibfk_2` FOREIGN KEY (`idArticuloFK`) REFERENCES `articulos` (`idArticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disponen`
--

LOCK TABLES `disponen` WRITE;
/*!40000 ALTER TABLE `disponen` DISABLE KEYS */;
INSERT INTO `disponen` VALUES (1,2),(1,2),(2,3),(1,4),(1,5),(1,6),(1,1);
/*!40000 ALTER TABLE `disponen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proveedores` (
  `idProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombreProveedor` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefonoProveedor` int(9) DEFAULT NULL,
  `generoProveedor` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'satis sl',954545454,'Productos eróticos'),(2,'consol sl',954121212,'Consoladores'),(3,'lubrin sa',954131313,'Lubricantes eróticos'),(4,'vibrer and company',954646464,'Vibradores'),(5,'Edible Clothe sa',954747474,'Ropa comestible erótica'),(6,'Dream Love sl',954101010,'Juetos eróticos'),(11,'CCCC',912454542,'crss');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reuniones`
--

DROP TABLE IF EXISTS `reuniones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reuniones` (
  `idReunion` int(11) NOT NULL AUTO_INCREMENT,
  `puntosReunion` int(4) DEFAULT NULL,
  `fechaReunion` date DEFAULT NULL,
  PRIMARY KEY (`idReunion`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reuniones`
--

LOCK TABLES `reuniones` WRITE;
/*!40000 ALTER TABLE `reuniones` DISABLE KEYS */;
INSERT INTO `reuniones` VALUES (1,100,'2020-01-25'),(2,50,'2020-02-10'),(3,25,'2020-02-17'),(4,150,'2020-02-27'),(5,210,'2020-03-05'),(6,35,'2020-03-09'),(7,2,'2020-11-02');
/*!40000 ALTER TABLE `reuniones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `claveUsuario` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipoUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918',0),(2,'usuario','9250e222c4c71f0c58d4c54b50a880a312e9f9fed55d5c3aa0b0e860ded99165',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-01 19:14:26
