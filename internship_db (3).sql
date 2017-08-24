-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2017 at 02:41 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alloted_jobs`
--

CREATE TABLE `alloted_jobs` (
  `job_id` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alloted_jobs`
--

INSERT INTO `alloted_jobs` (`job_id`, `student_email`) VALUES
('3', 'shrada@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Delhi'),
(3, 'Chandigarh'),
(4, 'Windsor');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `address` varchar(3000) NOT NULL,
  `city` varchar(100) NOT NULL,
  `provience` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `contact_fname` varchar(100) NOT NULL,
  `contact_lname` varchar(100) NOT NULL,
  `contact_position` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `company_website` varchar(100) NOT NULL,
  `notes` varchar(3000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `address`, `city`, `provience`, `postal_code`, `country`, `contact_fname`, `contact_lname`, `contact_position`, `telephone`, `email`, `company_website`, `notes`) VALUES
(2, 'IBM', '#111, sector 11, Delhi', 'Windsor', 'Xyz', '1234567', 'India', 'Aaaa', 'Bbbb', 'HR', '0129222222', 'ibm@gmail.com', 'www.ibm.com', 'this is demo'),
(3, 'IBM', 'kjihg', 'Windsor', 'Abc', '1234567', 'Canada', 'dfghj', 'sdfgh', 'sdfgh', 'sdfgh', 'abc@gmail.com', 'www.ibm.com', 'xcvbhjk');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(9, 'Canada'),
(8, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `id` int(11) NOT NULL,
  `faculty_id` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`id`, `faculty_id`, `fname`, `lname`, `email`, `branch`) VALUES
(2, 'fac1', 'Rahul', 'Bhardwaj', 'rahul@gmail.com', 'HOD');

-- --------------------------------------------------------

--
-- Table structure for table `internship_type`
--

