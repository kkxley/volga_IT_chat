-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Апр 25 2019 г., 13:33
-- Версия сервера: 5.7.25-0ubuntu0.18.04.2
-- Версия PHP: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chat_join`
--

CREATE TABLE `chat_join` (
  `id` int(11) NOT NULL,
  `chat_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userlogin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `chat_join`
--

INSERT INTO `chat_join` (`id`, `chat_key`, `userlogin`, `last_time`) VALUES
(1, '8016b54f8ae12956126ba263d6dd3bf9', 'login', '1556182198'),
(2, '8016b54f8ae12956126ba263d6dd3bf9', 'kkxley', '1556184675'),
(3, '8016b54f8ae12956126ba263d6dd3bf9', 'kkxley', '1556188045'),
(4, '8016b54f8ae12956126ba263d6dd3bf9', 'login', '1556188070'),
(5, 'b2c32f6668f15655984f916f0a3df2fc', 'login', '1556188376'),
(6, 'b2c32f6668f15655984f916f0a3df2fc', 'login', '1556189081'),
(7, 'b2c32f6668f15655984f916f0a3df2fc', 'kkxley', '1556189708'),
(8, 'b2c32f6668f15655984f916f0a3df2fc', 'new user', '1556189791'),
(9, '52dc288ab08de103d0852e4b9c3799c7', 'other', '1556196140'),
(10, '52dc288ab08de103d0852e4b9c3799c7', '4ort', '1556196157'),
(11, '1966bd36aa1926352d0bdcad63c182e5', 'hello_word', '1556196436'),
(12, '1966bd36aa1926352d0bdcad63c182e5', 'sobaka', '1556196449'),
(13, 'a105c0e272aca66b05061f1de9fbf039', 'anon', '1556196906'),
(14, 'a105c0e272aca66b05061f1de9fbf039', 'ananas', '1556196921'),
(15, 'b2c32f6668f15655984f916f0a3df2fc', 'pec', '1556197380'),
(16, 'b2c32f6668f15655984f916f0a3df2fc', ' udsigf ', '1556198221');

-- --------------------------------------------------------

--
-- Структура таблицы `commits`
--

