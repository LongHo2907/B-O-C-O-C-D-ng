-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 11, 2022 lúc 11:51 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `img`) VALUES
(1, 'hp', '1587203956hp.png'),
(2, 'Dell', '1587204202dell.png'),
(3, 'Lenovo', '1587379245download_(1).png'),
(4, 'Asus', '1588086780download.png'),
(5, 'acer', '1588696995acer.png'),
(6, 'MSI', '1588697047msi.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `level` int(10) NOT NULL,
  `parent_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `level`, `parent_id`) VALUES
(2, 'Laptop - Gaming', 0, 0),
(3, 'Học tập - Văn phòng', 0, 0),
(4, 'Đồ hoạ', 0, 0),
(5, 'Cao cấp', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_product`
--

CREATE TABLE `cate_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cate_product`
--

INSERT INTO `cate_product` (`id`, `product_id`, `cate_id`) VALUES
(37, 18, 5),
(38, 19, 5),
(39, 20, 4),
(40, 21, 4),
(41, 22, 4),
(43, 24, 3),
(44, 25, 2),
(45, 26, 4),
(46, 27, 3),
(47, 28, 3),
(48, 29, 3),
(51, 32, 5),
(52, 33, 3),
(53, 34, 3),
(54, 35, 3),
(55, 36, 2),
(57, 38, 2),
(58, 39, 2),
(59, 40, 3),
(60, 41, 2),
(61, 42, 3),
(62, 43, 3),
(63, 44, 5),
(64, 45, 5),
(65, 46, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` varchar(300) NOT NULL,
  `content` text NOT NULL,
  `title` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `detail`
--

INSERT INTO `detail` (`id`, `product_id`, `img`, `content`, `title`) VALUES
(26, 18, '16408679281640867181hp1.3.jpg', 'Nền tảng cho sức mạnh cực khủng của chiếc laptop HP này là bộ vi xử lý Intel Core i7 Comet Lake 10750H gồm 6 nhân 12 luồng, xung nhịp trung bình đạt 2.60 GHz khi thực hiện các tác vụ đơn giản như và tối đa lên đến 5.0 GHz khi khi xử lý khối lượng công việc nặng (chẳng hạn như di chuyển qua thành phố hoặc tính toán hành vi AI của kẻ thù trong game chiến lược) nhờ Turbo Boost.\r\n\r\nVũ khí tối thượng trên chiếc laptop HP gaming này là card đồ họa rời NVIDIA GeForce RTX 2070 With Max-Q Design, 8GB thuộc phân khúc cao cấp của NVIDIA, sử dụng kiến trúc Touring thế hệ mới cho phép bạn chơi các game đồ họa nặng như The Witcher 3: Wild Hunt, ARK: Survival Evolved, GTA V,... với mức setting cao nhất.', 'Hiệu năng mạnh mẽ, đồ họa đỉnh cao, chiến game siêu chất'),
(27, 18, '16408679281640867181hp1.3.jpg', 'Không đi theo phong cách hầm hố như những người anh em gaming khác, chiếc laptop HP này hướng tới phong cách thanh lịch, mỏng nhẹ hơn nhưng vẫn giữ được sự mạnh mẽ với những đường cắt gọt tinh tế, kết hợp tông màu tối tạo nên tổng thể chiếc laptop trông như một viên kim cương đen đẳng cấp.\r\n\r\nKhung máy từ nhôm cao cấp và polycarbonate cho kết cấu bền chắc nhưng cũng nhẹ hơn so với thiết kế kim loại nguyên khối, trọng lượng máy là 2.36 kg, không quá nặng để mang theo người. Kích thước máy gồm chiều dài 357.9 mm, chiều rộng 239.7 mm và độ dày thân là 22.5 mm, bạn có thể sẽ cần một chiếc balo tương đối lớn để chứa gọn laptop.', 'Thiết kế tinh xảo, ngoại hình cơ động dễ dàng mang theo'),
(28, 18, '16408679281640867181hp1.0.jpg', 'Máy tính được trang bị các chuẩn kết nối không dây hiện đại như Wi-Fi 6 AX201 cho tốc độ truyền tải dữ liệu lên đến hơn 10.000 Mbps và Bluetooth 5.0 với tốc độ cao nhất đạt được là 50 Mbps, gấp đôi so với thế hệ trước, đảm bảo đường truyền xuyên suốt và ổn định.\r\n\r\nBên cạnh đó, chiếc laptop này cũng được trang bị các cổng giao tiếp hiện đại cho khả năng kết nối vô cùng mạnh mẽ với các thiết bị ngoại vi, gồm có 3 cổng SuperSpeed USB A cho tốc độ truyền tải siêu nhanh, 1 cổng Thunderbolt 3 có băng thông kết nối lên tới 40G bps và cho khả năng truyền tải điện lên đến 100 W, 1 cổng HDMI, 1 cổng Mini DisplayPort và 1 cổng LAN (RJ45) quen thuộc.', 'Kết nối đa dạng, tốc độ cao'),
(29, 19, '1640868705hp2.1.jpg', 'Mang trên mình bộ vi xử lý Intel Core i7 1165G7 có cấu trúc 4 nhân 8 luồng mạnh mẽ, đạt tốc độ xung nhịp tối đa lên đến 4.7 GHz Turbo Boost, cho phép ZBook Firefly vận hành tốt và xử lý mượt mà mọi tác vụ thiết yếu từ học tập - văn phòng cơ bản trên các ứng dụng của Office đến thiết kế đồ họa, giải trí với các tựa game có mức cài đặt trung bình.\r\n\r\nNâng tầm đa nhiệm với bộ nhớ RAM 16 GB chuẩn DDR4 (2 khe), giúp bạn làm việc mượt mà ở mọi tác vụ cùng lúc, thao tác sử dụng hay chuyển đổi giữa những layer cũng trở nên trơn tru hơn, đảm bảo hiệu suất làm việc nhanh chóng mà không xảy ra hiện tượng giật lag nhờ tốc độ Bus RAM 3200 MHz. Máy còn hỗ trợ RAM tối đa 32 GB phục vụ đa dạng nhu cầu của người dùng.', 'Mượt mà đa tác vụ với chip Intel Gen 11 tiên tiến'),
(30, 19, '1640868705hp2.3.jpg', 'Không gian hiển thị tuy nhỏ gọn với kích thước màn hình 14 inch nhưng lại sở hữu góc nhìn rộng lên đến 178 độ nhờ tấm nền IPS tiên tiến, kết hợp với độ phân giải Full HD (1920 x 1080) sắc nét, cung cấp những khung ảnh sinh động đến từng chi tiết với màu sắc trung thực, đảm bảo giữ vững chất lượng hình ảnh dù bạn nhìn nghiêng hay nhìn trực diện.  \r\n\r\nTần số quét 60 Hz cho lượng ánh sáng được cung cấp đầy đủ, phục vụ tốt các nhu cầu thiết yếu hằng ngày của người dùng với những chuyển động mượt mà, độ tương phản tốt mang lại những trải nghiệm làm việc và giải trí đã mắt mà không bị mờ hay nhòe hình. Máy còn bảo vệ cho thị giác người xem trước những nơi có cường độ ánh sáng mạnh nhờ màn hình chống chói Anti Glare hiện đại.', 'Trải nghiệm hình ảnh, âm thanh chuyên nghiệp'),
(31, 19, '1640868705hp2.2.jpg', 'Xuất hiện nổi bật với lớp vỏ kim loại bền chắc và chiếc áo màu xám hiện đại, laptop HP ZBook phù hợp với mọi đối tượng người dùng với phong cách tối giản nhưng vẫn bật lên vẻ sang trọng ở mọi không gian. Bề dày 17.9 mm và trọng lượng chỉ vỏn vẹn 1.35 kg cho phép bạn dễ dàng cất gọn vào balo và linh hoạt di chuyển đến bất cứ đâu để sẵn sàng phục vụ mọi công việc.\r\nKích thước bàn phím đầy đủ và được sắp xếp hợp lý với hành trình ổn định cùng độ nảy cao, mang lại cảm giác soạn thảo văn bản êm tay, thoải mái. Đèn nền được trang bị dưới bàn phím thuận tiện cho người dùng gõ chuẩn xác từng vị trí phím dù làm việc ở môi trường thiếu sáng.', 'Thiết kế hiện đại, thời thượng, mang tính di động cao'),
(32, 20, '1640869216hp3.3.jpg', 'Được chế tác từ lớp vỏ kim loại với gam màu xám chủ đạo cùng những đường góc cạnh vuông vức, sắc sảo, laptop HP ZBook đánh bật mọi đối thủ xuất hiện xung quanh nó dù ở bất kì không gian nào. Bề dày 17.9 mm và trọng lượng chỉ vỏn vẹn 1.35 kg tối ưu hóa độ linh hoạt, luôn sẵn sàng đồng hành cùng bạn đến mọi chuyến công tác xa mà không lo cồng kềnh, nặng nhọc.\r\nBộ bàn phím được thiết kế với tiết diện rộng rãi và gam màu sắc cùng tông tạo nên một tổng thể chỉnh chu cho máy, mang lại năng lượng làm việc hứng thú cho người dùng. Trải nghiệm gõ máy thêm phần hoàn hảo với hành trình sâu và đèn nền phím tiện lợi, mang đến cảm giác nhập liệu êm tay và chuẩn xác đến từng vị trí ngay cả khi bạn làm việc trong môi trường thiếu sáng. ', 'Ngoại hình hiện đại, thời trang, tính linh hoạt cao'),
(33, 20, '1640869216hp3.1.jpg', 'Bộ vi xử lý Intel Core i5 Tiger Lake 1135G7 được trang bị trên máy với cấu trúc 4 nhân 8 luồng có tốc độ xung nhịp cơ bản đạt 2.40 GHz và ép xung lên đến 4.2 GHz Turbo Boost giúp người dùng xử lý toàn vẹn mọi tác vụ văn phòng từ cơ bản đến nâng cao trên các ứng dụng của Office, bên cạnh đó còn mang đến những phút giây thư giãn sống động với các các tựa game có mức cài đặt trung bình đình đám như LOL, PUBG, CS:GO, Fifa Online 4, GTA V,...\r\n\r\nNâng cao hiệu suất làm việc với bộ nhớ RAM 16 GB chuẩn DDR4 (2 khe), mang đến tầm đa nhiệm mượt mà hơn bao giờ hết khi cho phép bạn mở hàng loạt các cửa sổ trình duyệt cùng lúc hay chuyển đổi qua lại giữa những layer đồ họa mà không xảy ra hiện tượng giật lag nhờ tốc độ Bus RAM 3200 MHz. HP còn mang lại một trải nghiệm công việc suôn sẻ hơn khi cho phép người dùng nâng cấp tối đa lên đến 32 GB RAM. ', 'Sức mạnh hiệu năng đến từ chip Intel thế hệ 11 tiên tiến'),
(34, 20, '1640869216hp3.3.jpg', 'Kích thước màn hình 14 inch có độ phân giải Full HD (1920 x 1080) cung cấp những khung hình sắc nét đến từng chi tiết, giúp cho những nội dung hiển thị trên máy được sinh động hơn với mảng màu sắc chân thực, bên cạnh đó còn giữ vững cho chất lượng hình ảnh luôn rõ nét dù bạn nhìn nghiêng hay nhìn thẳng với góc rộng lên đến 178 độ nhờ tấm nền IPS hiện đại.  \r\n\r\nTần số quét 60 Hz cho những chuyển động hình ảnh trở nên mượt mà hơn, hạn chế tối đa tình trạng bị nhòe hay mờ hình khi bạn di chuyển với tốc độ nhanh. Bên cạnh đó, màn hình chống chói Anti Glare được trang bị trên máy giúp bảo vệ thị giác của người dùng trước những nơi có ánh sáng gắt như ngoài trời hoặc khi bạn làm việc hay giải trí trong suốt thời gian dài mà không có hiện tượng mỏi hay chói mắt.\r\n\r\n', 'Giải trí ấn tượng với hình ảnh, âm thanh sống động như thật'),
(35, 21, '1640869909hp4.3.jpg', 'Laptop HP Envy được trang bị bộ xử lý Intel Core i7. Đây là chiếc laptop sở hữu CPU thế hệ 11, lõi tứ 8 luồng cho xung nhịp trung bình 2.80 GHz ở các công việc văn phòng như Word, Excel, Powerpoint và xung nhịp tối đa lên đến 4.7 GHz với các tác vụ hạng nặng như: Photoshop, Adobe Premiere nhờ công nghệ Turbo Boost, mang đến hiệu năng mạnh mẽ đảm bảo xử lý tốt các công việc của bạn.\r\n\r\nRAM 8 GB cho khả năng đa nhiệm mượt mà, bạn có thể mở cùng lúc nhiều ứng dụng phục vụ cho công việc của bạn như vừa mở phần mềm thiết kế Adobe Illustrator, vừa mở trình duyệt web để tìm kiếm hình ảnh, nghe nhạc giải trí, lướt mạng xã hội mà laptop của bạn vẫn hoạt động một cách mượt mà và ổn định.', 'Hiệu năng mạnh mẽ cho mọi công việc đạt hiệu suất tối đa'),
(36, 21, '1640869909hp4.4.jpg', 'Để đạt tiêu chuẩn nền Intel Evo laptop cần phải trải qua một bài kiểm tra nghiêm ngặt về khả năng ứng dụng thực tế như: tốc độ mở trang Chrome, khả năng xử lý các ứng dụng văn phòng Google G-Suite, Microsoft Office 365, thời lượng pin đạt 9 tiếng hoặc hơn,...', 'Đạt tiêu chuẩn nền Intel Evo đảm bảo hiệu năng của máy'),
(37, 21, '1640869909hp4.2.jpg', 'Chiếc laptop HP này toát lên nét cực kỳ sang trọng với vỏ được làm từ kim loại sáng bóng bắt mắt, ngoài tăng nét thẩm mỹ cho máy thì lớp vỏ này còn giúp bảo vệ các linh kiện bên trong khi có va đập xảy ra và giúp máy tản nhiệt tốt hơn khi làm việc ở cường độ cao.\r\n\r\nTuy có lớp vỏ bằng kim loại nhưng máy lại siêu mỏng nhẹ với độ dày chỉ 16.9 mm và chỉ nặng 1.236 kg bạn có thể dễ dàng mang theo khi đi công tác hay đi gặp khách hàng mà không lo bị vướng víu.\r\n\r\n', 'Thiết kế mỏng nhẹ, sang trọng'),
(38, 22, '1640870448hp5.6.jpg', 'Được chế tác từ lớp vỏ kim loại bền bỉ cùng chiếc áo có gam màu đen chủ đạo và những đường nét vuông vức, tinh tế, laptop HP Envy toát lên dáng vẻ kiêu sa, sang chảnh, thu hút mọi ánh nhìn của những người xung quanh dù ở không gian văn phòng kín đáo hay những quán cafe đông đúc. Bề dày 16.4 mm và trọng lượng đáng kinh ngạc chỉ vỏn vẹn 1.3 kg cho phép bạn làm việc ngay cả khi đang di chuyển.\r\nCác nút phím được thiết kế vuông vức với tiết diện rộng rãi cùng gam màu đen cùng tông mang đến một tổng thể sắc sảo, chỉnh chu. Hành trình sâu, độ nảy cao và đèn nền phím tích hợp mang đến trải nghiệm nhập liệu êm tay, thoải mái với tốc độ gõ nhanh và chính xác trên từng vị trí ngay cả khi bạn làm việc trong môi trường thiếu sáng.\r\n\r\n', 'Ghi điểm với lối thiết kế mỏng nhẹ, đậm tính thời trang'),
(39, 22, '1640870448hp5.1.jpg', 'Với cấu trúc 8 nhân 16 luồng mạnh mẽ, Envy cho phép bạn xử lý tuyệt hảo mọi tác vụ từ cơ bản đến nâng cao nhờ bộ vi xử lý AMD Ryzen 7 5800U có tốc độ xung nhịp cơ bản đạt 1.90 GHz, giải quyết nhẹ nhàng mọi công việc trên Word, Excel, PowerPoint,... hay các nhu cầu giải trí cơ bản như lướt web, xem phim, nghe nhạc,... và ép xung tối đa lên đến 4.4 GHz Turbo Boost vận hành tốt các tác vụ đồ họa chuyên sâu hơn. \r\n\r\nCard đồ họa tích hợp AMD Radeon Graphics cải thiện hiệu suất đồ họa tương đối rõ nét với các mảng màu sắc chân thực, thỏa đam mê sáng tạo với các thao tác chỉnh sửa hình ảnh hay dựng phim đơn giản trên các ứng dụng của nhà Adobe như Photoshop, Illustrator, Premiere,... hay tận hưởng các tựa game giải trí hấp dẫn đình đám có mức cài đặt trung bình - cao như LOL, PUBG,... \r\n\r\nĐa nhiệm mượt mà hơn hẳn với bộ nhớ RAM 8 GB chuẩn DDR4 (On board) đạt tốc độ Bus RAM 3200 MHz, cho phép bạn làm việc liên tục trên nhiều cửa sổ ứng dụng khác nhau cùng lúc để phục vụ tối đa cho mọi nhu cầu công việc mà không xảy ra hiện tượng giật lag hay đứng máy. ', 'Phá vỡ mọi giới hạn với chip ADM Ryzen 7'),
(40, 22, '1640870448hp5.2.jpg', 'Kích thước màn hình 13.3 inch và sở hữu tấm nền IPS hiện đại cùng độ phân giải Full HD (1920 x 1080) cung cấp cho bạn những mảng màu sắc trung thực và sắc nét đến từng chi tiết với góc nhìn rộng lên đến 178 độ, giữ vững cho chất lượng khung hình luôn được hoàn hảo dù bạn nhìn nghiêng hay nhìn thẳng nhờ độ tương phản cao đến từ màn hình 100% sRGB.  \r\n\r\nĐộ sáng màn hình 400 nits cùng tần số quét 60 Hz cho phép bạn làm việc trong suốt thời gian dài với lượng ánh sáng được cung cấp đầy đủ, hiển thị rõ nét từng nội dung trên màn hình mà không bị nhòe hay mờ hình.\r\n\r\n', 'Trọn vẹn phút giây giải trí với âm thanh, hình ảnh tuyệt hảo'),
(44, 24, '1640873030hp7.2.jpg', 'Laptop HP 15s thiết kế với lớp vỏ nhựa chắc chắn được phủ một lớp màu bạc, cùng những đường cắt tinh xảo mang đến cái nhìn bắt mắt. Máy sở hữu trọng lượng 1.78 kg cùng với độ dày chỉ 19.9 mm bạn hoàn toàn có thể nâng máy bằng một tay hay để vừa balo, túi xách mang theo bên mình một cách nhẹ nhàng.\r\nBàn phím chiếc laptop HP cơ bản này được thiết kế Fullsize, hành trình phím phù hợp, độ nảy tốt cho cảm giác gõ phím thoải mái. Bàn phím số bên phải để bạn thuận tiện nhập dữ liệu số nhanh chóng, không lo nhầm lẫn. \r\n', 'Vẻ ngoài hiện đại và thời thượng'),
(45, 24, '1640873030hp7.4.jpg', 'HP 15s sở hữu màn hình 15.6 inch với độ phân giải HD (1366 x 768) đem đến trải nghiệm hình ảnh rõ ràng và màu sắc tươi mới, để bạn tận hưởng không gian giải trí phim ảnh thật trọn vẹn và sống động.\r\n\r\nCông nghệ LED Backlit cho màn hình mỏng giúp tối ưu lượng điện năng tiêu thụ. Màn hình SVA cho góc nhìn rộng hơn, hình ảnh luôn đồng nhất từ các góc nhìn khác nhau cùng độ sáng tối ưu 220 nits giúp hình ảnh rõ nét ngay khi sử dụng có ngoài trời.', 'Hình ảnh sắc nét, màu sắc chân thật'),
(46, 24, '1640873030hp7.3.jpg', 'HP 15s trang bị chip Intel Core i3 Comet Lake 10110U với 2 nhân 4 luồng cho khả năng phản hồi ổn định, tiết kiệm điện năng, giúp bạn sử dụng mượt mà các tác vụ văn phòng, học tập và lướt web với xung nhịp trung bình 2.10 GHz và chạy mượt các ứng dụng chỉnh sửa hình ảnh với xung nhịp lên đến 4.10 GHz khi được ép xung nhờ Turbo Boost.\r\n\r\nCard tích hợp Intel UHD Graphics mang lại cho người dùng chất lượng hiển thị đồ họa sắc nét hơn, để bạn có thể xử lý các tác vụ về hình ảnh một cách hiệu quả nhất.\r\n\r\nRAM 4 GB DDR4 2 khe (1 khe 4 GB + 1 khe rời) cho Bus RAM 2666 MHz cho khả năng đa nhiệm khá tốt, chuyển đổi linh hoạt giữa nhiều ứng dụng mà không gây đứng máy. Người dùng có thể nâng cấp RAM tối đa 32 GB khi cần. ', 'Hiệu năng ổn định, đa nhiệm mượt mà'),
(47, 25, '1640923104D1.3.jpg', 'Mang đến tốc độ cơ bản 3.30 GHz và ép xung lên đến 4.2 GHz nhờ Turbo Boost, bộ vi xử lý AMD Ryzen 5 5600H sở hữu 6 nhân 12 luồng, cùng bộ nhớ đệm 16 MB cho phép bạn xử lý nhanh gọn và hiệu quả mọi tác vụ văn phòng từ cơ bản đến nâng cao cùng Word, Excel,... hay thỏa sức chiến những trận game đầy kịch tính không khoan nhượng một cách mượt mà.\r\n\r\nĐa nhiệm hơn bao giờ hết nhờ RAM 8 GB chuẩn DDR4 2 khe (1 khe 8 GB + 1 khe rời) sở hữu tốc độ Bus RAM 3200 MHz, cùng khả năng nâng cấp RAM lên đến 32 GB hỗ trợ bạn mở hàng chục tab hay nhiều ứng dụng cùng lúc và chuyển đổi qua lại mà không lo xảy ra tình trạng giật lag.\r\n\r\n', 'Bất bại trên mọi chiến trường ảo'),
(48, 25, '1640923104D1.2.jpg', 'Sở hữu lớp vỏ nhựa màu xám bền bỉ, laptop Dell Gaming được thiết kế với trọng lượng 2.8 kg và dày 26.9 mm, mang đến sự linh động trong việc di chuyển, luôn đồng hành cùng bạn trong mọi chuyến đi, đáp ứng mọi nhu cầu mọi lúc mọi nơi.\r\nNhững cổng giao tiếp được trang bị dọc theo hai bên của chiếc laptop này như USB 3.2, 2 cổng USB 2.0, HDMI, Jack tai nghe 3.5 mm, LAN (RJ45) và USB Type-C, hỗ trợ người dùng liên kết với nhiều thiết bị ngoại vi tương thích mà không phải chuyển đổi rườm rà, mất thời gian.', 'Thiết kế hiện đại, đậm phong cách thành thị'),
(49, 25, '1640923104D1.5.jpg', 'Âm thanh to rõ đến từ công nghệ Nahimic Audio cùng khả năng khử tiếng ồn hiện đại mang đến cho bạn những trải nghiệm khó quên với chất âm chuyên nghiệp, cho bạn đắm chìm trong những giờ phút giải trí đầy thư giãn.\r\nDell Gaming G15 5515 R5 5600H (P105F004CGR) là thế hệ laptop gaming đáng được chọn mua khi sở hữu thiết kế mạnh mẽ, ấn tượng cùng hiệu năng vượt trội, là sự chọn lựa phù hợp cho tất cả mọi người, nhất là các game thủ hay những ai có nhu cầu về đồ họa - kỹ thuật.', 'Tái tạo chuẩn xác cả về hình ảnh lẫn âm thanh'),
(50, 26, '1640924795D2.5.jpg', 'Màn hình 14.5 inch cùng độ phân giải QHD+ (2560 x 1600) cho hình ảnh hiển thị chân thật, rõ nét ở cả trong nhà hay ngoài trời nhờ độ sáng màn hình 300 nits.\r\n\r\nHiển thị một cách chính xác và sắc nét các chi tiết của hình ảnh nhờ màn hình 100% sRGB, đồng thời giúp hạn chế tối đa sự khác biệt giữa hình ảnh hiển thị với thực tế.\r\nKhung hình được trải rộng lên đến 178 độ nhờ tấm nền IPS mang đến cho bạn hình ảnh sống động dù không ngồi trực diện mà không lo mỏi mắt hay lóa mắt do ảnh hưởng xấu từ ánh sáng xanh độc hại nhờ công nghệ chống chói Anti Glare.', 'Tận hưởng khung hình chân thật cùng âm thanh sống động'),
(51, 26, '1640924795D2.3.jpg', 'Vận hành mượt mà các ứng dụng văn phòng như Word, Excel,... nhờ bộ vi xử lý Intel Core i5 Tiger Lake 1135G7 với 4 nhân 8 luồng có tốc độ cơ bản 2.40 GHz và ép xung lên đến 4.2 GHz nhờ Turbo Boost, đồng thời trải nghiệm thiết kế đồ họa ấn tượng với Photoshop, Ai,...\r\n\r\nRAM 16 GB loại LPDDR4X (On board) với tốc độ Bus RAM lên đến 4267 MHz mang đến sự đa nhiệm vượt trội, cho bạn thoải mái mở nhiều ứng dụng và chuyển đổi qua lại mà không lo giật hay lag máy.', 'Hoàn thành mọi tác vụ nhờ hiệu năng mạnh mẽ'),
(52, 26, '1640924795D2.6.jpg', 'Laptop Dell Inspiron được chế tác từ chất liệu nhựa bền bỉ với nắp lưng kim loại cao cấp, được phủ sắc bạc thời thượng, sở hữu trọng lượng 1.35 kg và dày 16.75 mm, sẵn sàng đồng hành cùng bạn đến bất kỳ đâu mà không lo cồng kềnh, phục vụ tối đa cho mọi nhu cầu từ công việc đến giải trí.\r\nThuận tiện làm việc trong điều kiện thiếu ánh sáng nhờ đèn nền được trang bị ở bàn phím với hành trình phím tốt của chiếc laptop này, hỗ trợ bạn làm việc ở cả điều kiện ánh sáng thấp nhất.', 'Bật lên phong cách đẳng cấp với thiết kế hiện đại'),
(53, 27, '1640925919D3.4.jpg', 'Dell Inspiron 5310 được thiết kế với vẻ ngoài thanh lịch tinh tế kết hợp với lớp vỏ kim loại màu bạc tạo nên tổng thể sang trọng, bắt mắt, phù hợp mọi không gian. Laptop khá mỏng nhẹ với độ dày chỉ 15.9 mm và trọng lượng 1.28 kg, dễ dàng cho bạn mang theo trong balo, túi xách.\r\nBàn phím của máy khoảng cách phím rộng, thao tác soạn thảo nhanh khá thoải mái, độ nhạy cao, phím nhấn êm. Đèn bàn phím được cài đặt hỗ trợ tốt nhu cầu sử dụng máy trong điều kiện thiếu sáng.\r\n\r\n', 'Thiết kế nhẹ nhàng, thanh lịch'),
(54, 27, '1640925919D3.1.jpg', 'Nhờ chip Intel Core i3 Tiger Lake 1125G4 hoạt động với 4 nhân 8 luồng, xung nhịp xử lý cơ bản 2.00 GHz và ép xung lên đến 3.7 GHz giúp laptop chạy mượt mà các ứng dụng văn phòng cơ bản như Word, Excel, PowerPoint,... hay duyệt web, tra cứu thông tin, giải trí cũng được diễn ra nhanh chóng.\r\n\r\nKết hợp cùng card tích hợp Intel UHD Graphics cải thiện sức mạnh đồ họa, hỗ trợ tích cực trên các ứng dụng thiết kế đồ họa cơ bản trên Photoshop, Canva,... đồng thời giải trí, xem phim với chất lượng hình ảnh mượt mà, rõ nét.\r\n\r\nSở hữu RAM 8 GB chuẩn LPDDR4X (On board) với tốc độ Bus RAM lên tới 4267 MHz mang đến sự mượt mà trên từng tác vụ trải nghiệm, thao tác nhanh nhạy, không bị lag hay đơ máy khi chạy hàng loạt các ứng dụng trên máy.', 'Hiệu năng ổn định, tác vụ văn phòng mượt mà'),
(55, 27, '1640925919D3.5.jpg', 'Laptop Dell Inspiron này có kích thước màn hình 13.3 inch, không lớn nhưng được hỗ trợ góc nhìn rộng Wide Viewing Angle (WVA) nhờ đó gia tăng không gian trải nghiệm, cho hình ảnh thêm sống động, ấn tượng, độ phân giải Full HD+ (1920 x 1200) sắc nét.\r\nMàn hình có độ phủ màu 100% sRGB, độ sáng đạt 300 nits cho màu sắc tươi sáng, độ tương phản tốt, màu sắc chuẩn xác. Cùng công nghệ chống chói Anti Glare ổn định chất lượng màn hình dưới ánh sáng gắt, không bị lóa mờ, bảo vệ thị giác.', 'Trải nghiệm màn hình sắc nét ấn tượng'),
(56, 28, '1640926702D4.4.jpg', 'Lớp vỏ nhựa cứng cáp cùng chiếc áo gam màu đen nhám và những đường nét sắc sảo trên máy đã mang đến cho laptop Dell Vostro một phong thái sang trọng, cuốn hút mọi ánh nhìn của những người xung quanh. Trọng lượng 1.7 kg vẫn có thể gọn gàng cất vào balo và cùng bạn linh hoạt di chuyển đến mọi nơi để phục vụ cho mọi nhu cầu công việc cần thiết.\r\nThiết kế bàn phím hợp lý cùng hành trình phím ổn định mang đến trải nghiệm soạn thảo êm tay và thoải mái hơn khi bạn gõ phím với tốc độ nhanh nhưng vẫn không sợ ảnh hưởng tới những người xung quanh. Một điểm trừ cho chiếc laptop Dell này là không được trang bị đèn nền, gây khó khăn khi bạn có nhu cầu sử dụng trong bóng tối.', 'Ngoại hình thanh lịch, trẻ trung, năng động'),
(57, 28, '1640926702D4.2.jpg', 'Mang trên mình con chip AMD Ryzen 5 3500U có cấu trúc 4 nhân 8 luồng đạt tốc độ xung nhịp tối thiểu 2.10 GHz giải quyết êm xuôi mọi tác vụ học tập - văn phòng cơ bản trên Word, Excel, PowerPoint,... hay lướt web, xem phim, nghe nhạc,... và ép xung tối đa lên đến 3.7 GHz Turbo Boost vận hành ổn định các tác vụ nặng hơn như thiết kế đồ họa hay chơi game.\r\n\r\nHiệu suất làm việc được nâng tầm đáng kể nhờ bộ nhớ RAM 8 GB chuẩn DDR4 2 khe (1 khe 8 GB + 1 khe rời) có tốc độ Bus RAM 2400 MHz, cho phép bạn đa nhiệm mượt mà hàng loạt cửa sổ trình duyệt được mở cùng lúc, vừa học tập song song với giải trí mà không lo bị đơ hay đứng máy, bên cạnh đó còn hỗ trợ nâng cấp tối đa 16 GB cho phục vụ tối ưu nhu cầu sử dụng cho người dùng. \r\n\r\nCard đồ họa tích hợp AMD Radeon Vega 8 Graphics thỏa mãn đam mê sáng tạo cho người dùng với các thao tác chỉnh sửa hình ảnh có kết xuất 2D sinh động hay biên tập các video cơ bản trên Photoshop, Figma, Illustrator,... một cách chuyên nghiệp, đồng thời chạy các trò chơi nhẹ nhàng một cách mượt mà như Township, Among us,...', 'Đa nhiệm mượt mà mọi tác vụ văn phòng'),
(58, 28, '1640926702D4.5.jpg', 'Kích thước màn hình 14 inch có độ phân giải Full HD (1920 x 1080) cùng công nghệ LED Backlit cung cấp cho bạn những khung hình sắc nét đến từng chi tiết trên màn hình viền mỏng hơn, nội dung hiển thị trở nên hài hòa với các mảng màu sắc chân thực, đắm chìm bạn vào không gian giải trí sống động trong suốt ngày dài mà vẫn tiết kiệm được nguồn điện năng đáng kể. \r\n\r\nĐộ sáng 220 nits và tần số quét 60 Hz cung cấp độ sáng đủ để bạn làm việc và học tập trong khoảng thời gian dài, kết hợp với màn hình WVA mang đến góc nhìn rộng hơn lên đến 178 độ giúp bạn quan sát mọi nội dung hiển thị trên màn hình một cách tổng thể nhất. Màn hình chống chói Anti Glare được trang bị trên máy nhằm bảo vệ tối đa thị giác của người xem trước những nơi có cường độ ánh sáng gắt. ', 'Hình ảnh sắc nét, âm thanh sống động như thật'),
(59, 29, '1640927220D5.4.jpg', 'Với 2 nhân 4 luồng, bộ vi xử lý Intel Core i3 Tiger Lake 1115G4 mang đến tốc độ cơ bản 3.00 GHz và đạt tối đa lên đến 4.1 GHz nhờ Turbo Boost cho bạn xử lý mọi tác vụ văn phòng cơ bản một cách gọn nhẹ cùng các ứng dụng Word, Excel,... nâng cao năng suất làm việc.\r\n\r\nCard đồ họa tích hợp Intel UHD Graphics hỗ trợ bạn chỉnh sửa đồ họa đơn giản với hình ảnh rõ nét cùng các ứng dụng nhà Adobe như Ai, Photoshop,... hay chơi các tựa game hạng nhẹ một cách ổn định.\r\n\r\nHiệu quả công việc được tối ưu hơn nhờ RAM 8 GB loại DDR4 2 khe (1 khe 8 GB + 1 khe rời) với tốc độ Bus RAM lên đến 2666 MHz, cùng khả năng nâng cấp RAM 16 GB cho phép bạn làm việc đa nhiệm hơn khi có thể mở và chuyển đổi qua lại giữa nhiều tab.', 'Cấu hình ổn định đến từ chip Intel Gen 11'),
(60, 29, '1640927220D5.5.jpg', 'Laptop Dell Vostro sở hữu trọng lượng khá nhẹ là 1.64 kg và dày 19.9 mm, được chế tác từ chất liệu nhựa bền bỉ, đồng hành cùng bạn đến bất kỳ đâu mà không lo chiếm quá nhiều diện tích trong balo, phục vụ cho nhu cầu của bạn ở bất cứ nơi nào.\r\nCác cổng kết nối phổ biến được thiết kế ở hai bên laptop Dell như 2 cổng USB 3.2, HDMI, Jack tai nghe 3.5 mm, LAN (RJ45), USB 2.0 và khe cắm thẻ nhớ SD hỗ trợ người dùng truyền xuất dữ liệu nhanh chóng và dễ dàng.', 'Kiểu dáng hiện đại cùng gam màu đen mạnh mẽ'),
(61, 29, '1640927220D5.6.jpg', 'Màn hình 14 inch sở hữu độ phân giải Full HD (1920 x 1080) mang đến cho người dùng hình ảnh chân thật, rõ nét cùng màu sắc được tái tạo chuẩn xác, phục vụ nhu cầu của bạn được tối ưu hơn. Công nghệ chống chói Anti Glare cho phép bạn làm việc lâu dài ở những nơi có điều kiện ánh sáng không tốt mà không lo mỏi hay lóa mắt.\r\nHD webcam hỗ trợ bạn làm việc hay học trực tuyến với các ứng dụng Zoom, Google Meet, Microsoft Teams,... với hình ảnh rõ nét nhờ độ phân giải 720p.', 'Vượt khỏi mọi ranh giới nhờ hình ảnh và âm thanh sống động'),
(62, 30, '16409339621.5.jpg', 'Chiếc laptop Lenovo này có lớp vỏ kim loại màu đen vô cùng sang trọng, phù hợp với mọi các tính. Máy có trọng lượng rất nhẹ chỉ 1.36 kg và mỏng 14.9 mm bạn có thể dễ dàng cầm bằng một tay, có thể để vào balo hay túi xách để mang theo bên mình nhằm xử lý công việc bất cứ lúc nào. \r\nBản lề của máy có thể mở 180 độ cho bạn sử dụng laptop một cách linh hoạt nhất, trong lúc họp hay làm việc nhóm bạn rất dễ dàng chia sẻ nội dung trên màn hình cho người đối diện. Bàn phím của laptop Lenovo Yoga còn được trang bị đèn nền bạn có thể yên tâm nhập liệu chính xác kể cả khi sử dụng trong điều kiện môi trường ánh sáng yếu.\r\n\r\n', 'Thiết kế tối giản, tiện lợi'),
(63, 30, '16409339621.3.jpg', 'Máy sở hữu con chip Intel Core i5 Tiger Lake 1135G7 có khả năng xử lý mạnh mẽ, các tác vụ học tập, công việc và giải trí đều đạt được thực hiện một cách mượt mà với hiệu suất nhanh hơn. Đồng thời tiết kiệm năng lượng, kéo dài tuổi thọ pin, giúp bạn đạt hiệu suất cao trong công việc nhờ có 4 lõi 8 luồng, mức xung nhịp cơ bản là 2.4 GHz và tối đa lên tới 4.2 GHz nhờ Turbo Boost.\r\n\r\nĐi cùng với CPU thế hệ 11 là card tích hợp Intel Iris Xe Graphics bạn có thể sử dụng các phần mềm đồ họa như Photoshop, AI,... hay giải trí bằng các tựa game online ở mức cài đặt trung bình khá.\r\n\r\nBộ nhớ RAM 8 GB loại DDR4 (On board) thực hiện đa nhiệm vô cùng trơn tru, mang đến khả năng chạy đồng thời nhiều ứng dụng, bạn có thể mở nhiều tabs trình duyệt mà không giật, lag giúp bạn hoàn thành công việc một cách nhanh chóng với tốc độ Bus RAM là 3200 MHz. \r\n\r\n', 'Hiệu năng ổn định đến từ con chip Intel '),
(64, 30, '16409339621.4.jpg', 'Sở hữu màn hình 14 inch kết hợp độ phân giải Full HD (1920 x 1080) giúp từng chi tiết của nội dung hiển thị đều vô cùng sắc nét, chân thực mang đến cho bạn trải nghiệm xem đầy hấp dẫn. Bên cạnh đó, màn hình còn trang bị tấm nền IPS cho góc nhìn rộng lên đến 178 độ, đảm bảo màu sắc và chi tiết của hình ảnh vẫn hiển thị chính xác khi bạn thay đổi hướng nhìn.\r\nNgoài ra, màn hình còn có độ sáng tối đa là 300 nits Glossy cùng dải màu rộng 100% sRGB cho mọi hình ảnh hiển thị sống động, khi bạn sử dụng ngoài trời thì màn hình vẫn vô cùng rõ nét.', 'Trải nghiệm thêm phần tuyệt vời với màn hình sắc nét, âm thanh sống động'),
(65, 31, '16409339781.5.jpg', 'Chiếc laptop Lenovo này có lớp vỏ kim loại màu đen vô cùng sang trọng, phù hợp với mọi các tính. Máy có trọng lượng rất nhẹ chỉ 1.36 kg và mỏng 14.9 mm bạn có thể dễ dàng cầm bằng một tay, có thể để vào balo hay túi xách để mang theo bên mình nhằm xử lý công việc bất cứ lúc nào. \r\nBản lề của máy có thể mở 180 độ cho bạn sử dụng laptop một cách linh hoạt nhất, trong lúc họp hay làm việc nhóm bạn rất dễ dàng chia sẻ nội dung trên màn hình cho người đối diện. Bàn phím của laptop Lenovo Yoga còn được trang bị đèn nền bạn có thể yên tâm nhập liệu chính xác kể cả khi sử dụng trong điều kiện môi trường ánh sáng yếu.\r\n\r\n', 'Thiết kế tối giản, tiện lợi'),
(66, 31, '16409339781.3.jpg', 'Máy sở hữu con chip Intel Core i5 Tiger Lake 1135G7 có khả năng xử lý mạnh mẽ, các tác vụ học tập, công việc và giải trí đều đạt được thực hiện một cách mượt mà với hiệu suất nhanh hơn. Đồng thời tiết kiệm năng lượng, kéo dài tuổi thọ pin, giúp bạn đạt hiệu suất cao trong công việc nhờ có 4 lõi 8 luồng, mức xung nhịp cơ bản là 2.4 GHz và tối đa lên tới 4.2 GHz nhờ Turbo Boost.\r\n\r\nĐi cùng với CPU thế hệ 11 là card tích hợp Intel Iris Xe Graphics bạn có thể sử dụng các phần mềm đồ họa như Photoshop, AI,... hay giải trí bằng các tựa game online ở mức cài đặt trung bình khá.\r\n\r\nBộ nhớ RAM 8 GB loại DDR4 (On board) thực hiện đa nhiệm vô cùng trơn tru, mang đến khả năng chạy đồng thời nhiều ứng dụng, bạn có thể mở nhiều tabs trình duyệt mà không giật, lag giúp bạn hoàn thành công việc một cách nhanh chóng với tốc độ Bus RAM là 3200 MHz. \r\n\r\n', 'Hiệu năng ổn định đến từ con chip Intel '),
(67, 31, '16409339781.4.jpg', 'Sở hữu màn hình 14 inch kết hợp độ phân giải Full HD (1920 x 1080) giúp từng chi tiết của nội dung hiển thị đều vô cùng sắc nét, chân thực mang đến cho bạn trải nghiệm xem đầy hấp dẫn. Bên cạnh đó, màn hình còn trang bị tấm nền IPS cho góc nhìn rộng lên đến 178 độ, đảm bảo màu sắc và chi tiết của hình ảnh vẫn hiển thị chính xác khi bạn thay đổi hướng nhìn.\r\nNgoài ra, màn hình còn có độ sáng tối đa là 300 nits Glossy cùng dải màu rộng 100% sRGB cho mọi hình ảnh hiển thị sống động, khi bạn sử dụng ngoài trời thì màn hình vẫn vô cùng rõ nét.', 'Trải nghiệm thêm phần tuyệt vời với màn hình sắc nét, âm thanh sống động'),
(68, 32, '16409344142.5.jpg', 'Lenovo Yoga 9 14ITL5 được thiết kế với ngoại hình ấn tượng, chỉ mỏng 15.7 mm và trọng lượng nhẹ 1.37 kg, tựa như 1 cuốn sổ di động để dàng để mang theo trong hành trang cá nhân thường nhật.\r\n\r\nLớp vỏ kim loại bóng bẩy với màu sắc hiện đại thể hiện trọn vẹn sự sang trọng và cao cấp, xứng tầm ngoại hình của 1 chiếc laptop doanh nhân, sành điệu.', 'Siêu mỏng, siêu nhẹ, siêu thời trang'),
(69, 32, '16409344142.6.jpg', 'Lenovo Yoga 9 đạt chuẩn Intel Evo tiên tiến với nhiều tiêu chí đặt ra rất khắt khe, phù hợp với xu hướng laptop mỏng, gọn nhẹ nhưng cấu hình vẫn mạnh mẽ, đáp ứng đa dạng nhu cầu người dùng.\r\n\r\nSở hữu dòng chip Intel Core i7 Tiger Lake thế hệ 11 với xung nhịp trung bình 3.00 GHz và Turbo Boost lên đến 4.8 GHz giúp laptop không chỉ xử lý nhanh nhạy các ứng dụng văn phòng, đồ họa 2D thông dụng mà còn chạy mượt mà các ứng dụng đồ họa, video.\r\n\r\nBộ nhớ RAM 16 GB cùng tốc độ bus RAM lên đến 4266 MHz mang đến tốc độ xử lý đa tác vụ cực ấn tượng. Bạn dễ dàng mở hàng chục tab Chrome, truy cập internet đồng thời vời sử dụng các ứng dụng đồ họa chuyên nghiệp, di chuyển cực mượt giữa chúng mà không hề gặp tình trạng đứng máy hay giật màn hình.', 'Cấu hình đầy mạnh mẽ, chinh phục mọi tác vụ'),
(70, 32, '16409344142.7.jpg', 'Được trang bị bảo mật vân tay, Lenovo Yoga mang đến sự an toàn tối ưu cho các thông tin lưu trữ trên nó, cá nhân hóa hoàn hảo việc khởi động và truy cập các ứng dụng, tài khoản mã hóa trên laptop, để bạn lưu giữ mọi dữ liệu cá nhân quan trọng.\r\nGiao tiếp video thuận tiện qua HD webcam, lựa chọn hữu ích cho nhu cầu làm việc, giao tiếp trực tuyến thời hiện đại. Laptop kèm thêm công tắc khóa camera, bảo vệ các truyền phát không mong muốn do vô tình trong quá trình sử dụng.\r\n\r\nGiao diện bàn phím tốt, tích hợp đèn nền nổi bật để thao tác thuận tiện trong điều kiện thiếu sáng, giúp bạn làm việc, giải trí chơi game dễ dàng trong bóng tối.', 'Tiện dụng, bảo mật cao'),
(71, 33, '16409347113.2.jpg', 'Thuận tiện mang theo trong balo với trọng lượng nhẹ 1.5 kg và độ dày 16.9 mm, Lenovo đã mang đến một phiên bản laptop di động được thiết kế bằng kim loại thời thượng, cùng bạn làm việc và giải trí cả khi đang di chuyển.\r\n\r\nLaptop này được sở hữu bàn phím với các phím có độ nảy tốt được trang bị đèn nền, cho cảm giác gõ thoải mái, hỗ trợ bạn làm việc và giải trí cả trong điều kiện thiếu ánh sáng, không lo nhầm lẫn', 'Kết cấu mỏng nhẹ, đầy chuyên nghiệp'),
(72, 33, '16409347113.3.jpg', 'Lenovo ThinkBook 14s Yoga ITL sở hữu bộ vi xử lý Intel Core i5 Tiger Lake 1135G7 với cấu trúc 4 nhân 8 luồng cung cấp xung nhịp cơ bản đạt 2.40 GHz và khả năng ép xung lên đến 4.2 GHz nhờ công nghệ Turbo Boost giúp thao tác nhanh gọn, chính xác các tác vụ văn phòng từ cơ bản đến nâng cao, tiết kiệm năng lượng hơn các thế hệ tiền nhiệm.\r\n\r\nĐem đến những khung hình 8K sắc nét nhờ card đồ họa tích hợp Intel Iris Xe Graphics, hỗ trợ CPU đạt hiệu suất cao, cải thiện khả năng vận dụng trí tuệ nhân tạo AI đáng kinh ngạc, cho bạn thỏa mãn sử dụng các ứng dụng đồ họa như Photoshop, Premiere, AI, Figma,...\r\n\r\nChiếc Lenovo này cung cấp bộ nhớ RAM 8 GB chuẩn DDR4 (1 khe 8GB on board và 1 khe trống) với tốc độ Bus RAM 3200 MHz mang đến sự đa nhiệm tối ưu, cho phép người dùng mở và chuyển đổi qua lại giữa nhiều ứng dụng cùng lúc mà không lo giật lag máy. Đồng thời, máy được hỗ trợ nâng cấp RAM tối đa 40 GB, phục vụ tối đa cho các nhu cầu của bạn.', 'Mạnh mẽ và đa nhiệm nhờ chip Intel Gen 11'),
(73, 33, '16409347113.4.jpg', 'Màn hình 14 inch có độ phân giải Full HD (1920 x 1080) và độ sáng 300 nits cho hình ảnh hiển thị sắc nét, tươi mới trong điều kiện ánh sáng bình thường như nơi làm việc, tại nhà, trường học, quán cà phê,...\r\nGóc nhìn rộng mở đến 178 độ nhờ tấm nền IPS cùng màn hình 100% sRGB cho hình ảnh hiển thị một cách chân thực và chính xác các đặc điểm, hạn chế tối đa sự khác biệt với thực tế.', 'Hình ảnh rõ nét, âm thanh chân thật'),
(74, 34, '16409349584.4.jpg', 'Phiên bản laptop Lenovo này sở hữu trọng lượng nhẹ 1.7 kg và độ dày 18.9 mm, cùng sắc xám bao bọc bên ngoài với chất liệu kim loại cao cấp, tạo nên một thế hệ laptop năng động, dễ dàng nằm gọn trong balo của bạn, đồng hành trên mọi chuyến đi.\r\nĐặc biệt hơn, khi sự bền bỉ của thiết bị này còn được chứng nhận bởi độ bền chuẩn quân đội MIL STD 810H trước những sự cố không mong muốn hằng ngày như va chạm, rung lắc, áp suất cao,... đảm bảo cho mọi nhu cầu của bạn được đáp ứng tối ưu tại bất kỳ đâu.', 'Kiểu dáng gọn gàng, thu hút mọi ánh nhìn'),
(75, 34, '16409349584.5.jpg', 'Lenovo ThinkBook 15 G2 được trang bị bộ vi xử lý Intel Core i5 Tiger Lake 1135G7 với cấu trúc 4 nhân 8 luồng cho xung nhịp cơ bản đạt 2.40 GHz và khả năng ép xung lên đến 4.2 GHz nhờ công nghệ Turbo Boost hỗ trợ bạn thao tác những công việc văn phòng nhanh gọn cùng Word, Excel,... cho hiệu suất công việc đạt tốt nhất. Ngoài ra, máy còn hỗ trợ bạn thiết kế sản phẩm, posters, banners, render video đơn giản,... cũng hiệu quả không kém.\r\n\r\nCho bạn tận hưởng khung hình chuẩn 8K sắc nét nhờ card đồ họa tích hợp Intel Iris Xe Graphics, mang đến những hình ảnh đúng chuẩn, cho bạn thỏa sức sáng tạo cùng các phần mềm thiết kế như Photoshop, Premiere, AI, Figma,... cùng nhau tạo nên những điều khác biệt.\r\n\r\nNgười dùng có thể thỏa sức mở hàng loạt ứng dụng và chuyển đổi qua lại mà không lo xảy ra tình trạng giật lag máy nhờ bộ nhớ RAM 8 GB chuẩn DDR4 2 khe (1 khe 8 GB on board và 1 khe trống) với tốc độ Bus RAM 3200 MHz cùng khả năng nâng cấp RAM tối đa 40 GB, đáp ứng tối đa cho các nhu cầu của bạn.', 'Chip Intel Gen 11 cho sức mạnh vượt bậc'),
(76, 34, '16409349584.6.jpg', 'Màn hình viền mỏng 15.6 inch có độ phân giải Full HD (1920 x 1080) cung cấp hình ảnh chân thật, sắc nét với màu sắc được tái tạo chuẩn xác ở những nơi có điều kiện ánh sáng bình thường như phòng học, công ty,... nhờ độ sáng màn hình 250 nits.\r\n\r\nSự kết hợp của tấm nền IPS cùng công nghệ chống chói Anti Glare cho bạn tận hưởng khung hình rộng lớn lên đến 178 độ ở bất kỳ điều kiện ánh sáng nào mà không lo mắt bị ảnh hưởng tiêu cực từ ánh sáng sáng xanh độc hại.', 'Tầm nhìn rộng mở cùng âm thanh chuyên nghiệp'),
(77, 35, '16409351595.3.jpg', 'Nâng cao hiệu suất công việc hơn nhờ bộ vi xử lý Intel Core i7 với 4 nhân 8 luồng và đạt tốc độ tối đa 4.7 GHz nhờ Turbo Boost, giúp vận hành mượt mà các ứng dụng văn phòng hay đồ họa như Word, Excel, Photoshop, AI,...\r\n\r\nMang đến chất lượng hình ảnh vượt bật hơn nhờ card đồ họa tích hợp Intel Iris Xe Graphics cho tốc độ xử lý hình ảnh hơn gấp 2.7 lần đem đến khả năng đồ họa vượt trội và những trải nghiệm chân thật với hàng loạt tựa game hấp dẫn như LOL, DOTA 2,... nhưng vẫn tiết kiệm điện năng đáng kể.\r\n\r\nChiếc laptop này còn được trang bị RAM 8 GB loại DDR4 có tốc độ Bus RAM 3200 MHz cho khả năng đa nhiệm, hỗ trợ người dùng mở nhiều ứng dụng cùng lúc mà không lo giật hay lag máy.', 'Hiệu năng ấn tượng cùng chip Intel Gen 11'),
(78, 35, '16409351595.2.jpg', 'Laptop được chế tác từ nhựa bền bỉ với nắp lưng kim loại chắc chắn được phủ sắc xám thời thượng tạo nên vẻ ngoài bắt mắt, cuốn hút mọi ánh nhìn.\r\n\r\nLenovo Ideapad sở hữu trọng lượng nhẹ 1.39 kg và dày 19.9 mm mang tính di động cao, đáp ứng mọi nhu cầu làm việc hay giải trí của người dùng cả khi đang di chuyển.\r\n\r\nBàn phím của máy được trang bị đèn nền phục vụ tốt cho nhu cầu của bạn khi làm việc và giải trí ngay cả trong điều kiện thiếu ánh sáng.', 'Thiết kế hiện đại đầy năng động'),
(79, 35, '16409351595.4.jpg', 'Phiên bản Lenovo này sở hữu màn hình 14 inch viền mỏng cùng độ phân giải Full HD (1920 x 1080) cho bạn hình ảnh rõ nét, tươi mới dưới điều kiện ánh sáng khá cao như ngoài trời nắng không quá gắt nhờ độ sáng màn hình tối đa đạt 300 nits.\r\n\r\nKhung hình được trải rộng hơn lên đến 178 độ nhờ tấm nền IPS cùng khả năng chống chói từ công nghệ Anti Glare cho bạn tận hưởng hình ảnh đầy sống động ở mọi điều kiện ánh sáng mà không lo mỏi mắt, lóa mắt.', 'Trải nghiệm trọn vẹn cùng hình ảnh sắc nét và âm thanh sống động'),
(80, 36, '16409355011.4.jpg', 'Đập vào mắt người dùng là 2 mảnh vải đen thêu chữ trắng nổi bật được ốp trên nắp lưng máy được làm thủ công hoàn toàn bằng tay, phía góc dưới là chữ ký của chính DJ Alan Walker được khắc bằng laser tinh xảo, đảm bảo mọi ánh nhìn xung quanh sẽ đổ dồn về chủ nhân sở hữu siêu phẩm này. \r\n\r\nMột điểm đặc biệt trên chiếc Asus ROG này là công nghệ Anime Matrix, bạn hoàn toàn có thể tự thiết kế dải đèn với 1.215 đèn LED mini trên lưng máy theo những hình ảnh yêu thích bằng chính phần mềm có sẵn ở laptop.', 'Ngoại hình đơn giản, ấn tượng nhưng không kém phần cá tính'),
(81, 36, '16409355011.3.jpg', 'Nâng tầm sức mạnh vượt trội với con chip AMD Ryzen 9 5900HS với tốc độ xử lý cơ bản 3.00 GHz và đạt xung nhịp tối đa 4.6 GHz nhờ công nghệ Turbo Boost tiên tiến, mang đến tốc độ xử lý nhanh chóng và chính xác ở mọi tác vụ công việc từ cơ bản đến nâng cao trên các phần mềm văn phòng như Word, Excel, Powerpoint,... và khả năng thiết kế sáng tạo ấn tượng.\r\n\r\nBộ nhớ RAM 16 GB chuẩn DDR4 2 khe (8 GB onboard + 1 khe 8 GB) cho khả năng đa nhiệm vượt trội, vận hành tốt nhiều ứng dụng cùng lúc, nâng cao năng suất cho người dùng khi vừa mở hàng chục layer đồ họa vừa giải trí, nghe nhạc trên Youtube mà không xảy ra hiện tượng giật lag hay đứng máy, ngoài ra còn hỗ trợ nâng cấp 24 GB đáp ứng đầy đủ nhu cầu cho người dùng.', 'Sẵn sàng tác chiến cùng game thủ trên mọi chiến trường'),
(82, 36, '16409355011.5.jpg', 'Hộp đựng ASUS ROG Zephyrus G14 X Alan Walker có thiết kế khác biệt hoàn toàn so với phiên bản thông thường, bên trong chứa các phụ kiện độc đáo như mũ, tất, cục sạc,... đều được in tên của Alan Walker. Và đặc biệt là chiếc hộp đó sẽ trở thành bàn chơi nhạc điện tử cực kỳ xịn sò, bạn hoàn toàn có thể đánh nhạc như một DJ thực thụ ngay trên đó.', 'Hành trình trở thành nhà sản xuất âm nhạc tài ba '),
(83, 37, '16409356902.2.jpg', 'Vẻ ngoài mạnh mẽ được chế tác từ nhựa cao cấp, nắp lưng bằng kim loại bền bỉ tô thêm phần nổi bật với logo TUF, phủ sắc xám thời thượng, tổng thể như một cỗ máy chiến đấu đầy uy lực nhưng vẫn rất nổi bật, bắt mắt.\r\n\r\nĐộ dày của chiếc laptop Asus TUF này là 24.9 mm và nặng khoảng 2.3 kg, vẫn khá gọn gàng trong phân khúc gaming, vừa vặn bỏ vào balo đồng hành cùng bạn đi bất cứ đâu để chiến game cùng bạn bè cũng như học tập, làm việc hiệu quả.', 'Thiết kế gaming hiện đại, đậm cá tính riêng'),
(84, 37, '16409356902.4.jpg', 'Laptop trang bị con chip Intel Core i5 Tiger Lake 11400H cấu trúc 6 nhân 12 luồng có tốc độ xung nhịp cơ bản 2.70 GHz và đạt tối đa Turbo Boost 4.5 GHz mang đến một hiệu năng vượt trội, khả năng chơi mượt các tựa game thịnh hành như Liên Minh Huyền Thoại, FIFA, PUBG, GTA V,... cũng như giải quyết trơn tru công việc hàng ngày trên phần mềm văn phòng Office 365.\r\n\r\nĐa nhiệm cùng lúc nhiều tác vụ cùng lúc, chơi game ổn định, mượt mà nhờ bộ nhớ RAM 8 GB thuộc dòng DDR4 2 khe (1 khe 8 GB + 1 khe rời) cho tốc độ Bus RAM đạt 3200 MHz, hỗ trợ nâng cấp tối đa đến 32 GB tuỳ vào nhu cầu sử dụng của bạn.', 'Hiệu năng mạnh mẽ, đa tác vụ'),
(85, 37, '16409356902.5.jpg', 'Màn hình với độ phân giải Full HD (1920 x 1080) cùng với kích thước 15.6 inch kết hợp tấm nền IPS cung cấp cho bạn những thước phim đã mắt, những hoạt cảnh game sinh động, tuyệt vời dù ở bất kỳ góc nhìn nào mà bạn muốn mà hình ảnh vẫn sắc nét, tầm nhìn rộng mở đến 178 độ.\r\n\r\nBên cạnh đó, lớp phủ chống chói Anti Glare ngăn chặn sự chói lóa, bóng gương do cường độ ánh sáng cao để bảo vệ và chống mỏi mắt khi bạn sử dụng máy ở ngoài trời hay nơi có ánh sáng cao.', 'Tận hưởng khung hình hiển thị chân thật, âm thanh to rõ'),
(86, 38, '16409359363.2.jpg', 'Đánh thức sức mạnh thật sự nhờ bộ vi xử lý mạnh mẽ Intel Core i7 Tiger Lake 11370H sở hữu 4 nhân 8 luồng cho tốc độ cơ bản đạt 3.30 GHz và đạt tối đa lên đến 4.8 GHz nhờ Turbo Boost, mang đến không gian giải trí cực đã với hàng loạt các tựa game thịnh hành hay trở thành người cộng sự đắc lực, cùng bạn hoàn thành các nhiệm vụ trong văn phòng nhanh chóng một cách hiệu quả cùng Work, Excel,...', 'Sức mạnh tối thượng tạo nên đối thủ đáng gờm khiến ai cũng phải dè chừng'),
(87, 38, '16409359363.4.jpg', 'Tinh xảo với các đường nét tinh tế định hình nên một diện mạo cho TUF Gaming FX516PM, cùng kiểu chữ đơn giản nhưng vẫn nổi bật trên nền xám phong cách, đồng thời phần viền mỏng cũng giúp tối ưu hơn cho màn hình, tạo phong cách riêng cho bạn, phù hợp mọi không gian thiết kế.\r\n\r\nKhung máy mỏng nhẹ với trọng lượng 2 kg và dày 19.9 mm cho phép bạn dễ dàng mang theo trong balo di chuyển đến bất kỳ đâu.', 'Độc đáo với thiết kế tối giản cho một chiếc laptop gaming năng động'),
(88, 38, '16409359363.5.jpg', 'Màn hình 15.6 inch cùng độ phân giải Full HD (1920 x 1080), mang đến hình ảnh đạt chất lượng cao, cho bạn tận hưởng không gian giải trí một cách thật trọn vẹn, chân thật, sắc nét đến từng chi tiết.\r\n\r\nKhông còn quá lo lắng mắt sẽ bị ảnh hưởng xấu khi làm việc ở môi trường ánh sáng không tốt nhờ công nghệ màn hình chống chói Anti Glare, hỗ trợ bạn làm việc và giải trí ở bất kỳ điều kiện ánh sáng nào cùng khung hình được trải rộng đến 178 độ đến từ tấm nền IPS mà không lo mỏi mắt hay lóa mắt.', 'Thỏa mãn tầm nhìn với không gian hình ảnh cùng âm thanh sống động'),
(89, 39, '16409361774.2.jpg', 'Từng đường nét được chế tác tinh xảo định hình nên một diện mạo cho laptop Asus TUF Gaming FX516PM, cùng kiểu chữ đơn giản trên nắp máy nhưng vẫn nổi bật trên nền xám đậm phong cách, sở hữu trọng lượng 2 kg và dày 19.9 mm, mang đến một phiên bản đậm chất riêng, sẵn sàng đồng hành cùng bạn trên mọi chuyến đi.\r\nĐèn nền tiện lợi cùng bộ phím WASD nổi bật được trang bị ở chiếc laptop Asus này, cùng các phím có hành trình sâu, độ nảy tốt, cho bạn cảm giác gõ phím thoải mái, hỗ trợ bạn làm việc thuận lợi cả trong điều kiện ánh sáng kém.', 'Thiết kế tối giản cho một chiếc gaming mạnh mẽ'),
(90, 39, '16409361774.3.jpg', 'Tốc độ cơ bản đạt 3.30 GHz và đạt tối đa lên đến 4.8 GHz nhờ Turbo Boost đến từ bộ vi xử lý mạnh mẽ Intel Core i7 Tiger Lake 11370H sở hữu 4 nhân 8 luồng, hỗ trợ người dùng thao tác mượt mà các công việc văn phòng như Word, Excel,... mang đến hiệu quả công việc vượt bậc, cùng với đó máy còn giúp bạn xử lý ấn tượng các tác vụ nặng như thiết kế, dựng clip,... nhưng vẫn giúp tiết kiệm điện năng tối ưu nhất.\r\n\r\nKhông còn lo lắng xảy ra tình trạng giật lag máy nhờ RAM 8 GB chuẩn DDR4 2 khe (1 khe 8 GB onboard + 1 khe trống) cho tốc độ Bus RAM lên đến 3200 MHz cùng nâng cấp RAM tối đa lên đến 40 GB, cho phép bạn mở cùng lúc nhiều ứng dụng, hàng loạt tab và chuyển đổi qua lại một cách trơn tru, phục vụ tốt hơn cho mọi nhu cầu của bạn.', 'Chip Intel Gen 11, đánh thức sức mạnh tối thượng'),
(91, 39, '16409361774.4.jpg', 'Màn hình viền mỏng 15.6 inch sở hữu độ phân giải Full HD (1920 x 1080), đem đến hình ảnh chân thật, rõ nét với màu sắc được tái tạo đúng chuẩn, cho bạn tận hưởng những khung hình thật nhất ở những nơi có điều kiện ánh sáng bình thường như trong phòng làm việc, tại phòng học,... nhờ độ sáng màn hình 250 nits.\r\n\r\nCông nghệ màn hình chống chói Anti Glare cùng tấm nền IPS cho phép bạn tận hưởng khung hình rộng mở đến 178 độ, ngăn chặn sự mỏi mắt hay lóa mắt ở cả điều kiện ánh sáng bất lợi trong quá trình làm việc', 'Mãn nhãn với hình ảnh và âm thanh chuẩn xác'),
(92, 40, '16409364835.4.jpg', 'Asus VivoBook A515EA sở hữu lớp vỏ nhựa màu bạc cùng phần nắp lưng bằng kim loại chắc chắn tạo nên một thiết kế sang trọng và bền bỉ kết hợp các đường cắt vát chi tiết đơn giản mà tinh tế, mang đến tổng thể bắt mắt cho người sở hữu.\r\n\r\nĐộ dày laptop 17.9 mm, trọng lượng 1.8 kg khá mỏng gọn, tính di động cao, dễ dàng mang theo trong hành trang học tập, làm việc thường nhật.', 'Thiết kế hiện đại, phong cách trang nhã'),
(93, 40, '16409364835.2.jpg', 'Để tạo nên cấu hình tốt cho nhu cầu học tập, làm việc văn phòng cơ bản, laptop Asus Vivobook này sử dụng dòng chip Intel Core i3 Tiger Lake 1115G4 có tốc độ xử lý lên đến 4.1 GHz khi ép xung, mang đến sức mạnh hiệu năng ấn tượng để xử lý các tác vụ cơ bản như Word, Excel, PowerPoint,… hay các chỉnh sửa hình ảnh, kết xuất 2D đơn giản trên các phần mềm Photoshop, Canva,…\r\n\r\nGia tăng sức mạnh đa nhiệm nhờ RAM 8 GB dòng DDR4 2 khe (1 khe 8 GB onboard + 1 khe trống), tốc độ Bus RAM 3200 MHz giữ sự ổn định hiệu năng khi máy chạy đồng thời và liên tục nhiều ứng dụng, không bị giật lag hay đơ máy, đảm bảo hiệu suất công việc. Khi cần cải thiện sức mạnh cấu hình, bạn có thể nâng cấp RAM lên 24 GB.\r\n\r\nCard đồ họa tích hợp Intel UHD Graphics bổ trợ khả năng xử lý đồ họa, cho màn hình thiết kế trên các ứng dụng 2D mượt mà hơn, cải thiện chất lượng duyệt web và xử lý nhẹ nhàng các tựa game đồ họa trung bình thấp, cho bạn hài lòng khi làm việc, thỏa mãn khi giải trí', 'Hiệu năng ổn định, đa nhiệm tốt trên các tác vụ cơ bản'),
(94, 40, '16409364835.5..jpg', 'Laptop Asus sở hữu màn hình 15.6 inch độ phân giải Full HD, thiết kế viền mỏng 2 cạnh cho diện tích trải nghiệm tốt, chất lượng hiển thị sắc nét, màu sắc tươi sáng và tương phản cao, góc nhìn rộng đến 178 độ trên tấm nền IPS.\r\nMàn hình tích hợp công nghệ chống chói Anti Glare cùng với độ sáng màn hình 300 nits, độ chuẩn màu màn hình 100% sRGB giúp laptop duy trì tốt chất lượng hiển thị, màu sắc khung hình cả khi sử dụng ngoài trời hay trong điều kiện ánh sáng chói, không bị lóa mờ, bảo vệ thị giác.', 'Trải nghiệm hình ảnh và âm thanh chất lượng cao'),
(95, 41, '16409365033.2.jpg', 'Đánh thức sức mạnh thật sự nhờ bộ vi xử lý mạnh mẽ Intel Core i7 Tiger Lake 11370H sở hữu 4 nhân 8 luồng cho tốc độ cơ bản đạt 3.30 GHz và đạt tối đa lên đến 4.8 GHz nhờ Turbo Boost, mang đến không gian giải trí cực đã với hàng loạt các tựa game thịnh hành hay trở thành người cộng sự đắc lực, cùng bạn hoàn thành các nhiệm vụ trong văn phòng nhanh chóng một cách hiệu quả cùng Work, Excel,...', 'Sức mạnh tối thượng tạo nên đối thủ đáng gờm khiến ai cũng phải dè chừng'),
(96, 41, '16409365033.4.jpg', 'Tinh xảo với các đường nét tinh tế định hình nên một diện mạo cho TUF Gaming FX516PM, cùng kiểu chữ đơn giản nhưng vẫn nổi bật trên nền xám phong cách, đồng thời phần viền mỏng cũng giúp tối ưu hơn cho màn hình, tạo phong cách riêng cho bạn, phù hợp mọi không gian thiết kế.\r\n\r\nKhung máy mỏng nhẹ với trọng lượng 2 kg và dày 19.9 mm cho phép bạn dễ dàng mang theo trong balo di chuyển đến bất kỳ đâu.', 'Độc đáo với thiết kế tối giản cho một chiếc laptop gaming năng động'),
(97, 41, '16409365033.5.jpg', 'Màn hình 15.6 inch cùng độ phân giải Full HD (1920 x 1080), mang đến hình ảnh đạt chất lượng cao, cho bạn tận hưởng không gian giải trí một cách thật trọn vẹn, chân thật, sắc nét đến từng chi tiết.\r\n\r\nKhông còn quá lo lắng mắt sẽ bị ảnh hưởng xấu khi làm việc ở môi trường ánh sáng không tốt nhờ công nghệ màn hình chống chói Anti Glare, hỗ trợ bạn làm việc và giải trí ở bất kỳ điều kiện ánh sáng nào cùng khung hình được trải rộng đến 178 độ đến từ tấm nền IPS mà không lo mỏi mắt hay lóa mắt.', 'Thỏa mãn tầm nhìn với không gian hình ảnh cùng âm thanh sống động'),
(98, 42, '16409367871.2.jpg', 'Acer TravelMate B3 có trọng lượng máy chỉ 1.4 kg, độ dày 20.99 mm, thiết kế thanh lịch, đẹp mắt với lớp vỏ nhựa màu đen đơn giản kèm logo hãng tinh tế ở góc trái trên mặt lưng, dễ dàng cùng bạn xuất hiện ở mọi nơi.\r\nĐược tối giản cả ở bàn phím, laptop dùng hệ bàn phím có hành trình tốt, độ nhạy cao, cho thao tác soạn thảo nhanh êm và nhạy, đáp ứng nhu cầu học tập, làm việc.', 'Thiết kế nhỏ gọn, tính di động cao'),
(99, 42, '16409367871.3.jpg', 'Nhắm tới nhu cầu sử dụng laptop để học tập và làm việc văn phòng cơ bản, Acer trang bị cho chiếc laptop dòng chip Intel Celeron N4020 có hiệu năng đủ dùng với xung nhịp cơ bản 1.1 GHz và tối đa 2.8 GHz khi ép xung, được sự hỗ trợ của card tích hợp Intel UHD Graphics 600 để giải quyết nhẹ nhàng, nhanh mượt các thao tác soạn thảo bài tập trên Word, tính toán, nhập liệu qua Excel, soạn bản thuyết trình bài học trên PowerPoint,… hay duyệt web, tìm kiếm thông tin trên Chrome.\r\n\r\nLaptop sở hữu bộ nhớ RAM 4 GB chuẩn DDR4 (1 khe) đáp ứng tốt đa nhiệm, bạn có thể mở nhiều tab cùng lúc hay vừa soạn bài vừa tìm kiếm thông tin, hạn chế hiện tượng máy bị đơ hoặc đứng.', 'Cấu hình đáp ứng tốt các tác vụ cơ bản'),
(100, 42, '16409367871.4.jpg', 'Chiếc laptop Acer có kích thước màn hình 11.6 inch nhỏ nhắn, được tích hợp công nghệ Acer ComfyView độc quyền và TFT tái tạo màu sắc và độ tương phản tốt, khả năng chống chói hiệu quả nên dễ dàng sử dụng ngoài trời, chất lượng phân giải màn hình chuẩn HD (1366 x 768) mang đến khung hình rõ nét, tươi sáng, vừa mắt. Màn hình mỏng hơn, toả nhiệt ít hơn nhờ LED Backlit, tiết kiệm điện năng cho máy của bạn.', 'Màn hình nhỏ gọn rõ nét, âm thanh chân thực rất ấn tượng'),
(101, 43, '16409369612.3.jpg', 'Bộ vi xử lý Intel Pentium N6000 được cài đặt ở phiên bản này sở hữu 4 nhân 4 luồng, cho tốc độ xung nhịp cơ bản 1.10 GHz và đạt tối đa 3.3 GHz nhờ Turbo Boost, cùng bộ nhớ đệm 4 MB kết hợp cùng card đồ họa tích hợp Intel UHD Graphics, hỗ trợ bạn tối đa trong mọi công việc văn phòng soạn thảo văn bản, bài tập trên Word, nhập liệu tính toán trên Excel,... một cách trơn tru hay giải trí duyệt web trên Chrome cũng hiệu quả không kém.\r\n\r\nRAM 4 GB chuẩn DDR4 2 khe với tốc độ Bus RAM từ 2400 MHz cùng khả năng nâng cấp RAM tối đa lên đến 16 GB, cho bạn làm việc hay học tập đa nhiệm hơn, dễ dàng chuyển đổi giữa các ứng dụng cùng lúc mà không lo xảy ra tình trạng giật lag.', 'Giải quyết nhanh gọn mọi tác vụ văn phòng');
INSERT INTO `detail` (`id`, `product_id`, `img`, `content`, `title`) VALUES
(102, 43, '16409369612.2.jpg', 'Chiếc laptop này sở hữu trọng lượng 1.45 kg và dày 19.9 mm, được chế tác từ chất liệu nhựa bền bỉ, mang đến một thế hệ đầy tính năng động, sẵn sàng cùng bạn đi đến bất kỳ nơi nào, đáp ứng tối đa cho nhu cầu từ bạn.', 'Kiểu dáng thời thượng, thanh lịch'),
(103, 43, '16409369612.4.jpg', 'Màn hình 14 inch với độ phân giải HD (1366 x 768) cho bạn trải nghiệm hình ảnh ổn định, rõ nét với khả năng kiểm soát tốt hình ảnh và màu sắc nó tạo ra nhưng vẫn hạn chế tối đa điện năng tiêu thụ nhờ công nghệ màn hình TFT.\r\n\r\nSự kết hợp của công nghệ Acer ComfyView và công nghệ LED Backlit​ mang đến hình ảnh có độ tương phản cao, màu sắc chính xác, làm giảm ánh sáng xanh, bảo vệ tốt thị giác cho bạn nhưng vẫn tiết kiệm được điện năng, giảm sự toả nhiệt.', 'Khung hình chất lượng cùng âm thanh sống động'),
(104, 44, '16409372811.3.jpg', 'MSI Gaming GE66 được trang bị bộ vi xử lý Intel Core i7 Tiger Lake 11800H với cấu trúc 8 nhân 16 luồng, mức xung nhịp trung bình là 2.3 GHz và đạt tối đa 4.6 GHz nhờ Turbo Boost giúp bạn hoàn thành mọi công việc một cách mượt mà nhất. Xử lý nhanh gọn các tính năng văn phòng phức tạp trên Word, Excel,... hay chỉnh sửa hình ảnh với dung lượng cao, thiết kế poster, render video,... cũng tuyệt vời không kém mà còn tiết kiệm điện năng vượt trội.\r\n\r\nRAM 32 GB tốc độ Bus RAM 3200 MHz cho hiệu năng vượt trội, khả năng đa nhiệm nhiều tác vụ cùng lúc, chơi game hay phát sóng trực tiếp đều mượt mà. Ngoài ra, bạn có thể nâng cấp lên đến 64 GB khi có nhu cầu trải nghiệm máy ở tốc độ cao hơn nữa.', 'Sức mạnh nổi bật nhờ công nghệ tiên tiến'),
(105, 44, '16409372811.2.jpg', 'MSI Gaming GE66 mang một thiết kế độc đáo, cực ngầu, đầy cá tính như một con tàu vũ trụ bay nhanh khắp vũ trụ với một màu đen huyền bí cùng những đường cắt vát tỉ mỉ, tinh tế. Vỏ máy được làm bằng kim loại cứng cáp với logo hình con rồng đặc trưng nhà MSI đem đến vẻ ngoài đầy sang trọng và nổi bật.\r\n\r\nDù thuộc dòng laptop gaming nhưng GE66 được sản xuất với trọng lượng 2.38 kg và bề dày là 23.4 mm, tuy nó không quá nhẹ nhưng vẫn vừa vặn bỏ vào trong balo để mọi người mang vác đi mọi nơi để giải trí, học tập và làm việc mà không cảm thấy quá nặng nề.', 'Phá cách cùng vẻ ngoài ấn tượng'),
(106, 44, '16409372811.4.jpg', 'MSI Gaming GE66 sở hữu màn hình 15.6 inch QHD (2560 x 1440) cùng độ phủ màu 100% DCI-P3 cho hình ảnh hiển thị sắc nét trong từng chi tiết và sống động, chân thực qua từng thước phim giải trí.\r\n\r\nTấm nền IPS cho góc nhìn đến 178 độ mang đến trải nghiệm hình ảnh chính xác, rõ ràng mà không bị biến dạng màu ở mọi góc nhìn. Cùng công nghệ chống chói Anti Glare mọi hình ảnh sống động, sắc nét đều được hiển thị cực tốt ở bất kì môi trường ánh sáng nào, từ trong nhà, quán cà phê đến ngoài đường phố.', 'Hình ảnh sắc nét trên màn hình chất lượng cao'),
(107, 45, '16409375232.3.jpg', 'Luôn trong tư thế sẵn sàng cùng người dùng chinh phục mọi thử thách trước các con game đầy kịch tính thịnh hành hiện nay như LOL, Fifa Online 4, Cyberpunk 2077, CS:GO,... nhờ cấu hình vượt trội đến từ con chip Intel Core i7 Tiger Lake 1185G7 với 4 nhân 8 luồng mạnh mẽ, cùng độ ép xung lên đến 4.8 GHz Turbo Boost, giải quyết nhanh gọn mọi công việc từ cơ bản như Word, Excel, PowerPoint,... đến các tác vụ nặng như thiết kế đồ họa, dựng video,...\r\n\r\nNâng tầm đa nhiệm mượt mà hơn bao giờ hết với bộ nhớ RAM 16 GB chuẩn DDR4 2 khe (1 khe 8 GB + 1 khe 8 GB) với tốc độ Bus RAM 3200 MHz cùng khả năng nâng cấp tối đa 64 GB cho phép người dùng tải hàng loạt ứng dụng bổ ích về máy mà không sợ “ngốn RAM” với chuyển động trơn tru giữa các cửa sổ trình duyệt được mở cùng lúc, hạn chế tối đa tình trạng lag giật, tối ưu năng suất làm việc cho người dùng.', 'Sẵn sàng tác chiến mọi mặt trận với hiệu năng tối ưu'),
(108, 45, '16409375232.2.jpg', 'MSI đã mang đến một luồng gió mới cho Prestige 15 với phiên bản laptop gaming nhưng lại sở hữu ngoại hình đầy lịch lãm, lớp vỏ kim loại xám cứng cáp cùng các góc cạnh máy vuông vức tinh tế và trọng lượng 1.69 kg khá ấn tượng so với các dòng sản phẩm khác, hướng đến mọi đối tượng người dùng không chỉ đơn thuần là game thủ với sự gọn gàng, tính di động cao.\r\n\r\nTăng nguồn cảm hứng làm việc hay chiến game với dải đèn nền nổi bật trang bị trên bàn phím của laptop MSI, khoảng cách các phím được bố trí hợp lý với hành trình sâu và độ nảy cao, mang đến trải nghiệm soạn thảo êm tay, thoải mái với tốc độ gõ nhanh chóng, chính xác đến từng vị trí dù ở trong điều kiện môi trường thiếu sáng, không sợ ảnh hưởng tiếng ồn đến những người xung quanh.', 'Chinh phục mọi đối tượng với thiết kế trẻ trung, năng động'),
(109, 45, '16409375232.4.jpg', 'Không gian hiển thị rộng lớn với kích thước 15.6 inch có độ phân giải Full HD (1920 x 1080) và màn hình 100% sRGB mang đến một tầm nhìn mãn nhã với các khung cảnh sắc nét đến từng chi tiết và mảng màu sắc tươi mới, giúp các game thủ quan sát rõ mọi hành động của đối phương, giành được ưu thế chiến thắng trên mọi mặt trận.\r\n\r\nTần số quét 60 Hz kết hợp cùng tấm nền IPS cung cấp những chuyển động mượt mà trên góc nhìn rộng lên đến 178 độ, hiển thị chi tiết mọi nội dung trên màn hình mà không xảy ra hiện tượng nhòe hay xé hình, đảm bảo chất lượng hình ảnh được giữ vững dù bạn nhìn nghiêng hay nhìn trực diện.', 'Nâng tầm giải trí với hình ảnh, âm thanh sống động như thật'),
(110, 46, '16409378796.2.jpg', 'Lenovo Yoga mang đến thiết kế cực kì nổi bật với chất liệu kim loại sáng bóng, phần mặt lưng được làm từ Carbon Fibre cứng cáp nhưng độ dày máy chỉ 15 mm và trọng lượng siêu mỏng nhẹ 0.966 kg, chỉ xấp xỉ 1 quyển sách để bạn thoải mái mang theo bên mình và giải quyết công việc hàng ngày.\r\n\r\n', 'Laptop siêu mỏng nhẹ, di động tối ưu'),
(111, 46, '16409378796.4.jpg', 'Màn hình 13.3 inch độ phân giải QHD (2560x1600) cho hình ảnh, văn bản hiển thị sắc nét hơn 35% so với Full HD. Độ sáng màn hình đạt 300 nits kết hợp với công nghệ chống chói cho phép bạn có thể sử dụng máy tính ở ngoài trời có ánh sáng mạnh mà vẫn đảm bảo hiển thị rõ nét và màu sắc tốt hơn. Tấm nền IPS cộng thêm thiết kế viền mỏng sẽ đem đến không gian nhìn thật thoải mái và thư giãn với góc nhìn rộng không giới hạn. \r\n\r\nPhối hợp cùng độ phủ màu màn hình 100% sRGB cho khả năng tái tạo màu tốt giúp các sản phẩm có màu sắc chính xác nhất phù hợp với các lĩnh vực nhiếp ảnh, đồ hoạ.', 'Hình ảnh hiển thị siêu nét, thỏa mãn giải trí trong một chiếc laptop'),
(112, 46, '16409378796.4.jpg', 'Lenovo Yoga Slim 7 sử dụng bộ vi xử Intel Core i7 Tiger Lake thế hệ 11 vừa ra mắt cuối năm 2020 cho mức xung nhịp cao nhất lên đến 4.7 GHz xử lí nhanh, ổn định mọi ứng dụng văn phòng thông dụng. Kết hợp với bộ nhớ RAM 16 GB giúp đa nhiệm các tác vụ nặng mà vẫn mượt mà và ổn định. Bạn có thể mở cùng lúc đến 20 tab Chrome hay hàng chục layer trên Photoshop, Ai mà không lo đứng máy. \r\n\r\n', 'Hiệu năng mạnh mẽ tăng năng suất công việc tối ưu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `img` varchar(300) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `img`
--

INSERT INTO `img` (`id`, `img`, `product_id`) VALUES
(28, 'hp1.1.1640867181.jpg', 18),
(29, 'hp2.0.jpg', 19),
(30, 'hp2.1.jpg', 19),
(31, 'hp2.2.jpg', 19),
(32, 'hp3.0.jpg', 20),
(33, 'hp3.1.jpg', 20),
(34, 'hp3.2.jpg', 20),
(35, 'hp4.1.jpg', 21),
(36, 'hp4.3.jpg', 21),
(37, 'hp4.5.jpg', 21),
(38, 'hp5.0.jpg', 22),
(39, 'hp5.2.jpg', 22),
(40, 'hp5.3.jpg', 22),
(44, 'hp7.1.jpg', 24),
(45, 'hp7.2.jpg', 24),
(46, 'hp7.3.jpg', 24),
(47, 'D1.1.jpg', 25),
(48, 'D1.2.jpg', 25),
(49, 'D1.3.jpg', 25),
(50, 'D2.1.jpg', 26),
(51, 'D2.2.jpg', 26),
(52, 'D2.3.jpg', 26),
(53, 'D3.0.jpg', 27),
(54, 'D3.1.jpg', 27),
(55, 'D3.2.jpg', 27),
(56, 'D4.1.jpg', 28),
(57, 'D4.2.jpg', 28),
(58, 'D4.3.jpg', 28),
(59, 'D5.1.jpg', 29),
(60, 'D5.2.jpg', 29),
(61, 'D5.3.jpg', 29),
(62, '1.1.jpg', 30),
(63, '1.2.jpg', 30),
(64, '1.3.jpg', 30),
(65, '1.1.jpg', 31),
(66, '1.2.jpg', 31),
(67, '1.3.jpg', 31),
(68, '2.1.jpg', 32),
(69, '2.3.jpg', 32),
(70, '2.4.jpg', 32),
(71, '3.1.jpg', 33),
(72, '3.2.jpg', 33),
(73, '3.3.jpg', 33),
(74, '4.1.jpg', 34),
(75, '4.2.jpg', 34),
(76, '4.3.jpg', 34),
(77, '5.1.jpg', 35),
(78, '5.2.jpg', 35),
(79, '5.3.jpg', 35),
(80, '1.1.jpg', 36),
(81, '1.2.jpg', 36),
(82, '1.3.jpg', 36),
(83, '2.1.jpg', 37),
(84, '2.2.jpg', 37),
(85, '2.3.jpg', 37),
(86, '3.1.jpg', 38),
(87, '3.2.jpg', 38),
(88, '3.3.jpg', 38),
(89, '4.1.jpg', 39),
(90, '4.2.jpg', 39),
(91, '4.3.jpg', 39),
(92, '5.1.jpg', 40),
(93, '5.2.jpg', 40),
(94, '5.3.jpg', 40),
(95, '3.1.jpg', 41),
(96, '3.2.jpg', 41),
(97, '3.3.jpg', 41),
(98, '1.1.jpg', 42),
(99, '1.2.jpg', 42),
(100, '1.3.jpg', 42),
(101, '2.1.jpg', 43),
(102, '2.2.jpg', 43),
(103, '2.3.jpg', 43),
(104, '1.1.jpg', 44),
(105, '1.2.jpg', 44),
(106, '1.3.jpg', 44),
(107, '2.1.jpg', 45),
(108, '2.2.jpg', 45),
(109, '2.3.jpg', 45),
(110, '6.1.jpg', 46),
(111, '6.2.jpg', 46),
(112, '6.3.jpg', 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordered`
--

CREATE TABLE `ordered` (
  `id` int(11) NOT NULL,
  `time` date NOT NULL,
  `status` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notes` varchar(300) NOT NULL,
  `extra_address` varchar(300) NOT NULL COMMENT 'Địa chỉ nhận',
  `name_get` varchar(50) NOT NULL COMMENT 'Tên người nhận',
  `sdt_get` varchar(10) NOT NULL COMMENT 'sdt người nhận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ordered`
--

INSERT INTO `ordered` (`id`, `time`, `status`, `user_id`, `notes`, `extra_address`, `name_get`, `sdt_get`) VALUES
(1, '2022-01-17', '0', 31, 'Giao vào buổi sáng.', '265, Trần Việt châu, An Hòa, Ninh Kiều  Cần thơ', 'Phạm Trọng Hửu', '1234567890');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `brand_id` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `short_desc` varchar(300) NOT NULL COMMENT 'Mô tả',
  `status` varchar(100) NOT NULL,
  `model` varchar(200) NOT NULL,
  `chip` varchar(200) NOT NULL,
  `ram` varchar(200) NOT NULL,
  `card` varchar(200) NOT NULL,
  `drive` varchar(200) NOT NULL,
  `display` varchar(200) NOT NULL,
  `connect` varchar(200) NOT NULL,
  `vantay` varchar(5) NOT NULL COMMENT '(x)',
  `operation` varchar(200) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `weight` float NOT NULL,
  `size` varchar(200) NOT NULL,
  `discount` int(5) NOT NULL COMMENT '(x)',
  `selled` int(10) NOT NULL,
  `time_add` date NOT NULL,
  `quantity_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `brand_id`, `keyword`, `short_desc`, `status`, `model`, `chip`, `ram`, `card`, `drive`, `display`, `connect`, `vantay`, `operation`, `pin`, `weight`, `size`, `discount`, `selled`, `time_add`, `quantity_product`) VALUES
(18, 'Laptop HP Omen 15 ek0078TX i7 10750H', 56000000, 1, '[Mới 100% Full Box] ', 'Chính hãng Hp', '', ' HP Omen 15 ek0078TX i7 ', 'intel i7-10750H-2.6GHz', '16GB', 'RTX 2070 Max-Q 8GB', '1 TB SSD M.2 PCIe, Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng', '15.6', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '1', 'Windows 10 Home SL + Office H&S 2019 vĩnh viễn', '1', 2, '35x23x22', 0, 0, '2021-12-30', 12),
(19, 'Laptop HP ZBook Firefly 14 G8 i7 1165G7', 41500000, 1, '[Mới 100% Full Box] ', 'Chính hãng Hp', '', 'HP ZBook Firefly 14 G8', 'i7 1165G7 2.8GHz', '16GB', 'NVIDIA QuadroT500, 4GB', '1 TB SSD M.2 PCIe, Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng', '15.6', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '1', 'Windows 10 Pro', '1', 1, '32x21x17', 0, 0, '2021-12-30', 23),
(20, 'Laptop HP ZBook Firefly 14 G8 i5 1135G7', 39690000, 1, '[Mới 100% Full Box] ', 'Chính hãng Hp', '', 'ZBook Firefly 14 G8', 'i5 1135G7 2.4GHz', '16GB', 'NVIDIA QuadroT500 - 4GB', '1 TB SSD M.2 PCIe, Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng', '15.6\" - Full HD (1920 x 1080)-300Hz', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL + Office H&S 2019 vĩnh viễn', '1', 1, '32x21x17', 0, 0, '2021-12-30', 5),
(21, 'Laptop HP Envy 13 ba1030TU i7 1165G7', 30250000, 1, '[Mới 100% Full Box] ', 'Chính hãng Hp', '', 'Envy 13 ba1030TU i7', 'i7 1165G7 2.8GHz', '8GB', 'Card tích hợp, Intel Iris Xe', '512GB SSD NVMe PCIe', ' 13.3', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '1', 'Windows 10 Home SL + Office H&S 2019 vĩnh viễn', '1', 1, '30x19x16', 0, 0, '2021-12-30', 15),
(22, 'Laptop HP Envy  Convert 13 ay1056AU R7 5800U', 29670000, 1, '[Mới 100% Full Box] ', 'Chính hãng Hp', '', ' Envy x360 Convert 13 ay1056AU R7', ' Ryzen 7 5800U 1.9GHz', '8GB', 'Card tích hợp, Radeon', '512GB SSD NVMe PCIe', ' 13.3', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '1', 'Windows 11', '1', 1, '30x20x16', 0, 0, '2021-12-30', 13),
(24, 'Laptop HP 15s du1105TU i3 10110U', 12490000, 1, '[Mới 100% Full Box] ', 'Chính hãng Hp', '', ' 15s du1105TU', ' i3 10110U 2.1GHz', '4GB', 'Card tích hợp Intel UHD', '256 GB SSD NVMe PCIe, Hỗ trợ khe cắm HDD SATA', '15.6\" HD (1366 x 768)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 11 Home SL', '1', 2, '35x24x19', 0, 0, '2021-12-30', 16),
(25, 'Laptop Dell Gaming G15 5515 R5 5600H', 25990000, 2, '[Mới 100% Full Box] ', 'Chính hãng Dell', '', ' Gaming G15 5515 R5 5600H', ' Ryzen 55600H 3.3GHz', '8GB', 'Card rời RTX 3050 4GB', '256 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2TB (2280) / 1TB (2230)), Không hỗ trợ khe cắm HDD', ' 15.6\" Full HD (1920 x 1080) 120Hz', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Pro', '1', 3, '35x26x27', 0, 0, '2021-12-31', 45),
(26, 'Laptop Dell Inspiron 7400 i5 1135G7', 30490000, 2, '[Mới 100% Full Box] ', 'Chính hãng Dell', '', 'Inspiron 7400 i5 1135G7', 'i5 1135G7 2.4GHz', '16GB', 'MX350 2GB', '512GB SSD NVMe PCIe', '14.5 inch   QHD+ (2560 x 1600)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 2, '23x22x16', 0, 0, '2021-12-31', 13),
(27, 'Laptop Dell Inspiron 13 5310 i3 1125G4', 19290000, 2, '[Mới 100% Full Box] ', 'Chính hãng Dell', '', 'Inspiron 13 5310 i3 1125G4', ' i3 1125G4 2GHz', '8GB', 'Intel UHD', '256 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2TB)', '13.3\" Full HD+ (1920 x 1200)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 11 Home SL + Office H&S 2019 vĩnh viễn', '1', 2, '30x19x16', 0, 0, '2021-12-31', 25),
(28, 'Laptop Dell Vostro 3405 R5 3500U', 18000000, 2, '[Mới 100% Full Box] ', 'Chính hãng Dell', '', 'Vostro 3405 R5 3500U', 'Ryzen 53500U 2.1GHz', '8GB', 'Radeon Vega 8', '512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1TB (2280) / 512GB (2230))', '14\"   Full HD (1920 x 1080)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 11 Home SL', '1', 2, '30x19x16', 0, 0, '2021-12-31', 42),
(29, 'Laptop Dell Vostro 3400 i3 1115G', 15690000, 2, '[Mới 100% Full Box] ', 'Chính hãng Dell', '', 'Vostro 3400 i3 1115G4', ' i3  1115G4  3GHz', '8GB', 'Intel UHD', '256 GB SSD NVMe PCIe-Hỗ trợ khe cắm HDD SATA', '14\" Full HD (1920 x 1080)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL + Office H&S 2019 vĩnh viễn', '1', 2, '32x21x17', 0, 0, '2021-12-31', 58),
(30, 'Laptop Lenovo Yoga Slim 7 14ITL05 i5 1135G7', 22000000, 3, '[Mới 100% Full Box] ', 'Chính hãng Lenovo', '', 'Yoga Slim 7 14ITL05', 'i5 1135G7 2.4GHz', '8GB', 'Intel Iris Xe', '512GB SSD NVMe PCIe', '14\" Full HD (1920 x 1080)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 2, '32x21x17', 0, 0, '2021-12-31', 43),
(31, 'Laptop Lenovo Yoga Slim 7 14ITL05 i5 1135G7', 22000000, 3, '[Mới 100% Full Box] ', 'Chính hãng Lenovo', '', 'Yoga Slim 7 14ITL05', 'i5 1135G7 2.4GHz', '8GB', 'Intel Iris Xe', '512GB SSD NVMe PCIe', '14\" Full HD (1920 x 1080)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 2, '32x21x17', 0, 0, '2021-12-31', 43),
(32, 'Laptop Lenovo Yoga 9 14ITL5 i7 1185G7', 45000000, 3, '[Mới 100% Full Box] ', 'Chính hãng Lenovo', '', ' Yoga 9 14ITL5 i7', 'i7 1185G7 3GHz', '16GB', 'Intel Iris Xe', '1 TB SSD M.2 PCIe', '14\"  4K/UHD (3840 x 2160)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 2, '30x19x16', 0, 0, '2021-12-31', 21),
(33, 'Laptop Lenovo ThinkBook 14s Yoga ITL i5 1135G7', 24790000, 3, '[Mới 100% Full Box] ', 'Chính hãng Lenovo', '', 'ThinkBook 14s Yoga ITL i5 ', ' i5 1135G7 2.4GHz', '8GB', 'Intel Iris Xe', '512GB SSD NVMe PCIe', '14\" Full HD (1920 x 1080)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 1, '30x19x16', 0, 0, '2021-12-31', 41),
(34, 'Laptop Lenovo ThinkBook 15 G2 ITL i5 1135G7', 21390000, 3, '[Mới 100% Full Box] ', 'Chính hãng Lenovo', '', ' ThinkBook 15 G2 ITL i5 ', 'i5 1135G7 2.4GHz', '8GB', 'Intel Iris Xe', '512GB SSD NVMe PCIe', '15.6\" Full HD (1920 x 1080)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 11 Home SL', '1', 2, '30x19x16', 0, 0, '2021-12-31', 27),
(35, 'Laptop Lenovo IdeaPad 5 14ITL05 i7 1165G7', 22490000, 3, '[Mới 100% Full Box] ', 'Chính hãng Lenovo', '', ' IdeaPad 5 14ITL05 i7 ', 'i7 1165G7 2.8GHz', '8GB', 'Intel Iris Xe', '512GB SSD NVMe PCIe', '14\" Full HD (1920 x 1080)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 1, '30x19x16', 0, 0, '2021-12-31', 76),
(36, 'Laptop Asus ROG Zephyrus G14 Alan Walker GA401QEC ', 44490000, 4, '[Mới 100% Full Box] ', 'Chính hãng Asus', '', ' ROG Zephyrus G14 Alan Walker GA401QEC R9', 'Ryzen 9 5900HS 3GHz', '16GB', 'RTX 3050Ti 4GB', '1 TB SSD M.2 PCIe, Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng', '14\" QHD (2560 x 1440)120Hz', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 3, '35x23x22', 0, 0, '2021-12-31', 41),
(37, 'Laptop Asus TUF Gaming FX506HCB i5 11400H', 24990000, 4, '[Mới 100% Full Box] ', 'Chính hãng Asus', '', 'TUF Gaming FX506HCB i5 ', 'i5 11400H 2.7GHz', '8GB', 'RTX 3050 4GB', '512GB SSD NVMe PCIe', '15.6\" - Full HD (1920 x 1080)-300Hz', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 11 Home SL', '1', 3, '35x23x22', 0, 0, '2021-12-31', 21),
(38, 'Laptop Asus TUF Gaming FX516PM i7 11370H', 30000000, 4, '[Mới 100% Full Box] ', 'Chính hãng Asus', '', 'TUF Gaming FX516PM i7', 'i7 11370H 3.3GHz', '8GB', 'RTX 3060 6GB', '512GB SSD NVMe PCIe', '15.6\" - Full HD (1920 x 1080)-144Hz', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 3, '32x21x17', 0, 0, '2021-12-31', 12),
(39, 'Laptop Asus TUF Gaming FX516PM i7 11370H', 30840000, 4, '[Mới 100% Full Box] ', 'Chính hãng Asus', '', 'TUF Gaming FX516PM i7', 'i7 11370H 3.3GHz', '8GB', 'RTX 3060 6GB', '512GB SSD NVMe PCIe', '15.6\" - Full HD (1920 x 1080)-144Hz', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 11 Home SL', '1', 3, '35x23x22', 0, 0, '2021-12-31', 12),
(40, 'Laptop Asus VivoBook A515EA i3 1115G4', 16290000, 4, '[Mới 100% Full Box] ', 'Chính hãng Asus', '', 'VivoBook A515EA i3', 'i3 1115G4 3GHz', '8GB', 'Intel UHD', '512GB SSD NVMe PCIe', '15.6\" - Full HD (1920 x 1080)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 11 Home SL', '1', 2, '30x19x16', 0, 0, '2021-12-31', 32),
(41, 'Laptop Asus TUF Gaming FX516PM i7 11370H', 30000000, 4, '[Mới 100% Full Box] ', 'Chính hãng Asus', '', 'TUF Gaming FX516PM i7', 'i7 11370H 3.3GHz', '8GB', 'RTX 3060 6GB', '512GB SSD NVMe PCIe', '15.6\" - Full HD (1920 x 1080)-144Hz', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 3, '32x21x17', 0, 0, '2021-12-31', 12),
(42, 'Laptop Acer TravelMate B3 TMB311 31', 9900000, 5, '[Mới 100% Full Box] ', 'Chính hãng Acer', '', 'TravelMate B3 TMB311 31', 'Celeron N4020 1.1GHz', '4GB', 'Intel UHD 600', '256 GB SSD NVMe PCIe, Hỗ trợ khe cắm HDD SATA', '14\" HD (1366 x 768)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 2, '35x23x22', 0, 0, '2021-12-31', 22),
(43, 'Laptop Acer Aspire 3 A314 35 P6NC', 10125000, 5, '[Mới 100% Full Box] ', 'Chính hãng Acer', '', 'Aspire 3 A314 35 P6NC', 'Pentium N6000 1.1GHz', '4GB', 'Intel UHD', '256 GB SSD NVMe PCIe, Hỗ trợ khe cắm HDD SATA', '14\" HD (1366 x 768)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 11 Home SL', '1', 2, '30x19x16', 0, 0, '2021-12-31', 23),
(44, 'Laptop MSI Gaming GE66 Raider 11UH i7 11800H', 74000000, 6, '[Mới 100% Full Box] ', 'Chính hãng MSI', '', 'GE66 Raider 11UH i7', 'i7 11800H 2.30 GHz', '32GB', 'RTX 3080 16GB', '1 TB SSD M.2 PCIe, Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng', '15.6\" - Full HD (1920 x 1080)-144Hz', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 2, '32X22X20', 0, 0, '2021-12-31', 12),
(45, 'Laptop MSI Prestige 15 A11SC i7 1185G7', 24500000, 6, '[Mới 100% Full Box] ', 'Chính hãng MSI', '', ' Prestige 15 A11SC i7', 'i7 1185G7 3GHz', '16GB', 'GTX 1650 Max-Q 4GB', '512GB SSD NVMe PCIe', '15.6\" - Full HD (1920 x 1080)-144Hz', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 3, '35x23x22', 0, 0, '2021-12-31', 12),
(46, 'Laptop Lenovo YOGA Slim 7 Carbon 13ITL5 i7', 32900000, 3, '[Mới 100% Full Box] ', 'Chính hãng Lenovo', '', 'YOGA Slim 7 Carbon 13ITL5 i7', 'i7 1165G7 2.8GHz', '16GB', 'Intel Iris Xe', '1 TB SSD M.2 PCIe, Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng', ' 13.3\" Full HD (1920 x 1080)', ' Bluetooth 5.0, Wi-Fi 6 (802.11ax)', '', 'Windows 10 Home SL', '1', 2, '30x19x16', 0, 0, '2021-12-31', 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_orders`
--

CREATE TABLE `products_orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products_orders`
--

INSERT INTO `products_orders` (`id`, `product_id`, `order_id`, `quantity`) VALUES
(1, 20, 1, 1),
(2, 21, 1, 1),
(3, 22, 1, 1),
(4, 19, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `tittle` varchar(200) NOT NULL,
  `img` varchar(300) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(20) NOT NULL,
  `dob` varchar(300) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(200) NOT NULL,
  `admin` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `address`, `city`, `dob`, `phone`, `full_name`, `email`, `admin`) VALUES
(2, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '30', 'Cần Thơ', '2001-12-15', '12345', 'admin', 'pthuu1900093@student.ctuet.edu.vn', b'1'),
(31, 'user1', '827ccb0eea8a706c4c34a16891f84e7b', '1234512345', '12345', '2021-11-28', '1234567890', 'Phạm Trọng Hửu', 'yuongwf@gmail.com', b'0'),
(42, 'user2', '0c2fb7c0a8be5b2c84228b67fb82c5f3', '1234512345', '12345', '', '1234567890', 'Phạm Trọng Hửu', 'yuonrrrrg@gmail.com', b'0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`cate_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `ordered`
--
ALTER TABLE `ordered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `products_orders`
--
ALTER TABLE `products_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `ordered`
--
ALTER TABLE `ordered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `products_orders`
--
ALTER TABLE `products_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  ADD CONSTRAINT `cate` FOREIGN KEY (`cate_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `img`
--
ALTER TABLE `img`
  ADD CONSTRAINT `img_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ordered`
--
ALTER TABLE `ordered`
  ADD CONSTRAINT `ordered_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products_orders`
--
ALTER TABLE `products_orders`
  ADD CONSTRAINT `products_orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `ordered` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `slide`
--
ALTER TABLE `slide`
  ADD CONSTRAINT `slide_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
