<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/25
 * Time: 13:48
 */

class NewsController extends Controller{
    public function actionUpload() {
        $this->checkLogin();
        return $this->display('upload');
    }

    public function actionPublish() {
        $this->_R('title') || $this->jsonError('标题不能为空');
        $this->_R('content') || $this->jsonError('内容不能为空');
        $params = array();
        $params['title'] = $this->_R('title');
        $params['content'] = $this->_R('content');
        if(!$res) {
            return $this->jsonError('发布失败');
        }
        return $this->jsonSuccess();
    }




}