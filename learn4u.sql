-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2022 at 05:19 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learn4u`
--

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `avis`
--

INSERT INTO `avis` (`id`, `rating`, `title`, `category`, `content`, `user_id`) VALUES
(1, 1, '43', 'java', 'ayefigfqfqj', 1),
(2, 1, '43', 'java', 'ayefigfqfqj', 2),
(3, 3, '43', 'java', 'ayefigfqfqj', 2);

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `allday` tinyint(1) NOT NULL,
  `background_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `boarder_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texte_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `titre`, `start`, `end`, `description`, `allday`, `background_color`, `boarder_color`, `texte_color`, `user_id`) VALUES
(1, 'IT', '2022-03-09 00:00:00', '2022-03-09 00:00:00', 'DSQD', 0, '#9e1f1f', '#000000', '#000000', NULL),
(2, 'flutter', '2022-03-11 00:00:00', '2022-03-11 18:00:00', 'jvhggghj', 0, '#f02424', '#000000', '#52e811', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `content`) VALUES
(1, 'java', 'javacontent');

-- --------------------------------------------------------

--
-- Table structure for table `coursss`
--

CREATE TABLE `coursss` (
  `id` int(11) NOT NULL,
  `formations_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateajoutt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events_reservation`
--

CREATE TABLE `events_reservation` (
  `id` int(11) NOT NULL,
  `reservations` int(11) NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events_reservation`
--

INSERT INTO `events_reservation` (`id`, `reservations`, `tel`, `user_id`) VALUES
(2, 9, '+21653015963', NULL),
(3, 1, '+53015963', 1),
(4, 1, '+21653015963', 1),
(5, 3, '+21653015963', 1),
(6, 2, '+21653015963', 2),
(7, 1, '56', 2),
(8, 1, '565', 2),
(9, 1, '5655', 2),
(10, 1, '+21653015963', 2),
(11, 3, '+21653015963', 2),
(12, 2, '+21653015963', 2),
(13, 3, '+21653015963', 2),
(14, 3, '+21653015963', 2),
(15, 3, '+21653015963', 2),
(16, 3, '+21653015963', 2),
(17, 2, '+21653015963', 2),
(18, 1, '+21653015963', 1),
(19, 3, '+21653015963', 1),
(20, 3, '+21653015963', 1),
(21, 4, '+21653015963', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events_reservation_calendar`
--

CREATE TABLE `events_reservation_calendar` (
  `events_reservation_id` int(11) NOT NULL,
  `calendar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events_reservation_calendar`
--

INSERT INTO `events_reservation_calendar` (`events_reservation_id`, `calendar_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(10, 2),
(11, 1),
(12, 1),
(13, 1),
(14, 2),
(15, 2),
(16, 1),
(17, 1),
(18, 2),
(19, 2),
(20, 2),
(21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `formmattion`
--

CREATE TABLE `formmattion` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `datede` date NOT NULL,
  `datefi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formmattion`
--

INSERT INTO `formmattion` (`id`, `user_id`, `nom`, `description`, `image`, `prix`, `datede`, `datefi`) VALUES
(1, 1, 'ccccc', 'lagnugae', '0e750f5585afd4d5840555f69f3b9dc5.png', 1000, '2017-01-01', '2027-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `notification_reclamation`
--

CREATE TABLE `notification_reclamation` (
  `id` int(11) NOT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reclamation_user`
--

CREATE TABLE `reclamation_user` (
  `reclamation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `naissance` date NOT NULL,
  `is_banned` tinyint(1) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`, `username`, `fullname`, `naissance`, `is_banned`, `photo`) VALUES
(1, 'ayedboukadida@gmail.com', 'a:0:{}', '$argon2id$v=19$m=65536,t=4,p=1$R1V3S3IvaUZDbGl4UVhqQQ$N9I5ns+dALXwWKW6iN+nfbJox62K0Ug9NkMirWba+/U', 0, 'ayedboukadid', 'ayed boukadida', '1969-01-01', 0, NULL),
(2, 'iheb.soltana@hotmail.fr', 'a:1:{i:0;s:14:\"ROLE_FORMATEUR\";}', '$argon2id$v=19$m=65536,t=4,p=1$cm5JZkg3VUJnb1pscHVkRw$xyHh1DC16PKxaMHdHtHH/LfqG4UhPrkq33TkhrTU3A8', 0, 'iheb88', 'iheb soltana', '1999-01-01', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8F91ABF0A76ED395` (`user_id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EA9A146A76ED395` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursss`
--
ALTER TABLE `coursss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B53DEF9B3BF5B0C2` (`formations_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events_reservation`
--
ALTER TABLE `events_reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D8A20356A76ED395` (`user_id`);

--
-- Indexes for table `events_reservation_calendar`
--
ALTER TABLE `events_reservation_calendar`
  ADD PRIMARY KEY (`events_reservation_id`,`calendar_id`),
  ADD KEY `IDX_E1F7873C1D8506ED` (`events_reservation_id`),
  ADD KEY `IDX_E1F7873CA40A2C8` (`calendar_id`);

--
-- Indexes for table `formmattion`
--
ALTER TABLE `formmattion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A81EA7D5A76ED395` (`user_id`);

--
-- Indexes for table `notification_reclamation`
--
ALTER TABLE `notification_reclamation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CE606404EF1A9D84` (`notification_id`),
  ADD KEY `IDX_CE606404A76ED395` (`user_id`);

--
-- Indexes for table `reclamation_user`
--
ALTER TABLE `reclamation_user`
  ADD PRIMARY KEY (`reclamation_id`,`user_id`),
  ADD KEY `IDX_8CDC51262D6BA2D9` (`reclamation_id`),
  ADD KEY `IDX_8CDC5126A76ED395` (`user_id`);

--
-- Indexes for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coursss`
--
ALTER TABLE `coursss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events_reservation`
--
ALTER TABLE `events_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `formmattion`
--
ALTER TABLE `formmattion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_reclamation`
--
ALTER TABLE `notification_reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `FK_8F91ABF0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `calendar`
--
ALTER TABLE `calendar`
  ADD CONSTRAINT `FK_6EA9A146A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `coursss`
--
ALTER TABLE `coursss`
  ADD CONSTRAINT `FK_B53DEF9B3BF5B0C2` FOREIGN KEY (`formations_id`) REFERENCES `formmattion` (`id`);

--
-- Constraints for table `events_reservation`
--
ALTER TABLE `events_reservation`
  ADD CONSTRAINT `FK_D8A20356A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `events_reservation_calendar`
--
ALTER TABLE `events_reservation_calendar`
  ADD CONSTRAINT `FK_E1F7873C1D8506ED` FOREIGN KEY (`events_reservation_id`) REFERENCES `events_reservation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E1F7873CA40A2C8` FOREIGN KEY (`calendar_id`) REFERENCES `calendar` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `formmattion`
--
ALTER TABLE `formmattion`
  ADD CONSTRAINT `FK_A81EA7D5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `FK_CE606404A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_CE606404EF1A9D84` FOREIGN KEY (`notification_id`) REFERENCES `notification_reclamation` (`id`);

--
-- Constraints for table `reclamation_user`
--
ALTER TABLE `reclamation_user`
  ADD CONSTRAINT `FK_8CDC51262D6BA2D9` FOREIGN KEY (`reclamation_id`) REFERENCES `reclamation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8CDC5126A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
