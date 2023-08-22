-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: proyectomultioptica
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `proyectomultioptica`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `proyectomultioptica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `proyectomultioptica`;

--
-- Table structure for table `tbl_ciudad`
--

DROP TABLE IF EXISTS `tbl_ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ciudad` (
  `IdCiudad` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdCiudad`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ciudad`
--

LOCK TABLES `tbl_ciudad` WRITE;
/*!40000 ALTER TABLE `tbl_ciudad` DISABLE KEYS */;
INSERT INTO `tbl_ciudad` VALUES (48,'AJUTERIQUE'),(41,'BONITO ORIENTAL'),(45,'BRUS LAGUNA'),(15,'CATACAMAS'),(30,'CHAMELECON'),(8,'Choloma'),(5,'Choluteca'),(2,'Comayagua'),(35,'Comayagüela '),(11,'Danli'),(18,'Distrito Central'),(32,'El Porvenir'),(7,'El Progreso'),(22,'Gracias'),(39,'Guaimaca'),(43,'Jesus de Otoro'),(36,'Jutiapa'),(10,'Juticalpa'),(38,'La Campa'),(4,'La Ceiba'),(23,'La Esperanza'),(12,'La Lima'),(47,'La Masique'),(28,'La Paz'),(31,'Las Vegas'),(34,'Marcala'),(42,'Minas de Oro'),(21,'Nacaome'),(27,'Ocotepeque'),(17,'Olanchito'),(46,'San Jose de Colinas'),(3,'San Pedro Sula'),(19,'Santa Barbara'),(33,'Santa cruz de Yojoa'),(13,'Santa Rosa de Copan'),(14,'Siguatepeque'),(40,'Talanga'),(1,'Tegucigalpa'),(9,'Tela'),(44,'Teupasenti'),(16,'Tocoa'),(25,'Trujillo'),(20,'Yoro'),(24,'Yuscaran');
/*!40000 ALTER TABLE `tbl_ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cliente` (
  `idCliente` varchar(15) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `IdGenero` int(11) DEFAULT NULL,
  `fechaNacimiento` date NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefonoCliente` varchar(15) DEFAULT NULL,
  `correoElectronico` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente` (`idCliente`),
  UNIQUE KEY `telefonoCliente` (`telefonoCliente`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_cliente_ibfk_1` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0712199920002','JOAQUIN','ABRILES',1,'0000-00-00','COMAYAGUELA','99087677','joanquin@gmail.com'),('0715199700456','PEDRO','AGUILERA',1,'0000-00-00','HONDURAS','99086676','aguilera@gmail.com'),('0715200010880','JULIA','PERDOMO',2,'2023-08-01','CRUCITAS','99837747','juanita@gmail.com'),('0801199776363','MOISES','ORTIZ',2,'2023-08-25','SOSA','88987474','majeeee@gmail.com'),('0801199900000','BEATRIZ','PINZON',2,'2023-08-20','ECOMODA','24343454','betty@gmail.com'),('0801199922345','ARMANDO','MIRANDA',1,'0000-00-00','LAURELES','99659983','armando@gmail.com'),('0801200004525','Heidy','Duron',2,'2000-05-04','BELLA VISTA','98552631','heidy@gmail.com'),('0801200010883','PATY','SIMON',1,'0000-00-00','LOLA','99065245','lola@gmail.com'),('0801200010886','ANA','LOPEZ',2,'2023-03-08','POLICARPIO PAZ','22345878','ana@gmail.com'),('0801200099999','PABLO','ORTEGA',1,'0000-00-00','EL CENTRO','33446722','pablito@gmail.com'),('0801200201582','Jared','Salgado',1,'2002-10-10','CARRIZAL','99887790','jared@gmail.com'),('0802199900765','GABRIELA','COELLO',2,'2023-08-17','LA ROSA','22435678','gaby@gmail.com'),('0802200083737','JUAN','LOPEZ',1,'2023-08-24','LA LAGUNA','93884747','lopez@gmail.com'),('0804198900970','LESBIA','VELASQUEZ',2,'2023-01-29','BELLA VISTA','99656601','lesbia@gmail.com'),('0804199533222','SUYAPA','GODOY',2,'2023-08-17','POLICARPO PAZ','98153322','godoysuyapa@gmail.com'),('0804199877625','JOSE','FERRARI',1,'2023-08-01','COMAYAGUA','99887765','ferra@gmail.com'),('0805188822345','MARGARITA','DALVEZ',2,'2023-07-12','LAS BRISAS','99008877','adonis@gmail.com'),('0805199900000','MICHAEL','HERNANDEZ',2,'0000-00-00','LAURELES','22334455','michael@gmail.com'),('0805200010889','TOM','AGUILERA',1,'2023-08-01','BELLA VISTA','99050234','maximiliano@gmail.com'),('0806199981111','CHRISTIAN','LEONARDO',1,'1999-11-13','LOS ROBLES','99007776','leo@gmail.com'),('0809156662622','JUAN','GUEVARA',1,'0000-00-00','LALA','99009282','lala@gmail.com'),('0809199900677','MARCIAL','CRUZ',1,'0000-00-00','LAS TORRES','99088484','marcial@gmail.com');
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compra`
--

DROP TABLE IF EXISTS `tbl_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compra` (
  `IdCompra` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCompra` timestamp NOT NULL DEFAULT current_timestamp(),
  `totalCompra` float DEFAULT NULL,
  PRIMARY KEY (`IdCompra`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-02 14:58:53',13000),(2,'2023-08-02 23:34:18',1000),(3,'2023-08-02 23:36:39',100),(4,'2023-08-05 03:41:32',2000),(5,'2023-08-05 03:42:59',2000),(6,'2023-08-06 06:01:19',0),(7,'2023-08-07 09:13:08',4000),(8,'2023-08-07 09:13:08',4000),(9,'2023-08-07 09:13:08',4000),(10,'2023-08-07 09:13:08',4000),(11,'2023-08-07 09:13:08',4000),(12,'2023-08-07 09:13:08',4000),(13,'2023-08-07 15:19:41',0),(14,'2023-08-07 15:19:41',0),(15,'2023-08-07 15:19:41',0),(16,'2023-08-07 15:19:41',0),(17,'2023-08-07 15:19:41',0),(18,'2023-08-07 15:19:41',0),(19,'2023-08-07 15:19:41',0),(20,'2023-08-07 15:19:41',0),(21,'2023-08-07 15:19:47',0),(22,'2023-08-07 15:19:47',0),(23,'2023-08-07 15:19:47',0),(24,'2023-08-07 15:19:47',0),(25,'2023-08-07 15:19:47',0),(26,'2023-08-07 15:19:47',0),(27,'2023-08-07 15:20:03',0),(28,'2023-08-07 15:20:03',0),(29,'2023-08-07 15:20:03',0),(30,'2023-08-07 15:20:03',0),(31,'2023-08-07 15:20:03',0),(32,'2023-08-07 15:20:03',0),(33,'2023-08-07 15:36:42',10001),(34,'2023-08-07 15:38:08',800),(35,'2023-08-07 16:16:43',1499),(36,'2023-08-07 16:17:22',10),(37,'2023-08-07 16:24:46',1000),(38,'2023-08-07 16:27:42',10),(39,'2023-08-07 16:28:15',800),(40,'2023-08-07 16:32:48',100),(41,'2023-08-07 16:40:12',0),(42,'2023-08-07 16:40:54',100),(43,'2023-08-07 16:43:18',100),(44,'2023-08-14 03:42:45',1000),(45,'2023-08-14 04:08:08',2000),(46,'2023-08-14 04:09:44',1500),(47,'2023-08-18 03:38:07',0),(48,'2023-08-18 03:51:53',410),(49,'2023-08-20 01:19:35',10000),(50,'2023-08-20 02:07:18',1000);
/*!40000 ALTER TABLE `tbl_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compradetalle`
--

DROP TABLE IF EXISTS `tbl_compradetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compradetalle` (
  `IdCompraDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdCompra` int(11) DEFAULT NULL,
  `IdProveedor` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `costoCompra` float DEFAULT NULL,
  PRIMARY KEY (`IdCompraDetalle`),
  KEY `IdCompra` (`IdCompra`),
  KEY `IdProveedor` (`IdProveedor`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `tbl_compradetalle_ibfk_1` FOREIGN KEY (`IdCompra`) REFERENCES `tbl_compra` (`IdCompra`),
  CONSTRAINT `tbl_compradetalle_ibfk_2` FOREIGN KEY (`IdProveedor`) REFERENCES `tbl_proveedor` (`IdProveedor`),
  CONSTRAINT `tbl_compradetalle_ibfk_3` FOREIGN KEY (`idProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (1,1,1,13,1,13000),(2,2,1,200,3,1000),(3,3,1,200,2,100),(4,4,1,100,3,1000),(5,4,1,200,1,1000),(6,5,1,100,3,1000),(7,5,1,200,1,1000),(8,7,1,10,3,2000),(9,8,1,200,1,1000),(10,8,1,10,3,2000),(11,7,1,10,2,1000),(12,8,1,10,2,1000),(13,7,1,200,1,1000),(14,9,1,200,1,1000),(15,9,1,10,3,2000),(16,9,1,10,2,1000),(17,10,1,200,1,1000),(18,10,1,10,3,2000),(19,10,1,10,2,1000),(20,12,1,10,2,1000),(21,11,1,200,1,1000),(22,12,1,200,1,1000),(23,11,1,10,2,1000),(24,12,1,10,3,2000),(25,11,1,10,3,2000),(26,33,1,1000,2,10000),(27,33,1,1,3,1),(28,34,1,200,3,800),(29,35,1,200,2,700),(30,35,1,700,3,799),(31,36,1,10,1,10),(32,37,1,100,4,1000),(33,38,1,200,4,10),(34,39,1,100,4,800),(35,40,1,100,5,100),(36,42,1,100,4,100),(37,43,1,100,6,100),(38,44,1,10,1,1000),(39,45,1,21,7,2000),(40,46,1,9,7,1500),(41,48,1,200,5,10),(42,48,1,40,7,400),(43,49,1,1000,3,10000),(44,50,1,2000,9,1000);
/*!40000 ALTER TABLE `tbl_compradetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_departamento`
--

DROP TABLE IF EXISTS `tbl_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_departamento` (
  `IdDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdDepartamento`),
  UNIQUE KEY `departamento` (`departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_departamento`
--

LOCK TABLES `tbl_departamento` WRITE;
/*!40000 ALTER TABLE `tbl_departamento` DISABLE KEYS */;
INSERT INTO `tbl_departamento` VALUES (1,'ATLANTIDA'),(6,'CHOLUTECA'),(2,'COLON'),(3,'COMAYAGUA'),(4,'COPAN'),(5,'Cortés'),(7,'El Paraíso'),(8,'Francisco Morazán'),(9,'Gracias a Dios'),(10,'Intibucá'),(11,'Islas de la Bahía'),(12,'La Paz'),(13,'Lempira'),(14,'Ocotepeque'),(15,'Olancho'),(16,'Santa Bárbara'),(17,'Valle'),(18,'Yoro');
/*!40000 ALTER TABLE `tbl_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_descuento`
--

DROP TABLE IF EXISTS `tbl_descuento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_descuento` (
  `IdDescuento` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `descPorcent` float DEFAULT NULL,
  `descPorcentEmpleado` float DEFAULT NULL,
  PRIMARY KEY (`IdDescuento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,1,0.2,0.3),(2,1,0.15,0.2);
/*!40000 ALTER TABLE `tbl_descuento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_empleado`
--

DROP TABLE IF EXISTS `tbl_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_empleado` (
  `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefonoEmpleado` varchar(12) DEFAULT NULL,
  `IdSucursal` int(11) DEFAULT NULL,
  `IdGenero` int(11) DEFAULT NULL,
  `numeroIdentidad` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `numeroIdentidad` (`numeroIdentidad`),
  KEY `IdSucursal` (`IdSucursal`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_empleado_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tbl_sucursal` (`IdSucursal`),
  CONSTRAINT `tbl_empleado_ibfk_2` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'ALEXANDER','RAMIREZ','96235694',1,1,'0801200001152'),(2,'KAREN','AGUILERA','98778887',1,2,'0801200018888'),(4,'MICHAEL','SOSA','33444445',1,1,'0801199800000'),(6,'ARMANDO','MENDOZA','22334444',NULL,1,'0801200020000'),(8,'BEATRIZ','PINZON','22234444',1,2,'0801199999999'),(11,'PAMELA','ZELAYA','22345677',1,2,'0801200012345'),(12,'PRUEBA','PRUEBA','22334455',1,1,'0801199922345'),(13,'INFO','INFOR','92828828',1,2,'0801200000000'),(15,'KATERINE','LARA','99876543',1,2,'0717199899999'),(17,'CARMEN','SALINAS','35456666',1,2,'0718100082872'),(18,'INFORMATICA','ADMINISTRATIVA','99008766',1,2,'0714199500872'),(19,'UNAH','UNAH','99087867',1,1,'0801200088666'),(20,'CHARLY','LOPEZ','88997766',2,1,'0715199822354'),(21,'MAXIMILIANO','AGUILERA','99008767',1,1,'0801202210888'),(22,'WENDY','PADILLA','23243535',1,1,'0801200977366'),(23,'POLET','ANDRADE','55566777',1,1,'0801199927663');
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estadoventa`
--

DROP TABLE IF EXISTS `tbl_estadoventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estadoventa` (
  `IdEstado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`IdEstado`),
  UNIQUE KEY `estado` (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estadoventa`
--

LOCK TABLES `tbl_estadoventa` WRITE;
/*!40000 ALTER TABLE `tbl_estadoventa` DISABLE KEYS */;
INSERT INTO `tbl_estadoventa` VALUES (1,'Pagado'),(2,'Pendiente');
/*!40000 ALTER TABLE `tbl_estadoventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expediente`
--

DROP TABLE IF EXISTS `tbl_expediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_expediente` (
  `IdExpediente` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `IdCliente` varchar(15) DEFAULT NULL,
  `IdEmpleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdExpediente`),
  UNIQUE KEY `IdCliente` (`IdCliente`),
  KEY `IdEmpleado` (`IdEmpleado`),
  CONSTRAINT `tbl_expediente_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`),
  CONSTRAINT `tbl_expediente_ibfk_2` FOREIGN KEY (`IdEmpleado`) REFERENCES `tbl_empleado` (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-02 11:28:14','0801200201582',1),(3,'2023-08-02 11:31:39','0801200004525',1),(4,'2023-08-01 06:00:00','0801199922345',1),(5,'2023-08-02 06:00:00','0801199900000',1),(6,'2023-08-02 06:00:00','0802200083737',1),(8,'2023-08-02 06:00:00','0801199776363',1),(9,'2023-08-02 06:00:00','0802199900765',1),(10,'2023-08-03 06:00:00','0804198900970',2),(22,'2023-08-06 06:00:00','0805199900000',8),(23,'2023-08-06 06:00:00','0715200010880',11),(24,'2023-08-06 06:00:00','0805188822345',1),(25,'2023-08-06 06:00:00','0804199533222',15),(26,'2023-08-06 06:00:00','0809199900677',13),(27,'2023-08-11 06:00:00','0806199981111',13),(28,'2023-08-12 06:00:00','0804199877625',1),(29,'2023-08-13 06:00:00','0801200099999',11),(30,'2023-08-15 06:00:00','0809156662622',4),(31,'2023-08-17 06:00:00','0801200010886',13);
/*!40000 ALTER TABLE `tbl_expediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expedientedetalle`
--

DROP TABLE IF EXISTS `tbl_expedientedetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_expedientedetalle` (
  `IdExpedienteDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdExpediente` int(11) DEFAULT NULL,
  `diagnostico` varchar(200) NOT NULL,
  `Optometrista` varchar(50) NOT NULL,
  `AsesorVenta` varchar(50) NOT NULL,
  `Antecedentes` varchar(200) NOT NULL,
  `ODEsfera` varchar(10) NOT NULL,
  `OIEsfera` varchar(10) NOT NULL,
  `ODCilindro` varchar(10) NOT NULL,
  `OICilindro` varchar(10) NOT NULL,
  `ODEje` varchar(10) NOT NULL,
  `OIEje` varchar(10) NOT NULL,
  `ODAdicion` varchar(10) NOT NULL,
  `OIAdicion` varchar(10) NOT NULL,
  `ODAltura` varchar(10) NOT NULL,
  `OIAltura` varchar(10) NOT NULL,
  `ODDistanciaPupilar` varchar(10) NOT NULL,
  `OIDistanciaPupilar` varchar(10) NOT NULL,
  `fechaConsulta` date DEFAULT NULL,
  `fechaExpiracion` date DEFAULT NULL,
  PRIMARY KEY (`IdExpedienteDetalle`),
  KEY `IdExpediente` (`IdExpediente`),
  CONSTRAINT `tbl_expedientedetalle_ibfk_1` FOREIGN KEY (`IdExpediente`) REFERENCES `tbl_expediente` (`IdExpediente`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (3,3,'ASTIGMATISMO','Josue','Johana','NINGUNO','1','2','2','1','2','2','2','2','1','2','1','2','2023-04-01','2024-05-06'),(4,4,'ASTIGMATISMO','NICOLAS','PATRICIA','DIABETES','-1','1','1','1','2','2','3','4','4','5','45','78','2023-08-01','2025-08-01'),(5,4,'MIOPIA','JUAN','LUIS','DIABETES','1','1','1','1','1','1','1','1','1','1','1','1','2023-08-01','2025-08-01'),(9,9,'MIOPIA','JUAN','ORTIZ','NINGUNO','1','1','1','1','1','1','1','1','1','1','1','1','2023-08-02','2025-08-02'),(10,5,'NADA','JUANITA','LUCAS','NINGUNO','2','2','12','2','2','2','2','2','2','22','233','233','2023-08-02','2025-08-02'),(11,1,'MIOPIA','ARMANDO','HUGO','DIABETES','','','','','','','','','','','','','2023-08-03','2025-08-03'),(12,6,'MIOPIA','LINDA','JUANA','AZUCAR','1','1','1','1','1','1','1','1','1','1','3','3','2023-08-03','2025-08-03'),(13,10,'ASTIGMATISMO','KATERINE','JUAN PABLO','NINGUNO','0','0','0','0','0','0','0','0','0','0','0','-1','2023-08-03','2025-08-03'),(14,10,'MIOPIA','MARCO','RODAS','NADA','0','0','0','0','0','0','0','0','0','0','0','-1','2023-08-03','2025-08-03'),(32,8,'ASTIGMATISMO','JUDITH','SINDY','NINGUNO','-1','-3','1','1','1','1','1','1','1','1','1','0','2023-08-06','2025-08-06'),(33,22,'NADA','JOHANA','HEIDY','NADA','1','1','1','1','1','1','1','1','1','1','1','1','2023-08-06','2025-08-06'),(34,23,'WWW','JOHANA','JOHANA','NINGUNO','1','1','1','1','1','1','1','1','1','1','1','1','2023-08-06','2025-08-06'),(35,24,'MIOPIA','NADIE','NADIE','NADA','1','1','1','1','1','1','1','1','1','1','11','0','2023-08-06','2025-08-06'),(36,25,'HOLIS','JULIA','MARTIN','NADA','1','1','1','1','1','1','1','1','1','1','1','1','2023-08-06','2025-08-06'),(37,25,'NADA','MONSE','KEVIN','PRESION ALTA','0','0','0','0','0','0','0','0','0','0','0','0','2023-08-06','2025-08-06'),(38,26,'NINGUNOO','ERICK','HEIDY','NADA','1','1','1','1','1','1','1','1','1','1','1','0','2023-08-06','2025-08-06'),(39,27,'DD','XIOMI','JUANCHI','NADA','','','','','','','','','','','','','2023-08-11','2024-08-11'),(40,28,'MIOPIAUUU','JULIAN','ANA','NADA','','','','','','','','','','','','','2023-08-12','2024-08-12'),(41,29,'NADA','ERICK','JARED','NADA','1','1','1','1','1','1','1','1','1','1','1','0','2023-08-13','2024-08-13'),(42,29,'MIOPIAUUU','JUANITA','MICHAEL','NADA','2','2','2','2','2','2','2','2','2','2','2','2','2023-08-13','2024-08-13'),(43,30,'CC','MICHAEL','JOHANA','NADA','','','','','','','','','','','','','2023-08-15','2024-08-16'),(44,1,'MIOPIA','MARIA','SOFIA','NADA','','','','','','','','','','','','','2023-08-16','2024-08-17'),(45,31,'MIOPIA Y ASTIGMATISMO','LUIS','PERLA','NINGUNO','','','','','','','','','','','','','2023-08-17','2024-08-17');
/*!40000 ALTER TABLE `tbl_expedientedetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_garantia`
--

DROP TABLE IF EXISTS `tbl_garantia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_garantia` (
  `IdGarantia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `mesesGarantia` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IdGarantia`),
  UNIQUE KEY `descripcion` (`descripcion`),
  KEY `IdProducto` (`IdProducto`),
  CONSTRAINT `tbl_garantia_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
INSERT INTO `tbl_garantia` VALUES (1,'Garantia de fabricacion',5,1,1),(2,'Garantia de ajuste o comididad',5,2,1),(3,'Garantia de satisfaccion',3,1,1),(5,'GARANTIA PRODUCTO',1,7,1);
/*!40000 ALTER TABLE `tbl_garantia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genero`
--

DROP TABLE IF EXISTS `tbl_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_genero` (
  `IdGenero` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'MASCULINO'),(2,'FEMENINO');
/*!40000 ALTER TABLE `tbl_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventario`
--

DROP TABLE IF EXISTS `tbl_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inventario` (
  `IdInventario` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdInventario`),
  KEY `IdProducto` (`IdProducto`),
  CONSTRAINT `tbl_inventario_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,10),(2,2,0),(3,3,997),(4,4,99),(5,NULL,0),(6,NULL,0),(7,NULL,0),(12,7,68),(13,8,0),(14,9,1999);
/*!40000 ALTER TABLE `tbl_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kardex`
--

DROP TABLE IF EXISTS `tbl_kardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kardex` (
  `IdKardex` int(11) NOT NULL AUTO_INCREMENT,
  `IdTipoMovimiento` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `fechaYHora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdKardex`),
  KEY `IdTipoMovimiento` (`IdTipoMovimiento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_kardex_ibfk_1` FOREIGN KEY (`IdTipoMovimiento`) REFERENCES `tbl_tipomovimiento` (`IdTipoMovimiento`),
  CONSTRAINT `tbl_kardex_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`),
  CONSTRAINT `tbl_kardex_ibfk_3` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (37,1,4,1,'2023-08-17 21:55:31',100),(38,1,6,1,'2023-08-17 21:55:31',100),(39,2,5,1,'2023-08-17 21:55:31',1),(40,2,4,1,'2023-08-17 21:55:31',1),(41,1,1,1,'2023-08-17 21:55:31',10),(42,1,7,0,'2023-08-17 21:55:31',21),(43,1,7,1,'2023-08-17 21:55:31',9),(44,2,7,1,'2023-08-17 21:55:31',1),(45,1,5,1,'2023-08-18 06:00:00',200),(46,1,7,1,'2023-08-18 06:00:00',40),(47,2,7,1,'2023-08-18 04:05:44',1),(48,2,3,1,'2023-08-18 04:53:17',1),(49,2,3,1,'2023-08-18 04:58:04',1),(50,2,3,1,'2023-08-18 05:05:39',1),(51,1,3,1,'2023-08-20 06:00:00',1000),(52,1,9,1,'2023-08-20 06:00:00',2000),(53,2,9,1,'2023-08-20 02:26:09',1);
/*!40000 ALTER TABLE `tbl_kardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lente`
--

DROP TABLE IF EXISTS `tbl_lente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lente` (
  `IdLente` int(11) NOT NULL AUTO_INCREMENT,
  `lente` varchar(35) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  PRIMARY KEY (`IdLente`),
  UNIQUE KEY `lente` (`lente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'Lente Progresivo',3000),(2,'Lente Monofocal',3500),(3,'Lente AR',4000);
/*!40000 ALTER TABLE `tbl_lente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marca`
--

DROP TABLE IF EXISTS `tbl_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_marca` (
  `IdMarca` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`IdMarca`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (9,'AGUILERA'),(1,'Calvin Klein'),(5,'CARLINA HERRERA'),(12,'CAROLINA HERRERA'),(10,'COCO CHANELL'),(6,'CR'),(3,'ELINE'),(11,'LUNA'),(8,'PRUEBA'),(7,'TOM'),(2,'Tommy Hilfiger');
/*!40000 ALTER TABLE `tbl_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modelo`
--

DROP TABLE IF EXISTS `tbl_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modelo` (
  `IdModelo` int(11) NOT NULL AUTO_INCREMENT,
  `idMarca` int(11) DEFAULT NULL,
  `detalle` varchar(40) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdModelo`),
  KEY `idMarca` (`idMarca`),
  CONSTRAINT `tbl_modelo_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `tbl_marca` (`IdMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,6,'CK1995',2000),(2,2,'TH7451',2014),(3,1,'CK2015',2015),(4,3,'TERRENAL',2023),(6,1,'CK-200',2023),(7,6,'CR-KING07',2023),(8,7,'TM-2022',2022),(9,8,'PB-200',2000),(11,9,'COCO-21',2020),(12,12,'HERRERA-78KC',2023),(13,3,'PLUS-EL23',2023);
/*!40000 ALTER TABLE `tbl_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_bitacora`
--

DROP TABLE IF EXISTS `tbl_ms_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_bitacora` (
  `IdBitacora` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Id_Objeto` int(11) DEFAULT NULL,
  `accion` varchar(20) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IdBitacora`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_Objeto` (`Id_Objeto`),
  CONSTRAINT `tbl_ms_bitacora_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_bitacora_ibfk_2` FOREIGN KEY (`Id_Objeto`) REFERENCES `tbl_objetos` (`Id_Objeto`)
) ENGINE=InnoDB AUTO_INCREMENT=793 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (271,'2023-04-17 13:58:02',1,10,'Login','Inicio de sesión '),(272,'2023-04-17 15:24:45',1,10,'Login','Inicio de sesión '),(273,'2023-04-17 22:08:15',1,10,'Login','Inicio de sesión '),(274,'2023-07-07 20:29:02',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(275,'2023-07-07 20:29:11',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(276,'2023-07-07 20:29:19',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(277,'2023-07-07 20:29:25',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(278,'2023-07-07 20:29:30',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(279,'2023-07-07 20:29:56',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(280,'2023-07-07 20:36:45',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(281,'2023-07-07 20:37:00',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(282,'2023-08-02 17:14:25',1,1,'Login','Inicio de sesión '),(283,'2023-08-02 17:14:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(284,'2023-08-02 17:47:23',1,1,'Login','Inicio de sesión '),(285,'2023-08-02 18:10:25',1,1,'Login','Inicio de sesión '),(286,'2023-08-02 18:10:25',1,1,'Login','Inicio de sesión '),(287,'2023-08-02 18:13:18',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(288,'2023-08-02 18:13:32',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(289,'2023-08-02 18:13:52',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(290,'2023-08-02 19:46:22',1,1,'Login','Inicio de sesión '),(291,'2023-08-02 19:53:56',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(292,'2023-08-02 20:00:59',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(293,'2023-08-02 20:31:49',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(294,'2023-08-02 20:34:07',1,1,'Login','Inicio de sesión '),(295,'2023-08-02 20:35:42',1,1,'Login','Inicio de sesión '),(296,'2023-08-02 21:35:24',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(297,'2023-08-03 16:56:34',1,1,'Login','Inicio de sesión '),(298,'2023-08-03 17:04:24',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(299,'2023-08-03 17:04:26',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(300,'2023-08-03 18:31:37',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(301,'2023-08-03 18:31:57',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(302,'2023-08-03 18:33:24',1,1,'Login','Inicio de sesión '),(303,'2023-08-03 18:33:58',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(304,'2023-08-03 18:37:57',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(305,'2023-08-03 19:12:40',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(306,'2023-08-03 20:58:49',1,1,'Login','Inicio de sesión '),(307,'2023-08-03 21:14:09',1,1,'Login','Inicio de sesión '),(308,'2023-08-03 21:45:49',1,1,'Login','Inicio de sesión '),(309,'2023-08-03 21:51:47',1,1,'Login','Inicio de sesión '),(310,'2023-08-03 21:57:56',1,1,'Login','Inicio de sesión '),(311,'2023-08-03 22:02:34',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(312,'2023-08-04 20:28:47',1,1,'Login','Inicio de sesión '),(313,'2023-08-04 20:45:50',1,1,'Login','Inicio de sesión '),(314,'2023-08-04 21:00:17',1,1,'Login','Inicio de sesión '),(315,'2023-08-04 21:03:43',1,1,'Login','Inicio de sesión '),(316,'2023-08-04 21:38:33',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(317,'2023-08-04 21:39:42',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(318,'2023-08-04 21:39:44',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(319,'2023-08-04 21:40:04',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(320,'2023-08-04 21:44:26',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(321,'2023-08-04 21:45:59',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(322,'2023-08-04 21:47:00',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(323,'2023-08-04 21:49:54',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(324,'2023-08-04 21:51:59',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(325,'2023-08-04 21:52:44',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(326,'2023-08-04 21:52:51',NULL,9,'Salir','Se salio de Lista de Empleados'),(327,'2023-08-04 21:55:32',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(328,'2023-08-04 21:59:32',0,1,'Login','Inicio de sesión '),(329,'2023-08-04 22:00:26',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(330,'2023-08-04 22:05:01',0,1,'Login','Inicio de sesión '),(331,'2023-08-04 22:07:43',0,1,'Login','Inicio de sesión '),(332,'2023-08-04 22:27:51',1,1,'Login','Inicio de sesión '),(333,'2023-08-05 18:17:12',1,1,'Login','Inicio de sesión '),(334,'2023-08-05 18:59:48',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(335,'2023-08-05 19:08:56',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(336,'2023-08-05 19:11:11',1,1,'Login','Inicio de sesión '),(337,'2023-08-05 19:12:04',1,1,'Login','Inicio de sesión '),(338,'2023-08-05 19:28:19',1,1,'Login','Inicio de sesión '),(339,'2023-08-05 19:35:35',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(340,'2023-08-05 19:51:39',1,1,'Login','Inicio de sesión '),(341,'2023-08-05 19:51:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(342,'2023-08-05 20:02:04',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(343,'2023-08-05 20:02:20',1,1,'Login','Inicio de sesión '),(344,'2023-08-05 20:47:23',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(345,'2023-08-05 20:48:25',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(346,'2023-08-05 20:51:38',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(347,'2023-08-05 20:53:35',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(348,'2023-08-05 21:08:09',1,1,'Login','Inicio de sesión '),(349,'2023-08-05 21:08:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(350,'2023-08-05 21:10:15',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(351,'2023-08-05 21:11:49',1,1,'Login','Inicio de sesión '),(352,'2023-08-05 21:17:50',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(353,'2023-08-05 21:19:25',1,1,'Login','Inicio de sesión '),(354,'2023-08-05 21:19:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(355,'2023-08-05 21:20:08',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(356,'2023-08-05 21:20:35',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(357,'2023-08-05 21:21:11',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(358,'2023-08-05 21:22:06',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(359,'2023-08-05 21:22:09',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(360,'2023-08-05 21:29:46',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(361,'2023-08-05 21:47:26',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(362,'2023-08-05 22:03:41',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(363,'2023-08-05 22:04:30',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(364,'2023-08-05 22:14:45',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(365,'2023-08-05 22:24:25',NULL,9,'Salir','Se salio de Lista de Empleados'),(366,'2023-08-05 22:24:44',NULL,9,'Salir','Se salio de Lista de Empleados'),(367,'2023-08-05 22:25:00',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(368,'2023-08-05 22:25:07',NULL,9,'Salir','Se salio de Lista de Empleados'),(369,'2023-08-05 22:25:29',NULL,9,'Salir','Se salio de Lista de Empleados'),(370,'2023-08-05 22:26:27',NULL,9,'Salir','Se salio de Lista de Empleados'),(371,'2023-08-05 22:28:04',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(372,'2023-08-05 22:30:33',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(373,'2023-08-05 22:35:20',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(374,'2023-08-05 22:53:19',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(375,'2023-08-06 13:17:49',1,1,'Login','Inicio de sesión '),(376,'2023-08-06 13:17:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(377,'2023-08-06 13:21:28',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(378,'2023-08-06 13:22:28',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(379,'2023-08-06 13:22:36',NULL,9,'Salir','Se salio de Lista de Empleados'),(380,'2023-08-06 14:12:04',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(381,'2023-08-06 14:27:46',2,1,'Login','Inicio de sesión '),(382,'2023-08-06 14:42:36',1,1,'Login','Inicio de sesión '),(383,'2023-08-06 14:59:30',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(384,'2023-08-06 16:52:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(385,'2023-08-06 16:58:13',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(386,'2023-08-06 17:13:36',1,1,'Login','Inicio de sesión '),(387,'2023-08-06 17:15:20',1,1,'Login','Inicio de sesión '),(388,'2023-08-06 17:22:41',1,1,'Login','Inicio de sesión '),(389,'2023-08-06 17:33:58',1,1,'Login','Inicio de sesión '),(390,'2023-08-06 17:48:15',1,1,'Login','Inicio de sesión '),(391,'2023-08-06 18:02:56',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(392,'2023-08-06 18:58:33',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(393,'2023-08-06 18:59:26',NULL,9,'Salir','Se salio de Lista de Empleados'),(394,'2023-08-06 19:47:33',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(395,'2023-08-06 19:48:01',1,1,'Login','Inicio de sesión '),(396,'2023-08-06 19:48:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(397,'2023-08-06 19:56:34',1,1,'Login','Inicio de sesión '),(398,'2023-08-06 19:56:35',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(399,'2023-08-06 22:06:59',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(400,'2023-08-06 22:07:04',NULL,9,'Salir','Se salio de Lista de Empleados'),(401,'2023-08-06 22:09:04',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(402,'2023-08-06 22:09:09',NULL,9,'Salir','Se salio de Lista de Empleados'),(403,'2023-08-06 22:42:57',1,1,'Login','Inicio de sesión '),(404,'2023-08-06 22:43:37',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(405,'2023-08-06 22:43:49',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(406,'2023-08-06 22:43:52',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(407,'2023-08-06 23:11:02',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(408,'2023-08-06 23:11:30',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(409,'2023-08-07 00:22:47',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(410,'2023-08-07 00:23:00',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(411,'2023-08-07 00:23:49',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(412,'2023-08-07 00:23:55',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(413,'2023-08-07 00:34:59',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(414,'2023-08-07 00:39:23',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(415,'2023-08-07 00:43:44',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(416,'2023-08-07 00:44:22',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(417,'2023-08-07 00:44:28',NULL,9,'Salir','Se salio de Lista de Empleados'),(418,'2023-08-07 00:57:53',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(419,'2023-08-07 01:00:19',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(420,'2023-08-07 01:00:43',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(421,'2023-08-07 01:13:01',1,1,'Login','Inicio de sesión '),(422,'2023-08-07 01:13:04',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(423,'2023-08-07 01:14:30',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(424,'2023-08-07 01:14:37',NULL,9,'Salir','Se salio de Lista de Empleados'),(425,'2023-08-07 01:16:12',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(426,'2023-08-07 01:16:20',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(427,'2023-08-07 01:24:34',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(428,'2023-08-07 01:24:42',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(429,'2023-08-07 01:27:05',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(430,'2023-08-07 01:30:46',NULL,9,'Salir','Se salio de Lista de Empleados'),(431,'2023-08-07 01:33:00',NULL,9,'Salir','Se salio de Lista de Empleados'),(432,'2023-08-07 01:36:10',NULL,9,'Salir','Se salio de Lista de Empleados'),(433,'2023-08-07 01:36:22',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(434,'2023-08-07 02:13:45',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(435,'2023-08-07 02:14:17',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(436,'2023-08-07 03:09:01',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(437,'2023-08-07 03:09:28',1,1,'Login','Inicio de sesión '),(438,'2023-08-07 09:07:45',1,1,'Login','Inicio de sesión '),(439,'2023-08-07 09:07:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(440,'2023-08-07 09:08:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(441,'2023-08-07 09:09:00',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(442,'2023-08-07 10:06:49',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(443,'2023-08-07 10:07:50',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(444,'2023-08-07 10:08:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(445,'2023-08-07 10:09:42',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(446,'2023-08-07 10:18:31',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(447,'2023-08-07 10:19:26',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(448,'2023-08-07 10:20:28',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(449,'2023-08-07 10:30:48',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(450,'2023-08-07 10:31:01',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(451,'2023-08-07 10:41:21',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(452,'2023-08-07 10:50:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(453,'2023-08-07 10:50:37',NULL,9,'Salir','Se salio de Lista de Empleados'),(454,'2023-08-07 10:50:38',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(455,'2023-08-07 15:38:32',1,1,'Login','Inicio de sesión '),(456,'2023-08-07 15:38:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(457,'2023-08-07 15:38:48',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(458,'2023-08-07 16:01:40',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(459,'2023-08-11 18:51:25',1,1,'Login','Inicio de sesión '),(460,'2023-08-11 18:51:33',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(461,'2023-08-11 18:51:42',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(462,'2023-08-11 19:01:32',1,1,'Login','Inicio de sesión '),(463,'2023-08-11 19:04:48',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(464,'2023-08-11 19:07:28',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(465,'2023-08-11 19:07:31',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(466,'2023-08-11 19:07:41',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(467,'2023-08-11 19:08:56',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(468,'2023-08-11 19:08:57',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(469,'2023-08-11 19:10:02',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(470,'2023-08-11 19:11:16',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(471,'2023-08-11 19:11:58',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(472,'2023-08-11 19:14:46',1,1,'Login','Inicio de sesión '),(473,'2023-08-11 19:14:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(474,'2023-08-11 19:14:56',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(475,'2023-08-11 19:16:06',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(476,'2023-08-11 19:16:31',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(477,'2023-08-11 20:25:52',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(478,'2023-08-11 20:46:51',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(479,'2023-08-12 17:49:24',1,1,'Login','Inicio de sesión '),(480,'2023-08-12 17:49:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(481,'2023-08-12 17:51:34',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(482,'2023-08-12 18:24:57',1,1,'Login','Inicio de sesión '),(483,'2023-08-12 18:48:46',1,1,'Login','Inicio de sesión '),(484,'2023-08-12 18:48:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(485,'2023-08-12 18:54:10',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(486,'2023-08-12 18:55:53',1,1,'Login','Inicio de sesión '),(487,'2023-08-12 18:55:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(488,'2023-08-12 19:07:04',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(489,'2023-08-12 19:07:20',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(490,'2023-08-12 19:07:24',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(491,'2023-08-12 20:45:55',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(492,'2023-08-12 20:49:03',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(493,'2023-08-12 21:09:52',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(494,'2023-08-12 21:22:30',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(495,'2023-08-12 21:23:10',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(496,'2023-08-12 21:24:07',1,5,'Salir','El usuario salió de la pantalla de citas'),(497,'2023-08-13 18:40:32',1,1,'Login','Inicio de sesión '),(499,'2023-08-13 18:41:05',1,1,'Login','Inicio de sesión '),(504,'2023-08-13 18:53:55',1,1,'Login','Inicio de sesión '),(507,'2023-08-13 19:13:05',1,1,'Login','Inicio de sesión '),(509,'2023-08-13 19:15:58',1,1,'Login','Inicio de sesión '),(512,'2023-08-13 19:18:04',1,1,'Login','Inicio de sesión '),(513,'2023-08-13 19:18:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(514,'2023-08-13 19:35:24',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(515,'2023-08-13 19:37:16',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(516,'2023-08-13 19:37:21',1,5,'Salir','El usuario salió de la pantalla de citas'),(517,'2023-08-13 19:37:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(518,'2023-08-13 19:37:27',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(519,'2023-08-13 19:39:44',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(520,'2023-08-13 19:40:23',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(521,'2023-08-13 19:40:28',NULL,9,'Salir','Se salio de Lista de Empleados'),(522,'2023-08-13 19:40:40',NULL,9,'Salir','Se salio de Lista de Empleados'),(523,'2023-08-13 19:41:56',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(524,'2023-08-13 21:15:05',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(525,'2023-08-13 21:15:24',1,1,'Login','Inicio de sesión '),(526,'2023-08-13 21:15:26',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(527,'2023-08-13 21:40:16',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(528,'2023-08-13 21:41:05',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(529,'2023-08-13 21:49:44',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(530,'2023-08-13 21:54:16',1,1,'Login','Inicio de sesión '),(531,'2023-08-13 21:55:54',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(532,'2023-08-13 21:57:09',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(533,'2023-08-13 21:58:05',1,5,'Salir','El usuario salió de la pantalla de citas'),(534,'2023-08-13 21:58:17',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(535,'2023-08-13 21:58:34',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(536,'2023-08-13 21:58:51',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(537,'2023-08-13 21:59:02',1,5,'Borrar Cita','El usuario eliminó una cita'),(538,'2023-08-13 21:59:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(539,'2023-08-13 21:59:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(540,'2023-08-13 22:00:32',1,1,'Login','Inicio de sesión '),(541,'2023-08-13 22:00:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(543,'2023-08-13 22:02:54',1,1,'Login','Inicio de sesión '),(544,'2023-08-13 22:02:56',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(545,'2023-08-13 22:08:33',1,1,'Login','Inicio de sesión '),(546,'2023-08-13 22:15:06',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(547,'2023-08-13 22:15:13',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(549,'2023-08-13 22:15:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(550,'2023-08-13 22:16:17',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(551,'2023-08-13 22:17:14',1,5,'Salir','El usuario salió de la pantalla de citas'),(552,'2023-08-14 15:35:03',1,1,'Login','Inicio de sesión '),(553,'2023-08-15 16:23:14',1,1,'Login','Inicio de sesión '),(554,'2023-08-15 17:48:15',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(555,'2023-08-15 17:57:00',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(556,'2023-08-15 17:57:01',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(557,'2023-08-15 17:57:01',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(558,'2023-08-15 18:33:08',1,1,'Login','Inicio de sesión '),(559,'2023-08-15 19:05:34',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(560,'2023-08-15 19:32:56',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(561,'2023-08-15 19:32:57',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(563,'2023-08-15 19:33:27',1,1,'Login','Inicio de sesión '),(564,'2023-08-15 19:45:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(565,'2023-08-15 19:54:59',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(566,'2023-08-16 16:13:27',1,1,'Login','Inicio de sesión '),(567,'2023-08-16 16:14:31',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(568,'2023-08-16 16:18:30',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(569,'2023-08-16 16:19:25',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(571,'2023-08-16 16:20:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(572,'2023-08-16 16:31:46',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(573,'2023-08-16 20:17:32',1,1,'Login','Inicio de sesión '),(574,'2023-08-16 20:17:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(575,'2023-08-16 21:04:57',1,5,'Salir','El usuario salió de la pantalla de citas'),(576,'2023-08-16 21:04:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(577,'2023-08-16 21:12:08',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(578,'2023-08-17 15:56:12',1,1,'Login','Inicio de sesión '),(581,'2023-08-17 15:56:25',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(582,'2023-08-17 16:12:28',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(583,'2023-08-17 16:12:28',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(584,'2023-08-17 16:12:34',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(585,'2023-08-17 16:12:50',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(586,'2023-08-17 16:12:53',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(587,'2023-08-17 16:56:39',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(588,'2023-08-17 16:58:43',1,5,'Salir','El usuario salió de la pantalla de citas'),(589,'2023-08-17 16:58:45',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(590,'2023-08-17 17:02:07',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(591,'2023-08-17 17:02:31',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(592,'2023-08-17 17:02:53',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(593,'2023-08-17 17:03:02',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(594,'2023-08-17 17:03:20',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(595,'2023-08-17 17:03:28',1,5,'Borrar Cita','El usuario eliminó una cita'),(596,'2023-08-17 17:03:34',1,5,'Borrar Cita','El usuario eliminó una cita'),(597,'2023-08-17 17:03:51',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(598,'2023-08-17 17:28:58',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(599,'2023-08-17 17:29:11',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(600,'2023-08-17 17:32:44',1,5,'Borrar Cita','El usuario eliminó una cita'),(601,'2023-08-17 17:32:47',1,5,'Salir','El usuario salió de la pantalla de citas'),(602,'2023-08-17 17:32:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(603,'2023-08-17 17:32:56',1,5,'Borrar Cita','El usuario eliminó una cita'),(604,'2023-08-17 17:32:59',1,5,'Borrar Cita','El usuario eliminó una cita'),(605,'2023-08-17 17:33:08',1,5,'Borrar Cita','El usuario eliminó una cita'),(606,'2023-08-17 17:47:46',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(607,'2023-08-17 17:51:50',1,5,'Borrar Cita','El usuario eliminó una cita'),(608,'2023-08-17 17:54:53',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(609,'2023-08-17 17:58:31',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(610,'2023-08-17 18:38:35',1,5,'Borrar Cita','El usuario eliminó una cita'),(611,'2023-08-17 19:50:32',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(612,'2023-08-17 19:54:34',1,5,'Salir','El usuario salió de la pantalla de citas'),(613,'2023-08-17 19:54:35',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(614,'2023-08-17 19:54:37',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(615,'2023-08-17 19:54:43',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(616,'2023-08-17 19:55:05',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(617,'2023-08-17 19:57:22',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(618,'2023-08-17 19:57:47',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(619,'2023-08-17 20:58:56',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(620,'2023-08-17 21:28:37',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(621,'2023-08-17 21:28:44',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(622,'2023-08-17 21:28:50',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(623,'2023-08-17 21:58:14',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(624,'2023-08-18 10:46:23',1,1,'Login','Inicio de sesión '),(625,'2023-08-18 10:46:25',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(626,'2023-08-18 10:47:30',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(627,'2023-08-18 12:08:15',1,1,'Login','Inicio de sesión '),(628,'2023-08-18 12:08:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(629,'2023-08-18 12:08:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(630,'2023-08-18 12:09:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(631,'2023-08-18 12:11:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(632,'2023-08-18 12:52:25',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(633,'2023-08-18 13:18:17',1,1,'Login','Inicio de sesión '),(634,'2023-08-18 13:18:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(635,'2023-08-18 13:42:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(636,'2023-08-18 13:42:40',1,1,'Login','Inicio de sesión '),(637,'2023-08-18 13:43:35',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(638,'2023-08-18 14:07:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(639,'2023-08-18 14:07:23',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(640,'2023-08-18 14:08:05',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(641,'2023-08-18 14:08:17',NULL,9,'Salir','Se salio de Lista de Empleados'),(642,'2023-08-18 14:11:07',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(643,'2023-08-18 14:13:00',1,1,'Login','Inicio de sesión '),(644,'2023-08-18 14:19:40',1,1,'Login','Inicio de sesión '),(645,'2023-08-18 14:20:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(646,'2023-08-18 14:20:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(647,'2023-08-18 14:20:57',1,5,'Salir','El usuario salió de la pantalla de citas'),(648,'2023-08-18 14:20:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(649,'2023-08-18 14:47:00',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(650,'2023-08-18 14:47:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(651,'2023-08-18 14:47:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(652,'2023-08-18 14:47:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(653,'2023-08-18 15:41:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(654,'2023-08-18 15:42:19',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(655,'2023-08-18 15:53:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(656,'2023-08-18 15:56:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(657,'2023-08-18 15:57:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(658,'2023-08-18 15:57:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(659,'2023-08-18 15:59:31',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(660,'2023-08-18 15:59:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(661,'2023-08-18 16:00:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(662,'2023-08-18 16:00:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(663,'2023-08-18 16:05:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(664,'2023-08-18 16:20:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(665,'2023-08-18 16:35:43',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(666,'2023-08-18 16:38:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(667,'2023-08-18 16:39:17',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(668,'2023-08-18 16:39:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(669,'2023-08-18 16:39:25',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(670,'2023-08-18 16:52:47',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(672,'2023-08-18 17:30:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(673,'2023-08-18 17:30:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(674,'2023-08-18 17:30:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(675,'2023-08-18 17:30:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(676,'2023-08-18 17:32:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(677,'2023-08-18 17:32:33',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(678,'2023-08-18 17:32:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(679,'2023-08-18 18:17:51',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(680,'2023-08-18 18:31:59',1,1,'Login','Inicio de sesión '),(681,'2023-08-18 18:32:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(682,'2023-08-18 18:32:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(683,'2023-08-18 18:40:48',1,1,'Login','Inicio de sesión '),(684,'2023-08-18 18:40:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(685,'2023-08-18 18:40:57',NULL,9,'Salir','Se salio de Lista de Empleados'),(686,'2023-08-18 18:41:29',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(687,'2023-08-18 18:46:12',1,1,'Login','Inicio de sesión '),(688,'2023-08-18 18:46:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(689,'2023-08-18 18:51:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(690,'2023-08-18 19:16:53',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(691,'2023-08-19 09:52:57',1,1,'Login','Inicio de sesión '),(692,'2023-08-19 10:04:48',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(693,'2023-08-19 10:04:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(694,'2023-08-19 10:04:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(695,'2023-08-19 10:11:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(696,'2023-08-19 10:21:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(697,'2023-08-19 11:35:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(698,'2023-08-19 11:40:47',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(699,'2023-08-19 11:55:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(700,'2023-08-19 11:55:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(701,'2023-08-19 11:55:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(702,'2023-08-19 11:57:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(703,'2023-08-19 11:57:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(704,'2023-08-19 11:59:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(705,'2023-08-19 12:11:24',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(706,'2023-08-19 12:14:44',NULL,9,'Salir','Se salio de Lista de Empleados'),(707,'2023-08-19 12:14:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(708,'2023-08-19 12:27:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(709,'2023-08-19 12:27:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(710,'2023-08-19 13:07:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(711,'2023-08-19 13:46:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(712,'2023-08-19 13:46:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(713,'2023-08-19 13:46:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(714,'2023-08-19 13:46:44',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(715,'2023-08-19 13:47:50',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(716,'2023-08-19 13:47:51',1,5,'Salir','El usuario salió de la pantalla de citas'),(717,'2023-08-19 13:47:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(718,'2023-08-19 13:48:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(719,'2023-08-19 15:52:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(720,'2023-08-19 16:02:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(721,'2023-08-19 17:03:33',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(722,'2023-08-19 17:03:55',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(723,'2023-08-19 17:17:42',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(724,'2023-08-19 17:17:49',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(725,'2023-08-19 17:17:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(726,'2023-08-19 17:18:16',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(727,'2023-08-19 17:26:06',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(728,'2023-08-19 17:34:37',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(729,'2023-08-19 17:41:37',NULL,9,'Salir','Se salio de Lista de Empleados'),(730,'2023-08-19 17:41:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(731,'2023-08-19 17:41:51',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(732,'2023-08-19 17:44:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(733,'2023-08-19 17:44:47',NULL,9,'Salir','Se salio de Lista de Empleados'),(734,'2023-08-19 17:45:00',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(735,'2023-08-19 18:03:48',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(736,'2023-08-19 18:09:05',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(737,'2023-08-19 18:09:09',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(738,'2023-08-19 18:13:35',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(739,'2023-08-19 18:30:29',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(740,'2023-08-19 18:34:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(741,'2023-08-19 19:46:08',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(742,'2023-08-19 19:46:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(743,'2023-08-19 19:46:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(744,'2023-08-19 19:46:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(745,'2023-08-19 19:48:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(746,'2023-08-19 20:24:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(747,'2023-08-19 20:24:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(748,'2023-08-19 20:24:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(749,'2023-08-19 20:39:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(750,'2023-08-19 21:10:13',1,1,'Login','Inicio de sesión '),(751,'2023-08-19 21:10:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(752,'2023-08-19 21:37:22',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(753,'2023-08-19 22:02:39',1,1,'Login','Inicio de sesión '),(756,'2023-08-20 10:40:54',1,1,'Login','Inicio de sesión '),(757,'2023-08-20 10:40:57',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(758,'2023-08-20 10:42:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(759,'2023-08-20 10:47:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(760,'2023-08-20 14:35:51',1,1,'Login','Inicio de sesión '),(761,'2023-08-20 14:35:51',1,1,'Login','Inicio de sesión '),(762,'2023-08-20 14:35:54',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(763,'2023-08-20 14:35:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(764,'2023-08-20 14:35:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(765,'2023-08-20 14:36:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(766,'2023-08-20 14:36:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(767,'2023-08-20 15:02:54',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(768,'2023-08-20 15:04:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(769,'2023-08-20 15:04:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(770,'2023-08-20 15:04:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(771,'2023-08-20 15:04:13',1,5,'Borrar Cita','El usuario eliminó una cita'),(772,'2023-08-20 15:04:15',1,5,'Borrar Cita','El usuario eliminó una cita'),(773,'2023-08-20 15:04:17',1,5,'Borrar Cita','El usuario eliminó una cita'),(774,'2023-08-20 15:04:20',1,5,'Borrar Cita','El usuario eliminó una cita'),(775,'2023-08-20 15:04:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(776,'2023-08-20 15:04:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(777,'2023-08-20 15:06:25',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(778,'2023-08-20 15:07:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(779,'2023-08-20 15:07:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(780,'2023-08-20 17:18:14',1,1,'Login','Inicio de sesión '),(781,'2023-08-20 17:18:16',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(782,'2023-08-21 23:33:34',1,1,'Login','Inicio de sesión '),(785,'2023-08-21 23:34:24',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(786,'2023-08-21 23:34:35',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(787,'2023-08-21 23:34:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(788,'2023-08-21 23:34:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(789,'2023-08-21 23:34:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(790,'2023-08-21 23:53:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(791,'2023-08-21 23:53:26',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(792,'2023-08-21 23:53:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios');
/*!40000 ALTER TABLE `tbl_ms_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_hist_contrasenia`
--

DROP TABLE IF EXISTS `tbl_ms_hist_contrasenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_hist_contrasenia` (
  `Id_Historial` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Contrasenia` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Historial`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_hist_contrasenia_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$ZDQFnMVFeGlSUkPBAGaVK.XVhVoqwz1QUj24.S4gEpJuuewAZTqqG','admin',NULL,NULL,NULL),(5,1,'$2b$10$10EultkrBh.bazchr8CNFux5B1iYT7zGC6KZmhHVgigQlRtzzfxRy','admin',NULL,NULL,NULL),(6,0,'$2b$10$tX1pqS/XEbzGdaD8HH/R4O9paLZnsBbtryi2bBwlRcdEIKHoxw/HK','MICKY',NULL,NULL,NULL),(7,0,'$2b$10$Qc4i4g2Iqvn9xQH1YTbj1.0cdZn9WWKkrPJwWkUxnAXGc.Cdq7qqS','MICKY',NULL,NULL,NULL),(8,0,'$2b$10$wSguWwj/s5Ns4OTX.cxByOC43ibApSWvyi4u6pNXGBUvG7gdXWghC','MICKY',NULL,NULL,NULL),(9,1,'$2b$10$4f40T/dzbrpzPyhmaIAMT.tzDH2ozLf1HYWa.dz/xjeCc4chREvJ.','admin',NULL,NULL,NULL),(10,1,'$2b$10$tSE1LBs46BjsGMkvOubIaea6nvVonfhjGLMN.7TdKIFkhBxjqcIf6','admin',NULL,NULL,NULL),(11,5,'$2b$10$G8sCX/mrTXaInCiPv3OVueEc7f9m/zFHHTIc0c7KIukm7MKw5WaH6','HOLA',NULL,NULL,NULL),(12,6,'$2b$10$tYoIPicPVzbf1tj9F0BQu.rdW8bD3cOQn5NW5ZFzeSSzsd1xThfhm','PAMEE',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_parametros`
--

DROP TABLE IF EXISTS `tbl_ms_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_parametros` (
  `Id_Parametro` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Parametro` varchar(59) DEFAULT NULL,
  `Valor` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Parametro`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_parametros_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','3',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','3',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','Multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0.15',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','Multioptica',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_preguntas`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_preguntas` (
  `Id_Pregunta` int(11) NOT NULL,
  `Pregunta` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas`
--

LOCK TABLES `tbl_ms_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas` VALUES (15,'¿CUAL ES TU COLOR FAVORITO?','Jared',NULL,NULL,NULL),(16,'¿CUAL ES TU EQUIPO FAVORITO?','Romeo',NULL,NULL,NULL),(17,'¿COMO SE LLAMA TU ABUELO PATERNO?','Erick',NULL,NULL,NULL),(19,'¿CUAL FUE EL NOMBRE DE TU PRIMERA MASCOTA?','ERICKK','2023-03-15',NULL,NULL),(31,'¿DONDE TE GUSTARIA VIAJAR?','Moisa','2023-03-21',NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_preguntas_usuario`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_preguntas_usuario` (
  `Id_Pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Respuesta` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  KEY `Id_Pregunta` (`Id_Pregunta`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_preguntas_usuario_ibfk_1` FOREIGN KEY (`Id_Pregunta`) REFERENCES `tbl_ms_preguntas` (`Id_Pregunta`),
  CONSTRAINT `tbl_ms_preguntas_usuario_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas_usuario`
--

LOCK TABLES `tbl_ms_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (31,1,'ROMA','Erick',NULL,NULL,NULL),(16,4,'INTER DE MILAN ','UNAH',NULL,NULL,NULL),(16,1,'NEGRO','ALEXANDER',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_roles`
--

DROP TABLE IF EXISTS `tbl_ms_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_roles` (
  `Id_Rol` int(11) NOT NULL,
  `Rol` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones',NULL,'2023-03-05 10:04:01',NULL,NULL),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario',NULL,'2023-03-05 11:01:31',NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_usuario`
--

DROP TABLE IF EXISTS `tbl_ms_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_usuario` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(15) DEFAULT NULL,
  `Nombre_Usuario` varchar(100) DEFAULT NULL,
  `Estado_Usuario` varchar(100) DEFAULT 'Nuevo',
  `Contrasenia` varchar(100) DEFAULT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  `Fecha_Ultima_Conexion` date DEFAULT NULL,
  `Preguntas_Contestadas` int(11) DEFAULT 0,
  `Primer_Ingreso` int(11) DEFAULT 0,
  `Fecha_Vencimiento` date DEFAULT NULL,
  `Correo_Electronico` varchar(50) DEFAULT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'Erick','admin','Activo','$2b$10$E3yqL7uMSm3pkU10ChBZGOe3lHrThNT96K9a4q74uCinAzLEJSY4.',1,NULL,0,1,'2024-01-01','amultiopticas@gmail.com',1,'SISTEMA','2023-04-03',NULL,NULL),(2,'0801199922345','PRUEBA','Activo','$2b$10$/CzKPx2HsBBbiZTnNYlVHe8K.gHAudnze0phLOrJtnjNApEJv9gn2',1,NULL,0,0,NULL,'karenaguilera2105@gmail.com',12,'SISTEMA','2023-08-06',NULL,NULL),(4,'0801200088666','UNAH','Activo','$2b$10$E3yqL7uMSm3pkU10ChBZGOe3lHrThNT96K9a4q74uCinAzLEJSY4.',1,NULL,0,0,NULL,'karenaguilera201422@gmail.com',19,'SISTEMA','2023-08-18',NULL,NULL),(5,'HOLA','POLET','Nuevo','$2b$10$zU8DrNtKyrJIRn4tFnLdN.UgYLQGF8tbvuSCl8VcjuW7vEzZ.lEHq',2,NULL,0,0,'2023-11-16','jared.salgado@unah.hn',23,NULL,'2023-08-18',NULL,'2023-08-18'),(6,'PAMEE','PAMEE','Activo','$2b$10$DS1fpp6jfv3Pb.2.SKXlZeoT8v7oGMrAtXn0f3wGGTRonjpWU4bq2',1,NULL,0,0,'2023-11-16','kyaguilera@unah.hn',NULL,NULL,'2023-08-18',NULL,'2023-08-18');
/*!40000 ALTER TABLE `tbl_ms_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_objetos`
--

DROP TABLE IF EXISTS `tbl_objetos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_objetos` (
  `Id_Objeto` int(11) NOT NULL,
  `Objeto` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Tipo_Objeto` varchar(15) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_objetos`
--

LOCK TABLES `tbl_objetos` WRITE;
/*!40000 ALTER TABLE `tbl_objetos` DISABLE KEYS */;
INSERT INTO `tbl_objetos` VALUES (1,'Home','Pagina al iniciar sesion','solo vista',NULL,NULL,NULL,NULL),(2,'Usuario','Pagina de gestion de usuarios','gestion',NULL,NULL,NULL,NULL),(3,'Inventario','Pagina de gestion de inventario','Insercion',NULL,NULL,NULL,NULL),(4,'Clientes','Pagina de gestion de clientes','Insercion',NULL,NULL,NULL,NULL),(5,'Recordatorios','Pagina de gestion de recordatorios','Vista,Upd',NULL,NULL,NULL,NULL),(6,'Reportes','Pagina de gestion de reportes','Vista,Upd',NULL,NULL,NULL,NULL),(7,'Seguridad','Pagina de gestion de seguridad',NULL,NULL,NULL,NULL,NULL),(8,'Configuracion','Pagina de gestion de configuracion',NULL,NULL,NULL,NULL,NULL),(9,'Ventas','Pagina de gestion de ventas',NULL,NULL,NULL,NULL,NULL),(10,'Login','Login','select',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_objetos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pago`
--

DROP TABLE IF EXISTS `tbl_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pago` (
  `IdPago` int(11) NOT NULL AUTO_INCREMENT,
  `IdVenta` int(11) DEFAULT NULL,
  `IdTipoPago` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(15) DEFAULT NULL,
  `saldoAbono` float DEFAULT NULL,
  `saldoRestante` float DEFAULT NULL,
  PRIMARY KEY (`IdPago`),
  KEY `IdVenta` (`IdVenta`),
  KEY `IdTipoPago` (`IdTipoPago`),
  CONSTRAINT `tbl_pago_ibfk_1` FOREIGN KEY (`IdVenta`) REFERENCES `tbl_venta` (`IdVenta`),
  CONSTRAINT `tbl_pago_ibfk_2` FOREIGN KEY (`IdTipoPago`) REFERENCES `tbl_tipopago` (`IdTipoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,4,1,'2023-08-18 04:05:54','Pendiente',4000,2),(2,6,1,'2023-08-18 05:00:41','Pagado',6525,0),(3,7,1,'2023-08-18 05:08:40','Pendiente',1000,5525),(4,7,1,'2023-08-18 05:22:00','Pagado',5525,0),(5,8,1,'2023-08-20 02:26:16','Pendiente',3000,306);
/*!40000 ALTER TABLE `tbl_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pais`
--

DROP TABLE IF EXISTS `tbl_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pais` (
  `IdPais` int(11) NOT NULL AUTO_INCREMENT,
  `Pais` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdPais`),
  UNIQUE KEY `Pais` (`Pais`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pais`
--

LOCK TABLES `tbl_pais` WRITE;
/*!40000 ALTER TABLE `tbl_pais` DISABLE KEYS */;
INSERT INTO `tbl_pais` VALUES (8,'INGLATERRA'),(4,'MEXICO');
/*!40000 ALTER TABLE `tbl_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisos`
--

DROP TABLE IF EXISTS `tbl_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_permisos` (
  `Id_Objeto` int(11) DEFAULT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  `Permiso_Insercion` char(1) DEFAULT NULL,
  `Permiso_Eliminacion` char(1) DEFAULT NULL,
  `Permiso_Actualizacion` char(1) DEFAULT NULL,
  `Permiso_Consultar` char(1) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  KEY `Id_Objeto` (`Id_Objeto`),
  KEY `Id_Rol` (`Id_Rol`),
  CONSTRAINT `tbl_permisos_ibfk_1` FOREIGN KEY (`Id_Objeto`) REFERENCES `tbl_objetos` (`Id_Objeto`),
  CONSTRAINT `tbl_permisos_ibfk_2` FOREIGN KEY (`Id_Rol`) REFERENCES `tbl_ms_roles` (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos`
--

LOCK TABLES `tbl_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_permisos` DISABLE KEYS */;
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'s','s','s','s',NULL,NULL,NULL,NULL),(3,2,'s','s','s','s',NULL,NULL,NULL,NULL),(4,2,'s','s','s','s',NULL,NULL,NULL,NULL),(5,2,'s','s','s','s',NULL,NULL,NULL,NULL),(6,2,'s','n','n','n',NULL,NULL,NULL,NULL),(7,2,'s','s','s','s',NULL,NULL,NULL,NULL),(8,2,'s','s','s','s',NULL,NULL,NULL,NULL),(9,2,'s','s','s','s',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_producto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `IdModelo` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `cantidadMin` int(11) DEFAULT NULL,
  `cantidadMax` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`),
  UNIQUE KEY `IdModelo` (`IdModelo`),
  CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`IdModelo`) REFERENCES `tbl_modelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,4000,6,60,'CK1995'),(2,2,3200,3,35,' TH7451'),(3,3,5000,5,55,'CK2015'),(4,7,5000,2,1000,'CR-KING07'),(5,8,2000,2,100,'TM-2022'),(6,9,200,2,10,'PB-200'),(7,11,2000,2,100,'COCO-21'),(8,12,1000,2,100,'HERRERA-78KC'),(9,13,1000,1,100,'PLUS-EL23');