CREATE TABLE `commits` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_commit` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `commits`
--

INSERT INTO `commits` (`id`, `userid`, `chat_key`, `text_commit`, `time`) VALUES
(1, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'hdsjkhkj', '1556191269'),
(2, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'hdsjkhkj', '1556191301'),
(3, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'hdsjkhkj', '1556191301'),
(4, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'hdsjkhkj', '1556191358'),
(5, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'ksdlhdsohl', '1556191491'),
(6, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'fkdjksld', '1556192137'),
(7, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'kldshlk', '1556192294'),
(8, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'khkjah\n', '1556192407'),
(9, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'ksdjflkdshd yudsyu dsu', '1556192414'),
(10, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'kdhsjldfhdsj', '1556193585'),
(11, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'dsjkldsjdsd dskl hdso dgdfy gdsy', '1556193593'),
(12, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'djsagdksajgdks ng sahiudgsau saydt  fstau', '1556193955'),
(13, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'kalsdn, kjasgd gyaust sad t fasd', '1556194119'),
(14, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'asdlsah saudu yast', '1556194289'),
(15, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'hfjhf\n', '1556194479'),
(16, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'bkg', '1556194481'),
(17, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'fg drtu hgj', '1556194506'),
(18, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'jsahdksj', '1556194792'),
(19, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'test test test', '1556194796'),
(20, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'skdfhjsd', '1556195288'),
(21, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'aslhdlsad', '1556195317'),
(22, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'vxclhv uocvy ius gyds', '1556195321'),
(23, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'sajh hs ugd suy ', '1556195339'),
(24, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'huis d', '1556195354'),
(25, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'gyfdi geyu dis e gyfds ', '1556195371'),
(26, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'nge vdys ye fgds ye fgds yegf dsye', '1556195378'),
(27, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'hdj hsudf e gdsifgd eygfds fh', '1556195401'),
(28, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'yausdg gyau us\n', '1556195481'),
(29, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'test test test test', '1556196032'),
(30, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'test test test teste tfstdyfshagfgh fgshfdghsa fgashfd fsgahd fghasd fhg', '1556196058'),
(31, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'tefas gysai gys dte ysid', '1556196069'),
(32, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'test test test ', '1556196105'),
(33, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'tes teef fgsa teet etete ', '1556196113'),
(34, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'dhui ef6 dsgay fegd saj', '1556196121'),
(35, '4ort', '52dc288ab08de103d0852e4b9c3799c7', 'privet', '1556196163'),
(36, '4ort', '52dc288ab08de103d0852e4b9c3799c7', 'salut', '1556196169'),
(37, '4ort', '52dc288ab08de103d0852e4b9c3799c7', 'ty hde?', '1556196174'),
(38, 'other', '52dc288ab08de103d0852e4b9c3799c7', 'ya tut', '1556196262'),
(39, 'sobaka', '1966bd36aa1926352d0bdcad63c182e5', 'hello\n', '1556196453'),
(40, 'sobaka', '1966bd36aa1926352d0bdcad63c182e5', 'how are you', '1556196460'),
(41, 'sobaka', '1966bd36aa1926352d0bdcad63c182e5', 'dkslhf', '1556196585'),
(42, 'hello_word', '1966bd36aa1926352d0bdcad63c182e5', 'ÑˆÐ¾ Ñ Ð½Ðµ Ð¿Ð¾Ð½ÑÐ»', '1556196599'),
(43, 'sobaka', '1966bd36aa1926352d0bdcad63c182e5', 'Ñ€Ð°Ð³Ð²Ñ‹Ð°Ñ‹Ñ‰Ð²Ð³Ð· Ð°Ñ‹Ð²Ð³Ð°ÑˆÐ·Ñ‹Ð² Ð°Ð½Ð° Ð½Ð²Ð¿ÑƒÐ½ ', '1556196609'),
(44, 'ananas', 'a105c0e272aca66b05061f1de9fbf039', 'hello', '1556196925'),
(45, 'anon', 'a105c0e272aca66b05061f1de9fbf039', 'ananas it you?', '1556196939'),
(46, 'ananas', 'a105c0e272aca66b05061f1de9fbf039', 'yeah im ANANAS', '1556196950'),
(47, 'ananas', 'a105c0e272aca66b05061f1de9fbf039', 'you just anon?\n', '1556196960'),
(48, 'anon', 'a105c0e272aca66b05061f1de9fbf039', 'yeah', '1556196969'),
(49, 'anon', 'a105c0e272aca66b05061f1de9fbf039', 'or no....', '1556196974'),
(50, 'ananas', 'a105c0e272aca66b05061f1de9fbf039', 'what your mine?', '1556196986'),
(51, 'ananas', 'a105c0e272aca66b05061f1de9fbf039', 'are you okey?', '1556196993'),
(52, 'anon', 'a105c0e272aca66b05061f1de9fbf039', 'i dont khow my bro', '1556197006'),
(53, 'anon', 'a105c0e272aca66b05061f1de9fbf039', 'it\'s very strange', '1556197017'),
(54, 'pec', 'b2c32f6668f15655984f916f0a3df2fc', 'hey', '1556197385'),
(55, 'pec', 'b2c32f6668f15655984f916f0a3df2fc', 'you all', '1556197389'),
(56, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'kldshflds', '1556197524'),
(57, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'ksldhfldsjfds', '1556197540'),
(58, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'sdhfdsjke iew fhdsuo ', '1556197559'),
(59, 'new user', 'b2c32f6668f15655984f916f0a3df2fc', 'do eogh eyg fsi ', '1556197567'),
(60, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'jkdsgfds', '1556198199'),
(61, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'ksghf', '1556198202'),
(62, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'iosh ', '1556198204'),
(63, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'iodsf ', '1556198206'),
(64, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'isd yofo ', '1556198209'),
(65, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'ljds ', '1556198224'),
(66, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'njls ', '1556198226'),
(67, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'kspdh dsyigf gi pdgf ', '1556198229'),
(68, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'oo nus', '1556198231'),
(69, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'o sdug', '1556198233'),
(70, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'bo sdp', '1556198237'),
(71, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'nbi sdp', '1556198239'),
(72, 'kkxley', 'b2c32f6668f15655984f916f0a3df2fc', 'bvs o', '1556198241'),
(73, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'pidf s[', '1556198245'),
(74, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'niow f', '1556198247'),
(75, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'fds ', '1556198807'),
(76, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'sdjlf ', '1556198809'),
(77, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'sdfbku ', '1556198811'),
(78, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'sdfbuk', '1556198814'),
(79, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'sdf ', '1556198816'),
(80, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'sd fiy', '1556198818'),
(81, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'ksdj gf', '1556198820'),
(82, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'sh fdg', '1556198822'),
(83, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'ids gf', '1556198824'),
(84, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'hsdig fids', '1556198826'),
(85, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'i sud ', '1556198839'),
(86, ' udsigf ', 'b2c32f6668f15655984f916f0a3df2fc', 'f ksld ', '1556198840');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat_join`
--
ALTER TABLE `chat_join`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `commits`
--
ALTER TABLE `commits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat_join`
--
ALTER TABLE `chat_join`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `commits`
--
ALTER TABLE `commits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
