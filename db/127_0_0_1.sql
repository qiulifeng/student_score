-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-07-16 10:47:08
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php`
--
CREATE DATABASE IF NOT EXISTS `php` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `php`;

-- --------------------------------------------------------

--
-- 表的结构 `score`
--

CREATE TABLE `score` (
  `id` int(10) NOT NULL,
  `studentId` varchar(20) NOT NULL,
  `km_id` int(10) NOT NULL,
  `mark` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `score`
--

INSERT INTO `score` (`id`, `studentId`, `km_id`, `mark`) VALUES
(9, '07160602', 1, 89),
(10, '07160601', 3, 95),
(11, '07160601', 3, 79),
(12, '07160603', 1, 85),
(13, '07160603', 2, 79),
(14, '07160602', 2, 64),
(15, '07160603', 3, 95),
(16, '07160603', 4, 68),
(17, '07160604', 1, 64),
(18, '07160604', 2, 94),
(19, '07160605', 1, 94),
(20, '07160604', 3, 54),
(21, '07160605', 3, 81),
(22, '07160606', 1, 46),
(23, '07160607', 2, 94),
(24, '07160608', 1, 100);

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `id` int(20) NOT NULL,
  `studentId` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `className` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `studentId`, `name`, `sex`, `className`) VALUES
(3, '07160601', '蔡培培', '男', '软件1606'),
(4, '07160602', '陈国俊', '男', '软件1606'),
(5, '07160603', '陈佳虹', '女', '软件1606'),
(6, '07160604', '陈培立', '男', '软件1606'),
(7, '07160605', '陈王晓', '女', '软件1606'),
(8, '07160606', '陈文钦', '男', '软件1606'),
(9, '07160607', '杜卓', '男', '软件1606'),
(10, '07160608', '邓入山', '男', '软件1606'),
(11, '07160609', '杜卓', '男', '软件1606'),
(12, '07160610', '杜籽浩', '男', '软件1606'),
(13, '07160611', '符道超', '男', '软件1606'),
(14, '07160612', '何杰', '男', '软件1606'),
(15, '07160613', '何科盛', '男', '软件1606'),
(16, '07160614', '何泽辉', '男', '软件1606'),
(17, '07160615', '黄广达', '男', '软件1606'),
(18, '07160616', '黄维恩', '男', '软件1606'),
(19, '07160617', '黄伟鹏', '男', '软件1606'),
(20, '07160618', '黄子翔', '男', '软件1606'),
(21, '07160619', '邝朝涛', '男', '软件1606'),
(23, '07160620', '黎东明', '男', '软件1606'),
(24, '07160621', '李康栋', '男', '软件1606'),
(25, '07160622', '李业裕', '男', '软件1606'),
(26, '07160623', '李振强', '男', '软件1606'),
(27, '07160624', '李志楷', '男', '软件1606'),
(28, '07160625', '李中坤', '男', '软件1606');

-- --------------------------------------------------------

--
-- 表的结构 `subject`
--

CREATE TABLE `subject` (
  `id` int(1) NOT NULL,
  `km_id` int(1) NOT NULL,
  `km_name` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `subject`
--

INSERT INTO `subject` (`id`, `km_id`, `km_name`) VALUES
(9, 1, 'php'),
(10, 2, 'web'),
(11, 3, 'photoshop'),
(12, 4, 'android'),
(13, 5, 'javascript'),
(14, 6, 'swift');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(48) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `status`) VALUES
(6, 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1),
(7, 'qlf', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`,`km_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `km_id` (`km_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `score`
--
ALTER TABLE `score`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- 使用表AUTO_INCREMENT `student`
--
ALTER TABLE `student`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- 使用表AUTO_INCREMENT `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
