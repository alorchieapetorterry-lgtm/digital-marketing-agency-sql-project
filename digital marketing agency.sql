CREATE DATABASE  IF NOT EXISTS `digital_marketing_agency` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `digital_marketing_agency`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: digital_marketing_agency
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `adcreative`
--

DROP TABLE IF EXISTS `adcreative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adcreative` (
  `adcreativeID` int NOT NULL AUTO_INCREMENT,
  `creative_name` varchar(150) NOT NULL,
  `creativeType` varchar(45) NOT NULL,
  `creativeURL` varchar(300) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`adcreativeID`),
  UNIQUE KEY `creative_name_UNIQUE` (`creative_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adcreative`
--

LOCK TABLES `adcreative` WRITE;
/*!40000 ALTER TABLE `adcreative` DISABLE KEYS */;
INSERT INTO `adcreative` VALUES (1,'Spring Lookbook Banner','Image','https://cdn.agency.com/creatives/spring_banner.jpg','2026-01-19 14:02:50'),(2,'Gym Promo Video','Video','https://cdn.agency.com/creatives/gym_promo.mp4','2026-01-19 14:02:50'),(3,'SaaS Free Trial Ad','Image','https://cdn.agency.com/creatives/saas_trial.png','2026-01-19 14:02:50'),(4,'Food App Reel','Video','https://cdn.agency.com/creatives/food_reel.mp4','2026-01-19 14:02:50'),(5,'Luxury Apartment Carousel','Carousel','https://cdn.agency.com/creatives/apartment_carousel.html','2026-01-19 14:02:50'),(6,'Organic Products Story','Image','https://cdn.agency.com/creatives/organic_story.jpg','2026-01-19 14:02:50'),(7,'Streaming Subscription Video','Video','https://cdn.agency.com/creatives/streaming_ad.mp4','2026-01-19 14:02:50'),(8,'Travel Deals Banner','Image','https://cdn.agency.com/creatives/travel_banner.jpg','2026-01-19 14:02:50');
/*!40000 ALTER TABLE `adcreative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agencyuser`
--

DROP TABLE IF EXISTS `agencyuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agencyuser` (
  `agencyuserID` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `role` varchar(80) NOT NULL,
  `hiredAt` date DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`agencyuserID`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencyuser`
--

LOCK TABLES `agencyuser` WRITE;
/*!40000 ALTER TABLE `agencyuser` DISABLE KEYS */;
INSERT INTO `agencyuser` VALUES (1,'Ama','Mensah','ama.mensah@agency.com','Account Executive','2022-03-15','2026-01-19 13:52:29'),(2,'Kojo','Boateng','kojo.boateng@agency.com','Media Buyer','2021-07-01','2026-01-19 13:52:29'),(3,'Lena','Schmidt','lena.schmidt@agency.com','Campaign Analyst','2023-01-10','2026-01-19 13:52:29'),(4,'Daniel','Okafor','daniel.okafor@agency.com','Account Executive','2020-11-20','2026-01-19 13:52:29'),(5,'Sophie','Meyer','sophie.meyer@agency.com','Content Strategist','2022-06-05','2026-01-19 13:52:29'),(6,'Kwame','Asante','kwame.asante@agency.com','Media Buyer','2021-09-18','2026-01-19 13:52:29'),(7,'Nina','Keller','nina.keller@agency.com','Performance Analyst','2023-04-02','2026-01-19 13:52:29'),(8,'Yaw','Owusu','yaw.owusu@agency.com','Campaign Manager','2019-08-12','2026-01-19 13:52:29');
/*!40000 ALTER TABLE `agencyuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audience_segment`
--

DROP TABLE IF EXISTS `audience_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audience_segment` (
  `audience_segmentID` int NOT NULL AUTO_INCREMENT,
  `segment_name` varchar(120) NOT NULL,
  `age_min` tinyint DEFAULT NULL,
  `age_max` tinyint DEFAULT NULL,
  `location` varchar(120) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`audience_segmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audience_segment`
--

LOCK TABLES `audience_segment` WRITE;
/*!40000 ALTER TABLE `audience_segment` DISABLE KEYS */;
INSERT INTO `audience_segment` VALUES (1,'Young Urban Professionals',22,35,'Berlin','2025-01-01 00:00:00'),(2,'Fitness Enthusiasts',18,40,'Germany','2025-01-05 00:00:00'),(3,'Tech Startup Founders',25,45,'Europe','2025-01-10 00:00:00'),(4,'Food Delivery Users',18,50,'Berlin','2025-01-12 00:00:00'),(5,'Luxury Property Buyers',30,60,'Germany','2025-01-15 00:00:00'),(6,'Organic Lifestyle Consumers',25,55,'Europe','2025-01-18 00:00:00'),(7,'Streaming Content Fans',18,45,'Germany','2025-01-20 00:00:00'),(8,'Frequent Travelers',21,60,'Europe','2025-01-25 00:00:00');
/*!40000 ALTER TABLE `audience_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `campaignID` int NOT NULL AUTO_INCREMENT,
  `clientID` int NOT NULL,
  `campaign_name` varchar(150) NOT NULL,
  `objective` varchar(100) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  `totalBudget` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` varchar(60) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`campaignID`),
  KEY `clientID_idx` (`clientID`),
  KEY `idx_campaign_clientID` (`clientID`),
  KEY `id_campaign_clientID` (`clientID`),
  CONSTRAINT `clientID` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (1,1,'Spring Collection Launch','Brand Awareness','2025-02-01','2025-03-31',25000.00,'Completed','2026-01-19 13:55:45'),(2,2,'New Gym Membership Drive','Lead Generation','2025-03-01','2025-04-30',18000.00,'Completed','2026-01-19 13:55:45'),(3,3,'SaaS Free Trial Campaign','Conversions','2025-04-01','2025-06-30',40000.00,'Live','2026-01-19 13:55:45'),(4,4,'Food Delivery App Promo','App Installs','2025-05-01','2025-06-15',22000.00,'Live','2026-01-19 13:55:45'),(5,5,'Luxury Apartment Ads','Sales','2025-02-15','2025-05-15',35000.00,'Completed','2026-01-19 13:55:45'),(6,6,'Organic Product Awareness','Brand Awareness','2025-03-10','2025-05-10',15000.00,'Completed','2026-01-19 13:55:45'),(7,7,'Streaming Platform Push','Subscriptions','2025-04-20','2025-07-20',30000.00,'Live','2026-01-19 13:55:45'),(8,8,'Summer Travel Deals','Bookings','2025-05-01','2025-08-31',45000.00,'Live','2026-01-19 13:55:45');
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaignassignment`
--

DROP TABLE IF EXISTS `campaignassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaignassignment` (
  `campaignID` int NOT NULL,
  `agencyuserID` int NOT NULL,
  `role` varchar(80) NOT NULL,
  `assigned_date` date NOT NULL,
  PRIMARY KEY (`campaignID`,`agencyuserID`),
  KEY `agencyuserID_idx` (`agencyuserID`),
  CONSTRAINT `agencyuserID` FOREIGN KEY (`agencyuserID`) REFERENCES `agencyuser` (`agencyuserID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `campaign` FOREIGN KEY (`campaignID`) REFERENCES `campaign` (`campaignID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaignassignment`
--

LOCK TABLES `campaignassignment` WRITE;
/*!40000 ALTER TABLE `campaignassignment` DISABLE KEYS */;
INSERT INTO `campaignassignment` VALUES (1,1,'Account Executive','2025-01-15'),(1,3,'Campaign Analyst','2025-01-16'),(2,2,'Media Buyer','2025-02-01'),(2,4,'Account Executive','2025-02-02'),(3,6,'Media Buyer','2025-03-02'),(3,8,'Campaign Manager','2025-03-01'),(4,5,'Content Strategist','2025-03-10'),(5,7,'Performance Analyst','2025-03-15');
/*!40000 ALTER TABLE `campaignassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaignaudience`
--

DROP TABLE IF EXISTS `campaignaudience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaignaudience` (
  `campaignID` int NOT NULL,
  `audience_segmentID` int NOT NULL,
  `AddedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`campaignID`,`audience_segmentID`),
  KEY `audience_segmentID_idx` (`audience_segmentID`),
  CONSTRAINT `audience_segmentID` FOREIGN KEY (`audience_segmentID`) REFERENCES `audience_segment` (`audience_segmentID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `campaignaID` FOREIGN KEY (`campaignID`) REFERENCES `campaign` (`campaignID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaignaudience`
--

LOCK TABLES `campaignaudience` WRITE;
/*!40000 ALTER TABLE `campaignaudience` DISABLE KEYS */;
INSERT INTO `campaignaudience` VALUES (1,1,'2025-01-22 00:00:00'),(1,2,'2025-01-22 00:00:00'),(2,2,'2025-02-06 00:00:00'),(3,3,'2025-03-07 00:00:00'),(3,8,'2025-03-07 00:00:00'),(4,4,'2025-03-13 00:00:00'),(5,5,'2025-02-22 00:00:00'),(8,8,'2025-05-06 00:00:00');
/*!40000 ALTER TABLE `campaignaudience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaignchannelperformance`
--

DROP TABLE IF EXISTS `campaignchannelperformance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaignchannelperformance` (
  `campaignID` int NOT NULL,
  `channelID` int NOT NULL,
  `performance_date` date NOT NULL,
  `impressions` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `spend` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`campaignID`,`channelID`,`performance_date`),
  KEY `channelID_idx` (`channelID`),
  KEY `idx_ccp_campaignID` (`campaignID`),
  CONSTRAINT `campaignID` FOREIGN KEY (`campaignID`) REFERENCES `campaign` (`campaignID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `channelID` FOREIGN KEY (`channelID`) REFERENCES `channel` (`channelID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaignchannelperformance`
--

LOCK TABLES `campaignchannelperformance` WRITE;
/*!40000 ALTER TABLE `campaignchannelperformance` DISABLE KEYS */;
INSERT INTO `campaignchannelperformance` VALUES (1,1,'2025-02-05',120000,3200,4500.00),(1,2,'2025-02-05',98000,2900,3800.00),(2,1,'2025-03-10',75000,2100,2600.00),(2,4,'2025-03-10',68000,1950,3100.00),(3,5,'2025-04-15',140000,4200,5200.00),(4,2,'2025-05-05',88000,2600,3400.00),(5,6,'2025-03-20',46000,1400,1800.00),(8,1,'2025-06-01',160000,5100,6100.00);
/*!40000 ALTER TABLE `campaignchannelperformance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigncreative`
--

DROP TABLE IF EXISTS `campaigncreative`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigncreative` (
  `campaignID` int NOT NULL,
  `adcreativeID` int NOT NULL,
  `PrimaryFlag` tinyint NOT NULL DEFAULT '0',
  `AddedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`campaignID`,`adcreativeID`),
  KEY `adcreativeID_idx` (`adcreativeID`),
  CONSTRAINT `adcreativeID` FOREIGN KEY (`adcreativeID`) REFERENCES `adcreative` (`adcreativeID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `campaigncID` FOREIGN KEY (`campaignID`) REFERENCES `campaign` (`campaignID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigncreative`
--

LOCK TABLES `campaigncreative` WRITE;
/*!40000 ALTER TABLE `campaigncreative` DISABLE KEYS */;
INSERT INTO `campaigncreative` VALUES (1,1,1,'2025-01-20 10:00:00'),(1,2,0,'2025-01-21 11:30:00'),(2,2,1,'2025-02-05 09:15:00'),(3,3,1,'2025-03-05 14:00:00'),(3,7,0,'2025-03-06 15:45:00'),(4,4,1,'2025-03-12 16:00:00'),(5,5,1,'2025-02-20 13:30:00'),(8,8,1,'2025-05-05 10:20:00');
/*!40000 ALTER TABLE `campaigncreative` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel` (
  `channelID` int NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(100) NOT NULL,
  `channelType` varchar(60) NOT NULL,
  PRIMARY KEY (`channelID`),
  UNIQUE KEY `channel_name_UNIQUE` (`channel_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES (1,'Instagram','Social Media'),(2,'TikTok','Social Media'),(3,'Facebook','Social Media'),(4,'Google Ads','Search'),(5,'YouTube','Video'),(6,'LinkedIn','Professional Network'),(7,'X (Twitter)','Social Media'),(8,'Pinterest','Social Media');
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `clientID` int NOT NULL AUTO_INCREMENT,
  `client_name` varchar(150) NOT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`clientID`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Nova Fashion','Retail','contact@novafashion.com','+49 152 1111111','2026-01-19 13:08:12'),(2,'Pulse Fitness','Health & Fitness','info@pulsefitness.de','+49 152 2222222','2026-01-19 13:08:12'),(3,'Bright Tech','Technology','hello@brighttech.io','+49 152 3333333','2026-01-19 13:08:12'),(4,'Urban Eats','Food & Beverage','admin@urbaneats.de','+49 152 4444444','2026-01-19 13:08:12'),(5,'Skyline Realty','Real Estate','sales@skylinerealty.com','+49 152 5555555','2026-01-19 13:08:12'),(6,'GreenLeaf Organics','Agriculture','team@greenleaforganics.de','+49 152 6666666','2026-01-19 13:08:12'),(7,'Echo Media','Media & Entertainment','contact@echomedia.de','+49 152 7777777','2026-01-19 13:08:12'),(8,'TravelNest','Travel & Tourism','info@travelnest.eu','+49 152 8888888','2026-01-19 13:08:12');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoiceID` int NOT NULL AUTO_INCREMENT,
  `campaignID` int NOT NULL,
  `invoiceDate` date NOT NULL,
  `due_date` date NOT NULL,
  `TotalAmount` decimal(12,2) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`invoiceID`),
  KEY `campaigniID_idx` (`campaignID`),
  CONSTRAINT `campaigniID` FOREIGN KEY (`campaignID`) REFERENCES `campaign` (`campaignID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,1,'2025-04-01','2025-04-15',25000.00,'Paid','2026-01-19 14:49:43'),(2,2,'2025-05-01','2025-05-15',18000.00,'Paid','2026-01-19 14:49:43'),(3,3,'2025-06-01','2025-06-15',40000.00,'Unpaid','2026-01-19 14:49:43'),(4,4,'2025-06-20','2025-07-05',22000.00,'Unpaid','2026-01-19 14:49:43'),(5,5,'2025-05-20','2025-06-05',35000.00,'Paid','2026-01-19 14:49:43'),(6,6,'2025-05-15','2025-05-30',15000.00,'Paid','2026-01-19 14:49:43'),(7,7,'2025-06-25','2025-07-10',30000.00,'Unpaid','2026-01-19 14:49:43'),(8,8,'2025-07-01','2025-07-15',45000.00,'Unpaid','2026-01-19 14:49:43');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentID` int NOT NULL AUTO_INCREMENT,
  `invoiceID` int NOT NULL,
  `payment_date` date NOT NULL,
  `amount_paid` decimal(12,2) NOT NULL,
  `payment_method` varchar(45) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`paymentID`),
  KEY `invoiceID_idx` (`invoiceID`),
  CONSTRAINT `invoiceID` FOREIGN KEY (`invoiceID`) REFERENCES `invoice` (`invoiceID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,'2025-04-10',25000.00,'Bank Transfer','PAY-INV-0001','2026-01-19 14:57:23'),(2,2,'2025-05-10',18000.00,'Bank Transfer','PAY-INV-0002','2026-01-19 14:57:23'),(3,3,'2025-06-10',15000.00,'Card','PAY-INV-0003-P1','2026-01-19 14:57:23'),(4,3,'2025-06-18',25000.00,'Bank Transfer','PAY-INV-0003-P2','2026-01-19 14:57:23'),(5,4,'2025-06-28',8000.00,'Card','PAY-INV-0004-P1','2026-01-19 14:57:23'),(6,5,'2025-05-28',35000.00,'Bank Transfer','PAY-INV-0005','2026-01-19 14:57:23'),(7,6,'2025-05-25',15000.00,'Bank Transfer','PAY-INV-0006','2026-01-19 14:57:23'),(8,7,'2025-07-02',12000.00,'Card','PAY-INV-0007-P1','2026-01-19 14:57:23');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_channel_daily_trend`
--

DROP TABLE IF EXISTS `vw_channel_daily_trend`;
/*!50001 DROP VIEW IF EXISTS `vw_channel_daily_trend`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_channel_daily_trend` AS SELECT 
 1 AS `channelID`,
 1 AS `channel_name`,
 1 AS `performance_date`,
 1 AS `impressions`,
 1 AS `clicks`,
 1 AS `spend`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_client_campaign_summary`
--

DROP TABLE IF EXISTS `vw_client_campaign_summary`;
/*!50001 DROP VIEW IF EXISTS `vw_client_campaign_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_client_campaign_summary` AS SELECT 
 1 AS `clientID`,
 1 AS `client_name`,
 1 AS `total_campaigns`,
 1 AS `total_impressions`,
 1 AS `total_clicks`,
 1 AS `total_spend`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'digital_marketing_agency'
--

--
-- Dumping routines for database 'digital_marketing_agency'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_ctr_percent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_ctr_percent`(p_clicks INT, p_impressions INT) RETURNS decimal(6,2)
    DETERMINISTIC
BEGIN
DECLARE v_ctr DECIMAL(6,2);

  IF p_impressions = 0 OR p_impressions IS NULL THEN
    SET v_ctr = 0.00;
  ELSE
    SET v_ctr = (p_clicks / p_impressions) * 100;
  END IF;

  RETURN v_ctr;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_campaign_performance_summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_campaign_performance_summary`(IN p_campaignID INT)
BEGIN
SELECT
ca.campaign_name,
    SUM(ccp.impressions) AS total_impressions,
    SUM(ccp.clicks) AS total_clicks,
    SUM(ccp.spend) AS total_spend
  FROM campaign ca
  JOIN campaignchannelperformance ccp
    ON ccp.campaignID = ca.campaignID
  WHERE ca.campaignID = p_campaignID
  GROUP BY ca.campaign_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_channel_daily_trend`
--

/*!50001 DROP VIEW IF EXISTS `vw_channel_daily_trend`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_channel_daily_trend` AS select `ch`.`channelID` AS `channelID`,`ch`.`channel_name` AS `channel_name`,`ccp`.`performance_date` AS `performance_date`,sum(`ccp`.`impressions`) AS `impressions`,sum(`ccp`.`clicks`) AS `clicks`,sum(`ccp`.`spend`) AS `spend` from (`campaignchannelperformance` `ccp` join `channel` `ch` on((`ch`.`channelID` = `ccp`.`channelID`))) group by `ch`.`channelID`,`ch`.`channel_name`,`ccp`.`performance_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_client_campaign_summary`
--

/*!50001 DROP VIEW IF EXISTS `vw_client_campaign_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_client_campaign_summary` AS select `c`.`clientID` AS `clientID`,`c`.`client_name` AS `client_name`,count(distinct `ca`.`campaignID`) AS `total_campaigns`,sum(`ccp`.`impressions`) AS `total_impressions`,sum(`ccp`.`clicks`) AS `total_clicks`,sum(`ccp`.`spend`) AS `total_spend` from ((`client` `c` join `campaign` `ca` on((`ca`.`clientID` = `c`.`clientID`))) left join `campaignchannelperformance` `ccp` on((`ccp`.`campaignID` = `ca`.`campaignID`))) group by `c`.`clientID`,`c`.`client_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-30 17:17:38
