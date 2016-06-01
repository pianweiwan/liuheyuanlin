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


    public function actionList($params = array()) {
        $page = $this->_R('page');
        $pagesize = $this->_R('pagesize');

        $res = NewsModel::instance()->getNews();
        $data = array();
        $data['page'] = $page;
        $data['pagesize'] = $pagesize;
        $data['news'] = $res;
        return $this->display('list', $data);


    }

    public function actionPublish() {
        $params = array();
        $params['title'] = $this->_R('title');
        $params['content'] = $this->_R('content');
        $res = NewsModel::instance()->addNews($params);
        if(!$res) {
            return $this->json(400,'发布失败');
        }
        return $this->json(200, '发布成功');
    }

    public function actionDetail() {
        !$this->_R('id') && die('error');
        $id = $this->_R('id');
        $news = NewsModel::instance()->getOne(['id'=>$id]);
        if(empty($news)) {
            die('error');
        }
        $data = array();
        $data['data'] = $news;
        return $this->display('detail', $data);
    }

    public function actionDelete() {
        !$this->_R('id') && die('error');
        $id = $this->_R('id');
        $params = array();
        $params['id'] = $id;
        $res = NewsModel::instance()->deleteNews($params);
        if(!$res) {
            return $this->error('删除失败', '/news/list');
        }
        return $this->error('删除成功', '/news/list');
    }

    public function actionFront() {
        $page = isset($_REQUEST['page']) ? intval($_REQUEST['page']) : 1;
        $pagesize = isset($_REQUEST['pagesize']) ? intval($_REQUEST['pagesize']) : 10;
        $keyword = isset($_REQUEST['keyword']) ? trim($_REQUEST['keyword']) : '';

        $params = array();
        if($keyword) {
            $params['keyword'] = $keyword;
        }
        $news = NewsModel::instance()->pageNews($params, '*', 'id desc', $page, $pagesize);
        $count = NewsModel::instance()->count($params);
        $data = array();
        $data['news'] = $news;
        $data['keywords'] = $keyword;
        $data['page'] = $page;
        $pager = new pager($count, $page, $pagesize);
        $data['pager'] = $pager->toHtml('news', 'front', ['keyword'=>$keyword]);
        $data['pagesize'] = $pagesize;
        return $this->display('front', $data);
    }

    public function actionOne() {
        $id = isset($_REQUEST['id']) ? intval($_REQUEST['id']) : null;
        if(!$id) {
            return $this->error('参数错误');
        }
        $news = NewsModel::instance()->getOne(['id'=>$id,'status'=>1]);
        if(empty($news)) {
            return $this->error('未找到该新闻');
        }

        $data = array();
        $data['news'] = $news;
        return $this->display('one',$data);
        
    }






}