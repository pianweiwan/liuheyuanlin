<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/12
 * Time: 17:08
 */

abstract class  Model{

    public static $_instance;

    public $_db = null;


    public static function instance() {
        if(!isset(static::$_instance)) {
            $class = get_called_class();
            $db = new $class;
            $db->_db = new Db();
            static::$_instance = $db;
        }
        return static::$_instance;
    }

    public function getOne($param) {
        $res = $this->row($param);
        $res = $res[0];
        return $res;
    }

    public function insert($params = array()) {
        $table = $this->_table;
        $sql = ' insert into '. $table;
        $keys = array_keys($params);
        $keysTemp = array();
        foreach($keys as $each) {
            $keysTemp[] = ':'.$each;
        }
        $bindParams = array();
        foreach($params as $key=>$value) {
            $bindParams[":$key"] = $value;
        }
        $sql .= '('.join(',', $keys).')';
        $sql .= ' values('.join(',', $keysTemp).')';
        return $this->_db->insert($sql, $bindParams);

    }


    public function page($params = array(), $select = '*', $order = '', $page = -1, $pagesize = 10) {
        $table = $this->_table;
        $sql = 'select '.$select. ' from '.$table.' where 1=1 ';
        $bindParams = array();
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
        return $this->_db->select($sql, $params);
    }

    public function row($params = array(), $select = '*', $order = '') {
        $table = $this->_table;
        $sql = 'select '.$select. ' from '.$table.' where 1=1 ';
        $bindParams = array();
        foreach($params as $key=>$value) {
            $sql .= " and $key=:$key";
            $bindParams[":$key"] = $value;
        }

        if($order) {
            $sql .= ' order by '.$order;
        }

        $sql .= ' limit 1';
        return $this->_db->select($sql, $params);
    }

    public function count($params) {
        $table = $this->_table;
        $sql = 'select count(1) as count from '.$table.' where 1=1 ';
        $bindParams = array();
        foreach($params as $key=>$value) {
            $sql .= " and $key=:$key";
            $bindParams[":$key"] = $value;
        }
        return $this->_db->select($sql, $params)[0]['count'];
    }

}