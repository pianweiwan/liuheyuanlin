<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/6/1
 * Time: 14:50
 */

class Pager{
    private $count;
    private $page;
    private $pagesize;

    public function __construct($count, $page, $pagesize) {
        $this->count = $count;
        $this->page = $page;
        $this->pagesize = $pagesize;
    }

    public function toHtml($class, $method, $params = array()){
        $html = '<br>';
        $pageCount = ceil($this->count/$this->pagesize);
        $html .=     '<span> 共 '.$pageCount.' 页 页次 : '.$this->page.'/'.$pageCount.' 页</span>
            <span class="nolink">首页</span>
            <span class="nolink">上一页</span>';
        $pages = array();
        $j = intval($this->page) - 2;
        $k = intval($this->page) + 2;
        if($j <= 0) {
            $j = 1;
        }
        if($k >= intval($pageCount)) {
            $k = intval($pageCount);
        }
        for($i = $j; $i <= $k; $i ++) {
            $params['page'] = $i;
            if($i != $this->page) {
                $html .= '<a href="'."/$class/$method?".http_build_query($params).'" >'.$i.'</a>';
            }else {
                $html .= '<a style="color: red;" href="'."/$class/$method/?".http_build_query($params).'" >'.$i.'</a>';
            }
        }

        $html .= '<a href="">下一页</a>
            <a href="">尾页</a> 转到';
        $html .= '<SELECT NAME="page">';
        for($x = 1;$x < $pageCount;$x++) {
            $html .= '<option {if $i==$page}selected=selected{/if}value={$i}>{$i}</option>';
        }

        $html .= '</SELECT>';
        return $html;
    }
}