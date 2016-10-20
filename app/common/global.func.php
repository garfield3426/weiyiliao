<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');

function global_hosps() {
	$hosps=array(5=>"昆明普瑞眼科医院",1=>"兰州普瑞眼科医院",2=>"成都普瑞眼科医院",3=>"合肥普瑞眼科医院",4=>"郑州普瑞眼科医院",6=>"南昌普瑞眼科医院",7=>"上海普瑞眼科医院",8=>"重庆普瑞眼科医院",9=>"武汉普瑞眼科医院",10=>"哈尔滨普瑞眼科医院",11=>"北京华德医院",12=>"山东亮康眼科医院",13=>"西安普瑞眼科医院",14=>"乌鲁木齐普瑞眼科医院"
	);
	return $hosps;
}

function global_titles() {
	$titles=array(
		1=>"主任医师",2=>"副主任医师",3=>"主治医师",4=>"住院医师"
	);
	return $titles;
}

function global_dutys() {
	$dutys=array(
		1=>"院长",2=>"副院长",3=>"屈光专科主任",4=>"白内障专科主任",5=>"眼底病专科主任"
	);
	return $dutys;
}