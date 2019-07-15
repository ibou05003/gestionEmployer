-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 15 juil. 2019 à 15:44
-- Version du serveur :  5.7.26-0ubuntu0.16.04.1
-- Version de PHP :  7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gesemploye`
--

-- --------------------------------------------------------

--
-- Structure de la table `employer`
--

CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `matricule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `born_at` datetime NOT NULL,
  `salaire` bigint(20) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `employer`
--

INSERT INTO `employer` (`id`, `matricule`, `nom`, `prenom`, `born_at`, `salaire`, `service_id`) VALUES
(7, 'ELSA-1', 'sall', 'elemine', '2019-07-15 15:28:29', 1200000, 7),
(9, 'OMSE-3', 'seck', 'omar', '2019-07-15 15:28:29', 1200000, 7),
(11, 'CIDR-5', 'dramé', 'cire', '2019-07-15 15:28:29', 600000, 7),
(13, 'SASE-7', 'seck', 'sadikh', '2019-07-15 15:28:29', 1200000, 7),
(14, 'MABA-8', 'ba', 'mareme', '2019-07-15 15:28:29', 450000, 7),
(15, 'LADR-9', 'dramé', 'lamarana', '2019-07-15 15:28:29', 1000000, 7),
(16, 'AWSA-10', 'sall', 'awa', '2019-07-15 15:28:29', 500000, 7),
(18, 'JUND-12', 'ndiaye', 'junior', '2019-07-15 15:28:29', 200000, 7),
(19, 'ELGU-13', 'gueye', 'elemine', '2019-07-15 15:28:29', 1200000, 7),
(20, 'MAFA-14', 'fall', 'mareme', '2019-07-15 15:28:29', 450000, 7),
(21, 'MOGU-15', 'gueye', 'moussa', '2019-07-15 15:28:29', 1200000, 7),
(22, 'CISE-16', 'seck', 'cire', '2019-07-15 15:28:29', 500000, 7),
(23, 'MONI-17', 'niang', 'moussa', '2019-07-15 15:28:29', 75000, 7),
(24, 'MAND-18', 'ndiaye', 'mareme', '2019-07-15 15:28:29', 500000, 7),
(25, 'MOSA-19', 'sarr', 'moussa', '2019-07-15 15:28:29', 200000, 7),
(26, 'SIND-1', 'ndiaye', 'siny', '2019-07-15 15:28:30', 500000, 8),
(27, 'AWNI-2', 'niang', 'awa', '2019-07-15 15:28:30', 75000, 8),
(28, 'SANI-3', 'niang', 'sadikh', '2019-07-15 15:28:30', 200000, 8),
(29, 'ELNI-4', 'niang', 'elemine', '2019-07-15 15:28:30', 200000, 8),
(30, 'IBSA-5', 'sall', 'ibou', '2019-07-15 15:28:30', 75000, 8),
(31, 'CILO-6', 'lo', 'cire', '2019-07-15 15:28:30', 600000, 8),
(32, 'CIND-7', 'ndao', 'cire', '2019-07-15 15:28:30', 150000, 8),
(33, 'IBDI-8', 'dieng', 'ibou', '2019-07-15 15:28:30', 75000, 8),
(34, 'AWBA-9', 'ba', 'awa', '2019-07-15 15:28:30', 1000000, 8),
(35, 'SODI-10', 'dieng', 'soumaiya', '2019-07-15 15:28:30', 1000000, 8),
(36, 'OMNG-11', 'ngom', 'omar', '2019-07-15 15:28:30', 500000, 8),
(37, 'CING-12', 'ngom', 'cire', '2019-07-15 15:28:30', 1000000, 8),
(38, 'SOSE-13', 'seck', 'soumaiya', '2019-07-15 15:28:30', 200000, 8),
(39, 'AWSA-14', 'sarr', 'awa', '2019-07-15 15:28:30', 75000, 8),
(40, 'CISA-15', 'sall', 'cire', '2019-07-15 15:28:30', 450000, 8),
(41, 'SONG-16', 'ngom', 'soumaiya', '2019-07-15 15:28:30', 1000000, 8),
(42, 'TASE-17', 'seck', 'tamara', '2019-07-15 15:28:30', 450000, 8),
(43, 'ABDI-18', 'dieng', 'ablaye', '2019-07-15 15:28:30', 500000, 8),
(44, 'ABDR-19', 'dramé', 'ablaye', '2019-07-15 15:28:30', 200000, 8),
(45, 'AWDR-1', 'dramé', 'awa', '2019-07-15 15:28:30', 1200000, 9),
(46, 'OMSE-2', 'seck', 'omar', '2019-07-15 15:28:30', 75000, 9),
(47, 'MOGU-3', 'gueye', 'moussa', '2019-07-15 15:28:30', 200000, 9),
(48, 'TANG-4', 'ngom', 'tamara', '2019-07-15 15:28:30', 450000, 9),
(49, 'SOLO-5', 'lo', 'soumaiya', '2019-07-15 15:28:30', 500000, 9),
(50, 'TASA-6', 'sall', 'tamara', '2019-07-15 15:28:30', 150000, 9),
(51, 'CILO-7', 'lo', 'cire', '2019-07-15 15:28:30', 200000, 9),
(53, 'TANG-9', 'ngom', 'tamara', '2019-07-15 15:28:30', 600000, 9),
(54, 'IBDI-10', 'dieng', 'ibou', '2019-07-15 15:28:30', 200000, 9),
(55, 'LAND-11', 'ndiaye', 'lamarana', '2019-07-15 15:28:30', 600000, 9),
(56, 'RAFA-12', 'fall', 'rama', '2019-07-15 15:28:30', 1200000, 9),
(57, 'SODI-13', 'dieng', 'soumaiya', '2019-07-15 15:28:30', 600000, 9),
(58, 'MADR-14', 'dramé', 'mareme', '2019-07-15 15:28:30', 600000, 9),
(59, 'ABNI-15', 'niang', 'ablaye', '2019-07-15 15:28:30', 75000, 9),
(60, 'LALO-16', 'lo', 'lamarana', '2019-07-15 15:28:30', 75000, 9),
(61, 'RAFA-17', 'fall', 'rama', '2019-07-15 15:28:30', 600000, 9),
(62, 'RADR-18', 'dramé', 'rama', '2019-07-15 15:28:30', 500000, 9),
(63, 'SIDR-19', 'dramé', 'siny', '2019-07-15 15:28:30', 600000, 9),
(64, 'LAND-1', 'ndiaye', 'lamarana', '2019-07-15 15:28:30', 200000, 10),
(66, 'RAND-3', 'ndoye', 'rama', '2019-07-15 15:28:30', 150000, 10),
(68, 'SIDI-5', 'dieng', 'siny', '2019-07-15 15:28:30', 1200000, 10),
(69, 'SOGU-6', 'gueye', 'soumaiya', '2019-07-15 15:28:30', 200000, 10),
(70, 'CIDI-7', 'dieng', 'cire', '2019-07-15 15:28:30', 1000000, 10),
(71, 'ELLO-8', 'lo', 'elemine', '2019-07-15 15:28:30', 75000, 10),
(72, 'CIDI-9', 'dieng', 'cire', '2019-07-15 15:28:30', 500000, 10),
(73, 'OMSE-10', 'seck', 'omar', '2019-07-15 15:28:30', 200000, 10),
(74, 'JUGU-11', 'gueye', 'junior', '2019-07-15 15:28:30', 600000, 10),
(75, 'RASE-12', 'seck', 'rama', '2019-07-15 15:28:30', 500000, 10),
(76, 'SOND-13', 'ndoye', 'soumaiya', '2019-07-15 15:28:30', 1200000, 10),
(78, 'MODI-15', 'dieng', 'moussa', '2019-07-15 15:28:30', 500000, 10),
(79, 'AWDI-16', 'diouf', 'awa', '2019-07-15 15:28:30', 1200000, 10),
(80, 'RALO-17', 'lo', 'rama', '2019-07-15 15:28:30', 1200000, 10),
(81, 'SOSA-18', 'sarr', 'soumaiya', '2019-07-15 15:28:30', 500000, 10),
(82, 'OMND-19', 'ndoye', 'omar', '2019-07-15 15:28:30', 200000, 10),
(83, 'ELND-83', 'Ndao', 'El Hadji Ibrahima', '1993-01-10 00:00:00', 750000, 8);

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190711085140', '2019-07-11 08:51:49'),
('20190711085410', '2019-07-11 08:54:21'),
('20190712112858', '2019-07-12 11:29:16'),
('20190714201614', '2019-07-14 20:16:53');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `libelle`) VALUES
(7, 'Comptabilité'),
(8, 'Technique'),
(9, 'Ressources Humaines'),
(10, 'Administration');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DE4CF066ED5CA9E6` (`service_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employer`
--
ALTER TABLE `employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `FK_DE4CF066ED5CA9E6` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
