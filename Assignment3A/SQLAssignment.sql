-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2018 at 04:40 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `movedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branchNo` varchar(50) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`branchNo`),
  KEY `postcode` (`postcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchNo`, `street`, `city`, `postcode`) VALUES
('B002', '56 Cover Drive', 'London', 'NW10 6EU'),
('B003', '163 Main Street', 'Glasgow', 'G11 9QX'),
('B004', '32 Manse Road', 'Bristol', 'BS99 1NZ'),
('B005', '22 Deer Road', 'London', 'SW1 4EH'),
('B007', '16 Argyll Street', 'Aberdeen', 'AB2 3SU');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `clientNo` varchar(50) DEFAULT NULL,
  `fName` varchar(30) DEFAULT NULL,
  `lName` varchar(30) DEFAULT NULL,
  `telNo` varchar(20) DEFAULT NULL,
  `Street` varchar(30) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `PostCode` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `JoinedOn` datetime DEFAULT NULL,
  `Region` varchar(30) DEFAULT NULL,
  `preType` varchar(5) DEFAULT NULL,
  `maxRent` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `clientNo` (`clientNo`),
  KEY `ID` (`ID`),
  KEY `PostCode` (`PostCode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ID`, `clientNo`, `fName`, `lName`, `telNo`, `Street`, `City`, `PostCode`, `email`, `JoinedOn`, `Region`, `preType`, `maxRent`) VALUES
