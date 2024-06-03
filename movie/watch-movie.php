<?php include('../layout/header.php') ?>
<?php include('../layout/menu.php') ?>
            <?php
                $id = $_GET['id'];
                $sql = "SELECT * FROM phim, content WHERE phim.id = content.stt AND phim.id = $id";
                $result = mysqli_query($conn, $sql);
                if (mysqli_num_rows($result) > 0) 
                {
                    while($row = mysqli_fetch_assoc($result))
                    {
                        $movie_title = $row["Tenphim"];
                        $category = $row["Theloai"];
                        $video = $row["video"];
                    }
                }
                else
                {
                    echo"Không tìm thấy phim";
                }
            ?>
            <div id="content-watch">
                <h3>Trang chủ/ <?= $movie_title ?></h3>
                <div class="view-watch">
                    <iframe src="$video" frameborder="0"></iframe>
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
                    $sql = "SELECT * FROM content WHERE Namsx = 2024 LIMIT 5";
                    $result = mysqli_query($conn, $sql);
                    if (mysqli_num_rows($result) > 0) 
                    {
                        echo "<h4>Có thể bạn quan tâm</h4>";
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