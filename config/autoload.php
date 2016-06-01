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
    }
    //否则加载组件
    $path = COMPONENTS_PATH.$className.'.php';
    if(file_exists($path)) {
        require_once($path);
    }
    //要么加载model
    $path = MODEL_PATH.$className.'.php';
    if(file_exists($path)) {
        require_once($path);
    }
}

spl_autoload_register('autoload');