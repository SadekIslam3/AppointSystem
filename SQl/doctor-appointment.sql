-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2022 at 06:07 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor-appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `number`, `email`, `user_name`, `password`) VALUES
(4, 'Asad Ahmed', '01737820123', 'asadbd@gmail.com', 'asad', 'asad'),
(6, 'Sadekul', '01737820103', 'shahed103@gmail', 'sadek', 'sadek'),
(7, 'Minhazul', '01737820129', 'minhaz@.com', 'moon', 'moon');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_store`
--

CREATE TABLE `appointment_store` (
  `store_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `symptom` varchar(100) NOT NULL,
  `medicine_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `appointment_store`
--

INSERT INTO `appointment_store` (`store_id`, `doctor_id`, `doctor_name`, `patient_name`, `symptom`, `medicine_name`) VALUES
(1, 1, 'Dr. Md. Rashadul Kabir', 'Shahed ', 'Taifoyet', 'Namp,paracitamol'),
(2, 4, 'Dr. Samia Chharra', 'Shahed ', 'qwertt', 'paracitamol');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `image_name`) VALUES
(5, 'Cardiology', 'Catagory_932.png'),
(6, 'Medicine', 'catagory_471.png'),
(7, 'Newborn & Child Disease', 'catagory_134.jpg'),
(8, 'Surgery', 'catagory_966.png'),
(10, 'Dental', 'catagory_652.png'),
(11, 'Orthopaedics', 'catagory_440.png'),
(12, 'Psychology', 'catagory_193.png'),
(13, 'Eye', 'catagory_129.png'),
(14, 'asdfghjhj', 'catagory_105.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `doctorpanel`
--

CREATE TABLE `doctorpanel` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `depart_name` varchar(100) NOT NULL,
  `email_name` varchar(255) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `doctorpanel`
--

INSERT INTO `doctorpanel` (`doctor_id`, `doctor_name`, `depart_name`, `email_name`, `user_name`, `password`) VALUES
(2, 'Dr. Md. Rashadul Kabir', 'Medicine ', 'rashadul@gmail.com', 'Rashadul', 'rashadul'),
(3, 'Dr. Md. Rafiqul Islam', 'Medicine ', 'rafiqul@gmail.com', 'Rafiqul', 'rafiqul'),
(4, 'Dr. Mostofa Md. Ekramul Hasan', 'Dental', 'mostofa@gmail.com', 'Mostofa', 'mostofa'),
(5, 'Dr. Faria Hossen Shanta', 'Dental', 'faria@gmail.com', 'Faria', 'faria');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `email_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `catagory_id` int(11) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `chamber_name` varchar(255) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `day` varchar(50) NOT NULL,
  `time_schedule` varchar(100) NOT NULL,
  `floor_no` varchar(20) NOT NULL,
  `room_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `doctor_name`, `email_name`, `password`, `image_name`, `catagory_id`, `degree`, `chamber_name`, `designation`, `day`, `time_schedule`, `floor_no`, `room_no`) VALUES
(1, 'Dr. Md. Rashadul Kabir', 'rashadul@gmail.com', 'rashadul', 'Doctor_263.jpg', 6, 'MBBS, BCS (Health), MD (Medicine)', 'Ibn Sina Bogura', 'Assistant Professor', 'Sunday to Thursday & Friday', '3:00 pm to 9:00 pm & 10:00 am to 12:00 pm', ' 6th Floor', '604'),
(2, 'Dr. Md. Younus Ali', 'younus@gmail.com', 'younus', 'Doctor_143.jpg', 5, 'MBBS, CCD (BIRDEM), D-card (Cardiology) BSMMU', 'Ibn Sina Bogura', 'Assistant Professor', 'Everyday', '3:30pm to 9:00pm', ' 7th Floor', '706'),
(3, 'Professor Dr. A. K Boshak', 'akboshak@gmail.com', 'akboshak', 'Doctor_726.jpg', 7, 'MBBS, BCS (Health), DCH, FCPS (Child), MD (Newborn Medicine)', 'Ibn Sina Bogura', 'Professor', 'Everyday', '4.30 PM to 5.30 PM', ' 6th Floor', '606'),
(4, 'Dr. Samia Chharra', 'samia@gmail.com', 'samia', 'Doctor_395.jpg', 7, 'MBBS, MCPS (Child), FCPS (Child)', 'Ibn Sina Bogura', 'Assistant Professor', 'Everyday', '02:00 pm to 07:00 pm', ' 6th Floor', '607'),
(5, 'Dr. Md. Rafiqul Islam', 'rafiqul@gmail.com', 'rafiqul', 'doctor_625.jpg', 6, 'MBBS, FCPS (Medicine) BSMMU', 'Ibn Sina Bogura', 'Senior Consultant', 'Saturday to Thursday and Friday', '2:00pm to 8:00pm & 9:00 to 12:00pm', '5th Floor', '506'),
(6, 'Dr. Md. Ahsan Habib', 'ahsan@gmail.com', 'ahsan', 'doctor_690.jpg', 6, 'MBBS, BCS (Health), FCPS (Medicine), MACP (USA)', 'Ibn Sina Bogura', 'Assistant Professor', ' Every Sunday, Monday & Wednesday', '4.00PM - 9.00 PM', '4th Floor', '401'),
(7, 'Dr. Md. Shaharul Alam Mondol', 'shaharul@gmail.com', 'shaharul', 'Doctor_718.jpg', 8, 'MBBS, BCS (Health), MS (Surgery)', 'Ibn Sina Bogura', 'Assistant Professor', 'Every Saturday, Monday & Thursday', '3:00 PM to 8:00 PM', ' 9th Floor', '903'),
(8, 'Dr. Jobayer Ahammed Khan', 'jobayer@gmail.com', 'jobayer', 'doctor_654.jpg', 6, 'MBBS (CMC), BCS (HEALTH), FCPS (MEDICINE)', 'Ibn Sina Bogura', 'Consultant', ' Everyday', '3.00PM - 8.00 PM', '5th Floor', '507'),
(9, 'Dr. Md. Salimullah Akando', 'salimullah@gmail.com', 'salimullah', 'doctor_832.jpg', 8, 'MBBS, BCS (Health), MS (General Surgeon) DMC', 'Ibn Sina Bogura', 'General Surgeon', 'Saturday to Wednesday', '7:00 pm to 9:00 pm', ' 9th Floor', '902'),
(10, 'Dr. Manobendra Kumar Paul (Niloy)', 'manobendra@gmail.com', 'manobendra', 'doctor_111.jpg', 8, 'MBBS, BCS (Health), FCPS (Surgery), MS (HBS-Surgery)', 'Ibn Sina Bogura', 'Consultant', ' Saturday, Tuesday & Thursday', '3.00 pm to 6.00 pm', '4th Floor', '402'),
(11, 'Dr. A K M Rezwanul Islam', 'rezwanul@gmail.com', 'rezwanul', 'doctor_807.jpg', 5, 'MBBS, BCS (Health), MD (Cardiology)', 'Ibn Sina Bogura', 'Junior Consultant', 'Saturday to Thursday', ' 4.00 pm to 9:00 pm', ' 6th Floor', '605'),
(12, 'Dr. Mohammad Ruhul Amin Manzil', 'ruhulamin@gmail.com', 'ruhulamin', 'Doctor_449.jpg', 5, 'MBBS, BCS (Health), MD (Cardiology)', 'Ibn Sina Bogura', 'Consultant', 'Saturday to Wednesday', '(3.00PM - 4.00PM) & (6:00 PM - 8:00 PM)', ' 6th Floor', '601'),
(13, 'Dr. Md. Shahadat Hossain', 'shahadat@gmail.com', 'shahadat', 'doctor_587.jpg', 5, 'MBBS, BCS (Health), MD (Cardiology)', 'Ibn Sina Bogura', 'Assistant Professor', 'Saturday to Wednesday', '3.00 PM to 08.00 PM', ' 9th Floor', '901'),
(14, 'Dr. Md. Arifur Rahman Talukdar', 'arifurrahman@gmail.com', 'arifurrahman', 'doctor_954.jpg', 11, 'MBBS, BCS (Health), D-Ortho (Nitor), AO Trauma (India)', 'Ibn Sina Bogura', 'Ex-Orthopaedic Consultant', 'Everyday ', '5.00pm to 8.00pm', ' 6th Floor', '606'),
(15, 'Dr. Md. Nazibullah', 'nazibullah@gmail.com', 'nazibullah', 'doctor_801.jpg', 11, 'MBBS (DU), D-Ortho ( DMC)', 'Ibn Sina Bogura', 'Assistant Professor', 'Everyday', '4:30 pm to 8:00 pm', '4th Floor', '402'),
(16, 'Dr. A K M Shaharul Islam', 'akmshaharul@gmail.com', 'akmshaharul', 'doctor_294.jpg', 11, 'MBBS, D-Ortho, Surgery ( BSMMU)', 'Ibn Sina Bogura', 'Assistant Professor', 'Everyday', '5:00 pm to 8:00 pm', ' 7th Floor', '708'),
(17, ' Dr. Md. Abul Kalam Azad', 'abdulkalam@gmail.com', 'abdulkalam', 'doctor_486.jpg', 13, 'MBBS, DO, FCPS (Eye)', 'Ibn Sina Bogura', 'Chief Consultant', 'Everyday', '5.00 PM - 8.00 PM', '7th Floor', '702'),
(18, 'Dr. Mostofa Md. Ekramul Hasan', 'mostofaekramul@gmail.com', 'mostofaekramul', 'doctor_523.jpg', 10, 'BDS, MS (Prosthodontics)', 'Ibn Sina Bogura', 'Assistant Professor', 'Every Saturday, Tuesday & Thursday', '4.00 PM - 8.00 PM', '8th Floor', '802'),
(19, 'Dr. Faria Hossen Shanta', 'fariashanta@gmail.com', 'fariashanta', 'doctor_62.jpg', 10, 'BDS, PGT (Dentistry)', 'Ibn Sina Bogura', '', 'Saturday to Thursday', '10.00 AM - 1.00 PM', '8th Floor', '802'),
(21, 'Dr. Sharmin Sultana', 'sharminsultana@gmail.com', 'sharminsultana', 'doctor_300.jpg', 7, 'MBBS (RU), DCH (BSMMU), FCPS (P-2)', 'Ibn Sina Bogura', '', ' Friday', '3.00 PM to 7.00 PM', '5th Floor', '503'),
(22, 'Dr. Md. Shahriar Faruk', 'shahriarfaruk@gmail.com', 'shahriarfaruk', 'doctor_381.jpg', 12, 'MBBS, BCS (Health), MCPS, MD (Psychiatry)', 'Ibn Sina Bogura', 'Registrar', 'Saturday to Thursday', '3.00 PM - 7.00 PM', '9th Floor', '901'),
(23, 'rony', 'rony@gmail.com', 'rony', 'doctor_297.jpg', 12, 'MBBS, BCS (Health), MS (Surgery)', 'Ibn Sina Bogura', 'Consultant', 'Everyday', '3:30pm to 9:00pm', '9th Floor', '910');

-- --------------------------------------------------------

--
-- Table structure for table `patient_appointment`
--

CREATE TABLE `patient_appointment` (
  `appointment_id` int(11) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_address` varchar(255) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `symptom` varchar(100) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `depart_name` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `patient_appointment`
