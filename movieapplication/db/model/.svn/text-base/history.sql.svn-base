-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 11, 2010 at 11:13 AM
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


--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK_Reseller` FOREIGN KEY (`idReseller`) REFERENCES `resellers` (`idResellers`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Show` FOREIGN KEY (`idEntShow`) REFERENCES `entshow` (`idEntShow`) ON DELETE NO ACTION ON UPDATE NO ACTION;
