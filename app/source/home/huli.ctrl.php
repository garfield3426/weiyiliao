<?php
defined('IN_IA') or exit('Access Denied');
$title = '我的护理';
load()->model('article');
$result = article_news_all(array('cateid'=>'2'),1,6);
//print_r($result);  // 1
template('home/huli');