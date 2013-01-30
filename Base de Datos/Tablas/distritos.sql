CREATE TABLE `distritos` (
  `cod_provincia` int(11) NOT NULL,
  `cod_distrito` int(11) NOT NULL,
  `txt_distrito` int(11) NOT NULL,
  PRIMARY KEY (`cod_provincia`,`cod_distrito`),
  KEY `cod_provincia` (`cod_provincia`),
  CONSTRAINT `distritos_fk1` FOREIGN KEY (`cod_provincia`) REFERENCES `provincias` (`cod_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
