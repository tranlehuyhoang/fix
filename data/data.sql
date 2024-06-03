-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 02, 2024 lúc 01:26 PM
-- Phiên bản máy phục vụ: 8.2.0
-- Phiên bản PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `data`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `STT` float NOT NULL,
  `Tenphim` varchar(255) DEFAULT NULL,
  `Movie` varchar(255) DEFAULT NULL,
  `Theloai` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Quocgia` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Namsx` float DEFAULT NULL,
  `poster` varchar(255) NOT NULL,
  PRIMARY KEY (`STT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `content`
--

INSERT INTO `content` (`STT`, `Tenphim`, `Movie`, `Theloai`, `Quocgia`, `Namsx`, `poster`) VALUES
(1, 'Vùng đất linh hồn', 'Spirited Away', 'Hoạt hình, giả tưởng, phiêu lưu', 'Nhật Bản', 2001, 'https://i.pinimg.com/originals/4c/b3/c7/4cb3c798ff218e03962d467f7b34982d.jpg'),
(2, 'Vua sư tử', 'Lion King', 'Hoạt hình, âm nhạc, chính kịch', 'Mỹ', 1994, 'https://upload.wikimedia.org/wikipedia/vi/3/3d/The_Lion_King_poster.jpg'),
(3, 'Câu chuyện đồ chơi', 'Toy Story', 'Hoạt hình, hài, phiêu lưu', 'Mỹ', 1995, 'https://upload.wikimedia.org/wikipedia/vi/thumb/1/13/Toy_Story.jpg/220px-Toy_Story.jpg'),
(4, 'Câu chuyện đồ chơi 3', 'Toy Story 3', 'Hoạt hình, hài, phiêu lưu', 'Mỹ', 2010, 'https://upload.wikimedia.org/wikipedia/vi/5/57/Toy_Story_3_poster2010.jpg'),
(5, 'Vút bay', 'Up', 'Hoạt hình, hài, phiêu lưu', 'Mỹ', 2009, 'https://image.tmdb.org/t/p/original/kiFDcDjIr3Chay6flA5KKrstPub.jpg'),
(6, 'Titanic', 'Titanic', 'Lãng mạn, hài, thảm họa', 'Mỹ', 1997, 'https://m.media-amazon.com/images/I/71V3V0FE1gS._AC_UF894,1000_QL80_.jpg'),
(7, 'Nhật ký tình yêu', 'The notebook ', 'Lãng mạn, chính trị ', 'Mỹ', 2004, 'https://upload.wikimedia.org/wikipedia/vi/f/fc/Nh%E1%BA%ADt_k%C3%BD_t%C3%ACnh_y%C3%AAu_poster.jpg'),
(8, 'Cô dâu công chúa', 'The princess Bride', 'Lãng mạn, hài, phiêu lưu', 'Mỹ', 1987, 'https://image.tmdb.org/t/p/original/vpmbPASm5BMBt1lrhpJrPFQtulA.jpg'),
(9, 'Khi Harry gặp Sally', 'When Harry Met Sally', 'Lãng mạn, hài ', 'Mỹ', 1989, 'https://afamilycdn.com/Images/Uploaded/Share/2009/07/14/8351.jpg'),
(10, 'Annie Hall', 'Annie Hall', 'Lãng mạn, hài ', 'Mỹ', 1977, 'https://m.media-amazon.com/images/I/51hCXDW6NcL._AC_UF894,1000_QL80_.jpg'),
(11, 'High&Low: Kẻ cặn bã X', 'High&Low: The Worst X Cross', 'Hành động', 'Nhật bản', 2022, 'https://lamassuvn.com/storage/images/high-and-low-ke-can-ba-x/high-and-low-ke-can-ba-x-thumb.jpg'),
(12, 'Loki: Phần 2', 'Loki: Season 2', 'Hành động', 'Mỹ', 2023, 'https://bloganchoi.com/wp-content/uploads/2023/08/loki-season-2.jpg'),
(13, 'Quý Công Tử', 'The Childe', 'Hành động', 'Hàn Quốc', 2023, 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/p/o/poster_1__3_2.jpg'),
(14, 'Resident Evil: Đảo tử thần', 'Resident Evil: Death Island', 'Hành động', 'Mỹ', 2023, 'https://ss-images.saostar.vn/wp700/2023/7/3/pc/1688369990757/saostar-fzm0nh2j4pmo29kj.jpg'),
(15, 'Chó săn công lý', 'Bloodhounds', 'Hành động', 'Hàn Quốc', 2023, 'https://bazaarvietnam.vn/wp-content/uploads/2023/06/harper-bazaar-review-phim-cho-san-cong-ly-bloodhounds-1-e1686585983670.jpg'),
(16, 'Đào, Phở và Piano', 'Đao, Pho and Piano', 'Chiến tranh', 'Việt Nam', 2023, 'https://www.elle.vn/wp-content/uploads/2024/02/28/573479/poster-phim-dao-pho-va-piano.jpg'),
(17, 'Mùi cỏ cháy', 'Mui co chay', 'Chiến tranh', 'Việt Nam', 2012, 'https://d1j8r0kxyu9tj8.cloudfront.net/images/1633862555yEKJ0frTc3P7ap2.jpg'),
(18, 'Lính bắn tỉa Siberian', 'Siberian Sniper', 'Chiến tranh', 'Siberia', 2021, 'https://image.tmdb.org/t/p/original/mm7HDu4fHXCwdFVCkb089DiMCxr.jpg'),
(19, 'Khế ước', 'Guy Ritchie’s The Covenant', 'Chiến tranh', 'Mỹ', 2023, 'https://i.imgur.com//hdcPA2r.jpg'),
(20, 'Vô danh', 'Hidden Blade', 'Chiến tranh', 'Hàn Quốc', 2023, 'https://bazaarvietnam.vn/wp-content/uploads/2023/02/HBVN-vuong-nhat-bac-phim-vo-danh-2.jpg'),
(21, 'Hố đen tử thần', ' Interstellar', 'Viễn tưởng, khoa học', 'Âu Mỹ, Anh, Canada', 2014, 'https://upload.wikimedia.org/wikipedia/vi/4/46/Interstellar_poster.jpg'),
(22, 'Liên minh Công lý: phiên bản của Zack Snyder', 'Zack Snyder*s Justice League ', 'Phim hành động, phim viễn tưởng, phim chiếu rạp', 'Âu Mỹ', 2021, 'https://upload.wikimedia.org/wikipedia/vi/5/54/Justice_League_Poster.jpg'),
(23, 'Siêu đại chiến', 'Pacific Rim', 'Quái vật, khoa học viễn tưởng', 'Mỹ', 2013, 'https://upload.wikimedia.org/wikipedia/vi/f/f3/Pacific_Rim_FilmPoster.jpeg'),
(24, 'Con Tàu Chiến Thắng', 'Space Sweepers', 'Khoa học viễn tưởng, chính kịch', 'Hàn Quốc', 2021, 'https://upload.wikimedia.org/wikipedia/vi/9/97/Con_t%C3%A0u_Chi%E1%BA%BFn_Th%E1%BA%AFng_poster.jpg'),
(25, 'Giải cứu Guy', 'Free Guy', 'Khoa học viễn tưởng, Hài Hước, Hành Động', 'Âu Mỹ', 2021, 'https://upload.wikimedia.org/wikipedia/vi/1/1c/Free_Guy_2021_Poster.jpg'),
(26, 'Loki', 'Loki', 'Khoa học viễn tưởng, Hành động ', 'Mỹ', 2021, 'https://cdn.europosters.eu/image/1300/posters/marvel-loki-i127940.jpg'),
(27, 'Ma trận 4', 'The Matrix 4', 'Khoa học viễn tưởng, Hành động ', 'Mỹ', 2021, 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/1800x/71252117777b696995f01934522c402d/p/o/poster_matrix_4_1_.jpg'),
(28, 'Xứ Cát', 'Dune', 'Khoa học viễn tưởng, Hành động ', 'Canada, Hungary, Anh Quốc và Mỹ', 2021, 'https://images2.thanhnien.vn/528068263637045248/2023/5/4/dune-16831631989871759276130.jpg'),
(29, 'Người về từ sao hoả', 'The Martian', 'Khoa học viễn tưởng, Vũ Trụ', 'Mỹ', 2015, 'https://upload.wikimedia.org/wikipedia/vi/c/cd/The_Martian_film_poster.jpg'),
(30, 'Vùng đất câm lặng', 'A quiet place', 'Khoa học viễn tưởng, Kinh dị, Giật gân', 'Âu Mỹ', 2018, 'https://upload.wikimedia.org/wikipedia/vi/a/a7/V%C3%B9ng_%C4%91%E1%BA%A5t_c%C3%A2m_l%E1%BA%B7ng_Ph%E1%BA%A7n_II_poster.jpg'),
(31, 'Quỷ ám', 'The Exorcist ', 'Kinh dị, tâm lý', 'Mỹ', 1973, 'https://image.tmdb.org/t/p/original/919KNaZ7aIMHOjMHpKGiwl6H59P.jpg'),
(32, 'The Shining ', 'The Shining ', 'Kinh dị, tâm lý', 'Mỹ', 1980, 'https://www.allaboutmovies.com.au/media/k2/items/cache/7e2990f9653b9a22815f8327e1d23dd4_XL.jpg'),
(33, 'Di truyền', 'Hereditary ', 'Kinh dị, tâm lý', 'Mỹ', 2018, 'https://i.ebayimg.com/images/g/JRkAAOSwai9kQJIc/s-l1600.jpg'),
(34, 'The Audition ', 'The Audition ', 'Kinh dị, tâm lý', 'Nhật Bản', 2019, 'https://m.media-amazon.com/images/I/516aas783cL._AC_UF1000,1000_QL80_.jpg'),
(35, 'Vòng tròn ác nghiệt', 'Ringu', 'Kinh dị, siêu nhiên', 'Nhật Bản', 2018, 'https://i.pinimg.com/474x/ba/b1/12/bab1125fff6ce729434def0d7ecd6b01.jpg'),
(36, 'Ẩn Danh ', 'Search Out', 'Tâm lý, Hình sự', 'Hàn Quốc', 2020, 'https://nguoinoitiengexpress.vn/wp-content/uploads/2023/07/KE-AN-DANH-TEASER-POSTER-KT-FACEBOOK-KC-25082023-1200x800.jpg'),
(37, 'Phá Án ', 'Pha An', 'Hình sự, Hành động', 'Việt Nam', 2023, 'https://cdn.24h.com.vn/upload/4-2019/images/2019-12-13/1576255957-70-web-drama-de-tai-pha-an---tam-ly-hinh-su-hua-hen-gay-bao-mang-poster-gmsn-1576122733-width660height891.jpg'),
(38, 'Kẻ săn suy nghĩ', 'Mindhunter ', 'Tâm lý, Hình sự', 'Mỹ', 2017, 'https://cdn0.fahasa.com/media/catalog/product/b/_/b_a_1_mindhunter-k_s_n_suy_ngh_.jpg'),
(39, 'Thám tử Sherlock Holmes', 'Sherlock Holmes', 'Tâm lý, Hình sự', 'Anh', 2010, 'https://upload.wikimedia.org/wikipedia/vi/8/8a/Sherlock_Holmes_2_Poster.jpg'),
(40, 'Phi vụ triệu đô', 'La Casa de Papel ', 'Hình sự, Hành động', 'Tây Ban Nha', 2017, 'https://dep.com.vn/wp-content/uploads/2021/11/unnamed-1.jpg'),
(41, 'Oppenheimer', 'Oppenheimer', 'Tiểu sử, Tâm lý, Giật gân, Chính kịch', 'Anh, Mỹ', 2023, 'https://www.elle.vn/wp-content/uploads/2024/03/11/575680/poster-oppenheimer-scaled.jpg'),
(42, 'Thanh Xuân 18×2: Lữ Trình Hướng Về Em', NULL, 'Lãng mạn, Tình cảm', 'Nhật Bản, Đài Loan', 2024, 'https://upload.wikimedia.org/wikipedia/vi/thumb/b/bc/Thanh_xu%C3%A2n_18x2.jpg/220px-Thanh_xu%C3%A2n_18x2.jpg'),
(43, 'Những mảnh vẽ cảm xúc 2', 'Inside Out 2', 'Hoạt hình, Gia đình, Tâm lý', 'Mỹ', 2024, 'https://image.tmdb.org/t/p/original/uhZzVFgWXlFGEHRSsehze1av2dj.jpg'),
(44, 'Kung Fu Panda 4', 'Kung Fu Panda 4', 'Hoạt hình, Hành động, Hài hước', 'Mỹ', 2024, 'https://upload.wikimedia.org/wikipedia/vi/7/7f/Kung_Fu_Panda_4_poster.jpg'),
(45, 'Godzilla x Kong: Đế chế mới', 'Godzilla x Kong: The New Empire', 'Hành động, Khoa học viễn tưởng, Quái vật', 'Mỹ', 2024, 'https://media.themoviedb.org/t/p/w500/ntuE9YvFmFcaRKj80QUPAawiT7X.jpg'),
(46, 'Người Nhện: Du hành vũ trụ nhện', 'Spider-Man: Across the Spider-Verse', 'Phim hoạt hình, Siêu anh hùng, Hành động', 'Mỹ', 2023, 'https://images2.thanhnien.vn/528068263637045248/2023/6/1/spider-man-across-the-spider-verse-poster-16850724641101103572976-168564586504456671684.jpg'),
(47, 'Quá nhanh quá nguy hiểm 10', 'Fast X', 'Hành động, Phiêu lưu', 'Mỹ', 2024, 'https://upload.wikimedia.org/wikipedia/vi/2/22/Fast_X_VN_poster.jpg'),
(48, 'Kong: Đảo Đầu lâu', 'Kong: Skull Island', 'Hành động, Phiêu lưu, Khoa học viễn tưởng', 'Mỹ', 2017, 'https://image.tmdb.org/t/p/original/iGMzUdTwnarnMGG5CPpwBLuzKGj.jpg'),
(49, 'Chúa tể Godzilla: Đế vương bất tử', 'Godzilla: King of the Monsters', 'Hành động, Khoa học viễn tưởng', 'Mỹ', 2019, 'https://upload.wikimedia.org/wikipedia/vi/f/f1/Chua_te_Godzilla_bia_poster.jpg'),
(50, 'Avengers: Hồi kết', 'Avengers 4: Endgame', 'Hành động, Siêu anh hùng', 'Mỹ', 2019, 'https://upload.wikimedia.org/wikipedia/vi/2/2d/Avengers_Endgame_bia_teaser.jpg');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

DROP TABLE IF EXISTS `phim`;
CREATE TABLE IF NOT EXISTS `phim` (
  `id` int NOT NULL AUTO_INCREMENT,
  `danh_gia` int DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `chat_luong` varchar(255) DEFAULT NULL,
  `ngon_ngu` varchar(255) DEFAULT NULL,
  `thoi_luong` int DEFAULT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL,
  `luot_xem` int DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `noi_dung` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`id`, `danh_gia`, `trang_thai`, `chat_luong`, `ngon_ngu`, `thoi_luong`, `ngay_cap_nhat`, `luot_xem`, `video`, `noi_dung`) VALUES
(1, 4, 'Đã chiếu', 'Full HD', 'Vietsub', 120, '2024-05-25 00:00:00', 1000, 'https://www.youtube.com/watch?v=ByXuk9QqQkk', 'Chihiro Ogino, một cô bé 10 tuổi ương bướng và hay than vãn, cùng gia đình chuyển đến một khu phố mới. Khi cha mẹ cô rẽ nhầm vào một con đường bí ẩn, họ đến một thế giới ma thuật nơi các vị thần và sinh vật thần thoại Nhật Bản sinh sống. Cha mẹ của Chihiro vô tình ăn thức ăn dành cho các vị thần và bị phù thủy Yubaba biến thành heo. Chihiro buộc phải làm việc trong nhà tắm công cộng của Yubaba để chuộc lại cha mẹ và tìm đường trở về thế giới loài người.'),
(2, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 192, '2024-05-25 00:00:00', 3000, 'http://www.youtube.com/watch?v=ZXj3lJ9YPjc', 'Vua sư tử là câu chuyện về Simba, chú sư tử con là con trai của Mufasa, vị vua đang cai trị Pride Lands. Cuộc sống hạnh phúc của Simba bị gián đoạn bởi người chú ruột độc ác Scar, kẻ âm mưu cướp ngai vàng của Mufasa. Scar giết Mufasa và khiến Simba tin rằng mình chính là nguyên nhân dẫn đến cái chết của cha. Simba bỏ trốn khỏi Pride Lands và sống lưu vong trong nhiều năm.'),
(3, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=gYc2kV-IgAA', 'Câu chuyện đồ chơi xoay quanh cuộc phiêu lưu của nhóm đồ chơi của cậu bé Andy, với nhân vật chính là anh chàng cao bồi Woody. Khi Andy nhận được món đồ chơi mới - Siêu nhân Buzz Lightyear, Woody lo lắng vị trí yêu thích của mình bị thay thế.Cả hai mâu thuẫn và thường xuyên xảy ra tranh cãi. Tuy nhiên, sau nhiều biến cố, Woody và Buzz nhận ra tầm quan trọng của tình bạn và cùng nhau hợp sức giải cứu Andy khỏi tay Sid, một cậu bé hung ác thích hành hạ đồ chơi.'),
(4, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=2BlMNH1QTeE', 'Câu chuyện đồ chơi 3 kể về hành trình của Andy, cậu bé đang trưởng thành và chuẩn bị lên đại học. Andy sắp sửa chia tay những món đồ chơi thân yêu của mình, bao gồm cả Woody, Buzz Lightyear và các bạn. Lo sợ bị bỏ rơi, Woody đã vô tình bị nhầm lẫn và được đưa đến Sunnyside Daycare, một nhà trẻ tưởng chừng như thiên đường cho đồ chơi. Tuy nhiên, Sunnyside Daycare thực chất là một nơi đầy rẫy sự độc ác và tham lam, nơi Lotso, một chú gấu bông nham hiểm, cai trị bằng nắm đấm sắt. Woody quyết tâm trốn thoát khỏi Sunnyside Daycare để trở về với Andy. Cùng với sự giúp đỡ của các bạn mới như Jessie, Bullseye, Rex, Mr. Potato Head và Hamm, Woody đã trải qua nhiều thử thách nguy hiểm và cuối cùng cũng đoàn tụ với Andy. Trong khi đó, Buzz Lightyear và các đồ chơi khác của Andy bị nhầm lẫn và được bán cho một nhà sưu tập đồ chơi cổ. Nhờ sự thông minh và dũng cảm của Buzz, họ đã trốn thoát khỏi nhà sưu tập và tìm đường trở về nhà.Cuối cùng, Andy quyết định giữ lại tất cả những món đồ chơi của mình và mang chúng theo khi lên đại học. Woody và các bạn đồ chơi đã rất vui mừng và biết ơn Andy vì đã yêu thương và trân trọng họ.'),
(5, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=HWEW_qTLSEE', 'Up kể về câu chuyện của Carl Fredricksen, một ông già 78 tuổi sống một mình trong một ngôi nhà nổi trên những quả bóng bay. Sau khi mất đi người vợ thân yêu Ellie, Carl quyết định thực hiện ước mơ lâu đời của họ là phiêu lưu đến Nam Mỹ. Anh buộc 3000 quả bóng bay vào ngôi nhà của mình và bay đi, vô tình mang theo cậu bé Russell, một Hướng đạo sinh 8 tuổi. Cùng nhau, Carl và Russell trải qua một cuộc hành trình đầy thú vị và nguy hiểm, khám phá những vùng đất mới, đối mặt với những thử thách và học cách kết bạn. Phim đề cao tình yêu, tình bạn, lòng dũng cảm và ước mơ.'),
(6, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=v5dDcrBsCyM&pp=ygUUdHJhaWxlciBwaGltIHRpdGFuaWM%3D', 'Jack và Rose tình cờ gặp nhau trên tàu và nhanh chóng nảy sinh tình cảm. Mối tình yêu của họ bị cấm cản bởi địa vị xã hội khác biệt và sự phản đối của Cal. Khi Titanic va vào tảng băng trôi vào đêm 14 tháng 4 năm 1912, thảm kịch xảy ra. Con tàu chìm dần xuống đáy đại dương, tạo ra hỗn loạn và hoảng loạn. Jack và Rose cố gắng ở bên nhau trong những giờ phút cuối cùng, nhưng Jack đã hy sinh mạng sống để cứu Rose. Rose sống sót sau thảm họa và mang theo ký ức về Jack trong suốt phần đời còn lại.'),
(7, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=BjJcYdEOI0k', 'Nhật ký tình yêu là một bộ phim tình cảm lãng mạn Mỹ năm 2004 được đạo diễn bởi Nick Cassavetes và dựa trên tiểu thuyết cùng tên năm 1996 của Nicholas Sparks. Phim có sự tham gia của Ryan Gosling và Rachel McAdams trong vai Noah và Allie, hai người trẻ tuổi yêu nhau say đắm bất chấp sự khác biệt về tầng lớp xã hội.'),
(8, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://m.youtube.com/watch?v=LCAEr9IwaSk', 'Westley, một nông dân trẻ, yêu Buttercup, một cô gái nhà nông. Tuy nhiên, trước khi họ có thể kết hôn, Westley bị bắt cóc bởi Humperdinck, một hoàng tử độc ác. Buttercup sau đó bị buộc phải kết hôn với Humperdinck. Tin rằng Westley đã chết, Buttercup chìm trong đau buồn. Nhiều năm sau, cô được Vizzini, Fezzik và Inigo Montoya, ba tên cướp biển tốt bụng, giải cứu. Ba người đàn ông này đã thề sẽ giúp Buttercup tìm lại Westley. Họ cùng nhau đi đến Lâu đài Humperdinck, nơi họ phát hiện ra rằng Westley vẫn còn sống nhưng bị giam cầm trong một cái hố chứa chuột. Vizzini, Fezzik và Inigo đã giải cứu Westley và cùng nhau trốn thoát khỏi lâu đài. Westley và Buttercup cuối cùng cũng được đoàn tụ và họ sống hạnh phúc mãi mãi.'),
(9, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=-E10AcydCuk', 'Khi Harry gặp Sally là bộ phim hài lãng mạn Mỹ năm 1989 do Rob Reiner đạo diễn và Nora Ephron viết kịch bản. Phim có sự tham gia của Billy Crystal và Meg Ryan trong vai Harry Burns và Sally Albright, hai người bạn đại học gặp nhau khi họ đi chung xe từ Chicago đến New York. Trong suốt 12 năm sau đó, họ gặp lại nhau nhiều lần và tranh luận về bản chất của tình bạn và tình yêu.'),
(10, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=OqVgCfZX-yE', 'Annie Hall là một bộ phim hài lãng mạn Mỹ năm 1977 do Woody Allen viết kịch bản, đạo diễn và đóng vai chính cùng với Diane Keaton. Phim kể về mối quan hệ lãng mạn phức tạp giữa Alvy Singer, một diễn viên hài thần kinh và Annie Hall, một ca sĩ và diễn viên.'),
(11, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=OsNWYPaezIo', 'High&Low: Kẻ cặn bã X là phần tiếp theo của series phim hành động đình đám \"High&Low\" của Nhật Bản. Phim xoay quanh cuộc chiến giữa hai băng đảng đối thủ: Oya High School và Sannoh Otowa. Sau khi Oya High School chiến thắng trong trận chiến trước, Sannoh Otowa quyết tâm trả thù và giành lại vị thế của mình.'),
(12, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=dug56u8NN7g', 'Phần 2 của series Loki tiếp nối câu chuyện sau sự kiện trong phần 1, khi Loki vô tình kích hoạt một cỗ máy thời gian và làm hỏng dòng thời gian. Cùng với Mobius M. Mobius, một đặc vụ của Time Variance Authority (TVA), Loki phải du hành đến các mốc thời gian khác nhau để ngăn chặn các biến thể nguy hiểm của chính mình và khôi phục lại dòng thời gian.'),
(13, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=ybcWiZOjJj8', 'Phim Quý Công Tử (tựa gốc: The Childe) xoay quanh hành trình bí ẩn của Marco Han (Kang Tae Joo), một võ sĩ quyền anh gốc Philippines người Hàn Quốc đầy tham vọng. Anh đến Hàn Quốc để tìm cha và đồng thời cố gắng chu cấp cho người mẹ ốm yếu của mình.'),
(14, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=OUjXDTY6h4U&pp=ygUudHJhaWxlciBwaGltIFJlc2lkZW50IEV2aWw6IMSQ4bqjbyB04butIHRo4bqnbg%3D%3D', 'Resident Evil: Đảo Tử Thần là phần phim thứ năm trong series phim hoạt hình Resident Evil, nối tiếp sau phần phim Resident Evil: Vendetta. Phim được phát hành vào năm 2023 và do Hiroaki Ando đạo diễn.'),
(15, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=JdyOF1VMJ78', 'Chó săn công lý là bộ phim truyền hình hành động tội phạm Hàn Quốc do Kim Jin-min đạo diễn và biên kịch. Phim có sự tham gia của Woo Do-hwan, Lee Sang-yi, Kim Hye-jin, Jung Woong-in và Joo Jin-mo.'),
(16, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=OrkpnMV3d3Y&pp=ygUjdHJhaWxlciBwaGltIMSQw6BvLCBQaOG7nyB2w6AgUGlhbm8%3D', 'Bộ phim khắc họa cuộc sống thường nhật của người dân Hà Nội trong thời chiến, với những khó khăn, thiếu thốn nhưng vẫn giữ được tinh thần lạc quan, yêu đời. Văn Dân và Thục Hương gặp gỡ và yêu nhau trong hoàn cảnh đầy biến động, tình yêu của họ là biểu tượng cho sức sống mãnh liệt và niềm tin vào tương lai tươi sáng của dân tộc.'),
(17, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://m.youtube.com/watch?v=kuAXKBFuvTY', 'Mùi Cỏ Cháy là bộ phim điện ảnh Việt Nam năm 2022 do đạo diễn Nhất Trung thực hiện, dựa trên kịch bản của Hoàng Nhuận Cầm. Phim lấy bối cảnh thành cổ Quảng Trị năm 1972, xoay quanh câu chuyện của 4 chàng sinh viên Hà Nội là Hoàng, Thành, Thăng và Long, những người đã tạm gác lại ước mơ học tập để lên đường nhập ngũ, chiến đấu chống giặc Mỹ.'),
(18, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=A-0F6YFOSYc&pp=ygUndHJhaWxlciBwaGltIEzDrW5oIGLhuq9uIHThu4lhIFNpYmVyaWFu', 'Phim lấy bối cảnh nước Nga thời hiện đại, xoay quanh câu chuyện về Klavdi Gerasimov, một tay súng bắn tỉa thiện nghệ được mệnh danh là \"Siberian Sniper\". Gerasimov được giao nhiệm vụ ám sát một tên trùm mafia nguy hiểm, nhưng mọi thứ trở nên phức tạp khi anh phát hiện ra âm mưu đen tối đằng sau nhiệm vụ này. Gerasimov buộc phải lựa chọn giữa lòng trung thành với tổ quốc và bảo vệ những người anh yêu thương. Để hoàn thành nhiệm vụ và vạch trần âm mưu, Gerasimov phải sử dụng tất cả kỹ năng và kinh nghiệm của mình để đối đầu với những kẻ thù nguy hiểm và vượt qua những thử thách cam go.'),
(19, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=02PPMPArNEQ&pp=ygUqdHJhaWxlciBwaGltIEd1eSBSaXRjaGll4oCZcyBUaGUgQ292ZW5hbnQn', 'Xoay quanh một nhóm lính được cử đi giải cứu một nhà khoa học bị bắt cóc. Bộ phim được cho là có nhiều pha hành động, hồi hộp và hài hước, và chắc chắn sẽ là phim không thể bỏ qua đối với người hâm mộ các tác phẩm của Guy Ritchie.'),
(20, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=_kQM8hmOvaA&pp=ygUZdHJhaWxlciBwaGltIEhpZGRlbiBCbGFkZQ%3D%3D', 'Vô Danh là một bộ phim điện ảnh gián điệp lấy bối cảnh Thượng Hải những năm 1941, xoay quanh cuộc chiến bí mật chống lại quân xâm lược Nhật Bản của các điệp viên ngầm.'),
(21, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=4RCzymlJ-fc', 'Bối cảnh phim diễn ra trong một tương lai không xa, khi Trái Đất đang dần tàn lụi do hạn hán và bão bụi. Cooper (McConaughey), một phi hành gia thuộc Cơ quan Hàng không Vũ trụ Quốc gia (NASA), được giao nhiệm vụ dẫn dắt một đoàn thám hiểm qua một lỗ đen có tên là Gargantua để tìm kiếm một ngôi nhà mới cho nhân loại. Họ đi qua một hành tinh nước nơi thời gian trôi chậm hơn nhiều so với Trái Đất, một hành tinh băng giá nơi họ bị tấn công bởi những sinh vật thù địch, và cuối cùng đến Gargantua. Cooper đi vào lỗ đen và khám phá ra một chiều không gian tứ chiều, nơi anh có thể giao tiếp với con gái Murphy (Foy) của mình thông qua thời gian và không gian. Với sự giúp đỡ của Cooper, Murphy phát triển một công nghệ mới cho phép con người di chuyển giữa các hành tinh và cứu nhân loại. Phim kết thúc với việc Cooper đoàn tụ với con gái mình trên một hành tinh mới, nơi họ bắt đầu một cuộc sống mới.'),
(22, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=-EIGzsQILt4&pp=ygVBdHJhaWxlciBwaGltIExpw6puIG1pbmggQ8O0bmcgbMO9OiBwaGnDqm4gYuG6o24gY-G7p2EgWmFjayBTbnlkZXI%3D', '\"Liên minh Công lý: Phiên bản Zack Snyder\" là phiên bản mở rộng và chỉnh sửa lại bộ phim \"Liên minh Công lý\" (2017) do Zack Snyder đạo diễn. Phiên bản này dài hơn 4 tiếng và thể hiện tầm nhìn ban đầu của Snyder cho câu chuyện về sự hợp tác của các siêu anh hùng DC.'),
(23, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=MgZT5DrDn_g&pp=ygUYdHJhaWxlciBwaGltIFBhY2lmaWMgUmlt', 'Bối cảnh phim diễn ra trong tương lai gần, khi những sinh vật khổng lồ ngoài hành tinh được gọi là Kaiju xuất hiện từ Thái Bình Dương và tấn công các thành phố ven biển. Để chống lại mối đe dọa này, Liên Hợp Quốc đã tạo ra Jaeger, những robot khổng lồ được điều khiển bởi hai phi công. Raleigh Becket (Charlie Hunnam) là một cựu phi công Jaeger, người được triệu tập trở lại để tham gia vào cuộc chiến chống lại Kaiju. Anh hợp tác với Mako Mori (Rinko Kikuchi), một học viên Jaeger trẻ tuổi, và Marshal Pentecost (Idris Elba), người đứng đầu chương trình Jaeger, để điều khiển Jaeger Gipsy Danger và chiến đấu chống lại Kaiju. Siêu Đại Chiến là một bộ phim hành động hoành tráng với những pha chiến đấu mãn nhãn giữa Jaeger và Kaiju. Phim cũng có cốt truyện hấp dẫn và dàn diễn viên tài năng.'),
(24, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=r8SrNmW45FU', 'Lấy bối cảnh năm 2042, Trái Đất trở nên ô nhiễm và không thể sinh sống. Giới nhà giàu đã di cư lên UTS, một khu vực sinh sống nhân tạo ngoài vũ trụ, trong khi những người nghèo buộc phải sống sót trên Trái Đất hoang tàn. Tae-ho (Song Joong-ki), một phi công tài ba nhưng có quá khứ đen tối, cùng với những người bạn đồng hành là Jang (Kim Tae-ri), Tiger Park (Jin Seon-kyu) và robot Bubs (Yu Hae-jin) tạo thành phi hành đoàn \"Victory\", chuyên thu gom rác thải vũ trụ để kiếm sống. Cuộc sống bấp bênh của họ thay đổi hoàn toàn khi họ phát hiện ra một cô bé bí ẩn tên Kot-nim (Kim Tae-ri) trong một con tàu vũ trụ bị hỏng. Kot-nim sở hữu khả năng giao tiếp với robot và nắm giữ bí mật về một vũ khí hủy diệt có sức mạnh to lớn. Bị cuốn vào âm mưu đen tối liên quan đến UTS và tập đoàn vũ khí DTS, Tae-ho và phi hành đoàn \"Victory\" phải đưa ra lựa chọn: bảo vệ Kot-nim và bí mật của cô bé, hay bán đứng họ để đổi lấy tiền thưởng.'),
(25, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=X2m-08cOAbc', 'Giải Cứu Guy (Free Guy) là một bộ phim hài hành động khoa học viễn tưởng Mỹ năm 2021 do Shawn Levy đạo diễn và Matt Lieberman và Zak Penn viết kịch bản. Phim có sự tham gia của Ryan Reynolds, Jodie Comer, Lil Rel Howery, Joe Keery, Utkarsh Ambudkar và Taika Waititi. Phim kể về Guy (Ryan Reynolds), một nhân viên ngân hàng bình thường sống trong thế giới trò chơi điện tử thế giới mở. Sau khi gặp Molotov Girl (Jodie Comer), một người chơi bí ẩn, Guy bắt đầu nhận ra rằng mình là một nhân vật trong trò chơi và quyết định trở thành anh hùng trong câu chuyện của chính mình.'),
(26, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=nW948Va-l10', 'Trong phim, Loki bị Cơ quan Quản lý Thời gian (TVA) bắt giữ vì tội làm xáo trộn dòng thời gian. TVA là một tổ chức bí ẩn chịu trách nhiệm bảo vệ dòng thời gian thiêng liêng và ngăn chặn sự xuất hiện của các nhánh thực tại mới. Loki buộc phải hợp tác với TVA để sửa chữa những sai lầm của mình và ngăn chặn một sự kiện thảm khốc đe dọa sự tồn tại của đa vũ trụ.'),
(27, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=9ix7TUGVYIo', 'Ma trận 4 là phần tiếp theo của bộ ba phim Ma trận đình đám, ra mắt vào năm 2021 sau 18 năm chờ đợi. Phim do Lana Wachowski đạo diễn, tiếp tục câu chuyện về Neo (Keanu Reeves) sau những sự kiện xảy ra trong phần 3.'),
(28, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=p5BxPH6PXl0&pp=ygURdHJhaWxlciBwaGltIER1bmU%3D', 'Xứ Cát (tên tiếng Anh: Dune) là một bộ phim khoa học viễn tưởng sử thi Mỹ năm 2021 do Denis Villeneuve đạo diễn, dựa trên tiểu thuyết cùng tên năm 1965 của Frank Herbert. Phim có sự tham gia của Timothée Chalamet trong vai Paul Atreides, con trai của công tước Leto Atreides, người được giao nhiệm vụ cai quản hành tinh sa mạc Arrakis, nơi khai thác gia vị melange quý giá nhất thiên hà. Tuy nhiên, gia đình Atreides soon bị phản bội bởi Baron Harkonnen, kẻ thù lâu đời của họ, với sự hỗ trợ của đế chế Padishah Emperor. Paul và mẹ của mình, Lady Jessica, buộc phải trốn chạy vào sa mạc và tìm kiếm sự giúp đỡ của người Fremen, dân bản địa thích nghi với môi trường khắc nghiệt của Arrakis.'),
(29, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=ej3ioOneTy8', 'Phim kể về hành trình phi thường của Watney khi anh cố gắng sống sót một mình trên sao Hỏa với nguồn cung cấp hạn chế. Watney sử dụng kiến thức khoa học và kỹ năng kỹ thuật của mình để trồng thực phẩm, sản xuất nước và liên lạc với Trái đất. Anh cũng phải đối mặt với những nguy hiểm chết người, bao gồm bão bụi, bức xạ và sự cô lập.'),
(30, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=WR7cc5t7tv8', 'Lấy bối cảnh hậu tận thế, nơi những sinh vật ngoài hành tinh nhạy cảm với âm thanh đã tiêu diệt phần lớn nhân loại, gia đình Abbott buộc phải sống trong im lặng để sinh tồn. Lee Abbott (Krasinski) và Evelyn Abbott (Blunt) cùng hai con Regan (Simmonds) và Marcus (Jupe) giao tiếp bằng ngôn ngữ ký hiệu và sử dụng các dấu hiệu để di chuyển. Cuộc sống yên bình của họ bị phá vỡ khi Evelyn sinh con trai thứ ba và vô tình tạo ra tiếng động thu hút một sinh vật. Lee hy sinh bản thân để bảo vệ gia đình, để lại Evelyn và ba đứa trẻ tự xoay sở. Evelyn quyết tâm tìm cách chống lại sinh vật và bảo vệ con cái của mình.'),
(31, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=PIxpPMyGcpU&pp=ygUZdHJhaWxlciBwaGltIFRoZSBFeG9yY2lzdA%3D%3D', '\"Quỷ Ám\" (tên tiếng Anh: The Exorcist: Believer) là một bộ phim kinh dị siêu nhiên của Mỹ năm 2023 do William Friedkin đạo diễn và có sự tham gia của Leslie Odom Jr., Olivia DeJonge, Joseph Marcell, Scott Shepherd, Andra Day và Sharon Epatha Merkerson. Phim là phần tiếp theo của bộ phim năm 1973 cùng tên và dựa trên tiểu thuyết cùng tên của William Peter Blatty.'),
(32, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=5Cb3ik6zP2I', 'Jack Torrance, một nhà văn thất nghiệp, cùng vợ và con trai đến trông coi khách sạn Overlook hẻo lánh trong mùa đông. Khi bị cô lập bởi tuyết rơi, Jack dần trở nên mất trí và bị những linh hồn ma quỷ trong khách sạn ám ảnh. Anh ta bắt đầu hành hạ vợ con mình và cuối cùng trở thành một kẻ giết người cuồng loạn.'),
(33, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=V6wWKNij_1M&pp=ygUXdHJhaWxlciBwaGltIEhlcmVkaXRhcnk%3D', 'Câu chuyện xoay quanh gia đình Graham đang phải đối mặt với những mất mát và bí ẩn sau khi bà ngoại Ellen qua đời. Khi bí mật đen tối về quá khứ của Ellen dần được hé lộ, những sự kiện kỳ dị và ám ảnh bắt đầu xảy ra với gia đình, đẩy họ đến bờ vực của sự tan vỡ.'),
(34, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=fX746b8pDVg&pp=ygUZdHJhaWxlciBwaGltIFRoZSBBdWRpdGlvbg%3D%3D', 'Phim xoay quanh câu chuyện của Aoi Amamiya, một nữ diễn viên trẻ tham gia buổi thử vai cho một bộ phim kinh dị sắp tới. Aoi được yêu cầu thực hiện một số cảnh quay thử vai ngày càng kỳ quặc và đáng sợ hơn. Khi ranh giới giữa thực tế và hư cấu bắt đầu mờ dần, Aoi nhận ra rằng chính bản thân cô cũng đang bị cuốn vào một bí ẩn đen tối và nguy hiểm.'),
(35, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://vieon.vn/vong-tron-oan-nghiet.html', 'Câu chuyện xoay quanh Asakawa Reiko, một nhà báo đang điều tra một chuỗi cái chết bí ẩn xảy ra với những học sinh trung học. Sau khi con gái của cô cũng trở thành nạn nhân, Reiko quyết tâm tìm ra bí mật đằng sau những vụ tử vong này. Cuộc điều tra dẫn cô đến một cuốn băng video bí ẩn được đồn đại rằng sẽ giết chết người xem sau bảy ngày.'),
(36, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=mJUba1jU3aI&pp=ygUXdHJhaWxlciBwaGltIFNlYXJjaCBPdXQ%3D', 'Search Out là một bộ phim kinh dị, trinh thám Hàn Quốc được phát hành vào năm 2020, lấy cảm hứng từ trò chơi trực tuyến \"Thử thách Cá Voi Xanh\" từng gây chấn động thế giới vào năm 2017. '),
(37, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=hhXTXS-tZjw&pp=ygUVdHJhaWxlciBwaGltIFBow6Egw4Fu', 'Phim xoay quanh câu chuyện về một nhóm cảnh sát được giao nhiệm vụ điều tra một loạt vụ án mạng đang gieo rắc kinh hoàng cho thành phố. Khi họ đi sâu vào vụ án, họ vén màn một mạng lưới tham nhũng và âm mưu liên quan đến những kẻ cầm quyền.'),
(38, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=TfRGQKQep0w&pp=ygUfdHJhaWxlciBwaGltS-G6uyBzxINuIHN1eSBuZ2jEqQ%3D%3D', 'Cốt truyện xoay quanh hai đặc vụ FBI, Holden Ford (Jonathan Groff) và Bill Tench (Holt McCallany), được giao nhiệm vụ phỏng vấn những kẻ giết người hàng loạt bị giam giữ để hiểu rõ hơn về tâm lý của họ và từ đó có thể ngăn chặn những vụ án tương tự xảy ra trong tương lai.'),
(39, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=iKUzhzustok&pp=ygUcdHJhaWxlciBwaGltIFNoZXJsb2NrIEhvbG1lcw%3D%3D', 'Phim lấy bối cảnh London vào năm 1891, khi Holmes và Watson hợp tác để điều tra vụ án một loạt vụ giết người bí ẩn. Các vụ giết người dường như không có liên quan với nhau, nhưng Holmes sớm nhận ra rằng chúng là một phần của một âm mưu lớn hơn nhằm ám sát Nữ hoàng Victoria.'),
(40, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=_InqQJRqGW4&pp=ygUYdHJhaWxlciBMYSBDYXNhIGRlIFBhcGVs', '\"Phi vụ triệu đô\" (tên gốc tiếng Tây Ban Nha: La Casa de Papel) là một bộ phim truyền hình tội phạm ly kỳ của Tây Ban Nha được tạo ra bởi Álex Pina. Phim xoay quanh một nhóm trộm tài ba do Giáo sư (Álvaro Morte) cầm đầu, thực hiện hai vụ cướp táo bạo: Cướp Xưởng in tiền Hoàng gia Tây Ban Nha và Ngân hàng Quốc gia Tây Ban Nha.'),
(41, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=uYPbbksJxIg&pp=ygUTdHJhaWxlciBPcHBlbmhlaW1lcg%3D%3D', 'Bộ phim theo chân Oppenheimer từ những ngày đầu tiên làm việc tại Đại học Harvard cho đến khi ông trở thành \"cha đẻ của bom nguyên tử\". Phim khám phá những thách thức khoa học và đạo đức mà Oppenheimer và nhóm của ông phải đối mặt khi họ phát triển vũ khí hủy diệt hàng loạt mạnh mẽ nhất trong lịch sử.'),
(42, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=M7ylLPdaVvU&pp=ygU3dHJhaWxlciBUaGFuaCBYdcOibiAxOMOXMjogTOG7ryBUcsOsbmggSMaw4bubbmcgVuG7gSBFbQ%3D%3D', 'Phim kể về câu chuyện tình yêu dang dở của Jimmy (Hứa Quang Hán) và Ami (Kaya Kiyohara) khi họ còn trẻ. 18 năm sau, Jimmy, giờ đã trưởng thành, quyết định quay trở lại Nhật Bản để tìm lại mối tình đầu của mình. Hành trình của anh đưa anh đến với những kỷ niệm đẹp đẽ và những bài học cuộc sống quý giá.'),
(43, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=AfOlW2OrzqE', 'Bộ phim tiếp tục theo chân hành trình của Riley Anderson, cô bé đang bước vào tuổi dậy thì với những thay đổi về cảm xúc và tâm lý phức tạp. Bên trong tâm trí của Riley, năm nhân vật tượng trưng cho các cảm xúc cơ bản - Vui Vẻ, Buồn Bã, Giận Dữ, Sợ Hãi và Chán Ghét - tiếp tục điều hướng cuộc sống của cô bé. Tuy nhiên, sự xuất hiện của một cảm xúc mới mang tên \"Lo Âu\" đã khuấy đảo thế giới bên trong Riley, khiến cho các cảm xúc khác bối rối và dẫn đến những tình huống hài hước nhưng cũng đầy thử thách.'),
(44, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=egkeFvm26pc&pp=ygUXdHJhaWxlciBLdW5nIEZ1IFBhbmRhIDQ%3D', 'Trong phần này, Po và các Ngũ Hổ sẽ đối mặt với một kẻ thù mới nguy hiểm: Tắc Kè Bông, một kẻ xảo quyệt có khả năng chiêu mộ những tên phản diện đã bị đánh bại từ cõi linh hồn. Po buộc phải luyện tập những kỹ năng mới và hợp tác với Zhen, một con cáo tinh ranh, để ngăn chặn Tắc Kè Bông thực hiện âm mưu thống trị thế giới.'),
(45, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=B2Jlyq_Tf3Y', 'Tiếp nối các sự kiện của Godzilla: King of the Monsters, Godzilla và Kong tiếp tục là hai quái vật khổng lồ mạnh mẽ nhất Trái Đất. Khi một mối đe dọa mới xuất hiện, hai gã khổng lồ buộc phải hợp tác để chống lại kẻ thù chung và bảo vệ hành tinh khỏi sự diệt vong.'),
(46, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=HVgwRbQfpCc&pp=ygUydHJhaWxlciBOZ8aw4budaSBOaOG7h246IER1IGjDoG5oIHbFqSB0cuG7pSBuaOG7h24%3D', 'Tiếp nối câu chuyện từ phần phim trước, Miles Morales (Shameik Moore) một lần nữa được giao nhiệm vụ bảo vệ Đa vũ trụ khỏi kẻ thù nguy hiểm tên là Knull. Lần này, Miles sẽ hợp tác với Gwen Stacy (Hailee Steinfeld) và một đội Người Nhện từ các chiều không gian khác để ngăn chặn Knull hủy diệt mọi thứ.'),
(47, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=32RAq6JzY-w', 'Nội dung phim xoay quanh cuộc chiến giữa Dom Toretto (Vin Diesel) và Dante Reyes (Jason Momoa), một kẻ thù nguy hiểm đang tìm cách trả thù cho cái chết của cha mình. Dom và gia đình buộc phải hợp tác với những đồng minh cũ và kẻ thù mới để ngăn chặn Dante thực hiện âm mưu tàn phá của hắn.'),
(48, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=44LdLqgOpjo', 'Lấy bối cảnh năm 1973, phim Kong: Đảo Đầu lâu theo chân một nhóm thám hiểm gồm các nhà khoa học, lính chiến và một nhiếp ảnh gia khi họ đặt chân lên hòn đảo bí ẩn có tên là Đảo Đầu lâu. Nơi đây ẩn chứa nhiều bí ẩn và nguy hiểm, trong đó có Vua Kong - một con khỉ đột khổng lồ và hung dữ. Nhóm thám hiểm buộc phải đối mặt với nhiều thử thách và hiểm nguy, đồng thời họ cũng phải đưa ra những lựa chọn khó khăn khi Vua Kong trở thành mục tiêu săn lùng của một tổ chức quân sự tàn bạo.'),
(49, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=Jc-K7QATtbg&pp=ygU1dHJhaWxlciBDaMO6YSB04buDIEdvZHppbGxhOiDEkOG6vyB2xrDGoW5nIGLhuqV0IHThu60%3D', 'Bối cảnh phim diễn ra vài năm sau sự kiện của phần trước. Khi những Titan cổ đại, những sinh vật khổng lồ từng thống trị Trái Đất trước đây, lần lượt thức tỉnh và chiến đấu với nhau, Godzilla phải đối mặt với những đối thủ mới mạnh mẽ như Mothra, Rodan và King Ghidorah. Với sự giúp đỡ của tổ chức Monarch, con người phải quyết định xem Godzilla là đồng minh hay kẻ thù trong cuộc chiến sinh tồn của hành tinh.'),
(50, 5, 'Đã chiếu', 'Full HD', 'Vietsub', 145, '2024-05-25 00:00:00', 3812, 'https://www.youtube.com/watch?v=4sZj4aeYUCA&pp=ygUddHJhaWxlciBBdmVuZ2VyczogSOG7k2kga-G6v3Q%3D', 'Đây là phần tiếp theo của bộ phim Avengers: Cuộc chiến vô cực (2018) và là phần thứ 22 trong Vũ trụ Điện ảnh Marvel (MCU). Phim được đạo diễn bởi Anthony và Joe Russo, biên kịch bởi Christopher Markus và Stephen McFeely, do Kevin Feige sản xuất và được điều hành sản xuất bởi Louis Esposito, Victoria Alonso, Trinh Tran, Jon Favreau, Jeremy Latcham, Robert Downey Jr., Anthony Russo, Joe Russo và Markus. him tập trung vào các Siêu anh hùng còn sót lại sau sự kiện \"Avengers: Cuộc chiến vô cực\", khi họ cố gắng đảo ngược Thanos bằng cách sử dụng những Viên đá Vô cực.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` int(11) NOT NULL,
  `id_tk` bigint(20) NOT NULL,
  `id_goi` bigint(20) NOT NULL,
  `ma_donhang` text NOT NULL,
  `so_tien` int(11) NOT NULL,
  `trang_thai` text NOT NULL,
  `ngay_batdau` date DEFAULT NULL,
  `ngay_ketthuc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `id_tk`, `id_goi`, `ma_donhang`, `so_tien`, `trang_thai`, `ngay_batdau`, `ngay_ketthuc`) VALUES
(10, 6, 3, 'DH_20240530181055', 108000, 'da_chuyen_khoan', NULL, NULL),
(11, 6, 1, 'DH_20240530181155', 260000, 'da_chuyen_khoan', NULL, NULL),
(12, 6, 3, 'DH_20240530181217', 108000, 'da_chuyen_khoan', NULL, NULL),
(13, 6, 3, 'DH_20240601111306', 108000, 'da_chuyen_khoan', NULL, NULL),
(14, 6, 2, 'DH_20240601111420', 220000, 'chua_thanh_toan', NULL, NULL),
(15, 6, 2, 'DH_20240601112622', 220000, 'da_chuyen_khoan', NULL, NULL),
(16, 6, 3, 'DH_20240601112634', 108000, 'chua_thanh_toan', NULL, NULL),
(17, 6, 4, 'DH_20240601114320', 70000, 'da_chuyen_khoan', NULL, NULL),
(18, 6, 2, 'DH_20240601114939', 220000, 'chua_thanh_toan', NULL, NULL),
(19, 6, 2, 'DH_20240601115728', 220000, 'da_chuyen_khoan', NULL, NULL),
(20, 6, 1, 'DH_20240601115739', 260000, 'chua_thanh_toan', NULL, NULL),
(21, 6, 2, 'DH_20240601122102', 220000, 'da_chuyen_khoan', NULL, NULL),
(22, 6, 1, 'DH_20240601122139', 260000, 'chua_thanh_toan', NULL, NULL),
(23, 6, 2, 'DH_20240601122213', 220000, 'da_chuyen_khoan', NULL, NULL),
(24, 6, 1, 'DH_20240602122330', 260000, 'da_chuyen_khoan', NULL, NULL),
(25, 6, 3, 'DH_20240602123309', 108000, 'chua_thanh_toan', NULL, NULL),
(26, 6, 3, 'DH_20240602123410', 108000, 'chua_thanh_toan', NULL, NULL),
(27, 6, 1, 'DH_20240602124601', 260000, 'chua_thanh_toan', NULL, NULL),
(28, 6, 2, 'DH_20240602142823', 220000, 'da_chuyen_khoan', NULL, NULL),
(29, 6, 2, 'DH_20240602143552', 220000, 'chua_thanh_toan', NULL, NULL),
(30, 6, 2, 'DH_20240602145019', 220000, 'chua_thanh_toan', NULL, NULL),
(31, 6, 2, 'DH_20240602150127', 220000, 'chua_thanh_toan', NULL, NULL),
(32, 6, 2, 'DH_20240602150233', 220000, 'da_chuyen_khoan', NULL, NULL),
(33, 6, 3, 'DH_20240602153410', 108000, 'da_chuyen_khoan', NULL, NULL),
(34, 6, 2, 'DH_20240602153442', 220000, 'chua_thanh_toan', NULL, NULL),
(35, 6, 3, 'DH_20240602164844', 108000, 'chua_thanh_toan', NULL, NULL),
(36, 6, 1, 'DH_20240602170308', 260000, 'da_chuyen_khoan', NULL, NULL),
(37, 6, 2, 'DH_20240602170909', 220000, 'chua_thanh_toan', NULL, NULL),
(38, 6, 2, 'DH_20240602170918', 220000, 'chua_thanh_toan', NULL, NULL),
(39, 6, 2, 'DH_20240602170925', 220000, 'chua_thanh_toan', NULL, NULL),
(40, 6, 1, 'DH_20240602171430', 260000, 'da_chuyen_khoan', NULL, NULL),
(41, 6, 3, 'DH_20240602172149', 108000, 'chua_thanh_toan', NULL, NULL),
(42, 6, 1, 'DH_20240602172358', 260000, 'da_chuyen_khoan', NULL, NULL),
(43, 6, 1, 'DH_20240602172451', 260000, 'da_chuyen_khoan', NULL, NULL),
(44, 6, 2, 'DH_20240602172516', 220000, 'da_chuyen_khoan', NULL, NULL),
(45, 6, 1, 'DH_20240602173332', 260000, 'da_chuyen_khoan', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `goi_thanh_vien`
--

CREATE TABLE `goi_thanh_vien` (
  `id` int(11) NOT NULL,
  `ten` text NOT NULL,
  `gia` int(11) NOT NULL,
  `noi_dung` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `goi_thanh_vien`
--

INSERT INTO `goi_thanh_vien` (`id`, `ten`, `gia`, `noi_dung`) VALUES
(1, 'VIP 0', 260000, 'Chất lượng:\r\nTốt nhất\r\n+ Độ phân giải:\r\n4K (Ultra HD)'),
(2, 'VIP 1', 220000, 'Chất lượng:\r\nTuyệt vời\r\n+ Độ phân giải:\r\n1080p (Full HD)'),
(3, 'VIP 2', 108000, 'Chất lượng:\r\nTốt\r\n+ Độ phân giải:\r\n720p (HD)'),
(4, 'VIP 3', 70000, 'Chất lượng:\r\nKhá\r\n+ Độ phân giải:\r\n480p');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `ho_ten` text NOT NULL,
  `sdt` int(11) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `dia_chi` text NOT NULL,
  `quyen_han` text NOT NULL,
  `id_goi_thanh_vien` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `email`, `password`, `ho_ten`, `sdt`, `ngay_sinh`, `dia_chi`, `quyen_han`, `id_goi_thanh_vien`) VALUES
(1, 'nhung123@gmail.com', '1', 'gh', 454, '2024-05-26', 'fgf', 'member', NULL),
(2, 'abc@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'abc', 12, '2024-05-29', 'qư', 'member', NULL),
(3, 'acc2@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'họ tên acc 2', 122222222, '2024-05-26', 'acc 2 dia chi', 'member', NULL),
(4, 'acc2@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'họ tên acc 2', 122222222, '2024-05-26', 'acc 2 dia chi', 'member', NULL),
(5, 'acc3@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'acc3', 3333333, '2024-05-27', '3333333', 'member', NULL),
(6, 'Mai Quỳnh', 'b59c67bf196a4758191e42f76670ceba', 'Mai Quỳnh', 358985998, '2013-01-10', 'bhfu', 'member', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `goi_thanh_vien`
--
ALTER TABLE `goi_thanh_vien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `goi_thanh_vien`
--
ALTER TABLE `goi_thanh_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
