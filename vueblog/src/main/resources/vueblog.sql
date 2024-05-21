DROP TABLE IF EXISTS `m_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `m_blog` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `user_id` bigint(20) NOT NULL,
                          `title` varchar(255) NOT NULL,
                          `description` varchar(255) NOT NULL,
                          `content` longtext,
                          `created` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
                          `status` tinyint(4) DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `m_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `m_user` (
                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                          `username` varchar(64) DEFAULT NULL,
                          `avatar` varchar(255) DEFAULT NULL,
                          `email` varchar(64) DEFAULT NULL,
                          `password` varchar(64) DEFAULT NULL,
                          `status` int(5) NOT NULL,
                          `created` datetime DEFAULT NULL,
                          `last_login` datetime DEFAULT NULL,
                          PRIMARY KEY (`id`),
                          KEY `UK_USERNAME` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `vueblog`.`m_user` (`id`, `username`, `avatar`, `email`, `password`, `status`, `created`, `last_login`) VALUES ('1', 'hanson', 'https://image-1300566513.cos.ap-guangzhou.myqcloud.com/upload/images/5a9f48118166308daba8b6da7e466aab.jpg', NULL, '96e79218965eb72c92a549dd5a330112', '0', '2020-04-20 10:44:01', NULL);
