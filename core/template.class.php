<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/16
 * Time: 16:40
 */

class Template{

    public static function _instance() {
        require_once(PLUGIN_PATH.'smarty'.DS.'smarty.class.php');
        return new Smarty();
    }


}


