<?php include('../layout/header.php') ?>
<?php include('../layout/menu.php') ?>

    <div class="content-category">    
        <div class="trangchu">
            <a href="">TRANG CHỦ</a>
        </div>
        <div class="theoyc">
            <a href="">Theo yêu cầu</a>
        </div>
        <div class="lcontent-category">
            <ul>
                <li><h4>SẮP XẾP THEO</h4></li>
            </ul>
            <ul>
                <li><a href="?xem=moinhat">Mới Nhất</a></li>
                <li><a href="?xem=cunhat">Cũ Nhất</a></li>
                <li><a href="?xem=az">A-Z</a></li>
                <li><a href="?xem=za">Z-A</a></li>                    
                <li><a href="?xem=random">Random</a></li>
            </ul>
            <ul>
                <li><h4>THỂ LOẠI</h4></li>
            </ul>
            <ul>
                <li><a href="?xem=hanhdong">Phim Hành động</a></li>
                <li><a href="?xem=hoathinh">Phim Hoạt Hình</a></li>
                <li><a href="?xem=giadinh">Phim Gia Đình</a></li>
                <li><a href="?xem=phieuluu">Phim Phiêu Lưu</a></li>  
                <li><a href="?xem=hai">Phim Hài</a></li>
            </ul>
        </div>
        <div class="rcontent-category">
            <?php
                // Hàm hiển thị phim với phân trang
                function showMoviesWithPagination($sql, $limit = 12, $currentPage = 1) {
                    global $conn;

                    // Tính tổng số phim
                    $resultTotal = $conn->query($sql);
                    $totalMovies = $resultTotal->num_rows;
                    $totalPages = ceil($totalMovies / $limit);

                    // Tính offset
                    $offset = ($currentPage - 1) * $limit;
                    $sql .= " LIMIT $limit OFFSET $offset";

                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            $id = $row["STT"];
                            $category_poster = $row['poster'];
                            $category_phim = $row['Tenphim'];
                            $movie = $row['Movie'];


                            echo "<div class='movie-item'>";
                                echo "<ul>";
                                    echo "<li><a href='../movie/movie-details.php?id=$id'><img src='$category_poster'><p>$movie</p>$category_phim</a></li>";
                                echo "</ul>";
                            echo "</div>";
                        }

                        // Hiển thị phân trang
                        echo "<div class='pagination'>";
                        for ($i = 1; $i <= $totalPages; $i++) {
                            if (isset($_GET['xem'])) {
                                echo "<a href='?xem={$_GET['xem']}&page=$i'>$i</a>";
                            } else {
                                // Xử lý trường hợp 'xem' không được đặt
                                echo "<a href='?page=$i'>$i</a>"; // Sử dụng liên kết trang mặc định
                            }
                        }
                        echo "</div>";
                    } else {
                        echo "<div class='no-movies-found'>Không tìm thấy phim nào.</div>";
                    }
                }
                // Lấy trang hiện tại
                $currentPage = isset($_GET['page']) ? $_GET['page'] : 1;

                // Xử lý hiển thị phim
                if (isset($_GET['xem'])) {
                    $temp = $_GET['xem'];
                } else {
                    $temp = '';
                    if(isset($_GET['search']) && !empty($_GET['search'])){
                        $searchInput = $_GET['search'];
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Tenphim LIKE '%$searchInput%' OR Movie LIKE '%$searchInput%'", 12, $currentPage);
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content", 12, $currentPage);
                    }
                }

                switch ($temp) {
                    case 'tatca':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content", 12, $currentPage);
                        break;
                    case 'moinhat':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content ORDER BY Namsx DESC", 12, $currentPage);
                        break;
                    case 'cunhat':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT, STT FROM Content ORDER BY Namsx ASC", 12, $currentPage);
                        break;
                    case 'az':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, Theloai, STT FROM Content ORDER BY Theloai ASC", 12, $currentPage);
                        break;
                    case 'za':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, Theloai, STT FROM Content ORDER BY Theloai DESC", 12, $currentPage);
                        break;
                    case 'random':
                        showMoviesWithPagination("SELECT * FROM Content ORDER BY RAND()", 12, $currentPage);
                        break;
                    case 'hanhdong':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Hành động%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;
                    case 'hoathinh':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Hoạt hình%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;
                    case 'giadinh':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Lãng mạn%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;
                    case 'vientuong':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Khoa học viễn tưởng%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;
                    case 'hai':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Hài%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;
                    case 'kinhdi':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Kinh dị%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;
                    case 'langman':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Lãng mạn%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;
                    case 'giadinh':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Gia Đình%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;
                    case 'chientranh':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Chiến tranh%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;
                    case 'cotrang':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Vũ trụ%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;
                    case 'phieuluu':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Phiêu lưu%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break; 
                    case 'hinhsu':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Hình sự%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;  
                    case 'khoahoc':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Khoa học%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break; 
                    case 'chinhkich':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Chính kịch%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;  
                    case 'tamly':
                        showMoviesWithPagination("SELECT Tenphim, Movie, poster, STT FROM Content WHERE Theloai LIKE '%Tâm lý%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break;      
                    case 'tam':
                        showMoviesWithPagination("SELECT * FROM phim WHERE tenphim LIKE '%$searchInput%' ORDER BY Tenphim ASC", 12, $currentPage);
                        break; 
                }
            ?>
        </div>
    </div>

<?php include('../layout/footer.php') ?>