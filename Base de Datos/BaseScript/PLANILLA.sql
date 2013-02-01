# SQL Manager Lite for MySQL 5.3.1.3
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : PLANILLA


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS `planilla`;

CREATE DATABASE `PLANILLA`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `planilla`;

#
# Structure for the `empresas` table : 
#

CREATE TABLE `empresas` (
  `cod_empresa` INTEGER(11) NOT NULL,
  `txt_empresa` VARCHAR(100) COLLATE utf8_general_ci NOT NULL,
  `txt_empresa_abrev` VARCHAR(10) COLLATE utf8_general_ci DEFAULT NULL,
  `txt_direccion_empresa` VARCHAR(200) COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cod_empresa`) COMMENT '',
  UNIQUE INDEX `cod_empresa` USING BTREE (`cod_empresa`) COMMENT ''
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `departamentos` table : 
#

CREATE TABLE `departamentos` (
  `cod_empresa` INTEGER(11) NOT NULL,
  `cod_departamento` INTEGER(11) NOT NULL,
  `txt_departamento` VARCHAR(50) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`cod_empresa`, `cod_departamento`) COMMENT '',
   INDEX `cod_empresa` USING BTREE (`cod_empresa`) COMMENT '',
   INDEX `cod_departamento` USING BTREE (`cod_departamento`) COMMENT '',
  CONSTRAINT `departamentos_fk1` FOREIGN KEY (`cod_empresa`) REFERENCES `empresas` (`cod_empresa`)
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `cargos` table : 
#

CREATE TABLE `cargos` (
  `cod_empresa` INTEGER(11) NOT NULL,
  `cod_departamento` INTEGER(11) NOT NULL,
  `cod_cargo` INTEGER(11) NOT NULL,
  `txt_cargo` VARCHAR(100) COLLATE utf8_general_ci NOT NULL,
  `txt_desc_cargo` VARCHAR(200) COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cod_empresa`, `cod_departamento`, `cod_cargo`) COMMENT '',
   INDEX `cod_empresa` USING BTREE (`cod_empresa`) COMMENT '',
   INDEX `cod_departamento` USING BTREE (`cod_departamento`) COMMENT '',
   INDEX `cod_cargo` USING BTREE (`cod_cargo`) COMMENT '',
  CONSTRAINT `cargos_fk1` FOREIGN KEY (`cod_empresa`) REFERENCES `empresas` (`cod_empresa`),
  CONSTRAINT `cargos_fk2` FOREIGN KEY (`cod_departamento`) REFERENCES `departamentos` (`cod_departamento`)
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `contratos` table : 
#

CREATE TABLE `contratos` (
  `cod_contrato` INTEGER(11) NOT NULL,
  `txt_desc_contrato` VARCHAR(20) COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cod_contrato`) COMMENT '',
  UNIQUE INDEX `cod_contrato` USING BTREE (`cod_contrato`) COMMENT ''
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `provincias` table : 
#

CREATE TABLE `provincias` (
  `cod_provincia` INTEGER(11) NOT NULL,
  `txt_provincia` VARCHAR(40) COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`cod_provincia`) COMMENT '',
  UNIQUE INDEX `cod_provincia` USING BTREE (`cod_provincia`) COMMENT ''
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `distritos` table : 
#

CREATE TABLE `distritos` (
  `cod_provincia` INTEGER(11) NOT NULL,
  `cod_distrito` INTEGER(11) NOT NULL,
  `txt_distrito` INTEGER(11) NOT NULL,
  PRIMARY KEY USING BTREE (`cod_provincia`, `cod_distrito`) COMMENT '',
   INDEX `cod_provincia` USING BTREE (`cod_provincia`) COMMENT '',
  CONSTRAINT `distritos_fk1` FOREIGN KEY (`cod_provincia`) REFERENCES `provincias` (`cod_provincia`)
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `corregimientos` table : 
#

CREATE TABLE `corregimientos` (
  `cod_provincia` INTEGER(11) NOT NULL,
  `cod_distrito` INTEGER(11) NOT NULL,
  `cod_corregimiento` INTEGER(11) NOT NULL,
  `txt_corregimiento` INTEGER(11) NOT NULL,
  PRIMARY KEY USING BTREE (`cod_provincia`, `cod_distrito`, `cod_corregimiento`) COMMENT '',
   INDEX `cod_provincia` USING BTREE (`cod_provincia`) COMMENT '',
   INDEX `cod_provincia_2` USING BTREE (`cod_provincia`, `cod_distrito`) COMMENT '',
  CONSTRAINT `corregimientos_fk1` FOREIGN KEY (`cod_provincia`) REFERENCES `provincias` (`cod_provincia`),
  CONSTRAINT `corregimientos_fk2` FOREIGN KEY (`cod_provincia`, `cod_distrito`) REFERENCES `distritos` (`cod_provincia`, `cod_distrito`)
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `personas` table : 
#

CREATE TABLE `personas` (
  `id_persona` INTEGER(11) NOT NULL,
  `cod_tipo_persona` INTEGER(11) DEFAULT NULL,
  `cod_tipo_documento` INTEGER(11) DEFAULT NULL,
  `txt_documento` VARCHAR(20) COLLATE utf8_general_ci NOT NULL,
  `txt_nombre` VARCHAR(50) COLLATE utf8_general_ci NOT NULL,
  `txt_nombre2` VARCHAR(50) COLLATE utf8_general_ci DEFAULT NULL,
  `txt_apellido` VARCHAR(50) COLLATE utf8_general_ci NOT NULL,
  `txt_apellido2` VARCHAR(50) COLLATE utf8_general_ci DEFAULT NULL,
  `sexo` INTEGER(2) NOT NULL,
  `edad` INTEGER(11) DEFAULT NULL,
  `fec_nacimiento` DATE DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_persona`) COMMENT '',
  UNIQUE INDEX `id_persona` USING BTREE (`id_persona`) COMMENT ''
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `empleado_header` table : 
#

