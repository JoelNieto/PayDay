CREATE TABLE `personas_direccion` (
  `id_persona` int(11) NOT NULL,
  `cod_provincia` int(11) NOT NULL,
  `cod_distrito` int(11) NOT NULL,
  `cod_corregimiento` int(11) NOT NULL,
  `txt_barrio` varchar(50) NOT NULL,
  `txt_calle` varchar(50) DEFAULT NULL,
  `txt_edificio` varchar(50) DEFAULT NULL,
  `txt_casa` varchar(20) NOT NULL,
  `txt_direccion_completa` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `cod_provincia` (`cod_provincia`),
  KEY `cod_provincia_2` (`cod_provincia`,`cod_distrito`),
  KEY `cod_provincia_3` (`cod_provincia`,`cod_distrito`,`cod_corregimiento`),
  CONSTRAINT `empresas_direccion_fk4` FOREIGN KEY (`cod_provincia`, `cod_distrito`, `cod_corregimiento`) REFERENCES `corregimientos` (`cod_provincia`, `cod_distrito`, `cod_corregimiento`),
  CONSTRAINT `empresas_direccion_fk1` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`),
  CONSTRAINT `empresas_direccion_fk2` FOREIGN KEY (`cod_provincia`) REFERENCES `provincias` (`cod_provincia`),
  CONSTRAINT `empresas_direccion_fk3` FOREIGN KEY (`cod_provincia`, `cod_distrito`) REFERENCES `distritos` (`cod_provincia`, `cod_distrito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
