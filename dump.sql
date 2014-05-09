-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: e_development
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.14.04.1

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
-- Dumping data for table animais
--


/*!40000 ALTER TABLE animais DISABLE KEYS */;
INSERT INTO animais VALUES (1,'a','1',1,1,1,'2014-03-19 18:22:50','2014-03-19 18:22:50'),(2,'b','2',1,1,1,'2014-03-20 15:41:29','2014-03-20 15:41:29');
/*!40000 ALTER TABLE animais ENABLE KEYS */;


--
-- Dumping data for table cios
--


/*!40000 ALTER TABLE cios DISABLE KEYS */;
/*!40000 ALTER TABLE cios ENABLE KEYS */;


--
-- Dumping data for table classificacoes
--


/*!40000 ALTER TABLE classificacoes DISABLE KEYS */;
INSERT INTO classificacoes VALUES (1,'Leitera','2014-03-19 18:21:59','2014-03-19 18:21:59');
/*!40000 ALTER TABLE classificacoes ENABLE KEYS */;


--
-- Dumping data for table coberturas
--


/*!40000 ALTER TABLE coberturas DISABLE KEYS */;
/*!40000 ALTER TABLE coberturas ENABLE KEYS */;


--
-- Dumping data for table exames
--


/*!40000 ALTER TABLE exames DISABLE KEYS */;
/*!40000 ALTER TABLE exames ENABLE KEYS */;


--
-- Dumping data for table imagens
--


/*!40000 ALTER TABLE imagens DISABLE KEYS */;
/*!40000 ALTER TABLE imagens ENABLE KEYS */;


--
-- Dumping data for table informacoes
--


/*!40000 ALTER TABLE informacoes DISABLE KEYS */;
/*!40000 ALTER TABLE informacoes ENABLE KEYS */;


--
-- Dumping data for table medicamentos
--


/*!40000 ALTER TABLE medicamentos DISABLE KEYS */;
INSERT INTO medicamentos VALUES (1,'nao',1,'2014-03-20 17:08:49','2014-03-20 17:08:49');
/*!40000 ALTER TABLE medicamentos ENABLE KEYS */;


--
-- Dumping data for table nascimentos
--


/*!40000 ALTER TABLE nascimentos DISABLE KEYS */;
/*!40000 ALTER TABLE nascimentos ENABLE KEYS */;


--
-- Dumping data for table permissoes
--


/*!40000 ALTER TABLE permissoes DISABLE KEYS */;
/*!40000 ALTER TABLE permissoes ENABLE KEYS */;


--
-- Dumping data for table pesagens
--


/*!40000 ALTER TABLE pesagens DISABLE KEYS */;
INSERT INTO pesagens VALUES (7,300,'2014-03-20',1,'2014-03-20 03:03:46','2014-03-20 03:03:46'),(8,500,'2014-03-20',1,'2014-03-20 03:06:24','2014-03-20 03:06:24'),(9,1000,'2014-03-20',1,'2014-03-20 03:16:59','2014-03-20 03:16:59'),(11,1500,'2014-03-20',1,'2014-03-20 13:53:00','2014-03-20 13:53:00'),(12,5000,'2014-03-20',1,'2014-03-20 13:58:40','2014-03-20 13:58:40'),(25,10000,'2014-03-20',1,'2014-03-20 15:38:36','2014-03-20 15:38:36'),(26,15000,'2014-03-20',1,'2014-03-20 15:39:29','2014-03-20 15:39:29'),(28,100,'2014-03-20',2,'2014-03-20 15:41:48','2014-03-20 15:41:48'),(29,200,'2014-03-20',2,'2014-03-20 15:43:48','2014-03-20 15:43:48'),(30,300,'2014-03-20',2,'2014-03-20 15:45:37','2014-03-20 15:45:37'),(31,700,'2014-03-20',1,'2014-03-20 17:52:24','2014-03-20 17:52:24');
/*!40000 ALTER TABLE pesagens ENABLE KEYS */;


--
-- Dumping data for table propriedades
--


/*!40000 ALTER TABLE propriedades DISABLE KEYS */;
INSERT INTO propriedades VALUES (1,'anderson','2014-03-19 18:22:38','2014-03-19 18:22:38');
/*!40000 ALTER TABLE propriedades ENABLE KEYS */;


--
-- Dumping data for table racas
--


/*!40000 ALTER TABLE racas DISABLE KEYS */;
INSERT INTO racas VALUES (1,'vaca','2014-03-19 18:22:13','2014-03-19 18:22:13');
/*!40000 ALTER TABLE racas ENABLE KEYS */;


--
-- Dumping data for table schema_migrations
--


/*!40000 ALTER TABLE schema_migrations DISABLE KEYS */;
INSERT INTO schema_migrations VALUES ('20140314182746'),('20140314182749'),('20140314182751'),('20140314182753'),('20140314182755'),('20140314182757'),('20140314182759'),('20140314182801'),('20140314182804'),('20140314182806'),('20140314182808'),('20140314182810'),('20140314182812'),('20140314182815'),('20140314182817'),('20140314182819'),('20140314182821'),('20140314182823'),('20140314230118'),('20140317225526');
/*!40000 ALTER TABLE schema_migrations ENABLE KEYS */;


--
-- Dumping data for table tipo_exames
--


/*!40000 ALTER TABLE tipo_exames DISABLE KEYS */;
INSERT INTO tipo_exames VALUES (1,'seila','2014-03-20 16:43:33','2014-03-20 16:43:33'),(2,'sdajdsa','2014-03-20 16:45:17','2014-03-20 16:45:17');
/*!40000 ALTER TABLE tipo_exames ENABLE KEYS */;


--
-- Dumping data for table tipo_medicamentos
--


/*!40000 ALTER TABLE tipo_medicamentos DISABLE KEYS */;
INSERT INTO tipo_medicamentos VALUES (1,'nao sei','2014-03-20 17:08:34','2014-03-20 17:08:34');
/*!40000 ALTER TABLE tipo_medicamentos ENABLE KEYS */;


--
-- Dumping data for table tipo_vacinas
--


/*!40000 ALTER TABLE tipo_vacinas DISABLE KEYS */;
INSERT INTO tipo_vacinas VALUES (1,'seila','2014-03-20 17:08:13','2014-03-20 17:08:13');
/*!40000 ALTER TABLE tipo_vacinas ENABLE KEYS */;


--
-- Dumping data for table users
--


/*!40000 ALTER TABLE users DISABLE KEYS */;
INSERT INTO users VALUES (1,'andersonodilo@hotmail.com','$2a$10$Jqr40jzvQT5bu8gaX68A1OTx57qYZkfScE1r.BoBlTwVWQ/RXz8W6',NULL,NULL,NULL,15,'2014-05-09 00:53:43','2014-05-09 00:39:25','127.0.0.1','127.0.0.1','2014-03-19 18:21:12','2014-05-09 00:53:43',false);
/*!40000 ALTER TABLE users ENABLE KEYS */;


--
-- Dumping data for table usuarios
--


/*!40000 ALTER TABLE usuarios DISABLE KEYS */;
/*!40000 ALTER TABLE usuarios ENABLE KEYS */;


--
-- Dumping data for table vacinas
--


/*!40000 ALTER TABLE vacinas DISABLE KEYS */;
INSERT INTO vacinas VALUES (1,1,1,2,'2014-04-20','2014-03-20 17:13:34','2014-03-20 17:13:34');
/*!40000 ALTER TABLE vacinas ENABLE KEYS */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-08 22:02:04
