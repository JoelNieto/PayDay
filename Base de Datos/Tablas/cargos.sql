CREATE TABLE `cargos` (
  `cod_empresa` int(11) NOT NULL,
  `cod_departamento` int(11) NOT NULL,
  `cod_cargo` int(11) NOT NULL,
  `txt_cargo` varchar(100) NOT NULL,
  `txt_desc_cargo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cod_empresa`,`cod_departamento`,`cod_cargo`),
  KEY `cod_empresa` (`cod_empresa`),
  KEY `cod_departamento` (`cod_departamento`),
  KEY `cod_cargo` (`cod_cargo`),
  CONSTRAINT `cargos_fk2` FOREIGN KEY (`cod_departamento`) REFERENCES `departamentos` (`cod_departamento`),
  CONSTRAINT `cargos_fk1` FOREIGN KEY (`cod_empresa`) REFERENCES `empresas` (`cod_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
