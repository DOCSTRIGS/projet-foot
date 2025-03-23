-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 13 juin 2024 à 16:19
-- Version du serveur : 10.5.20-MariaDB
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `id22314719_dbdatabase`
--

-- --------------------------------------------------------

--
-- Structure de la table `championnat`
--

CREATE TABLE `championnat` (
  `code_championnat` varchar(10) NOT NULL,
  `nom_du_championnat` varchar(50) NOT NULL,
  `organisateur` varchar(50) NOT NULL,
  `pays` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `championnat`
--

INSERT INTO `championnat` (`code_championnat`, `nom_du_championnat`, `organisateur`, `pays`) VALUES
('Bundesliga', 'Bundesliga', ' Deutsche Fußball Liga (DFL)', 'Allemagne'),
('CAN', 'Coupe d\'Afrique des Nations', 'Confédération africaine de football (CAF)', 'Choisi celons l\'année  en 2024'),
('CDM', 'Coupe du Monde de la FIFA', 'Fédération Internationale de Football Association ', 'Choisis celons l\'année '),
('ENG', 'Premier League', 'Premier League PLC', 'Angleterre'),
('Ligue 1 ', 'Ligue 1', 'Ligue de Football Professionnel (LFP)', 'France'),
('MLS', 'Major League Soccer (MLS) Organisateur :', 'Major League Soccer (MLS)', 'Amerique'),
('PLC', 'Premier League', 'Premier League PLC', 'Angleterre '),
('Serie A', ' Serie A', 'Lega Serie A', 'Italie'),
('SPL', 'Saoudi  Pro Ligue', ' Saudi Arabian Football Federation (SAFF', 'Arabie Saoudite');

-- --------------------------------------------------------

--
-- Structure de la table `internautes`
--

CREATE TABLE `internautes` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `sexe` varchar(1) NOT NULL,
  `pays` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `internautes`
--

INSERT INTO `internautes` (`id`, `fname`, `username`, `mail`, `password`, `adresse`, `sexe`, `pays`, `date`) VALUES
(1, 'FN1', 'un1', 'M1@M1', '$2y$10$p.SoYgjWcO9v7Z1DWW4GReN2BC.WdE78VWkYzRjFp5rEBbHeItd92', 'a1', 'M', 'PO', '1990-01-25');

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `surnom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `numero` int(11) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `style_jeu` varchar(100) NOT NULL,
  `saison` varchar(20) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `titres_obtenus` varchar(255) NOT NULL,
  `valeur` int(20) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `code_championnat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`id`, `nom`, `prenom`, `surnom`, `date_naissance`, `numero`, `poste`, `style_jeu`, `saison`, `pays`, `titres_obtenus`, `valeur`, `photo`, `code_championnat`) VALUES
(8, 'R. dos Santos Aveiro', 'Cristiano', 'CR7', '1985-02-05', 7, 'Attaquant', 'Polyvalent, puissant, excellent en dribble', '2023-2024', 'Portugal', 'Ballon d\'Or (x5)\r\nChampions League (x5)\r\nChampionnat national (divers)\r\netc.', 200000000, 'https://media.gettyimages.com/id/2126131380/fr/photo/abha-saudi-arabia-cristiano-ronaldo-of-al-nassr-celebrates-after-scoring-the-4th-goal-during.jpg?s=612x612&w=0&k=20&c=MQx0OQ2QHBSNBJRDRu4KFbTZZTJqDtpepLC6Btb1KbE=', 'SPL'),
(9, 'Andrés Messi', 'Lionel', 'La Pulga', '1987-06-24', 10, 'Attaquant', 'Agile, dribbleur, vision de jeu incroyable', '2023-2024', 'Argentine', 'Ballon d\'Or (x7)\r\nChampions League (x4)\r\nChampionnat national (divers)\r\netc.', 60000000, 'https://media.gettyimages.com/id/1666865698/fr/photo/buenos-aires-argentina-lionel-messi-of-argentina-celebrates-after-scoring-the-teams-first.jpg?s=612x612&w=0&k=20&c=BBfjowv2PKM1_IxEYe2qTjM4iEX-q99pz6GRHqMTJvE=', 'MLS'),
(12, 'da Silva Santos Júnior', 'Neymar', 'Ney, Neymar Jr.', '1992-02-05', 10, 'Attaquant', 'Technique, dribbleur, créatif', '2023-2024', 'Brésil', 'Champions League (x1)\r\nCopa America (x2)\r\nChampionnat national (divers)\r\netc.', 120000000, 'https://media.gettyimages.com/id/1466409940/fr/photo/paris-france-neymar-of-paris-saint-germain-looks-on-during-the-uefa-champions-league-round-of.jpg?s=612x612&w=0&k=20&c=mtTHZmclEc1w2R1mFmGu4S3jvibXmfa5_DXw6Ebxnv8=', 'SPL'),
(13, ' J. P. de Oliveira Júnior', 'Vinícius', 'Vini', '2000-07-12', 7, 'Ailier', 'Rapide, technique, dribbleur', '2023-2024', 'Brésil', 'Championnat national (divers)', 80000000, 'https://media.gettyimages.com/id/1625720177/fr/photo/almeria-spain-vinicius-junior-of-real-madrid-celebrates-after-scoring-the-teams-third-goal.jpg?s=612x612&w=0&k=20&c=65mZf3W1XcmfZRFE26ozZ_u7BZ3IQf1mtYNUuzlEHmI=', 'ENN'),
(14, 'De Bruyne', 'Kevin', 'KDB', '1991-06-29', 17, 'Milieu de terrain', 'Créatif, excellent passeur, polyvalent', '2023-2024', 'Belgique', 'Championnat national (divers)\r\nCoupe nationale (divers)', 100000000, 'https://media.gettyimages.com/id/2143299641/fr/photo/london-england-kevin-de-bruyne-of-manchester-city-celebrates-scoring-his-teams-fourth-goal.jpg?s=612x612&w=0&k=20&c=AnXkCOFiM7gBJM-UjWYmuJMypR2tkTTovPYeKLDOePM=', 'ENG'),
(15, 'Mbappé Lottin', 'Kylian', 'Mbappé', '1998-12-20', 7, 'Attaquant', 'Rapide, dribbleur, finisseur', '2023-2024', 'France', 'Coupe du Monde (x1)\r\nChampionnat national (divers)\r\netc.', 100000000, 'https://media.gettyimages.com/id/1495838361/fr/photo/paris-france-kylian-mbappe-of-paris-saint-germain-in-action-during-the-ligue-1-match-between.jpg?s=612x612&w=0&k=20&c=PVApo3upYS-lHs2UdEiENHNQREF2wVfqyDwjRxVwRx8=', 'ENG');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `internautes`
--
ALTER TABLE `internautes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `internautes`
--
ALTER TABLE `internautes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
