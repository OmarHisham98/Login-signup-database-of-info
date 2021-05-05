-- https://www.phpmyadmin.net/
  -- Host: 127.0.0.1
 
  SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
  SET AUTOCOMMIT = 0;
  START TRANSACTION;
  SET time_zone = "+00:00";
--  -- Database: `user_dept`  --  -- --------------------------------------------------------  --  -- Table structure for table `users`  --  CREATE TABLE `user1` (    `user_id` int(11) NOT NULL,    `email` varchar(255) NOT NULL,    `name` varchar(255) NOT NULL,    `password` varchar(255) NOT NULL,    'registeration_date' date NOT nuLL  ) ENGINE=InnoDB DEFAULT CHARSET=latin1

  /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  /*!40101 SET NAMES utf8mb4 */;

  --
  -- Database: `user_dept`
  --

  -- --------------------------------------------------------

  --
  -- Table structure for table `users`
  


  CREATE TABLE `user` (
    `id` int(11) NOT NULL,
    `email` varchar(255) NOT NULL,
    `username` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
  );


 
  ALTER TABLE `user`
    ADD PRIMARY KEY (`id`);

  --
  -- AUTO_INCREMENT for dumped tables
  --

  --
  -- AUTO_INCREMENT for table `users`
  --
  ALTER TABLE `user`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
  CREATE TABLE `departments` (
    `dept_id` int(11) NOT NULL,
    `name` varchar(255) NOT NULL,
    `description` varchar(255) NOT NULL
  ) ;

  ALTER TABLE `departments`
    ADD PRIMARY KEY (`dept_id`);

  --
  -- AUTO_INCREMENT for dumped tables
  --

  --
  -- AUTO_INCREMENT for table `users`
  --
  ALTER TABLE `departments`
    MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT;


  COMMIT;