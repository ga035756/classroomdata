<?php session_start(); ?>
<?php
if (isset($_COOKIE['token'])) {
    header('location:' . $_COOKIE['welcome']);
}
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
    <form action="logincheck.php" method="post">
        帳號：<input name="uid"><p></p>
        密碼：<input type="password" name="pwd"><p></p>
        <input type="submit" value="登入">
        <input type="reset">
    </form>
</body>
</html>