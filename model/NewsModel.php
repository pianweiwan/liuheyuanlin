<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/27
 * Time: 16:41
 */

class NewsModel extends Model {
    public $_table = 'news';

    public function getNews($params = array()) {
        $res = $this->page($params);
        return $res;
    }

    public function addNews($params) {
        if(!isset($params['time'])) {
            $params['time'] = time();
        }
        if(!isset($params['status'])) {
            $params['status'] = 1;
        }
        $res = $this->insert($params);
        return $res;
    }



    public function deleteNews($params) {
        $res = $this->delete($params);
        return $res;
    }

    public function pageNews($params, $select = '*', $order = '', $page = -1, $pagesize = 10) {
        $sql = 'select '.$select. ' from '.$this->_table.' where 1=1 ';
        $bindParams = array();
        if(isset($params['keyword'])) {
            $sql .= ' and title like :title';
            $bindParams[':title'] = $params['keyword'];
            unset($params['keyword']);
        }
        foreach($params as $key=>$value) {
            $sql .= " and $key=:$key";
            $bindParams[":$key"] = $value;
        }

        if($order) {
            $sql .= ' order by '.$order;
        }

        if($page > 0) {
            $sql .= ' limit '.($page-1)*$pagesize.','.$pagesize;
        }
        return $this->_db->select($sql, $bindParams);
    }




}