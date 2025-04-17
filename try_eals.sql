-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2025 at 05:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `try_eals`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` bigint(20) NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `middleName` varchar(100) DEFAULT NULL,
  `extensionName` varchar(50) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `maritalStatus` varchar(50) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `monthlySalary` decimal(10,2) DEFAULT NULL,
  `motherName` varchar(100) DEFAULT NULL,
  `motherOccupation` varchar(100) DEFAULT NULL,
  `fatherName` varchar(100) DEFAULT NULL,
  `fatherOccupation` varchar(100) DEFAULT NULL,
  `householdSalary` decimal(10,2) DEFAULT NULL,
  `housing` varchar(50) DEFAULT NULL,
  `livingArrangement` varchar(50) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `gradeLevel` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alsEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `psilevel` int(11) DEFAULT NULL,
  `lrn` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `firstName`, `middleName`, `extensionName`, `lastName`, `dateOfBirth`, `gender`, `maritalStatus`, `occupation`, `monthlySalary`, `motherName`, `motherOccupation`, `fatherName`, `fatherOccupation`, `householdSalary`, `housing`, `livingArrangement`, `school`, `gradeLevel`, `email`, `alsEmail`, `password`, `psilevel`, `lrn`, `address`) VALUES
(2, 'Maria', 'Isabel', '', 'Santos', '2007-08-22', 'Female', 'Single', 'Student', 1500.00, 'Carmela Santos', 'Teacher', 'Antonio Santos', 'Doctor', 60000.00, 'Own', 'House', 'Quezon Science High School', 'Grade 11', 'maria.s@email.com', 'maria.s@als.edu.ph', 'secure123', 9, '987654321098', '456 Dahlia St, Quezon City'),
(3, 'Ricardo', 'Luis', '', 'Reyes', '2009-01-20', 'Male', 'Single', 'Student', 1000.00, 'Sofia Reyes', 'Accountant', 'Antonio Reyes', 'Engineer', 55000.00, 'Renting', 'Apartment', 'Pasig Elementary School', 'Grade 9', 'ricardo.r@email.com', 'ricardo.r@als.edu.ph', 'pass1!', 7, '202512345678', '789 Rizal St, Pasig City'),
(4, 'Elena', 'Marie', '', 'Garcia', '2006-05-10', 'Female', 'Single', 'Student', 0.00, 'Theresa Garcia', 'Nurse', 'Miguel Garcia', 'Teacher', 40000.00, 'Own', 'House', 'Quezon City National High School', 'Grade 12', 'elena.g@email.com', 'elena.g@als.edu.ph', 'secure2@', 10, '202498765432', '101 Katipunan Ave, Quezon City'),
(5, 'Carlo', 'Jose', '', 'Lim', '2010-11-03', 'Male', 'Single', 'Student', 500.00, 'Catherine Lim', 'Businesswoman', 'Robert Lim', 'Businessman', 80000.00, 'Own', 'Condominium', 'San Juan Science High School', 'Grade 8', 'carlo.l@email.com', 'carlo.l@als.edu.ph', 'strong3#', 6, '202654321098', '222 Wilson St, San Juan City'),
(6, 'Sofia', 'Grace', '', 'Tan', '2005-07-18', 'Female', 'Single', 'Student', 2000.00, 'Andrea Tan', 'Lawyer', 'Benjamin Tan', 'Accountant', 70000.00, 'Mortgaged', 'House', 'Manila High School', 'Grade 12', 'sofia.t@email.com', 'sofia.t@als.edu.ph', 'complex4$', 11, '202311223344', '333 Taft Ave, Manila City'),
(7, 'Daniel', 'Paul', '', 'Sy', '2009-03-25', 'Male', 'Single', 'Student', 0.00, 'Michelle Sy', 'Chef', 'Michael Sy', 'Restaurant Owner', 65000.00, 'Own', 'House', 'Caloocan High School', 'Grade 9', 'daniel.s@email.com', 'daniel.s@als.edu.ph', 'user5%', 8, '202588990011', '444 EDSA, Caloocan City'),
(8, 'Isabella', 'Mae', '', 'Lopez', '2006-12-01', 'Female', 'Single', 'Student', 1200.00, 'Jessica Lopez', 'Marketing Manager', 'Edward Lopez', 'Sales Representative', 50000.00, 'Renting', 'Apartment', 'Valenzuela National High School', 'Grade 11', 'isabella.l@email.com', 'isabella.l@als.edu.ph', 'pass6^', 9, '202422334455', '555 MacArthur Hwy, Valenzuela City'),
(9, 'Gabriel', 'Ryan', '', 'Fernandez', '2010-06-15', 'Male', 'Single', 'Student', 750.00, 'Patricia Fernandez', 'Librarian', 'Victor Fernandez', 'Writer', 45000.00, 'Own', 'House', 'Malabon Comprehensive High School', 'Grade 8', 'gabriel.f@email.com', 'gabriel.f@als.edu.ph', 'secure7*', 7, '202699001122', '666 Gen. Luna St, Malabon City'),
(10, 'Samantha', 'Nicole', '', 'Rivera', '2005-09-28', 'Female', 'Single', 'Student', 1800.00, 'Cecilia Rivera', 'Social Worker', 'Oscar Rivera', 'Police Officer', 60000.00, 'Mortgaged', 'House', 'Las Piñas National High School', 'Grade 12', 'samantha.r@email.com', 'samantha.r@als.edu.ph', 'complex8(', 10, '202333445566', '777 Alabang-Zapote Rd, Las Piñas City'),
(11, 'Adrian', 'Kyle', '', 'Cruz', '2008-02-12', 'Male', 'Single', 'Student', 0.00, 'Lorena Cruz', 'Bank Teller', 'Manuel Cruz', 'Driver', 35000.00, 'Renting', 'Apartment', 'Muntinlupa High School', 'Grade 10', 'adrian.c@email.com', 'adrian.c@als.edu.ph', 'user9)', 8, '202544556677', '888 National Rd, Muntinlupa City'),
(12, 'Jasmine', 'Rose', '', 'Padilla', '2007-07-05', 'Female', 'Single', 'Student', 1100.00, 'Gloria Padilla', 'Pharmacist', 'Fernando Padilla', 'Electrician', 52000.00, 'Own', 'House', 'Parañaque National High School', 'Grade 11', 'jasmine.p@email.com', 'jasmine.p@als.edu.ph', 'pass10+', 9, '202477889900', '999 Sucat Rd, Parañaque City'),
(13, 'Kevin', 'James', '', 'Santos', '2009-09-30', 'Male', 'Single', 'Student', 600.00, 'Marissa Santos', 'Call Center Agent', 'Robert Santos', 'Mechanic', 40000.00, 'Renting', 'Apartment', 'Taguig Science High School', 'Grade 9', 'kevin.s@email.com', 'kevin.s@als.edu.ph', 'secure11-', 7, '202611223344', '111 BGC Ave, Taguig City'),
(14, 'Angelica', 'Lynn', '', 'Reyes', '2006-03-18', 'Female', 'Single', 'Student', 1600.00, 'Cecille Reyes', 'Real Estate Agent', 'Dennis Reyes', 'Architect', 75000.00, 'Own', 'Condominium', 'Pasay City East High School', 'Grade 12', 'angelica.r@email.com', 'angelica.r@als.edu.ph', 'strong12=', 10, '202355667788', '222 Roxas Blvd, Pasay City'),
(15, 'Nathan', 'Blake', '', 'Gonzales', '2010-01-05', 'Male', 'Single', 'Student', 300.00, 'Evelyn Gonzales', 'Baker', 'Arnold Gonzales', 'Electrician', 38000.00, 'Renting', 'House', 'Mandaluyong High School', 'Grade 8', 'nathan.g@email.com', 'nathan.g@als.edu.ph', 'user13[', 6, '202599001122', '333 Shaw Blvd, Mandaluyong City'),
(16, 'Kimberly', 'Joy', '', 'Villanueva', '2005-11-22', 'Female', 'Single', 'Student', 2200.00, 'Susan Villanueva', 'Travel Agent', 'Ronald Villanueva', 'Seaman', 68000.00, 'Mortgaged', 'House', 'San Mateo High School', 'Grade 12', 'kimberly.v@email.com', 'kimberly.v@als.edu.ph', 'complex14]', 11, '202433445566', '444 Gen. Luna Ave, San Mateo'),
(17, 'Joshua', 'Caleb', '', 'Torres', '2008-05-30', 'Male', 'Single', 'Student', 0.00, 'Theresa Torres', 'Factory Worker', 'Ben Torres', 'Security Guard', 32000.00, 'Renting', 'Apartment', 'Marikina High School', 'Grade 10', 'joshua.t@email.com', 'joshua.t@als.edu.ph', 'pass15{', 8, '202677889900', '555 Marcos Hwy, Marikina City'),
(18, 'Princess', 'Elaine', '', 'Castro', '2007-09-10', 'Female', 'Single', 'Student', 1300.00, 'Olivia Castro', 'Hairdresser', 'Edgar Castro', 'Carpenter', 48000.00, 'Own', 'House', 'Antipolo National High School', 'Grade 11', 'princess.c@email.com', 'princess.c@als.edu.ph', 'secure16}', 9, '202311223344', '666 Sumulong Hwy, Antipolo City'),
(19, 'Miguel', 'Angelo', '', 'Perez', '2009-02-25', 'Male', 'Single', 'Student', 800.00, 'Sofia Perez', 'Office Clerk', 'Ramon Perez', 'Bus Driver', 36000.00, 'Renting', 'House', 'Cainta National High School', 'Grade 9', 'miguel.p@email.com', 'miguel.p@als.edu.ph', 'strong17;', 7, '202555667788', '777 Ortigas Ave Ext, Cainta'),
(20, 'Charlene', 'Ruth', '', 'De Guzman', '2006-07-01', 'Female', 'Single', 'Student', 1900.00, 'Grace De Guzman', 'Secretary', 'Alfredo De Guzman', 'Factory Supervisor', 62000.00, 'Mortgaged', 'House', 'Taytay Senior High School', 'Grade 12', 'charlene.d@email.com', 'charlene.d@als.edu.ph', 'complex18:', 10, '202499001122', '888 Manila East Rd, Taytay');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `sex` enum('Male','Female','Other') DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `bachelors_degree` varchar(100) DEFAULT NULL,
  `masters_degree` varchar(100) DEFAULT NULL,
  `doctorate_degree` varchar(100) DEFAULT NULL,
  `bachelors_school` varchar(100) DEFAULT NULL,
  `masters_school` varchar(100) DEFAULT NULL,
  `doctorate_school` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher_id`, `email`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `sex`, `contact_number`, `address`, `bachelors_degree`, `masters_degree`, `doctorate_degree`, `bachelors_school`, `masters_school`, `doctorate_school`, `password`, `created_at`, `updated_at`) VALUES
