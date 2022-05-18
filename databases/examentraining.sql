/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docenten` (
  `docentnaam` text NOT NULL,
  `docentcode` varchar(3) NOT NULL,
  `lokaal` varchar(5) NOT NULL,
  PRIMARY KEY (`docentcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `docenten` (`docentnaam`, `docentcode`, `lokaal`) VALUES ('Bakker','BAH','A105'),('Hoekstra','HOJ','A202'),('Palsma','PLP','B206'),('Schreuder','SCI','A104'),('Scheffers','SCL','B409'),('Thiadens','THV','A101'),('Warmelink','WAZ','B102');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inschrijvingen` (
  `id_leerling` int NOT NULL,
  `vakkeuze` varchar(32) NOT NULL,
  `docentcode` varchar(3) NOT NULL,
  PRIMARY KEY (`id_leerling`,`vakkeuze`),
  KEY `docentcode` (`docentcode`),
  CONSTRAINT `inschrijvingen_ibfk_1` FOREIGN KEY (`id_leerling`) REFERENCES `leerling` (`id_leerling`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `inschrijvingen_ibfk_2` FOREIGN KEY (`docentcode`) REFERENCES `docenten` (`docentcode`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `inschrijvingen` (`id_leerling`, `vakkeuze`, `docentcode`) VALUES (150114,'wiskunde','BAH'),(150410,'wiskunde','BAH'),(150114,'Nederlands','HOJ'),(150273,'Nederlands','HOJ'),(150701,'Nederlands','HOJ'),(150273,'natuurkunde','PLP'),(150701,'natuurkunde','PLP'),(150114,'Engels','SCI'),(150273,'Engels','SCI'),(150410,'geschiedenis','SCL'),(152809,'geschiedenis','SCL'),(150410,'Engels','THV'),(152809,'Engels','THV'),(150701,'wiskunde','WAZ'),(152809,'wiskunde','WAZ');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leerling` (
  `id_leerling` int NOT NULL AUTO_INCREMENT,
  `naam` text NOT NULL,
  `klas` varchar(4) NOT NULL,
  PRIMARY KEY (`id_leerling`)
) ENGINE=InnoDB AUTO_INCREMENT=152810 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `leerling` (`id_leerling`, `naam`, `klas`) VALUES (150114,'Alice Pieters','H5A'),(150273,'Bob Bouwma','H5A'),(150410,'Cindy Young','H5B'),(150701,'Eve Ning','H5B'),(152809,'Dirk Nauta','H5A');
