-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 21 mai 2023 à 22:31
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exercices corrige`
--

-- --------------------------------------------------------

--
-- Structure de la table `exercices`
--

CREATE TABLE `exercices` (
  `num` varchar(5) NOT NULL,
  `langage` varchar(10) NOT NULL,
  `enonce` varchar(200) NOT NULL,
  `solution` varchar(200) NOT NULL,
  `matriculeP` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exercices`
--

INSERT INTO `exercices` (`num`, `langage`, `enonce`, `solution`, `matriculeP`) VALUES
('e100', 'php', 'ex1', 'sol ex1', 's111'),
('e120', 'javascript', 'ex2', 'sol ex2', 'a120'),
('e300', 'javascript', 'ex3', 'sol ex3', 'a120');

-- --------------------------------------------------------

--
-- Structure de la table `profs`
--

CREATE TABLE `profs` (
  `matriculeP` varchar(5) NOT NULL,
  `nom et prenom` varchar(15) NOT NULL,
  `matiereP` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profs`
--

INSERT INTO `profs` (`matriculeP`, `nom et prenom`, `matiereP`) VALUES
('a120', 'ali aloui', 'js'),
('f209', 'faouzi ben dale', 'algo'),
('s111', 'samira geloui', 'php');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `exercices`
--
ALTER TABLE `exercices`
  ADD PRIMARY KEY (`num`),
  ADD KEY `rf` (`matriculeP`);

--
-- Index pour la table `profs`
--
ALTER TABLE `profs`
  ADD PRIMARY KEY (`matriculeP`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `exercices`
--
ALTER TABLE `exercices`
  ADD CONSTRAINT `rf` FOREIGN KEY (`matriculeP`) REFERENCES `profs` (`matriculeP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
