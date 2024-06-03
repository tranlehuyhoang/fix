<?php
session_start();
include('../config/connect.php');
echo $_SESSION['email'];
echo $_GET['goi_mua'];
if (isset($_SESSION['email']) && isset($_GET['goi_mua'])) {
    $s_email = $_SESSION['email'];
    // nếu có session email thì lấy thông tin người dùng
    $get_thong_tin = "SELECT * FROM tai_khoan WHERE email='$s_email'";
    $kq_get_thong_tin = mysqli_query($conn, $get_thong_tin);
    if (mysqli_num_rows($kq_get_thong_tin) > 0) {
        while ($row = mysqli_fetch_assoc($kq_get_thong_tin)) {
            $id = $row["id"];
        }
    } else {
        // loi
        echo "loi";
        die();
    }
    $id_goi = $_GET['goi_mua'];
    $get_thong_tin = "SELECT * FROM goi_thanh_vien WHERE id='$id_goi'";
    $kq_get_thong_tin = mysqli_query($conn, $get_thong_tin);
    if (mysqli_num_rows($kq_get_thong_tin) > 0) {
        while ($row = mysqli_fetch_assoc($kq_get_thong_tin)) {
            $id_goi = $row["id"];
            $so_tien = $row["gia"];;
        }
    } else {
        // loi
        echo "loi";
        die();
    }
    $id_tk = $id;
    $id_goi = $_GET['goi_mua'];
    $ma_donhang = "DH_" . date('YmdHis');
    $them_donhang = "INSERT INTO `don_hang` (`id`, `id_tk`, `id_goi`, `ma_donhang`, `so_tien`, `trang_thai`) VALUES (NULL, $id_tk, $id_goi , '$ma_donhang' , $so_tien , 'chua_thanh_toan')";
    $sql_them_donhang = mysqli_query($conn, $them_donhang);
    $_SESSION['ma_donhang'] = $ma_donhang;
    echo "<script type='text/javascript'>window.location.href='trang_thanh_toan.php';</script>";
} else {
}
