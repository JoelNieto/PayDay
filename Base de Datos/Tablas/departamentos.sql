CREATE TABLE `departamentos` (
  `cod_empresa` int(11) NOT NULL,
  `cod_departamento` int(11) NOT NULL,
  `txt_departamento` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_empresa`,`cod_departamento`),
  KEY `cod_empresa` (`cod_empresa`),
  KEY `cod_departamento` (`cod_departamento`),
  CONSTRAINT `departamentos_fk1` FOREIGN KEY (`cod_empresa`) REFERENCES `empresas` (`cod_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
