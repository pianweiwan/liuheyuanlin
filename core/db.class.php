<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/26
 * Time: 9:35
 */

class Db{

    public $_db = null;

    public static $_instance = null;

    public static $_sql = '';

    private $charset = 'utf8';


    public function instance($dsn = '', $username = '', $password = '') {
        if(!isset(self::$_instance)) {
            if(!$dsn) {
                $dsn =  param('db', 'dsn');
                $username = param('db', 'username');
                $password = param('db', 'password');
            }
            $this->_db = new PDO($dsn, $username, $password);
            $this->_db->exec('set names '.$this->charset);
            self::$_instance = new Db();
        }
        return self::$_instance;
    }

    public function select($table,$params = array, $)


}