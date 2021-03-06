CREATE TABLE `corregimientos` (
  `cod_provincia` int(11) NOT NULL,
  `cod_distrito` int(11) NOT NULL,
  `cod_corregimiento` int(11) NOT NULL,
  `txt_corregimiento` int(11) NOT NULL,
  PRIMARY KEY (`cod_provincia`,`cod_distrito`,`cod_corregimiento`),
  KEY `cod_provincia` (`cod_provincia`),
  KEY `cod_provincia_2` (`cod_provincia`,`cod_distrito`),
  CONSTRAINT `corregimientos_fk2` FOREIGN KEY (`cod_provincia`, `cod_distrito`) REFERENCES `distritos` (`cod_provincia`, `cod_distrito`),
  CONSTRAINT `corregimientos_fk1` FOREIGN KEY (`cod_provincia`) REFERENCES `provincias` (`cod_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
