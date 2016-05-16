<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/12
 * Time: 17:13
 */

function autoload($className) {
    //首先加载内核
    $path = CORE_PATH.strtolower($className).'.class.php';
    if(file_exists($path)) {
        require_once($path);
    }else{
        //否则加载组件
        $path = COMPONENTS_PATH.strtolower($className).'.php';
        if(file_exists($path)) {
            require_once($path);
        }
    }
}

spl_autoload_register('autoload');