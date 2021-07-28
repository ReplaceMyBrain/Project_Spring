CREATE DATABASE  IF NOT EXISTS `jsp_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jsp_project`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: jsp_project
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `comment_item`
--

DROP TABLE IF EXISTS `comment_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_item` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `ITEM_I_NUM` int NOT NULL,
  `IC_NUM` int NOT NULL AUTO_INCREMENT,
  `IC_CONTENT` text,
  `IC_DELETE` datetime DEFAULT NULL,
  `IC_EDIT` datetime DEFAULT NULL,
  `IC_REGIST` datetime DEFAULT NULL,
  PRIMARY KEY (`IC_NUM`),
  KEY `fk_USER_has_TOOL_TOOL1_idx` (`ITEM_I_NUM`),
  KEY `fk_USER_has_TOOL_USER_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_TOOL_TOOL1` FOREIGN KEY (`ITEM_I_NUM`) REFERENCES `item` (`I_NUM`),
  CONSTRAINT `fk_USER_has_TOOL_USER` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_item`
--

LOCK TABLES `comment_item` WRITE;
/*!40000 ALTER TABLE `comment_item` DISABLE KEYS */;
INSERT INTO `comment_item` VALUES ('bhj@gmail.com',1,1,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:12:36'),('hem@naver.com',1,2,'이거 기능도 정말 좋은가요??',NULL,NULL,'2021-05-27 03:26:46'),('king@naver.com',1,3,'네 기능 좋습니다!!!',NULL,NULL,'2021-05-27 03:30:45'),('hem@naver.com',1,4,'오 감사합니다.',NULL,NULL,'2021-05-27 03:32:09'),('123@naver.com',2,5,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:33:07'),('abc@google.com',3,6,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:41:22'),('ghk@gmail.com',4,7,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:42:15'),('jjang@gmail.com',5,8,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:42:56'),('king@naver.com',6,9,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:44:11'),('kuy@naver.com',7,10,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:44:38'),('lion@naver.com',8,11,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:45:21'),('lkj@gmail.com',9,12,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:46:52'),('zxc@naver.com',10,13,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:47:25'),('uyh@naver.com',11,14,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:48:11'),('bhj@gmail.com',12,15,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:50:38'),('zxc@naver.com',13,16,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:51:08'),('lion@naver.com',14,17,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:51:33'),('king@naver.com',15,18,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:52:28'),('lkj@gmail.com',16,19,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:53:48'),('hem@naver.com',17,20,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:54:18'),('abc@google.com',18,21,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:56:58'),('king@naver.com',19,22,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:57:08'),('hem@naver.com',20,23,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:58:03'),('abc@google.com',21,24,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:59:13'),('lkj@gmail.com',22,25,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 03:59:23'),('hem@naver.com',23,26,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 04:00:33'),('abc@google.com',24,27,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 04:01:43'),('hem@naver.com',25,28,'예쁘네요.. 사고싶다...',NULL,NULL,'2021-05-27 04:10:18');
/*!40000 ALTER TABLE `comment_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_notice`
--

DROP TABLE IF EXISTS `comment_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_notice` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `NOTICE_N_NUM` int NOT NULL,
  `NC_DELETE` datetime DEFAULT NULL,
  `NC_EDIT` datetime DEFAULT NULL,
  `NC_REGIST` datetime DEFAULT NULL,
  `NC_CONTENT` text,
  `NC_NUM` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`NC_NUM`),
  KEY `fk_USER_has_NOTICE1_NOTICE1_idx` (`NOTICE_N_NUM`),
  KEY `fk_USER_has_NOTICE1_USER1_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_NOTICE1_NOTICE1` FOREIGN KEY (`NOTICE_N_NUM`) REFERENCES `notice` (`N_NUM`),
  CONSTRAINT `fk_USER_has_NOTICE1_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_notice`
--

LOCK TABLES `comment_notice` WRITE;
/*!40000 ALTER TABLE `comment_notice` DISABLE KEYS */;
INSERT INTO `comment_notice` VALUES ('abc@google.com',1,NULL,NULL,'2021-05-27 11:43:51','확인했습니다! 주의하겠습니다.',1),('ghk@gmail.com',1,NULL,NULL,'2021-05-27 11:44:12','고운 말만 써야겠습니다.',2),('king@naver.com',1,NULL,NULL,'2021-05-27 11:44:34','안 좋은 말하시는 분들 많더라구요. 꼭 읽어야 할 텐데.. 감사합니다 관리자님!',3),('kuy@naver.com',2,NULL,NULL,'2021-05-27 11:44:52','맞아요..! 여긴 중고거래 사이트 아닙니다.',4),('ido@naver.com',2,NULL,NULL,'2021-05-27 11:45:43','중고나라 아닙니다 여러분 판매 ㄴㄴ해',5),('lion@naver.com',3,NULL,NULL,'2021-05-27 11:58:00','개인정보를 지켜주는 좋은 사이트입니다!',6),('lkj@gmail.com',3,NULL,NULL,'2021-05-27 12:05:23','확인했습니다!!',7);
/*!40000 ALTER TABLE `comment_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_tip`
--

DROP TABLE IF EXISTS `comment_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_tip` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `TIP_T_NUM` int NOT NULL,
  `TC_NUM` int NOT NULL AUTO_INCREMENT,
  `TC_CONTENT` text,
  `TC_DELETE` datetime DEFAULT NULL,
  `TC_EDIT` datetime DEFAULT NULL,
  `TC_REGIST` datetime DEFAULT NULL,
  PRIMARY KEY (`TC_NUM`),
  KEY `fk_USER_has_TIP_TIP1_idx` (`TIP_T_NUM`),
  KEY `fk_USER_has_TIP_USER1_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_TIP_TIP1` FOREIGN KEY (`TIP_T_NUM`) REFERENCES `tip` (`T_NUM`),
  CONSTRAINT `fk_USER_has_TIP_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_tip`
--

LOCK TABLES `comment_tip` WRITE;
/*!40000 ALTER TABLE `comment_tip` DISABLE KEYS */;
INSERT INTO `comment_tip` VALUES ('bhj@gmail.com',1,1,'감사합니다! 해결했어요',NULL,NULL,'2021-05-27 01:56:20'),('hem@naver.com',1,2,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 01:57:10'),('bhj@gmail.com',2,3,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 01:57:30'),('123@naver.com',2,4,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 01:58:10'),('bhj@gmail.com',3,5,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 01:58:50'),('123@naver.com',3,6,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 01:59:10'),('bhj@gmail.com',4,7,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 01:59:41'),('ghk@gmail.com',4,8,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:00:10'),('bhj@gmail.com',5,9,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:01:10'),('123@naver.com',5,10,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:02:10'),('hem@naver.com',6,11,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:02:40'),('hem@naver.com',7,12,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:03:55'),('hem@naver.com',8,13,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:06:55'),('hem@naver.com',9,14,'감사합니다! 해결했어요',NULL,NULL,'2021-05-27 02:10:55'),('123@naver.com',10,15,'덕분에 해결했습니다! 감사합니다',NULL,NULL,'2021-05-27 02:22:55'),('123@naver.com',11,16,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:23:55'),('hem@naver.com',12,17,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:24:10'),('123@naver.com',13,18,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:25:10'),('ghk@gmail.com',14,19,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:33:06'),('123@naver.com',15,20,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:33:20'),('ghk@gmail.com',16,21,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:50:10'),('hem@naver.com',17,22,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:50:14'),('123@naver.com',18,23,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:51:01'),('bhj@gmail.com',19,24,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:51:22'),('hem@naver.com',20,25,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:52:04'),('bhj@gmail.com',21,26,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:52:20'),('bhj@gmail.com',22,27,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:53:13'),('hem@naver.com',23,28,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:54:10'),('bhj@gmail.com',24,29,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:55:30'),('hem@naver.com',25,30,'좋은 정보 감사합니다.',NULL,NULL,'2021-05-27 02:56:20'),('123@naver.com',25,31,'정말 신기하네요 좋은 정보 얻어갑니다.',NULL,NULL,'2021-05-27 02:57:10');
/*!40000 ALTER TABLE `comment_tip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donate`
--

DROP TABLE IF EXISTS `donate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donate` (
  `DONATE_NUM` int NOT NULL AUTO_INCREMENT,
  `DONATE_AMOUNT` int DEFAULT NULL,
  PRIMARY KEY (`DONATE_NUM`),
  UNIQUE KEY `DONATE_NUM_UNIQUE` (`DONATE_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donate`
--

LOCK TABLES `donate` WRITE;
/*!40000 ALTER TABLE `donate` DISABLE KEYS */;
INSERT INTO `donate` VALUES (1,20),(2,15),(3,50),(4,5),(5,5),(6,50),(7,15),(8,5),(9,50),(10,5),(11,25),(12,5),(13,5),(14,50),(15,15),(16,15),(17,5),(18,50),(19,25),(20,5),(21,25),(22,50);
/*!40000 ALTER TABLE `donate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `I_NUM` int NOT NULL AUTO_INCREMENT,
  `I_TITLE` varchar(45) DEFAULT NULL,
  `I_CONTENT` text,
  `I_IMAGE` varchar(100) DEFAULT NULL,
  `I_CATEGORY` varchar(45) DEFAULT NULL,
  `I_HITS` int DEFAULT NULL,
  PRIMARY KEY (`I_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'macbook air','가장 얇고 가벼운 MacBook이 Apple M1 칩으로 완전히 새롭게 탈바꿈했습니다. ','save/5eea335daee6a8642c5f3894.jpeg','컴퓨터',0),(2,'타자를 치는데 있어서 손맛이 있는 키보드','손맛은 낚시에만 있는 것이 아니죠?\r\n키보드 한 키씩 누를 때마다 느껴지는 특유의 손맛의 매력적인 기계식 키보드!\r\n기계식 키보드는 키 하나하나에 스위치가 탑재되어 있어 독특한 타건감과 소리를 특징으로 꼽을 수 있습니다.\r\n그렇다면 소음이 크지 않을까, 손목에는 무리가 가지 않을까 궁금해하는 분들이 계실 텐데요,\r\n그래서 준비했습니다! 키보드 가격도 저렴합니다. 무려 19000원! 치킨 값이죠?? 치킨 값을 이 좋은 키보드 값으로 사용해보셔요\r\n','save/146732b40f21ac799077dfcc8b1223b6_1543990974_6355.png','악세사리',0),(3,'손목보호 버티컬 마우스','손목보호에도 좋고 한번 익숙해지기 시작하면 절대로 다른 마우스에 눈길, 손길이 가지 않는 마법을 지닌 버티컬 마우스!\r\n 정말 좋습니다. 한번 써보셔요! 저도 손목 때문에 사용하기 시작했는데 완전 만족스럽습니다.','save/antonio-manaligod-T_2UFB_xwzw-unsplash.jpg','악세사리',0),(4,'손목보호 버티컬 마우스','손목보호에도 좋고 한번 익숙해지기 시작하면 절대로 다른 마우스에 눈길, 손길이 가지 않는 마법을 지닌 버티컬 마우스!\r\n 정말 좋습니다. 한번 써보셔요! 저도 손목 때문에 사용하기 시작했는데 완전 만족스럽습니다.','save/antonio-manaligod-T_2UFB_xwzw-unsplash.jpg','악세사리',0),(5,'옛날 느낌이 나는 키보드','키보드 한 키씩 누를 때마다 느껴지는 특유의 손맛의 매력적인 기계식 키보드!\r\n 옛날의 추억을 떠올리기도 좋습니다!\r\n 기계식 키보드는 키 하나하나에 스위치가 탑재되어 있어 독특한 타건감과 소리를 특징으로 꼽을 수 있습니다.\r\n 그렇다면 소음이 크지 않을까, 손목에는 무리가 가지 않을까 궁금해하는 분들이 계실 텐데요,\r\n 그래서 준비했습니다! 제가 사용해본 결과 추억도 돋지만 사용감이 은근히 좋습니다. 한번 시도해보셔요!!!\r\n오묘한 색상의 조합을 가진 키보드\r\n손맛은 낚시에만 있는 것이 아니죠?\r\n키보드 한 키씩 누를 때마다 느껴지는 특유의 손맛의 매력적인 기계식 키보드!\r\n기계식 키보드는 키 하나하나에 스위치가 탑재되어 있어 독특한 타건감과 소리를 특징으로 꼽을 수 있습니다.\r\n그렇다면 소음이 크지 않을까, 손목에는 무리가 가지 않을까 궁금해하는 분들이 계실 텐데요,\r\n그래서 준비했습니다!\r\n','save/1510364334_2.jpeg','악세사리',0),(6,'마우스','디자인도 예쁘고 사용감도 편안하며 값도 생각보다 저렴합니다.\r\n정말 좋은 가성비 템이죠!!\r\n여러분 꼭 이 마우스 사세요!!','save/anthony-choren-e7dG26YCrZU-unsplash.jpg','악세사리',0),(7,'LG 컴퓨터','역시 가전은 LG, 전자기기도 LG, 사랑해요 LG 아니겠습니까??\r\n믿고 사는 전자기기는 역시 LG!\r\n화면 모니터도 30인치로 꽤 큰 편입니다 \r\n','save/ali-zolghadr-1txfdSON1Ao-unsplash.jpg','컴퓨터',0),(8,'모던한 분위기에 맞는 의자와 책상','사진에서도 보시다 싶이 나만의 홈 카페, 카페에서 코딩하거나 공부할 때 느낄 수 있는 감성 넘치는 의자와 책상입니다.\r\n단순히 감성만 넘치는 것이 아닌, 의자와 책상의 넓이가 조금 큰 편입니다.\r\n예쁘면 많이 불편하다고들 하시는데 이 의자와 책상은 편하기까지 합니다. 강력 추천해드립니다!!','save/bench-accounting-nvzvOPQW0gc-unsplash.jpg','책상',0),(9,'모던한 분위기에 맞는 의자와 책상','사진에서도 보시다 싶이 나만의 홈 카페, 카페에서 코딩하거나 공부할 때 느낄 수 있는 감성 넘치는 의자와 책상입니다.\r\n단순히 감성만 넘치는 것이 아닌, 의자와 책상의 넓이가 조금 큰 편입니다.\r\n예쁘면 많이 불편하다고들 하시는데 이 의자와 책상은 편하기까지 합니다. 강력 추천해드립니다!!','save/bench-accounting-nvzvOPQW0gc-unsplash.jpg','책상',0),(10,'I-MAC','가장 얇고 가벼운 MacBook이 Apple M1 칩으로 완전히 새롭게 탈바꿈했습니다. \r\n최대 3.5배 빨라진 CPU. 최대 5배 빨라진 GPU. 머신 러닝을 전보다 최대 9배 빠른 속도로 구동해주는 최첨단 Neural Engine. MacBook Air 사상 가장 긴 배터리 사용 시간,\r\n그리고 조용한 팬리스 디자인까지!\r\n이토록 놀라운 파워를 이토록 뛰어난 휴대성에 담아 최초로 선보입니다.','save/gunnar-sigurdarson-nzff_emVOfE-unsplash.jpg','컴퓨터',0),(11,'I-MAC','가장 얇고 가벼운 MacBook이 Apple M1 칩으로 완전히 새롭게 탈바꿈했습니다. \r\n최대 3.5배 빨라진 CPU. 최대 5배 빨라진 GPU. 머신 러닝을 전보다 최대 9배 빠른 속도로 구동해주는 최첨단 Neural Engine. MacBook Air 사상 가장 긴 배터리 사용 시간,\r\n그리고 조용한 팬리스 디자인까지!\r\n이토록 놀라운 파워를 이토록 뛰어난 휴대성에 담아 최초로 선보입니다.','save/gunnar-sigurdarson-nzff_emVOfE-unsplash.jpg','컴퓨터',0),(12,'우드 책상','너무 예쁜 체리몰딩의 우드 책상입니다.\r\n사진처럼 꾸미는 것도 추천드리지만 자신만의 감성으로 꾸미고, 실용적으로 사용하신다면 정말 좋은 책상이 될 것입니다.','save/minh-pham-lB9ylP8e9Sg-unsplash.jpg','책상',0),(13,'macbook ','가장 얇고 가벼운 MacBook이 Apple M1 칩으로 완전히 새롭게 탈바꿈했습니다. \r\n최대 3.5배 빨라진 CPU. 최대 5배 빨라진 GPU. 머신 러닝을 전보다 최대 9배 빠른 속도로 구동해주는 최첨단 Neural Engine. MacBook Air 사상 가장 긴 배터리 사용 시간,\r\n그리고 조용한 팬리스 디자인까지!\r\n이토록 놀라운 파워를 이토록 뛰어난 휴대성에 담아 최초로 선보입니다.','save/macBook.png','컴퓨터',0),(14,'macbook2','macbook2을 사용하는 순간, 당신은 Apple 사의 macbook2의 매력에 푹 빠져 타사의 제품들은 생각도 하지 않을 것입니다.\r\n가장 얇고 가벼운 MacBook이 Apple M1 칩으로 완전히 새롭게 탈바꿈했습니다. \r\n최대 3.5배 빨라진 CPU. 최대 5배 빨라진 GPU. 머신 러닝을 전보다 최대 9배 빠른 속도로 구동해주는 최첨단 Neural Engine. MacBook Air 사상 가장 긴 배터리 사용 시간,\r\n그리고 조용한 팬리스 디자인까지!\r\n이토록 놀라운 파워를 이토록 뛰어난 휴대성에 담아 최초로 선보입니다.','save/macBook2.png','컴퓨터',0),(15,'macbookair3','macbookair3의 숨겨진, 새로운 능력\r\n가장 얇고 가벼운 MacBook이 Apple M1 칩으로 완전히 새롭게 탈바꿈했습니다. \r\n최대 3.5배 빨라진 CPU. 최대 5배 빨라진 GPU. 머신 러닝을 전보다 최대 9배 빠른 속도로 구동해주는 최첨단 Neural Engine. MacBook Air 사상 가장 긴 배터리 사용 시간,\r\n그리고 조용한 팬리스 디자인까지!\r\n이토록 놀라운 파워를 이토록 뛰어난 휴대성에 담아 최초로 선보입니다.','save/macbookair3.jpeg','컴퓨터',0),(16,'저소음마우스','평소에 마우스의 소음으로 고민이신 분들께 딱 좋은 제품!\r\n이 마우스를 쓰면 평소의 소음보다 더욱  더 소음이 줄어들 것입니다.\r\n저소음 기능과 함께 아름다운 디자인을 선보이는 마우스, 이 마우스 추천합니다.','save/harpal-singh-KuvEVL7lXYQ-unsplash.jpg','악세사리',0),(17,'듀얼모니터!!','듀얼모니터를 사용하는 순간 평소 한 화면에서 분할하여 보는 사람들의 시력도 보호하고 \r\n조금 더 큰 화면으로 보는 것이 좋을 것입니다.\r\n조금이라도 더 건강하게 유용하게 사용할 수 있는 듀얼모니터! \r\n추천합니다.','save/joshua-aragon-BMnhuwFYr7w-unsplash.jpg','컴퓨터',0),(18,'핑크키보드','핑크핑크한 키보드\r\n오랫만에 숨겨왔던 나의 여림을 꺼낼 수 있는 키보드입니다.\r\n물론 저소음이더라구요 더 효율적으로 사용할 수 있을 것입니다.','save/1550022140_2.jpeg','악세사리',0),(19,'에러','ERROR!!!!\r\nTRY AGAIN','save/sorry.jpg','기타',0),(20,'ERROR','ERROR CODE 404\r\nERROR','save/sorry.jpg','기타',0),(21,'ERROR','ERROR CODE 404\r\nERROR','save/sorry.jpg','기타',0),(22,'ASUS 컴퓨터','2560 x 1600 해상도의 선명한 13.3형 Retina 디스플레이에서 이미지는 한 차원 높은 디테일로 생생하게 살아납니다. \r\n텍스트는 더욱 또렷하고 선명하게 보이고, 컬러는 그 어느 때보다 강력한 생동감을 자아내죠. \r\n게다가 글래스가 외장 가장자리까지 뻗어있기 때문에 그 어떤 시각적 방해 요소 없이 아름다운 화면을 온전히 감상할 수 있습니다.','save/sora-sagano-WFSap6CIXuw-unsplash.jpg','컴퓨터',0),(23,'macbook air','2560 x 1600 해상도의 선명한 13.3형 Retina 디스플레이에서 이미지는 한 차원 높은 디테일로 생생하게 살아납니다. \r\n텍스트는 더욱 또렷하고 선명하게 보이고, 컬러는 그 어느 때보다 강력한 생동감을 자아내죠. \r\n게다가 글래스가 외장 가장자리까지 뻗어있기 때문에 그 어떤 시각적 방해 요소 없이 아름다운 화면을 온전히 감상할 수 있습니다.','save/download.jpeg','컴퓨터',0),(24,'macbook air','2560 x 1600 해상도의 선명한 13.3형 Retina 디스플레이에서 이미지는 한 차원 높은 디테일로 생생하게 살아납니다. \r\n텍스트는 더욱 또렷하고 선명하게 보이고, 컬러는 그 어느 때보다 강력한 생동감을 자아내죠. \r\n게다가 글래스가 외장 가장자리까지 뻗어있기 때문에 그 어떤 시각적 방해 요소 없이 아름다운 화면을 온전히 감상할 수 있습니다.','save/download.jpeg','컴퓨터',0),(25,'깔끔한 책상','푸른 계열의 깔끔하고 시원한 느낌의 책상입니다.\r\n다른 책상들과 달리 더 커서 많은 책을 놓기에도 좋습니다.\r\n만족스럽습니다.','save/christian-lambert-GA3RibgYFds-unsplash.jpg','책상',0);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `N_NUM` int NOT NULL AUTO_INCREMENT,
  `N_TITLE` varchar(45) DEFAULT NULL,
  `N_CONTENT` text,
  `N_HITS` int DEFAULT NULL,
  PRIMARY KEY (`N_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'글 쓰기 예절을 지킵시다!!','7가지의 기본을 지켜주세요\r\n\r\n1. 타인을 존중하라\r\n타인의 권리와 의견을 존중하라. 다른 사람의 의견에 동의한다는 것을 의미하는 것은 아니다. 동의하지 않는다면 상대방에게 동의하지 않는다는 의사 표현을 하되 정중한 태도로 하라.\r\n\r\n2. 긍정적인 태도를 유지하라\r\n긍정은 긍정을 낳지만 부정은 부정을 낳는 법이다. 강렬한 표현을 삼가야 한다. 농담을 할 때에도 조심해야 한다. 의견을 강하게 주장하다 보면 대부분 논쟁으로 번질 수 있다.\r\n\r\n3. 이미지를 주의하여 선택하라\r\n상황에 어울리지 않는 이미지를 사용할 수가 있다. 사람들은 이미지를 이미지의 내용 그대로 받아들이는 경향이 있다.\r\n\r\n4. 명확한 표현을 사용하라\r\n명확하고 핵심을 전달하도록 글을 작성하도록 한다. 비어, 속어, 줄임말 등을 사용하면 독자에 따라 다르게 이해할 수 있다.\r\n\r\n5. 타인의 질문을 무시하지 마라\r\n어떤 사람이 직접 무언가에 대해 질문하면 무시하지 마라. 최소한 질문을 확인했음을 알려주고 적절한 경우 질문에 대한 답변을 할 것인지 여부를 알려주도록 한다.\r\n\r\n6. 규칙 준수\r\n시스템이나 그룹의 규칙을 숙지하고 준수한다. 규칙을 따르지 않는 사람이 있다면 공손하게 규칙을 따를 것을 지적한다.\r\n\r\n7. 관대한 마음을 가려라\r\n내 의견에 동의하지 않는 것에 괘념치 마라. 모든 것이 의도적인 것은 아니다. 모두가 규칙을 알고 있는 것은 아니다. 우리 모두는 실수를 할 수 있다. 누군가가 실수를 인정하고 용서를 구하면 용서하라.\r\n\r\n기본을 잘 지키는 사용자가 되셨으면 합니다!!\r\n',0),(2,'판매글 올리지 마세요','이 곳은 사용자분들이 사용한 물건 들 중 추천할 만한 물건들과 아이디어들을 공유하는 공간이며, 판매를 위한 공간이 아닙니다.',0),(3,'정보관련 공지사항!!','안녕하세요 마음만은 TOP개발자 입니다.\r\n서비스를 이용해 주시는 이용자 여러분께 감사드리며, 새로운 개인정보 처리방침 적용에 관한 안내 말씀 드립니다\r\n회사는 이용자 여러분의 개인정보를 무엇보다 소중하게 처리하고 있으며, 어떤 사안보다도 우선하여 안전하게 관리하고 있습니다.\r\n새롭게 변경될 개인정보 처리방침 내용을 확인하시고 서비스 이용에 참고하시기 바랍니다.\r\n\r\n1. 변경 사항\r\n(1) 휴면계정 관리\r\n마지막으로 로그인하신 지 1년 경과가 되면 휴면계정이 됩니다. \r\n기존 휴면계정 알림 서비스는 1년이 되었음을 알리는 문자를 보내드렸습니다. \r\n기존 서비스에서의 알림 서비스의 정보 변경문제로 인해 조금의 불편함을 겪으신 사용자분들이 계심으로 개선하기 위해 문자에서 이메일로 알림 서비스를 실시하겠습니다.\r\n\r\n(2) 주소 오픈 금지\r\n주소를 올리시는 분들을 위해 개인정보 관련 피해를 입을 수 있어 입력 1분 전후로 주소를 올리시는 분들께 개인 알림 문자를 드립니다.\r\n \r\n(3) 개인정보 처리 위탁 업체명 변경\r\n(주) 우리넥스 에서 (주) 유리티로 업체명이 변경되었습니다.',0),(4,'사용자 전환 리뷰 중단','사용자들의 정보관리차원에서 사용자 전환리뷰를 2021.06.21 이후, 종료될 예정입니다.',0),(5,'영상 리뷰 중단 안내','영상 리뷰의 용량으로 인해 너무 큰 손실이 생깁니다.\r\n영상 리뷰는 2021.06.01 (화) 이후부터 중단됩니다.',0),(6,'정보소통광장 서비스 일시 중단 안내','정보소통광장 시스템 개선을 위한 노후장비 교체 작업을 아래와 같이 추진할 예정입니다.\r\n이 기간 중 정보소통광장 서비스가 일시적으로 중단되오니 이용에 참고하시기 바랍니다.\r\n\r\nㅇ중단 사유 : 정보소통광장 노후서버 교체에 따른 서비스 이관\r\nㅇ중단 일시 : 2020년 11월 13일(금) 18시 ~ 11월 15일(일) 22시(3일간)',0),(7,'마음만은 TOP 개발자 공모전','2021 마음만은 TOP 개발자 공모전 안내\r\n2021 마음만은 TOP 개발자 공모전을 다음과 같이 안내합니다.\r\n공모 개요\r\n대 상 : 일반국민 누구나 참여 가능\r\n공모기간 : ’21. 6. 14.(수) ∼ ’21. 7. 14(금)\r\n방 법 : 담당자 이메일 ->123@naver.com로 공모제출\r\n공모 주제\r\n\r\n-적극행정 : 공공의 이익을 위하여 창의성과 전문성을 바탕으로 적극적인 업무 처리가 필요한 과제\r\n\r\n-규제혁신 : 국민과 기업에게 불합리하거나 불필요한 부담을 주는 법령상의 행정규제를 폐지·개선하는 것\r\n\r\n\r\n※ 법령·제도·규정 개선 과제는 규제혁신 분야로 우선 분류함\r\n심사기준 및 포상\r\n(코딩) : ① 시급성, ② 파급성, ③ 창의ㆍ전문성\r\n(디자인) : ① 실시가능성, ② 창의성, ③ 효과성\r\n* 가산점수 +10점 (포괄적 네거티브 전환과제, 신산업 관련 규제개선 과제)\r\n* 감산점수 -5점 (시행 시 예상 부작용)\r\n결과 발표 : 8월中(관세청 홈페이지·국민신문고 공지 및 개별통보)\r\n(시상내역) 총 18점(적극행정 9점, 규제혁신 9점)\r\n\r\n분야\r\n최우수상\r\n우수상\r\n장려상\r\n\r\n적극행정\r\n1점 / 100만원\r\n3점 / 각 50만원\r\n5점 / 각 30만원\r\n\r\n규제혁신\r\n1점 / 100만원\r\n3점 / 각 50만원\r\n5점 / 각 30만원\r\n\r\n\r\n\r\n※수상작에 해당하는 과제가 없는 경우 포상하지 않을 수 있으며, 분야 구분은 내용에 따라 제출한 의견과 다르게 분류·포상될 수 있음',0),(8,'전자통관시스템 점검작업 안내','전자통관시스템 점검작업으로 인해 아래와 같이 관세청 홈페이지가 중단되오니, 업무에 참고하시기 바랍니다\r\n\r\n- 아 래 -\r\n\r\nㅇ 작업일시 : 2021.7.13(토) 00:00~04:00(서비스 중단)\r\nㅇ 작업내용 : 전자통관 통합서버 점검\r\nㅇ 영향 서비스 : 전자문서 송수신 및 유니패스 서비스   \r\nㅇ 기타 문의사항 : 전자통관 기술지원센터(1544-1285)',0);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip`
--

DROP TABLE IF EXISTS `tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tip` (
  `T_NUM` int NOT NULL AUTO_INCREMENT,
  `T_TITLE` varchar(45) DEFAULT NULL,
  `T_CONTENT` text,
  `T_IMAGE` varchar(100) DEFAULT NULL,
  `T_CATEGORY` varchar(45) DEFAULT NULL,
  `T_HITS` int DEFAULT NULL,
  PRIMARY KEY (`T_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip`
--

LOCK TABLES `tip` WRITE;
/*!40000 ALTER TABLE `tip` DISABLE KEYS */;
INSERT INTO `tip` VALUES (1,'이클립스 자동완성하기','이클립스 자동완성에는 Ctrl + space 사용하는 방법이 존재하지만 더 좋은 방법이 있다.\r\n1. ① eclipse -> window -> Preferences > Java -> editor -> content Assist\r\n2. Auto activation delay 입력란은 0 값으로 설정,\r\nAuto activation triggers for java 입력란 에는 아래 문자열 코드를 전체 복사해서 붙여놓기!\r\n<=$:{.@qwertyuioplkjhgfdsazxcvbnm_QWERTYUIOPLKJHGFDSAZXCVBNM\r\n그럼 Ctrl + space를 사용하지 않아도 사용이 가능하다!','save_t/1.png','코드',0),(2,'jQuery를 활용한 유효성검사','유효성 검사는 엄청 귀찮은 작업중 하나이다.\r\njquery Validatide를 사용하면 엄청 쉽게 가능하다\r\n코드내용을 보자.\r\n<script\r\nsrc=\"https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.js\"></script>\r\n<script\r\nsrc=\"//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js\"></script>\r\n을 넣어주고\r\n <script>\r\n//유효성검사\r\n$(function(){\r\n $.validator.addMethod(\"regx\",function(value,elemqnt,regexpr){\r\n return regexpr.test(value);\r\n });\r\n $(\"form\").validate({\r\n //validation이 끝난 이후의 submit 직전 추가 작업할 부분\r\n    submitHandler: function() {\r\n var f = confirm(\"회원가입을 완료하겠습니까?\");\r\n var form = documenmht.frm;\r\n if(f){\r\n return true;\r\n } else {\r\n return false;\r\n }\r\n },\r\n //규칙\r\n rules: {\r\n   email: {\r\n required : true,\r\n regx : /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i,\r\n   remote: {\r\n url: \"./EmailCheckServlet\",\r\n type: \"POST\",\r\n data: {\r\n   email: function() {\r\n return $( \"#email\" ).val();\r\n }\r\n   }\r\n   }\r\n },\r\n pwd: {\r\n required : true,\r\n regx : /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\\\(\\\\)\\-_=+]).{6,20}$/\r\n },\r\n pwd2: {\r\n required : true,\r\n equalTo : pwd\r\n },\r\n name: {\r\n required : true,\r\n regx : /^[가-힣a-zA-z]{1,30}$/\r\n },\r\n tel: {\r\n   required : true,\r\n   regx : /^[0-9]{11,12}$/,\r\n   remote: {\r\n url: \"./TelCheckServlet\",\r\n type: \"POST\",\r\n data: {\r\n   email: function() {\r\n return $( \"#tel\" ).val();\r\n }\r\n   }\r\n   }\r\n },\r\n address1: {\r\n   required : true\r\n },\r\n address2: {\r\n   required : true\r\n },\r\n git: {\r\n   maxlength : 20\r\n },\r\n agreechk: {\r\n   required : true\r\n },\r\n },\r\n //규칙체크 실패시 출력될 메시지\r\n messages : {\r\n email: {\r\n required : \"필수입력사항입니다.\",\r\n regx : \"이메일형식을 맞춰주세요\",\r\n remote : \"존재하는 아이디입니다\"\r\n },\r\n pwd: {\r\n required : \"필수입력사항입니다.\",\r\n regx : \"비밀번호는 문자,숫자,특수문자 포함 6~20자입니다\"\r\n },\r\n pwd2: {\r\n required : \"필수입력사항입니다.\",\r\n equalTo : \"비밀번호가 맞지 않습니다.\"\r\n },\r\n name: {\r\n required : \"필수입력사항입니다.\",\r\n regx : \"이름은 한글,영어 1~30자입니다\"\r\n },\r\n tel: {\r\n required : \"필수입력사항입니다.\",\r\n regx : \"-없이 숫자11~12자리입니다\",\r\n remote : \"존재하는 번호입니다\"\r\n },\r\n address1: {\r\n required : \"필수입력사항입니다.\",\r\n },\r\n address2: {\r\n required : \"필수입력사항입니다.\",\r\n },\r\n git: {\r\n maxlength : \"최대 {0}글자 이하입니다.\"\r\n },\r\n agreechk: {\r\n required : \"개인정보처리방침에 동의해야합니다\"\r\n },\r\n }\r\n });\r\n})\r\n필요에 맞춰서 넣어주면 끝!','save_t/2.jpg','코드',0),(3,'HTML 이미지 넣기와 구분선 넣기','1. 이미지 넣기\r\nimg src=\"cat.png\" alt=\"it\'s cat\">\r\n이미지를 넣을 땐 <img src=“웹사이트주소 또는 저장된 장소를 넣어주면\r\n됩니다.\r\n2.구분 선넣기\r\n<hr>만 적어주면 구분선을 넣을 수 있습니다.','save_t/3.jpg','프로토타입',0),(4,'CSS로 글자색 변경하기','css로 글자색 변경방법은 쉽습니다!\r\n<style> 태그안에 해당하는 name, class를 지정 후 아래와 같이 color를 넣어주시면 됩니다.\r\ncolor : 입력 후 색이름(red) / HEX값(#000000) / RGB(rgb(255,0,0) 등으로 표현 가능합니다.\r\n <style>\r\n .jb-red {\r\n color: red;\r\n }\r\n </style>\r\n <body>\r\n <h1 class=\"jb-red\">Lorem ipsum dolor sit amet.</h1>\r\n </body>','save_t/4.jpg','코드',0),(5,' 에러페이지 (프로토타입)','에러페이지를 보여주는 프로토타입코드입니다.\r\n<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n <meta charset=\"UTF-8\">\r\n <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n <title>Error</title>\r\n <style>\r\n.back {\r\n position: relative;\r\n margin: auto;\r\n text-align: center;\r\n}\r\n.img-back {\r\n display:block;\r\n margin-top: 200px;\r\n}\r\nimg{\r\n height: 550px;\r\n}\r\n.text{\r\n text-align: center;\r\n position: absolute;\r\n padding: 5px 10px;\r\n text-align: center;\r\n position: absolute;\r\n top: 30%;\r\n left: 23%;\r\n}\r\n </style>\r\n</head>\r\n<body>\r\n <div class=\"back\">\r\n <div class=\"img-back\"> <img src=\"img/sorry.jpg\"> </div>\r\n <div class=\"text\">\r\n <h1> 죄송합니다.. 에러페이지입니다.</h1> <br><br>\r\n <h4>페이지가 없거나 일시적인 오류입니다.<br>\r\n 빠른시일내로 조치를 취하도록 하겠습니다. 죄송합니다</h4>\r\n </div>\r\n</div>\r\n</body>\r\n</html>','save_t/5.jpg','프로토타입',0),(6,' Visual Studio Code(VScode)','웹개발시 편리한 에디터를 소개해주고 싶어서 글을 썻습니다.\r\n비주얼 스튜디오 코드 에디터이며 인터페이스 및 플러그인을 통해 서버를 통해 실시간으로 변화된 내용을 확인 할 수 있습니다.\r\n위키백과사전의 내용입니다.\r\n비주얼 스튜디오 코드(영어: Visual Studio Code)는 마이크로소프트가 마이크로소프트 윈도우, macOS, 리눅스용으로 개발한 소스 코드 편집기이다. 디버깅 지원과 Git 제어, 구문 강조 기능등이 포함되어 있으며, 사용자가 편집기의 테마와 단축키, 설정 등을 수정할 수 있다.\r\n비주얼 스튜디오 코드는 깃허브가 개발한 일렉트론 프레임워크를 기반으로 구동된다. 그러나 같은 일렉트론 기반의 편집기 아톰을 포크한 것은 아니며, 비주얼 스튜디오 온라인 에디터(코드명 \"모나코\")를 기반으로 개발되었다.','save_t/6.png','기타',0),(7,'Github','git을 먼저 사용해보세요. 많이들 사용합니다.','save_t/7.png','기타',0),(8,'Github 사용법',' 깃을 다운로드해줍니다.\r\n저는 기본 옵션으로 다 next 해주면서 설치했어요.\r\n설치 확인은 cmd 창을 열고 (윈도 키+ R) 깃 버전이 뜨면 설치가 완료된 거예요!\r\n\r\nGitHub Sign Up 우선 가입을 해볼게요.\r\nhttps://github.com/ 위의 사이트에 들어가서 실제 사용자의 계정인지 간단하게 인증하고, 넘어갑니다.\r\n우리는 개인, 그리고 무료 버전을 사용할 것이기 때문에 Choose Free 버튼을 클릭해줍니다.\r\nComplete Setup을 눌러주면 자신의 메일 계정에 깃허브가 보낸 메일이 옵니다. 인증해주면 가입은 완료한 거예요!\r\nGitHub사용 방법?\r\n\r\n우선 몇 가지 용어들을 정리해봅시다.\r\n\r\n커맨드 라인 ( Command Line )\r\n윈도에서는 명령 프롬프트(cmd)에서, 맥이나 다른 OS에서는 터미널이라고 하는 프로그램입니다.\r\n우리가 일반적으로 접하는 마우스로 클릭하는 프로그램이 아닌 키보드로 입력을 받아 명령을 수행합니다.\r\n\r\n저장소 ( Repository )\r\n프로젝트가 살고 있는 저장공간. (혹은 디렉토리라고 칭하기도 합니다.)\r\n다른 블로그나 카페글들을 보니 주로 \'repo\'라고 줄여서 사용하고 있네요!\r\n이 저장소 안에 코드, 텍스트, 이미지를 저장할 수 있습니다.\r\n\r\n버전 관리 ( Version Control )\r\n팀 단위로 프로젝트를 운영할 때 필수적인 기능인데, 깃허브는\r\n다수의 사용자가 하나의 페이지를 수정해도 각 사용자별로 수정 내용을 저장합니다.\r\n모든 시점의 \'스냅 샷\'을 저장하기 때문에 겹쳐 쓸 일이 없습니다.\r\n\r\n\r\n커밋 ( Commit )\r\n커밋을 하면, 그 시점의 자신의 Repo 스냅샷을 찍어서 체크포인트 깃발을 꽂아둔다. 생각하면 편합니다.\r\n보통의 체크포인트가 그렇듯이 수정을 하다 이 체크포인트로 되돌아가고, 복원할 수 있습니다.\r\n\r\n브랜치 ( Branch )\r\n자신이 진행하는 프로젝트의 브랜치를 따서 (Branch off) 자기의 버전을 만드는 겁니다.\r\n작업을 마무리하면 프로젝트 메인디렉토리인 \'master\'에 브랜치를 \'merge\'합니다.\r\n기본적인 용어를 정리해보았는데, 이제 본격적으로 사용방법을 알려드릴게요.\r\n\r\n우선 저장소를 만들어보겠습니다.\r\n\r\n로그인을 하고, Start a project를 클릭해줍니다.\r\nRepo의 이름과 주석 등을 작성하고, Create repository를 눌러서 저장소를 하나 만듭니다.\r\n만들어진 repo는 자신의 프로필 클릭하고 Your Repositories 누르면 들어갈 수 있어요!\r\n\r\n그럼 이렇게 방금 만든 저장소가 보이고, 이를 클릭하면!\r\n저장소 안에 있는 파일이 보입니다.\r\n저는 SocketExample이라는 파일을 넣었는데, 원래는 README.md라는 파일만 있을 거예요.\r\n자신의 Git Repo 주소는 https://github.com/(아이디)/(repo 이름). git입니다.\r\n저의 Git Repo 주소는 https://github.com/do-not-do-that/heaven-hodu 가 되겠네요.\r\n물론 화면에 보이는 Clone or download라는 초록색 버튼을 눌러도 자신의 깃 레포지토리 주소가 보입니다.\r\n이 주소를 이용해서 앞으로 소스코드를 수정하고, 올리고 받고 할 겁니다.\r\n\r\n깃 배쉬를 이용해봅시다.\r\n돋보기 버튼을 눌러서 git bash를 검색해 들어가 줍니다.\r\n먼저 여기서 우리가 해야 할 작업이 있습니다.\r\n\r\ngit config --global user.name \"유저 이름\"\r\n\r\ngit config --global user.email \"가입할 때 사용한 메일 주소\"를 작성해줍니다.\r\n\r\n저는 깃허브 이름이 do-not-do-that이라 저렇게 해줬습니다.\r\n입력을 다하셨으면 pwd 명령을 쳐서 현재 자신이 어떤 위치에 있는지 파악합니다.\r\n저는 /c/Users/user에 있네요!\r\n이후 ls 명령어를 이용해 현재 이 위치에 어떤 것들이 있는지 확인해봅시다.\r\n\r\nGitHub에 있는 저장소 가져오기\r\n\r\n우선 저장소를 둘 위치로 이동을 해볼게요.\r\n\r\n저 같은 경우 Desktop 밑에 Python밑에 programming이라는 파일에 저장소를 둘 거예요!\r\ncd 명령어를 사용해서 거기까지 내려가 줍니다.\r\ncd ./Desktop/Python/programming\r\n이후 git clone (Repo 주소)를 입력합니다. \r\n\r\n예시를 보시죠!\r\n\r\n이런 식으로 저장소를 가져옵니다.\r\n\r\nls 명령어를 입력해서 성공적으로 저장소를 가져온 것을 확인할 수 있습니다.\r\n\r\n실제로 올라왔는지 들어가 볼게요.\r\n\r\n파일이 생성된 것을 확인할 수 있습니다.\r\n안의 .git파일이 보이지 않는다면 보기 > 옵션 > 폴더 및 검색 옵션 변경으로 들어가서 폴더 옵션 창을 엽니다.\r\n이후 보기 > 숨김 파일, 폴더 및 드라이브 표시 체크 > 확인하면 깃 파일이 보입니다. 이건 삭제하면 안 돼요!\r\n\r\nGit 간단한 명령어\r\n이 명령어들은 cmd 창에서도 되고, git bash에서도 실행이 됩니다.\r\n원격 저장소(github 안에 있는)와 로컬 저장소 (내 컴퓨터에 있는)를 오가면서 개발을 할 때 유용합니다.\r\n\r\ngit init : 현재 디렉터리를 Git 저장소로 변환해줍니다.\r\ngit add : 파일을 원격 저장소에 추가합니다. ( 예시로 test1.py를 추가하려면 git add test1.py  실제 추가가 아니라 깃의 저장소의 스냅샷에 포함된다고 생각하면 될듯 합니다.)\r\ngit commit : 디렉토리의 변경과 추가를 저장소에 기록합니다. ( git commit -m \"New File\" : 커밋 시 남길 메시지)\r\ngit push : 로컬 저장소의 변경사항을 github에 반영합니다. ( git push origin master )\r\ngit checkout : 현재 위치하고 있지 않은 저장소를 체크아웃합니다. (예를 들어 master 브랜치를 보고 싶으면, git checkout master를 사용할 수 있습니다.)\r\ngit merge : 브랜치에서 하던 작업을 끝내고, 동료가 볼 수 있는 master브랜치로 합치는 과정입니다.\r\ngit pull : 로컬 저장소 작업할 때, 작업하고 있는 저장소의 최신 버전을 받아옵니다.\r\n\r\n실제로 로컬에서 작업한 작업물을 원격 저장소로 옮기는 방법은 이렇습니다.\r\ncmd창을 열어 저장할 파일이 있는 파일로 이동합니다.\r\n\r\ngit init을 이용해서 원격저장소와 연결할 수 있는 git파일을 생성하고,\r\n로컬에 올리고 싶은 파일을\r\ngit add \'파일명\'\r\n\r\nex: git add test.py를 이용해서 git이 그 파일을 지켜보게 합니다.\r\ngit commit -m \"first commit\" 이후 commit을 해줍니다.\r\n\r\ngit remote -v (깃허브 remote 상태 보는 명령어)를 입력해서 아무것도 뜨지 않으면 자신의 repo에 들어가서 위에 보이는 링크를 복사하고,\r\ngit remote add origin \'복사한 링크\'를 사용해서 remote를 완료해줍니다.\r\n\r\nex:) git remote add origin https://github.com/do-not-do-that/Hacking.git\r\n이후에 git push -u origin master를 이용해서 로컬 저장소에 있는 파일을 원격으로 push 해줍니다.\r\n원격에서 확인해보면, 파일이 성공적으로 올라간 것을 확인해 볼 수 있습니다.\r\n\r\n','save_t/7.png','정보',0),(9,'mysql num 순서를 1부터 다시 설정하기','오늘은 mySQL AUTO_INCREMENT 값을 초기화 하는 방법을 소개하려고 합니다.\r\n\r\n아래는 [heidiSQL] 화면인데요,\r\n\r\n선택할 수 있는 기본값의 종류입니다. \r\n\r\n그 중, 맨 아래에 있는 아이가 오늘 소개할 AUTO_INCREMENT 에요.\r\nmySQL에서 PRIMARY KEY 에 AUTO_INCREMENT 속성을 주어서 키값을 자동으로 증가시킬 수 있습니다. \r\n\r\n행의 값을 UNIQUE 하게 만들기 위한 것인데요,\r\n이전 데이터가 삭제 된다고 해도 한 번 증가된 값은 다시 조정되지 않습니다. \r\n예를 들어, 100개의 데이터를 넣은 다음, 1개 데이터를 삭제한 후, 다시 넣어보면 인덱스 값은 101이 됩니다.\r\n이 AUTO_INCREMENT 값을 초기화 하려면, 아래와 같은 쿼리를 실행시켜주면 됩니다.\r\n\r\n물론 이 경우에는, 테이블에 새로 시작할 값보다 높은 값이 있으면 안됩니다. \r\n\r\n또 다른 방법은, \r\nAUTO_INCREMENT 값을 초기화 후, 테이블 안의 모든 데이터의 ID값을 재조정하는 방법입니다.\r\n\r\nALTER TABLE [테이블명] AUTO_INCREMENT=1;\r\nSET @COUNT = 0;\r\nUPDATE [테이블명] SET [AUTO_INCREMENT 열 이름] = @COUNT:=@COUNT+1;\r\n\r\n\r\n위 쿼리문은 현재 모든 데이터 ID값을 1부터 재조정하고,\r\n다음 인덱스 값을 [마지막 행번호 + 1] 로 정하는 명령어입니다.\r\n\r\n\r\n예를 들면, 테이블 `tb_board_item` 의 AUTO_INCREMENT 값을 초기화 후, 모든 데이터의 인덱스를 1부터 조정하려면, 다음과 같습니다.\r\n\r\n1)ALTER TABLE `tb_board_item` AUTO_INCREMENT=1;\r\n2)SET @COUNT = 0;\r\n3)UPDATE `tb_board_item` SET board_item_key = @COUNT:=@COUNT+1;\r\n\r\n\r\n\r\n전 테스트 하면서 데이터 넣고 지우고 반복하다 보면 한번씩 쓰게 되더라구요ㅎㅎ\r\n\r\n다른 분들에게도 도움이 되면 좋겠습니다\r\n\r\n\r\n','save_t/8.jpeg','코드',0),(10,'table 태그 tr요소 사이의 간격 margin 속성 주기','이 방법이 어려운 이유는 tr 태그에는 margin 속성이 적용되지 않기 때문입니다... 이런 이유로 아이템 사이에 간격을 주기 위해서는 다름 방법을 찾아야만 합니다. 가장 효과적인 방법은 무엇일까요?! \r\n어떤 방법들이 있는가..\r\ntr 태그 사이에 간격, 여백을 만드는 방법으로 아래와 같이 3가지 방법이 있습니다.\r\n\r\n1. border-spacing 사용하기\r\n이 방법은 가장 쉽고 간단한 방법입니다. border-spacing은 단일값 또는 각각 간격을 조정하는 것이 가능합니다. 만약 위 아래에만 10px 간격을 만들 경우 아래와 같이 이 속성을 table 태그에 사용합니다.\r\ntable {\r\n  border-collapse: separate;\r\n  border-spacing: 0 10px;\r\n}\r\n\r\n이때 table 태그의 border-collapse의 값은 separate로 설정되어야만 정상적으로 동작하므로 꼭 함께 선언해야합니다.\r\n\r\n2. 빈 tr 태그를 만들기\r\n이 방법 역시 간단하지만 비어있는 tr 태그를 넣어야하므로 코드가 지저분해질 수 있습니다. 방법은 쉽고 간단하지만 빈 tr 태그를 넣는 것이 못마땅할 수 있겠죠. 적용 방법은 아래와 같습니다 \r\n<table>\r\n  <tr>\r\n    <td>Line 1</td>\r\n  </tr>\r\n  <tr></tr>\r\n  <tr>\r\n    <td>Line 2</td>\r\n  </tr>\r\n  <tr></tr>\r\n  ...\r\n  ..\r\n</table>\r\n\r\n중간에 빈 tr 태그는 간격을 만들기 위한 용도로만 사용됩니다. 테이블의 row들이 적다면 크게 문제 없겠지만 많아지는 경우 성능에 좋지 않을 수 있겠죠. 이 경우 다른 방법을 찾거나 간격을 없애는 것도 또 다른 방법입니다.\r\n\r\n3. border-bottom 배경색과 같은 테두리 그리기\r\n이 방법 역시 매우 간단합니다. 배경색과 같은 테두리를 tr 태그에 추가하면 마치 아이템 사이가 떨어진 것 처럼 보이게되겠죠. 아래처럼 클래스를 지정하고 해당하는 클래스는 스타일을 적용하면 좋을 것입니다.\r\n<tr class=\"space\"></tr>\r\n\r\n아래는 css 코드입니다.\r\ntr.space {\r\n  border-bottom: 10px solid #fff;\r\n}\r\n여기까지 다양한 3가지 방법을 함께 알아보았습니다. 위 방법 중에서 개인적으로 1번 그리고 3번 방법을 자주 사용합니다.\r\n\r\n여기까지 테이블 태그의 아이템 사이에 간격을 만드는 방법을 알아보았습니다. 생각해보면 또 다른 방법도 있을 수 있습니다. table 태그를 사용하지 않고 대신 li태그를 사용하는 것도 방법입니다. 하지만 table 태그 요소는 다양한 메소드와 프로퍼티를 가져서 편리하죠. table DOM Object는 아이템을 선택하거나 추가, 제거 등등 다양한 메소드와 프로터티를 가집니다. 이 부분은 따로 정리하여 포스팅 하도록 하겠습니다.\r\n','save_t/10.png','프로토타입',0),(11,'table 태그 tr요소 사이의 간격 margin 속성 주기','이 방법이 어려운 이유는 tr 태그에는 margin 속성이 적용되지 않기 때문입니다... 이런 이유로 아이템 사이에 간격을 주기 위해서는 다름 방법을 찾아야만 합니다. 가장 효과적인 방법은 무엇일까요?! \r\n어떤 방법들이 있는가..\r\ntr 태그 사이에 간격, 여백을 만드는 방법으로 아래와 같이 3가지 방법이 있습니다.\r\n\r\n1. border-spacing 사용하기\r\n이 방법은 가장 쉽고 간단한 방법입니다. border-spacing은 단일값 또는 각각 간격을 조정하는 것이 가능합니다. 만약 위 아래에만 10px 간격을 만들 경우 아래와 같이 이 속성을 table 태그에 사용합니다.\r\ntable {\r\n  border-collapse: separate;\r\n  border-spacing: 0 10px;\r\n}\r\n\r\n이때 table 태그의 border-collapse의 값은 separate로 설정되어야만 정상적으로 동작하므로 꼭 함께 선언해야합니다.\r\n\r\n2. 빈 tr 태그를 만들기\r\n이 방법 역시 간단하지만 비어있는 tr 태그를 넣어야하므로 코드가 지저분해질 수 있습니다. 방법은 쉽고 간단하지만 빈 tr 태그를 넣는 것이 못마땅할 수 있겠죠. 적용 방법은 아래와 같습니다 \r\n<table>\r\n  <tr>\r\n    <td>Line 1</td>\r\n  </tr>\r\n  <tr></tr>\r\n  <tr>\r\n    <td>Line 2</td>\r\n  </tr>\r\n  <tr></tr>\r\n  ...\r\n  ..\r\n</table>\r\n\r\n중간에 빈 tr 태그는 간격을 만들기 위한 용도로만 사용됩니다. 테이블의 row들이 적다면 크게 문제 없겠지만 많아지는 경우 성능에 좋지 않을 수 있겠죠. 이 경우 다른 방법을 찾거나 간격을 없애는 것도 또 다른 방법입니다.\r\n\r\n3. border-bottom 배경색과 같은 테두리 그리기\r\n이 방법 역시 매우 간단합니다. 배경색과 같은 테두리를 tr 태그에 추가하면 마치 아이템 사이가 떨어진 것 처럼 보이게되겠죠. 아래처럼 클래스를 지정하고 해당하는 클래스는 스타일을 적용하면 좋을 것입니다.\r\n<tr class=\"space\"></tr>\r\n\r\n아래는 css 코드입니다.\r\ntr.space {\r\n  border-bottom: 10px solid #fff;\r\n}\r\n여기까지 다양한 3가지 방법을 함께 알아보았습니다. 위 방법 중에서 개인적으로 1번 그리고 3번 방법을 자주 사용합니다.\r\n\r\n여기까지 테이블 태그의 아이템 사이에 간격을 만드는 방법을 알아보았습니다. 생각해보면 또 다른 방법도 있을 수 있습니다. table 태그를 사용하지 않고 대신 li태그를 사용하는 것도 방법입니다. 하지만 table 태그 요소는 다양한 메소드와 프로퍼티를 가져서 편리하죠. table DOM Object는 아이템을 선택하거나 추가, 제거 등등 다양한 메소드와 프로터티를 가집니다. 이 부분은 따로 정리하여 포스팅 하도록 하겠습니다.\r\n','save_t/10.png','프로토타입',0),(12,'디자인패턴 중 하나인 MVC패턴','MVC패턴은 디자인패턴 중 하나입니다. \r\n\r\n디자인 패턴이란 프로그램이나 어떤 특정한 것을 개발하는 중에 발생했던 문제점들을 정리해서 상황에 따라 간편하게 적용해서 쓸 수 있는 것을 정리하여 특정한 \"규약\"을 통해 쉽게 쓸 수 있는 형태로 만든 것을 말합니다. \r\n\r\n어떠한 앱을 만든다고 한다면..그 앱을 유지보수를 하고 또 다른이들과 공유를 하면서 만들어야 할 떄 좀 더 쉽고 깔끔하게 만들 수 있는 방법을 우리는 고안해야 됩니다.  만약 이러한 방법들을 명확히 하지 않는다면.. 우리는 클래스 함수들을 일일히 다 만들어야 하게 될 겁니다. \r\n\r\n라이브러리나 프레임워크가 그에 따른 예입니다.  \r\n\r\n예를 들어 그냥 jQuery를 이용한다면 $(\'#lucid\')로 DOM을 선택할 수 있는 것을 그냥 순수Javascript를 사용한다면 document.getElementsByid(\'lucid\')로 길게 써가며 찾아야 하겠죠.  예를 들어 어떠한 data를 만들고 이 data를 수정할 로직을 짠다. 그리고 그 data를 보여주는 부분을 만들 때 이거 하나하나가 로직이 분리가 안되있고 한꺼번에 정의가 되어있다면? 나중에 유지보수하기가 힘들겁니다. 그걸 \"돕기\" 위해 디자인패턴이라는게 나오는 것이며 이렇듯 \"좀 더 쉽고 편리하게\" 사용할 수 있게 만든 특정한 방법들을 디자인 패턴이라고 합니다. 그 디자인 패턴이라는 것은 스트래티지 패턴, 옵저버 패턴 등등 정말 여러가지가 있고 그 중에 하나가 바로  MVC패턴입니다. ','save_t/11.jpg','정보',0),(13,'AJAX란 뭘까요?','AJAX: Asynchronous Javascript And XML, 에이젝스라 불리는 이 것을 직역하자면, 비동기 자바스크립트 그리고 XML을 뜻합니다. 이건 어떤 특정한 단일 기술을 뜻하는 용어는 아니며 여러가지 기술집합을 의미합니다. 넓은 의미의 AJAX는 웹 클라이언트 측에서 리로드 없이 비동기적으로 콘텐츠를 변경하기 위해 사용하는 모든 기술을 지칭하며, 좁은 의미의 AJAX는 서버측과 비동기적으로 통신하는 기술을 말합니다.    \r\n\r\n비동기적으로 자바스크립트, XML가지고 뭔갈 하는 것 같은데 좀 더 자세히 알아보도록 하죠.\r\n엇? 근데 비동기적이란 뭘까요? 동기적인 방식을 설명하면서 비동기적인 방식을 설명하도록 하겠습니다. \r\n\r\n동기적인 방식은 웹사이트에서 어떤 요청을 하면 그 요청을 수행하는 동안 사용자는 아무것도 못하는 것을 말합니다.\r\n그니까 이런겁니다.\r\n1. 데이터 요청\r\n2. 화면유지\r\n이렇게 로직이 있을 때, 동기적인 방식으로 1번을 수행하게 된다면, 그 1번을 수행하는 동안 웹사이트는 아무것도 못하게 됩니다. 그래서 흰 화면이 뜰 수 밖에 없습니다. 또한, HTML자체를 넘겨주기 때문에 중복되는 데이터까지도 전달되어 효율이 떨어집니다. \r\n\r\n비동기적인 방식은 1번을 수행하면서 2번을 수행하는 방식을 말합니다. 그렇기 때문에 데이터 요청을 하게 되어도 화면이 계속 유지가 되며, 사용자가 웹사이트를 화면유지된 상태에서 사용할 수 있으므로 좀 더 상호작용적이다 라고 말 할수 있는 것입니다. 예를 들어서 어떤 버튼을 클릭하고 글을 쓰고 싶은데 버튼 클릭하고 메시지가 뜨면서 페이지가 리로드 되고 그다음에 글을 쓰는 것보다는 버튼 클릭하고 메시지 뜨고 바로 글 쓰는게 좀 더 좋으니까요. \r\n\r\n원리\r\n이 AJAX는 XMLHttpRequest라는 객체를 통해서 수행됩니다.\r\n웹브라우저와 서버간의 다리를 이 XMLHttpRequest객체가 만들어주고 그 다리를 통해서 저희는 비동기적으로 데이터를 보내고 받을 수 있게 되는 것입니다. \r\n*이름과는 다르게 XML말고도 TEXT, JSON, JSONP  등 많은 데이터를 처리 할 수 있습니다.   \r\n\r\n예제\r\n그렇다면 Ajax는 어떻게 작동하는지 예제를 통해 만들어보도록 합시다. \r\n일단 간단한 서버하나를 만듭니다.\r\nconst express = require(\'express\'); \r\nconst app = express(); \r\napp.use(express.static(\'public\'))\r\napp.get(\'/getAjax\', function(req,res){\r\n    res.send(\"루시드라는 데이터입니다.\") \r\n}) \r\napp.listen(8080, function(){\r\n    console.log(\"app start\");\r\n})\r\ngetAjax라는 요청이 들어오면 메시지를 보내고, public이라는 폴더를 서버에 띄우는 정말 간단한 서버를 구축했습니다. \r\n그리고 public이란 폴더 안에 html파일 하나를 만듭니다.\r\n<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <title></title>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n    <script>  \r\n    getAjax = () =>{\r\n        const httpRequest = new XMLHttpRequest();  \r\n        httpRequest.onreadystatechange = function(){\r\n             if(this.readyState == 4 && this.status == 200){\r\n                document.getElementById(\"app\").innerHTML = this.responseText;\r\n            } \r\n        } \r\n        httpRequest.open(\"GET\", \"/getAjax\", true);\r\n        httpRequest.send(); \r\n    }     \r\n    </script>\r\n</head>\r\n\r\n<body>\r\n    <div id=\"app\">\r\n        데이터를 받기전\r\n    </div>\r\n    <button onclick=\"getAjax()\">데이터를 받아라!</button>\r\n</body>\r\n</html>\r\nhttpRequest라는 변수에 XMLHttpRequest라는 객체를 담아두고, \r\nrequest요청이 변할 때 감지하는 onreadystatechange라는 함수를 설정, 어떤 요청을 할건지 설정한 후, 보내기만 하면 ajax요청이 완료 됩니다. \r\nreadyState의 4\r\n응답결과를 받는 과정에서 onreadystatechange 콜백함수는 단계별로 4번이나 호출되는데, 0부터4까지가 있습니다.\r\n0: XMLHttpRequest 객체생성완료 open()함수는 아직 발동 x\r\n1: loading: open()함수 발동\r\n2: loaded: send() 함수 발동\r\n3: loading: 다운로드 중, responseText가 작은 데이터의 부분을 가지고 있음.\r\n4. Done: 모든 작업이 끝남.\r\n\r\n이렇게 말이죠. \r\n화면변환없이 좋죠?\r\n\r\n보기드물게 이 비동기요청을 동기로 바꿀수도 있습니다. \r\n httpRequest.open(\"GET\", \"/getAjax\", false);  \r\n바로 open부분에 false로 바꾸기만 한다면 가능하죠.\r\n그렇다면 false로 하고 요청을 하면 어떻게 될까요? \r\n화면이 하얀색으로 바뀌었다가 저 루시드라는 데이터가 나타날까요?\r\n아닙니다. 그냥 나타납니다. XHR을 이용한 동기요청이라니.. 하지마! 라는 문구와 함께 말이죠. \r\nSynchronous XMLHttpRequest on the main thread is deprecated because of its detrimental effects to the end user\'s experience. For more help, check https://xhr.spec.whatwg.org/.','save_t/12.png','정보',0),(14,'nginx란?','트래픽이 많은 웹사이트를 위해 확장성을 위해 설계한 비동기 이벤트 기반구조의 웹서버 소프트웨어입니다. \r\n\r\n일명, 더 적은 자원으로 더 빠르게 서비스를 하는 SW로 알려져 있습니다. \r\n이 프로그램은 가벼움과 높은 성능을 목표로 만들어 졌으며, 러시아의 프로그래머,이고르 시쇼브가 Apache의 C10K Problem(하나의 웹서버에 10,000개의 클라이언트의 접속을 동시에 다룰 수 있는 기술적인 문제)를 해결하기 위해 만든 Event-driven구조의 HTTP, Reverser Proxy, IMAP/POP PROXY server를 제공하는오픈소스 서버 프로그램입니다.','save_t/13.png','정보',0),(15,'Apache 와 nginx의 비교','주로 nginx는 Apache와 비교를 많이 당합니다. 예전에는 Apache서버를 많이 썼습니다만.. 지금은 다릅니다.  \r\n한눈에 봐도 Apache는 하락세, nginx는 상승세라는게 보입니다.\r\n2018년 5월 기준, nginx는 23%, Apache는 25%를 차지합니다.  \r\n\r\nApache\r\n- 쓰레드 / 프로세스 기반 구조로 요청 하나당 쓰레드 하나가 처리하는 구조\r\n- 사용자가 많으면 많은 쓰레드 생성, 메모리 및 CPU 낭비가 심함\r\n- 하나의 쓰레드 : 하나의 클라이언트 라는 구조\r\n\r\nnginx\r\n- 비동기 Event-Driven 기반 구조. \r\n- 다수의 연결을 효과적으로 처리가능. \r\n- 대부분의 코어 모듈이 Apache보다 적은 리소스로 더 빠르게 동작가능\r\n- 더 작은 쓰레드로 클라이언트의 요청들을 처리가능\r\n\r\n​\r\n\r\n','save_t/14.png','정보',0),(16,'쓰레드와 Event-driven','이렇게 쓰레드 기반은 하나의 커넥션당 하나의 쓰레드를 잡아 먹지만 이벤트 드라이븐방식은 여러개의 커넥션을 몽땅 다 Event Handler를 통해 비동기 방식으로 처리해 먼저 처리되는 것부터 로직이 진행되게끔 합니다. ','save_t/15.png','정보',0),(17,'nginx의 활용','Apache도 나름 좋은 점이 있지만 서버의 자원 활용도 능력으로 보면 nginx가 좋습니다. \r\n한 개의 커넥션당 하나의 쓰레드는 자원을 너무 많이 잡아먹습니다. 위 글을 보면 nginx도 비동기, node.js도 비동기네요\r\n 둘이 짝짜꿍하면 뭔가 좋은게 탄생할 거 같은 느낌이 듭니다.\r\n\r\nNODE.JS의 창시자, 라이언 달은\r\n \"You just may be hacked when some yet-unknown buffer overflow is discovered. Not that that couldn\'t happen behind nginx, but somehow having a proxy in front makes me happy\".  \r\n이런 말을 하면서 nginx를 프록시서버로 앞단에 놓고 node.js를 뒤쪽에 놓는게 버퍼 오버플로우 취약점에 의한 공격을 어느정도 방지한다고 하였습니다.  \r\n익명의 사용자의 직접적인 Web Server로의 접근을 차단하고 간접적으로 한 단계를 더 거침으로써 보안적인 부분을 처리할 수 있다는 것입니다.\r\n\r\n버퍼 오버플로우 : 버퍼는 보통 데이타가 저장되는 메모리 공간을 뜻하는데 메모리 공간을 벗어나는 경우 오버플로우가 되고 이 때 사용되지 않아야 할 영역에 데이터가 덮어씌워져 주소, 값을 바꾸는 공격입니다.\r\n​\r\n버퍼 오버플로우로 인한 큰 이슈 : 하트블리드사태\r\n즉, 실제포트를 숨기고 nginx의 80포트를 통해서 프록시하면 보안적으로 막을 수 있다는 것인데 이것 말고도 정적자료에 대한 gzip압축, 그리고 앞단에서의 로그를 저장할 수 있습니다. \r\n이것보다 더 많은 기능이 있지만 제가 사용했던 것만 설명하자면 다음과 같습니다.','save_t/13.png','정보',0),(18,'nginx 와 node.js를 이용한 프록시서버 만들기','그렇다면 어떻게 nginx를 이용해서 저렇게 프록시 서버를 만들어서 앞단에 위치 할 수 있을까요? 방법은 간단합니다. 먼저 nginx를 깔고  nginx.conf 파일을 열어서 \r\n\r\n    server {\r\n       listen       81; \r\n       server_name  localhost;\r\n\r\n       location / { \r\n           proxy_pass http://127.0.0.1:3000/;  \r\n       }\r\n    }\r\n이렇게 서버부분을 바꿔주시면 됩니다.\r\nproxy_pass하고 저런식으로 어떤 서버로 포워딩 될 건지를 적어줍니다.\r\n그렇게 한 후,  nginx를 실행시켜줍시다.  그리고 간단하게 node.js로 서버를 만들어 줍니다. \r\n\r\nvar express = require(\'express\')\r\nvar app = express();\r\napp.get(\'/\', (req,res)=>{\r\n    res.send(\"3000번 서버입니다.\")\r\n})\r\napp.listen(3000, ()=>{\r\n    console.log(3000);\r\n})\r\n3000번포트로 실행되는 간단한 서버입니다. \r\n\r\n짜잔..! 분명 81번 포트로 접속을 했는데 3000번포트에 열린 서버로 접속이 됬네요? 이렇게 앞단에 nginx를 둘 수 있습니다. \r\n이외에도 명령어는 다음과 같습니다. \r\nnginx 명령어\r\n재시작-> sudo service nginx reload\r\n      # 또는..\r\n     sudo service nginx restart\r\n    # 또는.. \r\n    sudo /etc/init.d/nginx restart\r\nBackend-service 에 대해 max fails, fail timeout시 백업 서버로 진입할 수 있도록 처리가 가능하다고 합니다. ','save_t/16.png','코드',0),(19,'컴퓨터 호환성','호환성이란 것은 무엇일까요?\r\n1. CPU의 소켓과 메인보드의 소켓규격이 맞아야 한다.\r\n2. 메인보드의 메모리 속도와 슬롯과 메모리가 맞아야 한다.\r\n3. CPU의 기본쿨러가 있는지 확인하고 사제쿨러를 사야 하는지를 고려한다.\r\n4. 케이스의 규격과 메인보드의 규격이 맞아야 한다.  \r\n이렇게 4가지 간단히 소개해드렸습니다!','save_t/9.jpg','정보',0),(20,' IT 초보자도 쉽게 따라하는 Tensorboard','Tensorboard는 이렇게 하는 겁니다.\r\n1. tensorflow 예제를 만들며 summary를 이용해 파일로 저장\r\n2. tensorboard 명령어를 통한 웹서버 오픈\r\n3. 웹서버 들어가서 살펴보기 입니다.\r\n\r\n1. tensorflow 예제를 만들어봅시다.\r\nGraph and Loss visualization using Tensorboard.\r\nThis example is using the MNIST database of handwritten digits\r\n(http://yann.lecun.com/exdb/mnist/)\r\nAuthor: Aymeric Damien\r\nProject: https://github.com/aymericdamien/TensorFlow-Examples/\r\n\'\'\'\r\n\r\nfrom __future__ import print_function\r\n\r\nimport tensorflow as tf\r\n\r\n# Import MNIST data\r\nfrom tensorflow.examples.tutorials.mnist import input_data\r\nmnist = input_data.read_data_sets(\"/tmp/data/\", one_hot=True)\r\n\r\n# Parameters\r\nlearning_rate = 0.01\r\ntraining_epochs = 25\r\nbatch_size = 100\r\ndisplay_epoch = 1\r\nlogs_path = \'./board/tensorflow_logs\'\r\n\r\n# tf Graph Input\r\n# mnist data image of shape 28*28=784\r\nx = tf.placeholder(tf.float32, [None, 784], name=\'InputData\')\r\n# 0-9 digits recognition => 10 classes\r\ny = tf.placeholder(tf.float32, [None, 10], name=\'LabelData\')\r\n\r\n# Set model weights\r\nW = tf.Variable(tf.zeros([784, 10]), name=\'Weights\')\r\nb = tf.Variable(tf.zeros([10]), name=\'Bias\')\r\n\r\n# Construct model and encapsulating all ops into scopes, making\r\n# Tensorboard\'s Graph visualization more convenient\r\nwith tf.name_scope(\'Model\'):\r\n    # Model\r\n    pred = tf.nn.softmax(tf.matmul(x, W) + b) # Softmax\r\nwith tf.name_scope(\'Loss\'):\r\n    # Minimize error using cross entropy\r\n    cost = tf.reduce_mean(-tf.reduce_sum(y*tf.log(pred), reduction_indices=1))\r\nwith tf.name_scope(\'SGD\'):\r\n    # Gradient Descent\r\n    optimizer = tf.train.GradientDescentOptimizer(learning_rate).minimize(cost)\r\nwith tf.name_scope(\'Accuracy\'):\r\n    # Accuracy\r\n    acc = tf.equal(tf.argmax(pred, 1), tf.argmax(y, 1))\r\n    acc = tf.reduce_mean(tf.cast(acc, tf.float32))\r\n\r\n# Initialize the variables (i.e. assign their default value)\r\ninit = tf.global_variables_initializer()\r\n\r\n# Create a summary to monitor cost tensor\r\ntf.summary.scalar(\"loss\", cost)\r\n# Create a summary to monitor accuracy tensor\r\ntf.summary.scalar(\"accuracy\", acc)\r\n# Merge all summaries into a single op\r\nmerged_summary_op = tf.summary.merge_all()\r\n\r\n# Start training\r\nwith tf.Session() as sess:\r\n\r\n    # Run the initializer\r\n    sess.run(init)\r\n\r\n    # op to write logs to Tensorboard\r\n    summary_writer = tf.summary.FileWriter(logs_path, graph=tf.get_default_graph())\r\n\r\n    # Training cycle\r\n    for epoch in range(training_epochs):\r\n        avg_cost = 0.\r\n        total_batch = int(mnist.train.num_examples/batch_size)\r\n        # Loop over all batches\r\n        for i in range(total_batch):\r\n            batch_xs, batch_ys = mnist.train.next_batch(batch_size)\r\n            # Run optimization op (backprop), cost op (to get loss value)\r\n            # and summary nodes\r\n            _, c, summary = sess.run([optimizer, cost, merged_summary_op],\r\n                                     feed_dict={x: batch_xs, y: batch_ys})\r\n            # Write logs at every iteration\r\n            summary_writer.add_summary(summary, epoch * total_batch + i)\r\n            # Compute average loss\r\n            avg_cost += c / total_batch\r\n        # Display logs per epoch step\r\n        if (epoch+1) % display_epoch == 0:\r\n            print(\"Epoch:\", \'%04d\' % (epoch+1), \"cost=\", \"{:.9f}\".format(avg_cost))\r\n\r\n    print(\"Optimization Finished!\")\r\n\r\n    # Test model\r\n    # Calculate accuracy\r\n    print(\"Accuracy:\", acc.eval({x: mnist.test.images, y: mnist.test.labels}))\r\n\r\n    print(\"명령어 :: tensorboard --logdir=./board/tensorflow_logs \")\r\n이렇게 summary를 통해서 파일은 쌓이게 되고\r\n\r\n\r\n2. 텐서보드 이 파일을 기반으로 보여주는 검색을 치면 됩니다. \r\n\r\ntensorboard --logdir=./board/tensorflow_logs\r\n3. 이렇게 치면 웹서버는 형성되고\r\n\r\n자신의 아이피를 기반으로 \r\n(localhost나 127.0.0.1은 이상하게 안되더라구여.. )\r\nhttp://172.30.1.60:6006/\r\n이런식으로 치면 된답니다.','save_t/17.png','기타',0),(21,' IT 초보자도 쉽게 따라하는 Tensorboard','Tensorboard는 이렇게 하는 겁니다.\r\n1. tensorflow 예제를 만들며 summary를 이용해 파일로 저장\r\n2. tensorboard 명령어를 통한 웹서버 오픈\r\n3. 웹서버 들어가서 살펴보기 입니다.\r\n\r\n1. tensorflow 예제를 만들어봅시다.\r\nGraph and Loss visualization using Tensorboard.\r\nThis example is using the MNIST database of handwritten digits\r\n(http://yann.lecun.com/exdb/mnist/)\r\nAuthor: Aymeric Damien\r\nProject: https://github.com/aymericdamien/TensorFlow-Examples/\r\n\'\'\'\r\n\r\nfrom __future__ import print_function\r\n\r\nimport tensorflow as tf\r\n\r\n# Import MNIST data\r\nfrom tensorflow.examples.tutorials.mnist import input_data\r\nmnist = input_data.read_data_sets(\"/tmp/data/\", one_hot=True)\r\n\r\n# Parameters\r\nlearning_rate = 0.01\r\ntraining_epochs = 25\r\nbatch_size = 100\r\ndisplay_epoch = 1\r\nlogs_path = \'./board/tensorflow_logs\'\r\n\r\n# tf Graph Input\r\n# mnist data image of shape 28*28=784\r\nx = tf.placeholder(tf.float32, [None, 784], name=\'InputData\')\r\n# 0-9 digits recognition => 10 classes\r\ny = tf.placeholder(tf.float32, [None, 10], name=\'LabelData\')\r\n\r\n# Set model weights\r\nW = tf.Variable(tf.zeros([784, 10]), name=\'Weights\')\r\nb = tf.Variable(tf.zeros([10]), name=\'Bias\')\r\n\r\n# Construct model and encapsulating all ops into scopes, making\r\n# Tensorboard\'s Graph visualization more convenient\r\nwith tf.name_scope(\'Model\'):\r\n    # Model\r\n    pred = tf.nn.softmax(tf.matmul(x, W) + b) # Softmax\r\nwith tf.name_scope(\'Loss\'):\r\n    # Minimize error using cross entropy\r\n    cost = tf.reduce_mean(-tf.reduce_sum(y*tf.log(pred), reduction_indices=1))\r\nwith tf.name_scope(\'SGD\'):\r\n    # Gradient Descent\r\n    optimizer = tf.train.GradientDescentOptimizer(learning_rate).minimize(cost)\r\nwith tf.name_scope(\'Accuracy\'):\r\n    # Accuracy\r\n    acc = tf.equal(tf.argmax(pred, 1), tf.argmax(y, 1))\r\n    acc = tf.reduce_mean(tf.cast(acc, tf.float32))\r\n\r\n# Initialize the variables (i.e. assign their default value)\r\ninit = tf.global_variables_initializer()\r\n\r\n# Create a summary to monitor cost tensor\r\ntf.summary.scalar(\"loss\", cost)\r\n# Create a summary to monitor accuracy tensor\r\ntf.summary.scalar(\"accuracy\", acc)\r\n# Merge all summaries into a single op\r\nmerged_summary_op = tf.summary.merge_all()\r\n\r\n# Start training\r\nwith tf.Session() as sess:\r\n\r\n    # Run the initializer\r\n    sess.run(init)\r\n\r\n    # op to write logs to Tensorboard\r\n    summary_writer = tf.summary.FileWriter(logs_path, graph=tf.get_default_graph())\r\n\r\n    # Training cycle\r\n    for epoch in range(training_epochs):\r\n        avg_cost = 0.\r\n        total_batch = int(mnist.train.num_examples/batch_size)\r\n        # Loop over all batches\r\n        for i in range(total_batch):\r\n            batch_xs, batch_ys = mnist.train.next_batch(batch_size)\r\n            # Run optimization op (backprop), cost op (to get loss value)\r\n            # and summary nodes\r\n            _, c, summary = sess.run([optimizer, cost, merged_summary_op],\r\n                                     feed_dict={x: batch_xs, y: batch_ys})\r\n            # Write logs at every iteration\r\n            summary_writer.add_summary(summary, epoch * total_batch + i)\r\n            # Compute average loss\r\n            avg_cost += c / total_batch\r\n        # Display logs per epoch step\r\n        if (epoch+1) % display_epoch == 0:\r\n            print(\"Epoch:\", \'%04d\' % (epoch+1), \"cost=\", \"{:.9f}\".format(avg_cost))\r\n\r\n    print(\"Optimization Finished!\")\r\n\r\n    # Test model\r\n    # Calculate accuracy\r\n    print(\"Accuracy:\", acc.eval({x: mnist.test.images, y: mnist.test.labels}))\r\n\r\n    print(\"명령어 :: tensorboard --logdir=./board/tensorflow_logs \")\r\n이렇게 summary를 통해서 파일은 쌓이게 되고\r\n\r\n\r\n2. 텐서보드 이 파일을 기반으로 보여주는 검색을 치면 됩니다. \r\n\r\ntensorboard --logdir=./board/tensorflow_logs\r\n3. 이렇게 치면 웹서버는 형성되고\r\n\r\n자신의 아이피를 기반으로 \r\n(localhost나 127.0.0.1은 이상하게 안되더라구여.. )\r\nhttp://172.30.1.60:6006/\r\n이런식으로 치면 된답니다.','save_t/17.png','기타',0),(22,'웹 표준과 웹 접근성','웹표준과 웹접근성은 하나의 단어라 부를 수 있을 정도로 뗄레야 뗄 수 없는 단어입니다. \r\n웹표준을 잘키키고 웹접근성을 잘 구현해야 웹을 잘 만들었다 하는 것이죠.\r\n그렇다면 도대체 뭘하면 웹표준과 웹접근성을 잘 구현했다. 하는 것일까요?\r\n웹 표준을 잘지킨다 = W3C의 권고를 따라 HTML,JS,CSS를 코딩, 문서 객체 모델(DOM)또한 원칙에 따라 구조화를 잘 시킨 것을 말합니다.  \r\n웹 접근성이 좋다 = \"눈으로 보거나 들을 수 있는 모든 정보의 대체 표현 수단을 제공하고  UX의 제한을 두지 않는 웹\" 을 말합니다.\r\n먼저 웹표준입니다.  \r\n\r\n1.데이터와 디자인의 분리\r\n<font>태그가 아닌 css를 이용하여 스타일을 정한다.\r\n(옛날에는 font태그 정말 잘 사용했죠.. 한 2004년도에 만들어진 코드보면 ..있습니다. font태그..ㄷㄷ )\r\n\r\n2. absolute보단 relative\r\nfont-size를 쓸 때 px,pt가 아닌 em,rem을 쓰자.\r\n전 개인적으로 em보다는 rem을 씁니다. html에 font-size를 정해놓고 그걸 기반으로 responsive한 디자인을 만들 수 있습니다.\r\n\r\n3. 구조화를 하자.\r\n구조화가 잘된 문서는 더 빨리 렌더링이 된다.\r\nHTML 구성요소들을 잘 활용해서 태그들을 쓰자.\r\n제목: H1, H2, H3\r\n문단: P\r\n목록: UL, OL, DL\r\n이렇게 구조화가 된 문서는  SEO 에도 효과적이니 꼭 지킵시다!\r\n\r\n4. 크로스 브라우징\r\n우리의 앱은 모든 브라우저에서도 똑같은 화면이 나타나야 합니다. 이를 크로스 브라우징이라 합니다. 각기 다른 브라우저는 엔진또한 모두 다릅니다. \r\n\r\nMicrosoft의 익스플로러 : Trident\r\n모질라의 파이어폭스: Gecko\r\n애플의 사파리: Webkit\r\n구글의 크롬: Blink(Webkit에서 파생됨)\r\n\r\n또한 브라우저 자체적으로 CSS 스타일을 가지고 있기 때문에 이를 CSS초기화를 통해서 표준화를 시켜주는 과정이 필요합니다. \r\n*{\r\nmargin:0;\r\npadding:0;\r\n}\r\nul{\r\nlist-style:none;\r\n}\r\n이런식의 표준화 말이죠.\r\n이를 위해 normalize.css라는 오픈소스 프로젝트도 나왔답니다. \r\n\r\n\r\nhtml {\r\n  line-height: 1.15; /* 1 */\r\n  -ms-text-size-adjust: 100%; /* 2 */\r\n  -webkit-text-size-adjust: 100%; /* 2 */\r\n}\r\n* normalize.css의 한부분입니다. \r\n\r\n그리고 내가 구현해야 하는 기술을 사용하기전에 caniuse 사이트를 활용하여 내가 구현하고자하는 브라우저에서 작동되는 지를 확인하며 구현하도록 합시다.  \r\n\r\n5. 내가 보여주고자 하는 부분을 좀 더 잘 보여주자.\r\n1) meta 요소를 활용하자.\r\n  <meta name=\"description\" content=\"루시드의블로그\">\r\n  <meta name=\"keywords\" content=\"HTML,CSS,Vue.js,JavaScript\">\r\n  <meta name=\"author\" content=\"Lucid\">\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n2) 팝업창을 띄울 때 마우스를 링크에 댔을 때 조차 내가 가고자 하는 링크가 표시되게끔 하자\r\n<a href=\"javascript:pop()\">네이버팝업</a>\r\n<script>\r\nfunction pop(){\r\nwindow.open(\"http://www.naver.com\");\r\n}\r\n</script>\r\n//보다는..\r\n<a href=\"http://www.naver.com\" onClick=\"window.open(this.href,\"\",\"\"); return false;>팝업</a>\r\n//이렇게 해야 마우스를 대면 링크가 눈에 보인다. \r\n6. HTML5를 쓰자. (W3C에서 만들고 있는 차세대 웹표준안이다.)\r\nHTML5는 W3C에서 만들고 있는 차세대 웹표준안입니다.\r\n그니까 이를 잘 활용한다면 웹표준을 잘 따르고 있다라고 봐도 되겠죠?\r\n그렇다면 HTML5는 어떻게 구현하고 뭘 말하는 걸까요? 바로 다음과 같습니다. \r\n\r\n1) 첫문장에 <!DOCTYPE HTML>을 쓰자.\r\n2) header footer nav section aside article 태그들을 적극 활용하자.\r\n*section은 컨텐츠를 그룹화시키는 태그, article은 독립적인 컨텐츠, 블로그글, 뉴스 본문에 해당한다.\r\n3) 기존의 자바스크립트가 했던 기능을 form만으로도 구현하자. \r\n<input type=\"date\">\r\n이 외에도 HTML5를 활용하면 canvas, local Storage, web Worker, indexedDB, geolocation API, WEBGL 을 구현할 수 있습니다. \r\n\r\n이제 웹 접근성!입니다. 웹접근성을 잘 구현한다는 것은 평범한 사람뿐만아니라 장애가 있으신 분들도 편하게 나의 웹을 사용한다는 것과도 동일합니다. 정보는 모든 사람의 것이니까요.\r\n \r\n#눈으로 보거나 들을 수 있는 모든 정보의 대체 표현 수단을 제공하고 UX의 제한을 두지 마라. \r\n1) img 태그에는 alt를 기술.\r\n2) 자동으로 재생되는 배경음 사용금지 및 음악컨트롤\r\n3) 자동으로 움직이는 컨텐츠는 움직임을 제어할 수 있게끔.\r\n4) 입력오류를 정정할 수 있는 방법을 제공\r\n5) 자바스크립트가 작동하지 않는 환경도 고려를 하자. (이게 가장 어렵죠..)\r\n\r\n주관적으로 좀 중요하다 싶은 것만 정리를 해보았습니다.  웹표준과 웹접근성까지 고려를 하면서 만들면 정말 아름다운 웹이 되지 않을까 싶습니다! ','save_t/18.png','정보',0),(23,'CRUD란?','CRUD는 대부분의 컴퓨터 소프트웨어가 가지는 기본적인 데이터 처리 기능인 Create(생성), Read(읽기), Update(갱신), Delete(삭제)를 묶어서 일컫는 말이다. 사용자 인터페이스가 갖추어야 할 기능(정보의 참조/검색/갱신)을 가리키는 용어로서도 사용된다.','save_t/21.png','정보',0),(24,'jQuery의 특장점','제이쿼리는 다음과 같은 특장점을 가지고 있습니다.\r\n\r\n  웹페이지 상에서 엘리먼트(Element)를 쉽게 찾고 조작할 수 있습니다.\r\n  거의 모든 웹브라우저에 대응할 정도로 호환성이 매우 뛰어납니다.\r\n  네트워크, 애니메이션 등 다양한 기능을 제공합니다.\r\n  메소드 체이닝(Method chaining) 등 짧고 유지관리가 용이한 코드 작성을 지원합니다.\r\n  관련 플러그인들이 웹상에 공개되어 있으며 플러그인을 직접 구현하거나 확장할 수 있습니다.\r\n  공식 웹사이트(www.jquery.com)와 수많은 레퍼런스를 통해 쉽게 접근 가능합니다.\r\n\r\n제이쿼리는 마이크로소프트의 ASP.NET 프레임워크, 워드프레스 등 다양한 라이브러리와 프레임워크에 포함되면서 웹 프론트엔드 분야에서 점유율이 지속적으로 상승했습니다. 웹기술 조사 서비스인 W3Techs(www.w3techs.com)에 따르면, 2020년 10월 현재 “웹사이트용 자바스크립트 라이브러리 사용 동향”에서 제이쿼리는 76%의 사용률로 압도적인 1위를 기록하고 있습니다.','save_t/20.png','정보',0),(25,'MYSQL INSERT,SELECT,DELETE 문 작성하기','INSERT문\r\nINSERT INTO 테이블이름 VALUE ( 열1,열2,열3,열4 ….);\r\n\r\nSELECT문\r\nSELECT 테이블에 들어갈 값 FROM selct값을 구하기 위한 테이블 WHERE 조건;\r\n\r\nDELETE문\r\nDELETE FROM 테이블명 WHERE 조건문;\r\n','save_t/8.jpeg','정보',0);
/*!40000 ALTER TABLE `tip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `EMAIL` varchar(100) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `PWD` varchar(45) NOT NULL,
  `ADRESS` varchar(100) DEFAULT NULL,
  `TEL` varchar(20) DEFAULT NULL,
  `GIT` varchar(100) DEFAULT NULL,
  `CREATEDATE` datetime DEFAULT NULL,
  `DELETEDATE` datetime DEFAULT NULL,
  `ADMIN` int DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('123@naver.com','김도우','1234!a','서울 강남구 남부순환로 2907 11','01073460625','sdf1','2021-05-24 11:20:24',NULL,1),('abc@google.com','Eng','1234','서울특별시 성동구 독서당로 155(옥수동, 옥수동아파트) 101동 204호','01024253457','fgh23','2021-05-23 20:10:46',NULL,0),('bhj@gmail.com','bhj','r7863','인천광역시 부평구 부개동 191-19','01059486378','bnmb','2021-05-27 09:23:12',NULL,0),('cmd@naver.com','henn','12345','서울 용산구 독서당로 6-16','01029587930','hgm5','2021-05-26 11:40:58',NULL,0),('com@naver.com','sfg','2345','광주광역시 동구 경양로 234','01056878035','nbb25','2021-05-27 12:40:17',NULL,0),('ghk@gmail.com','ghk','1234','대전광역시 서구 갈마로 151-14','01059486378','ghk123','2021-05-22 17:03:25',NULL,0),('hem@naver.com','hem','6547','광주광역시 동구 녹동길 99-14','01029503968','hemmm','2021-05-21 23:17:55',NULL,0),('ido@naver.com','ido','1234','부산광역시 사하구 윤공단로 123 , 102동 1123호','01045707854','vbn3','2021-05-25 10:20:14',NULL,0),('jeff@naver.com','Jeff','1234','대구광역시 북구 대현남로6길 11','010234987654','cvb2','2021-05-27 13:40:33',NULL,0),('jjang@gmail.com','장유','7890','서울특별시 은평구 갈현로29길 53','01059486378','12fgg','2021-05-23 12:03:25',NULL,0),('king@naver.com','King','1234','대전광역시 서구 야실길 48-9','010234556768','fdh1','2021-05-26 12:40:34',NULL,0),('kuy@naver.com','kuy','t3467','경기도 고양시 일산동구 백석동 1325 디아뜨크리스탈오피스텔 103동 802호','01059486378','yiiyu','2021-05-27 11:13:25',NULL,0),('lion@naver.com','이리온','4567','광주광역시 동구 동계로 79','01059486378','asdf34','2021-05-22 11:03:27',NULL,0),('lkj@gmail.com','lkj','2341-','서울특별시 구로구 경인로35길 117','01059486378','sdwwe','2021-05-26 20:17:05',NULL,0),('mac@gamil.com','Mac','1234','서울 강남구 남부순환로 2907 11','01073460625','sdf6','2021-05-24 11:20:05',NULL,1),('mnb@gmail.com','mnb','2345','대구광역시 중구 중앙대로58길 43-8','01059486378','xcyy','2021-05-27 10:03:17',NULL,0),('qwe@gmail.com','qwe','56887','경기도 수원시 장안구 정자동 355 아람채 104동 902호','01059486378','qewqeq','2021-05-25 18:03:15',NULL,0),('sda@naver.com','sda','3456','인천광역시 부평구 부평동 206-1','01059486378','zxczc','2021-05-24 17:36:39',NULL,0),('sdf@naver.com','sdf','1234','서울특별시 종로구 송월길 99 102동 202호','01059486378','qwe','2021-05-24 10:03:15',NULL,0),('tui@naver.com','tui','a1235','경기도 구리시 갈매동 527 SMJHouse 101동 303호','01059486378','iopiopo','2021-05-26 17:12:55',NULL,0),('uyh@naver.com','uyh','4567-','서울특별시 종로구 숭인동길 70-10,105동 306호','01059486378','bmhyt','2021-05-26 16:03:05',NULL,0),('vcb@gmail.com','vcb','1234-','경기도 고양시 일산동구 백석동 1344 흰돌마을5단지아파트 107동 609호','01059486378','wrwerr','2021-05-26 07:24:44',NULL,0),('vom@gamil.com','vbn','789h0','대구광역시 북구 대현로9길 29-5','01023579876','vbn12','2021-04-27 09:41:04',NULL,0),('zxc@naver.com','zxc','6789','인천광역시 부평구 경원대로 1086 202동 403호','01059486378','cvbcbc','2021-05-26 17:03:25',NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `write_item`
--

DROP TABLE IF EXISTS `write_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `write_item` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `ITEM_I_NUM` int NOT NULL,
  `IW_DELETE` datetime DEFAULT NULL,
  `IW_EDIT` datetime DEFAULT NULL,
  `IW_REGIST` datetime DEFAULT NULL,
  PRIMARY KEY (`ITEM_I_NUM`),
  KEY `fk_USER_has_ITEM_ITEM1_idx` (`ITEM_I_NUM`),
  KEY `fk_USER_has_ITEM_USER1_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_ITEM_ITEM1` FOREIGN KEY (`ITEM_I_NUM`) REFERENCES `item` (`I_NUM`),
  CONSTRAINT `fk_USER_has_ITEM_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `write_item`
--

LOCK TABLES `write_item` WRITE;
/*!40000 ALTER TABLE `write_item` DISABLE KEYS */;
INSERT INTO `write_item` VALUES ('cmd@naver.com',1,NULL,NULL,'2021-05-27 03:10:38'),('cmd@naver.com',2,NULL,NULL,'2021-05-27 03:11:00'),('cmd@naver.com',3,NULL,NULL,'2021-05-27 03:11:22'),('mac@gamil.com',4,NULL,NULL,'2021-05-27 03:12:36'),('mac@gamil.com',5,NULL,NULL,'2021-05-27 03:13:27'),('mac@gamil.com',6,NULL,NULL,'2021-05-27 03:14:38'),('mac@gamil.com',7,NULL,NULL,'2021-05-27 03:16:48'),('mac@gamil.com',8,NULL,NULL,'2021-05-27 03:19:09'),('cmd@naver.com',9,NULL,NULL,'2021-05-27 03:20:08'),('cmd@naver.com',10,NULL,NULL,'2021-05-27 03:20:51'),('jeff@naver.com',11,NULL,NULL,'2021-05-27 03:22:38'),('jeff@naver.com',12,NULL,NULL,'2021-05-27 03:24:05'),('jeff@naver.com',13,NULL,NULL,'2021-05-27 03:25:34'),('jeff@naver.com',14,NULL,NULL,'2021-05-27 03:27:01'),('jeff@naver.com',15,NULL,NULL,'2021-05-27 03:27:53'),('jeff@naver.com',16,NULL,NULL,'2021-05-27 03:29:45'),('jeff@naver.com',17,NULL,NULL,'2021-05-27 03:33:22'),('jeff@naver.com',18,NULL,NULL,'2021-05-27 03:34:32'),('jeff@naver.com',19,NULL,NULL,'2021-05-27 03:35:06'),('jeff@naver.com',20,NULL,NULL,'2021-05-27 03:35:47'),('jeff@naver.com',21,NULL,NULL,'2021-05-27 03:36:20'),('mac@gamil.com',22,NULL,NULL,'2021-05-27 03:37:18'),('mac@gamil.com',23,NULL,NULL,'2021-05-27 03:37:44'),('mac@gamil.com',24,NULL,NULL,'2021-05-27 03:38:24'),('cmd@naver.com',25,NULL,NULL,'2021-05-27 03:40:00');
/*!40000 ALTER TABLE `write_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `write_notice`
--

DROP TABLE IF EXISTS `write_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `write_notice` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `NOTICE_N_NUM` int NOT NULL,
  `NW_DELETE` varchar(45) DEFAULT NULL,
  `NW_EDIT` varchar(45) DEFAULT NULL,
  `NW_REGIST` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NOTICE_N_NUM`),
  KEY `fk_USER_has_NOTICE_NOTICE1_idx` (`NOTICE_N_NUM`),
  KEY `fk_USER_has_NOTICE_USER1_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_NOTICE_NOTICE1` FOREIGN KEY (`NOTICE_N_NUM`) REFERENCES `notice` (`N_NUM`),
  CONSTRAINT `fk_USER_has_NOTICE_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `write_notice`
--

LOCK TABLES `write_notice` WRITE;
/*!40000 ALTER TABLE `write_notice` DISABLE KEYS */;
INSERT INTO `write_notice` VALUES ('123@naver.com',1,NULL,NULL,'2021-05-27 11:42:55'),('123@naver.com',2,NULL,NULL,'2021-05-27 11:43:13'),('123@naver.com',3,NULL,NULL,'2021-05-27 11:57:00'),('123@naver.com',4,NULL,NULL,'2021-05-27 13:43:37'),('123@naver.com',5,NULL,NULL,'2021-05-27 13:51:30'),('123@naver.com',6,NULL,NULL,'2021-05-27 13:51:52'),('123@naver.com',7,NULL,NULL,'2021-05-27 13:59:21'),('123@naver.com',8,NULL,NULL,'2021-05-27 14:01:21');
/*!40000 ALTER TABLE `write_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `write_tip`
--

DROP TABLE IF EXISTS `write_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `write_tip` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `TIP_T_NUM` int NOT NULL,
  `TW_DELETE` datetime DEFAULT NULL,
  `TW_EDIT` datetime DEFAULT NULL,
  `TW_REGIST` datetime DEFAULT NULL,
  PRIMARY KEY (`TIP_T_NUM`),
  KEY `fk_USER_has_TIP_TIP2_idx` (`TIP_T_NUM`),
  KEY `fk_USER_has_TIP_USER2_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_TIP_TIP2` FOREIGN KEY (`TIP_T_NUM`) REFERENCES `tip` (`T_NUM`),
  CONSTRAINT `fk_USER_has_TIP_USER2` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `write_tip`
--

LOCK TABLES `write_tip` WRITE;
/*!40000 ALTER TABLE `write_tip` DISABLE KEYS */;
INSERT INTO `write_tip` VALUES ('jeff@naver.com',1,NULL,NULL,'2021-05-27 01:55:15'),('jeff@naver.com',2,NULL,NULL,'2021-05-27 01:55:49'),('jeff@naver.com',3,NULL,NULL,'2021-05-27 01:56:15'),('jeff@naver.com',4,NULL,NULL,'2021-05-27 01:56:45'),('jeff@naver.com',5,NULL,NULL,'2021-05-27 01:57:08'),('jeff@naver.com',6,NULL,NULL,'2021-05-27 01:57:34'),('jeff@naver.com',7,NULL,NULL,'2021-05-27 01:57:49'),('jeff@naver.com',8,NULL,NULL,'2021-05-27 02:05:40'),('jeff@naver.com',9,NULL,NULL,'2021-05-27 02:09:17'),('jeff@naver.com',10,NULL,NULL,'2021-05-27 02:13:31'),('jeff@naver.com',11,NULL,NULL,'2021-05-27 02:16:36'),('cmd@naver.com',12,NULL,NULL,'2021-05-27 02:17:43'),('cmd@naver.com',13,NULL,NULL,'2021-05-27 02:19:07'),('cmd@naver.com',14,NULL,NULL,'2021-05-27 02:20:11'),('cmd@naver.com',15,NULL,NULL,'2021-05-27 02:21:47'),('cmd@naver.com',16,NULL,NULL,'2021-05-27 02:23:21'),('cmd@naver.com',17,NULL,NULL,'2021-05-27 02:24:55'),('cmd@naver.com',18,NULL,NULL,'2021-05-27 02:27:38'),('cmd@naver.com',19,NULL,NULL,'2021-05-27 02:28:49'),('cmd@naver.com',20,NULL,NULL,'2021-05-27 02:30:56'),('cmd@naver.com',21,NULL,NULL,'2021-05-27 02:31:37'),('mac@gamil.com',22,NULL,NULL,'2021-05-27 02:33:26'),('mac@gamil.com',23,NULL,NULL,'2021-05-27 02:38:09'),('mac@gamil.com',24,NULL,NULL,'2021-05-27 02:41:33'),('mac@gamil.com',25,NULL,NULL,'2021-05-27 02:46:17');
/*!40000 ALTER TABLE `write_tip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-28 10:39:16
