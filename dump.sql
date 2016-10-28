-- MySQL dump 10.13  Distrib 5.6.14, for Linux (i686)
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `films` (
  `movieID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `Genre` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`movieID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Lolita','Drama'),(2,'The Shining','Horror'),(3,'Enemies at the gates','war'),(4,'The tiger and the snow','Romance'),(5,'Cindrella','Animation'),(6,'The Terminator','Action'),(7,'L.A. Confidential','Suspence'),(8,'Sleepless in Seattle','Romance'),(9,'When Harry met Sally','comdey'),(10,'The wizard of Oz','Musical'),(11,'Shutter Island','Thriller'),(12,'The ring','Horror'),(13,'Titanic','Romance'),(14,'Bourne Identity','Action'),(15,'Alien','Sci-Fi'),(16,'Pulp Fiction','Crime');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast`
--

DROP TABLE IF EXISTS `cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cast` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `star` varchar(50) DEFAULT NULL,
  `role` varchar(32) DEFAULT NULL,
  `movie_ref` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `movie_ref` (`movie_ref`),
  CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`movie_ref`) REFERENCES `films` (`movieID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast`
--

LOCK TABLES `cast` WRITE;
/*!40000 ALTER TABLE `cast` DISABLE KEYS */;
INSERT INTO `cast` VALUES (1,'Dominique Swain','lead',1),(2,'Kim Basinger','support',7),(3,'Tom Hanks','lead',8),(4,'Julia Stiles','support',14),(5,'Winona Ryder','support',15),(6,'Jude Law','lead',3),(7,'Auma Therman ','lead',16),(8,'Shelley Duvall','support',2),(9,'Jean reno','support',4),(10,'Judy Garland','lead',10),(11,'Leonardo Dicaprio','lead',11),(12,'Frank Langella','support',1),(13,'Meg Ryan','lead',9),(14,'Naomi Watts','lead',12),(15,'Ellen Degeneres','lead',5),(16,'Linda Hamilton','lead',6),(17,'Arnold Schwarzengger','lead',6),(18,'Bill Paxton','support',6),(20,'Jeremy Irons','lead',1),(21,'Meg Ryan','lead',8);
/*!40000 ALTER TABLE `cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `production` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `production_company` varchar(50) DEFAULT NULL,
  `release_date` int(11) DEFAULT NULL,
  `movie` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `movie` (`movie`),
  CONSTRAINT `production_ibfk_1` FOREIGN KEY (`movie`) REFERENCES `films` (`movieID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES (1,'Paramount Pictures',2010,11),(2,'Pathe',1997,1),(3,'Melampo Cinematografica',2005,4),(4,'Warner Bros.',1980,2),(5,'Dream Works',2002,12),(6,'Paramount Pictures',2001,3),(7,'Columbia Pictures',1989,9),(8,'Pixar',2003,5),(9,'Hemdale Film Corporation',1984,6),(10,'Paramount Pictures',1997,13),(11,'Miramax',1994,16),(12,'TriStar Pictures',1993,8),(13,'Sony picture intertainment',1987,7),(14,'StarDust pictures',1977,10),(15,' Wind intertainment',1998,14),(16,'Sony picture intertainment',1987,7),(17,'Sony picture intertainment',1987,7);
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-28 13:10:10
