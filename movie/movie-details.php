
<?php include('../layout/header.php') ?>
<?php include('../layout/menu.php') ?>

            <div id="content-movie">
                <?php
                    $id = $_GET['id'];
                    $sql = "SELECT * FROM phim, content WHERE phim.id = content.stt AND content.stt = $id";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $id = $row["id"];
                            $movie_title = $row["Tenphim"];
                            $movie = $row["Movie"];
                            $movie_image = $row["poster"];
                            $country = $row["Quocgia"];
                            $rating = $row["danh_gia"];
                            $status = $row["trang_thai"];
                            $quality = $row["chat_luong"];
                            $language = $row["ngon_ngu"];
                            $year = $row["Namsx"];
                            $duration = $row["thoi_luong"];
                            $category = $row["Theloai"];
                            $update_date = $row["ngay_cap_nhat"];
                            $views = $row["luot_xem"];
                            $noi_dung = $row["noi_dung"];
                        }
                    }
                    else
                    {
                        echo"Không tìm thấy phim";
                    }
                ?>
                <h3>Trang chủ/ <?= $movie_title ?></h3>
                <div class="detail-movie">
                    <div class="dLeft-movie">
                        <img src="<?= $movie_image ?>" alt="Hinh anh phim">
                        <ul class="button-list-movie">
                            <li><a href="#">Trailer</a></li>
                            <?php
                                echo "<li><a href='watch-movie.php?id=$id'>Xem phim</a></li>";
                            ?>
                        </ul>
                    </div>
                    <div class="dRight-movie">
                        <h4 class="movie"><?= $movie_title ?></h4>
                        <h5 class="movie2"><?= $movie ?></h5>
                        <p class="evaluate">Đánh giá: <?= $rating ?> / 5</p>
                        <p class="status">Trạng thái: <?= $status ?></p>
                        <p class="quality">Chất lượng: <?= $quality ?></p>
                        <p class="language">Ngôn ngữ: <?= $language ?></p>
                        <p class="year">Năm sản xuất: <?= $year ?></p>
                        <p class="time">Thời lượng: <?= $duration ?></p>
                        <p class="category">Thể loại: <?= $category ?></p>
                        <p class="nation">Quốc gia: <?= $country ?></p>
                        <p class="update">Ngày cập nhật: <?= $update_date ?></p>  
                        <p class="view">Lượt xem: <?= $views ?></p>
                    </div>    
                </div>
                <div class="cFilm-movie">
                    <h4>Nội Dung Phim</h4>
                    <p><?= $noi_dung ?></p>
                </div>
                <div class="comment-movie">
                    <h4>Bình luận</h4>
                    <div>
                        <img src="" alt="">
                        <input type="text">
                    </div>
                </div>

                <div class="recommend-movie">
                    <?php
                        $sql = "SELECT * FROM content WHERE Theloai = '$category' LIMIT 5";
                        $result = mysqli_query($conn, $sql);
                        if (mysqli_num_rows($result) > 0) 
                        {
                            echo "<h4>Có thể bạn quan tâm</h4>";
                            echo "<ul>";

                            while($row = mysqli_fetch_assoc($result)) 
                            {
                                $id = $row["STT"];
                                $recommend_poster = $row["poster"];
                                $recommend_phim = $row["Tenphim"];
                                $recommend_movie = $row["Movie"];

                                echo "<li><a href='movie-details.php?id=$id'><img src='$recommend_poster'><p>$recommend_movie</p>$recommend_phim</a></li>";
                            }
                               echo "</ul>";
                        }
                    ?>
                </div>
            </div>

            <div id="sidebar-movie">
                <?php
                    $sql = "SELECT * FROM content WHERE Namsx = 2023 LIMIT 5";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<h4>Phim nổi bật</h4>";
                        echo "<ul>";

                        while($row = mysqli_fetch_assoc($result)) 
                        {
                            $id = $row["STT"];
                            $sidebar_poster = $row["poster"];
                            $sidebar_phim = $row["Tenphim"];
                            $sidebar_movie = $row["Movie"];

                            echo "<li><a href='movie-details.php?id=$id'><img src='$sidebar_poster'><p>$sidebar_movie</p>$sidebar_phim</a></li>";
                        }
                        echo "</ul>";
                    }
                ?>
            </div>
    <?php include('../layout/footer.php') ?>