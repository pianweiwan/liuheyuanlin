<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/12
 * Time: 17:08
 */

class Controller{
    public function display($tpl = '', $data = array(), $viewPath = '') {
        $smarty = Template::_instance();
        foreach($data as $key=>$value){
            $smarty->assign($key, $value);
        }

        if($viewPath) {
            $smarty->setTemplateDir($viewPath);
        }else {
            $class = get_called_class();
            $class =  str_replace('Controller', '',$class);
            $smarty->setTemplateDir(VIEW_PATH.$class);
        }
        $smarty->display($tpl.'.tpl');
    }

    public function checkLogin() {
        if(!isset($_COOKIE['admin'])) {
            die('未登录');
        }
        if($_COOKIE['admin'] != 'admin') {
            die('未登录');
        }
    }

    public function _R($key, $default = null) {
        if(!isset($_REQUEST[$key])) {
            return $default;
        }
        return $_REQUEST[$key];
    }

    public function json($code, $message = '', $data = array()) {
        $info = array();
        $info['code'] = $code;
        $info['message'] = $message;
        $info['data'] = $data;
        echo json_encode($info);
        exit;
    }

    /**
     * 错误提示
     *
     * @param string $msg 提示信息
     * @param string $url 跳转URL
     * @param integer $delay 跳转URL延时
     *
     */
    public function error($msg, $url = '', $delay = 3){
        $params = array();
        $params['msg'] = $msg;
        $params['delay'] = $delay*1000;
        $params['url'] = $url;
        return $this->display('error', $params, VIEW_PATH.'layout/');
    }

}
