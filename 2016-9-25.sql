-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2017 at 09:23 PM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2016-9-25`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE `item_table` (
  `ID` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_table`
--

INSERT INTO `item_table` (`ID`, `name`) VALUES
(1, '裤子'),
(2, '袜子'),
(3, '皮鞋');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(32) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `name`, `email`, `subject`) VALUES
(1, 'gaofei', 'gaofei019@163.com', ' asdfafafdsfdas');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `ID` int(32) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`ID`, `title`, `detail`, `content`) VALUES
(1, '你好哈哈哈哈哈', '爱上对方的撒都是发的撒发生的是对方是否打撒大事大撒旦法不是都是大方啊时代的发生爱上对方萨达发生的的萨芬范德萨爱的色放大师傅大师傅的萨芬的萨芬对方是谁发的sdfaadsf', '爱上对方的撒都是发的撒发生的是对方是否打撒大事大撒旦法不是都是大方啊时代的发生爱上对方萨达发生的的萨芬范德萨爱的色放大师傅大师傅的萨芬的萨芬对方是谁发的sdfaadsfasfddsafsdadssdfsadasdfasdfsadfsadfsadffsdasadfsdfsdsfdsdfsfdasdfaadfasdfdsafsddsafafds'),
(2, '啊时代发生大幅度发的撒啊的萨芬范德萨撒的发生的', '爱上的方法的说法都是发的撒啊的说法风水大师发的发的顺丰士大夫撒的速度发生的发生的反辐射导弹撒双方的', '爱上的方法的说法都是发的撒啊的说法风水大师发的发的顺丰士大夫撒的速度发生的发生的反辐射导弹撒双方的asfdsfdaafsdsfsafdfasdsfdasadfasdfasdfasdfsdfsafdsdfsfdsfdsafdsafdsadfsfadsfdasdfasdfasfadsafdsaffsadasfd'),
(3, '你好哈哈', '那是地方发生大事的发疯似的大沙发上发呆发多少', '那是地方发生大事的发疯似的大沙发上发呆发多少啊是的风水大师大是大非双方的撒啊范德萨是否大多数的萨芬范德萨啊是的发奋读书时代发多少的萨芬范德萨的萨芬范德萨的萨芬范德萨当时发生地方的萨芬的萨芬的萨芬的萨芬发的撒发生的的sffdsfds'),
(4, '爱上对方的手术的方式答复', '爱上对方的身份的事发生的事的方式答复都是发发的撒是对方的身份撒大是大非首都师范大是大非撒旦发生的发生大幅释放', '爱上对方的身份的事发生的事的方式答复都是发发的撒是对方的身份撒大是大非首都师范大是大非撒旦发生的发生大幅释放啊时代发生的发生大幅士大夫大师傅范德萨发顺丰撒地方的撒发生的速度发顺丰大幅度算得上是大多数的撒身上的撒\r\n啊速度速度发发撒的说法的时代发生的发'),
(5, '啊时代发生大是大是大是大时代发生大啊不是都 速度发多少发生的发生地方啊的说法范德萨', '谁打大舒服撒地方上的的萨芬啊时代发生的复方丹参爱上东方大厦放到沙发范德萨时代发生大时代发生的发生的发的撒发生的发多少发生的发生大时代发生的发生大', '谁打大舒服撒地方上的的萨芬啊时代发生的复方丹参爱上东方大厦放到沙发范德萨时代发生大时代发生的发生的发的撒发生的发多少发生的发生大时代发生的发生大\r\n谁打大舒服撒地方上的的萨芬啊时代发生的复方丹参爱上东方大厦放到沙发范德萨时代发生大时代发生的发生的发的撒发生的发多少发生的发生大时代发生的发生大'),
(6, '你您呢您', '爱上对方的萨芬的事实大多数发达事发地点撒啊似懂非懂舒服啊适当的释放撒地方的撒撒的说法的水电费是 水电费水电费范德萨 大赛的萨芬的萨芬', '爱上对方的萨芬的事实大多数发达事发地点撒啊似懂非懂舒服啊适当的释放撒地方的撒撒的说法的水电费是 水电费水电费范德萨 大赛的萨芬的萨芬\r\n爱上对方的萨芬的事实大多数发达事发地点撒啊似懂非懂舒服啊适当的释放撒地方的撒撒的说法的水电费是 水电费水电费范德萨 大赛的萨芬的萨芬\r\n爱上对方的萨芬的事实大多数发达事发地点撒啊似懂非懂舒服啊适当的释放撒地方的撒撒的说法的水电费是 水电费水电费范德萨 大赛的萨芬的萨芬'),
(7, '你好hihihi好', '啊速度发撒地方的撒啊发的顺丰多少', '啊速度发撒地方的撒啊发的顺丰多少\r\n啊速度发撒地方的撒啊发的顺丰多少\r\n啊速度发撒地方的撒啊发的顺丰多少\r\n啊速度发撒地方的撒啊发的顺丰多少\r\n啊速度发撒地方的撒啊发的顺丰多少啊速度发撒地方的撒啊发的顺丰多少啊速度发撒地方的撒啊发的顺丰多少啊速度发撒地方的撒啊发的顺丰多少啊速度发撒地方的撒啊发的顺丰多少');

-- --------------------------------------------------------

--
-- Table structure for table `trade_table`
--

CREATE TABLE `trade_table` (
  `ID` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `item_id` int(32) NOT NULL,
  `count` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trade_table`
--

INSERT INTO `trade_table` (`ID`, `user_id`, `item_id`, `count`) VALUES
(1, 2, 1, 5),
(2, 3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'gaofei', 'fa43dfd56f83449ac62dc568fdab6e77');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `ID` int(32) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`ID`, `name`) VALUES
(1, 'zs'),
(2, 'ls'),
(3, 'abc'),
(4, 'zs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `trade_table`
--
ALTER TABLE `trade_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item_table`
--
ALTER TABLE `item_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `trade_table`
--
ALTER TABLE `trade_table`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
