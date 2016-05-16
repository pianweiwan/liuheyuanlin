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
        $class = lcfirst(rtrim($class, 'Controller'));
        $smarty->setTemplateDir(VIEW_PATH.$class);
        $smarty->display($tpl.'.tpl');
    }

}
