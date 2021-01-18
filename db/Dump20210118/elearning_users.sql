-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: elearning
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `passwd` varchar(68) NOT NULL,
  `role` int NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  KEY `users_fk_roles_idx` (`role`),
  CONSTRAINT `users_fk_roles` FOREIGN KEY (`role`) REFERENCES `roles` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Giannis','Lallas','giannis@gmail.com','john','$2a$10$ZnmE3WHxMuU8YXxojOQ7memDJWBKA1ujPhzwVLwKeEyq9xlUaiRMe',1),(2,'Labros','Tsioris','labros@gmail.com','labros','$2a$10$37ZoYrOC1TESLlv.ysoSV.hKbmmbNxKnnT7czANKnmfDOcDEVGKw6',2),(3,'Nikos','Nikolis','nikos@gmail.com','nick','$2a$10$7OaoO9jcXBfx7W0IPT41IeaH2f3ooQ9kqlddqoNMK2Fi3joKIZNB6',2),(4,'kostas','kostis','kostis@gmail.com','kostakis','123456',3),(6,'anna','lalla','anna@gmail.com','anna','123456',3),(7,'tasos','tasoulis','tasos@gmail.com','tasos','$2a$10$BHZfxX.MeVEtlzxMAT4l3OvG43K6ZIs/Xm6VyVvEX3O7BQLXuNMTu',3),(8,'mara','maraki','maraki@gmail.com','maraki','$2a$10$xypOxCCgMIjwb4c1LgQoHewnB95l4Nmvjhg0kWrBAC.2ExSgeK8re',3),(9,'gdfdg','dgdgd','gggg','nnnn','$2a$10$nmehCjO1yu5m8WaQ8IJeh.KAYAJ8qnrlLvHNzBO5Zb0rsiixy3o3S',3),(11,'elena','soulioti','elena@gmail.com','elena','$2a$10$9vftEIfWS9GGKJ37tfRCI.8Q4bptfOXYPT8OzmUr9cMz5YCBBAj5G',3),(12,'thanasis','Lallas','thanasis@gmail.com','Thanasis','$2a$10$P8azCP5itj.ZbqRtxxw90eHX/nb9bH90zC0oLamgXZS7zNyhawwhW',3),(13,'thalia','kalavrytinou','thalia@gmail.com','thalia','$2a$10$SR60Nj82wFy4BzDnI/U4jeoSP1FD2bFEzotv0K./xsfuU5LXMmoLu',3),(14,'Ioannis','papas','ioannis@gmail.com','ioannis','$2a$10$TczCu1cyM4L4Codew9WxEeWw.p4zQ3rEnV1Yat2/iOx4RV5d2rfN2',3),(15,'Ioannis','Mittas','mittas@gmail.com','mt','$2a$10$yX3mCra0/MFGJnzV/odEE.z11xLG/9DJPcZ7nLsePUqick3Vkd4y6',3),(16,'Labros','Tsiorakis','labrokous@gmail.com','elabro','$2a$10$tq3VN7znDwTV6yuhOSptT.ZGDvW.nEzLXR5zVhCTecj5wHKj1TQYe',3),(17,'Tasos','Lelakis','lelakis@gmail.com','lelakis','$2a$10$zx.S5XTeClgVzNDV2AgWK.o9.c9FHQhftFuJ.X9U5pG4oZB8LyIR.',3),(19,'Giannis','Kostakis','gkost@test123.com','kost','$2a$10$HdGjqIzLpdUjwmZFXDL2m.ozg4bQDOZNdv1talQmYI0qaNZ2RPE02',2),(20,'eternal','champion','eternal@champ.com','erekose','$2a$10$GKRMyPmV.NNYVIiN0oCCQOPVte5y5oFS/2qh.9pZEnk9Bq4bydtWK',3);
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

-- Dump completed on 2021-01-18 16:55:53
