-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-01-30 10:52:22
-- 服务器版本： 5.5.56-log
-- PHP Version: 7.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `christ`
--

-- --------------------------------------------------------

--
-- 表的结构 `lucker`
--

CREATE TABLE `lucker` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lucker`
--

INSERT INTO `lucker` (`id`, `name`, `phone`, `address`) VALUES
(1, '蒋艾娉', '15684198691', '东三123'),
(2, '成永琦', '15684195363', '北16 325'),
(3, '张克燕', '15684138204', '南四203'),
(4, '张速速', '15684161527', '706'),
(5, '李齐', '17862822018', '北23 320'),
(6, '刘博', '15684177305', '北11 317'),
(7, '郑昆鹏', '17865451785', '北11 317'),
(8, '王依林', '17865451787', '北11 317'),
(9, '庞国强', '15684176802', '北11 317'),
(10, '鹿士琳', '17865599720', '北11 317'),
(11, '李永超', '15684177276', '北11 317'),
(12, '王嘉豪', '15684166192', '北12-622');

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `name`, `content`, `create_at`) VALUES
(1, '佚名', '陈禄伟，陈禄伟，陈禄伟，陈禄伟', '2017-12-22 22:04:28'),
(2, '佚名', '.', '2017-12-24 12:22:29'),
(3, '珏珏', '体重两位数！', '2017-12-24 12:29:26'),
(4, '佚名', '。。', '2017-12-24 17:29:59'),
(5, '佚名', '希望来年能长高一点，做喜欢的事，一直开心', '2017-12-24 17:33:12'),
(6, '佚名', '想找个男朋友', '2017-12-24 17:33:43'),
(7, '佚名', '祝我心想事成', '2017-12-24 17:34:44'),
(8, '佚名', '六级过过过！', '2017-12-24 17:50:23'),
(9, '小虎牙', '不要生病', '2017-12-24 18:00:35'),
(10, '小虎牙', '不要生病', '2017-12-24 18:00:39'),
(11, '珍曦', '我想瘦二十斤', '2017-12-24 18:03:19'),
(12, '佚名', '是不是应该接受他', '2017-12-24 18:23:09'),
(13, '张克燕', '让我变瘦', '2017-12-24 20:41:33'),
(14, '煜煜', '希望今年能收到圣诞老爷爷的礼物', '2017-12-24 20:41:39'),
(15, '涂山苏苏', '圣诞老人你不爱我了，我就没有今天这么倒霉过，让我哭一会，伤心', '2017-12-24 20:43:43'),
(16, '只左余右', '圣诞老爷爷今晚会骑着麋鹿来往我的袜子里塞礼物吗？', '2017-12-24 20:44:23'),
(17, '佚名', '想要一个高富帅而且不离不弃的男朋友，想得到奖学金，想在大学中交到知心朋友，想过四六级，想期末考试全过90分，想身体健康，想转专业，想和我心中的他在一起', '2017-12-24 20:54:08'),
(18, '佚名', '我喜欢你', '2017-12-24 20:56:20'),
(19, '张旭冉', '每个人都可以开心，活的潇洒', '2017-12-24 20:58:08'),
(20, '佚名', '破处', '2017-12-24 21:01:01'),
(21, '佚名', '长高一点', '2017-12-24 21:02:28'),
(22, '王涛', '圣诞节前夕，把袜子反过来挂在床头。一觉醒来，全世界都是你的礼物。', '2017-12-24 21:13:43'),
(23, '啦啦啦', '我希望在以后的时光里可以顺心如意，烦恼通通都消失', '2017-12-24 21:30:51'),
(24, '佚名', '考试顺利', '2017-12-24 21:44:49'),
(25, '佚名', '老爷爷，我想脱单', '2017-12-24 21:54:25'),
(26, 'DD', '2018我想遇到一个喜欢我的人，我也喜欢他，对我好，算是真爱吧，我会认真守护这段感情', '2017-12-24 21:59:31'),
(27, '佚名', '来个女朋友吧', '2017-12-24 22:00:30'),
(28, '佚名', '希望姐夫能来看郝肖', '2017-12-24 22:04:45'),
(29, '佚名', '请上天赐予宝宝一个男朋友。', '2017-12-24 22:05:20'),
(30, '郝肖', '希望元旦时姐夫能来看郝肖', '2017-12-24 22:06:04'),
(31, '佚名', '请上天赐予宝宝一个男朋友。', '2017-12-24 22:06:22'),
(32, '佚名', '？', '2017-12-24 22:06:36'),
(33, '佚名', '呃', '2017-12-24 22:06:38'),
(34, '郝肖', '希望姐夫能常来看郝肖', '2017-12-24 22:07:31'),
(35, '佚名', '希望姐夫能常来看郝肖', '2017-12-24 22:07:32'),
(36, '佚名', '我要好好的跟韦宇在一起', '2017-12-24 22:08:41'),
(37, '佚名', '我想变瘦！', '2017-12-24 22:13:05'),
(38, '佚名', '我想变瘦！', '2017-12-24 22:13:30'),
(39, '佚名', '我我想变美', '2017-12-24 22:14:36'),
(40, '佚名', '喜欢陈禄伟~', '2017-12-24 22:30:06'),
(41, '佚名', '乌拉，嘿呦', '2017-12-24 22:33:28'),
(42, '佚名', '圣诞老人，我好喜欢你', '2017-12-24 22:39:29'),
(43, '佚名', '我喜欢朱自琪', '2017-12-24 22:40:51'),
(44, '佚名', '给我个男朋友吧', '2017-12-24 22:43:44'),
(45, '珍曦', '我想减肥', '2017-12-24 22:45:15'),
(46, '佚名', '圣诞快乐', '2017-12-24 22:59:35'),
(47, '佚名', '想要合心意并互相喜欢的男朋友！', '2017-12-24 23:05:03'),
(48, '小妹', '和我想的不一样\n我们不一样，不一样', '2017-12-24 23:08:01'),
(49, '混蛋的双子', '其实我很喜欢你，所以我要好好爱自己了。', '2017-12-24 23:25:27'),
(50, '佚名', '更瘦更美读更多书', '2017-12-25 08:37:19'),
(51, '佚名', '我希望岁月如初 我们依旧', '2017-12-25 09:05:42'),
(52, '佚名', '我希望明天不用跑越野', '2017-12-25 09:06:33'),
(53, '佚名', '，，，', '2017-12-25 09:56:22'),
(54, '刘晴', '想要一盒巧克力', '2017-12-25 09:56:48'),
(55, '刘晴', '想要一个德芙巧克力', '2017-12-25 09:57:41'),
(56, '佚名', '脱单发财', '2017-12-25 10:07:19'),
(57, '晨', '圣诞节快乐！', '2017-12-25 10:12:07'),
(58, '晨', '圣诞节快乐！', '2017-12-25 10:12:21'),
(59, '倦梦还', '你应该知道我想要什么', '2017-12-25 10:19:51'),
(60, '倦梦还', '你应该知道我想要什么', '2017-12-25 10:20:23'),
(61, '倦梦还', '你应该知道我想要什么', '2017-12-25 10:21:06'),
(62, '一个美丽的仙女儿', '我想要个男朋友☺️', '2017-12-25 10:26:18'),
(63, '一个美丽的仙女儿', '我想要个男朋友☺️', '2017-12-25 10:26:27'),
(64, '一个美丽的仙女儿', '我想要个男朋友☺️', '2017-12-25 10:26:41'),
(65, '冯', '我要中奖，我要中奖,我要中奖', '2017-12-25 10:49:54'),
(66, '若安', '表白郝江博~', '2017-12-25 11:22:02'),
(67, 'hhh', '我什么时候能够找到男朋友？？？', '2017-12-25 11:46:16'),
(68, '逯逍遥', '发个对象', '2017-12-25 11:46:18'),
(69, '佚名', '什么时候会找到男朋友', '2017-12-25 11:47:17'),
(70, '倦梦还', '你应该知道我想要什么', '2017-12-25 11:48:18'),
(71, '杨文举', '希望圣诞老人可以保佑我期末不挂科……真的千万千万不要挂啊……', '2017-12-25 11:48:48'),
(72, '佚名', '希望你也能快乐❤', '2017-12-25 11:50:16'),
(73, '倦梦还', '你应该会知道我想要什么', '2017-12-25 11:50:40'),
(74, '倦梦还', '你应该会知道我想要什么', '2017-12-25 11:50:47'),
(76, '佚名', '努力学习！', '2017-12-25 11:52:24'),
(77, '随', '以后就只把你当朋友', '2017-12-25 12:00:06'),
(78, '佚名', '还剩一天小火花就能变成大火花啦，哈哈', '2017-12-25 12:01:19'),
(87, '木格', '圣诞快乐呦，你送礼物也会很辛苦的吧，给别人送祝福也要让自己快乐呦♥', '2017-12-25 12:02:25'),
(97, '柠檬', '希望新的一年里\n岁月静好\n没有欺骗\n我珍惜的人\n都在', '2017-12-25 12:08:32'),
(98, '佚名', '首先，辛苦您了！谢谢你的答案，也希望我的愿望可以实现。', '2017-12-25 12:18:40'),
(99, '佚名', '我', '2017-12-25 12:20:24'),
(100, '小黄鸭', '我想要一个充实的生活\n想要自己做的每一件事情都是有意义的', '2017-12-25 12:23:21'),
(104, '佚名', '好好学习，脱单', '2017-12-25 12:47:02'),
(105, '今年能长高吗？', '今年能长高吗？', '2017-12-25 12:49:47'),
(106, '佚名', '今年能长高吗？', '2017-12-25 12:50:44'),
(107, '佚名', '我能找到男朋友吗', '2017-12-25 12:54:31'),
(109, '佚名', '哇⊙ω⊙', '2017-12-25 13:01:24'),
(110, '佚名', '12个月SVIP', '2017-12-25 13:02:06'),
(111, '小孩', '喵', '2017-12-25 13:03:39'),
(112, '婷婷婷', '圣诞快乐，希望可以收到圣诞老人的礼物呢', '2017-12-25 13:04:12'),
(113, '佚名', '我想中奖！', '2017-12-25 13:06:23'),
(114, '佚名', '小月月能答应我吗', '2017-12-25 13:07:25'),
(115, '佚名', '小月月能答应我吗', '2017-12-25 13:07:31'),
(116, '佚名', '啦啦啦', '2017-12-25 13:11:05'),
(117, '佚名', '我不想再成为那个包揽所有一切的人。我也不是万能的。请不要再把你该负责人的事情推给别人，没有人能为你负责。', '2017-12-25 13:11:22'),
(118, '佚名', '我不想再成为那个包揽所有一切的人。我也不是万能的。请不要再把你该负责人的事情推给别人，没有人能为你负责。', '2017-12-25 13:11:28'),
(119, '佚名', '今年国考能上岸吗？', '2017-12-25 13:12:06'),
(120, '佚名', '我什么时候才能遇到那个他呀', '2017-12-25 13:14:02'),
(121, '佚名', '愿我所爱之人，平安喜乐，顺遂无忧。', '2017-12-25 13:16:28'),
(122, '佚名', '我能找到女朋友吗', '2017-12-25 13:18:22'),
(123, '不允', '祝鲁大学生网越来越好', '2017-12-25 13:19:43'),
(124, '杨萍', '祝鲁大学生网越来越好', '2017-12-25 13:19:55'),
(125, '杨萍', '祝鲁大学生网越来越好', '2017-12-25 13:19:58'),
(126, '杨萍', '祝鲁大学生网越来越好', '2017-12-25 13:20:00'),
(127, '鹿遥', '圣诞节快乐啊！祝学生网越来越好！', '2017-12-25 13:21:28'),
(128, '佚名', '期末要优！', '2017-12-25 13:23:52'),
(129, '只左余右', '期末不挂科', '2017-12-25 13:24:28'),
(130, '佚名', '我还能坚持多久', '2017-12-25 13:52:11'),
(131, '佚名', '什么时候脱单', '2017-12-25 14:00:01'),
(132, '佚名', '王嘉豪 菜鸡', '2017-12-25 14:00:23'),
(133, '木木', '今年能长高嘛？', '2017-12-25 14:01:44'),
(134, '佚名', '我今年能找到对象吗', '2017-12-25 14:04:37'),
(135, '张芳', '我很喜欢他，但是不想在一起。', '2017-12-25 14:06:18'),
(136, '佚名', '我下一年能变得更优秀吗', '2017-12-25 14:07:13'),
(137, '佚名', '今年可以进入学习法律的状态吗', '2017-12-25 14:10:45'),
(138, '佚名', '我啥时候能挣钱', '2017-12-25 14:14:08'),
(139, '佚名', '我今年会追到我喜欢的人吗', '2017-12-25 14:16:50'),
(140, '佚名', '哈哈哈哈哈', '2017-12-25 14:21:05'),
(141, '佚名', '哈哈', '2017-12-25 14:21:50'),
(142, '佚名', '明年会变瘦吗', '2017-12-25 14:35:15'),
(143, '艺', '找一个陪我一起考研的人', '2017-12-25 14:39:30'),
(144, '佚名', '减肥能成功么？', '2017-12-25 14:45:01'),
(145, '佚名', '想要一个费启鸣型男盆友', '2017-12-25 14:49:48'),
(146, '佚名', '明天我会中奖吗', '2017-12-25 14:55:08'),
(147, '瞧我', '圣诞老人今年的圣诞礼物你什么时候会给我呢', '2017-12-25 15:19:34'),
(148, '佚名', '我家狗子能不能跟他小姐姐在一起~', '2017-12-25 15:20:52'),
(149, '全世界最可爱的小仙女', '希望我家狗子能跟他小姐姐在一起！', '2017-12-25 15:23:11'),
(150, '佚名', '还该爱他吗', '2017-12-25 15:25:00'),
(151, '亘木', '我想和郭蕙晴在一起，恩', '2017-12-25 15:26:53'),
(152, '佚名', '我要礼物', '2017-12-25 15:34:07'),
(153, '佚名', '我竟然没收到圣诞老公公的礼物', '2017-12-25 15:34:13'),
(154, '佚名', '我长得好看吗', '2017-12-25 15:34:39'),
(155, '佚名', '我想和他一起到最后', '2017-12-25 15:42:10'),
(156, '佚名', '我好穷', '2017-12-25 15:42:11'),
(157, '佚名', '他陕西我山东我们能走到最后吗', '2017-12-25 15:43:16'),
(158, '佚名', '我想要一个很贵的礼物哈哈', '2017-12-25 16:29:47'),
(159, '佚名', '511圣诞节快乐', '2017-12-25 16:30:33'),
(160, '佚名', '让我环游世界吧', '2017-12-25 16:48:05'),
(161, '佚名', '让我找到一个十项全能的男朋友吧', '2017-12-25 17:05:49'),
(162, '佚名', '希望自己健健康康，十分努力', '2017-12-25 17:56:56'),
(163, '佚名', '费启鸣', '2017-12-25 18:46:36'),
(164, '佚名', '你好', '2017-12-25 19:03:34'),
(165, '佚名', '我希望我知道自己的目标是什么', '2017-12-25 20:03:10'),
(166, '佚名', '我要一个男朋友', '2017-12-25 21:23:41'),
(167, '佚名', '你好哈哈哈哈', '2017-12-25 21:28:49'),
(168, '佚名', '维持一个家需要所以人的努力，毁掉一个家只需要一个人，希望以后都好好的。', '2017-12-25 22:13:33'),
(169, '木木', '再长高一点！就一点就好！就一点点就好！！！！！', '2017-12-25 22:48:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lucker`
--
ALTER TABLE `lucker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `lucker`
--
ALTER TABLE `lucker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
