-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 23 déc. 2021 à 10:48
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `beethoven'sworks`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Symphonies'),
(2, 'Concertos'),
(3, 'Piano Sonatas'),
(4, 'Violin Sonatas'),
(5, 'Piano Trios'),
(6, 'Strings Trios'),
(7, 'Strings Quartets'),
(8, 'Others');

-- --------------------------------------------------------

--
-- Structure de la table `works`
--

DROP TABLE IF EXISTS `works`;
CREATE TABLE IF NOT EXISTS `works` (
  `id` int NOT NULL AUTO_INCREMENT,
  `opus` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `tone` varchar(100) NOT NULL,
  `instruments` varchar(100) NOT NULL,
  `years` varchar(100) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_WORKS_CATEGORIES` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `works`
--

INSERT INTO `works` (`id`, `opus`, `title`, `tone`, `instruments`, `years`, `category_id`) VALUES
(1, '1 - n°1', 'Piano Trio n°1', 'E♭ major', 'piano, violin, cello', '1794-1795', 5),
(2, '1 - n°2', 'Piano Trio n°2', 'G major', 'piano, violin, cello', '1794-1795', 5),
(3, '1 - n°3', 'Piano Trio n°3', 'C minor', 'piano, violin, cello', '1794-1795', 5),
(5, '2 - n°1', 'Piano Sonata n°1', 'F minor', 'piano', '1793-1795', 3),
(6, '2 - n°2', 'Piano Sonata n°2', 'A major', 'piano', '1794-1795', 3),
(7, '2 - n°3', 'Piano Sonata n°3', 'C major', 'piano', '1794-1795', 3),
(8, '3', 'Strings Trio n°1', 'E♭ major', 'violin, viola, cello', '1794', 6),
(9, '4', 'Strings Quintet n°1', 'E♭ major', '2 violins, 2 violas, alto', '1795-1796', 8),
(10, '5 - n°1', 'Cello Sonata n°1', 'F major', 'piano, cello', '1796', 8),
(11, '5 - n°2', 'Cello Sonata n°2', 'G minor', 'piano, cello', '1796', 8),
(12, '6', 'Piano Sonata, 4 hands', 'D major', '4 hands piano', '1796-1797', 3),
(13, '7', 'Piano Sonata n°4', 'E♭ major', 'piano', '1796-1797', 3),
(14, '8', 'Strings Serenade', 'D majorité ', 'violin, viola, cello', '1796-1797', 8),
(15, '9 - n°1', 'Strings Trio n°3', 'G major', 'violin, viola, cello', '1797-1798', 6),
(16, '9 - n°2', 'Strings Trio n°4', 'D major', 'violin, viola, cello', '1797-1798', 6),
(17, '9 - n°3', 'Strings Trio n°5', 'C minor', 'violin, viola, cello', '1797-1798', 6),
(18, '10 - n°1', 'Piano Sonata n°5', 'C minor', 'piano', '1795-1797', 3),
(19, '10 - n°2', 'Piano Sonata n°6', 'F major', 'piano', '1796-1797', 3),
(20, '10 - n°3', 'Piano Sonata n°7', 'D major', 'piano', '1797-1798', 3),
(21, '11', 'Piano Trio n°4', 'B♭ major', 'piano, violin / clarinet, cello', '1797', 5),
(22, '12 - n°1', 'Violin Sonata n°1', 'D major', 'piano, violin', '1797-1798', 4),
(23, '12 - n°2', 'Violin Sonata n°2', 'A major', 'piano, violin', '1797-1798', 4),
(24, '12 - n°3', 'Violin Sonata n°3', 'E♭', 'piano, violin', '1797-1798', 4),
(25, '13', 'Piano Sonata n°8', 'C minor', 'piano', '1798-1799', 3),
(26, '14 - n°1', 'Piano Sonata n°9', 'E major', 'piano', '1798', 3),
(27, '14 - n°2', 'Piano Sonata n°10', 'G major', 'piano', '1799', 3),
(28, '15', 'Piano Concerto n°1', 'C major', 'piano, orchestra', '1795', 2),
(29, '16', 'Piano and Winds Quintet', 'E♭ major', 'piano, oboe, clarinet, horn, bassoon', '1796', 8),
(30, '17', 'Piano and Horn Sonata', 'F major', 'piano, horn', '1800', 8),
(31, '18 - n°1', 'Strings Quartet n°1', 'F major', '2 violins, viola, cello', '1798-1800', 7),
(32, '18 - n°2', 'Strings Quartet n°2', 'G major', '2 violins, viola, cello', '1798-1800', 7),
(33, '18 - n°3', 'Strings Quartet n°3', 'D major', '2 violins, viola, cello', '1798-1800', 7),
(34, '18 - n°4', 'Strings Quartet n°4', 'C minor', '2 violins, viola, cello', '1798-1800', 7),
(35, '18 - n°5', 'Strings Quartet n°5', 'A major', '2 violins, viola, cello', '1798-1800', 7),
(36, '18 - n°6', 'Strings Quartet n°6', 'B♭ major', '2 violins, viola, cello', '1798-1800', 7),
(37, '19', 'Piano Concerto n°2', 'B♭ major', 'piano, orchestra', '1795', 2),
(38, '20', 'Strings and Winds Septet', 'E♭ major', 'violin, viola, cello, double bass, horn, clarinet, bassoon', '1799-1800', 8),
(39, '21', 'Symphony n°1', 'C major', 'orchestra', '1800', 1),
(40, '22', 'Piano Sonata n°11', 'B♭ major', 'piano', '1800', 3),
(41, '23', 'Violin Sonata n°4', 'A minor', 'piano, violin', '1800-1801', 4),
(42, '24', 'Violin Sonata n°5', 'F major', 'piano, violin', '1800-1801', 4),
(43, '25', 'Serenade for Flute, Violin and Viola', 'D major', 'flute, violin, viola', '1795-1796', 8),
(44, '26', 'Piano Sonata n°12', 'A♭ major', 'piano', '1800-1801', 3),
(45, '27 - n°1', 'Piano Sonata n°13', 'E♭ major', 'piano', '1800-1801', 3),
(46, '27 - n°2', 'Piano Sonata n°14', 'C# minor', 'piano', '1801', 3),
(47, '28', 'Piano Sonata n°15', 'D major', 'piano', '1799', 3),
(48, '29', 'Strings Quintet n°2', 'C major', '2 violins, 2 viola, cello', '1801', 8),
(49, '30 - n°1', 'Violin Sonata n°6', 'A major', 'piano, violin', '1801-1802', 4),
(50, '30 - n°2', 'Violin Sonata n°7', 'C minor', 'piano, violin', '1801-1802', 4),
(51, '30 - n°3', 'Violin Sonata n°8', 'G major', 'piano, violin', '1801-1802', 4),
(52, '31 - n°1', 'Piano Sonata n°16', 'G major', 'piano', '1802', 3),
(53, '31 - n°2', 'Piano Sonata n°17', 'D minor', 'piano', '1802', 3),
(54, '31 - n°3', 'Piano Sonata n°18', 'E♭ major', 'piano', '1802', 3),
(55, '32', 'Lied', 'E♭ major', 'piano, voice', '1805', 8),
(56, '33', 'Seven Piano Bagatelles', 'unknown', 'piano', '1800-1802', 8),
(57, '34', 'Six Piano Variations', 'F major', 'piano', '1802', 8),
(58, '35', 'Fifteen Variations and Fugue for Piano', 'E♭ major', 'piano', '1802', 8),
(59, '36', 'Symphony n°2', 'D major', 'orchestra', '1801-1802', 1),
(60, '37', 'Piano Concerto n°3', 'C minor', 'piano, orchestra', '1800-1802', 2),
(61, '38', 'Trio for Piano, Clarinet and Cello', 'E♭ major', 'piano, clarinet, violin, cello', '1803', 8),
(62, '39', 'Two Preludes for Piano or Organ', 'unknown', 'piano or organ', '1789', 8),
(63, '40', 'Violin Romance n°1', 'G major', 'violin, orchestra', '1802', 8),
(64, '41', 'Flute and Piano Serenade', 'D major', 'flute, violin, piano', '1803', 8),
(65, '42', 'Notturno for Viola and Piano', 'D major', 'piano, viola', '1803', 8),
(66, '43', 'The Creatures of Prometheus', 'C major', 'orchestra', '1801', 8),
(67, '44', 'Fourteen Variations for Trio', 'E♭ major', 'piano, violin, cello', '1800', 8),
(68, '45 - n°1', 'March for Piano 4 Hands n°1', 'C major', '4 hands piano', '1802-1803', 8),
(69, '45 - n°2', 'March for Piano 4 Hands n°2', 'E♭ major', '4 hands piano', '1802-1803', 8),
(70, '45 - n°3', 'March for Piano 4 Hands n°3', 'D major', '4 hands piano', '1802-1803', 8),
(71, '46', 'Cantata', 'B♭ major', 'piano, voice', '1795-1796', 8),
(72, '47', 'Violin Sonata n°9', 'A major', 'piano, violin', '1802-1803', 4),
(73, '48', 'Six Lieder', 'unknown', 'piano, voice', '1803', 8),
(74, '49 - n°1', 'Piano Sonata n°19', 'G minor', 'piano', '1798', 3),
(75, '49 - n°°2', 'Piano Sonata n°20', 'G major', 'piano', '1796', 3),
(76, '50', 'Violin Romance n°2', 'F major', 'violin, orchestra', '1802', 8),
(77, '51 - n°1', 'Piano Rondo n°1', 'C major', 'piano', '1797', 8),
(78, '51 - n°2', 'Piano Rondo n°2', 'G major', 'piano', '1800', 8),
(79, '52', 'Eight Lieder', 'unknown', 'piano, voice', '1793', 8),
(80, '53', 'Piano Sonata n°21', 'C major', 'piano', '1803-1804', 3),
(81, '54', 'Piano Sonata n°22', 'F major', 'piano', '1804', 3),
(82, '55', 'Symphony n°3', 'E♭ major', 'orchestra', '1802-1804', 1),
(83, '56', 'Triple Concerto', 'C major', 'piano, violin, cello, orchestra', '1804', 2),
(84, '57', 'Piano Sonata n°23', 'F minor', 'piano', '1804-1805', 3),
(85, '58', 'Piano Concerto n°4', 'G major', 'piano, orchestra', '1806', 2),
(86, '59 - n°1', 'Strings Quartet n°7', 'F major', '2 violins, viola, cello', '1806', 7),
(87, '59 - n°2', 'Strings Quartet n°8', 'E minor', '2 violins, viola, cello', '1806', 7),
(88, '59 - n°3', 'Strings Quartet n°9', 'C major', '2 violins, viola, cello', '1806', 7),
(89, '60', 'Symphony n°4', 'B♭ major', 'orchestra', '1806', 1),
(90, '61 - n°1', 'Violin Concerto', 'D major', 'violin, orchestra', '1806', 2),
(91, '61 - n°2', 'Piano Concerto', 'D major', 'piano, orchestra', '1807', 2),
(92, '62', 'Coriolan', 'C minor', 'orchestra', '1807', 8),
(93, '63', 'Trio Sonata', 'E♭ major', 'piano, violin, cello', '1806', 8),
(94, '64', 'Duo Sonata', 'G major', 'piano, cello', '1807', 8),
(95, '65', 'Air', 'C major', 'soprano, orchestra', '1795-1796', 8),
(96, '66', 'Twelve Variations for Piano and Cello', 'F major', 'piano, cello', '1798', 8),
(97, '67', 'Symphony n°5', 'C minor', 'orchestra', '1807-1808', 1),
(98, '67', 'Symphony n°6', 'F major', 'orchestra', '1807-1808', 1),
(99, '69', 'Cello Sonata n°3', 'A major', 'piano, cello', '1807-1808', 8),
(100, '70 - n°1', 'Piano Trio n°5', 'D major', 'piano, violin, cello', '1807-1808', 5),
(101, '70 - n°2', 'Piano Trio n°6', 'E♭ major', 'piano, violin, cello', '1807-1808', 5),
(102, '71', 'Winds Sextet', 'E♭ major', '2 clarinets, 2 horns, 2 bassoons', '1796', 8),
(103, '72 - n°1', 'Leonore II', 'C major', 'orchestra', '1805', 8),
(104, '72 - n°2', 'Leonore III', 'C major', 'orchestra', '1806', 8),
(105, '72 - n°3', 'Fidelio (opera)', 'unknown', 'soloists, choirs, orchestra', '1803-1814', 8),
(106, '72 - n°4', 'Fidelio (opening)', 'E major', 'orchestra', '1814', 8),
(107, '73', 'Piano Concerto n°5', 'E♭ major', 'piano, orchestra', '1809', 2),
(108, '74', 'Strings Quartet n°10', 'E♭ major', '2 violins, viola, cello', '1809', 7),
(109, '75', 'Six Lieder', 'unknown', 'piano, voice', '1809', 8),
(110, '76', 'Six Piano Variations', 'D major', 'piano', '1809', 8),
(111, '77', 'Piano Fantasy', 'G minor', 'piano', '1809', 8),
(112, '78', 'Piano Sonata n°24', 'F# major', 'piano', '1809', 3),
(113, '79', 'Piano Sonata n°25', 'G major', 'piano', '1809', 3),
(114, '80', 'Choral Fantasy', 'C minor', 'piano, choirs, orchestra', '1808', 8),
(115, '81 - n°1', 'Piano Sonata n°26', 'E♭ major', 'piano', '1809-1810', 3),
(116, '81 - n°2', 'Strings and Winds Sextet', 'E♭ major', '2 violins, viola, cello, 2 horns', '1794', 8),
(117, '82', 'Four airs and a duo', 'unknown', 'piano, voice', '1795-1796', 8),
(118, '83', 'Three Lieder', 'unknown', 'piano, voice', '1810', 8),
(119, '84', 'Egmont', 'F minor', 'soprano, orchestra', '1809-1810', 8),
(120, '85', 'Christus am Ölberge', 'unknown', 'soloists, choirs, orchestra', '1801-1803', 8),
(121, '86', 'Mass in C major', 'C major', 'choirs, orchestra', '1807', 8),
(122, '87', 'Winds Trio', 'C major', '2 oboes, English horn', '1793-1794', 8),
(123, '88', 'Lied', 'A major', 'piano, voice', '1803', 8),
(124, '89', 'Polonaise for Piano', 'C major', 'piano', '1814', 8),
(125, '90', 'Piano Sonata n°27', 'E minor', 'piano', '1814', 3),
(126, '91', 'Wellingtons Sieg', 'E♭ major', 'orchestra', '1813', 8),
(127, '92', 'Symphony n°7', 'A major', 'orchestra', '1811-1812', 1),
(128, '93', 'Symphony n°8', 'F major', 'orchestra', '1812', 1),
(129, '94', 'Lied', 'G major', 'piano, voice', '1812', 8),
(130, '95', 'Strings Quartet n°11', 'F minor', '2 violins, viola, cello', '1810', 7),
(131, '96', 'Violin Sonata n°10', 'G major', 'piano, violin', '1812', 4),
(132, '97', 'Piano Trio n°7', 'B♭ major', 'piano, violin, cello', '1811', 5),
(133, '98', 'Six Lieder', 'C major', 'piano, baritone', '1815-1816', 8),
(134, '99', 'Lied', 'G major', 'piano, voice', '1816', 8),
(135, '100', 'Lied', 'F major', 'piano, voice', '1814-1815', 8),
(136, '101', 'Piano Sonata n°28', 'A major', 'piano', '1816', 3),
(137, '102 - n°1', 'Cello Sonata n°4', 'C major', 'piano, cello', '1815', 8),
(138, '102 - n°2', 'Cello Sonata n°5', 'D major', 'piano, cello', '1815', 8),
(139, '103', 'Wind Octet', 'E♭ major', '2 oboes, 2 clarinets, 2 horns, 2 bassoons', '1792', 8),
(140, '104', 'Strings Quintet n°3', 'C minor', '2 violins, 2 violas, cello', '1817', 8),
(141, '105', 'Six Varied Themes for Flute and Piano', 'unknown', 'flute, violin, piano', '1817-1818', 8),
(142, '106', 'Piano Sonata n°29', 'B♭ major', 'piano', '1817-1819', 3),
(143, '107', 'Ten Varied Themes for Flute and Piano', 'unknown', 'flute, violin, piano', '1817-1818', 8),
(144, '108', 'Twenty-five Scottish Melodies', 'unknown', 'voice, choirs, piano, violin, cello', '1815-1816', 8),
(145, '109', 'Piano Sonata n°30', 'E major', 'piano', '1820', 3),
(146, '110', 'Piano Sonata n°31', 'A♭ major', 'piano', '1821', 3),
(147, '111', 'Piano Sonata n°32', 'C minor', 'piano', '1820-1822', 3),
(148, '112', 'Two Lieder', 'D major', 'piano, voice', '1815', 8),
(149, '113', 'Die Ruinen von Athen', 'G minor', 'orchestra', '1811', 8),
(150, '114', 'Die Weihe des Hauses ', 'G major', 'choirs, orchestra', '1822', 8),
(151, '115', 'Zur Namensfeier', 'C major', 'orchestra', '1814-1815', 8),
(152, '116', 'Vocal Trio', 'B♭ major', 'soprano, tenor, bass (singer)', '1802', 8),
(153, '117', 'König Stephan', 'E♭ major', 'orchestra', '1811', 8),
(154, '118', 'Elegiac Song', 'E major', '4 soloists, 2 violins, viola, cello', '1814', 8),
(155, '119', 'Eleven Piano Bagatelles', 'unknown', 'piano', '1822', 8),
(156, '120', 'Thirty-three Piano Variations', 'C major', 'piano', '1823', 8),
(157, '121 - n°1', 'Piano Trio Variations', 'G major', 'piano, violin, cello', '1815-1816', 8),
(158, '121 - n°2', 'Opferlied', 'E major', 'soprano, choirs, orchestra', '1823-1824', 8),
(159, '122', 'Bundeslied', 'B♭ major', 'soprano, viola, 3 voices choir, 2 clarinets, 2 horns, 2 bassoons', '1823-1824', 8),
(160, '123', 'Missa Solemnis', 'D major', '4 soloists, choirs, orchestra', '1818-1822', 8),
(161, '124', 'Die Weihe des Hauses', 'C major', 'orchestra', '1822', 8),
(162, '125', 'Symphony n°9', 'D minor', '4 soloists, choirs, orchestra', '1822-1824', 1),
(163, '126', 'Six Piano Bagatelles', 'unknown', 'piano', '1823-1824', 8),
(164, '127', 'Strings Quartet n°12', 'E♭ major', '2 violins, viola, cello', '1823-1824', 7),
(165, '128', 'Arietta', 'unknown', 'voice, piano', '1822', 8),
(166, '129', 'Piano Rondo', 'G major', 'piano', '1795', 8),
(167, '130', 'Strings Quartet n°13', 'B♭ major', '2 violins, viola, cello', '1824-1825', 7),
(168, '131', 'Strings Quartet n°14', 'C# minor', '2 violins, viola, cello', '1826', 7),
(169, '132', 'Strings Quartet n°15', 'A minor', '2 violins, viola, cello', '1823-1825', 7),
(170, '133', 'Great Fugue', 'B♭ major', '2 violins, viola, cello', '1823-1825', 8),
(171, '134', 'Great Fugue', 'B♭ major', '4 hands piano', '1826', 8),
(172, '135', 'Strings Quartet n°16', 'F major', '2 violins, viola, cello', '1826', 7),
(173, '136', 'Cantate', 'D major', '4 soloists, choirs, orchestra', '1814', 8),
(174, '137', 'Fugue for Strings Quintet', 'D major', '2 violins, viola, cello', '1817', 8),
(175, '138', 'Leonore I', 'C major', 'orchestra', '1805', 8);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `FK_WORKS_CATEGORIES` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
