<?php session_start(); ?>
<?php
require('DB.php');
if (! $_COOKIE['token']) {
    header('location: login.php');
    die();
}

$token = $_COOKIE['token'];
$cname = null;
$image = null;
$src = null;

DB::select('select * from UserInfo where token = ?', function($rows) {
    global $cname, $image, $src;
    $cname = $rows[0]['cname'];
    $image = $rows[0]['image'];
    if ($image == null) {
        $image = file_get_contents('https://img.freepik.com/free-vector/head-profile-with-gears_98292-387.jpg');
    }    
    $mime_type = (new finfo(FILEINFO_MIME_TYPE))->buffer($image);
    $image_base64 = base64_encode($image);
    $src = "data:{$mime_type};base64,{$image_base64}";    
}, [$token]);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div><button onclick="location.href='logout.php'">登出</button></div>
    <h1><?= $cname ?> 登入成功</h1>
    <img src="<?= $src ?>" width="200">
</body>
</html>