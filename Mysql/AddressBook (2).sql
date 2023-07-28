-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2022 年 10 月 30 日 05:33
-- 伺服器版本： 5.7.34
-- PHP 版本： 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `AddressBook`
--
CREATE DATABASE IF NOT EXISTS `AddressBook` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `AddressBook`;

-- --------------------------------------------------------

--
-- 資料表結構 `Bill`
--

CREATE TABLE `Bill` (
  `tel` varchar(20) NOT NULL,
  `fee` int(11) DEFAULT NULL,
  `dd` datetime NOT NULL,
  `hid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `Bill`
--

INSERT INTO `Bill` (`tel`, `fee`, `dd`, `hid`) VALUES
('1111', 300, '2019-01-01 00:00:00', 1),
('1111', 700, '2019-02-01 00:00:00', 1),
('1112', 700, '2019-01-01 00:00:00', 1),
('1112', 450, '2019-02-01 00:00:00', 1),
('1112', 200, '2019-03-01 00:00:00', 1),
('2222', 150, '2019-01-01 00:00:00', 2),
('2222', 400, '2019-02-01 00:00:00', 2),
('2222', 300, '2019-03-01 00:00:00', 2),
('3333', 500, '2019-04-01 00:00:00', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `House`
--

CREATE TABLE `House` (
  `hid` int(11) NOT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `House`
--

INSERT INTO `House` (`hid`, `address`) VALUES
(1, '台北市南京東路1號'),
(2, '新竹市光復北路1號'),
(3, '台中市公益路二段51號'),
(4, '高雄市五福路3號');

-- --------------------------------------------------------

--
-- 資料表結構 `Live`
--

CREATE TABLE `Live` (
  `uid` varchar(20) NOT NULL,
  `hid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `Live`
--

INSERT INTO `Live` (`uid`, `hid`) VALUES
('A01', 1),
('A01', 3),
('A02', 1),
('A03', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `Phone`
--

CREATE TABLE `Phone` (
  `tel` varchar(20) NOT NULL,
  `hid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `Phone`
--

INSERT INTO `Phone` (`tel`, `hid`) VALUES
('1111', 1),
('1112', 1),
('2222', 2),
('3333', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `UserInfo`
--

CREATE TABLE `UserInfo` (
  `uid` varchar(20) NOT NULL,
  `cname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `UserInfo`
--

INSERT INTO `UserInfo` (`uid`, `cname`) VALUES
('A01', '王大明'),
('A02', '李大媽'),
('A03', '王小毛'),
('A04', '朱小妹'),
('A05', NULL),
('A06', '');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `Bill`
--
ALTER TABLE `Bill`
  ADD PRIMARY KEY (`tel`,`dd`);

--
-- 資料表索引 `House`
--
ALTER TABLE `House`
  ADD PRIMARY KEY (`hid`);

--
-- 資料表索引 `Live`
--
ALTER TABLE `Live`
  ADD PRIMARY KEY (`uid`,`hid`);

--
-- 資料表索引 `Phone`
--
ALTER TABLE `Phone`
  ADD PRIMARY KEY (`tel`);

--
-- 資料表索引 `UserInfo`
--
ALTER TABLE `UserInfo`
  ADD PRIMARY KEY (`uid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `House`
--
ALTER TABLE `House`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
