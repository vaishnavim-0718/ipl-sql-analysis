-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: ipl_project1
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `match_id` int DEFAULT NULL,
  `inning` int DEFAULT NULL,
  `batting_team` text,
  `bowling_team` text,
  `over` int DEFAULT NULL,
  `ball` int DEFAULT NULL,
  `batsman` text,
  `non_striker` text,
  `bowler` text,
  `is_super_over` int DEFAULT NULL,
  `wide_runs` int DEFAULT NULL,
  `bye_runs` int DEFAULT NULL,
  `legbye_runs` int DEFAULT NULL,
  `noball_runs` int DEFAULT NULL,
  `penalty_runs` int DEFAULT NULL,
  `batsman_runs` int DEFAULT NULL,
  `extra_runs` int DEFAULT NULL,
  `total_runs` int DEFAULT NULL,
  `player_dismissed` text,
  `dismissal_kind` text,
  `fielder` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `match_id` text,
  `season` int DEFAULT NULL,
  `match_number` int DEFAULT NULL,
  `stage` text,
  `date` text,
  `venue` text,
  `city` text,
  `team1` text,
  `team2` text,
  `toss_winner` text,
  `toss_decision` text,
  `first_innings_score` int DEFAULT NULL,
  `first_innings_wickets` int DEFAULT NULL,
  `first_innings_overs` double DEFAULT NULL,
  `second_innings_score` int DEFAULT NULL,
  `second_innings_wickets` int DEFAULT NULL,
  `second_innings_overs` double DEFAULT NULL,
  `result` text,
  `winner` text,
  `win_by` text,
  `win_margin` int DEFAULT NULL,
  `player_of_match` text,
  `umpire1` text,
  `umpire2` text,
  `is_day_night` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-06 20:22:22
