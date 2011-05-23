-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 11, 2010 at 10:49 AM
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
