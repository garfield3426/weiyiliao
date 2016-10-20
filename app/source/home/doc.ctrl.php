<?php
load()->app('global');
$title = '我的医生';
if(!isset($_GPC['hid'])){
	$hosp_id=5;
}else{
	$hosp_id=$_GPC['hid'];
}

$hosps=global_hosps();
$titles=global_titles();
$dutys=global_dutys();

$docs=pdo_fetchall("select * from ".tablename('bmhospital_classify')." as cl, ". tablename('bmhospital_project')." as pr where cl.id = pr.classify_id and hosp_id=$hosp_id ", array(), '');

template('home/doc');