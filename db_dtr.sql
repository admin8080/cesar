# Host: localhost  (Version: 5.6.16)
# Date: 2016-03-24 09:54:09
# Generator: MySQL-Front 5.3  (Build 4.271)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "tbl_payroll"
#

DROP TABLE IF EXISTS `tbl_payroll`;
CREATE TABLE `tbl_payroll` (
  `payroll_Id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_Id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `transaction_date` varchar(255) DEFAULT NULL,
  `wage_salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`payroll_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "tbl_payroll"
#

INSERT INTO `tbl_payroll` VALUES (1,NULL,NULL,NULL,NULL),(2,0,'','',0),(3,2,'klkl','24 March 2016 - 18:45',1200),(4,3,'fsdf','24 March 2016 - 18:50',2324);

#
# Structure for table "tbl_timein"
#

DROP TABLE IF EXISTS `tbl_timein`;
CREATE TABLE `tbl_timein` (
  `timein_Id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL,
  `user_Idnum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`timein_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Data for table "tbl_timein"
#

INSERT INTO `tbl_timein` VALUES (1,'2016-03-22 06:38:36','123456');

#
# Structure for table "tbl_timeout"
#

DROP TABLE IF EXISTS `tbl_timeout`;
CREATE TABLE `tbl_timeout` (
  `timeout_Id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL,
  `user_idnum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`timeout_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Data for table "tbl_timeout"
#

INSERT INTO `tbl_timeout` VALUES (1,'2016-03-22 06:50:10','11111');

#
# Structure for table "tbl_user"
#

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Data for table "tbl_user"
#

INSERT INTO `tbl_user` VALUES (1,'admin','admin',1);

#
# Structure for table "tbl_user_details"
#

DROP TABLE IF EXISTS `tbl_user_details`;
CREATE TABLE `tbl_user_details` (
  `detail_Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_idnum` varchar(255) DEFAULT NULL,
  `user_fname` varchar(255) DEFAULT NULL,
  `user_mname` varchar(255) DEFAULT NULL,
  `user_lname` varchar(255) DEFAULT NULL,
  `user_gender` varchar(255) DEFAULT NULL,
  `user_age` int(11) DEFAULT NULL,
  `user_status` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`detail_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

#
# Data for table "tbl_user_details"
#

INSERT INTO `tbl_user_details` VALUES (1,'123456','Carlo','Sample','Galang','Male',20,'2',NULL,'145477962584124.png'),(2,'22222','test','test','test','Male',21,'2',NULL,'1454779786.png'),(3,'11111','kevin ','arnold','sumalde','Male',22,'Part Time',NULL,'1458569564297_1096472663706728_720254731_n.jpg'),(4,'213','sad','asd','sd','Male',21,'Full Time',1200,'1458760714448_830378876985878_4717557992746794434_n.jpg');