/*!40000 ALTER TABLE `tbl_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_productopromocion`
--

DROP TABLE IF EXISTS `tbl_productopromocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_productopromocion` (
  `IdProductoPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `IdPromocion` int(11) NOT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProductoPromocion`),
  UNIQUE KEY `IdProducto` (`IdProducto`),
  KEY `IdPromocion` (`IdPromocion`),
  CONSTRAINT `tbl_productopromocion_ibfk_1` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_productopromocion_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productopromocion`
--

LOCK TABLES `tbl_productopromocion` WRITE;
/*!40000 ALTER TABLE `tbl_productopromocion` DISABLE KEYS */;
INSERT INTO `tbl_productopromocion` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `tbl_productopromocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promocion`
--

DROP TABLE IF EXISTS `tbl_promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promocion` (
  `IdPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicial` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `descPorcent` float DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdPromocion`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocion`
--

LOCK TABLES `tbl_promocion` WRITE;
/*!40000 ALTER TABLE `tbl_promocion` DISABLE KEYS */;
INSERT INTO `tbl_promocion` VALUES (1,'2023-01-02','2023-01-10',1,0.13,'PromoLocos'),(3,'2023-08-18','2023-08-25',1,15,'SEMANA LOCA');
/*!40000 ALTER TABLE `tbl_promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promocionmarca`
--

DROP TABLE IF EXISTS `tbl_promocionmarca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promocionmarca` (
  `IdPromocionMarca` int(11) NOT NULL AUTO_INCREMENT,
  `IdPromocion` int(11) NOT NULL,
  `IdMarca` int(11) DEFAULT NULL,
  `IdModelo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPromocionMarca`),
  KEY `IdPromocion` (`IdPromocion`),
  KEY `IdMarca` (`IdMarca`),
  KEY `IdModelo` (`IdModelo`),
  CONSTRAINT `tbl_promocionmarca_ibfk_1` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_promocionmarca_ibfk_2` FOREIGN KEY (`IdMarca`) REFERENCES `tbl_marca` (`IdMarca`),
  CONSTRAINT `tbl_promocionmarca_ibfk_3` FOREIGN KEY (`IdModelo`) REFERENCES `tbl_modelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocionmarca`
--

LOCK TABLES `tbl_promocionmarca` WRITE;
/*!40000 ALTER TABLE `tbl_promocionmarca` DISABLE KEYS */;
INSERT INTO `tbl_promocionmarca` VALUES (1,1,1,3);
/*!40000 ALTER TABLE `tbl_promocionmarca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedor`
--

DROP TABLE IF EXISTS `tbl_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_proveedor` (
  `IdProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `CiaProveedora` varchar(50) DEFAULT NULL,
  `encargado` varchar(50) DEFAULT NULL,
  `IdPais` int(11) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `Productos` varchar(200) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdProveedor`),
  UNIQUE KEY `CiaProveedora` (`CiaProveedora`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdPais` (`IdPais`),
  KEY `IdCiudad` (`IdCiudad`),
  CONSTRAINT `tbl_proveedor_ibfk_1` FOREIGN KEY (`IdPais`) REFERENCES `tbl_pais` (`IdPais`),
  CONSTRAINT `tbl_proveedor_ibfk_2` FOREIGN KEY (`IdCiudad`) REFERENCES `tbl_ciudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAVision','Jared',4,11,'Productos de 5, 7 y 10','Cerca del cartel de sinaloa','22351142','unahs@gmail.com');
/*!40000 ALTER TABLE `tbl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recordatorio`
--

DROP TABLE IF EXISTS `tbl_recordatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_recordatorio` (
  `IdRecordatorio` int(11) NOT NULL AUTO_INCREMENT,
  `IdCliente` varchar(15) DEFAULT NULL,
  `Nota` varchar(200) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`IdRecordatorio`),
  KEY `IdCliente` (`IdCliente`),
  CONSTRAINT `tbl_recordatorio_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (16,NULL,'Reservación de cita - MIOPIA','2024-08-17');
/*!40000 ALTER TABLE `tbl_recordatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sucursal`
--

DROP TABLE IF EXISTS `tbl_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sucursal` (
  `IdSucursal` int(11) NOT NULL AUTO_INCREMENT,
  `IdDepartamento` int(11) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdSucursal`),
  KEY `IdDepartamento` (`IdDepartamento`),
  KEY `IdCiudad` (`IdCiudad`),
  CONSTRAINT `tbl_sucursal_ibfk_1` FOREIGN KEY (`IdDepartamento`) REFERENCES `tbl_departamento` (`IdDepartamento`),
  CONSTRAINT `tbl_sucursal_ibfk_2` FOREIGN KEY (`IdCiudad`) REFERENCES `tbl_ciudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'Cerca del paseo lidquidambar','22282862'),(2,1,48,'GUANACASTE','22786536');
/*!40000 ALTER TABLE `tbl_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipomovimiento`
--

DROP TABLE IF EXISTS `tbl_tipomovimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipomovimiento` (
  `IdTipoMovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdTipoMovimiento`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipomovimiento`
--

LOCK TABLES `tbl_tipomovimiento` WRITE;
/*!40000 ALTER TABLE `tbl_tipomovimiento` DISABLE KEYS */;
INSERT INTO `tbl_tipomovimiento` VALUES (1,'Entrada'),(2,'Salida');
/*!40000 ALTER TABLE `tbl_tipomovimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipopago`
--

DROP TABLE IF EXISTS `tbl_tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipopago` (
  `IdTipoPago` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdTipoPago`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (1,'EFECTIVO'),(4,'MONEDAS');
/*!40000 ALTER TABLE `tbl_tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_token`
--

DROP TABLE IF EXISTS `tbl_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_token` (
  `IdToken` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `NombreToken` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdToken`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_token_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES (1,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI2NjE5MTciLCJpYXQiOjE2ODkwNTMxMDAsImV4cCI6MTY4OTA'),(2,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIyMzA5MTAiLCJpYXQiOjE2ODkwNTMyMjgsImV4cCI6MTY4OTA'),(3,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI0OTE5ODUiLCJpYXQiOjE2ODkwNTQ2ODEsImV4cCI6MTY4OTA'),(4,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3NjQ4MTciLCJpYXQiOjE2ODkwNTQ3NjcsImV4cCI6MTY4OTA'),(5,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNDcxNjMiLCJpYXQiOjE2ODkwNTU4NDcsImV4cCI6MTY4OTA'),(6,0,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNzkyNjYiLCJpYXQiOjE2OTEyMDgzMTIsImV4cCI6MTY5MTI'),(7,0,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzMDcyODEiLCJpYXQiOjE2OTEyMDg1NzgsImV4cCI6MTY5MTI'),(8,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzMDkyODIiLCJpYXQiOjE2OTIyMzU4NTUsImV4cCI6MTY5MjI'),(9,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIyMTI2ODciLCJpYXQiOjE2OTIzMzgyOTksImV4cCI6MTY5MjMzODU5OX0.Y__DJKffl2uJ7OigrHwk0zN1jvuwlsyM8lr47-WaznM');
/*!40000 ALTER TABLE `tbl_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_venta`
--

DROP TABLE IF EXISTS `tbl_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_venta` (
  `IdVenta` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `fechaEntrega` date DEFAULT NULL,
  `fechaLimiteEntrega` date DEFAULT NULL,
  `IdCliente` varchar(15) NOT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `RTN` varchar(20) DEFAULT '08019020229809',
  `NumeroCAI` varchar(100) DEFAULT 'EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',
  `valorVenta` float DEFAULT NULL,
  PRIMARY KEY (`IdVenta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `tbl_venta_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`),
  CONSTRAINT `tbl_venta_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `tbl_empleado` (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (1,'2023-08-14 03:30:57','2023-08-18','2023-08-16','0801199922345',2,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3132),(2,'2023-08-14 03:36:45','2023-08-16','2023-08-15','0801200004525',4,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3654),(3,'2023-08-14 04:13:00','2023-08-21','2023-08-16','0801200099999',1,'0801200028287','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',1566),(4,'2023-08-18 04:05:44','2023-08-20','2023-08-19','0801200010883',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',4002),(5,'2023-08-18 04:53:17','2023-09-01','2023-08-19','0801200099999',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',6525),(6,'2023-08-18 04:58:04','2023-08-02','2023-08-28','0802200083737',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',6525),(7,'2023-08-18 05:05:39','2023-08-09','2023-08-07','0801200201582',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',6525),(8,'2023-08-20 02:26:09','2023-08-18','2023-08-30','0712199920002',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3306);
/*!40000 ALTER TABLE `tbl_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ventadetalle`
--

DROP TABLE IF EXISTS `tbl_ventadetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ventadetalle` (
  `IdVentaDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdVenta` int(11) DEFAULT NULL,
  `IdGarantia` int(11) NOT NULL,
  `IdPromocion` int(11) DEFAULT NULL,
  `IdDescuento` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `precioAro` float DEFAULT NULL,
  `IdLente` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `rebaja` float DEFAULT NULL,
  `totalVenta` float DEFAULT NULL,
  PRIMARY KEY (`IdVentaDetalle`),
  KEY `IdVenta` (`IdVenta`),
  KEY `IdGarantia` (`IdGarantia`),
  KEY `IdPromocion` (`IdPromocion`),
  KEY `IdDescuento` (`IdDescuento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `IdLente` (`IdLente`),
  CONSTRAINT `tbl_ventadetalle_ibfk_1` FOREIGN KEY (`IdVenta`) REFERENCES `tbl_venta` (`IdVenta`),
  CONSTRAINT `tbl_ventadetalle_ibfk_2` FOREIGN KEY (`IdGarantia`) REFERENCES `tbl_garantia` (`IdGarantia`),
  CONSTRAINT `tbl_ventadetalle_ibfk_3` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_ventadetalle_ibfk_4` FOREIGN KEY (`IdDescuento`) REFERENCES `tbl_descuento` (`IdDescuento`),
  CONSTRAINT `tbl_ventadetalle_ibfk_5` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`),
  CONSTRAINT `tbl_ventadetalle_ibfk_6` FOREIGN KEY (`IdLente`) REFERENCES `tbl_lente` (`IdLente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,4,2,1,1,7,1600,1,1,4600,598,4002),(2,5,3,1,1,3,4000,2,1,7500,975,6525),(3,6,3,1,1,3,4000,2,1,7500,975,6525),(4,7,3,1,1,3,4000,2,1,7500,975,6525),(5,8,1,1,1,9,800,1,1,3800,494,3306);
/*!40000 ALTER TABLE `tbl_ventadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proyectomultioptica'
--

--
-- Current Database: `proyectomultioptica`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `proyectomultioptica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `proyectomultioptica`;

--
-- Table structure for table `tbl_ciudad`
--

DROP TABLE IF EXISTS `tbl_ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ciudad` (
  `IdCiudad` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdCiudad`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ciudad`
--

LOCK TABLES `tbl_ciudad` WRITE;
/*!40000 ALTER TABLE `tbl_ciudad` DISABLE KEYS */;
INSERT INTO `tbl_ciudad` VALUES (48,'AJUTERIQUE'),(41,'BONITO ORIENTAL'),(45,'BRUS LAGUNA'),(15,'CATACAMAS'),(30,'CHAMELECON'),(8,'Choloma'),(5,'Choluteca'),(2,'Comayagua'),(35,'Comayagüela '),(11,'Danli'),(18,'Distrito Central'),(32,'El Porvenir'),(7,'El Progreso'),(22,'Gracias'),(39,'Guaimaca'),(43,'Jesus de Otoro'),(36,'Jutiapa'),(10,'Juticalpa'),(38,'La Campa'),(4,'La Ceiba'),(23,'La Esperanza'),(12,'La Lima'),(47,'La Masique'),(28,'La Paz'),(31,'Las Vegas'),(34,'Marcala'),(42,'Minas de Oro'),(21,'Nacaome'),(27,'Ocotepeque'),(17,'Olanchito'),(46,'San Jose de Colinas'),(3,'San Pedro Sula'),(19,'Santa Barbara'),(33,'Santa cruz de Yojoa'),(13,'Santa Rosa de Copan'),(14,'Siguatepeque'),(40,'Talanga'),(1,'Tegucigalpa'),(9,'Tela'),(44,'Teupasenti'),(16,'Tocoa'),(25,'Trujillo'),(20,'Yoro'),(24,'Yuscaran');
/*!40000 ALTER TABLE `tbl_ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cliente` (
  `idCliente` varchar(15) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `IdGenero` int(11) DEFAULT NULL,
  `fechaNacimiento` date NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefonoCliente` varchar(15) DEFAULT NULL,
  `correoElectronico` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente` (`idCliente`),
  UNIQUE KEY `telefonoCliente` (`telefonoCliente`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_cliente_ibfk_1` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES ('0712199920002','JOAQUIN','ABRILES',1,'0000-00-00','COMAYAGUELA','99087677','joanquin@gmail.com'),('0715199700456','PEDRO','AGUILERA',1,'0000-00-00','HONDURAS','99086676','aguilera@gmail.com'),('0715200010880','JULIA','PERDOMO',2,'2023-08-01','CRUCITAS','99837747','juanita@gmail.com'),('0801199776363','MOISES','ORTIZ',2,'2023-08-25','SOSA','88987474','majeeee@gmail.com'),('0801199900000','BEATRIZ','PINZON',2,'2023-08-20','ECOMODA','24343454','betty@gmail.com'),('0801199922345','ARMANDO','MIRANDA',1,'0000-00-00','LAURELES','99659983','armando@gmail.com'),('0801200004525','Heidy','Duron',2,'2000-05-04','BELLA VISTA','98552631','heidy@gmail.com'),('0801200010883','PATY','SIMON',1,'0000-00-00','LOLA','99065245','lola@gmail.com'),('0801200010886','ANA','LOPEZ',2,'2023-03-08','POLICARPIO PAZ','22345878','ana@gmail.com'),('0801200099999','PABLO','ORTEGA',1,'0000-00-00','EL CENTRO','33446722','pablito@gmail.com'),('0801200201582','Jared','Salgado',1,'2002-10-10','CARRIZAL','99887790','jared@gmail.com'),('0802199900765','GABRIELA','COELLO',2,'2023-08-17','LA ROSA','22435678','gaby@gmail.com'),('0802200083737','JUAN','LOPEZ',1,'2023-08-24','LA LAGUNA','93884747','lopez@gmail.com'),('0804198900970','LESBIA','VELASQUEZ',2,'2023-01-29','BELLA VISTA','99656601','lesbia@gmail.com'),('0804199533222','SUYAPA','GODOY',2,'2023-08-17','POLICARPO PAZ','98153322','godoysuyapa@gmail.com'),('0804199877625','JOSE','FERRARI',1,'2023-08-01','COMAYAGUA','99887765','ferra@gmail.com'),('0805188822345','MARGARITA','DALVEZ',2,'2023-07-12','LAS BRISAS','99008877','adonis@gmail.com'),('0805199900000','MICHAEL','HERNANDEZ',2,'0000-00-00','LAURELES','22334455','michael@gmail.com'),('0805200010889','TOM','AGUILERA',1,'2023-08-01','BELLA VISTA','99050234','maximiliano@gmail.com'),('0806199981111','CHRISTIAN','LEONARDO',1,'1999-11-13','LOS ROBLES','99007776','leo@gmail.com'),('0809156662622','JUAN','GUEVARA',1,'0000-00-00','LALA','99009282','lala@gmail.com'),('0809199900677','MARCIAL','CRUZ',1,'0000-00-00','LAS TORRES','99088484','marcial@gmail.com');
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compra`
--

DROP TABLE IF EXISTS `tbl_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compra` (
  `IdCompra` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCompra` timestamp NOT NULL DEFAULT current_timestamp(),
  `totalCompra` float DEFAULT NULL,
  PRIMARY KEY (`IdCompra`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
INSERT INTO `tbl_compra` VALUES (1,'2023-08-02 14:58:53',13000),(2,'2023-08-02 23:34:18',1000),(3,'2023-08-02 23:36:39',100),(4,'2023-08-05 03:41:32',2000),(5,'2023-08-05 03:42:59',2000),(6,'2023-08-06 06:01:19',0),(7,'2023-08-07 09:13:08',4000),(8,'2023-08-07 09:13:08',4000),(9,'2023-08-07 09:13:08',4000),(10,'2023-08-07 09:13:08',4000),(11,'2023-08-07 09:13:08',4000),(12,'2023-08-07 09:13:08',4000),(13,'2023-08-07 15:19:41',0),(14,'2023-08-07 15:19:41',0),(15,'2023-08-07 15:19:41',0),(16,'2023-08-07 15:19:41',0),(17,'2023-08-07 15:19:41',0),(18,'2023-08-07 15:19:41',0),(19,'2023-08-07 15:19:41',0),(20,'2023-08-07 15:19:41',0),(21,'2023-08-07 15:19:47',0),(22,'2023-08-07 15:19:47',0),(23,'2023-08-07 15:19:47',0),(24,'2023-08-07 15:19:47',0),(25,'2023-08-07 15:19:47',0),(26,'2023-08-07 15:19:47',0),(27,'2023-08-07 15:20:03',0),(28,'2023-08-07 15:20:03',0),(29,'2023-08-07 15:20:03',0),(30,'2023-08-07 15:20:03',0),(31,'2023-08-07 15:20:03',0),(32,'2023-08-07 15:20:03',0),(33,'2023-08-07 15:36:42',10001),(34,'2023-08-07 15:38:08',800),(35,'2023-08-07 16:16:43',1499),(36,'2023-08-07 16:17:22',10),(37,'2023-08-07 16:24:46',1000),(38,'2023-08-07 16:27:42',10),(39,'2023-08-07 16:28:15',800),(40,'2023-08-07 16:32:48',100),(41,'2023-08-07 16:40:12',0),(42,'2023-08-07 16:40:54',100),(43,'2023-08-07 16:43:18',100),(44,'2023-08-14 03:42:45',1000),(45,'2023-08-14 04:08:08',2000),(46,'2023-08-14 04:09:44',1500),(47,'2023-08-18 03:38:07',0),(48,'2023-08-18 03:51:53',410),(49,'2023-08-20 01:19:35',10000),(50,'2023-08-20 02:07:18',1000);
/*!40000 ALTER TABLE `tbl_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compradetalle`
--

DROP TABLE IF EXISTS `tbl_compradetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compradetalle` (
  `IdCompraDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdCompra` int(11) DEFAULT NULL,
  `IdProveedor` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `costoCompra` float DEFAULT NULL,
  PRIMARY KEY (`IdCompraDetalle`),
  KEY `IdCompra` (`IdCompra`),
  KEY `IdProveedor` (`IdProveedor`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `tbl_compradetalle_ibfk_1` FOREIGN KEY (`IdCompra`) REFERENCES `tbl_compra` (`IdCompra`),
  CONSTRAINT `tbl_compradetalle_ibfk_2` FOREIGN KEY (`IdProveedor`) REFERENCES `tbl_proveedor` (`IdProveedor`),
  CONSTRAINT `tbl_compradetalle_ibfk_3` FOREIGN KEY (`idProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compradetalle`
--

LOCK TABLES `tbl_compradetalle` WRITE;
/*!40000 ALTER TABLE `tbl_compradetalle` DISABLE KEYS */;
INSERT INTO `tbl_compradetalle` VALUES (1,1,1,13,1,13000),(2,2,1,200,3,1000),(3,3,1,200,2,100),(4,4,1,100,3,1000),(5,4,1,200,1,1000),(6,5,1,100,3,1000),(7,5,1,200,1,1000),(8,7,1,10,3,2000),(9,8,1,200,1,1000),(10,8,1,10,3,2000),(11,7,1,10,2,1000),(12,8,1,10,2,1000),(13,7,1,200,1,1000),(14,9,1,200,1,1000),(15,9,1,10,3,2000),(16,9,1,10,2,1000),(17,10,1,200,1,1000),(18,10,1,10,3,2000),(19,10,1,10,2,1000),(20,12,1,10,2,1000),(21,11,1,200,1,1000),(22,12,1,200,1,1000),(23,11,1,10,2,1000),(24,12,1,10,3,2000),(25,11,1,10,3,2000),(26,33,1,1000,2,10000),(27,33,1,1,3,1),(28,34,1,200,3,800),(29,35,1,200,2,700),(30,35,1,700,3,799),(31,36,1,10,1,10),(32,37,1,100,4,1000),(33,38,1,200,4,10),(34,39,1,100,4,800),(35,40,1,100,5,100),(36,42,1,100,4,100),(37,43,1,100,6,100),(38,44,1,10,1,1000),(39,45,1,21,7,2000),(40,46,1,9,7,1500),(41,48,1,200,5,10),(42,48,1,40,7,400),(43,49,1,1000,3,10000),(44,50,1,2000,9,1000);
/*!40000 ALTER TABLE `tbl_compradetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_departamento`
--

DROP TABLE IF EXISTS `tbl_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_departamento` (
  `IdDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdDepartamento`),
  UNIQUE KEY `departamento` (`departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_departamento`
--

LOCK TABLES `tbl_departamento` WRITE;
/*!40000 ALTER TABLE `tbl_departamento` DISABLE KEYS */;
INSERT INTO `tbl_departamento` VALUES (1,'ATLANTIDA'),(6,'CHOLUTECA'),(2,'COLON'),(3,'COMAYAGUA'),(4,'COPAN'),(5,'Cortés'),(7,'El Paraíso'),(8,'Francisco Morazán'),(9,'Gracias a Dios'),(10,'Intibucá'),(11,'Islas de la Bahía'),(12,'La Paz'),(13,'Lempira'),(14,'Ocotepeque'),(15,'Olancho'),(16,'Santa Bárbara'),(17,'Valle'),(18,'Yoro');
/*!40000 ALTER TABLE `tbl_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_descuento`
--

DROP TABLE IF EXISTS `tbl_descuento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_descuento` (
  `IdDescuento` int(11) NOT NULL AUTO_INCREMENT,
  `estado` tinyint(1) DEFAULT NULL,
  `descPorcent` float DEFAULT NULL,
  `descPorcentEmpleado` float DEFAULT NULL,
  PRIMARY KEY (`IdDescuento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_descuento`
--

LOCK TABLES `tbl_descuento` WRITE;
/*!40000 ALTER TABLE `tbl_descuento` DISABLE KEYS */;
INSERT INTO `tbl_descuento` VALUES (1,1,0.2,0.3),(2,1,0.15,0.2);
/*!40000 ALTER TABLE `tbl_descuento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_empleado`
--

DROP TABLE IF EXISTS `tbl_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_empleado` (
  `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefonoEmpleado` varchar(12) DEFAULT NULL,
  `IdSucursal` int(11) DEFAULT NULL,
  `IdGenero` int(11) DEFAULT NULL,
  `numeroIdentidad` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdEmpleado`),
  UNIQUE KEY `numeroIdentidad` (`numeroIdentidad`),
  KEY `IdSucursal` (`IdSucursal`),
  KEY `IdGenero` (`IdGenero`),
  CONSTRAINT `tbl_empleado_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `tbl_sucursal` (`IdSucursal`),
  CONSTRAINT `tbl_empleado_ibfk_2` FOREIGN KEY (`IdGenero`) REFERENCES `tbl_genero` (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empleado`
--

LOCK TABLES `tbl_empleado` WRITE;
/*!40000 ALTER TABLE `tbl_empleado` DISABLE KEYS */;
INSERT INTO `tbl_empleado` VALUES (1,'ALEXANDER','RAMIREZ','96235694',1,1,'0801200001152'),(2,'KAREN','AGUILERA','98778887',1,2,'0801200018888'),(4,'MICHAEL','SOSA','33444445',1,1,'0801199800000'),(6,'ARMANDO','MENDOZA','22334444',NULL,1,'0801200020000'),(8,'BEATRIZ','PINZON','22234444',1,2,'0801199999999'),(11,'PAMELA','ZELAYA','22345677',1,2,'0801200012345'),(12,'PRUEBA','PRUEBA','22334455',1,1,'0801199922345'),(13,'INFO','INFOR','92828828',1,2,'0801200000000'),(15,'KATERINE','LARA','99876543',1,2,'0717199899999'),(17,'CARMEN','SALINAS','35456666',1,2,'0718100082872'),(18,'INFORMATICA','ADMINISTRATIVA','99008766',1,2,'0714199500872'),(19,'UNAH','UNAH','99087867',1,1,'0801200088666'),(20,'CHARLY','LOPEZ','88997766',2,1,'0715199822354'),(21,'MAXIMILIANO','AGUILERA','99008767',1,1,'0801202210888'),(22,'WENDY','PADILLA','23243535',1,1,'0801200977366'),(23,'POLET','ANDRADE','55566777',1,1,'0801199927663');
/*!40000 ALTER TABLE `tbl_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estadoventa`
--

DROP TABLE IF EXISTS `tbl_estadoventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estadoventa` (
  `IdEstado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`IdEstado`),
  UNIQUE KEY `estado` (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estadoventa`
--

LOCK TABLES `tbl_estadoventa` WRITE;
/*!40000 ALTER TABLE `tbl_estadoventa` DISABLE KEYS */;
INSERT INTO `tbl_estadoventa` VALUES (1,'Pagado'),(2,'Pendiente');
/*!40000 ALTER TABLE `tbl_estadoventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expediente`
--

DROP TABLE IF EXISTS `tbl_expediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_expediente` (
  `IdExpediente` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `IdCliente` varchar(15) DEFAULT NULL,
  `IdEmpleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdExpediente`),
  UNIQUE KEY `IdCliente` (`IdCliente`),
  KEY `IdEmpleado` (`IdEmpleado`),
  CONSTRAINT `tbl_expediente_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`),
  CONSTRAINT `tbl_expediente_ibfk_2` FOREIGN KEY (`IdEmpleado`) REFERENCES `tbl_empleado` (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expediente`
--

LOCK TABLES `tbl_expediente` WRITE;
/*!40000 ALTER TABLE `tbl_expediente` DISABLE KEYS */;
INSERT INTO `tbl_expediente` VALUES (1,'2023-08-02 11:28:14','0801200201582',1),(3,'2023-08-02 11:31:39','0801200004525',1),(4,'2023-08-01 06:00:00','0801199922345',1),(5,'2023-08-02 06:00:00','0801199900000',1),(6,'2023-08-02 06:00:00','0802200083737',1),(8,'2023-08-02 06:00:00','0801199776363',1),(9,'2023-08-02 06:00:00','0802199900765',1),(10,'2023-08-03 06:00:00','0804198900970',2),(22,'2023-08-06 06:00:00','0805199900000',8),(23,'2023-08-06 06:00:00','0715200010880',11),(24,'2023-08-06 06:00:00','0805188822345',1),(25,'2023-08-06 06:00:00','0804199533222',15),(26,'2023-08-06 06:00:00','0809199900677',13),(27,'2023-08-11 06:00:00','0806199981111',13),(28,'2023-08-12 06:00:00','0804199877625',1),(29,'2023-08-13 06:00:00','0801200099999',11),(30,'2023-08-15 06:00:00','0809156662622',4),(31,'2023-08-17 06:00:00','0801200010886',13);
/*!40000 ALTER TABLE `tbl_expediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expedientedetalle`
--

DROP TABLE IF EXISTS `tbl_expedientedetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_expedientedetalle` (
  `IdExpedienteDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdExpediente` int(11) DEFAULT NULL,
  `diagnostico` varchar(200) NOT NULL,
  `Optometrista` varchar(50) NOT NULL,
  `AsesorVenta` varchar(50) NOT NULL,
  `Antecedentes` varchar(200) NOT NULL,
  `ODEsfera` varchar(10) NOT NULL,
  `OIEsfera` varchar(10) NOT NULL,
  `ODCilindro` varchar(10) NOT NULL,
  `OICilindro` varchar(10) NOT NULL,
  `ODEje` varchar(10) NOT NULL,
  `OIEje` varchar(10) NOT NULL,
  `ODAdicion` varchar(10) NOT NULL,
  `OIAdicion` varchar(10) NOT NULL,
  `ODAltura` varchar(10) NOT NULL,
  `OIAltura` varchar(10) NOT NULL,
  `ODDistanciaPupilar` varchar(10) NOT NULL,
  `OIDistanciaPupilar` varchar(10) NOT NULL,
  `fechaConsulta` date DEFAULT NULL,
  `fechaExpiracion` date DEFAULT NULL,
  PRIMARY KEY (`IdExpedienteDetalle`),
  KEY `IdExpediente` (`IdExpediente`),
  CONSTRAINT `tbl_expedientedetalle_ibfk_1` FOREIGN KEY (`IdExpediente`) REFERENCES `tbl_expediente` (`IdExpediente`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expedientedetalle`
--

LOCK TABLES `tbl_expedientedetalle` WRITE;
/*!40000 ALTER TABLE `tbl_expedientedetalle` DISABLE KEYS */;
INSERT INTO `tbl_expedientedetalle` VALUES (3,3,'ASTIGMATISMO','Josue','Johana','NINGUNO','1','2','2','1','2','2','2','2','1','2','1','2','2023-04-01','2024-05-06'),(4,4,'ASTIGMATISMO','NICOLAS','PATRICIA','DIABETES','-1','1','1','1','2','2','3','4','4','5','45','78','2023-08-01','2025-08-01'),(5,4,'MIOPIA','JUAN','LUIS','DIABETES','1','1','1','1','1','1','1','1','1','1','1','1','2023-08-01','2025-08-01'),(9,9,'MIOPIA','JUAN','ORTIZ','NINGUNO','1','1','1','1','1','1','1','1','1','1','1','1','2023-08-02','2025-08-02'),(10,5,'NADA','JUANITA','LUCAS','NINGUNO','2','2','12','2','2','2','2','2','2','22','233','233','2023-08-02','2025-08-02'),(11,1,'MIOPIA','ARMANDO','HUGO','DIABETES','','','','','','','','','','','','','2023-08-03','2025-08-03'),(12,6,'MIOPIA','LINDA','JUANA','AZUCAR','1','1','1','1','1','1','1','1','1','1','3','3','2023-08-03','2025-08-03'),(13,10,'ASTIGMATISMO','KATERINE','JUAN PABLO','NINGUNO','0','0','0','0','0','0','0','0','0','0','0','-1','2023-08-03','2025-08-03'),(14,10,'MIOPIA','MARCO','RODAS','NADA','0','0','0','0','0','0','0','0','0','0','0','-1','2023-08-03','2025-08-03'),(32,8,'ASTIGMATISMO','JUDITH','SINDY','NINGUNO','-1','-3','1','1','1','1','1','1','1','1','1','0','2023-08-06','2025-08-06'),(33,22,'NADA','JOHANA','HEIDY','NADA','1','1','1','1','1','1','1','1','1','1','1','1','2023-08-06','2025-08-06'),(34,23,'WWW','JOHANA','JOHANA','NINGUNO','1','1','1','1','1','1','1','1','1','1','1','1','2023-08-06','2025-08-06'),(35,24,'MIOPIA','NADIE','NADIE','NADA','1','1','1','1','1','1','1','1','1','1','11','0','2023-08-06','2025-08-06'),(36,25,'HOLIS','JULIA','MARTIN','NADA','1','1','1','1','1','1','1','1','1','1','1','1','2023-08-06','2025-08-06'),(37,25,'NADA','MONSE','KEVIN','PRESION ALTA','0','0','0','0','0','0','0','0','0','0','0','0','2023-08-06','2025-08-06'),(38,26,'NINGUNOO','ERICK','HEIDY','NADA','1','1','1','1','1','1','1','1','1','1','1','0','2023-08-06','2025-08-06'),(39,27,'DD','XIOMI','JUANCHI','NADA','','','','','','','','','','','','','2023-08-11','2024-08-11'),(40,28,'MIOPIAUUU','JULIAN','ANA','NADA','','','','','','','','','','','','','2023-08-12','2024-08-12'),(41,29,'NADA','ERICK','JARED','NADA','1','1','1','1','1','1','1','1','1','1','1','0','2023-08-13','2024-08-13'),(42,29,'MIOPIAUUU','JUANITA','MICHAEL','NADA','2','2','2','2','2','2','2','2','2','2','2','2','2023-08-13','2024-08-13'),(43,30,'CC','MICHAEL','JOHANA','NADA','','','','','','','','','','','','','2023-08-15','2024-08-16'),(44,1,'MIOPIA','MARIA','SOFIA','NADA','','','','','','','','','','','','','2023-08-16','2024-08-17'),(45,31,'MIOPIA Y ASTIGMATISMO','LUIS','PERLA','NINGUNO','','','','','','','','','','','','','2023-08-17','2024-08-17');
/*!40000 ALTER TABLE `tbl_expedientedetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_garantia`
--

DROP TABLE IF EXISTS `tbl_garantia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_garantia` (
  `IdGarantia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `mesesGarantia` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IdGarantia`),
  UNIQUE KEY `descripcion` (`descripcion`),
  KEY `IdProducto` (`IdProducto`),
  CONSTRAINT `tbl_garantia_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_garantia`
--

LOCK TABLES `tbl_garantia` WRITE;
/*!40000 ALTER TABLE `tbl_garantia` DISABLE KEYS */;
INSERT INTO `tbl_garantia` VALUES (1,'Garantia de fabricacion',5,1,1),(2,'Garantia de ajuste o comididad',5,2,1),(3,'Garantia de satisfaccion',3,1,1),(5,'GARANTIA PRODUCTO',1,7,1);
/*!40000 ALTER TABLE `tbl_garantia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_genero`
--

DROP TABLE IF EXISTS `tbl_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_genero` (
  `IdGenero` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_genero`
--

LOCK TABLES `tbl_genero` WRITE;
/*!40000 ALTER TABLE `tbl_genero` DISABLE KEYS */;
INSERT INTO `tbl_genero` VALUES (1,'MASCULINO'),(2,'FEMENINO');
/*!40000 ALTER TABLE `tbl_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inventario`
--

DROP TABLE IF EXISTS `tbl_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inventario` (
  `IdInventario` int(11) NOT NULL AUTO_INCREMENT,
  `IdProducto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdInventario`),
  KEY `IdProducto` (`IdProducto`),
  CONSTRAINT `tbl_inventario_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inventario`
--

LOCK TABLES `tbl_inventario` WRITE;
/*!40000 ALTER TABLE `tbl_inventario` DISABLE KEYS */;
INSERT INTO `tbl_inventario` VALUES (1,1,10),(2,2,0),(3,3,997),(4,4,99),(5,NULL,0),(6,NULL,0),(7,NULL,0),(12,7,68),(13,8,0),(14,9,1999);
/*!40000 ALTER TABLE `tbl_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kardex`
--

DROP TABLE IF EXISTS `tbl_kardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kardex` (
  `IdKardex` int(11) NOT NULL AUTO_INCREMENT,
  `IdTipoMovimiento` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `fechaYHora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdKardex`),
  KEY `IdTipoMovimiento` (`IdTipoMovimiento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_kardex_ibfk_1` FOREIGN KEY (`IdTipoMovimiento`) REFERENCES `tbl_tipomovimiento` (`IdTipoMovimiento`),
  CONSTRAINT `tbl_kardex_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`),
  CONSTRAINT `tbl_kardex_ibfk_3` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (37,1,4,1,'2023-08-17 21:55:31',100),(38,1,6,1,'2023-08-17 21:55:31',100),(39,2,5,1,'2023-08-17 21:55:31',1),(40,2,4,1,'2023-08-17 21:55:31',1),(41,1,1,1,'2023-08-17 21:55:31',10),(42,1,7,0,'2023-08-17 21:55:31',21),(43,1,7,1,'2023-08-17 21:55:31',9),(44,2,7,1,'2023-08-17 21:55:31',1),(45,1,5,1,'2023-08-18 06:00:00',200),(46,1,7,1,'2023-08-18 06:00:00',40),(47,2,7,1,'2023-08-18 04:05:44',1),(48,2,3,1,'2023-08-18 04:53:17',1),(49,2,3,1,'2023-08-18 04:58:04',1),(50,2,3,1,'2023-08-18 05:05:39',1),(51,1,3,1,'2023-08-20 06:00:00',1000),(52,1,9,1,'2023-08-20 06:00:00',2000),(53,2,9,1,'2023-08-20 02:26:09',1);
/*!40000 ALTER TABLE `tbl_kardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lente`
--

DROP TABLE IF EXISTS `tbl_lente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lente` (
  `IdLente` int(11) NOT NULL AUTO_INCREMENT,
  `lente` varchar(35) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  PRIMARY KEY (`IdLente`),
  UNIQUE KEY `lente` (`lente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lente`
--

LOCK TABLES `tbl_lente` WRITE;
/*!40000 ALTER TABLE `tbl_lente` DISABLE KEYS */;
INSERT INTO `tbl_lente` VALUES (1,'Lente Progresivo',3000),(2,'Lente Monofocal',3500),(3,'Lente AR',4000);
/*!40000 ALTER TABLE `tbl_lente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marca`
--

DROP TABLE IF EXISTS `tbl_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_marca` (
  `IdMarca` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`IdMarca`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (9,'AGUILERA'),(1,'Calvin Klein'),(5,'CARLINA HERRERA'),(12,'CAROLINA HERRERA'),(10,'COCO CHANELL'),(6,'CR'),(3,'ELINE'),(11,'LUNA'),(8,'PRUEBA'),(7,'TOM'),(2,'Tommy Hilfiger');
/*!40000 ALTER TABLE `tbl_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modelo`
--

DROP TABLE IF EXISTS `tbl_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modelo` (
  `IdModelo` int(11) NOT NULL AUTO_INCREMENT,
  `idMarca` int(11) DEFAULT NULL,
  `detalle` varchar(40) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdModelo`),
  KEY `idMarca` (`idMarca`),
  CONSTRAINT `tbl_modelo_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `tbl_marca` (`IdMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (1,6,'CK1995',2000),(2,2,'TH7451',2014),(3,1,'CK2015',2015),(4,3,'TERRENAL',2023),(6,1,'CK-200',2023),(7,6,'CR-KING07',2023),(8,7,'TM-2022',2022),(9,8,'PB-200',2000),(11,9,'COCO-21',2020),(12,12,'HERRERA-78KC',2023),(13,3,'PLUS-EL23',2023);
/*!40000 ALTER TABLE `tbl_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_bitacora`
--

DROP TABLE IF EXISTS `tbl_ms_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_bitacora` (
  `IdBitacora` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Id_Objeto` int(11) DEFAULT NULL,
  `accion` varchar(20) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IdBitacora`),
  KEY `Id_Usuario` (`Id_Usuario`),
  KEY `Id_Objeto` (`Id_Objeto`),
  CONSTRAINT `tbl_ms_bitacora_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_bitacora_ibfk_2` FOREIGN KEY (`Id_Objeto`) REFERENCES `tbl_objetos` (`Id_Objeto`)
) ENGINE=InnoDB AUTO_INCREMENT=793 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_bitacora`
--

LOCK TABLES `tbl_ms_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_ms_bitacora` DISABLE KEYS */;
INSERT INTO `tbl_ms_bitacora` VALUES (271,'2023-04-17 13:58:02',1,10,'Login','Inicio de sesión '),(272,'2023-04-17 15:24:45',1,10,'Login','Inicio de sesión '),(273,'2023-04-17 22:08:15',1,10,'Login','Inicio de sesión '),(274,'2023-07-07 20:29:02',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(275,'2023-07-07 20:29:11',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(276,'2023-07-07 20:29:19',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(277,'2023-07-07 20:29:25',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(278,'2023-07-07 20:29:30',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(279,'2023-07-07 20:29:56',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(280,'2023-07-07 20:36:45',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(281,'2023-07-07 20:37:00',NULL,3,'Modulo de empleado','El usuario ingreso al modulo de empleado'),(282,'2023-08-02 17:14:25',1,1,'Login','Inicio de sesión '),(283,'2023-08-02 17:14:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(284,'2023-08-02 17:47:23',1,1,'Login','Inicio de sesión '),(285,'2023-08-02 18:10:25',1,1,'Login','Inicio de sesión '),(286,'2023-08-02 18:10:25',1,1,'Login','Inicio de sesión '),(287,'2023-08-02 18:13:18',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(288,'2023-08-02 18:13:32',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(289,'2023-08-02 18:13:52',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(290,'2023-08-02 19:46:22',1,1,'Login','Inicio de sesión '),(291,'2023-08-02 19:53:56',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(292,'2023-08-02 20:00:59',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(293,'2023-08-02 20:31:49',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(294,'2023-08-02 20:34:07',1,1,'Login','Inicio de sesión '),(295,'2023-08-02 20:35:42',1,1,'Login','Inicio de sesión '),(296,'2023-08-02 21:35:24',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(297,'2023-08-03 16:56:34',1,1,'Login','Inicio de sesión '),(298,'2023-08-03 17:04:24',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(299,'2023-08-03 17:04:26',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(300,'2023-08-03 18:31:37',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(301,'2023-08-03 18:31:57',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(302,'2023-08-03 18:33:24',1,1,'Login','Inicio de sesión '),(303,'2023-08-03 18:33:58',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(304,'2023-08-03 18:37:57',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(305,'2023-08-03 19:12:40',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(306,'2023-08-03 20:58:49',1,1,'Login','Inicio de sesión '),(307,'2023-08-03 21:14:09',1,1,'Login','Inicio de sesión '),(308,'2023-08-03 21:45:49',1,1,'Login','Inicio de sesión '),(309,'2023-08-03 21:51:47',1,1,'Login','Inicio de sesión '),(310,'2023-08-03 21:57:56',1,1,'Login','Inicio de sesión '),(311,'2023-08-03 22:02:34',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(312,'2023-08-04 20:28:47',1,1,'Login','Inicio de sesión '),(313,'2023-08-04 20:45:50',1,1,'Login','Inicio de sesión '),(314,'2023-08-04 21:00:17',1,1,'Login','Inicio de sesión '),(315,'2023-08-04 21:03:43',1,1,'Login','Inicio de sesión '),(316,'2023-08-04 21:38:33',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(317,'2023-08-04 21:39:42',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(318,'2023-08-04 21:39:44',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(319,'2023-08-04 21:40:04',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(320,'2023-08-04 21:44:26',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(321,'2023-08-04 21:45:59',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(322,'2023-08-04 21:47:00',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(323,'2023-08-04 21:49:54',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(324,'2023-08-04 21:51:59',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(325,'2023-08-04 21:52:44',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(326,'2023-08-04 21:52:51',NULL,9,'Salir','Se salio de Lista de Empleados'),(327,'2023-08-04 21:55:32',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(328,'2023-08-04 21:59:32',0,1,'Login','Inicio de sesión '),(329,'2023-08-04 22:00:26',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(330,'2023-08-04 22:05:01',0,1,'Login','Inicio de sesión '),(331,'2023-08-04 22:07:43',0,1,'Login','Inicio de sesión '),(332,'2023-08-04 22:27:51',1,1,'Login','Inicio de sesión '),(333,'2023-08-05 18:17:12',1,1,'Login','Inicio de sesión '),(334,'2023-08-05 18:59:48',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(335,'2023-08-05 19:08:56',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(336,'2023-08-05 19:11:11',1,1,'Login','Inicio de sesión '),(337,'2023-08-05 19:12:04',1,1,'Login','Inicio de sesión '),(338,'2023-08-05 19:28:19',1,1,'Login','Inicio de sesión '),(339,'2023-08-05 19:35:35',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(340,'2023-08-05 19:51:39',1,1,'Login','Inicio de sesión '),(341,'2023-08-05 19:51:41',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(342,'2023-08-05 20:02:04',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(343,'2023-08-05 20:02:20',1,1,'Login','Inicio de sesión '),(344,'2023-08-05 20:47:23',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(345,'2023-08-05 20:48:25',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(346,'2023-08-05 20:51:38',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(347,'2023-08-05 20:53:35',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(348,'2023-08-05 21:08:09',1,1,'Login','Inicio de sesión '),(349,'2023-08-05 21:08:11',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(350,'2023-08-05 21:10:15',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(351,'2023-08-05 21:11:49',1,1,'Login','Inicio de sesión '),(352,'2023-08-05 21:17:50',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(353,'2023-08-05 21:19:25',1,1,'Login','Inicio de sesión '),(354,'2023-08-05 21:19:27',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(355,'2023-08-05 21:20:08',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(356,'2023-08-05 21:20:35',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(357,'2023-08-05 21:21:11',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(358,'2023-08-05 21:22:06',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(359,'2023-08-05 21:22:09',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(360,'2023-08-05 21:29:46',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(361,'2023-08-05 21:47:26',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(362,'2023-08-05 22:03:41',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(363,'2023-08-05 22:04:30',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(364,'2023-08-05 22:14:45',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(365,'2023-08-05 22:24:25',NULL,9,'Salir','Se salio de Lista de Empleados'),(366,'2023-08-05 22:24:44',NULL,9,'Salir','Se salio de Lista de Empleados'),(367,'2023-08-05 22:25:00',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(368,'2023-08-05 22:25:07',NULL,9,'Salir','Se salio de Lista de Empleados'),(369,'2023-08-05 22:25:29',NULL,9,'Salir','Se salio de Lista de Empleados'),(370,'2023-08-05 22:26:27',NULL,9,'Salir','Se salio de Lista de Empleados'),(371,'2023-08-05 22:28:04',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(372,'2023-08-05 22:30:33',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(373,'2023-08-05 22:35:20',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(374,'2023-08-05 22:53:19',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(375,'2023-08-06 13:17:49',1,1,'Login','Inicio de sesión '),(376,'2023-08-06 13:17:51',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(377,'2023-08-06 13:21:28',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(378,'2023-08-06 13:22:28',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(379,'2023-08-06 13:22:36',NULL,9,'Salir','Se salio de Lista de Empleados'),(380,'2023-08-06 14:12:04',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(381,'2023-08-06 14:27:46',2,1,'Login','Inicio de sesión '),(382,'2023-08-06 14:42:36',1,1,'Login','Inicio de sesión '),(383,'2023-08-06 14:59:30',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(384,'2023-08-06 16:52:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(385,'2023-08-06 16:58:13',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(386,'2023-08-06 17:13:36',1,1,'Login','Inicio de sesión '),(387,'2023-08-06 17:15:20',1,1,'Login','Inicio de sesión '),(388,'2023-08-06 17:22:41',1,1,'Login','Inicio de sesión '),(389,'2023-08-06 17:33:58',1,1,'Login','Inicio de sesión '),(390,'2023-08-06 17:48:15',1,1,'Login','Inicio de sesión '),(391,'2023-08-06 18:02:56',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(392,'2023-08-06 18:58:33',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(393,'2023-08-06 18:59:26',NULL,9,'Salir','Se salio de Lista de Empleados'),(394,'2023-08-06 19:47:33',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(395,'2023-08-06 19:48:01',1,1,'Login','Inicio de sesión '),(396,'2023-08-06 19:48:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(397,'2023-08-06 19:56:34',1,1,'Login','Inicio de sesión '),(398,'2023-08-06 19:56:35',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(399,'2023-08-06 22:06:59',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(400,'2023-08-06 22:07:04',NULL,9,'Salir','Se salio de Lista de Empleados'),(401,'2023-08-06 22:09:04',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(402,'2023-08-06 22:09:09',NULL,9,'Salir','Se salio de Lista de Empleados'),(403,'2023-08-06 22:42:57',1,1,'Login','Inicio de sesión '),(404,'2023-08-06 22:43:37',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(405,'2023-08-06 22:43:49',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(406,'2023-08-06 22:43:52',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(407,'2023-08-06 23:11:02',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(408,'2023-08-06 23:11:30',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(409,'2023-08-07 00:22:47',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(410,'2023-08-07 00:23:00',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(411,'2023-08-07 00:23:49',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(412,'2023-08-07 00:23:55',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(413,'2023-08-07 00:34:59',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(414,'2023-08-07 00:39:23',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(415,'2023-08-07 00:43:44',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(416,'2023-08-07 00:44:22',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(417,'2023-08-07 00:44:28',NULL,9,'Salir','Se salio de Lista de Empleados'),(418,'2023-08-07 00:57:53',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(419,'2023-08-07 01:00:19',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(420,'2023-08-07 01:00:43',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(421,'2023-08-07 01:13:01',1,1,'Login','Inicio de sesión '),(422,'2023-08-07 01:13:04',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(423,'2023-08-07 01:14:30',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(424,'2023-08-07 01:14:37',NULL,9,'Salir','Se salio de Lista de Empleados'),(425,'2023-08-07 01:16:12',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(426,'2023-08-07 01:16:20',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(427,'2023-08-07 01:24:34',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(428,'2023-08-07 01:24:42',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(429,'2023-08-07 01:27:05',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(430,'2023-08-07 01:30:46',NULL,9,'Salir','Se salio de Lista de Empleados'),(431,'2023-08-07 01:33:00',NULL,9,'Salir','Se salio de Lista de Empleados'),(432,'2023-08-07 01:36:10',NULL,9,'Salir','Se salio de Lista de Empleados'),(433,'2023-08-07 01:36:22',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(434,'2023-08-07 02:13:45',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(435,'2023-08-07 02:14:17',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(436,'2023-08-07 03:09:01',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(437,'2023-08-07 03:09:28',1,1,'Login','Inicio de sesión '),(438,'2023-08-07 09:07:45',1,1,'Login','Inicio de sesión '),(439,'2023-08-07 09:07:47',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(440,'2023-08-07 09:08:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(441,'2023-08-07 09:09:00',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(442,'2023-08-07 10:06:49',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(443,'2023-08-07 10:07:50',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(444,'2023-08-07 10:08:13',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(445,'2023-08-07 10:09:42',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(446,'2023-08-07 10:18:31',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(447,'2023-08-07 10:19:26',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(448,'2023-08-07 10:20:28',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(449,'2023-08-07 10:30:48',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(450,'2023-08-07 10:31:01',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(451,'2023-08-07 10:41:21',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(452,'2023-08-07 10:50:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(453,'2023-08-07 10:50:37',NULL,9,'Salir','Se salio de Lista de Empleados'),(454,'2023-08-07 10:50:38',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(455,'2023-08-07 15:38:32',1,1,'Login','Inicio de sesión '),(456,'2023-08-07 15:38:44',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(457,'2023-08-07 15:38:48',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(458,'2023-08-07 16:01:40',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(459,'2023-08-11 18:51:25',1,1,'Login','Inicio de sesión '),(460,'2023-08-11 18:51:33',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(461,'2023-08-11 18:51:42',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(462,'2023-08-11 19:01:32',1,1,'Login','Inicio de sesión '),(463,'2023-08-11 19:04:48',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(464,'2023-08-11 19:07:28',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(465,'2023-08-11 19:07:31',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(466,'2023-08-11 19:07:41',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(467,'2023-08-11 19:08:56',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(468,'2023-08-11 19:08:57',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(469,'2023-08-11 19:10:02',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(470,'2023-08-11 19:11:16',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(471,'2023-08-11 19:11:58',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(472,'2023-08-11 19:14:46',1,1,'Login','Inicio de sesión '),(473,'2023-08-11 19:14:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(474,'2023-08-11 19:14:56',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(475,'2023-08-11 19:16:06',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(476,'2023-08-11 19:16:31',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(477,'2023-08-11 20:25:52',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(478,'2023-08-11 20:46:51',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(479,'2023-08-12 17:49:24',1,1,'Login','Inicio de sesión '),(480,'2023-08-12 17:49:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(481,'2023-08-12 17:51:34',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(482,'2023-08-12 18:24:57',1,1,'Login','Inicio de sesión '),(483,'2023-08-12 18:48:46',1,1,'Login','Inicio de sesión '),(484,'2023-08-12 18:48:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(485,'2023-08-12 18:54:10',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(486,'2023-08-12 18:55:53',1,1,'Login','Inicio de sesión '),(487,'2023-08-12 18:55:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(488,'2023-08-12 19:07:04',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(489,'2023-08-12 19:07:20',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(490,'2023-08-12 19:07:24',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(491,'2023-08-12 20:45:55',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(492,'2023-08-12 20:49:03',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(493,'2023-08-12 21:09:52',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(494,'2023-08-12 21:22:30',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(495,'2023-08-12 21:23:10',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(496,'2023-08-12 21:24:07',1,5,'Salir','El usuario salió de la pantalla de citas'),(497,'2023-08-13 18:40:32',1,1,'Login','Inicio de sesión '),(499,'2023-08-13 18:41:05',1,1,'Login','Inicio de sesión '),(504,'2023-08-13 18:53:55',1,1,'Login','Inicio de sesión '),(507,'2023-08-13 19:13:05',1,1,'Login','Inicio de sesión '),(509,'2023-08-13 19:15:58',1,1,'Login','Inicio de sesión '),(512,'2023-08-13 19:18:04',1,1,'Login','Inicio de sesión '),(513,'2023-08-13 19:18:06',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(514,'2023-08-13 19:35:24',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(515,'2023-08-13 19:37:16',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(516,'2023-08-13 19:37:21',1,5,'Salir','El usuario salió de la pantalla de citas'),(517,'2023-08-13 19:37:23',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(518,'2023-08-13 19:37:27',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(519,'2023-08-13 19:39:44',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(520,'2023-08-13 19:40:23',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(521,'2023-08-13 19:40:28',NULL,9,'Salir','Se salio de Lista de Empleados'),(522,'2023-08-13 19:40:40',NULL,9,'Salir','Se salio de Lista de Empleados'),(523,'2023-08-13 19:41:56',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(524,'2023-08-13 21:15:05',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(525,'2023-08-13 21:15:24',1,1,'Login','Inicio de sesión '),(526,'2023-08-13 21:15:26',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(527,'2023-08-13 21:40:16',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(528,'2023-08-13 21:41:05',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(529,'2023-08-13 21:49:44',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(530,'2023-08-13 21:54:16',1,1,'Login','Inicio de sesión '),(531,'2023-08-13 21:55:54',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(532,'2023-08-13 21:57:09',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(533,'2023-08-13 21:58:05',1,5,'Salir','El usuario salió de la pantalla de citas'),(534,'2023-08-13 21:58:17',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(535,'2023-08-13 21:58:34',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(536,'2023-08-13 21:58:51',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(537,'2023-08-13 21:59:02',1,5,'Borrar Cita','El usuario eliminó una cita'),(538,'2023-08-13 21:59:25',1,5,'Salir','El usuario salió de la pantalla de citas'),(539,'2023-08-13 21:59:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(540,'2023-08-13 22:00:32',1,1,'Login','Inicio de sesión '),(541,'2023-08-13 22:00:33',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(543,'2023-08-13 22:02:54',1,1,'Login','Inicio de sesión '),(544,'2023-08-13 22:02:56',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(545,'2023-08-13 22:08:33',1,1,'Login','Inicio de sesión '),(546,'2023-08-13 22:15:06',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(547,'2023-08-13 22:15:13',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(549,'2023-08-13 22:15:59',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(550,'2023-08-13 22:16:17',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(551,'2023-08-13 22:17:14',1,5,'Salir','El usuario salió de la pantalla de citas'),(552,'2023-08-14 15:35:03',1,1,'Login','Inicio de sesión '),(553,'2023-08-15 16:23:14',1,1,'Login','Inicio de sesión '),(554,'2023-08-15 17:48:15',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(555,'2023-08-15 17:57:00',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(556,'2023-08-15 17:57:01',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(557,'2023-08-15 17:57:01',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(558,'2023-08-15 18:33:08',1,1,'Login','Inicio de sesión '),(559,'2023-08-15 19:05:34',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(560,'2023-08-15 19:32:56',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(561,'2023-08-15 19:32:57',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(563,'2023-08-15 19:33:27',1,1,'Login','Inicio de sesión '),(564,'2023-08-15 19:45:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(565,'2023-08-15 19:54:59',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(566,'2023-08-16 16:13:27',1,1,'Login','Inicio de sesión '),(567,'2023-08-16 16:14:31',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(568,'2023-08-16 16:18:30',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(569,'2023-08-16 16:19:25',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(571,'2023-08-16 16:20:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(572,'2023-08-16 16:31:46',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(573,'2023-08-16 20:17:32',1,1,'Login','Inicio de sesión '),(574,'2023-08-16 20:17:54',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(575,'2023-08-16 21:04:57',1,5,'Salir','El usuario salió de la pantalla de citas'),(576,'2023-08-16 21:04:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(577,'2023-08-16 21:12:08',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(578,'2023-08-17 15:56:12',1,1,'Login','Inicio de sesión '),(581,'2023-08-17 15:56:25',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(582,'2023-08-17 16:12:28',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(583,'2023-08-17 16:12:28',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(584,'2023-08-17 16:12:34',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(585,'2023-08-17 16:12:50',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(586,'2023-08-17 16:12:53',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(587,'2023-08-17 16:56:39',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(588,'2023-08-17 16:58:43',1,5,'Salir','El usuario salió de la pantalla de citas'),(589,'2023-08-17 16:58:45',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(590,'2023-08-17 17:02:07',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(591,'2023-08-17 17:02:31',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(592,'2023-08-17 17:02:53',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(593,'2023-08-17 17:03:02',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(594,'2023-08-17 17:03:20',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(595,'2023-08-17 17:03:28',1,5,'Borrar Cita','El usuario eliminó una cita'),(596,'2023-08-17 17:03:34',1,5,'Borrar Cita','El usuario eliminó una cita'),(597,'2023-08-17 17:03:51',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(598,'2023-08-17 17:28:58',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(599,'2023-08-17 17:29:11',1,5,'Actualizar Cita','El usuario actuzalizó una cita'),(600,'2023-08-17 17:32:44',1,5,'Borrar Cita','El usuario eliminó una cita'),(601,'2023-08-17 17:32:47',1,5,'Salir','El usuario salió de la pantalla de citas'),(602,'2023-08-17 17:32:49',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(603,'2023-08-17 17:32:56',1,5,'Borrar Cita','El usuario eliminó una cita'),(604,'2023-08-17 17:32:59',1,5,'Borrar Cita','El usuario eliminó una cita'),(605,'2023-08-17 17:33:08',1,5,'Borrar Cita','El usuario eliminó una cita'),(606,'2023-08-17 17:47:46',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(607,'2023-08-17 17:51:50',1,5,'Borrar Cita','El usuario eliminó una cita'),(608,'2023-08-17 17:54:53',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(609,'2023-08-17 17:58:31',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(610,'2023-08-17 18:38:35',1,5,'Borrar Cita','El usuario eliminó una cita'),(611,'2023-08-17 19:50:32',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(612,'2023-08-17 19:54:34',1,5,'Salir','El usuario salió de la pantalla de citas'),(613,'2023-08-17 19:54:35',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(614,'2023-08-17 19:54:37',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(615,'2023-08-17 19:54:43',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(616,'2023-08-17 19:55:05',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(617,'2023-08-17 19:57:22',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(618,'2023-08-17 19:57:47',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(619,'2023-08-17 20:58:56',1,5,'Nueva Cita','El usuario agregó una nueva cita'),(620,'2023-08-17 21:28:37',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(621,'2023-08-17 21:28:44',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(622,'2023-08-17 21:28:50',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(623,'2023-08-17 21:58:14',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(624,'2023-08-18 10:46:23',1,1,'Login','Inicio de sesión '),(625,'2023-08-18 10:46:25',NULL,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(626,'2023-08-18 10:47:30',NULL,8,'Configuración','Se ingreso a la pantalla de Configuración'),(627,'2023-08-18 12:08:15',1,1,'Login','Inicio de sesión '),(628,'2023-08-18 12:08:27',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(629,'2023-08-18 12:08:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(630,'2023-08-18 12:09:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(631,'2023-08-18 12:11:05',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(632,'2023-08-18 12:52:25',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(633,'2023-08-18 13:18:17',1,1,'Login','Inicio de sesión '),(634,'2023-08-18 13:18:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(635,'2023-08-18 13:42:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(636,'2023-08-18 13:42:40',1,1,'Login','Inicio de sesión '),(637,'2023-08-18 13:43:35',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(638,'2023-08-18 14:07:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(639,'2023-08-18 14:07:23',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(640,'2023-08-18 14:08:05',NULL,9,'Registro de empleado','Se hizo un nuevo registro de empleados'),(641,'2023-08-18 14:08:17',NULL,9,'Salir','Se salio de Lista de Empleados'),(642,'2023-08-18 14:11:07',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(643,'2023-08-18 14:13:00',1,1,'Login','Inicio de sesión '),(644,'2023-08-18 14:19:40',1,1,'Login','Inicio de sesión '),(645,'2023-08-18 14:20:40',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(646,'2023-08-18 14:20:55',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(647,'2023-08-18 14:20:57',1,5,'Salir','El usuario salió de la pantalla de citas'),(648,'2023-08-18 14:20:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(649,'2023-08-18 14:47:00',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(650,'2023-08-18 14:47:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(651,'2023-08-18 14:47:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(652,'2023-08-18 14:47:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(653,'2023-08-18 15:41:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(654,'2023-08-18 15:42:19',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(655,'2023-08-18 15:53:46',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(656,'2023-08-18 15:56:36',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(657,'2023-08-18 15:57:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(658,'2023-08-18 15:57:19',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(659,'2023-08-18 15:59:31',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(660,'2023-08-18 15:59:53',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(661,'2023-08-18 16:00:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(662,'2023-08-18 16:00:59',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(663,'2023-08-18 16:05:45',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(664,'2023-08-18 16:20:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(665,'2023-08-18 16:35:43',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(666,'2023-08-18 16:38:28',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(667,'2023-08-18 16:39:17',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(668,'2023-08-18 16:39:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(669,'2023-08-18 16:39:25',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(670,'2023-08-18 16:52:47',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(672,'2023-08-18 17:30:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(673,'2023-08-18 17:30:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(674,'2023-08-18 17:30:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(675,'2023-08-18 17:30:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(676,'2023-08-18 17:32:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(677,'2023-08-18 17:32:33',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(678,'2023-08-18 17:32:43',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(679,'2023-08-18 18:17:51',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(680,'2023-08-18 18:31:59',1,1,'Login','Inicio de sesión '),(681,'2023-08-18 18:32:08',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(682,'2023-08-18 18:32:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(683,'2023-08-18 18:40:48',1,1,'Login','Inicio de sesión '),(684,'2023-08-18 18:40:49',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(685,'2023-08-18 18:40:57',NULL,9,'Salir','Se salio de Lista de Empleados'),(686,'2023-08-18 18:41:29',1,2,'Usuario nuevo','Se agrego un nuevo usuario'),(687,'2023-08-18 18:46:12',1,1,'Login','Inicio de sesión '),(688,'2023-08-18 18:46:15',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(689,'2023-08-18 18:51:18',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(690,'2023-08-18 19:16:53',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(691,'2023-08-19 09:52:57',1,1,'Login','Inicio de sesión '),(692,'2023-08-19 10:04:48',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(693,'2023-08-19 10:04:53',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(694,'2023-08-19 10:04:55',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(695,'2023-08-19 10:11:10',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(696,'2023-08-19 10:21:01',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(697,'2023-08-19 11:35:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(698,'2023-08-19 11:40:47',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(699,'2023-08-19 11:55:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(700,'2023-08-19 11:55:19',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(701,'2023-08-19 11:55:29',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(702,'2023-08-19 11:57:20',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(703,'2023-08-19 11:57:32',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(704,'2023-08-19 11:59:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(705,'2023-08-19 12:11:24',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(706,'2023-08-19 12:14:44',NULL,9,'Salir','Se salio de Lista de Empleados'),(707,'2023-08-19 12:14:48',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(708,'2023-08-19 12:27:27',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(709,'2023-08-19 12:27:29',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(710,'2023-08-19 13:07:03',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(711,'2023-08-19 13:46:32',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(712,'2023-08-19 13:46:35',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(713,'2023-08-19 13:46:38',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(714,'2023-08-19 13:46:44',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(715,'2023-08-19 13:47:50',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(716,'2023-08-19 13:47:51',1,5,'Salir','El usuario salió de la pantalla de citas'),(717,'2023-08-19 13:47:52',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(718,'2023-08-19 13:48:07',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(719,'2023-08-19 15:52:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(720,'2023-08-19 16:02:56',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(721,'2023-08-19 17:03:33',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(722,'2023-08-19 17:03:55',NULL,9,'Actualizar empleado','Se realizaron actualizaciones en los datos del empleado'),(723,'2023-08-19 17:17:42',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(724,'2023-08-19 17:17:49',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(725,'2023-08-19 17:17:52',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(726,'2023-08-19 17:18:16',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(727,'2023-08-19 17:26:06',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(728,'2023-08-19 17:34:37',NULL,9,'Salir','Se salio de la pantalla Registro de Empleado'),(729,'2023-08-19 17:41:37',NULL,9,'Salir','Se salio de Lista de Empleados'),(730,'2023-08-19 17:41:37',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(731,'2023-08-19 17:41:51',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(732,'2023-08-19 17:44:41',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(733,'2023-08-19 17:44:47',NULL,9,'Salir','Se salio de Lista de Empleados'),(734,'2023-08-19 17:45:00',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(735,'2023-08-19 18:03:48',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(736,'2023-08-19 18:09:05',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(737,'2023-08-19 18:09:09',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(738,'2023-08-19 18:13:35',1,2,'Salir','Se salio de la pantalla Registro de Usuario'),(739,'2023-08-19 18:30:29',NULL,8,'Salir','Se salio de la pantalla de Lista de Bitácora'),(740,'2023-08-19 18:34:24',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(741,'2023-08-19 19:46:08',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(742,'2023-08-19 19:46:11',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(743,'2023-08-19 19:46:12',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(744,'2023-08-19 19:46:12',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(745,'2023-08-19 19:48:02',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(746,'2023-08-19 20:24:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(747,'2023-08-19 20:24:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(748,'2023-08-19 20:24:21',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(749,'2023-08-19 20:39:46',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(750,'2023-08-19 21:10:13',1,1,'Login','Inicio de sesión '),(751,'2023-08-19 21:10:16',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(752,'2023-08-19 21:37:22',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(753,'2023-08-19 22:02:39',1,1,'Login','Inicio de sesión '),(756,'2023-08-20 10:40:54',1,1,'Login','Inicio de sesión '),(757,'2023-08-20 10:40:57',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(758,'2023-08-20 10:42:18',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(759,'2023-08-20 10:47:26',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(760,'2023-08-20 14:35:51',1,1,'Login','Inicio de sesión '),(761,'2023-08-20 14:35:51',1,1,'Login','Inicio de sesión '),(762,'2023-08-20 14:35:54',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(763,'2023-08-20 14:35:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(764,'2023-08-20 14:35:59',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(765,'2023-08-20 14:36:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(766,'2023-08-20 14:36:01',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(767,'2023-08-20 15:02:54',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(768,'2023-08-20 15:04:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(769,'2023-08-20 15:04:04',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(770,'2023-08-20 15:04:07',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(771,'2023-08-20 15:04:13',1,5,'Borrar Cita','El usuario eliminó una cita'),(772,'2023-08-20 15:04:15',1,5,'Borrar Cita','El usuario eliminó una cita'),(773,'2023-08-20 15:04:17',1,5,'Borrar Cita','El usuario eliminó una cita'),(774,'2023-08-20 15:04:20',1,5,'Borrar Cita','El usuario eliminó una cita'),(775,'2023-08-20 15:04:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(776,'2023-08-20 15:04:28',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(777,'2023-08-20 15:06:25',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(778,'2023-08-20 15:07:04',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(779,'2023-08-20 15:07:06',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(780,'2023-08-20 17:18:14',1,1,'Login','Inicio de sesión '),(781,'2023-08-20 17:18:16',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(782,'2023-08-21 23:33:34',1,1,'Login','Inicio de sesión '),(785,'2023-08-21 23:34:24',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(786,'2023-08-21 23:34:35',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(787,'2023-08-21 23:34:38',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(788,'2023-08-21 23:34:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(789,'2023-08-21 23:34:42',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios'),(790,'2023-08-21 23:53:22',1,5,'Ingresar','El usuario ingresó a la pantalla de citas'),(791,'2023-08-21 23:53:26',1,8,'Configuración','Se ingreso a la pantalla de Configuración'),(792,'2023-08-21 23:53:30',1,2,'Usuario','Se ingreso al a la pantalla de Usuarios');
/*!40000 ALTER TABLE `tbl_ms_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_hist_contrasenia`
--

DROP TABLE IF EXISTS `tbl_ms_hist_contrasenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_hist_contrasenia` (
  `Id_Historial` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Contrasenia` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Historial`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_hist_contrasenia_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_hist_contrasenia`
--

LOCK TABLES `tbl_ms_hist_contrasenia` WRITE;
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` DISABLE KEYS */;
INSERT INTO `tbl_ms_hist_contrasenia` VALUES (1,1,'$2y$10$6/aQg4dURgwLD/olQjnMz.Z.GAx..kCxZ/Y65xA0cFdqN6NSfZZQ.','Jared',NULL,NULL,NULL),(2,1,'$2y$10$.QFu83.eF6D57oVy4fq3E.NXBnIOLrNc.x0UypNg3GfnHES8lxK5S','MOISES',NULL,NULL,NULL),(3,1,'$2b$10$C7k87LmjDFic8X6OX5s6D.zk9RcGUOFoDFVvBzFJ/WqyWdP1lIm9e','x',NULL,NULL,NULL),(4,1,'$2b$10$ZDQFnMVFeGlSUkPBAGaVK.XVhVoqwz1QUj24.S4gEpJuuewAZTqqG','admin',NULL,NULL,NULL),(5,1,'$2b$10$10EultkrBh.bazchr8CNFux5B1iYT7zGC6KZmhHVgigQlRtzzfxRy','admin',NULL,NULL,NULL),(6,0,'$2b$10$tX1pqS/XEbzGdaD8HH/R4O9paLZnsBbtryi2bBwlRcdEIKHoxw/HK','MICKY',NULL,NULL,NULL),(7,0,'$2b$10$Qc4i4g2Iqvn9xQH1YTbj1.0cdZn9WWKkrPJwWkUxnAXGc.Cdq7qqS','MICKY',NULL,NULL,NULL),(8,0,'$2b$10$wSguWwj/s5Ns4OTX.cxByOC43ibApSWvyi4u6pNXGBUvG7gdXWghC','MICKY',NULL,NULL,NULL),(9,1,'$2b$10$4f40T/dzbrpzPyhmaIAMT.tzDH2ozLf1HYWa.dz/xjeCc4chREvJ.','admin',NULL,NULL,NULL),(10,1,'$2b$10$tSE1LBs46BjsGMkvOubIaea6nvVonfhjGLMN.7TdKIFkhBxjqcIf6','admin',NULL,NULL,NULL),(11,5,'$2b$10$G8sCX/mrTXaInCiPv3OVueEc7f9m/zFHHTIc0c7KIukm7MKw5WaH6','HOLA',NULL,NULL,NULL),(12,6,'$2b$10$tYoIPicPVzbf1tj9F0BQu.rdW8bD3cOQn5NW5ZFzeSSzsd1xThfhm','PAMEE',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_hist_contrasenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_parametros`
--

DROP TABLE IF EXISTS `tbl_ms_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_parametros` (
  `Id_Parametro` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Parametro` varchar(59) DEFAULT NULL,
  `Valor` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Parametro`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_parametros_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_parametros`
--

LOCK TABLES `tbl_ms_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_ms_parametros` DISABLE KEYS */;
INSERT INTO `tbl_ms_parametros` VALUES (1,1,'ADMIN_INTENTOS','3',NULL,NULL,NULL,NULL),(2,1,'ADMIN_PREGUNTAS','3',NULL,NULL,NULL,NULL),(3,1,'ADMIN_CORREO','Multiopticas@gmail.com',NULL,NULL,NULL,NULL),(4,1,'ADMIN_CUSER','admin@gmail.com',NULL,NULL,NULL,NULL),(5,1,'ADMIN_CPASS','$2y$10$O.Lq9h2tQtnRc/IFdU61IO3PmM9YbHaVHCkNZvgBlyATlbq9s8Cue',NULL,NULL,NULL,NULL),(6,1,'ADMIN_VIGENCIA','30',NULL,NULL,NULL,NULL),(7,1,'IMPUESTO','0.15',NULL,NULL,NULL,NULL),(8,1,'SYS_NOMBRE','Multioptica',NULL,NULL,NULL,NULL),(9,1,'TIEMPO_REINTENTAR (MINUTOS)','5',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_preguntas`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_preguntas` (
  `Id_Pregunta` int(11) NOT NULL,
  `Pregunta` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas`
--

LOCK TABLES `tbl_ms_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas` VALUES (15,'¿CUAL ES TU COLOR FAVORITO?','Jared',NULL,NULL,NULL),(16,'¿CUAL ES TU EQUIPO FAVORITO?','Romeo',NULL,NULL,NULL),(17,'¿COMO SE LLAMA TU ABUELO PATERNO?','Erick',NULL,NULL,NULL),(19,'¿CUAL FUE EL NOMBRE DE TU PRIMERA MASCOTA?','ERICKK','2023-03-15',NULL,NULL),(31,'¿DONDE TE GUSTARIA VIAJAR?','Moisa','2023-03-21',NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_preguntas_usuario`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_preguntas_usuario` (
  `Id_Pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Respuesta` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  KEY `Id_Pregunta` (`Id_Pregunta`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_ms_preguntas_usuario_ibfk_1` FOREIGN KEY (`Id_Pregunta`) REFERENCES `tbl_ms_preguntas` (`Id_Pregunta`),
  CONSTRAINT `tbl_ms_preguntas_usuario_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_preguntas_usuario`
--

LOCK TABLES `tbl_ms_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_preguntas_usuario` VALUES (31,1,'ROMA','Erick',NULL,NULL,NULL),(16,4,'INTER DE MILAN ','UNAH',NULL,NULL,NULL),(16,1,'NEGRO','ALEXANDER',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_preguntas_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_roles`
--

DROP TABLE IF EXISTS `tbl_ms_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_roles` (
  `Id_Rol` int(11) NOT NULL,
  `Rol` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_roles`
--

LOCK TABLES `tbl_ms_roles` WRITE;
/*!40000 ALTER TABLE `tbl_ms_roles` DISABLE KEYS */;
INSERT INTO `tbl_ms_roles` VALUES (1,'ADMIN','Acceso a todas las funciones',NULL,'2023-03-05 10:04:01',NULL,NULL),(2,'Asesor de ventas','Acceso a modulo de ventas e inventario',NULL,'2023-03-05 11:01:31',NULL,NULL);
/*!40000 ALTER TABLE `tbl_ms_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ms_usuario`
--

DROP TABLE IF EXISTS `tbl_ms_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ms_usuario` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(15) DEFAULT NULL,
  `Nombre_Usuario` varchar(100) DEFAULT NULL,
  `Estado_Usuario` varchar(100) DEFAULT 'Nuevo',
  `Contrasenia` varchar(100) DEFAULT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  `Fecha_Ultima_Conexion` date DEFAULT NULL,
  `Preguntas_Contestadas` int(11) DEFAULT 0,
  `Primer_Ingreso` int(11) DEFAULT 0,
  `Fecha_Vencimiento` date DEFAULT NULL,
  `Correo_Electronico` varchar(50) DEFAULT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ms_usuario`
--

LOCK TABLES `tbl_ms_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_ms_usuario` DISABLE KEYS */;
INSERT INTO `tbl_ms_usuario` VALUES (1,'Erick','admin','Activo','$2b$10$E3yqL7uMSm3pkU10ChBZGOe3lHrThNT96K9a4q74uCinAzLEJSY4.',1,NULL,0,1,'2024-01-01','amultiopticas@gmail.com',1,'SISTEMA','2023-04-03',NULL,NULL),(2,'0801199922345','PRUEBA','Activo','$2b$10$/CzKPx2HsBBbiZTnNYlVHe8K.gHAudnze0phLOrJtnjNApEJv9gn2',1,NULL,0,0,NULL,'karenaguilera2105@gmail.com',12,'SISTEMA','2023-08-06',NULL,NULL),(4,'0801200088666','UNAH','Activo','$2b$10$E3yqL7uMSm3pkU10ChBZGOe3lHrThNT96K9a4q74uCinAzLEJSY4.',1,NULL,0,0,NULL,'karenaguilera201422@gmail.com',19,'SISTEMA','2023-08-18',NULL,NULL),(5,'HOLA','POLET','Nuevo','$2b$10$zU8DrNtKyrJIRn4tFnLdN.UgYLQGF8tbvuSCl8VcjuW7vEzZ.lEHq',2,NULL,0,0,'2023-11-16','jared.salgado@unah.hn',23,NULL,'2023-08-18',NULL,'2023-08-18'),(6,'PAMEE','PAMEE','Activo','$2b$10$DS1fpp6jfv3Pb.2.SKXlZeoT8v7oGMrAtXn0f3wGGTRonjpWU4bq2',1,NULL,0,0,'2023-11-16','kyaguilera@unah.hn',NULL,NULL,'2023-08-18',NULL,'2023-08-18');
/*!40000 ALTER TABLE `tbl_ms_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_objetos`
--

DROP TABLE IF EXISTS `tbl_objetos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_objetos` (
  `Id_Objeto` int(11) NOT NULL,
  `Objeto` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Tipo_Objeto` varchar(15) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`Id_Objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_objetos`
--

LOCK TABLES `tbl_objetos` WRITE;
/*!40000 ALTER TABLE `tbl_objetos` DISABLE KEYS */;
INSERT INTO `tbl_objetos` VALUES (1,'Home','Pagina al iniciar sesion','solo vista',NULL,NULL,NULL,NULL),(2,'Usuario','Pagina de gestion de usuarios','gestion',NULL,NULL,NULL,NULL),(3,'Inventario','Pagina de gestion de inventario','Insercion',NULL,NULL,NULL,NULL),(4,'Clientes','Pagina de gestion de clientes','Insercion',NULL,NULL,NULL,NULL),(5,'Recordatorios','Pagina de gestion de recordatorios','Vista,Upd',NULL,NULL,NULL,NULL),(6,'Reportes','Pagina de gestion de reportes','Vista,Upd',NULL,NULL,NULL,NULL),(7,'Seguridad','Pagina de gestion de seguridad',NULL,NULL,NULL,NULL,NULL),(8,'Configuracion','Pagina de gestion de configuracion',NULL,NULL,NULL,NULL,NULL),(9,'Ventas','Pagina de gestion de ventas',NULL,NULL,NULL,NULL,NULL),(10,'Login','Login','select',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_objetos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pago`
--

DROP TABLE IF EXISTS `tbl_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pago` (
  `IdPago` int(11) NOT NULL AUTO_INCREMENT,
  `IdVenta` int(11) DEFAULT NULL,
  `IdTipoPago` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(15) DEFAULT NULL,
  `saldoAbono` float DEFAULT NULL,
  `saldoRestante` float DEFAULT NULL,
  PRIMARY KEY (`IdPago`),
  KEY `IdVenta` (`IdVenta`),
  KEY `IdTipoPago` (`IdTipoPago`),
  CONSTRAINT `tbl_pago_ibfk_1` FOREIGN KEY (`IdVenta`) REFERENCES `tbl_venta` (`IdVenta`),
  CONSTRAINT `tbl_pago_ibfk_2` FOREIGN KEY (`IdTipoPago`) REFERENCES `tbl_tipopago` (`IdTipoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (1,4,1,'2023-08-18 04:05:54','Pendiente',4000,2),(2,6,1,'2023-08-18 05:00:41','Pagado',6525,0),(3,7,1,'2023-08-18 05:08:40','Pendiente',1000,5525),(4,7,1,'2023-08-18 05:22:00','Pagado',5525,0),(5,8,1,'2023-08-20 02:26:16','Pendiente',3000,306);
/*!40000 ALTER TABLE `tbl_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pais`
--

DROP TABLE IF EXISTS `tbl_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pais` (
  `IdPais` int(11) NOT NULL AUTO_INCREMENT,
  `Pais` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdPais`),
  UNIQUE KEY `Pais` (`Pais`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pais`
--

LOCK TABLES `tbl_pais` WRITE;
/*!40000 ALTER TABLE `tbl_pais` DISABLE KEYS */;
INSERT INTO `tbl_pais` VALUES (8,'INGLATERRA'),(4,'MEXICO');
/*!40000 ALTER TABLE `tbl_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisos`
--

DROP TABLE IF EXISTS `tbl_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_permisos` (
  `Id_Objeto` int(11) DEFAULT NULL,
  `Id_Rol` int(11) DEFAULT NULL,
  `Permiso_Insercion` char(1) DEFAULT NULL,
  `Permiso_Eliminacion` char(1) DEFAULT NULL,
  `Permiso_Actualizacion` char(1) DEFAULT NULL,
  `Permiso_Consultar` char(1) DEFAULT NULL,
  `creado_por` varchar(25) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `modificado_por` varchar(25) DEFAULT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  KEY `Id_Objeto` (`Id_Objeto`),
  KEY `Id_Rol` (`Id_Rol`),
  CONSTRAINT `tbl_permisos_ibfk_1` FOREIGN KEY (`Id_Objeto`) REFERENCES `tbl_objetos` (`Id_Objeto`),
  CONSTRAINT `tbl_permisos_ibfk_2` FOREIGN KEY (`Id_Rol`) REFERENCES `tbl_ms_roles` (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos`
--

LOCK TABLES `tbl_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_permisos` DISABLE KEYS */;
INSERT INTO `tbl_permisos` VALUES (2,1,'s','s','s','s',NULL,NULL,NULL,NULL),(3,1,'s','s','s','s',NULL,NULL,NULL,NULL),(4,1,'s','s','s','s',NULL,NULL,NULL,NULL),(5,1,'s','s','s','s',NULL,NULL,NULL,NULL),(6,1,'s','s','s','s',NULL,NULL,NULL,NULL),(7,1,'s','s','s','s',NULL,NULL,NULL,NULL),(8,1,'s','s','s','s',NULL,NULL,NULL,NULL),(9,1,'s','s','s','s',NULL,NULL,NULL,NULL),(2,2,'s','s','s','s',NULL,NULL,NULL,NULL),(3,2,'s','s','s','s',NULL,NULL,NULL,NULL),(4,2,'s','s','s','s',NULL,NULL,NULL,NULL),(5,2,'s','s','s','s',NULL,NULL,NULL,NULL),(6,2,'s','n','n','n',NULL,NULL,NULL,NULL),(7,2,'s','s','s','s',NULL,NULL,NULL,NULL),(8,2,'s','s','s','s',NULL,NULL,NULL,NULL),(9,2,'s','s','s','s',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_producto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `IdModelo` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `cantidadMin` int(11) DEFAULT NULL,
  `cantidadMax` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdProducto`),
  UNIQUE KEY `IdModelo` (`IdModelo`),
  CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`IdModelo`) REFERENCES `tbl_modelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,1,4000,6,60,'CK1995'),(2,2,3200,3,35,' TH7451'),(3,3,5000,5,55,'CK2015'),(4,7,5000,2,1000,'CR-KING07'),(5,8,2000,2,100,'TM-2022'),(6,9,200,2,10,'PB-200'),(7,11,2000,2,100,'COCO-21'),(8,12,1000,2,100,'HERRERA-78KC'),(9,13,1000,1,100,'PLUS-EL23');
/*!40000 ALTER TABLE `tbl_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_productopromocion`
--

DROP TABLE IF EXISTS `tbl_productopromocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_productopromocion` (
  `IdProductoPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `IdPromocion` int(11) NOT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdProductoPromocion`),
  UNIQUE KEY `IdProducto` (`IdProducto`),
  KEY `IdPromocion` (`IdPromocion`),
  CONSTRAINT `tbl_productopromocion_ibfk_1` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_productopromocion_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productopromocion`
--

LOCK TABLES `tbl_productopromocion` WRITE;
/*!40000 ALTER TABLE `tbl_productopromocion` DISABLE KEYS */;
INSERT INTO `tbl_productopromocion` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `tbl_productopromocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promocion`
--

DROP TABLE IF EXISTS `tbl_promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promocion` (
  `IdPromocion` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicial` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `descPorcent` float DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdPromocion`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocion`
--

LOCK TABLES `tbl_promocion` WRITE;
/*!40000 ALTER TABLE `tbl_promocion` DISABLE KEYS */;
INSERT INTO `tbl_promocion` VALUES (1,'2023-01-02','2023-01-10',1,0.13,'PromoLocos'),(3,'2023-08-18','2023-08-25',1,15,'SEMANA LOCA');
/*!40000 ALTER TABLE `tbl_promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_promocionmarca`
--

DROP TABLE IF EXISTS `tbl_promocionmarca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_promocionmarca` (
  `IdPromocionMarca` int(11) NOT NULL AUTO_INCREMENT,
  `IdPromocion` int(11) NOT NULL,
  `IdMarca` int(11) DEFAULT NULL,
  `IdModelo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPromocionMarca`),
  KEY `IdPromocion` (`IdPromocion`),
  KEY `IdMarca` (`IdMarca`),
  KEY `IdModelo` (`IdModelo`),
  CONSTRAINT `tbl_promocionmarca_ibfk_1` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_promocionmarca_ibfk_2` FOREIGN KEY (`IdMarca`) REFERENCES `tbl_marca` (`IdMarca`),
  CONSTRAINT `tbl_promocionmarca_ibfk_3` FOREIGN KEY (`IdModelo`) REFERENCES `tbl_modelo` (`IdModelo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_promocionmarca`
--

LOCK TABLES `tbl_promocionmarca` WRITE;
/*!40000 ALTER TABLE `tbl_promocionmarca` DISABLE KEYS */;
INSERT INTO `tbl_promocionmarca` VALUES (1,1,1,3);
/*!40000 ALTER TABLE `tbl_promocionmarca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedor`
--

DROP TABLE IF EXISTS `tbl_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_proveedor` (
  `IdProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `CiaProveedora` varchar(50) DEFAULT NULL,
  `encargado` varchar(50) DEFAULT NULL,
  `IdPais` int(11) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `Productos` varchar(200) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdProveedor`),
  UNIQUE KEY `CiaProveedora` (`CiaProveedora`),
  UNIQUE KEY `telefono` (`telefono`),
  UNIQUE KEY `correoElectronico` (`correoElectronico`),
  KEY `IdPais` (`IdPais`),
  KEY `IdCiudad` (`IdCiudad`),
  CONSTRAINT `tbl_proveedor_ibfk_1` FOREIGN KEY (`IdPais`) REFERENCES `tbl_pais` (`IdPais`),
  CONSTRAINT `tbl_proveedor_ibfk_2` FOREIGN KEY (`IdCiudad`) REFERENCES `tbl_ciudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'UNAVision','Jared',4,11,'Productos de 5, 7 y 10','Cerca del cartel de sinaloa','22351142','unahs@gmail.com');
/*!40000 ALTER TABLE `tbl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recordatorio`
--

DROP TABLE IF EXISTS `tbl_recordatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_recordatorio` (
  `IdRecordatorio` int(11) NOT NULL AUTO_INCREMENT,
  `IdCliente` varchar(15) DEFAULT NULL,
  `Nota` varchar(200) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`IdRecordatorio`),
  KEY `IdCliente` (`IdCliente`),
  CONSTRAINT `tbl_recordatorio_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recordatorio`
--

LOCK TABLES `tbl_recordatorio` WRITE;
/*!40000 ALTER TABLE `tbl_recordatorio` DISABLE KEYS */;
INSERT INTO `tbl_recordatorio` VALUES (16,NULL,'Reservación de cita - MIOPIA','2024-08-17');
/*!40000 ALTER TABLE `tbl_recordatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sucursal`
--

DROP TABLE IF EXISTS `tbl_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sucursal` (
  `IdSucursal` int(11) NOT NULL AUTO_INCREMENT,
  `IdDepartamento` int(11) DEFAULT NULL,
  `IdCiudad` int(11) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdSucursal`),
  KEY `IdDepartamento` (`IdDepartamento`),
  KEY `IdCiudad` (`IdCiudad`),
  CONSTRAINT `tbl_sucursal_ibfk_1` FOREIGN KEY (`IdDepartamento`) REFERENCES `tbl_departamento` (`IdDepartamento`),
  CONSTRAINT `tbl_sucursal_ibfk_2` FOREIGN KEY (`IdCiudad`) REFERENCES `tbl_ciudad` (`IdCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sucursal`
--

LOCK TABLES `tbl_sucursal` WRITE;
/*!40000 ALTER TABLE `tbl_sucursal` DISABLE KEYS */;
INSERT INTO `tbl_sucursal` VALUES (1,1,1,'Cerca del paseo lidquidambar','22282862'),(2,1,48,'GUANACASTE','22786536');
/*!40000 ALTER TABLE `tbl_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipomovimiento`
--

DROP TABLE IF EXISTS `tbl_tipomovimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipomovimiento` (
  `IdTipoMovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdTipoMovimiento`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipomovimiento`
--

LOCK TABLES `tbl_tipomovimiento` WRITE;
/*!40000 ALTER TABLE `tbl_tipomovimiento` DISABLE KEYS */;
INSERT INTO `tbl_tipomovimiento` VALUES (1,'Entrada'),(2,'Salida');
/*!40000 ALTER TABLE `tbl_tipomovimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipopago`
--

DROP TABLE IF EXISTS `tbl_tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipopago` (
  `IdTipoPago` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdTipoPago`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipopago`
--

LOCK TABLES `tbl_tipopago` WRITE;
/*!40000 ALTER TABLE `tbl_tipopago` DISABLE KEYS */;
INSERT INTO `tbl_tipopago` VALUES (1,'EFECTIVO'),(4,'MONEDAS');
/*!40000 ALTER TABLE `tbl_tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_token`
--

DROP TABLE IF EXISTS `tbl_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_token` (
  `IdToken` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Usuario` int(11) DEFAULT NULL,
  `NombreToken` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdToken`),
  KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `tbl_token_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_ms_usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_token`
--

LOCK TABLES `tbl_token` WRITE;
/*!40000 ALTER TABLE `tbl_token` DISABLE KEYS */;
INSERT INTO `tbl_token` VALUES (1,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI2NjE5MTciLCJpYXQiOjE2ODkwNTMxMDAsImV4cCI6MTY4OTA'),(2,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIyMzA5MTAiLCJpYXQiOjE2ODkwNTMyMjgsImV4cCI6MTY4OTA'),(3,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI0OTE5ODUiLCJpYXQiOjE2ODkwNTQ2ODEsImV4cCI6MTY4OTA'),(4,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiI3NjQ4MTciLCJpYXQiOjE2ODkwNTQ3NjcsImV4cCI6MTY4OTA'),(5,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNDcxNjMiLCJpYXQiOjE2ODkwNTU4NDcsImV4cCI6MTY4OTA'),(6,0,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzNzkyNjYiLCJpYXQiOjE2OTEyMDgzMTIsImV4cCI6MTY5MTI'),(7,0,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzMDcyODEiLCJpYXQiOjE2OTEyMDg1NzgsImV4cCI6MTY5MTI'),(8,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIzMDkyODIiLCJpYXQiOjE2OTIyMzU4NTUsImV4cCI6MTY5MjI'),(9,1,'Cambio de contraseña','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2RpZ28iOiIyMTI2ODciLCJpYXQiOjE2OTIzMzgyOTksImV4cCI6MTY5MjMzODU5OX0.Y__DJKffl2uJ7OigrHwk0zN1jvuwlsyM8lr47-WaznM');
/*!40000 ALTER TABLE `tbl_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_venta`
--

DROP TABLE IF EXISTS `tbl_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_venta` (
  `IdVenta` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `fechaEntrega` date DEFAULT NULL,
  `fechaLimiteEntrega` date DEFAULT NULL,
  `IdCliente` varchar(15) NOT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `RTN` varchar(20) DEFAULT '08019020229809',
  `NumeroCAI` varchar(100) DEFAULT 'EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',
  `valorVenta` float DEFAULT NULL,
  PRIMARY KEY (`IdVenta`),
  KEY `IdCliente` (`IdCliente`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `tbl_venta_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `tbl_cliente` (`idCliente`),
  CONSTRAINT `tbl_venta_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `tbl_empleado` (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
INSERT INTO `tbl_venta` VALUES (1,'2023-08-14 03:30:57','2023-08-18','2023-08-16','0801199922345',2,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3132),(2,'2023-08-14 03:36:45','2023-08-16','2023-08-15','0801200004525',4,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3654),(3,'2023-08-14 04:13:00','2023-08-21','2023-08-16','0801200099999',1,'0801200028287','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',1566),(4,'2023-08-18 04:05:44','2023-08-20','2023-08-19','0801200010883',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',4002),(5,'2023-08-18 04:53:17','2023-09-01','2023-08-19','0801200099999',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',6525),(6,'2023-08-18 04:58:04','2023-08-02','2023-08-28','0802200083737',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',6525),(7,'2023-08-18 05:05:39','2023-08-09','2023-08-07','0801200201582',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',6525),(8,'2023-08-20 02:26:09','2023-08-18','2023-08-30','0712199920002',NULL,'','EB1EC8-C2DE43-F2479C-C2A5F1-EAEEDE-1C',3306);
/*!40000 ALTER TABLE `tbl_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ventadetalle`
--

DROP TABLE IF EXISTS `tbl_ventadetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ventadetalle` (
  `IdVentaDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `IdVenta` int(11) DEFAULT NULL,
  `IdGarantia` int(11) NOT NULL,
  `IdPromocion` int(11) DEFAULT NULL,
  `IdDescuento` int(11) DEFAULT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `precioAro` float DEFAULT NULL,
  `IdLente` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `rebaja` float DEFAULT NULL,
  `totalVenta` float DEFAULT NULL,
  PRIMARY KEY (`IdVentaDetalle`),
  KEY `IdVenta` (`IdVenta`),
  KEY `IdGarantia` (`IdGarantia`),
  KEY `IdPromocion` (`IdPromocion`),
  KEY `IdDescuento` (`IdDescuento`),
  KEY `IdProducto` (`IdProducto`),
  KEY `IdLente` (`IdLente`),
  CONSTRAINT `tbl_ventadetalle_ibfk_1` FOREIGN KEY (`IdVenta`) REFERENCES `tbl_venta` (`IdVenta`),
  CONSTRAINT `tbl_ventadetalle_ibfk_2` FOREIGN KEY (`IdGarantia`) REFERENCES `tbl_garantia` (`IdGarantia`),
  CONSTRAINT `tbl_ventadetalle_ibfk_3` FOREIGN KEY (`IdPromocion`) REFERENCES `tbl_promocion` (`IdPromocion`),
  CONSTRAINT `tbl_ventadetalle_ibfk_4` FOREIGN KEY (`IdDescuento`) REFERENCES `tbl_descuento` (`IdDescuento`),
  CONSTRAINT `tbl_ventadetalle_ibfk_5` FOREIGN KEY (`IdProducto`) REFERENCES `tbl_producto` (`IdProducto`),
  CONSTRAINT `tbl_ventadetalle_ibfk_6` FOREIGN KEY (`IdLente`) REFERENCES `tbl_lente` (`IdLente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ventadetalle`
--

LOCK TABLES `tbl_ventadetalle` WRITE;
/*!40000 ALTER TABLE `tbl_ventadetalle` DISABLE KEYS */;
INSERT INTO `tbl_ventadetalle` VALUES (1,4,2,1,1,7,1600,1,1,4600,598,4002),(2,5,3,1,1,3,4000,2,1,7500,975,6525),(3,6,3,1,1,3,4000,2,1,7500,975,6525),(4,7,3,1,1,3,4000,2,1,7500,975,6525),(5,8,1,1,1,9,800,1,1,3800,494,3306);
/*!40000 ALTER TABLE `tbl_ventadetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'proyectomultioptica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-21 23:53:39
