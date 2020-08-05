-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: veva1012
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.11-MariaDB

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
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `deleted-_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Absolut',NULL),(2,'Belvedere',NULL),(3,'Andes',NULL),(4,'Corona',NULL),(5,'Heineken',NULL),(6,'Patagonia',NULL),(7,'Branca',NULL),(8,'1882',NULL),(9,'Ruca Malen',NULL),(10,'Terrazas',NULL),(11,'Trumpeter',NULL),(12,'Bombay',NULL),(13,'Beefeater',NULL),(14,'Palido Montero',NULL),(15,'Cacique',NULL),(16,'Havana Club',NULL),(17,'Jose Cuervo',NULL),(18,'Gran Patron',NULL),(19,'Moet & Chandon',NULL),(20,'Salentein',NULL),(21,'Baileys',NULL),(22,'Cointreau',NULL),(23,'Jameson',NULL),(24,'Johnnie Walker',NULL),(25,'Jagermeister',NULL);
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `descuento` int(11) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `unidades_disponibles` bigint(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_marcas_products_idx` (`marca_id`),
  KEY `fk_tipos_products_idx` (`tipo_id`),
  KEY `fk_user_products_idx` (`user_id`),
  CONSTRAINT `fk_marcas_products` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipos_products` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_products` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Vino',10,6,'350',35,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/terrazas-de-los-andes-5.jpg',NULL,NULL),(2,'Vodka',2,NULL,'1230',20,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/vodka2.jpg',NULL,NULL),(3,'Cerveza',3,3,'120',30,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/andes.jpg',NULL,NULL),(4,'Fernet',7,9,'750',40,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/fernando.jpg',NULL,NULL),(5,'Tequila',17,NULL,'1110',10,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/josecuervo.jpg',NULL,NULL),(7,'Gin',12,NULL,'1250',30,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/gin.jpg',NULL,NULL),(8,'Ron',14,NULL,'870',15,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/palido montero.jpg',NULL,NULL),(9,'Champagne',20,5,'750',30,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/salentein.jpg',NULL,NULL),(10,'Licor',22,NULL,'1730',20,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/cointreau.jpg',NULL,NULL),(11,'Whisky',24,10,'1570',30,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/whisky.jpg',NULL,NULL),(12,'Jagermeister',25,NULL,'1630',25,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, consequuntur',NULL,'/images/Jagermeister.jpg',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos`
--

DROP TABLE IF EXISTS `tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos`
--

LOCK TABLES `tipos` WRITE;
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` VALUES (1,'Roja','0000-00-00 00:00:00.000000'),(2,'Negra',NULL),(3,'Rubia',NULL),(4,'Brut',NULL),(5,'Extra Brut',NULL),(6,'Malbec',NULL),(7,'Rosee',NULL),(8,'Con Miel',NULL),(9,'Tradicional',NULL),(10,'Azul',NULL);
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  `deleted_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Josephine','Denzilow','jdenzilow0@bbb.org','Pfe1NwtjJ','https://robohash.org/eaquedolorevoluptas.jpg?size=',0,NULL),(2,'Augustine','Frost','afrost1@g.co','Hi7fxrjxfd6','https://robohash.org/doloresveniamatque.jpg?size=5',0,NULL),(3,'Elijah','Blatherwick','eblatherwick2@gizmodo.com','StRB92lfCB','https://robohash.org/velnonvelit.jpg?size=50x50&se',0,NULL),(4,'Eduardo','Flewitt','eflewitt3@hostgator.com','5O7ntjnd1Pb','https://robohash.org/ipsaquiset.jpg?size=50x50&set',0,NULL),(5,'Kenn','Normaville','knormaville4@tinyurl.com','TAvUtr3','https://robohash.org/etidut.jpg?size=50x50&set=set',0,NULL),(6,'Guillermo','Toland','gtoland5@ox.ac.uk','BYiNR8co','https://robohash.org/omniseaqueest.jpg?size=50x50&',0,NULL),(7,'Mile','Conradsen','mconradsen6@jalbum.net','tIh5774gSH','https://robohash.org/possimuslaboriosamnesciunt.jp',0,NULL),(8,'Carolann','Baswall','cbaswall7@china.com.cn','urvKYzwpr','https://robohash.org/impeditvoluptatumcorporis.jpg',0,NULL),(9,'Joe','Tristram','jtristram8@4shared.com','Pnu26D6GXTs1','https://robohash.org/doloremquequiaut.jpg?size=50x',0,NULL),(10,'Rosabel','Synke','rsynke9@army.mil','g41R7PsKc8','https://robohash.org/nesciuntrerumconsequatur.jpg?',0,NULL),(11,'Cord','Dyble','cdyblea@usa.gov','MPS3mGEHcIO','https://robohash.org/odiocorporisid.jpg?size=50x50',0,NULL),(12,'Flore','Findlay','ffindlayb@dropbox.com','vity4SUQQ','https://robohash.org/quiadoloribusquasi.jpg?size=5',0,NULL),(13,'Neala','Degg','ndeggc@google.cn','FqHbR1XzzNB','https://robohash.org/accusamusetest.jpg?size=50x50',0,NULL),(14,'Callie','Nisby','cnisbyd@oracle.com','09By8xVFltN','https://robohash.org/voluptatesquidemvoluptatem.jp',0,NULL),(15,'Shawn','Moutray Read','smoutrayreade@skyrock.com','AddYJ1B9iE','https://robohash.org/debitisundeeum.jpg?size=50x50',0,NULL),(16,'Claire','Briscam','cbriscamf@yahoo.co.jp','j7pOJI2kyvgv','https://robohash.org/nihilquomolestiae.jpg?size=50',0,NULL),(17,'Pennie','Siveyer','psiveyerg@mysql.com','VZjvwHpmXD','https://robohash.org/undeautaccusamus.jpg?size=50x',0,NULL),(18,'Angelico','Flewan','aflewanh@theatlantic.com','8jnv3K9K','https://robohash.org/doloremnisiin.jpg?size=50x50&',0,NULL),(19,'Teresita','Kimm','tkimmi@elegantthemes.com','63cb5xkd','https://robohash.org/necessitatibusutea.jpg?size=5',0,NULL),(20,'Marnia','Ripsher','mripsherj@reuters.com','XE4UAfahQ','https://robohash.org/etexpeditareiciendis.jpg?size',0,NULL),(21,'Lind','Cumbers','lcumbersk@army.mil','EfIBv65MqwR','https://robohash.org/quidolorumsed.jpg?size=50x50&',0,NULL),(22,'Cesare','Cooksley','ccooksleyl@instagram.com','JVTv8u65','https://robohash.org/dolorestemporedignissimos.jpg',0,NULL),(23,'Audie','Bortolutti','abortoluttim@java.com','D2VXgKT','https://robohash.org/accusamusetdebitis.jpg?size=5',0,NULL),(24,'Willy','Hodcroft','whodcroftn@home.pl','j7dcsj6D','https://robohash.org/delectusnullaeligendi.jpg?siz',0,NULL),(25,'Sophey','Kegg','skeggo@businesswire.com','tailt04DTK51','https://robohash.org/suscipitquiavel.jpg?size=50x5',0,NULL),(27,'sofia','Dura','sofia.dv@gmail.com','$2a$10$QB3vkbDwX3svIho8rdtDkeJiGsIX3G55XU749m.6wydGDCePItaSy','avatar-1595434893517.jpg',1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-22 16:31:25
