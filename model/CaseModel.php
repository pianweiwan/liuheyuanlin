<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/6/12
 * Time: 16:58
 */

class CaseModel extends Model{
    public $_table = 'design';


    public function addCase($params) {
        if(!isset($params['title'])) {
            return false;
        }
        if(!isset($params['cover'])) {
            return false;
        }
        if(!isset($params['content'])) {
            return false;
        }
        if(!isset($params['status'])) {
            return false;
        }
        if(!isset($params['time'])){
            $params['time'] = time();
        }

        $res = $this->insert($params);
        return $res;
    }

}
