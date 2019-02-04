-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: tp1
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `Archienemigo`
--

DROP TABLE IF EXISTS `Archienemigo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Archienemigo` (
  `TipoDocumento` int(11) NOT NULL,
  `NroDocumento` int(11) NOT NULL,
  `idSuperHeroe` int(11) NOT NULL,
  PRIMARY KEY (`TipoDocumento`,`NroDocumento`,`idSuperHeroe`),
  KEY `FK_SuperHeroeArchienemigo` (`idSuperHeroe`),
  CONSTRAINT `Archienemigo_ibfk_1` FOREIGN KEY (`TipoDocumento`, `NroDocumento`) REFERENCES `Persona` (`TipoDocumento`, `NroDocumento`),
  CONSTRAINT `Archienemigo_ibfk_2` FOREIGN KEY (`idSuperHeroe`) REFERENCES `Superheroe` (`idSuperHeroe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Archienemigo`
--

LOCK TABLES `Archienemigo` WRITE;
/*!40000 ALTER TABLE `Archienemigo` DISABLE KEYS */;
INSERT INTO `Archienemigo` VALUES (1,5,1),(1,6,1),(1,5,2),(1,6,2);
/*!40000 ALTER TABLE `Archienemigo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Barrio`
--

DROP TABLE IF EXISTS `Barrio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Barrio` (
  `idBarrio` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idBarrio`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Barrio`
--

LOCK TABLES `Barrio` WRITE;
/*!40000 ALTER TABLE `Barrio` DISABLE KEYS */;
INSERT INTO `Barrio` VALUES (1,'Flores'),(2,'Caballito'),(3,'Floresta'),(4,'Belgrano'),(5,'Palermo'),(6,'Nuñez');
/*!40000 ALTER TABLE `Barrio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Calle`
--

DROP TABLE IF EXISTS `Calle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Calle` (
  `idCalle` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCalle`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calle`
--

LOCK TABLES `Calle` WRITE;
/*!40000 ALTER TABLE `Calle` DISABLE KEYS */;
INSERT INTO `Calle` VALUES (1,'Rivadavia'),(2,'Directorio'),(3,'Callao'),(4,'Santa Fe'),(5,'Cordoba'),(6,'Alberdi'),(7,'Juramento'),(8,'Cabildo'),(9,'Piedras'),(10,'San Martin'),(11,'Maipu');
/*!40000 ALTER TABLE `Calle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Departamento`
--

DROP TABLE IF EXISTS `Departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Departamento` (
  `idDepto` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idDepto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departamento`
--

LOCK TABLES `Departamento` WRITE;
/*!40000 ALTER TABLE `Departamento` DISABLE KEYS */;
INSERT INTO `Departamento` VALUES (1,'Tránsito'),(2,'Hurto'),(3,'Homicidios'),(4,'Perros'),(5,'Caballeria'),(6,'Delitos Informaticos');
/*!40000 ALTER TABLE `Departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Designacion`
--

DROP TABLE IF EXISTS `Designacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Designacion` (
  `idDesignacion` int(11) NOT NULL AUTO_INCREMENT,
  `FechaInicio` datetime NOT NULL,
  `FechaFin` datetime DEFAULT NULL,
  `idTipoDesignacion` int(11) NOT NULL,
  `NroPlaca` int(11) NOT NULL,
  PRIMARY KEY (`idDesignacion`),
  KEY `FK_TipoDesignacion` (`idTipoDesignacion`),
  KEY `FK_DesignacionOficial` (`NroPlaca`),
  CONSTRAINT `Designacion_ibfk_1` FOREIGN KEY (`idTipoDesignacion`) REFERENCES `TipoDesignacion` (`idTipoDesignacion`),
  CONSTRAINT `Designacion_ibfk_2` FOREIGN KEY (`NroPlaca`) REFERENCES `Oficial` (`NroPlaca`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Designacion`
--

LOCK TABLES `Designacion` WRITE;
/*!40000 ALTER TABLE `Designacion` DISABLE KEYS */;
INSERT INTO `Designacion` VALUES (4,'2018-10-11 00:00:00',NULL,3,1),(5,'2018-10-11 00:00:00','2018-10-13 00:00:00',5,2);
/*!40000 ALTER TABLE `Designacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Direccion`
--

DROP TABLE IF EXISTS `Direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Direccion` (
  `idDireccion` int(11) NOT NULL AUTO_INCREMENT,
  `idCalleEntre1` int(11) NOT NULL,
  `idCalleEntre2` int(11) NOT NULL,
  `idCalleEn` int(11) NOT NULL,
  `idBarrio` int(11) NOT NULL,
  `NroPuerta` int(11) DEFAULT NULL,
  `NroDpto` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idDireccion`),
  KEY `FK_DireccionEntreCalle1` (`idCalleEntre1`),
  KEY `FK_DireccionEntreCalle2` (`idCalleEntre2`),
  KEY `FK_DireccionCalle` (`idCalleEn`),
  KEY `FK_DireccionBarrio` (`idBarrio`),
  CONSTRAINT `Direccion_ibfk_1` FOREIGN KEY (`idCalleEntre1`) REFERENCES `Calle` (`idCalle`),
  CONSTRAINT `Direccion_ibfk_2` FOREIGN KEY (`idCalleEntre2`) REFERENCES `Calle` (`idCalle`),
  CONSTRAINT `Direccion_ibfk_3` FOREIGN KEY (`idCalleEn`) REFERENCES `Calle` (`idCalle`),
  CONSTRAINT `Direccion_ibfk_4` FOREIGN KEY (`idBarrio`) REFERENCES `Barrio` (`idBarrio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Direccion`
--

LOCK TABLES `Direccion` WRITE;
/*!40000 ALTER TABLE `Direccion` DISABLE KEYS */;
INSERT INTO `Direccion` VALUES (1,1,2,3,1,NULL,NULL),(2,2,3,4,1,NULL,NULL),(3,2,3,5,2,NULL,NULL),(4,4,7,8,4,455,'7'),(5,9,3,10,4,6328,'2');
/*!40000 ALTER TABLE `Direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EsLlamadoPor`
--

DROP TABLE IF EXISTS `EsLlamadoPor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EsLlamadoPor` (
  `TipoDocumento` int(11) NOT NULL,
  `NroDocumento` int(11) NOT NULL,
  `idSuperHeroe` int(11) NOT NULL,
  PRIMARY KEY (`TipoDocumento`,`NroDocumento`,`idSuperHeroe`),
  KEY `FK_SuperHeroeEsLlamadoPor` (`idSuperHeroe`),
  CONSTRAINT `EsLlamadoPor_ibfk_1` FOREIGN KEY (`TipoDocumento`, `NroDocumento`) REFERENCES `Persona` (`TipoDocumento`, `NroDocumento`),
  CONSTRAINT `EsLlamadoPor_ibfk_2` FOREIGN KEY (`idSuperHeroe`) REFERENCES `Superheroe` (`idSuperHeroe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EsLlamadoPor`
--

LOCK TABLES `EsLlamadoPor` WRITE;
/*!40000 ALTER TABLE `EsLlamadoPor` DISABLE KEYS */;
INSERT INTO `EsLlamadoPor` VALUES (1,10,1),(1,9,3);
/*!40000 ALTER TABLE `EsLlamadoPor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EstadoSumario`
--

DROP TABLE IF EXISTS `EstadoSumario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EstadoSumario` (
  `idEstSumario` int(11) NOT NULL AUTO_INCREMENT,
  `Descripción` varchar(50) NOT NULL,
  PRIMARY KEY (`idEstSumario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EstadoSumario`
--

LOCK TABLES `EstadoSumario` WRITE;
/*!40000 ALTER TABLE `EstadoSumario` DISABLE KEYS */;
INSERT INTO `EstadoSumario` VALUES (1,'Iniciado'),(2,'En proceso'),(3,'Finalizado');
/*!40000 ALTER TABLE `EstadoSumario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Habilidad`
--

DROP TABLE IF EXISTS `Habilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Habilidad` (
  `idHabilidad` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idHabilidad`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Habilidad`
--

LOCK TABLES `Habilidad` WRITE;
/*!40000 ALTER TABLE `Habilidad` DISABLE KEYS */;
INSERT INTO `Habilidad` VALUES (1,'Dinero'),(2,'SuperFuerza'),(3,'Volar'),(4,'Agilidad'),(5,'Magia'),(6,'Vision Rayos X'),(7,'Clarividencia'),(8,'Telepatia');
/*!40000 ALTER TABLE `Habilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Incidente`
--

DROP TABLE IF EXISTS `Incidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Incidente` (
  `idIncidente` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) NOT NULL,
  `idTipoIncidente` int(11) NOT NULL,
  `idSuperHeroe` int(11) DEFAULT NULL,
  `idDireccion` int(11) NOT NULL,
  `estadoIncidente` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idIncidente`),
  KEY `FK_IncidenteTipoIncidente` (`idTipoIncidente`),
  KEY `FK_IncidenteSuperHeroe` (`idSuperHeroe`),
  KEY `FK_IncidenteDireccion` (`idDireccion`),
  CONSTRAINT `Incidente_ibfk_1` FOREIGN KEY (`idTipoIncidente`) REFERENCES `TipoIncidente` (`idTipoIncidente`),
  CONSTRAINT `Incidente_ibfk_2` FOREIGN KEY (`idSuperHeroe`) REFERENCES `Superheroe` (`idSuperHeroe`),
  CONSTRAINT `Incidente_ibfk_3` FOREIGN KEY (`idDireccion`) REFERENCES `Direccion` (`idDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Incidente`
--

LOCK TABLES `Incidente` WRITE;
/*!40000 ALTER TABLE `Incidente` DISABLE KEYS */;
INSERT INTO `Incidente` VALUES (1,'Un Robo',1,1,2,NULL,'2018-01-01 00:00:00'),(2,'Una Felona',2,1,2,NULL,'2018-06-01 00:00:00'),(3,'Discusin',3,NULL,3,NULL,'2018-10-01 00:00:00'),(4,'Robo de propiedad de un ciudadano',1,4,5,NULL,'2018-06-01 00:00:00');
/*!40000 ALTER TABLE `Incidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IncidenteCerrado`
--

DROP TABLE IF EXISTS `IncidenteCerrado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IncidenteCerrado` (
  `idIncidente` int(11) NOT NULL,
  PRIMARY KEY (`idIncidente`),
  CONSTRAINT `IncidenteCerrado_ibfk_1` FOREIGN KEY (`idIncidente`) REFERENCES `Incidente` (`idIncidente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IncidenteCerrado`
--

LOCK TABLES `IncidenteCerrado` WRITE;
/*!40000 ALTER TABLE `IncidenteCerrado` DISABLE KEYS */;
INSERT INTO `IncidenteCerrado` VALUES (1),(2);
/*!40000 ALTER TABLE `IncidenteCerrado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IncidenteEnProceso`
--

DROP TABLE IF EXISTS `IncidenteEnProceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IncidenteEnProceso` (
  `idIncidente` int(11) NOT NULL,
  `FechaUltimoSeguimiento` datetime NOT NULL,
  PRIMARY KEY (`idIncidente`),
  CONSTRAINT `IncidenteEnProceso_ibfk_1` FOREIGN KEY (`idIncidente`) REFERENCES `Incidente` (`idIncidente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IncidenteEnProceso`
--

LOCK TABLES `IncidenteEnProceso` WRITE;
/*!40000 ALTER TABLE `IncidenteEnProceso` DISABLE KEYS */;
INSERT INTO `IncidenteEnProceso` VALUES (3,'2018-03-10 00:00:00');
/*!40000 ALTER TABLE `IncidenteEnProceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IncidentePendiente`
--

DROP TABLE IF EXISTS `IncidentePendiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IncidentePendiente` (
  `idIncidente` int(11) NOT NULL,
  PRIMARY KEY (`idIncidente`),
  CONSTRAINT `IncidentePendiente_ibfk_1` FOREIGN KEY (`idIncidente`) REFERENCES `Incidente` (`idIncidente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IncidentePendiente`
--

LOCK TABLES `IncidentePendiente` WRITE;
/*!40000 ALTER TABLE `IncidentePendiente` DISABLE KEYS */;
/*!40000 ALTER TABLE `IncidentePendiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Oficial`
--

DROP TABLE IF EXISTS `Oficial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Oficial` (
  `NroPlaca` int(11) NOT NULL AUTO_INCREMENT,
  `Rango` varchar(50) NOT NULL,
  `FechaIngreso` datetime NOT NULL,
  `TipoDocumento` int(11) NOT NULL,
  `NroDocumento` int(11) NOT NULL,
  `idDepto` int(11) NOT NULL,
  `TipoOficial` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NroPlaca`),
  KEY `FK_OficialDepartamento` (`idDepto`),
  KEY `FK_OficialPersona` (`TipoDocumento`,`NroDocumento`),
  CONSTRAINT `Oficial_ibfk_1` FOREIGN KEY (`idDepto`) REFERENCES `Departamento` (`idDepto`),
  CONSTRAINT `Oficial_ibfk_2` FOREIGN KEY (`TipoDocumento`, `NroDocumento`) REFERENCES `Persona` (`TipoDocumento`, `NroDocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Oficial`
--

LOCK TABLES `Oficial` WRITE;
/*!40000 ALTER TABLE `Oficial` DISABLE KEYS */;
INSERT INTO `Oficial` VALUES (1,'Sirve cafe','2018-06-23 00:00:00',1,9,1,NULL),(2,'Cabo','2018-06-23 00:00:00',1,11,3,'OficialAsuntosInternos');
/*!40000 ALTER TABLE `Oficial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OficialAsuntosInternos`
--

DROP TABLE IF EXISTS `OficialAsuntosInternos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OficialAsuntosInternos` (
  `NroPlaca` int(11) NOT NULL,
  PRIMARY KEY (`NroPlaca`),
  CONSTRAINT `OficialAsuntosInternos_ibfk_1` FOREIGN KEY (`NroPlaca`) REFERENCES `Oficial` (`NroPlaca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OficialAsuntosInternos`
--

LOCK TABLES `OficialAsuntosInternos` WRITE;
/*!40000 ALTER TABLE `OficialAsuntosInternos` DISABLE KEYS */;
INSERT INTO `OficialAsuntosInternos` VALUES (2);
/*!40000 ALTER TABLE `OficialAsuntosInternos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgDelictiva`
--

DROP TABLE IF EXISTS `OrgDelictiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgDelictiva` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgDelictiva`
--

LOCK TABLES `OrgDelictiva` WRITE;
/*!40000 ALTER TABLE `OrgDelictiva` DISABLE KEYS */;
INSERT INTO `OrgDelictiva` VALUES (1,'Payasos'),(2,'Black Mask');
/*!40000 ALTER TABLE `OrgDelictiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Participa`
--

DROP TABLE IF EXISTS `Participa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Participa` (
  `TipoDocumento` int(11) NOT NULL,
  `NroDocumento` int(11) NOT NULL,
  `idIncidente` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  PRIMARY KEY (`TipoDocumento`,`NroDocumento`,`idIncidente`),
  KEY `FK_ParticipaIncidente` (`idIncidente`),
  KEY `FK_RolParticipa` (`idRol`),
  CONSTRAINT `Participa_ibfk_1` FOREIGN KEY (`TipoDocumento`, `NroDocumento`) REFERENCES `Persona` (`TipoDocumento`, `NroDocumento`),
  CONSTRAINT `Participa_ibfk_2` FOREIGN KEY (`idIncidente`) REFERENCES `Incidente` (`idIncidente`),
  CONSTRAINT `Participa_ibfk_3` FOREIGN KEY (`idRol`) REFERENCES `Rol` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Participa`
--

LOCK TABLES `Participa` WRITE;
/*!40000 ALTER TABLE `Participa` DISABLE KEYS */;
INSERT INTO `Participa` VALUES (1,7,1,2),(1,8,2,2),(1,3,2,3),(1,4,2,3),(1,5,2,3),(1,8,4,3),(1,1,3,4),(1,9,4,4),(1,9,1,5),(1,9,2,5),(1,11,1,5),(1,11,2,5),(1,11,3,5);
/*!40000 ALTER TABLE `Participa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Persona`
--

DROP TABLE IF EXISTS `Persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Persona` (
  `TipoDocumento` int(11) NOT NULL,
  `NroDocumento` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`TipoDocumento`,`NroDocumento`),
  KEY `FK_PersonaOrgDelictiva` (`Codigo`),
  CONSTRAINT `Persona_ibfk_1` FOREIGN KEY (`Codigo`) REFERENCES `OrgDelictiva` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persona`
--

LOCK TABLES `Persona` WRITE;
/*!40000 ALTER TABLE `Persona` DISABLE KEYS */;
INSERT INTO `Persona` VALUES (1,1,'Jorge','Jorgeee',NULL),(1,2,'Bruce','Wayne',NULL),(1,3,'Payaso','Loco',1),(1,4,'Payaso2','Loco',1),(1,5,'El','Guason',1),(1,6,'Black','Mask',2),(1,7,'Marcelo','Victima1',NULL),(1,8,'Fernando','Victima2',NULL),(1,9,'Alejandro','Oficial1',NULL),(1,10,'Vanesa','Contacto1',NULL),(1,11,'Asunto','Interno1',NULL);
/*!40000 ALTER TABLE `Persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Relacion`
--

DROP TABLE IF EXISTS `Relacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Relacion` (
  `TipoDocumentoRelacionadoCon` int(11) NOT NULL,
  `NroDocumentoRelacionadoCon` int(11) NOT NULL,
  `TipoDocumentoRelacionadoA` int(11) NOT NULL,
  `NroDocumentoRelacionadoA` int(11) NOT NULL,
  `TipoRelacion` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  PRIMARY KEY (`TipoDocumentoRelacionadoCon`,`NroDocumentoRelacionadoCon`,`TipoDocumentoRelacionadoA`,`NroDocumentoRelacionadoA`),
  KEY `FK_PersonaRelacionadoA` (`TipoDocumentoRelacionadoA`,`NroDocumentoRelacionadoA`),
  CONSTRAINT `Relacion_ibfk_1` FOREIGN KEY (`TipoDocumentoRelacionadoCon`, `NroDocumentoRelacionadoCon`) REFERENCES `Persona` (`TipoDocumento`, `NroDocumento`),
  CONSTRAINT `Relacion_ibfk_2` FOREIGN KEY (`TipoDocumentoRelacionadoA`, `NroDocumentoRelacionadoA`) REFERENCES `Persona` (`TipoDocumento`, `NroDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Relacion`
--

LOCK TABLES `Relacion` WRITE;
/*!40000 ALTER TABLE `Relacion` DISABLE KEYS */;
INSERT INTO `Relacion` VALUES (1,3,1,4,4,'2018-03-15 00:00:00'),(1,9,1,11,4,'2018-03-10 00:00:00');
/*!40000 ALTER TABLE `Relacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rol`
--

DROP TABLE IF EXISTS `Rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rol`
--

LOCK TABLES `Rol` WRITE;
/*!40000 ALTER TABLE `Rol` DISABLE KEYS */;
INSERT INTO `Rol` VALUES (1,'Sospechoso'),(2,'Victima'),(3,'Culpable'),(4,'Testigo'),(5,'Policia');
/*!40000 ALTER TABLE `Rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seguimiento`
--

DROP TABLE IF EXISTS `Seguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seguimiento` (
  `Numero` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(255) NOT NULL,
  `Fecha` datetime NOT NULL,
  `idIncidente` int(11) NOT NULL,
  `NroPlaca` int(11) NOT NULL,
  PRIMARY KEY (`Numero`),
  KEY `FK_SeguimientoIncidenteEnProceso` (`idIncidente`),
  KEY `FK_SeguimientoOficial` (`NroPlaca`),
  CONSTRAINT `Seguimiento_ibfk_1` FOREIGN KEY (`idIncidente`) REFERENCES `IncidenteEnProceso` (`idIncidente`),
  CONSTRAINT `Seguimiento_ibfk_2` FOREIGN KEY (`NroPlaca`) REFERENCES `Oficial` (`NroPlaca`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seguimiento`
--

LOCK TABLES `Seguimiento` WRITE;
/*!40000 ALTER TABLE `Seguimiento` DISABLE KEYS */;
INSERT INTO `Seguimiento` VALUES (2,'seguimiento1','2018-09-26 00:00:00',3,2);
/*!40000 ALTER TABLE `Seguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sumario`
--

DROP TABLE IF EXISTS `Sumario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sumario` (
  `idSumario` int(11) NOT NULL AUTO_INCREMENT,
  `Resultado` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Fecha` datetime NOT NULL,
  `idEstSumario` int(11) NOT NULL,
  `idOficial` int(11) NOT NULL,
  `idOficialAsignado` int(11) NOT NULL,
  `idDesignacion` int(11) NOT NULL,
  PRIMARY KEY (`idSumario`),
  KEY `FK_EstadoSumario` (`idEstSumario`),
  KEY `FK_SumarioOficial` (`idOficial`),
  KEY `FK_SumarioOficialAsuntosInternos` (`idOficialAsignado`),
  KEY `FK_SumarioDesignacion` (`idDesignacion`),
  CONSTRAINT `Sumario_ibfk_1` FOREIGN KEY (`idEstSumario`) REFERENCES `EstadoSumario` (`idEstSumario`),
  CONSTRAINT `Sumario_ibfk_2` FOREIGN KEY (`idOficial`) REFERENCES `Oficial` (`NroPlaca`),
  CONSTRAINT `Sumario_ibfk_3` FOREIGN KEY (`idOficialAsignado`) REFERENCES `OficialAsuntosInternos` (`NroPlaca`),
  CONSTRAINT `Sumario_ibfk_4` FOREIGN KEY (`idDesignacion`) REFERENCES `Designacion` (`idDesignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sumario`
--

LOCK TABLES `Sumario` WRITE;
/*!40000 ALTER TABLE `Sumario` DISABLE KEYS */;
INSERT INTO `Sumario` VALUES (5,NULL,NULL,'2018-09-03 00:00:00',2,1,2,4);
/*!40000 ALTER TABLE `Sumario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Superheroe`
--

DROP TABLE IF EXISTS `Superheroe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Superheroe` (
  `idSuperHeroe` int(11) NOT NULL AUTO_INCREMENT,
  `NombreFantasia` varchar(50) NOT NULL,
  `ColorDelDisfraz` varchar(50) NOT NULL,
  `TipoDocumento` int(11) DEFAULT NULL,
  `NroDocumento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSuperHeroe`),
  KEY `FK_PersonaSuperheroe` (`TipoDocumento`,`NroDocumento`),
  CONSTRAINT `Superheroe_ibfk_1` FOREIGN KEY (`TipoDocumento`, `NroDocumento`) REFERENCES `Persona` (`TipoDocumento`, `NroDocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Superheroe`
--

LOCK TABLES `Superheroe` WRITE;
/*!40000 ALTER TABLE `Superheroe` DISABLE KEYS */;
INSERT INTO `Superheroe` VALUES (1,'Batman','Negro',1,2),(2,'NightWing','Azul',NULL,NULL),(3,'Patoruzu','Amarillo',1,8),(4,'Ogon Batto','Rojo',1,10);
/*!40000 ALTER TABLE `Superheroe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tiene`
--

DROP TABLE IF EXISTS `Tiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tiene` (
  `idSuperHeroe` int(11) NOT NULL,
  `idHabilidad` int(11) NOT NULL,
  PRIMARY KEY (`idSuperHeroe`,`idHabilidad`),
  KEY `FK_HabilidadTiene` (`idHabilidad`),
  CONSTRAINT `Tiene_ibfk_1` FOREIGN KEY (`idSuperHeroe`) REFERENCES `Superheroe` (`idSuperHeroe`),
  CONSTRAINT `Tiene_ibfk_2` FOREIGN KEY (`idHabilidad`) REFERENCES `Habilidad` (`idHabilidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tiene`
--

LOCK TABLES `Tiene` WRITE;
/*!40000 ALTER TABLE `Tiene` DISABLE KEYS */;
INSERT INTO `Tiene` VALUES (1,1),(4,2),(4,3),(1,4),(2,4);
/*!40000 ALTER TABLE `Tiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoDesignacion`
--

DROP TABLE IF EXISTS `TipoDesignacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoDesignacion` (
  `idTipoDesignacion` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`idTipoDesignacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoDesignacion`
--

LOCK TABLES `TipoDesignacion` WRITE;
/*!40000 ALTER TABLE `TipoDesignacion` DISABLE KEYS */;
INSERT INTO `TipoDesignacion` VALUES (1,'Trafico'),(2,'Vigilancia Bancaria'),(3,'Detective'),(4,'Comisario'),(5,'Raso');
/*!40000 ALTER TABLE `TipoDesignacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoIncidente`
--

DROP TABLE IF EXISTS `TipoIncidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoIncidente` (
  `idTipoIncidente` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idTipoIncidente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoIncidente`
--

LOCK TABLES `TipoIncidente` WRITE;
/*!40000 ALTER TABLE `TipoIncidente` DISABLE KEYS */;
INSERT INTO `TipoIncidente` VALUES (1,'Robo'),(2,'Felonía'),(3,'Violencia Domestica'),(4,'Asesinato'),(5,'Estafa'),(6,'Incendio provocado');
/*!40000 ALTER TABLE `TipoIncidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ViveEn`
--

DROP TABLE IF EXISTS `ViveEn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ViveEn` (
  `TipoDocumento` int(11) NOT NULL,
  `NroDocumento` int(11) NOT NULL,
  `idDireccion` int(11) NOT NULL,
  PRIMARY KEY (`TipoDocumento`,`NroDocumento`,`idDireccion`),
  KEY `FK_ViveEnDireccion` (`idDireccion`),
  CONSTRAINT `ViveEn_ibfk_1` FOREIGN KEY (`TipoDocumento`, `NroDocumento`) REFERENCES `Persona` (`TipoDocumento`, `NroDocumento`),
  CONSTRAINT `ViveEn_ibfk_2` FOREIGN KEY (`idDireccion`) REFERENCES `Direccion` (`idDireccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ViveEn`
--

LOCK TABLES `ViveEn` WRITE;
/*!40000 ALTER TABLE `ViveEn` DISABLE KEYS */;
INSERT INTO `ViveEn` VALUES (1,1,1),(1,2,1),(1,3,2),(1,4,2),(1,5,2),(1,6,2),(1,7,3),(1,8,3),(1,9,3),(1,10,3),(1,11,3);
/*!40000 ALTER TABLE `ViveEn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-21 19:54:38
