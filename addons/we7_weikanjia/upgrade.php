<?php







/*
if(!pdo_fieldexists('mon_wkj_firend', 'kh_price')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj_firend')." ADD `kh_price` float(10,2) ;");
}





if(!pdo_fieldexists('mon_wkj', 'p_url')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `p_url` varchar(500) ;");
}

if(!pdo_fieldexists('mon_wkj', 'copyright_url')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `copyright_url` varchar(500) ;");
}


if(!pdo_fieldexists('mon_wkj', 'hot_tel')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `hot_tel` varchar(50) ;");
}


if(!pdo_fieldexists('mon_wkj', 'p_intro')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `p_intro` varchar(1000) ;");
}




if(!pdo_fieldexists('mon_wkj', 'kj_dialog_tip')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `kj_dialog_tip` varchar(1000) ;");
}



if(!pdo_fieldexists('mon_wkj', 'rank_tip')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `rank_tip` varchar(1000) ;");
}



if(!pdo_fieldexists('mon_wkj', 'u_fist_tip')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `u_fist_tip` varchar(1000) ;");
}



if(!pdo_fieldexists('mon_wkj', 'u_already_tip')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `u_already_tip` varchar(1000) ;");
}



if(!pdo_fieldexists('mon_wkj', 'fk_fist_tip')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `fk_fist_tip` varchar(1000) ;");
}


if(!pdo_fieldexists('mon_wkj', 'fk_already_tip')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `fk_already_tip` varchar(1000) ;");
}

if(!pdo_fieldexists('mon_wkj', 'kj_rule')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `kj_rule` varchar(1000) ;");
}


if(!pdo_fieldexists('mon_wkj', 'yf_price')) {
	pdo_query("ALTER TABLE ".tablename('mon_wkj')." ADD `yf_price` float(10,2) default 0 ;");
}

*/
if(!pdo_fieldexists('we7_weikanjia_firend', 'kname')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia_firend')." ADD `kname` int(3) ;");
}



if(!pdo_fieldexists('we7_weikanjia_firend', 'ac')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia_firend')." ADD `ac` varchar(50) ;");
}


if(!pdo_fieldexists('we7_weikanjia', 'kj_intro')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `kj_intro` text ;");
}

if(!pdo_fieldexists('we7_weikanjia_order', 'outno')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia_order')." ADD `outno` varchar(200) ;");
}

if(!pdo_fieldexists('we7_weikanjia', 'kj_intro')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `kj_intro` text ;");
}


if(!pdo_fieldexists('we7_weikanjia', 'kj_follow_enable')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `kj_follow_enable` int(1) ;");
}

if(!pdo_fieldexists('we7_weikanjia', 'join_follow_enable')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `join_follow_enable` int(1) ;");
}

if(!pdo_fieldexists('we7_weikanjia', 'follow_dlg_tip')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `follow_dlg_tip` varchar(500) ;");
}

if(!pdo_fieldexists('we7_weikanjia', 'follow_btn_name')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `follow_btn_name` varchar(20) ;");
}


if(!pdo_fieldexists('we7_weikanjia', 'share_bg')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `share_bg` varchar(300) ;");
}

if(!pdo_fieldexists('we7_weikanjia', 'rank_num')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `rank_num` int(10) ;");
}

if(!pdo_fieldexists('we7_weikanjia', 'v_user')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `v_user` int(10);");
}

if(!pdo_fieldexists('we7_weikanjia', 'join_rank_num')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `join_rank_num` int(10) ;");
}

if(!pdo_fieldexists('we7_weikanjia', 'zt_address')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `zt_address` varchar(1000) ;");
}


if(!pdo_fieldexists('we7_weikanjia', 'one_kj_enable')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `one_kj_enable` int(1) ;");
}

if(!pdo_fieldexists('we7_weikanjia', 'day_help_count')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `day_help_count` int(10) ;");
}

if(!pdo_fieldexists('we7_weikanjia', 'kj_follow_enable')) {
	pdo_query("ALTER TABLE ".tablename('we7_weikanjia')." ADD `kj_follow_enable` int(1);");
}

