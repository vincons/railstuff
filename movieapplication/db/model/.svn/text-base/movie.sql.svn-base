-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 10, 2010 at 06:36 AM
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
-- Table structure for table `cast`
--

CREATE TABLE IF NOT EXISTS `cast` (
  `idProfessional` int(11) NOT NULL,
  `idEntShow` int(11) NOT NULL,
  `Role` int(11) NOT NULL,
  KEY `FF_CastProfessional` (`idProfessional`),
  KEY `FF_CastMovie` (`idEntShow`),
  KEY `FF_Role` (`Role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cast`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `entshow`
--

INSERT INTO `entshow` (`idEntShow`, `Name`, `Language`, `Year`, `TypeOfShow`, `Tagline`, `Plot Summary`, `Genre`, `RunTime`, `Color_BW`) VALUES
(1, 'PAA', 'hindi', 2010, 1, 'ghfghfgh', 'hjgjgh', 'action', 2222, 'Color'),
(2, 'kank', 'hindi', 2006, 1, 'gdf', 'vngh', 'ghjgh', 5645, 'Color');

-- --------------------------------------------------------

--
-- Table structure for table `entshowtypes`
--

CREATE TABLE IF NOT EXISTS `entshowtypes` (
  `idEntShowTypes` int(11) NOT NULL AUTO_INCREMENT,
  `Desc` varchar(45) DEFAULT NULL COMMENT 'Store whether its a movie, TV Series, or some other kind of entertainment show....\n',
  PRIMARY KEY (`idEntShowTypes`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `entshowtypes`
--

INSERT INTO `entshowtypes` (`idEntShowTypes`, `Desc`) VALUES
(1, 'Movie'),
(2, 'tvshows');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `idhistory` int(11) NOT NULL,
  `idEntShow` int(11) DEFAULT NULL,
  `idMediaType` int(11) DEFAULT NULL COMMENT 'what was clicked, DVD, vcd, audio etc..',
  `idReseller` int(11) DEFAULT NULL COMMENT 'to which reseller the link was forwarded...\n',
  `successFlag` tinyint(1) DEFAULT NULL,
  `TxnID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idhistory`),
  KEY `FK_Show` (`idEntShow`),
  KEY `FK_Reseller` (`idReseller`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--


-- --------------------------------------------------------

--
-- Table structure for table `plotkeywords`
--

CREATE TABLE IF NOT EXISTS `plotkeywords` (
  `idPlotKeywords` int(11) NOT NULL AUTO_INCREMENT,
  `Keyword` varchar(100) DEFAULT NULL,
  `Desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`idPlotKeywords`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `plotkeywords`
--


-- --------------------------------------------------------

--
-- Table structure for table `professionals`
--

CREATE TABLE IF NOT EXISTS `professionals` (
  `idProfessionals` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `First Name` varchar(250) NOT NULL,
  `Middle Name` varchar(250) DEFAULT NULL,
  `Last Name` varchar(250) DEFAULT NULL,
  `Maiden Name` varchar(250) DEFAULT NULL,
  `Sex` varchar(1) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `Single_YN` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idProfessionals`),
  KEY `IDX_Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `professionals`
--


-- --------------------------------------------------------

--
-- Table structure for table `proftypes`
--

CREATE TABLE IF NOT EXISTS `proftypes` (
  `idProfTypes` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(2000) NOT NULL COMMENT 'Describe whether the professional is a producer, director, actor actress.. whatever',
  PRIMARY KEY (`idProfTypes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `proftypes`
--


-- --------------------------------------------------------

--
-- Table structure for table `showkeywords`
--

CREATE TABLE IF NOT EXISTS `showkeywords` (
  `idShowKeywords` int(11) NOT NULL AUTO_INCREMENT,
  `idEntShow` int(11) DEFAULT NULL,
  `KeywordID` int(11) DEFAULT NULL,
  PRIMARY KEY (`idShowKeywords`),
  KEY `FF_Show` (`idEntShow`),
  KEY `FF_Keywords` (`KeywordID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `showkeywords`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `FF_CastMovie` FOREIGN KEY (`idEntShow`) REFERENCES `entshow` (`idEntShow`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FF_CastProfessional` FOREIGN KEY (`idProfessional`) REFERENCES `professionals` (`idProfessionals`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FF_Role` FOREIGN KEY (`Role`) REFERENCES `proftypes` (`idProfTypes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `entshow`
--
ALTER TABLE `entshow`
  ADD CONSTRAINT `FK_ShowType` FOREIGN KEY (`TypeOfShow`) REFERENCES `entshowtypes` (`idEntShowTypes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK_Reseller` FOREIGN KEY (`idReseller`) REFERENCES `resellers` (`idResellers`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Show` FOREIGN KEY (`idEntShow`) REFERENCES `entshow` (`idEntShow`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `showkeywords`
--
ALTER TABLE `showkeywords`
  ADD CONSTRAINT `FF_Keywords` FOREIGN KEY (`KeywordID`) REFERENCES `plotkeywords` (`idPlotKeywords`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FF_Show` FOREIGN KEY (`idEntShow`) REFERENCES `entshow` (`idEntShow`) ON DELETE NO ACTION ON UPDATE NO ACTION;
