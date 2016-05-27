<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/25
 * Time: 11:45
 */

class LoginController extends Controller {
    public function actionIndex() {
        if(isset($_REQUEST['username'])) {
            return $this->actionLogin();
        }
        return $this->display('index');
    }

    public function actionLogin() {
        $email = $_REQUEST['email'];
        $password = $_REQUEST['password'];
        if(md5($password)=='be223d6e1280cfa60273f661cee27eab') {
            if($email == 'admin') {
                setcookie('admin','admin',-1,'/');
            }
        }
        var_dump($_COOKIE);exit;
    }
}