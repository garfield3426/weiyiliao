<?php
$id = intval($_GPC['id']);
load()->model('sitearticle');
$info = site_article_info($id);
$title = $info['title'];
$keywords = $info['title'];
$description = $info['title'];
template('home/showarticle');