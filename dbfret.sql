-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 10 nov. 2021 à 16:21
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbfret`
--

-- --------------------------------------------------------

--
-- Structure de la table `affretement`
--

DROP TABLE IF EXISTS `affretement`;
CREATE TABLE IF NOT EXISTS `affretement` (
  `ID` int(50) NOT NULL,
  `Date` date NOT NULL,
  `heure` time NOT NULL,
  `idBatFret` int(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idBatFret` (`idBatFret`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `affretement`
--

INSERT INTO `affretement` (`ID`, `Date`, `heure`, `idBatFret`) VALUES
(1, '2021-11-10', '15:12:08', 1),
(2, '2021-11-09', '15:20:00', 2),
(3, '2021-11-12', '15:55:00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `bateaufret`
--

DROP TABLE IF EXISTS `bateaufret`;
CREATE TABLE IF NOT EXISTS `bateaufret` (
  `ID` int(50) NOT NULL,
  `poidsMax` int(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bateaufret`
--

INSERT INTO `bateaufret` (`ID`, `poidsMax`) VALUES
(1, 450),
(2, 537);

-- --------------------------------------------------------

--
-- Structure de la table `lot`
--

DROP TABLE IF EXISTS `lot`;
CREATE TABLE IF NOT EXISTS `lot` (
  `idAff` int(50) NOT NULL,
  `idLot` int(50) NOT NULL,
  `Poids` int(50) NOT NULL,
  `idTran` int(50) NOT NULL,
  PRIMARY KEY (`idAff`,`idLot`),
  KEY `idAff` (`idAff`,`idTran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lot`
--

INSERT INTO `lot` (`idAff`, `idLot`, `Poids`, `idTran`) VALUES
(1, 1, 450, 1),
(2, 2, 537, 2),
(1, 3, 450, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tranche`
--

DROP TABLE IF EXISTS `tranche`;
CREATE TABLE IF NOT EXISTS `tranche` (
  `ID` int(50) NOT NULL,
  `tarifunit` int(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
