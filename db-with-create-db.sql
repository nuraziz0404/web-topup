-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: webtopup
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

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
-- Current Database: `webtopup`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `webtopup` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `webtopup`;

--
-- Table structure for table `freefire`
--

DROP TABLE IF EXISTS `freefire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freefire` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `id_account` int(99) NOT NULL,
  `region_account` varchar(99) NOT NULL,
  `purchase` varchar(30) NOT NULL,
  `method_payment` varchar(255) NOT NULL,
  `transaction_invoice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freefire`
--

LOCK TABLES `freefire` WRITE;
/*!40000 ALTER TABLE `freefire` DISABLE KEYS */;
INSERT INTO `freefire` VALUES (1,1234566,'Indonesia','720 Diamond','OVO','petrik.png');
/*!40000 ALTER TABLE `freefire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1636970255),('m130524_201442_init',1636986382),('m190124_110200_add_verification_token_column_to_user_table',1636986382);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobilelegends`
--

DROP TABLE IF EXISTS `mobilelegends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobilelegends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_account` int(255) NOT NULL,
  `server_account` int(255) NOT NULL,
  `nickname_account` varchar(255) NOT NULL,
  `purchase` varchar(30) NOT NULL,
  `method_payment` varchar(20) NOT NULL,
  `transaction_invoice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobilelegends`
--

LOCK TABLES `mobilelegends` WRITE;
/*!40000 ALTER TABLE `mobilelegends` DISABLE KEYS */;
INSERT INTO `mobilelegends` VALUES (1,1099805872,13413,'Serene TEMPEST.','706 Diamond','Bank Mandiri','www.instagram.com/maryaputrap'),(2,902350002,12568,'Ryan.','344 Diamond','DANA','www.instagram.com/ryan'),(3,123445241,124141,'Arya','344 Diamond','Ovo','www.instagram.com/arya'),(4,1234567891,120100,'Testing','86 Diamonds','DANA','www.instagram.com/test'),(8,8081318,12344,'E i n.','514 Diamond','DANA','logo-dana.png'),(10,123424,1213,'aaaaaaaa','86 Diamond','DANA','latch.jpg'),(11,123,123,'aaaaaaaa','86 Diamond','Bank Mandiri','latch.jpg');
/*!40000 ALTER TABLE `mobilelegends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pubgindonesia`
--

DROP TABLE IF EXISTS `pubgindonesia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pubgindonesia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_account` int(255) NOT NULL,
  `nickname_account` varchar(255) NOT NULL,
  `purchase` varchar(30) NOT NULL,
  `method_payment` varchar(20) NOT NULL,
  `transaction_invoice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pubgindonesia`
--

LOCK TABLES `pubgindonesia` WRITE;
/*!40000 ALTER TABLE `pubgindonesia` DISABLE KEYS */;
INSERT INTO `pubgindonesia` VALUES (1,123455,'Pubg_Mobile','1925 UC','Bank Mandiri','uc_mobile.jpg'),(2,99999,'Testi_Pubg','530 UC','Bank Mandiri','www.inibukti.com'),(4,12432,'demo','530 UC','DANA','logo-pubg.jpg');
/*!40000 ALTER TABLE `pubgindonesia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reseller`
--

DROP TABLE IF EXISTS `reseller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reseller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone_number` int(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `transaction_invoice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reseller`
--

LOCK TABLES `reseller` WRITE;
/*!40000 ALTER TABLE `reseller` DISABLE KEYS */;
INSERT INTO `reseller` VALUES (1,'Aryanto Tri Nashrullah','ryan@gmail.com',2147483647,'Sidoarjo','petrik.png'),(2,'anu','anu',123,'anu','anu');
/*!40000 ALTER TABLE `reseller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sausageman`
--

DROP TABLE IF EXISTS `sausageman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sausageman` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `id_account` int(255) NOT NULL,
  `purchase` varchar(30) NOT NULL,
  `method_payment` varchar(20) NOT NULL,
  `transaction_invoice` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sausageman`
--

LOCK TABLES `sausageman` WRITE;
/*!40000 ALTER TABLE `sausageman` DISABLE KEYS */;
INSERT INTO `sausageman` VALUES (1,123456,'720 Diamond','Bank Mandiri','candy.png');
/*!40000 ALTER TABLE `sausageman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'arya','wrOfueHfznD2zRBUv4mGFhaXBmnd0DtC','$2y$13$lL13ztYoQP4JYY6Yo698T.7.EGzM./PxYsVtTXg1ReY6.mRnodaVC',NULL,'arya@gmail.com',10,1636986436,1636986436,'0tG906PJKAsf2zU2KcBQIZditer8ixNU_1636986436'),(2,'aryaputra','S45EHGVW7Ou-_zpRP3Q6mzyFAFLTO9iN','$2y$13$N3ymxqNW2DwEr8pEW02qdeQzeb6A/cWkOgxwHGYaP9W3WeySqMcMe',NULL,'aryaputra@gmail.com',10,1638093314,1638093314,'GMTAQgExYFM7eyy3kJLRBuvzq2F4DZ_2_1638093314'),(3,'muhammadarya','i9xLdblHTcf12oQMpH0AnVlUMFJ_cYDC','$2y$13$zBhLQUV3u2.DbP.uFntef.kAHtUb21qQPZq5qmUcKa4OkRBpeLse.',NULL,'arryyaa@gmail.com',10,1638346097,1638346097,'PlLs4LCvq02Fyg6rpOgIIPeVo1YTknra_1638346097'),(4,'testing','9_YPfnVJi7uPbkPKABhVJGgSrKMQr-qC','$2y$13$KMdNwIZ1j15xK.t8PXn4V.2TdGKeFfUuXA1k/9OUC23.N1ILA.Da2',NULL,'vepeesgratis01@outlook.com',10,1655175147,1655175147,'hdZrU8n_p-kE8PVjaYGiKyvDGn1Sk9Xn_1655175147');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-14 16:27:52
