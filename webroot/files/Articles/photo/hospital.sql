-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 12, 2017 at 04:22 AM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `brw_files`
--

CREATE TABLE `brw_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_code` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brw_files`
--

INSERT INTO `brw_files` (`id`, `name`, `record_id`, `model`, `description`, `category_code`, `created`, `modified`) VALUES
(15, 'AN6075.pdf', 1, 'Module', '', 'main', '2017-06-18 19:43:15', '2017-06-18 19:43:15'),
(12, 'Readme.txt', 1, 'Module', '', 'download', '2017-06-18 19:37:55', '2017-06-18 19:37:55'),
(5, '3b0d4a47ea2647c29c0a13296de5b01e.mp3', 1, 'Module', '', 'audio', '2017-06-18 19:36:32', '2017-06-18 19:36:32'),
(6, '3c9416bcc14d2690eb09220ca49e71b8.mp3', 1, 'Module', '', 'audio', '2017-06-18 19:36:32', '2017-06-18 19:36:32'),
(7, '8f394288f32a7a12bf8be2d4477fd007.mp3', 1, 'Module', '', 'audio', '2017-06-18 19:36:32', '2017-06-18 19:36:32'),
(8, '721220aa885ee27610f86b181d0ea4e1.mp3', 1, 'Module', '', 'audio', '2017-06-18 19:36:32', '2017-06-18 19:36:32'),
(9, 'ca5055a4c580f15ec37705905519a4e1.mp3', 1, 'Module', '', 'audio', '2017-06-18 19:36:32', '2017-06-18 19:36:32'),
(10, 'cfc209e9c70304ef9e84d35dff7a61e0.mp3', 1, 'Module', '', 'audio', '2017-06-18 19:36:32', '2017-06-18 19:36:32'),
(11, 'e0b2fe834884b608c3cc03ceac8ff00b.mp3', 1, 'Module', '', 'audio', '2017-06-18 19:36:32', '2017-06-18 19:36:32'),
(13, 'LicenseAgreement.txt', 1, 'Module', '', 'download', '2017-06-18 19:37:55', '2017-06-18 19:37:55'),
(14, 'FSCaptureHelp.chm', 1, 'Module', '', 'download', '2017-06-18 19:37:55', '2017-06-18 19:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `brw_images`
--

CREATE TABLE `brw_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_code` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brw_images`
--

INSERT INTO `brw_images` (`id`, `name`, `record_id`, `model`, `description`, `category_code`, `created`, `modified`) VALUES
(1, 'depositphotos-36806115-stock-photo-medical-bottle-for-injection.jpg', 1, 'Module', NULL, 'main', '2017-06-18 19:25:48', '2017-06-18 19:25:48'),
(2, '1234.jpg', 1, 'Course', NULL, 'main', '2017-07-03 23:12:10', '2017-07-03 23:22:17'),
(3, '2015042710354892.png', 2, 'Course', NULL, 'main', '2017-07-03 23:12:23', '2017-07-03 23:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `brw_users`
--

CREATE TABLE `brw_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brw_users`
--

INSERT INTO `brw_users` (`id`, `email`, `password`, `last_login`, `created`, `modified`) VALUES
(1, 'root@gmail.com', '2bbac27381aeb9ddd20eee71f92e9736d10fc88b', '2017-07-11 19:12:25', '2017-06-10 14:03:51', '2017-06-10 14:03:51'),
(2, 'marc@wimed.com', 'ddbad0fbda2b5b82a70ba973b6c67e0bbff7c662', '2017-06-17 10:03:00', '2017-06-14 00:00:00', '2017-06-21 00:00:00'),
(3, 'admin@wimed.com', '64d22b0f68731c1f41f14929ef2c7028dd30c0c6', '2017-07-03 22:45:29', '2017-07-03 20:58:26', '2017-07-03 20:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Introtext` text,
  `Phone` varchar(50) DEFAULT NULL,
  `phone2` varchar(50) DEFAULT NULL,
  `Wechat` varchar(50) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `Lat` varchar(50) DEFAULT NULL,
  `Lon` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `Name`, `Introtext`, `Phone`, `phone2`, `Wechat`, `Fax`, `Address`, `address2`, `Lat`, `Lon`) VALUES
(1, 'Wimed在线教育', '<p>Learn Integrative 是由Wimed持有的在线医疗教育</p>', '(604) 666-6666', '', 'wimed', '(604) 666-6667', '6th Floor, 626 West Pender St', '', '-123.114585', '49.284186');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `introduction` text NOT NULL,
  `period` int(11) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `price`, `introduction`, `period`, `difficulty`, `created`, `modified`) VALUES
