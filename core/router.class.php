<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/12
 * Time: 19:28
 */

class Router{

    private $class = null;
    private $method = null;


    public function run() {
        $this->parse();
        $this->instance();
    }

    public function instance() {
        if(is_null($this->class) || is_null($this->method)) {
            exit('访问错误');
        }
        $class = ucfirst($this->class).'Controller';
        $file = CONTROLLER_PATH.$class.'.php';
        if(!file_exists($file)) {
            exit('访问错误');
        }

        require_once($file);
        if(!class_exists($class)) {
            exit('访问错误');
        }

        $ins = new $class;

        $method = 'action'.ucfirst($this->method);
        if(!method_exists($ins, $method)) {
            exit('访问错误');
        }
        $reflection = new ReflectionMethod($class, $method);
        $reflection->invoke(new $class);
    }


    //参数校验规则
    public function parse() {
        $uri = trim($_SERVER['REQUEST_URI'],'/');
        $arr = array();
        if(empty($uri)) {
            $uri = param('param', 'default_route');
        }
        $arr = explode('/', $uri);

        $class = $arr[0];
        $method = $arr[1];

        $this->class = $class;
        $this->method = $method;
    }


}