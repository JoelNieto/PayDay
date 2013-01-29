CREATE TABLE `empresas` (
  `cod_empresa` int(11) NOT NULL,
  `txt_empresa` varchar(100) NOT NULL,
  `txt_empresa_abrev` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cod_empresa`),
  UNIQUE KEY `cod_empresa` (`cod_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
