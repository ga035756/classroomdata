<?php session_start(); ?>
<?php 
    require('DB.php');
    $token = $_COOKIE['token'];
    session_destroy(); 
    setcookie('token', '', -1);
    setcookie('welcome', '', -1);

    DB::call('call logout(?)', [$token]);
    header('location: login.php');
?>