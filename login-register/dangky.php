<?php 
    // kết nối csdl 
    include('../config/connect.php');
    // nếu có form post với name là dang_ky thì xử lý
    if (isset($_POST['dang_ky'])){

        // lấy các giá trị của form 
        $email = $_POST['email'];
        $ho_ten = $_POST['ho_ten'];
        $sdt = $_POST['sdt'];
        $ngay_sinh = $_POST['ngay_sinh'];
        $dia_chi = $_POST['dia_chi'];
        $mat_khau = md5($_POST['mat_khau']);
        $mat_khaus = md5($_POST['mat_khaus']);
        
        // các bước kiểm tra
        // kiểm tả 2 mật khẩu có đúng hay không 
        if( $mat_khau != $mat_khaus ) {
            // trả về thông tin 2 mật khẩu nhập vào không khớp
            header("location:trang_dang_ky_dang_nhap.php?thongbaodangky=Mật khẩu không khớp");
        }
        // kiểm tra email đã tồn tại chưa 
        $check_email = "SELECT * FROM tai_khoan WHERE email='$email'";
        $check = mysqli_query($conn, $check_email);
        if (mysqli_num_rows($check) > 0){
            // trả về tài khoản đã tồn tại
            header("location:trang_dang_ky_dang_nhap.php?thongbaodangky=Tài khoản đã tồn tại");
        }
        
        $tao_tk = "INSERT INTO `tai_khoan` (`id`, `email`, `password`, `ho_ten`, `sdt`, `ngay_sinh`, `dia_chi`, `quyen_han`) VALUES (NULL, '$email', '$mat_khau', '$ho_ten', '$sdt', '$ngay_sinh', '$dia_chi', 'member')";
        $sql_tao_tk = mysqli_query($conn, $tao_tk);
        // trả lại đăng kí thành công 
        header("location:trang_dang_ky_dang_nhap.php?thongbaodangky=Tạo tài khoản thành công");
    }



?>