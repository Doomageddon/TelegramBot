-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: discounts
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `discountsatb`
--

DROP TABLE IF EXISTS `discountsatb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `discountsatb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `priceGrn` int(11) DEFAULT NULL,
  `priceKop` int(11) DEFAULT NULL,
  `oldPrice` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discountsatb`
--

LOCK TABLES `discountsatb` WRITE;
/*!40000 ALTER TABLE `discountsatb` DISABLE KEYS */;
INSERT INTO `discountsatb` VALUES (1,'https://www.atbmarket.com/attachments/product/1/f/4/c/3/1f4c36d32895a1175147132473668a5b.jpg','Кава розчинна сублімована, 70 г ТМ \"CARTE NOIRE\"',-50,49,90,99.8),(2,'https://www.atbmarket.com/attachments/product/3/2/8/6/a/3286a4972aa852840418617ea28b626c.jpg','Чай Goldberry чорний з ароматом обліпихи і айви/Flirt зелений з полуницею та ароматом білого персика і полуниці/Pleasure чорний із шипшиною, яблуком, пелюстками квітів та ароматом тропічних фруктів ТМ «Tess» - 25 ф/п х 1,5 г',-36,14,90,23.3),(3,'https://www.atbmarket.com/attachments/product/a/f/1/a/d/af1ad6ffad5d3bc79ab2fe917201745f.jpg','Вафельний батончик «РОК-н-РОЛ-ь-чик» глазурований/ з ароматом «крем-брюле» ТМ «Своя Лінія» - 250 г',-35,14,60,22.3),(4,'https://www.atbmarket.com/attachments/product/5/4/6/4/a/5464a81f9b0e9fc6bbd810550094b74e.jpg','Печиво «Супер-Контік» сендвіч з горіхом/ванільний ТМ «Конті» - 100 г',-34,5,40,8.2),(5,'https://www.atbmarket.com/attachments/product/8/1/7/2/9/817297bb22e8dbac28b2b606a7b65433.jpg','Порошок для прання дитячої білизни ТМ «Ушастый Нянь» - 2,4 кг',-34,63,90,96.6),(6,'https://www.atbmarket.com/attachments/product/d/7/a/0/e/d7a0efa99571d388d3a21757512beca9.jpg','Ковбаса «Салямі Преміум», н/к ТМ «Добров» - 320 г',-32,44,50,65.5),(7,'https://www.atbmarket.com/attachments/product/5/3/6/7/9/53679bfd9d2ae000dbeadc9fe668de95.jpg','Шинка «Київська свиняча», варена ТМ «М\'ясна лавка» - 500 г',-31,49,90,72.2),(8,'https://www.atbmarket.com/attachments/product/8/2/b/c/7/82bc7f3d76fb64925f46fdd41a32dd23.jpg','Вермішель швидкого приготування зі смаком курячого бульйону/ курячого бульйону, гостра/сиру та зеленню/телятини ТМ «Мівіна» - 60 г',-30,3,20,4.6),(9,'https://www.atbmarket.com/attachments/product/5/d/1/f/8/5d1f8d91c429229af432d5bc00cbf02a.jpg','Засіб миючий синтетичний порошковий Французький аромат/ Морська свіжість, для кольорових речей, автомат, 3,5 кг ТМ «Gala»',-25,93,30,124.4),(10,'https://www.atbmarket.com/attachments/product/b/2/2/1/e/b221ec14d79db182785e94bc41f9af7c.jpg','Сир кисломолочний 5% ТМ «Білоцерківський» - 400 г',-23,29,0,37.9),(11,'https://www.atbmarket.com/attachments/product/0/7/f/b/d/07fbdfaa014235e57c03f49b95568f1a.jpg','Сир кисломолочний нежирний ТМ «Білоцерківський» - 400 г',-24,27,30,35.8),(12,'https://www.atbmarket.com/attachments/product/f/f/1/7/c/ff17cf195e102bac49fcd950300c4d1a.jpg','Сир кисломолочний 9% ТМ «Білоцерківський» - 400 г',-24,31,20,40.8),(13,'https://www.atbmarket.com/attachments/product/e/4/3/f/1/e43f17cd557d89a5a58e6d11114b0692.jpg','Масло солодковершкове екстра, 82,5% ТМ «Яготинське» - 200 г',-22,35,90,45.9),(14,'https://www.atbmarket.com/attachments/product/1/5/9/6/c/1596c75ada43fb0c773b9151b8dee9c9.jpg','Шампунь Густе та міцне/ Очищення та живлення/ Aqua Light/ Інтенсивне відновлення, 400 мл ТМ «PANTENE Pro-V»',-20,62,80,78.5),(15,'https://www.atbmarket.com/attachments/product/5/0/d/a/4/50da4af81b78713311896c0d5367aebc.jpg','Гель для гоління для чутливої шкіри, аерозоль, 200 мл ТМ «Gillette»',-20,63,70,79.6),(16,'https://www.atbmarket.com/attachments/product/3/f/7/2/4/3f724554e87cf2cf5ebd1cc9c229561c.jpg','Підгузники Sleep & Play Midi 3 - 58 шт. Maxi 4 - 50 шт. Junior 5 - 42 шт. TM «Pampers»',-20,213,90,267.5),(17,'https://www.atbmarket.com/attachments/product/3/6/9/a/4/369a4031f97957f5570757a78f1155fb.jpg','Засіб миючий для посуду Соковитий лимон/Ніжні руки Ромашка та вітамін Е, 1 л ТМ «Fairy»',-15,38,60,45.4),(18,'https://www.atbmarket.com/attachments/product/1/0/9/1/0/1091047f43e8e0e59c58fef402b0e4ff.jpg','Прокладки гігієнічні Ultra Camomile Night, 7 шт. Ultra Camomile Maxi, 8 шт. Ultra Camomile Normal, 10 шт. TM «Naturella»',-15,19,30,22.7),(19,'https://www.atbmarket.com/attachments/product/e/1/3/9/5/e1395e667cc9bff5d771a8c57edcb769.jpg','Кавовий напій Цикорій з екстрактами шипшини та обліпихи, розчинний порошкоподібний ТМ «Elite» - 100 г',-24,21,90,28.9),(20,'https://www.atbmarket.com/attachments/product/4/a/9/e/c/4a9ec46ef4d2bb59d60e2e0c1edbf12b.jpg','Продукт кефірний «Лактонія» з лактулозою, нежирний, 0,05% ТМ «Lactel» - 400 г',-19,8,80,10.9),(21,'https://www.atbmarket.com/attachments/product/f/2/7/d/7/f27d7efba43fdc05978c3cc6c8f8c5e5.jpg','Сирок глазурований на печиві, вишня, 15% ТМ «Фанні» - 50 г',-19,6,80,8.4),(22,'https://www.atbmarket.com/attachments/product/6/3/e/6/2/63e62e7c9f81d167664c8e9f63bbbafd.jpg','Чай Альпійські трави з зеленим чаєм ТМ «Grace» - 25 ф/п х 1,5 г',-20,19,90,24.8),(23,'https://www.atbmarket.com/attachments/product/4/2/4/0/3/424030a8196a1cc644f5ae3e903967e8.jpg','Чай чорний цейлонський байховий листовий, з ароматом бергамота ТМ «De Luxe Foods&Goods Selected» - 100 г',-20,27,50,34.5),(24,'https://www.atbmarket.com/attachments/product/9/f/d/4/7/9fd47b6f6e5052d2430f0539dec9d3b6.jpg','Біфідойогурт Льон-Висівки, 1,5% ТМ «Активіа» - 580 г',-20,21,80,27.2),(25,'https://www.atbmarket.com/attachments/product/d/f/1/9/5/df195d347cb97270e326ebc20e2075cb.jpg','Шоколад молочний/чорний ТМ «Корона» - 85 г',-20,14,40,17.9),(26,'https://www.atbmarket.com/attachments/product/e/2/8/9/5/e28951b6c1c3556cd4062bcc3682e96e.jpg','Паста шоколадно-бананова ТМ «Nusica» - 400 г',-20,42,50,52.9),(27,'https://www.atbmarket.com/attachments/product/d/5/f/6/8/d5f68bfa7b3a2a0bf3c28ecaea43f4e0.jpg','Вода «Трускавецька» мінеральна негазована/ слабогазована/сильногазована ТМ «Своя Лінія» - 1,5 л',-20,6,90,8.6),(28,'https://www.atbmarket.com/attachments/product/e/a/e/7/0/eae70cba1e490b576d9e5ade09b4f3ee.jpg','Фісташки смажені сoлoні ТМ «Своя Лінія» - 40 г',-20,21,90,27.4),(29,'https://www.atbmarket.com/attachments/product/0/7/6/6/6/07666593dd966d2966d34e1f7c6a01c7.jpg','Вареники «Мішутка» з картоплею ТМ «Три Ведмеді» - 400 г',-30,18,60,26.5),(30,'https://www.atbmarket.com/attachments/product/e/b/4/3/6/eb4366f52db758f8511e8e0069779720.jpg','Ковбаса «Шинко-рубана», варена, нарізка ТМ «Добров» - 100 г',-19,16,90,20.9),(31,'https://www.atbmarket.com/attachments/product/d/5/1/6/e/d516e10b563c7a21257230f1940abdef.jpg','Сосиски «Із Яловичини» light, варені ТМ «Добров» - 225 г',-20,32,50,40.6),(32,'https://www.atbmarket.com/attachments/product/b/f/f/f/0/bfff03cdbadf2036eb72493f459806ec.jpg','Піца з куркою та грибами ТМ «Пекарь» - 400 г',-20,38,30,47.8),(33,'https://www.atbmarket.com/attachments/product/b/4/3/3/f/b433fc6bb478ad9d9a79ac4e22f84a72.jpg','Пресерви Оселедець, філе-шматочки в олії ТМ «Своя Лінія» - 300 г',-20,26,30,32.9),(34,'https://www.atbmarket.com/attachments/product/8/c/c/1/0/8cc1016978b60b579241f80f9c38a8d3.jpg','Пельмені «Фірмові» з яловичиною та свининою ТМ «Три Ведмеді» - 800 г',-20,78,90,98.9),(35,'https://www.atbmarket.com/attachments/product/4/1/1/9/5/41195558c9726dd04186ac2f5b642cbc.jpg','Сир кисло- молочний «Творожна Традиція», 0,2% ТМ «President» - 450 г',-20,37,80,47.3),(36,'https://www.atbmarket.com/attachments/product/a/3/9/e/e/a39eedeac490044f81bdb166f22ac05b.jpg','Майонезний соус Екстра, 40% ТМ «Оліс» - 560 г',-24,18,90,24.9),(37,'https://www.atbmarket.com/attachments/product/4/0/d/b/7/40db740ecb7f5b218e10938d0d149455.jpg','Соус соевий класичний ТМ «Торчин» - 190 мл',-20,18,0,22.4),(38,'https://www.atbmarket.com/attachments/product/3/6/5/1/4/3651422711e53cec5b2c54ff4b3464af.jpg','Щітка зубна ЗигЗаг Деревне вугілля, середньої жорсткості ТМ «Colgate» - 1 шт.',-20,21,90,27.4),(39,'https://www.atbmarket.com/attachments/product/7/3/6/f/3/736f34890bed0219b43d21154bc89160.jpg','Рідина для зняття лаку з ланоліном та фруктовими кислотами ТМ «Missy» - 150 мл',-26,28,50,38.4),(40,'https://www.atbmarket.com/attachments/product/9/3/a/c/b/93acb48d045b12b8b56f721e4edd3bff.jpg','Колготки жіночі Classic pantyhose, 40 ден, беж./чорн./капуч., р. 2/3/4/5 ТМ «Своя Лінія» - 1 шт.',-20,29,40,36.8),(41,'https://www.atbmarket.com/attachments/product/f/2/3/c/9/f23c9b2d116834a70e56a2e7a3c5096b.jpg','Мило «1+1» Морські Мінерали + зволожуючий крем, тверде ТМ «Duru» - 4 х 90 г (360 г)',-25,25,90,34.6),(42,'https://www.atbmarket.com/attachments/product/7/f/7/b/8/7f7b84caad9c22f9decff4c71d46a627.jpg','Засіб миючий синтетичний порошковий «RIO» Universal «Гірське джерело», автомат ТМ «Своя Лінія» - 2,5 кг',-28,48,90,67.5),(43,'https://www.atbmarket.com/attachments/product/a/0/6/8/0/a0680de0d3507403ba18477457e07dc4.jpg','Олія оливкова Extra Virgin ТМ «Foods&Goods Selected» - 500 мл',-20,103,90,129.9),(44,'https://www.atbmarket.com/attachments/product/1/b/0/b/8/1b0b806288aaf145eb0d03dcdef9cb8d.jpg','Цукор порційний в стіках ТМ «Своя Лінія» - 100 шт. х 5 г',-15,16,90,19.9),(45,'https://www.atbmarket.com/attachments/product/2/8/8/9/f/2889fc0e437d5d1c98e7060f67063fcc.jpg','Готовий сніданок «CINI-MINIS» з вітамінами та мінеральними речовинами ТМ «Nestle» - 250 г',-21,22,20,28.2);
/*!40000 ALTER TABLE `discountsatb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-21 23:43:28
