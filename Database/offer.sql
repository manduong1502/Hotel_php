-- CREATE TABLE `products` (
--   `id_hotel` int(11) NOT NULL,
--   `hotel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
--   `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
--   `id` int(11) NOT NULL,
--   `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
--   `category_id` int(11) NOT NULL,
--   `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
--   `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
--   `price` float NOT NULL,
--   `saleprice` float NOT NULL,
--   `acreage` int NOT NULL,
--   `created` date NOT NULL,
--   `quantity` int(11) NOT NULL,
--   `keyword` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
--   `status` int(11) DEFAULT NULL
-- ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_hotel`, `hotel`, `img`,`id`, `name`, `category_id`, `image`, `description`, `price`, `saleprice`, `acreage`, `quantity`, `keyword`, `status`) VALUES
(1, 'Poseidon Luxury Đà Nẵng', 'IMG/Danang/dn1_1654683350.jpg',1, 'Phòng Superior Twin', 1, 'IMG/Danang/phòng1.jpg', '1 giường đơn, 1 giường king size', 1440000 , 0, '33m²', 8, '', 0),
(1, 'Poseidon Luxury Đà Nẵng', 'IMG/Danang/dn1_1654683350.jpg',2, 'Phòng Deluxe Twin', 1, 'IMG/Danang/phòng2.jpg', '2 giường đơn', 1843200, 0, '33m²', 10, '', 0),
(1, 'Poseidon Luxury Đà Nẵng', 'IMG/Danang/dn1_1654683350.jpg',3, 'Phòng Deluxe King', 1, 'IMG/Danang/phongf3.jpg', '1 giường king size', 1843200, 0, '33m²', 7, '', 0),
(1, 'Poseidon Grand Đà Nẵng', 'IMG/Danang/muong-thanh-grand-dn_1686538211.jpg',4, 'Phòng Deluxe Twin hướng biển', 1, 'IMG/Danang/phòng4.jpg', '2 giường đơn', 2016000, 0, '33m²', 12, '', 0),
(1, 'Poseidon Grand Đà Nẵng', 'IMG/Danang/muong-thanh-grand-dn_1686538211.jpg',5, 'Phòng Superior King', 2, 'IMG/Hanoi/hanoi1.jpg', '1 giường king size', 1496000, 0, '25m²', 15, '', 0),
(1, 'Poseidon Grand Đà Nẵng', 'IMG/Danang/muong-thanh-grand-dn_1686538211.jpg',6, 'Phòng Superior Twin', 2, 'IMG/Hanoi/hanoi2.jpg', '2 giường đơn', 1496000, 0, '25m²', 9, '', 0),
(1, 'Poseidon Luxury Sông Hàn', 'IMG/Danang/anh-ngoai-3-_1678440201.jpg',7, 'Phòng Deluxe Twin', 2, 'IMG/Hanoi/hanoi3.jpg', '2 giường đơn', 1700000, 0, '28m²', 19, '', 0),
(1, 'Poseidon Luxury Sông Hàn', 'IMG/Danang/anh-ngoai-3-_1678440201.jpg',8, 'Phòng Deluxe King', 2, 'IMG/Hanoi/hanoi4.jpg', '1 giường king size', 1700000, 0, '25m²', 15, '', 0),
(1, 'Poseidon Luxury Sông Hàn', 'IMG/Danang/anh-ngoai-3-_1678440201.jpg',9, 'Phòng Deluxe Queen', 2, 'IMG/Hanoi/hanoi5.jpg', '1 giường king size', 1850000, 0, '25m²', 15, '', 0);