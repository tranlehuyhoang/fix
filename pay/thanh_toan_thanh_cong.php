<?php include('../config/connect.php'); ?>
<?php
    if( isset( $_GET['ma_donhang'])){
        $ma_donhang = $_GET['ma_donhang'];
        $ngay_batdau = date('Y-m-d');
        $ngay_ketthuc = date('Y-m-d', strtotime(date('Y-m-d')) + ( 30 * 24 * 60 * 60 ));
        // echo $ngay_batdau;
        // die();
        $cap_nhat_trangthai = "UPDATE `don_hang` SET `trang_thai`='thanh_toan_thanh_cong',`ngay_batdau`= '$ngay_batdau',`ngay_ketthuc`= '$ngay_ketthuc' WHERE ma_donhang = '$ma_donhang'";
        $sql_cap_nhat_trangthai = mysqli_query($conn, $cap_nhat_trangthai);
        
        // header("location:index.php");
    }else{
        // header("location:index.php");
    }


?>