-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2010 at 06:56 PM
-- Server version: 5.1.45
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `entshow`
--

CREATE TABLE IF NOT EXISTS `entshow` (
  `idEntShow` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(2000) NOT NULL,
  `Language` varchar(45) DEFAULT NULL,
  `Year` int(4) DEFAULT NULL,
  `TypeOfShow` int(11) NOT NULL DEFAULT '1',
  `Tagline` varchar(4000) DEFAULT NULL,
  `Plot Summary` text,
  `Genre` varchar(75) DEFAULT NULL,
  `RunTime` int(11) DEFAULT NULL,
  `Color_BW` varchar(25) DEFAULT 'Color' COMMENT 'store whether the movie is black & white or colored\n\n',
  PRIMARY KEY (`idEntShow`),
  KEY `FK_ShowType` (`TypeOfShow`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `entshow`
--

INSERT INTO `entshow` (`idEntShow`, `Name`, `Language`, `Year`, `TypeOfShow`, `Tagline`, `Plot Summary`, `Genre`, `RunTime`, `Color_BW`) VALUES
(1, 'PAA', 'Hindi', 2009, 1, 'A very rare father-son son-father story', 'Paa is an emotional father-son relationship with the ailment as the back-drop.\r\n\r\nAuro (Amitabh Bachchan) is an intelligent, witty 13 yr old boy with an extremely rare genetic defect that causes accelerated ageing. He suffers from a progeria like syndrome. Mentally he is 13, very normal, but physically he looks 5 times older. In spite of his condition, Auro is a very happy boy. He lives with his mother Vidya(Vidya Balan), who is a gynaecologist.\r\n\r\nAmol Arte (Abhishek Bachchan), is young, progressive and a full of ideals, politician. He is out to prove to the world that ''politics'' is not a bad word. He is a man with a mission. Auro is Amol''s son.', 'drama', 150, 'Color'),
(2, 'Kabhi alvida na kehna', 'Hindi', 2006, 1, NULL, 'Kabhi Alvida Na Kehna centers on the budding romance between Dev and Maya, who are both married to different people. Settled into a life of domestic ritual, and convinced that they are happy in their respective relationships, the protagonists still yearn for something deeper and more meaningful, which is precisely what they find in each other. From a relationship starting off in pleasant barbs, the two begin to develop and acknowledge the feelings they have beneath the surface. When their feelings come to the forefront, what results is a collision of lives and emotions, affecting everyone involved and changing them forever.', 'drama', 193, 'Color'),
(3, 'PAA', 'Hindi', 2007, 1, 'A very rare father-son son-father story', 'Paa is an emotional father-son relationship with the ailment as the back-drop.\r\n\r\nAuro (Amitabh Bachchan) is an intelligent, witty 13 yr old boy with an extremely rare genetic defect that causes accelerated ageing. He suffers from a progeria like syndrome. Mentally he is 13, very normal, but physically he looks 5 times older. In spite of his condition, Auro is a very happy boy. He lives with his mother Vidya(Vidya Balan), who is a gynaecologist.\r\n\r\nAmol Arte (Abhishek Bachchan), is young, progressive and a full of ideals, politician. He is out to prove to the world that ''politics'' is not a bad word. He is a man with a mission. Auro is Amol''s son.', 'drama', 150, 'Color'),
(4, '3 Idiots', 'Hindi', 2009, 1, 'All is well', 'Two friends embark on a quest for a lost buddy. On this journey, they encounter a long forgotten bet, a wedding they must crash, and a funeral that goes impossibly out of control.', 'comedy', 240, 'Color'),
(5, 'Kites', 'Hindi', 2010, 1, NULL, 'In the harsh terrain of the Mexican desert, a mortally wounded man is left for dead in the heat of the desert sun. This is J. Once a street smart, carefree young guy. Now, a wanted man. As death looms, the only thing that keeps him alive is the quest to find the love of his life, Natasha. A woman betrothed to another man, but surely destined for J. A woman who comes into his life like a bolt of lightning and changes it forever', 'action', NULL, 'Color');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entshow`
--
ALTER TABLE `entshow`
  ADD CONSTRAINT `FK_ShowType` FOREIGN KEY (`TypeOfShow`) REFERENCES `entshowtypes` (`idEntShowTypes`) ON DELETE NO ACTION ON UPDATE NO ACTION;
