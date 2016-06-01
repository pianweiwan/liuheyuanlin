<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/26
 * Time: 9:35
 */

class Db{

    public $_db = null;

    public static $_sql = '';

    private $charset = 'utf8';

    public function __construct($dsn = '', $username = '', $password = '') {
            if(!$dsn) {
                $dsn =  param('db', 'dsn');
                $username = param('db', 'username');
                $password = param('db', 'password');
            }
            $this->_db = new PDO($dsn, $username, $password);
            $this->_db->exec('set names '.$this->charset);
    }

    public function select($sql = '', $params = array(), $order = '') {
        $res = $this->_db->prepare($sql);
        $res->execute($params);
        $s = $res->fetchAll(PDO::FETCH_ASSOC);
        return $s;
    }


    public function insert( $sql, $params) {
        $res = $this->_db->prepare($sql);
        $res->execute($params);
        $s = $this->_db->lastInsertId();
        return $s;
    }

    public function delete($sql, $params = array()) {
        $res = $this->_db->prepare($sql);
        $res->execute($params);
        $s = $res->rowCount();
        return $s;
    }















}