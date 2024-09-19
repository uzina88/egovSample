CREATE DATABASE  IF NOT EXISTS `ictsaeil` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ictsaeil`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ictsaeil
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
-- Table structure for table `tb_board`
--

DROP TABLE IF EXISTS `tb_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_board` (
  `board_idx` int NOT NULL AUTO_INCREMENT,
  `board_title` varchar(100) NOT NULL,
  `board_content` varchar(4000) DEFAULT NULL,
  `file_group_idx` int DEFAULT NULL,
  `create_id` varchar(45) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(45) NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `use_yn` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`board_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board`
--

LOCK TABLES `tb_board` WRITE;
/*!40000 ALTER TABLE `tb_board` DISABLE KEYS */;
INSERT INTO `tb_board` VALUES (1,'금메달','하하핫',1,'555','2024-09-05 02:58:19.960251','555','2024-09-05 02:58:19.960251','Y'),(2,'세계랭킹1위','세계랭킹1위',2,'555','2024-09-05 03:12:33.317682','555','2024-09-09 03:42:07.000000','N'),(3,'단체 금메달 ','4연패',3,'555','2024-09-05 03:12:58.861412','555','2024-09-09 03:41:49.000000','N'),(4,'000','000',4,'test3','2024-09-05 03:15:04.724771','555','2024-09-09 03:10:27.000000','Y'),(5,'111','111',5,'test3','2024-09-05 03:15:12.051981','test3','2024-09-05 03:15:12.051981','Y'),(6,'222','222',6,'test3','2024-09-05 03:15:19.572478','test3','2024-09-05 03:15:19.572478','Y'),(7,'000','000',7,'test','2024-09-05 03:16:05.970957','test','2024-09-05 03:16:05.970957','Y'),(8,'111','111',8,'test','2024-09-05 03:16:14.171517','test','2024-09-05 03:16:14.171517','Y'),(9,'222','222',9,'test','2024-09-05 03:16:21.851930','test','2024-09-05 03:16:21.851930','Y'),(10,'000','000',10,'test2','2024-09-05 03:17:37.689959','test2','2024-09-09 03:45:50.000000','N'),(11,'111','111',11,'test2','2024-09-05 03:17:43.700218','test2','2024-09-05 03:17:43.700218','Y'),(12,'test2 222','222',12,'test2','2024-09-05 03:17:50.307712','555','2024-09-09 01:59:39.000000','Y'),(13,'세계랭킹1위','ahahaha',13,'555','2024-09-09 03:43:57.000000','555','2024-09-09 03:43:57.000000','Y'),(14,'단체 금메달 ','gold 1s',14,'555','2024-09-09 03:44:16.000000','555','2024-09-11 02:57:43.000000','Y'),(15,'','',15,'555','2024-09-11 02:42:08.000000','555','2024-09-11 02:42:08.000000','Y'),(16,'파일업로드','인스타 이미지',16,'555','2024-09-11 03:04:28.000000','555','2024-09-12 00:08:17.000000','Y'),(17,'파일업로드2','sql+이미지',17,'555','2024-09-11 03:06:14.000000','555','2024-09-12 00:19:51.000000','Y'),(18,'파일업로드3','이미지 저장',18,'555','2024-09-11 03:17:37.000000','555','2024-09-11 03:17:37.000000','Y'),(19,'file test','',19,'555','2024-09-12 01:17:17.000000','555','2024-09-12 03:22:23.000000','Y');
/*!40000 ALTER TABLE `tb_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_file_attr`
--

DROP TABLE IF EXISTS `tb_file_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_file_attr` (
  `file_idx` int NOT NULL AUTO_INCREMENT,
  `file_group_idx` int NOT NULL,
  `file_original_name` varchar(1000) NOT NULL,
  `save_file_name` varchar(1000) NOT NULL,
  `save_file_path` varchar(1000) DEFAULT NULL,
  `file_size` double DEFAULT NULL,
  `file_ext` varchar(45) DEFAULT NULL,
  `create_id` varchar(45) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(45) NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `use_yn` char(1) DEFAULT 'Y',
  PRIMARY KEY (`file_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_file_attr`
--

LOCK TABLES `tb_file_attr` WRITE;
/*!40000 ALTER TABLE `tb_file_attr` DISABLE KEYS */;
INSERT INTO `tb_file_attr` VALUES (1,19,'5. tiles.pptx','file_20240912101933_0.pptx','/ictsaeil/egovTest',211821,'pptx','555','2024-09-12 01:19:33.000000','555','2024-09-12 01:19:33.000000','Y'),(2,19,'1. Spring Framework.pptx','file_20240912101933_1.pptx','/ictsaeil/egovTest',828805,'pptx','555','2024-09-12 01:19:33.000000','555','2024-09-12 01:19:33.000000','Y'),(3,19,'6. session & cookie.pptx','file_20240912101933_2.pptx','/ictsaeil/egovTest',428301,'pptx','555','2024-09-12 01:19:33.000000','555','2024-09-12 01:19:33.000000','N'),(4,19,'4. Annotation.pptx','file_20240912101933_3.pptx','/ictsaeil/egovTest',1083756,'pptx','555','2024-09-12 01:19:33.000000','555','2024-09-12 01:19:33.000000','N'),(5,19,'3. 전자정부프레임워크 설정.pptx','file_20240912101933_4.pptx','/ictsaeil/egovTest',2610591,'pptx','555','2024-09-12 01:19:33.000000','555','2024-09-12 01:19:33.000000','Y'),(6,19,'2. Project 설정.pptx','file_20240912101933_5.pptx','/ictsaeil/egovTest',4756950,'pptx','555','2024-09-12 01:19:33.000000','555','2024-09-12 01:19:33.000000','Y'),(7,19,'sts_buildgradle_dependency.txt','file_20240912122223_0.txt','/ictsaeil/egovTest',957,'txt','555','2024-09-12 03:22:23.000000','555','2024-09-12 03:22:23.000000','Y');
/*!40000 ALTER TABLE `tb_file_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_member`
--

DROP TABLE IF EXISTS `tb_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_member` (
  `member_idx` int NOT NULL AUTO_INCREMENT,
  `member_id` varchar(45) NOT NULL,
  `member_pw` varchar(100) NOT NULL,
  `member_name` varchar(45) NOT NULL,
  `member_birth` varchar(10) NOT NULL,
  `member_email` varchar(200) NOT NULL,
  `create_id` varchar(45) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(45) NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `member_use_yn` char(1) DEFAULT 'Y',
  PRIMARY KEY (`member_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='회원테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_member`