(1, '普通医疗课程', 299, '普通医疗课程（不包含IV）。课程一共分15个模块进行学习，学员学完课程后还可以进行在线考试。', 40, 3, '2017-06-15 00:00:00', '2017-06-21 00:00:00'),
(2, 'IV课程', 99, '专门为了激素注射设置的IV课程。', 10, 2, '2017-06-21 00:00:00', '2017-06-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `introduction` text,
  `picture` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `title`, `doctor_name`, `introduction`, `picture`, `created`, `modified`) VALUES
(1, 'BHCT Association President', 'Dr. Zhang ling', '<p>15 years experience of BHCT surgery and curriculums.&#160;</p>', '/uploads/Doctor/doctor1.png', '2017-07-06 22:22:12', '2017-07-06 22:22:12'),
(2, 'BHCT Association President', 'Dr. Zhang ling', '<p>15 years experience of BHCT surgery and curriculums.&#160;</p>', '/uploads/Doctor/doctor2.png', '2017-07-06 22:22:12', '2017-07-06 22:22:12'),
(3, 'BHCT Association President', 'Dr. Zhang ling', '<p>15 years experience of BHCT surgery and curriculums.&#160;</p>', '/uploads/Doctor/doctor3.png', '2017-07-06 22:22:12', '2017-07-06 22:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `intervalmins` int(11) NOT NULL DEFAULT '120',
  `pass_ratio` float NOT NULL DEFAULT '0.6',
  `introduction` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `intervalmins`, `pass_ratio`, `introduction`, `created`, `modified`) VALUES
