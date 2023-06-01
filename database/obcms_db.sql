-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 03:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obcms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Jeevan R', 'admin', 9980309207, 'admin@mail.com', '0192023a7bbd73250516f069df18b500', '2023-08-17 02:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplicat`
--

CREATE TABLE `tblapplicat` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `ApplicationID` varchar(200) DEFAULT NULL,
  `DateofBirth` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PlaceofBirth` varchar(200) DEFAULT NULL,
  `NameofFather` varchar(200) DEFAULT NULL,
  `PermanentAdd` mediumtext DEFAULT NULL,
  `Dateofapply` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblapplicat`
--

INSERT INTO `tblapplicat` (`ID`, `UserID`, `ApplicationID`, `DateofBirth`, `Gender`, `FullName`, `PlaceofBirth`, `NameofFather`, `PermanentAdd`, `Dateofapply`, `Remark`, `Status`, `UpdationDate`) VALUES
(8, 3, '356971215', '2023-01-17', 'Female', 'tyuir', 'gubbi', 'jret', 'Yellapura Arekere [P], Tumkur{D] gubbi[T]', '2023-01-17 04:10:44', 'verified', 'Verified', '2023-01-17 06:25:39'),
(9, 3, '690771050', '2023-01-07', 'Female', 'yufghlknf', 'djefhiowhflk', 'kjuytrdfghjk', 'gruyfhjkljknm ,nklj,m', '2023-01-17 07:32:14', NULL, NULL, NULL),
(10, 3, '313193203', '2023-01-14', 'Female', 'tyui', 'dfghj', 'tuiijhu', 'sfjhhk nhkj,m', '2023-01-17 08:15:03', 'vhjk', 'Verified', '2023-01-17 08:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplication`
--

CREATE TABLE `tblapplication` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `ApplicationID` varchar(200) DEFAULT NULL,
  `DateofBirth` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PlaceofBirth` varchar(200) DEFAULT NULL,
  `NameofFather` varchar(200) DEFAULT NULL,
  `PermanentAdd` mediumtext DEFAULT NULL,
  `PostalAdd` mediumtext DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Dateofapply` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblapplication`
--

INSERT INTO `tblapplication` (`ID`, `UserID`, `ApplicationID`, `DateofBirth`, `Gender`, `FullName`, `PlaceofBirth`, `NameofFather`, `PermanentAdd`, `PostalAdd`, `MobileNumber`, `Email`, `Dateofapply`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 1, '205406252', '1988-06-23', 'Female', 'Samantha Lou Lee', 'Here City', 'Michael Lee', 'Down Here, Here City', '2306', 123654789, 'slee@mail.com', '2022-09-24 05:17:30', 'Sample Remarks', 'Verified', '2022-09-24 05:23:16'),
(2, 3, '701255305', '2003-02-27', 'Male', 'Jeevan R', 'Tumkur', 'Raju', 'Beside shri vanitha vidya kendra Yellapura Arekere [P], Tumkur[T][D]', '572106', 9980309207, 'jeevanjeevu233@gmail.com', '2023-01-15 15:55:58', 'Birth certificate is verified', 'Verified', '2023-01-15 15:57:41'),
(3, 3, '596543450', '2002-07-11', 'Male', 'rahul', 'tumkur', 'djsndjoe', 'ndnmddmcj djsjddkdks kskdjd', '643883', 3456789345, 'eyjekseisk@jjfkd.f', '2023-01-16 04:28:32', 'verifed', 'Verified', '2023-01-16 04:29:16'),
(4, 3, '821720868', '2023-01-18', 'Male', 'gty', 'tumk', 'raj', 'tum hu', '568', 56789346, 'yjj@gmail.com', '2023-01-16 08:55:59', 'recjed', 'Rejected', '2023-01-16 08:56:59'),
(6, 3, '549162398', '2023-01-16', 'Male', 'arya', 'hassan', 'yash', 'Mysore', 'Benglore', 34567890, '5sa7dgwuig@hfj.vgvnb', '2023-01-16 16:53:03', 'verfied', 'Verified', '2023-01-16 18:45:21'),
(7, 4, '117722818', '2023-01-17', 'Male', 'kumar', 'tumkur', 'gdgifkjw', 'sadhy87iuewnjdmlw', 'xsnhuodhjdijidj', 2345678909, 'deigfwhiuejf@hdh.cbb', '2023-01-17 05:15:40', 'verified', 'Verified', '2023-01-17 06:27:44'),
(9, 3, '695458928', '2023-01-01', 'Female', 'adsfgkjl', 'trsdghfjgkhuityutdrsgfx', 'ghcvhjklj', 'ftyrtearwdfghkjl jhjghfgdzsdxfghj', 'mjhgfdsxc mjuygtbn', 1234567890, 'dfgvhjkh@fhj.hggj', '2023-01-17 07:25:38', 'rejected', 'Rejected', '2023-01-19 10:13:06'),
(10, 3, '966656361', '2023-01-02', 'Female', 'dyufghewjkn', 'asdfiuewhfoejio', 'ewgfthoijpjpdw', 'iuewgdhoewifjdopewjiolk', 'dewdgtyiuhlwekjdl ferc', 3456787656, 'swwj@hhdj.hj', '2023-01-17 07:29:40', 'hjjhyvygjkhjkguyfv', 'Verified', '2023-01-17 15:42:25'),
(11, 3, '653067975', '2023-01-07', 'Male', 'fhgjkj', 'dfer', 'sdfrtgtrw', 'dffgrtb ehy5j', 'grt54h6grt fghyj7ty', 3454654345, 'fdfrr@jdj.com', '2023-01-17 07:30:59', 'wrong', 'Rejected', '2023-01-19 10:13:25'),
(12, 3, '236723163', '1976-10-12', 'Female', 'Rathanamma D', 'Tumkur', 'Dasapappa', 'Tumkur', 'Tumkur -572106', 9008617791, 'hsdgkcudgygc @uhdfn.ffjf', '2023-01-17 15:18:34', 'Verifed', 'Verified', '2023-01-17 15:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbllog`
--

CREATE TABLE `tbllog` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `ApplicationID` varchar(200) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Dateofapply` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbllog`
--

INSERT INTO `tbllog` (`ID`, `UserID`, `ApplicationID`, `FullName`, `Dateofapply`) VALUES
(2, 3, '653067975', 'Birth Record', '2023-01-17 07:30:59'),
(3, 3, '690771050', 'Death Record', '2023-01-17 07:32:14'),
(4, 3, '313193203', 'Death Record', '2023-01-17 08:15:03'),
(5, 3, '236723163', 'Birth Record', '2023-01-17 15:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Address`, `Password`, `RegDate`) VALUES
(1, 'Mark', 'Cooper', 9123456789, 'Sample Address 101', 'c7162ff89c647f444fcaa5c635dac8c3', '2022-09-24 05:16:50'),
(3, 'User', '3', 8151044847, 'Tumkur', '5bbdecf273d53164ec9ea6b119dab905', '2023-01-15 15:54:00'),
(4, 'Krishna', 'Kumar', 1111111111, 'Shetthalli', 'e11170b8cbd2d74102651cb967fa28e5', '2023-01-17 05:14:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplicat`
--
ALTER TABLE `tblapplicat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplication`
--
ALTER TABLE `tblapplication`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllog`
--
ALTER TABLE `tbllog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplicat`
--
ALTER TABLE `tblapplicat`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblapplication`
--
ALTER TABLE `tblapplication`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbllog`
--
ALTER TABLE `tbllog`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