--

LOCK TABLES `tb_member` WRITE;
/*!40000 ALTER TABLE `tb_member` DISABLE KEYS */;
INSERT INTO `tb_member` VALUES (1,'test','f6e0a1e2ac41945a9aa7ff8a8aaa0cebc12a3bcc981a929ad5cf810a090e11ae','test','2024-08-07','test@naver.com','test','2024-08-30 03:30:30.097722','test','2024-09-04 01:03:09.000000','Y'),(2,'test2','9b871512327c09ce91dd649b3f96a63b7408ef267c8cc5710114e629730cb61f','test2','2024-08-05','test2@naver.com','test2','2024-08-30 03:35:37.342435','test2','2024-08-30 03:35:37.342435','Y'),(3,'test3','556d7dc3a115356350f1f9910b1af1ab0e312d4b3e4fc788d2da63668f36d017','마이클','2024-09-07','test3@nate.com','test3','2024-09-02 00:26:46.363782','test3','2024-09-02 00:26:46.363782','Y'),(4,'test4','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','조던','2024-09-03','test4@daum.net','test4','2024-09-02 00:30:11.675297','test4','2024-09-02 00:30:11.675297','N'),(5,'555','91a73fd806ab2c005c13b4dc19130a884e909dea3f72d46e30266fe1a1f588d8','오상욱','2024-09-07','555@gmail.com','555','2024-09-02 02:58:01.872127','555','2024-09-04 04:13:45.000000','Y');
/*!40000 ALTER TABLE `tb_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_reply`
--

DROP TABLE IF EXISTS `tb_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_reply` (
  `reply_idx` int NOT NULL AUTO_INCREMENT,
  `board_idx` int NOT NULL,
  `parent_reply_idx` int DEFAULT NULL,
  `reply_content` varchar(1000) DEFAULT NULL,
  `create_id` varchar(45) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `update_id` varchar(45) NOT NULL,
  `update_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `reply_level` int DEFAULT '1',
  `use_yn` char(1) DEFAULT 'Y',
  PRIMARY KEY (`reply_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_reply`
--

LOCK TABLES `tb_reply` WRITE;
/*!40000 ALTER TABLE `tb_reply` DISABLE KEYS */;
INSERT INTO `tb_reply` VALUES (1,13,NULL,'reply1','555','2024-09-10 01:33:55.000000','555','2024-09-10 01:33:55.000000',1,'Y'),(2,13,1,'reply1-1','555','2024-09-10 01:34:58.000000','555','2024-09-10 01:34:58.000000',1,'Y'),(3,13,NULL,'reply2','555','2024-09-10 01:35:04.000000','555','2024-09-10 01:35:04.000000',1,'Y'),(4,13,3,'reply2-1','555','2024-09-10 01:35:12.000000','555','2024-09-10 01:35:12.000000',1,'Y'),(5,13,4,'reply2-1-1','555','2024-09-10 01:35:17.000000','555','2024-09-10 01:35:17.000000',1,'Y'),(6,13,NULL,'reply1','555','2024-09-10 01:35:38.000000','555','2024-09-10 01:35:38.000000',1,'Y'),(7,13,NULL,'reply2','555','2024-09-10 01:35:44.000000','555','2024-09-10 01:35:44.000000',1,'Y'),(8,13,NULL,'reply3','555','2024-09-10 01:35:49.000000','555','2024-09-10 01:35:49.000000',1,'Y'),(9,13,NULL,'reply4','555','2024-09-10 01:35:53.000000','555','2024-09-10 01:35:53.000000',1,'Y'),(10,13,NULL,'reply5','555','2024-09-10 01:35:57.000000','555','2024-09-10 01:35:57.000000',1,'Y'),(11,1,NULL,'reply1','555','2024-09-10 01:36:18.000000','555','2024-09-10 01:36:18.000000',1,'Y'),(12,1,NULL,'reply2','555','2024-09-10 01:36:23.000000','555','2024-09-10 01:36:23.000000',1,'Y'),(13,1,NULL,'reply3','555','2024-09-10 01:36:27.000000','555','2024-09-10 01:36:27.000000',1,'Y'),(14,1,NULL,'reply4','555','2024-09-10 01:36:32.000000','555','2024-09-10 01:36:32.000000',1,'Y'),(15,1,NULL,'reply5','555','2024-09-10 01:36:38.000000','555','2024-09-10 01:36:38.000000',1,'Y'),(16,19,NULL,'reply1','555','2024-09-12 04:24:01.000000','555','2024-09-12 04:24:01.000000',1,'Y'),(17,19,NULL,'reply1-1','555','2024-09-12 04:24:14.000000','555','2024-09-12 04:24:14.000000',1,'Y'),(18,19,NULL,'reply1-2','555','2024-09-12 04:25:14.000000','555','2024-09-12 04:25:14.000000',1,'Y'),(19,19,16,'test reply1-1','555','2024-09-12 04:30:41.000000','555','2024-09-12 04:30:41.000000',1,'Y');
/*!40000 ALTER TABLE `tb_reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 15:14:40
