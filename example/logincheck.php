<?php session_start(); ?>
<?php
require('User.php');

$uid = $_REQUEST['uid'];
$pwd = $_REQUEST['pwd'];

$user = new User();
$user->login($uid, $pwd, function($result) {
});

if ($user->nextPage == 'welcome.php') {
    setcookie('token', $user->getToken(), time() + 120);
    setcookie('welcome', $user->nextPage, time() + 120);
}

header("location: {$user->nextPage}");