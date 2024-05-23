CREATE DATABASE  IF NOT EXISTS `bd_ventas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_ventas`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_ventas
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_clientes`
--

DROP TABLE IF EXISTS `tb_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_clientes` (
  `codigo_cl` int NOT NULL AUTO_INCREMENT,
  `nombre_cl` varchar(180) DEFAULT NULL,
  `nrodocumento_cl` varchar(20) DEFAULT NULL,
  `direccion_cl` varchar(180) DEFAULT NULL,
  `telefono_cl` varchar(50) DEFAULT NULL,
  `codigo_us` int DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`codigo_cl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clientes`
--

LOCK TABLES `tb_clientes` WRITE;
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_det_entradas_pr`
--

DROP TABLE IF EXISTS `tb_det_entradas_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_det_entradas_pr` (
  `codigo_ep` int NOT NULL,
  `codigo_pr` int DEFAULT NULL,
  `preciounitario_ep` decimal(18,2) DEFAULT NULL,
  `cantidad_ep` decimal(18,2) DEFAULT NULL,
  `importetotal_ep` varchar(45) DEFAULT NULL,
  `observacion_ep` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_det_entradas_pr`
--

LOCK TABLES `tb_det_entradas_pr` WRITE;
/*!40000 ALTER TABLE `tb_det_entradas_pr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_det_entradas_pr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_det_salidas_pr`
--

DROP TABLE IF EXISTS `tb_det_salidas_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_det_salidas_pr` (
  `codigo_sp` int NOT NULL,
  `codigo_pr` int DEFAULT NULL,
  `preciounitario_sp` decimal(18,2) DEFAULT NULL,
  `cantidad_sp` decimal(18,2) DEFAULT NULL,
  `importetotal_sp` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_det_salidas_pr`
--

LOCK TABLES `tb_det_salidas_pr` WRITE;
/*!40000 ALTER TABLE `tb_det_salidas_pr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_det_salidas_pr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_empresa`
--

DROP TABLE IF EXISTS `tb_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_empresa` (
  `codigo_em` int NOT NULL AUTO_INCREMENT,
  `nombre_em` varchar(180) DEFAULT NULL,
  `nrodocumento_em` varchar(20) DEFAULT NULL,
  `direccion_em` varchar(180) DEFAULT NULL,
  `telefono_em` varchar(50) DEFAULT NULL,
  `correo_em` varchar(180) DEFAULT NULL,
  `logo_em` longblob,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`codigo_em`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_empresa`
--

LOCK TABLES `tb_empresa` WRITE;
/*!40000 ALTER TABLE `tb_empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_enc_entradas_pr`
--

DROP TABLE IF EXISTS `tb_enc_entradas_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_enc_entradas_pr` (
  `codigo_ep` int NOT NULL AUTO_INCREMENT,
  `codigo_po` int DEFAULT NULL,
  `fechaemision_ep` date DEFAULT NULL,
  `subtotal_ep` decimal(18,2) DEFAULT NULL,
  `impuesto_ep` decimal(18,2) DEFAULT NULL,
  `total_ep` decimal(18,2) DEFAULT NULL,
  `codigo_us` int DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`codigo_ep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_enc_entradas_pr`
--

LOCK TABLES `tb_enc_entradas_pr` WRITE;
/*!40000 ALTER TABLE `tb_enc_entradas_pr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_enc_entradas_pr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_enc_salidas_pr`
--

DROP TABLE IF EXISTS `tb_enc_salidas_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_enc_salidas_pr` (
  `codigo_sp` int NOT NULL AUTO_INCREMENT,
  `codigo_cl` int DEFAULT NULL,
  `fechaemision_sp` date DEFAULT NULL,
  `subtotal_sp` decimal(18,2) DEFAULT NULL,
  `impuesto_sp` decimal(18,2) DEFAULT NULL,
  `total_sp` decimal(18,2) DEFAULT NULL,
  `codigo_us` int DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`codigo_sp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_enc_salidas_pr`
--

LOCK TABLES `tb_enc_salidas_pr` WRITE;
/*!40000 ALTER TABLE `tb_enc_salidas_pr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_enc_salidas_pr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_familias`
--

DROP TABLE IF EXISTS `tb_familias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_familias` (
  `codigo_fa` int NOT NULL AUTO_INCREMENT,
  `descripcion_fa` varchar(50) DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`codigo_fa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_familias`
--

LOCK TABLES `tb_familias` WRITE;
/*!40000 ALTER TABLE `tb_familias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_familias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_medidas`
--

DROP TABLE IF EXISTS `tb_medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_medidas` (
  `codigo_me` int NOT NULL AUTO_INCREMENT,
  `abreviatura_me` varchar(3) DEFAULT NULL,
  `descripcion_me` varchar(20) DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`codigo_me`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_medidas`
--

LOCK TABLES `tb_medidas` WRITE;
/*!40000 ALTER TABLE `tb_medidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_medidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_productos` (
  `codigo_pr` int NOT NULL AUTO_INCREMENT,
  `descripcion_pr` varchar(180) DEFAULT NULL,
  `codigomanual_pr` varchar(45) DEFAULT NULL,
  `codigo_me` int DEFAULT NULL,
  `codigo_fa` int DEFAULT NULL,
  `pu_costo` decimal(18,2) DEFAULT NULL,
  `pu_venta` decimal(18,2) DEFAULT NULL,
  `pu_descuento` decimal(18,2) DEFAULT NULL,
  `codigo_us` int DEFAULT NULL,
  `fecha_crea` datetime DEFAULT NULL,
  `fecha_modifica` datetime DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`codigo_pr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_proveedores`
--

DROP TABLE IF EXISTS `tb_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_proveedores` (
  `codigo_po` int NOT NULL AUTO_INCREMENT,
  `nombre_po` varchar(180) DEFAULT NULL,
  `nrodocumento_po` varchar(20) DEFAULT NULL,
  `direccion_po` varchar(180) DEFAULT NULL,
  `telefono_po` varchar(50) DEFAULT NULL,
  `contacto_po` varchar(180) DEFAULT NULL,
  `correo_po` varchar(180) DEFAULT NULL,
  `banco_po` varchar(180) DEFAULT NULL,
  `nrocuenta_po` varchar(180) DEFAULT NULL,
  `nrocuentainterbancaria_po` varchar(180) DEFAULT NULL,
  `codigo_us` int DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`codigo_po`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_proveedores`
--

LOCK TABLES `tb_proveedores` WRITE;
/*!40000 ALTER TABLE `tb_proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_roles_usuarios`
--

DROP TABLE IF EXISTS `tb_roles_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_roles_usuarios` (
  `codigo_ru` int NOT NULL AUTO_INCREMENT,
  `descripcion_ru` varchar(45) DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`codigo_ru`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_roles_usuarios`
--

LOCK TABLES `tb_roles_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_roles_usuarios` DISABLE KEYS */;
INSERT INTO `tb_roles_usuarios` VALUES (1,'ADMINISTRADOR',_binary ''),(2,'USUARIO',_binary '');
/*!40000 ALTER TABLE `tb_roles_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuarios` (
  `codigo_us` int NOT NULL AUTO_INCREMENT,
  `login_us` varchar(20) DEFAULT NULL,
  `password_us` varchar(20) DEFAULT NULL,
  `nombre_us` varchar(100) DEFAULT NULL,
  `codigo_ru` int DEFAULT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`codigo_us`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuarios`
--

LOCK TABLES `tb_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` VALUES (1,'vramos','1234','VICTOR RAMOS',1,_binary ''),(2,'usuario1','1234','CARLOS ARIAS',2,_binary ''),(3,'usuario prueba','5678','usuario standard',2,_binary '');
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_ventas'
--

--
-- Dumping routines for database 'bd_ventas'
--
/*!50003 DROP PROCEDURE IF EXISTS `usp_activo_us` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user_ventas`@`%` PROCEDURE `usp_activo_us`(in nCodigo_us int)
begin
	update tb_usuarios set activo= not activo
			where codigo_us=nCodigo_us;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_guardar_us` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user_ventas`@`%` PROCEDURE `usp_guardar_us`(in nOpcion int,
								in nCodigo_us int,
                                in cLogin_us varchar(20),
                                in cPassword_us varchar(20),
                                in cNombre_us varchar(100),
                                in nCodigo_ru int,
                                out nCodigo_ou int)
begin
	if nOpcion=1 then -- Nuevo Registro
		insert into tb_usuarios(login_us,
								password_us,
                                nombre_us,
                                codigo_ru)
						values(cLogin_us,
							   cPassword_us,
                               cNombre_us,
                               nCodigo_ru);
                               
		set nCodigo_ou= last_insert_id();
    else -- Actualizar Registro
		update tb_usuarios set password_us =cPassword_us,
							   nombre_us=cNombre_us,
                               codigo_ru=nCodigo_ru
					where codigo_us=nCodigo_us;
		set nCodigo_ou=nCodigo_us;
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_listado_ru` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user_ventas`@`%` PROCEDURE `usp_listado_ru`()
begin
	select descripcion_ru, codigo_ru from tb_roles_usuarios where activo=1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_listado_us` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user_ventas`@`%` PROCEDURE `usp_listado_us`(in cTexto varchar(100))
begin
	select a.codigo_us,
		   a.login_us,
           a.nombre_us,
           b.descripcion_ru,
           a.activo,
           a.codigo_ru
    from tb_usuarios a
    inner join tb_roles_usuarios b on a.codigo_ru=b.codigo_ru
    where upper(concat(trim(cast(a.codigo_us as char)),
				trim(a.login_us),
                trim(a.nombre_us),
                trim(b.descripcion_ru))) like concat('%',upper(trim(cTexto)),'%');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_login_us` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`user_ventas`@`%` PROCEDURE `usp_login_us`(in cLogin_us varchar(20),
							  in cPassword_us varchar(20))
begin
	select a.codigo_us,
		   a.login_us,
           a.nombre_us,
           b.descripcion_ru,
           a.codigo_ru
    from tb_usuarios a
    inner join tb_roles_usuarios b on a.codigo_ru=b.codigo_ru
    where a.login_us=cLogin_us and a.password_us=cPassword_us
		and a.activo=1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19  1:02:23
