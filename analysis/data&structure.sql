CREATE DATABASE  IF NOT EXISTS `web-design` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `web-design`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: web-design
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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `commentTxt` varchar(1024) NOT NULL,
  `commentDate` datetime NOT NULL,
  `userCount` char(10) NOT NULL,
  `commentObject` varchar(45) NOT NULL,
  PRIMARY KEY (`commentId`),
  KEY `userCount_idx` (`userCount`),
  CONSTRAINT `userCount` FOREIGN KEY (`userCount`) REFERENCES `user` (`usercount`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (6,'adsfasd','2020-12-30 00:00:00','081417137','news');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `holiday` (
  `holidayId` int(11) NOT NULL AUTO_INCREMENT,
  `holidayName` varchar(30) NOT NULL,
  `holidayDate` varchar(10) NOT NULL,
  `holidayReason` varchar(1023) NOT NULL,
  PRIMARY KEY (`holidayId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday`
--

LOCK TABLES `holiday` WRITE;
/*!40000 ALTER TABLE `holiday` DISABLE KEYS */;
INSERT INTO `holiday` VALUES (1,'世界湿地日','2月2日','每年的2月2日是“世界湿地日”。这是湿地国际联盟组织(wi）于1996年3月确定的，从1997年开始，世界各国在这一天都举行不同形式的活动来宣传保护自然资源和生态环境。1971年2月2日，历时8年之久，一个旨在保护和合理利用全球湿地的公约《关于特别是作为水禽栖息地的国际重要湿地公约》(简称《湿地公约》）在伊朗拉姆萨尔签署。为了纪念这一创举，并提高公众的湿地意识，1996年《湿地公约》常务委员会第19次会议决定，从1997年起，每年的2月2日定为“世界湿地日”。'),(2,'植树日','3月12日','新中国成立以来，党和国家十分重视绿化建设。上世纪50年代中期，毛泽东主席就曾号召“绿化祖国”、“实行大地园林化”。1956年，中国开始了第一个“12年绿化运动”。1979年2月23日，在第五届全国人大常委会第六次会议上，根据国务院提议，为动员全国各族人民植树造林，加快绿化祖国，再者，为了纪念孙中山先生决定每年3月12日为全国的植树节。据联合国统计，目前世界上已有50多个国家设立了植树节。由于各国国情和地理位置不同，植树节在各国的称呼和时间也不相同。'),(3,'世界森林日','3月21日','“世界森林日”是于1971年，在欧洲农业联盟的特内里弗岛大会上，由西班牙提出倡议并得到一致通过的。同年11月，联合国粮农组织(FAO）正式予以确认。1972年3月21日为首次“世界森林日”。有的国家把这一天定为植树节;有的国家根据本国的特定环境和需求，确定了自己的植树节。而今，除了植树，“世界森林日”广泛关注森林与民生的更深层次的本质问题。'),(4,'世界水日','3月22日','“世界水日”是人类在20世纪末确定的又一个节日。为满足人们日常生活、商业和农业对水资源的需求，联合困长期以来致力于解决因水资源需求上升而引起的全球性水危机。1977年召开的“联合国水事会议”，向全世界发出严正警告:水不久将成为一个深刻的社会危机，继石油危机之后的下一个危机便是水。1993年1月18日，第四十七届联合国大会作出决议,确定每年的3月22日为“世界水日”。'),(5,'世界地球日','4月22日','“世界地球日”在每年的4月22日，是一项世界性的环境保护运动。最早的地球日活动是1970年代于美国校园兴起的环保运动,1990年代这项活动从美国走向世界，成为全世界环保主义者的节日和环境保护宣传日，在这天不同国籍的人们以各自不同的方式宣传和实践环境保护的观念。2009年4月22日，第63届联合国大会一致通过决议，决定将今后每年的4月22日定为“世界地球日”。'),(6,'国际生物多样性日','5月22日','生物多样性是地球上生命经过几十亿年发展进化的结果，是人类赖以生存的物质基础。为了保护全球的生物多样性，1992年在巴西当时的首都里约热内卢召开的联合国环境与发展大会上，153个国家签署了《保护生物多样性公约》。1994年12月，联合国大会通过决议，将每年的12月29日定为“国际生物多样性日”，以提高人们对保护生物多样性重要性的认识。2001年将每年12月29日改为5月22日。'),(7,'防治荒漠化和干旱日','6月17日','由于荒漠化造成的严重后果及扩展的趋势，引起了国际社会极大的关注，在1992年联合国环境与发展大会上，防治荒漠化被列为国际社会优先采取行动的领域，大会成立了“《联合国关于在发生严重干旱和荒漠化的国家特别是在非洲防治荒漠化的公约》谈判委员会”。1994年6月17日，《公约》的正式文本完成，包括中国在内的100多个国家在《公约》上签字。1994年12月19日，联合国第四十九届大会又通过决议，宣布从1995年起，每年6月17日为“世界防治荒漠化和干旱日”。'),(8,'国际臭氧层保护日','9月16日','臭氧层被誉为地球上生物生存繁衍的保护伞，它能吸收99%以上对人类有害的太阳紫外线，保护地球上的生命免遭短波紫外线的伤害。随着人类活动的加剧，地球表面的臭氧层出现了严重的空洞。1995年1月23日，联合国大会通过决议，确定从1995年开始，每年的9月16日为“国际保护臭氧层日”。旨在纪念1987年9月16日签署的《关于消耗臭氧层物质的蒙特利尔议定书》，要求所有缔约国根据“议定书”及其修正案的目标，采取具体行动纪念这一特殊的日子。'),(9,'世界动物日','10月4日','“世界动物日”是一群生态学家于1931年在意大利佛罗伦斯召开会议时所倡议的。他们最初目的是希望借此唤起世人关注濒危生物，慢慢才发展为关怀所有动物。自二十世纪20年代开始就有各国的环保团体在10月4日举行各种活动，宣传爱护动物、尊重动物，正视、善待与人类息息相关的动物。中国从1997年开始纪念“世界动物日”，北京各界环保志愿者自发成立了民间坏保慈善机构——首都爱护动物协会，积极开展各种爱护动物的公益活动。');
/*!40000 ALTER TABLE `holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knowledge`
--

DROP TABLE IF EXISTS `knowledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `knowledge` (
  `knowledgeId` int(11) NOT NULL AUTO_INCREMENT,
  `knowledgeName` varchar(50) NOT NULL,
  `knowledgeUrl` varchar(1024) NOT NULL,
  PRIMARY KEY (`knowledgeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge`
--

LOCK TABLES `knowledge` WRITE;
/*!40000 ALTER TABLE `knowledge` DISABLE KEYS */;
/*!40000 ALTER TABLE `knowledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `law`
--

DROP TABLE IF EXISTS `law`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `law` (
  `lawId` int(11) NOT NULL AUTO_INCREMENT,
  `lawName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lawUrl` varchar(1024) NOT NULL,
  PRIMARY KEY (`lawId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `law`
--

LOCK TABLES `law` WRITE;
/*!40000 ALTER TABLE `law` DISABLE KEYS */;
INSERT INTO `law` VALUES (1,'中华人民共和国固体废物污染环境防治法','http://www.mee.gov.cn/ywgz/fgbz/fl/202004/t20200430_777580.shtml'),(2,'中华人民共和国清洁生产促进法','http://www.mee.gov.cn/ywgz/fgbz/fl/201904/t20190428_701287.shtml'),(3,'中华人民共和国森林法','http://www.mee.gov.cn/ywgz/fgbz/fl/201904/t20190428_701280.shtml'),(4,'中华人民共和国环境影响评价法','http://www.mee.gov.cn/ywgz/fgbz/fl/201901/t20190111_689247.shtml'),(5,'中华人民共和国防沙治沙法','http://www.mee.gov.cn/ywgz/fgbz/fl/201811/t20181114_673626.shtml'),(6,'中华人民共和国大气污染防治法','http://www.mee.gov.cn/ywgz/fgbz/fl/201811/t20181113_673567.shtml'),(7,'中华人民共和国土壤污染防治法','http://www.mee.gov.cn/ywgz/fgbz/fl/201809/t20180907_549845.shtml'),(8,'中华人民共和国海洋环境保护法','http://www.mee.gov.cn/ywgz/fgbz/fl/201805/t20180517_440477.shtml'),(9,'中华人民共和国水污染防治法(2017年6月27日第二次修正)','http://www.mee.gov.cn/ywgz/fgbz/fl/200802/t20080229_118802.shtml'),(10,'中华人民共和国放射性污染防治法','http://www.mee.gov.cn/ywgz/fgbz/fl/200306/t20030628_85556.shtml');
/*!40000 ALTER TABLE `law` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `news` (
  `newsId` int(11) NOT NULL AUTO_INCREMENT,
  `newsName` varchar(100) DEFAULT NULL,
  `newsFace` varchar(1024) DEFAULT NULL,
  `newsDate` date DEFAULT NULL,
  `newsFrom` varchar(1024) DEFAULT NULL,
  `newsUrl` varchar(1024) DEFAULT NULL,
  `newsAgencyUrl` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'中华人民共和国固体废物污染环境防治法','http://www.mee.gov.cn/ywgz/fgbz/fl/202004/t20200430_777580.shtml',NULL,NULL,NULL,NULL),(2,'中华人民共和国清洁生产促进法','http://www.mee.gov.cn/ywgz/fgbz/fl/201904/t20190428_701287.shtml',NULL,NULL,NULL,NULL),(3,'中华人民共和国森林法','http://www.mee.gov.cn/ywgz/fgbz/fl/201904/t20190428_701280.shtml',NULL,NULL,NULL,NULL),(4,'中华人民共和国环境影响评价法','http://www.mee.gov.cn/ywgz/fgbz/fl/201901/t20190111_689247.shtml',NULL,NULL,NULL,NULL),(5,'中华人民共和国防沙治沙法','http://www.mee.gov.cn/ywgz/fgbz/fl/201811/t20181114_673626.shtml',NULL,NULL,NULL,NULL),(6,'中华人民共和国大气污染防治法','http://www.mee.gov.cn/ywgz/fgbz/fl/201811/t20181113_673567.shtml',NULL,NULL,NULL,NULL),(7,'中华人民共和国土壤污染防治法','http://www.mee.gov.cn/ywgz/fgbz/fl/201809/t20180907_549845.shtml',NULL,NULL,NULL,NULL),(8,'中华人民共和国海洋环境保护法','http://www.mee.gov.cn/ywgz/fgbz/fl/201805/t20180517_440477.shtml',NULL,NULL,NULL,NULL),(9,'中华人民共和国水污染防治法(2017年6月27日第二次修正)','http://www.mee.gov.cn/ywgz/fgbz/fl/200802/t20080229_118802.shtml',NULL,NULL,NULL,NULL),(10,'中华人民共和国放射性污染防治法','http://www.mee.gov.cn/ywgz/fgbz/fl/200306/t20030628_85556.shtml',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userCount` char(10) NOT NULL,
  `userName` varchar(10) NOT NULL,
  `userPasswd` varchar(18) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userCount_UNIQUE` (`userCount`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'081417137','tatata','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `video` (
  `videoId` int(11) NOT NULL AUTO_INCREMENT,
  `videoName` varchar(50) NOT NULL,
  `videoUrl` varchar(1023) NOT NULL,
  PRIMARY KEY (`videoId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'保护环境动画短片 Save Environment - Cel Animation','<iframe src=\"//player.bilibili.com/player.html?aid=33531960&bvid=BV1yW41117QX&cid=58705396&page=1\"\" scrolling=\"\"no\"\" border=\"\"0\"\" frameborder=\"\"no\"\" framespacing=\"\"0\"\" allowfullscreen=\"\"true\"\"> </iframe>\"'),(2,'环境污染，气候变暖，野生动物的逐渐灭亡，下一个将会轮到人类吗','<iframe src=\"//player.bilibili.com/player.html?aid=456234157&bvid=BV165411Y7Vr&cid=208747621&page=1\"\" scrolling=\"\"no\"\" border=\"\"0\"\" frameborder=\"\"no\"\" framespacing=\"\"0\"\" allowfullscreen=\"\"true\"\"> </iframe>\"'),(3,'【世界环境日】世界环境日宣传视频','<iframe src=\"//player.bilibili.com/player.html?aid=840940839&bvid=BV1e54y1Q72p&cid=198211598&page=1\"\" scrolling=\"\"no\"\" border=\"\"0\"\" frameborder=\"\"no\"\" framespacing=\"\"0\"\" allowfullscreen=\"\"true\"\"> </iframe>\"'),(4,'【环境保护混剪 | 世界环境日】今天我在这里，为将来的世代发声','<iframe src=\"//player.bilibili.com/player.html?aid=24240325&bvid=BV1wW411N7C4&cid=40642879&page=1\"\" scrolling=\"\"no\"\" border=\"\"0\"\" frameborder=\"\"no\"\" framespacing=\"\"0\"\" allowfullscreen=\"\"true\"\"> </iframe>\"'),(5,'【环保短片】震撼环保公益短片《致我们的地球》','<iframe src=\"//player.bilibili.com/player.html?aid=711694752&bvid=BV1ZD4y1U7H7&cid=223092563&page=1\"\" scrolling=\"\"no\"\" border=\"\"0\"\" frameborder=\"\"no\"\" framespacing=\"\"0\"\" allowfullscreen=\"\"true\"\"> </iframe>');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02 21:31:40
