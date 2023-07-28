<?php
require('DB.php');
// DB::select('select * from UserInfo where uid = ? or uid = ?', function($rows) {
//     foreach($rows as $row) {
//         echo "{$row['cname']} <br>";
//     }
// }, [null, 'A01', 'A03', 10, ['asdfafda']]);


$photo = file_get_contents('demo.jpeg');
DB::update('update UserInfo set image = ? where uid = ?', [[$photo], 'A03']);
