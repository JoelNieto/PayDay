CREATE TABLE `provincias` (
  `cod_provincia` int(11) NOT NULL,
  `txt_provincia` varchar(40) NOT NULL,
  PRIMARY KEY (`cod_provincia`),
  UNIQUE KEY `cod_provincia` (`cod_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
