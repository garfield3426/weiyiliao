<?php
/**
 * author garfield
 * date:20161026
 * 站点文章模型
 * 
 */
defined('IN_IA') or exit('Access Denied');

function site_article_info($id) {
	$id = intval($id);
	$news = pdo_fetch('SELECT * FROM ' . tablename('site_article') . ' WHERE id = :id', array(':id' => $id));
	if(empty($news)) {
		return error(-1, '文章不存在或已经删除');
	}else {
		pdo_update('site_article',array('click' => $news['click']+1),array('id' => $id));
	}
	return $news;
}

function site_article_hote($limit = 5) {
	$limit = intval($limit);
	$news = pdo_fetchall('SELECT * FROM ' . tablename('site_article') . ' WHERE ishot = 1 ORDER BY displayorder DESC,id DESC LIMIT ' . $limit, array(), 'id');
	return $news;
}

function site_article_limite($pcate=4,$limit = 6){
	$limit = intval($limit);
	$news = pdo_fetchall('SELECT * FROM' . tablename('site_article') . ' WHERE pcate=' . $pcate . ' ORDER BY displayorder DESC,id DESC LIMIT ' . $limit, array(), 'id');
	return $news;
}

function article_news_all($filter = array(), $pindex = 1, $psize = 10) {
	$condition = ' WHERE 1 = 1';
	$params = array();
	if(!empty($filter['title'])) {
		$condition .= ' AND titie LIKE :title';
		$params[':title'] = "%{$filter['title']}%";
	}
	if($filter['cateid'] > 0) {
		$condition .= ' AND cateid = :cateid';
		$params[':cateid'] = $filter['cateid'];
	}
	$limit = ' LIMIT ' . ($pindex - 1) * $psize . ',' . $psize;
	$total = pdo_fetchcolumn('SELECT COUNT(*) FROM ' . tablename('site_article') . $condition, $params);
	$news = pdo_fetchall('SELECT * FROM ' . tablename('site_article') . $condition . ' ORDER BY displayorder DESC ' . $limit, $params, 'id');
	return array('total' => $total, 'news' => $news);
}

