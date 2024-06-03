<?php include('../layout/header.php') ?>
<?php include('../layout/menu.php') ?>

<?php
if (isset($_SESSION['email'])) {
    $s_email = $_SESSION['email'];
    echo $_SESSION['email'];
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
        echo "<script type='text/javascript'>window.location.href='../login-register/trang_dang_ky_d ang_nhap.php';</script>";
    }
} else {
    // nếu không có session email thì quay lại trang đăng nhập 
    echo "<script type='text/javascript'>window.location.href='../login-register/trang_dang_ky_dang_nhap.php';</script>";
}

?>

<div id="content">
    <div class="content1">
        <div class="lcontent1">
            <div class="lct1">
                <ul>
                    <li>
                        <a href="#"><button>
                                <h4><i class="fa-sharp fa-solid fa-bars"> Menu</i></h4>
                            </button></a>
                        <ul class="mType">
                            <li>
                                <div class="subMenu">
                                    <ul>
                                        <li><a href="#"><i class="fa-sharp fa-solid fa-user"> Profile</i></a></li></br>
                                        <li><a href="#"><i class="fa-sharp fa-solid fa-gear"> Setting</i></a></li></br>
                                        <li><a href="#"><i class="fa-sharp fa-solid fa-box"> Data
                                                    management</i></a></br>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="lcontent2">
            <div class="lct2">
                <ul>
                    <li>
                        <a><button>
                                <h4><i class="fa-sharp fa-solid fa-user"> Profile</i></h4>
                            </button></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="content2">
        <div class="lcontent3">
            <div class="lct3-1">
                <ul>
                    <li>
                        <a href=""><button>
                                <h4><i class="fa-sharp fa-solid fa-user"> Profile</i></h4>
                            </button></a>
                    </li>
                </ul>
            </div>
            <div class="lct3-2">
                <li>
                    <a href=""><button>
                            <h4><i class="fa-sharp fa-solid fa-gear"> Setting</i></h4>
                        </button></a>
                </li>
                </ul>
            </div>
            <div class="lct3-3">
                <li>
                    <a href=""><button>
                            <h4><i class="fa-sharp fa-solid fa-box"> Data management</i></h4>
                        </button></a>
                </li>
                </ul>
            </div>
        </div>
        <div class="rcontent4">
            <ul><button>
                    <li>Họ Tên:</li>
                    <li>SĐT: </li>
                    <li>Ngày sinh: </li>
                    <li>Email: </li>
                    <li>Địa chỉ: </li>
                </button></ul>
        </div>
    </div>
</div>
<?php include('../layout/footer.php'); ?>