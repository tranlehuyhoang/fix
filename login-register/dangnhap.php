<?php
// kết nối csdl 
include('../config/connect.php');
// nếu có form post với name là login thì xử lý
if (isset($_POST['login'])) {

    // lấy các giá trị của form 
    $email = $_POST['email'];
    $mat_khau = md5($_POST['pass']);
    // kiểm tra email và mk 
    $check_tk = "SELECT * FROM tai_khoan WHERE email='$email' AND password='$mat_khau'";
    $check = mysqli_query($conn, $check_tk);
    if (mysqli_num_rows($check) == 1) {
        // trả về tài khoản đã tồn tại
        // tiến hành lưu session tk 

        $_SESSION['email'] = $email;
        // trả về kết quả
        echo "<script type='text/javascript'>window.location.href='../account/account.php';</script>";
    } else {
        // trả về tài khoản hoặc mật khẩu sai
        echo "<script type='text/javascript'>window.location.href='trang_dang_ky_dang_nhap.php?thongbaodangnhap=Sai tài khoản hoặc mật khẩu';</script>";
    }
}
