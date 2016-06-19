<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/13
 * Time: 14:40
 */

class IndexController extends Controller {

    public function actionIndex() {
        $news = NewsModel::instance()->pageNews(array('status'=>1), '*', 'id desc', 1, 10);
        $data = array();
        $data['news'] = $news;
        return $this->display('index', $data);
    }


    public function actionProfile(){
        header("Content-type: application/pdf");
//        echo FILE_PATH.'pdf/1.pdf';exit;
        readfile(FILE_PATH.'pdf/1.pdf');
        readfile(FILE_PATH.'pdf/2.pdf');
//        return $this->display('profile');
    }

}