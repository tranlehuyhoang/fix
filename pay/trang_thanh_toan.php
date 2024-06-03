<?php include('../layout/header.php'); ?>
<?php include('../layout/menu.php'); ?>

        <?php  
                if( isset($_SESSION['ma_donhang'])){
                    $ma_donhang = $_SESSION['ma_donhang'];
                    $get_thong_tin = "SELECT * FROM don_hang WHERE ma_donhang='$ma_donhang'" ;
                    $kq_get_thong_tin = mysqli_query($conn, $get_thong_tin);
                    if (mysqli_num_rows($kq_get_thong_tin) > 0){
                        while ($row = mysqli_fetch_assoc($kq_get_thong_tin)) {
                            $ma_donhang = $row["ma_donhang"];
                            $so_tien = $row["so_tien"];
                        }
                    }else{
                        header("location:trang_xem_cac_goi.php");
                    }
                }else{
                    header("location:trang_xem_cac_goi.php");
                }
        ?>
            <div style="margin-left: 300px; color: black" class="ck">
                <table>
                    <tr>
                        <td style= "background-color: #1d849e; color: white;display: inline-block; padding: 5px;"><h3>Mã QR chuyển khoản</h3></td>
                    </tr>
                    <tr>
                        <td> <img style="display: flex;
                                            justify-content: space-between;
                                            padding: 12 50px;
                                            height: 150px;
                                            width: 220px;
                                            margin-left: 100px;" src="./img/QR.jfif" alt=""> </td>
                    </tr>
                    <tr>
                        <td>Thông tin chuyển khoản</td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid black; background-color: #F5DEB3; padding: 5px;">Vui lòng chuyển đúng nội dung để chúng tôi xác nhận thanh toán </td>
                    </tr>
                    <tr>
                        <td>Tên tài khoản: Nguyễn Phạm Mai Quỳnh</td>
                    </tr>
                    <tr>
                        <td>Số tài khoản: 9358985998</td>
                    </tr>
                    <tr>
                        <td>Ngân hàng: VIETCOMBANK</td>
                    </tr>
                    <tr>
                        <td>Số tiền: <?php echo $so_tien; ?> VND</td>
                    </tr>
                    <tr>
                        <td>Nội dung: <?php echo $ma_donhang; ?></td>
                    </tr>
                    <tr>
                    <td><a href="xac_nhan_da_chuyen.php?ma_donhang=<?php echo $ma_donhang; ?>">Xác nhận</td>
                    </tr>
                </table>
            </div>
<?php include('../layout/footer.php'); ?>
                