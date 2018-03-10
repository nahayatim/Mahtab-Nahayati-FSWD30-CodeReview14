-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2018 at 09:17 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr14_mahtab_nahayati_bigevents`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateandtime` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `dateandtime`, `description`, `image`, `capacity`, `contact`, `contact_phone`, `address`, `URL`, `type`) VALUES
(1, 'All Japan Youth Orchestra', '2018-03-29 18:34:00', 'Wolfgang Amadeus Mozart', 'img/japan.jpg', '700', 'ticket@musikverein', '+43 1505 81 90', 'Musikvereinplatz1-1010Wien', 'www.musikverein.at', 'Music'),
(2, 'Wiener Domorchester', '2018-03-28 20:00:00', 'Wolfgang Amadeus Mozart', 'img/wienorcester.jpeg', '555', 'tickets@musikverein.at', '43 1 505 88 90', 'Musikvereinplatz 1-1010 Wien', 'www.musikverein.at', 'music'),
(3, 'The Art of Viennese Watercolour', '2018-03-11 13:00:00', 'Transparent lightness,brilliant colours,and a generally atmospheric imperssion', 'img/watercolor.jpeg', '333', 'info@albertina.at', '+43 1534 83 0', 'Albertinaplatz1-1010Wien', 'www.albertina.at', 'Party'),
(4, 'Der Diener Zweier Herren', '2018-03-29 21:00:00', 'Zwei Liebespaare, die das Schicksal auseinandergerissen hat, muse sich wiederfinden...', 'img/theater.jpeg', '250', 'theater@vien.at', '+43 1 51444 4140', 'Universitaetsring 2-1010Wien', 'www.burgtheater.at', 'theater'),
(5, 'Raymonda', '2018-03-14 19:00:00', 'Rudolf Nurejews...', 'img/dance.jpeg', '222', 'information@wien.at', '+43 1 514 44 2250', 'opernring 2', 'www.wiener-statsoper.at', 'music-dance'),
(6, 'The 12 Tenors live on tour!', '2018-03-15 20:00:00', 'Aus untersciedlichen Nationen zusammen gekommen....', 'img/concert.jpeg', '600', 'service@stadthalle.com', '+43 1 79 999 79', 'Roland-Rainer-Platz 1-1150 Wien', 'www.stadthalle.com', 'music');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(3, 'admin', 'admin@admin.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
