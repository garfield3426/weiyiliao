<?php
defined('IN_IA') or exit('Access Denied');
load()->func('doc');
$title = '我的医生';
$keywords='云南昆明眼科医院，近视眼手术，激光治近视，飞秒激光手术，昆明全飞秒激光手术';
$description='云南全飞秒激光治近视，优选昆明普瑞眼科医院，云南昆明全力三级眼科医院，电话087163111756。我院安全开展屈光手术近万余例，长期致力于近视眼手术治疗、高度近视矫正等眼科医疗服务。普瑞眼科，昆明较好的眼科医院，是您值得信赖的眼科医院！';
$hosp_id=!isset($_GPC['hid'])?5:intval($_GPC['hid']);
$hosps=global_hosps();
$titles=global_titles();
$dutys=global_dutys();

$docs=pdo_fetchall("select * from ".tablename('bmhospital_classify')." as cl, ". tablename('bmhospital_project')." as pr where cl.id = pr.classify_id and hosp_id=$hosp_id ", array(), '');

template('home/doc');