(56, 'eals3554', 'admin@school.com', 'Luis', 'Paterno', 'Galapon', '2000-08-26', 'Male', '', '', '', '', '', '', '', '', 'eals3554galapon', '2025-04-17 10:57:30', '2025-04-17 10:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_activity_log`
--

CREATE TABLE `teacher_activity_log` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(255) DEFAULT NULL,
  `action` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`details`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_activity_log`
--

INSERT INTO `teacher_activity_log` (`id`, `teacher_id`, `action`, `timestamp`, `details`) VALUES
(17, 'eals3554', 'add', '2025-04-17 10:57:30', '{\"name\":\"Luis Galapon\",\"details\":{\"id\":56,\"teacher_id\":\"eals3554\",\"email\":\"admin@school.com\",\"first_name\":\"Luis\",\"middle_name\":\"Paterno\",\"last_name\":\"Galapon\",\"date_of_birth\":\"2000-08-26\",\"sex\":\"Male\",\"contact_number\":\"\",\"address\":\"\",\"bachelors_degree\":\"\",\"masters_degree\":\"\",\"doctorate_degree\":\"\",\"bachelors_school\":\"\",\"masters_school\":\"\",\"doctorate_school\":\"\",\"password\":\"eals3554galapon\"}}'),
(18, 'eals8911', 'update', '2025-04-17 10:57:48', '{\"name\":\"Sophia Phyllis Lim\",\"details\":{\"id\":\"55\",\"teacher_id\":\"eals8911\",\"email\":\"sophia@gmail.com\",\"first_name\":\"Sophia Phyllis\",\"middle_name\":\"Paterno\",\"last_name\":\"Lim\",\"date_of_birth\":\"2006-02-25\",\"sex\":\"Female\",\"contact_number\":\"09123456789\",\"address\":\"Krus na ligaw\",\"bachelors_degree\":\"Information Technology\",\"masters_degree\":\"\",\"doctorate_degree\":\"\",\"bachelors_school\":\"QCU\",\"masters_school\":\"\",\"doctorate_school\":\"\",\"password\":\"eals8911lim\"}}'),
(19, 'eals8911', 'update', '2025-04-17 10:57:56', '{\"name\":\"Sophia Phyllis Lim\",\"details\":{\"id\":\"55\",\"teacher_id\":\"eals8911\",\"email\":\"sophia@gmail.com\",\"first_name\":\"Sophia Phyllis\",\"middle_name\":\"Paterno\",\"last_name\":\"Lim\",\"date_of_birth\":\"2006-02-24\",\"sex\":\"Female\",\"contact_number\":\"09123456789\",\"address\":\"Krus na ligaw\",\"bachelors_degree\":\"Information Technology\",\"masters_degree\":\"\",\"doctorate_degree\":\"\",\"bachelors_school\":\"QCU\",\"masters_school\":\"\",\"doctorate_school\":\"\",\"password\":\"eals8911lim\"}}'),
(20, 'eals8911', 'delete', '2025-04-17 15:11:46', '{\"name\":\"Sophia Phyllis Lim\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teacher_id` (`teacher_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `teacher_activity_log`
--
ALTER TABLE `teacher_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `teacher_activity_log`
--
ALTER TABLE `teacher_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
