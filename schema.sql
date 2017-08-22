-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 22, 2017 at 07:04 PM
-- Server version: 10.1.26-MariaDB-1~stretch
-- PHP Version: 7.0.19-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `cedr`
--
CREATE DATABASE IF NOT EXISTS `cedr` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cedr`;

-- --------------------------------------------------------

--
-- Table structure for table `AdresaBydliste`
--

DROP TABLE IF EXISTS `AdresaBydliste`;
CREATE TABLE IF NOT EXISTS `AdresaBydliste` (
  `idAdresa` varchar(40) NOT NULL,
  `idPrijemce` varchar(40) NOT NULL,
  `adrTyp` decimal(10,0) NOT NULL,
  `iriStat` varchar(100) NOT NULL,
  `obec` varchar(100) DEFAULT NULL,
  `obecKod` decimal(10,0) DEFAULT NULL,
  `obecNazev` varchar(50) DEFAULT NULL,
  `dPlatnost` datetime(3) NOT NULL,
  `dtAktualizace` datetime(3) NOT NULL,
  PRIMARY KEY (`idAdresa`),
  KEY `idPrijemce` (`idPrijemce`),
  KEY `obecKod` (`obecKod`),
  KEY `iriStat` (`iriStat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AdresaSidlo`
--

DROP TABLE IF EXISTS `AdresaSidlo`;
CREATE TABLE IF NOT EXISTS `AdresaSidlo` (
  `idAdresa` varchar(40) NOT NULL,
  `idPrijemce` varchar(40) NOT NULL,
  `adrTyp` tinyint(1) NOT NULL,
  `iriStat` varchar(77) NOT NULL,
  `iriObec` varchar(82) DEFAULT NULL,
  `obecKod` decimal(10,0) DEFAULT NULL,
  `obecNazev` varchar(37) DEFAULT NULL,
  `psc` decimal(10,0) DEFAULT NULL,
  `adresniMistoKod` decimal(10,0) DEFAULT NULL,
  `iriCastObce` tinyint(1) DEFAULT NULL,
  `castObceKod` decimal(10,0) DEFAULT NULL,
  `cisloDomovni` decimal(10,0) DEFAULT NULL,
  `cisloOrientacni` varchar(4) DEFAULT NULL,
  `uliceKod` decimal(10,0) DEFAULT NULL,
  `ulice` varchar(32) DEFAULT NULL,
  `adresaText` varchar(171) DEFAULT NULL,
  `dPlatnost` datetime(3) NOT NULL,
  `dtAktualizace` datetime(3) NOT NULL,
  PRIMARY KEY (`idAdresa`),
  KEY `idPrijemce` (`idPrijemce`),
  KEY `iriStat` (`iriStat`),
  KEY `iriObec` (`iriObec`),
  KEY `iriCastObce` (`iriCastObce`),
  KEY `psc` (`psc`),
  KEY `ulice` (`ulice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikCedrCinnostTypev01`
--

DROP TABLE IF EXISTS `ciselnikCedrCinnostTypev01`;
CREATE TABLE IF NOT EXISTS `ciselnikCedrCinnostTypev01` (
  `id` int(11) NOT NULL,
  `timeinfo` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikCedrGrantoveSchemav01`
--

