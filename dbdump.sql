-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: egg_shop
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`product_id`),
  KEY `payment_id` (`payment_id`),
  CONSTRAINT `payment_details_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  CONSTRAINT `payment_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
INSERT INTO `payment_details` VALUES (2,6,5),(3,11,5),(4,9,6),(5,10,7),(6,12,8),(7,3,9),(8,4,9),(9,22,10),(10,16,13),(11,17,14),(12,18,19),(13,19,20),(14,110,20),(15,111,20),(16,112,20),(17,20,21),(18,21,21),(19,24,22),(20,26,24),(21,27,24),(22,113,25),(23,25,25),(24,114,26),(25,115,26),(26,116,26),(27,117,26),(28,118,26),(29,150,26),(30,23,26),(31,130,27),(32,131,27),(33,132,27),(34,133,27),(35,119,28),(36,140,29),(37,15,30),(38,120,30),(39,134,30),(40,141,31),(41,135,32),(42,28,33),(43,121,34),(44,136,36),(45,160,38),(46,151,39),(47,152,40),(48,153,41),(49,161,42),(50,154,43),(51,162,44),(52,142,45),(53,155,46),(54,122,47),(55,143,48),(56,123,49),(57,144,50),(58,124,53),(59,125,54),(60,145,55),(61,146,56),(62,137,57),(63,156,57),(64,157,61),(65,158,62),(66,147,63),(67,126,63),(68,148,64),(69,149,64),(70,127,64),(71,170,65),(72,171,65),(73,172,65),(74,128,65),(75,138,65),(76,29,65),(77,139,66),(78,173,66),(79,174,66),(80,175,66),(81,163,66),(82,176,67),(83,177,67),(84,178,67),(85,179,67),(86,180,67),(87,196,67),(88,164,68),(89,197,68),(90,191,69),(91,198,70),(92,199,71),(93,159,73),(94,165,74),(95,192,75),(96,166,76),(97,193,77),(98,167,78),(99,129,79),(100,201,79),(101,202,79),(102,181,80),(103,182,80),(104,186,81),(105,187,82),(106,188,83),(107,189,84),(108,190,85),(109,168,88),(110,183,90),(111,184,91);
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total_cost` int NOT NULL,
  `delivery_charge` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_user_id_user_id_fk` (`user_id`),
  CONSTRAINT `payment_user_id_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,20000,NULL,2),(2,54000,NULL,2),(3,54000,NULL,2),(4,54000,NULL,2),(5,40000,NULL,2),(6,32000,NULL,2),(7,32000,NULL,2),(8,20000,NULL,2),(9,40000,NULL,2),(10,18000,NULL,2),(11,0,NULL,2),(12,0,NULL,2),(13,20000,NULL,2),(14,20000,NULL,2),(15,0,NULL,2),(16,0,NULL,2),(17,0,NULL,2),(18,0,NULL,2),(19,20000,NULL,2),(20,80000,NULL,2),(21,60000,NULL,2),(22,32000,NULL,16),(23,0,NULL,16),(24,48000,NULL,20),(25,1850,NULL,8),(26,4650,NULL,2),(27,2800,NULL,2),(28,650,NULL,2),(29,1200,NULL,8),(30,2150,NULL,8),(31,1200,NULL,8),(32,700,NULL,8),(33,800,NULL,8),(34,650,NULL,8),(35,0,NULL,8),(36,700,NULL,8),(37,0,NULL,8),(38,600,NULL,8),(39,700,NULL,8),(40,700,NULL,8),(41,700,NULL,8),(42,600,NULL,8),(43,700,NULL,8),(44,600,NULL,8),(45,1200,NULL,8),(46,700,NULL,16),(47,650,NULL,16),(48,1200,NULL,16),(49,650,NULL,16),(50,1200,NULL,16),(51,0,NULL,16),(52,0,NULL,16),(53,650,NULL,16),(54,650,NULL,21),(55,1200,NULL,16),(56,1200,NULL,16),(57,1400,NULL,16),(58,0,NULL,16),(59,0,NULL,16),(60,0,NULL,16),(61,700,NULL,16),(62,700,NULL,16),(63,1850,NULL,16),(64,3050,NULL,16),(65,5750,NULL,16),(66,4900,NULL,16),(67,6400,NULL,8),(68,1400,NULL,16),(69,700,NULL,16),(70,800,NULL,16),(71,800,NULL,16),(72,0,NULL,16),(73,700,NULL,16),(74,600,NULL,16),(75,700,NULL,8),(76,600,NULL,2),(77,700,NULL,24),(78,600,NULL,24),(79,3050,NULL,2),(80,1300,NULL,2),(81,700,NULL,2),(82,700,NULL,2),(83,700,NULL,2),(84,700,NULL,2),(85,700,NULL,2),(86,700,NULL,2),(87,700,NULL,2),(88,600,NULL,2),(89,0,NULL,2),(90,650,NULL,2),(91,650,NULL,2);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `distributor` varchar(20) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_details`