(1, '普通考试', 120, 0.6, '普通考试', '2017-06-13 00:00:00', '2017-06-18 11:57:01'),
(2, 'IV考试', 120, 0.6, 'IV 考试', '2017-06-13 00:00:00', '2017-06-18 11:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `exam_records`
--

CREATE TABLE `exam_records` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `startdate` datetime DEFAULT NULL,
  `exam_status_id` int(11) NOT NULL,
  `quizsorder` mediumtext NOT NULL,
  `currentquizid` int(11) NOT NULL,
  `choices` mediumtext,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_records`
--

INSERT INTO `exam_records` (`id`, `user_id`, `exam_id`, `startdate`, `exam_status_id`, `quizsorder`, `currentquizid`, `choices`, `created`, `modified`) VALUES
(68, 1, 1, '2017-06-17 10:05:58', 2, '[4,3,8,5,6,9,1,2,7]', 7, '["2","4","4","1",null,null,"3",null,null]', '2017-06-17 10:05:58', '2017-06-17 10:27:53'),
(69, 1, 1, '2017-06-17 10:21:19', 2, '[6,7,5,3,9,2,1,8,4]', 3, '["2","3","4",null,null,null,null,null,null]', '2017-06-17 10:21:19', '2017-06-17 10:21:30'),
(70, 1, 1, '2017-06-17 10:21:54', 2, '[1,8,4,5,7,6,3,2,9]', 2, '["2",null,"3",null,null,null,null,null,null]', '2017-06-17 10:21:54', '2017-06-17 12:49:02'),
(71, 1, 1, '2017-06-17 12:49:48', 3, '[6,1,2,3,9,4,8,7,5]', 0, '["2",null,null,null,null,null,null,null,null]', '2017-06-17 12:49:48', '2017-06-17 12:52:18'),
(72, 1, 1, '2017-06-17 12:52:50', 3, '[4,8,6,5,9,7,3,2,1]', 0, '["1",null,null,null,null,null,null,null,null]', '2017-06-17 12:52:50', '2017-06-17 13:10:05'),
(73, 1, 1, '2017-06-19 20:02:40', 3, '[1,4,6,8,9,5,2,3,7]', 0, '[null,null,null,null,null,null,null,null,null]', '2017-06-19 20:02:40', '2017-06-19 20:03:04'),
(74, 1, 1, '2017-06-19 20:03:15', 3, '[4,6,3,8,1,7,9,2,5]', 0, '[null,null,null,null,null,null,null,null,null]', '2017-06-19 20:03:15', '2017-06-19 20:05:19'),
(75, 1, 2, '2017-06-19 20:05:26', 3, '[10,11]', 0, '[null,null]', '2017-06-19 20:05:26', '2017-07-03 18:27:51'),
(76, 1, 1, '2017-06-30 22:17:35', 3, '[3,4,7,2,9,6,8,5,1]', 0, '[null,null,null,null,null,null,null,null,null]', '2017-06-30 22:17:35', '2017-07-03 18:17:45'),
(77, 1, 1, '2017-07-03 18:17:57', 3, '[5,9,7,8,1,3,4,6,2]', 0, '[null,null,null,null,null,null,null,null,null]', '2017-07-03 18:17:57', '2017-07-11 17:59:26'),
(78, 1, 2, '2017-07-03 18:27:58', 1, '[10,11]', 0, '[null,null]', '2017-07-03 18:27:58', '2017-07-03 18:27:59'),
(79, 1, 1, '2017-07-03 18:48:47', 3, '[6,3,8,4,7,1,9,2,5]', 0, '[null,null,null,null,null,null,null,null,null]', '2017-07-03 18:48:47', '2017-07-03 20:59:24'),
(80, 1, 1, '2017-07-03 21:00:28', 3, '[5,1,3,7,6,9,4,2,8]', 2, '[null,null,null,null,null,null,null,null,null]', '2017-07-03 21:00:28', '2017-07-04 22:44:21'),
(81, 1, 1, '2017-07-04 22:44:21', 3, '[7,6,9,2,5,1,8,3,4]', 3, '[null,null,null,null,null,null,null,null,null]', '2017-07-04 22:44:21', '2017-07-04 22:48:23'),
(82, 1, 1, '2017-07-04 22:48:51', 3, '[2,1,3,8,5,7,6,4,9]', 0, '[null,null,null,null,null,null,null,null,null]', '2017-07-04 22:48:51', '2017-07-05 23:17:52'),
(83, 1, 1, '2017-07-05 23:17:52', 3, '[2,4,7,1,9,8,5,6,3]', 0, '[null,null,null,null,null,null,null,null,null]', '2017-07-05 23:17:52', '2017-07-05 23:18:20'),
(84, 1, 1, '2017-07-05 23:21:59', 1, '[8,4,9,7,12,6,2,13,1,3,5]', 1, '[null,null,null,null,null,null,null,null,null,null,null]', '2017-07-05 23:21:59', '2017-07-05 23:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `exam_statuses`
--

CREATE TABLE `exam_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_statuses`
--

INSERT INTO `exam_statuses` (`id`, `name`) VALUES
(1, '进行中'),
(2, '已完结-通过'),
(3, '已完结-失败'),
(4, '超时');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `eng_name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `introduction` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `course_id`, `name`, `eng_name`, `price`, `introduction`, `created`, `modified`) VALUES
(1, 1, '单元1 - 液体注射基础', 'Unit1 - Injection Foundamental', 35, '液体注射基础知识', '2017-06-11 00:00:00', '2017-06-13 00:00:00'),
(2, 1, '单元2 - LE注射基础', 'Unit2 - Injection Foundamental', 45, 'LE注射基础知识', '2017-06-11 00:00:00', '2017-06-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `amount` float NOT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `course_id`, `module_id`, `amount`, `payment_method_id`, `created`, `modified`) VALUES
(1, 1, NULL, 1, 35, NULL, '2017-06-27 00:00:00', '2017-06-20 00:00:00'),
(2, 1, 2, NULL, 35, NULL, '2017-06-27 00:00:00', '2017-06-20 00:00:00'),
(3, 2, NULL, 1, 35, NULL, '2017-06-27 00:00:00', '2017-06-20 00:00:00'),
(4, 2, 2, NULL, 35, NULL, '2017-06-27 00:00:00', '2017-06-20 00:00:00'),
(5, 2, 1, NULL, 35, NULL, '2017-06-27 00:00:00', '2017-06-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `choice_1` text NOT NULL,
  `choice_2` text NOT NULL,
  `choice_3` text NOT NULL,
  `choice_4` text NOT NULL,
  `answer` int(11) NOT NULL,
  `included` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `exam_id`, `title`, `content`, `choice_1`, `choice_2`, `choice_3`, `choice_4`, `answer`, `included`, `created`, `modified`) VALUES
(1, 1, '1 = 1', '1 = 1 ?', 'hhhh', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-11 18:18:13'),
(2, 1, '1 = 3', '1 = 3 ?', '1', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-22 00:00:00'),
(3, 1, '1 = 5', '1 = 5 ?', '1', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-22 00:00:00'),
(4, 1, '1 = 5', '1 = 5 ?', '1', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-22 00:00:00'),
(5, 1, '1 = 5', '1 = 5 ?', '1', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-22 00:00:00'),
(6, 1, '1 = 7', '1 = 7 ?', '1', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-22 00:00:00'),
(7, 1, '1 = 3', '1 =  ?0.4933975082760654', '1', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-22 00:00:00'),
(8, 1, '1 = 0.6027551364179283?', '1 = 0.5146874669144744?', '1', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-22 00:00:00'),
(9, 1, '1 = 0.7651719560522325?', '1 = 0.28179741025138405?', '1', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-22 00:00:00'),
(10, 2, '1 = 0.11347121383386777?', '1 = 0.7219638691488317?', '1', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-22 00:00:00'),
(11, 2, '1 = 1111111111111', '1 = 0.7219638691488317?', '1', '2', '3', '4', 1, 1, '2017-06-30 00:00:00', '2017-06-22 00:00:00'),
(12, 1, '<p>&#160;1234</p>', '<p>&#160;1234</p>', '<p>&#160;3</p>', '<p>&#160;4</p>', '<p>&#160;5</p>', '<p>&#160;2</p>', 2, 1, '2017-07-05 23:20:10', '2017-07-05 23:20:10'),
(13, 1, '24324', '<p>&#160;214</p>', '<p>&#160;1</p>', '<p>&#160;2</p>', '<p>&#160;3</p>', '<p>&#160;4</p>', 1, 1, '2017-07-05 23:21:26', '2017-07-05 23:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `content` text,
  `person` varchar(50) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `content`, `person`, `created`, `modified`) VALUES
(1, '<p>&#160;Wimed在线课程学起来非常方便，我通过晚上空闲的时间在家打开电脑就可以学，Wimed也会记录我的学习进度，能够维持学习兴趣很好。</p>', 'Lin', '2017-07-05 23:29:55', '2017-07-05 23:29:55'),
(2, '<p>&#160;不错的教育课程，课程结束后还有在线考试可以检验学习成果。</p>', '王语嫣', '2017-07-05 23:30:33', '2017-07-05 23:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subscribe` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `activate_identifier` varchar(100) DEFAULT NULL,
  `reset_password_identifier` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `subscribe`, `active`, `language`, `password`, `activate_identifier`, `reset_password_identifier`, `created`, `modified`) VALUES
(1, 'Mar', 'He', 'arthurma124@gmail.com', '', 1, 1, 0, '$2a$10$5zNH9fXeY.es8OqCA55p2esrj2uQQRUefIsWLS0WK9T5iIRwVQYCm', NULL, NULL, '2017-06-18 18:54:58', '2017-06-18 19:03:46'),
(2, 'yu', 'yu', 'richardyych@gmail.com', NULL, 1, 0, 1, '$2a$10$krst08Bm0wegvsAlcHE/8.GSek3hH33jBS5FL4Xvm7H4ANprkTDTe', NULL, NULL, '2017-06-18 20:49:37', '2017-07-11 21:14:25'),
(3, 'yingchao', 'yu', 'richardyych@gmail.com', NULL, 1, 0, 0, '$2a$10$PiuO9DDXqeUZtmV6twPYTO/B77hIM63saFaGTOM8PzlN/gEG0ylL2', NULL, NULL, '2017-06-30 22:16:59', '2017-06-30 22:16:59'),
(4, 'He', 'Ma', 'arr@wimed.com', NULL, 1, 0, 0, '$2a$10$kktuSgzf52heGOfkWz7QMOyzSzXaPllG4eU9M5..Phcggt8hZK01a', NULL, NULL, '2017-07-06 22:10:57', '2017-07-06 22:10:57'),
(5, '', '', '', NULL, 1, 0, 0, '$2a$10$hsS/1kriIZmPfsNrXT5qlOCiLbSDlfx8FPFxL.K04HRauVFq9GO4m', NULL, NULL, '2017-07-07 15:27:26', '2017-07-07 15:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `view_histories`
--

CREATE TABLE `view_histories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `view_history` text,
  `current` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `view_histories`
--

INSERT INTO `view_histories` (`id`, `user_id`, `course_id`, `module_id`, `finished`, `view_history`, `current`, `created`, `modified`) VALUES
(3, 1, 1, 1, 0, '[1,1,1,1,1,1,1,1,1,1,1]', 10, '2017-07-04 22:42:47', '2017-07-11 19:45:32'),
(4, 1, 1, 2, 0, '[]', 0, '2017-07-11 19:45:33', '2017-07-11 19:45:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brw_files`
--
ALTER TABLE `brw_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_code` (`category_code`);

--
-- Indexes for table `brw_images`
--
ALTER TABLE `brw_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_code` (`category_code`);

--
-- Indexes for table `brw_users`
--
ALTER TABLE `brw_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`email`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_statuses`
--
ALTER TABLE `exam_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view_histories`
--
ALTER TABLE `view_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brw_files`
--
ALTER TABLE `brw_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `brw_images`
--
ALTER TABLE `brw_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `brw_users`
--
ALTER TABLE `brw_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `exam_records`
--
ALTER TABLE `exam_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `exam_statuses`
--
ALTER TABLE `exam_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `view_histories`
--
ALTER TABLE `view_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
