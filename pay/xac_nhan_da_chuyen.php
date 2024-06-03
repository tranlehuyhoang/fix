<?php

include('../config/connect.php');
?>
<?php
if (isset($_GET['ma_donhang'])) {
    $ma_donhang = $_GET['ma_donhang'];
    $cap_nhat_trangthai = "UPDATE `don_hang` SET `trang_thai`='da_chuyen_khoan' WHERE ma_donhang = '$ma_donhang'";
    $sql_cap_nhat_trangthai = mysqli_query($conn, $cap_nhat_trangthai);
    unset($_SESSION['ma_donhang']);
    unset($_SESSION['id_goi']);
    header("location:../index.php");
} else {
    header("location:../index.php");
}


?>