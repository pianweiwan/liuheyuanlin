<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/12
 * Time: 17:08
 */

class Model{

    public static $_instance;
    public $_db = null;

    public function __construct()
    {
        $this->_db =
    }

    public static function instance() {
        if(!isset(static::$_instance)) {
            static::$_instance = new
        }
   }

   publi
}