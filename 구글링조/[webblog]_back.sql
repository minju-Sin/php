-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: webblog
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `coment`
--

DROP TABLE IF EXISTS `coment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coment` (
  `NUM` int(11) NOT NULL AUTO_INCREMENT,
  `NICKNAME` varchar(50) NOT NULL DEFAULT '',
  `CONTENT` varchar(50) NOT NULL DEFAULT '',
  `DATE` date NOT NULL,
  `CHECKNUM` int(11) NOT NULL,
  PRIMARY KEY (`NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='댓글';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coment`
--

LOCK TABLES `coment` WRITE;
/*!40000 ALTER TABLE `coment` DISABLE KEYS */;
INSERT INTO `coment` VALUES (1,'구글링','오징이 안녕','2022-12-11',2),(2,'구글링','공부? 싫어....ㅜ','2022-12-11',3),(3,'곰돌이','공부해..','2022-12-11',4),(4,'곰돌이','우와 귀엽다!!!!','2022-12-11',5),(5,'곰돌이','안녕!!','2022-12-11',2);
/*!40000 ALTER TABLE `coment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minformation`
--

DROP TABLE IF EXISTS `minformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minformation` (
  `ID` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `NICKNAME` varchar(50) NOT NULL,
  `PW` varchar(50) NOT NULL,
  `PWh` varchar(50) NOT NULL,
  `PHONENUMBER` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='회원';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minformation`
--

LOCK TABLES `minformation` WRITE;
/*!40000 ALTER TABLE `minformation` DISABLE KEYS */;
INSERT INTO `minformation` VALUES ('20315','문상민','구글링','tkdals0000','tkdals0000',' -5899-8754','tkdals@naver.com'),('2021','김두팔','오징','envkf1234','envkf1234',' -4864-1111','askdlfa@naver.com'),('20211','김태완','곰돌이','xodhks5555','xodhks5555',' -1235-1111','qwerty@google.com');
/*!40000 ALTER TABLE `minformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `NUM` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(50) NOT NULL,
  `CONTENT` text NOT NULL,
  `NICKNAME` varchar(50) NOT NULL,
  `DATE` date NOT NULL,
  `HIT` int(11) NOT NULL,
  PRIMARY KEY (`NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='게시글';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (2,'오징','난 오징이야','오징','2022-12-11',6),(3,'오늘은 뭘할까?','공부하자','오징','2022-12-11',2),(4,'놀자!','머하고 놀래?','구글링','2022-12-11',4),(5,'내 고양이 봐','귀엽지?','구글링','2022-12-11',4),(6,'첫 게시글!','안녕 반가웧ㅎ','곰돌이','2022-12-11',1),(7,'오늘 뭐하지?','뭐할지 추천좀 ..','곰돌이','2022-12-11',0),(8,'오늘 뭐해?','나는 논다~~~','오징','2022-12-11',1),(9,'행복해!!','너희도 행복해!!','오징','2022-12-11',1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13  0:08:09
