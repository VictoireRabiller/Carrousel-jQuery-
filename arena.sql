-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 29 Mai 2018 à 16:52
-- Version du serveur :  5.7.22-0ubuntu0.16.04.1
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `arena`
--

-- --------------------------------------------------------

--
-- Structure de la table `perso`
--

CREATE TABLE `perso` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `HP` int(11) NOT NULL,
  `armor` int(11) NOT NULL,
  `weapon_id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `perso`
--

INSERT INTO `perso` (`id`, `nom`, `HP`, `armor`, `weapon_id`, `avatar`) VALUES
(1, 'Neytiri', 20, 10, 1, 'https://o.aolcdn.com/images/dims3/GLOB/crop/630x315+0+0/resize/630x315!/format/jpg/quality/85/http%3A%2F%2Fo.aolcdn.com%2Fhss%2Fstorage%2Fmidas%2Fefe897c49141c93a0c5cd105ebc390fd%2F205192450%2Favatar.jpg'),
(2, 'Jack Sully', 10, 20, 2, 'http://digitalspyuk.cdnds.net/16/03/768x432/gallery-1453464632-movies-avatar-still-01.jpg'),
(3, 'Jo Sully', 15, 25, 2, 'http://digitalspyuk.cdnds.net/16/03/768x432/gallery-1453464632-movies-avatar-still-01.jpg'),
(4, 'Eytukan', 20, 20, 3, 'http://www.syfy.com/sites/syfy/files/2017/08/avatar_01.jpg'),
(5, 'Abytukan', 15, 18, 3, 'http://www.syfy.com/sites/syfy/files/2017/08/avatar_01.jpg'),
(6, 'Adam', 20, 10, 2, 'http://www.illustre.ch/sites/default/files/articles/vignettes/vignette-avatar2.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `weapon`
--

CREATE TABLE `weapon` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `damage_min` int(11) NOT NULL,
  `damage_max` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `weapon`
--

INSERT INTO `weapon` (`id`, `name`, `damage_min`, `damage_max`, `image`) VALUES
(1, 'épée', 10, 20, 'https://images-na.ssl-images-amazon.com/images/I/51WTYbZopGL._SL1024_.jpg'),
(2, 'arc', 15, 25, 'https://static1.funidelia.com/35160-f4_list/set-arc-et-fleches-epiques.jpg'),
(3, 'fusil', 20, 30, 'https://vignette.wikia.nocookie.net/james-camerons-avatar/images/f/f8/Fusil_standard.png/revision/latest?cb=20120830215226&path-prefix=fr'),
(4, 'pistolet', 18, 28, 'https://vignette.wikia.nocookie.net/james-camerons-avatar/images/2/26/SN-9_Wasp.png/revision/latest?cb=20120830213842&path-prefix=fr'),
(5, 'arbalète', 15, 25, 'http://www.stock-armurerie.com/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/a/j/aj121-4.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `perso`
--
ALTER TABLE `perso`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `weapon`
--
ALTER TABLE `weapon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `perso`
--
ALTER TABLE `perso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `weapon`
--
ALTER TABLE `weapon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
