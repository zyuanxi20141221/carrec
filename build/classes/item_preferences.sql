/*
Navicat MySQL Data Transfer

Source Server         : 120.25.83.231_3306
Source Server Version : 50621
Source Host           : 120.25.83.231:3306
Source Database       : goopai_car_db

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-12-10 17:50:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item_preferences
-- ----------------------------
DROP TABLE IF EXISTS `item_preferences`;
CREATE TABLE `item_preferences` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userID` varchar(50) NOT NULL,
  `itemID` bigint(20) NOT NULL,
  `preference` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `itemID` (`itemID`),
  CONSTRAINT `item_preferences_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_preferences_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
