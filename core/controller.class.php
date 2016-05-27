<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/12
 * Time: 17:08
 */

class Controller{
    public function display($tpl = '', $data = array()) {
        $smarty = Template::_instance();
        foreach($data as $key=>$value){
            $smarty->assign($key, $value);
        }
        $class = get_called_class();
        $class =  str_replace('Controller', '',$class);

        $smarty->setTemplateDir(VIEW_PATH.$class);
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

}
