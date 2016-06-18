<?php
/**
 * Created by PhpStorm.
 * User: ziqingli
 * Date: 2016/6/16
 * Time: 11:07
 */

class Node {
    public $node;
    public $left;
    public $right;

    public function __construct($value)
    {
        $this->node = $value;
    }

}