-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 05:35 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `hashed_uname` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_hashed` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `hashed_loc` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `username`, `hashed_uname`, `email`, `password`, `password_hashed`, `location`, `hashed_loc`, `date`) VALUES
(1, 'aj@yopmail.com', '', 'aj@123', '', '$2y$10$GLsH3yQ/bHcEf.5Lruz3Ue20LYJoyyH3CZCNe5TyQKa2n1wwvQK46', '', '', '2018-11-06 04:29:35'),
(2, 'akunjir', '', 'aj@yopmail.com', '', '$2y$10$spJQVjfIpxVgd9tUG7o.UuzG1yAlUcSYIhHHiDlu443rtzbsHyKWC', '', '', '2018-11-06 04:29:35'),
(3, 'navdeep', '', 'nav@yopmail.com', 'password123', '7d892a78534bf84bb5034a213441c7ec', 'Latitude: 48.400686099999994 Longitude: -89.2808848', '', '2018-11-06 04:29:35'),
(4, 'zee', '', 'zee@yopmail.com', '', '07a79552c4ad39857349d82902fb78ac', '', '', '2018-11-06 04:29:35'),
(5, 'lol', '', 'lol@yopmail.com', '', '8f036369a5cd26454949e594fb9e0a2d', 'thunderbay', '', '2018-11-06 04:29:35'),
(6, 'lee', 'd41d8cd98f00b204e9800998ecf8427e', 'lee@gmail.com', '', 'f39c8f313f3449a39d36c761d028efc7', 'china', '8a7d7ba288ca0f0ea1ecf975b026e8e1', '2018-11-07 00:49:27'),
(8, 'ab', '187ef4436122d1cc2f40dc2b92f0eba0', 'ab@gmail.com', '', '467953075fb15d5fcb13eb010e7cbe2b', 'Tbay', 'a9c4d33118b9f7d3809b3673f22a4df9', '2018-11-07 15:32:57'),
(11, 'mn', '412566367c67448b599d1b7666f8ccfc', 'mn@yopmail.com', 'mn@123', '447315ab97a88a8f4c5b4d17c11e3f5f', 'Latitude: 48.4007049 Longitude: -89.28094039999999', '46b4f012cda563ec987e8c2161d4b7f9', '2018-11-07 18:14:09'),
(12, 'mi', '29bfe372865737fe2bfcfd3618b1da7d', 'mi@yopmail.com', 'mi123', '3540928a238f53a37556e32a085f4ec2', 'Latitude: 48.4007666 Longitude: -89.28087599999999', '81a0404ef3442acae617deaf5825b6a9', '2018-11-13 05:43:28'),
(13, 'bob', '9f9d51bc70ef21ca5c14f307980a29d8', 'bob@yopmail.com', 'bob123', '2acba7f51acfd4fd5102ad090fc612ee', 'Latitude: 48.4007143 Longitude: -89.28087389999999', '77d969beb65d11e8165c27c8b223c6e7', '2018-11-13 14:09:01'),
(14, 'abc', '900150983cd24fb0d6963f7d28e17f72', 'abc@yopmail.com', 'abc123', 'e99a18c428cb38d5f260853678922e03', 'Latitude: 48.40070660000001 Longitude: -89.2808537', '8dc781336476fc36dc5f67227bc60c5c', '2018-11-14 15:18:52'),
(15, 'pqr', 'f734fd4ff1214de59bab601aa34030d2', 'pqr@gmail.com', 'pqr123', '49a928d41a0e21f6859b190b60469de9', 'Latitude: 48.4007481 Longitude: -89.2808429', 'c75f2d67adb4c50a41cc6a0578918b9e', '2018-11-14 15:30:19'),
(16, 'xyz', 'd16fb36f0911f878998c136191af705e', 'xyz@gmail.com', 'xyz123', '613d3b9c91e9445abaeca02f2342e5a6', 'Latitude: 48.4007481 Longitude: -89.2808429', 'c75f2d67adb4c50a41cc6a0578918b9e', '2018-11-14 15:36:02'),
(17, 'navdeep', 'b0fd9e8c853a93258f5ffe365fefc2ab', 'navdeep@gmail.com', 'password123', '2da824c99f53f7ea3bdc263230bbed18', 'Latitude: 48.400686099999994 Longitude: -89.2808848', 'aab317110662f6eaa465031950de3051', '2018-11-14 15:46:39'),
(18, 'jimmy', 'c2fe677a63ffd5b7ffd8facbf327dad0', 'jimmy@gmail.com', 'jimmy123', '0f8f94a2fd915c12ca295b4921d69ce7', 'Latitude: 48.400704399999995 Longitude: -89.2808941', 'f0ecdfcde5b2ed6f5c44f59cbcf235c4', '2018-11-16 04:16:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