(24, NULL, 'Bruce', 'Wayne', '555 6789', '1 Wayne Manor', 'Gotham', 'BA01 TT0', 'wayne@batty.com', '2004-11-22 00:00:00', 'Glasgow', 'House', 900),
(2, 'CR56', 'Fred', 'Flintstone', '555 1234', '12 Rock Way', 'Bedrock', 'BD3 8RK', 'fred@flintyrock.com', '2004-05-09 00:00:00', NULL, 'House', 450),
(6, 'CR62', 'Wilma', 'Flintstone', '555 1234', '12 Rock Way', 'Bedrock', 'BD3 8RK', 'wilma@flintyrock.com', '2004-05-09 00:00:00', NULL, 'Flat', 350),
(7, 'CR74', 'Albert', 'Johnstone', '555 6677', '1 Way St.', 'Chicago', 'PO34 5FB', 'albie@johnstone.com', '2004-05-09 00:00:00', '(N/A)', 'Flat', 450),
(9, 'CR77', 'Clark', 'Kent', '555 9999', '1 Super Way', 'Smallville', 'SM4 2ME', 'clark@supersite.com', '2004-05-09 00:00:00', '(N/A)', 'Flat', 400),
(10, 'CR79', 'Joe', 'Bloggs', '123 4567', '5 High St', 'Paisley', 'PA2 2BB', 'joe@paisley.com', '2004-05-10 00:00:00', 'London (North West)', 'House', 450),
(12, 'CR83', 'Edward', 'Scissorhands', '123 4567', '1 Snip St.', 'Scissorland', 'SC1 2XX', 'eddie@scix.com', '2004-05-21 00:00:00', '(N/A)', 'House', 300),
(17, NULL, 'Albert', 'Enistein', '555 6789', '12 Long Island Way', 'New Jersey', 'NJ44 2RD', 'bert@nuclearintent.com', '2004-05-21 00:00:00', 'London (North West)', NULL, 450),
(18, NULL, 'Snorrie', 'Sturrluson', '333 4567', '1 Vik Way', 'Rekjavik', 'RK22 3RD', 'snorrie@iceland.com', '2004-05-21 00:00:00', '(N/A)', NULL, 400),
(19, NULL, 'Ferdinand', 'Oblogiotta', '123 5555', '12 Strumpetwise Street', 'Lagrange Orage', 'PP2 1BB', 'ferdy@orage.com', '2004-05-31 00:00:00', '(N/A)', 'House', 450),
(20, NULL, 'Joe', 'Schmoe', '123 45678', '1 High St', 'Largs', 'KA30 9DD', 'joes@largy.com', '2004-05-31 00:00:00', '(N/A)', 'House', 550),
(21, NULL, 'Bill', 'Gates', '123 5555', '1 Rich Street', 'Seattle', 'SE2 TTL', 'bill@gatesland.com', '2004-06-01 00:00:00', 'London (South)', 'House', 1000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `mystaff3`
--
CREATE TABLE IF NOT EXISTS `mystaff3` (
`staffno` varchar(50)
,`lname` varchar(50)
,`position` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `propertyforrent`
--

CREATE TABLE IF NOT EXISTS `propertyforrent` (
  `propertyNo` varchar(50) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `rooms` int(11) DEFAULT NULL,
  `rent` int(11) DEFAULT NULL,
  `ownerNo` varchar(50) DEFAULT NULL,
  `staffNo` varchar(50) DEFAULT NULL,
  `branchNo` varchar(50) DEFAULT NULL,
  `picture` varchar(40) DEFAULT NULL,
  `floorPlan` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`propertyNo`),
  KEY `postcode` (`postcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `propertyforrent`
--

INSERT INTO `propertyforrent` (`propertyNo`, `street`, `city`, `postcode`, `type`, `rooms`, `rent`, `ownerNo`, `staffNo`, `branchNo`, `picture`, `floorPlan`) VALUES
('PA14', '16 Holhead', 'Aberdeen', 'AB7 5SU', 'House', 6, 650, 'CO46', 'SA9', 'B007', 'images/house2.jpg', 'images/plan1.jpg'),
('PG16', '5 Novar Drive', 'Glasgow', 'G12 9AX', 'Flat', 4, 450, 'CO93', 'SG14', 'B003', 'images/house3.jpg', 'images/plan1.jpg'),
('PG21', '18 Dale Road', 'Glasgow', 'G12', 'House', 7, 726, 'CO87', 'SG37', 'B003', 'images/house4.jpg', 'images/plan1.jpg'),
('PG36', '2 Manor Road', 'Glasgow', 'G32 4QX', 'Flat', 3, 375, 'CO93', 'SG37', 'B003', 'images/house5.jpg', 'images/plan1.jpg'),
('PG4', '6 Lawrence Street', 'Glasgow', 'G11 9QX', 'Flat', 3, 350, 'CO40', 'SA9', 'B003', 'images/house2.jpg', 'images/plan1.jpg'),
('PG97', 'Muir Drive', 'Aberdeen', 'AB42 1DD', 'House', 3, 380, 'CO46', 'SA9', 'B007', 'images/house1.jpg', 'images/plan1.jpg'),
('PL94', '6 Argyll Street', 'London', 'NW2', 'Flat', 5, 440, 'CO87', 'SL41', 'B005', 'images/house3.jpg', 'images/plan1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staffNo` varchar(50) NOT NULL,
  `fName` varchar(50) DEFAULT NULL,
  `lName` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `salary` int(11) DEFAULT '0',
  `branchNo` varchar(50) DEFAULT NULL,
  `Telephone` varchar(16) DEFAULT NULL,
  `Mobile` varchar(16) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`staffNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffNo`, `fName`, `lName`, `position`, `sex`, `DOB`, `salary`, `branchNo`, `Telephone`, `Mobile`, `Email`) VALUES
('SA9', 'Mary', 'Howe', 'Assistant', 'F', '1970-02-19 00:00:00', 9000, 'B007', '1338', '079555 12345', 'MaryHowe@Dreamhome.co.uk'),
('SG14', 'David', 'Ford', 'Supervisor', 'M', '1958-03-24 00:00:00', 18000, 'B003', '0223', '079555 12344', 'DavidFord@Dreamhome.co.uk'),
('SG37', 'Ann', 'Beech', 'Assistant', 'F', '1960-11-10 00:00:00', 12000, 'B003', '0224', '079555 12346', 'AnnBeech@Dreamhome.co.uk'),
('SG5', 'Susan', 'Brand', 'Manager', 'F', '1940-06-03 00:00:00', 24000, 'B003', '0225', '079555 12347', 'SusanBrand@Dreamhome.co.uk'),
('SL21', 'John', 'White', 'Manager', 'M', '1945-10-01 00:00:00', 30000, 'B005', '1512', '090555 12345', 'JohnWhite@Dreamhome.co.uk'),
('SL41', 'Julie', 'Lee', 'Assistant', 'F', '1965-06-13 00:00:00', 9000, 'B005', '1514', '090555 12346', 'JulieLee@Dreamhome.co.uk');

-- --------------------------------------------------------

--
-- Stand-in structure for view `submystaff3`
--
CREATE TABLE IF NOT EXISTS `submystaff3` (
`lastname` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `viewing`
--

CREATE TABLE IF NOT EXISTS `viewing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `clientID` int(11) DEFAULT '0',
  `propertyNo` varchar(10) DEFAULT NULL,
  `viewDate` datetime DEFAULT NULL,
  `viewHour` tinyint(3) unsigned DEFAULT '0',
  `Comment` varchar(255) DEFAULT NULL,
  `WishToRent` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `clientID` (`clientID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `viewing`
--

INSERT INTO `viewing` (`ID`, `clientID`, `propertyNo`, `viewDate`, `viewHour`, `Comment`, `WishToRent`) VALUES
(11, 6, 'PA14', '2004-06-20 00:00:00', 12, NULL, 0),
(12, 9, 'PG21', '2004-11-22 00:00:00', 9, 'Not bad at all.', 0),
(13, 9, 'PG36', '2004-11-23 00:00:00', 9, 'Kitchen too small.', 0),
(14, 9, 'PG16', '2004-11-23 00:00:00', 9, NULL, 0),
(15, 24, 'PG21', '2004-11-25 00:00:00', 11, NULL, 0),
(2, 2, 'PA14', '2004-07-01 00:00:00', 11, NULL, 0),
(3, 7, 'PG36', '2004-07-01 00:00:00', 12, NULL, 0),
(4, 9, 'PG4', '2004-07-01 00:00:00', 12, 'Tidy but too small', 0),
(5, 10, 'PA14', '2004-07-02 00:00:00', 10, NULL, 0),
(6, 12, 'PG4', '2004-07-02 00:00:00', 14, NULL, 0),
(7, 6, 'PA14', '2004-06-20 00:00:00', 12, NULL, 0),
(8, 6, 'PG21', '2004-06-21 00:00:00', 13, NULL, 0);

-- --------------------------------------------------------

--
-- Structure for view `mystaff3`
--
DROP TABLE IF EXISTS `mystaff3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mystaff3` AS select `staff`.`staffNo` AS `staffno`,`staff`.`lName` AS `lname`,`staff`.`position` AS `position` from `staff` where (`staff`.`branchNo` = 'b003');

-- --------------------------------------------------------

--
-- Structure for view `submystaff3`
--
DROP TABLE IF EXISTS `submystaff3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `submystaff3` AS select `mystaff3`.`lname` AS `lastname` from `mystaff3`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
