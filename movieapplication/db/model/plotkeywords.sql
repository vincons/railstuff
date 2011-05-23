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

