-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: laravel_base
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL),(2,0,2,'Admin','fa-tasks','',NULL,NULL,NULL),(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),(8,0,8,'Productos','fa-cube','/',NULL,'2023-03-28 05:40:29','2023-03-28 05:40:50'),(9,8,0,'Producto','fa-arrow-right','/products',NULL,'2023-03-28 07:29:35','2023-03-28 07:30:55');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_operation_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (104,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-27 23:18:23','2023-03-27 23:18:23'),(105,1,'admin/auth/users','GET','127.0.0.1','[]','2023-03-27 23:20:44','2023-03-27 23:20:44'),(106,1,'admin/auth/users','GET','127.0.0.1','[]','2023-03-27 23:25:18','2023-03-27 23:25:18'),(107,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-27 23:25:22','2023-03-27 23:25:22'),(108,1,'admin/auth/users','GET','127.0.0.1','[]','2023-03-27 23:25:22','2023-03-27 23:25:22'),(109,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-27 23:25:30','2023-03-27 23:25:30'),(110,1,'admin/auth/users','GET','127.0.0.1','[]','2023-03-27 23:25:30','2023-03-27 23:25:30'),(111,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-27 23:25:53','2023-03-27 23:25:53'),(112,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:28:51','2023-03-27 23:28:51'),(113,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:29:01','2023-03-27 23:29:01'),(114,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:30:35','2023-03-27 23:30:35'),(115,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:31:02','2023-03-27 23:31:02'),(116,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:31:14','2023-03-27 23:31:14'),(117,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:31:52','2023-03-27 23:31:52'),(118,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:32:30','2023-03-27 23:32:30'),(119,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:32:53','2023-03-27 23:32:53'),(120,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:33:19','2023-03-27 23:33:19'),(121,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:33:48','2023-03-27 23:33:48'),(122,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:34:44','2023-03-27 23:34:44'),(123,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:34:48','2023-03-27 23:34:48'),(124,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:35:11','2023-03-27 23:35:11'),(125,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:36:22','2023-03-27 23:36:22'),(126,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:36:39','2023-03-27 23:36:39'),(127,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:37:03','2023-03-27 23:37:03'),(128,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:37:33','2023-03-27 23:37:33'),(129,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:38:13','2023-03-27 23:38:13'),(130,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-27 23:38:16','2023-03-27 23:38:16'),(131,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:40:53','2023-03-27 23:40:53'),(132,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:41:11','2023-03-27 23:41:11'),(133,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:43:59','2023-03-27 23:43:59'),(134,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:53:02','2023-03-27 23:53:02'),(135,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:54:19','2023-03-27 23:54:19'),(136,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:55:05','2023-03-27 23:55:05'),(137,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:55:28','2023-03-27 23:55:28'),(138,1,'admin','GET','127.0.0.1','[]','2023-03-27 23:55:58','2023-03-27 23:55:58'),(139,1,'admin','GET','127.0.0.1','[]','2023-03-28 00:22:23','2023-03-28 00:22:23'),(140,1,'admin','GET','127.0.0.1','[]','2023-03-28 00:23:36','2023-03-28 00:23:36'),(141,1,'admin','GET','127.0.0.1','[]','2023-03-28 00:24:09','2023-03-28 00:24:09'),(142,1,'admin','GET','127.0.0.1','[]','2023-03-28 00:25:18','2023-03-28 00:25:18'),(143,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 00:25:24','2023-03-28 00:25:24'),(144,1,'admin','GET','127.0.0.1','[]','2023-03-28 04:41:22','2023-03-28 04:41:22'),(145,1,'admin','GET','127.0.0.1','[]','2023-03-28 04:47:51','2023-03-28 04:47:51'),(146,1,'admin','GET','127.0.0.1','[]','2023-03-28 04:53:59','2023-03-28 04:53:59'),(147,1,'admin','GET','127.0.0.1','[]','2023-03-28 05:21:27','2023-03-28 05:21:27'),(148,1,'admin','GET','127.0.0.1','[]','2023-03-28 05:22:27','2023-03-28 05:22:27'),(149,1,'admin','GET','127.0.0.1','[]','2023-03-28 05:22:47','2023-03-28 05:22:47'),(150,1,'admin','GET','127.0.0.1','[]','2023-03-28 05:25:01','2023-03-28 05:25:01'),(151,1,'admin','GET','127.0.0.1','[]','2023-03-28 05:25:22','2023-03-28 05:25:22'),(152,1,'admin','GET','127.0.0.1','[]','2023-03-28 05:28:27','2023-03-28 05:28:27'),(153,1,'admin','GET','127.0.0.1','[]','2023-03-28 05:29:40','2023-03-28 05:29:40'),(154,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:29:46','2023-03-28 05:29:46'),(155,1,'admin','GET','127.0.0.1','[]','2023-03-28 05:31:10','2023-03-28 05:31:10'),(156,1,'admin','GET','127.0.0.1','[]','2023-03-28 05:31:19','2023-03-28 05:31:19'),(157,1,'admin','GET','127.0.0.1','[]','2023-03-28 05:36:33','2023-03-28 05:36:33'),(158,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:38:24','2023-03-28 05:38:24'),(159,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:38:42','2023-03-28 05:38:42'),(160,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:39:30','2023-03-28 05:39:30'),(161,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:39:36','2023-03-28 05:39:36'),(162,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Productos\",\"icon\":\"fa-cube\",\"uri\":\"\\/\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\"}','2023-03-28 05:40:29','2023-03-28 05:40:29'),(163,1,'admin/auth/menu','GET','127.0.0.1','[]','2023-03-28 05:40:30','2023-03-28 05:40:30'),(164,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}','2023-03-28 05:40:50','2023-03-28 05:40:50'),(165,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:40:50','2023-03-28 05:40:50'),(166,1,'admin/auth/menu','GET','127.0.0.1','[]','2023-03-28 05:40:52','2023-03-28 05:40:52'),(167,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:40:55','2023-03-28 05:40:55'),(168,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:41:04','2023-03-28 05:41:04'),(169,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:41:07','2023-03-28 05:41:07'),(170,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:41:12','2023-03-28 05:41:12'),(171,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:41:18','2023-03-28 05:41:18'),(172,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:41:33','2023-03-28 05:41:33'),(173,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:41:36','2023-03-28 05:41:36'),(174,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:41:45','2023-03-28 05:41:45'),(175,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:41:46','2023-03-28 05:41:46'),(176,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:42:29','2023-03-28 05:42:29'),(177,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:42:33','2023-03-28 05:42:33'),(178,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:42:36','2023-03-28 05:42:36'),(179,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:42:51','2023-03-28 05:42:51'),(180,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 05:42:53','2023-03-28 05:42:53'),(181,1,'admin','GET','127.0.0.1','[]','2023-03-28 07:27:04','2023-03-28 07:27:04'),(182,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:27:12','2023-03-28 07:27:12'),(183,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:27:13','2023-03-28 07:27:13'),(184,1,'admin/auth/users','GET','127.0.0.1','[]','2023-03-28 07:28:09','2023-03-28 07:28:09'),(185,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:28:13','2023-03-28 07:28:13'),(186,1,'admin/demo/users','GET','127.0.0.1','[]','2023-03-28 07:28:33','2023-03-28 07:28:33'),(187,1,'admin/demo/products','GET','127.0.0.1','[]','2023-03-28 07:28:43','2023-03-28 07:28:43'),(188,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:28:51','2023-03-28 07:28:51'),(189,1,'admin/demo/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:28:54','2023-03-28 07:28:54'),(190,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:29:00','2023-03-28 07:29:00'),(191,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:29:04','2023-03-28 07:29:04'),(192,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Producto\",\"icon\":\"fa-arrow-right\",\"uri\":\"\\/admin\\/demo\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\"}','2023-03-28 07:29:34','2023-03-28 07:29:34'),(193,1,'admin/auth/menu','GET','127.0.0.1','[]','2023-03-28 07:29:35','2023-03-28 07:29:35'),(194,1,'admin/auth/menu/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:29:42','2023-03-28 07:29:42'),(195,1,'admin/auth/menu/9','PUT','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Producto\",\"icon\":\"fa-arrow-right\",\"uri\":\"\\/demo\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/auth\\/menu\"}','2023-03-28 07:29:47','2023-03-28 07:29:47'),(196,1,'admin/auth/menu','GET','127.0.0.1','[]','2023-03-28 07:29:47','2023-03-28 07:29:47'),(197,1,'admin','GET','127.0.0.1','[]','2023-03-28 07:29:56','2023-03-28 07:29:56'),(198,1,'admin/demo/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:29:58','2023-03-28 07:29:58'),(199,1,'admin','GET','127.0.0.1','[]','2023-03-28 07:30:40','2023-03-28 07:30:40'),(200,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:30:44','2023-03-28 07:30:44'),(201,1,'admin/auth/menu/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:30:49','2023-03-28 07:30:49'),(202,1,'admin/auth/menu/9','PUT','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Producto\",\"icon\":\"fa-arrow-right\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/auth\\/menu\"}','2023-03-28 07:30:55','2023-03-28 07:30:55'),(203,1,'admin/auth/menu','GET','127.0.0.1','[]','2023-03-28 07:30:55','2023-03-28 07:30:55'),(204,1,'admin/auth/menu','GET','127.0.0.1','[]','2023-03-28 07:31:06','2023-03-28 07:31:06'),(205,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:31:09','2023-03-28 07:31:09'),(206,1,'admin/products/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:31:11','2023-03-28 07:31:11'),(207,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 07:31:11','2023-03-28 07:31:11'),(208,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 07:34:37','2023-03-28 07:34:37'),(209,1,'admin/products/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:34:39','2023-03-28 07:34:39'),(210,1,'admin/products','POST','127.0.0.1','{\"active\":\"on\",\"title\":\"Laptop usada\",\"descripcion\":\"Se vende lapto usada en buen estado\",\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/products\"}','2023-03-28 07:36:13','2023-03-28 07:36:13'),(211,1,'admin/products/create','GET','127.0.0.1','[]','2023-03-28 07:36:14','2023-03-28 07:36:14'),(212,1,'admin/products/create','GET','127.0.0.1','[]','2023-03-28 07:36:18','2023-03-28 07:36:18'),(213,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:37:30','2023-03-28 07:37:30'),(214,1,'admin/products/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:38:09','2023-03-28 07:38:09'),(215,1,'admin/products','POST','127.0.0.1','{\"active\":\"off\",\"title\":\"Producto 1\",\"descripcion\":\"Descripci\\u00f3n del producto 1\",\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/products\"}','2023-03-28 07:38:30','2023-03-28 07:38:30'),(216,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 07:38:30','2023-03-28 07:38:30'),(217,1,'admin/products/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:38:35','2023-03-28 07:38:35'),(218,1,'admin/products','POST','127.0.0.1','{\"active\":\"on\",\"title\":\"Producto 2\",\"descripcion\":\"Descripci\\u00f3n del producto 2\",\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/products\"}','2023-03-28 07:39:27','2023-03-28 07:39:27'),(219,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 07:39:27','2023-03-28 07:39:27'),(220,1,'admin/products/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:43:12','2023-03-28 07:43:12'),(221,1,'admin/products/1','GET','127.0.0.1','[]','2023-03-28 07:45:10','2023-03-28 07:45:10'),(222,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:45:45','2023-03-28 07:45:45'),(223,1,'admin/products/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:45:58','2023-03-28 07:45:58'),(224,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:46:00','2023-03-28 07:46:00'),(225,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:46:01','2023-03-28 07:46:01'),(226,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 07:51:12','2023-03-28 07:51:12'),(227,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 07:52:01','2023-03-28 07:52:01'),(228,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 07:55:01','2023-03-28 07:55:01'),(229,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:55:08','2023-03-28 07:55:08'),(230,1,'admin/products/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:55:11','2023-03-28 07:55:11'),(231,1,'admin/products/1','GET','127.0.0.1','[]','2023-03-28 07:55:23','2023-03-28 07:55:23'),(232,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:55:30','2023-03-28 07:55:30'),(233,1,'admin/products/1','PUT','127.0.0.1','{\"active\":\"on\",\"title\":\"Producto 1\",\"descripcion\":\"Descripci\\u00f3n del producto 1\",\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/products\\/1\"}','2023-03-28 07:55:37','2023-03-28 07:55:37'),(234,1,'admin/products/1','GET','127.0.0.1','[]','2023-03-28 07:55:38','2023-03-28 07:55:38'),(235,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:55:39','2023-03-28 07:55:39'),(236,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:55:42','2023-03-28 07:55:42'),(237,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 07:56:21','2023-03-28 07:56:21'),(238,1,'admin/products/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 07:57:28','2023-03-28 07:57:28'),(239,1,'admin/products/1','GET','127.0.0.1','[]','2023-03-28 08:00:56','2023-03-28 08:00:56'),(240,1,'admin/products/1','GET','127.0.0.1','[]','2023-03-28 08:01:44','2023-03-28 08:01:44'),(241,1,'admin/products/1','GET','127.0.0.1','[]','2023-03-28 08:02:55','2023-03-28 08:02:55'),(242,1,'admin/products/1','GET','127.0.0.1','[]','2023-03-28 08:03:32','2023-03-28 08:03:32'),(243,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:03:46','2023-03-28 08:03:46'),(244,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:06:36','2023-03-28 08:06:36'),(245,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:07:09','2023-03-28 08:07:09'),(246,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:08:17','2023-03-28 08:08:17'),(247,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:09:41','2023-03-28 08:09:41'),(248,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:11:50','2023-03-28 08:11:50'),(249,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:13:24','2023-03-28 08:13:24'),(250,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:15:06','2023-03-28 08:15:06'),(251,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:15:11','2023-03-28 08:15:11'),(252,1,'admin/products/1','PUT','127.0.0.1','{\"active\":\"on\",\"title\":\"Producto 1\",\"descripcion\":\"Descripci\\u00f3n del producto 1\",\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/products\"}','2023-03-28 08:15:31','2023-03-28 08:15:31'),(253,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:15:31','2023-03-28 08:15:31'),(254,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:15:38','2023-03-28 08:15:38'),(255,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:15:39','2023-03-28 08:15:39'),(256,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:15:42','2023-03-28 08:15:42'),(257,1,'admin/products/1','PUT','127.0.0.1','{\"active\":\"off\",\"title\":\"Producto 1\",\"descripcion\":\"Descripci\\u00f3n del producto 1\",\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/products\"}','2023-03-28 08:15:47','2023-03-28 08:15:47'),(258,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:15:48','2023-03-28 08:15:48'),(259,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:15:50','2023-03-28 08:15:50'),(260,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:16:04','2023-03-28 08:16:04'),(261,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:16:08','2023-03-28 08:16:08'),(262,1,'admin/products/1','PUT','127.0.0.1','{\"active\":\"on\",\"title\":\"Producto 1\",\"descripcion\":\"Descripci\\u00f3n del producto 1\",\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/products\"}','2023-03-28 08:16:11','2023-03-28 08:16:11'),(263,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 08:16:12','2023-03-28 08:16:12'),(264,1,'admin/products','GET','127.0.0.1','{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}','2023-03-28 08:16:18','2023-03-28 08:16:18'),(265,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:22:04','2023-03-28 08:22:04'),(266,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:22:07','2023-03-28 08:22:07'),(267,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:22:11','2023-03-28 08:22:11'),(268,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:22:15','2023-03-28 08:22:15'),(269,1,'admin/auth/menu/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:22:17','2023-03-28 08:22:17'),(270,1,'admin/auth/menu/9','PUT','127.0.0.1','{\"parent_id\":\"8\",\"title\":\"Producto\",\"icon\":\"fa-arrow-right\",\"uri\":\"\\/products\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/auth\\/menu\"}','2023-03-28 08:22:22','2023-03-28 08:22:22'),(271,1,'admin/auth/menu','GET','127.0.0.1','[]','2023-03-28 08:22:23','2023-03-28 08:22:23'),(272,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:22:26','2023-03-28 08:22:26'),(273,1,'admin/auth/users/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:22:30','2023-03-28 08:22:30'),(274,1,'admin/auth/users/2','PUT','127.0.0.1','{\"username\":\"dataside\",\"name\":\"Ciro\",\"password\":\"$2y$10$0cfc9JxMOEKodA2ExbO0BOtmDgdhNU6\\/bDSJdbxnZ06EjFDmocmAW\",\"password_confirmation\":\"$2y$10$0cfc9JxMOEKodA2ExbO0BOtmDgdhNU6\\/bDSJdbxnZ06EjFDmocmAW\",\"roles\":[\"2\",null],\"permissions\":[\"2\",\"3\",\"4\",null],\"_token\":\"vejgnfHtulcgeKTKpUDVOGR8ht2gEOTT3DCa9ate\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/auth\\/users\"}','2023-03-28 08:22:36','2023-03-28 08:22:36'),(275,1,'admin/auth/users','GET','127.0.0.1','[]','2023-03-28 08:22:36','2023-03-28 08:22:36'),(276,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:22:45','2023-03-28 08:22:45'),(277,1,'admin','GET','127.0.0.1','[]','2023-03-28 08:22:49','2023-03-28 08:22:49'),(278,1,'admin/auth/login','GET','127.0.0.1','[]','2023-03-28 08:22:52','2023-03-28 08:22:52'),(279,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:22:56','2023-03-28 08:22:56'),(280,2,'admin','GET','127.0.0.1','[]','2023-03-28 08:23:02','2023-03-28 08:23:02'),(281,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:23:05','2023-03-28 08:23:05'),(282,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:23:06','2023-03-28 08:23:06'),(283,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:23:13','2023-03-28 08:23:13'),(284,2,'admin','GET','127.0.0.1','[]','2023-03-28 08:23:44','2023-03-28 08:23:44'),(285,2,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:23:57','2023-03-28 08:23:57'),(286,2,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:24:00','2023-03-28 08:24:00'),(287,2,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:24:03','2023-03-28 08:24:03'),(288,2,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:24:07','2023-03-28 08:24:07'),(289,2,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:24:12','2023-03-28 08:24:12'),(290,1,'admin','GET','127.0.0.1','[]','2023-03-28 08:24:23','2023-03-28 08:24:23'),(291,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:24:27','2023-03-28 08:24:27'),(292,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:24:34','2023-03-28 08:24:34'),(293,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:24:53','2023-03-28 08:24:53'),(294,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:25:02','2023-03-28 08:25:02'),(295,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"Productos\",\"name\":null,\"http_method\":[null],\"http_path\":null,\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/auth\\/permissions\"}','2023-03-28 08:25:13','2023-03-28 08:25:13'),(296,1,'admin/auth/permissions/create','GET','127.0.0.1','[]','2023-03-28 08:25:13','2023-03-28 08:25:13'),(297,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:25:26','2023-03-28 08:25:26'),(298,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:25:48','2023-03-28 08:25:48'),(299,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"productos\",\"name\":\"admin.productos\",\"http_method\":[\"GET\",\"POST\",\"PUT\",\"DELETE\",\"PATCH\",\"OPTIONS\",null],\"http_path\":\"\\/admin\\/auth\\/\",\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/auth\\/permissions\"}','2023-03-28 08:26:47','2023-03-28 08:26:47'),(300,1,'admin/auth/permissions','GET','127.0.0.1','[]','2023-03-28 08:26:47','2023-03-28 08:26:47'),(301,1,'admin/auth/permissions/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:27:07','2023-03-28 08:27:07'),(302,1,'admin/auth/permissions/6','PUT','127.0.0.1','{\"slug\":\"admin.productos\",\"name\":\"Productos\",\"http_method\":[\"GET\",\"POST\",\"PUT\",\"DELETE\",\"PATCH\",\"OPTIONS\",null],\"http_path\":\"\\/admin\\/auth\\/\",\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/auth\\/permissions\"}','2023-03-28 08:27:23','2023-03-28 08:27:23'),(303,1,'admin/auth/permissions','GET','127.0.0.1','[]','2023-03-28 08:27:23','2023-03-28 08:27:23'),(304,1,'admin/auth/permissions/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:27:34','2023-03-28 08:27:34'),(305,1,'admin/auth/permissions/6','PUT','127.0.0.1','{\"slug\":\"admin.productos\",\"name\":\"Productos\",\"http_method\":[\"GET\",\"POST\",\"PUT\",\"DELETE\",null],\"http_path\":\"\\/admin\\/auth\\/\",\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/auth\\/permissions\"}','2023-03-28 08:27:41','2023-03-28 08:27:41'),(306,1,'admin/auth/permissions','GET','127.0.0.1','[]','2023-03-28 08:27:41','2023-03-28 08:27:41'),(307,1,'admin/auth/permissions/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:28:03','2023-03-28 08:28:03'),(308,1,'admin/auth/permissions/6','PUT','127.0.0.1','{\"slug\":\"admin.productos\",\"name\":\"Productos\",\"http_method\":[\"GET\",\"POST\",\"PUT\",\"DELETE\",null],\"http_path\":\"\\/admin\\/productos\\/\",\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/auth\\/permissions\"}','2023-03-28 08:28:11','2023-03-28 08:28:11'),(309,1,'admin/auth/permissions','GET','127.0.0.1','[]','2023-03-28 08:28:11','2023-03-28 08:28:11'),(310,1,'admin/auth/permissions/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:28:19','2023-03-28 08:28:19'),(311,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:28:30','2023-03-28 08:28:30'),(312,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:28:33','2023-03-28 08:28:33'),(313,1,'admin/auth/roles/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:28:37','2023-03-28 08:28:37'),(314,1,'admin/auth/roles/2','PUT','127.0.0.1','{\"slug\":\"usuario\",\"name\":\"Usuario\",\"permissions\":[\"3\",\"4\",\"6\",null],\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/auth\\/roles\"}','2023-03-28 08:28:43','2023-03-28 08:28:43'),(315,1,'admin/auth/roles','GET','127.0.0.1','[]','2023-03-28 08:28:43','2023-03-28 08:28:43'),(316,1,'admin','GET','127.0.0.1','[]','2023-03-28 08:29:06','2023-03-28 08:29:06'),(317,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:29:11','2023-03-28 08:29:11'),(318,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:29:16','2023-03-28 08:29:16'),(319,1,'admin/products/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:29:19','2023-03-28 08:29:19'),(320,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:29:23','2023-03-28 08:29:23'),(321,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:29:24','2023-03-28 08:29:24'),(322,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:29:44','2023-03-28 08:29:44'),(323,2,'admin','GET','127.0.0.1','[]','2023-03-28 08:29:51','2023-03-28 08:29:51'),(324,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:29:55','2023-03-28 08:29:55'),(325,2,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 08:30:42','2023-03-28 08:30:42'),(326,1,'admin/products','GET','127.0.0.1','{\"per_page\":\"10\"}','2023-03-28 09:08:24','2023-03-28 09:08:24'),(327,1,'admin/auth/roles','GET','127.0.0.1','[]','2023-03-28 09:45:51','2023-03-28 09:45:51'),(328,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 10:12:33','2023-03-28 10:12:33'),(329,1,'admin/products/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 10:12:39','2023-03-28 10:12:39'),(330,1,'admin/products','POST','127.0.0.1','{\"active\":\"off\",\"title\":\"Producto 3\",\"descripcion\":\"Desripcion del producto 3\",\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/products\"}','2023-03-28 10:13:04','2023-03-28 10:13:04'),(331,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 10:13:05','2023-03-28 10:13:05'),(332,1,'admin/products/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 10:13:07','2023-03-28 10:13:07'),(333,1,'admin/products','POST','127.0.0.1','{\"active\":\"off\",\"title\":\"Producto 4\",\"descripcion\":\"Descripci\\u00f3n del producto 4\",\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/products\"}','2023-03-28 10:13:34','2023-03-28 10:13:34'),(334,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 10:13:35','2023-03-28 10:13:35'),(335,1,'admin/products/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 10:13:40','2023-03-28 10:13:40'),(336,1,'admin/products','POST','127.0.0.1','{\"active\":\"off\",\"title\":\"Producto 5\",\"descripcion\":\"Descripci\\u00f3n del producto 5\",\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/products\"}','2023-03-28 10:14:05','2023-03-28 10:14:05'),(337,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 10:14:05','2023-03-28 10:14:05'),(338,1,'admin/products/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 10:14:30','2023-03-28 10:14:30'),(339,1,'admin/products/3','PUT','127.0.0.1','{\"active\":\"on\",\"title\":\"Producto 3\",\"descripcion\":\"Desripcion del producto 3\",\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/products\"}','2023-03-28 10:14:35','2023-03-28 10:14:35'),(340,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 10:14:36','2023-03-28 10:14:36'),(341,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 10:15:04','2023-03-28 10:15:04'),(342,1,'admin/products/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 10:15:10','2023-03-28 10:15:10'),(343,1,'admin/products/5','PUT','127.0.0.1','{\"active\":\"on\",\"title\":\"Producto 5\",\"descripcion\":\"Descripci\\u00f3n del producto 5\",\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/products\"}','2023-03-28 10:15:14','2023-03-28 10:15:14'),(344,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 10:15:15','2023-03-28 10:15:15'),(345,1,'admin/products/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2023-03-28 10:15:18','2023-03-28 10:15:18'),(346,1,'admin/products/4','PUT','127.0.0.1','{\"active\":\"on\",\"title\":\"Producto 4\",\"descripcion\":\"Descripci\\u00f3n del producto 4\",\"_token\":\"81tHAJt757L6gOQw0RBOq9J4t3HZQsliRRR0p2O4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8002\\/admin\\/products\"}','2023-03-28 10:15:21','2023-03-28 10:15:21'),(347,1,'admin/products','GET','127.0.0.1','[]','2023-03-28 10:15:22','2023-03-28 10:15:22');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'Productos','admin.productos','GET,POST,PUT,DELETE','/admin/productos/','2023-03-28 08:26:47','2023-03-28 08:28:11');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(2,8,NULL,NULL),(2,9,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2023-03-25 04:50:14','2023-03-25 04:50:14'),(2,'Usuario','usuario','2023-03-25 01:24:15','2023-03-25 01:24:15');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
INSERT INTO `admin_user_permissions` VALUES (2,3,NULL,NULL),(2,4,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$tgcg6hvcEkyNA3jpSQsUXuuXq9.gr246.7rc74AhksU3uDSZxQScK','Administrator',NULL,'VaSPqBNroKyFOLa2lbz0hOk6Wu6jLb8r7xhNCGDhs5DMrKCpaE9TycGhvwOI','2023-03-25 04:50:12','2023-03-25 04:50:12'),(2,'dataside','$2y$10$0cfc9JxMOEKodA2ExbO0BOtmDgdhNU6/bDSJdbxnZ06EjFDmocmAW','Ciro','images/family.png','e3VSUNo243ubUr3DPGR5PKx7nIU34qLVuw24TAAxDgTFQ9cCNzzLyoMLr7J8','2023-03-25 01:22:34','2023-03-27 22:44:00');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2023_03_27_192826_create_products_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'Producto 1','Descripción del producto 1','images/group-11-copy.png','2023-03-28 07:38:30','2023-03-28 08:16:12'),(2,1,'Producto 2','Descripción del producto 2','images/b42-icon.png','2023-03-28 07:39:27','2023-03-28 07:39:27'),(3,1,'Producto 3','Desripcion del producto 3','images/caracteristica-2.svg','2023-03-28 10:13:04','2023-03-28 10:14:35'),(4,1,'Producto 4','Descripción del producto 4','images/wts-fixed.svg','2023-03-28 10:13:34','2023-03-28 10:15:22'),(5,1,'Producto 5','Descripción del producto 5','images/point-sb.png','2023-03-28 10:14:05','2023-03-28 10:15:14');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2023-04-12 20:49:17
