<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/25
 * Time: 9:33
 */

class DesignController extends Controller {

    public function actionIndex() {
        return $this->display('index');
    }

    public function actionList() {
        if(!isset($_COOKIE['admin'])) {
            return $this->error('管理员未登录');
        }
        if($_COOKIE['admin'] != 'admin') {
            return $this->error('管理员未登录');
        }

        return $this->display('list');
    }

    public function actionAdd() {
        if(!isset($_COOKIE['admin'])) {
            return $this->error('管理员未登录');
        }
        if($_COOKIE['admin'] != 'admin') {
            return $this->error('管理员未登录');
        }

        return $this->display('add');
    }

    public function actionUpload() {
        if(!isset($_COOKIE['admin'])) {
            return $this->error('管理员未登录');
        }
        if($_COOKIE['admin'] != 'admin') {
            return $this->error('管理员未登录');
        }


        if ($_FILES["cover"]["error"] > 0) {
            return $this->error('封面上传失败');
        }
        $title = $_REQUEST['title'];
        $content = $_REQUEST['content'];
//        var_dump($_FILES);exit;
//        var_dump($_REQUEST);exit;


        $name = $_COOKIE['admin'].time().'-'.rand(1,999);
        $path = FILE_PATH.'design'.DS.'images'.DS.$name;
        if(file_exists($path)) {
            return $this->error('图片不能重复上传');
        }
        $move = move_uploaded_file($_FILES["cover"]["tmp_name"], $path);
        if(!$move) {
            return $this->error('图片上传失败');
        }

        $params = array();
        $params['title'] = $title;
        $params['cover'] = $path;
        $params['content'] = $content;
        $params['time'] = time();
        $params['status'] = 1;

        $res = CaseModel::instance()->addCase($params);
        if(!$res) {
            return $this->error('添加失败');
        }

        $this->error('添加成功');




    }


}