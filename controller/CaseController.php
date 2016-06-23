<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/25
 * Time: 9:33
 */

class CaseController extends Controller {

        //前台显示页面
    public function actionFront() {
        $cases = CaseModel::instance()->page(array('status'=>1), '*', 'id desc', 1, 10);
        $data = array();
        $data['cases'] = $cases;
        return $this->display('index', $data);
    }


    public function actionIndex() {
        $cases = CaseModel::instance()->page(array('status'=>1), '*', 'id desc', 1, 10);
        $data = array();
        $data['cases'] = $cases;
        return $this->display('index', $data);
        return $this->display('index');
    }

    public function actionDetail() {
        !$this->_R('id') && die('error');
        $id = $this->_R('id');
        $case = CaseModel::instance()->getOne(['id'=>$id]);
        if(empty($case)) {
            die('error');
        }
        $data = array();
        $data['data'] = $case;
        return $this->display('detail', $data);
    }

    public function actionList() {
        if(!isset($_COOKIE['admin'])) {
            return $this->error('管理员未登录');
        }
        if($_COOKIE['admin'] != 'admin') {
            return $this->error('管理员未登录');
        }
        $page = isset($_REQUEST['page']) ? intval($_REQUEST['pagesize']) : 1;
        $page = isset($_REQUEST['pagesize']) ? intval($_REQUEST['pagesize']) : 10;
        $res = CaseModel::instance()->page(array('status'=>1),$select = '*', $order = '', $page = 1, $pagesize = 10);
//        var_dump($res);exit;
        $data = array();
        $data['data'] = $res;
        $date['page'] = $page;
        $date['pagesize'] = $pagesize;
        return $this->display('list',$data);
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
        $suffix = $_FILES["cover"]["name"];
        $temp = explode('.',$suffix);
        $suffix = $temp[1];
        $name = $_COOKIE['admin'].time().'-'.rand(1,999);
        $path = DS.'static'.DS.'images'.DS.'case'.DS.$name.'.'.$suffix;
        $realPath = STATIC_PATH.'images'.DS.'case'.DS.$name.'.'.$suffix;
        if(file_exists($realPath)) {
            return $this->error('图片不能重复上传');
        }
        $move = move_uploaded_file($_FILES["cover"]["tmp_name"], $realPath);
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