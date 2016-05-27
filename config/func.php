<?php
/**
* Created by PhpStorm.
 * User: ziqingli
* Date: 2016/5/11
* Time: 11:35
*/

function param($file, $config = null) {
    $path  = __DIR__.DS.$file.'.php';
    if(file_exists($path)) {
        $arr = require($path);
        if(!is_null($config)) {
            $arr = isset($arr[$config]) ? $arr[$config] : array();
        }
    }else {
        $arr = array();
    }
    return $arr;
}

function import($file){
    $path = __DIR__.DS.$file.'.php';
    if(file_exists($path)) {
        require_once($path);
    }
}