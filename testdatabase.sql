-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3307
-- Généré le : ven. 06 mai 2022 à 14:59
-- Version du serveur : 5.7.33
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `testdatabase`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220505130417', '2022-05-05 13:04:25', 60);

-- --------------------------------------------------------

--
-- Structure de la table `mot`
--

CREATE TABLE `mot` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `definition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombrelettre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mot`
--

INSERT INTO `mot` (`id`, `nom`, `definition`, `nombrelettre`) VALUES
(241, 'coucou0', 'une desc', 5),
(242, 'coucou1', 'une desc', 5),
(243, 'coucou2', 'une desc', 5),
(244, 'coucou3', 'une desc', 5),
(245, 'coucou4', 'une desc', 5),
(246, 'coucou5', 'une desc', 5),
(247, 'coucou6', 'une desc', 5),
(248, 'coucou7', 'une desc', 5),
(249, 'coucou8', 'une desc', 5),
(250, 'coucou9', 'une desc', 5),
(251, 'coucou10', 'une desc', 5),
(252, 'coucou11', 'une desc', 5),
(253, 'coucou12', 'une desc', 5),
(254, 'coucou13', 'une desc', 5),
(255, 'coucou14', 'une desc', 5),
(256, 'coucou15', 'une desc', 5),
(257, 'coucou16', 'une desc', 5),
(258, 'coucou17', 'une desc', 5),
(259, 'coucou18', 'une desc', 5),
(260, 'coucou19', 'une desc', 5);

-- --------------------------------------------------------

--
-- Structure de la table `newone`
--

CREATE TABLE `newone` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `newone`
--

INSERT INTO `newone` (`id`, `nom`, `date`) VALUES
(2, 'coucou bzez', '2022-05-05 14:13:00'),
(3, 'coucou', '2022-05-05 14:13:18'),
(4, 'coucou', '2022-05-05 14:13:18'),
(5, 'coucou', '2022-05-05 14:13:18'),
(6, 'coucou', '2022-05-05 14:13:18'),
(7, 'coucou', '2022-05-05 14:13:18'),
(8, 'coucou', '2022-05-05 14:13:18'),
(9, 'coucou', '2022-05-05 14:13:18'),
(10, 'coucou', '2022-05-05 14:13:18'),
(11, 'coucou', '2022-05-05 14:13:18'),
(12, 'coucou', '2022-05-05 14:13:18'),
(13, 'coucou', '2022-05-05 14:13:18'),
(14, 'coucou', '2022-05-05 14:13:18'),
(15, 'coucou', '2022-05-05 14:13:18'),
(16, 'coucou', '2022-05-05 14:13:18'),
(17, 'coucou', '2022-05-05 14:13:18'),
(18, 'coucou', '2022-05-05 14:13:18'),
(19, 'coucou', '2022-05-05 14:13:18'),
(21, 'coucoucoucou', '2022-05-06 12:44:00');

-- --------------------------------------------------------

--
-- Structure de la table `ta_mere`
--

CREATE TABLE `ta_mere` (
  `id` int(11) NOT NULL,
  `nom` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `couleur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ta_mere`
--

INSERT INTO `ta_mere` (`id`, `nom`, `description`, `couleur`) VALUES
(21, 'coucou', 'gg', 'gg'),
(22, 'coucou', 'gg', 'gg'),
(23, 'coucou', 'gg', 'gg'),
(24, 'coucou', 'gg', 'gg'),
(25, 'coucou', 'gg', 'gg'),
(26, 'coucou', 'gg', 'gg'),
(27, 'coucou', 'gg', 'gg'),
(28, 'coucou', 'gg', 'gg'),
(29, 'coucou', 'gg', 'gg'),
(30, 'coucou', 'gg', 'gg'),
(31, 'coucou', 'gg', 'gg'),
(32, 'coucou', 'gg', 'gg'),
(33, 'coucou', 'gg', 'gg'),
(34, 'coucou', 'gg', 'gg'),
(35, 'coucou', 'gg', 'gg'),
(36, 'coucou', 'gg', 'gg'),
(37, 'coucou', 'gg', 'gg'),
(38, 'coucou', 'gg', 'gg'),
(39, 'coucou', 'gg', 'gg'),
(40, 'coucou', 'gg', 'gg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `mot`
--
ALTER TABLE `mot`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newone`
--
ALTER TABLE `newone`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ta_mere`
--
ALTER TABLE `ta_mere`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `mot`
--
ALTER TABLE `mot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT pour la table `newone`
--
ALTER TABLE `newone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `ta_mere`
--
ALTER TABLE `ta_mere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
