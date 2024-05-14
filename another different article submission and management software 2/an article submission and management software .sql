-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:8889
-- Üretim Zamanı: 12 May 2024, 20:21:46
-- Sunucu sürümü: 5.7.39
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `project2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Article`
--

CREATE TABLE `Article` (
  `id` int(11) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `bodyText` varchar(60) DEFAULT NULL,
  `volİd` int(11) DEFAULT NULL,
  `volName` varchar(30) DEFAULT NULL,
  `correspAut` varchar(30) DEFAULT NULL,
  `submissionDate` date DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `Article`
--

INSERT INTO `Article` (`id`, `title`, `bodyText`, `volİd`, `volName`, `correspAut`, `submissionDate`, `result`) VALUES
(1, 'What is Organic Chemistry', 'Organic...', 12, 'Journal of Chemistry', 'davis@gmail.com', '2024-05-10', 'Under Review'),
(2, 'What is Microeconomics?', 'Microeconomics mean...', 31, 'Journal of Economics', 'emma@gmail.com', '2024-07-10', 'Under Review'),
(3, 'How we know?', 'Did you ever wonder...', 23, 'Journal of Psychology', 'ted@gmail.com', '2024-06-10', 'Accepted'),
(4, 'Chemical Kinetics', 'How can we mix...', 11, 'Journal of Chemistry', 'carol@gmail.com', '2024-05-10', 'Accepted'),
(5, 'Impact of Inflation', 'Lorem ipsum...', 31, 'Journal of Economics', 'danny@gmail.com', '2024-07-10', 'Under Review'),
(8, 'Shakespearean Sonnets', 'Shakespearean...', 41, 'Journal of Literature', 'nick@gmail.com', '2024-08-10', 'Accepted'),
(9, 'Ancient Egyptians', 'Lorem ipsum...', 51, 'Journal of History', 'grace@gmail.com', '2024-09-10', 'Under Review'),
(10, 'Understanding Human Behavior ', 'Did you ever wonder...', 21, 'Journal of Psychology', 'david@gmail.com', '2024-06-10', 'Accepted');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ArticleKeywords`
--

CREATE TABLE `ArticleKeywords` (
  `aid` int(11) NOT NULL,
  `keywld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ArticleKeywords`
--

INSERT INTO `ArticleKeywords` (`aid`, `keywld`) VALUES
(4, 1),
(1, 2),
(10, 3),
(3, 4),
(2, 6),
(5, 7),
(8, 8),
(9, 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ArticleReviewer`
--

CREATE TABLE `ArticleReviewer` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `score1` int(11) DEFAULT NULL,
  `score2` int(11) DEFAULT NULL,
  `score3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ArticleReviewer`
--

INSERT INTO `ArticleReviewer` (`id`, `email`, `score1`, `score2`, `score3`) VALUES
(1, 'carol@gmail.com', 0, 1, 1),
(2, 'danny@gmail.com', 1, 1, 1),
(3, 'david@gmail.com', 1, 1, 1),
(4, 'davis@gmail.com', 1, 1, 1),
(5, 'emma@gmail.com', 1, 1, 1),
(8, 'tom@gmail.com', 1, 1, 1),
(9, 'sofya@gmail.com', 1, 1, 1),
(10, 'ted@gmail.com', 0, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `journal`
--

CREATE TABLE `journal` (
  `name` varchar(30) NOT NULL,
  `frequency` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `journal`
--

INSERT INTO `journal` (`name`, `frequency`) VALUES
('Journal of Chemistry', 'Biannual'),
('Journal of Economics', 'Quarterly'),
('Journal of History', 'Annually'),
('Journal of Literature', 'Biweekly'),
('Journal of Psychology', 'Monthly');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `keywords`
--

CREATE TABLE `keywords` (
  `keywld` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `keywords`
--

INSERT INTO `keywords` (`keywld`, `keyword`) VALUES
(1, 'Chemical Reactions'),
(2, 'Organic Chemistry'),
(3, 'Behavioral Psychology'),
(4, 'History of Psychology'),
(5, 'Psychology News'),
(6, 'Microeconomics'),
(7, 'International Economics'),
(8, 'Classic Literature'),
(9, 'Ancient Civilizations');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `person`
--

CREATE TABLE `person` (
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `vid` int(11) NOT NULL,
  `vname` varchar(30) NOT NULL,
  `isAuthor` tinyint(1) DEFAULT NULL,
  `isReviewer` tinyint(1) DEFAULT NULL,
  `isEditor` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `person`
--

INSERT INTO `person` (`email`, `name`, `vid`, `vname`, `isAuthor`, `isReviewer`, `isEditor`) VALUES
('carol@gmail.com', 'Carol Davis', 11, 'Journal of Chemistry', 1, 1, 0),
('danny@gmail.com', 'Danny Fisherman', 31, 'Journal of Economics', 1, 1, 1),
('david@gmail.com', 'David Gilmour', 21, 'Journal of Psychology', 1, 1, 0),
('davis@gmail.com', 'Davis Martin', 12, 'Journal of Chemistry', 1, 1, 0),
('emma@gmail.com', 'Emma Brown', 32, 'Journal of Economics', 1, 1, 0),
('grace@gmail.com', 'Grace Martinez', 51, 'Journal of History', 1, 0, 1),
('nick@gmail.com', 'Nick Miller', 41, 'Journal of Literature', 1, 0, 0),
('sofya@gmail.com', 'Sofya Nomore', 51, 'Journal of History', 0, 1, 1),
('ted@gmail.com', 'Ted Gilly', 22, 'Journal of Psychology', 1, 1, 1),
('tom@gmail.com', 'Tom Jerry', 41, 'Journal of Literature', 0, 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `PersonInterest`
--

CREATE TABLE `PersonInterest` (
  `email` varchar(30) NOT NULL,
  `keywld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `PersonInterest`
--

INSERT INTO `PersonInterest` (`email`, `keywld`) VALUES
('carol@gmail.com', 1),
('davis@gmail.com', 1),
('carol@gmail.com', 2),
('davis@gmail.com', 2),
('david@gmail.com', 3),
('ted@gmail.com', 3),
('david@gmail.com', 4),
('ted@gmail.com', 4),
('danny@gmail.com', 6),
('emma@gmail.com', 6),
('danny@gmail.com', 7),
('emma@gmail.com', 7),
('nick@gmail.com', 8),
('tom@gmail.com', 8),
('grace@gmail.com', 9),
('sofya@gmail.com', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `volume`
--

CREATE TABLE `volume` (
  `vid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dates` date DEFAULT NULL,
  `publicationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `volume`
--

INSERT INTO `volume` (`vid`, `name`, `dates`, `publicationDate`) VALUES
(11, 'Journal of Chemistry', '2024-05-01', '2024-05-15'),
(12, 'Journal of Chemistry', '2024-06-01', '2024-06-15'),
(21, 'Journal of Psychology', '2024-06-01', '2024-06-15'),
(22, 'Journal of Psychology', '2024-07-01', '2024-07-15'),
(23, 'Journal of Psychology', '2024-08-01', '2024-08-15'),
(31, 'Journal of Economics', '2024-07-01', '2024-07-15'),
(32, 'Journal of Economics', '2024-08-01', '2024-08-15'),
(41, 'Journal of Literature', '2024-07-01', '2024-07-15'),
(51, 'Journal of History', '2024-09-01', '2024-09-15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `volumeTheme`
--

CREATE TABLE `volumeTheme` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `keywld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `volumeTheme`
--

INSERT INTO `volumeTheme` (`id`, `name`, `keywld`) VALUES
(11, 'Journal of Chemistry', 1),
(12, 'Journal of Chemistry', 2),
(21, 'Journal of Psychology', 3),
(22, 'Journal of Psychology', 4),
(31, 'Journal of Economics', 6),
(32, 'Journal of Economics', 7),
(41, 'Journal of Literature', 8),
(51, 'Journal of History', 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `writtenBy`
--

CREATE TABLE `writtenBy` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `writtenBy`
--

INSERT INTO `writtenBy` (`id`, `email`) VALUES
(4, 'carol@gmail.com'),
(5, 'danny@gmail.com'),
(10, 'david@gmail.com'),
(1, 'davis@gmail.com'),
(2, 'emma@gmail.com'),
(9, 'grace@gmail.com'),
(8, 'nick@gmail.com'),
(3, 'ted@gmail.com');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `volİd` (`volİd`),
  ADD KEY `volName` (`volName`),
  ADD KEY `correspAut` (`correspAut`);

--
-- Tablo için indeksler `ArticleKeywords`
--
ALTER TABLE `ArticleKeywords`
  ADD PRIMARY KEY (`aid`,`keywld`),
  ADD KEY `keywld` (`keywld`);

--
-- Tablo için indeksler `ArticleReviewer`
--
ALTER TABLE `ArticleReviewer`
  ADD PRIMARY KEY (`id`,`email`),
  ADD KEY `email` (`email`);

--
-- Tablo için indeksler `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`name`);

--
-- Tablo için indeksler `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`keywld`);

--
-- Tablo için indeksler `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`email`,`vid`,`vname`),
  ADD KEY `vid` (`vid`),
  ADD KEY `vname` (`vname`);

--
-- Tablo için indeksler `PersonInterest`
--
ALTER TABLE `PersonInterest`
  ADD PRIMARY KEY (`email`,`keywld`),
  ADD KEY `keywld` (`keywld`);

--
-- Tablo için indeksler `volume`
--
ALTER TABLE `volume`
  ADD PRIMARY KEY (`vid`,`name`),
  ADD KEY `vname` (`name`);

--
-- Tablo için indeksler `volumeTheme`
--
ALTER TABLE `volumeTheme`
  ADD PRIMARY KEY (`id`,`name`,`keywld`),
  ADD KEY `name` (`name`),
  ADD KEY `keywld` (`keywld`);

--
-- Tablo için indeksler `writtenBy`
--
ALTER TABLE `writtenBy`
  ADD PRIMARY KEY (`id`,`email`),
  ADD KEY `email` (`email`);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `Article`
--
ALTER TABLE `Article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`volİd`) REFERENCES `volume` (`vid`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`volName`) REFERENCES `volume` (`name`),
  ADD CONSTRAINT `article_ibfk_3` FOREIGN KEY (`correspAut`) REFERENCES `person` (`email`),
  ADD CONSTRAINT `article_ibfk_4` FOREIGN KEY (`id`) REFERENCES `ArticleReviewer` (`id`);

--
-- Tablo kısıtlamaları `ArticleKeywords`
--
ALTER TABLE `ArticleKeywords`
  ADD CONSTRAINT `articlekeywords_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `Article` (`id`),
  ADD CONSTRAINT `articlekeywords_ibfk_2` FOREIGN KEY (`keywld`) REFERENCES `keywords` (`keywld`);

--
-- Tablo kısıtlamaları `ArticleReviewer`
--
ALTER TABLE `ArticleReviewer`
  ADD CONSTRAINT `articlereviewer_ibfk_1` FOREIGN KEY (`email`) REFERENCES `person` (`email`);

--
-- Tablo kısıtlamaları `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`vid`) REFERENCES `volume` (`vid`),
  ADD CONSTRAINT `person_ibfk_2` FOREIGN KEY (`vname`) REFERENCES `volume` (`name`);

--
-- Tablo kısıtlamaları `PersonInterest`
--
ALTER TABLE `PersonInterest`
  ADD CONSTRAINT `personinterest_ibfk_1` FOREIGN KEY (`email`) REFERENCES `person` (`email`),
  ADD CONSTRAINT `personinterest_ibfk_2` FOREIGN KEY (`keywld`) REFERENCES `keywords` (`keywld`);

--
-- Tablo kısıtlamaları `volume`
--
ALTER TABLE `volume`
  ADD CONSTRAINT `volume_ibfk_1` FOREIGN KEY (`name`) REFERENCES `journal` (`name`);

--
-- Tablo kısıtlamaları `volumeTheme`
--
ALTER TABLE `volumeTheme`
  ADD CONSTRAINT `volumetheme_ibfk_1` FOREIGN KEY (`id`) REFERENCES `volume` (`vid`),
  ADD CONSTRAINT `volumetheme_ibfk_2` FOREIGN KEY (`name`) REFERENCES `volume` (`name`),
  ADD CONSTRAINT `volumetheme_ibfk_3` FOREIGN KEY (`keywld`) REFERENCES `keywords` (`keywld`);

--
-- Tablo kısıtlamaları `writtenBy`
--
ALTER TABLE `writtenBy`
  ADD CONSTRAINT `writtenby_ibfk_1` FOREIGN KEY (`email`) REFERENCES `person` (`email`),
  ADD CONSTRAINT `writtenby_ibfk_2` FOREIGN KEY (`id`) REFERENCES `Article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
