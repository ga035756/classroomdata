<?php
require('DB.php');

class User {
    private $token = null;
    public $nextPage = null;

    function login($uid, $pwd, $complete) {
        DB::select('call login(?, ?)', function($rows) {
            $this->token = $rows[0]['token'];
            $this->nextPage = $rows[0]['result'];
        }, [$uid, $pwd]);

        $complete($this->nextPage);
    }

    function getToken() {
        return $this->token;
    }
}

