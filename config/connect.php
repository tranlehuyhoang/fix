<?php

$server = "localhost";
$username = "root";
$password = "";
$database = "data";

$conn = mysqli_connect($server, $username, $password, $database, 3309) or die("Không thể kết nối Database");
mysqli_select_db($conn, "data") or die("Chưa có SQL");
mysqli_query($conn, "SET NAMES 'utf8'");
