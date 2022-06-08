/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cijfers` (
  `code` varchar(4) NOT NULL,
  `klascode` int NOT NULL,
  `cijfer` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`code`,`klascode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `cijfers` (`code`, `klascode`, `cijfer`) VALUES ('ak',11,'6,9'),('ak',21,'5,9'),('ak',22,'7,2'),('ak',23,'7,2'),('ak',31,'7'),('ak',32,'6,8'),('ak',33,'6,5'),('ak',34,'6,7'),('bi',11,'6,4'),('bi',31,'5,9'),('bi',32,'6,2'),('bi',33,'6,9'),('bi',34,'6,9'),('bv',11,'8'),('bv',21,'8,5'),('bv',22,'8,3'),('bv',23,'8,3'),('bv',31,'8,2'),('bv',32,'8,1'),('bv',33,'8,7'),('bv',34,'8,7'),('ckv',41,'8,5'),('ckv',42,'7,1'),('ckv',43,'7,8'),('ckv',44,'8'),('du',21,'7,7'),('du',22,'7,6'),('du',23,'7,6'),('du',31,'5,3'),('du',32,'5,7'),('du',33,'5,8'),('du',34,'6,1'),('ec',31,'8,6'),('ec',32,'8,8'),('ec',33,'8,8'),('ec',34,'8,3'),('ec',41,'6,6'),('ec',42,'7,2'),('ec',43,'7,2'),('ec',44,'7'),('ec',51,'7,3'),('ec',61,'8,1'),('ec',62,'7,5'),('ec',63,'7,4'),('ec',64,'7,4'),('en',11,'6,6'),('en',21,'6,6'),('en',22,'6,5'),('en',23,'6,5'),('en',31,'7,2'),('en',32,'6,9'),('en',33,'7'),('en',34,'7,3'),('en',41,'8,5'),('en',42,'7,9'),('en',43,'8,1'),('en',44,'8,1'),('en',51,'7'),('fa',11,'5,4'),('fa',21,'7'),('fa',22,'7,2'),('fa',23,'7,2'),('fa',31,'8'),('fa',32,'6,8'),('fa',33,'6,8'),('fa',34,'6,5'),('gdl',11,'5,6'),('gdl',21,'7,5'),('gdl',22,'7,3'),('gdl',23,'7,3'),('gdl',32,'8'),('gdl',33,'8,1'),('gdl',34,'8,1'),('gdl',41,'7,2'),('gdl',42,'7,2'),('gdl',43,'7,2'),('gdl',44,'7,3'),('gdl',61,'9,7'),('gdl',62,'8,7'),('gdl',63,'8,7'),('gdl',64,'8,42'),('gs',11,'7,4'),('gs',21,'8,4'),('gs',22,'8,4'),('gs',23,'8,4'),('gs',31,'8'),('gs',32,'8,5'),('gs',33,'8,5'),('gs',34,'8,4'),('in',62,'10'),('in',63,'8,7'),('in',64,'8,7'),('lo',11,'7,2'),('lo',21,'9'),('lo',22,'9'),('lo',23,'9'),('lo',31,'9'),('lo',32,'8,1'),('lo',33,'8'),('lo',34,'8'),('lo',41,'8,2'),('lo',42,'8,2'),('lo',43,'8,1'),('lo',44,'8,1'),('lo',61,'7,3'),('lo',62,'7,3'),('lo',63,'8,27'),('lo',64,'8,27'),('maat',41,'8,4'),('maat',42,'8,2'),('maat',43,'7,8'),('maat',44,'7,8'),('maat',51,'8'),('mu',11,'7,8'),('mu',21,'8,1'),('mu',22,'8,1'),('mu',23,'7,2'),('mu',31,'6'),('mu',32,'5'),('mu',33,'6'),('mu',34,'6,2'),('na',22,'8'),('na',23,'8,7'),('na',31,'8,7'),('na',32,'8,3'),('na',33,'8,8'),('na',34,'8,5'),('na',41,'8,4'),('na',42,'9,1'),('na',43,'9,1'),('na',44,'8,5'),('na',51,'8,2'),('na',61,'8,3'),('na',62,'8,5'),('na',63,'8,75'),('na',64,'8,75'),('ne',11,'7,3'),('ne',21,'7,3'),('ne',22,'7,7'),('ne',23,'7,7'),('ne',31,'8'),('ne',32,'7,7'),('ne',33,'7,6'),('ne',34,'7,4'),('ne',41,'6,6'),('ne',42,'7,2'),('ne',43,'7'),('ne',44,'7'),('ne',51,'6,4'),('nlt',41,'7,9'),('nlt',42,'7,1'),('nlt',43,'6,8'),('nlt',44,'6,9'),('nlt',51,'7'),('rek',32,'7,1'),('sc',11,'8,1'),('sk',31,'9,1'),('sk',32,'7,1'),('sk',33,'7,7'),('sk',34,'7,9'),('sk',41,'7,5'),('sk',42,'7,4'),('sk',43,'7,4'),('sk',44,'7,4'),('sk',51,'8,7'),('sk',61,'8,3'),('sk',62,'8,47'),('sk',63,'8,43'),('sk',64,'8,43'),('wi',11,'8,3'),('wi',21,'7,9'),('wi',22,'8,6'),('wi',23,'8,6'),('wi',31,'8,1'),('wi',32,'8,2'),('wi',33,'8,7'),('wi',34,'8,5'),('wiB',41,'6,9'),('wiB',42,'7,9'),('wiB',43,'7,9'),('wiB',44,'7,9'),('wiB',51,'8,7'),('wiB',61,'8,68'),('wiB',62,'8,9'),('wiB',63,'8,87'),('wiB',64,'8,87'),('wiD',41,'9,5'),('wiD',42,'7,5'),('wiD',43,'7'),('wiD',44,'6,9'),('wiD',51,'7'),('wiD',61,'9,2'),('wiD',62,'8,2'),('wiD',63,'8,15'),('wiD',64,'8,15');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periodes` (
  `klas` int NOT NULL,
  `periode` int NOT NULL,
  `klascode` int DEFAULT NULL,
  PRIMARY KEY (`klas`,`periode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `periodes` (`klas`, `periode`, `klascode`) VALUES (1,1,11),(2,1,21),(2,2,22),(2,3,23),(3,1,31),(3,2,32),(3,3,33),(3,4,34),(4,1,41),(4,2,42),(4,3,43),(4,4,44),(5,1,51),(6,1,61),(6,2,62),(6,3,63),(6,4,64);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vakken` (
  `vak` varchar(24) NOT NULL,
  `code` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`vak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `vakken` (`vak`, `code`) VALUES ('aardrijkskunde','ak'),('beeldende_vorming','bv'),('biologie','bi'),('cultuur_en_kunst_vorming','ckv'),('duits','du'),('economie','ec'),('engels','en'),('frans','fa'),('geschiedenis','gs'),('godsdienst','gdl'),('informatica','in'),('lichamelijk_opvoeding','lo'),('maatschappijleer','maat'),('muziek','mu'),('natuurkunde','na'),('natuur_leven_en_techniek','nlt'),('nederlands','ne'),('rekenen','rek'),('scheikunde','sk'),('science','sc'),('wiskunde','wi'),('wiskunde_B','wiB'),('wiskunde_D','wiD');