--

INSERT INTO `patient_appointment` (`appointment_id`, `patient_name`, `patient_address`, `phone_no`, `gender`, `symptom`, `doctor_id`, `doctor_name`, `depart_name`, `date`) VALUES
(2, 'sagor', 'majhira', '145896', 'male', 'sdjgsugh', 1, 'Dr. Md. Rashadul Kabir', 'Medicine', '15-03-2022'),
(3, 'Sagor', 'shajahanpur', '01737820121', 'male', 'kolera', 2, 'Dr. Md. Younus Ali', 'Cardiology', '17-03-2022'),
(4, 'Sagor', 'shajahanpur', '01737820121', 'male', 'Jondesh', 11, 'Dr. A K M Rezwanul Islam', 'Cardiology', '02-04-2022'),
(7, 'Sadek Islam', 'Shajahanpur', '01737820103', 'male', 'Leg pain', 9, 'Dr. Md. Salimullah Akando', 'Surgery', '24-03-2022'),
(11, 'Sadek Islam', 'Shajahanpur', '01737820103', 'male', 'zxcvbn', 23, 'rony', 'Psychology', '03-28-2022'),
(12, 'Sadek Islam', 'Shajahanpur', '01737820103', 'male', 'asqwer', 17, ' Dr. Md. Abul Kalam Azad', 'Eye', '03-16-2022'),
(13, 'Shahed', 'Kharna', '01737820103', 'male', 'fiver', 11, 'Dr. A K M Rezwanul Islam', 'Cardiology', '2022-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `email_name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `address`, `phone_no`, `email_name`, `password`, `age`, `gender`) VALUES
(1, 'Azfar', 'jvsjkksljkljk', '0178952232', 'sadek295@gmail.com', '123', 24, 'male'),
(3, 'Shahed', 'Kharna', '01737820103', 'shahed125@gmail.com', '789', 26, 'male'),
(4, 'Sagor', 'shajahanpur', '01737820121', 'sagor@fk.com', '1456', 26, 'male'),
(5, 'Sadek Islam', 'Shajahanpur', '01737820103', 'sadek@gmail.com', 'sadek', 24, 'male'),
(6, 'Shahed', 'Krarna ', '01737820301', 'shahed@gmail.com', 'shahed', 25, 'male'),
(7, 'mota', 'mota1', '01111', 'mota@h.c', '412', 69, 'other');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_store`
--
ALTER TABLE `appointment_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `doctorpanel`
--
ALTER TABLE `doctorpanel`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patient_appointment`
--
ALTER TABLE `patient_appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `appointment_store`
--
ALTER TABLE `appointment_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `doctorpanel`
--
ALTER TABLE `doctorpanel`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `patient_appointment`
--
ALTER TABLE `patient_appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
