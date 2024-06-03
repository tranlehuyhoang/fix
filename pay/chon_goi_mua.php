<?php include('../config/connect.php') ?>

<?php
    if( isset($_SESSION['email']) && isset( $_GET['goi_mua'])) {
        $_SESSION['id_goi'] = $_GET['goi_mua'];
        header("location:trang_xac_nhan_goi_mua.php");
    }else{
        header("location:../login-register/trang_dang_ky_dang_nhap.php");
    }

?>