CREATE TABLE `empleado_header` (
  `id_empleado` INTEGER(11) NOT NULL,
  `id_persona` INTEGER(11) NOT NULL,
  `cod_empresa` INTEGER(11) NOT NULL,
  `cod_departamento` INTEGER(11) NOT NULL,
  `cod_cargo` INTEGER(11) NOT NULL,
  `txt_nombre` VARCHAR(50) COLLATE utf8_general_ci NOT NULL,
  `txt_apellido` VARCHAR(50) COLLATE utf8_general_ci NOT NULL,
  `fec_ingreso` DATE NOT NULL,
  `fec_salida` DATE DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_empleado`) COMMENT '',
  UNIQUE INDEX `emp_id` USING BTREE (`id_empleado`) COMMENT '',
   INDEX `cod_empresa` USING BTREE (`cod_empresa`) COMMENT '',
   INDEX `cod_departamento` USING BTREE (`cod_departamento`) COMMENT '',
   INDEX `cod_cargo` USING BTREE (`cod_cargo`) COMMENT '',
   INDEX `id_persona` USING BTREE (`id_persona`) COMMENT '',
  CONSTRAINT `empleado_header_fk1` FOREIGN KEY (`cod_empresa`) REFERENCES `departamentos` (`cod_empresa`),
  CONSTRAINT `empleado_header_fk2` FOREIGN KEY (`cod_departamento`) REFERENCES `departamentos` (`cod_departamento`),
  CONSTRAINT `empleado_header_fk3` FOREIGN KEY (`cod_cargo`) REFERENCES `cargos` (`cod_cargo`),
  CONSTRAINT `empleado_header_fk4` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`)
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `empleado_contratos` table : 
#

CREATE TABLE `empleado_contratos` (
  `id_empleado` INTEGER(11) NOT NULL,
  `ind_contrato` INTEGER(11) NOT NULL,
  `cod_contrato` INTEGER(11) NOT NULL,
  `fec_firma` DATE DEFAULT NULL,
  `fec_vig_desde` DATE NOT NULL,
  `fec_vig_hasta` DATE DEFAULT NULL,
  `sn_finalizado` TINYINT(1) DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_empleado`, `ind_contrato`) COMMENT '',
   INDEX `id_empleado` USING BTREE (`id_empleado`) COMMENT '',
   INDEX `cod_contrato` USING BTREE (`cod_contrato`) COMMENT '',
  CONSTRAINT `empleado_contratos_fk2` FOREIGN KEY (`cod_contrato`) REFERENCES `contratos` (`cod_contrato`),
  CONSTRAINT `empleado_contratos_fk1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado_header` (`id_empleado`)
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `personas_direccion` table : 
#

CREATE TABLE `personas_direccion` (
  `id_persona` INTEGER(11) NOT NULL,
  `cod_provincia` INTEGER(11) NOT NULL,
  `cod_distrito` INTEGER(11) NOT NULL,
  `cod_corregimiento` INTEGER(11) NOT NULL,
  `txt_barrio` VARCHAR(50) COLLATE utf8_general_ci NOT NULL,
  `txt_calle` VARCHAR(50) COLLATE utf8_general_ci DEFAULT NULL,
  `txt_edificio` VARCHAR(50) COLLATE utf8_general_ci DEFAULT NULL,
  `txt_casa` VARCHAR(20) COLLATE utf8_general_ci NOT NULL,
  `txt_direccion_completa` VARCHAR(500) COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id_persona`) COMMENT '',
   INDEX `cod_provincia` USING BTREE (`cod_provincia`) COMMENT '',
   INDEX `cod_provincia_2` USING BTREE (`cod_provincia`, `cod_distrito`) COMMENT '',
   INDEX `cod_provincia_3` USING BTREE (`cod_provincia`, `cod_distrito`, `cod_corregimiento`) COMMENT '',
  CONSTRAINT `empresas_direccion_fk1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`),
  CONSTRAINT `empresas_direccion_fk2` FOREIGN KEY (`cod_provincia`) REFERENCES `provincias` (`cod_provincia`),
  CONSTRAINT `empresas_direccion_fk3` FOREIGN KEY (`cod_provincia`, `cod_distrito`) REFERENCES `distritos` (`cod_provincia`, `cod_distrito`),
  CONSTRAINT `empresas_direccion_fk4` FOREIGN KEY (`cod_provincia`, `cod_distrito`, `cod_corregimiento`) REFERENCES `corregimientos` (`cod_provincia`, `cod_distrito`, `cod_corregimiento`)
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;

#
# Structure for the `usuarios` table : 
#

CREATE TABLE `usuarios` (
  `cod_usuario` VARCHAR(20) COLLATE utf8_general_ci NOT NULL,
  `txt_password` VARCHAR(10) COLLATE utf8_general_ci NOT NULL,
  `txt_nom_usuario` VARCHAR(40) COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cod_usuario`) COMMENT '',
  UNIQUE INDEX `cod_usuario` USING BTREE (`cod_usuario`) COMMENT ''
)ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT=''
;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;