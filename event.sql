-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: event
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_admin` (
  `admin_seq` int NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `use_yn` char(1) NOT NULL DEFAULT 'Y',
  `create_id` varchar(50) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(50) NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`admin_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admin`
--

LOCK TABLES `tb_admin` WRITE;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` VALUES (1,'test','1234','관리자','Y','test','2024-10-02 02:53:39.970486','test','2024-10-02 02:53:39.970486');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_event`
--

DROP TABLE IF EXISTS `tb_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_event` (
  `event_seq` int NOT NULL AUTO_INCREMENT,
  `event_post_start_date` timestamp(6) NOT NULL,
  `event_post_end_date` timestamp(6) NOT NULL,
  `event_start_date` timestamp(6) NOT NULL,
  `event_end_date` timestamp(6) NOT NULL,
  `event_title` varchar(50) NOT NULL,
  `event_content` varchar(4000) NOT NULL,
  `event_view_cnt` int NOT NULL DEFAULT '0',
  `event_file_group_seq` int NOT NULL,
  `use_yn` char(1) NOT NULL DEFAULT 'Y',
  `create_id` varchar(50) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(50) NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`event_seq`),
  KEY `file_idx` (`event_file_group_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_event`
--

LOCK TABLES `tb_event` WRITE;
/*!40000 ALTER TABLE `tb_event` DISABLE KEYS */;
INSERT INTO `tb_event` VALUES (1,'2024-10-07 06:00:00.000000','2024-10-25 06:00:00.000000','2024-10-04 06:00:00.000000','2024-10-31 06:00:00.000000','qdqwdqwd','qdqdqwd',0,1,'Y','test','2024-10-04 01:56:52.000000','test','2024-10-11 03:07:51.000000'),(2,'2024-10-06 15:00:00.000000','2024-10-24 15:00:00.000000','2024-10-03 15:00:00.000000','2024-10-30 15:00:00.000000','qdqwdqwd','qdqdqwd',0,2,'Y','test','2024-10-04 01:56:52.000000','test','2024-10-11 03:07:51.000000'),(3,'2024-10-06 15:00:00.000000','2024-10-24 15:00:00.000000','2024-10-03 15:00:00.000000','2024-10-30 15:00:00.000000','qdqwdqwd','qdqdqwd',0,3,'Y','test','2024-10-04 01:56:52.000000','test','2024-10-11 03:07:51.000000'),(4,'2024-10-06 15:00:00.000000','2024-10-24 15:00:00.000000','2024-10-03 15:00:00.000000','2024-10-30 15:00:00.000000','ㅈㅂㅂㄷㄹㄼㄷ','ㅂㄼㅈㄼㅈㄹ',0,4,'Y','test','2024-10-04 01:59:22.000000','test','2024-10-11 03:07:51.000000'),(5,'2024-10-30 15:00:00.000000','2024-10-30 15:00:00.000000','2024-10-30 15:00:00.000000','2024-10-30 15:00:00.000000','qwdqwdqwd','qwdwdqwdqdqwddqwqwd',0,5,'Y','test','2024-10-04 02:07:56.000000','test','2024-10-11 03:07:51.000000'),(6,'2024-10-30 15:00:00.000000','2024-10-30 15:00:00.000000','2024-10-30 15:00:00.000000','2024-10-30 15:00:00.000000','qwdfqwdqwf','fqwfqwfqwf',0,6,'Y','test','2024-10-04 02:12:05.000000','test','2024-10-11 03:07:44.000000'),(7,'2024-10-09 15:00:00.000000','2024-10-16 15:00:00.000000','2024-10-03 15:00:00.000000','2024-10-17 15:00:00.000000','이벤트관리 테스트','이벤트관리 테스트',0,7,'Y','test','2024-10-04 02:16:11.000000','test','2024-10-11 03:07:44.000000'),(8,'2024-10-21 15:00:00.000000','2024-10-22 15:00:00.000000','2024-10-09 15:00:00.000000','2024-10-07 15:00:00.000000','이벤트관리 테스트 이벤트관리 테스트','이벤트관리 테스트 이벤트관리 테스트',0,8,'Y','test','2024-10-04 02:16:24.000000','test','2024-10-11 03:07:44.000000'),(9,'2024-10-15 15:00:00.000000','2024-10-31 15:00:00.000000','2024-10-08 15:00:00.000000','2024-10-16 15:00:00.000000','이벤트관리 테스트 이벤트관리 테스트 이벤트관리 테스트','이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트',0,9,'Y','test','2024-10-04 02:16:40.000000','test','2024-10-11 03:07:44.000000'),(10,'2024-10-14 15:00:00.000000','2024-10-16 15:00:00.000000','2024-10-03 15:00:00.000000','2024-10-15 15:00:00.000000','이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트','이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트',0,10,'Y','test','2024-10-04 02:16:52.000000','test','2024-10-11 03:07:44.000000'),(11,'2024-10-08 15:00:00.000000','2024-10-09 15:00:00.000000','2024-10-10 15:00:00.000000','2024-10-09 15:00:00.000000','이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트','이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트',0,11,'Y','test','2024-10-04 02:17:06.000000','test','2024-10-11 03:07:44.000000'),(12,'2024-10-08 15:00:00.000000','2024-10-14 15:00:00.000000','2024-10-10 15:00:00.000000','2024-10-17 15:00:00.000000','이벤트관리 테스트이벤트관리 테스트','이벤트관리 테스트이벤트관리 테스트이벤트관리 테스트',0,12,'Y','test','2024-10-04 02:17:19.000000','test','2024-10-11 03:07:44.000000'),(13,'2024-10-13 15:00:00.000000','2024-10-24 15:00:00.000000','2024-10-18 15:00:00.000000','2024-10-10 15:00:00.000000','이벤트관리 테스트이벤트관리 테스트','이벤트관리 테스트이벤트관리 테스트',0,13,'Y','test','2024-10-04 02:17:30.000000','test','2024-10-11 03:07:44.000000'),(14,'2024-10-08 15:00:00.000000','2024-10-24 15:00:00.000000','2024-10-10 15:00:00.000000','2024-10-09 15:00:00.000000','이벤트관리 테스트이벤트관리 테스트','이벤트관리 테스트이벤트관리 테스트',0,14,'Y','test','2024-10-04 02:17:43.000000','test','2024-10-11 03:13:42.000000'),(15,'2024-10-15 15:00:00.000000','2024-10-22 15:00:00.000000','2024-10-14 15:00:00.000000','2024-10-10 15:00:00.000000','qwdqdw','qdqwd',0,15,'Y','test','2024-10-04 03:28:43.000000','test','2024-10-11 03:08:29.000000'),(16,'2024-10-07 15:00:00.000000','2024-10-21 15:00:00.000000','2024-10-16 15:00:00.000000','2024-10-07 15:00:00.000000','qwdwd','dqwdqwd',0,16,'Y','test','2024-10-04 03:29:21.000000','test','2024-10-11 03:13:42.000000'),(17,'2024-10-02 16:55:00.000000','2024-10-23 16:55:00.000000','2024-10-17 16:11:00.000000','2024-10-16 16:11:00.000000','5555','5555',0,17,'Y','test','2024-10-07 23:59:27.962254','test','2024-10-11 03:08:19.000000'),(18,'2024-10-17 02:11:00.000000','2024-10-04 02:11:00.000000','2024-10-25 03:12:00.000000','2024-10-31 03:12:00.000000','테스트','테스트',0,18,'Y','test','2024-10-08 00:44:55.069210','test','2024-10-11 03:08:29.000000'),(19,'2024-10-10 02:11:00.000000','2024-10-02 02:11:00.000000','2024-10-18 03:12:00.000000','2024-10-10 03:12:00.000000','특가 이벤트','12',0,19,'Y','test','2024-10-08 01:24:39.103133','test','2024-10-11 03:08:19.000000'),(20,'2024-10-08 00:00:00.000000','2024-10-09 14:00:00.000000','2024-10-08 00:00:00.000000','2024-10-09 14:00:00.000000','10월 8일 이벤트','1111',0,20,'Y','test','2024-10-08 01:57:26.977991','test','2024-10-11 03:13:42.000000'),(21,'2024-10-09 23:00:00.000000','2024-10-10 11:00:00.000000','2024-10-09 23:00:00.000000','2024-10-10 11:00:00.000000','10월 10일 이벤트','10월 10일 이벤트',0,21,'Y','test','2024-10-10 00:19:34.337307','test','2024-10-11 03:08:29.000000'),(22,'2024-10-09 16:00:00.000000','2024-10-09 16:00:00.000000','2024-10-10 01:00:00.000000','2024-10-10 01:00:00.000000','qwqwffqw','qdqwd',0,22,'Y','test','2024-10-10 00:47:20.614444','test','2024-10-11 03:08:19.000000'),(23,'2024-10-09 16:11:00.000000','2024-10-09 16:11:00.000000','2024-10-17 03:12:00.000000','2024-10-17 03:12:00.000000','11111','111',0,23,'Y','test','2024-10-10 02:29:49.933894','test','2024-10-11 03:13:42.000000'),(24,'2024-10-09 16:11:00.000000','2024-10-09 16:11:00.000000','2024-10-09 17:22:00.000000','2024-10-09 17:22:00.000000','qwddwdwq','qdqwd',0,24,'Y','test','2024-10-10 02:48:48.592169','test','2024-10-11 03:08:19.000000'),(25,'2024-10-09 15:00:00.000000','2024-10-30 15:00:00.000000','2024-10-09 15:00:00.000000','2024-10-30 15:00:00.000000','10월 10일 테스트!!!','10월 10일 테스트!!!',0,25,'Y','test','2024-10-10 03:41:28.640780','test','2024-10-11 03:13:42.000000');
/*!40000 ALTER TABLE `tb_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_event_join`
--

DROP TABLE IF EXISTS `tb_event_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_event_join` (
  `event_join_seq` int NOT NULL AUTO_INCREMENT,
  `event_seq` int NOT NULL,
  `event_join_name` varchar(100) NOT NULL,
  `event_join_phone` varchar(16) NOT NULL,
  `event_join_email` varchar(100) NOT NULL,
  `event_join_sex` char(1) NOT NULL,
  `event_join_birth` varchar(8) NOT NULL,
  `event_join_addr` varchar(1000) NOT NULL,
  `event_join_state` char(1) NOT NULL COMMENT 'event_join_state = A는 접수 W는 당첨',
  `create_id` varchar(50) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(50) NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`event_join_seq`),
  KEY `fk_event_join_idx` (`event_seq`),
  CONSTRAINT `fk_event_join` FOREIGN KEY (`event_seq`) REFERENCES `tb_event` (`event_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_event_join`
--

LOCK TABLES `tb_event_join` WRITE;
/*!40000 ALTER TABLE `tb_event_join` DISABLE KEYS */;
INSERT INTO `tb_event_join` VALUES (1,4,'유지나','010-3308-7940','shjnlove3@naver.com','f','19890228','대전광역시 대덕구 비래동','A','유지나','2024-10-08 01:39:55.000000','유지나','2024-10-08 01:39:55.000000'),(2,20,'문상현','010-3308-7940','shjnlove3@naver.com','f','19890228','대전광역시 대덕구 비래동','W','문상현','2024-10-08 01:58:05.000000','test','2024-10-08 01:58:18.000000'),(3,20,'길미지','010-3308-7940','shjnlove3@naver.com','m','19890228','대전광역시 대덕구 비래동','A','길미지','2024-10-08 02:04:49.000000','길미지','2024-10-08 02:04:49.000000'),(4,21,'111','111','111','m','111','111','A','111','2024-10-10 01:18:26.000000','111','2024-10-10 01:18:26.000000'),(5,21,'222','222','222','m','222','222','A','222','2024-10-10 01:18:35.000000','222','2024-10-10 01:18:35.000000'),(6,21,'333','333','333','m','333','333','A','333','2024-10-10 01:18:42.000000','333','2024-10-10 01:18:42.000000'),(7,21,'444','444','444','m','444','444','A','444','2024-10-10 01:18:52.000000','444','2024-10-10 01:18:52.000000');
/*!40000 ALTER TABLE `tb_event_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_file_attr`
--

DROP TABLE IF EXISTS `tb_file_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_file_attr` (
  `file_seq` int NOT NULL AUTO_INCREMENT,
  `file_group_seq` int NOT NULL,
  `original_file_name` varchar(100) NOT NULL,
  `save_file_name` varchar(100) NOT NULL,
  `file_path` varchar(4000) NOT NULL,
  `file_size` double NOT NULL,
  `file_ext` varchar(10) NOT NULL,
  `use_yn` char(1) NOT NULL DEFAULT 'Y',
  `create_id` varchar(50) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(50) NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`file_seq`),
  KEY `file_group_seq_idx` (`file_group_seq`),
  CONSTRAINT `file_group_seq` FOREIGN KEY (`file_group_seq`) REFERENCES `tb_event` (`event_file_group_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_file_attr`
--

LOCK TABLES `tb_file_attr` WRITE;
/*!40000 ALTER TABLE `tb_file_attr` DISABLE KEYS */;
INSERT INTO `tb_file_attr` VALUES (1,15,'_MG_0852.jpg','file_20241004122843_0.jpg','/ictsaeil/egovTest',2639391,'jpg','Y','test','2024-10-04 03:28:43.000000','test','2024-10-04 03:28:43.000000'),(2,16,'IMG_4359.jpg','file_20241004122921_0.jpg','/ictsaeil/egovTest',6916589,'jpg','Y','test','2024-10-04 03:29:21.000000','test','2024-10-04 03:29:21.000000'),(3,21,'058.jpg','file_2024101093612.jpg','/ictsaeil/event/',4776822,'jpg','Y','test','2024-10-10 00:36:12.000000','test','2024-10-10 00:36:12.000000'),(4,22,'117.jpg','file_2024101094720_0.jpg','/ictsaeil/event/',5685393,'jpg','Y','test','2024-10-10 00:47:20.000000','test','2024-10-10 00:47:20.000000'),(5,23,'L1070742-ANIMATION.gif','L1070742-ANIMATION.gif','/ictsaeil/event/',994208,'gif','Y','test','2024-10-10 02:29:49.000000','test','2024-10-10 02:29:49.000000'),(6,24,'L1070742-ANIMATION.gif','file_20241010114848_0.gif','/ictsaeil/event/',994208,'gif','Y','test','2024-10-10 02:48:48.000000','test','2024-10-10 02:48:48.000000'),(7,25,'L1070742-ANIMATION.gif','file_20241010124128_0.gif','/ictsaeil/event/',994208,'gif','Y','test','2024-10-10 03:41:28.000000','test','2024-10-10 03:41:28.000000');
/*!40000 ALTER TABLE `tb_file_attr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11 12:46:41
