<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/5/13
 * Time: 14:40
 */

class IndexController extends Controller {

    public function actionIndex() {
        $news = NewsModel::instance()->pageNews(['status'=>1], '*', 'id desc', 1, 10);
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


    public function actionBubble() {
        $arr=array(1,43,54,62,21,66,32,78,36,76,39);
        $length = count($arr);
        for($i = 0; $i< $length-1; $i++) {
            for($k = 0;$k < $length-1; $k++) {
                if($arr[$k] > $arr[$k + 1]) {
                    $tmp = $arr[$k];
                    $arr[$k] = $arr[$k+1];
                    $arr[$k+1] = $tmp;
                }
            }
        }

        var_dump($arr);
    }


    //快速排序
    public function actionFast() {
        $arr=array(1,43,54,62,21,66,32,78,36,76,39);
        $res = $this->fast($arr);
        var_dump($res);exit;
    }

    private function fast($arr = array()) {
        $length = count($arr);
        if($length <= 1) {
            return $arr;
        }
        $middle = $arr[0];
        $left = array();
        $right = array();
        for($i = 1; $i < $length; $i++) {
            if($arr[$i] < $middle) {
                $left[] = $arr[$i];
            }else {
                $right[] = $arr[$i];
            }
        }

        $left = $this->fast($left);
        $right = $this->fast($right);

        return array_merge($left, array($middle), $right);
    }

    //选择排序
    public function actionSelect() {
        $arr=array(1,43,54,62,21,66,32,78,36,76,39);
        $res = $this->select($arr);
        var_dump($res);
    }

    private  function  select($arr) {
        $len = count($arr);
        for($i = 0; $i < $len-1; $i++) {
            $p = $i;
            for($j = $i+1; $j < $len; $j++) {
                if($arr[$p] > $arr[$j]) {
                    $p = $j;
                }
            }

            if($p != $i) {
                $tmp = $arr[$p];
                $arr[$p] = $arr[$i];
                $arr[$i] = $tmp;
            }

        }
        return $arr;
    }


    public function actionTree() {
        $a = new Node("A");
        $b = new Node("B");
        $c = new Node("C");
        $d = new Node("D");
        $e = new Node("E");
        $f = new Node("F");
        $a->left = $b;
        $a->right = $c;
        $b->left = $d;
        $c->left = $e;
        $c->right = $f;
        $this->middleTree($a);
    }



}