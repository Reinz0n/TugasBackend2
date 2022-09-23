-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 07:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20220907161901-create-table-users.js'),
('20220907164309-add-column-organization-in-users.js'),
('20220909131432-add-table-user.js');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `shortname` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `biodata` varchar(255) DEFAULT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `jabatan` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `fullname`, `shortname`, `photo`, `biodata`, `angkatan`, `jabatan`, `createdAt`, `updatedAt`) VALUES
(2, 'Emilie41@yahoo.com', 'secret', 'Ira Schuppe', 'Arvilla.Witting', NULL, 'Senior Communications Administrator', 2020, 'staff', '2022-09-09 13:59:47', '2022-09-09 13:59:47'),
(3, 'Robin83@gmail.com', 'secret', 'Brenda Rolfson', 'Hobart.Denesik', NULL, 'Dynamic Applications Facilitator', 2020, 'staff', '2022-09-09 14:01:32', '2022-09-09 14:01:32'),
(4, 'Darrion.Moen@gmail.com', 'secret', 'Guadalupe Shanahan', 'Vida49', NULL, 'Senior Response Facilitator', 2020, 'staff', '2022-09-23 14:05:17', '2022-09-23 14:05:17'),
(5, 'Alysha_Schumm46@hotmail.com', '$2b$10$nHHA5G8qy4v/pBCy3rgEl.J//WmiTZHV48vRdW.Y8R6KTbDNSIABS', 'Garry Wolff', 'Alanna_Marvin', NULL, 'Customer Configuration Representative', 2020, 'staff', '2022-09-23 14:15:15', '2022-09-23 14:15:15'),
(6, 'Erika_Cremin@yahoo.com', '$2b$10$x9.TSJZBlaiGQxrMpVQyYunVFEAUddu6v9Fbjbo5tE/t587NSM5fi', 'Blake Toy', 'Margret.Kulas', NULL, 'Customer Mobility Engineer', 2020, 'staff', '2022-09-23 14:18:48', '2022-09-23 14:18:48'),
(7, 'Jammie.Morissette36@yahoo.com', '$2b$10$zoCMH9RI8XT9mcmxe.nGe.IzoZcP5dr/mNcls.s9NJMelgz6qCxQW', 'Jeremiah Wolff', 'Ken_Balistreri8', NULL, 'District Program Developer', 2020, 'staff', '2022-09-23 14:43:53', '2022-09-23 14:43:53'),
(8, 'Amely24@hotmail.com', '$2b$10$K0TxPthfbOjXbfy46i2L4OjAcf6vfujWEZQg3eRome.zxVbFF2yLG', 'Andy Roob', 'Dorian.Ratke', NULL, 'Senior Intranet Designer', 2020, 'staff', '2022-09-23 14:44:48', '2022-09-23 14:44:48'),
(9, 'Grace_Berge79@gmail.com', '$2b$10$oILrg4cqWbkPvE7m8UJx9uuqNzUAeiikmQEIQDj0q6QZpA51Ui2dy', 'Mr. Glen Hand', 'Vernice39', NULL, 'National Communications Strategist', 2020, 'staff', '2022-09-23 15:21:06', '2022-09-23 15:21:06'),
(10, 'Dena78@hotmail.com', '$2b$10$T5piGRgzk4ZE.5N7ldZKxe/bmsXaCEALDkk5ar0aTDHUKdbJbKXUu', 'Robert Robel', 'Ike55', NULL, 'Dynamic Applications Planner', 2020, 'staff', '2022-09-23 15:21:10', '2022-09-23 15:31:08'),
(11, 'Victoria.Fritsch@hotmail.com', '$2b$10$zq4wTt3yXEZVLV/DsCK8w.5TNVeMWe4W9Vt77WBGvko/WevJI3bKu', 'Lowell Braun', 'Darlene.Bosco', NULL, 'International Assurance Administrator', 2020, 'staff', '2022-09-23 15:42:15', '2022-09-23 15:42:15'),
(12, 'Jessyca13@gmail.com', '$2b$10$FRIyGqmzcAy5NMphF/U1UOjD8Y.p.Xqq1LIXF9hNz7QlshEWcImnm', 'Amy Ryan', 'Peter81', NULL, 'Lead Interactions Administrator', 2020, 'staff', '2022-09-23 16:37:12', '2022-09-23 16:37:12'),
(13, 'Nedra6@gmail.com', '$2b$10$MMySUtYp02kReYC.Oa0Knu42gUQp/TZbSYcnanzazvswJ/tnk1Pfe', 'Gertrude Cummings', 'Isabell.Collins', NULL, 'Customer Accounts Representative', 2020, 'staff', '2022-09-23 16:43:29', '2022-09-23 17:10:54'),
(14, 'Georgiana_Hauck43@gmail.com', '$2b$10$I/CloZ/QZXU/J7rzcvS0Hu6E.jzerWHiw7olJ9YCAkEan/7bkB.bO', 'Constance Kunde', 'Percival55', NULL, 'Customer Operations Executive', 2020, 'staff', '2022-09-23 17:13:34', '2022-09-23 17:13:34'),
(15, 'Annamarie52@yahoo.com', '$2b$10$qz3N2RJ8kCaAyXk4WqQ/0uPq15H7PxjSXB6DPT/2XXUl6aKYihPTC', 'Ann Ward', 'Gonzalo.Jacobs20', NULL, 'Regional Paradigm Architect', 2020, 'staff', '2022-09-23 17:13:38', '2022-09-23 17:13:38'),
(16, 'Art_Armstrong82@hotmail.com', '$2b$10$i2k5j0f7QhD4xCUOhYd71OZ3/meSAwtlg4BcHycPfAMlNG.RWfCLC', 'Henry Hettinger', 'Janis52', NULL, 'Chief Marketing Administrator', 2020, 'staff', '2022-09-23 17:13:56', '2022-09-23 17:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `organization` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `role`, `photo`, `createdAt`, `updatedAt`, `organization`) VALUES
(1, 'qweqweqw', 'qweqweqwe', 'Heidi Schoen', 'user', NULL, '2022-09-01 21:52:04', '2022-09-08 16:23:47', 'Marketing'),
(2, 'Jeremy.Simonis5@hotmail.com', 'secret', 'Fred Tillman III', 'user', NULL, '2022-09-08 15:41:26', '2022-09-08 16:24:14', 'Solutions'),
(3, 'Daren_Kovacek69@yahoo.com', 'secret', 'Roosevelt Senger', 'user', NULL, '2022-09-08 15:41:32', '2022-09-08 15:41:32', 'Implementation'),
(4, 'Wilhelm94@gmail.com', 'secret', 'Colleen Carter', 'user', NULL, '2022-09-08 15:41:33', '2022-09-08 15:41:33', 'Functionality'),
(5, 'Neha.Schuppe8@yahoo.com', 'secret', 'Ebony Goodwin', 'user', NULL, '2022-09-08 15:42:05', '2022-09-08 15:42:05', 'Infrastructure'),
(6, 'Curt.Will@yahoo.com', 'secret', 'Geraldine Kreiger', 'user', NULL, '2022-09-08 16:03:10', '2022-09-08 16:03:10', 'Metrics'),
(8, 'Giovani_Dickinson@hotmail.com', '$2b$10$ynuKtDTraCBvelnnPgzyDetuUc1hQ28Ba89LWcU3rvF4GlAiE5hi6', 'Lucille Kautzer', 'user', NULL, '2022-09-08 16:26:57', '2022-09-08 16:26:57', 'Functionality');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
