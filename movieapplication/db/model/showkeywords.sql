-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 11, 2010 at 11:15 AM
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
-- Constraints for table `showkeywords`
--
ALTER TABLE `showkeywords`
  ADD CONSTRAINT `FF_Keywords` FOREIGN KEY (`KeywordID`) REFERENCES `plotkeywords` (`idPlotKeywords`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FF_Show` FOREIGN KEY (`idEntShow`) REFERENCES `entshow` (`idEntShow`) ON DELETE NO ACTION ON UPDATE NO ACTION;
