-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mk
-- ------------------------------------------------------
-- Server version	5.7.19-enterprise-commercial-advanced-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `srno` varchar(10) DEFAULT NULL,
  `CustID` int(11) NOT NULL,
  `Cname` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('1',101,'Bertine',38,'discardmail.com','M'),('2',102,'Berty',84,'discardmail.de','M'),('3',103,'Beryl',59,'Disposableemailaddresses:emailmiser.com','M'),('4',104,'Beryle',32,'disposableaddress.com','F'),('5',105,'Bess',41,'disposeamail.com','F'),('6',106,'Bessie',20,'disposemail.com','M'),('7',107,'Bessy',21,'dispostable.com','F'),('8',108,'Beth',40,'dm.w3internet.co.ukexample.com','M'),('9',109,'Bethanne',20,'dodgeit.com','F'),('10',110,'Bethany',62,'dodgit.com','M'),('11',111,'Bethena',32,'dodgit.org','M'),('12',112,'Bethina',24,'donemail.ru','M'),('13',113,'Betsey',27,'dontreg.com','M'),('14',114,'Betsy',41,'dontsendmespam.de','F'),('15',115,'Betta',68,'dump-email.info','F'),('16',116,'Bette',43,'dumpandjunk.com','F'),('17',117,'Bette-Ann',57,'dumpmail.de','F'),('18',118,'Betteann',64,'dumpyemail.com','F'),('19',119,'Betteanne',40,'e4ward.com','M'),('20',120,'Betti',63,'email60.com','M'),('21',121,'Bettina',61,'emaildienst.de','M'),('22',122,'Bettine',45,'emailias.com','M'),('23',123,'Betty',36,'emailigo.de','M'),('24',124,'Bettye',55,'emailinfive.com','F'),('25',125,'Beulah',96,'emailmiser.com','F'),('26',126,'Bev',34,'emailsensei.com','F'),('27',127,'Beverie',94,'emailtemporario.com.br','F'),('28',128,'Beverlee',50,'emailto.de','M'),('29',129,'Beverley',43,'emailwarden.com','M'),('30',130,'Beverlie',75,'emailx.at.hm','M'),('31',131,'Beverly',38,'emailxfer.com','F'),('32',132,'Bevvy',35,'emz.net','F'),('33',133,'Bianca',68,'enterto.com','M'),('34',134,'Bianka',98,'ephemail.net','F'),('35',135,'Bibbie',68,'etranquil.com','M'),('36',136,'Bibby',80,'etranquil.net','F'),('37',137,'Bibbye',28,'etranquil.org','M'),('38',138,'Bibi',29,'explodemail.com','M'),('39',139,'Biddie',96,'fakeinbox.com','M'),('40',140,'Biddy',24,'fakeinformation.com','M'),('41',141,'Bidget',67,'fastacura.com','F'),('42',142,'Bili',32,'fastchevy.com','F'),('43',143,'Bill',63,'fastchrysler.com','F'),('44',144,'Billi',95,'fastkawasaki.com','F'),('45',145,'Billie',98,'fastmazda.com','F'),('46',146,'Billy',99,'fastmitsubishi.com','M'),('47',147,'Billye',44,'fastnissan.com','M'),('48',148,'Binni',62,'fastsubaru.com','M'),('49',149,'Binnie',24,'fastsuzuki.com','M'),('50',150,'Binny',68,'fasttoyota.com','M'),('51',151,'Bird',29,'fastyamaha.com','M'),('52',152,'Birdie',83,'filzmail.com','M'),('53',153,'Birgit',52,'fizmail.com','M'),('54',154,'Birgitta',99,'fr33mail.info','F'),('55',155,'Blair',85,'frapmail.com','F'),('56',156,'Blaire',81,'front14.org','M'),('57',157,'Blake',64,'fux0ringduh.com','F'),('58',158,'Blakelee',22,'garliclife.com','M'),('59',159,'Blakeley',26,'get1mail.com','F'),('60',160,'Blanca',21,'get2mail.fr','M'),('61',161,'Blanch',86,'getonemail.com','M'),('62',162,'Blancha',99,'getonemail.net','M'),('63',163,'Blanche',80,'ghosttexter.de','M'),('64',164,'Blinni',79,'girlsundertheinfluence.com','F'),('65',165,'Blinnie',39,'gishpuppy.com','F'),('66',166,'Blinny',100,'gowikibooks.com','F'),('67',167,'Bliss',75,'gowikicampus.com','F'),('68',168,'Blisse',66,'gowikicars.com','F'),('69',169,'Blithe',54,'gowikifilms.com','M'),('70',170,'Blondell',98,'gowikigames.com','M'),('71',171,'Blondelle',69,'gowikimusic.com','M'),('72',172,'Blondie',55,'gowikinetwork.com','M'),('73',173,'Blondy',46,'gowikitravel.com','M'),('74',174,'Blythe',61,'gowikitv.com','F'),('75',175,'Bobbe',34,'great-host.in','F'),('76',176,'Bobbee',60,'greensloth.com','F'),('77',177,'Bobbette',51,'gsrv.co.uk','F'),('78',178,'Bobbi',64,'guerillamail.biz','M'),('79',179,'Bobbie',71,'guerillamail.com','M'),('80',180,'Bobby',50,'guerillamail.net','M'),('81',181,'Bobbye',64,'guerillamail.org','F'),('82',182,'Bobette',93,'guerrillamail.biz','F'),('83',183,'Bobina',40,'guerrillamail.com','M'),('84',184,'Bobine',93,'guerrillamail.de','F'),('85',185,'Bobinette',24,'guerrillamail.net','M'),('86',186,'Bonita',53,'guerrillamail.org','F'),('87',187,'Bonnee',76,'guerrillamailblock.com','M'),('88',188,'Bonni',77,'h.mintemail.com','M'),('89',189,'Bonnibelle',88,'h8s.org','M'),('90',190,'Bonnie',22,'haltospam.com','M'),('91',191,'Bonny',88,'hatespam.org','F'),('92',192,'Brana',99,'hidemail.de','F'),('93',193,'Brandais',51,'hochsitze.com','F'),('94',194,'Brande',94,'hotpop.com','F'),('95',195,'Brandea',64,'hulapla.de','F'),('96',196,'Brandi',43,'ieatspam.eu','M'),('97',197,'Brandice',48,'ieatspam.info','M'),('98',198,'Brandie',87,'ihateyoualot.info','M'),('99',199,'Brandise',94,'iheartspam.org','M'),('100',200,'Brandy',36,'imails.info','M');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-03 16:51:32
