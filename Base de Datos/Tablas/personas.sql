CREATE TABLE `personas` (
  `id_persona` int(11) NOT NULL,
  `txt_nombre` varchar(50) NOT NULL,
  `txt_nombre2` varchar(50) DEFAULT NULL,
  `txt_apellido` varchar(50) NOT NULL,
  `txt_apellido2` varchar(50) DEFAULT NULL,
  `fec_nacimiento` date DEFAULT NULL,
  `sexo` int(2) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `id_persona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
