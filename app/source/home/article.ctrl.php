<?php
$id = intval($_GPC['id']);
load()->model('article');
$info = article_news_info($id);
$title = $info['title'];
$keywords = $info['title'];
$description = $info['title'];
template('home/showarticle');