-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 02:29 PM
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
-- Database: `mnhs_content_checklist_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_abm`
--

CREATE TABLE `tbl_abm` (
  `status` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `hours` varchar(255) NOT NULL,
  `1st_sem` varchar(255) NOT NULL,
  `2nd_sem` varchar(255) NOT NULL,
  `3rd_sem` varchar(255) NOT NULL,
  `4th_sem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_abm`
--

INSERT INTO `tbl_abm` (`status`, `subjects`, `hours`, `1st_sem`, `2nd_sem`, `3rd_sem`, `4th_sem`) VALUES
('false', 'Oral Communication', '80', 'false', 'false', 'false', 'false'),
('false', 'Reading and Writing', '80', 'false', 'false', 'false', 'false'),
('false', 'Komunikasyon at Pananaliksik sa Wika at Kulturang Pilipino', '80', 'false', 'false', 'false', 'false'),
('false', 'Pagbasa at Pagsusuri ng Iba\'t Ibang Teksto Tungo sa Pananaliksik', '80', 'false', 'false', 'false', 'false'),
('false', '21st Century Literature from the Philippines and the World', '80', 'false', 'false', 'false', 'false'),
('false', 'Contemporary Philippine Arts from the Regions', '80', 'false', 'false', 'false', 'false'),
('false', 'Media and Information Literacy', '80', 'false', 'false', 'false', 'false'),
('false', 'General Mathematics', '80', 'false', 'false', 'false', 'false'),
('false', 'Statistics and Probability', '80', 'false', 'false', 'false', 'false'),
('false', 'Earth and Life Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Personal Development / Pansariling Kaunlaran', '80', 'false', 'false', 'false', 'false'),
('false', 'Understanding Culture, Society and Politics', '80', 'false', 'false', 'false', 'false'),
('false', 'Introduction to the Philosophy of the Human Person / Pambungad sa Pilosopiya ng Tao', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 1', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 2', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 3', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 4', '20', 'false', 'false', 'false', 'false'),
('false', 'English for Academic and Professional ', '80', 'false', 'false', 'false', 'false'),
('false', 'Research in Daily Life 1', '80', 'false', 'false', 'false', 'false'),
('false', 'Research in Daily Life 2', '80', 'false', 'false', 'false', 'false'),
('false', 'Filipino sa Piling Larang', '80', 'false', 'false', 'false', 'false'),
('false', 'Empowerment Technologies', '80', 'false', 'false', 'false', 'false'),
('false', 'Entrepreneurship', '80', 'false', 'false', 'false', 'false'),
('false', 'Inquiries, Investigations, and Immersion', '80', 'false', 'false', 'false', 'false'),
('false', 'Organization and Management', '80', 'false', 'false', 'false', 'false'),
('false', 'Business Mathematics', '80', 'false', 'false', 'false', 'false'),
('false', 'Applied Economics', '80', 'false', 'false', 'false', 'false'),
('false', 'Fundamentals of Accounting, Business and Management 1', '80', 'false', 'false', 'false', 'false'),
('false', 'Fundamentals of Accounting, Business and Management 2', '80', 'false', 'false', 'false', 'false'),
('false', 'Principles of Marketing', '80', 'false', 'false', 'false', 'false'),
('false', 'Business Finance', '80', 'false', 'false', 'false', 'false'),
('false', 'Business Ethics and Social Responsibility', '80', 'false', 'false', 'false', 'false'),
('false', 'Work Immersion / Research / Career Advocacy / Culminating', '80', 'false', 'false', 'false', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_and`
--

CREATE TABLE `tbl_and` (
  `status` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `hours` varchar(255) NOT NULL,
  `1st_sem` varchar(255) NOT NULL,
  `2nd_sem` varchar(255) NOT NULL,
  `3rd_sem` varchar(255) NOT NULL,
  `4th_sem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_and`
--

INSERT INTO `tbl_and` (`status`, `subjects`, `hours`, `1st_sem`, `2nd_sem`, `3rd_sem`, `4th_sem`) VALUES
('false', 'Reading and Writing', '80', 'false', 'false', 'false', 'false'),
('false', 'Komunikasyon at Pananaliksik sa Wika at Kulturang Pilipino', '80', 'false', 'false', 'false', 'false'),
('false', 'Pagbasa at Pagsusuri ng Iba\'t Ibang Teksto Tungo sa Pananaliksik', '80', 'false', 'false', 'false', 'false'),
('false', '21st Century Literature from the Philippines and the World', '80', 'false', 'false', 'false', 'false'),
('false', 'Contemporary Philippine Arts from the Regions', '80', 'false', 'false', 'false', 'false'),
('false', 'Media and Information Literacy', '80', 'false', 'false', 'false', 'false'),
('false', 'General Mathematics', '80', 'false', 'false', 'false', 'false'),
('false', 'Statistics and Probability', '80', 'false', 'false', 'false', 'false'),
('false', 'Earth and Life Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Personal Development / Pansariling Kaunlaran', '80', 'false', 'false', 'false', 'false'),
('false', 'Understanding Culture, Society and Politics', '80', 'false', 'false', 'false', 'false'),
('false', 'Introduction to the Philosophy of the Human Person / Pambungad sa Pilosopiya ng Tao', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 1', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 2', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 3', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 4', '20', 'false', 'false', 'false', 'false'),
('false', 'English for Academic and Professional Purposes', '80', 'false', 'false', 'false', 'false'),
('false', 'Practical Research 1', '80', 'false', 'false', 'false', 'false'),
('false', 'Practical Research 2', '80', 'false', 'false', 'false', 'false'),
('false', 'Filipino sa Piling Larang', '80', 'false', 'false', 'false', 'false'),
('false', 'Empowerment ', '80', 'false', 'false', 'false', 'false'),
('false', 'Entrepreneurship', '80', 'false', 'false', 'false', 'false'),
('false', 'Inquiries, Investigations, and Immersion', '80', 'false', 'false', 'false', 'false'),
('false', 'Creative Industries 1: Arts and Design Appreciation and Production', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical and Personal Development in the Arts', '80', 'false', 'false', 'false', 'false'),
('false', 'Creative Industries 2: Performing Arts', '80', 'false', 'false', 'false', 'false'),
('false', 'Developing Filipino Identity in the Arts', '80', 'false', 'false', 'false', 'false'),
('false', 'Integrating the Elements and Principles of Organization in the Arts', '80', 'false', 'false', 'false', 'false'),
('false', 'Leadership and Management in Different Arts Fields', '80', 'false', 'false', 'false', 'false'),
('false', 'Performing Arts Production / Exhibit for Arts Production', '80', 'false', 'false', 'false', 'false'),
('false', 'Apprenticeship and Exploration of Different Arts Fields', '80', 'false', 'false', 'false', 'false'),
('false', 'Work Immersion / Research / Career Advocacy / Culminating Activity', '80', 'false', 'false', 'false', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gas`
--

CREATE TABLE `tbl_gas` (
  `status` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `hours` varchar(255) NOT NULL,
  `1st_sem` varchar(255) NOT NULL,
  `2nd_sem` varchar(255) NOT NULL,
  `3rd_sem` varchar(255) NOT NULL,
  `4th_sem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gas`
--

INSERT INTO `tbl_gas` (`status`, `subjects`, `hours`, `1st_sem`, `2nd_sem`, `3rd_sem`, `4th_sem`) VALUES
('false', 'Oral Communication', '80', 'false', 'false', 'false', 'false'),
('false', 'Reading and Writing', '80', 'false', 'false', 'false', 'false'),
('false', 'Komunikasyon at Pananaliksik sa Wika at Kulturang Pilipino', '80', 'false', 'false', 'false', 'false'),
('false', 'Pagbasa at Pagsusuri ng Iba\'t Ibang Teksto Tungo sa Pananaliksik', '80', 'false', 'false', 'false', 'false'),
('false', '21st Century Literature from the Philippines and the World', '80', 'false', 'false', 'false', 'false'),
('false', 'Contemporary Philippine Arts from the Regions', '80', 'false', 'false', 'false', 'false'),
('false', 'Media and Information Literacy', '80', 'false', 'false', 'false', 'false'),
('false', 'General Mathematics', '80', 'false', 'false', 'false', 'false'),
('false', 'Statistics and Probability', '80', 'false', 'false', 'false', 'false'),
('false', 'Earth and Life Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Personal Development / Pansariling Kaunlaran', '80', 'false', 'false', 'false', 'false'),
('false', 'Understanding Culture, Society and Politics', '80', 'false', 'false', 'false', 'false'),
('false', 'Introduction to the Philosophy of the Human Person / Pambungad sa Pilosopiya ng Tao', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 1', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 1', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 3', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 4', '20', 'false', 'false', 'false', 'false'),
('false', 'English for Academic and Professional', '80', 'false', 'false', 'false', 'false'),
('false', 'Research in Daily Life 1', '80', 'false', 'false', 'false', 'false'),
('false', 'Research in Daily Life 2', '80', 'false', 'false', 'false', 'false'),
('false', 'Filipino sa Piling Larang', '80', 'false', 'false', 'false', 'false'),
('false', 'Empowerment Technologies', '80', 'false', 'false', 'false', 'false'),
('false', 'Entrepreneurship', '80', 'false', 'false', 'false', 'false'),
('false', 'Inquiries, Investigations and Immersion', '80', 'false', 'false', 'false', 'false'),
('false', 'Elective 1 (Science Subject)', '80', 'false', 'false', 'false', 'false'),
('false', 'Elective 2 (Math / Science Subject)', '80', 'false', 'false', 'false', 'false'),
('false', 'Trends, Networks, and Critical Thinking in the 21st Century Culture', '80', 'false', 'false', 'false', 'false'),
('false', 'Disaster Risk Reduction and Readiness', '80', 'false', 'false', 'false', 'false'),
('false', 'Organization and Management', '80', 'false', 'false', 'false', 'false'),
('false', 'Applied Economics', '80', 'false', 'false', 'false', 'false'),
('false', 'Philippine Politics and Governance', '80', 'false', 'false', 'false', 'false'),
('false', 'Community Engagement, Solidarity, and Citizenship', '80', 'false', 'false', 'false', 'false'),
('false', 'Work Immersion / Research / Career Advocacy / Culminating Activity', '80', 'false', 'false', 'false', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_he`
--

CREATE TABLE `tbl_he` (
  `status` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `hours` varchar(255) NOT NULL,
  `1st_sem` varchar(255) NOT NULL,
  `2nd_sem` varchar(255) NOT NULL,
  `3rd_sem` varchar(255) NOT NULL,
  `4th_sem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_he`
--

INSERT INTO `tbl_he` (`status`, `subjects`, `hours`, `1st_sem`, `2nd_sem`, `3rd_sem`, `4th_sem`) VALUES
('false', 'Oral Communication', '80', 'false', 'false', 'false', 'false'),
('false', 'Reading and Writing', '80', 'false', 'false', 'false', 'false'),
('false', 'Komunikasyon at Pananaliksik sa Wika at Kulturang Pilipino', '80', 'false', 'false', 'false', 'false'),
('false', 'Pagbasa at Pagsusuri ng Iba\'t Ibang Teksto Tungo sa Pananaliksik', '80', 'false', 'false', 'false', 'false'),
('false', '21st Century Literature from the Philippines and the World', '80', 'false', 'false', 'false', 'false'),
('false', 'Contemporary Philippine Arts from the Regions', '80', 'false', 'false', 'false', 'false'),
('false', 'Media and Information Literacy', '80', 'false', 'false', 'false', 'false'),
('false', 'General Mathematics', '80', 'false', 'false', 'false', 'false'),
('false', 'Statistics and Probability', '80', 'false', 'false', 'false', 'false'),
('false', 'Earth and Life Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Personal Development / Pansariling Kaunlaran', '80', 'false', 'false', 'false', 'false'),
('false', 'Understanding Culture, Society and Politics', '80', 'false', 'false', 'false', 'false'),
('false', 'Introduction to the Philosophy of the Human Person / Pambungad sa Pilosopiya ng Tao', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 1', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 2', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 3', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 4', '20', 'false', 'false', 'false', 'false'),
('false', 'English for Academic and Professional Purposes', '80', 'false', 'false', 'false', 'false'),
('false', 'Practical Research 1', '80', 'false', 'false', 'false', 'false'),
('false', 'Practical Research 2', '80', 'false', 'false', 'false', 'false'),
('false', 'Filipino sa Piling Larang', '80', 'false', 'false', 'false', 'false'),
('false', 'Empowerment Technologies', '80', 'false', 'false', 'false', 'false'),
('false', 'Entrepreneurship', '80', 'false', 'false', 'false', 'false'),
('false', 'Inquiries, Investigations, and Immersion', '80', 'false', 'false', 'false', 'false'),
('false', 'Food and Beverages (160 hrs)', '160', 'false', 'false', 'false', 'false'),
('false', 'Bread and Pastry (160 hrs)', '160', 'false', 'false', 'false', 'false'),
('false', 'Cookery 1 (160 hrs)', '160', 'false', 'false', 'false', 'false'),
('false', 'Cookery 2 (160 hrs)', '160', 'false', 'false', 'false', 'false'),
('false', 'Work Immersion', '80', 'false', 'false', 'false', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ict`
--

CREATE TABLE `tbl_ict` (
  `status` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `hours` varchar(255) NOT NULL,
  `1st_sem` varchar(255) NOT NULL,
  `2nd_sem` varchar(255) NOT NULL,
  `3rd_sem` varchar(255) NOT NULL,
  `4th_sem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ict`
--

INSERT INTO `tbl_ict` (`status`, `subjects`, `hours`, `1st_sem`, `2nd_sem`, `3rd_sem`, `4th_sem`) VALUES
('false', 'Oral Communication', '80', 'false', 'false', 'false', 'false'),
('false', 'Reading and Writing', '80', 'false', 'false', 'false', 'false'),
('false', 'Komunikasyon at Pananaliksik sa Wika at Kulturang Pilipino', '80', 'false', 'false', 'false', 'false'),
('false', 'Pagbasa at Pagsusuri ng Iba\'t Ibang Teksto Tungo sa Pananaliksik', '80', 'false', 'false', 'false', 'false'),
('false', '21st Century Literature from the Philippines and the World', '80', 'false', 'false', 'false', 'false'),
('false', 'Contemporary Philippine Arts from the Regions', '80', 'false', 'false', 'false', 'false'),
('false', 'Media and Information Literacy', '80', 'false', 'false', 'false', 'false'),
('false', 'General Mathematics', '80', 'false', 'false', 'false', 'false'),
('false', 'Statistics and Probability', '80', 'false', 'false', 'false', 'false'),
('false', 'Earth and Life Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Personal Development / Pansariling Kaunlaran', '80', 'false', 'false', 'false', 'false'),
('false', 'Understanding Culture, Society and Politics', '80', 'false', 'false', 'false', 'false'),
('false', 'Introduction to the Philosophy of the Human Person / Pambungad sa Pilosopiya ng Tao', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 1', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 2', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 3', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 4', '20', 'false', 'false', 'false', 'false'),
('false', 'English for Academic and Professional Purposes', '80', 'false', 'false', 'false', 'false'),
('false', 'Practical Research 1', '80', 'false', 'false', 'false', 'false'),
('false', 'Practical Research 2', '80', 'false', 'false', 'false', 'false'),
('false', 'Filipino sa Piling Larang', '80', 'false', 'false', 'false', 'false'),
('false', 'Empowerment Technologies', '80', 'false', 'false', 'false', 'false'),
('false', 'Entrepreneurship', '80', 'false', 'false', 'false', 'false'),
('false', 'Inquiries, Investigations, and Immersion', '80', 'false', 'false', 'false', 'false'),
('false', 'Computer Programming 1 (160 hrs)', '160', 'false', 'false', 'false', 'false'),
('false', 'Computer Programming 2 (160 hrs)', '160', 'false', 'false', 'false', 'false'),
('false', 'Computer Programming 3 (160 hrs)', '160', 'false', 'false', 'false', 'false'),
('false', 'Computer Programming 4 (160 hrs)', '160', 'false', 'false', 'false', 'false'),
('false', 'Work Immersion', '80', 'false', 'false', 'false', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sports`
--

CREATE TABLE `tbl_sports` (
  `status` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `hours` varchar(255) NOT NULL,
  `1st_sem` varchar(255) NOT NULL,
  `2nd_sem` varchar(255) NOT NULL,
  `3rd_sem` varchar(255) NOT NULL,
  `4th_sem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sports`
--

INSERT INTO `tbl_sports` (`status`, `subjects`, `hours`, `1st_sem`, `2nd_sem`, `3rd_sem`, `4th_sem`) VALUES
('false', 'Oral Communication', '80', 'false', 'false', 'false', 'false'),
('false', 'Reading and Writing', '80', 'false', 'false', 'false', 'false'),
('false', 'Komunikasyon at Pananaliksik sa Wika at Kulturang Pilipino', '80', 'false', 'false', 'false', 'false'),
('false', 'Pagbasa at Pagsusuri ng Iba\'t Ibang Teksto Tungo sa Pananaliksik', '80', 'false', 'false', 'false', 'false'),
('false', '21st Century Literature from the Philippines and the World', '80', 'false', 'false', 'false', 'false'),
('false', 'Contemporary Philippine Arts from the Regions', '80', 'false', 'false', 'false', 'false'),
('false', 'Media and Information Literacy', '80', 'false', 'false', 'false', 'false'),
('false', 'General Mathematics', '80', 'false', 'false', 'false', 'false'),
('false', 'Statistics and Probability', '80', 'false', 'false', 'false', 'false'),
('false', 'Earth and Life Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Personal Development / Pansariling Kaunlaran', '80', 'false', 'false', 'false', 'false'),
('false', 'Understanding Culture, Society and Politics', '80', 'false', 'false', 'false', 'false'),
('false', 'Introduction to the Philosophy of the Human Person / Pambungad sa Pilosopiya ng Tao', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 1', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 2', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 3', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 4', '20', 'false', 'false', 'false', 'false'),
('false', 'English for Academic and Professional Purposes', '80', 'false', 'false', 'false', 'false'),
('false', 'Practical Research 1', '80', 'false', 'false', 'false', 'false'),
('false', 'Practical Research 2', '80', 'false', 'false', 'false', 'false'),
('false', 'Filipino sa Piling Larang', '80', 'false', 'false', 'false', 'false'),
('false', 'Empowerment Technologies', '80', 'false', 'false', 'false', 'false'),
('false', 'Entrepreneurship', '80', 'false', 'false', 'false', 'false'),
('false', 'Inquiries, Investigations, and Immersion', '80', 'false', 'false', 'false', 'false'),
('false', 'Human Movement', '80', 'false', 'false', 'false', 'false'),
('false', 'Safety and First Aid', '80', 'false', 'false', 'false', 'false'),
('false', 'Fundamentals of Coaching', '80', 'false', 'false', 'false', 'false'),
('false', 'Psychosocial Aspects of Sports and Exercise', '80', 'false', 'false', 'false', 'false'),
('false', 'Sports Officiating and Activity Management', '80', 'false', 'false', 'false', 'false'),
('false', 'Fitness, Sports and Recreation Leadership', '80', 'false', 'false', 'false', 'false'),
('false', 'In Campus Practicum', '80', 'false', 'false', 'false', 'false'),
('false', 'Fitness Testing and Exercise Programming', '80', 'false', 'false', 'false', 'false'),
('false', 'Work Immersion / Research / Career Advocacy / Culminating Activity', '80', 'false', 'false', 'false', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stem`
--

CREATE TABLE `tbl_stem` (
  `status` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `hours` varchar(255) NOT NULL,
  `1st_sem` varchar(255) NOT NULL,
  `2nd_sem` varchar(255) NOT NULL,
  `3rd_sem` varchar(255) NOT NULL,
  `4th_sem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_stem`
--

INSERT INTO `tbl_stem` (`status`, `subjects`, `hours`, `1st_sem`, `2nd_sem`, `3rd_sem`, `4th_sem`) VALUES
('false', 'Oral Communication', '80', 'false', 'false', 'false', 'false'),
('false', 'Reading and Writing', '80', 'false', 'false', 'false', 'false'),
('false', 'Komunikasyon at Pananaliksik sa Wika at Kulturang Pilipino', '80', 'false', 'false', 'false', 'false'),
('false', 'Pagbasa at Pagsusuri ng Iba\'t Ibang Teksto Tungo sa Pananaliksik', '80', 'false', 'false', 'false', 'false'),
('false', '21st Century Literature from the Philippines and the World', '80', 'false', 'false', 'false', 'false'),
('false', 'Contemporary Philippine Arts from the Regions', '80', 'false', 'false', 'false', 'false'),
('false', 'Media and Information Literacy', '80', 'false', 'false', 'false', 'false'),
('false', 'General Mathematics', '80', 'false', 'false', 'false', 'false'),
('false', 'Statistics and Probability', '80', 'false', 'false', 'false', 'false'),
('false', 'Earth Science', '80', 'false', 'false', 'false', 'false'),
('false', 'Disaster Readiness and Risk Reduction', '80', 'false', 'false', 'false', 'false'),
('false', 'Personal Development / Pansariling Kaunlaran', '80', 'false', 'false', 'false', 'false'),
('false', 'Understanding Culture, Society and Politics', '80', 'false', 'false', 'false', 'false'),
('false', 'Introduction to the Philosophy of the Human Person / Pambungad sa Pilosopiya ng Tao', '80', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 1', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 2', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 3', '20', 'false', 'false', 'false', 'false'),
('false', 'Physical Education and Health 4', '20', 'false', 'false', 'false', 'false'),
('false', 'English for Academic and Professional Purposes', '80', 'false', 'false', 'false', 'false'),
('false', 'Research in Daily Life 1', '80', 'false', 'false', 'false', 'false'),
('false', 'Research in Daily Life 2', '80', 'false', 'false', 'false', 'false'),
('false', 'Filipino sa Piling Larang', '80', 'false', 'false', 'false', 'false'),
('false', 'Empowerment Technologies', '80', 'false', 'false', 'false', 'false'),
('false', 'Entrepreneurship', '80', 'false', 'false', 'false', 'false'),
('false', 'Inquiries, Investigations, and Immersion', '80', 'false', 'false', 'false', 'false'),
('false', 'General Biology 1', '80', 'false', 'false', 'false', 'false'),
('false', 'General Biology 2', '80', 'false', 'false', 'false', 'false'),
('false', 'General Chemistry 1', '80', 'false', 'false', 'false', 'false'),
('false', 'General Chemistry 2', '80', 'false', 'false', 'false', 'false'),
('false', 'General Physics 1', '80', 'false', 'false', 'false', 'false'),
('false', 'General Physics 2', '80', 'false', 'false', 'false', 'false'),
('false', 'Pre-Calculus', '80', 'false', 'false', 'false', 'false'),
('false', 'Basic Calculus', '80', 'false', 'false', 'false', 'false'),
('false', 'Work Immersion / Research / Career Advocacy ', '80', 'false', 'false', 'false', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_info`
--

CREATE TABLE `tbl_student_info` (
  `ulrn` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `s_y` varchar(255) NOT NULL,
  `strand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student_info`
--

INSERT INTO `tbl_student_info` (`ulrn`, `name`, `address`, `contact_no`, `s_y`, `strand`) VALUES
('123', 'Brumo Madrigal', 'blk lot hatdog imperial', '1234-0983-2314', '2020-2021', 'abm'),
('123456789123', 'Juan Dela Cruz', 'blk lot C.imperial st. Village Muntinlupa City', '09123456789', '2020-2021', 'ict'),
('987654321321', 'Alfredo San Pedro', 'BLK LOT C.Valo St., Spikerush Village, Doo City', '0912384123', '2021-2022', 'stem');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_subjects`
--

CREATE TABLE `tbl_student_subjects` (
  `ULRN` varchar(255) NOT NULL,
  `s1` varchar(255) NOT NULL,
  `s2` varchar(255) NOT NULL,
  `s3` varchar(255) NOT NULL,
  `s4` varchar(255) NOT NULL,
  `s5` varchar(255) NOT NULL,
  `s6` varchar(255) NOT NULL,
  `s7` varchar(255) NOT NULL,
  `s8` varchar(255) NOT NULL,
  `s9` varchar(255) NOT NULL,
  `s10` varchar(255) NOT NULL,
  `s1_1` varchar(255) NOT NULL,
  `s1_2` varchar(255) NOT NULL,
  `s1_3` varchar(255) NOT NULL,
  `s1_4` varchar(255) NOT NULL,
  `s2_1` varchar(255) NOT NULL,
  `s2_2` varchar(255) NOT NULL,
  `s2_3` varchar(255) NOT NULL,
  `s2_4` varchar(255) NOT NULL,
  `s3_1` varchar(255) NOT NULL,
  `s3_2` varchar(255) NOT NULL,
  `s3_3` varchar(255) NOT NULL,
  `s3_4` varchar(255) NOT NULL,
  `s4_1` varchar(255) NOT NULL,
  `s4_2` varchar(255) NOT NULL,
  `s4_3` varchar(255) NOT NULL,
  `s4_4` varchar(255) NOT NULL,
  `s5_1` varchar(255) NOT NULL,
  `s5_2` varchar(255) NOT NULL,
  `s5_3` varchar(255) NOT NULL,
  `s5_4` varchar(255) NOT NULL,
  `s6_1` varchar(255) NOT NULL,
  `s6_2` varchar(255) NOT NULL,
  `s6_3` varchar(255) NOT NULL,
  `s6_4` varchar(255) NOT NULL,
  `s7_1` varchar(255) NOT NULL,
  `s7_2` varchar(255) NOT NULL,
  `s7_3` varchar(255) NOT NULL,
  `s7_4` varchar(255) NOT NULL,
  `s8_1` varchar(255) NOT NULL,
  `s8_2` varchar(255) NOT NULL,
  `s8_3` varchar(255) NOT NULL,
  `s8_4` varchar(255) NOT NULL,
  `s9_1` varchar(255) NOT NULL,
  `s9_2` varchar(255) NOT NULL,
  `s9_3` varchar(255) NOT NULL,
  `s9_4` varchar(255) NOT NULL,
  `s10_1` varchar(255) NOT NULL,
  `s10_2` varchar(255) NOT NULL,
  `s10_3` varchar(255) NOT NULL,
  `s10_4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student_subjects`
--

INSERT INTO `tbl_student_subjects` (`ULRN`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `s9`, `s10`, `s1_1`, `s1_2`, `s1_3`, `s1_4`, `s2_1`, `s2_2`, `s2_3`, `s2_4`, `s3_1`, `s3_2`, `s3_3`, `s3_4`, `s4_1`, `s4_2`, `s4_3`, `s4_4`, `s5_1`, `s5_2`, `s5_3`, `s5_4`, `s6_1`, `s6_2`, `s6_3`, `s6_4`, `s7_1`, `s7_2`, `s7_3`, `s7_4`, `s8_1`, `s8_2`, `s8_3`, `s8_4`, `s9_1`, `s9_2`, `s9_3`, `s9_4`, `s10_1`, `s10_2`, `s10_3`, `s10_4`) VALUES
('123', 'Reading and Writing', 'Statistics and Probability', 'Earth and Life Science', '', '', '', '', '', '', '', '0', '', '', '', '', '73', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('123456789123', 'Oral Communication', 'Media and Information Literacy', 'Entrepreneurship', 'Computer Programming 1 (160 hrs)', 'Computer Programming 2 (160 hrs)', '', '', '', '', '', '0', '', '', '', '73', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('987654321321', 'Reading and Writing', 'General Mathematics', 'Understanding Culture, Society and Politics', 'Physical Education and Health 3', 'Research in Daily Life 2', 'Entrepreneurship', 'Earth Science', '', '', '', '45', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`username`, `password`) VALUES
('admin', 'admin123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
