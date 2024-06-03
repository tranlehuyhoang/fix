<?php include('config/connect.php') ?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="css/layout.css">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <title>Phim Dau Tay</title>
    </head>
    <body>
        <div id="menu">
            <div class="mLeft">
                <h1><a href="index.php"><img src="img/Logo.jpg" alt="Logo"></a></h1>
            </div>
            <label for="search-input" class="searchBox">
                <input type="text" placeholder="Search here..." id="search-input"/>
                <button class="searchButton">
                    <i class="fas fa-search" id="searchIcon"></i>
                </button>
            </label>
            <div class="mRight">
                <ul>
                    <li><a href="./category/category.php?xem=phimle">Phim lẻ</a></li>
                    <li><a href="./category/category.php?xem=phimbo">Phim bộ</a></li>
                    <li><a href="#">Thể loại</a>
                        <ul class="mType">
                            <li>
                                <div class="subMenu">
                                    <ul>
                                        <li><a href="./category/category.php?xem=kinhdi">Phim kinh dị</a></li>
                                        <li><a href="./category/category.php?xem=hanhdong">Phim hành động</a></li>
                                        <li><a href="./category/category.php?xem=hoathinh">Phim hoạt hình</a></li>
                                        <li><a href="./category/category.php?xem=hai">Phim hài</a></li>
                                        <li><a href="./category/category.php?xem=langman">Phim lãng mạn</a></li> 
                                        <li><a href="./category/category.php?xem=cotrang">Phim cổ trang</a></li>
                                        <li><a href="./category/category.php?xem=giadinh">Phim gia đình</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <div class="subMenu">
                                    <ul>
                                        <li><a href="./category/category.php?xem=chientranh">Phim chiến tranh</a></li>
                                        <li><a href="./category/category.php?xem=chinhkich">Phim chính kịch</a></li>
                                        <li><a href="./category/category.php?xem=vientuong">Phim viễn tưởng</a></li>
                                        <li><a href="./category/category.php?xem=tamly">Phim tâm lý</a></li>
                                        <li><a href="./category/category.php?xem=hinhsu">Phim hình sự</a></li>
                                        <li><a href="./category/category.php?xem=phieuluu">Phim phiêu lưu</a></li>
                                        <li><a href="./category/category.php?xem=khoahoc">Phim khoa học</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li><a href="./login-register/trang_dang_ky_dang_nhap.php">Đăng nhập</a></li>
                    <li><a href="./pay/trang_xem_cac_goi.php">Mua gói</a></li>
                </ul>
            </div>
        </div>

        <div id="content">
            <h3>PHIM NỔI BẬT</h3>
            <div class="tphim1">
                <?php
                    $sql = "SELECT * FROM content WHERE Quocgia = 'Hàn Quốc' OR Quocgia = 'Mỹ' LIMIT 6";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $id = $row["STT"];
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='./movie/movie-details.php?id=$id'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                           echo "</ul>";
                    }
                    mysqli_free_result($result);
                ?>
            </div>
                <h3>PHIM LẺ MỚI CẬP NHẬT</h3>
            <div class="tphim2">
                <?php
                    $sql = "SELECT * FROM content WHERE Namsx='2023' OR Namsx='2022' LIMIT 6";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $id = $row["STT"];
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='./movie/movie-details.php?id=$id'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                           echo "</ul>";
                    }
                    mysqli_free_result($result);
                ?>
            </div>
            <h3>PHIM BỘ MỚI CẬP NHẬT</h3>
            <div class="tphim3">
                <?php
                    $sql = "SELECT * FROM content WHERE Quocgia='Mỹ' LIMIT 6";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $id = $row["STT"];
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='./movie/movie-details.php?id=$id'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                            echo "</ul>";
                    }
                    mysqli_free_result($result);
                ?>
            </div>
            <h3>PHIM HOẠT HÌNH</h3>
            <div class="tphim4">
                <?php
                    $sql = "SELECT * FROM content WHERE Quocgia='Mỹ' OR Theloai='Hoạt hình' LIMIT 6";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $id = $row["STT"];
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='./movie/movie-details.php?id=$id'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                           echo "</ul>";
                    }
                    mysqli_free_result($result);
                ?>
            </div>

            <h3>PHIM CHIẾU RẠP</h3>
            <div class="tphim5">
                <?php
                    $sql = "SELECT * FROM content WHERE Namsx= 2023 LIMIT 6";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $id = $row["STT"];
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='./movie/movie-details.php?id=$id'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                           echo "</ul>";
                    }
                    mysqli_free_result($result);
                ?>
            </div>
        </div>  
        <div id="sidebar">
            <h3>PHIM HOT</h3>
            <?php
                    $sql = "SELECT * FROM content LIMIT 11";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<ul>";
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $id = $row["STT"];
                            $recommend_poster = $row["poster"];
                            $recommend_phim = $row["Tenphim"];
                            $recommend_movie = $row["Movie"];
                            echo "<li><a href='./movie/movie-details.php?id=$id'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                        }
                           echo "</ul>";
                    }
                    mysqli_free_result($result);
                ?>
        </div>

        <div id="footer">
            <div class="lFooter">
                <p><a href="index.php"><img src="img/Logo.jpg" alt="Logo"></a></p>
                <p>PhimDauTay - Nơi giải trí phù hợp cho mọi lứa tuổi </p>
                <p>(c) PhimDauTay</p>
            </div>
            <div class="rFooter">
                <div class="rFooter1">
                    <ul>
                        <li>Phim mới</li>
                        <li><a href="./category/category.php?xem=hoathinh">Phim hoạt hình</a></li>
                        <li><a href="./category/category.php?xem=chieurap">Phim chiếu rạp</a></li>
                        <li><a href="./category/category.php?xem=hinhsu">Phim hình sự</a></li>
                        <li><a href="./category/category.php?xem=kinhdi">Phim kinh dị</a></li>
                    </ul>
                </div>
                <div class="rFooter2">
                    <ul>
                        <li>Phim hay</li>
                        <li><a href="./category/category.php?xem=aumy">Phim Âu Mỹ</a></li>
                        <li><a href="./category/category.php?xem=hanquoc">Phim Hàn Quốc</a></li>
                        <li><a href="./category/category.php?xem=nhatban">Phim Nhật Bản</a></li>
                        <li><a href="./category/category.php?xem=thailan">Phim Thái Lan</a></li>
                    </ul>
                </div>
                <div class="rFooter3">
                    <ul>
                        <li>Thông tin</li>
                        <li><a href="#">Giới thiệu</a></li>
                        <li><a href="#">Liên hệ với chúng tôi</a></li>
                        <li><a href="#">Điều khoản sử dụng</a></li>
                        <li><a href="#">Chính sách riêng tư</a></li>
                    </ul>
                </div>
                <div class="rFooter4">
                    <h4>follow us</h4>
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </body>
</html>