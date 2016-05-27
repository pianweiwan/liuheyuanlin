<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/11
 * Time: 10:41
 */

header("Content-Type: text/html; charset=UTF-8");
define('DS', DIRECTORY_SEPARATOR);
define('ROOT_PATH', __DIR__.DS);
$uri = $_SERVER['REQUEST_URI'];
ini_set('date.timezone','Asia/Shanghai');
require_once('config/func.php');
//引入配置
import('config');
//自动加载类
import('autoload');

$router =  new Router();
$router->run();





