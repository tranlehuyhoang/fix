<?php include('../layout/header.php'); ?>
<?php include('../layout/menu.php'); ?>
<div style="text-align: center; margin: 10px 0; color: #fff;">
    <h1>TRỞ THÀNH THÀNH VIÊN CỦA CHÚNG TÔI</h1>
    <h2>Lợi ích của việc trở thành thành viên</h2>
    <ul>
        <li>Đăng nhập vào bất kỳ lúc nào để cập nhập thông báo phim hay và mới nhất</li>
        <li>Xem phim sắc nét hơn</li>
        <li>Trang phim uy tín</li>
    </ul>
</div>

<div class="container">
    <table style="border: 3px solid rgb(156, 155, 155);">
        <tr>
            <td>
                <h2 class="form-title">Đăng nhập</h2>
            </td>
        </tr>
        <tr>
            <td>
                <h3 style="color:black">
                    <?php
                                if( isset($_GET['thongbaodangnhap']) ){
                                    // nếu có thông báo thì hiện
                                    echo $_GET['thongbaodangnhap'];
                                    
                                }
                            ?>
                </h3>
            </td>
        </tr>
        <form action="./dangnhap.php" method="POST">
            <div class="form-title">
                <tr>
                    <div class="main-user-infor">
                        <td>Email</td>
                        <td><input type="text" placeholder="Nhập email" name="email" required></td>
                </tr>
                <tr>
                    <td>Mật khẩu</td>
                    <td><input type="password" placeholder="Mật khẩu" name="pass" required></td>
                </tr>
                <tr>
                    <td><a href="">Quên mật khẩu?</a></td>
                </tr>
                <tr>
                    <td><input type="submit" name="login"
                            style="font-size: 20px; background-color: rgb(119, 107, 228); color: rgb(22, 21, 21);"
                            value="Đăng nhập" name="ok"></td>
                </tr>
        </form>
    </table>



    <table style="border: 3px solid rgb(124, 123, 123);">
        <tr>
            <td>
                <h2 class="form-title">Đăng ký</h2>
            </td>
        </tr>
        <tr>
            <td>
                <h3 style="color:black">
                    <?php
                                if( isset($_GET['thongbaodangky']) ){
                                    // nếu có thông báo thì hiện
                                    echo $_GET['thongbaodangky'];
                                    
                                }
                            ?>
                </h3>
            </td>
        </tr>
        <form action="dangky.php" method="POST">
            <div class="user-input-box">
                <tr>
                    <td>Email</td>
                    <td><input type="text" placeholder="Họ và tên" name="email" required></td>
                </tr>
                <tr>
                    <td>Họ và tên</td>
                    <td><input type="text" placeholder="Họ và tên" name="ho_ten" required></td>
                </tr>
                <tr>
                    <td>Số điện thoại</td>
                    <td><input type="number" placeholder="Số điện thoại" name="sdt" required></td>
                </tr>
                <tr>
                    <td>Ngày sinh</td>
                    <td><input type="date" placeholder="Ngày sinh" name="ngay_sinh" required></td>
                </tr>
                <tr>
                    <td>Địa chỉ</td>
                    <td><input type="text" placeholder="Địa chỉ" name="dia_chi" required></td>
                </tr>
                <tr>
                    <td>Mật khẩu</td>
                    <td><input type="password" placeholder="Mật khẩu" name="mat_khau" required></td>
                </tr>
                <tr>
                    <td>Nhập lại mật khẩu</td>
                    <td><input type="password" placeholder="Nhập lại mật khẩu" name="mat_khaus" required></td>
                </tr>

                <tr>
                    <td>Đồng ý với điều khoản?<input type="checkbox" required></td>
                </tr>

                <tr>
                    <div class="dangky">
                        <td><input type="submit" name="dang_ky"
                                style="font-size: 20px; background-color: rgb(110, 97, 223); color: rgb(8, 8, 8);"
                                value="Đăng ký" name="ok"></td>
                    </div>
                </tr>
        </form>
    </table>
</div>
<?php include('../layout/footer.php'); ?>