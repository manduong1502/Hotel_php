-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 16, 2023 lúc 05:39 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_poseidon_hotel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'mylishop', '8A86E1AAF7327885729E5B450841FEF6');

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contents` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `title`, `contents`, `created`, `status`) VALUES
(1, 'Dương Tấn Mẫn', 'minhmanuzu@gmail.com', 'Demo hotel', 'Test thôi nhá', '2023-09-04 08:32:54', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `total` float NOT NULL,
  `date_order` datetime NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `total`, `date_order`, `status`, `user_id`) VALUES
(1, 245000, '2018-01-25 18:30:30', 1, 12),
(2, 225000, '2018-01-25 19:42:03', 1, 13),
(3, 245000, '2018-01-25 19:45:13', 1, 14),
(4, 245000, '2018-02-02 08:27:05', 1, 15),
(5, 245000, '2018-02-02 08:29:12', 1, 15),
(6, 235000, '2018-11-06 18:20:48', 0, 10),
(7, 245000, '2018-11-06 18:23:37', 0, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_hotel` int(11) NOT NULL,
  `hotel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `saleprice` float NOT NULL,
  `acreage` int NOT NULL,
  `created` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `keyword` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--
INSERT INTO `products` (`id_hotel`, `hotel`, `img`,`id`, `name`, `category_id`, `image`, `description`, `price`, `saleprice`, `acreage`, `quantity`, `keyword`, `status`) VALUES
(1, 'Poseidon Luxury Đà Nẵng', 'IMG/Danang/dn1_1654683350.jpg',1, 'Phòng Superior Twin', 1, 'IMG/Danang/phòng1.jpg', '1 giường đơn, 1 giường king size', 1440000 , 0, '33m²', 8, '', 0),
(2, 'Poseidon Luxury Đà Nẵng', 'IMG/Danang/dn1_1654683350.jpg',2, 'Phòng Deluxe Twin', 1, 'IMG/Danang/phòng2.jpg', '2 giường đơn', 1843200, 0, '33m²', 10, '', 0),
(3, 'Poseidon Luxury Đà Nẵng', 'IMG/Danang/dn1_1654683350.jpg',3, 'Phòng Deluxe King', 1, 'IMG/Danang/phòng3.jpg', '1 giường king size', 1843200, 0, '33m²', 7, '', 0),
(1, 'Poseidon Grand Đà Nẵng', 'IMG/Danang/muong-thanh-grand-dn_1686538211.jpg',4, 'Phòng Deluxe Twin Pro', 1, 'IMG/Danang/phòng4.jpg', '2 giường đơn', 2016000, 0, '33m²', 12, '', 0),
(2, 'Poseidon Grand Đà Nẵng', 'IMG/Danang/muong-thanh-grand-dn_1686538211.jpg',5, 'Phòng Superior King', 1, 'IMG/Danang/phòng5.jpg', '1 giường king size', 1496000, 0, '25m²', 15, '', 0),
(3, 'Poseidon Grand Đà Nẵng', 'IMG/Danang/muong-thanh-grand-dn_1686538211.jpg',6, 'Phòng Superior Twin', 1, 'IMG/Danang/phòng6.jpg', '2 giường đơn', 1496000, 0, '25m²', 9, '', 0),
(1, 'Poseidon Luxury Sông Hàn', 'IMG/Danang/anh-ngoai-3-_1678440201.jpg',7, 'Phòng Deluxe Twin', 1, 'IMG/Danang/phòng7.jpg', '2 giường đơn', 1700000, 0, '28m²', 19, '', 0),
(2, 'Poseidon Luxury Sông Hàn', 'IMG/Danang/anh-ngoai-3-_1678440201.jpg',8, 'Phòng Deluxe King', 1, 'IMG/Danang/phòng8.jpg', '1 giường king size', 1700000, 0, '25m²', 15, '', 0),
(3, 'Poseidon Luxury Sông Hàn', 'IMG/Danang/anh-ngoai-3-_1678440201.jpg',9, 'Phòng Deluxe Queen', 1, 'IMG/Danang/phòng9.jpg', '1 giường king size', 1850000, 0, '25m²', 15, '', 0),
(4, 'Mường Thanh Grand Hà Nội Centre', 'IMG/Hanoi/muong-thanh-ha-noi-centre-external-1_1678266019.jpg',10, 'Phòng Superior Twin', 2, 'IMG/Hanoi/phòng10.jpg', '2 giường đơn', 1490000, 0, '25m²', 15, '', 0),
(5, 'Mường Thanh Grand Hà Nội Centre', 'IMG/Hanoi/muong-thanh-ha-noi-centre-external-1_1678266019.jpg',11, 'Phòng Deluxe Twin', 2, 'IMG/Hanoi/phòng11.jpg', '2 giường đơn', 1700000, 0, '28m²', 15, '', 0),
(6, 'Mường Thanh Grand Hà Nội Centre', 'IMG/Hanoi/muong-thanh-ha-noi-centre-external-1_1678266019.jpg',12, 'Phòng Executive Suite', 2, 'IMG/Hanoi/phòng12.jpg', '1 giường king size', 1850000, 0, '53m²', 15, '', 0),
(4, 'Mường Thanh Grand Xa la', 'IMG/Hanoi/raw_9250-1_1660198860-1_1687163162.jpg',13, 'Phòng Superior King', 2, 'IMG/Hanoi/phòng13.jpg', '1 giường king size', 1850000, 0, '30m²', 15, '', 0),
(5, 'Mường Thanh Grand Xa la', 'IMG/Hanoi/raw_9250-1_1660198860-1_1687163162.jpg',14, 'Phòng Deluxe King', 2, 'IMG/Hanoi/phòng14.jpg', '1 giường king size', 1350000, 0, '30m²', 15, '', 0),
(6, 'Mường Thanh Grand Xa la', 'IMG/Hanoi/raw_9250-1_1660198860-1_1687163162.jpg',15, 'Phòng Deluxe Twin', 2, 'IMG/Hanoi/phòng15.jpg', '2 giường đơn', 1750000, 0, '25m²', 15, '', 0),
(4, 'Mường Thanh Grand Hà Nội Centre', 'IMG/Hanoi/muong-thanh-ha-noi-centre-external-1_1678266019.jpg',16, 'Phòng Deluxe Triple', 2, 'IMG/Hanoi/phòng16.jpg', '3 giường đơn', 1850000, 0, '32m²', 15, '', 0),
(5, 'Mường Thanh Grand Hà Nội Centre', 'IMG/Hanoi/muong-thanh-ha-noi-centre-external-1_1678266019.jpg',17, 'Phòng Executive Suite', 2, 'IMG/Hanoi/phòng17.jpg', '1 giường queen size', 1980000, 0, '70m²', 15, '', 0),
(6, 'Mường Thanh Grand Hà Nội Centre', 'IMG/Hanoi/muong-thanh-ha-noi-centre-external-1_1678266019.jpg',18, 'Phòng Grand Suite', 2, 'IMG/Hanoi/phòng18.jpg', '1 giường king size', 2250000, 0, '50m²', 15, '', 0);


CREATE TABLE `product_order` (
  `product_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_order`
--

INSERT INTO `product_order` (`product_id`, `order_id`, `quantity`) VALUES
(12, 1, 1),
(14, 2, 1),
(17, 3, 1),
(12, 4, 1),
(17, 5, 1),
(16, 6, 1),
(17, 7, 1),
(22, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `contents` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `image`, `status`) VALUES
(1, 'images/background.jpg', 0),
(2, 'images/slide/slide-3.jpg', 1),
(3, 'images/slide/slide-4.jpg', 1),
(4, 'images/slide/slide-5.jpg', 1),
(5, 'images/slide/slide-2.jpg', 1),
(6, 'images/banner/2.jpg', 2),
(7, 'images/banner/3.jpg', 2),
(8, 'images/banner/banner.jpg', 2),
(9, 'images/banner/khuyenmaithang12.png', 2),
(10, 'images/partner/partner1.png', 3),
(11, 'images/partner/partner2.png', 3),
(12, 'images/partner/partner3.png', 3),
(13, 'images/partner/partner4.png', 3),
(14, 'images/partner/partner5.png', 3),
(15, 'images/partner/partner6.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`, `address`, `phone`, `created`, `role`) VALUES
(10, 'Hoih My', 'my.hoih', '49CDB4C2B576011E554669632DFBD7CC', 'my.hoih@student.passerellesnumeriques.org', 'Đà Nẵng', '01697450200', NULL, 1),
(11, 'y blir', 'blir.y', 'C00813256690A14079A569831F9BAAD6', 'blir.y@student.passerellesnumeriques.org', 'Đà Nẵng', '0926055983', NULL, 1),
(12, 'Ly Ca Tiếu', '', '', 'hoihmy2712@gmail.com', 'Đà Nẵng', '01697450200', NULL, 0),
(13, 'Ly Ca Tiếu', '', '', 'hoihmy2712@gmail.com', 'Đà Nẵng', '01697450200', NULL, 0),
(14, 'Ly Ca Tiếu', '', '', 'hoihmy2712@gmail.com', 'Đà Nẵng', '01697450200', NULL, 0),
(22, 'Mr DInh', 'dinhvcvn', '123abc', 'dinhvcvn@gmail.com', NULL, NULL, '2023-04-01 05:25:22', 1);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `view_groupby_idorder`
-- (See below for the actual view)
--
CREATE TABLE `view_groupby_idorder` (
`idOrder` int(11)
,`status` tinyint(2)
);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `view_order_list`
-- (See below for the actual view)
--
CREATE TABLE `view_order_list` (
`idOrder` int(11)
,`fullname` varchar(50)
,`phone` varchar(20)
,`email` varchar(100)
,`idUser` int(11)
,`address` varchar(50)
,`idProduct` int(11)
,`nameProduct` varchar(255)
,`price` float
,`saleprice` float
,`quantity` int(11)
,`status` tinyint(2)
,`dateOrder` datetime
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `view_groupby_idorder`
--
DROP TABLE IF EXISTS `view_groupby_idorder`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_groupby_idorder`  AS SELECT `orders`.`id` AS `idOrder`, `orders`.`status` AS `status` FROM (((`orders` join `users` on(`orders`.`user_id` = `users`.`id`)) join `product_order` on(`product_order`.`order_id` = `orders`.`id`)) join `products` on(`product_order`.`product_id` = `products`.`id`)) GROUP BY `orders`.`id` ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `view_order_list`
--
DROP TABLE IF EXISTS `view_order_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_order_list`  AS SELECT `orders`.`id` AS `idOrder`, `users`.`fullname` AS `fullname`, `users`.`phone` AS `phone`, `users`.`email` AS `email`, `users`.`id` AS `idUser`, `users`.`address` AS `address`, `products`.`id` AS `idProduct`, `products`.`name` AS `nameProduct`, `products`.`price` AS `price`, `products`.`saleprice` AS `saleprice`, `product_order`.`quantity` AS `quantity`, `orders`.`status` AS `status`, `orders`.`date_order` AS `dateOrder` FROM (((`orders` join `users` on(`orders`.`user_id` = `users`.`id`)) join `product_order` on(`product_order`.`order_id` = `orders`.`id`)) join `products` on(`product_order`.`product_id` = `products`.`id`)) ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `product_order`
--
ALTER TABLE `product_order`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `product_order`
--
ALTER TABLE `product_order`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
