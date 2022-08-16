-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 09:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'henrynnguyen02@gmail.com', '123456', 'Huy Mai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Fastfood'),
(2, 'Lunch'),
(3, 'Drinks'),
(4, 'Dessert');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(41, 7, 1, '4907', 29, '2022-07-23 06:05:09', 0, 0),
(42, 7, 1, '6969', 29, '2022-07-23 06:07:13', 0, 0),
(43, 7, 1, '4562', 29, '2022-07-23 06:31:12', 0, 0),
(44, 7, 3, '2843', 29, '2022-07-23 06:35:31', 0, 0),
(45, 7, 4, '1520', 30, '2022-07-23 06:38:31', 0, 0),
(46, 7, 4, '813', 31, '2022-07-23 06:39:36', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(3, 21, 2, '5737', '2019-10-04 02:57:00', 23, 0, 0),
(4, 26, 1, '6219', '2019-10-04 02:58:34', 24, 0, 0),
(5, 25, 3, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(6, 22, 5, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(7, 27, 2, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(8, 21, 1, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(9, 20, 3, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(10, 20, 3, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(11, 26, 1, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(12, 25, 2, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(13, 26, 3, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(14, 27, 1, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(15, 22, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(16, 24, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(17, 20, 1, '555', '2019-10-09 09:50:08', 27, 0, 2),
(18, 7, 1, '4907', '2022-07-23 06:05:09', 29, 0, 0),
(19, 7, 1, '6969', '2022-07-23 06:07:13', 29, 0, 0),
(20, 7, 1, '4562', '2022-07-23 06:31:12', 29, 0, 0),
(21, 7, 3, '2843', '2022-07-23 06:35:31', 29, 0, 0),
(22, 7, 4, '1520', '2022-07-23 06:38:31', 30, 0, 0),
(23, 7, 4, '813', '2022-07-23 06:39:36', 31, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(12, 'Hiếu', '0932023992', '123/123', 'dasdasdas', 'hieu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(13, 'Long Hoàng', '01694494813', '123/123', 'dasdasdas', 'long@gmail.com', '0192023a7bbd73250516f069df18b500', 0),
(14, 'Hoàng Long', '0932023992', '123/123', 'dsadas', 'hoanglong@gmail.com', '', 1),
(26, 'Trương Lưu', '0932023992', '123/123', 'dasdasdas', 'truongluu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(27, 'Trương Huệ Mẫn', '0932023992', '123', 'dasdasdasd', 'hueman@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(28, 'Hoa', '0932023992', '123/123', 'dasdasdads', 'hoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(29, 'Huy Mai', '0776204546', '123/123', '', 'henrynnguyen02@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(30, 'HuyMai', '0776204546', '123/123', 'giao buoi trua nhe', 'asdkudo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(31, 'HuyMai', '+10776204546', '123/123', 'giao buoi trua nhe', 'asdkudo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(1, 1, 'Khoai tây chiên (French Fries)', '**12 nguyên liệu**\r\n\r\n**Vegan Gluten free\r\n  - 1 tsp Garlic powder\r\n  - 1 Onion powder\r\n  - 1 tsp Oregano\r\n  - 3 Russet potatoes, large\r\n\r\n**Bột nướng & gia vị\r\n  - 1 tsp Black pepper\r\n  - 1/2 tsp Cayenne\r\n  - 1 tsp Chili powder\r\n  - 1/2 tsp Paprika\r\n  - 1 tsp Salt\r\n  - 1 tsp Sugar\r\n  - 1 dash Turmeric\r\n\r\n**Dầu và giấm\r\n  - 4 tbsp Canola or olive oil', 'Dùng cho 4 người. Khoai tây chiên mang 100% hương vị Cajun với hỗn hợp gia vị đặc biệt từ Louisiana', '36000', '29000', 0, 0, 200, 'ff1.png'),
(2, 1, 'Gà chiên giòn (Fried Chicken)', 'Ingredients\n  - 3 cups whole buttermilk\n  - 3 tablespoons hot sauce (such as Tabasco), divided\n  - 1 (2 1/2- to 3-lb.) whole chicken, cut into 8 pieces\n  - 3 large eggs\n  - ⅓ cup water\n  - 4 cups (about 17 oz.) all-purpose flour\n  - 2 ½ tablespoons kosher salt\n  - 3 teaspoons cayenne pepper\n  - 2 teaspoons black pepper\n  - 2 teaspoons paprika\n  - 1 ½ teaspoons garlic powder\n  - Peanut oil', 'Love the signature warming kick of fried chicken? Good news: You can skip the drive-thru and enjoy a homemade version of this fast-food favorite with our beautifully crisp, perfectly spiced copycat recipe. ', '69000', '55000', 1, 0, 200, 'ff2.png'),
(3, 1, 'Burger Bò (SMASH BURGERS)', 'The biggest difference between these smash burgers and a regular hamburger is how they are cooked. The ingredients are pretty much the same.\r\n\r\nWith a smash burger, you literally smash it down on the hot cooking surface to have a really tin patty. To make a regular hamburger, you just add a beef patty to your hot surface and cook it.\r\n\r\nTo make these delicious burgers, you will need:\r\n  - Ground chuck (80/20)\r\n  - Vegetable oil (or high smoke oil)\r\n  - Kosher salt\r\n  - Freshly ground black pepper\r\n  - Sliced American cheese\r\n  - Brioche burger buns\r\n  - Lettuce\r\n  - Parchment paper', 'These smash burgers cooked in a grilled cast-iron skillet will be the only way you’ll want to make a burger from here on out. They’re so simple and leave you with tender, juicy beef patties covered in melted cheese and topped with a special sauce for the ultimate burger recipe!', '119000', '89000', 1, 0, 100, 'ff3.png'),
(4, 2, 'Mì xào tôm', 'For the stir fry, the ingredients are as follows:\r\n  - 4 ounces of noodles \r\n  - 1 tbsp vegetable or olive oil\r\n  - 8 ounces shrimp (peeled and deveined)\r\n  - 1 cup of sliced cabbage\r\n  - ½ cup of red bell pepper, sliced (you can use any color pepper or a mix)\r\n  - ¼ cup of carrots, sliced\r\n  - 2 cloves of garlic, minced\r\n\r\nAnd for the sauce, you will need:\r\n  - ¼ cup of soy sauce\r\n  - 2 tbsp hoisin sauce\r\n  - 2 tsp of dried ginger\r\n  - 1 teaspoon of dried garlic\r\n  - 1 teaspoon brown sugar\r\n  - 1 teaspoon sesame oil\r\n  - Some sesame for garnish', 'This shrimp lo mein recipe combines a mix of juicy shrimp, tender vegetables, and noodles mixed in a flavorful lo mein sauce. Plus, it\'s super quick and easy to make too, giving you a tasty meal for any night of the week. That said, we all know shrimp lo mein is a take-out classic, but this recipe will make you only want to cook it at home from now on.', '69000', '49000', 1, 0, 300, 'lu1.png'),
(5, 2, 'Cơm Chiên Thập Cẩm', 'Nguyên liệu làm cơm rang thập cẩm\r\n  - 1 tô cơm ( tô canh)\r\n  - 100gr lạp xưởng.\r\n  - 6 quả trứng gà\r\n  - 200gr đậu que.\r\n  - Cà rốt, tỏi.\r\nGia vị: Nước mắm, nước tương, bột ngọt, tiêu, ...', 'Cơm rang thập cẩm là một món vô cùng dễ ăn và thu hút mọi người. Đặc biệt là các bạn nhỏ. Vậy còn chần chờ gì nữa, cùng tìm hiểu cách nấu món cơm rang thập cẩm vừa ngon miệng vừa đẹp mắt này nhé!', '55000', '38000', 1, 0, 100, 'lu2.png'),
(6, 2, 'Phở trộn xào bò', 'Nguyên liệu:\r\n  - 200g phở tươi\r\n  - 80g thịt bò\r\n  - 30g giá đỗ\r\n  - 10g rau mùi\r\n  - 10g hành lá\r\n  - 3g bột mì\r\n  - 15g dầu ăn\r\n  - 30ml nước tương\r\n  - 15ml dầu hào\r\n  - 5ml nước tương đặc\r\n  - 1g đường', 'Một món ăn dễ chế biến mà lại ngon miệng. Một đĩa phở xào nóng hổi với sợi phở dai ngon, thịt bò mềm ngọt, kích thích vị giác vô cùng tận ...', '28000', '19000', 1, 0, 300, 'lu3.png'),
(7, 3, 'Nước cam ép Fanta', '...', 'Fanta hương cam ép là đồ uống có ga có hương cam được tạo ra bởi Công ty Fanta mang lại cảm giác tươi mát và thanh khiết', '15000', '8000', 1, 0, 72, 'dr1.png'),
(8, 3, 'Sprite các vị', '...', 'Sprite là một loại nước giải khát không màu, có vị chanh và chanh được tạo ra bởi Công ty Coca-Cola. Sprite có nhiều hương vị, bao gồm nam việt quất, anh đào, nho, cam, nhiệt đới, gừng và vani.', '15000', '10000', 1, 0, 150, 'dr2.png'),
(9, 3, 'Pepsi không calo mới', '...', 'Nước ngọt Pepsi vị chanh không calo giúp người sử dụng mà không lo hấp thụ quá nhiều calo trong một ngày. Ngoài ra, với sự kết hợp của vị chanh ...', '15000', '10000', 1, 0, 150, 'dr3.png'),
(10, 3, 'Oat milk', '...', 'Sữa dê nhập khẩu, mang lại sự trong mát từ loại sữa thank khiết này', '25000', '20000', 1, 0, 80, 'dr4.png'),
(11, 4, 'Gà viên phô mai', 'Garlic Butter Ingredients :\r\n  - Garlic – Fresh cloves and finely grated/minced. You only actually need two cloves, which I know doesn’t seem a lot, but raw grated garlic is very pungent!\r\n  - Butter – I use lightly salted butter, but you could use unsalted and adjust to taste if you wish.\r\n  - Parsley – Must be fresh and very finely diced.', 'If you’ve never tried mini kievs before you’re in for a treat! Think classic kiev, but smaller, cuter, crisper and more garlic butter. You’re gonna love em’.', '39000', '35000', 1, 0, 300, 'ds1.png'),
(12, 4, 'Southwest Pasta Salad', 'Southwest Pasta Salad\r\nThis southwest pasta salad is loaded with yummy southwest flavors. A little corn, red onion, tomatoes, black beans, bell pepper and cilantro all loaded with a yummy . These flavors just make me think of summer time! \r\n\r\nOne of the great things about this southwest pasta salad is that you can customize it however you want. You can add your choice of vegetables that you have on hand, or only the ones you love. Skip the chicken if you want to make it vegetarian. Cut the recipe in half if you don’t need as much. Add in some cheese, if you want. Use whatever medium or short noodles you have on hand. You name it. ', 'This southwest pasta salad is full of cold pasta, grilled chicken, and veggies, all coated in a delicious chipotle ranch dressing. It’s a perfect side dish for a summer bbq or potluck, or for a lighter lunch or dinner anytime.', '39000', '35000', 1, 0, 300, 'ds2.png'),
(13, 4, 'Mực chiên muối ớt (Salt and Pepper Squid)', 'My mom was in charge of “mundane” everyday cooking that was fast and healthy. My dad only cooked once in awhile, when he’d showcase his amazing recipes inherited from my grandma. It was a bit like good cop bad cop – while my mom was trying hard to convince me to eat more veggies daily, my dad would pass me a big plate of fried food on the weekend. I don’t need to tell you which I loved the most as a kid, right?', 'We finished one and a half pounds of squid before dinner, then came to the conclusion that this salt and pepper squid does not work for a party – because none will survive before any guest arrives.', '69000', '49000', 1, 0, 300, 'ds3.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'slider2.jpg', 'Sale sập sàn', 0),
(2, 'slider3.jpg', 'Slider 50%', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Indexes for table `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
