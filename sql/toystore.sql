-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2022 lúc 02:11 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `toystore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `HeadCategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`ID`, `Name`, `HeadCategoryID`) VALUES
(1, 'New Arrivals', 1),
(2, 'Trending', 1),
(3, 'Hot Sellers', 1),
(4, 'Anime', 2),
(5, 'DC Comics', 2),
(6, 'Dragon Ball Z', 2),
(7, 'Game of Thrones', 2),
(8, 'Godzilla', 2),
(9, 'LEGO', 2),
(10, 'Marvel', 2),
(11, 'Disney', 2),
(12, 'Pokemon', 2),
(13, 'Star Wars', 2),
(14, 'Transformers', 2),
(15, 'Action Figure', 3),
(16, 'Plush doll', 3),
(17, 'Book', 3),
(18, 'Accessory', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `headcategory`
--

CREATE TABLE `headcategory` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `headcategory`
--

INSERT INTO `headcategory` (`ID`, `Name`) VALUES
(1, 'Status'),
(2, 'Brands'),
(3, 'Product Type');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `Picture` varchar(255) NOT NULL,
  `Price` float NOT NULL,
  `Quantity` int(11) NOT NULL,
  `IsDelete` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ID`, `Name`, `Description`, `Picture`, `Price`, `Quantity`, `IsDelete`) VALUES
(1, 'Movie Masterpiece Captain Marvel Diecast Collectible Figure', 'The incredibly detailed doll features realistic, rooted hair, and Carol Danvers\'s classic costume. The figure includes: - Posable arms, legs and head - Painted face - Costume features moulded and fabric details - Made from plastic', 'marvel_toy1.jpg', 265.99, 4, b'0'),
(2, 'Game of Thrones Jon Snow 7.5-Inch Statue Figure', 'Size: 7.5\"\nMaterial: Plastic\nStyle: Non-Articulated Figure\nFeatures interchangeable Dragon Eggs.\n\nThe worldwide success of HBOs adaptation of the Game of Thrones has won a legion of fans. This audience is clamoring for related collectibles and merchandise, and Dark Horse Deluxe has been providing it in a steady stream. A core item in the Game of Thrones program is now revealed: an ongoing series of high-quality, affordable, molded plastic figures of the most-asked-for characters.\nShow Less...', 'jonSnow.webp', 119.99, 9, b'0'),
(3, 'Pokemon Sun & Moon Team Up Torrential Cannon & Relentless Flame Set of Both Theme Decks', 'Description coming soon...', 'pokemonteamupthemedeckset.jpg', 26.99, 2, b'0'),
(4, 'Disney Steamboat Willie Action Figure', 'The 1928 version of Mickey is joining the Nendoroids! From Steamboat Willie comes a Nendoroid of Mickey Mouse! The version of the Nendoroid features the black &amp; white version of the Mickey shown at the time of the film&#039;s release. While maintaining his appearance from that time, he&#039;s been brought down to adorable Nendoroid size. Using only black, white and grey, the figure gives off a uniquely warm appearance. He comes included with a smiling standard expression and a whistling expression, allowing you to recreate famous scenes of Mickey at the ship&#039;s wheel from the film. The included ship&#039;s wheel can be rotated to allow for all kinds of posing options. Mickey also comes with both long and short arm parts as well as standard and bent leg parts, allowing you to recreate a variety of poses. The stand base features a design based on a steamboat deck. Be sure to add him to your collection!', 'mickey_toy.webp', 63.99, 11, b'0'),
(5, 'Star Wars The Force Awakens Movie Masterpiece R2-D2 Collectible Figure', 'R2-D2, youve come back!\n\nIn the epic Star Wars: The Force Awakens, fans favorite Astromech droid R2-D2 has played a crucial role in the film when it wakes up from low power mode and presented the last piece of the map leading to the whereabouts of Luke Skywalker.\n\nSideshow and Hot Toys are pleased to officially introduce the sixth scale collectible figure of this beloved droid based on Star Wars: The Force Awakens! The astonishing collectible figure is specially crafted based on the appearance of R2-D2 in Star Wars: The Force Awakens and features a highly detailed mechanical construction with weathering effects, a meticulously crafted diecast metal dome, touch LED light-up functions, and remote controlled sound effect function featuring 12 iconic R2-D2 sounds! Dont pass up the chance to add this stunning Astromech droid to your Star Wars collection!\n', 'r2d2.jpg', 299.99, 1, b'0'),
(6, 'The Animated Series Batman on Batcycle Action Figure & Vehicle', 'An updated version of the classic 90\'s animated Batman!\n', 'batman.jpg', 53.99, 1, b'0'),
(7, 'LEGO Seasonal Brick Headz Easter Chick Set', 'Bring a smile to anyones face this Easter with this LEGO BrickHeadz 40350 Easter Chick. This adorable construction character with iconic BrickHeadz eyes is surrounded by a colorful scene featuring Easter flowers and leaves and hidden eggs!\nBuildable LEGO BrickHeadz interpretation of an Easter Chick with BrickHeadz eyes stands in a scene featuring colorful Easter flowers and leaves, and 2 eggs.\nHave fun growing your LEGO BrickHeadz collection with a great range of characters from your favorite movies, TV series, games and comics.\nMash up your LEGO BrickHeadz construction characters to create super-cool hybrids or your own amazing characters.\n', 'brickHeadz.webp', 19.99, 5, b'0'),
(8, 'Dragon Ball Super: Broly S.H. Figuarts Super Saiyan Blue Goku Action Figure', 'The film Dragon Ball Super: Broly was one of the biggest (and fastest!) hits in the series. Now S.H.Figuarts is proud to announce the release of a figure of its star character, Super Saiyan God Super Saiyan Son Goku! It includes an outfit just like the one seen on the film\'s poster - a first! Don\'t miss this chance to complete your Dragon Ball collection, at a special new price! The figure includes:\nOptional hands(L3, R4), Three types of optional expressions.\n', 'apigtyca9.jpg', 26.99, 6, b'0'),
(9, 'Batman 1966 TV Series Villain Variant Series Shame Retro Action Figure', 'Retro 8 Inch Action Figures Villain Variant Series. Comes inside of a resealable plastic clamshell.\n', 'figstoy66classicshameprison.jpg', 26.99, 6, b'0'),
(10, 'Star Wars Play Arts Kai Variant Stormtrooper Action Figure', '[Set Contents]\n-Main figure\n-Play Arts kai base\n-Heavy blaster rifle\n-Blaster rifle\n-Muzzle flash parts\n-Optional hand parts x4\n', 'apiirggao.jpg', 64.99, 3, b'0'),
(11, 'Transformers Age of Extinction 1 Step Changer Dinobot Slash Action Figure', 'Dinobot Slash is back, and he\'s faster than ever! This Dinobot Slash changer fights his enemies every time he can, and he converts so fast they\'ll never be able to keep up. Pull him to convert him from mighty robot mode to dino mode in just 1 step, then convert him back again when the battle calls for it! Decepticons will never be able to handle your fast-changing Dinobot Slash figure!\n', 'apiqmwu98.jpg', 44.99, 3, b'0'),
(12, 'Transformers Age of Extinction Generations Lockdown Deluxe Action Figure', 'Welcome to the incredible world of Transformers robots. It is a world of high technology, ancient history and a battle that has spanned the entire galaxy and millions of years. Optimus Prime, leader of the heroic Autobots, battles the tyrant Megatron and his evil Decepticons for the fate of freedom across the universe. There\'s a Transformers figure for every kid or collector. From big converting figures to miniature battling robots, you can team up with Transformers toys to create your own incredible adventures. Whether you\'re defending Earth with the Autobots, or conquering space with the Decepticons, the action is up to you. Transformers is a world-famous entertainment brand with 30 years of history, blockbuster movies, hit television shows and countless novels and comic books. With Transformers toys, you can create your own chapters in this epic, ongoing story.\n', 'apiwmj6we.jpg', 39.99, 33, b'0'),
(13, 'NECA Godzilla King of the Monsters Godzilla Action Figure', 'NECA is thrilled to present another figure from the hotly anticipated 2019 Godzilla: King of the Monsters movie!\nBased on the monster\'s on-screen appearance in this sequel to the 2014 Godzilla movie, this version of Godzilla features lightning paint deco and is fully poseable, with over 25 points of articulation. The figures comes with an attachable blast effect.\n', 'necagodzillakingofmonstersv2.jpg', 24.99, 33, b'0'),
(14, 'Black & White Batman 7-Inch Statue', 'DC Collectibles\' long-running statue line, BATMAN: BLACK AND WHITE, has captured the hearts of collectors and comics\nfans alike with its interpretations of the World\'s Greatest Detective and select Gotham City characters by the industry\'s brightest stars. Starting in 2019, DC Collectibles is creating an all-new offshoot of the beloved black-and-white collectibles line, this time offering 3.75 tall PVC figures. Released in sets of seven, including resized rereleases of some of the most popular statues in the line\'s history, each set will come with six previously available mini figures plus one exclusive, never-before-released edition only available in this set.\n', 'batmanblackwhitejoemadureira.jpg', 96.99, 33, b'0'),
(15, 'Dragon Ball Super Ultimate Soldiers - The Movie Broly 9-Inch Collectible PVC Figure', 'The battle continues in Dragon Ball Super the Movie, an epic Dragon Ball movie depicting Gokus epic battle against the legendary Saiyan Broly! The intense determination of Goku, Vegeta, and Broly himself are preserved in Banprestos Dragon Ball Super the Movie Ultimate Soldiers -The Movie- figure series thats as epic as the movie itself.\n', 'apiqhq7sq__13539.1533764906.jpg', 64.99, 33, b'0'),
(16, 'Pokemon Eevee 8-Inch Plush', 'Take your favorite Pokemon with you wherever you go. These plush figures are 8 inches tall and are hand wash only. Perfect for pre-bedtime battles.\n', 'wctplsheeve.jpg', 24.99, 13, b'0'),
(17, 'Gundam F91 Mobile Suit Variation Vigna-Ghina II RE/100 Model Kit ', 'A Mobile Suit Variation (MSV) of Vigna-Ghina from Gundam F91! New parts have been created for the body and includes new head, trigger finger parts, wing nozzles, and weapons like shot lancer.\n\nRunner x 15, sticker, instruction manual.\n', 'apiaukodw.jpg', 44.99, 33, b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcategory`
--

CREATE TABLE `productcategory` (
  `ProductID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `productcategory`
--

INSERT INTO `productcategory` (`ProductID`, `CategoryID`) VALUES
(1, 1),
(1, 10),
(1, 14),
(2, 1),
(2, 14),
(2, 7),
(3, 1),
(3, 2),
(3, 11),
(5, 1),
(5, 14),
(5, 12),
(6, 1),
(6, 14),
(6, 18),
(7, 2),
(7, 9),
(8, 2),
(8, 14),
(8, 6),
(9, 2),
(9, 14),
(9, 5),
(10, 2),
(10, 14),
(10, 12),
(11, 2),
(11, 14),
(11, 13),
(12, 3),
(12, 14),
(12, 13),
(13, 3),
(13, 14),
(13, 8),
(14, 3),
(14, 5),
(14, 14),
(15, 3),
(15, 14),
(15, 6),
(16, 3),
(16, 15),
(16, 11),
(17, 3),
(17, 14),
(17, 13),
(4, 1),
(4, 14),
(4, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `roleId` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`roleId`, `description`) VALUES
(1, 'admin'),
(2, 'customer');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roleuser`
--

CREATE TABLE `roleuser` (
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roleuser`
--

INSERT INTO `roleuser` (`roleId`, `userId`) VALUES
(1, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `saleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sale`
--

INSERT INTO `sale` (`saleId`, `userId`, `total`, `completed`, `Date`) VALUES
(1, 5, '19.99', 1, '2022-11-27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saleproduct`
--

CREATE TABLE `saleproduct` (
  `saleId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `saleproduct`
--

INSERT INTO `saleproduct` (`saleId`, `productId`, `quantity`) VALUES
(1, 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shippingaddress`
--

CREATE TABLE `shippingaddress` (
  `saleId` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `streetAddress` varchar(100) NOT NULL,
  `city` varchar(40) NOT NULL,
  `zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `shippingaddress`
--

INSERT INTO `shippingaddress` (`saleId`, `name`, `streetAddress`, `city`, `zip`) VALUES
(1, '\n                    kimloan', '\n                    HCM', '\n                    Thành phố Hồ Chí Mi', 70000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `streetAddress` varchar(100) NOT NULL,
  `city` varchar(40) NOT NULL,
  `zip` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userId`, `username`, `streetAddress`, `city`, `zip`, `email`, `password`) VALUES
(1, 'minhhuan', 'HCM', 'Thành phố Hồ Chí Minh', 70000, 'minhhuan@gmail.com', '3b612c75a7b5048a435fb6ec81e52ff92d6d795a8b5a9c17070f6a63c97a53b2'),
(2, 'KH1', 'Hải Phòng', 'Thành phố Hải Phòng', 98052, 'khachhang1@gmail.com', '3b612c75a7b5048a435fb6ec81e52ff92d6d795a8b5a9c17070f6a63c97a53b2'),
(3, 'KH2', 'Cần Thơ', 'Thành phố Cần Thơ', 76092, 'khachhang2@gmail.com', '3b612c75a7b5048a435fb6ec81e52ff92d6d795a8b5a9c17070f6a63c97a53b2'),
(4, 'KH3', 'Hà Nội', 'Thành phố Hà Nội', 72703, 'khachhang3@gmail.com', '3b612c75a7b5048a435fb6ec81e52ff92d6d795a8b5a9c17070f6a63c97a53b2'),
(5, 'kimloan', 'HCM', 'Thành phố Hồ Chí Minh', 70000, 'kimloan@gmail.com', '3b612c75a7b5048a435fb6ec81e52ff92d6d795a8b5a9c17070f6a63c97a53b2');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `HeadCategoryID` (`HeadCategoryID`);

--
-- Chỉ mục cho bảng `headcategory`
--
ALTER TABLE `headcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `productcategory`
--
ALTER TABLE `productcategory`
  ADD KEY `FK_Product` (`ProductID`),
  ADD KEY `FK_Category` (`CategoryID`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleId`);

--
-- Chỉ mục cho bảng `roleuser`
--
ALTER TABLE `roleuser`
  ADD KEY `roleId` (`roleId`),
  ADD KEY `userId` (`userId`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleId`),
  ADD KEY `userId` (`userId`);

--
-- Chỉ mục cho bảng `saleproduct`
--
ALTER TABLE `saleproduct`
  ADD KEY `saleId` (`saleId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `shippingaddress`
--
ALTER TABLE `shippingaddress`
  ADD PRIMARY KEY (`saleId`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `headcategory`
--
ALTER TABLE `headcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `saleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`HeadCategoryID`) REFERENCES `headcategory` (`ID`);

--
-- Các ràng buộc cho bảng `productcategory`
--
ALTER TABLE `productcategory`
  ADD CONSTRAINT `FK_Category` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`ID`),
  ADD CONSTRAINT `FK_Product` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ID`);

--
-- Các ràng buộc cho bảng `roleuser`
--
ALTER TABLE `roleuser`
  ADD CONSTRAINT `roleuser_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `roleuser_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `saleproduct`
--
ALTER TABLE `saleproduct`
  ADD CONSTRAINT `saleproduct_ibfk_1` FOREIGN KEY (`saleId`) REFERENCES `sale` (`saleId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `saleproduct_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`ID`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `shippingaddress`
--
ALTER TABLE `shippingaddress`
  ADD CONSTRAINT `shippingaddress_ibfk_1` FOREIGN KEY (`saleId`) REFERENCES `sale` (`saleId`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
