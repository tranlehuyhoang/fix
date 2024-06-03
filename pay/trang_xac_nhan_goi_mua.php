<?php include('../layout/header.php'); ?>
<?php include('../layout/menu.php'); ?>

<?php
echo $_SESSION['email'];
echo $_GET['goi_mua'];
if (isset($_SESSION['email']) && isset($_GET['goi_mua'])) {
    $s_email = $_SESSION['email'];
    // nếu có session email thì lấy thông tin người dùng
    $get_thong_tin = "SELECT * FROM tai_khoan WHERE email='$s_email'";
    $kq_get_thong_tin = mysqli_query($conn, $get_thong_tin);
    if (mysqli_num_rows($kq_get_thong_tin) > 0) {
        while ($row = mysqli_fetch_assoc($kq_get_thong_tin)) {
            $ho_ten = $row["ho_ten"];
            $sdt = $row["sdt"];
            $ngay_sinh = $row["ngay_sinh"];
            $email = $s_email;
            $dia_chi = $row["dia_chi"];
        }
    } else {
        // nếu không có tài khoản thì ra trang đăng ký
        header("location:../login-register/trang_dang_ky_dang_nhap.php");
    }
    $goi_mua = $_GET['goi_mua'];
    $get_thong_tin = "SELECT * FROM goi_thanh_vien WHERE id='$goi_mua'";
    $kq_get_thong_tin = mysqli_query($conn, $get_thong_tin);
    if (mysqli_num_rows($kq_get_thong_tin) > 0) {
        while ($row = mysqli_fetch_assoc($kq_get_thong_tin)) {
            $goi_mua = $row["id"];
            $ten_goi = $row["ten"];
            $so_tien = $row["gia"];
            $noi_dung = $row["noi_dung"];
        }
    } else {
        // loi
        echo "loi";
        die();
    }
} else {
    // nếu không có session email thì quay lại trang đăng nhập 
    echo "<script type='text/javascript'>window.location.href='../login-register/trang_dang_ky_dang_nhap.php';</script>";
}
?>
<div class="order-item">

    <table>
        <tr>
            <td>Tạm tính</td>

        </tr>
        <tr>
            <td>Tên người chuyển khoản:</td>
            <td><?php echo $ho_ten ?></td>
        </tr>
        <tr>
            <td>Số điện thoại/Zalo: </td>
            <td><?php echo $sdt ?></td>
        </tr>
        <tr>
            <td>Địa chỉ email:</td>
            <td><?php echo $email ?></td>
        </tr>
        <tr>
            <td>Gói dịch vụ: </td>
            <td><?php echo $ten_goi;  ?></td>
        </tr>
        <tr>
            <td>Giá gói: </td>
            <td><?php echo $so_tien;  ?> VND</td>
        </tr>
        <tr>
            <td>Nội dung:</td>
            <td><?php echo $noi_dung;  ?></td>
        </tr>
        <tr>
            <td>Thời gian:</td>
            <td>1 tháng bắt đầu khi thanh toán thành công</td>
        </tr>
        <td>Tổng</td>
        <td><?php echo $so_tien;  ?> VND</td>
        </tr>
        <tr>
            <td>
                <p>Nhấn "Thanh toán" để thanh toán đơn hàng của bạn </p>
            </td>
        </tr>
        <tr>
            <td><a style="color: red;"
                    href="len_don_hang_va_thanh_toan.php?goi_mua=<?php echo $_GET['goi_mua']  ;?>">Thanh toán</a></td>
        </tr>
    </table>
</div>

<?php include('../layout/footer.php'); ?>