CREATE SCHEMA `kanban_DB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;


use  kanban_DB ; 

-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: kanban
-- ------------------------------------------------------
-- Server version	8.2.0
 
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
-- Table structure for table `Task`
--
 
DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `taskId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL ,
  `description`varchar(500) DEFAULT NULL ,
  `assignees` varchar(30) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`taskId`),
  UNIQUE KEY `id_UNIQUE` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
 
 
USE kanban_DB;

CREATE TABLE statuses (
  statusId INT NOT NULL AUTO_INCREMENT,
  statusName VARCHAR(50) NOT NULL,
  statusDescription VARCHAR(200),
  PRIMARY KEY (statusId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE tasks
ADD COLUMN statusId INT not null ,
ADD CONSTRAINT fk_tasks_statuses
FOREIGN KEY (statusId) REFERENCES statuses(statusId);

 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
 
-- Dump completed on 2024-04-27 16:31:15
-- เพิ่มข้อมูลในตาราง statuses
INSERT INTO statuses (statusName, statusDescription)
VALUES
	('NO STATUS', 'Task No status'),
    ('TO DO', 'Task needs to be started'),
    ('DOING', 'Task is in progress'),
    ('DONE', 'Task is completed');

select * from statuses ; 
-- เพิ่มข้อมูลในตาราง tasks
INSERT INTO tasks (title, description, assignees, statusId)
VALUES
    ('Task 1', 'Description of Task 1', 'User 1', 1),  -- Assuming 1 is the statusId for 'TO DO'
    ('Task 2', 'Description of Task 2', 'User 2', 2),  -- Assuming 2 is the statusId for 'DOING'
    ('Task 3', 'Description of Task 3', 'User 3', 3);  -- Assuming 3 is the statusId for 'DONE'
