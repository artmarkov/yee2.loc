-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: yii2artschool
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `auditory`
--

DROP TABLE IF EXISTS `auditory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditory` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `building_id` mediumint(8) unsigned NOT NULL,
  `cat_id` mediumint(8) unsigned DEFAULT NULL,
  `study_flag` tinyint(1) NOT NULL DEFAULT '0',
  `num` int(3) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `floor` varchar(32) NOT NULL,
  `area` float NOT NULL,
  `capacity` mediumint(3) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  `status` int(8) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `building_id` (`building_id`),
  CONSTRAINT `auditory_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `auditory_cat` (`id`),
  CONSTRAINT `auditory_ibfk_2` FOREIGN KEY (`building_id`) REFERENCES `auditory_building` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COMMENT='Аудитории школы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditory`
--

LOCK TABLES `auditory` WRITE;
/*!40000 ALTER TABLE `auditory` DISABLE KEYS */;
INSERT INTO `auditory` VALUES (1,1,9,1,0,'По классам','',0,0,'',43,10),(36,2,11,1,1,'Класс архитектуры','1',20.3,10,'',0,10),(37,2,11,1,10,'Класс скульптуры','1',20,10,'Художественная керамика',0,10),(38,2,11,1,11,'ИЗО','1',20.1,12,'',0,10),(39,2,11,1,12,'ИЗО','1',19.9,12,'',0,10),(40,2,11,1,2,'Класс развития','1',20.3,6,'Мандариновое детство',0,10),(41,2,11,1,3,'Класс развития','1',21.2,8,'Мандариновое детство',0,10),(42,2,11,1,4,'Класс развития','1',14.8,7,'Мандариновое детство',0,10),(43,2,11,0,5,'Администраторы','1',12.2,0,'',0,10),(44,2,11,0,6,'Учительская','1',12.3,0,'',0,10),(45,2,11,0,7,'Лаборатория','1',9.7,0,'Художественная керамика',0,10),(46,2,11,1,8,'ИЗО','1',21.1,12,'',0,10),(47,2,11,1,9,'ИЗО','1',14.8,8,'',0,10),(52,1,1,1,106,'Класс композиции','1',32.9,14,'',0,10),(53,1,1,1,107,'Класс скульптуры','1',31.9,14,'',0,10),(54,1,1,1,109,'Класс живописи','1',42,14,'',0,10),(55,1,1,1,110,'Класс живописи','1',35.8,14,'',0,10),(56,1,1,1,111,'Класс рисунка','1',40.9,14,'',0,10),(57,1,1,1,114,'Класс теоретических дисциплин','1',27.5,14,'',0,10),(58,1,1,1,115,'Класс теоретических дисциплин','1',39.6,14,'',0,10),(59,1,1,1,116,'Класс теоретических дисциплин','1',38.1,14,'',0,10),(60,1,1,1,117,'Хоровой класс','1',50.3,0,'Музыкальный фольклор',0,10),(61,1,1,0,119,'Художественный фонд','1',13.2,0,'',0,10),(62,1,1,1,120,'Класс теоретических дисциплин','1',25.5,14,'',0,10),(63,1,1,1,121,'Класс теоретических дисциплин','1',35.9,14,'',0,10),(64,1,2,1,103,'Малый зал','1',93.8,0,'',168,10),(65,1,3,1,201,'Кабинет директора','2',29,0,'',0,10),(66,1,1,1,205,'Класс индивидуальных занятий','2',29.6,0,'',0,10),(67,1,1,1,206,'Класс индивидуальных занятий','2',28.2,0,'Фортепиано',0,10),(68,1,1,1,207,'Класс индивидуальных занятий','2',26.7,0,'Фортепиано',0,10),(69,1,1,1,208,'Класс индивидуальных занятий','2',28,0,'Фортепиано',0,10),(70,1,1,1,209,'Класс индивидуальных занятий','2',27.9,0,'Фортепиано',0,10),(71,1,1,1,210,'Класс индивидуальных занятий','2',16.5,0,'Арфа',0,10),(72,1,1,1,211,'Класс индивидуальных занятий','2',21.2,0,'Фортепиано',0,10),(73,1,1,1,212,'Класс ансамбля','2',46.6,0,'Народные инструменты',0,10),(74,1,1,1,213,'Класс индивидуальных занятий','2',25.2,0,'Духовые инструменты',0,10),(75,1,1,1,214,'Класс индивидуальных занятий','2',25.7,0,'Духовые инструменты',0,10),(76,1,1,1,215,'Класс индивидуальных занятий','2',26.9,0,'Духовые инструменты',0,10),(77,1,1,1,216,'Класс ансамбля','2',30.2,0,'Струнные инструменты',0,10),(78,1,1,1,217,'Класс индивидуальных занятий','2',10.7,0,'',0,10),(79,1,1,1,220,'Класс индивидуальных занятий','2',15.3,0,'',0,10),(81,1,1,1,219,'Класс индивидуальных занятий','2',12,0,'',0,10),(82,1,1,1,218,'Класс индивидуальных занятий','2',29.2,0,'',0,10),(83,1,1,1,221,'Класс духового оркестра','2',64.9,0,'',0,10),(84,1,3,0,222,'Инженерная служба','2',19.3,0,'',0,10),(85,1,3,0,104,'Кабинет зам. директора по АХР','1',23,0,'',0,10),(86,1,3,0,105,'Кабинет зам. директора','1',36,0,'',0,10),(87,1,3,0,122,'Кабинет зам. директора по кадрам','1',16,0,'',0,10),(88,1,3,0,202,'Кабинет зам. директора по оргвопросам','2',12,0,'',0,10),(89,1,3,0,203,'Кабинет главного бухгалтера','2',16,0,'',0,10),(90,1,3,0,204,'Бухгалтерия','2',37,0,'',0,10),(91,1,2,1,302,'Большой Зал','3',362,283,'',105,10),(92,1,1,1,303,'Хоровой класс','3',85,0,'',0,10),(93,1,1,1,304,'Класс индивидуальных занятий','3',23.9,0,'Фортепиано',0,10),(94,1,1,1,305,'Класс индивидуальных занятий','3',23.8,0,'Фортепиано',0,10),(95,1,1,1,306,'Класс индивидуальных занятий','3',23.1,0,'Фортепиано',0,10),(96,1,3,1,312,'Компьютерный класс','3',37.3,14,'',0,10),(97,1,3,0,313,'Библиотека','3',19.6,0,'',0,10),(98,1,1,1,314,'Класс индивидуальных занятий','3',15.8,0,'Вокал',0,10),(99,1,1,1,317,'Класс хореографии','3',85,0,'',0,10),(100,1,1,1,333,'Класс индивидуальных занятий','3',20,0,'Фортепиано',0,10),(101,1,1,1,336,'Класс хореографии','3',77.9,0,'',0,10),(102,1,1,1,350,'Класс индивидуальных занятий','3',20,0,'',0,10),(103,1,1,1,351,'Класс индивидуальных занятий','3',15.9,0,'Народные инструменты',0,10),(104,1,1,1,358,'Класс индивидуальных занятий','3',11.3,0,'',0,10),(105,1,1,1,357,'Класс индивидуальных занятий','3',12.1,0,'',0,10),(106,1,1,1,356,'Класс индивидуальных занятий','3',15,0,'Фортепиано',0,10),(107,1,1,1,355,'Класс индивидуальных занятий','3',10,0,'',0,10),(108,1,1,1,347,'Класс эстрадно-джазового оркестра','3',37.7,0,'',0,10),(109,1,1,1,346,'Класс ударных инструментов','3',26.7,0,'',0,10),(110,1,4,0,401,'Помещение множительной техники','4',0,0,'',0,10),(111,1,4,0,232,'Серверная','2',0,0,'',0,10),(112,1,7,1,102,'Вестибюль 1-го этажа','1',0,0,'',0,10),(113,1,7,0,101,'Помещение охраны','1',0,0,'',0,10),(114,1,7,1,200,'Вестибюль 2-го этажа','2',0,0,'',0,10),(115,1,7,1,301,'Вестибюль 3-го этажа','3',0,0,'Музей',0,10),(116,1,10,0,515,'Мастерская','0',0,0,'',0,10),(117,1,8,0,112,'Буфет','1',0,0,'',0,10),(118,1,7,1,141,'Холл 1-го этажа','1',0,0,'Для выставок ИЗО',0,10),(119,1,7,1,241,'Холл 2-го этажа','2',0,0,'Для выставок ИЗО',0,10),(120,1,7,1,332,'Холл 3-го этажа','3',0,0,'Для высавок ИЗО',0,10),(121,1,3,0,503,'Массажный кабинет','0',0,0,'',0,10),(122,1,2,0,501,'Тренажерный зал','0',81.1,0,'',0,10),(123,1,3,0,502,'Тренерская','0',6.1,0,'',0,10),(124,1,3,0,513,'Кабинет','0',0,0,'',0,10),(125,1,4,0,511,'Тоновая студии звукозаписи','0',0,0,'',0,10),(126,1,4,0,512,'Студия звукозаписи','0',0,0,'',0,10),(127,1,10,0,514,'Мастерская','0',0,0,'',0,10),(128,1,5,0,516,'Складское помещение','0',0,0,'',0,10),(129,1,5,0,517,'Складское помещение','0',0,0,'',0,10),(130,1,7,0,0,'Лестничные марши и пролеты 1-3 эт','',0,0,'',0,10),(131,1,7,0,23,'ИЗО','1',0,20,'Холл',0,10),(132,1,4,0,401,'Помещение звукооператора','4',0,2,'',0,10);
/*!40000 ALTER TABLE `auditory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditory_building`
--

DROP TABLE IF EXISTS `auditory_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditory_building` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `slug` varchar(64) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Здания школы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditory_building`
--

LOCK TABLES `auditory_building` WRITE;
/*!40000 ALTER TABLE `auditory_building` DISABLE KEYS */;
INSERT INTO `auditory_building` VALUES (1,'Основное здание','ОЗ','Митинская ул. д.47, кор.1'),(2,'Филиал','Ф','Пятницкое шоссе, д. 40');
/*!40000 ALTER TABLE `auditory_building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditory_cat`
--

DROP TABLE IF EXISTS `auditory_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditory_cat` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(256) NOT NULL,
  `study_flag` tinyint(1) NOT NULL DEFAULT '0',
  `order` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='false=условный';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditory_cat`
--

LOCK TABLES `auditory_cat` WRITE;
/*!40000 ALTER TABLE `auditory_cat` DISABLE KEYS */;
INSERT INTO `auditory_cat` VALUES (1,'Аудитории и классы','',1,0),(2,'Залы','',1,0),(3,'Кабинеты','',1,0),(4,'Служебные помещения','',0,0),(5,'Складские помещения','',0,0),(6,'Подсобные помещения','',0,0),(7,'Коридоры и холлы','',1,0),(8,'Другие помещения','',0,0),(9,'Условные классы','',1,0),(10,'Технические помещения','',0,0),(11,'Филиал школы','помещения Художественного отделения',1,0);
/*!40000 ALTER TABLE `auditory_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('author',1,1534834511),('author',3,1534834694),('author',4,1534863620),('backend_administrator',1,1534834511),('backend_administrator',4,1534863620),('moderator',1,1534834511),('moderator',2,1534834614),('moderator',4,1534863620),('user',1,1534834511),('user',2,1534863921),('user',4,1534863620);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `auth_item_type` (`type`),
  KEY `fk_auth_item_table_rule_name` (`rule_name`),
  KEY `fk_auth_item_table_group_code` (`group_code`),
  CONSTRAINT `fk_auth_item_table_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_auth_item_table_rule_name` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('/admin',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/#mediafile',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/*',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/comment/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/bulk-activate',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/bulk-deactivate',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/bulk-spam',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/bulk-trash',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/toggle-attribute',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/comment/default/view',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/db-manager/default/index',3,NULL,NULL,NULL,NULL,NULL,NULL),('/admin/Db/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/Db/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/Db/export',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/Db/import',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/Db/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/default/*',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/eav/*',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-option/*',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-option/bulk-delete',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-option/create',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-option/delete',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-option/grid-page-size',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-option/grid-sort',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-option/index',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-option/toggle-attribute',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-option/update',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-type/*',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-type/bulk-delete',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-type/create',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-type/delete',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-type/grid-page-size',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-type/grid-sort',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-type/index',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-type/toggle-attribute',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute-type/update',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute/*',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute/bulk-delete',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute/create',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute/delete',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute/grid-page-size',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute/grid-sort',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute/index',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute/toggle-attribute',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/attribute/update',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/default/*',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/default/get-attributes',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/default/get-categories',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/default/index',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/default/set-attributes',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/entity-model/*',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/entity-model/bulk-delete',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/entity-model/create',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/entity-model/delete',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/entity-model/grid-page-size',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/entity-model/grid-sort',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/entity-model/index',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/entity-model/toggle-attribute',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/eav/entity-model/update',3,NULL,NULL,NULL,NULL,1440180000,1440180000),('/admin/measure/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/measure/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/measure/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/measure/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/measure/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/measure/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/measure/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/measure/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/measure/view',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/album/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/album/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/album/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/album/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/album/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/album/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/album/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/album/toggle-attribute',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/album/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/category/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/category/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/category/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/category/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/category/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/category/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/category/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/category/toggle-attribute',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/category/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/default/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/default/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/default/settings',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/manage/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/manage/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/manage/info',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/manage/resize',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/manage/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/manage/upload',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/media/manage/uploader',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/default/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/default/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/default/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/default/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/default/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/default/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/default/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/default/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/default/view',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/link/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/link/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/link/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/link/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/link/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/link/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/link/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/link/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/menu/link/view',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/bulk-activate',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/bulk-deactivate',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/toggle-attribute',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/page/default/view',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/post/*',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/category/*',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/category/bulk-delete',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/category/create',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/category/delete',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/category/grid-page-size',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/category/grid-sort',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/category/index',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/category/toggle-attribute',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/category/update',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/*',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/bulk-activate',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/bulk-deactivate',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/bulk-delete',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/create',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/delete',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/grid-page-size',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/grid-sort',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/index',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/toggle-attribute',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/update',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/default/view',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/tag/bulk-delete',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/tag/create',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/tag/delete',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/tag/grid-page-size',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/tag/grid-sort',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/tag/index',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/tag/toggle-attribute',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/post/tag/update',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/seo/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/seo/default/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/seo/default/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/seo/default/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/seo/default/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/seo/default/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/seo/default/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/seo/default/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/seo/default/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/settings/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/settings/cache/flush',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/settings/default/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/settings/default/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/settings/reading/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/site/index',3,NULL,NULL,NULL,NULL,1530777695,1530777695),('/admin/translation/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/translation/default/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/translation/default/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/translation/source/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/translation/source/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/translation/source/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/translation/source/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/bulk-activate',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/bulk-deactivate',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/change-password',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/toggle-attribute',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/default/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission-groups/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission-groups/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission-groups/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission-groups/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission-groups/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission-groups/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission-groups/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission-groups/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/refresh-routes',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/set-child-permissions',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/set-child-routes',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/permission/view',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/bulk-delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/create',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/delete',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/set-child-permissions',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/set-child-roles',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/update',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/role/view',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/user-permission/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/user-permission/set',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/user-permission/set-roles',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/visit-log/*',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/visit-log/grid-page-size',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/visit-log/grid-sort',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/visit-log/index',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/admin/user/visit-log/view',3,NULL,NULL,NULL,NULL,1530777696,1530777696),('/measure/*',3,NULL,NULL,NULL,NULL,NULL,NULL),('/measure/bulk-delete',3,NULL,NULL,NULL,NULL,NULL,NULL),('/measure/create',3,NULL,NULL,NULL,NULL,NULL,NULL),('/measure/delete',3,NULL,NULL,NULL,NULL,NULL,NULL),('/measure/grid-page-size',3,NULL,NULL,NULL,NULL,NULL,NULL),('/measure/grid-sort',3,NULL,NULL,NULL,NULL,NULL,NULL),('/measure/index',3,NULL,NULL,NULL,NULL,NULL,NULL),('/measure/update',3,NULL,NULL,NULL,NULL,NULL,NULL),('/measure/view',3,NULL,NULL,NULL,NULL,NULL,NULL),('/option/*',3,NULL,NULL,NULL,NULL,NULL,NULL),('/option/bulk-delete',3,NULL,NULL,NULL,NULL,NULL,NULL),('/option/create',3,NULL,NULL,NULL,NULL,NULL,NULL),('/option/delete',3,NULL,NULL,NULL,NULL,NULL,NULL),('/option/grid-page-size',3,NULL,NULL,NULL,NULL,NULL,NULL),('/option/grid-sort',3,NULL,NULL,NULL,NULL,NULL,NULL),('/option/index',3,NULL,NULL,NULL,NULL,NULL,NULL),('/option/update',3,NULL,NULL,NULL,NULL,NULL,NULL),('/option/view',3,NULL,NULL,NULL,NULL,NULL,NULL),('assignRolesToUsers',2,'Assign Roles To Users',NULL,'userManagement',NULL,1530777696,1530777696),('author',1,'Автор',NULL,NULL,NULL,1530777695,1530777695),('backend_administrator',1,'Администратор backend',NULL,NULL,NULL,1530777695,1538059174),('bindUserToIp',2,'Bind User To IP',NULL,'userManagement',NULL,1530777696,1530777696),('BulkDeleteMeasure',2,'Bulk Delete Measure',NULL,'system',NULL,1534937206,1534937269),('BulkDeleteOption',2,'Bulk Delete Option',NULL,'system',NULL,1534937206,1534937269),('changeGeneralSettings',2,'Change General Settings',NULL,'settings',NULL,1530777696,1530777696),('changeOwnPassword',2,'Change Own Password',NULL,'userCommonPermissions',NULL,1530777695,1530777695),('changeReadingSettings',2,'Change Reading Settings',NULL,'settings',NULL,1530777696,1530777696),('changeUserPassword',2,'Change User Password',NULL,'userManagement',NULL,1530777696,1530777696),('commonPermission',2,'Common Permission',NULL,'userCommonPermissions',NULL,1530777695,1530777695),('createComments',2,'Create Comments',NULL,'commentManagement',NULL,1530777696,1530777696),('createEavRecords',2,'Create EAV records',NULL,'eavManagement',NULL,1440180000,1440180000),('createMeasure',2,'Create Measure',NULL,'system',NULL,1534857665,1534857665),('createMediaAlbums',2,'Create Media Albums',NULL,'mediaManagement',NULL,1530777696,1530777696),('createMediaCategories',2,'Create Media Categories',NULL,'mediaManagement',NULL,1530777696,1530777696),('createMenuLinks',2,'Create Menu Links',NULL,'menuManagement',NULL,1530777696,1530777696),('createMenus',2,'Create Menus',NULL,'menuManagement',NULL,1530777696,1530777696),('createOption',2,'Create Option',NULL,'system',NULL,1534857665,1534857665),('createPages',2,'Create Pages',NULL,'pageManagement',NULL,1530777696,1530777696),('createPostCategories',2,'Create Post Categories',NULL,'postManagement',NULL,1530777695,1530777695),('createPosts',2,'Create Posts',NULL,'postManagement',NULL,1530777695,1530777695),('createPostTags',2,'Create Post Tags',NULL,'postManagement',NULL,1530777695,1530777695),('createSeo',2,'Create SEO Records',NULL,'seoManagement',NULL,1530777696,1530777696),('createSourceMessages',2,'Create Source Messages',NULL,'translations',NULL,1530777696,1530777696),('createUsers',2,'Create Users',NULL,'userManagement',NULL,1530777696,1530777696),('deleteComments',2,'Delete Comments',NULL,'commentManagement',NULL,1530777696,1530777696),('deleteDb',2,'Delete Db Records',NULL,'dbManagement',NULL,1530777696,1530777696),('deleteEavRecords',2,'Delete EAV records',NULL,'eavManagement',NULL,1440180000,1440180000),('deleteMeasure',2,'Delete Measure',NULL,'system',NULL,1534857716,1534857716),('deleteMedia',2,'Delete Media',NULL,'mediaManagement',NULL,1530777696,1530777696),('deleteMediaAlbums',2,'Delete Media Albums',NULL,'mediaManagement',NULL,1530777696,1530777696),('deleteMediaCategories',2,'Delete Media Categories',NULL,'mediaManagement',NULL,1530777696,1530777696),('deleteMenuLinks',2,'Delete Menu Links',NULL,'menuManagement',NULL,1530777696,1530777696),('deleteMenus',2,'Delete Menus',NULL,'menuManagement',NULL,1530777696,1530777696),('deleteOption',2,'Delete Option',NULL,'system',NULL,1534857716,1534857716),('deletePages',2,'Delete Pages',NULL,'pageManagement',NULL,1530777696,1530777696),('deletePostCategories',2,'Delete Post Categories',NULL,'postManagement',NULL,1530777695,1530777695),('deletePosts',2,'Delete Posts',NULL,'postManagement',NULL,1530777695,1530777695),('deletePostTags',2,'Delete Post Tags',NULL,'postManagement',NULL,1530777695,1530777695),('deleteSeo',2,'Delete SEO Records',NULL,'seoManagement',NULL,1530777696,1530777696),('deleteSourceMessages',2,'Delete Source Messages',NULL,'translations',NULL,1530777696,1530777696),('deleteUsers',2,'Delete Users',NULL,'userManagement',NULL,1530777696,1530777696),('department_head',1,'Руководитель отдела',NULL,NULL,NULL,1538053774,1538053774),('editComments',2,'Edit Comments',NULL,'commentManagement',NULL,1530777696,1530777696),('editEavRecords',2,'Edit EAV records',NULL,'eavManagement',NULL,1440180000,1440180000),('editMeasure',2,'Edit Measure',NULL,'system',NULL,1534759889,1534856833),('editMedia',2,'Edit Media',NULL,'mediaManagement',NULL,1530777696,1530777696),('editMediaAlbums',2,'Edit Media Albums',NULL,'mediaManagement',NULL,1530777696,1530777696),('editMediaCategories',2,'Edit Media Categories',NULL,'mediaManagement',NULL,1530777696,1530777696),('editMediaSettings',2,'Edit Media Settings',NULL,'mediaManagement',NULL,1530777696,1530777696),('editMenuLinks',2,'Edit Menu Links',NULL,'menuManagement',NULL,1530777696,1530777696),('editMenus',2,'Edit Menus',NULL,'menuManagement',NULL,1530777696,1530777696),('editOption',2,'Edit Option',NULL,'system',NULL,1534759889,1534856833),('editPages',2,'Edit Pages',NULL,'pageManagement',NULL,1530777696,1530777696),('editPostCategories',2,'Edit Post Categories',NULL,'postManagement',NULL,1530777695,1530777695),('editPosts',2,'Edit Posts',NULL,'postManagement',NULL,1530777695,1530777695),('editPostTags',2,'Edit Post Tags',NULL,'postManagement',NULL,1530777695,1530777695),('editSeo',2,'Edit SEO Records',NULL,'seoManagement',NULL,1530777696,1530777696),('editUserEmail',2,'Edit User Email',NULL,'userManagement',NULL,1530777696,1530777696),('editUsers',2,'Edit Users',NULL,'userManagement',NULL,1530777696,1530777696),('exportDb',2,'Export Db Records',NULL,'dbManagement',NULL,1530777696,1530777696),('flushCache',2,'Flush Cache',NULL,'settings',NULL,1530777696,1530777696),('frontend_administrator',1,'Администратор frontend',NULL,NULL,NULL,1538059203,1538059203),('fullMediaAccess',2,'Full Media Access',NULL,'mediaManagement',NULL,1530777696,1530777696),('fullMediaAlbumAccess',2,'Full Media Albums Access',NULL,'mediaManagement',NULL,1530777696,1530777696),('fullMediaCategoryAccess',2,'Full Media Categories Access',NULL,'mediaManagement',NULL,1530777696,1530777696),('fullMenuAccess',2,'Full Menu Access',NULL,'menuManagement',NULL,1530777696,1530777696),('fullMenuLinkAccess',2,'Full Menu Links Access',NULL,'menuManagement',NULL,1530777696,1530777696),('fullPageAccess',2,'Full Page Access',NULL,'pageManagement',NULL,1530777696,1530777696),('fullPostAccess',2,'Full Post Access',NULL,'postManagement',NULL,1530777695,1530777695),('fullPostCategoryAccess',2,'Full Post Categories Access',NULL,'postManagement',NULL,1530777695,1530777695),('fullPostTagAccess',2,'Full Post Tags Access',NULL,'postManagement',NULL,1530777696,1530777696),('fullSeoAccess',2,'Full SEO Records Access',NULL,'seoManagement',NULL,1530777696,1530777696),('importDb',2,'Import Db Records',NULL,'dbManagement',NULL,1530777696,1530777696),('main_administrator',1,'Главный администратор',NULL,NULL,NULL,1538059041,1538059041),('manageRolesAndPermissions',2,'Manage Roles And Permissions',NULL,'userManagement',NULL,1530777696,1530777696),('moderator',1,'Модератор',NULL,NULL,NULL,1530777695,1530777695),('parent',1,'Родитель',NULL,NULL,NULL,1538052472,1538052472),('staff',1,'Сотрудник',NULL,NULL,NULL,1538052397,1538052397),('student',1,'Ученик',NULL,NULL,NULL,1538052455,1538052455),('teacher',1,'Преподаватель',NULL,NULL,NULL,1538052436,1538052436),('updateImmutableSourceMessages',2,'Update Immutable Source Messages',NULL,'translations',NULL,1530777696,1530777696),('updateSourceMessages',2,'Update Source Messages',NULL,'translations',NULL,1530777696,1530777696),('updateTranslations',2,'Update Message Translations',NULL,'translations',NULL,1530777696,1530777696),('uploadMedia',2,'Upload Media',NULL,'mediaManagement',NULL,1530777696,1530777696),('user',1,'Пользователь',NULL,NULL,NULL,1530777695,1530777695),('viewComments',2,'View Comments',NULL,'commentManagement',NULL,1530777696,1530777696),('viewDashboard',2,'View Dashboard',NULL,'dashboard',NULL,1530777695,1530777695),('viewDb',2,'View Db Records',NULL,'dbManagement',NULL,1530777696,1530777696),('viewEavRecords',2,'View EAV records',NULL,'eavManagement',NULL,1440180000,1440180000),('viewMeasure',2,'View Measure',NULL,'system',NULL,1534856980,1534856980),('viewMedia',2,'View Media',NULL,'mediaManagement',NULL,1530777696,1530777696),('viewMediaAlbums',2,'View Media Albums',NULL,'mediaManagement',NULL,1530777696,1530777696),('viewMediaCategories',2,'View Media Categories',NULL,'mediaManagement',NULL,1530777696,1530777696),('viewMenuLinks',2,'View Menu Links',NULL,'menuManagement',NULL,1530777696,1530777696),('viewMenus',2,'View Menus',NULL,'menuManagement',NULL,1530777696,1530777696),('viewOption',2,'View Option',NULL,'system',NULL,1534856980,1534856980),('viewPages',2,'View Pages',NULL,'pageManagement',NULL,1530777696,1530777696),('viewPostCategories',2,'View Posts',NULL,'postManagement',NULL,1530777695,1530777695),('viewPosts',2,'View Posts',NULL,'postManagement',NULL,1530777695,1530777695),('viewPostTags',2,'View Tags',NULL,'postManagement',NULL,1530777695,1530777695),('viewRegistrationIp',2,'View Registration IP',NULL,'userManagement',NULL,1530777696,1530777696),('viewRolesAndPermissions',2,'View Roles And Permissions',NULL,'userManagement',NULL,1530777696,1530777696),('viewSeo',2,'View SEO Records',NULL,'seoManagement',NULL,1530777696,1530777696),('viewTranslations',2,'View Message Translations',NULL,'translations',NULL,1530777696,1530777696),('viewUserEmail',2,'View User Email',NULL,'userManagement',NULL,1530777696,1530777696),('viewUserRoles',2,'View User Roles',NULL,'userManagement',NULL,1530777696,1530777696),('viewUsers',2,'View Users',NULL,'userManagement',NULL,1530777696,1530777696),('viewVisitLog',2,'View Visit Logs',NULL,'userManagement',NULL,1530777696,1530777696);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `fk_child_auth_item_child_table` (`child`),
  CONSTRAINT `fk_child_auth_item_child_table` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_parent_auth_item_child_table` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('viewDashboard','/admin'),('viewMedia','/admin/#mediafile'),('editComments','/admin/comment/default/bulk-activate'),('editComments','/admin/comment/default/bulk-deactivate'),('deleteComments','/admin/comment/default/bulk-delete'),('editComments','/admin/comment/default/bulk-spam'),('editComments','/admin/comment/default/bulk-trash'),('createComments','/admin/comment/default/create'),('deleteComments','/admin/comment/default/delete'),('viewComments','/admin/comment/default/grid-page-size'),('viewComments','/admin/comment/default/grid-sort'),('viewComments','/admin/comment/default/index'),('editComments','/admin/comment/default/toggle-attribute'),('editComments','/admin/comment/default/update'),('viewComments','/admin/comment/default/view'),('deleteDb','/admin/Db/delete'),('exportDb','/admin/Db/export'),('importDb','/admin/Db/import'),('viewDb','/admin/Db/index'),('deleteEavRecords','/admin/eav/attribute-option/bulk-delete'),('createEavRecords','/admin/eav/attribute-option/create'),('deleteEavRecords','/admin/eav/attribute-option/delete'),('viewEavRecords','/admin/eav/attribute-option/grid-page-size'),('viewEavRecords','/admin/eav/attribute-option/grid-sort'),('viewEavRecords','/admin/eav/attribute-option/index'),('editEavRecords','/admin/eav/attribute-option/toggle-attribute'),('editEavRecords','/admin/eav/attribute-option/update'),('deleteEavRecords','/admin/eav/attribute-type/bulk-delete'),('createEavRecords','/admin/eav/attribute-type/create'),('deleteEavRecords','/admin/eav/attribute-type/delete'),('viewEavRecords','/admin/eav/attribute-type/grid-page-size'),('viewEavRecords','/admin/eav/attribute-type/grid-sort'),('viewEavRecords','/admin/eav/attribute-type/index'),('editEavRecords','/admin/eav/attribute-type/toggle-attribute'),('editEavRecords','/admin/eav/attribute-type/update'),('deleteEavRecords','/admin/eav/attribute/bulk-delete'),('createEavRecords','/admin/eav/attribute/create'),('deleteEavRecords','/admin/eav/attribute/delete'),('viewEavRecords','/admin/eav/attribute/grid-page-size'),('viewEavRecords','/admin/eav/attribute/grid-sort'),('viewEavRecords','/admin/eav/attribute/index'),('editEavRecords','/admin/eav/attribute/toggle-attribute'),('editEavRecords','/admin/eav/attribute/update'),('viewEavRecords','/admin/eav/default/get-attributes'),('viewEavRecords','/admin/eav/default/get-categories'),('viewEavRecords','/admin/eav/default/index'),('editEavRecords','/admin/eav/default/set-attributes'),('deleteEavRecords','/admin/eav/entity-model/bulk-delete'),('createEavRecords','/admin/eav/entity-model/create'),('deleteEavRecords','/admin/eav/entity-model/delete'),('viewEavRecords','/admin/eav/entity-model/grid-page-size'),('viewEavRecords','/admin/eav/entity-model/grid-sort'),('viewEavRecords','/admin/eav/entity-model/index'),('editEavRecords','/admin/eav/entity-model/toggle-attribute'),('editEavRecords','/admin/eav/entity-model/update'),('BulkDeleteMeasure','/admin/measure/bulk-delete'),('createMeasure','/admin/measure/create'),('deleteMeasure','/admin/measure/delete'),('viewMeasure','/admin/measure/grid-page-size'),('viewMeasure','/admin/measure/grid-sort'),('viewMeasure','/admin/measure/index'),('editMeasure','/admin/measure/update'),('viewMeasure','/admin/measure/view'),('deleteMediaAlbums','/admin/media/album/bulk-delete'),('createMediaAlbums','/admin/media/album/create'),('deleteMediaAlbums','/admin/media/album/delete'),('viewMediaAlbums','/admin/media/album/grid-page-size'),('viewMediaAlbums','/admin/media/album/grid-sort'),('viewMediaAlbums','/admin/media/album/index'),('editMediaAlbums','/admin/media/album/toggle-attribute'),('editMediaAlbums','/admin/media/album/update'),('deleteMediaCategories','/admin/media/category/bulk-delete'),('createMediaCategories','/admin/media/category/create'),('deleteMediaCategories','/admin/media/category/delete'),('viewMediaCategories','/admin/media/category/grid-page-size'),('viewMediaCategories','/admin/media/category/grid-sort'),('viewMediaCategories','/admin/media/category/index'),('editMediaCategories','/admin/media/category/toggle-attribute'),('editMediaCategories','/admin/media/category/update'),('viewMedia','/admin/media/default/index'),('editMediaSettings','/admin/media/default/settings'),('deleteMedia','/admin/media/manage/delete'),('viewMedia','/admin/media/manage/index'),('viewMedia','/admin/media/manage/info'),('editMediaSettings','/admin/media/manage/resize'),('editMedia','/admin/media/manage/update'),('uploadMedia','/admin/media/manage/upload'),('uploadMedia','/admin/media/manage/uploader'),('deleteMenus','/admin/menu/default/bulk-delete'),('createMenus','/admin/menu/default/create'),('deleteMenus','/admin/menu/default/delete'),('viewMenus','/admin/menu/default/grid-page-size'),('viewMenus','/admin/menu/default/grid-sort'),('viewMenus','/admin/menu/default/index'),('editMenus','/admin/menu/default/update'),('viewMenus','/admin/menu/default/view'),('deleteMenuLinks','/admin/menu/link/bulk-delete'),('createMenuLinks','/admin/menu/link/create'),('deleteMenuLinks','/admin/menu/link/delete'),('viewMenuLinks','/admin/menu/link/grid-page-size'),('viewMenuLinks','/admin/menu/link/grid-sort'),('viewMenuLinks','/admin/menu/link/index'),('editMenuLinks','/admin/menu/link/update'),('viewMenuLinks','/admin/menu/link/view'),('editPages','/admin/page/default/bulk-activate'),('editPages','/admin/page/default/bulk-deactivate'),('deletePages','/admin/page/default/bulk-delete'),('createPages','/admin/page/default/create'),('deletePages','/admin/page/default/delete'),('viewPages','/admin/page/default/grid-page-size'),('viewPages','/admin/page/default/grid-sort'),('viewPages','/admin/page/default/index'),('editPages','/admin/page/default/toggle-attribute'),('editPages','/admin/page/default/update'),('viewPages','/admin/page/default/view'),('deletePostCategories','/admin/post/category/bulk-delete'),('createPostCategories','/admin/post/category/create'),('deletePostCategories','/admin/post/category/delete'),('viewPostCategories','/admin/post/category/grid-page-size'),('viewPostCategories','/admin/post/category/grid-sort'),('viewPostCategories','/admin/post/category/index'),('editPostCategories','/admin/post/category/toggle-attribute'),('editPostCategories','/admin/post/category/update'),('editPosts','/admin/post/default/bulk-activate'),('editPosts','/admin/post/default/bulk-deactivate'),('deletePosts','/admin/post/default/bulk-delete'),('createPosts','/admin/post/default/create'),('deletePosts','/admin/post/default/delete'),('viewPosts','/admin/post/default/grid-page-size'),('viewPosts','/admin/post/default/grid-sort'),('viewPosts','/admin/post/default/index'),('editPosts','/admin/post/default/toggle-attribute'),('editPosts','/admin/post/default/update'),('viewPosts','/admin/post/default/view'),('deletePostTags','/admin/post/tag/bulk-delete'),('createPostTags','/admin/post/tag/create'),('deletePostTags','/admin/post/tag/delete'),('viewPostTags','/admin/post/tag/grid-page-size'),('viewPostTags','/admin/post/tag/grid-sort'),('viewPostTags','/admin/post/tag/index'),('editPostTags','/admin/post/tag/toggle-attribute'),('editPostTags','/admin/post/tag/update'),('fullSeoAccess','/admin/seo/*'),('deleteSeo','/admin/seo/default/bulk-delete'),('createSeo','/admin/seo/default/create'),('deleteSeo','/admin/seo/default/delete'),('viewSeo','/admin/seo/default/grid-page-size'),('viewSeo','/admin/seo/default/grid-sort'),('viewSeo','/admin/seo/default/index'),('editSeo','/admin/seo/default/update'),('flushCache','/admin/settings/cache/flush'),('changeGeneralSettings','/admin/settings/default/index'),('changeReadingSettings','/admin/settings/reading/index'),('viewDashboard','/admin/site/index'),('viewTranslations','/admin/translation/default/index'),('createSourceMessages','/admin/translation/source/create'),('deleteSourceMessages','/admin/translation/source/delete'),('updateSourceMessages','/admin/translation/source/update'),('editUsers','/admin/user/default/bulk-activate'),('editUsers','/admin/user/default/bulk-deactivate'),('deleteUsers','/admin/user/default/bulk-delete'),('changeUserPassword','/admin/user/default/change-password'),('createUsers','/admin/user/default/create'),('deleteUsers','/admin/user/default/delete'),('viewUsers','/admin/user/default/grid-page-size'),('viewUsers','/admin/user/default/grid-sort'),('viewUsers','/admin/user/default/index'),('editUsers','/admin/user/default/toggle-attribute'),('editUsers','/admin/user/default/update'),('manageRolesAndPermissions','/admin/user/permission-groups/bulk-delete'),('manageRolesAndPermissions','/admin/user/permission-groups/create'),('manageRolesAndPermissions','/admin/user/permission-groups/delete'),('viewRolesAndPermissions','/admin/user/permission-groups/grid-page-size'),('viewRolesAndPermissions','/admin/user/permission-groups/grid-sort'),('viewRolesAndPermissions','/admin/user/permission-groups/index'),('manageRolesAndPermissions','/admin/user/permission-groups/update'),('manageRolesAndPermissions','/admin/user/permission/bulk-delete'),('manageRolesAndPermissions','/admin/user/permission/create'),('manageRolesAndPermissions','/admin/user/permission/delete'),('viewRolesAndPermissions','/admin/user/permission/grid-page-size'),('viewRolesAndPermissions','/admin/user/permission/grid-sort'),('viewRolesAndPermissions','/admin/user/permission/index'),('manageRolesAndPermissions','/admin/user/permission/refresh-routes'),('manageRolesAndPermissions','/admin/user/permission/set-child-permissions'),('manageRolesAndPermissions','/admin/user/permission/set-child-routes'),('manageRolesAndPermissions','/admin/user/permission/update'),('manageRolesAndPermissions','/admin/user/permission/view'),('manageRolesAndPermissions','/admin/user/role/bulk-delete'),('manageRolesAndPermissions','/admin/user/role/create'),('manageRolesAndPermissions','/admin/user/role/delete'),('viewRolesAndPermissions','/admin/user/role/grid-page-size'),('viewRolesAndPermissions','/admin/user/role/grid-sort'),('viewRolesAndPermissions','/admin/user/role/index'),('manageRolesAndPermissions','/admin/user/role/set-child-permissions'),('manageRolesAndPermissions','/admin/user/role/set-child-roles'),('manageRolesAndPermissions','/admin/user/role/update'),('manageRolesAndPermissions','/admin/user/role/view'),('assignRolesToUsers','/admin/user/user-permission/set'),('assignRolesToUsers','/admin/user/user-permission/set-roles'),('viewVisitLog','/admin/user/visit-log/grid-page-size'),('viewVisitLog','/admin/user/visit-log/grid-sort'),('viewVisitLog','/admin/user/visit-log/index'),('viewVisitLog','/admin/user/visit-log/view'),('BulkDeleteMeasure','/measure/bulk-delete'),('createMeasure','/measure/create'),('deleteMeasure','/measure/delete'),('viewMeasure','/measure/grid-page-size'),('viewMeasure','/measure/grid-sort'),('viewMeasure','/measure/index'),('editMeasure','/measure/update'),('viewMeasure','/measure/view'),('BulkDeleteOption','/option/bulk-delete'),('createOption','/option/create'),('deleteOption','/option/delete'),('viewOption','/option/grid-page-size'),('viewOption','/option/grid-sort'),('viewOption','/option/index'),('viewOption','/option/view'),('backend_administrator','assignRolesToUsers'),('backend_administrator','author'),('moderator','author'),('backend_administrator','bindUserToIp'),('backend_administrator','changeGeneralSettings'),('user','changeOwnPassword'),('backend_administrator','changeReadingSettings'),('backend_administrator','changeUserPassword'),('moderator','createComments'),('backend_administrator','createEavRecords'),('author','createMediaAlbums'),('moderator','createMediaCategories'),('backend_administrator','createMenuLinks'),('backend_administrator','createMenus'),('backend_administrator','createPages'),('moderator','createPostCategories'),('author','createPosts'),('moderator','createPostTags'),('backend_administrator','createSeo'),('fullSeoAccess','createSeo'),('backend_administrator','createSourceMessages'),('backend_administrator','createUsers'),('moderator','deleteComments'),('backend_administrator','deleteDb'),('backend_administrator','deleteEavRecords'),('backend_administrator','deleteMedia'),('backend_administrator','deleteMediaAlbums'),('backend_administrator','deleteMediaCategories'),('backend_administrator','deleteMenuLinks'),('backend_administrator','deleteMenus'),('backend_administrator','deletePages'),('backend_administrator','deletePostCategories'),('moderator','deletePosts'),('backend_administrator','deletePostTags'),('backend_administrator','deleteSeo'),('fullSeoAccess','deleteSeo'),('backend_administrator','deleteSourceMessages'),('backend_administrator','deleteUsers'),('moderator','editComments'),('backend_administrator','editEavRecords'),('uploadMedia','editMedia'),('moderator','editMediaAlbums'),('moderator','editMediaCategories'),('backend_administrator','editMenuLinks'),('backend_administrator','editMenus'),('backend_administrator','editPages'),('moderator','editPostCategories'),('author','editPosts'),('moderator','editPostTags'),('backend_administrator','editSeo'),('fullSeoAccess','editSeo'),('backend_administrator','editUserEmail'),('backend_administrator','editUsers'),('manageRolesAndPermissions','editUsers'),('backend_administrator','exportDb'),('backend_administrator','flushCache'),('moderator','flushCache'),('moderator','fullMediaAccess'),('moderator','fullMediaAlbumAccess'),('moderator','fullMediaCategoryAccess'),('backend_administrator','fullMenuAccess'),('backend_administrator','fullMenuLinkAccess'),('backend_administrator','fullPageAccess'),('moderator','fullPostAccess'),('moderator','fullPostCategoryAccess'),('moderator','fullPostTagAccess'),('backend_administrator','fullSeoAccess'),('backend_administrator','importDb'),('backend_administrator','manageRolesAndPermissions'),('backend_administrator','moderator'),('backend_administrator','updateSourceMessages'),('createSourceMessages','updateSourceMessages'),('deleteSourceMessages','updateSourceMessages'),('updateImmutableSourceMessages','updateSourceMessages'),('backend_administrator','updateTranslations'),('updateSourceMessages','updateTranslations'),('author','uploadMedia'),('author','user'),('backend_administrator','user'),('moderator','user'),('createComments','viewComments'),('deleteComments','viewComments'),('editComments','viewComments'),('author','viewDashboard'),('deleteDb','viewDb'),('exportDb','viewDb'),('importDb','viewDb'),('backend_administrator','viewEavRecords'),('createEavRecords','viewEavRecords'),('deleteEavRecords','viewEavRecords'),('editEavRecords','viewEavRecords'),('createMeasure','viewMeasure'),('deleteMeasure','viewMeasure'),('editMeasure','viewMeasure'),('moderator','viewMeasure'),('deleteMedia','viewMedia'),('editMedia','viewMedia'),('editMediaSettings','viewMedia'),('fullMediaAccess','viewMedia'),('uploadMedia','viewMedia'),('createMediaAlbums','viewMediaAlbums'),('deleteMediaAlbums','viewMediaAlbums'),('editMediaAlbums','viewMediaAlbums'),('createMediaCategories','viewMediaCategories'),('deleteMediaCategories','viewMediaCategories'),('editMediaCategories','viewMediaCategories'),('backend_administrator','viewMenuLinks'),('createMenuLinks','viewMenuLinks'),('deleteMenuLinks','viewMenuLinks'),('editMenuLinks','viewMenuLinks'),('fullMenuLinkAccess','viewMenuLinks'),('backend_administrator','viewMenus'),('createMenus','viewMenus'),('deleteMenus','viewMenus'),('editMenus','viewMenus'),('fullMenuAccess','viewMenus'),('viewMenuLinks','viewMenus'),('backend_administrator','viewOption'),('BulkDeleteOption','viewOption'),('createOption','viewOption'),('deleteOption','viewOption'),('moderator','viewOption'),('backend_administrator','viewPages'),('createPages','viewPages'),('deletePages','viewPages'),('editPages','viewPages'),('author','viewPostCategories'),('author','viewPosts'),('createPostCategories','viewPosts'),('createPosts','viewPosts'),('deletePostCategories','viewPosts'),('deletePosts','viewPosts'),('editPostCategories','viewPosts'),('editPosts','viewPosts'),('viewPostCategories','viewPosts'),('viewPostTags','viewPosts'),('author','viewPostTags'),('createPostTags','viewPostTags'),('deletePostTags','viewPostTags'),('editPostTags','viewPostTags'),('backend_administrator','viewRegistrationIp'),('backend_administrator','viewRolesAndPermissions'),('manageRolesAndPermissions','viewRolesAndPermissions'),('backend_administrator','viewSeo'),('createSeo','viewSeo'),('deleteSeo','viewSeo'),('editSeo','viewSeo'),('fullSeoAccess','viewSeo'),('backend_administrator','viewTranslations'),('createSourceMessages','viewTranslations'),('deleteSourceMessages','viewTranslations'),('updateImmutableSourceMessages','viewTranslations'),('updateSourceMessages','viewTranslations'),('updateTranslations','viewTranslations'),('editUserEmail','viewUserEmail'),('moderator','viewUserEmail'),('assignRolesToUsers','viewUserRoles'),('backend_administrator','viewUserRoles'),('viewRolesAndPermissions','viewUserRoles'),('assignRolesToUsers','viewUsers'),('changeUserPassword','viewUsers'),('createUsers','viewUsers'),('deleteUsers','viewUsers'),('editUsers','viewUsers'),('manageRolesAndPermissions','viewUsers'),('moderator','viewUsers'),('viewRolesAndPermissions','viewUsers'),('viewVisitLog','viewUsers'),('backend_administrator','viewVisitLog');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_group`
--

DROP TABLE IF EXISTS `auth_item_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_group`
--

LOCK TABLES `auth_item_group` WRITE;
/*!40000 ALTER TABLE `auth_item_group` DISABLE KEYS */;
INSERT INTO `auth_item_group` VALUES ('commentManagement','Comment Management',1530777696,1530777696),('dashboard','Dashboard',1530777695,1530777695),('dbManagement','DB Management',1538129653,1538129653),('eavManagement','EAV Management',1440180000,1440180000),('mediaManagement','Media Management',1530777696,1530777696),('menuManagement','Menu Management',1530777696,1530777696),('pageManagement','Page Management',1530777696,1530777696),('postManagement','Post Management',1530777695,1530777695),('seoManagement','SEO Management',1538126970,1538126970),('settings','Settings',1530777696,1530777696),('system','System',1534759530,1534759530),('translations','Translations',1530777696,1530777696),('userCommonPermissions','Common Permissions',1530777695,1530777695),('userManagement','User Management',1530777696,1530777696);
/*!40000 ALTER TABLE `auth_item_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changelogs`
--

DROP TABLE IF EXISTS `changelogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `relatedObjectType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relatedObjectId` int(11) NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `createdAt` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `hostname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IN_related_object_type` (`relatedObjectType`),
  KEY `IN_related_object_id` (`relatedObjectId`),
  KEY `IN_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changelogs`
--

LOCK TABLES `changelogs` WRITE;
/*!40000 ALTER TABLE `changelogs` DISABLE KEYS */;
INSERT INTO `changelogs` VALUES (1,'Option',23,'{\"name\":[null,\"111111\"],\"id\":[null,23]}',1537269274,'update',4,'127.0.0.1'),(2,'Option',23,'{\"name\":[\"111111\",\"222\"]}',1537269329,'update',4,'127.0.0.1'),(3,'Option',23,'',1537269368,'deleted',4,'127.0.0.1'),(4,'Option',24,'{\"name\":[null,\"1\"],\"id\":[null,24]}',1537269434,'update',4,'127.0.0.1'),(5,'Option',24,'',1537270059,'deleted',4,'127.0.0.1'),(6,'Option',25,'{\"name\":[null,\"5555555555555555\"],\"id\":[null,25]}',1537270079,'update',4,'127.0.0.1'),(7,'Option',25,'{\"name\":[\"5555555555555555\",\"77777777777777\"]}',1537270091,'update',4,'127.0.0.1'),(8,'Option',25,'{\"name\":[\"77777777777777\",\"888888888888\"]}',1537270098,'update',4,'127.0.0.1'),(9,'Option',25,'{\"name\":[\"888888888888\",\"99999\"]}',1537270206,'update',4,'127.0.0.1'),(10,'Option',25,'{\"name\":[\"0000000000000000\",\"11111111111111111\"]}',1537270494,'update',4,'127.0.0.1'),(11,'Option',26,'{\"name\":[null,\"111111\"],\"id\":[null,26]}',1537270734,'update',4,'127.0.0.1'),(12,'Option',26,'[\"hello world!\"]',1537270734,'hello_type',4,'127.0.0.1'),(13,'Option',27,'{\"name\":[null,\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 1\"],\"id\":[null,27]}',1537342424,'update',4,'127.0.0.1'),(14,'Option',27,'{\"name\":[\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 1\",\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 2\"]}',1537342436,'update',4,'127.0.0.1'),(15,'Option',27,'{\"name\":[\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 2\",\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 3\"]}',1537342443,'update',4,'127.0.0.1'),(16,'Option',27,'{\"name\":[\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 3\",\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 4\"]}',1537342451,'update',4,'127.0.0.1'),(17,'Option',27,'{\"name\":[\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 4\",\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 1\"]}',1537342457,'update',4,'127.0.0.1'),(18,'Option',27,'',1537342548,'deleted',4,'127.0.0.1'),(19,'Option',28,'{\"name\":[null,\"28\"],\"id\":[null,28]}',1537342715,'update',4,'127.0.0.1'),(20,'Option',27,'',1537342801,'deleted',4,'127.0.0.1'),(21,'Option',29,'{\"id\":[null,29]}',1537349779,'update',4,'127.0.0.1');
/*!40000 ALTER TABLE `changelogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL DEFAULT '',
  `model_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT 'null-is not a reply, int-replied comment id',
  `content` text,
  `status` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '0-pending,1-published,2-spam,3-deleted',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `user_ip` varchar(15) DEFAULT NULL,
  `super_parent_id` int(11) DEFAULT NULL COMMENT 'null-has no parent, int-1st level parent id',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_model` (`model`),
  KEY `comment_model_id` (`model`,`model_id`),
  KEY `comment_status` (`status`),
  KEY `comment_reply` (`parent_id`),
  KEY `comment_super_parent_id` (`super_parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Рога и копыта 1'),(2,'Золотой теленок'),(3,'Козлы в огороде6'),(4,'Козлы в огороде'),(5,'Козлы в огороде'),(6,'Rjk'),(7,'123'),(9,'55555'),(10,'666'),(11,'dasd'),(12,'asdasd'),(14,'1231231231');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `division_id` tinyint(2) unsigned NOT NULL,
  `name` varchar(127) DEFAULT NULL,
  `slug` varchar(32) DEFAULT NULL,
  `status` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `division_id` (`division_id`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (2,1,'Фортепиано','Фно',1),(3,1,'Струнные инструменты','Стр',1),(4,1,'Духовые и ударные инструменты','Дух',1),(5,1,'Народные инструменты','Нар',1),(6,1,'Теоретические дисциплины','Теор',1),(7,1,'Хоровое пение','Хор',1),(8,1,'Музыкальный фольклор','Фольк',1),(9,1,'Инструменты эстрадного оркестра','Джаз',1),(10,1,'Отдел общего фортепиано','О-фно',1),(11,1,'Концертмейстерский отдел','Конц',1),(12,2,'Художественный отдел','Худ',1),(13,1,'Отделение развития МО','ОР МО',1),(14,2,'Класс художественной керамики','Керам',1),(15,3,'Хореография','Хореография',1),(16,1,'Музыкальный театр','Театр',1),(17,2,'Архитектурное творчество','Арх.тв',1),(18,2,'Основы дизайна','Диз-н',1),(19,1,'Академический вокал','Ак.вок',1),(20,1,'Сценическое мастерство','Сцен.маст-во',1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL,
  `slug` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Подразделения ДШИ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'Музыкальное отделение','МО'),(2,'Художественное отделение','ИЗО'),(3,'Отделение \"Хореография\"','ХО');
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute`
--

DROP TABLE IF EXISTS `eav_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eav_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `required` int(1) DEFAULT NULL,
  `visible` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eav_attribute_type_id` (`type_id`),
  KEY `eav_attribute_name` (`name`),
  CONSTRAINT `fk_eav_attribute_type` FOREIGN KEY (`type_id`) REFERENCES `eav_attribute_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eav_attribute`
--

LOCK TABLES `eav_attribute` WRITE;
/*!40000 ALTER TABLE `eav_attribute` DISABLE KEYS */;
INSERT INTO `eav_attribute` VALUES (1,1,'field_1','Поле 1','0','','text',1,1),(2,1,'field_2','Field 2','0','','',1,1),(3,2,'position','Должность','','','',1,1),(4,2,'type_work','Вид работы','','','',1,NULL),(5,2,'level_education','Уровень образования','','','',1,NULL),(6,2,'level_specialists','Уровень специалиста','','','',1,NULL),(7,2,'advanced_degree','Ученая степень','','','',1,1);
/*!40000 ALTER TABLE `eav_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_option`
--

DROP TABLE IF EXISTS `eav_attribute_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eav_attribute_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eav_attribute_option_attribute_id` (`attribute_id`),
  CONSTRAINT `fk_eav_option_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eav_attribute_option`
--

LOCK TABLES `eav_attribute_option` WRITE;
/*!40000 ALTER TABLE `eav_attribute_option` DISABLE KEYS */;
INSERT INTO `eav_attribute_option` VALUES (1,3,'Заместитель директора'),(2,3,'Директор'),(3,3,'Руководитель отдела'),(4,3,'Заведующий секцией'),(5,3,'Преподаватель'),(6,4,'Основная'),(7,4,'По совместительству'),(8,5,'Высшее образование'),(9,5,'Высшее непроф'),(10,5,'Неполное высшее'),(11,5,'Среднее проф'),(12,6,'Специалист'),(13,6,'Молодой специалист + проезд'),(14,6,'Молодой специалист-отличник + проезд'),(15,7,'Кандидат наук'),(16,7,'Доктор наук');
/*!40000 ALTER TABLE `eav_attribute_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_attribute_type`
--

DROP TABLE IF EXISTS `eav_attribute_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eav_attribute_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `store_type` varchar(32) NOT NULL DEFAULT 'raw',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eav_attribute_type`
--

LOCK TABLES `eav_attribute_type` WRITE;
/*!40000 ALTER TABLE `eav_attribute_type` DISABLE KEYS */;
INSERT INTO `eav_attribute_type` VALUES (1,'text','raw'),(2,'select','option');
/*!40000 ALTER TABLE `eav_attribute_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity`
--

DROP TABLE IF EXISTS `eav_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eav_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eav_entity_model_id` (`model_id`),
  KEY `eav_entity_category_id` (`category_id`),
  CONSTRAINT `fk_eav_entity_model` FOREIGN KEY (`model_id`) REFERENCES `eav_entity_model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eav_entity`
--

LOCK TABLES `eav_entity` WRITE;
/*!40000 ALTER TABLE `eav_entity` DISABLE KEYS */;
INSERT INTO `eav_entity` VALUES (4,4,1),(7,5,2),(9,4,2),(10,4,3),(11,4,4),(13,5,NULL);
/*!40000 ALTER TABLE `eav_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity_attribute`
--

DROP TABLE IF EXISTS `eav_entity_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eav_entity_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `eav_entity_attribute_entity_id` (`entity_id`),
  KEY `eav_entity_attribute_attribute_id` (`attribute_id`),
  CONSTRAINT `fk_eav_entity_attribute_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_eav_entity_attribute_entity` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eav_entity_attribute`
--

LOCK TABLES `eav_entity_attribute` WRITE;
/*!40000 ALTER TABLE `eav_entity_attribute` DISABLE KEYS */;
INSERT INTO `eav_entity_attribute` VALUES (17,7,3,0),(149,10,2,0),(150,11,3,0),(180,9,3,0),(181,9,4,1),(184,13,1,0),(185,13,2,1),(207,4,3,0),(208,4,4,1),(209,4,5,2),(210,4,6,3),(211,4,7,4);
/*!40000 ALTER TABLE `eav_entity_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_entity_model`
--

DROP TABLE IF EXISTS `eav_entity_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eav_entity_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(100) NOT NULL,
  `entity_model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eav_entity_model_unique_model` (`entity_model`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eav_entity_model`
--

LOCK TABLES `eav_entity_model` WRITE;
/*!40000 ALTER TABLE `eav_entity_model` DISABLE KEYS */;
INSERT INTO `eav_entity_model` VALUES (4,'Measure','common\\models\\Measure'),(5,'Product','backend\\models\\Product');
/*!40000 ALTER TABLE `eav_entity_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eav_value`
--

DROP TABLE IF EXISTS `eav_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eav_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `eav_value_entity_id` (`entity_id`),
  KEY `eav_value_attribute_id` (`attribute_id`),
  KEY `eav_value_item_id` (`item_id`),
  CONSTRAINT `fk_eav_value_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_eav_value_entity` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eav_value`
--

LOCK TABLES `eav_value` WRITE;
/*!40000 ALTER TABLE `eav_value` DISABLE KEYS */;
INSERT INTO `eav_value` VALUES (1,4,7,1,''),(2,4,6,1,''),(3,4,5,1,'8'),(4,4,4,1,'6'),(5,4,3,1,'1');
/*!40000 ALTER TABLE `eav_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_log_level` (`level`),
  KEY `idx_log_category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=2455 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,4,'my_category',1537261669.7566,'[127.0.0.1][2][-]','info in index_site_controller.'),(2,1,'my_category',1537261669.7567,'[127.0.0.1][2][-]','error in index_site_controller.'),(3,2,'my_category',1537261669.7567,'[127.0.0.1][2][-]','warning in index_site_controller.'),(4,4,'my_category',1537264092.1935,'[127.0.0.1][-][-]','info in index_site_controller.'),(5,1,'my_category',1537264092.1935,'[127.0.0.1][-][-]','error in index_site_controller.'),(6,2,'my_category',1537264092.1935,'[127.0.0.1][-][-]','warning in index_site_controller.'),(7,4,'my_category',1537268446.1379,'[127.0.0.1][-][-]','info in index_site_controller.'),(8,1,'my_category',1537268446.1379,'[127.0.0.1][-][-]','error in index_site_controller.'),(9,2,'my_category',1537268446.1379,'[127.0.0.1][-][-]','warning in index_site_controller.'),(10,4,'my_category',1537269233.345,'[127.0.0.1][-][-]','info in index_site_controller.'),(11,1,'my_category',1537269233.345,'[127.0.0.1][-][-]','error in index_site_controller.'),(12,2,'my_category',1537269233.345,'[127.0.0.1][-][-]','warning in index_site_controller.'),(13,4,'my_category',1537269238.6376,'[127.0.0.1][2][-]','info in index_site_controller.'),(14,1,'my_category',1537269238.6376,'[127.0.0.1][2][-]','error in index_site_controller.'),(15,2,'my_category',1537269238.6376,'[127.0.0.1][2][-]','warning in index_site_controller.'),(16,4,'my_category',1537269239.9036,'[127.0.0.1][-][-]','info in index_site_controller.'),(17,1,'my_category',1537269239.9036,'[127.0.0.1][-][-]','error in index_site_controller.'),(18,2,'my_category',1537269239.9036,'[127.0.0.1][-][-]','warning in index_site_controller.'),(19,4,'my_category',1537269245.8284,'[127.0.0.1][4][-]','info in index_site_controller.'),(20,1,'my_category',1537269245.8284,'[127.0.0.1][4][-]','error in index_site_controller.'),(21,2,'my_category',1537269245.8284,'[127.0.0.1][4][-]','warning in index_site_controller.'),(22,4,'my_category',1537269426.448,'[127.0.0.1][4][-]','info in index_site_controller.'),(23,1,'my_category',1537269426.448,'[127.0.0.1][4][-]','error in index_site_controller.'),(24,2,'my_category',1537269426.448,'[127.0.0.1][4][-]','warning in index_site_controller.'),(25,4,'my_category',1537270727.7225,'[127.0.0.1][4][-]','info in index_site_controller.'),(26,1,'my_category',1537270727.7225,'[127.0.0.1][4][-]','error in index_site_controller.'),(27,2,'my_category',1537270727.7225,'[127.0.0.1][4][-]','warning in index_site_controller.'),(28,4,'my_category',1537343102.1255,'[127.0.0.1][-][-]','info in index_site_controller.'),(29,1,'my_category',1537343102.1255,'[127.0.0.1][-][-]','error in index_site_controller.'),(30,2,'my_category',1537343102.1255,'[127.0.0.1][-][-]','warning in index_site_controller.'),(31,4,'my_category',1537345202.4687,'[127.0.0.1][-][-]','info in index_site_controller.'),(32,1,'my_category',1537345202.4687,'[127.0.0.1][-][-]','error in index_site_controller.'),(33,2,'my_category',1537345202.4687,'[127.0.0.1][-][-]','warning in index_site_controller.'),(34,4,'my_category',1537346450.5791,'[127.0.0.1][4][-]','info in index_site_controller.'),(35,1,'my_category',1537346450.5791,'[127.0.0.1][4][-]','error in index_site_controller.'),(36,2,'my_category',1537346450.5791,'[127.0.0.1][4][-]','warning in index_site_controller.'),(37,4,'my_category',1537426724.7297,'[127.0.0.1][13][-]','info in index_site_controller.'),(38,1,'my_category',1537426724.7298,'[127.0.0.1][13][-]','error in index_site_controller.'),(39,2,'my_category',1537426724.7298,'[127.0.0.1][13][-]','warning in index_site_controller.'),(40,4,'my_category',1537450642.5501,'[127.0.0.1][4][srqdghiv7rvcqlphj2r3eh46ohkjfqe2]','info in index_site_controller.'),(41,1,'my_category',1537450642.5501,'[127.0.0.1][4][srqdghiv7rvcqlphj2r3eh46ohkjfqe2]','error in index_site_controller.'),(42,2,'my_category',1537450642.5501,'[127.0.0.1][4][srqdghiv7rvcqlphj2r3eh46ohkjfqe2]','warning in index_site_controller.'),(43,4,'my_category',1537450651.5011,'[127.0.0.1][4][srqdghiv7rvcqlphj2r3eh46ohkjfqe2]','info in index_site_controller.'),(44,1,'my_category',1537450651.5011,'[127.0.0.1][4][srqdghiv7rvcqlphj2r3eh46ohkjfqe2]','error in index_site_controller.'),(45,2,'my_category',1537450651.5011,'[127.0.0.1][4][srqdghiv7rvcqlphj2r3eh46ohkjfqe2]','warning in index_site_controller.'),(46,4,'my_category',1537451011.0824,'[127.0.0.1][4][-]','info in index_site_controller.'),(47,1,'my_category',1537451011.0824,'[127.0.0.1][4][-]','error in index_site_controller.'),(48,2,'my_category',1537451011.0824,'[127.0.0.1][4][-]','warning in index_site_controller.'),(49,4,'my_category',1537451064.9625,'[127.0.0.1][4][-]','info in index_site_controller.'),(50,1,'my_category',1537451064.9625,'[127.0.0.1][4][-]','error in index_site_controller.'),(51,2,'my_category',1537451064.9625,'[127.0.0.1][4][-]','warning in index_site_controller.'),(52,4,'my_category',1537451164.5874,'[127.0.0.1][4][-]','info in index_site_controller.'),(53,1,'my_category',1537451164.5874,'[127.0.0.1][4][-]','error in index_site_controller.'),(54,2,'my_category',1537451164.5874,'[127.0.0.1][4][-]','warning in index_site_controller.'),(55,4,'my_category',1537451184.3783,'[127.0.0.1][4][-]','info in index_site_controller.'),(56,1,'my_category',1537451184.3783,'[127.0.0.1][4][-]','error in index_site_controller.'),(57,2,'my_category',1537451184.3783,'[127.0.0.1][4][-]','warning in index_site_controller.'),(58,4,'my_category',1537452420.2252,'[127.0.0.1][4][-]','info in index_site_controller.'),(59,1,'my_category',1537452420.2252,'[127.0.0.1][4][-]','error in index_site_controller.'),(60,2,'my_category',1537452420.2252,'[127.0.0.1][4][-]','warning in index_site_controller.'),(61,4,'my_category',1537778987.6218,'[127.0.0.1][-][-]','info in index_site_controller.'),(62,1,'my_category',1537778987.6218,'[127.0.0.1][-][-]','error in index_site_controller.'),(63,2,'my_category',1537778987.6218,'[127.0.0.1][-][-]','warning in index_site_controller.'),(64,4,'my_category',1537778991.5239,'[127.0.0.1][-][-]','info in index_site_controller.'),(65,1,'my_category',1537778991.5239,'[127.0.0.1][-][-]','error in index_site_controller.'),(66,2,'my_category',1537778991.5239,'[127.0.0.1][-][-]','warning in index_site_controller.'),(67,4,'my_category',1537778992.4473,'[127.0.0.1][-][-]','info in index_site_controller.'),(68,1,'my_category',1537778992.4473,'[127.0.0.1][-][-]','error in index_site_controller.'),(69,2,'my_category',1537778992.4473,'[127.0.0.1][-][-]','warning in index_site_controller.'),(70,4,'my_category',1537778992.755,'[127.0.0.1][-][-]','info in index_site_controller.'),(71,1,'my_category',1537778992.755,'[127.0.0.1][-][-]','error in index_site_controller.'),(72,2,'my_category',1537778992.755,'[127.0.0.1][-][-]','warning in index_site_controller.'),(73,4,'my_category',1537778994.6278,'[127.0.0.1][-][-]','info in index_site_controller.'),(74,1,'my_category',1537778994.6278,'[127.0.0.1][-][-]','error in index_site_controller.'),(75,2,'my_category',1537778994.6278,'[127.0.0.1][-][-]','warning in index_site_controller.'),(76,4,'my_category',1537778995.1383,'[127.0.0.1][-][-]','info in index_site_controller.'),(77,1,'my_category',1537778995.1383,'[127.0.0.1][-][-]','error in index_site_controller.'),(78,2,'my_category',1537778995.1383,'[127.0.0.1][-][-]','warning in index_site_controller.'),(79,4,'my_category',1537779066.2434,'[127.0.0.1][-][-]','info in index_site_controller.'),(80,1,'my_category',1537779066.2434,'[127.0.0.1][-][-]','error in index_site_controller.'),(81,2,'my_category',1537779066.2434,'[127.0.0.1][-][-]','warning in index_site_controller.'),(82,4,'my_category',1537779066.3554,'[127.0.0.1][-][-]','info in index_site_controller.'),(83,1,'my_category',1537779066.3554,'[127.0.0.1][-][-]','error in index_site_controller.'),(84,2,'my_category',1537779066.3554,'[127.0.0.1][-][-]','warning in index_site_controller.'),(85,4,'my_category',1537779725.6487,'[127.0.0.1][-][-]','info in index_site_controller.'),(86,1,'my_category',1537779725.6487,'[127.0.0.1][-][-]','error in index_site_controller.'),(87,2,'my_category',1537779725.6488,'[127.0.0.1][-][-]','warning in index_site_controller.'),(88,4,'my_category',1537779725.8738,'[127.0.0.1][-][-]','info in index_site_controller.'),(89,1,'my_category',1537779725.8738,'[127.0.0.1][-][-]','error in index_site_controller.'),(90,2,'my_category',1537779725.8738,'[127.0.0.1][-][-]','warning in index_site_controller.'),(91,4,'my_category',1537781503.0349,'[127.0.0.1][-][-]','info in index_site_controller.'),(92,1,'my_category',1537781503.0349,'[127.0.0.1][-][-]','error in index_site_controller.'),(93,2,'my_category',1537781503.0349,'[127.0.0.1][-][-]','warning in index_site_controller.'),(94,4,'my_category',1537783237.9546,'[127.0.0.1][-][-]','info in index_site_controller.'),(95,1,'my_category',1537783237.9546,'[127.0.0.1][-][-]','error in index_site_controller.'),(96,2,'my_category',1537783237.9546,'[127.0.0.1][-][-]','warning in index_site_controller.'),(97,4,'my_category',1537795565.2911,'[127.0.0.1][4][-]','info in index_site_controller.'),(98,1,'my_category',1537795565.2911,'[127.0.0.1][4][-]','error in index_site_controller.'),(99,2,'my_category',1537795565.2911,'[127.0.0.1][4][-]','warning in index_site_controller.'),(100,4,'my_category',1537795575.4848,'[127.0.0.1][4][-]','info in index_site_controller.'),(101,1,'my_category',1537795575.4848,'[127.0.0.1][4][-]','error in index_site_controller.'),(102,2,'my_category',1537795575.4848,'[127.0.0.1][4][-]','warning in index_site_controller.'),(103,4,'my_category',1537795739.1008,'[127.0.0.1][4][-]','info in index_site_controller.'),(104,1,'my_category',1537795739.1008,'[127.0.0.1][4][-]','error in index_site_controller.'),(105,2,'my_category',1537795739.1008,'[127.0.0.1][4][-]','warning in index_site_controller.'),(106,4,'my_category',1537795830.5915,'[127.0.0.1][4][-]','info in index_site_controller.'),(107,1,'my_category',1537795830.5915,'[127.0.0.1][4][-]','error in index_site_controller.'),(108,2,'my_category',1537795830.5915,'[127.0.0.1][4][-]','warning in index_site_controller.'),(109,4,'my_category',1537795835.1495,'[127.0.0.1][4][-]','info in index_site_controller.'),(110,1,'my_category',1537795835.1495,'[127.0.0.1][4][-]','error in index_site_controller.'),(111,2,'my_category',1537795835.1495,'[127.0.0.1][4][-]','warning in index_site_controller.'),(112,4,'my_category',1537795836.8058,'[127.0.0.1][4][-]','info in index_site_controller.'),(113,1,'my_category',1537795836.8058,'[127.0.0.1][4][-]','error in index_site_controller.'),(114,2,'my_category',1537795836.8058,'[127.0.0.1][4][-]','warning in index_site_controller.'),(115,4,'my_category',1537795840.1673,'[127.0.0.1][4][-]','info in index_site_controller.'),(116,1,'my_category',1537795840.1673,'[127.0.0.1][4][-]','error in index_site_controller.'),(117,2,'my_category',1537795840.1673,'[127.0.0.1][4][-]','warning in index_site_controller.'),(118,4,'my_category',1537795841.27,'[127.0.0.1][4][-]','info in index_site_controller.'),(119,1,'my_category',1537795841.27,'[127.0.0.1][4][-]','error in index_site_controller.'),(120,2,'my_category',1537795841.27,'[127.0.0.1][4][-]','warning in index_site_controller.'),(121,4,'my_category',1537795841.4302,'[127.0.0.1][4][-]','info in index_site_controller.'),(122,1,'my_category',1537795841.4302,'[127.0.0.1][4][-]','error in index_site_controller.'),(123,2,'my_category',1537795841.4302,'[127.0.0.1][4][-]','warning in index_site_controller.'),(124,4,'my_category',1537795842.3716,'[127.0.0.1][4][-]','info in index_site_controller.'),(125,1,'my_category',1537795842.3716,'[127.0.0.1][4][-]','error in index_site_controller.'),(126,2,'my_category',1537795842.3716,'[127.0.0.1][4][-]','warning in index_site_controller.'),(127,4,'my_category',1537796055.8423,'[127.0.0.1][-][-]','info in index_site_controller.'),(128,1,'my_category',1537796055.8423,'[127.0.0.1][-][-]','error in index_site_controller.'),(129,2,'my_category',1537796055.8423,'[127.0.0.1][-][-]','warning in index_site_controller.'),(130,4,'my_category',1537796062.4262,'[127.0.0.1][4][-]','info in index_site_controller.'),(131,1,'my_category',1537796062.4262,'[127.0.0.1][4][-]','error in index_site_controller.'),(132,2,'my_category',1537796062.4262,'[127.0.0.1][4][-]','warning in index_site_controller.'),(133,4,'my_category',1537796858.2771,'[127.0.0.1][4][-]','info in index_site_controller.'),(134,1,'my_category',1537796858.2771,'[127.0.0.1][4][-]','error in index_site_controller.'),(135,2,'my_category',1537796858.2771,'[127.0.0.1][4][-]','warning in index_site_controller.'),(136,4,'my_category',1537796866.6852,'[127.0.0.1][4][-]','info in index_site_controller.'),(137,1,'my_category',1537796866.6853,'[127.0.0.1][4][-]','error in index_site_controller.'),(138,2,'my_category',1537796866.6853,'[127.0.0.1][4][-]','warning in index_site_controller.'),(139,4,'my_category',1537796957.4595,'[127.0.0.1][4][-]','info in index_site_controller.'),(140,1,'my_category',1537796957.4595,'[127.0.0.1][4][-]','error in index_site_controller.'),(141,2,'my_category',1537796957.4595,'[127.0.0.1][4][-]','warning in index_site_controller.'),(142,4,'my_category',1537798182.0951,'[127.0.0.1][-][-]','info in index_site_controller.'),(143,1,'my_category',1537798182.0952,'[127.0.0.1][-][-]','error in index_site_controller.'),(144,2,'my_category',1537798182.0952,'[127.0.0.1][-][-]','warning in index_site_controller.'),(145,4,'my_category',1537798421.3848,'[127.0.0.1][-][-]','info in index_site_controller.'),(146,1,'my_category',1537798421.3848,'[127.0.0.1][-][-]','error in index_site_controller.'),(147,2,'my_category',1537798421.3848,'[127.0.0.1][-][-]','warning in index_site_controller.'),(148,4,'my_category',1537799278.9063,'[127.0.0.1][4][-]','info in index_site_controller.'),(149,1,'my_category',1537799278.9063,'[127.0.0.1][4][-]','error in index_site_controller.'),(150,2,'my_category',1537799278.9063,'[127.0.0.1][4][-]','warning in index_site_controller.'),(151,4,'my_category',1537868102.862,'[127.0.0.1][-][-]','info in index_site_controller.'),(152,1,'my_category',1537868102.862,'[127.0.0.1][-][-]','error in index_site_controller.'),(153,2,'my_category',1537868102.862,'[127.0.0.1][-][-]','warning in index_site_controller.'),(154,4,'my_category',1537868390.852,'[127.0.0.1][4][-]','info in index_site_controller.'),(155,1,'my_category',1537868390.852,'[127.0.0.1][4][-]','error in index_site_controller.'),(156,2,'my_category',1537868390.852,'[127.0.0.1][4][-]','warning in index_site_controller.'),(157,4,'my_category',1537869223.9615,'[127.0.0.1][-][-]','info in index_site_controller.'),(158,1,'my_category',1537869223.9615,'[127.0.0.1][-][-]','error in index_site_controller.'),(159,2,'my_category',1537869223.9615,'[127.0.0.1][-][-]','warning in index_site_controller.'),(160,4,'my_category',1537869249.5579,'[127.0.0.1][4][-]','info in index_site_controller.'),(161,1,'my_category',1537869249.5579,'[127.0.0.1][4][-]','error in index_site_controller.'),(162,2,'my_category',1537869249.5579,'[127.0.0.1][4][-]','warning in index_site_controller.'),(163,4,'my_category',1537869881.243,'[127.0.0.1][4][-]','info in index_site_controller.'),(164,1,'my_category',1537869881.2431,'[127.0.0.1][4][-]','error in index_site_controller.'),(165,2,'my_category',1537869881.2431,'[127.0.0.1][4][-]','warning in index_site_controller.'),(166,4,'my_category',1537869886.8199,'[127.0.0.1][4][-]','info in index_site_controller.'),(167,1,'my_category',1537869886.8199,'[127.0.0.1][4][-]','error in index_site_controller.'),(168,2,'my_category',1537869886.8199,'[127.0.0.1][4][-]','warning in index_site_controller.'),(169,4,'my_category',1537869898.6331,'[127.0.0.1][4][-]','info in index_site_controller.'),(170,1,'my_category',1537869898.6331,'[127.0.0.1][4][-]','error in index_site_controller.'),(171,2,'my_category',1537869898.6331,'[127.0.0.1][4][-]','warning in index_site_controller.'),(172,4,'my_category',1537870553.0071,'[127.0.0.1][4][-]','info in index_site_controller.'),(173,1,'my_category',1537870553.0072,'[127.0.0.1][4][-]','error in index_site_controller.'),(174,2,'my_category',1537870553.0072,'[127.0.0.1][4][-]','warning in index_site_controller.'),(175,4,'my_category',1537870557.374,'[127.0.0.1][4][-]','info in index_site_controller.'),(176,1,'my_category',1537870557.374,'[127.0.0.1][4][-]','error in index_site_controller.'),(177,2,'my_category',1537870557.374,'[127.0.0.1][4][-]','warning in index_site_controller.'),(178,4,'my_category',1537870928.4223,'[127.0.0.1][4][-]','info in index_site_controller.'),(179,1,'my_category',1537870928.4223,'[127.0.0.1][4][-]','error in index_site_controller.'),(180,2,'my_category',1537870928.4223,'[127.0.0.1][4][-]','warning in index_site_controller.'),(181,4,'my_category',1537870930.8306,'[127.0.0.1][4][-]','info in index_site_controller.'),(182,1,'my_category',1537870930.8306,'[127.0.0.1][4][-]','error in index_site_controller.'),(183,2,'my_category',1537870930.8306,'[127.0.0.1][4][-]','warning in index_site_controller.'),(184,4,'my_category',1537870931.8264,'[127.0.0.1][4][-]','info in index_site_controller.'),(185,1,'my_category',1537870931.8264,'[127.0.0.1][4][-]','error in index_site_controller.'),(186,2,'my_category',1537870931.8264,'[127.0.0.1][4][-]','warning in index_site_controller.'),(187,4,'my_category',1537871050.4745,'[127.0.0.1][4][-]','info in index_site_controller.'),(188,1,'my_category',1537871050.4746,'[127.0.0.1][4][-]','error in index_site_controller.'),(189,2,'my_category',1537871050.4746,'[127.0.0.1][4][-]','warning in index_site_controller.'),(190,4,'my_category',1537871051.6717,'[127.0.0.1][4][-]','info in index_site_controller.'),(191,1,'my_category',1537871051.6717,'[127.0.0.1][4][-]','error in index_site_controller.'),(192,2,'my_category',1537871051.6717,'[127.0.0.1][4][-]','warning in index_site_controller.'),(193,4,'my_category',1537871052.8742,'[127.0.0.1][4][-]','info in index_site_controller.'),(194,1,'my_category',1537871052.8742,'[127.0.0.1][4][-]','error in index_site_controller.'),(195,2,'my_category',1537871052.8742,'[127.0.0.1][4][-]','warning in index_site_controller.'),(196,4,'my_category',1537871053.85,'[127.0.0.1][4][-]','info in index_site_controller.'),(197,1,'my_category',1537871053.85,'[127.0.0.1][4][-]','error in index_site_controller.'),(198,2,'my_category',1537871053.85,'[127.0.0.1][4][-]','warning in index_site_controller.'),(199,4,'my_category',1537871054.6914,'[127.0.0.1][4][-]','info in index_site_controller.'),(200,1,'my_category',1537871054.6914,'[127.0.0.1][4][-]','error in index_site_controller.'),(201,2,'my_category',1537871054.6914,'[127.0.0.1][4][-]','warning in index_site_controller.'),(202,4,'my_category',1537871090.914,'[127.0.0.1][4][-]','info in index_site_controller.'),(203,1,'my_category',1537871090.9141,'[127.0.0.1][4][-]','error in index_site_controller.'),(204,2,'my_category',1537871090.9141,'[127.0.0.1][4][-]','warning in index_site_controller.'),(205,4,'my_category',1537871276.3829,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(206,1,'my_category',1537871276.3829,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(207,2,'my_category',1537871276.383,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(208,4,'my_category',1537871350.7729,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(209,1,'my_category',1537871350.7729,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(210,2,'my_category',1537871350.7729,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(211,4,'my_category',1537871369.3066,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(212,1,'my_category',1537871369.3066,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(213,2,'my_category',1537871369.3066,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(214,4,'my_category',1537871606.2819,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(215,1,'my_category',1537871606.2819,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(216,2,'my_category',1537871606.2819,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(217,4,'my_category',1537871817.648,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(218,1,'my_category',1537871817.6481,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(219,2,'my_category',1537871817.6481,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(220,4,'my_category',1537872031.7492,'[127.0.0.1][4][-]','info in index_site_controller.'),(221,1,'my_category',1537872031.7492,'[127.0.0.1][4][-]','error in index_site_controller.'),(222,2,'my_category',1537872031.7492,'[127.0.0.1][4][-]','warning in index_site_controller.'),(223,4,'my_category',1537872035.9372,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(224,1,'my_category',1537872035.9372,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(225,2,'my_category',1537872035.9372,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(226,4,'my_category',1537872074.6789,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(227,1,'my_category',1537872074.6789,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(228,2,'my_category',1537872074.679,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(229,4,'my_category',1537872161.8381,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(230,1,'my_category',1537872161.8381,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(231,2,'my_category',1537872161.8381,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(232,4,'my_category',1537872272.082,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(233,1,'my_category',1537872272.082,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(234,2,'my_category',1537872272.082,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(235,4,'my_category',1537872273.8064,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(236,1,'my_category',1537872273.8064,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(237,2,'my_category',1537872273.8064,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(238,4,'my_category',1537872326.2875,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(239,1,'my_category',1537872326.2875,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(240,2,'my_category',1537872326.2875,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(241,4,'my_category',1537872605.5748,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(242,1,'my_category',1537872605.5748,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(243,2,'my_category',1537872605.5748,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(244,4,'my_category',1537872607.8043,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(245,1,'my_category',1537872607.8043,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(246,2,'my_category',1537872607.8043,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(247,4,'my_category',1537872748.3143,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(248,1,'my_category',1537872748.3143,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(249,2,'my_category',1537872748.3143,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(250,4,'my_category',1537872750.0105,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(251,1,'my_category',1537872750.0105,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(252,2,'my_category',1537872750.0105,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(253,4,'my_category',1537873050.1651,'[127.0.0.1][4][-]','info in index_site_controller.'),(254,1,'my_category',1537873050.1651,'[127.0.0.1][4][-]','error in index_site_controller.'),(255,2,'my_category',1537873050.1651,'[127.0.0.1][4][-]','warning in index_site_controller.'),(256,4,'my_category',1537873054.1343,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(257,1,'my_category',1537873054.1343,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(258,2,'my_category',1537873054.1343,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(259,4,'my_category',1537873082.1858,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(260,1,'my_category',1537873082.1858,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(261,2,'my_category',1537873082.1858,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(262,4,'my_category',1537873468.762,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','info in index_site_controller.'),(263,1,'my_category',1537873468.762,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','error in index_site_controller.'),(264,2,'my_category',1537873468.762,'[127.0.0.1][4][h272v96295sjho1d5rjv8npbmile5laq]','warning in index_site_controller.'),(265,4,'my_category',1537883913.9944,'[127.0.0.1][4][-]','info in index_site_controller.'),(266,1,'my_category',1537883913.9944,'[127.0.0.1][4][-]','error in index_site_controller.'),(267,2,'my_category',1537883913.9944,'[127.0.0.1][4][-]','warning in index_site_controller.'),(268,4,'my_category',1537883930.0444,'[127.0.0.1][-][-]','info in index_site_controller.'),(269,1,'my_category',1537883930.0444,'[127.0.0.1][-][-]','error in index_site_controller.'),(270,2,'my_category',1537883930.0444,'[127.0.0.1][-][-]','warning in index_site_controller.'),(271,4,'my_category',1537884605.3696,'[127.0.0.1][4][-]','info in index_site_controller.'),(272,1,'my_category',1537884605.3696,'[127.0.0.1][4][-]','error in index_site_controller.'),(273,2,'my_category',1537884605.3696,'[127.0.0.1][4][-]','warning in index_site_controller.'),(274,4,'my_category',1537946679.5241,'[127.0.0.1][-][-]','info in index_site_controller.'),(275,1,'my_category',1537946679.5241,'[127.0.0.1][-][-]','error in index_site_controller.'),(276,2,'my_category',1537946679.5241,'[127.0.0.1][-][-]','warning in index_site_controller.'),(277,4,'my_category',1537946699.4089,'[127.0.0.1][1][-]','info in index_site_controller.'),(278,1,'my_category',1537946699.4089,'[127.0.0.1][1][-]','error in index_site_controller.'),(279,2,'my_category',1537946699.4089,'[127.0.0.1][1][-]','warning in index_site_controller.'),(280,4,'my_category',1537946753.4087,'[127.0.0.1][-][-]','info in index_site_controller.'),(281,1,'my_category',1537946753.4087,'[127.0.0.1][-][-]','error in index_site_controller.'),(282,2,'my_category',1537946753.4087,'[127.0.0.1][-][-]','warning in index_site_controller.'),(283,4,'my_category',1537946759.7579,'[127.0.0.1][4][-]','info in index_site_controller.'),(284,1,'my_category',1537946759.7579,'[127.0.0.1][4][-]','error in index_site_controller.'),(285,2,'my_category',1537946759.7579,'[127.0.0.1][4][-]','warning in index_site_controller.'),(286,4,'my_category',1537946786.0419,'[127.0.0.1][-][-]','info in index_site_controller.'),(287,1,'my_category',1537946786.0419,'[127.0.0.1][-][-]','error in index_site_controller.'),(288,2,'my_category',1537946786.0419,'[127.0.0.1][-][-]','warning in index_site_controller.'),(289,4,'my_category',1537946796.5683,'[127.0.0.1][1][-]','info in index_site_controller.'),(290,1,'my_category',1537946796.5683,'[127.0.0.1][1][-]','error in index_site_controller.'),(291,2,'my_category',1537946796.5683,'[127.0.0.1][1][-]','warning in index_site_controller.'),(292,4,'my_category',1537947266.1853,'[127.0.0.1][-][-]','info in index_site_controller.'),(293,1,'my_category',1537947266.1853,'[127.0.0.1][-][-]','error in index_site_controller.'),(294,2,'my_category',1537947266.1853,'[127.0.0.1][-][-]','warning in index_site_controller.'),(295,4,'my_category',1537947270.5157,'[127.0.0.1][4][-]','info in index_site_controller.'),(296,1,'my_category',1537947270.5157,'[127.0.0.1][4][-]','error in index_site_controller.'),(297,2,'my_category',1537947270.5157,'[127.0.0.1][4][-]','warning in index_site_controller.'),(298,4,'my_category',1538032499.6886,'[127.0.0.1][-][-]','info in index_site_controller.'),(299,1,'my_category',1538032499.6887,'[127.0.0.1][-][-]','error in index_site_controller.'),(300,2,'my_category',1538032499.6887,'[127.0.0.1][-][-]','warning in index_site_controller.'),(301,4,'my_category',1538118557.947,'[127.0.0.1][-][-]','info in index_site_controller.'),(302,1,'my_category',1538118557.947,'[127.0.0.1][-][-]','error in index_site_controller.'),(303,2,'my_category',1538118557.947,'[127.0.0.1][-][-]','warning in index_site_controller.'),(304,4,'my_category',1538118586.7642,'[127.0.0.1][4][-]','info in index_site_controller.'),(305,1,'my_category',1538118586.7642,'[127.0.0.1][4][-]','error in index_site_controller.'),(306,2,'my_category',1538118586.7642,'[127.0.0.1][4][-]','warning in index_site_controller.'),(307,4,'my_category',1538136721.4617,'[127.0.0.1][4][-]','info in index_site_controller.'),(308,1,'my_category',1538136721.4617,'[127.0.0.1][4][-]','error in index_site_controller.'),(309,2,'my_category',1538136721.4617,'[127.0.0.1][4][-]','warning in index_site_controller.'),(310,4,'my_category',1538136724.8067,'[127.0.0.1][4][-]','info in index_site_controller.'),(311,1,'my_category',1538136724.8067,'[127.0.0.1][4][-]','error in index_site_controller.'),(312,2,'my_category',1538136724.8067,'[127.0.0.1][4][-]','warning in index_site_controller.'),(313,4,'my_category',1538138135.533,'[127.0.0.1][-][-]','info in index_site_controller.'),(314,1,'my_category',1538138135.533,'[127.0.0.1][-][-]','error in index_site_controller.'),(315,2,'my_category',1538138135.533,'[127.0.0.1][-][-]','warning in index_site_controller.'),(316,4,'my_category',1538138387.5885,'[127.0.0.1][4][-]','info in index_site_controller.'),(317,1,'my_category',1538138387.5886,'[127.0.0.1][4][-]','error in index_site_controller.'),(318,2,'my_category',1538138387.5886,'[127.0.0.1][4][-]','warning in index_site_controller.'),(319,4,'my_category',1538140985.1034,'[127.0.0.1][-][-]','info in index_site_controller.'),(320,1,'my_category',1538140985.1034,'[127.0.0.1][-][-]','error in index_site_controller.'),(321,2,'my_category',1538140985.1034,'[127.0.0.1][-][-]','warning in index_site_controller.'),(322,4,'my_category',1538141201.9145,'[127.0.0.1][4][-]','info in index_site_controller.'),(323,1,'my_category',1538141201.9145,'[127.0.0.1][4][-]','error in index_site_controller.'),(324,2,'my_category',1538141201.9145,'[127.0.0.1][4][-]','warning in index_site_controller.'),(325,4,'my_category',1538141207.4623,'[127.0.0.1][-][-]','info in index_site_controller.'),(326,1,'my_category',1538141207.4623,'[127.0.0.1][-][-]','error in index_site_controller.'),(327,2,'my_category',1538141207.4623,'[127.0.0.1][-][-]','warning in index_site_controller.'),(328,4,'my_category',1538142375.767,'[127.0.0.1][-][-]','info in index_site_controller.'),(329,1,'my_category',1538142375.767,'[127.0.0.1][-][-]','error in index_site_controller.'),(330,2,'my_category',1538142375.767,'[127.0.0.1][-][-]','warning in index_site_controller.'),(331,4,'my_category',1538144587.5303,'[127.0.0.1][4][-]','info in index_site_controller.'),(332,1,'my_category',1538144587.5303,'[127.0.0.1][4][-]','error in index_site_controller.'),(333,2,'my_category',1538144587.5303,'[127.0.0.1][4][-]','warning in index_site_controller.'),(334,4,'my_category',1538144639.5168,'[127.0.0.1][4][-]','info in index_site_controller.'),(335,1,'my_category',1538144639.5168,'[127.0.0.1][4][-]','error in index_site_controller.'),(336,2,'my_category',1538144639.5168,'[127.0.0.1][4][-]','warning in index_site_controller.'),(337,4,'my_category',1538144639.9704,'[127.0.0.1][4][-]','info in index_site_controller.'),(338,1,'my_category',1538144639.9704,'[127.0.0.1][4][-]','error in index_site_controller.'),(339,2,'my_category',1538144639.9704,'[127.0.0.1][4][-]','warning in index_site_controller.'),(340,4,'my_category',1538145317.5751,'[127.0.0.1][-][-]','info in index_site_controller.'),(341,1,'my_category',1538145317.5751,'[127.0.0.1][-][-]','error in index_site_controller.'),(342,2,'my_category',1538145317.5751,'[127.0.0.1][-][-]','warning in index_site_controller.'),(343,4,'my_category',1538146666.6114,'[127.0.0.1][-][-]','info in index_site_controller.'),(344,1,'my_category',1538146666.6114,'[127.0.0.1][-][-]','error in index_site_controller.'),(345,2,'my_category',1538146666.6114,'[127.0.0.1][-][-]','warning in index_site_controller.'),(346,4,'my_category',1538147217.1706,'[127.0.0.1][4][-]','info in index_site_controller.'),(347,1,'my_category',1538147217.1706,'[127.0.0.1][4][-]','error in index_site_controller.'),(348,2,'my_category',1538147217.1706,'[127.0.0.1][4][-]','warning in index_site_controller.'),(349,4,'my_category',1538147439.5459,'[127.0.0.1][4][-]','info in index_site_controller.'),(350,1,'my_category',1538147439.5459,'[127.0.0.1][4][-]','error in index_site_controller.'),(351,2,'my_category',1538147439.5459,'[127.0.0.1][4][-]','warning in index_site_controller.'),(352,4,'my_category',1538148221.7567,'[127.0.0.1][-][-]','info in index_site_controller.'),(353,1,'my_category',1538148221.7567,'[127.0.0.1][-][-]','error in index_site_controller.'),(354,2,'my_category',1538148221.7567,'[127.0.0.1][-][-]','warning in index_site_controller.'),(355,4,'my_category',1538377418.5363,'[127.0.0.1][-][-]','info in index_site_controller.'),(356,1,'my_category',1538377418.5364,'[127.0.0.1][-][-]','error in index_site_controller.'),(357,2,'my_category',1538377418.5364,'[127.0.0.1][-][-]','warning in index_site_controller.'),(358,4,'my_category',1538377622.6139,'[127.0.0.1][-][-]','info in index_site_controller.'),(359,1,'my_category',1538377622.6139,'[127.0.0.1][-][-]','error in index_site_controller.'),(360,2,'my_category',1538377622.6139,'[127.0.0.1][-][-]','warning in index_site_controller.'),(361,4,'my_category',1538377622.7646,'[127.0.0.1][-][-]','info in index_site_controller.'),(362,1,'my_category',1538377622.7646,'[127.0.0.1][-][-]','error in index_site_controller.'),(363,2,'my_category',1538377622.7646,'[127.0.0.1][-][-]','warning in index_site_controller.'),(364,4,'my_category',1538403573.8834,'[127.0.0.1][4][-]','info in index_site_controller.'),(365,1,'my_category',1538403573.8834,'[127.0.0.1][4][-]','error in index_site_controller.'),(366,2,'my_category',1538403573.8834,'[127.0.0.1][4][-]','warning in index_site_controller.'),(367,4,'my_category',1538467453.971,'[127.0.0.1][-][-]','info in index_site_controller.'),(368,1,'my_category',1538467453.971,'[127.0.0.1][-][-]','error in index_site_controller.'),(369,2,'my_category',1538467453.971,'[127.0.0.1][-][-]','warning in index_site_controller.'),(370,4,'my_category',1538469340.2654,'[127.0.0.1][4][hu75pck35b5lj789m43rqmkv0034ok27]','info in index_site_controller.'),(371,1,'my_category',1538469340.2654,'[127.0.0.1][4][hu75pck35b5lj789m43rqmkv0034ok27]','error in index_site_controller.'),(372,2,'my_category',1538469340.2654,'[127.0.0.1][4][hu75pck35b5lj789m43rqmkv0034ok27]','warning in index_site_controller.'),(373,4,'my_category',1538481992.3128,'[127.0.0.1][4][-]','info in index_site_controller.'),(374,1,'my_category',1538481992.3128,'[127.0.0.1][4][-]','error in index_site_controller.'),(375,2,'my_category',1538481992.3128,'[127.0.0.1][4][-]','warning in index_site_controller.'),(376,4,'my_category',1538484472.3226,'[127.0.0.1][-][-]','info in index_site_controller.'),(377,1,'my_category',1538484472.3226,'[127.0.0.1][-][-]','error in index_site_controller.'),(378,2,'my_category',1538484472.3226,'[127.0.0.1][-][-]','warning in index_site_controller.'),(379,4,'my_category',1538484475.8974,'[127.0.0.1][-][-]','info in index_site_controller.'),(380,1,'my_category',1538484475.8974,'[127.0.0.1][-][-]','error in index_site_controller.'),(381,2,'my_category',1538484475.8974,'[127.0.0.1][-][-]','warning in index_site_controller.'),(382,4,'my_category',1538484486.019,'[127.0.0.1][4][-]','info in index_site_controller.'),(383,1,'my_category',1538484486.019,'[127.0.0.1][4][-]','error in index_site_controller.'),(384,2,'my_category',1538484486.019,'[127.0.0.1][4][-]','warning in index_site_controller.'),(385,4,'my_category',1538484499.3656,'[127.0.0.1][4][-]','info in index_site_controller.'),(386,1,'my_category',1538484499.3656,'[127.0.0.1][4][-]','error in index_site_controller.'),(387,2,'my_category',1538484499.3656,'[127.0.0.1][4][-]','warning in index_site_controller.'),(388,4,'my_category',1538484600.7983,'[127.0.0.1][4][-]','info in index_site_controller.'),(389,1,'my_category',1538484600.7983,'[127.0.0.1][4][-]','error in index_site_controller.'),(390,2,'my_category',1538484600.7983,'[127.0.0.1][4][-]','warning in index_site_controller.'),(391,4,'my_category',1538484602.3976,'[127.0.0.1][4][-]','info in index_site_controller.'),(392,1,'my_category',1538484602.3976,'[127.0.0.1][4][-]','error in index_site_controller.'),(393,2,'my_category',1538484602.3976,'[127.0.0.1][4][-]','warning in index_site_controller.'),(394,4,'my_category',1538484608.8253,'[127.0.0.1][-][-]','info in index_site_controller.'),(395,1,'my_category',1538484608.8253,'[127.0.0.1][-][-]','error in index_site_controller.'),(396,2,'my_category',1538484608.8253,'[127.0.0.1][-][-]','warning in index_site_controller.'),(397,4,'my_category',1538484613.3634,'[127.0.0.1][4][-]','info in index_site_controller.'),(398,1,'my_category',1538484613.3634,'[127.0.0.1][4][-]','error in index_site_controller.'),(399,2,'my_category',1538484613.3634,'[127.0.0.1][4][-]','warning in index_site_controller.'),(400,4,'my_category',1538484614.9525,'[127.0.0.1][-][-]','info in index_site_controller.'),(401,1,'my_category',1538484614.9525,'[127.0.0.1][-][-]','error in index_site_controller.'),(402,2,'my_category',1538484614.9525,'[127.0.0.1][-][-]','warning in index_site_controller.'),(403,4,'my_category',1538485209.7391,'[127.0.0.1][-][-]','info in index_site_controller.'),(404,1,'my_category',1538485209.7391,'[127.0.0.1][-][-]','error in index_site_controller.'),(405,2,'my_category',1538485209.7391,'[127.0.0.1][-][-]','warning in index_site_controller.'),(406,4,'my_category',1538488764.3632,'[127.0.0.1][4][-]','info in index_site_controller.'),(407,1,'my_category',1538488764.3632,'[127.0.0.1][4][-]','error in index_site_controller.'),(408,2,'my_category',1538488764.3632,'[127.0.0.1][4][-]','warning in index_site_controller.'),(409,4,'my_category',1538488797.5059,'[127.0.0.1][4][-]','info in index_site_controller.'),(410,1,'my_category',1538488797.5059,'[127.0.0.1][4][-]','error in index_site_controller.'),(411,2,'my_category',1538488797.5059,'[127.0.0.1][4][-]','warning in index_site_controller.'),(412,4,'my_category',1538552318.7523,'[127.0.0.1][4][-]','info in index_site_controller.'),(413,1,'my_category',1538552318.7523,'[127.0.0.1][4][-]','error in index_site_controller.'),(414,2,'my_category',1538552318.7523,'[127.0.0.1][4][-]','warning in index_site_controller.'),(415,4,'my_category',1538553122.2278,'[127.0.0.1][-][-]','info in index_site_controller.'),(416,1,'my_category',1538553122.2278,'[127.0.0.1][-][-]','error in index_site_controller.'),(417,2,'my_category',1538553122.2278,'[127.0.0.1][-][-]','warning in index_site_controller.'),(418,4,'my_category',1538554680.6644,'[127.0.0.1][-][-]','info in index_site_controller.'),(419,1,'my_category',1538554680.6645,'[127.0.0.1][-][-]','error in index_site_controller.'),(420,2,'my_category',1538554680.6645,'[127.0.0.1][-][-]','warning in index_site_controller.'),(421,4,'my_category',1538554695.9322,'[127.0.0.1][3][-]','info in index_site_controller.'),(422,1,'my_category',1538554695.9322,'[127.0.0.1][3][-]','error in index_site_controller.'),(423,2,'my_category',1538554695.9322,'[127.0.0.1][3][-]','warning in index_site_controller.'),(424,4,'my_category',1538555161.1863,'[127.0.0.1][-][-]','info in index_site_controller.'),(425,1,'my_category',1538555161.1863,'[127.0.0.1][-][-]','error in index_site_controller.'),(426,2,'my_category',1538555161.1863,'[127.0.0.1][-][-]','warning in index_site_controller.'),(427,4,'my_category',1538555181.6909,'[127.0.0.1][4][-]','info in index_site_controller.'),(428,1,'my_category',1538555181.6909,'[127.0.0.1][4][-]','error in index_site_controller.'),(429,2,'my_category',1538555181.6909,'[127.0.0.1][4][-]','warning in index_site_controller.'),(430,4,'my_category',1538559312.5884,'[127.0.0.1][-][-]','info in index_site_controller.'),(431,1,'my_category',1538559312.5884,'[127.0.0.1][-][-]','error in index_site_controller.'),(432,2,'my_category',1538559312.5884,'[127.0.0.1][-][-]','warning in index_site_controller.'),(433,4,'my_category',1538559315.5813,'[127.0.0.1][4][-]','info in index_site_controller.'),(434,1,'my_category',1538559315.5813,'[127.0.0.1][4][-]','error in index_site_controller.'),(435,2,'my_category',1538559315.5813,'[127.0.0.1][4][-]','warning in index_site_controller.'),(436,4,'my_category',1538559757.5977,'[127.0.0.1][-][-]','info in index_site_controller.'),(437,1,'my_category',1538559757.5977,'[127.0.0.1][-][-]','error in index_site_controller.'),(438,2,'my_category',1538559757.5977,'[127.0.0.1][-][-]','warning in index_site_controller.'),(439,4,'my_category',1538559846.8891,'[127.0.0.1][3][-]','info in index_site_controller.'),(440,1,'my_category',1538559846.8891,'[127.0.0.1][3][-]','error in index_site_controller.'),(441,2,'my_category',1538559846.8891,'[127.0.0.1][3][-]','warning in index_site_controller.'),(442,4,'my_category',1538560890.7434,'[127.0.0.1][-][-]','info in index_site_controller.'),(443,1,'my_category',1538560890.7434,'[127.0.0.1][-][-]','error in index_site_controller.'),(444,2,'my_category',1538560890.7434,'[127.0.0.1][-][-]','warning in index_site_controller.'),(445,4,'my_category',1538564933.6125,'[127.0.0.1][4][-]','info in index_site_controller.'),(446,1,'my_category',1538564933.6125,'[127.0.0.1][4][-]','error in index_site_controller.'),(447,2,'my_category',1538564933.6125,'[127.0.0.1][4][-]','warning in index_site_controller.'),(448,4,'my_category',1538571390.3983,'[127.0.0.1][-][-]','info in index_site_controller.'),(449,1,'my_category',1538571390.3983,'[127.0.0.1][-][-]','error in index_site_controller.'),(450,2,'my_category',1538571390.3983,'[127.0.0.1][-][-]','warning in index_site_controller.'),(451,4,'my_category',1538571407.2753,'[127.0.0.1][4][-]','info in index_site_controller.'),(452,1,'my_category',1538571407.2753,'[127.0.0.1][4][-]','error in index_site_controller.'),(453,2,'my_category',1538571407.2753,'[127.0.0.1][4][-]','warning in index_site_controller.'),(454,4,'my_category',1538571408.8558,'[127.0.0.1][-][-]','info in index_site_controller.'),(455,1,'my_category',1538571408.8558,'[127.0.0.1][-][-]','error in index_site_controller.'),(456,2,'my_category',1538571408.8558,'[127.0.0.1][-][-]','warning in index_site_controller.'),(457,4,'my_category',1538637310.4662,'[127.0.0.1][-][-]','info in index_site_controller.'),(458,1,'my_category',1538637310.4662,'[127.0.0.1][-][-]','error in index_site_controller.'),(459,2,'my_category',1538637310.4662,'[127.0.0.1][-][-]','warning in index_site_controller.'),(460,4,'my_category',1538660424.1121,'[127.0.0.1][4][-]','info in index_site_controller.'),(461,1,'my_category',1538660424.1121,'[127.0.0.1][4][-]','error in index_site_controller.'),(462,2,'my_category',1538660424.1122,'[127.0.0.1][4][-]','warning in index_site_controller.'),(463,4,'my_category',1538660429.5081,'[127.0.0.1][4][-]','info in index_site_controller.'),(464,1,'my_category',1538660429.5081,'[127.0.0.1][4][-]','error in index_site_controller.'),(465,2,'my_category',1538660429.5081,'[127.0.0.1][4][-]','warning in index_site_controller.'),(466,4,'my_category',1538660429.7225,'[127.0.0.1][4][-]','info in index_site_controller.'),(467,1,'my_category',1538660429.7225,'[127.0.0.1][4][-]','error in index_site_controller.'),(468,2,'my_category',1538660429.7225,'[127.0.0.1][4][-]','warning in index_site_controller.'),(469,4,'my_category',1538660431.0955,'[127.0.0.1][4][-]','info in index_site_controller.'),(470,1,'my_category',1538660431.0955,'[127.0.0.1][4][-]','error in index_site_controller.'),(471,2,'my_category',1538660431.0955,'[127.0.0.1][4][-]','warning in index_site_controller.'),(472,4,'my_category',1538660432.0225,'[127.0.0.1][4][-]','info in index_site_controller.'),(473,1,'my_category',1538660432.0225,'[127.0.0.1][4][-]','error in index_site_controller.'),(474,2,'my_category',1538660432.0225,'[127.0.0.1][4][-]','warning in index_site_controller.'),(475,4,'my_category',1538660433.7117,'[127.0.0.1][4][-]','info in index_site_controller.'),(476,1,'my_category',1538660433.7117,'[127.0.0.1][4][-]','error in index_site_controller.'),(477,2,'my_category',1538660433.7117,'[127.0.0.1][4][-]','warning in index_site_controller.'),(478,4,'my_category',1538660438.4466,'[127.0.0.1][4][-]','info in index_site_controller.'),(479,1,'my_category',1538660438.4466,'[127.0.0.1][4][-]','error in index_site_controller.'),(480,2,'my_category',1538660438.4466,'[127.0.0.1][4][-]','warning in index_site_controller.'),(481,4,'my_category',1538661287.5877,'[127.0.0.1][-][-]','info in index_site_controller.'),(482,1,'my_category',1538661287.5878,'[127.0.0.1][-][-]','error in index_site_controller.'),(483,2,'my_category',1538661287.5878,'[127.0.0.1][-][-]','warning in index_site_controller.'),(484,4,'my_category',1538661301.5783,'[127.0.0.1][-][-]','info in index_site_controller.'),(485,1,'my_category',1538661301.5783,'[127.0.0.1][-][-]','error in index_site_controller.'),(486,2,'my_category',1538661301.5783,'[127.0.0.1][-][-]','warning in index_site_controller.'),(487,4,'my_category',1538661306.1798,'[127.0.0.1][-][-]','info in index_site_controller.'),(488,1,'my_category',1538661306.1798,'[127.0.0.1][-][-]','error in index_site_controller.'),(489,2,'my_category',1538661306.1798,'[127.0.0.1][-][-]','warning in index_site_controller.'),(490,4,'my_category',1538661307.3581,'[127.0.0.1][-][-]','info in index_site_controller.'),(491,1,'my_category',1538661307.3581,'[127.0.0.1][-][-]','error in index_site_controller.'),(492,2,'my_category',1538661307.3581,'[127.0.0.1][-][-]','warning in index_site_controller.'),(493,4,'my_category',1538661307.5007,'[127.0.0.1][-][-]','info in index_site_controller.'),(494,1,'my_category',1538661307.5007,'[127.0.0.1][-][-]','error in index_site_controller.'),(495,2,'my_category',1538661307.5007,'[127.0.0.1][-][-]','warning in index_site_controller.'),(496,4,'my_category',1538661308.8094,'[127.0.0.1][-][-]','info in index_site_controller.'),(497,1,'my_category',1538661308.8094,'[127.0.0.1][-][-]','error in index_site_controller.'),(498,2,'my_category',1538661308.8095,'[127.0.0.1][-][-]','warning in index_site_controller.'),(499,4,'my_category',1538661309.5901,'[127.0.0.1][-][-]','info in index_site_controller.'),(500,1,'my_category',1538661309.5901,'[127.0.0.1][-][-]','error in index_site_controller.'),(501,2,'my_category',1538661309.5901,'[127.0.0.1][-][-]','warning in index_site_controller.'),(502,4,'my_category',1538661322.0977,'[127.0.0.1][-][-]','info in index_site_controller.'),(503,1,'my_category',1538661322.0977,'[127.0.0.1][-][-]','error in index_site_controller.'),(504,2,'my_category',1538661322.0977,'[127.0.0.1][-][-]','warning in index_site_controller.'),(505,4,'my_category',1538661324.4047,'[127.0.0.1][-][-]','info in index_site_controller.'),(506,1,'my_category',1538661324.4047,'[127.0.0.1][-][-]','error in index_site_controller.'),(507,2,'my_category',1538661324.4047,'[127.0.0.1][-][-]','warning in index_site_controller.'),(508,4,'my_category',1538661347.5977,'[127.0.0.1][-][-]','info in index_site_controller.'),(509,1,'my_category',1538661347.5977,'[127.0.0.1][-][-]','error in index_site_controller.'),(510,2,'my_category',1538661347.5978,'[127.0.0.1][-][-]','warning in index_site_controller.'),(511,4,'my_category',1538661351.1481,'[127.0.0.1][-][-]','info in index_site_controller.'),(512,1,'my_category',1538661351.1481,'[127.0.0.1][-][-]','error in index_site_controller.'),(513,2,'my_category',1538661351.1481,'[127.0.0.1][-][-]','warning in index_site_controller.'),(514,4,'my_category',1538661351.836,'[127.0.0.1][-][-]','info in index_site_controller.'),(515,1,'my_category',1538661351.836,'[127.0.0.1][-][-]','error in index_site_controller.'),(516,2,'my_category',1538661351.836,'[127.0.0.1][-][-]','warning in index_site_controller.'),(517,4,'my_category',1538661451.4052,'[127.0.0.1][4][-]','info in index_site_controller.'),(518,1,'my_category',1538661451.4052,'[127.0.0.1][4][-]','error in index_site_controller.'),(519,2,'my_category',1538661451.4052,'[127.0.0.1][4][-]','warning in index_site_controller.'),(520,4,'my_category',1538664646.71,'[127.0.0.1][-][-]','info in index_site_controller.'),(521,1,'my_category',1538664646.71,'[127.0.0.1][-][-]','error in index_site_controller.'),(522,2,'my_category',1538664646.71,'[127.0.0.1][-][-]','warning in index_site_controller.'),(523,4,'my_category',1538664653.8461,'[127.0.0.1][4][-]','info in index_site_controller.'),(524,1,'my_category',1538664653.8461,'[127.0.0.1][4][-]','error in index_site_controller.'),(525,2,'my_category',1538664653.8461,'[127.0.0.1][4][-]','warning in index_site_controller.'),(526,4,'my_category',1538664700.1148,'[127.0.0.1][-][-]','info in index_site_controller.'),(527,1,'my_category',1538664700.1148,'[127.0.0.1][-][-]','error in index_site_controller.'),(528,2,'my_category',1538664700.1148,'[127.0.0.1][-][-]','warning in index_site_controller.'),(529,4,'my_category',1538664726.4391,'[127.0.0.1][-][-]','info in index_site_controller.'),(530,1,'my_category',1538664726.4391,'[127.0.0.1][-][-]','error in index_site_controller.'),(531,2,'my_category',1538664726.4391,'[127.0.0.1][-][-]','warning in index_site_controller.'),(532,4,'my_category',1538664727.5199,'[127.0.0.1][-][-]','info in index_site_controller.'),(533,1,'my_category',1538664727.5199,'[127.0.0.1][-][-]','error in index_site_controller.'),(534,2,'my_category',1538664727.5199,'[127.0.0.1][-][-]','warning in index_site_controller.'),(535,4,'my_category',1538664733.5285,'[127.0.0.1][4][-]','info in index_site_controller.'),(536,1,'my_category',1538664733.5285,'[127.0.0.1][4][-]','error in index_site_controller.'),(537,2,'my_category',1538664733.5285,'[127.0.0.1][4][-]','warning in index_site_controller.'),(538,4,'my_category',1538664953.2892,'[127.0.0.1][4][-]','info in index_site_controller.'),(539,1,'my_category',1538664953.2892,'[127.0.0.1][4][-]','error in index_site_controller.'),(540,2,'my_category',1538664953.2892,'[127.0.0.1][4][-]','warning in index_site_controller.'),(541,4,'my_category',1538664958.0382,'[127.0.0.1][4][-]','info in index_site_controller.'),(542,1,'my_category',1538664958.0382,'[127.0.0.1][4][-]','error in index_site_controller.'),(543,2,'my_category',1538664958.0382,'[127.0.0.1][4][-]','warning in index_site_controller.'),(544,4,'my_category',1538664958.9964,'[127.0.0.1][4][-]','info in index_site_controller.'),(545,1,'my_category',1538664958.9964,'[127.0.0.1][4][-]','error in index_site_controller.'),(546,2,'my_category',1538664958.9964,'[127.0.0.1][4][-]','warning in index_site_controller.'),(547,4,'my_category',1538664960.2771,'[127.0.0.1][4][-]','info in index_site_controller.'),(548,1,'my_category',1538664960.2771,'[127.0.0.1][4][-]','error in index_site_controller.'),(549,2,'my_category',1538664960.2771,'[127.0.0.1][4][-]','warning in index_site_controller.'),(550,4,'my_category',1538664960.3858,'[127.0.0.1][4][-]','info in index_site_controller.'),(551,1,'my_category',1538664960.3858,'[127.0.0.1][4][-]','error in index_site_controller.'),(552,2,'my_category',1538664960.3858,'[127.0.0.1][4][-]','warning in index_site_controller.'),(553,4,'my_category',1538664963.6765,'[127.0.0.1][4][-]','info in index_site_controller.'),(554,1,'my_category',1538664963.6765,'[127.0.0.1][4][-]','error in index_site_controller.'),(555,2,'my_category',1538664963.6765,'[127.0.0.1][4][-]','warning in index_site_controller.'),(556,4,'my_category',1538664963.7711,'[127.0.0.1][4][-]','info in index_site_controller.'),(557,1,'my_category',1538664963.7711,'[127.0.0.1][4][-]','error in index_site_controller.'),(558,2,'my_category',1538664963.7711,'[127.0.0.1][4][-]','warning in index_site_controller.'),(559,4,'my_category',1538664966.152,'[127.0.0.1][-][-]','info in index_site_controller.'),(560,1,'my_category',1538664966.152,'[127.0.0.1][-][-]','error in index_site_controller.'),(561,2,'my_category',1538664966.152,'[127.0.0.1][-][-]','warning in index_site_controller.'),(562,4,'my_category',1538664966.289,'[127.0.0.1][-][-]','info in index_site_controller.'),(563,1,'my_category',1538664966.289,'[127.0.0.1][-][-]','error in index_site_controller.'),(564,2,'my_category',1538664966.289,'[127.0.0.1][-][-]','warning in index_site_controller.'),(565,4,'my_category',1538664973.3655,'[127.0.0.1][-][-]','info in index_site_controller.'),(566,1,'my_category',1538664973.3655,'[127.0.0.1][-][-]','error in index_site_controller.'),(567,2,'my_category',1538664973.3655,'[127.0.0.1][-][-]','warning in index_site_controller.'),(568,4,'my_category',1538664980.3639,'[127.0.0.1][4][-]','info in index_site_controller.'),(569,1,'my_category',1538664980.3639,'[127.0.0.1][4][-]','error in index_site_controller.'),(570,2,'my_category',1538664980.3639,'[127.0.0.1][4][-]','warning in index_site_controller.'),(571,4,'my_category',1538664981.6249,'[127.0.0.1][4][-]','info in index_site_controller.'),(572,1,'my_category',1538664981.6249,'[127.0.0.1][4][-]','error in index_site_controller.'),(573,2,'my_category',1538664981.6249,'[127.0.0.1][4][-]','warning in index_site_controller.'),(574,4,'my_category',1538665093.8656,'[127.0.0.1][4][-]','info in index_site_controller.'),(575,1,'my_category',1538665093.8657,'[127.0.0.1][4][-]','error in index_site_controller.'),(576,2,'my_category',1538665093.8657,'[127.0.0.1][4][-]','warning in index_site_controller.'),(577,4,'my_category',1538665096.4125,'[127.0.0.1][4][-]','info in index_site_controller.'),(578,1,'my_category',1538665096.4125,'[127.0.0.1][4][-]','error in index_site_controller.'),(579,2,'my_category',1538665096.4125,'[127.0.0.1][4][-]','warning in index_site_controller.'),(580,4,'my_category',1538665108.5308,'[127.0.0.1][-][-]','info in index_site_controller.'),(581,1,'my_category',1538665108.5308,'[127.0.0.1][-][-]','error in index_site_controller.'),(582,2,'my_category',1538665108.5308,'[127.0.0.1][-][-]','warning in index_site_controller.'),(583,4,'my_category',1538665123.5242,'[127.0.0.1][4][ete30h65js2iqdf9dco4jd1gkikan171]','info in index_site_controller.'),(584,1,'my_category',1538665123.5242,'[127.0.0.1][4][ete30h65js2iqdf9dco4jd1gkikan171]','error in index_site_controller.'),(585,2,'my_category',1538665123.5242,'[127.0.0.1][4][ete30h65js2iqdf9dco4jd1gkikan171]','warning in index_site_controller.'),(586,4,'my_category',1538665184.6481,'[127.0.0.1][4][ete30h65js2iqdf9dco4jd1gkikan171]','info in index_site_controller.'),(587,1,'my_category',1538665184.6481,'[127.0.0.1][4][ete30h65js2iqdf9dco4jd1gkikan171]','error in index_site_controller.'),(588,2,'my_category',1538665184.6481,'[127.0.0.1][4][ete30h65js2iqdf9dco4jd1gkikan171]','warning in index_site_controller.'),(589,4,'my_category',1538665187.3188,'[127.0.0.1][4][-]','info in index_site_controller.'),(590,1,'my_category',1538665187.3188,'[127.0.0.1][4][-]','error in index_site_controller.'),(591,2,'my_category',1538665187.3188,'[127.0.0.1][4][-]','warning in index_site_controller.'),(592,4,'my_category',1538665188.2891,'[127.0.0.1][4][-]','info in index_site_controller.'),(593,1,'my_category',1538665188.2891,'[127.0.0.1][4][-]','error in index_site_controller.'),(594,2,'my_category',1538665188.2891,'[127.0.0.1][4][-]','warning in index_site_controller.'),(595,4,'my_category',1538665190.0095,'[127.0.0.1][4][-]','info in index_site_controller.'),(596,1,'my_category',1538665190.0095,'[127.0.0.1][4][-]','error in index_site_controller.'),(597,2,'my_category',1538665190.0095,'[127.0.0.1][4][-]','warning in index_site_controller.'),(598,4,'my_category',1538665201.0584,'[127.0.0.1][4][-]','info in index_site_controller.'),(599,1,'my_category',1538665201.0585,'[127.0.0.1][4][-]','error in index_site_controller.'),(600,2,'my_category',1538665201.0585,'[127.0.0.1][4][-]','warning in index_site_controller.'),(601,4,'my_category',1538665207.6265,'[127.0.0.1][4][-]','info in index_site_controller.'),(602,1,'my_category',1538665207.6265,'[127.0.0.1][4][-]','error in index_site_controller.'),(603,2,'my_category',1538665207.6265,'[127.0.0.1][4][-]','warning in index_site_controller.'),(604,4,'my_category',1538665212.9154,'[127.0.0.1][-][-]','info in index_site_controller.'),(605,1,'my_category',1538665212.9154,'[127.0.0.1][-][-]','error in index_site_controller.'),(606,2,'my_category',1538665212.9154,'[127.0.0.1][-][-]','warning in index_site_controller.'),(607,4,'my_category',1538665217.8434,'[127.0.0.1][-][-]','info in index_site_controller.'),(608,1,'my_category',1538665217.8434,'[127.0.0.1][-][-]','error in index_site_controller.'),(609,2,'my_category',1538665217.8434,'[127.0.0.1][-][-]','warning in index_site_controller.'),(610,4,'my_category',1538665224.3926,'[127.0.0.1][4][-]','info in index_site_controller.'),(611,1,'my_category',1538665224.3926,'[127.0.0.1][4][-]','error in index_site_controller.'),(612,2,'my_category',1538665224.3926,'[127.0.0.1][4][-]','warning in index_site_controller.'),(613,4,'my_category',1538665225.1473,'[127.0.0.1][4][-]','info in index_site_controller.'),(614,1,'my_category',1538665225.1473,'[127.0.0.1][4][-]','error in index_site_controller.'),(615,2,'my_category',1538665225.1473,'[127.0.0.1][4][-]','warning in index_site_controller.'),(616,4,'my_category',1538665226.4116,'[127.0.0.1][4][-]','info in index_site_controller.'),(617,1,'my_category',1538665226.4116,'[127.0.0.1][4][-]','error in index_site_controller.'),(618,2,'my_category',1538665226.4116,'[127.0.0.1][4][-]','warning in index_site_controller.'),(619,4,'my_category',1538665227.9239,'[127.0.0.1][4][-]','info in index_site_controller.'),(620,1,'my_category',1538665227.9239,'[127.0.0.1][4][-]','error in index_site_controller.'),(621,2,'my_category',1538665227.9239,'[127.0.0.1][4][-]','warning in index_site_controller.'),(622,4,'my_category',1538665229.7256,'[127.0.0.1][4][-]','info in index_site_controller.'),(623,1,'my_category',1538665229.7256,'[127.0.0.1][4][-]','error in index_site_controller.'),(624,2,'my_category',1538665229.7256,'[127.0.0.1][4][-]','warning in index_site_controller.'),(625,4,'my_category',1538665231.1246,'[127.0.0.1][4][-]','info in index_site_controller.'),(626,1,'my_category',1538665231.1246,'[127.0.0.1][4][-]','error in index_site_controller.'),(627,2,'my_category',1538665231.1246,'[127.0.0.1][4][-]','warning in index_site_controller.'),(628,4,'my_category',1538665232.1796,'[127.0.0.1][4][-]','info in index_site_controller.'),(629,1,'my_category',1538665232.1796,'[127.0.0.1][4][-]','error in index_site_controller.'),(630,2,'my_category',1538665232.1796,'[127.0.0.1][4][-]','warning in index_site_controller.'),(631,4,'my_category',1538665233.29,'[127.0.0.1][4][-]','info in index_site_controller.'),(632,1,'my_category',1538665233.29,'[127.0.0.1][4][-]','error in index_site_controller.'),(633,2,'my_category',1538665233.29,'[127.0.0.1][4][-]','warning in index_site_controller.'),(634,4,'my_category',1538665235.027,'[127.0.0.1][4][-]','info in index_site_controller.'),(635,1,'my_category',1538665235.027,'[127.0.0.1][4][-]','error in index_site_controller.'),(636,2,'my_category',1538665235.027,'[127.0.0.1][4][-]','warning in index_site_controller.'),(637,4,'my_category',1538665236.4734,'[127.0.0.1][4][-]','info in index_site_controller.'),(638,1,'my_category',1538665236.4735,'[127.0.0.1][4][-]','error in index_site_controller.'),(639,2,'my_category',1538665236.4735,'[127.0.0.1][4][-]','warning in index_site_controller.'),(640,4,'my_category',1538665236.9945,'[127.0.0.1][4][-]','info in index_site_controller.'),(641,1,'my_category',1538665236.9945,'[127.0.0.1][4][-]','error in index_site_controller.'),(642,2,'my_category',1538665236.9945,'[127.0.0.1][4][-]','warning in index_site_controller.'),(643,4,'my_category',1538665238.1704,'[127.0.0.1][4][-]','info in index_site_controller.'),(644,1,'my_category',1538665238.1704,'[127.0.0.1][4][-]','error in index_site_controller.'),(645,2,'my_category',1538665238.1704,'[127.0.0.1][4][-]','warning in index_site_controller.'),(646,4,'my_category',1538665238.2841,'[127.0.0.1][4][-]','info in index_site_controller.'),(647,1,'my_category',1538665238.2841,'[127.0.0.1][4][-]','error in index_site_controller.'),(648,2,'my_category',1538665238.2841,'[127.0.0.1][4][-]','warning in index_site_controller.'),(649,4,'my_category',1538665250.658,'[127.0.0.1][4][-]','info in index_site_controller.'),(650,1,'my_category',1538665250.658,'[127.0.0.1][4][-]','error in index_site_controller.'),(651,2,'my_category',1538665250.658,'[127.0.0.1][4][-]','warning in index_site_controller.'),(652,4,'my_category',1538665251.5702,'[127.0.0.1][4][-]','info in index_site_controller.'),(653,1,'my_category',1538665251.5702,'[127.0.0.1][4][-]','error in index_site_controller.'),(654,2,'my_category',1538665251.5702,'[127.0.0.1][4][-]','warning in index_site_controller.'),(655,4,'my_category',1538665253.0986,'[127.0.0.1][4][-]','info in index_site_controller.'),(656,1,'my_category',1538665253.0986,'[127.0.0.1][4][-]','error in index_site_controller.'),(657,2,'my_category',1538665253.0986,'[127.0.0.1][4][-]','warning in index_site_controller.'),(658,4,'my_category',1538665583.3669,'[127.0.0.1][4][-]','info in index_site_controller.'),(659,1,'my_category',1538665583.3669,'[127.0.0.1][4][-]','error in index_site_controller.'),(660,2,'my_category',1538665583.3669,'[127.0.0.1][4][-]','warning in index_site_controller.'),(661,4,'my_category',1538729932.2013,'[127.0.0.1][-][-]','info in index_site_controller.'),(662,1,'my_category',1538729932.2013,'[127.0.0.1][-][-]','error in index_site_controller.'),(663,2,'my_category',1538729932.2013,'[127.0.0.1][-][-]','warning in index_site_controller.'),(664,4,'my_category',1538729939.8586,'[127.0.0.1][-][-]','info in index_site_controller.'),(665,1,'my_category',1538729939.8586,'[127.0.0.1][-][-]','error in index_site_controller.'),(666,2,'my_category',1538729939.8586,'[127.0.0.1][-][-]','warning in index_site_controller.'),(667,4,'my_category',1538729941.0433,'[127.0.0.1][-][-]','info in index_site_controller.'),(668,1,'my_category',1538729941.0433,'[127.0.0.1][-][-]','error in index_site_controller.'),(669,2,'my_category',1538729941.0433,'[127.0.0.1][-][-]','warning in index_site_controller.'),(670,4,'my_category',1538729941.7373,'[127.0.0.1][-][-]','info in index_site_controller.'),(671,1,'my_category',1538729941.7373,'[127.0.0.1][-][-]','error in index_site_controller.'),(672,2,'my_category',1538729941.7373,'[127.0.0.1][-][-]','warning in index_site_controller.'),(673,4,'my_category',1538729941.8405,'[127.0.0.1][-][-]','info in index_site_controller.'),(674,1,'my_category',1538729941.8405,'[127.0.0.1][-][-]','error in index_site_controller.'),(675,2,'my_category',1538729941.8405,'[127.0.0.1][-][-]','warning in index_site_controller.'),(676,4,'my_category',1538729943.1207,'[127.0.0.1][-][-]','info in index_site_controller.'),(677,1,'my_category',1538729943.1207,'[127.0.0.1][-][-]','error in index_site_controller.'),(678,2,'my_category',1538729943.1207,'[127.0.0.1][-][-]','warning in index_site_controller.'),(679,4,'my_category',1538729947.5907,'[127.0.0.1][4][-]','info in index_site_controller.'),(680,1,'my_category',1538729947.5907,'[127.0.0.1][4][-]','error in index_site_controller.'),(681,2,'my_category',1538729947.5907,'[127.0.0.1][4][-]','warning in index_site_controller.'),(682,4,'my_category',1538730009.6801,'[127.0.0.1][4][-]','info in index_site_controller.'),(683,1,'my_category',1538730009.6802,'[127.0.0.1][4][-]','error in index_site_controller.'),(684,2,'my_category',1538730009.6802,'[127.0.0.1][4][-]','warning in index_site_controller.'),(685,4,'my_category',1538730287.4969,'[127.0.0.1][4][-]','info in index_site_controller.'),(686,1,'my_category',1538730287.4969,'[127.0.0.1][4][-]','error in index_site_controller.'),(687,2,'my_category',1538730287.497,'[127.0.0.1][4][-]','warning in index_site_controller.'),(688,4,'my_category',1538730352.8562,'[127.0.0.1][4][-]','info in index_site_controller.'),(689,1,'my_category',1538730352.8562,'[127.0.0.1][4][-]','error in index_site_controller.'),(690,2,'my_category',1538730352.8562,'[127.0.0.1][4][-]','warning in index_site_controller.'),(691,4,'my_category',1538730355.5288,'[127.0.0.1][4][-]','info in index_site_controller.'),(692,1,'my_category',1538730355.5288,'[127.0.0.1][4][-]','error in index_site_controller.'),(693,2,'my_category',1538730355.5288,'[127.0.0.1][4][-]','warning in index_site_controller.'),(694,4,'my_category',1538730376.9765,'[127.0.0.1][4][-]','info in index_site_controller.'),(695,1,'my_category',1538730376.9765,'[127.0.0.1][4][-]','error in index_site_controller.'),(696,2,'my_category',1538730376.9765,'[127.0.0.1][4][-]','warning in index_site_controller.'),(697,4,'my_category',1538730390.8557,'[127.0.0.1][4][-]','info in index_site_controller.'),(698,1,'my_category',1538730390.8557,'[127.0.0.1][4][-]','error in index_site_controller.'),(699,2,'my_category',1538730390.8557,'[127.0.0.1][4][-]','warning in index_site_controller.'),(700,4,'my_category',1538730392.3788,'[127.0.0.1][4][-]','info in index_site_controller.'),(701,1,'my_category',1538730392.3788,'[127.0.0.1][4][-]','error in index_site_controller.'),(702,2,'my_category',1538730392.3788,'[127.0.0.1][4][-]','warning in index_site_controller.'),(703,4,'my_category',1538730492.5458,'[127.0.0.1][-][-]','info in index_site_controller.'),(704,1,'my_category',1538730492.5458,'[127.0.0.1][-][-]','error in index_site_controller.'),(705,2,'my_category',1538730492.5458,'[127.0.0.1][-][-]','warning in index_site_controller.'),(706,4,'my_category',1538730500.0976,'[127.0.0.1][-][-]','info in index_site_controller.'),(707,1,'my_category',1538730500.0976,'[127.0.0.1][-][-]','error in index_site_controller.'),(708,2,'my_category',1538730500.0976,'[127.0.0.1][-][-]','warning in index_site_controller.'),(709,4,'my_category',1538730513.8682,'[127.0.0.1][-][-]','info in index_site_controller.'),(710,1,'my_category',1538730513.8682,'[127.0.0.1][-][-]','error in index_site_controller.'),(711,2,'my_category',1538730513.8682,'[127.0.0.1][-][-]','warning in index_site_controller.'),(712,4,'my_category',1538730537.0377,'[127.0.0.1][-][-]','info in index_site_controller.'),(713,1,'my_category',1538730537.0377,'[127.0.0.1][-][-]','error in index_site_controller.'),(714,2,'my_category',1538730537.0377,'[127.0.0.1][-][-]','warning in index_site_controller.'),(715,4,'my_category',1538730538.3546,'[127.0.0.1][-][-]','info in index_site_controller.'),(716,1,'my_category',1538730538.3546,'[127.0.0.1][-][-]','error in index_site_controller.'),(717,2,'my_category',1538730538.3546,'[127.0.0.1][-][-]','warning in index_site_controller.'),(718,4,'my_category',1538730540.8099,'[127.0.0.1][-][-]','info in index_site_controller.'),(719,1,'my_category',1538730540.8099,'[127.0.0.1][-][-]','error in index_site_controller.'),(720,2,'my_category',1538730540.8099,'[127.0.0.1][-][-]','warning in index_site_controller.'),(721,4,'my_category',1538730543.4569,'[127.0.0.1][-][-]','info in index_site_controller.'),(722,1,'my_category',1538730543.4569,'[127.0.0.1][-][-]','error in index_site_controller.'),(723,2,'my_category',1538730543.4569,'[127.0.0.1][-][-]','warning in index_site_controller.'),(724,4,'my_category',1538730567.7969,'[127.0.0.1][4][-]','info in index_site_controller.'),(725,1,'my_category',1538730567.7969,'[127.0.0.1][4][-]','error in index_site_controller.'),(726,2,'my_category',1538730567.7969,'[127.0.0.1][4][-]','warning in index_site_controller.'),(727,4,'my_category',1538730583.1426,'[127.0.0.1][4][-]','info in index_site_controller.'),(728,1,'my_category',1538730583.1426,'[127.0.0.1][4][-]','error in index_site_controller.'),(729,2,'my_category',1538730583.1426,'[127.0.0.1][4][-]','warning in index_site_controller.'),(730,4,'my_category',1538730609.649,'[127.0.0.1][4][-]','info in index_site_controller.'),(731,1,'my_category',1538730609.649,'[127.0.0.1][4][-]','error in index_site_controller.'),(732,2,'my_category',1538730609.649,'[127.0.0.1][4][-]','warning in index_site_controller.'),(733,4,'my_category',1538730614.7895,'[127.0.0.1][4][-]','info in index_site_controller.'),(734,1,'my_category',1538730614.7895,'[127.0.0.1][4][-]','error in index_site_controller.'),(735,2,'my_category',1538730614.7895,'[127.0.0.1][4][-]','warning in index_site_controller.'),(736,4,'my_category',1538730636.3388,'[127.0.0.1][4][-]','info in index_site_controller.'),(737,1,'my_category',1538730636.3388,'[127.0.0.1][4][-]','error in index_site_controller.'),(738,2,'my_category',1538730636.3388,'[127.0.0.1][4][-]','warning in index_site_controller.'),(739,4,'my_category',1538730663.0241,'[127.0.0.1][4][-]','info in index_site_controller.'),(740,1,'my_category',1538730663.0241,'[127.0.0.1][4][-]','error in index_site_controller.'),(741,2,'my_category',1538730663.0241,'[127.0.0.1][4][-]','warning in index_site_controller.'),(742,4,'my_category',1538730681.9288,'[127.0.0.1][4][-]','info in index_site_controller.'),(743,1,'my_category',1538730681.9288,'[127.0.0.1][4][-]','error in index_site_controller.'),(744,2,'my_category',1538730681.9288,'[127.0.0.1][4][-]','warning in index_site_controller.'),(745,4,'my_category',1538730696.9425,'[127.0.0.1][4][-]','info in index_site_controller.'),(746,1,'my_category',1538730696.9425,'[127.0.0.1][4][-]','error in index_site_controller.'),(747,2,'my_category',1538730696.9425,'[127.0.0.1][4][-]','warning in index_site_controller.'),(748,4,'my_category',1538730697.156,'[127.0.0.1][4][-]','info in index_site_controller.'),(749,1,'my_category',1538730697.156,'[127.0.0.1][4][-]','error in index_site_controller.'),(750,2,'my_category',1538730697.156,'[127.0.0.1][4][-]','warning in index_site_controller.'),(751,4,'my_category',1538750595.2424,'[127.0.0.1][-][-]','info in index_site_controller.'),(752,1,'my_category',1538750595.2424,'[127.0.0.1][-][-]','error in index_site_controller.'),(753,2,'my_category',1538750595.2424,'[127.0.0.1][-][-]','warning in index_site_controller.'),(754,4,'my_category',1538921682.84,'[::1][4][-]','info in index_site_controller.'),(755,1,'my_category',1538921682.84,'[::1][4][-]','error in index_site_controller.'),(756,2,'my_category',1538921682.84,'[::1][4][-]','warning in index_site_controller.'),(757,4,'my_category',1538921698.01,'[::1][4][-]','info in index_site_controller.'),(758,1,'my_category',1538921698.01,'[::1][4][-]','error in index_site_controller.'),(759,2,'my_category',1538921698.01,'[::1][4][-]','warning in index_site_controller.'),(760,4,'my_category',1538921700.82,'[::1][4][-]','info in index_site_controller.'),(761,1,'my_category',1538921700.82,'[::1][4][-]','error in index_site_controller.'),(762,2,'my_category',1538921700.82,'[::1][4][-]','warning in index_site_controller.'),(763,4,'my_category',1538928456.12,'[::1][-][-]','info in index_site_controller.'),(764,1,'my_category',1538928456.12,'[::1][-][-]','error in index_site_controller.'),(765,2,'my_category',1538928456.12,'[::1][-][-]','warning in index_site_controller.'),(766,4,'my_category',1538928458.29,'[::1][-][-]','info in index_site_controller.'),(767,1,'my_category',1538928458.29,'[::1][-][-]','error in index_site_controller.'),(768,2,'my_category',1538928458.29,'[::1][-][-]','warning in index_site_controller.'),(769,4,'my_category',1538928461.83,'[::1][-][-]','info in index_site_controller.'),(770,1,'my_category',1538928461.83,'[::1][-][-]','error in index_site_controller.'),(771,2,'my_category',1538928461.83,'[::1][-][-]','warning in index_site_controller.'),(772,4,'my_category',1538928461.97,'[::1][-][-]','info in index_site_controller.'),(773,1,'my_category',1538928461.97,'[::1][-][-]','error in index_site_controller.'),(774,2,'my_category',1538928461.97,'[::1][-][-]','warning in index_site_controller.'),(775,4,'my_category',1538928487.5,'[::1][4][-]','info in index_site_controller.'),(776,1,'my_category',1538928487.5,'[::1][4][-]','error in index_site_controller.'),(777,2,'my_category',1538928487.5,'[::1][4][-]','warning in index_site_controller.'),(778,4,'my_category',1538928524.21,'[::1][4][-]','info in index_site_controller.'),(779,1,'my_category',1538928524.21,'[::1][4][-]','error in index_site_controller.'),(780,2,'my_category',1538928524.21,'[::1][4][-]','warning in index_site_controller.'),(781,4,'my_category',1538928537.58,'[::1][4][-]','info in index_site_controller.'),(782,1,'my_category',1538928537.58,'[::1][4][-]','error in index_site_controller.'),(783,2,'my_category',1538928537.58,'[::1][4][-]','warning in index_site_controller.'),(784,4,'my_category',1538928539.21,'[::1][4][-]','info in index_site_controller.'),(785,1,'my_category',1538928539.21,'[::1][4][-]','error in index_site_controller.'),(786,2,'my_category',1538928539.21,'[::1][4][-]','warning in index_site_controller.'),(787,4,'my_category',1538930356.85,'[::1][4][-]','info in index_site_controller.'),(788,1,'my_category',1538930356.85,'[::1][4][-]','error in index_site_controller.'),(789,2,'my_category',1538930356.85,'[::1][4][-]','warning in index_site_controller.'),(790,4,'my_category',1538930359.98,'[::1][4][-]','info in index_site_controller.'),(791,1,'my_category',1538930359.98,'[::1][4][-]','error in index_site_controller.'),(792,2,'my_category',1538930359.98,'[::1][4][-]','warning in index_site_controller.'),(793,4,'my_category',1538932142.69,'[::1][4][-]','info in index_site_controller.'),(794,1,'my_category',1538932142.69,'[::1][4][-]','error in index_site_controller.'),(795,2,'my_category',1538932142.69,'[::1][4][-]','warning in index_site_controller.'),(796,4,'my_category',1538934640.96,'[127.0.0.1][-][-]','info in index_site_controller.'),(797,1,'my_category',1538934640.96,'[127.0.0.1][-][-]','error in index_site_controller.'),(798,2,'my_category',1538934640.96,'[127.0.0.1][-][-]','warning in index_site_controller.'),(799,4,'my_category',1538934648.89,'[127.0.0.1][-][-]','info in index_site_controller.'),(800,1,'my_category',1538934648.89,'[127.0.0.1][-][-]','error in index_site_controller.'),(801,2,'my_category',1538934648.89,'[127.0.0.1][-][-]','warning in index_site_controller.'),(802,4,'my_category',1538942076.39,'[::1][4][-]','info in index_site_controller.'),(803,1,'my_category',1538942076.39,'[::1][4][-]','error in index_site_controller.'),(804,2,'my_category',1538942076.39,'[::1][4][-]','warning in index_site_controller.'),(805,4,'my_category',1538947287.63,'[::1][4][-]','info in index_site_controller.'),(806,1,'my_category',1538947287.63,'[::1][4][-]','error in index_site_controller.'),(807,2,'my_category',1538947287.63,'[::1][4][-]','warning in index_site_controller.'),(808,4,'my_category',1538947287.73,'[::1][4][-]','info in index_site_controller.'),(809,1,'my_category',1538947287.73,'[::1][4][-]','error in index_site_controller.'),(810,2,'my_category',1538947287.73,'[::1][4][-]','warning in index_site_controller.'),(811,4,'my_category',1538947315.75,'[::1][4][-]','info in index_site_controller.'),(812,1,'my_category',1538947315.75,'[::1][4][-]','error in index_site_controller.'),(813,2,'my_category',1538947315.75,'[::1][4][-]','warning in index_site_controller.'),(814,4,'my_category',1538947403.93,'[::1][4][-]','info in index_site_controller.'),(815,1,'my_category',1538947403.93,'[::1][4][-]','error in index_site_controller.'),(816,2,'my_category',1538947403.93,'[::1][4][-]','warning in index_site_controller.'),(817,4,'my_category',1538947408.08,'[::1][4][-]','info in index_site_controller.'),(818,1,'my_category',1538947408.08,'[::1][4][-]','error in index_site_controller.'),(819,2,'my_category',1538947408.08,'[::1][4][-]','warning in index_site_controller.'),(820,4,'my_category',1539015637.65,'[::1][4][-]','info in index_site_controller.'),(821,1,'my_category',1539015637.65,'[::1][4][-]','error in index_site_controller.'),(822,2,'my_category',1539015637.65,'[::1][4][-]','warning in index_site_controller.'),(823,4,'my_category',1539015809.62,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','info in index_site_controller.'),(824,1,'my_category',1539015809.62,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','error in index_site_controller.'),(825,2,'my_category',1539015809.62,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','warning in index_site_controller.'),(826,4,'my_category',1539015814.47,'[::1][4][-]','info in index_site_controller.'),(827,1,'my_category',1539015814.47,'[::1][4][-]','error in index_site_controller.'),(828,2,'my_category',1539015814.47,'[::1][4][-]','warning in index_site_controller.'),(829,4,'my_category',1539016012.48,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','info in index_site_controller.'),(830,1,'my_category',1539016012.48,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','error in index_site_controller.'),(831,2,'my_category',1539016012.48,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','warning in index_site_controller.'),(832,4,'my_category',1539016015.11,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','info in index_site_controller.'),(833,1,'my_category',1539016015.11,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','error in index_site_controller.'),(834,2,'my_category',1539016015.11,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','warning in index_site_controller.'),(835,4,'my_category',1539016016.54,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','info in index_site_controller.'),(836,1,'my_category',1539016016.54,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','error in index_site_controller.'),(837,2,'my_category',1539016016.54,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','warning in index_site_controller.'),(838,4,'my_category',1539016029.15,'[::1][4][-]','info in index_site_controller.'),(839,1,'my_category',1539016029.15,'[::1][4][-]','error in index_site_controller.'),(840,2,'my_category',1539016029.15,'[::1][4][-]','warning in index_site_controller.'),(841,4,'my_category',1539016040.69,'[::1][4][-]','info in index_site_controller.'),(842,1,'my_category',1539016040.69,'[::1][4][-]','error in index_site_controller.'),(843,2,'my_category',1539016040.69,'[::1][4][-]','warning in index_site_controller.'),(844,4,'my_category',1539016042.73,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','info in index_site_controller.'),(845,1,'my_category',1539016042.73,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','error in index_site_controller.'),(846,2,'my_category',1539016042.73,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','warning in index_site_controller.'),(847,4,'my_category',1539016180.04,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','info in index_site_controller.'),(848,1,'my_category',1539016180.04,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','error in index_site_controller.'),(849,2,'my_category',1539016180.04,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','warning in index_site_controller.'),(850,4,'my_category',1539016181.05,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','info in index_site_controller.'),(851,1,'my_category',1539016181.05,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','error in index_site_controller.'),(852,2,'my_category',1539016181.05,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','warning in index_site_controller.'),(853,4,'my_category',1539016181.84,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','info in index_site_controller.'),(854,1,'my_category',1539016181.84,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','error in index_site_controller.'),(855,2,'my_category',1539016181.84,'[::1][4][b9be513ab6b1377206a22e40befc4b58]','warning in index_site_controller.'),(856,4,'my_category',1539016391.31,'[::1][-][-]','info in index_site_controller.'),(857,1,'my_category',1539016391.31,'[::1][-][-]','error in index_site_controller.'),(858,2,'my_category',1539016391.31,'[::1][-][-]','warning in index_site_controller.'),(859,4,'my_category',1539016393.05,'[::1][-][-]','info in index_site_controller.'),(860,1,'my_category',1539016393.05,'[::1][-][-]','error in index_site_controller.'),(861,2,'my_category',1539016393.05,'[::1][-][-]','warning in index_site_controller.'),(862,4,'my_category',1539016531.16,'[::1][-][-]','info in index_site_controller.'),(863,1,'my_category',1539016531.16,'[::1][-][-]','error in index_site_controller.'),(864,2,'my_category',1539016531.16,'[::1][-][-]','warning in index_site_controller.'),(865,4,'my_category',1539016677.91,'[::1][-][4383be8d05c564cc8789992daf4018d1]','info in index_site_controller.'),(866,1,'my_category',1539016677.91,'[::1][-][4383be8d05c564cc8789992daf4018d1]','error in index_site_controller.'),(867,2,'my_category',1539016677.91,'[::1][-][4383be8d05c564cc8789992daf4018d1]','warning in index_site_controller.'),(868,4,'my_category',1539016971.33,'[::1][-][-]','info in index_site_controller.'),(869,1,'my_category',1539016971.33,'[::1][-][-]','error in index_site_controller.'),(870,2,'my_category',1539016971.33,'[::1][-][-]','warning in index_site_controller.'),(871,4,'my_category',1539016978.79,'[::1][4][-]','info in index_site_controller.'),(872,1,'my_category',1539016978.79,'[::1][4][-]','error in index_site_controller.'),(873,2,'my_category',1539016978.79,'[::1][4][-]','warning in index_site_controller.'),(874,4,'my_category',1539016980.41,'[::1][4][0db5a7c85ffda93c51486e54a9b69c6c]','info in index_site_controller.'),(875,1,'my_category',1539016980.41,'[::1][4][0db5a7c85ffda93c51486e54a9b69c6c]','error in index_site_controller.'),(876,2,'my_category',1539016980.41,'[::1][4][0db5a7c85ffda93c51486e54a9b69c6c]','warning in index_site_controller.'),(877,4,'my_category',1539016985.29,'[::1][4][-]','info in index_site_controller.'),(878,1,'my_category',1539016985.29,'[::1][4][-]','error in index_site_controller.'),(879,2,'my_category',1539016985.29,'[::1][4][-]','warning in index_site_controller.'),(880,4,'my_category',1539016992.67,'[::1][4][0db5a7c85ffda93c51486e54a9b69c6c]','info in index_site_controller.'),(881,1,'my_category',1539016992.67,'[::1][4][0db5a7c85ffda93c51486e54a9b69c6c]','error in index_site_controller.'),(882,2,'my_category',1539016992.67,'[::1][4][0db5a7c85ffda93c51486e54a9b69c6c]','warning in index_site_controller.'),(883,4,'my_category',1539017636.96,'[::1][4][-]','info in index_site_controller.'),(884,1,'my_category',1539017636.96,'[::1][4][-]','error in index_site_controller.'),(885,2,'my_category',1539017636.96,'[::1][4][-]','warning in index_site_controller.'),(886,4,'my_category',1539017700.46,'[::1][4][-]','info in index_site_controller.'),(887,1,'my_category',1539017700.46,'[::1][4][-]','error in index_site_controller.'),(888,2,'my_category',1539017700.46,'[::1][4][-]','warning in index_site_controller.'),(889,4,'my_category',1539017716.68,'[::1][4][-]','info in index_site_controller.'),(890,1,'my_category',1539017716.68,'[::1][4][-]','error in index_site_controller.'),(891,2,'my_category',1539017716.68,'[::1][4][-]','warning in index_site_controller.'),(892,4,'my_category',1539017718.16,'[::1][4][-]','info in index_site_controller.'),(893,1,'my_category',1539017718.16,'[::1][4][-]','error in index_site_controller.'),(894,2,'my_category',1539017718.16,'[::1][4][-]','warning in index_site_controller.'),(895,4,'my_category',1539017720.08,'[::1][4][-]','info in index_site_controller.'),(896,1,'my_category',1539017720.08,'[::1][4][-]','error in index_site_controller.'),(897,2,'my_category',1539017720.08,'[::1][4][-]','warning in index_site_controller.'),(898,4,'my_category',1539017816.36,'[::1][4][-]','info in index_site_controller.'),(899,1,'my_category',1539017816.36,'[::1][4][-]','error in index_site_controller.'),(900,2,'my_category',1539017816.36,'[::1][4][-]','warning in index_site_controller.'),(901,4,'my_category',1539017845.6,'[::1][4][-]','info in index_site_controller.'),(902,1,'my_category',1539017845.6,'[::1][4][-]','error in index_site_controller.'),(903,2,'my_category',1539017845.6,'[::1][4][-]','warning in index_site_controller.'),(904,4,'my_category',1539017865.46,'[::1][4][-]','info in index_site_controller.'),(905,1,'my_category',1539017865.46,'[::1][4][-]','error in index_site_controller.'),(906,2,'my_category',1539017865.46,'[::1][4][-]','warning in index_site_controller.'),(907,4,'my_category',1539018025.07,'[::1][4][-]','info in index_site_controller.'),(908,1,'my_category',1539018025.07,'[::1][4][-]','error in index_site_controller.'),(909,2,'my_category',1539018025.07,'[::1][4][-]','warning in index_site_controller.'),(910,4,'my_category',1539018066,'[::1][4][-]','info in index_site_controller.'),(911,1,'my_category',1539018066,'[::1][4][-]','error in index_site_controller.'),(912,2,'my_category',1539018066,'[::1][4][-]','warning in index_site_controller.'),(913,4,'my_category',1539018174.48,'[::1][4][-]','info in index_site_controller.'),(914,1,'my_category',1539018174.48,'[::1][4][-]','error in index_site_controller.'),(915,2,'my_category',1539018174.48,'[::1][4][-]','warning in index_site_controller.'),(916,4,'my_category',1539018216.71,'[::1][4][-]','info in index_site_controller.'),(917,1,'my_category',1539018216.71,'[::1][4][-]','error in index_site_controller.'),(918,2,'my_category',1539018216.71,'[::1][4][-]','warning in index_site_controller.'),(919,4,'my_category',1539018295.14,'[::1][4][-]','info in index_site_controller.'),(920,1,'my_category',1539018295.14,'[::1][4][-]','error in index_site_controller.'),(921,2,'my_category',1539018295.14,'[::1][4][-]','warning in index_site_controller.'),(922,4,'my_category',1539018322.59,'[::1][4][-]','info in index_site_controller.'),(923,1,'my_category',1539018322.59,'[::1][4][-]','error in index_site_controller.'),(924,2,'my_category',1539018322.59,'[::1][4][-]','warning in index_site_controller.'),(925,4,'my_category',1539018438.39,'[::1][4][-]','info in index_site_controller.'),(926,1,'my_category',1539018438.39,'[::1][4][-]','error in index_site_controller.'),(927,2,'my_category',1539018438.39,'[::1][4][-]','warning in index_site_controller.'),(928,4,'my_category',1539018459.39,'[::1][4][-]','info in index_site_controller.'),(929,1,'my_category',1539018459.39,'[::1][4][-]','error in index_site_controller.'),(930,2,'my_category',1539018459.39,'[::1][4][-]','warning in index_site_controller.'),(931,4,'my_category',1539018533.78,'[::1][4][-]','info in index_site_controller.'),(932,1,'my_category',1539018533.78,'[::1][4][-]','error in index_site_controller.'),(933,2,'my_category',1539018533.78,'[::1][4][-]','warning in index_site_controller.'),(934,4,'my_category',1539018537.03,'[::1][4][-]','info in index_site_controller.'),(935,1,'my_category',1539018537.03,'[::1][4][-]','error in index_site_controller.'),(936,2,'my_category',1539018537.03,'[::1][4][-]','warning in index_site_controller.'),(937,4,'my_category',1539018559.42,'[::1][4][-]','info in index_site_controller.'),(938,1,'my_category',1539018559.42,'[::1][4][-]','error in index_site_controller.'),(939,2,'my_category',1539018559.42,'[::1][4][-]','warning in index_site_controller.'),(940,4,'my_category',1539018562.74,'[::1][4][-]','info in index_site_controller.'),(941,1,'my_category',1539018562.74,'[::1][4][-]','error in index_site_controller.'),(942,2,'my_category',1539018562.74,'[::1][4][-]','warning in index_site_controller.'),(943,4,'my_category',1539018564.69,'[::1][4][-]','info in index_site_controller.'),(944,1,'my_category',1539018564.69,'[::1][4][-]','error in index_site_controller.'),(945,2,'my_category',1539018564.69,'[::1][4][-]','warning in index_site_controller.'),(946,4,'my_category',1539018567.78,'[::1][4][-]','info in index_site_controller.'),(947,1,'my_category',1539018567.78,'[::1][4][-]','error in index_site_controller.'),(948,2,'my_category',1539018567.78,'[::1][4][-]','warning in index_site_controller.'),(949,4,'my_category',1539018570,'[::1][4][-]','info in index_site_controller.'),(950,1,'my_category',1539018570,'[::1][4][-]','error in index_site_controller.'),(951,2,'my_category',1539018570,'[::1][4][-]','warning in index_site_controller.'),(952,4,'my_category',1539018788.68,'[::1][4][-]','info in index_site_controller.'),(953,1,'my_category',1539018788.68,'[::1][4][-]','error in index_site_controller.'),(954,2,'my_category',1539018788.68,'[::1][4][-]','warning in index_site_controller.'),(955,4,'my_category',1539018798.61,'[::1][4][-]','info in index_site_controller.'),(956,1,'my_category',1539018798.61,'[::1][4][-]','error in index_site_controller.'),(957,2,'my_category',1539018798.61,'[::1][4][-]','warning in index_site_controller.'),(958,4,'my_category',1539018823.73,'[::1][4][-]','info in index_site_controller.'),(959,1,'my_category',1539018823.73,'[::1][4][-]','error in index_site_controller.'),(960,2,'my_category',1539018823.73,'[::1][4][-]','warning in index_site_controller.'),(961,4,'my_category',1539018840.07,'[::1][4][-]','info in index_site_controller.'),(962,1,'my_category',1539018840.07,'[::1][4][-]','error in index_site_controller.'),(963,2,'my_category',1539018840.07,'[::1][4][-]','warning in index_site_controller.'),(964,4,'my_category',1539018876.8,'[::1][4][-]','info in index_site_controller.'),(965,1,'my_category',1539018876.8,'[::1][4][-]','error in index_site_controller.'),(966,2,'my_category',1539018876.8,'[::1][4][-]','warning in index_site_controller.'),(967,4,'my_category',1539018886.5,'[::1][4][-]','info in index_site_controller.'),(968,1,'my_category',1539018886.5,'[::1][4][-]','error in index_site_controller.'),(969,2,'my_category',1539018886.5,'[::1][4][-]','warning in index_site_controller.'),(970,4,'my_category',1539019093.95,'[::1][4][-]','info in index_site_controller.'),(971,1,'my_category',1539019093.95,'[::1][4][-]','error in index_site_controller.'),(972,2,'my_category',1539019093.95,'[::1][4][-]','warning in index_site_controller.'),(973,4,'my_category',1539019104.74,'[::1][4][-]','info in index_site_controller.'),(974,1,'my_category',1539019104.74,'[::1][4][-]','error in index_site_controller.'),(975,2,'my_category',1539019104.74,'[::1][4][-]','warning in index_site_controller.'),(976,4,'my_category',1539019108.32,'[::1][4][-]','info in index_site_controller.'),(977,1,'my_category',1539019108.32,'[::1][4][-]','error in index_site_controller.'),(978,2,'my_category',1539019108.32,'[::1][4][-]','warning in index_site_controller.'),(979,4,'my_category',1539019112.3,'[::1][4][-]','info in index_site_controller.'),(980,1,'my_category',1539019112.3,'[::1][4][-]','error in index_site_controller.'),(981,2,'my_category',1539019112.3,'[::1][4][-]','warning in index_site_controller.'),(982,4,'my_category',1539019115.78,'[::1][4][-]','info in index_site_controller.'),(983,1,'my_category',1539019115.78,'[::1][4][-]','error in index_site_controller.'),(984,2,'my_category',1539019115.78,'[::1][4][-]','warning in index_site_controller.'),(985,4,'my_category',1539019119.1,'[::1][4][-]','info in index_site_controller.'),(986,1,'my_category',1539019119.1,'[::1][4][-]','error in index_site_controller.'),(987,2,'my_category',1539019119.1,'[::1][4][-]','warning in index_site_controller.'),(988,4,'my_category',1539019123.17,'[::1][4][-]','info in index_site_controller.'),(989,1,'my_category',1539019123.17,'[::1][4][-]','error in index_site_controller.'),(990,2,'my_category',1539019123.17,'[::1][4][-]','warning in index_site_controller.'),(991,4,'my_category',1539019127.02,'[::1][4][-]','info in index_site_controller.'),(992,1,'my_category',1539019127.02,'[::1][4][-]','error in index_site_controller.'),(993,2,'my_category',1539019127.02,'[::1][4][-]','warning in index_site_controller.'),(994,4,'my_category',1539019136.49,'[::1][4][-]','info in index_site_controller.'),(995,1,'my_category',1539019136.49,'[::1][4][-]','error in index_site_controller.'),(996,2,'my_category',1539019136.49,'[::1][4][-]','warning in index_site_controller.'),(997,4,'my_category',1539019164.68,'[::1][-][-]','info in index_site_controller.'),(998,1,'my_category',1539019164.68,'[::1][-][-]','error in index_site_controller.'),(999,2,'my_category',1539019164.68,'[::1][-][-]','warning in index_site_controller.'),(1000,4,'my_category',1539019384.43,'[::1][-][-]','info in index_site_controller.'),(1001,1,'my_category',1539019384.43,'[::1][-][-]','error in index_site_controller.'),(1002,2,'my_category',1539019384.43,'[::1][-][-]','warning in index_site_controller.'),(1003,4,'my_category',1539019456.85,'[::1][-][-]','info in index_site_controller.'),(1004,1,'my_category',1539019456.85,'[::1][-][-]','error in index_site_controller.'),(1005,2,'my_category',1539019456.85,'[::1][-][-]','warning in index_site_controller.'),(1006,4,'my_category',1539019486.94,'[::1][-][-]','info in index_site_controller.'),(1007,1,'my_category',1539019486.94,'[::1][-][-]','error in index_site_controller.'),(1008,2,'my_category',1539019486.94,'[::1][-][-]','warning in index_site_controller.'),(1009,4,'my_category',1539019603.54,'[::1][-][-]','info in index_site_controller.'),(1010,1,'my_category',1539019603.54,'[::1][-][-]','error in index_site_controller.'),(1011,2,'my_category',1539019603.54,'[::1][-][-]','warning in index_site_controller.'),(1012,4,'my_category',1539019642.69,'[::1][-][-]','info in index_site_controller.'),(1013,1,'my_category',1539019642.69,'[::1][-][-]','error in index_site_controller.'),(1014,2,'my_category',1539019642.69,'[::1][-][-]','warning in index_site_controller.'),(1015,4,'my_category',1539019723.99,'[::1][-][-]','info in index_site_controller.'),(1016,1,'my_category',1539019723.99,'[::1][-][-]','error in index_site_controller.'),(1017,2,'my_category',1539019723.99,'[::1][-][-]','warning in index_site_controller.'),(1018,4,'my_category',1539021351.71,'[::1][-][-]','info in index_site_controller.'),(1019,1,'my_category',1539021351.71,'[::1][-][-]','error in index_site_controller.'),(1020,2,'my_category',1539021351.71,'[::1][-][-]','warning in index_site_controller.'),(1021,4,'my_category',1539021719.87,'[::1][-][-]','info in index_site_controller.'),(1022,1,'my_category',1539021719.87,'[::1][-][-]','error in index_site_controller.'),(1023,2,'my_category',1539021719.87,'[::1][-][-]','warning in index_site_controller.'),(1024,4,'my_category',1539021725.75,'[::1][-][-]','info in index_site_controller.'),(1025,1,'my_category',1539021725.75,'[::1][-][-]','error in index_site_controller.'),(1026,2,'my_category',1539021725.75,'[::1][-][-]','warning in index_site_controller.'),(1027,4,'my_category',1539021727.23,'[::1][-][-]','info in index_site_controller.'),(1028,1,'my_category',1539021727.23,'[::1][-][-]','error in index_site_controller.'),(1029,2,'my_category',1539021727.23,'[::1][-][-]','warning in index_site_controller.'),(1030,4,'my_category',1539021729.05,'[::1][-][-]','info in index_site_controller.'),(1031,1,'my_category',1539021729.05,'[::1][-][-]','error in index_site_controller.'),(1032,2,'my_category',1539021729.05,'[::1][-][-]','warning in index_site_controller.'),(1033,4,'my_category',1539021732.22,'[::1][-][-]','info in index_site_controller.'),(1034,1,'my_category',1539021732.22,'[::1][-][-]','error in index_site_controller.'),(1035,2,'my_category',1539021732.22,'[::1][-][-]','warning in index_site_controller.'),(1036,4,'my_category',1539021735.05,'[::1][-][-]','info in index_site_controller.'),(1037,1,'my_category',1539021735.05,'[::1][-][-]','error in index_site_controller.'),(1038,2,'my_category',1539021735.05,'[::1][-][-]','warning in index_site_controller.'),(1039,4,'my_category',1539022052.72,'[::1][4][-]','info in index_site_controller.'),(1040,1,'my_category',1539022052.72,'[::1][4][-]','error in index_site_controller.'),(1041,2,'my_category',1539022052.72,'[::1][4][-]','warning in index_site_controller.'),(1042,4,'my_category',1539022060.62,'[::1][4][-]','info in index_site_controller.'),(1043,1,'my_category',1539022060.62,'[::1][4][-]','error in index_site_controller.'),(1044,2,'my_category',1539022060.62,'[::1][4][-]','warning in index_site_controller.'),(1045,4,'my_category',1539022061.56,'[::1][4][-]','info in index_site_controller.'),(1046,1,'my_category',1539022061.56,'[::1][4][-]','error in index_site_controller.'),(1047,2,'my_category',1539022061.56,'[::1][4][-]','warning in index_site_controller.'),(1048,4,'my_category',1539022461.54,'[::1][4][-]','info in index_site_controller.'),(1049,1,'my_category',1539022461.54,'[::1][4][-]','error in index_site_controller.'),(1050,2,'my_category',1539022461.54,'[::1][4][-]','warning in index_site_controller.'),(1051,4,'my_category',1539022487.97,'[::1][4][-]','info in index_site_controller.'),(1052,1,'my_category',1539022487.97,'[::1][4][-]','error in index_site_controller.'),(1053,2,'my_category',1539022487.97,'[::1][4][-]','warning in index_site_controller.'),(1054,4,'my_category',1539022719.7,'[::1][4][-]','info in index_site_controller.'),(1055,1,'my_category',1539022719.7,'[::1][4][-]','error in index_site_controller.'),(1056,2,'my_category',1539022719.7,'[::1][4][-]','warning in index_site_controller.'),(1057,4,'my_category',1539023058.24,'[::1][4][-]','info in index_site_controller.'),(1058,1,'my_category',1539023058.24,'[::1][4][-]','error in index_site_controller.'),(1059,2,'my_category',1539023058.24,'[::1][4][-]','warning in index_site_controller.'),(1060,4,'my_category',1539023097.04,'[::1][4][-]','info in index_site_controller.'),(1061,1,'my_category',1539023097.04,'[::1][4][-]','error in index_site_controller.'),(1062,2,'my_category',1539023097.04,'[::1][4][-]','warning in index_site_controller.'),(1063,4,'my_category',1539023102.11,'[::1][4][-]','info in index_site_controller.'),(1064,1,'my_category',1539023102.11,'[::1][4][-]','error in index_site_controller.'),(1065,2,'my_category',1539023102.11,'[::1][4][-]','warning in index_site_controller.'),(1066,4,'my_category',1539023109.88,'[::1][4][-]','info in index_site_controller.'),(1067,1,'my_category',1539023109.88,'[::1][4][-]','error in index_site_controller.'),(1068,2,'my_category',1539023109.88,'[::1][4][-]','warning in index_site_controller.'),(1069,4,'my_category',1539023114.73,'[::1][4][-]','info in index_site_controller.'),(1070,1,'my_category',1539023114.73,'[::1][4][-]','error in index_site_controller.'),(1071,2,'my_category',1539023114.73,'[::1][4][-]','warning in index_site_controller.'),(1072,4,'my_category',1539024046.08,'[::1][4][-]','info in index_site_controller.'),(1073,1,'my_category',1539024046.08,'[::1][4][-]','error in index_site_controller.'),(1074,2,'my_category',1539024046.08,'[::1][4][-]','warning in index_site_controller.'),(1075,4,'my_category',1539024061.76,'[::1][-][-]','info in index_site_controller.'),(1076,1,'my_category',1539024061.76,'[::1][-][-]','error in index_site_controller.'),(1077,2,'my_category',1539024061.76,'[::1][-][-]','warning in index_site_controller.'),(1078,4,'my_category',1539024065.24,'[::1][-][-]','info in index_site_controller.'),(1079,1,'my_category',1539024065.24,'[::1][-][-]','error in index_site_controller.'),(1080,2,'my_category',1539024065.24,'[::1][-][-]','warning in index_site_controller.'),(1081,4,'my_category',1539024111.04,'[::1][-][-]','info in index_site_controller.'),(1082,1,'my_category',1539024111.04,'[::1][-][-]','error in index_site_controller.'),(1083,2,'my_category',1539024111.04,'[::1][-][-]','warning in index_site_controller.'),(1084,4,'my_category',1539024125.83,'[::1][-][-]','info in index_site_controller.'),(1085,1,'my_category',1539024125.83,'[::1][-][-]','error in index_site_controller.'),(1086,2,'my_category',1539024125.83,'[::1][-][-]','warning in index_site_controller.'),(1087,4,'my_category',1539024238.08,'[::1][4][-]','info in index_site_controller.'),(1088,1,'my_category',1539024238.08,'[::1][4][-]','error in index_site_controller.'),(1089,2,'my_category',1539024238.08,'[::1][4][-]','warning in index_site_controller.'),(1090,4,'my_category',1539024243.34,'[::1][4][-]','info in index_site_controller.'),(1091,1,'my_category',1539024243.34,'[::1][4][-]','error in index_site_controller.'),(1092,2,'my_category',1539024243.34,'[::1][4][-]','warning in index_site_controller.'),(1093,4,'my_category',1539024299.16,'[::1][4][-]','info in index_site_controller.'),(1094,1,'my_category',1539024299.16,'[::1][4][-]','error in index_site_controller.'),(1095,2,'my_category',1539024299.16,'[::1][4][-]','warning in index_site_controller.'),(1096,4,'my_category',1539024309.67,'[::1][4][-]','info in index_site_controller.'),(1097,1,'my_category',1539024309.67,'[::1][4][-]','error in index_site_controller.'),(1098,2,'my_category',1539024309.67,'[::1][4][-]','warning in index_site_controller.'),(1099,4,'my_category',1539024331.54,'[::1][4][-]','info in index_site_controller.'),(1100,1,'my_category',1539024331.54,'[::1][4][-]','error in index_site_controller.'),(1101,2,'my_category',1539024331.54,'[::1][4][-]','warning in index_site_controller.'),(1102,4,'my_category',1539024333.28,'[::1][4][-]','info in index_site_controller.'),(1103,1,'my_category',1539024333.28,'[::1][4][-]','error in index_site_controller.'),(1104,2,'my_category',1539024333.28,'[::1][4][-]','warning in index_site_controller.'),(1105,4,'my_category',1539024409.17,'[::1][4][-]','info in index_site_controller.'),(1106,1,'my_category',1539024409.17,'[::1][4][-]','error in index_site_controller.'),(1107,2,'my_category',1539024409.17,'[::1][4][-]','warning in index_site_controller.'),(1108,4,'my_category',1539024412.5,'[::1][4][-]','info in index_site_controller.'),(1109,1,'my_category',1539024412.5,'[::1][4][-]','error in index_site_controller.'),(1110,2,'my_category',1539024412.5,'[::1][4][-]','warning in index_site_controller.'),(1111,4,'my_category',1539024449.4,'[::1][4][-]','info in index_site_controller.'),(1112,1,'my_category',1539024449.4,'[::1][4][-]','error in index_site_controller.'),(1113,2,'my_category',1539024449.4,'[::1][4][-]','warning in index_site_controller.'),(1114,4,'my_category',1539024451.54,'[::1][4][-]','info in index_site_controller.'),(1115,1,'my_category',1539024451.54,'[::1][4][-]','error in index_site_controller.'),(1116,2,'my_category',1539024451.54,'[::1][4][-]','warning in index_site_controller.'),(1117,4,'my_category',1539024453.49,'[::1][4][-]','info in index_site_controller.'),(1118,1,'my_category',1539024453.49,'[::1][4][-]','error in index_site_controller.'),(1119,2,'my_category',1539024453.49,'[::1][4][-]','warning in index_site_controller.'),(1120,4,'my_category',1539024454.28,'[::1][4][-]','info in index_site_controller.'),(1121,1,'my_category',1539024454.28,'[::1][4][-]','error in index_site_controller.'),(1122,2,'my_category',1539024454.28,'[::1][4][-]','warning in index_site_controller.'),(1123,4,'my_category',1539024891.28,'[::1][4][-]','info in index_site_controller.'),(1124,1,'my_category',1539024891.28,'[::1][4][-]','error in index_site_controller.'),(1125,2,'my_category',1539024891.28,'[::1][4][-]','warning in index_site_controller.'),(1126,4,'my_category',1539024958.35,'[::1][4][-]','info in index_site_controller.'),(1127,1,'my_category',1539024958.35,'[::1][4][-]','error in index_site_controller.'),(1128,2,'my_category',1539024958.35,'[::1][4][-]','warning in index_site_controller.'),(1129,4,'my_category',1539025219.11,'[::1][4][-]','info in index_site_controller.'),(1130,1,'my_category',1539025219.11,'[::1][4][-]','error in index_site_controller.'),(1131,2,'my_category',1539025219.11,'[::1][4][-]','warning in index_site_controller.'),(1132,4,'my_category',1539025232.2,'[::1][4][-]','info in index_site_controller.'),(1133,1,'my_category',1539025232.2,'[::1][4][-]','error in index_site_controller.'),(1134,2,'my_category',1539025232.2,'[::1][4][-]','warning in index_site_controller.'),(1135,4,'my_category',1539025270.94,'[::1][4][-]','info in index_site_controller.'),(1136,1,'my_category',1539025270.94,'[::1][4][-]','error in index_site_controller.'),(1137,2,'my_category',1539025270.94,'[::1][4][-]','warning in index_site_controller.'),(1138,4,'my_category',1539025339.26,'[::1][4][-]','info in index_site_controller.'),(1139,1,'my_category',1539025339.26,'[::1][4][-]','error in index_site_controller.'),(1140,2,'my_category',1539025339.26,'[::1][4][-]','warning in index_site_controller.'),(1141,4,'my_category',1539025364.52,'[::1][4][-]','info in index_site_controller.'),(1142,1,'my_category',1539025364.52,'[::1][4][-]','error in index_site_controller.'),(1143,2,'my_category',1539025364.52,'[::1][4][-]','warning in index_site_controller.'),(1144,4,'my_category',1539025386.96,'[::1][4][-]','info in index_site_controller.'),(1145,1,'my_category',1539025386.96,'[::1][4][-]','error in index_site_controller.'),(1146,2,'my_category',1539025386.96,'[::1][4][-]','warning in index_site_controller.'),(1147,4,'my_category',1539025404.98,'[::1][4][-]','info in index_site_controller.'),(1148,1,'my_category',1539025404.98,'[::1][4][-]','error in index_site_controller.'),(1149,2,'my_category',1539025404.98,'[::1][4][-]','warning in index_site_controller.'),(1150,4,'my_category',1539025439.74,'[::1][4][-]','info in index_site_controller.'),(1151,1,'my_category',1539025439.74,'[::1][4][-]','error in index_site_controller.'),(1152,2,'my_category',1539025439.74,'[::1][4][-]','warning in index_site_controller.'),(1153,4,'my_category',1539025461.2,'[::1][4][-]','info in index_site_controller.'),(1154,1,'my_category',1539025461.2,'[::1][4][-]','error in index_site_controller.'),(1155,2,'my_category',1539025461.2,'[::1][4][-]','warning in index_site_controller.'),(1156,4,'my_category',1539025474.4,'[::1][4][-]','info in index_site_controller.'),(1157,1,'my_category',1539025474.4,'[::1][4][-]','error in index_site_controller.'),(1158,2,'my_category',1539025474.4,'[::1][4][-]','warning in index_site_controller.'),(1159,4,'my_category',1539025484.68,'[::1][4][-]','info in index_site_controller.'),(1160,1,'my_category',1539025484.68,'[::1][4][-]','error in index_site_controller.'),(1161,2,'my_category',1539025484.68,'[::1][4][-]','warning in index_site_controller.'),(1162,4,'my_category',1539025505.46,'[::1][4][-]','info in index_site_controller.'),(1163,1,'my_category',1539025505.46,'[::1][4][-]','error in index_site_controller.'),(1164,2,'my_category',1539025505.46,'[::1][4][-]','warning in index_site_controller.'),(1165,4,'my_category',1539025509.05,'[::1][4][-]','info in index_site_controller.'),(1166,1,'my_category',1539025509.05,'[::1][4][-]','error in index_site_controller.'),(1167,2,'my_category',1539025509.05,'[::1][4][-]','warning in index_site_controller.'),(1168,4,'my_category',1539025524.05,'[::1][4][-]','info in index_site_controller.'),(1169,1,'my_category',1539025524.05,'[::1][4][-]','error in index_site_controller.'),(1170,2,'my_category',1539025524.05,'[::1][4][-]','warning in index_site_controller.'),(1171,4,'my_category',1539025525.28,'[::1][4][-]','info in index_site_controller.'),(1172,1,'my_category',1539025525.28,'[::1][4][-]','error in index_site_controller.'),(1173,2,'my_category',1539025525.28,'[::1][4][-]','warning in index_site_controller.'),(1174,4,'my_category',1539025527.89,'[::1][4][-]','info in index_site_controller.'),(1175,1,'my_category',1539025527.89,'[::1][4][-]','error in index_site_controller.'),(1176,2,'my_category',1539025527.89,'[::1][4][-]','warning in index_site_controller.'),(1177,4,'my_category',1539025530.03,'[::1][4][-]','info in index_site_controller.'),(1178,1,'my_category',1539025530.03,'[::1][4][-]','error in index_site_controller.'),(1179,2,'my_category',1539025530.03,'[::1][4][-]','warning in index_site_controller.'),(1180,4,'my_category',1539025532.22,'[::1][4][-]','info in index_site_controller.'),(1181,1,'my_category',1539025532.22,'[::1][4][-]','error in index_site_controller.'),(1182,2,'my_category',1539025532.22,'[::1][4][-]','warning in index_site_controller.'),(1183,4,'my_category',1539025533.89,'[::1][4][-]','info in index_site_controller.'),(1184,1,'my_category',1539025533.89,'[::1][4][-]','error in index_site_controller.'),(1185,2,'my_category',1539025533.89,'[::1][4][-]','warning in index_site_controller.'),(1186,4,'my_category',1539025535.7,'[::1][4][-]','info in index_site_controller.'),(1187,1,'my_category',1539025535.7,'[::1][4][-]','error in index_site_controller.'),(1188,2,'my_category',1539025535.7,'[::1][4][-]','warning in index_site_controller.'),(1189,4,'my_category',1539025537.11,'[::1][4][-]','info in index_site_controller.'),(1190,1,'my_category',1539025537.11,'[::1][4][-]','error in index_site_controller.'),(1191,2,'my_category',1539025537.11,'[::1][4][-]','warning in index_site_controller.'),(1192,4,'my_category',1539025540.75,'[::1][4][-]','info in index_site_controller.'),(1193,1,'my_category',1539025540.75,'[::1][4][-]','error in index_site_controller.'),(1194,2,'my_category',1539025540.75,'[::1][4][-]','warning in index_site_controller.'),(1195,4,'my_category',1539025600.13,'[::1][4][-]','info in index_site_controller.'),(1196,1,'my_category',1539025600.13,'[::1][4][-]','error in index_site_controller.'),(1197,2,'my_category',1539025600.13,'[::1][4][-]','warning in index_site_controller.'),(1198,4,'my_category',1539025601.95,'[::1][4][-]','info in index_site_controller.'),(1199,1,'my_category',1539025601.95,'[::1][4][-]','error in index_site_controller.'),(1200,2,'my_category',1539025601.95,'[::1][4][-]','warning in index_site_controller.'),(1201,4,'my_category',1539025604.03,'[::1][4][-]','info in index_site_controller.'),(1202,1,'my_category',1539025604.03,'[::1][4][-]','error in index_site_controller.'),(1203,2,'my_category',1539025604.03,'[::1][4][-]','warning in index_site_controller.'),(1204,4,'my_category',1539025619.15,'[::1][4][-]','info in index_site_controller.'),(1205,1,'my_category',1539025619.15,'[::1][4][-]','error in index_site_controller.'),(1206,2,'my_category',1539025619.15,'[::1][4][-]','warning in index_site_controller.'),(1207,4,'my_category',1539025908.13,'[::1][4][-]','info in index_site_controller.'),(1208,1,'my_category',1539025908.13,'[::1][4][-]','error in index_site_controller.'),(1209,2,'my_category',1539025908.13,'[::1][4][-]','warning in index_site_controller.'),(1210,4,'my_category',1539025912.24,'[::1][4][-]','info in index_site_controller.'),(1211,1,'my_category',1539025912.24,'[::1][4][-]','error in index_site_controller.'),(1212,2,'my_category',1539025912.24,'[::1][4][-]','warning in index_site_controller.'),(1213,4,'my_category',1539025918.3,'[::1][4][-]','info in index_site_controller.'),(1214,1,'my_category',1539025918.3,'[::1][4][-]','error in index_site_controller.'),(1215,2,'my_category',1539025918.3,'[::1][4][-]','warning in index_site_controller.'),(1216,4,'my_category',1539025936.06,'[::1][4][-]','info in index_site_controller.'),(1217,1,'my_category',1539025936.06,'[::1][4][-]','error in index_site_controller.'),(1218,2,'my_category',1539025936.06,'[::1][4][-]','warning in index_site_controller.'),(1219,4,'my_category',1539025938.81,'[::1][4][-]','info in index_site_controller.'),(1220,1,'my_category',1539025938.81,'[::1][4][-]','error in index_site_controller.'),(1221,2,'my_category',1539025938.81,'[::1][4][-]','warning in index_site_controller.'),(1222,4,'my_category',1539025940.03,'[::1][4][-]','info in index_site_controller.'),(1223,1,'my_category',1539025940.03,'[::1][4][-]','error in index_site_controller.'),(1224,2,'my_category',1539025940.03,'[::1][4][-]','warning in index_site_controller.'),(1225,4,'my_category',1539025952.54,'[::1][4][-]','info in index_site_controller.'),(1226,1,'my_category',1539025952.54,'[::1][4][-]','error in index_site_controller.'),(1227,2,'my_category',1539025952.54,'[::1][4][-]','warning in index_site_controller.'),(1228,4,'my_category',1539025955.06,'[::1][4][-]','info in index_site_controller.'),(1229,1,'my_category',1539025955.06,'[::1][4][-]','error in index_site_controller.'),(1230,2,'my_category',1539025955.06,'[::1][4][-]','warning in index_site_controller.'),(1231,4,'my_category',1539025982.84,'[::1][4][-]','info in index_site_controller.'),(1232,1,'my_category',1539025982.84,'[::1][4][-]','error in index_site_controller.'),(1233,2,'my_category',1539025982.84,'[::1][4][-]','warning in index_site_controller.'),(1234,4,'my_category',1539025996.4,'[::1][4][-]','info in index_site_controller.'),(1235,1,'my_category',1539025996.4,'[::1][4][-]','error in index_site_controller.'),(1236,2,'my_category',1539025996.4,'[::1][4][-]','warning in index_site_controller.'),(1237,4,'my_category',1539026010.36,'[::1][4][-]','info in index_site_controller.'),(1238,1,'my_category',1539026010.36,'[::1][4][-]','error in index_site_controller.'),(1239,2,'my_category',1539026010.36,'[::1][4][-]','warning in index_site_controller.'),(1240,4,'my_category',1539026021.12,'[::1][4][-]','info in index_site_controller.'),(1241,1,'my_category',1539026021.12,'[::1][4][-]','error in index_site_controller.'),(1242,2,'my_category',1539026021.12,'[::1][4][-]','warning in index_site_controller.'),(1243,4,'my_category',1539026027.7,'[::1][4][-]','info in index_site_controller.'),(1244,1,'my_category',1539026027.7,'[::1][4][-]','error in index_site_controller.'),(1245,2,'my_category',1539026027.7,'[::1][4][-]','warning in index_site_controller.'),(1246,4,'my_category',1539026029.3,'[::1][4][-]','info in index_site_controller.'),(1247,1,'my_category',1539026029.3,'[::1][4][-]','error in index_site_controller.'),(1248,2,'my_category',1539026029.3,'[::1][4][-]','warning in index_site_controller.'),(1249,4,'my_category',1539026031.63,'[::1][4][-]','info in index_site_controller.'),(1250,1,'my_category',1539026031.63,'[::1][4][-]','error in index_site_controller.'),(1251,2,'my_category',1539026031.63,'[::1][4][-]','warning in index_site_controller.'),(1252,4,'my_category',1539026033.74,'[::1][4][-]','info in index_site_controller.'),(1253,1,'my_category',1539026033.74,'[::1][4][-]','error in index_site_controller.'),(1254,2,'my_category',1539026033.74,'[::1][4][-]','warning in index_site_controller.'),(1255,4,'my_category',1539026038.12,'[::1][4][-]','info in index_site_controller.'),(1256,1,'my_category',1539026038.12,'[::1][4][-]','error in index_site_controller.'),(1257,2,'my_category',1539026038.12,'[::1][4][-]','warning in index_site_controller.'),(1258,4,'my_category',1539026044.05,'[::1][4][-]','info in index_site_controller.'),(1259,1,'my_category',1539026044.05,'[::1][4][-]','error in index_site_controller.'),(1260,2,'my_category',1539026044.05,'[::1][4][-]','warning in index_site_controller.'),(1261,4,'my_category',1539026045.23,'[::1][4][-]','info in index_site_controller.'),(1262,1,'my_category',1539026045.23,'[::1][4][-]','error in index_site_controller.'),(1263,2,'my_category',1539026045.23,'[::1][4][-]','warning in index_site_controller.'),(1264,4,'my_category',1539026052.71,'[::1][4][-]','info in index_site_controller.'),(1265,1,'my_category',1539026052.71,'[::1][4][-]','error in index_site_controller.'),(1266,2,'my_category',1539026052.71,'[::1][4][-]','warning in index_site_controller.'),(1267,4,'my_category',1539026055.48,'[::1][4][-]','info in index_site_controller.'),(1268,1,'my_category',1539026055.48,'[::1][4][-]','error in index_site_controller.'),(1269,2,'my_category',1539026055.48,'[::1][4][-]','warning in index_site_controller.'),(1270,4,'my_category',1539026062.47,'[::1][4][-]','info in index_site_controller.'),(1271,1,'my_category',1539026062.47,'[::1][4][-]','error in index_site_controller.'),(1272,2,'my_category',1539026062.47,'[::1][4][-]','warning in index_site_controller.'),(1273,4,'my_category',1539026065.28,'[::1][4][-]','info in index_site_controller.'),(1274,1,'my_category',1539026065.28,'[::1][4][-]','error in index_site_controller.'),(1275,2,'my_category',1539026065.28,'[::1][4][-]','warning in index_site_controller.'),(1276,4,'my_category',1539026072.51,'[::1][4][-]','info in index_site_controller.'),(1277,1,'my_category',1539026072.51,'[::1][4][-]','error in index_site_controller.'),(1278,2,'my_category',1539026072.51,'[::1][4][-]','warning in index_site_controller.'),(1279,4,'my_category',1539026075.11,'[::1][4][-]','info in index_site_controller.'),(1280,1,'my_category',1539026075.11,'[::1][4][-]','error in index_site_controller.'),(1281,2,'my_category',1539026075.11,'[::1][4][-]','warning in index_site_controller.'),(1282,4,'my_category',1539026079.17,'[::1][4][-]','info in index_site_controller.'),(1283,1,'my_category',1539026079.17,'[::1][4][-]','error in index_site_controller.'),(1284,2,'my_category',1539026079.17,'[::1][4][-]','warning in index_site_controller.'),(1285,4,'my_category',1539026619.48,'[::1][4][-]','info in index_site_controller.'),(1286,1,'my_category',1539026619.48,'[::1][4][-]','error in index_site_controller.'),(1287,2,'my_category',1539026619.48,'[::1][4][-]','warning in index_site_controller.'),(1288,4,'my_category',1539026621.95,'[::1][4][-]','info in index_site_controller.'),(1289,1,'my_category',1539026621.95,'[::1][4][-]','error in index_site_controller.'),(1290,2,'my_category',1539026621.95,'[::1][4][-]','warning in index_site_controller.'),(1291,4,'my_category',1539026623.36,'[::1][4][-]','info in index_site_controller.'),(1292,1,'my_category',1539026623.36,'[::1][4][-]','error in index_site_controller.'),(1293,2,'my_category',1539026623.36,'[::1][4][-]','warning in index_site_controller.'),(1294,4,'my_category',1539026625.33,'[::1][4][-]','info in index_site_controller.'),(1295,1,'my_category',1539026625.33,'[::1][4][-]','error in index_site_controller.'),(1296,2,'my_category',1539026625.33,'[::1][4][-]','warning in index_site_controller.'),(1297,4,'my_category',1539026635,'[::1][-][-]','info in index_site_controller.'),(1298,1,'my_category',1539026635,'[::1][-][-]','error in index_site_controller.'),(1299,2,'my_category',1539026635,'[::1][-][-]','warning in index_site_controller.'),(1300,4,'my_category',1539026637.13,'[::1][-][-]','info in index_site_controller.'),(1301,1,'my_category',1539026637.13,'[::1][-][-]','error in index_site_controller.'),(1302,2,'my_category',1539026637.13,'[::1][-][-]','warning in index_site_controller.'),(1303,4,'my_category',1539026641.72,'[::1][-][-]','info in index_site_controller.'),(1304,1,'my_category',1539026641.72,'[::1][-][-]','error in index_site_controller.'),(1305,2,'my_category',1539026641.72,'[::1][-][-]','warning in index_site_controller.'),(1306,4,'my_category',1539026645.88,'[::1][-][-]','info in index_site_controller.'),(1307,1,'my_category',1539026645.88,'[::1][-][-]','error in index_site_controller.'),(1308,2,'my_category',1539026645.88,'[::1][-][-]','warning in index_site_controller.'),(1309,4,'my_category',1539032132.85,'[::1][-][-]','info in index_site_controller.'),(1310,1,'my_category',1539032132.85,'[::1][-][-]','error in index_site_controller.'),(1311,2,'my_category',1539032132.85,'[::1][-][-]','warning in index_site_controller.'),(1312,4,'my_category',1539032135.66,'[::1][-][-]','info in index_site_controller.'),(1313,1,'my_category',1539032135.66,'[::1][-][-]','error in index_site_controller.'),(1314,2,'my_category',1539032135.66,'[::1][-][-]','warning in index_site_controller.'),(1315,4,'my_category',1539032141.52,'[::1][-][-]','info in index_site_controller.'),(1316,1,'my_category',1539032141.52,'[::1][-][-]','error in index_site_controller.'),(1317,2,'my_category',1539032141.52,'[::1][-][-]','warning in index_site_controller.'),(1318,4,'my_category',1539032321.15,'[::1][-][-]','info in index_site_controller.'),(1319,1,'my_category',1539032321.15,'[::1][-][-]','error in index_site_controller.'),(1320,2,'my_category',1539032321.15,'[::1][-][-]','warning in index_site_controller.'),(1321,4,'my_category',1539032331.42,'[::1][-][-]','info in index_site_controller.'),(1322,1,'my_category',1539032331.42,'[::1][-][-]','error in index_site_controller.'),(1323,2,'my_category',1539032331.42,'[::1][-][-]','warning in index_site_controller.'),(1324,4,'my_category',1539032336.95,'[::1][-][-]','info in index_site_controller.'),(1325,1,'my_category',1539032336.95,'[::1][-][-]','error in index_site_controller.'),(1326,2,'my_category',1539032336.95,'[::1][-][-]','warning in index_site_controller.'),(1327,4,'my_category',1539032341.27,'[::1][-][-]','info in index_site_controller.'),(1328,1,'my_category',1539032341.27,'[::1][-][-]','error in index_site_controller.'),(1329,2,'my_category',1539032341.27,'[::1][-][-]','warning in index_site_controller.'),(1330,4,'my_category',1539032349.96,'[::1][4][-]','info in index_site_controller.'),(1331,1,'my_category',1539032349.96,'[::1][4][-]','error in index_site_controller.'),(1332,2,'my_category',1539032349.96,'[::1][4][-]','warning in index_site_controller.'),(1333,4,'my_category',1539032356.25,'[::1][4][-]','info in index_site_controller.'),(1334,1,'my_category',1539032356.25,'[::1][4][-]','error in index_site_controller.'),(1335,2,'my_category',1539032356.25,'[::1][4][-]','warning in index_site_controller.'),(1336,4,'my_category',1539032358.55,'[::1][4][-]','info in index_site_controller.'),(1337,1,'my_category',1539032358.55,'[::1][4][-]','error in index_site_controller.'),(1338,2,'my_category',1539032358.55,'[::1][4][-]','warning in index_site_controller.'),(1339,4,'my_category',1539032406.01,'[::1][4][-]','info in index_site_controller.'),(1340,1,'my_category',1539032406.01,'[::1][4][-]','error in index_site_controller.'),(1341,2,'my_category',1539032406.01,'[::1][4][-]','warning in index_site_controller.'),(1342,4,'my_category',1539032407.93,'[::1][4][-]','info in index_site_controller.'),(1343,1,'my_category',1539032407.93,'[::1][4][-]','error in index_site_controller.'),(1344,2,'my_category',1539032407.93,'[::1][4][-]','warning in index_site_controller.'),(1345,4,'my_category',1539032409.77,'[::1][4][-]','info in index_site_controller.'),(1346,1,'my_category',1539032409.77,'[::1][4][-]','error in index_site_controller.'),(1347,2,'my_category',1539032409.77,'[::1][4][-]','warning in index_site_controller.'),(1348,4,'my_category',1539032412.78,'[::1][4][-]','info in index_site_controller.'),(1349,1,'my_category',1539032412.78,'[::1][4][-]','error in index_site_controller.'),(1350,2,'my_category',1539032412.78,'[::1][4][-]','warning in index_site_controller.'),(1351,4,'my_category',1539032718.54,'[::1][4][-]','info in index_site_controller.'),(1352,1,'my_category',1539032718.54,'[::1][4][-]','error in index_site_controller.'),(1353,2,'my_category',1539032718.54,'[::1][4][-]','warning in index_site_controller.'),(1354,4,'my_category',1539032791.77,'[::1][-][-]','info in index_site_controller.'),(1355,1,'my_category',1539032791.77,'[::1][-][-]','error in index_site_controller.'),(1356,2,'my_category',1539032791.77,'[::1][-][-]','warning in index_site_controller.'),(1357,4,'my_category',1539032798.73,'[::1][-][-]','info in index_site_controller.'),(1358,1,'my_category',1539032798.73,'[::1][-][-]','error in index_site_controller.'),(1359,2,'my_category',1539032798.73,'[::1][-][-]','warning in index_site_controller.'),(1360,4,'my_category',1539032802.73,'[::1][-][-]','info in index_site_controller.'),(1361,1,'my_category',1539032802.73,'[::1][-][-]','error in index_site_controller.'),(1362,2,'my_category',1539032802.73,'[::1][-][-]','warning in index_site_controller.'),(1363,4,'my_category',1539032816.41,'[::1][-][-]','info in index_site_controller.'),(1364,1,'my_category',1539032816.41,'[::1][-][-]','error in index_site_controller.'),(1365,2,'my_category',1539032816.41,'[::1][-][-]','warning in index_site_controller.'),(1366,4,'my_category',1539032825.03,'[::1][-][-]','info in index_site_controller.'),(1367,1,'my_category',1539032825.03,'[::1][-][-]','error in index_site_controller.'),(1368,2,'my_category',1539032825.03,'[::1][-][-]','warning in index_site_controller.'),(1369,4,'my_category',1539032829.41,'[::1][4][-]','info in index_site_controller.'),(1370,1,'my_category',1539032829.41,'[::1][4][-]','error in index_site_controller.'),(1371,2,'my_category',1539032829.41,'[::1][4][-]','warning in index_site_controller.'),(1372,4,'my_category',1539032830.92,'[::1][4][-]','info in index_site_controller.'),(1373,1,'my_category',1539032830.92,'[::1][4][-]','error in index_site_controller.'),(1374,2,'my_category',1539032830.92,'[::1][4][-]','warning in index_site_controller.'),(1375,4,'my_category',1539032852.54,'[::1][4][-]','info in index_site_controller.'),(1376,1,'my_category',1539032852.54,'[::1][4][-]','error in index_site_controller.'),(1377,2,'my_category',1539032852.54,'[::1][4][-]','warning in index_site_controller.'),(1378,4,'my_category',1539032863.29,'[::1][4][-]','info in index_site_controller.'),(1379,1,'my_category',1539032863.29,'[::1][4][-]','error in index_site_controller.'),(1380,2,'my_category',1539032863.3,'[::1][4][-]','warning in index_site_controller.'),(1381,4,'my_category',1539032876.9,'[::1][4][-]','info in index_site_controller.'),(1382,1,'my_category',1539032876.9,'[::1][4][-]','error in index_site_controller.'),(1383,2,'my_category',1539032876.9,'[::1][4][-]','warning in index_site_controller.'),(1384,4,'my_category',1539032896.6,'[::1][4][-]','info in index_site_controller.'),(1385,1,'my_category',1539032896.6,'[::1][4][-]','error in index_site_controller.'),(1386,2,'my_category',1539032896.6,'[::1][4][-]','warning in index_site_controller.'),(1387,4,'my_category',1539032917.86,'[::1][4][-]','info in index_site_controller.'),(1388,1,'my_category',1539032917.86,'[::1][4][-]','error in index_site_controller.'),(1389,2,'my_category',1539032917.86,'[::1][4][-]','warning in index_site_controller.'),(1390,4,'my_category',1539032923.31,'[::1][4][-]','info in index_site_controller.'),(1391,1,'my_category',1539032923.31,'[::1][4][-]','error in index_site_controller.'),(1392,2,'my_category',1539032923.31,'[::1][4][-]','warning in index_site_controller.'),(1393,4,'my_category',1539032933.93,'[::1][4][-]','info in index_site_controller.'),(1394,1,'my_category',1539032933.93,'[::1][4][-]','error in index_site_controller.'),(1395,2,'my_category',1539032933.93,'[::1][4][-]','warning in index_site_controller.'),(1396,4,'my_category',1539032951.24,'[::1][4][-]','info in index_site_controller.'),(1397,1,'my_category',1539032951.24,'[::1][4][-]','error in index_site_controller.'),(1398,2,'my_category',1539032951.24,'[::1][4][-]','warning in index_site_controller.'),(1399,4,'my_category',1539032953.49,'[::1][4][-]','info in index_site_controller.'),(1400,1,'my_category',1539032953.49,'[::1][4][-]','error in index_site_controller.'),(1401,2,'my_category',1539032953.49,'[::1][4][-]','warning in index_site_controller.'),(1402,4,'my_category',1539032962.09,'[::1][-][-]','info in index_site_controller.'),(1403,1,'my_category',1539032962.09,'[::1][-][-]','error in index_site_controller.'),(1404,2,'my_category',1539032962.09,'[::1][-][-]','warning in index_site_controller.'),(1405,4,'my_category',1539032970.91,'[::1][-][-]','info in index_site_controller.'),(1406,1,'my_category',1539032970.91,'[::1][-][-]','error in index_site_controller.'),(1407,2,'my_category',1539032970.91,'[::1][-][-]','warning in index_site_controller.'),(1408,4,'my_category',1539032976.9,'[::1][-][-]','info in index_site_controller.'),(1409,1,'my_category',1539032976.9,'[::1][-][-]','error in index_site_controller.'),(1410,2,'my_category',1539032976.9,'[::1][-][-]','warning in index_site_controller.'),(1411,4,'my_category',1539032995.43,'[::1][-][-]','info in index_site_controller.'),(1412,1,'my_category',1539032995.43,'[::1][-][-]','error in index_site_controller.'),(1413,2,'my_category',1539032995.43,'[::1][-][-]','warning in index_site_controller.'),(1414,4,'my_category',1539071460.3337,'[127.0.0.1][4][-]','info in index_site_controller.'),(1415,1,'my_category',1539071460.3337,'[127.0.0.1][4][-]','error in index_site_controller.'),(1416,2,'my_category',1539071460.3337,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1417,4,'my_category',1539328513.2678,'[127.0.0.1][-][-]','info in index_site_controller.'),(1418,1,'my_category',1539328513.2678,'[127.0.0.1][-][-]','error in index_site_controller.'),(1419,2,'my_category',1539328513.2678,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1420,4,'my_category',1539589644.7609,'[127.0.0.1][4][-]','info in index_site_controller.'),(1421,1,'my_category',1539589644.7609,'[127.0.0.1][4][-]','error in index_site_controller.'),(1422,2,'my_category',1539589644.7609,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1423,4,'my_category',1539679264.1957,'[127.0.0.1][-][-]','info in index_site_controller.'),(1424,1,'my_category',1539679264.1957,'[127.0.0.1][-][-]','error in index_site_controller.'),(1425,2,'my_category',1539679264.1957,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1426,4,'my_category',1539723805.52,'[::1][4][-]','info in index_site_controller.'),(1427,1,'my_category',1539723805.52,'[::1][4][-]','error in index_site_controller.'),(1428,2,'my_category',1539723805.52,'[::1][4][-]','warning in index_site_controller.'),(1429,4,'my_category',1539762480.8515,'[127.0.0.1][4][-]','info in index_site_controller.'),(1430,1,'my_category',1539762480.8515,'[127.0.0.1][4][-]','error in index_site_controller.'),(1431,2,'my_category',1539762480.8515,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1432,4,'my_category',1539762494.9432,'[127.0.0.1][4][krv4c7q6dukieos9c5v8ij60oqkk4h01]','info in index_site_controller.'),(1433,1,'my_category',1539762494.9433,'[127.0.0.1][4][krv4c7q6dukieos9c5v8ij60oqkk4h01]','error in index_site_controller.'),(1434,2,'my_category',1539762494.9433,'[127.0.0.1][4][krv4c7q6dukieos9c5v8ij60oqkk4h01]','warning in index_site_controller.'),(1435,4,'my_category',1539847468.0084,'[127.0.0.1][-][-]','info in index_site_controller.'),(1436,1,'my_category',1539847468.0085,'[127.0.0.1][-][-]','error in index_site_controller.'),(1437,2,'my_category',1539847468.0085,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1438,4,'my_category',1539848351.9335,'[127.0.0.1][4][-]','info in index_site_controller.'),(1439,1,'my_category',1539848351.9335,'[127.0.0.1][4][-]','error in index_site_controller.'),(1440,2,'my_category',1539848351.9335,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1441,4,'my_category',1539848366.1488,'[127.0.0.1][-][-]','info in index_site_controller.'),(1442,1,'my_category',1539848366.1488,'[127.0.0.1][-][-]','error in index_site_controller.'),(1443,2,'my_category',1539848366.1488,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1444,4,'my_category',1539848372.3771,'[127.0.0.1][-][-]','info in index_site_controller.'),(1445,1,'my_category',1539848372.3771,'[127.0.0.1][-][-]','error in index_site_controller.'),(1446,2,'my_category',1539848372.3771,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1447,4,'my_category',1539849885.2642,'[127.0.0.1][4][-]','info in index_site_controller.'),(1448,1,'my_category',1539849885.2642,'[127.0.0.1][4][-]','error in index_site_controller.'),(1449,2,'my_category',1539849885.2642,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1450,4,'my_category',1539849886.5325,'[127.0.0.1][4][-]','info in index_site_controller.'),(1451,1,'my_category',1539849886.5325,'[127.0.0.1][4][-]','error in index_site_controller.'),(1452,2,'my_category',1539849886.5325,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1453,4,'my_category',1539860752.0992,'[127.0.0.1][-][-]','info in index_site_controller.'),(1454,1,'my_category',1539860752.0992,'[127.0.0.1][-][-]','error in index_site_controller.'),(1455,2,'my_category',1539860752.0992,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1456,4,'my_category',1539860816.1982,'[127.0.0.1][4][-]','info in index_site_controller.'),(1457,1,'my_category',1539860816.1982,'[127.0.0.1][4][-]','error in index_site_controller.'),(1458,2,'my_category',1539860816.1982,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1459,4,'my_category',1539934742.5707,'[127.0.0.1][-][-]','info in index_site_controller.'),(1460,1,'my_category',1539934742.5708,'[127.0.0.1][-][-]','error in index_site_controller.'),(1461,2,'my_category',1539934742.5708,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1462,4,'my_category',1540112172.24,'[::1][4][-]','info in index_site_controller.'),(1463,1,'my_category',1540112172.24,'[::1][4][-]','error in index_site_controller.'),(1464,2,'my_category',1540112172.24,'[::1][4][-]','warning in index_site_controller.'),(1465,4,'my_category',1540193219.1414,'[127.0.0.1][-][-]','info in index_site_controller.'),(1466,1,'my_category',1540193219.1414,'[127.0.0.1][-][-]','error in index_site_controller.'),(1467,2,'my_category',1540193219.1414,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1468,4,'my_category',1540386783.7997,'[127.0.0.1][4][-]','info in index_site_controller.'),(1469,1,'my_category',1540386783.7998,'[127.0.0.1][4][-]','error in index_site_controller.'),(1470,2,'my_category',1540386783.7998,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1471,4,'my_category',1540454731.4681,'[127.0.0.1][-][-]','info in index_site_controller.'),(1472,1,'my_category',1540454731.4681,'[127.0.0.1][-][-]','error in index_site_controller.'),(1473,2,'my_category',1540454731.4681,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1474,4,'my_category',1540454967.4761,'[127.0.0.1][-][-]','info in index_site_controller.'),(1475,1,'my_category',1540454967.4761,'[127.0.0.1][-][-]','error in index_site_controller.'),(1476,2,'my_category',1540454967.4761,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1477,4,'my_category',1540454969.9677,'[127.0.0.1][-][-]','info in index_site_controller.'),(1478,1,'my_category',1540454969.9677,'[127.0.0.1][-][-]','error in index_site_controller.'),(1479,2,'my_category',1540454969.9677,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1480,4,'my_category',1540537932.7286,'[127.0.0.1][-][-]','info in index_site_controller.'),(1481,1,'my_category',1540537932.7286,'[127.0.0.1][-][-]','error in index_site_controller.'),(1482,2,'my_category',1540537932.7286,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1483,4,'my_category',1540932709.78,'[::1][4][-]','info in index_site_controller.'),(1484,1,'my_category',1540932709.78,'[::1][4][-]','error in index_site_controller.'),(1485,2,'my_category',1540932709.78,'[::1][4][-]','warning in index_site_controller.'),(1486,4,'my_category',1540932731.86,'[::1][4][-]','info in index_site_controller.'),(1487,1,'my_category',1540932731.86,'[::1][4][-]','error in index_site_controller.'),(1488,2,'my_category',1540932731.86,'[::1][4][-]','warning in index_site_controller.'),(1489,4,'my_category',1540932734.12,'[::1][4][-]','info in index_site_controller.'),(1490,1,'my_category',1540932734.12,'[::1][4][-]','error in index_site_controller.'),(1491,2,'my_category',1540932734.12,'[::1][4][-]','warning in index_site_controller.'),(1492,4,'my_category',1540933698.71,'[::1][-][6284c60ffc65afe40de1fc1fe79e1e49]','info in index_site_controller.'),(1493,1,'my_category',1540933698.71,'[::1][-][6284c60ffc65afe40de1fc1fe79e1e49]','error in index_site_controller.'),(1494,2,'my_category',1540933698.71,'[::1][-][6284c60ffc65afe40de1fc1fe79e1e49]','warning in index_site_controller.'),(1495,4,'my_category',1540933722.06,'[::1][-][-]','info in index_site_controller.'),(1496,1,'my_category',1540933722.06,'[::1][-][-]','error in index_site_controller.'),(1497,2,'my_category',1540933722.06,'[::1][-][-]','warning in index_site_controller.'),(1498,4,'my_category',1540933739.16,'[::1][-][-]','info in index_site_controller.'),(1499,1,'my_category',1540933739.16,'[::1][-][-]','error in index_site_controller.'),(1500,2,'my_category',1540933739.16,'[::1][-][-]','warning in index_site_controller.'),(1501,4,'my_category',1540933742.97,'[::1][-][-]','info in index_site_controller.'),(1502,1,'my_category',1540933742.97,'[::1][-][-]','error in index_site_controller.'),(1503,2,'my_category',1540933742.97,'[::1][-][-]','warning in index_site_controller.'),(1504,4,'my_category',1540933746.17,'[::1][-][-]','info in index_site_controller.'),(1505,1,'my_category',1540933746.17,'[::1][-][-]','error in index_site_controller.'),(1506,2,'my_category',1540933746.17,'[::1][-][-]','warning in index_site_controller.'),(1507,4,'my_category',1540933749.14,'[::1][-][-]','info in index_site_controller.'),(1508,1,'my_category',1540933749.14,'[::1][-][-]','error in index_site_controller.'),(1509,2,'my_category',1540933749.14,'[::1][-][-]','warning in index_site_controller.'),(1510,4,'my_category',1540933813.01,'[::1][-][-]','info in index_site_controller.'),(1511,1,'my_category',1540933813.01,'[::1][-][-]','error in index_site_controller.'),(1512,2,'my_category',1540933813.01,'[::1][-][-]','warning in index_site_controller.'),(1513,4,'my_category',1540933813.96,'[::1][-][-]','info in index_site_controller.'),(1514,1,'my_category',1540933813.96,'[::1][-][-]','error in index_site_controller.'),(1515,2,'my_category',1540933813.96,'[::1][-][-]','warning in index_site_controller.'),(1516,4,'my_category',1540933976.43,'[::1][-][-]','info in index_site_controller.'),(1517,1,'my_category',1540933976.43,'[::1][-][-]','error in index_site_controller.'),(1518,2,'my_category',1540933976.43,'[::1][-][-]','warning in index_site_controller.'),(1519,4,'my_category',1540934126.78,'[::1][-][-]','info in index_site_controller.'),(1520,1,'my_category',1540934126.78,'[::1][-][-]','error in index_site_controller.'),(1521,2,'my_category',1540934126.78,'[::1][-][-]','warning in index_site_controller.'),(1522,4,'my_category',1540934206.59,'[::1][-][-]','info in index_site_controller.'),(1523,1,'my_category',1540934206.59,'[::1][-][-]','error in index_site_controller.'),(1524,2,'my_category',1540934206.59,'[::1][-][-]','warning in index_site_controller.'),(1525,4,'my_category',1540934249.32,'[::1][-][-]','info in index_site_controller.'),(1526,1,'my_category',1540934249.32,'[::1][-][-]','error in index_site_controller.'),(1527,2,'my_category',1540934249.32,'[::1][-][-]','warning in index_site_controller.'),(1528,4,'my_category',1540934293.94,'[::1][-][-]','info in index_site_controller.'),(1529,1,'my_category',1540934293.94,'[::1][-][-]','error in index_site_controller.'),(1530,2,'my_category',1540934293.94,'[::1][-][-]','warning in index_site_controller.'),(1531,4,'my_category',1540934345.48,'[::1][-][-]','info in index_site_controller.'),(1532,1,'my_category',1540934345.48,'[::1][-][-]','error in index_site_controller.'),(1533,2,'my_category',1540934345.48,'[::1][-][-]','warning in index_site_controller.'),(1534,4,'my_category',1540934397.05,'[::1][-][-]','info in index_site_controller.'),(1535,1,'my_category',1540934397.05,'[::1][-][-]','error in index_site_controller.'),(1536,2,'my_category',1540934397.05,'[::1][-][-]','warning in index_site_controller.'),(1537,4,'my_category',1540934613.23,'[::1][-][-]','info in index_site_controller.'),(1538,1,'my_category',1540934613.23,'[::1][-][-]','error in index_site_controller.'),(1539,2,'my_category',1540934613.23,'[::1][-][-]','warning in index_site_controller.'),(1540,4,'my_category',1540934619,'[::1][-][-]','info in index_site_controller.'),(1541,1,'my_category',1540934619,'[::1][-][-]','error in index_site_controller.'),(1542,2,'my_category',1540934619,'[::1][-][-]','warning in index_site_controller.'),(1543,4,'my_category',1540934625.22,'[::1][-][-]','info in index_site_controller.'),(1544,1,'my_category',1540934625.22,'[::1][-][-]','error in index_site_controller.'),(1545,2,'my_category',1540934625.22,'[::1][-][-]','warning in index_site_controller.'),(1546,4,'my_category',1540934626.79,'[::1][-][-]','info in index_site_controller.'),(1547,1,'my_category',1540934626.79,'[::1][-][-]','error in index_site_controller.'),(1548,2,'my_category',1540934626.79,'[::1][-][-]','warning in index_site_controller.'),(1549,4,'my_category',1540934632.9,'[::1][4][-]','info in index_site_controller.'),(1550,1,'my_category',1540934632.9,'[::1][4][-]','error in index_site_controller.'),(1551,2,'my_category',1540934632.9,'[::1][4][-]','warning in index_site_controller.'),(1552,4,'my_category',1540934635.2,'[::1][4][-]','info in index_site_controller.'),(1553,1,'my_category',1540934635.2,'[::1][4][-]','error in index_site_controller.'),(1554,2,'my_category',1540934635.2,'[::1][4][-]','warning in index_site_controller.'),(1555,4,'my_category',1540934674.61,'[::1][-][-]','info in index_site_controller.'),(1556,1,'my_category',1540934674.61,'[::1][-][-]','error in index_site_controller.'),(1557,2,'my_category',1540934674.61,'[::1][-][-]','warning in index_site_controller.'),(1558,4,'my_category',1540934685.1,'[::1][-][-]','info in index_site_controller.'),(1559,1,'my_category',1540934685.1,'[::1][-][-]','error in index_site_controller.'),(1560,2,'my_category',1540934685.1,'[::1][-][-]','warning in index_site_controller.'),(1561,4,'my_category',1540934730.84,'[::1][-][-]','info in index_site_controller.'),(1562,1,'my_category',1540934730.84,'[::1][-][-]','error in index_site_controller.'),(1563,2,'my_category',1540934730.84,'[::1][-][-]','warning in index_site_controller.'),(1564,4,'my_category',1540934969.23,'[::1][-][-]','info in index_site_controller.'),(1565,1,'my_category',1540934969.23,'[::1][-][-]','error in index_site_controller.'),(1566,2,'my_category',1540934969.23,'[::1][-][-]','warning in index_site_controller.'),(1567,4,'my_category',1540934976.25,'[::1][-][-]','info in index_site_controller.'),(1568,1,'my_category',1540934976.25,'[::1][-][-]','error in index_site_controller.'),(1569,2,'my_category',1540934976.25,'[::1][-][-]','warning in index_site_controller.'),(1570,4,'my_category',1540935026.3,'[::1][4][-]','info in index_site_controller.'),(1571,1,'my_category',1540935026.3,'[::1][4][-]','error in index_site_controller.'),(1572,2,'my_category',1540935026.3,'[::1][4][-]','warning in index_site_controller.'),(1573,4,'my_category',1540935121.06,'[::1][4][-]','info in index_site_controller.'),(1574,1,'my_category',1540935121.06,'[::1][4][-]','error in index_site_controller.'),(1575,2,'my_category',1540935121.06,'[::1][4][-]','warning in index_site_controller.'),(1576,4,'my_category',1540935122.62,'[::1][-][-]','info in index_site_controller.'),(1577,1,'my_category',1540935122.62,'[::1][-][-]','error in index_site_controller.'),(1578,2,'my_category',1540935122.62,'[::1][-][-]','warning in index_site_controller.'),(1579,4,'my_category',1540935131.32,'[::1][-][-]','info in index_site_controller.'),(1580,1,'my_category',1540935131.32,'[::1][-][-]','error in index_site_controller.'),(1581,2,'my_category',1540935131.32,'[::1][-][-]','warning in index_site_controller.'),(1582,4,'my_category',1540935152,'[::1][4][-]','info in index_site_controller.'),(1583,1,'my_category',1540935152,'[::1][4][-]','error in index_site_controller.'),(1584,2,'my_category',1540935152,'[::1][4][-]','warning in index_site_controller.'),(1585,4,'my_category',1540935260.25,'[::1][4][-]','info in index_site_controller.'),(1586,1,'my_category',1540935260.25,'[::1][4][-]','error in index_site_controller.'),(1587,2,'my_category',1540935260.25,'[::1][4][-]','warning in index_site_controller.'),(1588,4,'my_category',1540935268.62,'[::1][4][-]','info in index_site_controller.'),(1589,1,'my_category',1540935268.62,'[::1][4][-]','error in index_site_controller.'),(1590,2,'my_category',1540935268.62,'[::1][4][-]','warning in index_site_controller.'),(1591,4,'my_category',1540935270.74,'[::1][4][d8ddb0541f6194bfdcbedf80f8d704e7]','info in index_site_controller.'),(1592,1,'my_category',1540935270.74,'[::1][4][d8ddb0541f6194bfdcbedf80f8d704e7]','error in index_site_controller.'),(1593,2,'my_category',1540935270.74,'[::1][4][d8ddb0541f6194bfdcbedf80f8d704e7]','warning in index_site_controller.'),(1594,4,'my_category',1540935273.18,'[::1][4][d8ddb0541f6194bfdcbedf80f8d704e7]','info in index_site_controller.'),(1595,1,'my_category',1540935273.19,'[::1][4][d8ddb0541f6194bfdcbedf80f8d704e7]','error in index_site_controller.'),(1596,2,'my_category',1540935273.19,'[::1][4][d8ddb0541f6194bfdcbedf80f8d704e7]','warning in index_site_controller.'),(1597,4,'my_category',1540935276.99,'[::1][-][-]','info in index_site_controller.'),(1598,1,'my_category',1540935276.99,'[::1][-][-]','error in index_site_controller.'),(1599,2,'my_category',1540935276.99,'[::1][-][-]','warning in index_site_controller.'),(1600,4,'my_category',1540935600.78,'[::1][-][-]','info in index_site_controller.'),(1601,1,'my_category',1540935600.78,'[::1][-][-]','error in index_site_controller.'),(1602,2,'my_category',1540935600.78,'[::1][-][-]','warning in index_site_controller.'),(1603,4,'my_category',1540971212.5499,'[127.0.0.1][4][2qm9fs4o59d7lio8npighvkk4kpeb1g4]','info in index_site_controller.'),(1604,1,'my_category',1540971212.5499,'[127.0.0.1][4][2qm9fs4o59d7lio8npighvkk4kpeb1g4]','error in index_site_controller.'),(1605,2,'my_category',1540971212.5499,'[127.0.0.1][4][2qm9fs4o59d7lio8npighvkk4kpeb1g4]','warning in index_site_controller.'),(1606,4,'my_category',1540971215.3905,'[127.0.0.1][4][-]','info in index_site_controller.'),(1607,1,'my_category',1540971215.3905,'[127.0.0.1][4][-]','error in index_site_controller.'),(1608,2,'my_category',1540971215.3905,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1609,4,'my_category',1540971217.1007,'[127.0.0.1][-][-]','info in index_site_controller.'),(1610,1,'my_category',1540971217.1007,'[127.0.0.1][-][-]','error in index_site_controller.'),(1611,2,'my_category',1540971217.1007,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1612,4,'my_category',1540971723.2925,'[127.0.0.1][-][-]','info in index_site_controller.'),(1613,1,'my_category',1540971723.2925,'[127.0.0.1][-][-]','error in index_site_controller.'),(1614,2,'my_category',1540971723.2925,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1615,4,'my_category',1540971969.325,'[127.0.0.1][-][-]','info in index_site_controller.'),(1616,1,'my_category',1540971969.325,'[127.0.0.1][-][-]','error in index_site_controller.'),(1617,2,'my_category',1540971969.325,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1618,4,'my_category',1540972008.6303,'[127.0.0.1][-][-]','info in index_site_controller.'),(1619,1,'my_category',1540972008.6303,'[127.0.0.1][-][-]','error in index_site_controller.'),(1620,2,'my_category',1540972008.6303,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1621,4,'my_category',1540972009.835,'[127.0.0.1][-][-]','info in index_site_controller.'),(1622,1,'my_category',1540972009.835,'[127.0.0.1][-][-]','error in index_site_controller.'),(1623,2,'my_category',1540972009.835,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1624,4,'my_category',1540972048.2512,'[127.0.0.1][-][-]','info in index_site_controller.'),(1625,1,'my_category',1540972048.2512,'[127.0.0.1][-][-]','error in index_site_controller.'),(1626,2,'my_category',1540972048.2512,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1627,4,'my_category',1540972535.1656,'[127.0.0.1][-][-]','info in index_site_controller.'),(1628,1,'my_category',1540972535.1656,'[127.0.0.1][-][-]','error in index_site_controller.'),(1629,2,'my_category',1540972535.1656,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1630,4,'my_category',1540972535.8456,'[127.0.0.1][-][-]','info in index_site_controller.'),(1631,1,'my_category',1540972535.8456,'[127.0.0.1][-][-]','error in index_site_controller.'),(1632,2,'my_category',1540972535.8456,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1633,4,'my_category',1540972570.8607,'[127.0.0.1][-][-]','info in index_site_controller.'),(1634,1,'my_category',1540972570.8607,'[127.0.0.1][-][-]','error in index_site_controller.'),(1635,2,'my_category',1540972570.8607,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1636,4,'my_category',1540972571.9964,'[127.0.0.1][-][-]','info in index_site_controller.'),(1637,1,'my_category',1540972571.9964,'[127.0.0.1][-][-]','error in index_site_controller.'),(1638,2,'my_category',1540972571.9964,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1639,4,'my_category',1540972598.2739,'[127.0.0.1][-][-]','info in index_site_controller.'),(1640,1,'my_category',1540972598.2739,'[127.0.0.1][-][-]','error in index_site_controller.'),(1641,2,'my_category',1540972598.2739,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1642,4,'my_category',1540972629.598,'[127.0.0.1][-][-]','info in index_site_controller.'),(1643,1,'my_category',1540972629.598,'[127.0.0.1][-][-]','error in index_site_controller.'),(1644,2,'my_category',1540972629.598,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1645,4,'my_category',1540972679.6356,'[127.0.0.1][-][-]','info in index_site_controller.'),(1646,1,'my_category',1540972679.6356,'[127.0.0.1][-][-]','error in index_site_controller.'),(1647,2,'my_category',1540972679.6356,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1648,4,'my_category',1540972831.1993,'[127.0.0.1][-][-]','info in index_site_controller.'),(1649,1,'my_category',1540972831.1993,'[127.0.0.1][-][-]','error in index_site_controller.'),(1650,2,'my_category',1540972831.1993,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1651,4,'my_category',1540973052.9057,'[127.0.0.1][-][-]','info in index_site_controller.'),(1652,1,'my_category',1540973052.9057,'[127.0.0.1][-][-]','error in index_site_controller.'),(1653,2,'my_category',1540973052.9057,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1654,4,'my_category',1540974829.9971,'[127.0.0.1][-][-]','info in index_site_controller.'),(1655,1,'my_category',1540974829.9971,'[127.0.0.1][-][-]','error in index_site_controller.'),(1656,2,'my_category',1540974829.9971,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1657,4,'my_category',1540978198.5613,'[127.0.0.1][4][-]','info in index_site_controller.'),(1658,1,'my_category',1540978198.5613,'[127.0.0.1][4][-]','error in index_site_controller.'),(1659,2,'my_category',1540978198.5613,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1660,4,'my_category',1540978201.4185,'[127.0.0.1][-][-]','info in index_site_controller.'),(1661,1,'my_category',1540978201.4186,'[127.0.0.1][-][-]','error in index_site_controller.'),(1662,2,'my_category',1540978201.4186,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1663,4,'my_category',1540978441.6892,'[127.0.0.1][-][-]','info in index_site_controller.'),(1664,1,'my_category',1540978441.6892,'[127.0.0.1][-][-]','error in index_site_controller.'),(1665,2,'my_category',1540978441.6892,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1666,4,'my_category',1540978523.1608,'[127.0.0.1][-][-]','info in index_site_controller.'),(1667,1,'my_category',1540978523.1608,'[127.0.0.1][-][-]','error in index_site_controller.'),(1668,2,'my_category',1540978523.1608,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1669,4,'my_category',1540987681.4255,'[127.0.0.1][4][-]','info in index_site_controller.'),(1670,1,'my_category',1540987681.4255,'[127.0.0.1][4][-]','error in index_site_controller.'),(1671,2,'my_category',1540987681.4255,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1672,4,'my_category',1540988130.0234,'[127.0.0.1][4][d1lgaqgqfdq76u53ktaniahui88sl70j]','info in index_site_controller.'),(1673,1,'my_category',1540988130.0234,'[127.0.0.1][4][d1lgaqgqfdq76u53ktaniahui88sl70j]','error in index_site_controller.'),(1674,2,'my_category',1540988130.0234,'[127.0.0.1][4][d1lgaqgqfdq76u53ktaniahui88sl70j]','warning in index_site_controller.'),(1675,4,'my_category',1540988388.5426,'[127.0.0.1][4][-]','info in index_site_controller.'),(1676,1,'my_category',1540988388.5426,'[127.0.0.1][4][-]','error in index_site_controller.'),(1677,2,'my_category',1540988388.5426,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1678,4,'my_category',1540988400.8325,'[127.0.0.1][4][d1lgaqgqfdq76u53ktaniahui88sl70j]','info in index_site_controller.'),(1679,1,'my_category',1540988400.8325,'[127.0.0.1][4][d1lgaqgqfdq76u53ktaniahui88sl70j]','error in index_site_controller.'),(1680,2,'my_category',1540988400.8325,'[127.0.0.1][4][d1lgaqgqfdq76u53ktaniahui88sl70j]','warning in index_site_controller.'),(1681,4,'my_category',1540992598.2226,'[127.0.0.1][-][-]','info in index_site_controller.'),(1682,1,'my_category',1540992598.2226,'[127.0.0.1][-][-]','error in index_site_controller.'),(1683,2,'my_category',1540992598.2226,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1684,4,'my_category',1540993250.3966,'[127.0.0.1][4][-]','info in index_site_controller.'),(1685,1,'my_category',1540993250.3966,'[127.0.0.1][4][-]','error in index_site_controller.'),(1686,2,'my_category',1540993250.3966,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1687,4,'my_category',1540995882.1959,'[127.0.0.1][4][-]','info in index_site_controller.'),(1688,1,'my_category',1540995882.1959,'[127.0.0.1][4][-]','error in index_site_controller.'),(1689,2,'my_category',1540995882.1959,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1690,4,'my_category',1540995956.1793,'[127.0.0.1][4][7d68conmmen9a9ucagclg1rm3r1r8gm8]','info in index_site_controller.'),(1691,1,'my_category',1540995956.1793,'[127.0.0.1][4][7d68conmmen9a9ucagclg1rm3r1r8gm8]','error in index_site_controller.'),(1692,2,'my_category',1540995956.1793,'[127.0.0.1][4][7d68conmmen9a9ucagclg1rm3r1r8gm8]','warning in index_site_controller.'),(1693,4,'my_category',1540996227.215,'[127.0.0.1][-][-]','info in index_site_controller.'),(1694,1,'my_category',1540996227.215,'[127.0.0.1][-][-]','error in index_site_controller.'),(1695,2,'my_category',1540996227.215,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1696,4,'my_category',1540996410.0947,'[127.0.0.1][4][-]','info in index_site_controller.'),(1697,1,'my_category',1540996410.0947,'[127.0.0.1][4][-]','error in index_site_controller.'),(1698,2,'my_category',1540996410.0947,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1699,4,'my_category',1540996695.9216,'[127.0.0.1][-][-]','info in index_site_controller.'),(1700,1,'my_category',1540996695.9216,'[127.0.0.1][-][-]','error in index_site_controller.'),(1701,2,'my_category',1540996695.9216,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1702,4,'my_category',1540996713.5413,'[127.0.0.1][4][-]','info in index_site_controller.'),(1703,1,'my_category',1540996713.5413,'[127.0.0.1][4][-]','error in index_site_controller.'),(1704,2,'my_category',1540996713.5413,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1705,4,'my_category',1540996727.9587,'[127.0.0.1][4][-]','info in index_site_controller.'),(1706,1,'my_category',1540996727.9587,'[127.0.0.1][4][-]','error in index_site_controller.'),(1707,2,'my_category',1540996727.9587,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1708,4,'my_category',1540996761.602,'[127.0.0.1][4][-]','info in index_site_controller.'),(1709,1,'my_category',1540996761.602,'[127.0.0.1][4][-]','error in index_site_controller.'),(1710,2,'my_category',1540996761.6021,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1711,4,'my_category',1540996765.826,'[127.0.0.1][4][-]','info in index_site_controller.'),(1712,1,'my_category',1540996765.826,'[127.0.0.1][4][-]','error in index_site_controller.'),(1713,2,'my_category',1540996765.826,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1714,4,'my_category',1541012163.44,'[::1][4][-]','info in index_site_controller.'),(1715,1,'my_category',1541012163.44,'[::1][4][-]','error in index_site_controller.'),(1716,2,'my_category',1541012163.44,'[::1][4][-]','warning in index_site_controller.'),(1717,4,'my_category',1541012196.53,'[::1][4][-]','info in index_site_controller.'),(1718,1,'my_category',1541012196.53,'[::1][4][-]','error in index_site_controller.'),(1719,2,'my_category',1541012196.53,'[::1][4][-]','warning in index_site_controller.'),(1720,4,'my_category',1541013644.25,'[::1][4][-]','info in index_site_controller.'),(1721,1,'my_category',1541013644.25,'[::1][4][-]','error in index_site_controller.'),(1722,2,'my_category',1541013644.25,'[::1][4][-]','warning in index_site_controller.'),(1723,4,'my_category',1541093432.3,'[::1][4][-]','info in index_site_controller.'),(1724,1,'my_category',1541093432.3,'[::1][4][-]','error in index_site_controller.'),(1725,2,'my_category',1541093432.3,'[::1][4][-]','warning in index_site_controller.'),(1726,4,'my_category',1541093889.46,'[::1][-][-]','info in index_site_controller.'),(1727,1,'my_category',1541093889.46,'[::1][-][-]','error in index_site_controller.'),(1728,2,'my_category',1541093889.46,'[::1][-][-]','warning in index_site_controller.'),(1729,4,'my_category',1541096656.06,'[::1][4][-]','info in index_site_controller.'),(1730,1,'my_category',1541096656.06,'[::1][4][-]','error in index_site_controller.'),(1731,2,'my_category',1541096656.06,'[::1][4][-]','warning in index_site_controller.'),(1732,4,'my_category',1541096672.44,'[::1][4][-]','info in index_site_controller.'),(1733,1,'my_category',1541096672.44,'[::1][4][-]','error in index_site_controller.'),(1734,2,'my_category',1541096672.44,'[::1][4][-]','warning in index_site_controller.'),(1735,4,'my_category',1541098036.45,'[::1][4][-]','info in index_site_controller.'),(1736,1,'my_category',1541098036.45,'[::1][4][-]','error in index_site_controller.'),(1737,2,'my_category',1541098036.45,'[::1][4][-]','warning in index_site_controller.'),(1738,4,'my_category',1541098038.67,'[::1][-][-]','info in index_site_controller.'),(1739,1,'my_category',1541098038.67,'[::1][-][-]','error in index_site_controller.'),(1740,2,'my_category',1541098038.67,'[::1][-][-]','warning in index_site_controller.'),(1741,4,'my_category',1541098049.5,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1742,1,'my_category',1541098049.5,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1743,2,'my_category',1541098049.5,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1744,4,'my_category',1541098052.1,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1745,1,'my_category',1541098052.1,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1746,2,'my_category',1541098052.1,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1747,4,'my_category',1541098062.24,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1748,1,'my_category',1541098062.24,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1749,2,'my_category',1541098062.24,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1750,4,'my_category',1541098065.66,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1751,1,'my_category',1541098065.66,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1752,2,'my_category',1541098065.66,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1753,4,'my_category',1541098070.3,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1754,1,'my_category',1541098070.3,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1755,2,'my_category',1541098070.3,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1756,4,'my_category',1541098074.35,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1757,1,'my_category',1541098074.35,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1758,2,'my_category',1541098074.35,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1759,4,'my_category',1541098082.11,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1760,1,'my_category',1541098082.11,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1761,2,'my_category',1541098082.11,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1762,4,'my_category',1541098088.82,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1763,1,'my_category',1541098088.82,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1764,2,'my_category',1541098088.82,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1765,4,'my_category',1541098098.37,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1766,1,'my_category',1541098098.37,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1767,2,'my_category',1541098098.37,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1768,4,'my_category',1541098102.05,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1769,1,'my_category',1541098102.05,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1770,2,'my_category',1541098102.05,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1771,4,'my_category',1541098106.43,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1772,1,'my_category',1541098106.43,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1773,2,'my_category',1541098106.43,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1774,4,'my_category',1541098108.32,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1775,1,'my_category',1541098108.32,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1776,2,'my_category',1541098108.32,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1777,4,'my_category',1541098109.48,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1778,1,'my_category',1541098109.48,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1779,2,'my_category',1541098109.48,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1780,4,'my_category',1541098112.99,'[::1][-][-]','info in index_site_controller.'),(1781,1,'my_category',1541098112.99,'[::1][-][-]','error in index_site_controller.'),(1782,2,'my_category',1541098112.99,'[::1][-][-]','warning in index_site_controller.'),(1783,4,'my_category',1541098116.76,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1784,1,'my_category',1541098116.76,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1785,2,'my_category',1541098116.76,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1786,4,'my_category',1541098118.38,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1787,1,'my_category',1541098118.38,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1788,2,'my_category',1541098118.38,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1789,4,'my_category',1541098119.61,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1790,1,'my_category',1541098119.61,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1791,2,'my_category',1541098119.61,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1792,4,'my_category',1541098133.91,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1793,1,'my_category',1541098133.91,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1794,2,'my_category',1541098133.91,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1795,4,'my_category',1541098135.12,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1796,1,'my_category',1541098135.12,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1797,2,'my_category',1541098135.12,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1798,4,'my_category',1541098135.52,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1799,1,'my_category',1541098135.52,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1800,2,'my_category',1541098135.52,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1801,4,'my_category',1541098137.24,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1802,1,'my_category',1541098137.24,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1803,2,'my_category',1541098137.24,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1804,4,'my_category',1541098138.08,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1805,1,'my_category',1541098138.08,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1806,2,'my_category',1541098138.08,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1807,4,'my_category',1541098146.96,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1808,1,'my_category',1541098146.96,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1809,2,'my_category',1541098146.96,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1810,4,'my_category',1541098149.19,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1811,1,'my_category',1541098149.19,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1812,2,'my_category',1541098149.19,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1813,4,'my_category',1541098185.09,'[::1][-][-]','info in index_site_controller.'),(1814,1,'my_category',1541098185.09,'[::1][-][-]','error in index_site_controller.'),(1815,2,'my_category',1541098185.09,'[::1][-][-]','warning in index_site_controller.'),(1816,4,'my_category',1541098193.38,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1817,1,'my_category',1541098193.38,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1818,2,'my_category',1541098193.38,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1819,4,'my_category',1541098194.69,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1820,1,'my_category',1541098194.69,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1821,2,'my_category',1541098194.69,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1822,4,'my_category',1541098195.58,'[::1][-][-]','info in index_site_controller.'),(1823,1,'my_category',1541098195.58,'[::1][-][-]','error in index_site_controller.'),(1824,2,'my_category',1541098195.58,'[::1][-][-]','warning in index_site_controller.'),(1825,4,'my_category',1541098196.99,'[::1][-][-]','info in index_site_controller.'),(1826,1,'my_category',1541098196.99,'[::1][-][-]','error in index_site_controller.'),(1827,2,'my_category',1541098196.99,'[::1][-][-]','warning in index_site_controller.'),(1828,4,'my_category',1541098211.08,'[::1][-][97f2531ed786d154bd0ec40867230373]','info in index_site_controller.'),(1829,1,'my_category',1541098211.08,'[::1][-][97f2531ed786d154bd0ec40867230373]','error in index_site_controller.'),(1830,2,'my_category',1541098211.08,'[::1][-][97f2531ed786d154bd0ec40867230373]','warning in index_site_controller.'),(1831,4,'my_category',1541098212.36,'[::1][-][-]','info in index_site_controller.'),(1832,1,'my_category',1541098212.36,'[::1][-][-]','error in index_site_controller.'),(1833,2,'my_category',1541098212.36,'[::1][-][-]','warning in index_site_controller.'),(1834,4,'my_category',1541098212.78,'[::1][-][-]','info in index_site_controller.'),(1835,1,'my_category',1541098212.78,'[::1][-][-]','error in index_site_controller.'),(1836,2,'my_category',1541098212.78,'[::1][-][-]','warning in index_site_controller.'),(1837,4,'my_category',1541098245.19,'[::1][4][-]','info in index_site_controller.'),(1838,1,'my_category',1541098245.19,'[::1][4][-]','error in index_site_controller.'),(1839,2,'my_category',1541098245.19,'[::1][4][-]','warning in index_site_controller.'),(1840,4,'my_category',1541102520.5,'[::1][4][eead5737cc215d4cb13b9f6cf7f4561d]','info in index_site_controller.'),(1841,1,'my_category',1541102520.5,'[::1][4][eead5737cc215d4cb13b9f6cf7f4561d]','error in index_site_controller.'),(1842,2,'my_category',1541102520.5,'[::1][4][eead5737cc215d4cb13b9f6cf7f4561d]','warning in index_site_controller.'),(1843,4,'my_category',1541104810.38,'[::1][-][-]','info in index_site_controller.'),(1844,1,'my_category',1541104810.38,'[::1][-][-]','error in index_site_controller.'),(1845,2,'my_category',1541104810.38,'[::1][-][-]','warning in index_site_controller.'),(1846,4,'my_category',1541104818.32,'[::1][-][61122f470a0c8ed1230a57deba64f156]','info in index_site_controller.'),(1847,1,'my_category',1541104818.32,'[::1][-][61122f470a0c8ed1230a57deba64f156]','error in index_site_controller.'),(1848,2,'my_category',1541104818.32,'[::1][-][61122f470a0c8ed1230a57deba64f156]','warning in index_site_controller.'),(1849,4,'my_category',1541104818.38,'[::1][-][61122f470a0c8ed1230a57deba64f156]','info in index_site_controller.'),(1850,1,'my_category',1541104818.38,'[::1][-][61122f470a0c8ed1230a57deba64f156]','error in index_site_controller.'),(1851,2,'my_category',1541104818.38,'[::1][-][61122f470a0c8ed1230a57deba64f156]','warning in index_site_controller.'),(1852,4,'my_category',1541104821.95,'[::1][-][-]','info in index_site_controller.'),(1853,1,'my_category',1541104821.95,'[::1][-][-]','error in index_site_controller.'),(1854,2,'my_category',1541104821.95,'[::1][-][-]','warning in index_site_controller.'),(1855,4,'my_category',1541104825.36,'[::1][-][-]','info in index_site_controller.'),(1856,1,'my_category',1541104825.36,'[::1][-][-]','error in index_site_controller.'),(1857,2,'my_category',1541104825.36,'[::1][-][-]','warning in index_site_controller.'),(1858,4,'my_category',1541104826.73,'[::1][-][-]','info in index_site_controller.'),(1859,1,'my_category',1541104826.73,'[::1][-][-]','error in index_site_controller.'),(1860,2,'my_category',1541104826.73,'[::1][-][-]','warning in index_site_controller.'),(1861,4,'my_category',1541104827.05,'[::1][-][-]','info in index_site_controller.'),(1862,1,'my_category',1541104827.05,'[::1][-][-]','error in index_site_controller.'),(1863,2,'my_category',1541104827.05,'[::1][-][-]','warning in index_site_controller.'),(1864,4,'my_category',1541104827.41,'[::1][-][-]','info in index_site_controller.'),(1865,1,'my_category',1541104827.41,'[::1][-][-]','error in index_site_controller.'),(1866,2,'my_category',1541104827.41,'[::1][-][-]','warning in index_site_controller.'),(1867,4,'my_category',1541104827.77,'[::1][-][-]','info in index_site_controller.'),(1868,1,'my_category',1541104827.77,'[::1][-][-]','error in index_site_controller.'),(1869,2,'my_category',1541104827.77,'[::1][-][-]','warning in index_site_controller.'),(1870,4,'my_category',1541105039.72,'[::1][-][61122f470a0c8ed1230a57deba64f156]','info in index_site_controller.'),(1871,1,'my_category',1541105039.72,'[::1][-][61122f470a0c8ed1230a57deba64f156]','error in index_site_controller.'),(1872,2,'my_category',1541105039.72,'[::1][-][61122f470a0c8ed1230a57deba64f156]','warning in index_site_controller.'),(1873,4,'my_category',1541105041.15,'[::1][-][-]','info in index_site_controller.'),(1874,1,'my_category',1541105041.15,'[::1][-][-]','error in index_site_controller.'),(1875,2,'my_category',1541105041.15,'[::1][-][-]','warning in index_site_controller.'),(1876,4,'my_category',1541105041.66,'[::1][-][-]','info in index_site_controller.'),(1877,1,'my_category',1541105041.66,'[::1][-][-]','error in index_site_controller.'),(1878,2,'my_category',1541105041.66,'[::1][-][-]','warning in index_site_controller.'),(1879,4,'my_category',1541105141.34,'[::1][-][-]','info in index_site_controller.'),(1880,1,'my_category',1541105141.34,'[::1][-][-]','error in index_site_controller.'),(1881,2,'my_category',1541105141.34,'[::1][-][-]','warning in index_site_controller.'),(1882,4,'my_category',1541105154.58,'[::1][-][-]','info in index_site_controller.'),(1883,1,'my_category',1541105154.58,'[::1][-][-]','error in index_site_controller.'),(1884,2,'my_category',1541105154.58,'[::1][-][-]','warning in index_site_controller.'),(1885,4,'my_category',1541105208.94,'[::1][-][-]','info in index_site_controller.'),(1886,1,'my_category',1541105208.94,'[::1][-][-]','error in index_site_controller.'),(1887,2,'my_category',1541105208.94,'[::1][-][-]','warning in index_site_controller.'),(1888,4,'my_category',1541105236.08,'[::1][-][61122f470a0c8ed1230a57deba64f156]','info in index_site_controller.'),(1889,1,'my_category',1541105236.08,'[::1][-][61122f470a0c8ed1230a57deba64f156]','error in index_site_controller.'),(1890,2,'my_category',1541105236.08,'[::1][-][61122f470a0c8ed1230a57deba64f156]','warning in index_site_controller.'),(1891,4,'my_category',1541105287.01,'[::1][-][-]','info in index_site_controller.'),(1892,1,'my_category',1541105287.01,'[::1][-][-]','error in index_site_controller.'),(1893,2,'my_category',1541105287.01,'[::1][-][-]','warning in index_site_controller.'),(1894,4,'my_category',1541105290.92,'[::1][-][61122f470a0c8ed1230a57deba64f156]','info in index_site_controller.'),(1895,1,'my_category',1541105290.92,'[::1][-][61122f470a0c8ed1230a57deba64f156]','error in index_site_controller.'),(1896,2,'my_category',1541105290.92,'[::1][-][61122f470a0c8ed1230a57deba64f156]','warning in index_site_controller.'),(1897,4,'my_category',1541105292.44,'[::1][-][-]','info in index_site_controller.'),(1898,1,'my_category',1541105292.44,'[::1][-][-]','error in index_site_controller.'),(1899,2,'my_category',1541105292.44,'[::1][-][-]','warning in index_site_controller.'),(1900,4,'my_category',1541105295.83,'[::1][-][-]','info in index_site_controller.'),(1901,1,'my_category',1541105295.83,'[::1][-][-]','error in index_site_controller.'),(1902,2,'my_category',1541105295.83,'[::1][-][-]','warning in index_site_controller.'),(1903,4,'my_category',1541105296.15,'[::1][-][-]','info in index_site_controller.'),(1904,1,'my_category',1541105296.15,'[::1][-][-]','error in index_site_controller.'),(1905,2,'my_category',1541105296.15,'[::1][-][-]','warning in index_site_controller.'),(1906,4,'my_category',1541105296.55,'[::1][-][-]','info in index_site_controller.'),(1907,1,'my_category',1541105296.55,'[::1][-][-]','error in index_site_controller.'),(1908,2,'my_category',1541105296.55,'[::1][-][-]','warning in index_site_controller.'),(1909,4,'my_category',1541105734.9,'[::1][-][-]','info in index_site_controller.'),(1910,1,'my_category',1541105734.9,'[::1][-][-]','error in index_site_controller.'),(1911,2,'my_category',1541105734.9,'[::1][-][-]','warning in index_site_controller.'),(1912,4,'my_category',1541105852.4,'[::1][-][-]','info in index_site_controller.'),(1913,1,'my_category',1541105852.4,'[::1][-][-]','error in index_site_controller.'),(1914,2,'my_category',1541105852.4,'[::1][-][-]','warning in index_site_controller.'),(1915,4,'my_category',1541105853.72,'[::1][-][-]','info in index_site_controller.'),(1916,1,'my_category',1541105853.72,'[::1][-][-]','error in index_site_controller.'),(1917,2,'my_category',1541105853.72,'[::1][-][-]','warning in index_site_controller.'),(1918,4,'my_category',1541105854.92,'[::1][-][-]','info in index_site_controller.'),(1919,1,'my_category',1541105854.92,'[::1][-][-]','error in index_site_controller.'),(1920,2,'my_category',1541105854.92,'[::1][-][-]','warning in index_site_controller.'),(1921,4,'my_category',1541105855.81,'[::1][-][-]','info in index_site_controller.'),(1922,1,'my_category',1541105855.81,'[::1][-][-]','error in index_site_controller.'),(1923,2,'my_category',1541105855.81,'[::1][-][-]','warning in index_site_controller.'),(1924,4,'my_category',1541106463.92,'[::1][4][-]','info in index_site_controller.'),(1925,1,'my_category',1541106463.92,'[::1][4][-]','error in index_site_controller.'),(1926,2,'my_category',1541106463.92,'[::1][4][-]','warning in index_site_controller.'),(1927,4,'my_category',1541106465.82,'[::1][-][-]','info in index_site_controller.'),(1928,1,'my_category',1541106465.82,'[::1][-][-]','error in index_site_controller.'),(1929,2,'my_category',1541106465.82,'[::1][-][-]','warning in index_site_controller.'),(1930,4,'my_category',1541106467.57,'[::1][-][-]','info in index_site_controller.'),(1931,1,'my_category',1541106467.57,'[::1][-][-]','error in index_site_controller.'),(1932,2,'my_category',1541106467.57,'[::1][-][-]','warning in index_site_controller.'),(1933,4,'my_category',1541106821.61,'[::1][-][-]','info in index_site_controller.'),(1934,1,'my_category',1541106821.61,'[::1][-][-]','error in index_site_controller.'),(1935,2,'my_category',1541106821.61,'[::1][-][-]','warning in index_site_controller.'),(1936,4,'my_category',1541106831.53,'[::1][-][-]','info in index_site_controller.'),(1937,1,'my_category',1541106831.53,'[::1][-][-]','error in index_site_controller.'),(1938,2,'my_category',1541106831.53,'[::1][-][-]','warning in index_site_controller.'),(1939,4,'my_category',1541106833.45,'[::1][-][-]','info in index_site_controller.'),(1940,1,'my_category',1541106833.45,'[::1][-][-]','error in index_site_controller.'),(1941,2,'my_category',1541106833.45,'[::1][-][-]','warning in index_site_controller.'),(1942,4,'my_category',1541106846.61,'[::1][4][-]','info in index_site_controller.'),(1943,1,'my_category',1541106846.62,'[::1][4][-]','error in index_site_controller.'),(1944,2,'my_category',1541106846.62,'[::1][4][-]','warning in index_site_controller.'),(1945,4,'my_category',1541108643.57,'[::1][-][-]','info in index_site_controller.'),(1946,1,'my_category',1541108643.57,'[::1][-][-]','error in index_site_controller.'),(1947,2,'my_category',1541108643.57,'[::1][-][-]','warning in index_site_controller.'),(1948,4,'my_category',1541108645,'[::1][-][-]','info in index_site_controller.'),(1949,1,'my_category',1541108645,'[::1][-][-]','error in index_site_controller.'),(1950,2,'my_category',1541108645,'[::1][-][-]','warning in index_site_controller.'),(1951,4,'my_category',1541108650.09,'[::1][-][-]','info in index_site_controller.'),(1952,1,'my_category',1541108650.09,'[::1][-][-]','error in index_site_controller.'),(1953,2,'my_category',1541108650.09,'[::1][-][-]','warning in index_site_controller.'),(1954,4,'my_category',1541108658.41,'[::1][4][-]','info in index_site_controller.'),(1955,1,'my_category',1541108658.41,'[::1][4][-]','error in index_site_controller.'),(1956,2,'my_category',1541108658.41,'[::1][4][-]','warning in index_site_controller.'),(1957,4,'my_category',1541108661.46,'[::1][4][-]','info in index_site_controller.'),(1958,1,'my_category',1541108661.46,'[::1][4][-]','error in index_site_controller.'),(1959,2,'my_category',1541108661.46,'[::1][4][-]','warning in index_site_controller.'),(1960,4,'my_category',1541108669.33,'[::1][4][-]','info in index_site_controller.'),(1961,1,'my_category',1541108669.33,'[::1][4][-]','error in index_site_controller.'),(1962,2,'my_category',1541108669.33,'[::1][4][-]','warning in index_site_controller.'),(1963,4,'my_category',1541150774.2201,'[127.0.0.1][-][-]','info in index_site_controller.'),(1964,1,'my_category',1541150774.2201,'[127.0.0.1][-][-]','error in index_site_controller.'),(1965,2,'my_category',1541150774.2201,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1966,4,'my_category',1541150775.5095,'[127.0.0.1][-][-]','info in index_site_controller.'),(1967,1,'my_category',1541150775.5095,'[127.0.0.1][-][-]','error in index_site_controller.'),(1968,2,'my_category',1541150775.5095,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1969,4,'my_category',1541150789.7647,'[127.0.0.1][-][-]','info in index_site_controller.'),(1970,1,'my_category',1541150789.7647,'[127.0.0.1][-][-]','error in index_site_controller.'),(1971,2,'my_category',1541150789.7647,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1972,4,'my_category',1541150793.8904,'[127.0.0.1][4][-]','info in index_site_controller.'),(1973,1,'my_category',1541150793.8904,'[127.0.0.1][4][-]','error in index_site_controller.'),(1974,2,'my_category',1541150793.8904,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1975,4,'my_category',1541487972.1857,'[127.0.0.1][-][-]','info in index_site_controller.'),(1976,1,'my_category',1541487972.1857,'[127.0.0.1][-][-]','error in index_site_controller.'),(1977,2,'my_category',1541487972.1857,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1978,4,'my_category',1541842075.88,'[::1][4][-]','info in index_site_controller.'),(1979,1,'my_category',1541842075.88,'[::1][4][-]','error in index_site_controller.'),(1980,2,'my_category',1541842075.88,'[::1][4][-]','warning in index_site_controller.'),(1981,4,'my_category',1542030356.4334,'[127.0.0.1][4][-]','info in index_site_controller.'),(1982,1,'my_category',1542030356.4334,'[127.0.0.1][4][-]','error in index_site_controller.'),(1983,2,'my_category',1542030356.4334,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1984,4,'my_category',1542030360.546,'[127.0.0.1][4][-]','info in index_site_controller.'),(1985,1,'my_category',1542030360.546,'[127.0.0.1][4][-]','error in index_site_controller.'),(1986,2,'my_category',1542030360.546,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1987,4,'my_category',1542030474.1733,'[127.0.0.1][4][-]','info in index_site_controller.'),(1988,1,'my_category',1542030474.1733,'[127.0.0.1][4][-]','error in index_site_controller.'),(1989,2,'my_category',1542030474.1733,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1990,4,'my_category',1542030483.2527,'[127.0.0.1][4][-]','info in index_site_controller.'),(1991,1,'my_category',1542030483.2527,'[127.0.0.1][4][-]','error in index_site_controller.'),(1992,2,'my_category',1542030483.2527,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1993,4,'my_category',1542030499.7012,'[127.0.0.1][-][-]','info in index_site_controller.'),(1994,1,'my_category',1542030499.7012,'[127.0.0.1][-][-]','error in index_site_controller.'),(1995,2,'my_category',1542030499.7012,'[127.0.0.1][-][-]','warning in index_site_controller.'),(1996,4,'my_category',1542030524.5323,'[127.0.0.1][4][-]','info in index_site_controller.'),(1997,1,'my_category',1542030524.5323,'[127.0.0.1][4][-]','error in index_site_controller.'),(1998,2,'my_category',1542030524.5323,'[127.0.0.1][4][-]','warning in index_site_controller.'),(1999,4,'my_category',1542030531.1391,'[127.0.0.1][4][-]','info in index_site_controller.'),(2000,1,'my_category',1542030531.1391,'[127.0.0.1][4][-]','error in index_site_controller.'),(2001,2,'my_category',1542030531.1391,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2002,4,'my_category',1542030534.4502,'[127.0.0.1][4][-]','info in index_site_controller.'),(2003,1,'my_category',1542030534.4502,'[127.0.0.1][4][-]','error in index_site_controller.'),(2004,2,'my_category',1542030534.4502,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2005,4,'my_category',1542030544.7458,'[127.0.0.1][4][-]','info in index_site_controller.'),(2006,1,'my_category',1542030544.7458,'[127.0.0.1][4][-]','error in index_site_controller.'),(2007,2,'my_category',1542030544.7458,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2008,4,'my_category',1542030554.4979,'[127.0.0.1][4][-]','info in index_site_controller.'),(2009,1,'my_category',1542030554.4979,'[127.0.0.1][4][-]','error in index_site_controller.'),(2010,2,'my_category',1542030554.4979,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2011,4,'my_category',1542030817.2216,'[127.0.0.1][4][-]','info in index_site_controller.'),(2012,1,'my_category',1542030817.2217,'[127.0.0.1][4][-]','error in index_site_controller.'),(2013,2,'my_category',1542030817.2217,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2014,4,'my_category',1542030818.6274,'[127.0.0.1][4][-]','info in index_site_controller.'),(2015,1,'my_category',1542030818.6274,'[127.0.0.1][4][-]','error in index_site_controller.'),(2016,2,'my_category',1542030818.6274,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2017,4,'my_category',1542030831.1671,'[127.0.0.1][4][-]','info in index_site_controller.'),(2018,1,'my_category',1542030831.1671,'[127.0.0.1][4][-]','error in index_site_controller.'),(2019,2,'my_category',1542030831.1671,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2020,4,'my_category',1542030862.5669,'[127.0.0.1][-][-]','info in index_site_controller.'),(2021,1,'my_category',1542030862.5669,'[127.0.0.1][-][-]','error in index_site_controller.'),(2022,2,'my_category',1542030862.567,'[127.0.0.1][-][-]','warning in index_site_controller.'),(2023,4,'my_category',1542030869.1141,'[127.0.0.1][-][-]','info in index_site_controller.'),(2024,1,'my_category',1542030869.1141,'[127.0.0.1][-][-]','error in index_site_controller.'),(2025,2,'my_category',1542030869.1141,'[127.0.0.1][-][-]','warning in index_site_controller.'),(2026,4,'my_category',1542030870.6287,'[127.0.0.1][-][-]','info in index_site_controller.'),(2027,1,'my_category',1542030870.6287,'[127.0.0.1][-][-]','error in index_site_controller.'),(2028,2,'my_category',1542030870.6287,'[127.0.0.1][-][-]','warning in index_site_controller.'),(2029,4,'my_category',1542030872.4447,'[127.0.0.1][-][-]','info in index_site_controller.'),(2030,1,'my_category',1542030872.4447,'[127.0.0.1][-][-]','error in index_site_controller.'),(2031,2,'my_category',1542030872.4447,'[127.0.0.1][-][-]','warning in index_site_controller.'),(2032,4,'my_category',1542030875.0083,'[127.0.0.1][-][-]','info in index_site_controller.'),(2033,1,'my_category',1542030875.0083,'[127.0.0.1][-][-]','error in index_site_controller.'),(2034,2,'my_category',1542030875.0083,'[127.0.0.1][-][-]','warning in index_site_controller.'),(2035,4,'my_category',1542030877.6934,'[127.0.0.1][-][-]','info in index_site_controller.'),(2036,1,'my_category',1542030877.6934,'[127.0.0.1][-][-]','error in index_site_controller.'),(2037,2,'my_category',1542030877.6934,'[127.0.0.1][-][-]','warning in index_site_controller.'),(2038,4,'my_category',1542030886.8429,'[127.0.0.1][4][-]','info in index_site_controller.'),(2039,1,'my_category',1542030886.8429,'[127.0.0.1][4][-]','error in index_site_controller.'),(2040,2,'my_category',1542030886.8429,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2041,4,'my_category',1542030889.3671,'[127.0.0.1][4][-]','info in index_site_controller.'),(2042,1,'my_category',1542030889.3671,'[127.0.0.1][4][-]','error in index_site_controller.'),(2043,2,'my_category',1542030889.3671,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2044,4,'my_category',1542030891.3419,'[127.0.0.1][4][-]','info in index_site_controller.'),(2045,1,'my_category',1542030891.3419,'[127.0.0.1][4][-]','error in index_site_controller.'),(2046,2,'my_category',1542030891.3419,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2047,4,'my_category',1542030899.6136,'[127.0.0.1][4][-]','info in index_site_controller.'),(2048,1,'my_category',1542030899.6136,'[127.0.0.1][4][-]','error in index_site_controller.'),(2049,2,'my_category',1542030899.6136,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2050,4,'my_category',1542030914.5494,'[127.0.0.1][4][-]','info in index_site_controller.'),(2051,1,'my_category',1542030914.5494,'[127.0.0.1][4][-]','error in index_site_controller.'),(2052,2,'my_category',1542030914.5494,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2053,4,'my_category',1542030923.0473,'[127.0.0.1][4][-]','info in index_site_controller.'),(2054,1,'my_category',1542030923.0473,'[127.0.0.1][4][-]','error in index_site_controller.'),(2055,2,'my_category',1542030923.0473,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2056,4,'my_category',1542030925.2697,'[127.0.0.1][4][-]','info in index_site_controller.'),(2057,1,'my_category',1542030925.2697,'[127.0.0.1][4][-]','error in index_site_controller.'),(2058,2,'my_category',1542030925.2697,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2059,4,'my_category',1542031108.8009,'[127.0.0.1][4][-]','info in index_site_controller.'),(2060,1,'my_category',1542031108.8009,'[127.0.0.1][4][-]','error in index_site_controller.'),(2061,2,'my_category',1542031108.8009,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2062,4,'my_category',1542031112.4217,'[127.0.0.1][4][-]','info in index_site_controller.'),(2063,1,'my_category',1542031112.4217,'[127.0.0.1][4][-]','error in index_site_controller.'),(2064,2,'my_category',1542031112.4217,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2065,4,'my_category',1542031114.9074,'[127.0.0.1][4][-]','info in index_site_controller.'),(2066,1,'my_category',1542031114.9074,'[127.0.0.1][4][-]','error in index_site_controller.'),(2067,2,'my_category',1542031114.9074,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2068,4,'my_category',1542031116.252,'[127.0.0.1][4][-]','info in index_site_controller.'),(2069,1,'my_category',1542031116.252,'[127.0.0.1][4][-]','error in index_site_controller.'),(2070,2,'my_category',1542031116.252,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2071,4,'my_category',1542031119.8626,'[127.0.0.1][4][-]','info in index_site_controller.'),(2072,1,'my_category',1542031119.8626,'[127.0.0.1][4][-]','error in index_site_controller.'),(2073,2,'my_category',1542031119.8626,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2074,4,'my_category',1542031122.7734,'[127.0.0.1][4][-]','info in index_site_controller.'),(2075,1,'my_category',1542031122.7734,'[127.0.0.1][4][-]','error in index_site_controller.'),(2076,2,'my_category',1542031122.7734,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2077,4,'my_category',1542031937.3981,'[127.0.0.1][4][-]','info in index_site_controller.'),(2078,1,'my_category',1542031937.3981,'[127.0.0.1][4][-]','error in index_site_controller.'),(2079,2,'my_category',1542031937.3981,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2080,4,'my_category',1542031955.4466,'[127.0.0.1][4][-]','info in index_site_controller.'),(2081,1,'my_category',1542031955.4466,'[127.0.0.1][4][-]','error in index_site_controller.'),(2082,2,'my_category',1542031955.4466,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2083,4,'my_category',1542031990.1229,'[127.0.0.1][4][-]','info in index_site_controller.'),(2084,1,'my_category',1542031990.1229,'[127.0.0.1][4][-]','error in index_site_controller.'),(2085,2,'my_category',1542031990.1229,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2086,4,'my_category',1542031991.7994,'[127.0.0.1][4][-]','info in index_site_controller.'),(2087,1,'my_category',1542031991.7994,'[127.0.0.1][4][-]','error in index_site_controller.'),(2088,2,'my_category',1542031991.7994,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2089,4,'my_category',1542031994.9601,'[127.0.0.1][4][-]','info in index_site_controller.'),(2090,1,'my_category',1542031994.9602,'[127.0.0.1][4][-]','error in index_site_controller.'),(2091,2,'my_category',1542031994.9602,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2092,4,'my_category',1542031997.056,'[127.0.0.1][4][-]','info in index_site_controller.'),(2093,1,'my_category',1542031997.056,'[127.0.0.1][4][-]','error in index_site_controller.'),(2094,2,'my_category',1542031997.056,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2095,4,'my_category',1542031998.4983,'[127.0.0.1][4][-]','info in index_site_controller.'),(2096,1,'my_category',1542031998.4983,'[127.0.0.1][4][-]','error in index_site_controller.'),(2097,2,'my_category',1542031998.4983,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2098,4,'my_category',1542032000.6837,'[127.0.0.1][4][-]','info in index_site_controller.'),(2099,1,'my_category',1542032000.6837,'[127.0.0.1][4][-]','error in index_site_controller.'),(2100,2,'my_category',1542032000.6837,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2101,4,'my_category',1542032078.8451,'[127.0.0.1][4][-]','info in index_site_controller.'),(2102,1,'my_category',1542032078.8451,'[127.0.0.1][4][-]','error in index_site_controller.'),(2103,2,'my_category',1542032078.8451,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2104,4,'my_category',1542032079.8634,'[127.0.0.1][4][-]','info in index_site_controller.'),(2105,1,'my_category',1542032079.8634,'[127.0.0.1][4][-]','error in index_site_controller.'),(2106,2,'my_category',1542032079.8634,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2107,4,'my_category',1542032094.1653,'[127.0.0.1][4][-]','info in index_site_controller.'),(2108,1,'my_category',1542032094.1653,'[127.0.0.1][4][-]','error in index_site_controller.'),(2109,2,'my_category',1542032094.1653,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2110,4,'my_category',1542032117.8465,'[127.0.0.1][4][-]','info in index_site_controller.'),(2111,1,'my_category',1542032117.8465,'[127.0.0.1][4][-]','error in index_site_controller.'),(2112,2,'my_category',1542032117.8465,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2113,4,'my_category',1542032121.7566,'[127.0.0.1][4][-]','info in index_site_controller.'),(2114,1,'my_category',1542032121.7566,'[127.0.0.1][4][-]','error in index_site_controller.'),(2115,2,'my_category',1542032121.7566,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2116,4,'my_category',1542032127.0729,'[127.0.0.1][4][-]','info in index_site_controller.'),(2117,1,'my_category',1542032127.0729,'[127.0.0.1][4][-]','error in index_site_controller.'),(2118,2,'my_category',1542032127.0729,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2119,4,'my_category',1542032132.3822,'[127.0.0.1][4][-]','info in index_site_controller.'),(2120,1,'my_category',1542032132.3822,'[127.0.0.1][4][-]','error in index_site_controller.'),(2121,2,'my_category',1542032132.3822,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2122,4,'my_category',1542032135.4397,'[127.0.0.1][4][-]','info in index_site_controller.'),(2123,1,'my_category',1542032135.4397,'[127.0.0.1][4][-]','error in index_site_controller.'),(2124,2,'my_category',1542032135.4397,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2125,4,'my_category',1542032141.6937,'[127.0.0.1][4][-]','info in index_site_controller.'),(2126,1,'my_category',1542032141.6937,'[127.0.0.1][4][-]','error in index_site_controller.'),(2127,2,'my_category',1542032141.6937,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2128,4,'my_category',1542032153.8256,'[127.0.0.1][4][-]','info in index_site_controller.'),(2129,1,'my_category',1542032153.8256,'[127.0.0.1][4][-]','error in index_site_controller.'),(2130,2,'my_category',1542032153.8256,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2131,4,'my_category',1542032159.7703,'[127.0.0.1][4][-]','info in index_site_controller.'),(2132,1,'my_category',1542032159.7703,'[127.0.0.1][4][-]','error in index_site_controller.'),(2133,2,'my_category',1542032159.7703,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2134,4,'my_category',1542032286.9724,'[127.0.0.1][4][-]','info in index_site_controller.'),(2135,1,'my_category',1542032286.9724,'[127.0.0.1][4][-]','error in index_site_controller.'),(2136,2,'my_category',1542032286.9724,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2137,4,'my_category',1542032300.3101,'[127.0.0.1][4][-]','info in index_site_controller.'),(2138,1,'my_category',1542032300.3101,'[127.0.0.1][4][-]','error in index_site_controller.'),(2139,2,'my_category',1542032300.3101,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2140,4,'my_category',1542032310.2794,'[127.0.0.1][4][-]','info in index_site_controller.'),(2141,1,'my_category',1542032310.2794,'[127.0.0.1][4][-]','error in index_site_controller.'),(2142,2,'my_category',1542032310.2794,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2143,4,'my_category',1542032315.2588,'[127.0.0.1][4][-]','info in index_site_controller.'),(2144,1,'my_category',1542032315.2588,'[127.0.0.1][4][-]','error in index_site_controller.'),(2145,2,'my_category',1542032315.2588,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2146,4,'my_category',1542032318.4384,'[127.0.0.1][4][-]','info in index_site_controller.'),(2147,1,'my_category',1542032318.4384,'[127.0.0.1][4][-]','error in index_site_controller.'),(2148,2,'my_category',1542032318.4384,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2149,4,'my_category',1542032340.5562,'[127.0.0.1][4][-]','info in index_site_controller.'),(2150,1,'my_category',1542032340.5562,'[127.0.0.1][4][-]','error in index_site_controller.'),(2151,2,'my_category',1542032340.5562,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2152,4,'my_category',1542032344.3958,'[127.0.0.1][4][-]','info in index_site_controller.'),(2153,1,'my_category',1542032344.3958,'[127.0.0.1][4][-]','error in index_site_controller.'),(2154,2,'my_category',1542032344.3958,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2155,4,'my_category',1542032345.3718,'[127.0.0.1][4][-]','info in index_site_controller.'),(2156,1,'my_category',1542032345.3718,'[127.0.0.1][4][-]','error in index_site_controller.'),(2157,2,'my_category',1542032345.3718,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2158,4,'my_category',1542032346.1888,'[127.0.0.1][4][-]','info in index_site_controller.'),(2159,1,'my_category',1542032346.1888,'[127.0.0.1][4][-]','error in index_site_controller.'),(2160,2,'my_category',1542032346.1888,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2161,4,'my_category',1542032347.4489,'[127.0.0.1][4][-]','info in index_site_controller.'),(2162,1,'my_category',1542032347.4489,'[127.0.0.1][4][-]','error in index_site_controller.'),(2163,2,'my_category',1542032347.4489,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2164,4,'my_category',1542032349.0907,'[127.0.0.1][4][-]','info in index_site_controller.'),(2165,1,'my_category',1542032349.0907,'[127.0.0.1][4][-]','error in index_site_controller.'),(2166,2,'my_category',1542032349.0908,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2167,4,'my_category',1542032352.3859,'[127.0.0.1][4][-]','info in index_site_controller.'),(2168,1,'my_category',1542032352.3859,'[127.0.0.1][4][-]','error in index_site_controller.'),(2169,2,'my_category',1542032352.3859,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2170,4,'my_category',1542032354.0692,'[127.0.0.1][4][-]','info in index_site_controller.'),(2171,1,'my_category',1542032354.0692,'[127.0.0.1][4][-]','error in index_site_controller.'),(2172,2,'my_category',1542032354.0693,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2173,4,'my_category',1542032357.7468,'[127.0.0.1][4][-]','info in index_site_controller.'),(2174,1,'my_category',1542032357.7468,'[127.0.0.1][4][-]','error in index_site_controller.'),(2175,2,'my_category',1542032357.7468,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2176,4,'my_category',1542032404.8448,'[127.0.0.1][4][-]','info in index_site_controller.'),(2177,1,'my_category',1542032404.8448,'[127.0.0.1][4][-]','error in index_site_controller.'),(2178,2,'my_category',1542032404.8448,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2179,4,'my_category',1542032406.7006,'[127.0.0.1][4][-]','info in index_site_controller.'),(2180,1,'my_category',1542032406.7006,'[127.0.0.1][4][-]','error in index_site_controller.'),(2181,2,'my_category',1542032406.7006,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2182,4,'my_category',1542032408.1151,'[127.0.0.1][4][-]','info in index_site_controller.'),(2183,1,'my_category',1542032408.1151,'[127.0.0.1][4][-]','error in index_site_controller.'),(2184,2,'my_category',1542032408.1151,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2185,4,'my_category',1542032410.5663,'[127.0.0.1][4][-]','info in index_site_controller.'),(2186,1,'my_category',1542032410.5663,'[127.0.0.1][4][-]','error in index_site_controller.'),(2187,2,'my_category',1542032410.5663,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2188,4,'my_category',1542032420.3451,'[127.0.0.1][4][-]','info in index_site_controller.'),(2189,1,'my_category',1542032420.3451,'[127.0.0.1][4][-]','error in index_site_controller.'),(2190,2,'my_category',1542032420.3451,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2191,4,'my_category',1542032459.6673,'[127.0.0.1][4][-]','info in index_site_controller.'),(2192,1,'my_category',1542032459.6673,'[127.0.0.1][4][-]','error in index_site_controller.'),(2193,2,'my_category',1542032459.6673,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2194,4,'my_category',1542032461.8056,'[127.0.0.1][4][-]','info in index_site_controller.'),(2195,1,'my_category',1542032461.8056,'[127.0.0.1][4][-]','error in index_site_controller.'),(2196,2,'my_category',1542032461.8056,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2197,4,'my_category',1542032463.9615,'[127.0.0.1][4][-]','info in index_site_controller.'),(2198,1,'my_category',1542032463.9615,'[127.0.0.1][4][-]','error in index_site_controller.'),(2199,2,'my_category',1542032463.9616,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2200,4,'my_category',1542032465.281,'[127.0.0.1][4][-]','info in index_site_controller.'),(2201,1,'my_category',1542032465.281,'[127.0.0.1][4][-]','error in index_site_controller.'),(2202,2,'my_category',1542032465.281,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2203,4,'my_category',1542032466.6435,'[127.0.0.1][4][-]','info in index_site_controller.'),(2204,1,'my_category',1542032466.6435,'[127.0.0.1][4][-]','error in index_site_controller.'),(2205,2,'my_category',1542032466.6435,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2206,4,'my_category',1542032472.0258,'[127.0.0.1][4][-]','info in index_site_controller.'),(2207,1,'my_category',1542032472.0259,'[127.0.0.1][4][-]','error in index_site_controller.'),(2208,2,'my_category',1542032472.0259,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2209,4,'my_category',1542033186.5905,'[127.0.0.1][4][-]','info in index_site_controller.'),(2210,1,'my_category',1542033186.5905,'[127.0.0.1][4][-]','error in index_site_controller.'),(2211,2,'my_category',1542033186.5905,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2212,4,'my_category',1542033222.1622,'[127.0.0.1][4][-]','info in index_site_controller.'),(2213,1,'my_category',1542033222.1622,'[127.0.0.1][4][-]','error in index_site_controller.'),(2214,2,'my_category',1542033222.1622,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2215,4,'my_category',1542033295.8242,'[127.0.0.1][4][-]','info in index_site_controller.'),(2216,1,'my_category',1542033295.8242,'[127.0.0.1][4][-]','error in index_site_controller.'),(2217,2,'my_category',1542033295.8242,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2218,4,'my_category',1542033375.8722,'[127.0.0.1][4][-]','info in index_site_controller.'),(2219,1,'my_category',1542033375.8722,'[127.0.0.1][4][-]','error in index_site_controller.'),(2220,2,'my_category',1542033375.8722,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2221,4,'my_category',1542033401.3309,'[127.0.0.1][4][-]','info in index_site_controller.'),(2222,1,'my_category',1542033401.331,'[127.0.0.1][4][-]','error in index_site_controller.'),(2223,2,'my_category',1542033401.331,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2224,4,'my_category',1542033454.3129,'[127.0.0.1][4][-]','info in index_site_controller.'),(2225,1,'my_category',1542033454.313,'[127.0.0.1][4][-]','error in index_site_controller.'),(2226,2,'my_category',1542033454.313,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2227,4,'my_category',1542033464.4796,'[127.0.0.1][4][-]','info in index_site_controller.'),(2228,1,'my_category',1542033464.4796,'[127.0.0.1][4][-]','error in index_site_controller.'),(2229,2,'my_category',1542033464.4796,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2230,4,'my_category',1542033470.5234,'[127.0.0.1][4][-]','info in index_site_controller.'),(2231,1,'my_category',1542033470.5234,'[127.0.0.1][4][-]','error in index_site_controller.'),(2232,2,'my_category',1542033470.5234,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2233,4,'my_category',1542033490.7869,'[127.0.0.1][4][-]','info in index_site_controller.'),(2234,1,'my_category',1542033490.7869,'[127.0.0.1][4][-]','error in index_site_controller.'),(2235,2,'my_category',1542033490.7869,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2236,4,'my_category',1542033500.1198,'[127.0.0.1][4][-]','info in index_site_controller.'),(2237,1,'my_category',1542033500.1198,'[127.0.0.1][4][-]','error in index_site_controller.'),(2238,2,'my_category',1542033500.1198,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2239,4,'my_category',1542033518.3502,'[127.0.0.1][4][-]','info in index_site_controller.'),(2240,1,'my_category',1542033518.3502,'[127.0.0.1][4][-]','error in index_site_controller.'),(2241,2,'my_category',1542033518.3502,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2242,4,'my_category',1542033520.61,'[127.0.0.1][4][-]','info in index_site_controller.'),(2243,1,'my_category',1542033520.61,'[127.0.0.1][4][-]','error in index_site_controller.'),(2244,2,'my_category',1542033520.61,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2245,4,'my_category',1542033530.4052,'[127.0.0.1][4][-]','info in index_site_controller.'),(2246,1,'my_category',1542033530.4052,'[127.0.0.1][4][-]','error in index_site_controller.'),(2247,2,'my_category',1542033530.4052,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2248,4,'my_category',1542033569.3653,'[127.0.0.1][4][-]','info in index_site_controller.'),(2249,1,'my_category',1542033569.3653,'[127.0.0.1][4][-]','error in index_site_controller.'),(2250,2,'my_category',1542033569.3653,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2251,4,'my_category',1542033570.6523,'[127.0.0.1][4][-]','info in index_site_controller.'),(2252,1,'my_category',1542033570.6523,'[127.0.0.1][4][-]','error in index_site_controller.'),(2253,2,'my_category',1542033570.6523,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2254,4,'my_category',1542033572.0961,'[127.0.0.1][4][-]','info in index_site_controller.'),(2255,1,'my_category',1542033572.0961,'[127.0.0.1][4][-]','error in index_site_controller.'),(2256,2,'my_category',1542033572.0961,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2257,4,'my_category',1542033582.1614,'[127.0.0.1][4][erk5up91sfhvh5vfud1oc909iutm5otp]','info in index_site_controller.'),(2258,1,'my_category',1542033582.1614,'[127.0.0.1][4][erk5up91sfhvh5vfud1oc909iutm5otp]','error in index_site_controller.'),(2259,2,'my_category',1542033582.1614,'[127.0.0.1][4][erk5up91sfhvh5vfud1oc909iutm5otp]','warning in index_site_controller.'),(2260,4,'my_category',1542033584.1014,'[127.0.0.1][4][-]','info in index_site_controller.'),(2261,1,'my_category',1542033584.1014,'[127.0.0.1][4][-]','error in index_site_controller.'),(2262,2,'my_category',1542033584.1014,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2263,4,'my_category',1542033630.0416,'[127.0.0.1][4][-]','info in index_site_controller.'),(2264,1,'my_category',1542033630.0416,'[127.0.0.1][4][-]','error in index_site_controller.'),(2265,2,'my_category',1542033630.0416,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2266,4,'my_category',1542033636.6885,'[127.0.0.1][4][-]','info in index_site_controller.'),(2267,1,'my_category',1542033636.6885,'[127.0.0.1][4][-]','error in index_site_controller.'),(2268,2,'my_category',1542033636.6886,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2269,4,'my_category',1542033649.8008,'[127.0.0.1][4][-]','info in index_site_controller.'),(2270,1,'my_category',1542033649.8008,'[127.0.0.1][4][-]','error in index_site_controller.'),(2271,2,'my_category',1542033649.8008,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2272,4,'my_category',1542033690.0895,'[127.0.0.1][4][-]','info in index_site_controller.'),(2273,1,'my_category',1542033690.0895,'[127.0.0.1][4][-]','error in index_site_controller.'),(2274,2,'my_category',1542033690.0895,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2275,4,'my_category',1542033691.9731,'[127.0.0.1][4][-]','info in index_site_controller.'),(2276,1,'my_category',1542033691.9731,'[127.0.0.1][4][-]','error in index_site_controller.'),(2277,2,'my_category',1542033691.9731,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2278,4,'my_category',1542033696.101,'[127.0.0.1][4][-]','info in index_site_controller.'),(2279,1,'my_category',1542033696.101,'[127.0.0.1][4][-]','error in index_site_controller.'),(2280,2,'my_category',1542033696.101,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2281,4,'my_category',1542033704.139,'[127.0.0.1][4][-]','info in index_site_controller.'),(2282,1,'my_category',1542033704.139,'[127.0.0.1][4][-]','error in index_site_controller.'),(2283,2,'my_category',1542033704.139,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2284,4,'my_category',1542033724.7043,'[127.0.0.1][4][-]','info in index_site_controller.'),(2285,1,'my_category',1542033724.7043,'[127.0.0.1][4][-]','error in index_site_controller.'),(2286,2,'my_category',1542033724.7043,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2287,4,'my_category',1542040352.85,'[::1][4][-]','info in index_site_controller.'),(2288,1,'my_category',1542040352.85,'[::1][4][-]','error in index_site_controller.'),(2289,2,'my_category',1542040352.85,'[::1][4][-]','warning in index_site_controller.'),(2290,4,'my_category',1542040355.98,'[::1][4][-]','info in index_site_controller.'),(2291,1,'my_category',1542040355.98,'[::1][4][-]','error in index_site_controller.'),(2292,2,'my_category',1542040355.98,'[::1][4][-]','warning in index_site_controller.'),(2293,4,'my_category',1542040360.39,'[::1][4][-]','info in index_site_controller.'),(2294,1,'my_category',1542040360.39,'[::1][4][-]','error in index_site_controller.'),(2295,2,'my_category',1542040360.39,'[::1][4][-]','warning in index_site_controller.'),(2296,4,'my_category',1542040362.06,'[::1][4][-]','info in index_site_controller.'),(2297,1,'my_category',1542040362.06,'[::1][4][-]','error in index_site_controller.'),(2298,2,'my_category',1542040362.06,'[::1][4][-]','warning in index_site_controller.'),(2299,4,'my_category',1542040366.65,'[::1][4][-]','info in index_site_controller.'),(2300,1,'my_category',1542040366.65,'[::1][4][-]','error in index_site_controller.'),(2301,2,'my_category',1542040366.65,'[::1][4][-]','warning in index_site_controller.'),(2302,4,'my_category',1542040370.82,'[::1][4][-]','info in index_site_controller.'),(2303,1,'my_category',1542040370.82,'[::1][4][-]','error in index_site_controller.'),(2304,2,'my_category',1542040370.82,'[::1][4][-]','warning in index_site_controller.'),(2305,4,'my_category',1542040376.03,'[::1][4][-]','info in index_site_controller.'),(2306,1,'my_category',1542040376.03,'[::1][4][-]','error in index_site_controller.'),(2307,2,'my_category',1542040376.03,'[::1][4][-]','warning in index_site_controller.'),(2308,4,'my_category',1542040462.17,'[::1][4][-]','info in index_site_controller.'),(2309,1,'my_category',1542040462.17,'[::1][4][-]','error in index_site_controller.'),(2310,2,'my_category',1542040462.17,'[::1][4][-]','warning in index_site_controller.'),(2311,4,'my_category',1542040476.75,'[::1][4][-]','info in index_site_controller.'),(2312,1,'my_category',1542040476.75,'[::1][4][-]','error in index_site_controller.'),(2313,2,'my_category',1542040476.75,'[::1][4][-]','warning in index_site_controller.'),(2314,4,'my_category',1542040479.61,'[::1][4][-]','info in index_site_controller.'),(2315,1,'my_category',1542040479.61,'[::1][4][-]','error in index_site_controller.'),(2316,2,'my_category',1542040479.61,'[::1][4][-]','warning in index_site_controller.'),(2317,4,'my_category',1542040487.18,'[::1][4][-]','info in index_site_controller.'),(2318,1,'my_category',1542040487.18,'[::1][4][-]','error in index_site_controller.'),(2319,2,'my_category',1542040487.18,'[::1][4][-]','warning in index_site_controller.'),(2320,4,'my_category',1542040492.72,'[::1][4][-]','info in index_site_controller.'),(2321,1,'my_category',1542040492.72,'[::1][4][-]','error in index_site_controller.'),(2322,2,'my_category',1542040492.72,'[::1][4][-]','warning in index_site_controller.'),(2323,4,'my_category',1542040654.82,'[::1][4][-]','info in index_site_controller.'),(2324,1,'my_category',1542040654.82,'[::1][4][-]','error in index_site_controller.'),(2325,2,'my_category',1542040654.82,'[::1][4][-]','warning in index_site_controller.'),(2326,4,'my_category',1542040656.88,'[::1][4][-]','info in index_site_controller.'),(2327,1,'my_category',1542040656.88,'[::1][4][-]','error in index_site_controller.'),(2328,2,'my_category',1542040656.88,'[::1][4][-]','warning in index_site_controller.'),(2329,4,'my_category',1542040664.05,'[::1][4][-]','info in index_site_controller.'),(2330,1,'my_category',1542040664.05,'[::1][4][-]','error in index_site_controller.'),(2331,2,'my_category',1542040664.05,'[::1][4][-]','warning in index_site_controller.'),(2332,4,'my_category',1542040667.16,'[::1][4][-]','info in index_site_controller.'),(2333,1,'my_category',1542040667.16,'[::1][4][-]','error in index_site_controller.'),(2334,2,'my_category',1542040667.16,'[::1][4][-]','warning in index_site_controller.'),(2335,4,'my_category',1542040669.14,'[::1][4][-]','info in index_site_controller.'),(2336,1,'my_category',1542040669.14,'[::1][4][-]','error in index_site_controller.'),(2337,2,'my_category',1542040669.14,'[::1][4][-]','warning in index_site_controller.'),(2338,4,'my_category',1542040768.88,'[::1][4][-]','info in index_site_controller.'),(2339,1,'my_category',1542040768.88,'[::1][4][-]','error in index_site_controller.'),(2340,2,'my_category',1542040768.88,'[::1][4][-]','warning in index_site_controller.'),(2341,4,'my_category',1542040770.84,'[::1][4][-]','info in index_site_controller.'),(2342,1,'my_category',1542040770.84,'[::1][4][-]','error in index_site_controller.'),(2343,2,'my_category',1542040770.84,'[::1][4][-]','warning in index_site_controller.'),(2344,4,'my_category',1542040773.77,'[::1][4][-]','info in index_site_controller.'),(2345,1,'my_category',1542040773.77,'[::1][4][-]','error in index_site_controller.'),(2346,2,'my_category',1542040773.77,'[::1][4][-]','warning in index_site_controller.'),(2347,4,'my_category',1542040781.29,'[::1][4][-]','info in index_site_controller.'),(2348,1,'my_category',1542040781.29,'[::1][4][-]','error in index_site_controller.'),(2349,2,'my_category',1542040781.29,'[::1][4][-]','warning in index_site_controller.'),(2350,4,'my_category',1542040788.25,'[::1][4][-]','info in index_site_controller.'),(2351,1,'my_category',1542040788.25,'[::1][4][-]','error in index_site_controller.'),(2352,2,'my_category',1542040788.25,'[::1][4][-]','warning in index_site_controller.'),(2353,4,'my_category',1542040790.51,'[::1][4][-]','info in index_site_controller.'),(2354,1,'my_category',1542040790.51,'[::1][4][-]','error in index_site_controller.'),(2355,2,'my_category',1542040790.51,'[::1][4][-]','warning in index_site_controller.'),(2356,4,'my_category',1542040792.26,'[::1][4][-]','info in index_site_controller.'),(2357,1,'my_category',1542040792.26,'[::1][4][-]','error in index_site_controller.'),(2358,2,'my_category',1542040792.26,'[::1][4][-]','warning in index_site_controller.'),(2359,4,'my_category',1542040799.4,'[::1][4][-]','info in index_site_controller.'),(2360,1,'my_category',1542040799.4,'[::1][4][-]','error in index_site_controller.'),(2361,2,'my_category',1542040799.4,'[::1][4][-]','warning in index_site_controller.'),(2362,4,'my_category',1542040805.05,'[::1][4][-]','info in index_site_controller.'),(2363,1,'my_category',1542040805.05,'[::1][4][-]','error in index_site_controller.'),(2364,2,'my_category',1542040805.05,'[::1][4][-]','warning in index_site_controller.'),(2365,4,'my_category',1542040836.08,'[::1][4][-]','info in index_site_controller.'),(2366,1,'my_category',1542040836.08,'[::1][4][-]','error in index_site_controller.'),(2367,2,'my_category',1542040836.08,'[::1][4][-]','warning in index_site_controller.'),(2368,4,'my_category',1542040837.81,'[::1][4][-]','info in index_site_controller.'),(2369,1,'my_category',1542040837.81,'[::1][4][-]','error in index_site_controller.'),(2370,2,'my_category',1542040837.81,'[::1][4][-]','warning in index_site_controller.'),(2371,4,'my_category',1542040847.83,'[::1][4][-]','info in index_site_controller.'),(2372,1,'my_category',1542040847.83,'[::1][4][-]','error in index_site_controller.'),(2373,2,'my_category',1542040847.83,'[::1][4][-]','warning in index_site_controller.'),(2374,4,'my_category',1542040895.79,'[::1][4][-]','info in index_site_controller.'),(2375,1,'my_category',1542040895.79,'[::1][4][-]','error in index_site_controller.'),(2376,2,'my_category',1542040895.79,'[::1][4][-]','warning in index_site_controller.'),(2377,4,'my_category',1542041047.27,'[::1][4][-]','info in index_site_controller.'),(2378,1,'my_category',1542041047.27,'[::1][4][-]','error in index_site_controller.'),(2379,2,'my_category',1542041047.27,'[::1][4][-]','warning in index_site_controller.'),(2380,4,'my_category',1542041068.32,'[::1][4][-]','info in index_site_controller.'),(2381,1,'my_category',1542041068.32,'[::1][4][-]','error in index_site_controller.'),(2382,2,'my_category',1542041068.32,'[::1][4][-]','warning in index_site_controller.'),(2383,4,'my_category',1542041131.62,'[::1][4][-]','info in index_site_controller.'),(2384,1,'my_category',1542041131.62,'[::1][4][-]','error in index_site_controller.'),(2385,2,'my_category',1542041131.62,'[::1][4][-]','warning in index_site_controller.'),(2386,4,'my_category',1542041133.35,'[::1][4][-]','info in index_site_controller.'),(2387,1,'my_category',1542041133.35,'[::1][4][-]','error in index_site_controller.'),(2388,2,'my_category',1542041133.35,'[::1][4][-]','warning in index_site_controller.'),(2389,4,'my_category',1542041147.52,'[::1][4][-]','info in index_site_controller.'),(2390,1,'my_category',1542041147.52,'[::1][4][-]','error in index_site_controller.'),(2391,2,'my_category',1542041147.52,'[::1][4][-]','warning in index_site_controller.'),(2392,4,'my_category',1542041149.74,'[::1][4][-]','info in index_site_controller.'),(2393,1,'my_category',1542041149.74,'[::1][4][-]','error in index_site_controller.'),(2394,2,'my_category',1542041149.74,'[::1][4][-]','warning in index_site_controller.'),(2395,4,'my_category',1542041160.15,'[::1][4][-]','info in index_site_controller.'),(2396,1,'my_category',1542041160.15,'[::1][4][-]','error in index_site_controller.'),(2397,2,'my_category',1542041160.15,'[::1][4][-]','warning in index_site_controller.'),(2398,4,'my_category',1542041174.9,'[::1][4][-]','info in index_site_controller.'),(2399,1,'my_category',1542041174.9,'[::1][4][-]','error in index_site_controller.'),(2400,2,'my_category',1542041174.9,'[::1][4][-]','warning in index_site_controller.'),(2401,4,'my_category',1542041203.48,'[::1][4][-]','info in index_site_controller.'),(2402,1,'my_category',1542041203.48,'[::1][4][-]','error in index_site_controller.'),(2403,2,'my_category',1542041203.48,'[::1][4][-]','warning in index_site_controller.'),(2404,4,'my_category',1542052610.16,'[::1][4][-]','info in index_site_controller.'),(2405,1,'my_category',1542052610.16,'[::1][4][-]','error in index_site_controller.'),(2406,2,'my_category',1542052610.16,'[::1][4][-]','warning in index_site_controller.'),(2407,4,'my_category',1542052685.4,'[::1][4][-]','info in index_site_controller.'),(2408,1,'my_category',1542052685.4,'[::1][4][-]','error in index_site_controller.'),(2409,2,'my_category',1542052685.4,'[::1][4][-]','warning in index_site_controller.'),(2410,4,'my_category',1542055912.59,'[::1][4][-]','info in index_site_controller.'),(2411,1,'my_category',1542055912.59,'[::1][4][-]','error in index_site_controller.'),(2412,2,'my_category',1542055912.59,'[::1][4][-]','warning in index_site_controller.'),(2413,4,'my_category',1542055919.74,'[::1][4][-]','info in index_site_controller.'),(2414,1,'my_category',1542055919.74,'[::1][4][-]','error in index_site_controller.'),(2415,2,'my_category',1542055919.74,'[::1][4][-]','warning in index_site_controller.'),(2416,4,'my_category',1542055924.19,'[::1][4][-]','info in index_site_controller.'),(2417,1,'my_category',1542055924.19,'[::1][4][-]','error in index_site_controller.'),(2418,2,'my_category',1542055924.19,'[::1][4][-]','warning in index_site_controller.'),(2419,4,'my_category',1542056129.42,'[::1][4][-]','info in index_site_controller.'),(2420,1,'my_category',1542056129.42,'[::1][4][-]','error in index_site_controller.'),(2421,2,'my_category',1542056129.42,'[::1][4][-]','warning in index_site_controller.'),(2422,4,'my_category',1542056421.75,'[::1][4][-]','info in index_site_controller.'),(2423,1,'my_category',1542056421.75,'[::1][4][-]','error in index_site_controller.'),(2424,2,'my_category',1542056421.75,'[::1][4][-]','warning in index_site_controller.'),(2425,4,'my_category',1542058837.19,'[::1][4][-]','info in index_site_controller.'),(2426,1,'my_category',1542058837.19,'[::1][4][-]','error in index_site_controller.'),(2427,2,'my_category',1542058837.19,'[::1][4][-]','warning in index_site_controller.'),(2428,4,'my_category',1542058886.55,'[::1][4][-]','info in index_site_controller.'),(2429,1,'my_category',1542058886.55,'[::1][4][-]','error in index_site_controller.'),(2430,2,'my_category',1542058886.55,'[::1][4][-]','warning in index_site_controller.'),(2431,4,'my_category',1542059070.23,'[::1][4][-]','info in index_site_controller.'),(2432,1,'my_category',1542059070.23,'[::1][4][-]','error in index_site_controller.'),(2433,2,'my_category',1542059070.23,'[::1][4][-]','warning in index_site_controller.'),(2434,4,'my_category',1542059074.62,'[::1][4][-]','info in index_site_controller.'),(2435,1,'my_category',1542059074.62,'[::1][4][-]','error in index_site_controller.'),(2436,2,'my_category',1542059074.62,'[::1][4][-]','warning in index_site_controller.'),(2437,4,'my_category',1542093269.2461,'[127.0.0.1][4][-]','info in index_site_controller.'),(2438,1,'my_category',1542093269.2461,'[127.0.0.1][4][-]','error in index_site_controller.'),(2439,2,'my_category',1542093269.2461,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2440,4,'my_category',1542093274.4583,'[127.0.0.1][4][-]','info in index_site_controller.'),(2441,1,'my_category',1542093274.4583,'[127.0.0.1][4][-]','error in index_site_controller.'),(2442,2,'my_category',1542093274.4583,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2443,4,'my_category',1542093283.6537,'[127.0.0.1][4][-]','info in index_site_controller.'),(2444,1,'my_category',1542093283.6537,'[127.0.0.1][4][-]','error in index_site_controller.'),(2445,2,'my_category',1542093283.6538,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2446,4,'my_category',1542093296.3876,'[127.0.0.1][4][-]','info in index_site_controller.'),(2447,1,'my_category',1542093296.3876,'[127.0.0.1][4][-]','error in index_site_controller.'),(2448,2,'my_category',1542093296.3876,'[127.0.0.1][4][-]','warning in index_site_controller.'),(2449,4,'my_category',1542093559.5401,'[127.0.0.1][-][-]','info in index_site_controller.'),(2450,1,'my_category',1542093559.5401,'[127.0.0.1][-][-]','error in index_site_controller.'),(2451,2,'my_category',1542093559.5401,'[127.0.0.1][-][-]','warning in index_site_controller.'),(2452,4,'my_category',1542093564.0307,'[127.0.0.1][-][-]','info in index_site_controller.'),(2453,1,'my_category',1542093564.0307,'[127.0.0.1][-][-]','error in index_site_controller.'),(2454,2,'my_category',1542093564.0307,'[127.0.0.1][-][-]','warning in index_site_controller.');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure`
--

DROP TABLE IF EXISTS `measure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `category_id` mediumint(8) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `abbr` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Единицы измерения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure`
--

LOCK TABLES `measure` WRITE;
/*!40000 ALTER TABLE `measure` DISABLE KEYS */;
INSERT INTO `measure` VALUES (1,1,'рубль','₽'),(2,1,'Доллар','$'),(3,2,'Процент','%'),(4,2,'Килограмм','кг'),(7,3,'1','1'),(8,3,'2','2'),(9,3,'3','3'),(10,3,'4','4'),(11,3,'5','5');
/*!40000 ALTER TABLE `measure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_unit`
--

DROP TABLE IF EXISTS `measure_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure_unit` (
  `id` smallint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `slug` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Единицы измерения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_unit`
--

LOCK TABLES `measure_unit` WRITE;
/*!40000 ALTER TABLE `measure_unit` DISABLE KEYS */;
INSERT INTO `measure_unit` VALUES (1,'рубль','₽'),(2,'Доллар','$'),(3,'Процент','%'),(4,'Килограмм','кг');
/*!40000 ALTER TABLE `measure_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `type` varchar(127) DEFAULT NULL,
  `url` text,
  `size` varchar(127) DEFAULT NULL,
  `thumbs` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_album` (`album_id`),
  KEY `fk_media_created_by` (`created_by`),
  KEY `fk_media_updated_by` (`updated_by`),
  CONSTRAINT `fk_media_album` FOREIGN KEY (`album_id`) REFERENCES `media_album` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_media_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_media_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,NULL,'202288223598127977687973265930006982861282n.jpg','image/jpeg','/uploads/2018/09/202288223598127977687973265930006982861282n.jpg','36416','a:3:{s:5:\"small\";s:71:\"/uploads/2018/09/202288223598127977687973265930006982861282n-120x80.jpg\";s:6:\"medium\";s:72:\"/uploads/2018/09/202288223598127977687973265930006982861282n-400x300.jpg\";s:5:\"large\";s:72:\"/uploads/2018/09/202288223598127977687973265930006982861282n-800x600.jpg\";}',1536228488,1536228488,4,4),(2,NULL,'08d09ee9439b73d44bf9f9728548c85fd12e0267.jpg','image/jpeg','/uploads/2018/11/08d09ee9439b73d44bf9f9728548c85fd12e0267.jpg','532770','a:3:{s:5:\"small\";s:68:\"/uploads/2018/11/08d09ee9439b73d44bf9f9728548c85fd12e0267-120x80.jpg\";s:6:\"medium\";s:69:\"/uploads/2018/11/08d09ee9439b73d44bf9f9728548c85fd12e0267-400x300.jpg\";s:5:\"large\";s:69:\"/uploads/2018/11/08d09ee9439b73d44bf9f9728548c85fd12e0267-800x600.jpg\";}',1542032258,1542032258,4,4),(3,NULL,'426849-kycb.jpg','image/jpeg','/uploads/2018/11/426849-kycb.jpg','2273311','a:3:{s:5:\"small\";s:39:\"/uploads/2018/11/426849-kycb-120x80.jpg\";s:6:\"medium\";s:40:\"/uploads/2018/11/426849-kycb-400x300.jpg\";s:5:\"large\";s:40:\"/uploads/2018/11/426849-kycb-800x600.jpg\";}',1542032259,1542032259,4,4),(4,NULL,'835837alps.jpg','image/jpeg','/uploads/2018/11/835837alps.jpg','983901','a:3:{s:5:\"small\";s:38:\"/uploads/2018/11/835837alps-120x80.jpg\";s:6:\"medium\";s:39:\"/uploads/2018/11/835837alps-400x300.jpg\";s:5:\"large\";s:39:\"/uploads/2018/11/835837alps-800x600.jpg\";}',1542032260,1542032260,4,4),(5,NULL,'539356galleryworld.jpg','image/jpeg','/uploads/2018/11/539356galleryworld.jpg','695912','a:3:{s:5:\"small\";s:46:\"/uploads/2018/11/539356galleryworld-120x80.jpg\";s:6:\"medium\";s:47:\"/uploads/2018/11/539356galleryworld-400x300.jpg\";s:5:\"large\";s:47:\"/uploads/2018/11/539356galleryworld-800x600.jpg\";}',1542032260,1542032261,4,4);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_album`
--

DROP TABLE IF EXISTS `media_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_album_slug` (`slug`),
  KEY `media_album_visible` (`visible`),
  KEY `fk_album_category` (`category_id`),
  KEY `fk_media_album_created_by` (`created_by`),
  KEY `fk_media_album_updated_by` (`updated_by`),
  CONSTRAINT `fk_album_category` FOREIGN KEY (`category_id`) REFERENCES `media_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_media_album_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_media_album_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_album`
--

LOCK TABLES `media_album` WRITE;
/*!40000 ALTER TABLE `media_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_album_lang`
--

DROP TABLE IF EXISTS `media_album_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_album_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_album_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `media_album_lang_language` (`language`),
  KEY `fk_media_album_lang` (`media_album_id`),
  CONSTRAINT `fk_media_album_lang` FOREIGN KEY (`media_album_id`) REFERENCES `media_album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_album_lang`
--

LOCK TABLES `media_album_lang` WRITE;
/*!40000 ALTER TABLE `media_album_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_album_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_category`
--

DROP TABLE IF EXISTS `media_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_category_slug` (`slug`),
  KEY `media_category_visible` (`visible`),
  KEY `fk_media_category_created_by` (`created_by`),
  KEY `fk_media_category_updated_by` (`updated_by`),
  CONSTRAINT `fk_media_category_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_media_category_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_category`
--

LOCK TABLES `media_category` WRITE;
/*!40000 ALTER TABLE `media_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_category_lang`
--

DROP TABLE IF EXISTS `media_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_category_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_category_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `media_category_lang_language` (`language`),
  KEY `fk_media_category_lang` (`media_category_id`),
  CONSTRAINT `fk_media_category_lang` FOREIGN KEY (`media_category_id`) REFERENCES `media_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_category_lang`
--

LOCK TABLES `media_category_lang` WRITE;
/*!40000 ALTER TABLE `media_category_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_lang`
--

DROP TABLE IF EXISTS `media_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `media_lang_language` (`language`),
  KEY `fk_media_lang` (`media_id`),
  CONSTRAINT `fk_media_lang` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_lang`
--

LOCK TABLES `media_lang` WRITE;
/*!40000 ALTER TABLE `media_lang` DISABLE KEYS */;
INSERT INTO `media_lang` VALUES (1,1,'ru','202288223598127977687973265930006982861282n.jpg','202288223598127977687973265930006982861282n.jpg',NULL),(2,2,'ru','08d09ee9439b73d44bf9f9728548c85fd12e0267.jpg','08d09ee9439b73d44bf9f9728548c85fd12e0267.jpg',NULL),(3,3,'ru','426849-kycb.jpg','426849-kycb.jpg',NULL),(4,4,'ru','835837alps.jpg','835837alps.jpg',NULL),(5,5,'ru','539356galleryworld.jpg','539356galleryworld.jpg',NULL);
/*!40000 ALTER TABLE `media_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_upload`
--

DROP TABLE IF EXISTS `media_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) NOT NULL,
  `owner_class` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `media_upload_owner_class` (`owner_class`),
  KEY `media_upload_owner_id` (`owner_id`),
  KEY `fk_media_upload_media_id` (`media_id`),
  CONSTRAINT `fk_media_upload_media_id` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_upload`
--

LOCK TABLES `media_upload` WRITE;
/*!40000 ALTER TABLE `media_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menu_created_by` (`created_by`),
  KEY `fk_menu_updated_by` (`updated_by`),
  CONSTRAINT `fk_menu_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_menu_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('admin-menu',NULL,NULL,1,4),('guest-menu',1535629066,1535629066,4,4),('main-menu',NULL,NULL,1,4);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_lang`
--

DROP TABLE IF EXISTS `menu_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(64) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  PRIMARY KEY (`id`),
  KEY `menu_lang_post_id` (`menu_id`),
  KEY `menu_lang_language` (`language`),
  CONSTRAINT `fk_menu_lang` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_lang`
--

LOCK TABLES `menu_lang` WRITE;
/*!40000 ALTER TABLE `menu_lang` DISABLE KEYS */;
INSERT INTO `menu_lang` VALUES (1,'admin-menu','en-US','Control Panel Menu'),(2,'main-menu','en-US','Main Menu'),(3,'guest-menu','en-US','Guest menu'),(4,'main-menu','ru','Главное меню'),(5,'main-menu','ru','Главное Меню'),(6,'admin-menu','ru','Меню Панели Управления'),(7,'guest-menu','ru','Гостевое меню');
/*!40000 ALTER TABLE `menu_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_link`
--

DROP TABLE IF EXISTS `menu_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_link` (
  `id` varchar(64) NOT NULL,
  `menu_id` varchar(64) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `parent_id` varchar(64) DEFAULT '',
  `image` varchar(24) DEFAULT NULL,
  `alwaysVisible` int(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_menu_id` (`menu_id`),
  KEY `link_parent_id` (`parent_id`),
  KEY `fk_menu_link_created_by` (`created_by`),
  KEY `fk_menu_link_updated_by` (`updated_by`),
  CONSTRAINT `fk_menu_link` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_menu_link_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_menu_link_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_link`
--

LOCK TABLES `menu_link` WRITE;
/*!40000 ALTER TABLE `menu_link` DISABLE KEYS */;
INSERT INTO `menu_link` VALUES ('about','main-menu','/site/about','','',1,1,NULL,1539032378,1,4),('about-guest','guest-menu','/site/about','','info-circle',1,999,1535632863,1539026104,4,4),('adminsystem','admin-menu','','','adn',0,33,1534760250,1535709021,1,4),('auditory','admin-menu','/auditory/default/index','auditory_main','',0,45,1538330997,1538931299,4,4),('auditory_building','admin-menu','/auditory/building/index','auditory_main','',0,47,1538331128,1538331128,4,4),('auditory_cat','admin-menu','/auditory/cat/index','auditory_main','',0,46,1538331072,1538331072,4,4),('auditory_main','admin-menu','/auditory/default/index','guide','',0,44,1538331205,1538640705,4,4),('bd','admin-menu','/db','','database',0,68,1537187091,1537187166,4,4),('bd2','admin-menu','/db-manager/default/index','','database',0,69,1537192847,1537192847,4,4),('bonus-category','admin-menu','/teachers/bonus-category/index','teachers','',0,62,1539637397,1540029713,4,4),('bonus-item','admin-menu','/teachers/bonus-item/index','teachers','',0,63,1539677454,1540029726,4,4),('comment','admin-menu','/comment/default/index','','comment',0,10,NULL,NULL,1,NULL),('company','main-menu','/company/index','tables','',0,5,1540996061,1540996792,4,4),('cost','admin-menu','/teachers/cost/index','teachers','',0,60,1539637430,1539637430,4,4),('dashboard','admin-menu','/','','th',0,0,NULL,NULL,1,NULL),('department','admin-menu','/service/department/index','structure','',0,38,1540198483,1540198564,4,4),('direction','admin-menu','/teachers/direction/index','teachers','',0,59,1539637630,1539637630,4,4),('division','admin-menu','/service/division/index','structure','',0,37,1540198513,1540198549,4,4),('eav','admin-menu','','','code',0,19,NULL,1535709062,1,4),('eav-attribute','admin-menu','/eav/attribute/index','eav','',0,21,NULL,1535709110,1,4),('eav-eav','admin-menu','/eav/default/index','eav','',0,20,NULL,1535709096,1,4),('eav-model','admin-menu','/eav/entity-model/index','eav','',0,23,NULL,1535709137,1,4),('eav-option','admin-menu','/eav/attribute-option/index','eav','',0,22,NULL,1535709126,1,4),('eav-type','admin-menu','/eav/attribute-type/index','eav','',0,24,NULL,1535709153,1,4),('guide','admin-menu','','','inbox',0,35,1538330899,1538330899,4,4),('home','main-menu','/site/index','','th',1,0,NULL,1535622585,1,4),('home-guest','guest-menu','/site/index','','th',1,999,1535629294,1535708816,4,4),('image-settings','admin-menu','/media/default/settings','settings',NULL,0,29,NULL,NULL,1,NULL),('level','admin-menu','/teachers/level/index','teachers','',0,57,1539637680,1539637680,4,4),('measure-unit','admin-menu','/service/measure-unit/index','guide','',0,53,1539974585,1540029697,4,4),('measure1','main-menu','/measure/index','tables','',0,3,1534756048,1535708973,1,4),('measureAdmin','admin-menu','/measure/index','adminsystem','amazon',0,34,1531125317,1534927685,1,1),('media','admin-menu',NULL,'','image',0,6,NULL,NULL,1,NULL),('media-album','admin-menu','/media/album/index','media',NULL,0,8,NULL,NULL,1,NULL),('media-category','admin-menu','/media/category/index','media',NULL,0,9,NULL,NULL,1,NULL),('media-media','admin-menu','/media/default/index','media',NULL,0,7,NULL,NULL,1,NULL),('menu','admin-menu','/menu/default/index','','align-justify',0,11,NULL,NULL,1,NULL),('option','main-menu','/option/index','tables','',0,4,1535369181,1535708981,4,4),('organization','admin-menu','/settings/organization/index','settings','',0,30,1542022612,1542022612,4,4),('page','admin-menu','/page/default/index','','file',0,1,NULL,NULL,1,NULL),('parent','admin-menu','/parent/default/index','student-main','',0,66,1541107372,1541150857,4,4),('position','admin-menu','/teachers/position/index','teachers','',0,56,1539637723,1539637748,4,4),('post','admin-menu','','','pencil',0,2,NULL,1542030989,1,4),('post-category','admin-menu','/post/category/index','post',NULL,0,5,NULL,NULL,1,NULL),('post-post','admin-menu','/post/default/index','post','',0,3,NULL,1542031014,1,4),('post-tag','admin-menu','/post/tag/index','post','',0,4,NULL,1535709768,1,4),('seo','admin-menu','/seo/default/index','','line-chart',0,25,NULL,NULL,1,NULL),('settings','admin-menu',NULL,'','cog',0,26,NULL,NULL,1,NULL),('settings-cache','admin-menu','/settings/cache/flush','settings',NULL,0,32,NULL,NULL,1,NULL),('settings-general','admin-menu','/settings/default/index','settings',NULL,0,27,NULL,NULL,1,NULL),('settings-reading','admin-menu','/settings/reading/index','settings',NULL,0,28,NULL,NULL,1,NULL),('settings-translations','admin-menu','/translation/default/index','settings',NULL,0,31,NULL,NULL,1,NULL),('stake','admin-menu','/teachers/stake/index','teachers','',0,61,1539637778,1539637778,4,4),('structure','admin-menu','/service/division/index','guide','',0,36,1540317933,1540318055,4,4),('student','admin-menu','/student/default/index','student-main','',0,65,1540547451,1540847778,4,4),('student-main','admin-menu','/student/default/index','','male',0,64,1540547742,1540547742,4,4),('student-position','admin-menu','/student/position/index','student-main','',0,67,1540547535,1540547535,4,4),('subject','admin-menu','/subject/default/index','guide','',0,48,1540241782,1540242124,4,4),('subject-category','admin-menu','/subject/category-item/index','subject','',0,50,1540241905,1540242227,4,4),('subject-item','admin-menu','/subject/default/index','subject','',0,49,1540241832,1540242109,4,4),('subject-type','admin-menu','/subject/type/index','subject','',0,52,1540369650,1540369650,4,4),('subject-vid','admin-menu','/subject/vid/index','subject','',0,51,1540326068,1540326068,4,4),('tables','main-menu','','','',0,2,1535443564,1535708959,4,4),('teachers','admin-menu','','','user-secret',0,54,1539637231,1539700635,4,4),('teachers_user','admin-menu','/teachers/default/index','teachers','',0,55,1539637888,1540847759,4,4),('user','admin-menu',NULL,'','user',0,12,NULL,NULL,1,NULL),('user-groups','admin-menu','/user/permission-groups/index','user',NULL,0,16,NULL,NULL,1,NULL),('user-log','admin-menu','/user/visit-log/index','user',NULL,0,17,NULL,NULL,1,NULL),('user-permission','admin-menu','/user/permission/index','user',NULL,0,15,NULL,NULL,1,NULL),('user-relation','admin-menu','/user/relation/index','user','',0,18,1540648763,1540648763,4,4),('user-role','admin-menu','/user/role/index','user',NULL,0,14,NULL,NULL,1,NULL),('user-user','admin-menu','/user/default/index','user',NULL,0,13,NULL,NULL,1,NULL),('venue','admin-menu','/venue/default/index','guide','',0,39,1538640393,1539178555,4,4),('venue_country','admin-menu','/venue/country/index','venue','',0,41,1538640228,1538640228,4,4),('venue_district','admin-menu','/venue/district/index','venue','',0,43,1538640332,1538640332,4,4),('venue_place','admin-menu','/venue/default/index','venue','',0,40,1538640139,1539178541,4,4),('venue_sity','admin-menu','/venue/sity/index','venue','',0,42,1538640257,1538640780,4,4),('work','admin-menu','/teachers/work/index','teachers','',0,58,1539637824,1539637824,4,4);
/*!40000 ALTER TABLE `menu_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_link_lang`
--

DROP TABLE IF EXISTS `menu_link_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_link_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` varchar(64) NOT NULL,
  `language` varchar(6) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_link_lang_link_id` (`link_id`),
  KEY `menu_link_lang_language` (`language`),
  CONSTRAINT `fk_menu_link_lang` FOREIGN KEY (`link_id`) REFERENCES `menu_link` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_link_lang`
--

LOCK TABLES `menu_link_lang` WRITE;
/*!40000 ALTER TABLE `menu_link_lang` DISABLE KEYS */;
INSERT INTO `menu_link_lang` VALUES (1,'dashboard','en-US','Dashboard'),(2,'settings','en-US','Settings'),(3,'settings-general','en-US','General Settings'),(4,'settings-reading','en-US','Reading Settings'),(5,'settings-cache','en-US','Flush Cache'),(6,'menu','en-US','Menus'),(7,'comment','en-US','Comments'),(8,'user','en-US','Users'),(9,'user-groups','en-US','Permission groups'),(10,'user-log','en-US','Visit log'),(11,'user-permission','en-US','Permissions'),(12,'user-role','en-US','Roles'),(13,'user-user','en-US','Users'),(14,'post','en-US','Posts'),(15,'post-post','en-US','Posts'),(16,'post-category','en-US','Categories'),(17,'media','en-US','Media'),(18,'media-media','en-US','Media'),(19,'media-album','en-US','Albums'),(20,'media-category','en-US','Categories'),(21,'image-settings','en-US','Image Settings'),(22,'page','en-US','Pages'),(23,'settings-translations','en-US','Message Translation'),(24,'seo','en-US','SEO'),(25,'post-tag','en-US','Tags'),(26,'home','en-US','Home'),(27,'about','en-US','About'),(30,'measureAdmin','en-US','Measure'),(31,'eav','en-US','Custom Fields'),(32,'eav-eav','en-US','Fields'),(33,'eav-attribute','en-US','Attributes'),(34,'eav-option','en-US','Options'),(35,'eav-model','en-US','Models'),(36,'eav-type','en-US','Types'),(39,'measure1','en-US','Measure'),(41,'adminsystem','en-US','System'),(42,'option','en-US','Option'),(43,'tables','en-US','Tables'),(44,'home-guest','en-US','Home'),(45,'about-guest','en-US','About'),(47,'home','ru','Главная'),(48,'about','ru','О проекте'),(51,'comment','ru','Комментарии'),(52,'dashboard','ru','Главная'),(53,'media','ru','Медиа'),(54,'media-media','ru','Медиа'),(55,'media-album','ru','Альбомы'),(56,'media-category','ru','Категории'),(57,'image-settings','ru','Настройки Изображений'),(58,'menu','ru','Меню'),(59,'page','ru','Страницы'),(60,'post','ru','Посты'),(61,'post-post','ru','Посты список'),(62,'post-category','ru','Категории'),(63,'settings','ru','Настройки'),(64,'settings-general','ru','Общие Настройки'),(65,'settings-reading','ru','Настройки Чтения'),(66,'settings-cache','ru','Очистить Кэш'),(67,'settings-translations','ru','Перевод Сообщений'),(68,'user','ru','Пользователи'),(69,'user-groups','ru','Группы Прав Доступа'),(70,'user-log','ru','Лог Посещений'),(71,'user-permission','ru','Права Доступа'),(72,'user-role','ru','Роли Пользователей'),(73,'user-user','ru','Пользователи'),(74,'seo','ru','SEO'),(75,'home-guest','ru','Главная'),(76,'about-guest','ru','О проекте'),(78,'tables','ru','Таблицы'),(79,'measure1','ru','Единицы'),(80,'option','ru','Опции'),(81,'adminsystem','ru','Таблицы'),(82,'eav','ru','Атрибуты'),(83,'eav-eav','ru','Поля'),(84,'eav-attribute','ru','Атрибуты'),(85,'eav-option','ru','Опции'),(86,'eav-model','ru','Модели'),(87,'eav-type','ru','Типы атрибутов'),(88,'measureAdmin','ru','Единицы'),(89,'post-tag','ru','Тэги'),(90,'bd','ru','База данных'),(91,'bd2','ru','База данных-2'),(92,'guide','ru','Справочники'),(93,'auditory','ru','Помещения'),(94,'auditory_cat','ru','Категории помещений'),(95,'auditory_building','ru','Здания'),(96,'auditory_main','ru','Помещения'),(97,'venue_place','ru','Организации'),(98,'venue_country','ru','Страны'),(99,'venue_sity','ru','Города'),(100,'venue_district','ru','Округа и районы'),(101,'venue','ru','Места проведения'),(102,'teachers','ru','Преподаватели'),(104,'bonus-category','ru','Категории бонусов'),(105,'cost','ru','Ставки'),(107,'direction','ru','Направление деятельности'),(108,'level','ru','Образование'),(109,'position','ru','Должность'),(110,'stake','ru','Названия ставок'),(111,'work','ru','Вид работы'),(112,'teachers_user','ru','Преподаватели список'),(113,'bonus-item','ru','Названия бонусов'),(114,'measure-unit','ru','Единицы'),(115,'department','ru','Отделы'),(116,'division','ru','Отделения'),(117,'subject','ru','Учебные предметы'),(118,'subject-item','ru','Дисциплины'),(119,'subject-category','ru','Категории дисциплин'),(120,'structure','ru','Структура организации'),(121,'subject-vid','ru','Вид дисциплины'),(122,'subject-type','ru','Тип дисциплины'),(123,'student','ru','Ученики список'),(124,'student-position','ru','Статус ученика'),(125,'student-main','ru','Ученики'),(126,'user-relation','ru','Отношения пользователей'),(127,'company','ru','Demo modal-ajax'),(129,'parent','ru','Родители список'),(130,'organization','ru','Сведения об организации');
/*!40000 ALTER TABLE `menu_link_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `language` varchar(16) NOT NULL,
  `translation` text,
  PRIMARY KEY (`id`),
  KEY `message_index` (`source_id`,`language`),
  CONSTRAINT `fk_message_source_message` FOREIGN KEY (`source_id`) REFERENCES `message_source` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=759 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (130,253,'ru','Вы уверены, что желаете удалить изображение Вашего профиля?'),(131,254,'ru','Вы уверены, что хотите отключить эту авторизацию?'),(132,255,'ru','Ошибка авторизации.'),(133,256,'ru','Авторизация'),(134,257,'ru','Сервис авторизации.'),(135,258,'ru','Captcha'),(136,259,'ru','Изменить изображение профиля'),(137,260,'ru','Проверьте ваш e-mail для дальнейших инструкций'),(138,261,'ru','Проверьте ваш e-mail {email} для получения инструкций по активации аккаунта'),(139,262,'ru','Нажмите, чтобы подключиться к службе '),(140,263,'ru','Нажмите, чтобы отменить связь с сервисом '),(141,264,'ru','Подтвердить E-mail '),(142,265,'ru','Подтвердить '),(143,266,'ru','Не удалось отправить подтверждение по электронной почте '),(144,267,'ru','Текущий пароль'),(145,268,'ru','Подтверждение по электронной почте для'),(146,269,'ru','E-mail {email} подтвержден'),(147,270,'ru','Неверный адрес электронной почты '),(148,271,'ru','Письмо со ссылкой активации отправлено на {email}. Срок действия этой ссылки истекает через {минут} мин. '),(149,272,'ru','E-mail'),(150,273,'ru','Забыли пароль?'),(151,274,'ru','Неверное имя пользователя или пароль'),(152,275,'ru','Логин занят'),(153,276,'ru','Логин'),(154,277,'ru','Выход'),(155,278,'ru','Авторизация не доступна'),(156,279,'ru','Пароль обновлен'),(157,280,'ru','Восстановление пароля '),(158,281,'ru','Сброс пароля для'),(159,282,'ru','Пароль'),(160,283,'ru','Регистрация - подтвердите ваш e-mail'),(161,284,'ru','Регистрация'),(162,285,'ru','Запомнить меня'),(163,286,'ru','Удалить изображение профиля '),(164,287,'ru','Повторите пароль'),(165,288,'ru','Сбросить пароль'),(166,289,'ru','Сбросить'),(167,290,'ru','Сохранить профиль '),(168,291,'ru','Сохранить изображение профиля '),(169,292,'ru','Установить пароль '),(170,293,'ru','Задать Имя Пользователя'),(171,294,'ru','Регистрация'),(172,295,'ru','Этот адрес электронной почты уже существует '),(173,296,'ru','Токен не найден. Он может быть просрочен '),(174,297,'ru','Токен не найден. Он может быть просрочен. Попробуйте сбросить пароль еще раз'),(175,298,'ru','Слишком много попыток '),(176,299,'ru','Не удается отправить сообщение по электронной почте'),(177,300,'ru','Изменить пароль'),(178,301,'ru','Профиль'),(179,302,'ru','Пользователь с тем же адресом электронной почты, что и в учетной записи {client}, уже существует, но не связан с ним. Войдите, используя электронную почту, чтобы связать его.'),(180,303,'ru','Логин должен содержать только латинские буквы, цифры и следующие символы: \"-\" и \"_\". '),(181,304,'ru','Username содержит недопустимые символы или слова.'),(182,305,'ru','Неверный пароль '),(183,306,'ru','Вы не можете войти с этого IP'),(239,314,'ru',''),(240,315,'ru',''),(241,316,'ru',''),(242,317,'ru',''),(243,318,'ru',''),(244,319,'ru',''),(245,320,'ru',''),(246,321,'ru',''),(247,322,'ru',''),(248,323,'ru',''),(249,324,'ru',''),(250,325,'ru',''),(251,326,'ru',''),(252,327,'ru',''),(253,328,'ru',''),(254,329,'ru',''),(255,330,'ru',''),(287,172,'ru','Извините, [{filetype}] тип файла не разрешен!'),(298,1,'ru','--- С выбранным ---'),(299,2,'ru','Активировать'),(300,3,'ru','Активные'),(301,4,'ru','Добавить'),(302,5,'ru','Все'),(303,6,'ru','Всегда Видимый'),(304,7,'ru','Произошла неизвестная ошибка.'),(305,8,'ru','Подтверждено'),(306,9,'ru','Автор'),(307,10,'ru','Заблокирован'),(308,11,'ru','Привязка к IP'),(309,12,'ru','Выбрать'),(310,13,'ru','Браузер'),(311,14,'ru','Отменить'),(312,15,'ru','Категория'),(313,16,'ru','Очистить Фильтры'),(314,17,'ru','Закрыто'),(315,18,'ru','Код'),(316,19,'ru','Статус Комментариев'),(317,20,'ru','Активность Комментариев'),(318,21,'ru','Подтвердить'),(319,22,'ru','Код Подтверждения'),(320,23,'ru','Содержание'),(321,24,'ru','Панель Управления'),(322,25,'ru','Создать {item}'),(323,26,'ru','Создать'),(324,27,'ru','Создал'),(325,28,'ru','Создан'),(326,29,'ru','Панель Управления'),(327,30,'ru','Данные'),(328,31,'ru','Деактивировать'),(329,32,'ru','Язык по умолчанию'),(330,33,'ru','Значение по умолчанию'),(331,34,'ru','Удалить'),(332,35,'ru','Описание'),(333,36,'ru','E-mail подтвержден'),(334,37,'ru','E-mail'),(335,38,'ru','Редактировать'),(336,39,'ru','Ошибка'),(337,40,'ru','Например'),(338,41,'ru','Группа'),(339,42,'ru','ID'),(340,43,'ru','IP'),(341,44,'ru','Иконка'),(342,45,'ru','Неактивные'),(343,46,'ru','Вставить'),(344,47,'ru','Неверные настройки для виджетов панели управления'),(345,48,'ru','Ключ'),(346,49,'ru','Надпись'),(347,50,'ru','Язык'),(348,51,'ru','ID ссылки может содержать только строчные буквы, цифры, подчеркивание и тире.'),(349,52,'ru','Ссылка'),(350,53,'ru','Логин'),(351,54,'ru','Выйти {username}'),(352,55,'ru','ID меню может содержать только строчные буквы, цифры, подчеркивание и тире.'),(353,56,'ru','Меню'),(354,57,'ru','Название'),(355,58,'ru','Нет Родительского Элемента'),(356,59,'ru','Комментарии не найдены.'),(357,60,'ru','Не Выбрано'),(358,61,'ru','OK'),(359,62,'ru','ОС'),(360,63,'ru','Открыто'),(361,64,'ru','Порядок'),(362,65,'ru','Версия PHP'),(363,66,'ru','Родительская Ссылка'),(364,67,'ru','Пароль'),(365,68,'ru','Не опубликовано'),(366,69,'ru','Обработка данных'),(367,70,'ru','Опубликовать'),(368,71,'ru','Опубликовано'),(369,72,'ru','Читать дальше'),(370,73,'ru','Записей на странице'),(371,74,'ru','IP Регистрации'),(372,75,'ru','Повторите пароль'),(373,76,'ru','Обязательный'),(374,77,'ru','Ревизия'),(375,78,'ru','Роль'),(376,79,'ru','Роли'),(377,80,'ru','Правило'),(378,81,'ru','Сохранить Все'),(379,82,'ru','Сохранить'),(380,83,'ru','Сохранено'),(381,84,'ru','Настройки'),(382,85,'ru','Размер'),(383,86,'ru','Ссылка'),(384,87,'ru','Спам'),(385,88,'ru','Старт'),(386,89,'ru','Статус'),(387,90,'ru','Суперадмин'),(388,91,'ru','Подробности Системы'),(389,92,'ru','Изменения были успешно сохранены.'),(390,93,'ru','Этот e-mail уже занят'),(391,94,'ru','Заголовок'),(392,95,'ru','Токен'),(393,96,'ru','Мусор'),(394,97,'ru','Тип'),(395,98,'ru','URL'),(396,99,'ru','Отменить Публикацию'),(397,100,'ru','Обновить \"{item}\"'),(398,101,'ru','Обновить'),(399,102,'ru','Обновил'),(400,103,'ru','Обновлен'),(401,104,'ru','Загружено'),(402,105,'ru','Данные Устройства'),(403,106,'ru','Пользователь'),(404,107,'ru','Имя пользователя'),(405,108,'ru','Значение'),(406,109,'ru','Просмотр'),(407,110,'ru','Видимый'),(408,111,'ru','Время Посещения'),(409,112,'ru','Неправильный формат. Введите действительные IP-адреса через запятую'),(410,113,'ru','Версия Yee CMS'),(411,114,'ru','Версия Ядра Yee'),(412,115,'ru','Версия Yii Framework'),(413,116,'ru','Запись успешно обновлена.'),(414,117,'ru','Запись успешно создана.'),(415,118,'ru','Запись успешно удалена.'),(416,119,'ru','Мужчина'),(417,120,'ru','Женщина'),(418,121,'ru','Имя'),(419,122,'ru','Фамилия'),(420,123,'ru','Skype'),(421,124,'ru','Телефон'),(422,125,'ru','Пол'),(423,126,'ru','День рождения'),(424,127,'ru','Месяц рождения'),(425,128,'ru','Год рождения'),(426,129,'ru','Краткая информация'),(427,130,'ru','Добавить источник сообщения'),(428,131,'ru','Категория'),(429,132,'ru','Создать сообщение'),(430,133,'ru','Создать новую категорию...'),(431,134,'ru','Неизменный'),(432,135,'ru','Перевод сообщений'),(433,136,'ru','Название новой категории'),(434,137,'ru','Выберите группу сообщений и язык для отображения переводов...'),(435,138,'ru','Сообщение'),(436,139,'ru','Обновить Сообщение'),(437,140,'ru','{n, plural, =1{1 запись} other{# записей}}'),(438,141,'ru','Добавить файлы'),(439,142,'ru','Альбом'),(440,143,'ru','Альбомы'),(441,144,'ru','Все Медиа Файлы'),(442,145,'ru','Alt Текст'),(443,146,'ru','Вернуться к файловому менеджеру'),(444,147,'ru','Отменить загрузку'),(445,148,'ru','Категории'),(446,149,'ru','Категория'),(447,150,'ru','Изменения были сохранены.'),(448,151,'ru','Изменения не были сохранены.'),(449,152,'ru','Создать Категорию'),(450,153,'ru','Текущие размеры миниатюр'),(451,154,'ru','Размер'),(452,155,'ru','Перестроить изображения'),(453,156,'ru','Размер файла'),(454,157,'ru','Название файла'),(455,158,'ru','Если вы измените размеры миниатюр, настоятельно рекомендуется перестроить их.'),(456,159,'ru','Настройка изображений'),(457,160,'ru','Большой размер'),(458,161,'ru','Управление альбомами'),(459,162,'ru','Управление Категориями'),(460,163,'ru','Активность Медиа'),(461,164,'ru','Детали'),(462,165,'ru','Медиа'),(463,166,'ru','Средний размер'),(464,167,'ru','Изображения не найдены.'),(465,168,'ru','Оригинал'),(466,169,'ru','Пожалуйста, выберите файл для просмотра деталей.'),(467,170,'ru','Выберите размер файла'),(468,171,'ru','Малый размер'),(469,173,'ru','Начать загрузку'),(470,174,'ru','Настройка миниатюр'),(471,175,'ru','Миниатюры успешно сохранены'),(472,176,'ru','Миниатюры'),(473,177,'ru','Обновить Категорию'),(474,178,'ru','Обновил'),(475,179,'ru','Загрузить файл'),(476,180,'ru','Загрузил'),(477,181,'ru','Меню'),(478,182,'ru','Меню'),(479,183,'ru','ID ссылки может содержать только строчные буквы, цифры, подчеркивание и тире.'),(480,184,'ru','Родительская Ссылка'),(481,185,'ru','Всегда Видимый'),(482,186,'ru','Нет Родительской Ссылка'),(483,187,'ru','Создать Ссылку'),(484,188,'ru','Обновить Ссылка'),(485,189,'ru','Ссылки'),(486,190,'ru','Добавить Меню'),(487,191,'ru','Добавить Ссылку'),(488,192,'ru','Ошибка при сохранении меню!'),(489,193,'ru','Изменения были успешно сохранены.'),(490,194,'ru','Пожалуйста, выберите меню для просмотра списка ссылок...'),(491,195,'ru','Выбранное меню не содержит ни одной ссылки. Нажмите кнопку \"Добавить Ссылку\", чтобы создать новую ссылку для этого меню.'),(492,196,'ru','Страница'),(493,197,'ru','Страницы'),(494,198,'ru','Cоздать Страницу'),(495,202,'ru','Пост'),(496,203,'ru','Опубликировано в категории'),(497,204,'ru','Активность Записей'),(498,205,'ru','Посты'),(499,208,'ru','Эскиз'),(500,307,'ru','Создать SEO запись'),(501,308,'ru','Следовать ссылке'),(502,309,'ru','Индексировать'),(503,310,'ru','Ключевые слова'),(504,311,'ru','SEO'),(505,312,'ru','Поисковая оптимизация'),(506,313,'ru','Обновить SEO запись'),(507,209,'ru','Общие Настройки'),(508,210,'ru','Настройки Чтения'),(509,211,'ru','Название Сайт'),(510,212,'ru','Описание Сайта'),(511,213,'ru','E-mail Администратора'),(512,214,'ru','Часовой Пояс'),(513,215,'ru','Формат Даты'),(514,216,'ru','Формат Времени'),(515,217,'ru','Записей на странице'),(516,218,'ru','Включенные права доступа'),(517,219,'ru','Включенные роли'),(518,220,'ru','Создать Группу Прав Доступа'),(519,221,'ru','Создать Право Доступа'),(520,222,'ru','Создать Роль'),(521,223,'ru','Создать Пользователя'),(522,224,'ru','Посещение №{id}'),(523,225,'ru','Пользователей не найдено.'),(524,226,'ru','Пароль'),(525,227,'ru','Группы Прав Доступа'),(526,228,'ru','Прав Доступа'),(527,229,'ru','Права доступа для роли \"{role}\"'),(528,230,'ru','Права доступа'),(529,231,'ru','Обновить пути'),(530,232,'ru','Дата регистрации'),(531,233,'ru','Роль'),(532,234,'ru','Роли и Права доступа для \"{user}\"'),(533,235,'ru','Роли'),(534,236,'ru','Маршруты'),(535,237,'ru','Поиск маршрутов'),(536,238,'ru','Показать все'),(537,239,'ru','Показать только избранные'),(538,240,'ru','Обновить Группу прав доступа'),(539,241,'ru','Обновить право доступа'),(540,242,'ru','Обновить Роль'),(541,243,'ru','Обновить Пароль пользователя'),(542,244,'ru','Обновить пользователя'),(543,245,'ru','Пользователь не найден'),(544,246,'ru','Пользователь'),(545,247,'ru','Пользователи'),(546,248,'ru','Лог Посещения'),(547,249,'ru','Вы не можете изменить собственные права доступа'),(548,250,'ru','Вы не можете изменить собственные права доступа!'),(549,251,'ru','Настройки прав доступа \"{permission}\"'),(550,252,'ru','Настройки роли \"{permission}\"'),(551,333,'ru','Главная'),(552,334,'ru','АИС'),(553,335,'ru','Отчество'),(554,336,'ru','СНИЛС'),(555,337,'ru','Дополнительный телефон'),(556,338,'ru','Связка Логин и E-mail не найдена.'),(558,340,'ru','Перейдите по ссылке, чтобы подтвердить свой email:'),(559,341,'ru','Для сброса пароля перейдите по ссылке ниже:'),(560,342,'ru','Здравствуйте:'),(561,343,'ru','Здравствуйте, вы зарегистрированы на'),(562,344,'ru','Следуйте этой ссылке, чтобы подтвердить свой email и активировать аккаунт:'),(563,345,'ru','Кэш был очищен.'),(564,346,'ru','Не удалось очистить кэш.'),(565,347,'ru','Настройки сохранены.'),(566,348,'ru','Вход'),(567,349,'ru','Пользователь в системе не найден или заблокирован.'),(568,350,'ru','Страница не найдена.'),(569,351,'ru','Регистрация - поиск пользователя'),(570,352,'ru','Нет такой даты {birth_date}'),(571,353,'ru','Формат ввода даты {birth_date} не верен'),(572,354,'ru','Дата рождения'),(573,355,'ru','Служащий'),(574,356,'ru','Преподаватель'),(575,357,'ru','Ученик'),(576,358,'ru','Родитель'),(577,359,'ru','Категория'),(578,360,'ru','Проверьте ваш e-mail {email} для дальнейших инструкций'),(579,361,'ru','После изменения E-mail потребуется подтверждение'),(580,362,'ru','Вводите только Русские буквы'),(581,363,'ru','Менеджер БД'),(582,364,'ru','Дамп'),(583,365,'ru','Размер'),(584,366,'ru','Создан'),(585,367,'ru','Импорт'),(586,368,'ru','Загрузить'),(587,369,'ru','Удалить'),(588,370,'ru','Дамп базы данных будут удален. Вы уверены?'),(589,371,'ru','Создать дамп'),(590,372,'ru','Все записи базы данных будут перезаписаны. Вы уверены?'),(591,373,'ru','Введите СНИЛС согласно маске'),(592,374,'ru','Полное Имя'),(593,375,'ru','Обратная связь'),(594,376,'ru','Если у вас есть вопросы, пожалуйста заполните следующую форму для связи с нами. Спасибо.'),(595,377,'ru','Пожалуйста, подтвердите, что вы не бот.'),(596,378,'ru','Тема'),(597,379,'ru','Отправить'),(598,380,'ru','Благодарим Вас за обращение к нам. Мы ответим вам в кратчайшие сроки.'),(599,381,'ru','Произошла ошибка при отправке электронной почты.'),(600,382,'ru','Название Города'),(601,383,'ru','Для обучения'),(602,384,'ru','Номер аудитории'),(603,385,'ru','Название аудитории'),(604,386,'ru','Этаж'),(605,387,'ru','Площадь аудитории'),(606,388,'ru','Вместимость'),(607,389,'ru','Описание аудитории'),(608,390,'ru','Сортировка'),(609,391,'ru','Название Здания'),(610,392,'ru','Название категории аудиторий'),(611,393,'ru','Описание Категории аудиторий'),(612,394,'ru','Возможность Обучения'),(613,395,'ru','Название Страны'),(614,396,'ru','Fips'),(615,397,'ru','Название Округа'),(616,398,'ru','Сокращение'),(617,399,'ru','Название места'),(618,400,'ru','Адрес'),(619,401,'ru','Телефон'),(620,402,'ru','Телефон доп'),(621,403,'ru','Контактное Лицо'),(622,404,'ru','Широта'),(623,405,'ru','Долгота'),(624,406,'ru','Описание Места Проведения'),(625,407,'ru','Помещения'),(626,408,'ru','Категория'),(627,409,'ru','Здание'),(633,415,'ru','Страна'),(636,418,'ru','Место проведения'),(639,421,'ru','Округ'),(649,431,'ru','Город'),(651,433,'ru','Сокращенное название округа'),(652,434,'ru','Выберите страну...'),(653,435,'ru','Выберите город...'),(654,436,'ru','Выберите округ...'),(655,437,'ru','Выберите категорию...'),(656,438,'ru','Выберите здание...'),(657,439,'ru','Создано'),(658,440,'ru','Создал'),(659,441,'ru','Обновлено'),(660,442,'ru','Обновил'),(661,443,'ru','Название'),(662,444,'ru','Отделение'),(663,445,'ru','Отдел'),(664,446,'ru','Выберите отделение'),(665,447,'ru','Категория дисциплины'),(666,448,'ru','Мин'),(667,449,'ru','Макс'),(668,450,'ru','Информация'),(669,451,'ru','Статус'),(670,452,'ru','Единица измерения'),(671,453,'ru','Преподаватели'),(672,454,'ru','Основная деятельность'),(673,455,'ru','Ставка'),(674,456,'ru','Дополнительная деятельность'),(675,457,'ru','Дополнительная ставка'),(676,458,'ru','Стаж работы'),(677,459,'ru','Стаж работы по специальности'),(678,460,'ru','Достижения'),(679,461,'ru','Отдел'),(680,462,'ru','Название должности'),(681,463,'ru','Вид работы'),(682,464,'ru','Образование'),(683,465,'ru','Табельный номер'),(684,466,'ru','Должность'),(685,467,'ru','Название'),(686,468,'ru','Сокращение'),(687,469,'ru','Образование'),(688,470,'ru','Вид работы'),(689,471,'ru','Направление деятельности'),(690,472,'ru','Название деятельности'),(691,473,'ru','Основная ставка'),(692,474,'ru','Выберите деятельность...'),(693,475,'ru','Выберите ставку...'),(694,476,'ru','Ставка'),(695,477,'ru','Категория достижений'),(696,478,'ru','По умолчанию'),(697,479,'ru','Выберите категорию...'),(698,480,'ru','Выберите единицу измерения...'),(699,481,'ru','Статус'),(700,482,'ru','На дату'),(701,483,'ru','Выберите отдел...'),(702,484,'ru','Выберите достижения...'),(703,485,'ru','Единица измерения'),(704,486,'ru','Значение ставки'),(705,487,'ru','Значение ставки'),(708,490,'ru','Выберите должность...'),(709,491,'ru','Выберите вид работы...'),(710,492,'ru','Выберите образование...'),(711,493,'ru','Дисциплины'),(712,494,'ru','Вид дисциплины'),(713,495,'ru','Тип дисциплины'),(714,496,'ru','Выберите отдел...'),(715,497,'ru','Выберите категорию дисциплины...'),(716,498,'ru','Название отделения'),(717,499,'ru','Стаж работы по специальности не может быть больше общего стажа.'),(718,500,'ru','Отношения пользователей'),(719,501,'ru','Название'),(720,502,'ru','Сокращение'),(721,503,'ru','Документ'),(722,504,'ru','Серия'),(723,505,'ru','Номер'),(724,506,'ru','Кем выдан'),(725,507,'ru','Дата выдачи'),(726,508,'ru','Статус учащегося'),(727,509,'ru','Выберите статус...'),(728,510,'ru','Пользователь с введенными данными уже существует.'),(729,511,'ru','Родители'),(730,512,'ru','Добавить родителя'),(731,513,'ru','Ученики'),(732,514,'ru','Добавить нового родителя...'),(733,515,'ru','Семейная связь'),(734,516,'ru','Связь выбранных пользователей уже определены.'),(735,517,'ru','Нельзя использовать одну и ту же связь к разным пользователям.'),(736,518,'ru','Основной вид деятельности не может быть таким же, как дополнительный.'),(737,519,'ru','Недопустимый формат ввода данных {certificate_date}'),(738,520,'ru','Такой даты не существует {certificate_date}'),(739,521,'ru','Сведения об организации'),(740,522,'ru','Директор'),(741,523,'ru','Подпись директора'),(742,524,'ru','Главный бухгалтер'),(743,525,'ru','Подпись главного бухгалтера'),(744,526,'ru','Наименование организации'),(745,527,'ru','Сокращенное наименование организации'),(746,528,'ru','Почтовый адрес организации'),(747,529,'ru','E-mail организации'),(748,199,'ru','Добавить пост'),(749,200,'ru','Редактировать пост'),(750,201,'ru','Посты не найдены'),(751,206,'ru','Тэг'),(752,207,'ru','Тэги'),(753,530,'ru','Выберите теги...'),(754,531,'ru','Макет'),(755,532,'ru','Родительская категория'),(756,533,'ru','Категории'),(757,534,'ru','Обновить категорию'),(758,535,'ru','Создать категорию');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_source`
--

DROP TABLE IF EXISTS `message_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) NOT NULL,
  `message` text,
  `immutable` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_source`
--

LOCK TABLES `message_source` WRITE;
/*!40000 ALTER TABLE `message_source` DISABLE KEYS */;
INSERT INTO `message_source` VALUES (1,'yee','--- With selected ---',1),(2,'yee','Activate',1),(3,'yee','Active',1),(4,'yee','Add New',1),(5,'yee','All',1),(6,'yee','Always Visible',1),(7,'yee','An unknown error occurred.',1),(8,'yee','Approved',1),(9,'yee','Author',1),(10,'yee','Banned',1),(11,'yee','Bind to IP',1),(12,'yee','Browse',1),(13,'yee','Browser',1),(14,'yee','Cancel',1),(15,'yee','Category',1),(16,'yee','Clear filters',1),(17,'yee','Closed',1),(18,'yee','Code',1),(19,'yee','Comment Status',1),(20,'yee','Comments Activity',1),(21,'yee','Confirm',1),(22,'yee','Confirmation Token',1),(23,'yee','Content',1),(24,'yee','Control Panel',1),(25,'yee','Create {item}',1),(26,'yee','Create',1),(27,'yee','Created By',1),(28,'yee','Created',1),(29,'yee','Dashboard',1),(30,'yee','Data',1),(31,'yee','Deactivate',1),(32,'yee','Default Language',1),(33,'yee','Default Value',1),(34,'yee','Delete',1),(35,'yee','Description',1),(36,'yee','E-mail confirmed',1),(37,'yee','E-mail',1),(38,'yee','Edit',1),(39,'yee','Error',1),(40,'yee','For example',1),(41,'yee','Group',1),(42,'yee','ID',1),(43,'yee','IP',1),(44,'yee','Icon',1),(45,'yee','Inactive',1),(46,'yee','Insert',1),(47,'yee','Invalid settings for dashboard widgets',1),(48,'yee','Key',1),(49,'yee','Label',1),(50,'yee','Language',1),(51,'yee','Link ID can only contain lowercase alphanumeric characters, underscores and dashes.',1),(52,'yee','Link',1),(53,'yee','Login',1),(54,'yee','Logout {username}',1),(55,'yee','Menu ID can only contain lowercase alphanumeric characters, underscores and dashes.',1),(56,'yee','Menu',1),(57,'yee','Name',1),(58,'yee','No Parent',1),(59,'yee','No comments found.',1),(60,'yee','Not Selected',1),(61,'yee','OK',1),(62,'yee','OS',1),(63,'yee','Open',1),(64,'yee','Order',1),(65,'yee','PHP Version',1),(66,'yee','Parent Link',1),(67,'yee','Password',1),(68,'yee','Pending',1),(69,'yee','Processing',1),(70,'yee','Publish',1),(71,'yee','Published',1),(72,'yee','Read more',1),(73,'yee','Records per page',1),(74,'yee','Registration IP',1),(75,'yee','Repeat password',1),(76,'yee','Required',1),(77,'yee','Revision',1),(78,'yee','Role',1),(79,'yee','Roles',1),(80,'yee','Rule',1),(81,'yee','Save All',1),(82,'yee','Save',1),(83,'yee','Saved',1),(84,'yee','Settings',1),(85,'yee','Size',1),(86,'yee','Slug',1),(87,'yee','Spam',1),(88,'yee','Start',1),(89,'yee','Status',1),(90,'yee','Superadmin',1),(91,'yee','System Info',1),(92,'yee','The changes have been saved.',1),(93,'yee','This e-mail already exists',1),(94,'yee','Title',1),(95,'yee','Token',1),(96,'yee','Trash',1),(97,'yee','Type',1),(98,'yee','URL',1),(99,'yee','Unpublish',1),(100,'yee','Update \"{item}\"',1),(101,'yee','Update',1),(102,'yee','Updated By',1),(103,'yee','Updated',1),(104,'yee','Uploaded',1),(105,'yee','User agent',1),(106,'yee','User',1),(107,'yee','Username',1),(108,'yee','Value',1),(109,'yee','View',1),(110,'yee','Visible',1),(111,'yee','Visit Time',1),(112,'yee','Wrong format. Enter valid IPs separated by comma',1),(113,'yee','Yee CMS Version',1),(114,'yee','Yee Core Version',1),(115,'yee','Yii Framework Version',1),(116,'yee','Your item has been updated.',1),(117,'yee','Your item has been created.',1),(118,'yee','Your item has been deleted.',1),(119,'yee','Male',1),(120,'yee','Female',1),(121,'yee','First Name',1),(122,'yee','Last Name',1),(123,'yee','Skype',1),(124,'yee','Phone',1),(125,'yee','Gender',1),(126,'yee','Birth day',1),(127,'yee','Birth month',1),(128,'yee','Birth year',1),(129,'yee','Short Info',1),(130,'yee/translation','Add New Source Message',1),(131,'yee/translation','Category',1),(132,'yee/translation','Create Message Source',1),(133,'yee/translation','Create New Category',1),(134,'yee/translation','Immutable',1),(135,'yee/translation','Message Translation',1),(136,'yee/translation','New Category Name',1),(137,'yee/translation','Please, select message group and language to view translations...',1),(138,'yee/translation','Source Message',1),(139,'yee/translation','Update Message Source',1),(140,'yee/translation','{n, plural, =1{1 message} other{# messages}}',1),(141,'yee/media','Add files',1),(142,'yee/media','Album',1),(143,'yee/media','Albums',1),(144,'yee/media','All Media Items',1),(145,'yee/media','Alt Text',1),(146,'yee/media','Back to file manager',1),(147,'yee/media','Cancel upload',1),(148,'yee/media','Categories',1),(149,'yee/media','Category',1),(150,'yee/media','Changes have been saved.',1),(151,'yee/media','Changes haven\'t been saved.',1),(152,'yee/media','Create Category',1),(153,'yee/media','Current thumbnail sizes',1),(154,'yee/media','Dimensions',1),(155,'yee/media','Do resize thumbnails',1),(156,'yee/media','File Size',1),(157,'yee/media','Filename',1),(158,'yee/media','If you change the thumbnails sizes, it is strongly recommended resize image thumbnails.',1),(159,'yee/media','Image Settings',1),(160,'yee/media','Large size',1),(161,'yee/media','Manage Albums',1),(162,'yee/media','Manage Categories',1),(163,'yee/media','Media Activity',1),(164,'yee/media','Media Details',1),(165,'yee/media','Media',1),(166,'yee/media','Medium size',1),(167,'yee/media','No images found.',1),(168,'yee/media','Original',1),(169,'yee/media','Please, select file to view details.',1),(170,'yee/media','Select image size',1),(171,'yee/media','Small size',1),(172,'yee/media','Sorry, [{filetype}] file type is not permitted!',1),(173,'yee/media','Start upload',1),(174,'yee/media','Thumbnails settings',1),(175,'yee/media','Thumbnails sizes has been resized successfully!',1),(176,'yee/media','Thumbnails',1),(177,'yee/media','Update Category',1),(178,'yee/media','Updated By',1),(179,'yee/media','Upload New File',1),(180,'yee/media','Uploaded By',1),(181,'yee/menu','Menu',1),(182,'yee/menu','Menus',1),(183,'yee/menu','Link ID can only contain lowercase alphanumeric characters, underscores and dashes.',1),(184,'yee/menu','Parent Link',1),(185,'yee/menu','Always Visible',1),(186,'yee/menu','No Parent',1),(187,'yee/menu','Create Menu Link',1),(188,'yee/menu','Update Menu Link',1),(189,'yee/menu','Menu Links',1),(190,'yee/menu','Add New Menu',1),(191,'yee/menu','Add New Link',1),(192,'yee/menu','An error occurred during saving menu!',1),(193,'yee/menu','The changes have been saved.',1),(194,'yee/menu','Please, select menu to view menu links...',1),(195,'yee/menu','Selected menu doesn\'t contain any link. Click \"Add New Link\" to create a link for this menu.',1),(196,'yee/page','Page',1),(197,'yee/page','Pages',1),(198,'yee/page','Create Page',1),(199,'yee/post','Create Tag',1),(200,'yee/post','Update Tag',1),(201,'yee/post','No posts found.',1),(202,'yee/post','Post',1),(203,'yee/post','Posted in',1),(204,'yee/post','Posts Activity',1),(205,'yee/post','Posts',1),(206,'yee/post','Tag',1),(207,'yee/post','Tags',1),(208,'yee/post','Thumbnail',1),(209,'yee/settings','General Settings',1),(210,'yee/settings','Reading Settings',1),(211,'yee/settings','Site Title',1),(212,'yee/settings','Site Description',1),(213,'yee/settings','Admin Email',1),(214,'yee/settings','Timezone',1),(215,'yee/settings','Date Format',1),(216,'yee/settings','Time Format',1),(217,'yee/settings','Page Size',1),(218,'yee/user','Child permissions',1),(219,'yee/user','Child roles',1),(220,'yee/user','Create Permission Group',1),(221,'yee/user','Create Permission',1),(222,'yee/user','Create Role',1),(223,'yee/user','Create User',1),(224,'yee/user','Log №{id}',1),(225,'yee/user','No users found.',1),(226,'yee/user','Password',1),(227,'yee/user','Permission Groups',1),(228,'yee/user','Permission',1),(229,'yee/user','Permissions for \"{role}\" role',1),(230,'yee/user','Permissions',1),(231,'yee/user','Refresh routes',1),(232,'yee/user','Registration date',1),(233,'yee/user','Role',1),(234,'yee/user','Roles and Permissions for \"{user}\"',1),(235,'yee/user','Roles',1),(236,'yee/user','Routes',1),(237,'yee/user','Search route',1),(238,'yee/user','Show all',1),(239,'yee/user','Show only selected',1),(240,'yee/user','Update Permission Group',1),(241,'yee/user','Update Permission',1),(242,'yee/user','Update Role',1),(243,'yee/user','Update User Password',1),(244,'yee/user','Update User',1),(245,'yee/user','User not found',1),(246,'yee/user','User',1),(247,'yee/user','Users',1),(248,'yee/user','Visit Log',1),(249,'yee/user','You can not change own permissions',1),(250,'yee/user','You can\'t update own permissions!',1),(251,'yee/user','{permission} Permission Settings',1),(252,'yee/user','{permission} Role Settings',1),(253,'yee/auth','Are you sure you want to delete your profile picture?',1),(254,'yee/auth','Are you sure you want to unlink this authorization?',1),(255,'yee/auth','Authentication error occurred.',1),(256,'yee/auth','Authorization',1),(257,'yee/auth','Authorized Services',1),(258,'yee/auth','Captcha',1),(259,'yee/auth','Change profile picture',1),(260,'yee/auth','Check your E-mail for further instructions',1),(261,'yee/auth','Check your e-mail {email} for instructions to activate account',1),(262,'yee/auth','Click to connect with service',1),(263,'yee/auth','Click to unlink service',1),(264,'yee/auth','Confirm E-mail',1),(265,'yee/auth','Confirm',1),(266,'yee/auth','Could not send confirmation email',1),(267,'yee/auth','Current password',1),(268,'yee/auth','E-mail confirmation for',1),(269,'yee/auth','E-mail {email} confirmed',1),(270,'yee/auth','E-mail is invalid',1),(271,'yee/auth','E-mail with activation link has been sent to <b>{email}</b>. This link will expire in {minutes} min.',1),(272,'yee/auth','E-mail',1),(273,'yee/auth','Forgot password?',1),(274,'yee/auth','Incorrect username or password',1),(275,'yee/auth','Login has been taken',1),(276,'yee/auth','Login',1),(277,'yee/auth','Logout',1),(278,'yee/auth','Non Authorized Services',1),(279,'yee/auth','Password has been updated',1),(280,'yee/auth','Password recovery',1),(281,'yee/auth','Password reset for',1),(282,'yee/auth','Password',1),(283,'yee/auth','Registration - confirm your e-mail',1),(284,'yee/auth','Registration',1),(285,'yee/auth','Remember me',1),(286,'yee/auth','Remove profile picture',1),(287,'yee/auth','Repeat password',1),(288,'yee/auth','Reset Password',1),(289,'yee/auth','Reset',1),(290,'yee/auth','Save Profile',1),(291,'yee/auth','Save profile picture',1),(292,'yee/auth','Set Password',1),(293,'yee/auth','Set Username',1),(294,'yee/auth','Signup',1),(295,'yee/auth','This E-mail already exists',1),(296,'yee/auth','Token not found. It may be expired',1),(297,'yee/auth','Token not found. It may be expired. Try reset password once more',1),(298,'yee/auth','Too many attempts',1),(299,'yee/auth','Unable to send message for email provided',1),(300,'yee/auth','Update Password',1),(301,'yee/auth','User Profile',1),(302,'yee/auth','User with the same email as in {client} account already exists but isn\'t linked to it. Login using email first to link it.',1),(303,'yee/auth','The username should contain only Latin letters, numbers and the following characters: \"-\" and \"_\".',1),(304,'yee/auth','Username contains not allowed characters or words.',1),(305,'yee/auth','Wrong password',1),(306,'yee/auth','You could not login from this IP',1),(307,'yee/seo','Create SEO Record',1),(308,'yee/seo','Follow',1),(309,'yee/seo','Index',1),(310,'yee/seo','Keywords',1),(311,'yee/seo','SEO',1),(312,'yee/seo','Search Engine Optimization',1),(313,'yee/seo','Update SEO Record',1),(314,'yee/eav','An error occurred during creation of EavValue record.',1),(315,'yee/eav','An error occurred during saving EAV attributes!',1),(316,'yee/eav','Attribute Options',1),(317,'yee/eav','Attribute Types',1),(318,'yee/eav','Attribute',1),(319,'yee/eav','Attributes',1),(320,'yee/eav','Available Attributes',1),(321,'yee/eav','Custom Fields',1),(322,'yee/eav','EAV',1),(323,'yee/eav','Entity Models',1),(324,'yee/eav','Entity was not found.',1),(325,'yee/eav','Entity',1),(326,'yee/eav','Model was not found.',1),(327,'yee/eav','Model',1),(328,'yee/eav','Option',1),(329,'yee/eav','Raw',1),(330,'yee/eav','Selected Attributes',1),(333,'yee','Home',1),(334,'yee','AIS',1),(335,'yee','Middle Name',0),(336,'yee','Snils',0),(337,'yee','Phone Optional',0),(338,'yee/auth','A Login and E-mail not found.',0),(340,'yee/mail','Follow the link below to confirm your email:',0),(341,'yee/mail','Follow the link below to reset your password:',0),(342,'yee/mail','Hello:',0),(343,'yee/mail','Hello, you have been registered on:',0),(344,'yee/mail','Follow this link to confirm your E-mail and activate account:',0),(345,'yee','Cache has been flushed.',0),(346,'yee','Failed to flush cache.',0),(347,'yee','Your settings have been saved.',0),(348,'yee/auth','Enter',0),(349,'yee/auth','User not found or blocked in the system.',0),(350,'yee','Page not found.',0),(351,'yee/auth','Registration - user search',0),(352,'yee','There is no such date {birth_date}',0),(353,'yee','The format of the date input {birth_date} invalid',0),(354,'yee','Birth Date',0),(355,'yee','Staff',0),(356,'yee','Teacher',0),(357,'yee','Student',0),(358,'yee','Parent',0),(359,'yee','User Category',0),(360,'yee/auth','Check your e-mail {email} for further instructions',0),(361,'yee/auth','After changing the E-mail confirmation is required',0),(362,'yee','Only need to enter Russian letters',0),(363,'yee/db','DB manager',0),(364,'yee/db','Dump',0),(365,'yee/db','Size',0),(366,'yee/db','Create time',0),(367,'yee/db','Import',0),(368,'yee/db','Download',0),(369,'yee/db','Delete',0),(370,'yee/db','The database dump will be deleted. Are you sure?',0),(371,'yee/db','Create dump',0),(372,'yee/db','All database entries will be overwritten. Are you sure?',0),(373,'yee','Enter the social security number according to the mask',0),(374,'yee','Full Name',0),(375,'yee','Feedback',0),(376,'yee','If you have questions, please fill out the following form to contact us. Thank you.',0),(377,'yee/auth','Please confirm that you are not a bot.',0),(378,'yee','Subject',0),(379,'yee','Submit',0),(380,'yee','Thank you for contacting us. We will respond to you as soon as possible.',0),(381,'yee','There was an error sending email.',0),(382,'yee/guide','Name Sity',0),(383,'yee/guide','Study Flag',0),(384,'yee/guide','Num Auditory',0),(385,'yee/guide','Name Auditory',0),(386,'yee/guide','Floor',0),(387,'yee/guide','Area Auditory',0),(388,'yee/guide','Capacity Auditory',0),(389,'yee/guide','Description Auditory',0),(390,'yee/guide','Order',0),(391,'yee/guide','Name Building',0),(392,'yee/guide','Name Auditory Category',0),(393,'yee/guide','Description Auditory Category',0),(394,'yee/guide','Study Opportunity',0),(395,'yee/guide','Name Country',0),(396,'yee/guide','Fips',0),(397,'yee/guide','Name District',0),(398,'yee/guide','Slug',0),(399,'yee/guide','Name Place',0),(400,'yee/guide','Address',0),(401,'yee/guide','Phone',0),(402,'yee/guide','Phone Optional',0),(403,'yee/guide','Contact Person',0),(404,'yee/guide','Latitude',0),(405,'yee/guide','Longitude',0),(406,'yee/guide','Description Venue',0),(407,'yee/guide','Auditory',0),(408,'yee/guide','Auditory Cat',0),(409,'yee/guide','Building',0),(415,'yee/guide','Country',0),(418,'yee/guide','Venue Place',0),(421,'yee/guide','District',0),(431,'yee/guide','Sity',0),(433,'yee/guide','Name District Slug',0),(434,'yee/guide','Select Country...',0),(435,'yee/guide','Select Sity...',0),(436,'yee/guide','Select District...',0),(437,'yee/guide','Select Cat...',0),(438,'yee/guide','Select Building...',0),(439,'yee','Created At',0),(440,'yee','Created By',0),(441,'yee','Updated At',0),(442,'yee','Updated By',0),(443,'yee/guide','Name',0),(444,'yee/guide','Division',0),(445,'yee/guide','Department',0),(446,'yee/guide','Select Name Division...',0),(447,'yee/guide','Subject Category',0),(448,'yee/guide','Qty Min',0),(449,'yee/guide','Qty Max',0),(450,'yee/guide','Info',0),(451,'yee/guide','Status',0),(452,'yee/guide','Measure Unit',0),(453,'yee/teachers','Teachers',0),(454,'yee/teachers','Name Direction Main',0),(455,'yee/teachers','Name Stake',0),(456,'yee/teachers','Name Direction Optional',0),(457,'yee/teachers','Name Stake Optional',0),(458,'yee/teachers','Year Serv',0),(459,'yee/teachers','Year Serv Spec',0),(460,'yee/teachers','Teachers Bonus',0),(461,'yee/teachers','Department',0),(462,'yee/teachers','Name Position',0),(463,'yee/teachers','Name Work',0),(464,'yee/teachers','Name Level',0),(465,'yee/teachers','Tab Num',0),(466,'yee/teachers','Position',0),(467,'yee/teachers','Name',0),(468,'yee/teachers','Slug',0),(469,'yee/teachers','Level',0),(470,'yee/teachers','Work',0),(471,'yee/teachers','Direction',0),(472,'yee/teachers','Name Direction',0),(473,'yee/teachers','Name Stake Main',0),(474,'yee/teachers','Select Direction...',0),(475,'yee/teachers','Select Stake...',0),(476,'yee/teachers','Stake',0),(477,'yee/teachers','Bonus Category',0),(478,'yee/teachers','Value Default',0),(479,'yee/teachers','Select Bonus Category...',0),(480,'yee/teachers','Select Measure Unit...',0),(481,'yee/teachers','Status',0),(482,'yee/teachers','For date',0),(483,'yee/teachers','Select Department...',0),(484,'yee/teachers','Select Teachers Bonus...',0),(485,'yee/teachers','Measure Unit',0),(486,'yee/teachers','Stake Value',0),(487,'yee/teachers','Cost',0),(490,'yee/teachers','Select Position...',0),(491,'yee/teachers','Select Work...',0),(492,'yee/teachers','Select Level...',0),(493,'yee/guide','Subjects',0),(494,'yee/guide','Subject Vid',0),(495,'yee/guide','Subject Type',0),(496,'yee/guide','Select Department...',0),(497,'yee/guide','Select Subject Category...',0),(498,'yee/guide','Name Division',0),(499,'yee/teachers','Experience in the specialty can not be more than the total experience.',0),(500,'yee/user','User Relations',0),(501,'yee/user','Name',0),(502,'yee/user','Slug',0),(503,'yee/student','Sertificate Name',0),(504,'yee/student','Sertificate Series',0),(505,'yee/student','Sertificate Num',0),(506,'yee/student','Sertificate Organ',0),(507,'yee/student','Sertificate Date',0),(508,'yee/student','Name Position',0),(509,'yee/student','Select Position...',0),(510,'yee/auth','The user with the entered data already exists.',0),(511,'yee/user','Parents',0),(512,'yee/user','Create Parent',0),(513,'yee/student','Students',0),(514,'yee/user','Create New Parent...',0),(515,'yee/user','Family Relation',0),(516,'yee/user','The relationships of the selected users are already defined.',0),(517,'yee/user','You cannot use the same relationship to different users.',0),(518,'yee/teachers','The main activity may not be the same as the secondary one.',0),(519,'yee/student','The format of the date input {sertificate_date} invalid',0),(520,'yee/student','There is no such date {sertificate_date}',0),(521,'yee/settings','Organization details',0),(522,'yee/settings','Head',0),(523,'yee/settings','Head sign',0),(524,'yee/settings','Chief accountant',0),(525,'yee/settings','Chief accountant sign',0),(526,'yee/settings','Name organization',0),(527,'yee/settings','Abbr name organization',0),(528,'yee/settings','Post organization',0),(529,'yee/settings','E-mail organization',0),(530,'yee/post','Select Tags...',0),(531,'yee','Layout',0),(532,'yee/post','Parent Category',0),(533,'yee/post','Categories',0),(534,'yee/post','Update Category',0),(535,'yee/post','Create Category',0);
/*!40000 ALTER TABLE `message_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `alias` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base','@app/migrations',1530777667),('m130524_201442_init','@app/migrations',1530777672),('m141106_185632_log_init','@yii/log/migrations/',1537257131),('m150319_150657_alter_user_table','@yeesoft/yii2-yee-core/migrations/',1530777673),('m150319_155941_init_yee_core','@yeesoft/yii2-yee-core/migrations/',1530777677),('m150319_184824_init_settings','@yeesoft/yii2-yee-core/migrations/',1530777677),('m150319_194321_init_menus','@yeesoft/yii2-yee-core/migrations/',1530777681),('m150320_102452_init_translations','@yeesoft/yii2-yee-translation/migrations/',1530777682),('m150628_124401_create_media_table','@yeesoft/yii2-yee-media/migrations/',1530777688),('m150630_121101_create_post_table','@yeesoft/yii2-yee-post/migrations/',1530777693),('m150703_182055_create_auth_table','@yeesoft/yii2-yee-auth/migrations/',1530777694),('m150706_175101_create_comment_table','@yeesoft/yii2-comments/migrations/',1530777694),('m150719_154955_add_setting_menu_links','@yeesoft/yii2-yee-settings/migrations/',1530777694),('m150719_182533_add_menu_and_links','@yeesoft/yii2-yee-menu/migrations/',1530777694),('m150727_175300_add_comments_menu_links','@yeesoft/yii2-yee-comment/migrations/',1530777694),('m150729_121634_add_user_menu_links','@yeesoft/yii2-yee-user/migrations/',1530777694),('m150729_122614_add_post_menu_links','@yeesoft/yii2-yee-post/migrations/',1530777694),('m150729_131014_add_media_menu_links','@yeesoft/yii2-yee-media/migrations/',1530777694),('m150731_150101_create_page_table','@yeesoft/yii2-yee-page/migrations/',1530777695),('m150731_150644_add_page_menu_links','@yeesoft/yii2-yee-page/migrations/',1530777695),('m150821_140141_add_core_permissions','@yeesoft/yii2-yee-core/migrations/',1530777695),('m150825_202231_add_post_permissions','@yeesoft/yii2-yee-post/migrations/',1530777696),('m150825_205531_add_user_permissions','@yeesoft/yii2-yee-user/migrations/',1530777696),('m150825_211322_add_menu_permissions','@yeesoft/yii2-yee-menu/migrations/',1530777696),('m150825_212310_add_settings_permissions','@yeesoft/yii2-yee-settings/migrations/',1530777696),('m150825_212941_add_comments_permissions','@yeesoft/yii2-yee-comment/migrations/',1530777696),('m150825_213610_add_media_permissions','@yeesoft/yii2-yee-media/migrations/',1530777696),('m150825_220620_add_page_permissions','@yeesoft/yii2-yee-page/migrations/',1530777696),('m151116_212614_add_translations_menu_links','@yeesoft/yii2-yee-translation/migrations/',1530777696),('m151121_091144_i18n_yee_source','@yeesoft/yii2-yee-core/migrations/',1530777696),('m151121_131210_add_translation_permissions','@yeesoft/yii2-yee-translation/migrations/',1530777696),('m151121_184634_i18n_yee_translation_source','@yeesoft/yii2-yee-translation/migrations/',1530777696),('m151121_225504_i18n_yee_media_source','@yeesoft/yii2-yee-media/migrations/',1530777696),('m151121_232115_i18n_yee_menu_source','@yeesoft/yii2-yee-menu/migrations/',1530777696),('m151121_233615_i18n_yee_page_source','@yeesoft/yii2-yee-page/migrations/',1530777696),('m151121_233715_i18n_yee_post_source','@yeesoft/yii2-yee-post/migrations/',1530777696),('m151121_235015_i18n_yee_settings_source','@yeesoft/yii2-yee-settings/migrations/',1530777696),('m151121_235512_i18n_yee_user_source','@yeesoft/yii2-yee-user/migrations/',1530777696),('m151126_061233_i18n_yee_auth_source','@yeesoft/yii2-yee-auth/migrations/',1530777696),('m151226_230101_create_seo_table','@yeesoft/yii2-yee-seo/migrations/',1530777697),('m151226_231101_add_seo_menu_links','@yeesoft/yii2-yee-seo/migrations/',1530777697),('m151226_233401_add_seo_permissions','@vendor/yeesoft/yii2-yee-seo/migrations/',1538126970),('m151226_234401_i18n_yee_seo_source','@yeesoft/yii2-yee-seo/migrations/',1530777697),('m160207_123123_add_super_parent_id','@yeesoft/yii2-comments/migrations/',1530777698),('m160325_140543_init_eav','@vendor/yeesoft/yii2-yee-eav/migrations/',1531131047),('m160325_142311_add_eav_menu_links','@vendor/yeesoft/yii2-yee-eav/migrations/',1531131047),('m160325_143610_add_eav_permissions','@vendor/yeesoft/yii2-yee-eav/migrations/',1531131047),('m160325_144849_i18n_yee_eav_source','@vendor/yeesoft/yii2-yee-eav/migrations/',1531131047),('m160414_212551_add_view_page','@yeesoft/yii2-yee-page/migrations/',1530777699),('m160414_212558_add_view_post','@yeesoft/yii2-yee-post/migrations/',1530777700),('m160419_092310_i18n_ru_yee','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_122314_i18n_ru_init_demo','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_143242_i18n_ru_menu_comments','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_143310_i18n_ru_menu_core','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_143742_i18n_ru_menu_media','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_143915_i18n_ru_menu_menu','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_144310_i18n_ru_menu_page','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_144654_i18n_ru_menu_post','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_144710_i18n_ru_menu_setting','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_145050_i18n_ru_menu_translations','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_145301_i18n_ru_menu_user','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_210059_i18n_ru_yee_translation','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_225904_i18n_ru_yee_media','@vendor/yeesoft/yee-i18n/ru/',1535708684),('m160419_232223_i18n_ru_yee_menu','@vendor/yeesoft/yee-i18n/ru/',1535708685),('m160419_233713_i18n_ru_yee_page','@vendor/yeesoft/yee-i18n/ru/',1535708685),('m160419_233813_i18n_ru_yee_post','@vendor/yeesoft/yee-i18n/ru/',1535708685),('m160419_234401_i18n_ru_yee_seo','@vendor/yeesoft/yee-i18n/ru/',1535708685),('m160419_235120_i18n_ru_yee_settings','@vendor/yeesoft/yee-i18n/ru/',1535708685),('m160419_235601_i18n_ru_menu_seo','@vendor/yeesoft/yee-i18n/ru/',1535708685),('m160419_235643_i18n_ru_yee_user','@vendor/yeesoft/yee-i18n/ru/',1535708685),('m160426_122854_create_uploader_images_table','@yeesoft/yii2-yee-media/migrations/',1530777701),('m160530_224510_add_url_field','@yeesoft/yii2-comments/migrations/',1530777701),('m160605_214907_create_tag_table','@yeesoft/yii2-yee-post/migrations/',1530777704),('m160605_215105_init_tag_settings','@yeesoft/yii2-yee-post/migrations/',1530777704),('m160610_120101_init_demo','@app/migrations',1530777704),('m160716_173208_changelogs','@vendor/cranky4/change-log-behavior/src/migrations',1537269028),('m160831_224932_alter_user_table','@yeesoft/yii2-yee-core/migrations/',1530777709),('m160903_113810_update_auth_foreign_key','@yeesoft/yii2-yee-auth/migrations/',1530777710),('m170306_083010_tests','@artmarkov/mytest/migrations',1537367447);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES (4,'Третья строка\r\n'),(5,'4 чтрока'),(6,'5 срока'),(7,'6 строка\r\n'),(8,'3 строка'),(9,'7 строка\r\n'),(10,'10 строка'),(11,'11 строка\r\n'),(12,'12 строка'),(13,'14 строка\r\n'),(14,'16'),(15,'17'),(16,'18'),(17,'20'),(18,''),(19,'22'),(20,'23'),(21,'24'),(22,'25'),(25,'11111111111111111'),(26,'111111'),(28,'28'),(29,'');
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `comment_status` int(1) NOT NULL DEFAULT '1' COMMENT '0-closed,1-open',
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `revision` int(1) NOT NULL DEFAULT '1',
  `view` varchar(255) NOT NULL DEFAULT 'page',
  `layout` varchar(255) NOT NULL DEFAULT 'main',
  PRIMARY KEY (`id`),
  KEY `page_slug` (`slug`),
  KEY `page_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'rules_entry',1,0,1535932800,1535967573,1539026237,4,4,2,'page','main'),(2,'confidentiality-agreemen',1,1,1535932800,1535967607,1535967607,4,4,1,'page','main'),(3,'about',1,0,1538956800,1539024234,1539026611,4,4,6,'page','main');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_lang`
--

DROP TABLE IF EXISTS `page_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `page_lang_post_id` (`page_id`),
  KEY `page_lang_language` (`language`),
  CONSTRAINT `fk_page_lang` FOREIGN KEY (`page_id`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_lang`
--

LOCK TABLES `page_lang` WRITE;
/*!40000 ALTER TABLE `page_lang` DISABLE KEYS */;
INSERT INTO `page_lang` VALUES (1,1,'ru','Правила входа в Личный кабинет','<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Source Sans Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Заходя в личный кабинет АИС \"Школа Искусств\" (в дальнейшем «мы», «наш», «АИС \"Школа Искусств\"», вы подтверждаете своё согласие со следующими условиями. Если вы не согласны с ними, пожалуйста, не заходите и не пользуйтесь личным кабинетом АИС \"Школа Искусств\". Мы оставляем за собой право изменять эти правила в любое время и сделаем всё возможное, чтобы уведомить вас об этом, однако с вашей стороны было бы разумным регулярно просматривать этот текст на предмет изменений, так как использование ресурса АИС \"Школа Искусств\" после обновления/исправления условий означает ваше согласие с ними.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Source Sans Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Вы соглашаетесь не размещать оскорбительных, угрожающих, клеветнических сообщений, порнографических сообщений, призывов к национальной розни и прочих сообщений, которые могут нарушить законы вашей страны, страны, которая предоставляет услуги хостинга для АИС \"Школа Искусств\" или международное право. Попытки размещения таких сообщений могут привести к вашему немедленному отключению от системы АИС \"Школа Искусств\".</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Source Sans Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Вы соглашаетесь с тем, что администраторы АИС \"Школа Искусств\" имеют право удалить, отредактировать, перенести или удалить любую информацию в любое время по своему усмотрению. Как пользователь вы согласны с тем, что введённая вами информация будет храниться в базе данных. Хотя эта информация не будет открыта третьим лицам без вашего разрешения, администрация АИС \"Школа Искусств\" не может быть ответственна за действия хакеров, которые могут привести к несанкционированному доступу к ней.</p>\r\n<p> </p>'),(2,2,'ru','Соглашение конфиденциальности','<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Source Sans Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Это соглашение подробно объясняет, как АИС \"Школа Искусств\" (в дальнейшем «мы», «наш», АИС \"Школа Искусств\" используют информацию, полученную во время любой из ваших пользовательских сессий (в дальнейшем «ваша информация»).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Source Sans Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Ваша информация собирается двумя способами. Во-первых, просмотр информации АИС \"Школа Искусств\" приведёт к созданию программным обеспечением определённого числа cookies (небольшие текстовые файлы, загружаемые в папку временных файлов вашего браузера). Первые две cookie содержат только идентификатор пользователя (в дальнейшем «user-id») и идентификатор анонимной сессии (в дальнейшем «session-id»), автоматически присвоенные вам программным обеспечением.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Source Sans Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Также во время просмотра информации АИС \"Школа Искусств\" мы можем установить cookies, внешние по отношению к программному обеспечению, однако они выходят за рамки этого документа, целью которого является рассмотрение страниц, созданных исключительно программным обеспечением. Вторым источником получения вашей информации являются данные, которые вы отправляете на АИС \"Школа Искусств\". Этими данными могут быть, но не исчерпываются, следующие данные: данные, указанные при регистрации в АИС \"Школа Искусств\" (в дальнейшем «ваша учётная запись») и сообщения, оставленные вами после регистрации и авторизации (в дальнейшем «ваши сообщения»).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Source Sans Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Ваша учётная запись будет содержать, как минимум, однозначно идентифицируемое имя (в дальнейшем «ваше имя пользователя»), индивидуальный пароль для входа под вашей учётной записью (далее «ваш пароль») и реальный адрес email (в дальнейшем «ваш адрес email»). Ваша информация из вашей учётной записи на АИС \"Школа Искусств\" охраняется законами о защите компьютерной информации, применяемыми в стране, предоставляющей нам услуги хостинга. Любая информация, запрашиваемая при регистрации в АИС \"Школа Искусств\", кроме вашего имени пользователя, вашего пароля и вашего адреса email, может быть как необходимой, так и необязательной ко вводу, на усмотрение администрации АИС \"Школа Искусств\". В любом случае у вас есть возможность выбрать, какая информация из вашей учётной записи будет общедоступна.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: \'Source Sans Pro\', \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Ваш пароль надёжно зашифрован (односторонним хэшированием). Однако не рекомендуется использовать этот же самый пароль, регистрируясь на других сайтах. Ваш пароль является средством доступа к вашей учётной записи на АИС \"Школа Искусств\", пожалуйста, храните его в тайне, ни при каких обстоятельствах ни представители АИС \"Школа Искусств\", ни другое третье лицо не вправе спрашивать ваш пароль. В случае, если вы забудете ваш пароль к вашей учётной записи, вы сможете воспользоваться функцией восстановления пароля «Забыли пароль?», предусмотренной программным обеспечением. Вам будет необходимо ввести ваше имя пользователя и ваш адрес email, после чего программное обеспечение сгенерирует вам новый пароль для вашей учётной записи.</p>'),(3,3,'ru','О проекте','<p>Страница о проекте</p>');
/*!40000 ALTER TABLE `page_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0-pending,1-published',
  `comment_status` int(1) NOT NULL DEFAULT '1' COMMENT '0-closed,1-open',
  `thumbnail` varchar(255) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `revision` int(1) NOT NULL DEFAULT '1',
  `view` varchar(255) NOT NULL DEFAULT 'post',
  `layout` varchar(255) NOT NULL DEFAULT 'main',
  PRIMARY KEY (`id`),
  KEY `post_slug` (`slug`),
  KEY `post_category_id` (`category_id`),
  KEY `post_status` (`status`),
  KEY `fk_page_created_by` (`created_by`),
  KEY `fk_page_updated_by` (`updated_by`),
  CONSTRAINT `fk_page_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_page_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_post_category_id` FOREIGN KEY (`category_id`) REFERENCES `post_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'obavlenie-pedagogiceskoj-filarmonii',4,1,1,'/uploads/2018/11/835837alps-400x300.jpg',1535241600,1535967794,1542059052,4,4,23,'post','main'),(2,'obavlenie-kozlovoj',3,1,1,'/uploads/2018/11/539356galleryworld-400x300.jpg',1541980800,1542031933,1542053062,4,4,26,'post','main'),(3,'obavlenie',NULL,0,1,'',1541980800,1542051623,1542053768,4,4,1,'post','main');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category`
--

DROP TABLE IF EXISTS `post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1' COMMENT '0-hidden,1-visible',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `left_border` int(11) NOT NULL,
  `right_border` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_category_slug` (`slug`),
  KEY `post_category_visible` (`visible`),
  KEY `left_border` (`left_border`,`right_border`),
  KEY `right_border` (`right_border`),
  KEY `fk_post_category_created_by` (`created_by`),
  KEY `fk_post_category_updated_by` (`updated_by`),
  CONSTRAINT `fk_post_category_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_post_category_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category`
--

LOCK TABLES `post_category` WRITE;
/*!40000 ALTER TABLE `post_category` DISABLE KEYS */;
INSERT INTO `post_category` VALUES (1,'root\r\n',0,1530173848,0,NULL,NULL,0,2147483647,0),(2,'doska-obavlenij',1,1542030655,1542041114,4,4,168430089,336860176,1),(3,'teachers',1,1542030730,1542054553,4,4,252645134,294752655,2),(4,'student',1,1542030749,1542040622,4,4,168430090,210537611,2),(5,'parent',1,1542030765,1542054541,4,4,210537612,252645133,2);
/*!40000 ALTER TABLE `post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category_lang`
--

DROP TABLE IF EXISTS `post_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_category_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `post_category_lang_id` (`post_category_id`),
  KEY `post_category_lang_language` (`language`),
  CONSTRAINT `fk_post_category_lang` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category_lang`
--

LOCK TABLES `post_category_lang` WRITE;
/*!40000 ALTER TABLE `post_category_lang` DISABLE KEYS */;
INSERT INTO `post_category_lang` VALUES (1,1,'ru','root',NULL),(2,2,'ru','Доска объявлений',''),(3,3,'ru','Объявления для преподавателей',''),(4,4,'ru','Объявления для учеников',''),(5,5,'ru','Объявления для родителей','');
/*!40000 ALTER TABLE `post_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_lang`
--

DROP TABLE IF EXISTS `post_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `title` text,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `post_lang_post_id` (`post_id`),
  KEY `post_lang_language` (`language`),
  CONSTRAINT `fk_post_lang` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_lang`
--

LOCK TABLES `post_lang` WRITE;
/*!40000 ALTER TABLE `post_lang` DISABLE KEYS */;
INSERT INTO `post_lang` VALUES (1,1,'ru','Объявление Педагогической филармонии','<div class=\"postbody\">\r\n<p>В рамках концертов Педагогической филармонии 16 ноября в Большом зале пройдет \"Концерт-Поэма\" Андрея Пыпина (балалайка) и Николая Саратовского (фортепиано)<br /> Начало концерта в 19:00</p>\r\n<p>Билеты Вы можете получить у администраторов в холле 1-го этажа в обмен на оплаченную квитанцию.</p>\r\n<p>Стоимость одного билета - 300 рублей</p>\r\n<p><a title=\"Квитанция филармония МИТЮША 300.pdf\" href=\"http://stravinskiy.arts.mos.ru/upload/medialibrary/c85/kvitantsiya-filarmoniya-mityusha-300.pdf\">КВИТАНЦИЮ можно скачать ЗДЕСЬ</a></p>\r\n<p>Стоимость трех билетов - 600 рублей</p>\r\n</div>'),(2,2,'ru','Объявление Козловой','<p>Уважаемые учащиеся и родители, 12 НОЯБРЯ (понедельник) занятия у преподавателя КОЗЛОВОЙ Н.Е. отменяются.</p>'),(3,3,'ru','Объявление','');
/*!40000 ALTER TABLE `post_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_slug` (`slug`),
  KEY `fk_post_tag_created_by` (`created_by`),
  KEY `fk_post_tag_updated_by` (`updated_by`),
  CONSTRAINT `fk_post_tag_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_post_tag_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag`
--

LOCK TABLES `post_tag` WRITE;
/*!40000 ALTER TABLE `post_tag` DISABLE KEYS */;
INSERT INTO `post_tag` VALUES (1,'obavlenia-dsi-im-ifstravinskogo',1535966927,1542041039,4,4),(2,'ais-skola-iskusstv',1542040969,1542040969,4,4);
/*!40000 ALTER TABLE `post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag_lang`
--

DROP TABLE IF EXISTS `post_tag_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_tag_id` int(11) DEFAULT NULL,
  `language` varchar(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tag_lang_id` (`post_tag_id`),
  KEY `post_tag_lang_language` (`language`),
  CONSTRAINT `fk_post_tag_lang` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag_lang`
--

LOCK TABLES `post_tag_lang` WRITE;
/*!40000 ALTER TABLE `post_tag_lang` DISABLE KEYS */;
INSERT INTO `post_tag_lang` VALUES (1,1,'ru','Объявления ДШИ им. И.Ф.Стравинского'),(2,2,'ru','АИС Школа Искусств');
/*!40000 ALTER TABLE `post_tag_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tag_post`
--

DROP TABLE IF EXISTS `post_tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tag_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_tag_post_id` (`post_id`),
  KEY `fk_post_tag_tag_id` (`tag_id`),
  CONSTRAINT `fk_post_tag_post_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_post_tag_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `post_tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tag_post`
--

LOCK TABLES `post_tag_post` WRITE;
/*!40000 ALTER TABLE `post_tag_post` DISABLE KEYS */;
INSERT INTO `post_tag_post` VALUES (1,1,1),(23,2,1),(24,2,2),(25,3,2);
/*!40000 ALTER TABLE `post_tag_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo`
--

DROP TABLE IF EXISTS `seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(127) NOT NULL DEFAULT '',
  `keywords` text,
  `description` text,
  `index` smallint(6) NOT NULL DEFAULT '1',
  `follow` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `seo_url` (`url`),
  KEY `seo_created_by` (`created_by`),
  KEY `seo_author` (`created_by`),
  KEY `fk_seo_updated_by` (`updated_by`),
  CONSTRAINT `fk_seo_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_seo_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo`
--

LOCK TABLES `seo` WRITE;
/*!40000 ALTER TABLE `seo` DISABLE KEYS */;
INSERT INTO `seo` VALUES (1,'/en','Homepage','Site Owner','yii2, cms, yeecms','Seo meta description',1,1,1452544164,1452545049,1,1);
/*!40000 ALTER TABLE `seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(64) DEFAULT 'general',
  `key` varchar(64) NOT NULL,
  `language` varchar(6) DEFAULT NULL,
  `value` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `setting_group_lang` (`group`,`key`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'general','title','ru','Школа Искусств',NULL),(2,'general','description','ru','АИС Школа Искусств',NULL),(3,'general','email',NULL,'artmarkov@mail.ru',NULL),(4,'general','timezone',NULL,'Europe/Moscow',NULL),(5,'general','dateformat',NULL,'long',NULL),(6,'general','timeformat',NULL,'HH:mm',NULL),(7,'reading','page_size',NULL,'10',NULL),(10,'organization','head','ru','Карташева Наталья Михайловна',NULL),(11,'organization','chief_accountant','ru','Кофанова Галина Васильевна',NULL),(12,'organization','head_sign','ru','Карташева Н.М.',NULL),(13,'organization','chief_accountant_sign','ru','Кофанова Г.В.',NULL),(14,'organization','name','ru','Государственное бюджетное учреждение дополнительного образования г. Москвы \"Детская школа искусств им. И.Ф.Стравинского\"',NULL),(15,'organization','abbr_name','ru','ГБУДО г. Москвы \"ДШИ им. И.Ф.Стравинского\"',NULL),(16,'organization','post','ru','125368, г. Москва, ул. Митинская, д. 47, кор. 1',NULL),(18,'organization','email',NULL,'dshi13@mail.ru',NULL);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `position_id` tinyint(2) unsigned DEFAULT NULL,
  `sertificate_name` varchar(32) DEFAULT NULL,
  `sertificate_series` varchar(32) DEFAULT NULL,
  `sertificate_num` varchar(32) DEFAULT NULL,
  `sertificate_organ` varchar(127) DEFAULT NULL,
  `sertificate_timestamp` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `position_id` (`position_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `student_position` (`id`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Ученики';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,12,1,'','','','',NULL),(2,23,1,'1','1','1','1',566168400);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_position`
--

DROP TABLE IF EXISTS `student_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_position` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `slug` varchar(32) DEFAULT NULL,
  `status` smallint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Должность';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_position`
--

LOCK TABLES `student_position` WRITE;
/*!40000 ALTER TABLE `student_position` DISABLE KEYS */;
INSERT INTO `student_position` VALUES (1,'Абитуриент','Абит',1),(2,'Учащийся','Уч-ся',1),(3,'Выпускной класс','Вып.кл',1),(4,'Окончил обучение','Окон',1),(5,'Отчислен','Отч',1);
/*!40000 ALTER TABLE `student_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `slug` varchar(32) DEFAULT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  `status` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COMMENT='Дисциплины';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'Фортепиано','Ф-но',0,1),(2,'Ансамбль','Анс.',0,1),(3,'Виолончель','Виол',0,1),(4,'Скрипка','Скр',0,1),(5,'Ансамбль','Анс.',0,1),(6,'Альт','Альт',0,1),(7,'Баритон','Барит',0,1),(8,'Блок флейта','Бл.фл',0,1),(9,'Валторна','Валт',0,1),(10,'Кларнет','Клар',0,1),(12,'Саксофон','Сакс',0,1),(13,'Тенор','Тенор',0,1),(14,'Тромбон','Тром',0,1),(15,'Труба','Труб',0,1),(16,'Туба','Туба',0,1),(17,'Ударные','Удар',0,1),(18,'Флейта','Фле',0,1),(19,'Ансамбль','Анс.',0,1),(21,'Духовой оркестр','Орк.дух.',0,1),(22,'Аккордеон','Акк-н',0,1),(23,'Балалайка','Бал',0,1),(24,'Баян','Баян',0,1),(25,'Гитара','Гитар',0,1),(26,'Домра','Домр',0,1),(27,'Ансамбль','Анс.',0,1),(29,'Народный хор','Нар.хор',0,1),(30,'Народный оркестр','Нар.орк.',0,1),(31,'История искусств','Ист.иск.',0,1),(32,'Музыкальная литература','Муз.лит.',0,1),(33,'Основы дирижирования','Дир.',0,1),(34,'Слушание музыки','Сл.муз.',0,1),(35,'Сольфеджио','Сольф.',0,1),(36,'Сочинение и аккомпанемент','Соч.акк.',0,1),(37,'Хор спец.гр.','Хор спец.гр.',0,1),(38,'Вокал','Вок',0,1),(39,'Ансамбль','Анс.',0,1),(40,'Народный хор','Нар.хор',0,1),(41,'Вокал','Вок',0,1),(42,'Ансамбль','Анс.',0,1),(43,'Народное творчество','Нар.тв.',0,1),(44,'Основы русского народного танца','ОРНТ',0,1),(46,'Сценическое движение','Сц.дв.',0,1),(47,'Бас гитара','Б.гит',0,1),(48,'Вокал','Вок',0,1),(49,'Ритм гитара','Р.гит',0,1),(50,'Саксофон','Сакс',0,1),(51,'Тромбон','Тром',0,1),(52,'Труба','Труб',0,1),(53,'Ударные','Удар',0,1),(54,'История джаза','Ист.дж.',0,1),(55,'Основы импровизации','Импр-я',0,1),(57,'Эстрадно-джазовый ансамбль ','Джаз.анс.',0,1),(58,'Общее ф-но','Общ.фно.',0,1),(59,'Декоративно-прикладное искусство','ДПИ',0,1),(60,'Декорирование','Декор',0,1),(61,'Живопись','Жив-сь.',0,1),(62,'История изобразительного искусства','Ист.ИЗО',0,1),(63,'История искусств','Ист.иск.',0,1),(64,'Композиция (станковая, прикладная)','Комп.',0,1),(66,'Лепка','Лепка',0,1),(67,'Основы изобразительного искусства','Осн.ИЗО',0,1),(68,'Пластическая, конструктивная лепка','ПКЛ',0,1),(69,'Рисунок','Рис.',0,1),(70,'Скульптура','Скульпт.',0,1),(71,'Формовка','Форм.',0,1),(72,'Шликерное литьё','Литьё',0,1),(76,'Ритмика','Рит.',0,1),(77,'Композиция','Комп.',0,1),(78,'Фортепиано','Ф-но',0,1),(79,'Хор','Хор',0,1),(80,'Сводный струнный ансамбль','Св.стр.анс.',0,1),(81,'Гармонь','Гарм',0,1),(82,'Академ. вокал','Ак.вок.',0,1),(83,'\"Познайки\"- класс раннего развития','\"Познайки\"',0,1),(84,'\"Почемучки\" - класс раннего развития','\"Почемучки\"',0,1),(85,'\"Знайки\" - класс раннего развития','\"Знайки\"',0,1),(86,'\"Всезнайки\" - класс раннего развития','\"Всезнайки\"',0,1),(87,'Логоритмика','Логоритмика',0,1),(88,'Теория музыки','т/м',0,1),(89,'Ансамбль','Анс.',0,1),(90,'Сольфеджио','Сольф.',0,1),(91,'Хор','Хор',0,1),(92,'Чтение с листа','Чт.лист',0,1),(93,'Чтение с листа','Чт.лист',0,1),(94,'Чтение с листа','Чт.лист',0,1),(95,'Чтение с листа','Чт.лист',0,1),(96,'Чтение с листа','Чт.лист',0,1),(97,'Духовой ансамбль','Дух.анс.',0,1),(100,'Эстрадно-джазовый оркестр','Джаз.орк.',0,1),(101,'Сводная репетиция народного хора','Св.реп.нар.хора',0,1),(102,'Ансамбль народных инструментов','Анс.нар.инстр.',0,1),(103,'Струнный ансамбль','Стр.анс',0,1),(104,'Оркестр аккордеонистов','Орк. аккорд.',0,1),(106,'Оркестр гитаристов','орк.гит.',0,1),(111,'Арфа','Арфа',0,1),(112,'Ансамбль инд.','Анс.инд.',0,1),(113,'Орган','Орган',0,1),(114,'Сводная репетиция ОРНТ','св.реп.орнт',0,1),(115,'Сводная репетиция хорового отдела','св.реп.хор.',0,1),(116,'Эстрадный танец','эстр.тан.',0,1),(117,'Бально-спортивный танец','Бал-спорт.тан',0,1),(118,'Классический станок','Класс.ст.',0,1),(119,'Беседы по хореографическому искусству','Беседы',0,1),(120,'Народно-сценический танец','Нар-сц.тан.',0,1),(121,'Историко-бытовой и бальный танец','Бальн.тан.',0,1),(122,'Мастерство актера','Маст.акт.',0,1),(123,'Сценическая речь','Сц.речь',0,1),(124,'Сценическое движение','Сц.дв.',0,1),(125,'Музыкальная литература и слушание музыки','Муз.лит.сл.муз.',0,1),(126,'Музыкальная грамота','Муз.гр.',0,1),(127,'Эстрадно-джазовое пение','Эст.дж.пен.',0,1),(128,'Бально-спортивный танец','Бал.сп.тан.',0,1),(129,'Вокально-хоровой ансамбль','Вок-хор анс.',0,1),(130,'Народная хореография','Нар.хореогр.',0,1),(131,'Слушание музыки и музыкальная грамота','Сл.муз.и муз.гр.',0,1),(132,'Беседы об искусстве','Беседы об иск-ве',0,1),(133,'Чтение хоровых партитур','Чт.хор.п.',0,1),(135,'Хоровой класс','Хор.класс.',0,1),(137,'Народное творчество','Нар.тв-во',0,1),(138,'Фольклорный ансамбль','Ф.анс.',0,1),(139,'Ритмическое сольфеджио','Ритм.сольф.',0,1),(140,'Основы народного танца','ОНТ',0,1),(141,'Хор спец.кл.','Хор спец.кл.',0,1),(142,'Вокально-хоровой ансамбль кл.','Вок-хор анс.кл.',0,1),(143,'Вокальный эстрадно-джазовый ансамбль','Вок.анс.',0,1),(144,'Гимнастика','Гим-ка',0,1),(145,'Характерный танец','Характ.тан.',0,1),(146,'Танцевальная практика','Танц.практ.',0,1),(147,'Основы эстрадного танца','Основы эстр.танца',0,1),(148,'Основы бального танца','Основы бальн.танца',0,1),(149,'Разминка','Разминка',0,1),(150,'Современная хореография','Совр.хореогр.',0,1),(151,'Растяжка','Растяжка',0,1),(152,'Акробатика','Акробатика',0,1),(153,'Композиционная постановка танца','КПТ',0,1),(154,'Классический танец','Класс.танец',0,1),(155,'Основы хореографии','Осн.хореогр.',0,1),(156,'Партерная гимнастика','Парт.гим-ка',0,1),(157,'Чудеса в ладошках','ЧВЛ',0,1),(158,'Актерское мастерство','Акт.маст',0,1),(159,'Эстрадный вокал','Эстр.вок',0,1),(160,'Современный танец','Совр.танец',0,1),(161,'Проект','Проект',0,1),(162,'История архитектуры','Ист.арх.',0,1),(163,'Основы графики','Осн.граф.',0,1),(164,'Натурный рисунок','Нат.рис.',0,1),(165,'Основы ИЗО','Осн.ИЗО',0,1),(166,'Скульптура','Скульпт.',0,1),(167,'Развитие речи','Раз.реч.',0,1),(168,'Веселая арифметика','Арифм.',0,1),(169,'Логопедия','Лого',0,1),(170,'Слушание музыки и музыкальная грамота','Сл.муз. и муз.гр.',0,1),(171,'Композиция','Комп',0,1),(172,'Формообразование','ФО',0,1),(173,'Макетирование','Макет',0,1),(174,'Теория и история джазовой музыки','ТИДМ',0,1),(175,'Гусли','Гусли',0,1),(176,'Музыкальная информатика','Муз.инф.',0,1),(177,'Сочинение и композиция','Соч.и комп.',0,1),(178,'Музыкальная информатика','Муз.инф.',0,1),(179,'Брейк-данс','Брейк-данс',0,1),(180,'Академический вокал','Акад.вок.',0,1),(181,'Вокальный ансамбль','Вок.анс.',0,1),(182,'Body Ballet','Body Ballet',0,1),(183,'Латина соло','Латина соло',0,1),(184,'Электронно-компьютерное музицирование','ЭКМ',0,1),(185,'Пленэр','Пленэр',0,1),(186,'Народное творчество','Нар.тв.',0,1),(187,'Вокально-хоровой ансамбль','Вок-хор.анс.',0,1),(188,'Вокально-хоровой ансамбль','Вок-хор.анс.',0,1),(189,'Музыкальная литература','Муз.лит.',0,1),(190,'Ансамбль духовых инструментов','Анс.дух.инстр.',0,1),(191,'Художественная керамика','Худ.Кер.',0,1),(192,'Истроия джаза','Ист.дж.',0,1),(193,'Импровизация','Импр.',0,1),(194,'Сценическая речь','Сц.речь',0,1),(195,'Основы актерского мастерства','Осн.акт.маст.',0,1),(196,'Сценическое движение','Сц.дв.',0,1),(197,'Сцена','Сцена',0,1),(198,'Художественное слово','Худ.сл.',0,1),(199,'Пластика','Пластика',0,1),(200,'Веселые нотки','Вес.нотки',0,1),(201,'Арттерапия','Арт.тер.',0,1);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_category`
--

DROP TABLE IF EXISTS `subject_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` mediumint(8) unsigned NOT NULL,
  `category_id` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `subject_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `subject_category_item` (`id`),
  CONSTRAINT `subject_category_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Связь m2m предметов с категорией';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_category`
--

LOCK TABLES `subject_category` WRITE;
/*!40000 ALTER TABLE `subject_category` DISABLE KEYS */;
INSERT INTO `subject_category` VALUES (4,201,2),(5,201,3),(6,201,4),(7,201,1),(8,201,5),(11,200,2),(12,200,3),(13,2,1),(14,2,5);
/*!40000 ALTER TABLE `subject_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_category_item`
--

DROP TABLE IF EXISTS `subject_category_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_category_item` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(127) DEFAULT NULL,
  `slug` varchar(64) NOT NULL,
  `order` tinyint(2) unsigned NOT NULL,
  `status` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Категории дисциплин';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_category_item`
--

LOCK TABLES `subject_category_item` WRITE;
/*!40000 ALTER TABLE `subject_category_item` DISABLE KEYS */;
INSERT INTO `subject_category_item` VALUES (1,'Специальность','Спец.',0,1),(2,'Дисциплины отдела','Дис.отд.',0,1),(3,'Общие дисциплины','Общ.',0,1),(4,'Коллективное музицирование','Кол.муз.',0,1),(5,'Инструмент','Инстр.',0,1),(6,'Предмет по выбору','П/в.',0,1),(7,'Сводные репетиции','Репа',0,1);
/*!40000 ALTER TABLE `subject_category_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_department`
--

DROP TABLE IF EXISTS `subject_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_department` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` mediumint(8) unsigned NOT NULL,
  `department_id` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `subject_department_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `subject_department_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Связь m2m предметов с отделами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_department`
--

LOCK TABLES `subject_department` WRITE;
/*!40000 ALTER TABLE `subject_department` DISABLE KEYS */;
INSERT INTO `subject_department` VALUES (3,201,12),(4,201,4),(5,201,16),(6,200,4),(7,200,9),(8,2,4),(9,2,9),(10,2,5);
/*!40000 ALTER TABLE `subject_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_type`
--

DROP TABLE IF EXISTS `subject_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_type` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL,
  `slug` varchar(64) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Тип дисциплины бюджет или хозрасчет';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_type`
--

LOCK TABLES `subject_type` WRITE;
/*!40000 ALTER TABLE `subject_type` DISABLE KEYS */;
INSERT INTO `subject_type` VALUES (1,'Бюджет','бюд-т',1),(2,'Хозрасчет','х/р',1);
/*!40000 ALTER TABLE `subject_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_vid`
--

DROP TABLE IF EXISTS `subject_vid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_vid` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `slug` varchar(32) NOT NULL,
  `qty_min` smallint(3) unsigned NOT NULL,
  `qty_max` smallint(3) unsigned NOT NULL,
  `info` tinytext NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Вид дисциплины - по группам';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_vid`
--

LOCK TABLES `subject_vid` WRITE;
/*!40000 ALTER TABLE `subject_vid` DISABLE KEYS */;
INSERT INTO `subject_vid` VALUES (1,'Индивидуальные','Инд.',1,1,'',1),(2,'Мелкогрупповые','МГ',2,10,'',1),(3,'Групповые','Гр',11,100,'',1);
/*!40000 ALTER TABLE `subject_vid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `position_id` tinyint(2) unsigned DEFAULT NULL,
  `work_id` tinyint(2) unsigned DEFAULT NULL,
  `level_id` tinyint(2) unsigned DEFAULT NULL,
  `cost_main_id` tinyint(2) unsigned DEFAULT NULL,
  `cost_optional_id` tinyint(2) unsigned DEFAULT NULL,
  `tab_num` varchar(16) DEFAULT NULL,
  `timestamp_serv` int(11) DEFAULT NULL,
  `timestamp_serv_spec` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `status_id` (`position_id`),
  KEY `work_id` (`work_id`),
  KEY `level_id` (`level_id`),
  KEY `cost_main_id` (`cost_main_id`),
  KEY `cost_optional_id` (`cost_optional_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `teachers_level` (`id`),
  CONSTRAINT `teachers_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `teachers_position` (`id`),
  CONSTRAINT `teachers_ibfk_3` FOREIGN KEY (`work_id`) REFERENCES `teachers_work` (`id`),
  CONSTRAINT `teachers_ibfk_4` FOREIGN KEY (`cost_main_id`) REFERENCES `teachers_cost` (`id`),
  CONSTRAINT `teachers_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Преподаватели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,14,1,1,1,1,6,'111',589669200,888630480),(2,16,2,1,1,2,NULL,'111',NULL,NULL);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_bonus`
--

DROP TABLE IF EXISTS `teachers_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_bonus` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `teachers_id` mediumint(8) DEFAULT NULL,
  `bonus_item_id` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teachers_id` (`teachers_id`),
  KEY `bonus_item_id` (`bonus_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Привязка характеристик к преподавателю';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_bonus`
--

LOCK TABLES `teachers_bonus` WRITE;
/*!40000 ALTER TABLE `teachers_bonus` DISABLE KEYS */;
INSERT INTO `teachers_bonus` VALUES (1,1,1),(2,1,5),(3,1,4);
/*!40000 ALTER TABLE `teachers_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_bonus_category`
--

DROP TABLE IF EXISTS `teachers_bonus_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_bonus_category` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `slug` varchar(127) NOT NULL,
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_bonus_category`
--

LOCK TABLES `teachers_bonus_category` WRITE;
/*!40000 ALTER TABLE `teachers_bonus_category` DISABLE KEYS */;
INSERT INTO `teachers_bonus_category` VALUES (1,'Ученая степень','Уч.ст',0),(2,'Звание','Звание',0),(3,'Уровень специалиста','Уровень',0),(4,'Специальные обязанности','Спец.обяз-ти',0);
/*!40000 ALTER TABLE `teachers_bonus_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_bonus_item`
--

DROP TABLE IF EXISTS `teachers_bonus_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_bonus_item` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `bonus_category_id` mediumint(8) NOT NULL,
  `name` varchar(127) DEFAULT NULL,
  `slug` varchar(32) DEFAULT NULL,
  `value_default` varchar(127) DEFAULT NULL,
  `measure_id` smallint(2) unsigned DEFAULT NULL COMMENT 'ед. измерения',
  `bonus_rule_id` tinyint(2) DEFAULT NULL COMMENT 'правило обработки бонуса',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-активна, 0-удалена',
  PRIMARY KEY (`id`),
  KEY `bonus_category_id` (`bonus_category_id`),
  KEY `measure_id` (`measure_id`),
  KEY `bonus_rule_id` (`bonus_rule_id`),
  KEY `status` (`status`),
  CONSTRAINT `teachers_bonus_item_ibfk_1` FOREIGN KEY (`bonus_category_id`) REFERENCES `teachers_bonus_category` (`id`),
  CONSTRAINT `teachers_bonus_item_ibfk_2` FOREIGN KEY (`measure_id`) REFERENCES `measure_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Характеристики пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_bonus_item`
--

LOCK TABLES `teachers_bonus_item` WRITE;
/*!40000 ALTER TABLE `teachers_bonus_item` DISABLE KEYS */;
INSERT INTO `teachers_bonus_item` VALUES (1,1,'Кандидат наук','КН','20',3,1,1),(2,1,'Доктор наук','ДН','30',3,1,1),(3,2,'Народный артист','НА','50',3,1,1),(4,2,'Заслуженный деятель искусств','ЗДИ','50',3,1,1),(5,2,'Заслуженный артист','ЗА','50',3,1,1),(6,2,'Заслуженный работник культуры','ЗРК','50',3,1,1),(7,2,'Заслуженный учитель','ЗУ','50',3,1,1),(8,2,'Почетный работник культуры','ПРК','30',3,1,1),(9,2,'Обладатель нагрудного знака','ОНЗ','30',3,1,1),(10,2,'Звание лауреата','ЗЛ','30',3,1,1),(12,3,'Молодой специалист + проезд','МС+','55',3,1,1),(13,3,'Молодой специалист-отличник + проезд','МСО+','65',3,1,1),(14,4,'Руководство отделением','РО','30',3,1,1),(15,4,'Руководство выставочной работой','РВР','30',3,1,1),(16,4,'Участие в экспертной группе город','ЭГГ','30',3,1,1),(17,4,'Участие в экспертной группе округ','ЭГО','15',3,1,1),(18,4,'Заведование секцией','ЗС','15',3,1,1);
/*!40000 ALTER TABLE `teachers_bonus_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_cost`
--

DROP TABLE IF EXISTS `teachers_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_cost` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `direction_id` tinyint(2) unsigned NOT NULL,
  `stake_id` tinyint(2) unsigned NOT NULL,
  `stake_value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `direction_id` (`direction_id`),
  KEY `stake_id` (`stake_id`),
  CONSTRAINT `teachers_cost_ibfk_1` FOREIGN KEY (`direction_id`) REFERENCES `teachers_direction` (`id`),
  CONSTRAINT `teachers_cost_ibfk_2` FOREIGN KEY (`stake_id`) REFERENCES `teachers_stake` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Стоимость пед. часа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_cost`
--

LOCK TABLES `teachers_cost` WRITE;
/*!40000 ALTER TABLE `teachers_cost` DISABLE KEYS */;
INSERT INTO `teachers_cost` VALUES (1,1,1,18500),(2,1,2,20200),(3,1,3,21800),(4,1,4,23400),(5,2,1,111),(6,2,2,19800),(7,2,3,21400),(8,2,4,23000);
/*!40000 ALTER TABLE `teachers_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_department`
--

DROP TABLE IF EXISTS `teachers_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_department` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `teachers_id` mediumint(8) unsigned NOT NULL,
  `department_id` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teachers_id` (`teachers_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `teachers_department_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_department`
--

LOCK TABLES `teachers_department` WRITE;
/*!40000 ALTER TABLE `teachers_department` DISABLE KEYS */;
INSERT INTO `teachers_department` VALUES (1,1,4),(2,1,9),(3,2,4);
/*!40000 ALTER TABLE `teachers_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_direction`
--

DROP TABLE IF EXISTS `teachers_direction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_direction` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET cp1251 DEFAULT NULL,
  `slug` varchar(32) CHARACTER SET cp1251 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Направление деятельности';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_direction`
--

LOCK TABLES `teachers_direction` WRITE;
/*!40000 ALTER TABLE `teachers_direction` DISABLE KEYS */;
INSERT INTO `teachers_direction` VALUES (1,'Педагогическая','Пед-я'),(2,'Концертмейстерская','Конц-я');
/*!40000 ALTER TABLE `teachers_direction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_level`
--

DROP TABLE IF EXISTS `teachers_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_level` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `slug` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Образование';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_level`
--

LOCK TABLES `teachers_level` WRITE;
/*!40000 ALTER TABLE `teachers_level` DISABLE KEYS */;
INSERT INTO `teachers_level` VALUES (1,'Высшее образование','ВО'),(2,'Высшее непроф','ВН'),(3,'Неполное высшее','НВ'),(4,'Среднее проф','СП');
/*!40000 ALTER TABLE `teachers_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_position`
--

DROP TABLE IF EXISTS `teachers_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_position` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `slug` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Должность';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_position`
--

LOCK TABLES `teachers_position` WRITE;
/*!40000 ALTER TABLE `teachers_position` DISABLE KEYS */;
INSERT INTO `teachers_position` VALUES (1,'Директор','Дир'),(2,'Заместитель директора','Зам.'),(3,'Руководитель отдела','Рук.отд'),(4,'Преподаватель','Преп');
/*!40000 ALTER TABLE `teachers_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_stake`
--

DROP TABLE IF EXISTS `teachers_stake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_stake` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `slug` varchar(32) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Названия ставок';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_stake`
--

LOCK TABLES `teachers_stake` WRITE;
/*!40000 ALTER TABLE `teachers_stake` DISABLE KEYS */;
INSERT INTO `teachers_stake` VALUES (1,'Без категории','БК',1),(2,'Соответствие категории','СК',1),(3,'Первая категория','ПК',1),(4,'Высшая категория','ВК',1);
/*!40000 ALTER TABLE `teachers_stake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers_work`
--

DROP TABLE IF EXISTS `teachers_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers_work` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `slug` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Вид работы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers_work`
--

LOCK TABLES `teachers_work` WRITE;
/*!40000 ALTER TABLE `teachers_work` DISABLE KEYS */;
INSERT INTO `teachers_work` VALUES (1,'Основная','Осн'),(2,'По совместительству','Совм');
/*!40000 ALTER TABLE `teachers_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,'1','1'),(2,'2','2');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `user_category` smallint(6) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `superadmin` int(6) DEFAULT '0',
  `registration_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bind_to_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_confirmed` int(1) DEFAULT '0',
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8_unicode_ci,
  `first_name` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_timestamp` int(11) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `phone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_optional` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snils` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_key` (`auth_key`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','','$2y$13$K3IKo3DnnP8XKe8/av4nFeonLUBj6dYbI3laoP/RNG5S3lR7Jkr2O',NULL,'artmarkov@mail.ru',0,4,0,1542020942,0,NULL,'',1,NULL,'','Иван','Владимирович','Марков',39301200,1,'+7 (905) 540 07 46','',NULL,'',''),(2,'moder','nQmLWUJSvnvbTd2rbnUMsI0FqNZ4FfXF','$2y$13$2EyTrZHZm3b.SW0q3bUZeephX96nJmFNGncElL.f.UdBm1ainSwoy',NULL,'moder@test.ru',10,1,1534834593,1537261770,0,'127.0.0.1','',0,NULL,NULL,'','','',NULL,0,'','',NULL,'',''),(3,'markov-av','a9mKxr9qlZBTqWe9UujFhBAJhUJdkUTB','$2y$13$0Wd5GfFhBBjS78neY7ClsuJ8Oh8rKqe/27mZdQhd0TiSMPqAlUZW6',NULL,'artmarkov@mail.ru',10,2,1534834683,1538560511,0,'127.0.0.1','',1,NULL,'','Артур','Владимирович','Марков',39301200,0,'+7 (111) 111 11 11','',NULL,'',''),(4,'superadmin','xpOc8O7EpWBTSBLQ27HtpTy41q73_Y_u','$2y$13$PbiA30sN63gCaq1O6SJdaO5SycW0AupC2cZKEiTDEhxiQr5rVHsdS',NULL,'artmarkov@mail.ru',10,1,1534863572,1541488641,1,'127.0.0.1','',0,NULL,'{\"small\":\"\\/uploads\\/avatar\\/avatar_4_1538144607-48x48.jpg\",\"medium \":\"\\/uploads\\/avatar\\/avatar_4_1538144607-96x96.jpg\",\"large\":\"\\/uploads\\/avatar\\/avatar_4_1538144607-144x144.jpg\"}','Артур','Владимирович','Марков',39301200,1,'+7 (905) 540 07 46','+7 (910) 772 45 37',NULL,'Марков Артур Владимирович учился в Ордена Ленина и Октябрьской революции Краснознаменной Высшей Военно-воздушной Инженерной Академии им. Н.Е. Жуковского, по окончании которой ему была присвоена квалификация инженер-электрик-исследователь.\r\n\r\n Марков Артур Владимирович учился в Ордена Ленина и Октябрьской революции Краснознаменной Высшей Военно-воздушной Инженерной Академии им. Н.Е. Жуковского, по окончании которой ему была присвоена квалификация инженер-электрик-исследователь.\r\n\r\nМарков Артур Владимирович учился в Ордена Ленина и Октябрьской революции Краснознаменной Высшей Военно-воздушной Инженерной Академии им. Н.Е. Жуковского, по окончании которой ему была присвоена квалификация инженер-электрик-исследователь.\r\n\r\nМарков Артур Владимирович учился в Ордена Ленина и Октябрьской революции Краснознаменной Высшей Военно-воздушной Инженерной Академии им. Н.Е. Жуковского, по окончании которой ему была присвоена квалификация инженер-электрик-исследователь.\r\n\r\nМарков Артур Владимирович учился в Ордена Лени\r\n\r\n','111-111-111 11'),(12,'markov-a','xnFGa6TdYUZGs-lu7p7qk_2CnTkmhQyt','$2y$13$0.nnMNjmaEVW7iIwoOtNHuS.kwXe9bfVegKKr0qwZgklwdqXnY6Fu',NULL,'artmarkov@mail.ru',10,3,1536650221,1541943760,0,'127.0.0.1','',1,NULL,NULL,'Артур','Владимировичь','Марков',39301200,1,'+7 (111) 111 11 11','',NULL,'','111-111-111 11'),(14,'petrov-vv','joDq5ugpwnvr6VY0S-i0pKUH5qj-d9cO','$2y$13$Z0xKMpDcZIH2ZE8qZ7VrIOPVWIvrSPpajBrcE8oWWlAYahETwdBeK',NULL,'artmarkov@mail.ru',10,2,1540556010,1542015592,0,'127.0.0.1','',0,NULL,NULL,'Виктор','Владимирович','Петров',165531600,1,'+7 (111) 111 11 11','+7 (222) 222 22 22',NULL,'','123-456-789 01'),(16,'batyr-ir',NULL,NULL,NULL,'artmarkov@mail.ru',10,2,1540745850,1540847827,0,NULL,'',0,NULL,NULL,'Ильдар','Рамилевич','Батыршин',566254800,0,'','',NULL,'',''),(17,'ivanov-ii','ON0VkY89hDPPEPhByNWrlE2dlJcOZQzv','KIoeBFx9.5ZfoMt7hxe8Mf9l0WhSsUZF1Cui92Os2fO/mP9TKS',NULL,'artmarkov@mail.ru',10,1,1540747835,1540747835,0,'::1','',0,NULL,NULL,'','','',1286654400,0,'','',NULL,'',''),(20,NULL,NULL,NULL,NULL,NULL,0,4,1541766016,1542013991,0,NULL,NULL,0,NULL,NULL,'Иван','Иванович','Пупкин',566254800,1,'','',NULL,NULL,''),(21,NULL,NULL,NULL,NULL,NULL,0,4,1541768847,1542015658,0,NULL,NULL,0,NULL,NULL,'Иван','Иванович','Зубков',-759121200,1,'','',NULL,NULL,''),(22,NULL,NULL,NULL,NULL,NULL,0,3,1541943878,1541943878,0,NULL,NULL,0,NULL,NULL,'Андрей','Васильевич','Чернов',566254800,1,'+7 (123) 456 78 90','',NULL,NULL,'123-456-789 12'),(23,NULL,NULL,NULL,NULL,NULL,0,3,1541944252,1542020928,0,NULL,NULL,0,NULL,NULL,'Макар','Васильевич','Чернов',597877200,0,'','',NULL,NULL,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_family`
--

DROP TABLE IF EXISTS `user_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_family` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `relation_id` tinyint(2) unsigned DEFAULT NULL,
  `user_main_id` int(11) DEFAULT NULL,
  `user_slave_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_main_id` (`user_main_id`),
  KEY `user_slave_id` (`user_slave_id`),
  KEY `relation_id` (`relation_id`),
  CONSTRAINT `user_family_ibfk_1` FOREIGN KEY (`user_main_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_family_ibfk_2` FOREIGN KEY (`user_slave_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_family_ibfk_3` FOREIGN KEY (`relation_id`) REFERENCES `user_relation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_family`
--

LOCK TABLES `user_family` WRITE;
/*!40000 ALTER TABLE `user_family` DISABLE KEYS */;
INSERT INTO `user_family` VALUES (62,2,12,20),(63,4,12,1),(65,2,23,1);
/*!40000 ALTER TABLE `user_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_params_category`
--

DROP TABLE IF EXISTS `user_params_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_params_category` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_category` mediumint(8) NOT NULL DEFAULT '1' COMMENT 'Категория пользователя ',
  `name` varchar(128) NOT NULL,
  `slug` varchar(127) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `order` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_params_category`
--

LOCK TABLES `user_params_category` WRITE;
/*!40000 ALTER TABLE `user_params_category` DISABLE KEYS */;
INSERT INTO `user_params_category` VALUES (1,1,'1','1',1,0);
/*!40000 ALTER TABLE `user_params_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_relation`
--

DROP TABLE IF EXISTS `user_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_relation` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(127) DEFAULT NULL,
  `slug` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Отношения в семье';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_relation`
--

LOCK TABLES `user_relation` WRITE;
/*!40000 ALTER TABLE `user_relation` DISABLE KEYS */;
INSERT INTO `user_relation` VALUES (1,'Мать','Мать'),(2,'Отец','Отец'),(3,'Бабушка','Баб'),(4,'Дедушка','Дед');
/*!40000 ALTER TABLE `user_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_setting`
--

DROP TABLE IF EXISTS `user_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `user_setting_user_key` (`user_id`,`key`),
  CONSTRAINT `fk_user_id_user_setting_table` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_setting`
--

LOCK TABLES `user_setting` WRITE;
/*!40000 ALTER TABLE `user_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_visit_log`
--

DROP TABLE IF EXISTS `user_visit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` varchar(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `browser` varchar(30) NOT NULL,
  `os` varchar(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visit_log_user_id` (`user_id`),
  CONSTRAINT `fk_user_id_user_visit_log_table` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_visit_log`
--

LOCK TABLES `user_visit_log` WRITE;
/*!40000 ALTER TABLE `user_visit_log` DISABLE KEYS */;
INSERT INTO `user_visit_log` VALUES (1,'5bd2dd340486e','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540545844),(2,'5bd3285dec615','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540565085),(3,'5bd6b9d3bc30d','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540798931),(4,'5bd8cbcc954e5','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1540934604),(5,'5bd8cbe8ca124','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1540934632),(6,'5bd8cd7238358','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1540935026),(7,'5bd8cdefe1b61','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1540935151),(8,'5bd968ff819bd','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540974847),(9,'5bd99b2154178','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540987681),(10,'5bd9b0e24a37e','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540993250),(11,'5bd9b16e644c8','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540993390),(12,'5bd9bc1700c77','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540996119),(13,'5bd9bc693b3b9','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540996201),(14,'5bd9bd39ef00d','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540996409),(15,'5bd9be697042f','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1540996713),(16,'5bdb420a3332b','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1541095946),(17,'5bdb44a1e6a52','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1541096609),(18,'5bdb4b051c640','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1541098245),(19,'5bdb6880691d8','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1541105792),(20,'5bdb6aab6cc66','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1541106347),(21,'5bdb6c9e843b4','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1541106846),(22,'5bdb73b24d06f','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1541108658),(23,'5bdc1849c8bf5','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1541150793),(24,'5be13f425b99d','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1541488450),(25,'5be13fd626eac','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1541488598),(26,'5be145fb7d260','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1541490171),(27,'5be44090dcfe5','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1541685392),(28,'5be6eb43766fc','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1541860163),(29,'5be82701cff97','::1','ru','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36','Chrome','mac',4,1541940993),(30,'5be95cceeb75a','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1542020302),(31,'5be984b4c7d21','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1542030516),(32,'5be98626b76be','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1542030886),(33,'5be98bd02f547','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1542032336),(34,'5bea7b026d811','127.0.0.1','ru','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36','Chrome','Windows',4,1542093570);
/*!40000 ALTER TABLE `user_visit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue_country`
--

DROP TABLE IF EXISTS `venue_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue_country` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(127) NOT NULL,
  `fips` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Страны';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue_country`
--

LOCK TABLES `venue_country` WRITE;
/*!40000 ALTER TABLE `venue_country` DISABLE KEYS */;
INSERT INTO `venue_country` VALUES (0,'no item\r\n',''),(1,'Россия','RU'),(2,'Франция','FR'),(3,'Италия','IT'),(4,'Германия','GR'),(5,'Япония','JP');
/*!40000 ALTER TABLE `venue_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue_district`
--

DROP TABLE IF EXISTS `venue_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue_district` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sity_id` mediumint(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sity_id` (`sity_id`),
  CONSTRAINT `venue_district_ibfk_1` FOREIGN KEY (`sity_id`) REFERENCES `venue_sity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Городские округа и районы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue_district`
--

LOCK TABLES `venue_district` WRITE;
/*!40000 ALTER TABLE `venue_district` DISABLE KEYS */;
INSERT INTO `venue_district` VALUES (0,0,'no item',''),(1,1,'Центральный административный округ','ЦАО'),(2,1,'Северозападный административный округ','СЗАО'),(3,1,'Северный административный округ','САО'),(4,1,'Северо-Восточный административный округ','СВАО'),(5,1,'Восточный административный округ','ВАО'),(6,1,'Юго-Восточный административный округ','ЮВАО'),(7,1,'Южный административный округ','ЮАО'),(8,1,'Юго-Западный административный округ','ЮЗАО'),(9,1,'Западный административный округ','ЗАО'),(10,1,'Зеленоградский административный округ','ЗелАО'),(11,1,'Троицкий и Новомосковский административный округ','ТинАО');
/*!40000 ALTER TABLE `venue_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue_place`
--

DROP TABLE IF EXISTS `venue_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue_place` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `country_id` mediumint(8) NOT NULL,
  `sity_id` mediumint(8) NOT NULL,
  `district_id` mediumint(8) NOT NULL,
  `name` varchar(127) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(24) NOT NULL,
  `phone_optional` varchar(24) NOT NULL,
  `email` varchar(255) NOT NULL,
  `сontact_person` varchar(127) NOT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  KEY `sity_id` (`sity_id`),
  KEY `district_id` (`district_id`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `venue_place_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `venue_country` (`id`),
  CONSTRAINT `venue_place_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `venue_district` (`id`),
  CONSTRAINT `venue_place_ibfk_3` FOREIGN KEY (`sity_id`) REFERENCES `venue_sity` (`id`),
  CONSTRAINT `venue_place_ibfk_4` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  CONSTRAINT `venue_place_ibfk_5` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='Место проведения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue_place`
--

LOCK TABLES `venue_place` WRITE;
/*!40000 ALTER TABLE `venue_place` DISABLE KEYS */;
INSERT INTO `venue_place` VALUES (1,1,1,1,'Московский государственный колледж музыкального исполнительства имени Ф.Шопена','ул. Садовая-Каретная, дом 4-6, строение 7','+7 (495) 699 70 27','','info@mgkmi.ru','',55.771511,37.606831,'',1539164286,1539849257,4,4),(2,1,1,1,'Детская музыкальная школа имени Ю.А.Шапорина «Московский государственный институт музыки имени А.Г.Шнитке»','ул.Садовая-Сухаревская, дом 7','+7 (495) 694 04 96','','schnittke@yandex.ru','',NULL,NULL,'',1539164384,1539165637,4,4),(3,1,1,1,'Детская музыкальная школа имени В.И.Мурадели','ул. Пречистенка, дом 32/1 стр. 1','+7 (495) 637 37 83','','tokmakovms_I_@yandex.ru','',NULL,NULL,'',1539164434,1539165626,4,4),(4,1,1,1,'Московская городская детская музыкальная школа имени С.С.Прокофьева','Токмаков пер., дом 8','+7 (499) 261 03 83','','tokmakovmsI@yandex.ru','',NULL,NULL,'',1539164468,1539164468,4,4),(5,1,1,1,'Детская музыкальная школа имени К.Н.Игумнова','ул. Покровка, дом 39, стр. 3','+7 (495) 917 56 77','','igumnovschool@yandex.ru','',NULL,NULL,'',1539164497,1539164497,4,4),(6,1,1,1,'Детская музыкальная школа, имени В.В.Стасова','Малый Строченовский пер., дом 14','+7 (499) 236 18 15','+7 (499) 236 30 72','dmsh36stasova@mait.ru','',NULL,NULL,'',1539164525,1539164525,4,4),(7,1,1,1,'Детская музыкальная школа имени Л.Бетховена','Большой Могильцевский пер., дом 4-6','+7 (499) 241 41 23','','beethoven-sch@mail.ru','',NULL,NULL,'',1539164557,1539164557,4,4),(8,1,1,1,'Детская музыкальная школа имени А.К.Лядова','ул. 1905 года, дом 8','+7 (499) 252 26 23','','dmsh-ljadova@yandex.ru','',NULL,NULL,'',1539164587,1539164587,4,4),(9,1,1,1,'Детская музыкальная школа имени Д.Б.Кабалевского','ул. Палиха дом 14/33, стр. 1','+7 (499) 973 22 47','','9784364@mail.ru','',NULL,NULL,'',1539164629,1539164629,4,4),(10,1,1,1,'Детская школа искусств «Старт» архитсктурно-художественного профиля','ул. Зоологическая, дом 18','+7 (499) 766 29 79','+7 (499) 766 21 72','startartschooi@gmail.com','',NULL,NULL,'',1539164672,1539164672,4,4),(11,1,1,1,'Детская школа искусств имени Д.С.Бортнянского','ул. Садовническая, дом 19 стр. 1','+7 (495) 953 91 39','+7 (495) 953 54 41','postbortnyanskiy@mail.ru','',NULL,NULL,'',1539164706,1539164706,4,4),(12,1,1,1,'Детская школа искусств имени Н.Г.Рубинштейна','Верхняя Красносельская д. 7 А стр 1','+7 (499) 264 89 47','','dmsrubinstein@mail.ru','',NULL,NULL,'',1539164737,1539164737,4,4),(13,1,1,1,'Детская  музыкальная школа им, Р.М.Глиэра','Большая Якиманка 29','+7 (297) 499 23 87','+7 (499) 238 12 00','info@glier7.ru','',NULL,NULL,'',1539164784,1539164784,4,4),(14,1,1,1,'Детская музыкально-хоровая школа  имени И.И.Радченко','ул. Воронцовская, д.30, А','+7 (495) 912 75 85','','ms-radchenko@yandex.ru','',NULL,NULL,'',1539164825,1539164825,4,4),(15,1,1,1,'Московская городская детская музыкальная школа имени В.М.Блажевича','ул. Трёхгорный Вал, 2-4 с1','+7 (495) 605 94 36','','mail@ms80.ru','',NULL,NULL,'',1539164946,1539164946,4,4),(16,1,1,1,'Московская государственная,специализированная школа акварели Сергея Андрияки с музейно-выставочным комплексом','1 Гороховский переулок, дом 17','+7 (495) 632 18 17','','sheryshowa@yandex.ru','',NULL,NULL,'',1539165042,1539165042,4,4),(17,1,1,1,'Детская музыкальная школа имени В.А.Моцарта','Таганская ул., д. 9, строение 5','+7 (495) 911 99 95','+7 (495) 912 14 28','mozart_00@mail.ru','',NULL,NULL,'',1539165078,1539165078,4,4),(18,1,1,1,'Детская музыкальная школа имени В Ф.Одоевского','Докучаев переулок, дом 7, стр. 1, 2','+7 (499) 975 43 74','+7 (499) 975 37 35','odoevsky-dmsh@list.ru','',NULL,NULL,'',1539165107,1539165107,4,4),(19,1,1,1,'Детская музыкальная школа имени Дж Гершвина','ул. Садовничёская, дом 48 стр.3','+7 (495) 951 43 42','+7 (495) 951 43 43','dmsh6@rambler.ru','',NULL,NULL,'',1539165155,1539165155,4,4),(20,1,1,1,'Детская музыкальная школа №100','Бальшая Переяславская, дом 8а','+7 (495) 684 50 58','','dmshlOO@mail.ru','',NULL,NULL,'',1539165180,1539165180,4,4),(21,1,1,1,'Детская музыкальная школа имени Н.А.Алексеева','ул. Николоямская, д 42','+7 (495) 915 31 51','','lexeev-school@yandex.ru','',NULL,NULL,'',1539165248,1539165248,4,4),(22,1,1,1,'Детская музыкальная школа имени М.М.Ипполитова-Иванова','ул. Воронцовская, дом 15/10 стр. 1','+7 (495) 912 59 93','','ippolitovec@mail.ru','',NULL,NULL,'',1539165284,1539165284,4,4),(23,1,1,1,'Детская музыкальная школа имени Н.П Осипова','просп. Мира, 71, стр. 3','+7 (495) 681 35 62','','sch-osipov@bk.ru','',NULL,NULL,'',1539165338,1539165338,4,4),(24,1,1,1,'Детская музыкальная школа имени С.И.Танеева','Чистый пер., 9','+7 (495) 637 35 60','','taneev25@mail.ru','',NULL,NULL,'',1539165417,1539165417,4,4),(25,1,1,1,'Детская художественная школа имени В. А. Ватагина','Переяславская ул,7/2, стр. 1','+7 (495) 681 82 00','','artschool-3@yandex.ru','',NULL,NULL,'',1539165462,1539165462,4,4),(26,1,1,1,'Детская музыкальная школа имени П.Г.Чеснокова','ул. Трехгорный Вал д.2/4 стр.1','+7 (499) 255 59 96','','chesnokovschool@mail.ru','',NULL,NULL,'',1539165565,1539165572,4,4),(27,1,1,2,'Детская музыкальная школа имени Я.В.Флиера','ул. Маршала Новикова, дом 16','+7 (499) 193 44 89','','dmshflier_16@mail.ru','',NULL,NULL,'',1539183299,1539183299,4,4),(28,1,1,2,'Детская музыкальная школа имени Л.Н.Оборина','ул. Долгова, д. 12','+7 (495) 491 14 03','+7 (495) 491 53 30','dmsh_17oborina@mail.ru','',NULL,NULL,'',1539183341,1539183341,4,4),(29,1,1,2,'Детская музыкальная школа имени В.В.Андреева','ул. Живописная, дом 1','+7 (495) 942 21 33','+7 (495) 942 05 52','dmsh_andreev@mail.ru','',NULL,NULL,'',1539183384,1539183384,4,4),(30,1,1,2,'Детская музыкальная школа имени Т.А.Докшицера',' ул. Маршала Катукова, дом 2, корп. 1','+7 (495) 756 50 09','+7 (495) 757 99 67','dmsh95@yandex.ru','',NULL,NULL,'',1539183440,1539183440,4,4),(31,1,1,2,'Детская музыкальная школа имени Н.С.Голованова','ул. Мневники дом 7 корп. 1','+7 (499) 946 26 30','','dmsh.golovanova@yandex.ru','',NULL,NULL,'',1539183471,1539183471,4,4),(32,1,1,2,'Детская школа искусств \"Надежда\"','улица Академика Курчатова, дома 23/13','+7 (495) 942 40 27','','dshi4nadezhda@ya.ru','',NULL,NULL,'',1539183520,1539183520,4,4),(33,1,1,2,'Детская музыкальная школа имени С.М.Майкапара','улица Маршала Катукова, 19, корпус 3','+7 (495) 750 07 17','+7 (495) 757 42 64','msm_school@mail.ru','',NULL,NULL,'',1539183562,1539183562,4,4),(34,1,1,2,'Детская художественная школа имени В.Ф.Стожарова','ул. Народного Ополчения, 7, корп. 2','+7 (499) 199 02 42','','','',NULL,NULL,'',1539183626,1539183626,4,4);
/*!40000 ALTER TABLE `venue_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue_sity`
--

DROP TABLE IF EXISTS `venue_sity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue_sity` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `country_id` mediumint(8) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `venue_sity_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `venue_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Города';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue_sity`
--

LOCK TABLES `venue_sity` WRITE;
/*!40000 ALTER TABLE `venue_sity` DISABLE KEYS */;
INSERT INTO `venue_sity` VALUES (0,0,'no item',NULL,NULL),(1,1,'Москва',55.753960,37.620392),(2,1,'Санкт-Петербург',NULL,NULL);
/*!40000 ALTER TABLE `venue_sity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-13 10:20:52