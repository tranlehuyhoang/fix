<?php include('../config/connect.php'); ?>
<?php
if (isset($_GET['id_tk'])) {
    $id_tk = $_GET['id_tk'];
    $hom_nay = date('Y-m-d');
    $check_tk = "SELECT * FROM don_hang WHERE id_tk='$id_tk' AND ngay_ketthuc > '$hom_nay' order by id_goi desc limit 1";
    $check = mysqli_query($conn, $check_tk);
    if (mysqli_num_rows($check) == 1) {
        while ($row = mysqli_fetch_assoc($check)) {
            $id_goi = $row['id_goi'];
            $cap_nhat_tk = "UPDATE `tai_khoan` SET `id_goi_thanh_vien`= $id_goi WHERE id = '$id_tk'";
            $sql_cap_nhat_tk = mysqli_query($conn, $cap_nhat_tk);
        }
    } else {
        $cap_nhat_tk = "UPDATE `tai_khoan` SET `id_goi_thanh_vien`= NULL WHERE id = '$id_tk'";
        $sql_cap_nhat_tk = mysqli_query($conn, $cap_nhat_tk);
    }
} else {
}


?>