--

LOCK TABLES `product_details` WRITE;
/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
INSERT INTO `product_details` VALUES (1,'30-Pack Chicken Eggs','<p><strong>uig9pgba<span class=\"ql-cursor\">﻿</span></strong></p>','Thecho Sellers',650,'https://www.devinequalityfoods.co.uk/wp-content/uploads/2020/06/E06.jpg',1),(2,'30-Pack Duck Eggs','<p><strong>Fresh Duck Eggs</strong></p><p> Larger, richer, and creamier than chicken eggs, our fresh duck eggs are a gourmet choice for cooking and baking. Collected daily from well-cared-for ducks, they’re high in protein and packed with nutrients, including more omega-3s and vitamin D.</p><p><strong>Available in packs of 30.</strong></p>','Thecho Sellers',700,'https://m.media-amazon.com/images/I/31ra3zrxejL.jpg',1),(3,'24-Pack Quail Eggs','<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">Fresh Quail Eggs Tiny but mighty, our fresh quail eggs are a delicacy loved for their rich flavor and beautiful speckled shells. Perfect for gourmet dishes, appetizers, or a nutritious snack. High in protein, vitamins, and minerals. Available in packs of </span><strong style=\"color: rgb(51, 51, 51); background-color: rgb(245, 245, 245);\">24.</strong></p>','kalanki farm',700,'https://m.media-amazon.com/images/I/61tCGhUN3iL._AC_UF894,1000_QL80_.jpg',1),(4,'Ostrich Egg','<p><span style=\"background-color: rgb(245, 245, 245); color: rgb(51, 51, 51);\">The ultimate showstopper! One ostrich egg equals 20–24 chicken eggs, making it perfect for large meals or special occasions. Rich, creamy, and packed with nutrients like protein, iron, and omega-3s. Sourced from healthy, free-range ostriches.</span></p>','kalanki farm',1200,'https://t4.ftcdn.net/jpg/12/65/73/63/360_F_1265736360_GNp3WKxUZYMFgc3Jo1OAPysQBxvhbKP4.jpg',1),(5,'4-Pack Goose Eggs','<p>Larger and richer than chicken eggs, goose eggs offer a bold flavor and creamy texture—perfect for baking, omelets, or a hearty breakfast. Each egg is packed with protein, vitamins, and a deep golden yolk you’ll love.</p><p><strong>Available individually or in pack of 4.1</strong></p>','kalanki farm',600,'https://admin.marketwagon.com/uploads/173973506420250216-140032.png.webp',1),(6,'6-Pack Turkey Eggs','<p><strong>Fresh Turkey Eggs</strong></p><p>A rare treat, turkey eggs are rich, flavorful, and slightly larger than duck eggs. With a thick shell and creamy yolk, they’re ideal for baking, frying, or gourmet dishes. Packed with protein and essential nutrients.</p><p><strong>Sold individually or in packs of 6. Limited stock.</strong></p>','kalanki farm',800,'https://cdn11.bigcommerce.com/s-3dvk56auce/images/stencil/1280x1280/products/182/474/IMG-20200630-WA0002__66585.1593538382.jpg?c=1',1),(17,'2-Packs Turkey Eggs','Fresh Turkey Eggs A rare treat, turkey eggs are rich, flavorful, and slightly larger than duck eggs. With a thick shell and creamy yolk, they’re ideal for baking, frying, or gourmet dishes. Packed with protein and essential nutrients.  Sold individually or in packs of 2. Limited stock.','Thecho Sellers',200,'https://www.eggcartons.com/cdn/shop/products/PUBL-2N_FULLOPEN_EGGS_1800x1800.png?v=1693593991',1),(22,'15 packs of Chicken eggs','<p>Fresh Turkey Eggs A rare treat,<em> turkey eggs</em> are rich, flavorful, and slightly larger than duck <strong>eggs</strong>. With a thick shell and creamy yolk, they’re ideal for baking, frying, or gourmet dishes. Packed with protein and essential nutrients. Sold individually or in packs of 2. Limited stock.</p>','Thecho Sellers',500,'https://a-z-animals.com/media/2022/02/shutterstock_1187378770-1024x1024.jpg',1),(24,'Voluptatem similiqu','<p>Aut nesciunt et dol</p>','Quisquam sed fugiat',1111000,'',0);
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` enum('SOLD','AVAILABLE','DAMAGED') DEFAULT 'AVAILABLE',
  `product_detail_id` int NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `book_detail_id` (`product_detail_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_detail_id`) REFERENCES `product_details` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'SOLD',1,'2025-02-26 08:11:14','2025-02-28 03:31:01',1),(4,'SOLD',1,'2025-02-26 08:11:14','2025-02-28 03:31:01',1),(5,'SOLD',2,'2025-02-26 08:11:28','2025-02-26 08:50:44',1),(6,'SOLD',2,'2025-02-26 08:11:28','2025-02-26 08:55:34',1),(7,'SOLD',3,'2025-02-26 08:11:32','2025-02-26 08:52:07',1),(8,'SOLD',3,'2025-02-26 08:11:32','2025-02-26 08:52:07',1),(9,'SOLD',4,'2025-02-26 08:11:38','2025-02-26 16:13:48',1),(10,'SOLD',4,'2025-02-26 08:11:38','2025-02-27 02:22:51',1),(11,'SOLD',2,'2025-02-26 08:11:41','2025-02-26 08:55:34',1),(12,'SOLD',2,'2025-02-26 08:11:41','2025-02-27 02:29:36',1),(13,'SOLD',3,'2025-02-26 08:11:44','2025-02-26 08:52:07',1),(14,'SOLD',3,'2025-02-26 08:11:44','2025-02-26 08:53:52',1),(15,'SOLD',6,'2025-02-26 08:12:34','2025-07-23 09:46:37',0),(16,'SOLD',2,'2025-02-27 15:45:15','2025-03-11 10:44:30',1),(17,'SOLD',2,'2025-02-27 15:45:15','2025-03-11 10:45:35',1),(18,'SOLD',1,'2025-02-28 09:29:17','2025-03-11 10:52:44',1),(19,'SOLD',1,'2025-02-28 09:29:17','2025-03-12 01:02:03',1),(20,'SOLD',2,'2025-02-28 09:29:24','2025-03-21 03:27:22',1),(21,'SOLD',2,'2025-02-28 09:29:24','2025-03-21 03:27:22',1),(22,'SOLD',3,'2025-02-28 09:29:30','2025-03-11 10:43:33',1),(23,'SOLD',3,'2025-02-28 09:29:30','2025-04-15 09:56:33',1),(24,'SOLD',4,'2025-02-28 09:29:37','2025-04-09 03:08:10',1),(25,'SOLD',4,'2025-02-28 09:29:37','2025-04-12 02:30:18',1),(26,'SOLD',5,'2025-02-28 09:29:47','2025-04-10 07:59:16',1),(27,'SOLD',5,'2025-02-28 09:29:47','2025-04-10 07:59:16',1),(28,'SOLD',6,'2025-02-28 09:29:52','2025-07-23 09:46:35',0),(29,'DAMAGED',6,'2025-02-28 09:29:52','2025-07-23 09:46:30',0),(110,'SOLD',1,'2025-03-12 01:01:34','2025-03-12 01:02:03',1),(111,'SOLD',1,'2025-03-12 01:01:34','2025-03-12 01:02:03',1),(112,'SOLD',1,'2025-03-12 01:01:34','2025-03-12 01:02:03',1),(113,'SOLD',1,'2025-03-12 01:01:34','2025-04-12 02:30:18',1),(114,'SOLD',1,'2025-03-12 01:01:34','2025-04-15 09:56:33',1),(115,'SOLD',1,'2025-03-12 01:01:34','2025-04-15 09:56:33',1),(116,'SOLD',1,'2025-03-12 01:01:34','2025-04-15 09:56:33',1),(117,'SOLD',1,'2025-03-12 01:01:35','2025-04-15 09:56:33',1),(118,'SOLD',1,'2025-03-12 01:01:35','2025-04-15 09:56:33',1),(119,'SOLD',1,'2025-03-12 01:01:35','2025-04-16 09:52:45',1),(120,'SOLD',1,'2025-03-20 01:21:01','2025-04-18 01:09:53',1),(121,'SOLD',1,'2025-03-20 01:21:01','2025-04-24 11:14:17',1),(122,'SOLD',1,'2025-03-20 01:21:01','2025-04-25 00:54:31',1),(123,'SOLD',1,'2025-03-20 01:21:01','2025-07-23 09:45:59',0),(124,'SOLD',1,'2025-03-20 01:21:01','2025-07-23 09:45:59',0),(125,'SOLD',1,'2025-03-20 01:21:01','2025-07-23 09:45:59',0),(126,'SOLD',1,'2025-03-20 01:21:01','2025-07-23 09:45:59',0),(127,'SOLD',1,'2025-03-20 01:21:01','2025-07-23 09:45:59',0),(128,'SOLD',1,'2025-03-20 01:21:01','2025-07-23 09:46:00',0),(129,'SOLD',1,'2025-03-20 01:21:01','2025-07-23 09:46:00',0),(130,'SOLD',3,'2025-03-21 03:28:25','2025-07-23 09:46:00',0),(131,'SOLD',3,'2025-03-21 03:28:25','2025-07-23 09:46:00',0),(132,'SOLD',3,'2025-03-21 03:28:25','2025-07-23 09:45:59',0),(133,'SOLD',3,'2025-03-21 03:28:25','2025-07-23 09:45:59',0),(134,'SOLD',3,'2025-03-21 03:28:25','2025-07-23 09:46:00',0),(135,'SOLD',3,'2025-03-21 03:28:25','2025-07-23 09:45:59',0),(136,'SOLD',3,'2025-03-21 03:28:25','2025-07-23 09:45:59',0),(137,'SOLD',3,'2025-03-21 03:28:25','2025-07-23 09:45:59',0),(138,'SOLD',3,'2025-03-21 03:28:25','2025-07-23 09:45:59',0),(139,'SOLD',3,'2025-03-21 03:28:25','2025-07-23 09:45:59',0),(140,'SOLD',4,'2025-04-15 08:41:19','2025-07-23 09:46:00',0),(141,'SOLD',4,'2025-04-15 08:41:19','2025-07-23 09:45:59',0),(142,'SOLD',4,'2025-04-15 08:41:19','2025-07-23 09:45:59',0),(143,'SOLD',4,'2025-04-15 08:41:19','2025-07-23 09:45:59',0),(144,'SOLD',4,'2025-04-15 08:41:19','2025-07-23 09:45:59',0),(145,'SOLD',4,'2025-04-15 08:41:19','2025-07-23 09:45:59',0),(146,'DAMAGED',4,'2025-04-15 08:41:19','2025-07-23 09:45:59',0),(147,'SOLD',4,'2025-04-15 08:41:19','2025-07-23 09:45:59',0),(148,'SOLD',4,'2025-04-15 08:41:19','2025-07-23 09:46:00',0),(149,'SOLD',4,'2025-04-15 08:41:19','2025-07-23 09:45:59',0),(150,'SOLD',2,'2025-04-15 08:41:47','2025-07-23 09:45:59',0),(151,'SOLD',2,'2025-04-15 08:41:47','2025-07-23 09:45:59',0),(152,'SOLD',2,'2025-04-15 08:41:47','2025-07-23 09:45:59',0),(153,'SOLD',2,'2025-04-15 08:41:47','2025-07-23 09:45:59',0),(154,'SOLD',2,'2025-04-15 08:41:47','2025-07-23 09:45:59',0),(155,'SOLD',2,'2025-04-15 08:41:47','2025-07-23 09:45:59',0),(156,'SOLD',2,'2025-04-15 08:41:47','2025-07-23 09:45:59',0),(157,'SOLD',2,'2025-04-15 08:41:47','2025-07-23 09:45:59',0),(158,'SOLD',2,'2025-04-15 08:41:47','2025-07-23 09:45:59',0),(159,'SOLD',2,'2025-04-15 08:41:47','2025-07-23 09:45:59',0),(160,'SOLD',5,'2025-04-15 09:46:51','2025-07-23 09:45:59',0),(161,'SOLD',5,'2025-04-15 09:46:51','2025-07-23 09:45:59',0),(162,'SOLD',5,'2025-04-15 09:46:51','2025-07-23 09:45:59',0),(163,'SOLD',5,'2025-04-15 09:46:51','2025-07-23 09:45:59',0),(164,'SOLD',5,'2025-04-15 09:46:51','2025-07-23 09:45:59',0),(165,'SOLD',5,'2025-04-15 09:46:51','2025-07-23 09:45:59',0),(166,'SOLD',5,'2025-04-15 09:46:51','2025-07-23 09:45:59',0),(167,'SOLD',5,'2025-04-15 09:46:51','2025-07-23 09:45:59',0),(168,'SOLD',5,'2025-04-15 09:46:51','2025-07-23 09:45:59',0),(169,'AVAILABLE',5,'2025-04-15 09:46:51','2025-07-23 09:45:59',0),(170,'SOLD',4,'2025-04-16 07:42:33','2025-07-23 09:45:59',0),(171,'SOLD',4,'2025-04-16 07:42:33','2025-07-23 09:45:59',0),(172,'SOLD',4,'2025-04-16 07:42:33','2025-07-23 09:45:59',0),(173,'SOLD',4,'2025-04-16 07:42:33','2025-07-23 09:45:59',0),(174,'SOLD',4,'2025-04-16 07:42:33','2025-07-23 09:45:59',0),(175,'SOLD',4,'2025-04-16 07:42:33','2025-07-23 09:46:00',0),(176,'SOLD',4,'2025-04-16 07:42:33','2025-07-23 09:45:59',0),(177,'SOLD',4,'2025-04-16 07:42:33','2025-07-23 09:45:59',0),(178,'SOLD',4,'2025-04-16 07:42:33','2025-07-23 09:45:59',0),(179,'SOLD',4,'2025-04-16 07:42:33','2025-07-23 09:45:59',0),(180,'SOLD',6,'2025-04-16 11:35:32','2025-07-23 09:45:59',0),(181,'SOLD',1,'2025-04-28 11:11:24','2025-07-23 09:45:59',0),(182,'SOLD',1,'2025-04-28 11:11:24','2025-07-23 09:45:59',0),(183,'SOLD',1,'2025-04-28 11:11:24','2025-07-23 09:45:59',0),(184,'SOLD',1,'2025-04-28 11:11:24','2025-07-23 09:45:59',0),(185,'AVAILABLE',1,'2025-04-28 11:11:24','2025-07-23 09:45:59',0),(186,'SOLD',2,'2025-04-28 11:11:33','2025-07-23 09:45:59',0),(187,'SOLD',2,'2025-04-28 11:11:33','2025-07-23 09:45:59',0),(188,'SOLD',2,'2025-04-28 11:11:33','2025-07-23 09:45:59',0),(189,'SOLD',2,'2025-04-28 11:11:33','2025-07-23 09:45:59',0),(190,'SOLD',2,'2025-04-28 11:11:33','2025-07-23 09:45:59',0),(191,'SOLD',3,'2025-04-28 11:11:39','2025-07-23 09:45:59',0),(192,'SOLD',3,'2025-04-28 11:11:39','2025-07-23 09:45:59',0),(193,'SOLD',3,'2025-04-28 11:11:39','2025-07-23 09:45:59',0),(194,'AVAILABLE',3,'2025-04-28 11:11:39','2025-07-23 09:45:59',0),(195,'AVAILABLE',3,'2025-04-28 11:11:39','2025-07-23 09:45:59',0),(196,'SOLD',6,'2025-04-28 11:11:52','2025-07-23 09:45:59',0),(197,'SOLD',6,'2025-04-28 11:11:52','2025-07-23 09:45:59',0),(198,'SOLD',6,'2025-04-28 11:11:52','2025-07-23 09:45:59',0),(199,'SOLD',6,'2025-04-28 11:11:52','2025-07-23 09:45:59',0),(200,'AVAILABLE',6,'2025-04-28 11:11:52','2025-07-23 09:45:59',0),(201,'SOLD',4,'2025-04-29 08:12:23','2025-07-23 09:46:00',0),(202,'SOLD',4,'2025-04-29 08:12:23','2025-07-23 09:45:59',0),(203,'AVAILABLE',4,'2025-04-29 08:12:23','2025-07-23 09:46:00',0),(204,'AVAILABLE',4,'2025-04-29 08:12:23','2025-07-23 09:45:59',0),(209,'AVAILABLE',1,'2025-07-14 09:19:25','2025-07-23 09:45:59',0),(210,'AVAILABLE',1,'2025-07-14 09:19:25','2025-07-23 09:45:59',0),(211,'AVAILABLE',1,'2025-07-14 09:19:25','2025-07-23 09:45:59',0),(212,'AVAILABLE',1,'2025-07-14 09:19:25','2025-07-23 09:45:59',0),(213,'AVAILABLE',1,'2025-07-14 09:19:25','2025-07-23 09:45:59',0),(214,'AVAILABLE',4,'2025-07-23 09:47:11','2025-07-23 09:47:32',0),(215,'AVAILABLE',4,'2025-07-23 09:47:11','2025-07-23 09:47:36',0),(216,'AVAILABLE',4,'2025-07-23 09:47:11',NULL,1),(217,'AVAILABLE',4,'2025-07-23 09:47:11','2025-07-23 09:47:30',0),(218,'SOLD',4,'2025-07-23 09:47:11','2025-07-23 09:47:25',1),(224,'AVAILABLE',6,'2025-07-23 09:57:12','2025-07-23 09:58:31',0),(225,'AVAILABLE',6,'2025-07-23 09:57:12','2025-07-23 09:58:26',0),(226,'AVAILABLE',6,'2025-07-23 09:57:12','2025-07-23 09:58:24',0),(227,'AVAILABLE',6,'2025-07-23 09:57:12','2025-07-23 09:58:18',0),(228,'DAMAGED',6,'2025-07-23 09:57:12','2025-07-23 09:58:16',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN',1),(2,'CUSTOMER',1),(6,'Retailers',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `contact_no` bigint NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `role` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sushant','admin','admin@admin.com','$2a$12$jxygwDavsPXPFtljd1l6F.Gi1B6DGSbo5XtEpznznYbDAJKTxF5YS',1,'KTM',981876,1),(2,'Sushant','Shakya','sushantshakya191@gmail.com','$2a$12$jxygwDavsPXPFtljd1l6F.Gi1B6DGSbo5XtEpznznYbDAJKTxF5YS',2,'Chyasal,Lalitpur',123123,1),(4,'Sushant','Shakya','sushantshakya191@gmail.com','$2y$10$zINpYreERyBK/Vp7DlHWS.DIvk7XUBbHXdr.x3Re0nPMrfZquzClK',2,'Chyasal,Lalitpur',23432534,1),(8,'Sushant','Shakya','sushantshakya1@gmail.com','$2y$10$hbW1N8NI8Bbq6tz680P7iewpniBiZ.pWO.quUzlyeKcSCzzO4N4UW',2,'Chyasal,Lalitpur',123,1),(14,'shriyan','Shakya','shriyanshakya191@gmail.com','$2y$10$c4ZQs8XdlsSd6q5rDxMWCO47ByczjeBHiB1cUCAegnR1mX9Ie.2vC',2,'Chyasal,Lalitpur',981876,1),(15,'shriyan','Shakya','shriyanshakya191@gmail.com','$2y$10$Vd9cZythUvGzZd7tVaav3O4zcL3zItEqL8HWi700OUNI/8JwYJsbK',2,'Chyasal,Lalitpur',98187604,1),(16,'Sushant','Shakya','sushantshakya33@gmail.com','$2y$10$BltnEZvOY3p9g/VdMwOLXO2gpMLRDmwPW1QvfqHOvMl/f5.zFeGeO',2,'Chyasal,Lalitpur',981876045,0),(17,'Sushant','Shakya','sushantshakya10@gmail.com','$2y$10$ZaYf1v9XJbXU99Vaor/ZyumPJEQzQi/HONilD5vSza/JNEt/CQZ0G',2,'Chyasal,Lalitpur',98187604516,0),(19,'sushant','shkya','don@gmail.com','$2y$10$hQcGfw7rho6LElLAM3xPgeFF5ocxfDhFbBzE1bkUY.ejRjmNbwLvS',2,'chyasal',1234,0),(20,'srrga','sfsdf','sdsf@gmail.com','$2y$10$yNdiluQtNSW7AKn9/h4zOuhsxNXeDgbC6agPRdqy0nvWwV8.fjquy',2,'sdf',12345678,0),(21,'Sushant','Shakya','sushantshakya9@gmail.com','$2y$10$5aeQaO1UkZ13o6TG1gUQ/O.C/I/zGrq8ULpkkzKhwMNHr.7dnWA.O',2,'Chyasal,Lalitpur',9818760451,0),(24,'Padam','Shakya','padamshakya191@gmail.com','$2y$10$7KOBilvEVREVxBnmnZeDmejmJrH3NQAwDdyoO6pVpULeLkj8Wnoo.',2,'Chyasal,Lalitpur',9818760451,0),(25,'Sushant','Shakya','sushantshakya191@gmail.com','$2y$10$lDWDNmPleOX6He.bepMCtO2cfT7dSfuY8d0teCSvfn.zNNGN0sWbu',2,'Chyasal,Lalitpur',981876045,0),(26,'Brett','Warner','tukepyw@mailinator.com','$2y$12$NOz/tV7gbQMEf7DtVXGZguRVdW5qQ9l5F5ceqZbaRg/7ZsgPedKc2',2,'Recusandae Minim qu',9866496848,1),(27,'Shriyan','Bajracharya','shriyan@admin,com','$2y$12$m3r.bGjBzzg.UcqXdCS4ieD5ew/G8.NkUmYvf/cE7C1qTh8qg7ADS',2,'patan',9866496848,1),(28,'Sushant','Shakya','sus@shak.com','$2y$12$Y/CnWGWvz.QSIMTg.Np6fuq4vW/D3rQ2XDCV3/uFCiXO1FCVS7BvC',2,'KTM',12345,1);
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

-- Dump completed on 2025-07-23 16:07:36
