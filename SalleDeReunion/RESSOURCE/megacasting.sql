-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2014 at 04:07 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `megacasting`
--

-- --------------------------------------------------------

--
-- Table structure for table `annonceurs`
--

CREATE TABLE IF NOT EXISTS `annonceurs` (
  `ID_Ann` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_Ann` varchar(45) DEFAULT NULL,
  `ADR_Ann` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Ann`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contrats`
--

CREATE TABLE IF NOT EXISTS `contrats` (
  `ID_Con` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_Con` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Con`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `diffuseur`
--

CREATE TABLE IF NOT EXISTS `diffuseur` (
  `ID_Dif` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_Dif` varchar(45) DEFAULT NULL,
  `ADR_Dif` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Dif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `difuseroffre`
--

CREATE TABLE IF NOT EXISTS `difuseroffre` (
  `FID_Dif` int(11) NOT NULL,
  `FID_Off` int(11) NOT NULL,
  PRIMARY KEY (`FID_Dif`,`FID_Off`),
  KEY `fk_OffreDifusee_Offres1_idx` (`FID_Off`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `domaines`
--

CREATE TABLE IF NOT EXISTS `domaines` (
  `ID_Dom` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_Dom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Dom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `metiers`
--

CREATE TABLE IF NOT EXISTS `metiers` (
  `ID_Met` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_Met` varchar(45) DEFAULT NULL,
  `DES_Met` varchar(45) DEFAULT NULL,
  `FID_Dom` int(11) NOT NULL,
  PRIMARY KEY (`ID_Met`),
  KEY `fk_Metiers_Domaines1_idx` (`FID_Dom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `offres`
--

CREATE TABLE IF NOT EXISTS `offres` (
  `ID_Off` int(11) NOT NULL AUTO_INCREMENT,
  `INT_Off` varchar(45) DEFAULT NULL,
  `DEB_Off` varchar(45) DEFAULT NULL,
  `DUR_Off` varchar(45) DEFAULT NULL,
  `DEB_Ctr` varchar(45) DEFAULT NULL,
  `NBS_Pos` int(11) DEFAULT NULL,
  `DES_Pos` varchar(45) DEFAULT NULL,
  `DES_Pro` varchar(45) DEFAULT NULL,
  `COR_Off` varchar(45) DEFAULT NULL,
  `FID_Con` int(11) NOT NULL,
  `FID_Ann` int(11) NOT NULL,
  `FID_Ref` int(11) NOT NULL,
  `FID_Met` int(11) NOT NULL,
  PRIMARY KEY (`ID_Off`),
  KEY `fk_Offres_Societes1_idx` (`FID_Ann`),
  KEY `fk_Offres_Metiers1_idx` (`FID_Met`),
  KEY `fk_Offres_References1_idx` (`FID_Ref`),
  KEY `fk_Offres_Contrats1_idx` (`FID_Con`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
  `ID_Pro` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NOM_Pro` varchar(30) NOT NULL,
  `PRE_Pro` varchar(30) NOT NULL,
  `AGE_Pro` tinyint(4) NOT NULL,
  `SEX_Pro` tinyint(1) NOT NULL,
  `TEL_Pro` char(10) DEFAULT NULL,
  `MAI_Pro` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID_Pro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE IF NOT EXISTS `references` (
  `ID_Ref` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_Ref` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `difuseroffre`
--
ALTER TABLE `difuseroffre`
  ADD CONSTRAINT `fk_OffreDifusee_Diffuseur1` FOREIGN KEY (`FID_Dif`) REFERENCES `diffuseur` (`ID_Dif`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OffreDifusee_Offres1` FOREIGN KEY (`FID_Off`) REFERENCES `offres` (`ID_Off`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `metiers`
--
ALTER TABLE `metiers`
  ADD CONSTRAINT `fk_Metiers_Domaines1` FOREIGN KEY (`FID_Dom`) REFERENCES `domaines` (`ID_Dom`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `offres`
--
ALTER TABLE `offres`
  ADD CONSTRAINT `fk_Offres_Contrats1` FOREIGN KEY (`FID_Con`) REFERENCES `contrats` (`ID_Con`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Offres_Metiers1` FOREIGN KEY (`FID_Met`) REFERENCES `metiers` (`ID_Met`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Offres_References1` FOREIGN KEY (`FID_Ref`) REFERENCES `references` (`ID_Ref`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Offres_Societes1` FOREIGN KEY (`FID_Ann`) REFERENCES `annonceurs` (`ID_Ann`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