DROP TABLE IF EXISTS `ciselnikCedrGrantoveSchemav01`;
CREATE TABLE IF NOT EXISTS `ciselnikCedrGrantoveSchemav01` (
  `idGrantoveSchema` varchar(116) NOT NULL,
  `grantoveSchemaKod` varchar(36) NOT NULL,
  `grantoveSchemaNazev` varchar(35) NOT NULL,
  `grantoveSchemaCislo` decimal(10,0) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idGrantoveSchema`),
  KEY `grantoveSchemaKod` (`grantoveSchemaKod`),
  KEY `grantoveSchemaNazev` (`grantoveSchemaNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikCedrOpatreniv01`
--

DROP TABLE IF EXISTS `ciselnikCedrOpatreniv01`;
CREATE TABLE IF NOT EXISTS `ciselnikCedrOpatreniv01` (
  `idOpatreni` varchar(110) NOT NULL,
  `idPriorita` varchar(110) NOT NULL,
  `opatreniKod` varchar(12) NOT NULL,
  `opatreniNazev` varchar(203) NOT NULL,
  `opatreniCislo` decimal(10,0) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idOpatreni`),
  KEY `idPriorita` (`idPriorita`),
  KEY `opatreniKod` (`opatreniKod`),
  KEY `opatreniCislo` (`opatreniCislo`),
  KEY `opatreniNazev` (`opatreniNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikCedrOperacniProgramv01`
--

DROP TABLE IF EXISTS `ciselnikCedrOperacniProgramv01`;
CREATE TABLE IF NOT EXISTS `ciselnikCedrOperacniProgramv01` (
  `idOperacniProgram` varchar(117) NOT NULL,
  `operacaniProgramKod` varchar(18) NOT NULL,
  `operacaniProgramNazev` varchar(62) NOT NULL,
  `operacaniProgramCislo` decimal(10,0) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idOperacniProgram`),
  KEY `operacaniProgramNazev` (`operacaniProgramNazev`),
  KEY `operacaniProgramKod` (`operacaniProgramKod`),
  KEY `operacaniProgramCislo` (`operacaniProgramCislo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikCedrPodOpatreniv01`
--

DROP TABLE IF EXISTS `ciselnikCedrPodOpatreniv01`;
CREATE TABLE IF NOT EXISTS `ciselnikCedrPodOpatreniv01` (
  `idPodOpatreni` varchar(113) NOT NULL,
  `idOpatreni` varchar(110) NOT NULL,
  `podOpatreniKod` varchar(14) NOT NULL,
  `podOpatreniNazev` varchar(120) NOT NULL,
  `podOpatreniCislo` decimal(10,0) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idPodOpatreni`),
  KEY `idOpatreni` (`idOpatreni`),
  KEY `podOpatreniKod` (`podOpatreniKod`),
  KEY `podOpatreniCislo` (`podOpatreniCislo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikCedrPodprogramv01`
--

DROP TABLE IF EXISTS `ciselnikCedrPodprogramv01`;
CREATE TABLE IF NOT EXISTS `ciselnikCedrPodprogramv01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikCedrPrioritav01`
--

DROP TABLE IF EXISTS `ciselnikCedrPrioritav01`;
CREATE TABLE IF NOT EXISTS `ciselnikCedrPrioritav01` (
  `idPriorita` varchar(110) NOT NULL,
  `idOperacniProgram` varchar(117) NOT NULL,
  `idPodprogram` tinyint(1) DEFAULT NULL,
  `prioritaKod` varchar(8) NOT NULL,
  `prioritaNazev` varchar(159) NOT NULL,
  `prioritaCislo` decimal(10,0) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idPriorita`),
  KEY `idOperacniProgram` (`idOperacniProgram`),
  KEY `idPodprogram` (`idPodprogram`),
  KEY `prioritaKod` (`prioritaKod`),
  KEY `prioritaCislo` (`prioritaCislo`),
  KEY `prioritaNazev` (`prioritaNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikCedrProgramPodporav01`
--

DROP TABLE IF EXISTS `ciselnikCedrProgramPodporav01`;
CREATE TABLE IF NOT EXISTS `ciselnikCedrProgramPodporav01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikDotacePoskytovatelv01`
--

DROP TABLE IF EXISTS `ciselnikDotacePoskytovatelv01`;
CREATE TABLE IF NOT EXISTS `ciselnikDotacePoskytovatelv01` (
  `id` varchar(92) NOT NULL,
  `dotacePoskytovatelKod` decimal(10,0) NOT NULL,
  `dotacePoskytovatelNazev` varchar(70) NOT NULL,
  `dotacePoskytovatelNadrizenyKod` tinyint(1) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dotacePoskytovatelKod_2` (`dotacePoskytovatelKod`),
  KEY `dotacePoskytovatelKod` (`dotacePoskytovatelKod`),
  KEY `dotacePoskytovatelNazev` (`dotacePoskytovatelNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikDotaceTitulv01`
--

DROP TABLE IF EXISTS `ciselnikDotaceTitulv01`;
CREATE TABLE IF NOT EXISTS `ciselnikDotaceTitulv01` (
  `idDotaceTitul` varchar(92) NOT NULL,
  `dotaceTitulKod` decimal(10,0) NOT NULL,
  `dotaceTitulVlastniKod` varchar(30) NOT NULL,
  `statniRozpocetKapitolaKod` decimal(10,0) NOT NULL,
  `dotaceTitulNazev` varchar(160) NOT NULL,
  `dotaceTitulNazevZkraceny` varchar(50) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idDotaceTitul`),
  KEY `dotaceTitulKod` (`dotaceTitulKod`),
  KEY `dotaceTitulVlastniKod` (`dotaceTitulVlastniKod`),
  KEY `statniRozpocetKapitolaKod` (`statniRozpocetKapitolaKod`),
  KEY `dotaceTitulNazev` (`dotaceTitulNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikDotaceTitul_RozpoctovaSkladbaParagrafv01`
--

DROP TABLE IF EXISTS `ciselnikDotaceTitul_RozpoctovaSkladbaParagrafv01`;
CREATE TABLE IF NOT EXISTS `ciselnikDotaceTitul_RozpoctovaSkladbaParagrafv01` (
  `idDotaceTitul` varchar(92) NOT NULL,
  `idRozpoctovaSkladbaParagraf` varchar(102) NOT NULL,
  `zaznamDatumPlatnost` datetime(3) NOT NULL,
  UNIQUE KEY `idDotaceTitul` (`idDotaceTitul`,`idRozpoctovaSkladbaParagraf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikDotaceTitul_StatniRozpocetUkazatelv01`
--

DROP TABLE IF EXISTS `ciselnikDotaceTitul_StatniRozpocetUkazatelv01`;
CREATE TABLE IF NOT EXISTS `ciselnikDotaceTitul_StatniRozpocetUkazatelv01` (
  `idDotaceTitul` varchar(92) NOT NULL,
  `idStatniRozpocetUkazatel` varchar(109) NOT NULL,
  `zaznamDatumPlatnost` datetime(3) NOT NULL,
  UNIQUE KEY `idDotaceTitul` (`idDotaceTitul`,`idStatniRozpocetUkazatel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikFinancniProstredekCleneniv01`
--

DROP TABLE IF EXISTS `ciselnikFinancniProstredekCleneniv01`;
CREATE TABLE IF NOT EXISTS `ciselnikFinancniProstredekCleneniv01` (
  `id` varchar(98) NOT NULL,
  `financniProstredekCleneniKod` decimal(10,0) NOT NULL,
  `financniProstredekCleneniNazev` varchar(164) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `financniProstredekCleneniKod` (`financniProstredekCleneniKod`),
  KEY `financniProstredekCleneniNazev` (`financniProstredekCleneniNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikFinancniZdrojv01`
--

DROP TABLE IF EXISTS `ciselnikFinancniZdrojv01`;
CREATE TABLE IF NOT EXISTS `ciselnikFinancniZdrojv01` (
  `id` varchar(90) NOT NULL,
  `financniZdrojKod` varchar(6) NOT NULL,
  `financniZdrojNadrizenyKod` varchar(3) DEFAULT NULL,
  `financniZdrojNazev` varchar(50) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `financniZdrojKod_2` (`financniZdrojKod`),
  KEY `financniZdrojKod` (`financniZdrojKod`),
  KEY `financniZdrojNadrizenyKod` (`financniZdrojNadrizenyKod`),
  KEY `financniZdrojNazev` (`financniZdrojNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikKrajv01`
--

DROP TABLE IF EXISTS `ciselnikKrajv01`;
CREATE TABLE IF NOT EXISTS `ciselnikKrajv01` (
  `id` varchar(78) NOT NULL,
  `krajKod` decimal(10,0) NOT NULL,
  `krajNazev` varchar(14) NOT NULL,
  `globalniNavrhZmenaIdentifikator` decimal(10,0) NOT NULL,
  `nespravnostIndikator` tinyint(1) NOT NULL,
  `transakceIdentifikator` decimal(10,0) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `krajKod` (`krajKod`),
  KEY `krajNazev` (`krajNazev`),
  KEY `transakceIdentifikator` (`transakceIdentifikator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikMestskyObvodMestskaCastv01`
--

DROP TABLE IF EXISTS `ciselnikMestskyObvodMestskaCastv01`;
CREATE TABLE IF NOT EXISTS `ciselnikMestskyObvodMestskaCastv01` (
  `id` varchar(101) NOT NULL,
  `mestskyObvodMestskaCastKod` decimal(10,0) NOT NULL,
  `mestskyObvodMestskaCastNazev` varchar(32) NOT NULL,
  `obecNad` varchar(73) NOT NULL,
  `pad2` varchar(29) DEFAULT NULL,
  `pad3` varchar(31) DEFAULT NULL,
  `pad4` varchar(30) DEFAULT NULL,
  `pad5` tinyint(1) DEFAULT NULL,
  `pad6` varchar(32) DEFAULT NULL,
  `pad7` varchar(33) DEFAULT NULL,
  `globalniNavrhZmenaIdentifikator` decimal(10,0) NOT NULL,
  `nespravnostIndikator` tinyint(1) NOT NULL,
  `transakceIdentifikator` decimal(10,0) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mestskyObvodMestskaCastKod` (`mestskyObvodMestskaCastKod`),
  KEY `transakceIdentifikator` (`transakceIdentifikator`),
  KEY `mestskyObvodMestskaCastNazev` (`mestskyObvodMestskaCastNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikMmrCinnostTypev01`
--

DROP TABLE IF EXISTS `ciselnikMmrCinnostTypev01`;
CREATE TABLE IF NOT EXISTS `ciselnikMmrCinnostTypev01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikMmrGrantoveSchemav01`
--

DROP TABLE IF EXISTS `ciselnikMmrGrantoveSchemav01`;
CREATE TABLE IF NOT EXISTS `ciselnikMmrGrantoveSchemav01` (
  `idGrantoveSchema` varchar(115) NOT NULL,
  `grantoveSchemaKod` varchar(14) NOT NULL,
  `grantoveSchemaNazev` varchar(100) NOT NULL,
  `grantoveSchemaCislo` tinyint(1) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` date NOT NULL,
  PRIMARY KEY (`idGrantoveSchema`),
  KEY `grantoveSchemaKod` (`grantoveSchemaKod`),
  KEY `grantoveSchemaNazev` (`grantoveSchemaNazev`),
  KEY `grantoveSchemaCislo` (`grantoveSchemaCislo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikMmrOpatreniv01`
--

DROP TABLE IF EXISTS `ciselnikMmrOpatreniv01`;
CREATE TABLE IF NOT EXISTS `ciselnikMmrOpatreniv01` (
  `idOpatreni` varchar(109) NOT NULL,
  `idPriorita` varchar(109) NOT NULL,
  `opatreniKod` varchar(8) NOT NULL,
  `opatreniNazev` varchar(255) NOT NULL,
  `opatreniCislo` tinyint(1) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idOpatreni`),
  KEY `idPriorita` (`idPriorita`),
  KEY `opatreniKod` (`opatreniKod`),
  KEY `opatreniNazev` (`opatreniNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikMmrOperacniProgramv01`
--

DROP TABLE IF EXISTS `ciselnikMmrOperacniProgramv01`;
CREATE TABLE IF NOT EXISTS `ciselnikMmrOperacniProgramv01` (
  `idOperacniProgram` varchar(116) NOT NULL,
  `operacaniProgramKod` varchar(15) NOT NULL,
  `operacaniProgramNazev` varchar(91) NOT NULL,
  `operacaniProgramCislo` date DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idOperacniProgram`),
  KEY `operacaniProgramKod` (`operacaniProgramKod`),
  KEY `operacaniProgramNazev` (`operacaniProgramNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikMmrPodOpatreniv01`
--

DROP TABLE IF EXISTS `ciselnikMmrPodOpatreniv01`;
CREATE TABLE IF NOT EXISTS `ciselnikMmrPodOpatreniv01` (
  `idPodOpatreni` varchar(112) NOT NULL,
  `idOpatreni` varchar(109) NOT NULL,
  `podOpatreniKod` varchar(30) NOT NULL,
  `podOpatreniNazev` varchar(99) NOT NULL,
  `podOpatreniCislo` decimal(10,0) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idPodOpatreni`),
  KEY `idOpatreni` (`idOpatreni`),
  KEY `podOpatreniNazev` (`podOpatreniNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikMmrPopdprogramv01`
--

DROP TABLE IF EXISTS `ciselnikMmrPopdprogramv01`;
CREATE TABLE IF NOT EXISTS `ciselnikMmrPopdprogramv01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikMmrPrioritav01`
--

DROP TABLE IF EXISTS `ciselnikMmrPrioritav01`;
CREATE TABLE IF NOT EXISTS `ciselnikMmrPrioritav01` (
  `idPriorita` varchar(109) NOT NULL,
  `idOperacniProgram` varchar(116) DEFAULT NULL,
  `idPodprogram` varchar(111) DEFAULT NULL,
  `prioritaKod` varchar(4) NOT NULL,
  `prioritaNazev` varchar(176) NOT NULL,
  `prioritaCislo` tinyint(1) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idPriorita`),
  KEY `idOperacniProgram` (`idOperacniProgram`),
  KEY `idPodprogram` (`idPodprogram`),
  KEY `prioritaKod` (`prioritaKod`),
  KEY `prioritaNazev` (`prioritaNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikMmrProgramPodporav01`
--

DROP TABLE IF EXISTS `ciselnikMmrProgramPodporav01`;
CREATE TABLE IF NOT EXISTS `ciselnikMmrProgramPodporav01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikObecv01`
--

DROP TABLE IF EXISTS `ciselnikObecv01`;
CREATE TABLE IF NOT EXISTS `ciselnikObecv01` (
  `id` varchar(82) NOT NULL,
  `obecKod` decimal(10,0) NOT NULL,
  `obecNutsKod` varchar(12) NOT NULL,
  `obecNazev` varchar(37) NOT NULL,
  `okresNad` varchar(72) DEFAULT NULL,
  `pad2` varchar(34) DEFAULT NULL,
  `pad3` varchar(34) DEFAULT NULL,
  `pad4` varchar(34) DEFAULT NULL,
  `pad5` varchar(32) DEFAULT NULL,
  `pad6` varchar(34) DEFAULT NULL,
  `pad7` varchar(36) DEFAULT NULL,
  `globalniNavrhZmenaIdentifikator` decimal(10,0) NOT NULL,
  `nespravnostIndikator` tinyint(1) NOT NULL,
  `transakceIdentifikator` decimal(10,0) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  `okresNadKod` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `obecKod` (`obecKod`),
  KEY `obecNutsKod` (`obecNutsKod`),
  KEY `obecNazev` (`obecNazev`),
  KEY `transakceIdentifikator` (`transakceIdentifikator`),
  KEY `okresNad` (`okresNad`),
  KEY `okresNadKod` (`okresNadKod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikOkresv01`
--

DROP TABLE IF EXISTS `ciselnikOkresv01`;
CREATE TABLE IF NOT EXISTS `ciselnikOkresv01` (
  `id` varchar(81) NOT NULL,
  `okresKod` decimal(10,0) NOT NULL,
  `okresNazev` varchar(19) NOT NULL,
  `okresNutsKod` varchar(6) NOT NULL,
  `krajNad` varchar(69) NOT NULL,
  `vuscNad` varchar(70) DEFAULT NULL,
  `globalniNavrhZmenaIdentifikator` decimal(10,0) NOT NULL,
  `nespravnostIndikator` tinyint(1) NOT NULL,
  `transakceIdentifikator` decimal(10,0) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  `krajNadKod` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `okresKod` (`okresKod`),
  KEY `okresNazev` (`okresNazev`),
  KEY `okresNutsKod` (`okresNutsKod`),
  KEY `vuscNad` (`vuscNad`),
  KEY `transakceIdentifikator` (`transakceIdentifikator`),
  KEY `krajNad` (`krajNad`),
  KEY `krajNadKod` (`krajNadKod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikPravniFormav01`
--

DROP TABLE IF EXISTS `ciselnikPravniFormav01`;
CREATE TABLE IF NOT EXISTS `ciselnikPravniFormav01` (
  `id` varchar(85) NOT NULL,
  `pravniFormaKod` decimal(10,0) NOT NULL,
  `pravniFormaNazev` varchar(117) NOT NULL,
  `pravniFormaNazevZkraceny` varchar(3) NOT NULL,
  `pravniFormaTypKod` decimal(10,0) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pravniFormaKod` (`pravniFormaKod`),
  KEY `pravniFormaNazev` (`pravniFormaNazev`),
  KEY `pravniFormaTypKod` (`pravniFormaTypKod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikProgramv01`
--

DROP TABLE IF EXISTS `ciselnikProgramv01`;
CREATE TABLE IF NOT EXISTS `ciselnikProgramv01` (
  `id` varchar(112) NOT NULL,
  `programKod` varchar(10) NOT NULL,
  `programNazev` varchar(100) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `programKod` (`programKod`),
  KEY `programNazev` (`programNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikRozpoctovaSkladbaParagrafv01`
--

DROP TABLE IF EXISTS `ciselnikRozpoctovaSkladbaParagrafv01`;
CREATE TABLE IF NOT EXISTS `ciselnikRozpoctovaSkladbaParagrafv01` (
  `id` varchar(102) NOT NULL,
  `rozpoctovaSkladbaParagrafKod` decimal(10,0) NOT NULL,
  `rozpoctovaSkladbaParagrafNazev` varchar(150) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rozpoctovaSkladbaParagrafKod` (`rozpoctovaSkladbaParagrafKod`),
  KEY `rozpoctovaSkladbaParagrafNazev` (`rozpoctovaSkladbaParagrafNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikRozpoctovaSkladbaPolozkav01`
--

DROP TABLE IF EXISTS `ciselnikRozpoctovaSkladbaPolozkav01`;
CREATE TABLE IF NOT EXISTS `ciselnikRozpoctovaSkladbaPolozkav01` (
  `id` varchar(99) NOT NULL,
  `rozpoctovaSkladbaPolozkaKod` decimal(10,0) NOT NULL,
  `rozpoctovaSkladbaPolozkaNazev` varchar(131) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rozpoctovaSkladbaPolozkaKod` (`rozpoctovaSkladbaPolozkaKod`),
  KEY `rozpoctovaSkladbaPolozkaNazev` (`rozpoctovaSkladbaPolozkaNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikStatniRozpocetKapitolav01`
--

DROP TABLE IF EXISTS `ciselnikStatniRozpocetKapitolav01`;
CREATE TABLE IF NOT EXISTS `ciselnikStatniRozpocetKapitolav01` (
  `id` varchar(96) NOT NULL,
  `statniRozpocetKapitolaKod` decimal(10,0) NOT NULL,
  `statniRozpocetKapitolaNazev` varchar(70) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `statniRozpocetKapitolaKod` (`statniRozpocetKapitolaKod`),
  KEY `statniRozpocetKapitolaNazev` (`statniRozpocetKapitolaNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikStatniRozpocetUkazatelv01`
--

DROP TABLE IF EXISTS `ciselnikStatniRozpocetUkazatelv01`;
CREATE TABLE IF NOT EXISTS `ciselnikStatniRozpocetUkazatelv01` (
  `id` varchar(109) NOT NULL,
  `idStatniRozpocetKapitola` tinyint(1) DEFAULT NULL,
  `statniRozpocetUkazatelKod` varchar(12) NOT NULL,
  `statniRozpocetKapitolaKod` decimal(10,0) NOT NULL,
  `statniRozpocetUkazatelNadrizenyKod` varchar(12) DEFAULT NULL,
  `statniRozpocetUkazatelNazev` varchar(108) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `statniRozpocetUkazatelKod` (`statniRozpocetUkazatelKod`),
  KEY `statniRozpocetKapitolaKod` (`statniRozpocetKapitolaKod`),
  KEY `statniRozpocetUkazatelNadrizenyKod` (`statniRozpocetUkazatelNadrizenyKod`),
  KEY `statniRozpocetUkazatelNazev` (`statniRozpocetUkazatelNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikStatv01`
--

DROP TABLE IF EXISTS `ciselnikStatv01`;
CREATE TABLE IF NOT EXISTS `ciselnikStatv01` (
  `id` varchar(77) NOT NULL,
  `statKod3Znaky` varchar(3) NOT NULL,
  `statKod3Cisla` decimal(10,0) NOT NULL,
  `statKodOmezeny` varchar(2) DEFAULT NULL,
  `statNazev` varchar(73) NOT NULL,
  `statNazevZkraceny` varchar(38) NOT NULL,
  `statNazevEn` varchar(50) DEFAULT NULL,
  `statNazevZkracenyEn` varchar(44) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `statKod3Znaky` (`statKod3Znaky`),
  KEY `statKod3Cisla` (`statKod3Cisla`),
  KEY `statNazev` (`statNazev`),
  KEY `statNazevEn` (`statNazevEn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikUcelZnakv01`
--

DROP TABLE IF EXISTS `ciselnikUcelZnakv01`;
CREATE TABLE IF NOT EXISTS `ciselnikUcelZnakv01` (
  `idUcelZnak` varchar(84) NOT NULL,
  `ucelZnakKod` decimal(10,0) NOT NULL,
  `statniRozpocetKapitolaKod` decimal(10,0) DEFAULT NULL,
  `ucelZnakNazev` varchar(250) NOT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`idUcelZnak`),
  KEY `ucelZnakKod` (`ucelZnakKod`),
  KEY `statniRozpocetKapitolaKod` (`statniRozpocetKapitolaKod`),
  KEY `ucelZnakNazev` (`ucelZnakNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikUcelZnak_DotacniTitulv01`
--

DROP TABLE IF EXISTS `ciselnikUcelZnak_DotacniTitulv01`;
CREATE TABLE IF NOT EXISTS `ciselnikUcelZnak_DotacniTitulv01` (
  `idUcelZnak` varchar(84) NOT NULL,
  `idDotaceTitul` varchar(92) NOT NULL,
  `zaznamDatumPlatnost` datetime(3) NOT NULL,
  UNIQUE KEY `idDotaceTitul` (`idUcelZnak`,`idDotaceTitul`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ciselnikVuscv01`
--

DROP TABLE IF EXISTS `ciselnikVuscv01`;
CREATE TABLE IF NOT EXISTS `ciselnikVuscv01` (
  `id` varchar(79) NOT NULL,
  `vuscKod` decimal(10,0) NOT NULL,
  `krajNutsKod` varchar(5) NOT NULL,
  `vuscNazev` varchar(20) NOT NULL,
  `globalniNavrhZmenaIdentifikator` decimal(10,0) NOT NULL,
  `nespravnostIndikator` tinyint(1) NOT NULL,
  `transakceIdentifikator` decimal(10,0) DEFAULT NULL,
  `zaznamPlatnostOdDatum` datetime(3) NOT NULL,
  `zaznamPlatnostDoDatum` datetime(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vuscKod` (`vuscKod`),
  KEY `krajNutsKod` (`krajNutsKod`),
  KEY `vuscNazev` (`vuscNazev`),
  KEY `transakceIdentifikator` (`transakceIdentifikator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Dotace`
--

DROP TABLE IF EXISTS `Dotace`;
CREATE TABLE IF NOT EXISTS `Dotace` (
  `idDotace` varchar(40) NOT NULL,
  `idPrijemce` varchar(40) NOT NULL,
  `projektKod` varchar(38) DEFAULT NULL,
  `podpisDatum` datetime(3) NOT NULL,
  `subjektRozliseniKod` decimal(10,0) DEFAULT NULL,
  `ukonceniPlanovaneDatum` datetime(3) NULL DEFAULT NULL,
  `ukonceniSkutecneDatum` datetime(3) NULL DEFAULT NULL,
  `zahajeniPlanovaneDatum` datetime(3) NULL DEFAULT NULL,
  `zahajeniSkutecneDatum` datetime(3) NULL DEFAULT NULL,
  `zmenaSmlouvyIndikator` tinyint(1) NOT NULL,
  `projektIdnetifikator` varchar(80) NOT NULL,
  `projektNazev` varchar(255) DEFAULT NULL,
  `iriOperacniProgram` varchar(120) DEFAULT NULL,
  `iriPodprogram` varchar(120) DEFAULT NULL,
  `iriPriorita` varchar(120) DEFAULT NULL,
  `iriOpatreni` varchar(120) DEFAULT NULL,
  `iriPodopatreni` varchar(120) DEFAULT NULL,
  `iriGrantoveSchema` varchar(120) DEFAULT NULL,
  `iriProgramPodpora` varchar(120) DEFAULT NULL,
  `iriTypCinnosti` varchar(120) DEFAULT NULL,
  `iriProgram` varchar(120) DEFAULT NULL,
  `dPlatnost` datetime(3) NULL DEFAULT '0000-00-00 00:00:00',
  `dtAktualizace` datetime(3) NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idDotace`),
  KEY `idPrijemce` (`idPrijemce`),
  KEY `iriOperacniProgram` (`iriOperacniProgram`),
  KEY `iriPodprogram` (`iriPodprogram`),
  KEY `iriOpatreni` (`iriOpatreni`),
  KEY `iriPriorita` (`iriPriorita`),
  KEY `iriGrantoveSchema` (`iriGrantoveSchema`),
  KEY `iriPodopatreni` (`iriPodopatreni`),
  KEY `iriTypCinnosti` (`iriTypCinnosti`),
  KEY `iriProgram` (`iriProgram`),
  KEY `projektNazev` (`projektNazev`),
  KEY `projektKod` (`projektKod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `EkonomikaSubjekt`
--

DROP TABLE IF EXISTS `EkonomikaSubjekt`;
CREATE TABLE IF NOT EXISTS `EkonomikaSubjekt` (
  `id` varchar(73) NOT NULL,
  `ico` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ico` (`ico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Etapa`
--

DROP TABLE IF EXISTS `Etapa`;
CREATE TABLE IF NOT EXISTS `Etapa` (
  `idEtapa` varchar(40) NOT NULL,
  `idDotace` varchar(40) NOT NULL,
  `etapaCislo` decimal(10,0) NOT NULL,
  `etapaNazev` varchar(100) NOT NULL,
  `ukonceniPlanovaneDatum` datetime(3) NOT NULL,
  `ukonceniSkutecneDatum` datetime(3) NOT NULL,
  `zahajeniPlanovaneDatum` datetime(3) NOT NULL,
  `zahajeniSkutecneDatum` datetime(3) NOT NULL,
  `poznamka` varchar(1987) DEFAULT NULL,
  `dtAktualizace` datetime(3) NOT NULL,
  PRIMARY KEY (`idEtapa`),
  KEY `idDotace` (`idDotace`),
  KEY `etapaCislo` (`etapaCislo`),
  KEY `etapaNazev` (`etapaNazev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Osoba`
--

DROP TABLE IF EXISTS `Osoba`;
CREATE TABLE IF NOT EXISTS `Osoba` (
  `id` varchar(133) NOT NULL,
  `jmeno` varchar(22) NOT NULL,
  `prijmeni` varchar(35) NOT NULL,
  `narozeniRok` decimal(10,0) NOT NULL,
  `bydlisteObecKod` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jmeno` (`jmeno`),
  KEY `prijmeni` (`prijmeni`),
  KEY `narozeniRok` (`narozeniRok`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PrijemcePomoci`
--

DROP TABLE IF EXISTS `PrijemcePomoci`;
CREATE TABLE IF NOT EXISTS `PrijemcePomoci` (
  `idPrijemce` varchar(40) NOT NULL,
  `ico` decimal(10,0) DEFAULT NULL,
  `obchodniJmeno` varchar(144) DEFAULT NULL,
  `jmeno` varchar(13) DEFAULT NULL,
  `prijmeni` varchar(19) DEFAULT NULL,
  `iriPravniForma` varchar(85) NOT NULL,
  `rokNarozeni` decimal(10,0) DEFAULT NULL,
  `iriStat` varchar(77) NOT NULL,
  `iriOsoba` varchar(112) DEFAULT NULL,
  `iriEkonomikaSubjekt` varchar(73) DEFAULT NULL,
  `dPlatnost` datetime(3) NOT NULL,
  `dtAktualizace` datetime(3) NOT NULL,
  PRIMARY KEY (`idPrijemce`),
  KEY `ico` (`ico`),
  KEY `obchodniJmeno` (`obchodniJmeno`),
  KEY `iriPravniForma` (`iriPravniForma`),
  KEY `iriStat` (`iriStat`),
  KEY `iriOsoba` (`iriOsoba`),
  KEY `iriEkonomikaSubjekt` (`iriEkonomikaSubjekt`),
  KEY `rokNarozeni` (`rokNarozeni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Rozhodnuti`
--

DROP TABLE IF EXISTS `Rozhodnuti`;
CREATE TABLE IF NOT EXISTS `Rozhodnuti` (
  `idRozhodnuti` varchar(40) NOT NULL,
  `idDotace` varchar(40) NOT NULL,
  `castkaPozadovana` bigint(20) DEFAULT NULL,
  `castkaRozhodnuta` bigint(20) NOT NULL,
  `iriPoskytovatelDotace` varchar(110) NOT NULL,
  `iriCleneniFinancnichProstredku` varchar(110) NOT NULL,
  `iriFinancniZdroj` varchar(110) NOT NULL,
  `rokRozhodnuti` int(11) NOT NULL,
  `investiceIndikator` tinyint(1) NOT NULL,
  `navratnostIndikator` tinyint(1) NOT NULL,
  `refundaceIndikator` tinyint(1) NOT NULL,
  `dPlatnost` datetime(3) NOT NULL,
  `dtAktualizace` datetime(3) NOT NULL,
  PRIMARY KEY (`idRozhodnuti`),
  KEY `idDotace` (`idDotace`),
  KEY `iriPoskytovatelDotace` (`iriPoskytovatelDotace`),
  KEY `iriCleneniFinancnichProstredku` (`iriCleneniFinancnichProstredku`),
  KEY `iriFinancniZdroj` (`iriFinancniZdroj`),
  KEY `rokRozhodnuti` (`rokRozhodnuti`),
  KEY `investiceIndikator` (`investiceIndikator`),
  KEY `navratnostIndikator` (`navratnostIndikator`),
  KEY `castkaRozhodnuta` (`castkaRozhodnuta`),
  KEY `castkaPozadovana` (`castkaPozadovana`),
  KEY `refundaceIndikator` (`refundaceIndikator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RozhodnutiSmlouva`
--

DROP TABLE IF EXISTS `RozhodnutiSmlouva`;
CREATE TABLE IF NOT EXISTS `RozhodnutiSmlouva` (
  `idSmlouva` varchar(40) NOT NULL,
  `idRozhodnuti` varchar(40) NOT NULL,
  `cisloJednaciRozhodnuti` varchar(29) NOT NULL,
  `dokumentDruhKod` tinyint(1) NOT NULL,
  `rozhodnutiDatum` datetime(3) NOT NULL,
  `dtAktualizace` datetime(3) NOT NULL,
  PRIMARY KEY (`idSmlouva`),
  KEY `idRozhodnuti` (`idRozhodnuti`),
  KEY `cisloJednaciRozhodnuti` (`cisloJednaciRozhodnuti`),
  KEY `rozhodnutiDatum` (`rozhodnutiDatum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RozpoctoveObdobi`
--

DROP TABLE IF EXISTS `RozpoctoveObdobi`;
CREATE TABLE IF NOT EXISTS `RozpoctoveObdobi` (
  `idObdobi` varchar(40) NOT NULL,
  `idRozhodnuti` varchar(40) NOT NULL,
  `castkaCerpana` bigint(20) DEFAULT NULL,
  `castkaUvolnena` bigint(20) DEFAULT NULL,
  `castkaVracena` bigint(20) DEFAULT NULL,
  `castkaSpotrebovana` bigint(20) DEFAULT NULL,
  `rozpoctoveObdobi` decimal(10,0) NOT NULL,
  `vyporadaniKod` tinyint(1) DEFAULT NULL,
  `iriDotacniTitul` varchar(92) DEFAULT NULL,
  `iriUcelovyZnak` varchar(84) DEFAULT NULL,
  `dPlatnost` datetime(3) NOT NULL,
  `dtAktualizace` datetime(3) NOT NULL,
  PRIMARY KEY (`idObdobi`),
  KEY `idRozhodnuti` (`idRozhodnuti`),
  KEY `castkaCerpana` (`castkaCerpana`),
  KEY `castkaUvolnena` (`castkaUvolnena`),
  KEY `castkaVracena` (`castkaVracena`),
  KEY `castkaSpotrebovana` (`castkaSpotrebovana`),
  KEY `rozpoctoveObdobi` (`rozpoctoveObdobi`),
  KEY `iriDotacniTitul` (`iriDotacniTitul`),
  KEY `iriUcelovyZnak` (`iriUcelovyZnak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SplatkaKalendar`
--

DROP TABLE IF EXISTS `SplatkaKalendar`;
CREATE TABLE IF NOT EXISTS `SplatkaKalendar` (
  `idSKalendar` varchar(40) NOT NULL,
  `idRozhodnuti` varchar(40) NOT NULL,
  `castkaSplatkaPlanovana` decimal(10,0) NOT NULL,
  `castkaSplatkaSkutecna` decimal(10,0) NOT NULL,
  `uroceniIndikator` tinyint(1) NOT NULL,
  `dtAktualizace` datetime(3) NOT NULL,
  PRIMARY KEY (`idSKalendar`),
  KEY `idRozhodnuti` (`idRozhodnuti`),
  KEY `castkaSplatkaPlanovana` (`castkaSplatkaPlanovana`),
  KEY `castkaSplatkaSkutecna` (`castkaSplatkaSkutecna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `UzemniRealizace`
--

DROP TABLE IF EXISTS `UzemniRealizace`;
CREATE TABLE IF NOT EXISTS `UzemniRealizace` (
  `idUzemi` varchar(40) NOT NULL,
  `idDotace` varchar(40) NOT NULL,
  `mezinarodniPusobnostIndikator` tinyint(1) DEFAULT NULL,
  `iriRealizovanNaUzemiStatu` tinyint(1) DEFAULT NULL,
  `uzemniRealizacePopis` tinyint(1) DEFAULT NULL,
  `obvodPrahaPredavaciKod` tinyint(1) DEFAULT NULL,
  `spravniObvodPrahaPredavaciKod` tinyint(1) DEFAULT NULL,
  `stavebniObjektKod` tinyint(1) DEFAULT NULL,
  `uliceKod` tinyint(1) DEFAULT NULL,
  `iriCastObce` tinyint(1) DEFAULT NULL,
  `iriKraj` tinyint(1) DEFAULT NULL,
  `iriMestskyObvodMestskaCast` tinyint(1) DEFAULT NULL,
  `iriObec` tinyint(1) DEFAULT NULL,
  `iriOkres` tinyint(1) DEFAULT NULL,
  `iriVusc` tinyint(1) DEFAULT NULL,
  `adresniMistoKod` tinyint(1) DEFAULT NULL,
  `okresNutsKod` varchar(6) NOT NULL,
  `dtAktualizace` datetime(3) NOT NULL,
  `dPlatnost` datetime(3) NOT NULL,
  PRIMARY KEY (`idUzemi`),
  KEY `idDotace` (`idDotace`),
  KEY `iriRealizovanNaUzemiStatu` (`iriRealizovanNaUzemiStatu`),
  KEY `iriCastObce` (`iriCastObce`),
  KEY `iriKraj` (`iriKraj`),
  KEY `iriMestskyObvodMestskaCast` (`iriMestskyObvodMestskaCast`),
  KEY `iriObec` (`iriObec`),
  KEY `iriOkres` (`iriOkres`),
  KEY `iriVusc` (`iriVusc`),
  KEY `okresNutsKod` (`okresNutsKod`),
  KEY `adresniMistoKod` (`adresniMistoKod`),
  KEY `stavebniObjektKod` (`stavebniObjektKod`),
  KEY `uliceKod` (`uliceKod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdresaBydliste`
--
ALTER TABLE `AdresaBydliste` ADD FULLTEXT KEY `obecNazev` (`obecNazev`);

--
-- Indexes for table `PrijemcePomoci`
--
ALTER TABLE `PrijemcePomoci` ADD FULLTEXT KEY `prijemce_fulltext` (`obchodniJmeno`,`jmeno`,`prijmeni`);
COMMIT;

