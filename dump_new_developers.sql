-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: new_developers
-- ------------------------------------------------------
-- Server version	5.7.42

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country` enum('UY','BR','AR') NOT NULL DEFAULT 'UY',
  `cant_employees` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Kreiger, Collins and Gorczany','BR',3),(2,'Carroll-Bode','AR',7),(3,'Keebler, Hessel and Dibbert','AR',6),(4,'Zemlak-O\Conner','AR',7),(5,'Ratke Inc','UY',4),(6,'Witting, Schinner and Hane','AR',4),(7,'Pouros, Homenick and Hackett','UY',3),(8,'Nicolas PLC','BR',11),(9,'Carter PLC','AR',8),(10,'Klein, Gutmann and Emard','BR',4);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `document_number` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_admission` date NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Carroll-Bode',77479661,'Nona Herzog','Schroeder','1997-12-20',1,2),(2,'Keebler, Hessel and Dibbert',29475489,'Jessika Nikolaus','Zieme','1985-02-13',1,3),(3,'Witting, Schinner and Hane',76582045,'Miss Nora McGlynn','Stroman','1975-06-01',1,6),(4,'Nicolas PLC',2845587,'Dr. Trevor Fisher','Bruen','2002-07-06',1,8),(5,'Zemlak-O\'Conner',51999668,'Sarai Ankunding','Stanton','1999-09-14',1,4),(6,'Pouros, Homenick and Hackett',39679615,'Stan Schroeder','Sauer','2014-06-08',1,7),(7,'Ratke Inc',64061615,'Dr. Lily Reichel I','Stokes','2016-01-09',1,5),(8,'Ratke Inc',76885084,'Dr. Graham Beahan Sr.','Boyer','1993-04-27',1,5),(9,'Zemlak-O\'Conner',80755533,'Icie Harris','Purdy','2005-10-04',1,4),(10,'Klein, Gutmann and Emard',78455358,'Nestor Rutherford','Hackett','1980-10-02',1,10),(11,'Zemlak-O\'Conner',38192937,'Dr. Prince Anderson I','Anderson','1973-06-20',1,4),(12,'Kreiger, Collins and Gorczany',50480706,'Dr. Susan Parker','Haag','1978-12-11',1,1),(13,'Witting, Schinner and Hane',59651619,'Mr. Ward Braun','Bode','2002-04-06',1,6),(14,'Kreiger, Collins and Gorczany',45982629,'Emery Koepp','Bruen','1981-10-12',1,1),(15,'Ratke Inc',85760986,'Reanna Predovic','Lueilwitz','1983-07-27',1,5),(16,'Nicolas PLC',45044305,'Akeem Cronin','West','2003-06-15',1,8),(17,'Klein, Gutmann and Emard',69187792,'Stephon Schoen','Quitzon','1979-08-29',1,10),(18,'Carter PLC',20090331,'Amir Jenkins','Bernier','2005-01-03',1,9),(19,'Ratke Inc',21746144,'Rosalyn Marvin','Weissnat','2013-08-28',1,5),(20,'Keebler, Hessel and Dibbert',59585696,'Prof. Eladio Kling DVM','Baumbach','1986-10-13',1,3),(21,'Keebler, Hessel and Dibbert',62457617,'Prof. Dianna Gerlach','Bins','2000-11-08',1,3),(22,'Carroll-Bode',98310952,'Mr. Camren Herman V','Bode','1992-12-27',1,2),(23,'Keebler, Hessel and Dibbert',45300437,'Americo Dickinson Sr.','Bogan','1981-08-15',1,3),(24,'Pouros, Homenick and Hackett',21139669,'Amelia Stanton','Turner','1982-01-31',1,7),(25,'Carter PLC',42523852,'Dr. Heather Wilderman','Steuber','2006-10-29',1,9),(26,'Nicolas PLC',90341335,'Titus Johnston','O\'Reilly','2007-03-23',1,8),(27,'Ratke Inc',33911043,'Mr. Adonis Bogisich','Schultz','1987-11-17',1,5),(28,'Carter PLC',1600521,'Mrs. Gabrielle Schroeder MD','Labadie','2011-08-05',1,9),(29,'Keebler, Hessel and Dibbert',31131683,'Dr. Dimitri Kuhic MD','Haag','1971-12-23',1,3),(30,'Pouros, Homenick and Hackett',22734064,'Miss Providenci Bashirian','Muller','2006-01-16',1,7),(31,'Nicolas PLC',49476653,'Selmer Lindgren','Ernser','2007-07-10',1,8),(32,'Klein, Gutmann and Emard',75757729,'Ms. Roselyn Hayes','Cronin','1971-11-04',1,10),(33,'Kreiger, Collins and Gorczany',41787024,'Miss Noelia Jacobi PhD','Ortiz','1977-08-04',1,1),(34,'Carroll-Bode',88284912,'Ahmad Pollich','Boyle','1997-11-01',1,2),(35,'Nicolas PLC',52629762,'Prof. Jedediah Berge I','Kutch','1990-03-27',1,8),(36,'Pouros, Homenick and Hackett',26550529,'Damian O\'Kon','Kuhn','1978-05-12',1,7),(37,'Klein, Gutmann and Emard',76909801,'Estell Fisher I','Rosenbaum','1993-05-10',1,10),(38,'Ratke Inc',18882415,'Edwardo Dickinson','Parisian','1976-05-12',1,5),(39,'Klein, Gutmann and Emard',68047976,'Cara Rau','Abbott','1979-09-07',1,10),(40,'Carroll-Bode',86848958,'Adele Bins IV','Gleichner','1990-08-17',1,2),(41,'Kreiger, Collins and Gorczany',41647315,'Wilhelmine Braun DDS','Abshire','2010-12-25',1,1),(42,'Klein, Gutmann and Emard',92225908,'Bria McLaughlin','Conn','2013-01-20',1,10),(43,'Keebler, Hessel and Dibbert',62950749,'Buddy Davis','Lockman','1983-03-03',1,3),(44,'Carter PLC',55684981,'Elmo Connelly','Mante','1985-07-24',1,9),(45,'Klein, Gutmann and Emard',6175178,'Prof. Martin Abernathy MD','Hirthe','2000-07-04',1,10),(46,'Witting, Schinner and Hane',36636961,'Prof. Lewis Fisher I','Hintz','2016-06-12',1,6),(47,'Ratke Inc',434036,'Dr. Gennaro Monahan Sr.','Rosenbaum','1994-11-28',1,5),(48,'Pouros, Homenick and Hackett',17832775,'Lyda Braun','D\'Amore','1995-01-21',1,7),(49,'Keebler, Hessel and Dibbert',50663203,'Sadye Mitchell','Deckow','1983-12-12',1,3),(50,'Klein, Gutmann and Emard',94665891,'Mertie Hilpert','Barrows','2016-04-28',1,10);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-28 23:49:30
