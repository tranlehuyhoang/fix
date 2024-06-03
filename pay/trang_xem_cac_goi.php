<?php include('../layout/header.php'); ?>
<?php include('../layout/menu.php'); ?>


<div class="noidungtongquat">
    <h1 style="margin-left: 33%; border: 1px; background-color: #778899; display: inline; padding: auto">Chọn gói dịch
        vụ phù hợp với bạn</h1>
    <div class="TQ">
        <?php
                $get_thong_tin = "SELECT * FROM goi_thanh_vien" ;
                $kq_get_thong_tin = mysqli_query($conn, $get_thong_tin);
                if (mysqli_num_rows($kq_get_thong_tin) > 0){
                    while ($row = mysqli_fetch_assoc($kq_get_thong_tin)) {
            ?>
        <div class="T1">
            <table>
                <tr>
                    <td>
                        <h3 style="color: black; text-align: center"><?php echo $row['ten']; ?></h3>
                    </td>
                </tr>
                <tr>
                    <td>Giá hàng tháng:</td>
                </tr>
                <tr>
                    <td><?php echo $row['gia']; ?>VND</td>
                </tr>
                <tr>
                    <td>Thông tin gói:
                        <?php 
    $noi_dung = $row['noi_dung'];
    if (strlen($noi_dung) > 50) {
        echo substr($noi_dung, 0, 50) . '...';
    } else {
        echo $noi_dung;
    }
    ?>
                    </td>

                </tr>
                <tr>
                    <td><a href="trang_xac_nhan_goi_mua.php?goi_mua=<?php echo $row['id']; ?>">Mua gói</a></td>
                </tr>
            </table>
        </div>
        <?php
                        }
                }else{
                    // nếu không có tài khoản thì ra trang đăng ký
                    header("location:../login-register/trang_dang_ky_dang_nhap.php");
                }
            ?>
    </div>
</div>
<?php include('../layout/footer.php'); ?>