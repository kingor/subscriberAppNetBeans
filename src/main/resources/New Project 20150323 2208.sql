-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.23


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema subscriber_db
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ subscriber_db;
USE subscriber_db;

--
-- Table structure for table `subscriber_db`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `subscriber_db`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`,`categoryName`) VALUES 
 (1,'Администратор'),
 (2,'Оператор'),
 (3,'Пользователь');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `subscriber_db`.`log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(10) unsigned NOT NULL DEFAULT '1',
  `date` datetime NOT NULL DEFAULT '2015-03-03 00:00:00',
  `type` varchar(10) NOT NULL DEFAULT '',
  `comment` varchar(230) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK1A3443A30F61D` (`id_user`),
  CONSTRAINT `FK1A3443A30F61D` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `subscriber_db`.`log`
--

/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (1,1,'2001-03-20 14:00:00','info','insert'),
 (2,1,'2015-03-18 07:33:20','Update','1111111111111'),
 (3,1,'2015-03-18 07:53:40','Update',''),
 (4,1,'2015-03-18 07:55:03','Update',''),
 (5,1,'2015-03-18 07:56:55','Update',''),
 (6,1,'2015-03-18 08:00:52','Update','ФИО: qwe--->Иванов А.В.   Адрес: rtyr--->ул. Жореса   '),
 (7,1,'2015-03-18 08:07:49','Update','ФИО: hvjjghj--->Комов П.Р.   '),
 (8,1,'2015-03-18 08:08:10','Update','Адрес: rrrrrr--->ул. Аналитиков   '),
 (9,1,'2015-03-19 07:58:36','Update','Адрес: kkkkkkk--->ул. Иванова   '),
 (10,1,'2015-03-19 08:52:17','Update','Адрес: ул. Интузиастов, д.123--->ул. Интузиастов, д.121   '),
 (11,3,'2015-03-19 09:02:37','Update','Адрес: ул. Иванова--->ул. Иванова, д.55   '),
 (12,1,'2015-03-19 14:27:56','Update','Адрес: ловыраловыр--->ул. Сосновая   '),
 (13,1,'2015-03-19 14:36:42','Create','ФИО: Пупкин В.А.   Адрес: ул. Ленина   ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (14,1,'2015-03-19 14:38:52','Update','Адрес: ул. Ленина--->ул. Ленина, д.56, кв. 11   '),
 (16,1,'2015-03-19 14:47:53','Create','ФИО: 123456   Адрес: 1234   '),
 (17,1,'2015-03-19 15:41:45','Create','Логин: user3|||Имя: User3|||Категория: 2|||'),
 (19,1,'2015-03-19 17:30:20','Update',''),
 (20,1,'2015-03-19 17:31:02','Create','Логин: admin2   Имя: admin2   Категория: 0   '),
 (21,7,'2015-03-19 17:32:44','Update','Логин: operator5--->operator   '),
 (22,7,'2015-03-19 17:34:30','Update','Логин: operator--->operator3   Пароль: operator--->operator3   Имя: Иванов Иван Иванович--->Иванов Иван Иванович3   '),
 (23,7,'2015-03-20 08:18:46','Delete','Логин: user3--->   Имя: User3--->   Категория: 3--->   '),
 (24,7,'2015-03-20 14:35:03','Update','Имя: Пользователь--->Пользователь user   Категория: 3--->2   '),
 (25,7,'2015-03-20 14:40:56','Create','Логин: admin3   Имя: Администратор3   Категория: 0   ');
INSERT INTO `log` (`id`,`id_user`,`date`,`type`,`comment`) VALUES 
 (26,1,'2015-03-21 17:12:12','Update','Адрес: д. Петровичи, --->д. Петровичи, 333   '),
 (27,1,'2015-03-23 07:35:52','Create','ФИО: ККК   Адрес: аааа   '),
 (28,1,'2015-03-23 07:36:40','Update','Адрес: аааа--->шшшшш   '),
 (29,1,'2015-03-23 09:03:51','Update','ФИО: 123456--->123456g   '),
 (30,1,'2015-03-23 09:03:59','Update',''),
 (31,1,'2015-03-23 13:54:36','Update','');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;


--
-- Table structure for table `subscriber_db`.`phone`
--

DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(10) NOT NULL DEFAULT '',
  `band` varchar(10) NOT NULL DEFAULT '',
  `security` varchar(10) NOT NULL DEFAULT '',
  `adsl` varchar(10) NOT NULL DEFAULT '',
  `id_subscriber` bigint(20) unsigned NOT NULL DEFAULT '0',
  `subscriber` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `subscriber_db`.`phone`
--

/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` (`id`,`number`,`band`,`security`,`adsl`,`id_subscriber`,`subscriber`) VALUES 
 (1,'123123','123123','123','123',1,1),
 (2,'234234','345345','34','345',1,1),
 (3,'1','2','3','4',17,0),
 (4,'321','356','789','876',19,0),
 (5,'123','123','123','567',20,0),
 (6,'1234567','12345','1234','123',22,0),
 (7,'234','456','658','768',23,0);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;


--
-- Table structure for table `subscriber_db`.`subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET cp1251 NOT NULL DEFAULT '',
  `address` varchar(100) CHARACTER SET cp1251 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscriber_db`.`subscriber`
--

/*!40000 ALTER TABLE `subscriber` DISABLE KEYS */;
INSERT INTO `subscriber` (`id`,`name`,`address`) VALUES 
 (1,'Петров И.И.','ул. Сосновая'),
 (2,'Smirnov v.v.','ул. Ленина, д.15, кв.1'),
 (3,'Джуманиязов Вениямин Венияминович','д. Петровичи, 333'),
 (5,'Семенов Семен Семенович','ул. Интузиастов, д.121'),
 (10,'Комов П.Р.','ул. Аналитиков'),
 (12,'Иванов С.М.','ул. Иванова, д.55'),
 (17,'Плюсов В.С.','ул. Молова, д.56'),
 (19,'Сомов В.В.','ул.Семинианов, д.15'),
 (20,'Пупкин В.А.','ул. Ленина, д.56, кв. 11'),
 (21,'123456g','123456'),
 (22,'123456','1234'),
 (23,'ККК','шшшшш');
/*!40000 ALTER TABLE `subscriber` ENABLE KEYS */;


--
-- Table structure for table `subscriber_db`.`user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) CHARACTER SET cp1251 NOT NULL DEFAULT '',
  `password` varchar(20) CHARACTER SET cp1251 NOT NULL DEFAULT '',
  `name` varchar(45) CHARACTER SET cp1251 NOT NULL DEFAULT '',
  `category` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscriber_db`.`user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`login`,`password`,`name`,`category`) VALUES 
 (1,'admin','admin','Администратор',1),
 (2,'user','user','Пользователь user',2),
 (3,'operator3','operator3','Иванов Иван Иванович3',2),
 (4,'user3','user3','User3',3),
 (7,'admin2','admin2','admin2',1),
 (8,'admin3','admin3','Администратор3',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
