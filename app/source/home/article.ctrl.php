<?php
$id = intval($_GPC['id']);
load()->model('article');
$info = article_news_info($id);
$title = $info['title'];
//print_r($info);
template('home/showarticle');