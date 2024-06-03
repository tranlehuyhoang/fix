<?php
    include("../config/connect.php");
    unset( $_SESSION["email"]  );
    // xóa session email 
    header("location:../index.php");
?>