CREATE TABLE `internship_type` (
  `internship_type_id` int(11) NOT NULL,
  `internship_type_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internship_type`
--

INSERT INTO `internship_type` (`internship_type_id`, `internship_type_name`) VALUES
(2, 'bbb');

-- --------------------------------------------------------

--
-- Table structure for table `job_details`
--

CREATE TABLE `job_details` (
  `id` int(11) NOT NULL,
  `job_group` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `internship_type` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `responsibilities` varchar(3000) NOT NULL,
  `requirements` varchar(3000) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `status` varchar(300) NOT NULL,
  `salary_status` varchar(100) NOT NULL,
  `student_list` varchar(3000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_details`
--

INSERT INTO `job_details` (`id`, `job_group`, `company`, `internship_type`, `position`, `description`, `responsibilities`, `requirements`, `salary`, `status`, `salary_status`, `student_list`) VALUES
(6, 'Abc', 'IBM', 'bbb', 'wertyu', 'wertyujk', 'sdfghjkl', 'erthjk', 'dfghjk', 'Unopened', 'Unpaid', ''),
(3, 'Lmn', 'IBM', 'bbb', 'ertyu', ' ertyui ', ' ertyu ', ' ertyui ', 'ertyui', 'Open', 'Paid', 'shrada@gmail.com,ankit@gmail.com'),
(8, 'Lmn', 'IBM', 'bbb', 'sdfghj', 'werty', 'wertyui', 'drtyui', 'retyui', 'Open', 'Paid', 'Available For All Students');

-- --------------------------------------------------------

--
-- Table structure for table `job_group`
--

CREATE TABLE `job_group` (
  `job_group_id` int(11) NOT NULL,
  `job_group_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_group`
--

INSERT INTO `job_group` (`job_group_id`, `job_group_name`) VALUES
(1, 'Abc'),
(2, 'Lmn');

-- --------------------------------------------------------

--
-- Table structure for table `provience`
--

CREATE TABLE `provience` (
  `provience_id` int(11) NOT NULL,
  `provience_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provience`
--

INSERT INTO `provience` (`provience_id`, `provience_name`) VALUES
(5, 'Ontario'),
(2, 'Xyz'),
(4, 'Abc');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `email`, `password`, `role`) VALUES
(3, 'deepak@gmail.com', 'deepak123', '1'),
(5, 'abc@gmail.com', 'abc123', '1'),
(14, 'shrada@gmail.com', 'shrada123', '3'),
(13, 'ankit@gmail.com', 'ankit123', '3'),
(16, 'rahul@gmail.com', 'rahul123', '2');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` varchar(100) NOT NULL,
  `roll_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `roll_name`) VALUES
('1', 'Staff'),
('2', 'Faculty'),
('3', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `semester_registered`
--

CREATE TABLE `semester_registered` (
  `semreg_id` int(11) NOT NULL,
  `semreg_name` varchar(100) NOT NULL,
  `semreg_year` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_registered`
--

INSERT INTO `semester_registered` (`semreg_id`, `semreg_name`, `semreg_year`) VALUES
(1, 'Fall', '2012'),
(2, 'Winter', '2013');

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`id`, `email`, `name`, `contact`) VALUES
(1, 'deepak@gmail.com', 'deepak', '9876543210'),
(3, 'abc@gmail.com', 'abc', '9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `student_certification_details`
--

CREATE TABLE `student_certification_details` (
  `id` int(11) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `certification` varchar(100) NOT NULL,
  `certification_body` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_certification_details`
--

INSERT INTO `student_certification_details` (`id`, `student_id`, `student_email`, `certification`, `certification_body`) VALUES
(5, 's1111', 'shrada@gmail.com', 'Java', 'Oracle'),
(4, 's1111', 'shrada@gmail.com', 'Android', 'Google'),
(3, 'Ankit', 'ankit@gmail.com', 'Android', 'google');

-- --------------------------------------------------------

--
-- Table structure for table `student_degree_details`
--

CREATE TABLE `student_degree_details` (
  `id` int(11) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `degree_title` varchar(100) NOT NULL,
  `degree_cgpa` varchar(100) NOT NULL,
  `degree_university` varchar(100) NOT NULL,
  `degree_country` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_degree_details`
--

INSERT INTO `student_degree_details` (`id`, `student_id`, `student_email`, `degree`, `degree_title`, `degree_cgpa`, `degree_university`, `degree_country`) VALUES
(4, 's1111', 'shrada@gmail.com', 'Graduate', 'mtech', '1234', 'Haryana University', 'India'),
(3, 's1111', 'shrada@gmail.com', 'Graduate', 'btech', '1233', 'Jammu University', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_id` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `current_past` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `gpa` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_id`, `fname`, `mname`, `lname`, `telephone`, `gender`, `country`, `status`, `current_past`, `semester`, `gpa`, `email`) VALUES
('s1111', 'Shrada', 'lmn', 'xyz', '9876543210', 'Female', 'India', 'Permanent Resident', 'Past Student', 'Fall 2012', '1211', 'shrada@gmail.com'),
('Ankit', 'abc', 'lmn', 'xyz', '7654321098', 'Male', 'India', 'Permanent Resident', 'Past Student', 'Winter 2013', '3211', 'ankit@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internship_type`
--
ALTER TABLE `internship_type`
  ADD PRIMARY KEY (`internship_type_id`);

--
-- Indexes for table `job_details`
--
ALTER TABLE `job_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_group`
--
ALTER TABLE `job_group`
  ADD PRIMARY KEY (`job_group_id`);

--
-- Indexes for table `provience`
--
ALTER TABLE `provience`
  ADD PRIMARY KEY (`provience_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester_registered`
--
ALTER TABLE `semester_registered`
  ADD PRIMARY KEY (`semreg_id`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_certification_details`
--
ALTER TABLE `student_certification_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_degree_details`
--
ALTER TABLE `student_degree_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `faculty_details`
--
ALTER TABLE `faculty_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `internship_type`
--
ALTER TABLE `internship_type`
  MODIFY `internship_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `job_details`
--
ALTER TABLE `job_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `job_group`
--
ALTER TABLE `job_group`
  MODIFY `job_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `provience`
--
ALTER TABLE `provience`
  MODIFY `provience_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `semester_registered`
--
ALTER TABLE `semester_registered`
  MODIFY `semreg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student_certification_details`
--
ALTER TABLE `student_certification_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_degree_details`
--
ALTER TABLE `student_degree_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
