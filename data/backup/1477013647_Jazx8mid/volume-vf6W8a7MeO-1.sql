DROP TABLE IF EXISTS ims_account;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO ims_account VALUES 
('1','1','uRr8qvQV','1','0','1'),
('2','2','aFd5wPf4','1','0','1'),
('3','3','Ip6ZfjJ4','1','1','0'),
('4','4','KJclkuPz','1','0','1');


DROP TABLE IF EXISTS ims_account_wechats;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `access_token` varchar(1000) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO ims_account_wechats VALUES 
('1','1','omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP','','','1','we7team','','','','','','','','','0','','','1','',''),
('2','2','uurd3ti0cil1o1cgdvnka11hfdipxa1u','','dcf52Vm4KSRvJiKQV03LQ85wRYLrdhElz7m4oQkSILV','4','昆明普瑞眼科医院','KMpr_0622','gh_ad09335f1d3b','','','','','130108622@qq.com','9ae65c69882676598aae2676b563687c','0','wx7efe0ce5b9264bf1','1c67a3999342d8a9b7bee0572ac93094','0','',''),
('3','3','BuuQYYBh6ZQ6yHq0b6BQrDQeqrQEyBz7','','OIhxDDaYDxta9nMGqnikgCIXqkdNHIddIvdK8i9v8Gz','4','昆明普瑞眼科医院','KMpr_0622','gh_ad09335f1d3b','','','','','','','0','wx7efe0ce5b9264bf1','1c67a3999342d8a9b7bee0572ac93094','0','',''),
('4','4','wZ9YN9nsIpSdp4R4SZ9GTYRi3PG8tZ49','','jpoUYO4PyY2zW2yERH9Y69Euyq9rHT2RwQ2Cy4wYrRh','1','11111111111','','','','','','','','','0','','','0','','');


DROP TABLE IF EXISTS ims_activity_clerk_menu;
CREATE TABLE `ims_activity_clerk_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `displayorder` int(4) NOT NULL,
  `pid` int(6) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `url` varchar(60) NOT NULL,
  `type` varchar(20) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `system` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO ims_activity_clerk_menu VALUES 
('1','0','0','0','mc','快捷交易','','','','mc_manage','1'),
('2','0','0','1','','积分充值','fa fa-money','credit1','modal','mc_credit1','1'),
('3','0','0','1','','余额充值','fa fa-cny','credit2','modal','mc_credit2','1'),
('4','0','0','1','','消费','fa fa-usd','consume','modal','mc_consume','1'),
('5','0','0','1','','发放会员卡','fa fa-credit-card','card','modal','mc_card','1'),
('6','0','0','0','stat','数据统计','','','','stat_manage','1'),
('7','0','0','6','','积分统计','fa fa-bar-chart','./index.php?c=stat&a=credit1','url','stat_credit1','1'),
('8','0','0','6','','余额统计','fa fa-bar-chart','./index.php?c=stat&a=credit2','url','stat_credit2','1'),
('9','0','0','6','','现金消费统计','fa fa-bar-chart','./index.php?c=stat&a=cash','url','stat_cash','1'),
('10','0','0','6','','会员卡统计','fa fa-bar-chart','./index.php?c=stat&a=card','url','stat_card','1'),
('11','0','0','0','activity','系统优惠券核销','','','','activity_card_manage','1'),
('12','0','0','11','','折扣券核销','fa fa-money','./index.php?c=activity&a=consume&do=display&type=1','url','activity_consume_coupon','1'),
('13','0','0','11','','代金券核销','fa fa-money','./index.php?c=activity&a=consume&do=display&type=2','url','activity_consume_token','1'),
('14','0','0','0','wechat','微信卡券核销','','','','wechat_card_manage','1'),
('15','0','0','14','','卡券核销','fa fa-money','./index.php?c=wechat&a=consume','url','wechat_consume','1'),
('16','0','0','6','','收银台收款统计','fa fa-bar-chart','./index.php?c=stat&a=paycenter','url','stat_paycenter','1');


DROP TABLE IF EXISTS ims_activity_clerks;
CREATE TABLE `ims_activity_clerks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `password` (`password`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_activity_coupon_allocation;
CREATE TABLE `ims_activity_coupon_allocation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`couponid`,`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_activity_coupon_modules;
CREATE TABLE `ims_activity_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_activity_exchange;
CREATE TABLE `ims_activity_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `extra` varchar(3000) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `pretotal` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extra` (`extra`(333))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_activity_exchange_trades;
CREATE TABLE `ims_activity_exchange_trades` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`,`uid`,`exid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_activity_exchange_trades_shipping;
CREATE TABLE `ims_activity_exchange_trades_shipping` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_activity_modules;
CREATE TABLE `ims_activity_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `exid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `available` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `uniacid` (`uniacid`),
  KEY `module` (`module`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_activity_modules_record;
CREATE TABLE `ims_activity_modules_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned NOT NULL,
  `num` tinyint(3) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_activity_stores;
CREATE TABLE `ims_activity_stores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `source` tinyint(3) unsigned NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `location_id` (`location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ims_activity_stores VALUES 
('1','3','昆明普瑞眼科医院','','a:3:{s:4:\"cate\";s:12:\"医疗保健\";s:3:\"sub\";s:12:\"专科医院\";s:4:\"clas\";N;}','云南省','昆明市','五华区','龙泉路29','102.709243774','25.0656032562','0871-63336999','a:1:{i:0;a:1:{s:9:\"photo_url\";s:134:\"http://mmbiz.qpic.cn/mmbiz_jpg/Y6zu6dnaNevYE9WEoXOQnUEh4SnX6voFeBa82mee3LP8icz2fOegmmiag7n6r4LqOTrSs7ibpS3sAwVHY2P59cG0w/0?wx_fmt=jpeg\";}}','0','','','','','289110175','1','2','');


DROP TABLE IF EXISTS ims_article_category;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO ims_article_category VALUES 
('1','普瑞新闻','0','news'),
('2','爱眼知识讲堂','0','news');


DROP TABLE IF EXISTS ims_article_news;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO ims_article_news VALUES 
('1','1','祝贺三焦晶体植入手术新闻发布会在昆明普瑞成功举行','<p>祝贺三焦晶体植入手术新闻发布会在昆明普瑞成功举行祝贺三焦晶体植入手术新闻发布会在昆明普瑞成功举行祝贺三焦晶体植入手术新闻发布会在昆明普瑞成功举行</p>','images/3/articles/pZrGwD3j8Dr68tygG2D82GV3388kTS.png','昆明普瑞','昆明普瑞','0','1','1','1476172139','10000'),
('2','2','高度近视会有遗传的可能吗？','<p>\r\n    <a href=\"http://wx.purui.cn/km/app/index.php?c=home&a=huli#\" >高度近视会有遗传的可能吗？</a>\r\n</p>','','','','0','1','1','1476927650','26'),
('3','2','网友疑惑：为什么有些医生不做近视手术？','<p>\r\n    <a href=\"http://wx.purui.cn/km/app/index.php?c=home&a=huli#\" >网友疑惑：为什么有些医生不做近视手术？</a>\r\n</p>','','','','0','1','1','1476927669','10'),
('4','2','近视度数为什么越长越高','<p><a href=\"http://wx.purui.cn/km/app/index.php?c=home&a=huli#\">近视度数为什么越长越高</a></p>','','','','0','1','1','1476929794','0'),
('5','2','高度近视会有遗传的可能吗？','<p><a href=\"http://wx.purui.cn/km/app/index.php?c=home&a=huli#\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration: none; outline: none; cursor: pointer; font-family: \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Helvetica Neue\", Helvetica, tahoma, arial, Verdana, sans-serif, \"WenQuanYi Micro Hei\", 宋体; font-size: 14px; line-height: 22.4px; white-space: normal; background-color: rgb(255, 255, 255);\">高度近视会有遗传的可能吗？</a></p>','','','','0','1','1','1476927524','0'),
('6','2','网友疑惑：为什么有些医生不做近视手术？','<p><a href=\"http://wx.purui.cn/km/app/index.php?c=home&a=huli#\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration: none; outline: none; cursor: pointer; font-family: \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Helvetica Neue\", Helvetica, tahoma, arial, Verdana, sans-serif, \"WenQuanYi Micro Hei\", 宋体; font-size: 14px; line-height: 22.4px; white-space: normal; background-color: rgb(255, 255, 255);\">网友疑惑：为什么有些医生不做近视手术？</a></p>','','','','0','1','1','1476927543','0'),
('7','2','近视度数为什么越长越高','<p><a href=\"http://wx.purui.cn/km/app/index.php?c=home&a=huli#\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration: none; outline: none; cursor: pointer; font-family: \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Helvetica Neue\", Helvetica, tahoma, arial, Verdana, sans-serif, \"WenQuanYi Micro Hei\", 宋体; font-size: 14px; line-height: 22.4px; white-space: normal; background-color: rgb(255, 255, 255);\">近视度数为什么越长越高</a></p>','','','','0','1','1','1476927559','0');


DROP TABLE IF EXISTS ims_article_notice;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_article_unread_notice;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_basic_reply;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO ims_basic_reply VALUES 
('9','11','直接回复信息，小编会在最快的时间，进行回复。/呲牙\n（工作时间：星期一至星期六，早：8:30——12:00，下午：2:00——5:30。）'),
('11','12','联系电话：[U+1F4DE]0871-63111756');


DROP TABLE IF EXISTS ims_bmhospital_classify;
CREATE TABLE `ims_bmhospital_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `ser_window` varchar(30) NOT NULL,
  `department_id` int(11) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `ser_picurl` varchar(200) NOT NULL,
  `ser_info` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO ims_bmhospital_classify VALUES 
('3','3','0','屈光专科','0','','',''),
('4','3','0','医学配镜中心','0','','',''),
('5','3','0','白内障专科','0','','',''),
('6','3','0','小儿斜弱视	','0','','',''),
('7','3','0','眼底病专科	','0','','',''),
('8','3','0','青光眼专科	','0','','',''),
('9','3','0','角膜病专科','0','','',''),
('10','3','0','眼整形及泪道	','0','','',''),
('11','3','0','综合眼病	','0','','','');


DROP TABLE IF EXISTS ims_bmhospital_comments;
CREATE TABLE `ims_bmhospital_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `lead_name` varchar(30) NOT NULL,
  `lead_position` varchar(30) NOT NULL,
  `lead_picurl` varchar(100) NOT NULL,
  `info` varchar(300) NOT NULL,
  `department_id` int(11) NOT NULL,
  `comm_content` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_bmhospital_group;
CREATE TABLE `ims_bmhospital_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `ser_window` varchar(30) NOT NULL,
  `department_id` int(11) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `ser_picurl` varchar(200) NOT NULL,
  `ser_info` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_bmhospital_poster;
CREATE TABLE `ims_bmhospital_poster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `thurl` varchar(200) NOT NULL COMMENT 'rl',
  `title` varchar(30) NOT NULL,
  `thumb` varchar(2000) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_bmhospital_project;
CREATE TABLE `ims_bmhospital_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `ser_name` varchar(30) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `hosp_id` int(11) NOT NULL,
  `duty` int(11) NOT NULL,
  `titles` int(11) NOT NULL,
  `content` text NOT NULL,
  `classify_picurl` varchar(100) NOT NULL,
  `kbox` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `project_info` varchar(300) NOT NULL,
  `ishow` int(1) NOT NULL,
  `total` int(11) NOT NULL,
  `srvtime` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO ims_bmhospital_project VALUES 
('1','3','0','医生1','3','1','1','1','&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;/p&gt;','images/3/2016/10/u34Y3zGU4Uh14noN8OYoLa4L4Rc3Lr.jpg','医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍','0','','1','0','周二周五'),
('2','3','0','医生2','4','2','2','2','&lt;p&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;/p&gt;','images/3/2016/10/u34Y3zGU4Uh14noN8OYoLa4L4Rc3Lr.jpg','医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍医生介绍','0','','1','0','周三周六'),
('3','3','0','昆明医生1','4','5','1','2','&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;/p&gt;','images/3/2016/10/u34Y3zGU4Uh14noN8OYoLa4L4Rc3Lr.jpg','医生介绍医生介绍医生介绍医生介绍医生介绍','0','','1','0','门诊时间门诊时间门诊时间'),
('4','3','0','成都医生1','3','2','1','1','&lt;p&gt;&lt;br/&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, 宋体, 宋体, Tahoma, Arial, Helvetica, STHeiti; font-size: 14px; font-weight: bold; line-height: 20px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;医生详情&lt;/span&gt;&lt;/p&gt;','images/3/2016/10/u34Y3zGU4Uh14noN8OYoLa4L4Rc3Lr.jpg','医生介绍医生介绍医生介绍','0','','-1','0','门诊时间');


DROP TABLE IF EXISTS ims_bmhospital_reply;
CREATE TABLE `ims_bmhospital_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `weid` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `picurl` varchar(500) NOT NULL,
  `info_picurl` varchar(500) NOT NULL,
  `order_picurl` varchar(500) NOT NULL,
  `order_info` varchar(500) NOT NULL,
  `cosmtment_phone` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `cosmtment_info` varchar(5000) NOT NULL,
  `lng` decimal(10,2) DEFAULT '0.00',
  `lat` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_bmhospital_reservation;
CREATE TABLE `ims_bmhospital_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `truename` varchar(20) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `ser_name` varchar(30) NOT NULL,
  `info` varchar(100) NOT NULL,
  `createtime` int(11) NOT NULL,
  `remate` int(1) NOT NULL COMMENT '״̬',
  `reid` int(11) NOT NULL COMMENT 'D',
  `kfinfo` varchar(100) NOT NULL,
  `idno` varchar(18) NOT NULL,
  `sex` char(1) NOT NULL,
  `restime` varchar(50) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `age` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO ims_bmhospital_reservation VALUES 
('1','0','','国安金','18656506404','','','1476780506','0','0','','','','1464969600','0','0','19');


DROP TABLE IF EXISTS ims_bmhospital_slide;
CREATE TABLE `ims_bmhospital_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `hs_pic` text COMMENT 'õƬ',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_business;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_core_attachment;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO ims_core_attachment VALUES 
('13','3','1','lfj.png','images/3/2016/10/P2b9Mf90f88ORaafeWQ46vA9f0ar5W.png','1','1476757340'),
('2','3','1','getqrcode.jpg','images/3/2016/10/MRc0oOdczr3H463oC4I45257534R24.jpg','1','1476149008'),
('18','3','1','TB23i16XmOI.eBjSspmXXatOVXa_!!1669252141.jpg_430x430q90.jpg','images/3/2016/10/NjDZkX8K8G1WBokxoWiWdDZcWJmWBg.jpg','1','1476758104'),
('14','3','1','qnyj.png','images/3/2016/10/XPantuT6mAJuO6hUMHPJjtNpgJH9Ea.png','1','1476757478'),
('15','3','1','TB28oPTtVXXXXXoXXXXXXXXXXXX_!!594992150.jpg_430x430q90.jpg','images/3/2016/10/r3gnnQnMhJQ4i0v09v6zQ07499J5C7.jpg','1','1476757787'),
('16','3','1','TB2uUbttpXXXXabXpXXXXXXXXXX_!!1669252141.jpg_60x60q90.jpg','images/3/2016/10/hY3R8dMNUNnnwmH8Dn378NydA1fJ4a.jpg','1','1476757876'),
('17','3','1','TB28oPTtVXXXXXoXXXXXXXXXXXX_!!594992150.jpg_430x430q90.jpg','images/3/2016/10/oX9ZIX4XIzhPGJXX98Soozoj89hgh4.jpg','1','1476757995'),
('10','3','1','getheadimg.jpg','images/3/2016/10/Xme1Rzs7IS9cEi4GjOFCOj7IO9e1rl.jpg','1','1476165014'),
('11','3','1','QQ图片20161011154629.png','images/3/articles/pZrGwD3j8Dr68tygG2D82GV3388kTS.png','1','1476172116'),
('12','3','1','20131114045545138.jpg','images/3/2016/10/u34Y3zGU4Uh14noN8OYoLa4L4Rc3Lr.jpg','1','1476683799'),
('19','3','1','100.jpg','images/3/2016/10/Y4OgH3443o84k4W3g1G4HHhzTH4JZ8.jpg','1','1476944133');


DROP TABLE IF EXISTS ims_core_cache;
CREATE TABLE `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO ims_core_cache VALUES 
('setting','a:10:{s:9:\"copyright\";a:3:{s:6:\"status\";s:1:\"1\";s:10:\"verifycode\";s:1:\"0\";s:6:\"reason\";s:6:\"测试\";}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:8:\"platform\";a:5:{s:5:\"token\";s:32:\"I6knND1knvZSzn7N7dIxikOkN7s71iSs\";s:14:\"encodingaeskey\";s:43:\"OL4lf4lCpSFP8ZfPLFS0s244KSSsKPP8l4P0sks33Hh\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}s:4:\"site\";a:5:{s:3:\"key\";s:5:\"69384\";s:5:\"token\";s:32:\"c2d74198b6371f73947a09da7c2bde0d\";s:3:\"url\";s:21:\"http://wx.purui.cn/km\";s:7:\"version\";s:3:\"0.8\";s:15:\"profile_perfect\";b:1;}s:7:\"cloudip\";a:2:{s:2:\"ip\";s:13:\"218.60.33.139\";s:6:\"expire\";i:1477215185;}s:8:\"sms.info\";a:3:{s:3:\"key\";s:5:\"69384\";s:8:\"sms_sign\";a:0:{}s:9:\"sms_count\";i:0;}s:18:\"module_receive_ban\";a:2:{s:12:\"cgc_gzredbag\";s:12:\"cgc_gzredbag\";s:10:\"we7_doctor\";s:10:\"we7_doctor\";}s:5:\"basic\";a:1:{s:8:\"template\";s:7:\"default\";}}'),
('upgrade','a:2:{s:7:\"upgrade\";b:1;s:10:\"lastupdate\";i:1477013585;}'),
('checkupgrade:system','a:4:{s:7:\"version\";s:3:\"0.8\";s:7:\"release\";s:12:\"201609230000\";s:7:\"upgrade\";i:1;s:10:\"lastupdate\";i:1477010389;}'),
('system_frame','a:5:{s:8:\"platform\";a:3:{i:0;a:2:{s:5:\"title\";s:12:\"基本功能\";s:5:\"items\";a:9:{i:0;a:5:{s:2:\"id\";s:1:\"3\";s:5:\"title\";s:12:\"文字回复\";s:3:\"url\";s:38:\"./index.php?c=platform&a=reply&m=basic\";s:15:\"permission_name\";s:20:\"platform_reply_basic\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:46:\"./index.php?c=platform&a=reply&do=post&m=basic\";}}i:1;a:5:{s:2:\"id\";s:1:\"4\";s:5:\"title\";s:12:\"图文回复\";s:3:\"url\";s:37:\"./index.php?c=platform&a=reply&m=news\";s:15:\"permission_name\";s:19:\"platform_reply_news\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:45:\"./index.php?c=platform&a=reply&do=post&m=news\";}}i:2;a:5:{s:2:\"id\";s:1:\"5\";s:5:\"title\";s:12:\"音乐回复\";s:3:\"url\";s:38:\"./index.php?c=platform&a=reply&m=music\";s:15:\"permission_name\";s:20:\"platform_reply_music\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:46:\"./index.php?c=platform&a=reply&do=post&m=music\";}}i:3;a:5:{s:2:\"id\";s:1:\"6\";s:5:\"title\";s:12:\"图片回复\";s:3:\"url\";s:39:\"./index.php?c=platform&a=reply&m=images\";s:15:\"permission_name\";s:21:\"platform_reply_images\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:47:\"./index.php?c=platform&a=reply&do=post&m=images\";}}i:4;a:5:{s:2:\"id\";s:1:\"7\";s:5:\"title\";s:12:\"语音回复\";s:3:\"url\";s:38:\"./index.php?c=platform&a=reply&m=voice\";s:15:\"permission_name\";s:20:\"platform_reply_voice\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:46:\"./index.php?c=platform&a=reply&do=post&m=voice\";}}i:5;a:5:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:12:\"视频回复\";s:3:\"url\";s:38:\"./index.php?c=platform&a=reply&m=video\";s:15:\"permission_name\";s:20:\"platform_reply_video\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:46:\"./index.php?c=platform&a=reply&do=post&m=video\";}}i:6;a:5:{s:2:\"id\";s:1:\"9\";s:5:\"title\";s:18:\"微信卡券回复\";s:3:\"url\";s:39:\"./index.php?c=platform&a=reply&m=wxcard\";s:15:\"permission_name\";s:21:\"platform_reply_wxcard\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:47:\"./index.php?c=platform&a=reply&do=post&m=wxcard\";}}i:7;a:5:{s:2:\"id\";s:2:\"10\";s:5:\"title\";s:21:\"自定义接口回复\";s:3:\"url\";s:40:\"./index.php?c=platform&a=reply&m=userapi\";s:15:\"permission_name\";s:22:\"platform_reply_userapi\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:48:\"./index.php?c=platform&a=reply&do=post&m=userapi\";}}i:8;a:4:{s:2:\"id\";s:2:\"11\";s:5:\"title\";s:12:\"系统回复\";s:3:\"url\";s:44:\"./index.php?c=platform&a=special&do=display&\";s:15:\"permission_name\";s:21:\"platform_reply_system\";}}}i:1;a:2:{s:5:\"title\";s:12:\"高级功能\";s:5:\"items\";a:6:{i:0;a:4:{s:2:\"id\";s:2:\"13\";s:5:\"title\";s:18:\"常用服务接入\";s:3:\"url\";s:43:\"./index.php?c=platform&a=service&do=switch&\";s:15:\"permission_name\";s:16:\"platform_service\";}i:1;a:4:{s:2:\"id\";s:2:\"14\";s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:30:\"./index.php?c=platform&a=menu&\";s:15:\"permission_name\";s:13:\"platform_menu\";}i:2;a:4:{s:2:\"id\";s:2:\"15\";s:5:\"title\";s:18:\"特殊消息回复\";s:3:\"url\";s:44:\"./index.php?c=platform&a=special&do=message&\";s:15:\"permission_name\";s:16:\"platform_special\";}i:3;a:4:{s:2:\"id\";s:2:\"16\";s:5:\"title\";s:15:\"二维码管理\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";}i:4;a:4:{s:2:\"id\";s:2:\"17\";s:5:\"title\";s:15:\"多客服接入\";s:3:\"url\";s:39:\"./index.php?c=platform&a=reply&m=custom\";s:15:\"permission_name\";s:21:\"platform_reply_custom\";}i:5;a:4:{s:2:\"id\";s:2:\"18\";s:5:\"title\";s:18:\"长链接二维码\";s:3:\"url\";s:32:\"./index.php?c=platform&a=url2qr&\";s:15:\"permission_name\";s:15:\"platform_url2qr\";}}}i:2;a:2:{s:5:\"title\";s:12:\"数据统计\";s:5:\"items\";a:4:{i:0;a:4:{s:2:\"id\";s:2:\"20\";s:5:\"title\";s:12:\"聊天记录\";s:3:\"url\";s:41:\"./index.php?c=platform&a=stat&do=history&\";s:15:\"permission_name\";s:21:\"platform_stat_history\";}i:1;a:4:{s:2:\"id\";s:2:\"21\";s:5:\"title\";s:24:\"回复规则使用情况\";s:3:\"url\";s:38:\"./index.php?c=platform&a=stat&do=rule&\";s:15:\"permission_name\";s:18:\"platform_stat_rule\";}i:2;a:4:{s:2:\"id\";s:2:\"22\";s:5:\"title\";s:21:\"关键字命中情况\";s:3:\"url\";s:41:\"./index.php?c=platform&a=stat&do=keyword&\";s:15:\"permission_name\";s:21:\"platform_stat_keyword\";}i:3;a:4:{s:2:\"id\";s:2:\"23\";s:5:\"title\";s:6:\"参数\";s:3:\"url\";s:41:\"./index.php?c=platform&a=stat&do=setting&\";s:15:\"permission_name\";s:21:\"platform_stat_setting\";}}}}s:4:\"site\";a:3:{i:0;a:2:{s:5:\"title\";s:12:\"微站管理\";s:5:\"items\";a:3:{i:0;a:5:{s:2:\"id\";s:2:\"26\";s:5:\"title\";s:12:\"站点管理\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:18:\"site_multi_display\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:35:\"./index.php?c=site&a=multi&do=post&\";}}i:1;a:4:{s:2:\"id\";s:2:\"29\";s:5:\"title\";s:12:\"模板管理\";s:3:\"url\";s:39:\"./index.php?c=site&a=style&do=template&\";s:15:\"permission_name\";s:19:\"site_style_template\";}i:2;a:4:{s:2:\"id\";s:2:\"30\";s:5:\"title\";s:18:\"模块模板扩展\";s:3:\"url\";s:37:\"./index.php?c=site&a=style&do=module&\";s:15:\"permission_name\";s:17:\"site_style_module\";}}}i:1;a:2:{s:5:\"title\";s:18:\"特殊页面管理\";s:5:\"items\";a:2:{i:0;a:4:{s:2:\"id\";s:2:\"32\";s:5:\"title\";s:12:\"会员中心\";s:3:\"url\";s:34:\"./index.php?c=site&a=editor&do=uc&\";s:15:\"permission_name\";s:14:\"site_editor_uc\";}i:1;a:5:{s:2:\"id\";s:2:\"33\";s:5:\"title\";s:12:\"专题页面\";s:3:\"url\";s:36:\"./index.php?c=site&a=editor&do=page&\";s:15:\"permission_name\";s:16:\"site_editor_page\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:38:\"./index.php?c=site&a=editor&do=design&\";}}}}i:2;a:2:{s:5:\"title\";s:12:\"功能组件\";s:5:\"items\";a:2:{i:0;a:4:{s:2:\"id\";s:2:\"35\";s:5:\"title\";s:12:\"分类设置\";s:3:\"url\";s:30:\"./index.php?c=site&a=category&\";s:15:\"permission_name\";s:13:\"site_category\";}i:1;a:4:{s:2:\"id\";s:2:\"36\";s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=site&a=article&\";s:15:\"permission_name\";s:12:\"site_article\";}}}}s:2:\"mc\";a:8:{i:0;a:2:{s:5:\"title\";s:12:\"粉丝管理\";s:5:\"items\";a:2:{i:0;a:4:{s:2:\"id\";s:2:\"39\";s:5:\"title\";s:12:\"粉丝分组\";s:3:\"url\";s:28:\"./index.php?c=mc&a=fangroup&\";s:15:\"permission_name\";s:11:\"mc_fangroup\";}i:1;a:4:{s:2:\"id\";s:2:\"40\";s:5:\"title\";s:6:\"粉丝\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";}}}i:1;a:2:{s:5:\"title\";s:12:\"会员中心\";s:5:\"items\";a:3:{i:0;a:4:{s:2:\"id\";s:2:\"42\";s:5:\"title\";s:21:\"会员中心关键字\";s:3:\"url\";s:37:\"./index.php?c=platform&a=cover&do=mc&\";s:15:\"permission_name\";s:17:\"platform_cover_mc\";}i:1;a:5:{s:2:\"id\";s:2:\"43\";s:5:\"title\";s:6:\"会员\";s:3:\"url\";s:25:\"./index.php?c=mc&a=member\";s:15:\"permission_name\";s:9:\"mc_member\";s:6:\"append\";a:2:{s:5:\"title\";s:26:\"<i class=\"fa fa-plus\"></i>\";s:3:\"url\";s:32:\"./index.php?c=mc&a=member&do=add\";}}i:2;a:4:{s:2:\"id\";s:2:\"44\";s:5:\"title\";s:9:\"会员组\";s:3:\"url\";s:25:\"./index.php?c=mc&a=group&\";s:15:\"permission_name\";s:8:\"mc_group\";}}}i:2;a:2:{s:5:\"title\";s:15:\"会员卡管理\";s:5:\"items\";a:4:{i:0;a:4:{s:2:\"id\";s:2:\"46\";s:5:\"title\";s:18:\"会员卡关键字\";s:3:\"url\";s:39:\"./index.php?c=platform&a=cover&do=card&\";s:15:\"permission_name\";s:19:\"platform_cover_card\";}i:1;a:4:{s:2:\"id\";s:2:\"47\";s:5:\"title\";s:15:\"会员卡管理\";s:3:\"url\";s:33:\"./index.php?c=mc&a=card&do=manage\";s:15:\"permission_name\";s:14:\"mc_card_manage\";}i:2;a:4:{s:2:\"id\";s:2:\"48\";s:5:\"title\";s:15:\"会员卡设置\";s:3:\"url\";s:33:\"./index.php?c=mc&a=card&do=editor\";s:15:\"permission_name\";s:14:\"mc_card_editor\";}i:3;a:4:{s:2:\"id\";s:2:\"49\";s:5:\"title\";s:21:\"会员卡其他功能\";s:3:\"url\";s:32:\"./index.php?c=mc&a=card&do=other\";s:15:\"permission_name\";s:13:\"mc_card_other\";}}}i:3;a:2:{s:5:\"title\";s:12:\"积分兑换\";s:5:\"items\";a:2:{i:0;a:4:{s:2:\"id\";s:2:\"51\";s:5:\"title\";s:12:\"卡券兑换\";s:3:\"url\";s:56:\"./index.php?c=activity&a=exchange&do=display&type=coupon\";s:15:\"permission_name\";s:24:\"activity_coupon_exchange\";}i:1;a:4:{s:2:\"id\";s:2:\"52\";s:5:\"title\";s:18:\"真实物品兑换\";s:3:\"url\";s:55:\"./index.php?c=activity&a=exchange&do=display&type=goods\";s:15:\"permission_name\";s:22:\"activity_goods_display\";}}}i:4;a:2:{s:5:\"title\";s:19:\"微信素材&群发\";s:5:\"items\";a:2:{i:0;a:4:{s:2:\"id\";s:2:\"54\";s:5:\"title\";s:13:\"素材&群发\";s:3:\"url\";s:32:\"./index.php?c=material&a=display\";s:15:\"permission_name\";s:16:\"material_display\";}i:1;a:4:{s:2:\"id\";s:2:\"55\";s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:29:\"./index.php?c=material&a=mass\";s:15:\"permission_name\";s:13:\"material_mass\";}}}i:5;a:2:{s:5:\"title\";s:12:\"卡券管理\";s:5:\"items\";a:3:{i:0;a:4:{s:2:\"id\";s:2:\"57\";s:5:\"title\";s:12:\"卡券列表\";s:3:\"url\";s:42:\"./index.php?c=activity&a=coupon&do=display\";s:15:\"permission_name\";s:23:\"activity_coupon_display\";}i:1;a:4:{s:2:\"id\";s:2:\"58\";s:5:\"title\";s:12:\"卡券营销\";s:3:\"url\";s:29:\"index.php?c=activity&a=market\";s:15:\"permission_name\";s:22:\"activity_coupon_market\";}i:2;a:4:{s:2:\"id\";s:2:\"59\";s:5:\"title\";s:12:\"卡券核销\";s:3:\"url\";s:52:\"./index.php?c=activity&a=consume&do=display&status=2\";s:15:\"permission_name\";s:23:\"activity_consume_coupon\";}}}i:6;a:2:{s:5:\"title\";s:9:\"工作台\";s:5:\"items\";a:4:{i:0;a:4:{s:2:\"id\";s:2:\"61\";s:5:\"title\";s:12:\"门店列表\";s:3:\"url\";s:30:\"./index.php?c=activity&a=store\";s:15:\"permission_name\";s:19:\"activity_store_list\";}i:1;a:4:{s:2:\"id\";s:2:\"62\";s:5:\"title\";s:12:\"店员列表\";s:3:\"url\";s:30:\"./index.php?c=activity&a=clerk\";s:15:\"permission_name\";s:19:\"activity_clerk_list\";}i:2;a:4:{s:2:\"id\";s:2:\"63\";s:5:\"title\";s:18:\"微信刷卡收款\";s:3:\"url\";s:40:\"./index.php?c=paycenter&a=wxmicro&do=pay\";s:15:\"permission_name\";s:21:\"paycenter_wxmicro_pay\";}i:3;a:4:{s:2:\"id\";s:2:\"64\";s:5:\"title\";s:21:\"店员操作关键字\";s:3:\"url\";s:39:\"./index.php?c=platform&a=cover&do=clerk\";s:15:\"permission_name\";s:15:\"paycenter_clerk\";}}}i:7;a:2:{s:5:\"title\";s:12:\"统计中心\";s:5:\"items\";a:5:{i:0;a:4:{s:2:\"id\";s:2:\"66\";s:5:\"title\";s:18:\"会员积分统计\";s:3:\"url\";s:28:\"./index.php?c=stat&a=credit1\";s:15:\"permission_name\";s:12:\"stat_credit1\";}i:1;a:4:{s:2:\"id\";s:2:\"67\";s:5:\"title\";s:18:\"会员余额统计\";s:3:\"url\";s:28:\"./index.php?c=stat&a=credit2\";s:15:\"permission_name\";s:12:\"stat_credit2\";}i:2;a:4:{s:2:\"id\";s:2:\"68\";s:5:\"title\";s:24:\"会员现金消费统计\";s:3:\"url\";s:25:\"./index.php?c=stat&a=cash\";s:15:\"permission_name\";s:9:\"stat_cash\";}i:3;a:4:{s:2:\"id\";s:2:\"69\";s:5:\"title\";s:15:\"会员卡统计\";s:3:\"url\";s:25:\"./index.php?c=stat&a=card\";s:15:\"permission_name\";s:9:\"stat_card\";}i:4;a:4:{s:2:\"id\";s:2:\"70\";s:5:\"title\";s:21:\"收银台收款统计\";s:3:\"url\";s:30:\"./index.php?c=stat&a=paycenter\";s:15:\"permission_name\";s:14:\"stat_paycenter\";}}}}s:7:\"setting\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"公众号选项\";s:5:\"items\";a:7:{i:0;a:4:{s:2:\"id\";s:2:\"73\";s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:15:\"profile_payment\";}i:1;a:4:{s:2:\"id\";s:2:\"74\";s:5:\"title\";s:19:\"借用 oAuth 权限\";s:3:\"url\";s:37:\"./index.php?c=mc&a=passport&do=oauth&\";s:15:\"permission_name\";s:17:\"mc_passport_oauth\";}i:2;a:4:{s:2:\"id\";s:2:\"75\";s:5:\"title\";s:22:\"借用 JS 分享权限\";s:3:\"url\";s:31:\"./index.php?c=profile&a=jsauth&\";s:15:\"permission_name\";s:14:\"profile_jsauth\";}i:3;a:4:{s:2:\"id\";s:2:\"76\";s:5:\"title\";s:18:\"会员字段管理\";s:3:\"url\";s:25:\"./index.php?c=mc&a=fields\";s:15:\"permission_name\";s:9:\"mc_fields\";}i:4;a:4:{s:2:\"id\";s:2:\"77\";s:5:\"title\";s:18:\"微信通知设置\";s:3:\"url\";s:28:\"./index.php?c=mc&a=tplnotice\";s:15:\"permission_name\";s:12:\"mc_tplnotice\";}i:5;a:4:{s:2:\"id\";s:2:\"78\";s:5:\"title\";s:21:\"工作台菜单设置\";s:3:\"url\";s:32:\"./index.php?c=profile&a=deskmenu\";s:15:\"permission_name\";s:16:\"profile_deskmenu\";}i:6;a:4:{s:2:\"id\";s:2:\"79\";s:5:\"title\";s:18:\"会员扩展功能\";s:3:\"url\";s:25:\"./index.php?c=mc&a=plugin\";s:15:\"permission_name\";s:9:\"mc_plugin\";}}}i:1;a:2:{s:5:\"title\";s:21:\"会员及粉丝选项\";s:5:\"items\";a:5:{i:0;a:4:{s:2:\"id\";s:2:\"81\";s:5:\"title\";s:12:\"积分设置\";s:3:\"url\";s:26:\"./index.php?c=mc&a=credit&\";s:15:\"permission_name\";s:9:\"mc_credit\";}i:1;a:4:{s:2:\"id\";s:2:\"82\";s:5:\"title\";s:12:\"注册设置\";s:3:\"url\";s:40:\"./index.php?c=mc&a=passport&do=passport&\";s:15:\"permission_name\";s:20:\"mc_passport_passport\";}i:2;a:4:{s:2:\"id\";s:2:\"83\";s:5:\"title\";s:18:\"粉丝同步设置\";s:3:\"url\";s:36:\"./index.php?c=mc&a=passport&do=sync&\";s:15:\"permission_name\";s:16:\"mc_passport_sync\";}i:3;a:4:{s:2:\"id\";s:2:\"84\";s:5:\"title\";s:14:\"UC站点整合\";s:3:\"url\";s:22:\"./index.php?c=mc&a=uc&\";s:15:\"permission_name\";s:5:\"mc_uc\";}i:4;a:4:{s:2:\"id\";s:2:\"85\";s:5:\"title\";s:18:\"邮件通知参数\";s:3:\"url\";s:30:\"./index.php?c=profile&a=notify\";s:15:\"permission_name\";s:14:\"profile_notify\";}}}i:2;a:1:{s:5:\"title\";s:18:\"其他功能选项\";}}s:3:\"ext\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"管理\";s:5:\"items\";a:1:{i:0;a:4:{s:2:\"id\";s:2:\"89\";s:5:\"title\";s:18:\"扩展功能管理\";s:3:\"url\";s:31:\"./index.php?c=profile&a=module&\";s:15:\"permission_name\";s:14:\"profile_module\";}}}}}'),
('module_receive_enable','a:13:{s:5:\"image\";a:0:{}s:5:\"voice\";a:0:{}s:5:\"video\";a:0:{}s:10:\"shortvideo\";a:0:{}s:8:\"location\";a:0:{}s:4:\"link\";a:0:{}s:9:\"subscribe\";a:0:{}s:11:\"unsubscribe\";a:0:{}s:2:\"qr\";a:0:{}s:5:\"trace\";a:0:{}s:5:\"click\";a:0:{}s:4:\"view\";a:0:{}s:14:\"merchant_order\";a:0:{}}'),
('unimodules:3:','a:15:{s:5:\"basic\";a:19:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:4:\"news\";a:19:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"music\";a:19:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:7:\"userapi\";a:19:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:6:\"config\";a:0:{}s:7:\"enabled\";i:1;s:9:\"isdisplay\";i:1;}s:8:\"recharge\";a:19:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"custom\";a:19:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"images\";a:19:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"video\";a:19:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"voice\";a:19:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"chats\";a:19:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"wxcard\";a:19:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:9:\"paycenter\";a:19:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:9:\"paycenter\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:9:\"收银台\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:9:\"收银台\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:10:\"we7_doctor\";a:19:{s:3:\"mid\";s:2:\"19\";s:4:\"name\";s:10:\"we7_doctor\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:6:\"医生\";s:7:\"version\";s:3:\"0.1\";s:7:\"ability\";s:66:\"医生信息管理，包括增、删、改、查、列表等功能\";s:6:\"author\";s:8:\"Garfield\";s:3:\"url\";s:18:\"http://bbs.we7.cc/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:11:\"unsubscribe\";i:9;s:2:\"qr\";i:10;s:5:\"trace\";i:11;s:5:\"click\";i:12;s:4:\"view\";i:13;s:14:\"merchant_order\";}s:7:\"handles\";a:12:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:10:\"shortvideo\";i:4;s:8:\"location\";i:5;s:4:\"link\";i:6;s:9:\"subscribe\";i:7;s:2:\"qr\";i:8;s:5:\"trace\";i:9;s:5:\"click\";i:10;s:14:\"merchant_order\";i:11;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:7:\"enabled\";s:1:\"1\";s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:13:\"ewei_shopping\";a:19:{s:3:\"mid\";s:2:\"20\";s:4:\"name\";s:13:\"ewei_shopping\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微商城\";s:7:\"version\";s:5:\"6.9.6\";s:7:\"ability\";s:9:\"微商城\";s:6:\"author\";s:20:\"WeEngine Team & ewei\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"2\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:7:\"enabled\";s:1:\"1\";s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:4:\"core\";a:5:{s:5:\"title\";s:24:\"系统事件处理模块\";s:4:\"name\";s:4:\"core\";s:8:\"issystem\";i:1;s:7:\"enabled\";i:1;s:9:\"isdisplay\";i:0;}}'),
('uniaccount:3','a:28:{s:4:\"acid\";s:1:\"3\";s:7:\"uniacid\";s:1:\"3\";s:5:\"token\";s:32:\"BuuQYYBh6ZQ6yHq0b6BQrDQeqrQEyBz7\";s:12:\"access_token\";s:0:\"\";s:14:\"encodingaeskey\";s:43:\"OIhxDDaYDxta9nMGqnikgCIXqkdNHIddIvdK8i9v8Gz\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:24:\"昆明普瑞眼科医院\";s:7:\"account\";s:9:\"KMpr_0622\";s:8:\"original\";s:15:\"gh_ad09335f1d3b\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:18:\"wx7efe0ce5b9264bf1\";s:6:\"secret\";s:32:\"1c67a3999342d8a9b7bee0572ac93094\";s:7:\"styleid\";s:1:\"0\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:12:\"default_acid\";s:1:\"3\";s:4:\"type\";s:1:\"1\";s:3:\"uid\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:6:\"groups\";a:1:{i:3;a:5:{s:7:\"groupid\";s:1:\"3\";s:7:\"uniacid\";s:1:\"3\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:10:\"grouplevel\";s:1:\"0\";}'),
('unisetting:3','a:23:{s:7:\"uniacid\";s:1:\"3\";s:8:\"passport\";a:4:{s:8:\"focusreg\";i:0;s:4:\"item\";s:6:\"random\";s:4:\"type\";s:8:\"password\";s:5:\"audit\";i:0;}s:5:\"oauth\";a:2:{s:4:\"host\";s:18:\"http://wx.purui.cn\";s:7:\"account\";i:3;}s:11:\"jsauth_acid\";s:1:\"3\";s:2:\"uc\";s:0:\"\";s:6:\"notify\";s:0:\"\";s:11:\"creditnames\";a:2:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:9:\"shortcuts\";a:1:{s:13:\"ewei_shopping\";a:2:{s:4:\"name\";s:13:\"ewei_shopping\";s:4:\"link\";s:51:\"./index.php?c=home&a=welcome&do=ext&m=ewei_shopping\";}}s:7:\"payment\";a:7:{s:6:\"credit\";a:1:{s:6:\"switch\";b:1;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:8:{s:6:\"switch\";b:1;s:7:\"account\";s:1:\"3\";s:7:\"signkey\";s:32:\"cvReaEuvuypRAe4zxicAIeEC5Z8VsDxP\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:7:\"version\";s:1:\"2\";s:5:\"mchid\";s:8:\"10037493\";s:6:\"apikey\";s:32:\"cvReaEuvuypRAe4zxicAIeEC5Z8VsDxP\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}s:8:\"unionpay\";a:3:{s:6:\"switch\";b:0;s:11:\"signcertpwd\";s:0:\"\";s:5:\"merid\";s:0:\"\";}s:8:\"baifubao\";a:3:{s:6:\"switch\";b:0;s:7:\"signkey\";s:0:\"\";s:5:\"mchid\";s:0:\"\";}s:4:\"line\";a:2:{s:6:\"switch\";b:0;s:7:\"message\";s:0:\"\";}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"3\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";a:1:{s:18:\"wechat_card_manage\";s:18:\"wechat_card_manage\";}s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"2\";s:7:\"menuset\";s:0:\"\";}'),
('accesstoken:3','a:2:{s:5:\"token\";s:138:\"FSfchb4zkaLVK5jDcXqHdM8Z8f-tcchp_1CcLgUY_l6DJyiCl3_BWJizSu1LiCqWFK6fwmKOVg_pNN7zIXbDkbHb1DkKb1Mjc342ZVZv-XAkWpjnA5Qt_ORVLpBLGJujEWPgABAYQJ\";s:6:\"expire\";i:1477019068;}'),
('jsticket:3','a:2:{s:6:\"ticket\";s:86:\"sM4AOVdWfPE4DxkXGEs8VJVJet_1Uw8VU6kSS2gSBRv-2o0FggGSpC5zqr10fkuC9Ga1t0GWzMykIXRcbsVdLQ\";s:6:\"expire\";i:1477019068;}'),
('unimodules:3:1','a:15:{s:5:\"basic\";a:19:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:4:\"news\";a:19:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"music\";a:19:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:7:\"userapi\";a:19:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:6:\"config\";a:0:{}s:7:\"enabled\";i:1;s:9:\"isdisplay\";i:1;}s:8:\"recharge\";a:19:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"custom\";a:19:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"images\";a:19:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"video\";a:19:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"voice\";a:19:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:5:\"chats\";a:19:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:6:\"wxcard\";a:19:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:9:\"paycenter\";a:19:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:9:\"paycenter\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:9:\"收银台\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:9:\"收银台\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:7:\"enabled\";i:1;s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:10:\"we7_doctor\";a:19:{s:3:\"mid\";s:2:\"19\";s:4:\"name\";s:10:\"we7_doctor\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:6:\"医生\";s:7:\"version\";s:3:\"0.1\";s:7:\"ability\";s:66:\"医生信息管理，包括增、删、改、查、列表等功能\";s:6:\"author\";s:8:\"Garfield\";s:3:\"url\";s:18:\"http://bbs.we7.cc/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:11:\"unsubscribe\";i:9;s:2:\"qr\";i:10;s:5:\"trace\";i:11;s:5:\"click\";i:12;s:4:\"view\";i:13;s:14:\"merchant_order\";}s:7:\"handles\";a:12:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:10:\"shortvideo\";i:4;s:8:\"location\";i:5;s:4:\"link\";i:6;s:9:\"subscribe\";i:7;s:2:\"qr\";i:8;s:5:\"trace\";i:9;s:5:\"click\";i:10;s:14:\"merchant_order\";i:11;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:7:\"enabled\";s:1:\"1\";s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:13:\"ewei_shopping\";a:19:{s:3:\"mid\";s:2:\"20\";s:4:\"name\";s:13:\"ewei_shopping\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:9:\"微商城\";s:7:\"version\";s:5:\"6.9.6\";s:7:\"ability\";s:9:\"微商城\";s:6:\"author\";s:20:\"WeEngine Team & ewei\";s:3:\"url\";s:0:\"\";s:8:\"settings\";s:1:\"2\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:7:\"enabled\";s:1:\"1\";s:6:\"config\";a:0:{}s:9:\"isdisplay\";i:1;}s:4:\"core\";a:5:{s:5:\"title\";s:24:\"系统事件处理模块\";s:4:\"name\";s:4:\"core\";s:8:\"issystem\";i:1;s:7:\"enabled\";i:1;s:9:\"isdisplay\";i:0;}}'),
('unicount:3','s:1:\"1\";'),
('uniaccount:0','a:6:{s:4:\"type\";b:0;s:3:\"uid\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:6:\"groups\";a:0:{}s:10:\"grouplevel\";b:0;}'),
('unisetting:0','b:0;'),
('userbasefields','a:44:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";}'),
('usersfields','a:45:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";}');


DROP TABLE IF EXISTS ims_core_cron;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_core_cron_record;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_core_menu;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(60) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

INSERT INTO ims_core_menu VALUES 
('1','0','基础设置','platform','','fa fa-cog','','0','url','1','1',''),
('2','1','基本功能','platform','','','','0','url','1','1','platform_basic_function'),
('3','2','文字回复','platform','./index.php?c=platform&a=reply&m=basic','fa fa-plus','./index.php?c=platform&a=reply&do=post&m=basic','0','url','1','1','platform_reply_basic'),
('4','2','图文回复','platform','./index.php?c=platform&a=reply&m=news','fa fa-plus','./index.php?c=platform&a=reply&do=post&m=news','0','url','1','1','platform_reply_news'),
('5','2','音乐回复','platform','./index.php?c=platform&a=reply&m=music','fa fa-plus','./index.php?c=platform&a=reply&do=post&m=music','0','url','1','1','platform_reply_music'),
('6','2','图片回复','platform','./index.php?c=platform&a=reply&m=images','fa fa-plus','./index.php?c=platform&a=reply&do=post&m=images','0','url','1','1','platform_reply_images'),
('7','2','语音回复','platform','./index.php?c=platform&a=reply&m=voice','fa fa-plus','./index.php?c=platform&a=reply&do=post&m=voice','0','url','1','1','platform_reply_voice'),
('8','2','视频回复','platform','./index.php?c=platform&a=reply&m=video','fa fa-plus','./index.php?c=platform&a=reply&do=post&m=video','0','url','1','1','platform_reply_video'),
('9','2','微信卡券回复','platform','./index.php?c=platform&a=reply&m=wxcard','fa fa-plus','./index.php?c=platform&a=reply&do=post&m=wxcard','0','url','1','1','platform_reply_wxcard'),
('10','2','自定义接口回复','platform','./index.php?c=platform&a=reply&m=userapi','fa fa-plus','./index.php?c=platform&a=reply&do=post&m=userapi','0','url','1','1','platform_reply_userapi'),
('11','2','系统回复','platform','./index.php?c=platform&a=special&do=display&','','','0','url','1','1','platform_reply_system'),
('12','1','高级功能','platform','','','','0','url','1','1','platform_high_function'),
('13','12','常用服务接入','platform','./index.php?c=platform&a=service&do=switch&','','','0','url','1','1','platform_service'),
('14','12','自定义菜单','platform','./index.php?c=platform&a=menu&','','','0','url','1','1','platform_menu'),
('15','12','特殊消息回复','platform','./index.php?c=platform&a=special&do=message&','','','0','url','1','1','platform_special'),
('16','12','二维码管理','platform','./index.php?c=platform&a=qr&','','','0','url','1','1','platform_qr'),
('17','12','多客服接入','platform','./index.php?c=platform&a=reply&m=custom','','','0','url','1','1','platform_reply_custom'),
('18','12','长链接二维码','platform','./index.php?c=platform&a=url2qr&','','','0','url','1','1','platform_url2qr'),
('19','1','数据统计','platform','','','','0','url','1','1','platform_stat'),
('20','19','聊天记录','platform','./index.php?c=platform&a=stat&do=history&','','','0','url','1','1','platform_stat_history'),
('21','19','回复规则使用情况','platform','./index.php?c=platform&a=stat&do=rule&','','','0','url','1','1','platform_stat_rule'),
('22','19','关键字命中情况','platform','./index.php?c=platform&a=stat&do=keyword&','','','0','url','1','1','platform_stat_keyword'),
('23','19','参数','platform','./index.php?c=platform&a=stat&do=setting&','','','0','url','1','1','platform_stat_setting'),
('24','0','微站功能','site','','fa fa-life-bouy','','0','url','1','1',''),
('25','24','微站管理','site','','','','0','url','1','1','site_manage'),
('26','25','站点管理','site','./index.php?c=site&a=multi&do=display&','fa fa-plus','./index.php?c=site&a=multi&do=post&','0','url','1','1','site_multi_display'),
('27','25','站点添加/编辑','site','','','','0','permission','0','1','site_multi_post'),
('28','25','站点删除','site','','','','0','permission','0','1','site_multi_del'),
('29','25','模板管理','site','./index.php?c=site&a=style&do=template&','','','0','url','1','1','site_style_template'),
('30','25','模块模板扩展','site','./index.php?c=site&a=style&do=module&','','','0','url','1','1','site_style_module'),
('31','24','特殊页面管理','site','','','','0','url','1','1','site_special_page'),
('32','31','会员中心','site','./index.php?c=site&a=editor&do=uc&','','','0','url','1','1','site_editor_uc'),
('33','31','专题页面','site','./index.php?c=site&a=editor&do=page&','fa fa-plus','./index.php?c=site&a=editor&do=design&','0','url','1','1','site_editor_page'),
('34','24','功能组件','site','','','','0','url','1','1','site_article'),
('35','34','分类设置','site','./index.php?c=site&a=category&','','','0','url','1','1','site_category'),
('36','34','文章管理','site','./index.php?c=site&a=article&','','','0','url','1','1','site_article'),
('37','0','粉丝营销','mc','','fa fa-gift','','0','url','1','1',''),
('38','37','粉丝管理','mc','','','','0','url','1','1','mc_fans_manage'),
('39','38','粉丝分组','mc','./index.php?c=mc&a=fangroup&','','','0','url','1','1','mc_fangroup'),
('40','38','粉丝','mc','./index.php?c=mc&a=fans&','','','0','url','1','1','mc_fans'),
('41','37','会员中心','mc','','','','0','url','1','1','mc_members_manage'),
('42','41','会员中心关键字','mc','./index.php?c=platform&a=cover&do=mc&','','','0','url','1','1','platform_cover_mc'),
('43','41','会员','mc','./index.php?c=mc&a=member','fa fa-plus','./index.php?c=mc&a=member&do=add','0','url','1','1','mc_member'),
('44','41','会员组','mc','./index.php?c=mc&a=group&','','','0','url','1','1','mc_group'),
('45','37','会员卡管理','mc','','','','0','url','1','1','mc_card_manage'),
('46','45','会员卡关键字','mc','./index.php?c=platform&a=cover&do=card&','','','0','url','1','1','platform_cover_card'),
('47','45','会员卡管理','mc','./index.php?c=mc&a=card&do=manage','','','0','url','1','1','mc_card_manage'),
('48','45','会员卡设置','mc','./index.php?c=mc&a=card&do=editor','','','0','url','1','1','mc_card_editor'),
('49','45','会员卡其他功能','mc','./index.php?c=mc&a=card&do=other','','','0','url','1','1','mc_card_other'),
('50','37','积分兑换','mc','','','','0','url','1','1','activity_discount_manage'),
('51','50','卡券兑换','mc','./index.php?c=activity&a=exchange&do=display&type=coupon','','','0','url','1','1','activity_coupon_exchange'),
('52','50','真实物品兑换','mc','./index.php?c=activity&a=exchange&do=display&type=goods','','','0','url','1','1','activity_goods_display'),
('53','37','微信素材&群发','mc','','','','0','url','1','1','material_manage'),
('54','53','素材&群发','mc','./index.php?c=material&a=display','','','0','url','1','1','material_display'),
('55','53','定时群发','mc','./index.php?c=material&a=mass','','','0','url','1','1','material_mass'),
('56','37','卡券管理','mc','','','','0','url','1','1','wechat_card_manage'),
('57','56','卡券列表','mc','./index.php?c=activity&a=coupon&do=display','','','0','url','1','1','activity_coupon_display'),
('58','56','卡券营销','mc','index.php?c=activity&a=market','','','0','url','1','1','activity_coupon_market'),
('59','56','卡券核销','mc','./index.php?c=activity&a=consume&do=display&status=2','','','0','url','1','1','activity_consume_coupon'),
('60','37','工作台','mc','','','','0','url','1','1','paycenter_manage'),
('61','60','门店列表','mc','./index.php?c=activity&a=store','','','0','url','1','1','activity_store_list'),
('62','60','店员列表','mc','./index.php?c=activity&a=clerk','','','0','url','1','1','activity_clerk_list'),
('63','60','微信刷卡收款','mc','./index.php?c=paycenter&a=wxmicro&do=pay','','','0','url','1','1','paycenter_wxmicro_pay'),
('64','60','店员操作关键字','mc','./index.php?c=platform&a=cover&do=clerk','','','0','url','1','1','paycenter_clerk'),
('65','37','统计中心','mc','','','','0','url','1','1','stat_center'),
('66','65','会员积分统计','mc','./index.php?c=stat&a=credit1','','','0','url','1','1','stat_credit1'),
('67','65','会员余额统计','mc','./index.php?c=stat&a=credit2','','','0','url','1','1','stat_credit2'),
('68','65','会员现金消费统计','mc','./index.php?c=stat&a=cash','','','0','url','1','1','stat_cash'),
('69','65','会员卡统计','mc','./index.php?c=stat&a=card','','','0','url','1','1','stat_card'),
('70','65','收银台收款统计','mc','./index.php?c=stat&a=paycenter','','','0','url','1','1','stat_paycenter'),
('71','0','功能选项','setting','','fa fa-umbrella','','0','url','1','1',''),
('72','71','公众号选项','setting','','','','0','url','1','1','account_setting'),
('73','72','支付参数','setting','./index.php?c=profile&a=payment&','','','0','url','1','1','profile_payment'),
('74','72','借用 oAuth 权限','setting','./index.php?c=mc&a=passport&do=oauth&','','','0','url','1','1','mc_passport_oauth'),
('75','72','借用 JS 分享权限','setting','./index.php?c=profile&a=jsauth&','','','0','url','1','1','profile_jsauth'),
('76','72','会员字段管理','setting','./index.php?c=mc&a=fields','','','0','url','1','1','mc_fields'),
('77','72','微信通知设置','setting','./index.php?c=mc&a=tplnotice','','','0','url','1','1','mc_tplnotice'),
('78','72','工作台菜单设置','setting','./index.php?c=profile&a=deskmenu','','','0','url','1','1','profile_deskmenu'),
('79','72','会员扩展功能','setting','./index.php?c=mc&a=plugin','','','0','url','1','1','mc_plugin'),
('80','71','会员及粉丝选项','setting','','','','0','url','1','1','mc_setting'),
('81','80','积分设置','setting','./index.php?c=mc&a=credit&','','','0','url','1','1','mc_credit'),
('82','80','注册设置','setting','./index.php?c=mc&a=passport&do=passport&','','','0','url','1','1','mc_passport_passport'),
('83','80','粉丝同步设置','setting','./index.php?c=mc&a=passport&do=sync&','','','0','url','1','1','mc_passport_sync'),
('84','80','UC站点整合','setting','./index.php?c=mc&a=uc&','','','0','url','1','1','mc_uc'),
('85','80','邮件通知参数','setting','./index.php?c=profile&a=notify','','','0','url','1','1','profile_notify'),
('86','71','其他功能选项','setting','','','','0','url','1','1','others_setting'),
('87','0','扩展功能','ext','','fa fa-cubes','','0','url','1','1',''),
('88','87','管理','ext','','','','0','url','1','1',''),
('89','88','扩展功能管理','ext','./index.php?c=profile&a=module&','','','0','url','1','1','profile_module');


DROP TABLE IF EXISTS ims_core_paylog;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

INSERT INTO ims_core_paylog VALUES 
('1','','3','3','1','','1','20.00','0','ewei_shopping','','0','0','','20.00',''),
('2','','3','3','1','','3','20.00','0','ewei_shopping','','0','0','','20.00',''),
('3','wechat','3','3','1','2016101115423600001341628124','4','0.00','0','ewei_shopping','','0','0','0','0.00',''),
('4','wechat','3','3','1','2016101115470100001328282727','5','0.10','0','ewei_shopping','','0','0','0','0.10',''),
('5','wechat','3','3','1','2016101115502300001354615642','6','0.10','1','ewei_shopping','a:1:{s:14:\"transaction_id\";s:28:\"4002472001201610116397667056\";}','0','0','0','0.10',''),
('6','','3','3','3','','7','0.10','0','ewei_shopping','','0','0','','0.10',''),
('7','','3','3','4','','9','0.10','0','ewei_shopping','','0','0','','0.10',''),
('8','wechat','3','3','1','2016101116323900001302188422','10','0.00','0','ewei_shopping','','0','0','0','0.00',''),
('9','wechat','3','3','1','2016101116331500001322426244','11','0.10','0','ewei_shopping','','0','0','0','0.10',''),
('10','','3','3','3','','12','0.40','0','ewei_shopping','','0','0','','0.40',''),
('11','wechat','3','3','1','2016101310014500001344320202','13','0.10','0','ewei_shopping','','0','0','0','0.10',''),
('12','','3','3','7','','20161013162758447702','10.00','0','recharge','','0','0','','10.00',''),
('13','wechat','3','3','1','2016101409592500001328832686','14','0.10','0','ewei_shopping','','0','0','0','0.10',''),
('14','wechat','3','3','1','2016101410020100000546966764','20161014100124746216','1.00','0','recharge','','0','0','0','1.00',''),
('15','','3','3','10','','15','0.10','0','ewei_shopping','','0','0','','0.10',''),
('16','wechat','3','3','13','2016101913583600002087160968','16','0.10','0','ewei_shopping','','0','0','0','0.10',''),
('17','','3','3','3','','18','0.10','0','ewei_shopping','','0','0','','0.10',''),
('18','wechat','3','3','13','2016101914130600002041394462','17','2.00','0','ewei_shopping','','0','0','0','2.00',''),
('19','','3','3','13','','19','0.10','0','ewei_shopping','','0','0','','0.10',''),
('20','','3','3','3','','20','0.10','0','ewei_shopping','','0','0','','0.10',''),
('21','credit','3','3','13','2016101915023700002085802388','21','0.10','0','ewei_shopping','','0','0','0','0.10',''),
('22','credit','3','3','3','2016101916374800002076601281','22','0.10','0','ewei_shopping','','0','0','0','0.10',''),
('23','wechat','3','3','16','2016102017205300000540277042','20161020172085844284','0.10','0','recharge','','0','0','0','0.10',''),
('24','wechat','3','3','16','2016102017211800000517048483','20161020172186672646','0.10','0','recharge','','0','0','0','0.10','');


DROP TABLE IF EXISTS ims_core_performance;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_core_queue;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_core_resource;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_core_sendsms_log;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_core_sessions;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO ims_core_sessions VALUES 
('15204c5a99deeb44b1c58ad55e9a760c','0','124.74.40.222','acid|N;uniacid|i:0;token|a:3:{s:4:\"VSaX\";i:1476955510;s:4:\"V25k\";i:1476955512;s:4:\"Tc4j\";i:1476955514;}','1476959114'),
('2f10cf50949c6bd807f13af20a2e82d3','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:2:{s:4:\"a6ud\";i:1477013395;s:4:\"ScaA\";i:1477013395;}','1477016995'),
('aada0207be023c7d27644aee3be485dc','0','124.74.40.222','acid|N;uniacid|i:0;token|a:1:{s:4:\"N4t2\";i:1477013500;}','1477017100'),
('846d952d10437d546ae2589eb1826e05','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"ZzeB\";i:1477010719;s:4:\"CCcf\";i:1477010719;s:4:\"nteT\";i:1477010719;s:4:\"z9hD\";i:1477010735;s:4:\"A8mU\";i:1477010756;s:4:\"IYYG\";i:1477010761;}dest_url|s:75:\"http%3A%2F%2Fwx.purui.cn%2Fkm%2Fapp%2Findex.php%3Fi%3D3%26c%3Dmc%26a%3Dhome\";oauth_openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";oauth_acid|s:1:\"3\";openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";uid|s:2:\"16\";','1477014361'),
('fbcce79f496f8828b279fadaa3e22eeb','0','101.226.125.104','acid|N;uniacid|i:0;token|a:1:{s:4:\"gnki\";i:1477010675;}','1477014275'),
('b72166426a570b113ff82dd73e57d373','3','101.226.51.229','acid|s:1:\"3\";uniacid|i:3;token|a:1:{s:4:\"zK4Z\";i:1477010679;}','1477014279'),
('ae0540157d34e16135f791552eb83617','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"cLt0\";i:1477010779;s:4:\"mKe0\";i:1477010780;s:4:\"ZUM4\";i:1477010780;s:4:\"PhhZ\";i:1477010780;s:4:\"bpn1\";i:1477010956;s:4:\"MG9t\";i:1477010958;}dest_url|s:75:\"http%3A%2F%2Fwx.purui.cn%2Fkm%2Fapp%2Findex.php%3Fi%3D3%26c%3Dmc%26a%3Dhome\";oauth_openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";oauth_acid|s:1:\"3\";openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";uid|s:2:\"16\";','1477014558'),
('71cfc7b664de28afc33458e093fba4a2','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"Zc40\";i:1477011745;s:4:\"kRxj\";i:1477011745;s:4:\"xJd5\";i:1477011745;s:4:\"UOG4\";i:1477011746;s:4:\"M3Gw\";i:1477011746;s:4:\"IEbB\";i:1477011746;}dest_url|s:75:\"http%3A%2F%2Fwx.purui.cn%2Fkm%2Fapp%2Findex.php%3Fi%3D3%26c%3Dmc%26a%3Dhome\";oauth_openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";oauth_acid|s:1:\"3\";openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";uid|s:2:\"16\";','1477015346'),
('86c6f3702555bc93c6fe2e5a0cfef4e3','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:1:{s:4:\"zP9T\";i:1477012790;}dest_url|s:75:\"http%3A%2F%2Fwx.purui.cn%2Fkm%2Fapp%2Findex.php%3Fi%3D3%26c%3Dmc%26a%3Dhome\";oauth_openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";oauth_acid|s:1:\"3\";openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";uid|s:2:\"16\";','1477016390'),
('65fbd7ca66a4a8e6a5dd39eacd55b8b6','3','180.153.214.199','acid|s:1:\"3\";uniacid|i:3;token|a:1:{s:4:\"swga\";i:1477011524;}','1477015124'),
('d50d34ae7d1c23abaa7e20b9247316e0','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"uT0r\";i:1477013436;s:4:\"mZwB\";i:1477013438;s:4:\"cMHX\";i:1477013453;s:4:\"TW7B\";i:1477013455;s:4:\"cxOt\";i:1477013456;s:4:\"K2ZS\";i:1477013457;}dest_url|s:75:\"http%3A%2F%2Fwx.purui.cn%2Fkm%2Fapp%2Findex.php%3Fi%3D3%26c%3Dmc%26a%3Dhome\";oauth_openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";oauth_acid|s:1:\"3\";openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";uid|s:2:\"16\";','1477017057'),
('27896650a418f8bbe8fa14d09c243035','0','124.74.40.222','acid|N;uniacid|i:0;token|a:6:{s:4:\"g0K6\";i:1476954385;s:4:\"iF1r\";i:1476954387;s:4:\"yc9h\";i:1476954389;s:4:\"bx11\";i:1476954390;s:4:\"TIRo\";i:1476954395;s:4:\"W222\";i:1476954398;}','1476957998'),
('ff1c578921e1e88a8d254bf3a76a7108','0','140.207.124.105','acid|N;uniacid|i:0;token|a:1:{s:4:\"q61o\";i:1476954562;}','1476958162'),
('b82ce82e760e47f91a9ec9e2bdcc1ee2','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:4:{s:4:\"ql2b\";i:1476954595;s:4:\"M0Zx\";i:1476954596;s:4:\"czz0\";i:1476954596;s:4:\"Dz61\";i:1476954606;}dest_url|s:102:\"http%3A%2F%2Fwx.purui.cn%2Fkm%2Fapp%2Findex.php%3Fi%3D3%26c%3Dmc%26a%3Dhome%26wxref%3Dmp.weixin.qq.com\";oauth_openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";oauth_acid|s:1:\"3\";openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";uid|s:2:\"16\";','1476958206'),
('4f435b1519b67539a84748a24837ef04','0','124.74.40.222','acid|N;uniacid|i:0;token|a:1:{s:4:\"RhYx\";i:1476952600;}','1476956200'),
('694ee5c8d2b6a0a79dfb9eff251b99cb','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"BNq5\";i:1476953459;s:4:\"T8B8\";i:1476953462;s:4:\"r2gR\";i:1476953464;s:4:\"TC2b\";i:1476953466;s:4:\"UPrI\";i:1476953467;s:4:\"df54\";i:1476953474;}dest_url|s:75:\"http%3A%2F%2Fwx.purui.cn%2Fkm%2Fapp%2Findex.php%3Fi%3D3%26c%3Dmc%26a%3Dhome\";oauth_openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";oauth_acid|s:1:\"3\";openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";uid|s:2:\"16\";','1476957074'),
('99957be1f41c0ae4da830d9a06931e6d','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"M6a6\";i:1476955228;s:4:\"F18L\";i:1476955244;s:4:\"eI6G\";i:1476955253;s:4:\"zcln\";i:1476955253;s:4:\"s08g\";i:1476955257;s:4:\"LQ4Y\";i:1476955259;}dest_url|s:75:\"http%3A%2F%2Fwx.purui.cn%2Fkm%2Fapp%2Findex.php%3Fi%3D3%26c%3Dmc%26a%3Dhome\";oauth_openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";oauth_acid|s:1:\"3\";openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";uid|s:2:\"16\";','1476958859'),
('d4d08257d67f37567b90475b1d299211','3','180.153.214.152','acid|s:1:\"3\";uniacid|i:3;token|a:1:{s:4:\"jQS2\";i:1476952740;}','1476956340'),
('e8ce9b737280500c4a8f4246f9923143','0','180.153.206.23','acid|N;uniacid|i:0;token|a:1:{s:4:\"WHT8\";i:1476953413;}','1476957013'),
('9e330434259f6c6f102ce0cdd739f71a','0','101.226.65.102','acid|N;uniacid|i:0;token|a:1:{s:4:\"I166\";i:1476953420;}','1476957020'),
('61aed023dfcdf1ef75e076e06dfd924e','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"dEVh\";i:1476953931;s:4:\"GTTM\";i:1476953943;s:4:\"hp5O\";i:1476953945;s:4:\"E66k\";i:1476953948;s:4:\"Rlz8\";i:1476953950;s:4:\"B0M8\";i:1476953959;}dest_url|s:102:\"http%3A%2F%2Fwx.purui.cn%2Fkm%2Fapp%2Findex.php%3Fi%3D3%26c%3Dmc%26a%3Dhome%26wxref%3Dmp.weixin.qq.com\";oauth_openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";oauth_acid|s:1:\"3\";openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";uid|s:2:\"16\";','1476957559'),
('ff5eaf6f0941ffcd475d9750372ff57b','3','61.151.226.189','acid|s:1:\"3\";uniacid|i:3;token|a:1:{s:4:\"e5u8\";i:1476953541;}','1476957141'),
('4a7d47521a2764f4cfc862430a30b74f','0','180.153.214.198','acid|N;uniacid|i:0;token|a:1:{s:4:\"CS0W\";i:1476953601;}','1476957201'),
('e839076051c590bb91a29a343ec3c53e','0','180.153.201.66','acid|N;uniacid|i:0;token|a:1:{s:4:\"x0Nr\";i:1476953616;}','1476957216'),
('e1e3ee49fc359da36265b21bf2f870e8','3','124.74.40.222','acid|s:1:\"3\";uniacid|i:3;token|a:6:{s:4:\"zx2Y\";i:1476955278;s:4:\"fmFM\";i:1476955296;s:4:\"Fu4A\";i:1476955298;s:4:\"HF4C\";i:1476955302;s:4:\"UMnm\";i:1476955303;s:4:\"ngIF\";i:1476955304;}dest_url|s:102:\"http%3A%2F%2Fwx.purui.cn%2Fkm%2Fapp%2Findex.php%3Fi%3D3%26c%3Dmc%26a%3Dhome%26wxref%3Dmp.weixin.qq.com\";oauth_openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";oauth_acid|s:1:\"3\";openid|s:28:\"oItv0twZifvHhKZwolVIbeG4NR6Q\";uid|s:2:\"16\";','1476958904'),
('782ed9fe31a303082da9f87b76323c8a','3','140.207.124.105','acid|s:1:\"3\";uniacid|i:3;token|a:1:{s:4:\"q5qq\";i:1476955432;}','1476959032'),
('cb7e4a28b4cad7dbd31cf3d49b2d449c','3','180.153.206.17','acid|s:1:\"3\";uniacid|i:3;token|a:1:{s:4:\"x0a9\";i:1476955460;}','1476959060'),
('ed318bfef4141932a7a50d6e50551ca7','0','124.74.40.222','acid|N;uniacid|i:0;token|a:1:{s:4:\"lq0Q\";i:1477012874;}','1477016474'),
('c5b2cf7fe149c3653f817c1a4310dc54','0','101.226.65.105','acid|N;uniacid|i:0;token|a:1:{s:4:\"PfXb\";i:1477012905;}','1477016505'),
('3600dfa79b55e2d28159186c69561953','3','180.153.206.16','acid|s:1:\"3\";uniacid|i:3;token|a:2:{s:4:\"bScb\";i:1477011927;s:4:\"db0i\";i:1477011927;}','1477015527'),
('8d5720b3d91a4eb2aa0cad5e55d3acf6','0','101.226.66.192','acid|N;uniacid|i:0;token|a:1:{s:4:\"C48G\";i:1477012912;}','1477016512'),
('069be5f4d38f19eaa78ab5e52cc9a130','0','124.74.40.222','acid|N;uniacid|i:0;token|a:1:{s:4:\"SPMR\";i:1477012920;}','1477016520'),
('550bc9f6bcfacbd9c2de6a81a1153baf','0','124.74.40.222','acid|N;uniacid|i:0;token|a:1:{s:4:\"Dwbl\";i:1477013001;}','1477016601');


DROP TABLE IF EXISTS ims_core_settings;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO ims_core_settings VALUES 
('copyright','a:3:{s:6:\"status\";s:1:\"1\";s:10:\"verifycode\";s:1:\"0\";s:6:\"reason\";s:6:\"测试\";}'),
('authmode','i:1;'),
('close','a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}'),
('register','a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}'),
('platform','a:5:{s:5:\"token\";s:32:\"I6knND1knvZSzn7N7dIxikOkN7s71iSs\";s:14:\"encodingaeskey\";s:43:\"OL4lf4lCpSFP8ZfPLFS0s244KSSsKPP8l4P0sks33Hh\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}'),
('site','a:5:{s:3:\"key\";s:5:\"69384\";s:5:\"token\";s:32:\"c2d74198b6371f73947a09da7c2bde0d\";s:3:\"url\";s:21:\"http://wx.purui.cn/km\";s:7:\"version\";s:3:\"0.8\";s:15:\"profile_perfect\";b:1;}'),
('cloudip','a:2:{s:2:\"ip\";s:13:\"218.60.33.139\";s:6:\"expire\";i:1477215185;}'),
('sms.info','a:3:{s:3:\"key\";s:5:\"69384\";s:8:\"sms_sign\";a:0:{}s:9:\"sms_count\";i:0;}'),
('module_receive_ban','a:2:{s:12:\"cgc_gzredbag\";s:12:\"cgc_gzredbag\";s:10:\"we7_doctor\";s:10:\"we7_doctor\";}'),
('basic','a:1:{s:8:\"template\";s:7:\"default\";}');


DROP TABLE IF EXISTS ims_coupon;
CREATE TABLE `ims_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `logo_url` varchar(150) NOT NULL,
  `code_type` tinyint(3) unsigned NOT NULL,
  `brand_name` varchar(15) NOT NULL,
  `title` varchar(15) NOT NULL,
  `sub_title` varchar(20) NOT NULL,
  `color` varchar(15) NOT NULL,
  `notice` varchar(15) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_info` varchar(200) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `use_custom_code` tinyint(3) NOT NULL,
  `bind_openid` tinyint(3) unsigned NOT NULL,
  `can_share` tinyint(3) unsigned NOT NULL,
  `can_give_friend` tinyint(3) unsigned NOT NULL,
  `get_limit` tinyint(3) unsigned NOT NULL,
  `service_phone` varchar(20) NOT NULL,
  `extra` varchar(1000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_selfconsume` tinyint(3) unsigned NOT NULL,
  `promotion_url_name` varchar(10) NOT NULL,
  `promotion_url` varchar(100) NOT NULL,
  `promotion_url_sub_title` varchar(10) NOT NULL,
  `source` tinyint(3) unsigned NOT NULL,
  `dosage` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_coupon_activity;
CREATE TABLE `ims_coupon_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `msg_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` int(3) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `coupons` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `members` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_coupon_groups;
CREATE TABLE `ims_coupon_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `couponid` varchar(255) NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_coupon_location;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_coupon_modules;
CREATE TABLE `ims_coupon_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_coupon_record;
CREATE TABLE `ims_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `friend_openid` varchar(50) NOT NULL,
  `givebyfriend` tinyint(3) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `usetime` int(10) unsigned NOT NULL,
  `status` tinyint(3) NOT NULL,
  `clerk_name` varchar(15) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `grantmodule` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `card_id` (`card_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_coupon_store;
CREATE TABLE `ims_coupon_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `couponid` varchar(255) NOT NULL,
  `storeid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `couponid` (`couponid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_cover_reply;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO ims_cover_reply VALUES 
('1','1','0','7','mc','','进入个人中心','','','./index.php?c=mc&a=home&i=1'),
('2','1','1','8','site','','进入首页','','','./index.php?c=home&i=1&t=1');


DROP TABLE IF EXISTS ims_custom_reply;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_gzredbag_count;
CREATE TABLE `ims_gzredbag_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `total_count` int(10) NOT NULL DEFAULT '0' COMMENT '总次数',
  `createtime` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='红包总次数';



DROP TABLE IF EXISTS ims_images_reply;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_card;
CREATE TABLE `ims_mc_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `color` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `format_type` tinyint(3) unsigned NOT NULL,
  `format` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `fields` varchar(1000) NOT NULL,
  `snpos` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `business` text NOT NULL,
  `discount_type` tinyint(3) unsigned NOT NULL,
  `discount` varchar(3000) NOT NULL,
  `grant` varchar(3000) NOT NULL,
  `grant_rate` varchar(20) NOT NULL,
  `offset_rate` int(10) unsigned NOT NULL,
  `offset_max` int(10) NOT NULL,
  `nums_status` tinyint(3) unsigned NOT NULL,
  `nums_text` varchar(15) NOT NULL,
  `nums` varchar(1000) NOT NULL,
  `times_status` tinyint(3) unsigned NOT NULL,
  `times_text` varchar(15) NOT NULL,
  `times` varchar(1000) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `recommend_status` tinyint(3) unsigned NOT NULL,
  `sign_status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_card_care;
CREATE TABLE `ims_mc_card_care` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit2` int(10) unsigned NOT NULL,
  `couponid` int(10) unsigned NOT NULL,
  `granttime` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `time` tinyint(3) unsigned NOT NULL,
  `show_in_card` tinyint(3) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  `sms_notice` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_card_credit_set;
CREATE TABLE `ims_mc_card_credit_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `sign` varchar(1000) NOT NULL,
  `share` varchar(500) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_card_members;
CREATE TABLE `ims_mc_card_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `openid` varchar(50) NOT NULL,
  `cid` int(10) NOT NULL,
  `cardsn` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_card_notices;
CREATE TABLE `ims_mc_card_notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_card_notices_unread;
CREATE TABLE `ims_mc_card_notices_unread` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_card_recommend;
CREATE TABLE `ims_mc_card_recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_card_record;
CREATE TABLE `ims_mc_card_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `tag` varchar(10) NOT NULL,
  `note` varchar(255) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_card_sign_record;
CREATE TABLE `ims_mc_card_sign_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `is_grant` tinyint(3) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_cash_record;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_chats_record;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ims_mc_chats_record VALUES 
('1','3','3','1','oItv0twZifvHhKZwolVIbeG4NR6Q','text','a:1:{s:7:\"content\";s:14:\"11111111111111\";}','1476413302');


DROP TABLE IF EXISTS ims_mc_credits_recharge;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO ims_mc_credits_recharge VALUES 
('3','3','16','oItv0twZifvHhKZwolVIbeG4NR6Q','20161020172085844284','','0.1','credit','0','0','1476955244','2'),
('4','3','16','oItv0twZifvHhKZwolVIbeG4NR6Q','20161020172186672646','','0.1','credit','0','0','1476955276','2');


DROP TABLE IF EXISTS ims_mc_credits_record;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_fans_groups;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ims_mc_fans_groups VALUES 
('1','3','3','a:6:{i:2;a:3:{s:2:\"id\";i:2;s:4:\"name\";s:9:\"星标组\";s:5:\"count\";i:0;}i:100;a:3:{s:2:\"id\";i:100;s:4:\"name\";s:12:\"公司用户\";s:5:\"count\";i:9;}i:101;a:3:{s:2:\"id\";i:101;s:4:\"name\";s:12:\"朋友用户\";s:5:\"count\";i:0;}i:102;a:3:{s:2:\"id\";i:102;s:4:\"name\";s:18:\"合作单位用户\";s:5:\"count\";i:0;}i:103;a:3:{s:2:\"id\";i:103;s:4:\"name\";s:12:\"近视手术\";s:5:\"count\";i:1;}i:104;a:3:{s:2:\"id\";i:104;s:4:\"name\";s:12:\"测试小组\";s:5:\"count\";i:2;}}');


DROP TABLE IF EXISTS ims_mc_fans_tag_mapping;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_groups;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO ims_mc_groups VALUES 
('1','1','默认会员组','0','1'),
('2','2','默认会员组','0','1'),
('3','3','默认会员组','0','1'),
('4','4','默认会员组','0','1');


DROP TABLE IF EXISTS ims_mc_handsel;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_mapping_fans;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  UNIQUE KEY `openid` (`openid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8;

INSERT INTO ims_mc_mapping_fans VALUES 
('3','0','3','3','','','','','0','0','0','','1476153223',''),
('6','0','3','6','oItv0t2HHE2ueKOo_T55SELzFCwU','','','','0','0','0','','1476175690',''),
('1009','3','3','16','oItv0twZifvHhKZwolVIbeG4NR6Q','健健','','uyNCYb6I','1','1476944749','0','YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0l0djB0d1ppZnZIaEtad29sVkliZUc0TlI2USI7czo4OiJuaWNrbmFtZSI7czo2OiLlgaXlgaUiO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjY6IuaZrumZgCI7czo4OiJwcm92aW5jZSI7czo2OiLkuIrmtbciO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTQyOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1EzYXVIZ3p3ek00NERLaWFrcnk2YThhQUJJbHdvaWNjSXpZQ05wWDJZeXRpYWRJYjlHQm5NOUVIbTdyTkpRaHdoRlNsOXZsMW1MaWJON0ZrdHI3ZGFHT0JNOHV5WEY4UWljZjkwMERYSEVaeEJ2aFEvMTMyIjtzOjE0OiJzdWJzY3JpYmVfdGltZSI7aToxNDc2OTQ0NzQ5O3M6NjoicmVtYXJrIjtzOjA6IiI7czo3OiJncm91cGlkIjtpOjA7czoxMDoidGFnaWRfbGlzdCI7YTowOnt9czo2OiJhdmF0YXIiO3M6MTQyOiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuL1EzYXVIZ3p3ek00NERLaWFrcnk2YThhQUJJbHdvaWNjSXpZQ05wWDJZeXRpYWRJYjlHQm5NOUVIbTdyTkpRaHdoRlNsOXZsMW1MaWJON0ZrdHI3ZGFHT0JNOHV5WEY4UWljZjkwMERYSEVaeEJ2aFEvMTMyIjt9','1476948174',''),
('1010','3','3','17','oItv0twLjT0XGLsonZswyQngfVdE','毛毛','','y1QnF0gs','1','1476061897','0','YToxNDp7czo5OiJzdWJzY3JpYmUiO2k6MTtzOjY6Im9wZW5pZCI7czoyODoib0l0djB0d0xqVDBYR0xzb25ac3d5UW5nZlZkRSI7czo4OiJuaWNrbmFtZSI7czo2OiLmr5vmr5siO3M6Mzoic2V4IjtpOjE7czo4OiJsYW5ndWFnZSI7czo1OiJ6aF9DTiI7czo0OiJjaXR5IjtzOjA6IiI7czo4OiJwcm92aW5jZSI7czo2OiLkuIrmtbciO3M6NzoiY291bnRyeSI7czo2OiLkuK3lm70iO3M6MTA6ImhlYWRpbWd1cmwiO3M6MTE3OiJodHRwOi8vd3gucWxvZ28uY24vbW1vcGVuLzNhM1F4TUhaOFl5d0NNYWxHZ2VxRjhZM0lhVWVieWlhZUNuNW1vdk5JS3NrYzdkbGxrbldiOVNybzF5eExwTGNSbGc3STFSUEJ6N3VORzRlcEQ1WGJ2QS8xMzIiO3M6MTQ6InN1YnNjcmliZV90aW1lIjtpOjE0NzYwNjE4OTc7czo2OiJyZW1hcmsiO3M6MDoiIjtzOjc6Imdyb3VwaWQiO2k6MDtzOjEwOiJ0YWdpZF9saXN0IjthOjA6e31zOjY6ImF2YXRhciI7czoxMTc6Imh0dHA6Ly93eC5xbG9nby5jbi9tbW9wZW4vM2EzUXhNSFo4WXl3Q01hbEdnZXFGOFkzSWFVZWJ5aWFlQ241bW92TklLc2tjN2RsbGtuV2I5U3JvMXl4THBMY1JsZzdJMVJQQno3dU5HNGVwRDVYYnZBLzEzMiI7fQ==','1477012939','');


DROP TABLE IF EXISTS ims_mc_mapping_ucenter;
CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_mass_record;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mc_member_address;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO ims_mc_member_address VALUES 
('4','3','10','郭健','18656506404','','上海市','','黄浦区','赶过来集合','1'),
('2','3','3','郭健','18656506404','','北京市','北京辖区','东城区','啦啦啦啦啦了','1');


DROP TABLE IF EXISTS ims_mc_member_fields;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

INSERT INTO ims_mc_member_fields VALUES 
('1','2','1','真实姓名','1','0'),
('2','2','2','昵称','1','1'),
('3','2','3','头像','1','1'),
('4','2','4','QQ号','1','0'),
('5','2','5','手机号码','1','0'),
('6','2','6','VIP级别','1','0'),
('7','2','7','性别','1','0'),
('8','2','8','出生生日','1','0'),
('9','2','9','星座','1','0'),
('10','2','10','生肖','1','0'),
('11','2','11','固定电话','1','0'),
('12','2','12','证件号码','1','0'),
('13','2','13','学号','1','0'),
('14','2','14','班级','1','0'),
('15','2','15','邮寄地址','1','0'),
('16','2','16','邮编','1','0'),
('17','2','17','国籍','1','0'),
('18','2','18','居住地址','1','0'),
('19','2','19','毕业学校','1','0'),
('20','2','20','公司','1','0'),
('21','2','21','学历','1','0'),
('22','2','22','职业','1','0'),
('23','2','23','职位','1','0'),
('24','2','24','年收入','1','0'),
('25','2','25','情感状态','1','0'),
('26','2','26',' 交友目的','1','0'),
('27','2','27','血型','1','0'),
('28','2','28','身高','1','0'),
('29','2','29','体重','1','0'),
('30','2','30','支付宝帐号','1','0'),
('31','2','31','MSN','1','0'),
('32','2','32','电子邮箱','1','0'),
('33','2','33','阿里旺旺','1','0'),
('34','2','34','主页','1','0'),
('35','2','35','自我介绍','1','0'),
('36','2','36','兴趣爱好','1','0'),
('37','3','1','真实姓名','1','0'),
('38','3','2','昵称','0','1'),
('39','3','3','头像','0','1'),
('40','3','4','QQ号','0','0'),
('41','3','5','手机号码','1','0'),
('42','3','6','VIP级别','0','0'),
('43','3','7','性别','0','0'),
('44','3','8','出生生日','0','0'),
('45','3','9','星座','0','0'),
('46','3','10','生肖','0','0'),
('47','3','11','固定电话','0','0'),
('48','3','12','证件号码','0','0'),
('49','3','13','学号','0','0'),
('50','3','14','班级','0','0'),
('51','3','15','邮寄地址','0','0'),
('52','3','16','邮编','0','0'),
('53','3','17','国籍','0','0'),
('54','3','18','居住地址','0','0'),
('55','3','19','毕业学校','0','0'),
('56','3','20','公司','1','0'),
('57','3','21','学历','0','0'),
('58','3','22','职业','0','0'),
('59','3','23','职位','0','0'),
('60','3','24','年收入','0','0'),
('61','3','25','情感状态','0','0'),
('62','3','26',' 交友目的','0','0'),
('63','3','27','血型','0','0'),
('64','3','28','身高','0','0'),
('65','3','29','体重','0','0'),
('66','3','30','支付宝帐号','0','0'),
('67','3','31','MSN','0','0'),
('68','3','32','电子邮箱','0','0'),
('69','3','33','阿里旺旺','0','0'),
('70','3','34','主页','0','0'),
('71','3','35','自我介绍','0','0'),
('72','3','36','兴趣爱好','0','0'),
('73','4','1','真实姓名','1','0'),
('74','4','2','昵称','1','1'),
('75','4','3','头像','1','1'),
('76','4','4','QQ号','1','0'),
('77','4','5','手机号码','1','0'),
('78','4','6','VIP级别','1','0'),
('79','4','7','性别','1','0'),
('80','4','8','出生生日','1','0'),
('81','4','9','星座','1','0'),
('82','4','10','生肖','1','0'),
('83','4','11','固定电话','1','0'),
('84','4','12','证件号码','1','0'),
('85','4','13','学号','1','0'),
('86','4','14','班级','1','0'),
('87','4','15','邮寄地址','1','0'),
('88','4','16','邮编','1','0'),
('89','4','17','国籍','1','0'),
('90','4','18','居住地址','1','0'),
('91','4','19','毕业学校','1','0'),
('92','4','20','公司','1','0'),
('93','4','21','学历','1','0'),
('94','4','22','职业','1','0'),
('95','4','23','职位','1','0'),
('96','4','24','年收入','1','0'),
('97','4','25','情感状态','1','0'),
('98','4','26',' 交友目的','1','0'),
('99','4','27','血型','1','0'),
('100','4','28','身高','1','0'),
('101','4','29','体重','1','0'),
('102','4','30','支付宝帐号','1','0'),
('103','4','31','MSN','1','0'),
('104','4','32','电子邮箱','1','0'),
('105','4','33','阿里旺旺','1','0'),
('106','4','34','主页','1','0'),
('107','4','35','自我介绍','1','0'),
('108','4','36','兴趣爱好','1','0');


DROP TABLE IF EXISTS ims_mc_members;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO ims_mc_members VALUES 
('3','3','','','','','0','0.00','0.00','0.00','0.00','0.00','0.00','0','','','','','0','0','0','0','0','','','','','','','北京市北京辖区东城区啦啦啦啦啦了','','','','','','','','','','','','','','','','','','','','','',''),
('17','3','','24f5c934357b352e8240dff77f1526d5@we7.cc','e86af0d3ef27c38b9ab911305a7fe1a0','Bilabal5','3','0.00','0.00','0.00','0.00','0.00','0.00','1477012939','','毛毛','http://wx.qlogo.cn/mmopen/3a3QxMHZ8YywCMalGgeqF8Y3IaUebyiaeCn5movNIKskc7dllknWb9Sro1yxLpLcRlg7I1RPBz7uNG4epD5XbvA/132','','0','1','0','0','0','','','','','','','','','中国','上海省','市','','','','','','','','','','','','','','','','','',''),
('6','3','','','','','0','0.00','0.00','0.00','0.00','0.00','0.00','0','','','','','0','0','0','0','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
('8','3','','','','','0','0.00','0.00','0.00','0.00','0.00','0.00','0','','健健','http://wx.qlogo.cn/mmopen/Q3auHgzwzM44DKiakry6a8aABIlwoiccIzYCNpX2YytiadIb9GBnM9EHm7rNJQhwhFSl9vl1mLibN7Fktr7daGOBM8uyXF8Qicf900DXHEZxBvhQ/132','','0','1','0','0','0','','','','','','','','','中国','上海省','普陀市','','','','','','','','','','','','','','','','','',''),
('16','3','','6daa0cc1b662c25c85888f4a493b44d7@we7.cc','e86af0d3ef27c38b9ab911305a7fe1a0','xs8IhI2r','3','0.00','0.00','0.00','0.00','0.00','0.00','1476954169','','健健','http://wx.qlogo.cn/mmopen/Q3auHgzwzM44DKiakry6a8aABIlwoiccIzYCNpX2YytiadIb9GBnM9EHm7rNJQhwhFSl9vl1mLibN7Fktr7daGOBM8uyXF8Qicf900DXHEZxBvhQ/132','','0','1','0','0','0','','','','','','','','','中国','上海省','普陀市','','','','','','','','','','','','','','','','','',''),
('10','3','','','','','0','0.00','0.00','0.00','0.00','0.00','0.00','0','','健健','http://wx.qlogo.cn/mmopen/Q3auHgzwzM44DKiakry6a8aABIlwoiccIzYCNpX2YytiadIb9GBnM9EHm7rNJQhwhFSl9vl1mLibN7Fktr7daGOBM8uyXF8Qicf900DXHEZxBvhQ/132','','0','1','1980','0','0','水瓶座','鼠','','','','','上海市黄浦区赶过来集合','','中国','上海省','普陀市','','','','博士','','','','','','A','','','','','','','','');


DROP TABLE IF EXISTS ims_mc_oauth_fans;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_menu_event;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_mobilenumber;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_modules;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO ims_modules VALUES 
('1','basic','system','基本文字回复','1.0','和您进行简单对话','一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.','WeEngine Team','http://www.we7.cc/','0','','','1','1','0','0',''),
('2','news','system','基本混合图文回复','1.0','为你提供生动的图文资讯','一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.','WeEngine Team','http://www.we7.cc/','0','','','1','1','0','0',''),
('3','music','system','基本音乐回复','1.0','提供语音、音乐等音频类回复','在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。','WeEngine Team','http://www.we7.cc/','0','','','1','1','0','0',''),
('4','userapi','system','自定义接口回复','1.1','更方便的第三方接口设置','自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。','WeEngine Team','http://www.we7.cc/','0','','','1','1','0','0',''),
('5','recharge','system','会员中心充值模块','1.0','提供会员充值功能','','WeEngine Team','http://www.we7.cc/','0','','','0','1','0','0',''),
('6','custom','system','多客服转接','1.0.0','用来接入腾讯的多客服系统','','WeEngine Team','http://bbs.we7.cc','0','a:0:{}','a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}','1','1','0','0',''),
('7','images','system','基本图片回复','1.0','提供图片回复','在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。','WeEngine Team','http://www.we7.cc/','0','','','1','1','0','0',''),
('8','video','system','基本视频回复','1.0','提供图片回复','在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。','WeEngine Team','http://www.we7.cc/','0','','','1','1','0','0',''),
('9','voice','system','基本语音回复','1.0','提供语音回复','在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。','WeEngine Team','http://www.we7.cc/','0','','','1','1','0','0',''),
('10','chats','system','发送客服消息','1.0','公众号可以在粉丝最后发送消息的48小时内无限制发送消息','','WeEngine Team','http://www.we7.cc/','0','','','0','1','0','0',''),
('11','wxcard','system','微信卡券回复','1.0','微信卡券回复','微信卡券回复','WeEngine Team','http://www.we7.cc/','0','','','1','1','0','0',''),
('12','paycenter','system','收银台','1.0','收银台','收银台','WeEngine Team','http://www.we7.cc/','0','','','1','1','0','0',''),
('19','we7_doctor','business','医生','0.1','医生信息管理，包括增、删、改、查、列表等功能','医生信息管理，包括增、删、改、查、列表等功能','Garfield','http://bbs.we7.cc/','1','a:14:{i:0;s:4:\"text\";i:1;s:5:\"image\";i:2;s:5:\"voice\";i:3;s:5:\"video\";i:4;s:10:\"shortvideo\";i:5;s:8:\"location\";i:6;s:4:\"link\";i:7;s:9:\"subscribe\";i:8;s:11:\"unsubscribe\";i:9;s:2:\"qr\";i:10;s:5:\"trace\";i:11;s:5:\"click\";i:12;s:4:\"view\";i:13;s:14:\"merchant_order\";}','a:12:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:10:\"shortvideo\";i:4;s:8:\"location\";i:5;s:4:\"link\";i:6;s:9:\"subscribe\";i:7;s:2:\"qr\";i:8;s:5:\"trace\";i:9;s:5:\"click\";i:10;s:14:\"merchant_order\";i:11;s:4:\"text\";}','1','0','0','0','a:0:{}'),
('20','ewei_shopping','business','微商城','6.9.6','微商城','微商城','WeEngine Team & ewei','','2','a:0:{}','a:1:{i:0;s:4:\"text\";}','0','0','0','0','N;');


DROP TABLE IF EXISTS ims_modules_bindings;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL,
  `entry` varchar(10) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(30) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

INSERT INTO ims_modules_bindings VALUES 
('55','ewei_shopping','profile','','我的订单','myorder','','0','','','0'),
('54','ewei_shopping','home','','商城','list','','0','','','0'),
('53','ewei_shopping','menu','','维权与告警','notice','','0','','','0'),
('52','ewei_shopping','menu','','幻灯片管理','adv','','0','','','0'),
('51','ewei_shopping','menu','','配送方式','dispatch','','0','','','0'),
('50','ewei_shopping','menu','','物流管理','express','','0','','','0'),
('49','ewei_shopping','menu','','商品分类','category','','0','','','0'),
('47','ewei_shopping','menu','','订单管理','order','','0','','','0'),
('48','ewei_shopping','menu','','商品管理','goods','','0','','','0'),
('44','we7_doctor','shortcut','','微站快捷功能导航1','shortcut1','','0','','','0'),
('45','we7_doctor','function','','微站独立功能1','indenfunc1','','0','','','0'),
('43','we7_doctor','profile','','微站个人中心导航1','user1','','0','','','0'),
('42','we7_doctor','home','','微站首页导航图标1','nevindex1','','0','','','0'),
('41','we7_doctor','menu','','预约管理','orders','orders','0','','','0'),
('40','we7_doctor','menu','','医生','project','project','0','','','0'),
('39','we7_doctor','menu','','科室','classify','classify','0','','','0'),
('38','we7_doctor','rule','','规则列表2','rule2','ruledata2','1','','','0'),
('36','we7_doctor','cover','','医生入口','index','index','0','','','0'),
('37','we7_doctor','rule','','规则列表','rule1','ruledata1','0','','','0'),
('46','ewei_shopping','cover','','商城入口设置','list','','0','','','0');


DROP TABLE IF EXISTS ims_modules_recycle;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modulename` (`modulename`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO ims_modules_recycle VALUES 
('7','cgc_gzredbag'),
('8','bm_hospital');


DROP TABLE IF EXISTS ims_music_reply;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_news_reply;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_paycenter_order;
CREATE TABLE `ims_paycenter_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `uniontid` varchar(40) NOT NULL,
  `transaction_id` varchar(40) NOT NULL,
  `type` varchar(10) NOT NULL,
  `trade_type` varchar(10) NOT NULL,
  `body` varchar(255) NOT NULL,
  `fee` varchar(15) NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `auth_code` varchar(30) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `follow` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `credit_status` tinyint(3) unsigned NOT NULL,
  `paytime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_profile_fields;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

INSERT INTO ims_profile_fields VALUES 
('1','realname','1','真实姓名','','0','1','1','1','0'),
('2','nickname','1','昵称','','1','1','0','1','0'),
('3','avatar','1','头像','','1','0','0','0','0'),
('4','qq','1','QQ号','','0','0','0','1','0'),
('5','mobile','1','手机号码','','0','0','0','0','0'),
('6','vip','1','VIP级别','','0','0','0','0','0'),
('7','gender','1','性别','','0','0','0','0','0'),
('8','birthyear','1','出生生日','','0','0','0','0','0'),
('9','constellation','1','星座','','0','0','0','0','0'),
('10','zodiac','1','生肖','','0','0','0','0','0'),
('11','telephone','1','固定电话','','0','0','0','0','0'),
('12','idcard','1','证件号码','','0','0','0','0','0'),
('13','studentid','1','学号','','0','0','0','0','0'),
('14','grade','1','班级','','0','0','0','0','0'),
('15','address','1','邮寄地址','','0','0','0','0','0'),
('16','zipcode','1','邮编','','0','0','0','0','0'),
('17','nationality','1','国籍','','0','0','0','0','0'),
('18','resideprovince','1','居住地址','','0','0','0','0','0'),
('19','graduateschool','1','毕业学校','','0','0','0','0','0'),
('20','company','1','公司','','0','0','0','0','0'),
('21','education','1','学历','','0','0','0','0','0'),
('22','occupation','1','职业','','0','0','0','0','0'),
('23','position','1','职位','','0','0','0','0','0'),
('24','revenue','1','年收入','','0','0','0','0','0'),
('25','affectivestatus','1','情感状态','','0','0','0','0','0'),
('26','lookingfor','1',' 交友目的','','0','0','0','0','0'),
('27','bloodtype','1','血型','','0','0','0','0','0'),
('28','height','1','身高','','0','0','0','0','0'),
('29','weight','1','体重','','0','0','0','0','0'),
('30','alipay','1','支付宝帐号','','0','0','0','0','0'),
('31','msn','1','MSN','','0','0','0','0','0'),
('32','email','1','电子邮箱','','0','0','0','0','0'),
('33','taobao','1','阿里旺旺','','0','0','0','0','0'),
('34','site','1','主页','','0','0','0','0','0'),
('35','bio','1','自我介绍','','0','0','0','0','0'),
('36','interest','1','兴趣爱好','','0','0','0','0','0');


DROP TABLE IF EXISTS ims_qrcode;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO ims_qrcode VALUES 
('1','3','3','card','0','11000000000001','','500元代金券','','1','gQHA8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL2kwdzJIUG5sMTNPdWZtMmV4bWZtAAIEyBMHWAMEgDPhAQ==','https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHA8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL2kwdzJIUG5sMTNPdWZtMmV4bWZtAAIEyBMHWAMEgDPhAQ%3D%3D','1508395023','0','1476859023','1'),
('2','3','3','card','0','11000000000002','','500元优惠券','','1','gQGH7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL1hFd3dnbkRscEhQZHZycDF3R2ZtAAIEZhYHWAMEgDPhAQ==','https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQGH7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL1hFd3dnbkRscEhQZHZycDF3R2ZtAAIEZhYHWAMEgDPhAQ%3D%3D','1508395694','0','1476859694','1'),
('3','3','3','card','0','11000000000003','','500元代金券','','1','gQH37zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3Jrd2kxRURsc0hQSktrZ2wwbWZtAAIEVhsHWAMEgDPhAQ==','https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQH37zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL3Jrd2kxRURsc0hQSktrZ2wwbWZtAAIEVhsHWAMEgDPhAQ%3D%3D','1508396958','0','1476860958','1'),
('4','3','3','card','0','11000000000004','','500元代金券','','1','gQEE8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL2xreDFZUkRsbFhQczkzRGloV2ZtAAIEUDgHWAMEgDPhAQ==','https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEE8DoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL2xreDFZUkRsbFhQczkzRGloV2ZtAAIEUDgHWAMEgDPhAQ%3D%3D','1508404375','0','1476868375','1'),
('5','3','3','card','0','11000000000005','','500元代金券','','1','gQHk7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL1cweG94Z25sNVhPY2hMMG9tR2ZtAAIEDWcIWAMEgDPhAQ==','https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQHk7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL1cweG94Z25sNVhPY2hMMG9tR2ZtAAIEDWcIWAMEgDPhAQ%3D%3D','1508481877','0','1476945877','1');


DROP TABLE IF EXISTS ims_qrcode_stat;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_rule;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO ims_rule VALUES 
('1','0','城市天气','userapi','255','1'),
('2','0','百度百科','userapi','255','1'),
('3','0','即时翻译','userapi','255','1'),
('4','0','今日老黄历','userapi','255','1'),
('5','0','看新闻','userapi','255','1'),
('6','0','快递查询','userapi','255','1'),
('7','1','个人中心入口设置','cover','0','1'),
('8','1','微擎团队入口设置','cover','0','1'),
('12','3','tel','basic','0','1'),
('11','3','联系小编','basic','0','1');


DROP TABLE IF EXISTS ims_rule_keyword;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO ims_rule_keyword VALUES 
('1','1','0','userapi','^.+天气$','3','255','1'),
('2','2','0','userapi','^百科.+$','3','255','1'),
('3','2','0','userapi','^定义.+$','3','255','1'),
('4','3','0','userapi','^@.+$','3','255','1'),
('5','4','0','userapi','日历','1','255','1'),
('6','4','0','userapi','万年历','1','255','1'),
('7','4','0','userapi','黄历','1','255','1'),
('8','4','0','userapi','几号','1','255','1'),
('9','5','0','userapi','新闻','1','255','1'),
('10','6','0','userapi','^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$','3','255','1'),
('11','7','1','cover','个人中心','1','0','1'),
('12','8','1','cover','首页','1','0','1'),
('23','12','3','basic','tel','1','0','1'),
('21','11','3','basic','联系小编','1','0','1');


DROP TABLE IF EXISTS ims_shopping_adv;
CREATE TABLE `ims_shopping_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `advname` varchar(50) DEFAULT '',
  `link` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_cart;
CREATE TABLE `ims_shopping_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodstype` tinyint(1) NOT NULL DEFAULT '1',
  `from_user` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `optionid` int(10) DEFAULT '0',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_openid` (`from_user`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO ims_shopping_cart VALUES 
('3','3','2','1','oItv0twLjT0XGLsonZswyQngfVdE','1','0','0.10');


DROP TABLE IF EXISTS ims_shopping_category;
CREATE TABLE `ims_shopping_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属帐号',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `thumb` varchar(255) NOT NULL COMMENT '分类图片',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `isrecommand` int(10) DEFAULT '0',
  `description` varchar(500) NOT NULL COMMENT '分类介绍',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO ims_shopping_category VALUES 
('1','3','近视眼镜男','images/3/2016/10/r3gnnQnMhJQ4i0v09v6zQ07499J5C7.jpg','0','1','近视眼镜男','0','1'),
('2','3','近视眼镜女','images/3/2016/10/hY3R8dMNUNnnwmH8Dn378NydA1fJ4a.jpg','0','1','近视眼镜女','0','1');


DROP TABLE IF EXISTS ims_shopping_dispatch;
CREATE TABLE `ims_shopping_dispatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `dispatchname` varchar(50) DEFAULT '',
  `dispatchtype` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  `firstprice` decimal(10,2) DEFAULT '0.00',
  `secondprice` decimal(10,2) DEFAULT '0.00',
  `firstweight` int(11) DEFAULT '0',
  `secondweight` int(11) DEFAULT '0',
  `express` int(11) DEFAULT '0',
  `enabled` int(11) NOT NULL DEFAULT '0',
  `description` text,
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_express;
CREATE TABLE `ims_shopping_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `express_name` varchar(50) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `express_price` varchar(10) DEFAULT '',
  `express_area` varchar(100) DEFAULT '',
  `express_url` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_feedback;
CREATE TABLE `ims_shopping_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为维权，2为告擎',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未解决，1用户同意，2用户拒绝',
  `feedbackid` varchar(30) NOT NULL COMMENT '投诉单号',
  `transid` varchar(30) NOT NULL COMMENT '订单号',
  `reason` varchar(1000) NOT NULL COMMENT '理由',
  `solution` varchar(1000) NOT NULL COMMENT '期待解决方案',
  `remark` varchar(1000) NOT NULL COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_weid` (`weid`),
  KEY `idx_feedbackid` (`feedbackid`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_transid` (`transid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_goods;
CREATE TABLE `ims_shopping_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1为实体，2为虚拟',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `unit` varchar(5) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goodssn` varchar(50) NOT NULL DEFAULT '',
  `productsn` varchar(50) NOT NULL DEFAULT '',
  `marketprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `costprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `originalprice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '原价',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `totalcnf` int(11) DEFAULT '0' COMMENT '0 拍下减库存 1 付款减库存 2 永久不减',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `maxbuy` int(11) DEFAULT '0',
  `usermaxbuy` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户最多购买数量',
  `hasoption` int(11) DEFAULT '0',
  `dispatch` int(11) DEFAULT '0',
  `thumb_url` text,
  `isnew` int(11) DEFAULT '0',
  `ishot` int(11) DEFAULT '0',
  `isdiscount` int(11) DEFAULT '0',
  `isrecommand` int(11) DEFAULT '0',
  `istime` int(11) DEFAULT '0',
  `timestart` int(11) DEFAULT '0',
  `timeend` int(11) DEFAULT '0',
  `viewcount` int(11) DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO ims_shopping_goods VALUES 
('1','3','2','0','1','1','0','古登堡 眼镜框 近视眼镜 眼镜架 男女款 防蓝光复古时尚潮流韩版','images/3/2016/10/NjDZkX8K8G1WBokxoWiWdDZcWJmWBg.jpg','副','','','商品编号','商品条码','1000.00','1200.00','900.00','920.00','9996','0','1','','1476165058','50.00','0.00','0','0','0','0','a:0:{}','1','1','1','1','1','1476165000','1476337560','17','0'),
('2','3','1','0','1','1','0','普莱斯眼镜框男 近视眼镜男女商务半框纯钛眼镜架男 眼睛框镜架男','images/3/2016/10/oX9ZIX4XIzhPGJXX98Soozoj89hgh4.jpg','副','','<p><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span><span style=\"color: rgb(51, 51, 51); font-family: arial, \" hiragino=\"\" sans=\"\" microsoft=\"\" font-size:=\"\" font-weight:=\"\" line-height:=\"\" text-align:=\"\" background-color:=\"\">商品详情</span></p>','','','0.10','990.00','800.00','820.00','960','0','33','','1476166940','20.00','80.00','0','0','0','0','a:0:{}','1','1','1','1','1','1476166860','1477731660','96','0');


DROP TABLE IF EXISTS ims_shopping_goods_option;
CREATE TABLE `ims_shopping_goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `productprice` decimal(10,2) DEFAULT '0.00',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  `costprice` decimal(10,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `displayorder` int(11) DEFAULT '0',
  `specs` text,
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_goods_param;
CREATE TABLE `ims_shopping_goods_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `value` text,
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_order;
CREATE TABLE `ims_shopping_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `ordersn` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-1取消状态，0普通状态，1为已付款，2为已发货，3为成功',
  `sendtype` tinyint(1) unsigned NOT NULL COMMENT '1为快递，2为自提',
  `paytype` tinyint(1) unsigned NOT NULL COMMENT '1为余额，2为在线，3为到付',
  `transid` varchar(30) NOT NULL DEFAULT '0' COMMENT '微信支付单号',
  `goodstype` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(1000) NOT NULL DEFAULT '',
  `address` varchar(1024) NOT NULL DEFAULT '' COMMENT '收货地址信息',
  `expresscom` varchar(30) NOT NULL DEFAULT '',
  `expresssn` varchar(50) NOT NULL DEFAULT '',
  `express` varchar(200) NOT NULL DEFAULT '',
  `goodsprice` decimal(10,2) DEFAULT '0.00',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `dispatch` int(10) DEFAULT '0',
  `paydetail` varchar(255) NOT NULL COMMENT '支付详情',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO ims_shopping_order VALUES 
('22','3','','10196864','0.1','0','1','0','0','1','','郭健|18656506404||北京市|北京辖区|东城区|啦啦啦啦啦了','','','','0.10','0.00','0','','1476866263'),
('21','3','oItv0twZifvHhKZwolVIbeG4NR6Q','10198395','0.1','-1','1','0','0','1','','郭健|18656506404|200001|上海市|上海市|黄浦区|广东路500','','','','0.10','0.00','0','','1476860553'),
('17','3','oItv0twZifvHhKZwolVIbeG4NR6Q','10191257','2','-1','1','0','0','1','','郭健|18656506404|200001|上海市|上海市|黄浦区|广东路500','','','','2.00','0.00','0','','1476857495'),
('19','3','oItv0twZifvHhKZwolVIbeG4NR6Q','10192664','0.1','-1','1','0','0','1','','郭健|18656506404|200001|上海市|上海市|黄浦区|广东路500','','','','0.10','0.00','0','','1476857665'),
('20','3','','10191642','0.1','0','1','0','0','1','','郭健|18656506404||北京市|北京辖区|东城区|啦啦啦啦啦了','','','','0.10','0.00','0','','1476857726'),
('18','3','','10198664','0.1','0','1','0','0','1','','郭健|18656506404||北京市|北京辖区|东城区|啦啦啦啦啦了','','','','0.10','0.00','0','','1476857523');


DROP TABLE IF EXISTS ims_shopping_order_goods;
CREATE TABLE `ims_shopping_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `goodsid` int(10) unsigned NOT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `optionid` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `optionname` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO ims_shopping_order_goods VALUES 
('1','3','1','1','20.00','1','0','1476165889',''),
('2','3','2','1','20.00','1','0','1476166797',''),
('3','3','3','1','20.00','1','0','1476171663',''),
('4','3','4','2','0.00','1','0','1476171743',''),
('5','3','5','2','0.10','1','0','1476172015',''),
('6','3','6','2','0.10','1','0','1476172169',''),
('7','3','7','2','0.10','1','0','1476172501',''),
('8','3','8','2','0.10','1','0','1476173674',''),
('9','3','9','2','0.10','1','0','1476173895',''),
('10','3','10','1','0.00','1','0','1476174755',''),
('11','3','11','2','0.10','1','0','1476174791',''),
('12','3','12','2','0.10','4','0','1476234383',''),
('13','3','13','2','0.10','1','0','1476324098',''),
('14','3','14','2','0.10','1','0','1476410354',''),
('15','3','15','2','0.10','1','0','1476416459',''),
('16','3','16','2','0.10','1','0','1476856630',''),
('17','3','17','2','0.10','20','0','1476857495',''),
('18','3','18','2','0.10','1','0','1476857523',''),
('19','3','19','2','0.10','1','0','1476857665',''),
('20','3','20','2','0.10','1','0','1476857726',''),
('21','3','21','2','0.10','1','0','1476860553',''),
('22','3','22','2','0.10','1','0','1476866263','');


DROP TABLE IF EXISTS ims_shopping_product;
CREATE TABLE `ims_shopping_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NOT NULL,
  `productsn` varchar(50) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `marketprice` decimal(10,0) unsigned NOT NULL,
  `productprice` decimal(10,0) unsigned NOT NULL,
  `total` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `spec` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_goodsid` (`goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_spec;
CREATE TABLE `ims_shopping_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `displaytype` tinyint(3) unsigned NOT NULL,
  `content` text NOT NULL,
  `goodsid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_shopping_spec_item;
CREATE TABLE `ims_shopping_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `specid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `show` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_weid` (`weid`),
  KEY `indx_specid` (`specid`),
  KEY `indx_show` (`show`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_site_article;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_site_category;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_site_multi;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO ims_site_multi VALUES 
('1','1','微擎团队','1','','1',''),
('2','2','昆明普瑞眼科医院','2','','0',''),
('3','3','昆明普瑞眼科医院','8','a:4:{s:5:\"thumb\";s:0:\"\";s:7:\"keyword\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"footer\";s:0:\"\";}','0',''),
('8','4','11111111111','6','','0','');


DROP TABLE IF EXISTS ims_site_nav;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_site_page;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  `multipage` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO ims_site_page VALUES 
('1','1','0','快捷菜单','','{\"navStyle\":\"2\",\"bgColor\":\"#f4f4f4\",\"menus\":[{\"title\":\"\\u4f1a\\u5458\\u5361\",\"url\":\".\\/index.php?c=mc&a=bond&do=card&i=1\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-credit-card\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":[]},{\"title\":\"\\u5151\\u6362\",\"url\":\".\\/index.php?c=activity&a=coupon&do=display&&i=1\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-money\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":[]},{\"title\":\"\\u4ed8\\u6b3e\",\"url\":\"\\\" data-target=\\\"#scan\\\" data-toggle=\\\"modal\\\" href=\\\"javascript:void();\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-qrcode\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":\"\"},{\"title\":\"\\u4e2a\\u4eba\\u4e2d\\u5fc3\",\"url\":\".\\/index.php?i=1&c=mc&\",\"submenus\":[],\"icon\":{\"name\":\"fa fa-user\",\"color\":\"#969696\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":[]}],\"extend\":[],\"position\":{\"homepage\":true,\"usercenter\":true,\"page\":true,\"article\":true},\"ignoreModules\":[]}','<div style=\"background-color: rgb(244, 244, 244);\" class=\"js-quickmenu nav-menu-app has-nav-0  has-nav-4\"   ><ul class=\"nav-group clearfix\"><li class=\"nav-group-item \" ><a href=\"./index.php?c=mc&a=bond&do=card&i=1\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-credit-card\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">会员卡</span></a></li><li class=\"nav-group-item \" ><a href=\"./index.php?c=activity&a=coupon&do=display&&i=1\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-money\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">兑换</span></a></li><li class=\"nav-group-item \" ><a href=\"\" data-target=\"#scan\" data-toggle=\"modal\" href=\"javascript:void();\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-qrcode\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">付款</span></a></li><li class=\"nav-group-item \" ><a href=\"./index.php?i=1&c=mc&\" style=\"background-position: center 2px;\" ><i style=\"color: rgb(150, 150, 150);\"  class=\"fa fa-user\"  js-onclass-name=\"\" js-onclass-color=\"\" ></i><span style=\"color: rgb(150, 150, 150);\" class=\"\"  js-onclass-color=\"\">个人中心</span></a></li></ul></div>','4','1','1440242655','0',''),
('2','3','0','微页面标题','','[{\"property\":[{\"id\":\"header\",\"name\":\"\\u5fae\\u9875\\u9762\\u6807\\u9898\",\"params\":{\"title\":\"\\u5fae\\u9875\\u9762\\u6807\\u9898\",\"description\":\"\",\"pageHeight\":568,\"thumb\":\"\",\"bgColor\":\"\",\"bottom_menu\":false,\"baseStyle\":{\"backgroundColor\":\"rgba(0,0,0,0)\",\"color\":\"#000\",\"opacity\":0,\"paddingTop\":0,\"lineHeight\":2,\"fontSize\":14,\"textAlign\":\"left\",\"lock\":false},\"borderStyle\":{\"borderWidth\":0,\"borderRadius\":2,\"borderStyle\":\"solid\",\"borderColor\":\"rgba(0,0,0,1)\",\"transform\":0},\"shadowStyle\":{\"shadowSize\":0,\"shadowBlur\":0,\"shadowColor\":\"rgba(0,0,0,0.5)\",\"shadowDirection\":1},\"positionStyle\":{\"top\":259,\"left\":40,\"width\":240,\"height\":50},\"animationStyle\":{\"animationName\":\"noEffect\",\"animationDuration\":1,\"animationTimingFunction\":\"ease\",\"animationDelay\":0.6,\"animationFillMode\":\"both\"},\"pageLength\":1},\"issystem\":1,\"index\":0,\"displayorder\":0,\"baseStyle\":\"background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;\",\"borderStyle\":\"border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);\",\"transform\":\"transform: rotateZ(0deg);\",\"shadowStyle\":\"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);\",\"animationStyle\":\"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\",\"positionStyle\":\"position:absolute; top: 259px; left: 40px; width: 240px; height: 50px;\"},{\"id\":\"onlyText\",\"name\":\"\\u6587\\u5b57\",\"params\":{\"title\":\"\\u6d4b\\u8bd5\\u505a\\u4e2a\\u4e13\\u9898\\u9875\\u9762\",\"baseStyle\":{\"backgroundColor\":\"rgba(0,0,0,0)\",\"color\":\"#9900ff\",\"opacity\":0,\"paddingTop\":0,\"lineHeight\":2,\"fontSize\":14,\"textAlign\":\"center\",\"lock\":false},\"borderStyle\":{\"borderWidth\":0,\"borderRadius\":2,\"borderStyle\":\"solid\",\"borderColor\":\"rgba(0,0,0,1)\",\"transform\":0},\"shadowStyle\":{\"shadowSize\":0,\"shadowBlur\":0,\"shadowColor\":\"rgba(0,0,0,0.5)\",\"shadowDirection\":1},\"animationStyle\":{\"animationName\":\"noEffect\",\"animationDuration\":1,\"animationTimingFunction\":\"ease\",\"animationDelay\":0.6,\"animationFillMode\":\"both\"},\"positionStyle\":{\"top\":123,\"left\":62,\"width\":200,\"height\":30}},\"issystem\":0,\"index\":1,\"displayorder\":1,\"baseStyle\":\"background-color:rgba(0,0,0,0);color:#9900ff;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:center;\",\"borderStyle\":\"border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);\",\"transform\":\"transform: rotateZ(0deg);\",\"shadowStyle\":\"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);\",\"positionStyle\":\"position:absolute;top:123px;left:62px;width:200px;height:30px;\",\"animationStyle\":\"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"},{\"id\":\"image\",\"name\":\"\\u56fe\\u7247\",\"params\":{\"items\":{\"imgurl\":\"http:\\/\\/wx.purui.cn\\/km\\/attachment\\/images\\/3\\/2016\\/10\\/tgjb1jnM51kBMnpK6opbiX1JP13JEJ.jpg\"},\"baseStyle\":{\"backgroundColor\":\"rgba(0,0,0,0)\",\"color\":\"#000\",\"opacity\":0,\"paddingTop\":0,\"lineHeight\":2,\"fontSize\":14,\"textAlign\":\"left\",\"lock\":false},\"borderStyle\":{\"borderWidth\":0,\"borderRadius\":2,\"borderStyle\":\"solid\",\"borderColor\":\"rgba(0,0,0,1)\",\"transform\":0},\"shadowStyle\":{\"shadowSize\":0,\"shadowBlur\":0,\"shadowColor\":\"rgba(0,0,0,0.5)\",\"shadowDirection\":1},\"animationStyle\":{\"animationName\":\"noEffect\",\"animationDuration\":1,\"animationTimingFunction\":\"ease\",\"animationDelay\":0.6,\"animationFillMode\":\"both\"},\"positionStyle\":{\"top\":6,\"left\":107,\"width\":100,\"height\":100}},\"issystem\":0,\"index\":2,\"displayorder\":2,\"baseStyle\":\"background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;\",\"borderStyle\":\"border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);\",\"transform\":\"transform: rotateZ(0deg);\",\"shadowStyle\":\"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);\",\"positionStyle\":\"position:absolute;top:6px;left:107px;width:100px;height:100px;\",\"animationStyle\":\"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"},{\"id\":\"shape\",\"name\":\"\\u5f62\\u72b6\",\"params\":{\"svgValue\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\"?>\\r\\n<!-- Generator: Adobe Illustrator 16.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->\\r\\n<!DOCTYPE svg PUBLIC \\\"-\\/\\/W3C\\/\\/DTD SVG 1.1\\/\\/EN\\\" \\\"http:\\/\\/www.w3.org\\/Graphics\\/SVG\\/1.1\\/DTD\\/svg11.dtd\\\">\\r\\n<svg version=\\\"1.1\\\" id=\\\"\\u56fe\\u5c42_1\\\" xmlns=\\\"http:\\/\\/www.w3.org\\/2000\\/svg\\\" xmlns:xlink=\\\"http:\\/\\/www.w3.org\\/1999\\/xlink\\\" x=\\\"0px\\\" y=\\\"0px\\\"\\r\\n\\t width=\\\"112.263px\\\" height=\\\"104.541px\\\" viewBox=\\\"0 0 112.263 104.541\\\" enable-background=\\\"new 0 0 112.263 104.541\\\"\\r\\n\\t xml:space=\\\"preserve\\\">\\r\\n<path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" fill=\\\"#5FB63B\\\" d=\\\"M79.549,38.151c1.607-1.097,2.538-3.149,3.105-4.922\\r\\n\\tc1.507-4.706,0.428-9.681-5.297-9.705c-2.671-0.011-5.267,0.873-7.762,1.73c1.159-1.281,2.191-2.69,3.516-3.81\\r\\n\\tc1.136-0.959,3.323-2.064,2.839-3.894c-0.937-3.536-7.175,0.892-8.615,2.14c-1.511,1.309-1.914,3.235,0.63,2.888\\r\\n\\tc0.041,0.019,0.066,0.048,0.076,0.088c0.753,3.226-14.027,11.487-6.859,14.454c1.464,0.606,1.788-0.418,1.52-1.667\\r\\n\\tc-0.291-1.349-1.008-2.206-0.066-3.478c0.889-1.198,2.611-1.928,3.928-2.53c-0.212,1.493-1.241,4.627,0.633,5.52\\r\\n\\tc2.049,0.975,2.104-2.722,2.718-3.839c0.539-0.978,1.42-1.783,2.154-2.612c-0.339,0.382-0.301,2.458-0.429,3.116\\r\\n\\tc-0.217,1.118-0.5,2.221-0.819,3.314c-0.607,2.073-1.569,4.099-2.053,6.194c3.21-1.401,4.08-6.28,4.94-9.262\\r\\n\\tc0.559-1.934,0.027-5.789,2.891-5.527c1.946,0.178,2.549,1.669,2.511,3.479c-0.051,2.43-0.942,5.171-3.009,6.625\\r\\n\\tc-0.946,0.665-2.453,1.263-3.617,1.141c1.147,1.727,4.588,1.72,6.29,0.987C79.047,38.461,79.306,38.317,79.549,38.151z\\r\\n\\t M70.462,28.331c-0.132,0.248-0.255,0.476-0.28,0.508c-0.345,0.428-0.795,0.752-1.283,0.999c0.038-0.019,0.026-1.365,0.249-1.625\\r\\n\\tc0.417-0.487,1.091-0.549,1.68-0.549C70.817,27.663,70.632,28.012,70.462,28.331z M62.408,13.899\\r\\n\\tc-0.136-0.778-0.146-1.589-0.075-2.265c0.154-1.489,0.422-2.922,0.439-4.428c1.457-0.4,1.775-1.785,2.012-3.101\\r\\n\\tc1.755,1.601,1.823,3.911,2.018,6.118c3.122-1.485,4.104-2.716,4.817-6.063c0.523-2.459,1.261-6.124,3.516-2.886\\r\\n\\tc2.453,3.523,3.473,1.939,7.232,2.264c3.984,0.345-0.042,3.722-1.57,4.87c-3.004,2.256-6.289,4.182-8.807,6.93l-0.853,0.931\\r\\n\\tl-0.466,0.388l-0.541,0.388l0.154-0.465c0,0,0.301-0.453,0.31-0.465c0.636-0.958,1.613-1.636,2.228-2.633\\r\\n\\tc-1.109-0.542-1.851-1.542-1.992-2.779c-1.338,1.745-2.646,5.46-4.974,6.027C63.68,17.259,62.717,15.664,62.408,13.899z\\r\\n\\t M51.577,5.959c0.028-1.342,0.65-1.465,2.253-0.909c4.292,1.49,2.022,6.921-0.645,5.037c-0.593-0.419-1.585-3.128-1.607-3.864\\r\\n\\tC51.576,6.13,51.575,6.042,51.577,5.959z M46.392,23.853c-0.023-0.133-0.037-0.255-0.039-0.364c-0.013-0.575,1.91-3.348,1.919-3.341\\r\\n\\tc-3.708-2.876-0.068-3.521,2.562-4.642c1.227-0.523,2.286-1.424,3.696-0.998c1.355,0.409,2.258,1.696,1.452,2.972\\r\\n\\tc-0.854,1.353-2.563,1.979-3.441,3.436c0.859,1.017,2.694,0.803,3.416,1.975c1.157,1.884-1.551,4.354-2.662,5.577\\r\\n\\tc-1.735,1.911-3.71,3.685-6.258,4.387c1.434-2.783,3.618-4.943,4.563-7.979c-1.167,0.334-2.408,2.542-3.779,1.672\\r\\n\\tC47.161,26.127,46.55,24.759,46.392,23.853z M44.561,36.807c-0.174-0.895,0.522-1.976,2.011-2.454\\r\\n\\tc3.059-0.981,4.667-3.07,7.074-5.085c2.235-1.869,4.173-3.768,5.953-6.08c0.923-1.198,1.433-2.888,2.626-3.808\\r\\n\\tc-0.916,4.119-2.243,8.465-4.572,12.019c-1.24,1.893-2.699,3.201-4.707,4.235c-1.77,0.912-3.85,2.536-5.901,2.566\\r\\n\\tC45.523,38.223,44.712,37.585,44.561,36.807z M73.82,56.217c0.511,0.586,1.251,2.53,0.138,2.973\\r\\n\\tc-1.432,0.567-2.293-0.708-2.751-1.852c-0.287-0.718-0.254-1.811,0.716-1.929C72.664,55.32,73.346,55.672,73.82,56.217z\\r\\n\\t M63.979,50.859c-0.151-0.072-0.285-0.164-0.397-0.277c-1.348-1.372,1.631-2.328,2.564-2.274c1.532,0.088,3.158-0.124,4.669,0.083\\r\\n\\tc0.953,0.131,2.738,1.152,1.474,2.175c-1.115,0.901-3.299,0.411-4.614,0.428C66.715,51.005,64.976,51.336,63.979,50.859z\\r\\n\\t M64.192,57.189c0,0.064-0.003,0.129-0.008,0.193c-0.084,1.045-1.541,2.577-2.55,1.44c-0.798-0.898,0.293-2.292,1.064-2.798\\r\\n\\tC63.737,55.344,64.198,56.284,64.192,57.189z M59.435,52.849c-1.124,1.124-2.162,1.684-3.798,1.473\\r\\n\\tc-0.358,1.675,0.242,4.656-1.456,5.662c-0.815,0.483-2.304,0.545-3.048-0.135c-0.764-0.697-0.009-1.383,0.532-1.934\\r\\n\\tc0.625-0.637,1.442-1.439,1.047-2.418c-0.4-0.991-1.625-1.17-2.556-1.18c-0.901-0.01-2.106,0.246-2.818-0.476\\r\\n\\tc-0.657-0.665-0.436-1.69,0.314-2.172c1.9-1.222,4.536,0.82,5.016-2.286c0.294-1.9,0.34-3.608,1.032-5.448\\r\\n\\tc0.166-0.441,1.345,0.771,1.424,0.952c0.224,0.51,0.207,1.147,0.204,1.694c-0.005,1.157-0.693,3.447,0.231,4.358\\r\\n\\tc0.545,0.537,1.918,0.483,2.629,0.688c0.485,0.139,0.912,0.319,1.237,0.718c0.297-2.41-0.188-6.549,2.573-7.78\\r\\n\\tc0.549-0.245,1.091-0.121,0.845,0.608c1.28-0.53,2.584-0.809,3.954-1.007c0-0.749,0.108-1.502,0.077-2.246\\r\\n\\tc0.776-0.106,1.578-0.186,2.229,0.329c0.57,0.45,0.815,1.202,1.396,1.645c1.22,0.93,2.919,0.095,4.172,1.124\\r\\n\\tc1.17,0.961,1.979,2.629,2.145,4.115c0.156,1.403,0.339,3.333-0.2,4.663c-0.274,0.676-0.951,1.602-1.768,1.628\\r\\n\\tc-0.851,0.028-1.07-0.899-1.232-1.567c-0.811,0.801-1.625,0.792-2.7,0.855c-1.247,0.074-1.449,0.669-1.374,1.846\\r\\n\\tc0.072,1.127,0.197,2.135-0.449,3.126c-0.473,0.727-1.253,1.682-2.163,1.815c-1.067,0.157-2.401-0.879-2.613-1.926\\r\\n\\tc-0.226-1.123,0.856-1.062,1.577-1.436c0.798-0.413,1.121-1.486,0.883-2.341c-0.333-1.191-1.877-0.928-2.843-1.073\\r\\n\\tc-0.441-0.066-1.419-0.174-1.551-0.729c-0.165-0.696,1.021-1.165,1.484-1.354c2.571-1.046,5.694-1.028,8.328-0.239\\r\\n\\tc0.555,0.166,1.098,0.368,1.639,0.572c0.53-2.926-0.008-5.927-3.471-6.325c-2.425-0.279-6.74-0.218-7.966,2.348\\r\\n\\tc-0.354,0.738-0.456,1.579-0.499,2.387c-0.06,1.108,0.385,2.259-0.217,3.304c-0.612,1.063-1.455,0.547-1.89-0.383\\r\\n\\tC59.701,54.11,59.214,53.07,59.435,52.849z M58.608,56.075c0.565,1.015,0.354,3.051-1.068,2.222\\r\\n\\tc-0.666-0.388-0.993-1.911-0.369-2.445C57.817,55.298,58.316,55.55,58.608,56.075z M58.893,47.121\\r\\n\\tc-0.02,0.529,0.002,1.061,0.089,1.6c0.17,1.057-0.642,1.993-1.73,1.324c-2.003-1.229-1.581-5.83,1.109-5.957\\r\\n\\tC59.693,44.025,58.92,46.387,58.893,47.121z M50.054,55.719c0.812,0.836,0.385,2.513-0.857,2.666\\r\\n\\tc-1.519,0.187-1.376-2.797-0.028-2.937C49.574,55.407,49.859,55.519,50.054,55.719z M48.169,47.467c0.07-1.165-0.856-3.39,1-3.617\\r\\n\\tc3.427-0.418,2.703,4.95,0.386,5.949C47.267,50.786,48.106,48.514,48.169,47.467z M74.591,71.065\\r\\n\\tc0.053,0.633,0.258,1.258,0.721,1.683c0.435,0.399,1.157,0.414,1.708,0.328c0.532-0.084,0.719-0.555,0.949-0.983\\r\\n\\tc0.222-0.414,0.288-0.869,0.045-1.295c-0.294-0.515-0.716-0.452-0.947,0.041c-0.223,0.472-0.654,0.654-0.9,0.068\\r\\n\\tc-0.325-0.775-0.287-1.61-0.233-2.431c0.059-0.882,0.079-1.764,0.086-2.646c0.006-0.739,0.137-1.91-0.696-2.269\\r\\n\\tc-0.403-0.174-0.885-0.146-1.313-0.148c-0.442-0.002-0.884-0.018-1.326-0.029c-0.848-0.022-1.689,0.118-2.535,0.021\\r\\n\\tc-0.396-0.045-0.817-0.161-1.216-0.087c-1.695,0.315-1.362,2.97-1.4,4.215c-0.013,0.4-0.009,0.805-0.037,1.204\\r\\n\\tc-0.048,0.676-0.141,1.286-0.298,1.946c-0.062,0.257-0.213,0.519-0.391,0.712c-0.092,0.099-0.197,0.197-0.331,0.234\\r\\n\\tc-0.105,0.029-0.35,0.031-0.249-0.158c0.073-0.141,0.378-0.197,0.491-0.327c0.166-0.189,0.151-0.412,0.081-0.625\\r\\n\\tc-0.028-0.087-1.109-0.049-1.234-0.052c-0.401-0.011-0.801-0.039-1.201-0.068c-0.853-0.062-1.711-0.11-2.564-0.032\\r\\n\\tc-0.589,0.055-1.206,0.096-1.684,0.5c-0.271,0.229-0.209,0.438,0.113,0.536c0.386,0.118,0.527,0.128,0.523,0.574\\r\\n\\tc-0.002,0.289,0.001,0.578,0.001,0.866c0.402,0,1.258,0.069,1.214-0.565c-0.016-0.214-0.19-0.552,0.022-0.703\\r\\n\\tc0.341-0.242,1.055,0.086,1.022,0.518c-0.025,0.326-0.357,0.272-0.565,0.423c-0.426,0.309,0.273,1.039,0.652,1.036\\r\\n\\tc0.567-0.005,0.9-0.462,1.22-0.862c0.106-0.373,0.154-0.695,0.154-1.085c0.129-0.042,0.379-0.144,0.516-0.077\\r\\n\\tc0.154,0.075,0.104,0.27,0.104,0.422c0.001,0.272-0.076,0.793,0.218,0.962c0.12,0.068,1.06-0.109,1.023-0.222\\r\\n\\tc0.089,0.278,0.143,0.68,0.506,0.678c0.917-0.005,1.554-1.198,1.796-1.931c0.135-0.407,0.112-0.868,0.159-1.292\\r\\n\\tc0.023-0.209,0.076-0.437,0.131-0.637c-0.038,0.14,0.314,0.575,0.405,0.669c0.196,0.202,0.591,0.396,0.688,0.686\\r\\n\\tc0.066,0.197-0.133,0.562-0.143,0.783c-0.016,0.346,0.025,0.741,0.192,1.051c0.188,0.348,0.626,0.391,0.979,0.395\\r\\n\\tc0.51,0.006,1.021-0.01,1.532-0.011c0.414-0.001,0.724,0.08,0.903-0.358c0.167-0.408,0.216-0.86,0.264-1.295\\r\\n\\tc0.037-0.344,0.018-0.738,0.171-1.057c0.136-0.281,0.41-0.309,0.708-0.314C74.579,70.374,74.562,70.72,74.591,71.065z\\r\\n\\t M69.648,65.066c0.063-0.077,0.123-0.155,0.157-0.184c0.135-0.113,0.285-0.172,0.456-0.207c0.382-0.079,0.775-0.035,1.162-0.074\\r\\n\\tc0.713-0.072,1.424-0.044,2.14-0.048c0.214-0.001,0.384,0.02,0.59,0.078c0.183,0.052,0.339,0.171,0.463,0.312\\r\\n\\tc-0.596,0.383-1.365,0.229-2.031,0.229c-0.664,0-1.327-0.019-1.988,0.042c-0.384,0.035-0.77,0.036-1.154,0.035\\r\\n\\tC69.49,65.25,69.572,65.159,69.648,65.066z M70.099,66.983c-0.278,0.066-0.54,0.162-0.733,0.426\\r\\n\\tc-0.125,0.173-0.084,0.33-0.089,0.554c-0.13-0.262-0.296-0.485-0.208-0.787c0.07-0.237,0.256-0.473,0.452-0.619\\r\\n\\tc0.319-0.241,0.647-0.254,1.038-0.227c0.2,0.014,0.388,0.097,0.578,0.16c0.034,0.012-0.435,0.345-0.505,0.366\\r\\n\\tC70.457,66.911,70.275,66.941,70.099,66.983z M71.059,69.512c0,0.029-0.384-0.16-0.417-0.201c-0.11-0.136-0.13-0.327-0.122-0.495\\r\\n\\tc0.016-0.343,0.158-0.458,0.385-0.699C71.357,68.245,71.058,69.167,71.059,69.512z M72.456,71.682\\r\\n\\tc0.002-0.044-1.81,0.342-1.231-0.499c0.104-0.151,0.29-0.202,0.461-0.237c0.288-0.058,0.566,0.044,0.748,0.279\\r\\n\\tC72.581,71.417,72.467,71.464,72.456,71.682z M73.38,68.735c-0.052,0.173-0.15,0.334-0.272,0.414\\r\\n\\tc-0.145,0.095-0.335,0.091-0.498,0.131c0-0.103-0.015-1.251,0.077-1.24c0.259,0.029,0.599-0.027,0.705,0.288\\r\\n\\tC73.431,68.444,73.422,68.593,73.38,68.735z M74.18,67.228c-0.238-0.141-0.497-0.274-0.56-0.306c-0.323-0.16-0.68-0.213-1.001-0.362\\r\\n\\tc-0.106-0.05,0.374-0.237,0.418-0.243c0.246-0.034,0.496,0.039,0.74,0.051c0.284,0.014,0.687-0.166,0.803,0.195\\r\\n\\tc0.095,0.291,0.043,0.704,0.043,1.011C74.624,67.508,74.411,67.365,74.18,67.228z M65.952,69.063\\r\\n\\tc0.234,0.026,0.457,0.079,0.584,0.212c0.293,0.306-0.068,0.497-0.329,0.592c-0.407,0.148-0.803,0.087-1.225,0.052\\r\\n\\tc-0.562-0.048-1.162,0.099-1.723,0.151c-0.634,0.061-1.272,0.1-1.908,0.059c-0.425-0.027-0.933-0.13-1.164-0.537\\r\\n\\tc-0.244-0.43,0.815-0.419,1.022-0.448c0.613-0.087,1.227-0.168,1.844-0.223c0.738-0.065,1.499-0.045,2.229,0.085\\r\\n\\tC65.458,69.037,65.711,69.036,65.952,69.063z M60.285,68.122c0.308,0.309,0.758,0.494,1.271,0.524\\r\\n\\tc0.559,0.033,1.12-0.044,1.679-0.062c0.542-0.016,1.077,0.035,1.618,0.067c1.091,0.063,2.052-0.308,2.313-1.475\\r\\n\\tc0.261-1.163-0.396-1.98-1.535-2.123c-0.127-0.017-0.256-0.027-0.384-0.038c0.017-0.383,0.12-0.464,0.501-0.463\\r\\n\\tc0.354,0,0.562,0.104,0.894-0.079c-0.256-0.648-0.69-0.868-1.362-0.966c-0.613-0.089-1.241-0.163-1.861-0.142\\r\\n\\tc-0.61,0.021-1.249,0.03-1.854,0.108c-0.354,0.046-1.513,0.355-1.259,0.926c0.224,0.501,1.285,0.418,1.725,0.511\\r\\n\\tc0.063,0.014,0.13,0.019,0.194,0.027c0.038,0.006-0.27,0.186-0.312,0.193c-0.166,0.031-0.339,0.007-0.504,0.049\\r\\n\\tc-0.241,0.062-0.477,0.149-0.687,0.284c-0.432,0.276-0.727,0.726-0.825,1.227C59.779,67.289,59.945,67.78,60.285,68.122z\\r\\n\\t M65.326,66.567c0.288,0,0.435,0.026,0.696,0.154c0,0.13,0,0.259,0,0.389c-0.259,0.131-0.403,0.153-0.696,0.153\\r\\n\\tC65.326,67.205,65.326,66.568,65.326,66.567z M64.017,66.876c0.015,0.221-0.01,0.46-0.01,0.621\\r\\n\\tc-0.207,0.004-0.469,0.049-0.549-0.194c-0.028-0.083-0.016-0.966,0.005-0.97C63.884,66.244,63.995,66.539,64.017,66.876z\\r\\n\\t M63.525,64.59c0.241-0.146,0.613,0.187,0.456,0.445c-0.081,0.132-0.289,0.162-0.41,0.076C63.416,65.001,63.333,64.733,63.525,64.59\\r\\n\\tz M61.335,66.971c0.041-0.105,0.09-0.199,0.115-0.228c0.153-0.167,0.4-0.185,0.612-0.172c0.033,0.283,0.1,0.674-0.07,0.926\\r\\n\\tc-0.207,0-0.522-0.035-0.699-0.155C61.233,67.301,61.277,67.124,61.335,66.971z M87.583,78.107c0.403-0.896,0.97-2.242,0.975-2.242\\r\\n\\tc-2.614-0.139-3.618,3.406-3.915,5.486c-0.258,1.814-0.333,3.752,0.296,5.496c0.229,0.631,0.538,1.335,1.202,1.606\\r\\n\\tc0.858,0.35,1.655-0.174,2.496-0.259c0.467-0.048,0.812,0.158,1.226,0.354c0.858,0.404,1.77,0.686,2.729,0.438\\r\\n\\tc1.914-0.494,2.646-3.116,2.919-4.806c0.364-2.255,0.3-7.115-2.72-7.691c-1.342-0.256-2.675,0.378-3.733,1.143\\r\\n\\tc-0.603,0.435-1.202,0.875-1.85,1.242C87.261,78.806,87.407,78.5,87.583,78.107z M91.365,84.444\\r\\n\\tc-0.189,0.591-0.502,1.366-1.008,1.421c-0.419,0.045,0.036-1.502,0.151-1.646c0.309-0.388,0.63-0.446,1.088-0.446\\r\\n\\tC91.555,83.772,91.484,84.072,91.365,84.444z M87.316,82.708c0.457-1.319,1.479-2.535,2.437-3.354\\r\\n\\tc0.596-0.509,0.93-0.587,1.686-0.619c0.242,0.611,0.824,1.771,0.337,2.399c-0.246,0.317-1.022,0.598-1.389,0.803\\r\\n\\tc-0.934,0.522-1.749,1.195-2.215,2.18c-0.254,0.536-0.38,1.099-0.527,1.669c0.009-0.033-0.506-0.978-0.54-1.193\\r\\n\\tC87.005,83.961,87.108,83.305,87.316,82.708z M84.855,70.209c-1.147,1.579-2.348,3.215-3.796,4.532\\r\\n\\tc-1.119,1.018-2.363,1.969-3.194,3.253c-0.455,0.704-0.728,1.459-0.838,2.29c1.686-0.431,2.753-1.877,3.926-3.074\\r\\n\\tc1.161-1.187,2.251-2.491,3.755-3.269c0.253-0.131,3.619-1.103,3.636-0.633c0.028,0.78,0.114,2.019,0.786,2.545\\r\\n\\tc0.725,0.566,1.334-0.1,1.654-0.742c0.146-0.291,0.738-2.424,0.891-2.423c1.801,0.01,3.579-0.367,5.37-0.35\\r\\n\\tc1.962,0.02,3.322,1.247,5.083,1.886c1.233,0.447,3.409,0.133,2.219-1.604c-0.996-1.452-3.19-2.079-4.832-2.362\\r\\n\\tc-2.055-0.354-4.188-0.079-6.243,0.116c-0.056,0.005-1.593,0.137-1.591,0.12c0.05-0.5,0.127-0.998,0.149-1.501\\r\\n\\tc0.062-1.469-0.702-3.52,0.946-4.383c0.919-0.48,2.369-0.653,2.338-1.982c-0.02-0.847-0.795-1.549-1.606-1.647\\r\\n\\tc-0.973-0.118-1.534,0.646-2.354,0.977c-1.007,0.407-1.672-0.311-2.269-1.05c1.195-1.466,5.117-4.465,1.893-6.23\\r\\n\\tc-1.015-0.555-2.038-0.384-2.43,0.644c-0.255,0.667-0.454,1.434-0.812,2.053c-0.571,0.989-1.231,1.93-1.668,2.991\\r\\n\\tc-0.218,0.532-0.38,1.079-0.549,1.628c0.781,0.225,2.858-0.402,2.79,0.931c-2.672,1.489-5.587,2.811-7.673,5.115\\r\\n\\tc2.03,0.696,3.513,0.122,5.392-0.714c0.493-0.22,1.006-0.404,1.507-0.604c-0.413,0.594-0.827,1.188-1.24,1.782\\r\\n\\tC86.095,68.503,84.901,70.147,84.855,70.209z M87.523,70.085c0.496-0.55,1.029-1.071,1.595-1.581\\r\\n\\tc0.525,0.46,0.159,1.902,0.231,2.558c0.019,0.166-2.884,0.877-3.254,0.853C86.53,71.262,87.006,70.659,87.523,70.085z\\r\\n\\t M108.411,97.184c0.161,0.132,0.319,0.255,0.445,0.414c-1.8,0-3.71-0.521-5.521-0.678c-1.887-0.164-3.781-0.24-5.675-0.206\\r\\n\\tc-4.302,0.079-8.451,0.86-12.602,1.959c-4.854,1.285-9.646,2.806-14.546,3.916c-3.085,0.699-6.225,1.243-9.365,1.631\\r\\n\\tc-2.93,0.361-6.111,0.43-9.049,0.142c-3.123-0.307-6.18-0.97-9.209-1.776c-2.743-0.73-5.696-1.408-8.215-2.755\\r\\n\\tc-0.727-0.389-1.6-0.643-2.25-1.16c1.132-0.438,2.461-0.487,3.632-0.873c1.213-0.398,2.372-0.954,3.41-1.699\\r\\n\\tc0.429-0.309,0.797-0.771,1.267-1.016c0.751-0.392,1.782,1.09,2.355,1.53c1.105,0.848,2.315,1.553,3.593,2.106\\r\\n\\tc1.661,0.72,3.564,1.133,5.362,1.329s3.675,0.223,5.481,0.149c1.891-0.076,3.826-0.29,5.702-0.54\\r\\n\\tc4.974-0.663,9.808-1.942,14.701-3.007c2.65-0.577,5.31-1.157,7.981-1.625c2.448-0.429,4.901-0.69,7.379-0.867\\r\\n\\tc2.527-0.18,5.079-0.091,7.591,0.229c2.386,0.303,5.039,0.97,7.017,2.401C108.072,96.916,108.243,97.047,108.411,97.184z\\r\\n\\t M111.182,97.468c0.082,0.093,0.157,0.189,0.225,0.29c-1.493-0.322-2.789-1.693-4.148-2.368c-1.555-0.771-3.188-1.406-4.891-1.762\\r\\n\\tc-2.172-0.453-4.288-0.535-6.502-0.547c-2.188-0.012-4.358,0.163-6.533,0.4c-2.088,0.229-4.164,0.562-6.22,1.001\\r\\n\\tc-2.096,0.448-4.194,0.948-6.278,1.447c-3.829,0.919-7.682,1.772-11.544,2.542c-1.889,0.377-3.803,0.596-5.717,0.799\\r\\n\\tc-1.938,0.205-4.032,0.324-5.973,0.094c-1.967-0.234-3.868-0.562-5.724-1.281c-1.812-0.701-3.734-1.65-5.061-3.105\\r\\n\\tc-0.357-0.393-0.878-0.684-0.745-1.285c0.209-0.943,1.152-1.867,1.709-2.637c-0.161,0.222,6.492,3.337,7.139,3.558\\r\\n\\tc2.125,0.726,4.419,1.215,6.666,1.325c2.342,0.116,4.583-0.185,6.883-0.572c2.35-0.396,4.642-0.868,6.957-1.44\\r\\n\\tc2.197-0.543,4.375-1.162,6.569-1.718c2.185-0.554,4.394-1.022,6.617-1.391c2.25-0.372,4.51-0.553,6.789-0.532\\r\\n\\tc2.322,0.021,4.608,0.239,6.868,0.8c2.218,0.55,4.423,1.271,6.499,2.228c1.291,0.596,2.472,1.396,3.628,2.217\\r\\n\\tC109.242,96.129,110.467,96.659,111.182,97.468z M33.095,97.886c-2.879,0.326-6.002-0.209-8.494-1.607\\r\\n\\tc-2.755-1.546-4.938-4.505-5.199-7.706c-0.311-3.802,2.821-6.426,6.295-7.144c1.283-0.266,3.218-0.45,4.229,0.607\\r\\n\\tc0.926,0.969,0.399,2.462-0.021,3.54c-0.271,0.696-0.345,1.15-1.177,1.062c-0.542-0.058-1.29-0.344-1.542-0.867\\r\\n\\tc-0.383-0.798,0.507-1.197,0.627-1.922c0.044-0.337-1.544,0.204-1.635,0.265c-0.549,0.363-1.111,1.022-1.247,1.681\\r\\n\\tc-0.22,1.069,0.364,2.222,1.188,2.881c1.666,1.333,4.609,0.79,6.177-0.472c1.753-1.41,2.351-4.098,1.741-6.163\\r\\n\\tc-0.578-1.957-2.185-3.129-4.103-3.686c-2.647-0.768-5.264,0.492-7.423,1.963c-1.806,1.23-3.401,2.916-4.926,4.384\\r\\n\\tc-2.292,2.207-4.436,4.876-7.299,6.467c-2.321,1.291-4.816,1.192-6.978-0.401c-0.772-0.57-1.42-1.29-1.998-2.053\\r\\n\\tC1.12,88.462,0.229,86.693,0,86.638c1.669,0.396,3.132,1.151,4.904,1.243c1.637,0.084,3.651-0.044,4.916-1.225\\r\\n\\tc1.299-1.214,1.427-3.367,0.534-4.854c-0.931-1.549-3.035-2.014-4.443-0.788c-1.544,1.343-0.301,2.817,1.001,3.691\\r\\n\\tc0.196,0.132,0.374,0.237,0.521,0.421c-1.219,0.622-3.195,0.095-3.948-1.051c-0.771-1.174-0.56-2.888-0.196-4.162\\r\\n\\tc0.772-2.698,3.163-4.492,6.013-4.252c1.128,0.095,2.19,0.579,3.104,1.229c2.115,1.504,1.424,3.12,0.607,5.177\\r\\n\\tc0.033-0.083,1.409-0.373,1.583-0.45c0.535-0.236,1.074-0.545,1.486-0.965c1.343-1.367,0.97-3.726,0.001-5.125\\r\\n\\tc-1.019-1.473-2.674-2.225-4.423-2.449c-0.73-0.094-2.211,0.384-2.194-0.596c0.013-0.74,0.735-1.621,1.271-2.066\\r\\n\\tc0.711-0.592,1.612-0.829,2.507-0.929c1.413-0.157,1.737,0.27,2.2,1.539c0.377,1.035,0.686,2.072,1.691,2.677\\r\\n\\tc1.091,0.654,2.523,0.556,3.733,0.382c2.517-0.361,4.817-2.215,4.434-5.037c-0.208-1.526-1.5-1.972-2.834-2.248\\r\\n\\tc0.377,1.568,0.546,3.389-1.401,3.861c-1.761,0.428-3.905-0.562-4.361-2.392c-0.458-1.835,0.748-3.797,2.199-4.833\\r\\n\\tc1.512-1.079,3.377-1.169,5.127-0.699c2.045,0.549,3.806,1.767,5.466,3.038c-0.905-2.649-1.794-5.676,1.102-7.373\\r\\n\\tc2.208-1.295,5.284-1.744,7.759-1.09c1.425,0.377,2.699,1.137,3.949,1.893c-1.647,1.353-3.903,3.578-3.228,5.968\\r\\n\\tc0.191,0.678,0.638,1.151,1.134,1.627c0.727-2.586,1.742-5.089,4.352-6.265c2.306-1.038,5.287-0.748,6.728,1.524\\r\\n\\tc0.804,1.269,1.02,2.819,1.244,4.274c-2.286,0.171-6.951,1.043-6.6,4.252c0.087,0.796,0.594,1.438,1.098,2.026\\r\\n\\tc1.875-2.179,4.423-4.116,7.474-3.573c2.354,0.42,4.896,2.029,5.293,4.557c0.215,1.372-0.21,2.753-0.6,4.054\\r\\n\\tc2.14-0.942,4.407-2.234,6.807-2.212c1.771,0.017,3.523,0.78,4.663,2.151c1.179,1.416,1.503,3.347,0.739,5.039\\r\\n\\tc-0.708,1.568-2.327,2.93-4.106,2.955c-1.779,0.024-2.856-1.396-3.672-2.79c-0.11-0.188-0.218-0.38-0.324-0.571\\r\\n\\tc-0.126-0.228-1.666,1.524-1.749,1.812c-0.238,0.828,0.128,1.707,0.571,2.396c1.221,1.899,3.558,2.766,5.751,2.147\\r\\n\\tc-1.186,1.258-2.466,2.005-4.244,1.713c-1.532-0.25-3.188-1.052-4.197-2.251c-0.589-0.7-0.9-1.545-1.169-2.407\\r\\n\\tc-1.343,1.537-2.781,3.556-4.859,4.099c-1.545,0.403-3.373-0.107-4.755-0.819c-2.311-1.19-5.279-6.468-1.305-7.597\\r\\n\\tc2.587-0.735,2.122,2.495,1.421,3.912c1.47-0.532,3.196-1.462,3.327-3.204c0.143-1.911-1.414-3.684-3.111-4.336\\r\\n\\tc-1.804-0.693-3.868-0.173-5.052,1.373c-1.127,1.471-1.137,3.36-1.036,5.124c0.111,1.931,0.155,3.818-0.008,5.75\\r\\n\\tc-0.322,3.816-5.085,7.017-8.482,7.74C33.98,97.764,33.541,97.835,33.095,97.886z M112.183,37.499\\r\\n\\tc0.791,1.95-4.498,3.068-5.611,3.268c-3.585,0.642-4.262,3.046-4.143,6.418c0.108,3.057,0.398,6.032,0.102,9.094\\r\\n\\tc-0.349,3.584-1.622,6.092-4.034,8.733c-0.835-2.273,0.143-5.537,0.076-7.979c-0.076-2.815-0.312-5.588-0.312-8.403\\r\\n\\tc0-1.483,0.068-2.902,0.233-4.382c-0.079,0.707-6.53,2.219-7.348,2.46c-2.81,0.829-5.644,1.572-8.469,2.347\\r\\n\\tc-1.299,0.356-2.502,0.681-3.867,0.46c0.317-1.627,3.344-2.098,4.639-2.747c1.971-0.989,3.873-2.107,5.854-3.079\\r\\n\\tc3.184-1.562,9.926-2.87,9.38-7.564c-0.152-1.31-0.529-3.192,0.692-4.15c1.103-0.864,2.337-0.203,2.939,0.887\\r\\n\\tc0.771,1.391,0.548,3.279,0.444,4.797c2.164-0.55,6.719-2.665,8.735-1.004C111.854,36.952,112.076,37.233,112.183,37.499z\\r\\n\\t M83.567,44.198c2.29-2.329,4.755-4.473,7.132-6.723c1.516-1.434,2.974-2.927,4.464-4.387l1.086-1.164l1.085-1.161\\r\\n\\tc0.741-0.795,1.385-1.589,2.013-2.48c-1.717,0.525-3.192,1.26-4.622,2.349c-1.211,0.922-2.644,2.469-4.306,2.393\\r\\n\\tc-4.057-0.187-2.824-5.947-1.549-8.094c0.875-1.472,2.888-7.141,5.273-6.726c1.719,0.299,1.498,3.721,2.026,4.962\\r\\n\\tc2.841-1.443,6.4-3.21,9.693-2.598c3.896,0.725,1.681,4.314-0.188,6.046c-2.514,2.331-5.725,3.678-8.413,5.771\\r\\n\\tc-2.711,2.11-5.001,4.729-7.473,7.104c-2.654,2.55-5.504,4.844-8.422,7.083C82.076,45.754,82.812,44.966,83.567,44.198z\\\"\\/>\\r\\n<\\/svg>\\r\\n\",\"baseStyle\":{\"backgroundColor\":\"rgba(0,0,0,0)\",\"color\":\"#000\",\"opacity\":0,\"paddingTop\":0,\"lineHeight\":2,\"fontSize\":14,\"textAlign\":\"left\",\"lock\":false},\"borderStyle\":{\"borderWidth\":0,\"borderRadius\":2,\"borderStyle\":\"solid\",\"borderColor\":\"rgba(0,0,0,1)\",\"transform\":0},\"shadowStyle\":{\"shadowSize\":0,\"shadowBlur\":0,\"shadowColor\":\"rgba(0,0,0,0.5)\",\"shadowDirection\":1},\"animationStyle\":{\"animationName\":\"noEffect\",\"animationDuration\":1,\"animationTimingFunction\":\"ease\",\"animationDelay\":0.6,\"animationFillMode\":\"both\"},\"positionStyle\":{\"top\":165,\"left\":103,\"width\":100,\"height\":93},\"catlistActive\":2,\"imgListActive\":20},\"issystem\":0,\"index\":3,\"displayorder\":3,\"baseStyle\":\"background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;\",\"borderStyle\":\"border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);\",\"transform\":\"transform: rotateZ(0deg);\",\"shadowStyle\":\"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);\",\"positionStyle\":\"position:absolute;top:165px;left:103px;width:100px;height:93.1167px;\",\"animationStyle\":\"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"},{\"id\":\"pureLink\",\"name\":\"\\u94fe\\u63a5\",\"params\":{\"items\":[{\"id\":\"1\",\"type\":\"text\",\"title\":\"\\u767e\\u5ea6url\",\"url\":\"https:\\/\\/www.baidu.com\",\"color\":\"#fff\",\"editcolor\":\"danger\",\"discolor\":\"#d9534f\",\"active\":1},{\"id\":\"2\",\"type\":\"text\",\"title\":\"\\u70b9\\u5f00\\u94fe\\u63a5\",\"url\":\"\",\"color\":\"#fff\",\"editcolor\":\"warning\",\"discolor\":\"#ec971f\",\"active\":0},{\"id\":\"3\",\"type\":\"text\",\"title\":\"\\u9a6c\\u4e0a\\u8d2d\\u4e70\",\"url\":\"\",\"color\":\"#fff\",\"editcolor\":\"success\",\"discolor\":\"#449d44\",\"active\":0},{\"id\":\"4\",\"type\":\"text\",\"title\":\"\\u5173\\u6ce8\\u6211\\u4eec\",\"url\":\"\",\"color\":\"#000\",\"editcolor\":\"default\",\"discolor\":\"#fff\",\"active\":0},{\"id\":\"5\",\"type\":\"img\",\"title\":\"\\u81ea\\u5b9a\\u4e49\",\"url\":\"\",\"imgurl\":\"\",\"editcolor\":\"primary\",\"discolor\":\"\",\"active\":0}],\"baseStyle\":{\"backgroundColor\":\"#d9534f\",\"color\":\"#fff\",\"opacity\":0,\"paddingTop\":0,\"lineHeight\":\"33px\",\"fontSize\":\"14\",\"textAlign\":\"center\",\"lock\":false},\"borderStyle\":{\"borderWidth\":1,\"borderRadius\":4,\"borderStyle\":\"solid\",\"borderColor\":\"#ADADAD\",\"transform\":0},\"shadowStyle\":{\"shadowSize\":0,\"shadowBlur\":0,\"shadowColor\":\"rgba(0,0,0,0.5)\",\"shadowDirection\":1},\"animationStyle\":{\"animationName\":\"noEffect\",\"animationDuration\":1,\"animationTimingFunction\":\"ease\",\"animationDelay\":0.6,\"animationFillMode\":\"both\"},\"positionStyle\":{\"top\":277,\"left\":113,\"width\":85,\"height\":35}},\"issystem\":0,\"index\":4,\"displayorder\":4,\"baseStyle\":\"background-color:#d9534f;color:#fff;opacity:1;padding-top:0px;line-height:33px;font-size:14px;font-size:14px;text-align:center;\",\"borderStyle\":\"border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;\",\"transform\":\"transform: rotateZ(0deg);\",\"shadowStyle\":\"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);\",\"positionStyle\":\"position:absolute;top:277px;left:113px;width:85px;height:35px;\",\"animationStyle\":\"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\",\"paddingTop\":0},{\"id\":\"dial\",\"name\":\"\\u62e8\\u53f7\",\"params\":{\"items\":[{\"id\":\"1\",\"type\":\"text\",\"title\":\"\\u4e00\\u952e\\u62e8\\u53f7\",\"tel\":\"18656506404\",\"color\":\"#fff\",\"editcolor\":\"danger\",\"discolor\":\"#d9534f\",\"active\":1},{\"id\":\"2\",\"type\":\"text\",\"title\":\"\\u70ed\\u7ebf\\u7535\\u8bdd\",\"tel\":\"\",\"color\":\"#fff\",\"editcolor\":\"warning\",\"discolor\":\"#ec971f\",\"active\":0},{\"id\":\"3\",\"type\":\"text\",\"title\":\"\\u62e8\\u6253\\u7535\\u8bdd\",\"tel\":\"\",\"color\":\"#fff\",\"editcolor\":\"success\",\"discolor\":\"#449d44\",\"active\":0},{\"id\":\"4\",\"type\":\"text\",\"title\":\"\\u9500\\u552e\\u4e13\\u7ebf\",\"tel\":\"\",\"color\":\"#000\",\"editcolor\":\"default\",\"discolor\":\"#fff\",\"active\":0},{\"id\":\"5\",\"type\":\"img\",\"title\":\"\\u81ea\\u5b9a\\u4e49\",\"tel\":\"\",\"imgurl\":\"\",\"editcolor\":\"primary\",\"discolor\":\"\",\"active\":0}],\"baseStyle\":{\"backgroundColor\":\"#d9534f\",\"color\":\"#fff\",\"opacity\":0,\"paddingTop\":0,\"lineHeight\":\"33px\",\"fontSize\":24,\"textAlign\":\"center\",\"lock\":false},\"borderStyle\":{\"borderWidth\":1,\"borderRadius\":4,\"borderStyle\":\"solid\",\"borderColor\":\"#ADADAD\",\"transform\":0},\"shadowStyle\":{\"shadowSize\":0,\"shadowBlur\":0,\"shadowColor\":\"rgba(0,0,0,0.5)\",\"shadowDirection\":1},\"animationStyle\":{\"animationName\":\"noEffect\",\"animationDuration\":1,\"animationTimingFunction\":\"ease\",\"animationDelay\":0.6,\"animationFillMode\":\"both\"},\"positionStyle\":{\"top\":333,\"left\":76,\"width\":163,\"height\":35}},\"issystem\":0,\"index\":5,\"displayorder\":5,\"baseStyle\":\"background-color:#d9534f;color:#fff;opacity:1;padding-top:0px;line-height:33px;font-size:24px;font-size:24px;text-align:center;\",\"borderStyle\":\"border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;\",\"transform\":\"transform: rotateZ(0deg);\",\"shadowStyle\":\"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);\",\"positionStyle\":\"position:absolute;top:333px;left:76px;width:163px;height:35px;\",\"animationStyle\":\"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"},{\"id\":\"good\",\"name\":\"\\u70b9\\u8d5e\",\"params\":{\"bgcolor\":\"#d15d82\",\"color\":\"#fff\",\"layoutstyle\":1,\"layoutactive\":\"lr\",\"baseStyle\":{\"backgroundColor\":\"#d15d82\",\"color\":\"#fff\",\"opacity\":0,\"paddingTop\":0,\"lineHeight\":\"48px\",\"fontSize\":\"14px\",\"textAlign\":\"center\",\"lock\":false},\"borderStyle\":{\"borderWidth\":1,\"borderRadius\":4,\"borderStyle\":\"solid\",\"borderColor\":\"#ADADAD\",\"transform\":0},\"shadowStyle\":{\"shadowSize\":0,\"shadowBlur\":0,\"shadowColor\":\"rgba(0,0,0,0.5)\",\"shadowDirection\":1},\"animationStyle\":{\"animationName\":\"noEffect\",\"animationDuration\":1,\"animationTimingFunction\":\"ease\",\"animationDelay\":0.6,\"animationFillMode\":\"both\"},\"positionStyle\":{\"top\":406,\"left\":81,\"width\":150,\"height\":50}},\"issystem\":0,\"index\":6,\"displayorder\":6,\"baseStyle\":\"background-color:#d15d82;color:#fff;opacity:1;padding-top:0px;line-height:48px;font-size:14px;font-size:14px;text-align:center;\",\"borderStyle\":\"border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;\",\"transform\":\"transform: rotateZ(0deg);\",\"shadowStyle\":\"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);\",\"positionStyle\":\"position:absolute;top:406px;left:81px;width:150px;height:50px;\",\"animationStyle\":\"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"},{\"id\":\"countDown\",\"name\":\"\\u5012\\u8ba1\\u65f6\",\"params\":{\"leftTimeText\":{\"day\":0,\"hour\":0,\"min\":32,\"sec\":32},\"deadtime\":\"2016-10-11 10:0:55\",\"textalign\":\"center\",\"baseStyle\":{\"backgroundColor\":\"rgba(0,0,0,0)\",\"color\":\"#000\",\"opacity\":0,\"paddingTop\":0,\"lineHeight\":\"48px\",\"fontSize\":\"13px\",\"textAlign\":\"center\",\"lock\":false},\"borderStyle\":{\"borderWidth\":1,\"borderRadius\":4,\"borderStyle\":\"solid\",\"borderColor\":\"#ccc\",\"transform\":0},\"shadowStyle\":{\"shadowSize\":0,\"shadowBlur\":0,\"shadowColor\":\"rgba(0,0,0,0.5)\",\"shadowDirection\":1},\"animationStyle\":{\"animationName\":\"noEffect\",\"animationDuration\":1,\"animationTimingFunction\":\"ease\",\"animationDelay\":0.6,\"animationFillMode\":\"both\"},\"positionStyle\":{\"top\":494,\"left\":38,\"width\":240,\"height\":50},\"deadtimeToMin\":\"2016-10-11 10:0\"},\"issystem\":0,\"index\":7,\"displayorder\":7,\"baseStyle\":\"background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:48px;font-size:14px;font-size:13px;text-align:center;\",\"borderStyle\":\"border-width:1px;border-radius:4px;border-style:solid;border-color:#ccc;\",\"transform\":\"transform: rotateZ(0deg);\",\"shadowStyle\":\"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);\",\"positionStyle\":\"position:absolute;top:494px;left:38px;width:240px;height:50px;\",\"animationStyle\":\"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"}],\"active\":true}]','<div style=\"height:568px\"><div class=\"panes\"><div class=\"pane\"><div type=\"onlytext\" style=\"position: absolute; top: 123px; left: 62px; width: 200px; height: 30px; transform: translate3d(0px, 0px, 0px);\"><div style=\"transform: rotateZ(0deg);width:100%;height:100%\"><div class=\"app-onlyText\" style=\"width:100%;height:100%;background-color:rgba(0,0,0,0);color:#9900ff;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:center;border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"><div class=\"element\" style=\"overflow:hidden\">测试做个专题页面</div></div><div we7-drag=\"\" we7-resize=\"\" we7-rotate=\"\"> </div></div></div><div type=\"image\" style=\"position: absolute; top: 6px; left: 107px; width: 100px; height: 100px; transform: translate3d(0px, 0px, 0px);\"><div style=\"transform: rotateZ(0deg);width:100%;height:100%\"><div class=\"app-image\" style=\"width:100%;height:100%;background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"><img style=\"width:100%;height:100%\" alt=\"\" src=\"http://wx.purui.cn/km/attachment/images/3/2016/10/tgjb1jnM51kBMnpK6opbiX1JP13JEJ.jpg\"></div><div we7-drag=\"\" we7-resize=\"\" we7-rotate=\"\"> </div></div></div><div type=\"shape\" style=\"position: absolute; top: 165px; left: 103px; width: 100px; height: 93.1215px; transform: translate3d(0px, 0px, 0px);\"><div style=\"transform: rotateZ(0deg);width:100%;height:100%\"><div class=\"app-shape\" style=\"width:100%;height:100%;background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"><div style=\"width:100%;height:100%\" class=\"element-scope\" we7-svger=\"\" we7-svg=\"module.params.svgValue\"><svg version=\"1.1\" id=\"图层_1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" x=\"0px\" y=\"0px\" width=\"100%\" height=\"100%\" viewBox=\"0 0 112.263 104.541\" enable-background=\"new 0 0 112.263 104.541\" xml:space=\"preserve\" preserveAspectRatio=\"none\">\r\n<path fill-rule=\"evenodd\" clip-rule=\"evenodd\" fill=\"#5FB63B\" d=\"M79.549,38.151c1.607-1.097,2.538-3.149,3.105-4.922\r\n	c1.507-4.706,0.428-9.681-5.297-9.705c-2.671-0.011-5.267,0.873-7.762,1.73c1.159-1.281,2.191-2.69,3.516-3.81\r\n	c1.136-0.959,3.323-2.064,2.839-3.894c-0.937-3.536-7.175,0.892-8.615,2.14c-1.511,1.309-1.914,3.235,0.63,2.888\r\n	c0.041,0.019,0.066,0.048,0.076,0.088c0.753,3.226-14.027,11.487-6.859,14.454c1.464,0.606,1.788-0.418,1.52-1.667\r\n	c-0.291-1.349-1.008-2.206-0.066-3.478c0.889-1.198,2.611-1.928,3.928-2.53c-0.212,1.493-1.241,4.627,0.633,5.52\r\n	c2.049,0.975,2.104-2.722,2.718-3.839c0.539-0.978,1.42-1.783,2.154-2.612c-0.339,0.382-0.301,2.458-0.429,3.116\r\n	c-0.217,1.118-0.5,2.221-0.819,3.314c-0.607,2.073-1.569,4.099-2.053,6.194c3.21-1.401,4.08-6.28,4.94-9.262\r\n	c0.559-1.934,0.027-5.789,2.891-5.527c1.946,0.178,2.549,1.669,2.511,3.479c-0.051,2.43-0.942,5.171-3.009,6.625\r\n	c-0.946,0.665-2.453,1.263-3.617,1.141c1.147,1.727,4.588,1.72,6.29,0.987C79.047,38.461,79.306,38.317,79.549,38.151z\r\n	 M70.462,28.331c-0.132,0.248-0.255,0.476-0.28,0.508c-0.345,0.428-0.795,0.752-1.283,0.999c0.038-0.019,0.026-1.365,0.249-1.625\r\n	c0.417-0.487,1.091-0.549,1.68-0.549C70.817,27.663,70.632,28.012,70.462,28.331z M62.408,13.899\r\n	c-0.136-0.778-0.146-1.589-0.075-2.265c0.154-1.489,0.422-2.922,0.439-4.428c1.457-0.4,1.775-1.785,2.012-3.101\r\n	c1.755,1.601,1.823,3.911,2.018,6.118c3.122-1.485,4.104-2.716,4.817-6.063c0.523-2.459,1.261-6.124,3.516-2.886\r\n	c2.453,3.523,3.473,1.939,7.232,2.264c3.984,0.345-0.042,3.722-1.57,4.87c-3.004,2.256-6.289,4.182-8.807,6.93l-0.853,0.931\r\n	l-0.466,0.388l-0.541,0.388l0.154-0.465c0,0,0.301-0.453,0.31-0.465c0.636-0.958,1.613-1.636,2.228-2.633\r\n	c-1.109-0.542-1.851-1.542-1.992-2.779c-1.338,1.745-2.646,5.46-4.974,6.027C63.68,17.259,62.717,15.664,62.408,13.899z\r\n	 M51.577,5.959c0.028-1.342,0.65-1.465,2.253-0.909c4.292,1.49,2.022,6.921-0.645,5.037c-0.593-0.419-1.585-3.128-1.607-3.864\r\n	C51.576,6.13,51.575,6.042,51.577,5.959z M46.392,23.853c-0.023-0.133-0.037-0.255-0.039-0.364c-0.013-0.575,1.91-3.348,1.919-3.341\r\n	c-3.708-2.876-0.068-3.521,2.562-4.642c1.227-0.523,2.286-1.424,3.696-0.998c1.355,0.409,2.258,1.696,1.452,2.972\r\n	c-0.854,1.353-2.563,1.979-3.441,3.436c0.859,1.017,2.694,0.803,3.416,1.975c1.157,1.884-1.551,4.354-2.662,5.577\r\n	c-1.735,1.911-3.71,3.685-6.258,4.387c1.434-2.783,3.618-4.943,4.563-7.979c-1.167,0.334-2.408,2.542-3.779,1.672\r\n	C47.161,26.127,46.55,24.759,46.392,23.853z M44.561,36.807c-0.174-0.895,0.522-1.976,2.011-2.454\r\n	c3.059-0.981,4.667-3.07,7.074-5.085c2.235-1.869,4.173-3.768,5.953-6.08c0.923-1.198,1.433-2.888,2.626-3.808\r\n	c-0.916,4.119-2.243,8.465-4.572,12.019c-1.24,1.893-2.699,3.201-4.707,4.235c-1.77,0.912-3.85,2.536-5.901,2.566\r\n	C45.523,38.223,44.712,37.585,44.561,36.807z M73.82,56.217c0.511,0.586,1.251,2.53,0.138,2.973\r\n	c-1.432,0.567-2.293-0.708-2.751-1.852c-0.287-0.718-0.254-1.811,0.716-1.929C72.664,55.32,73.346,55.672,73.82,56.217z\r\n	 M63.979,50.859c-0.151-0.072-0.285-0.164-0.397-0.277c-1.348-1.372,1.631-2.328,2.564-2.274c1.532,0.088,3.158-0.124,4.669,0.083\r\n	c0.953,0.131,2.738,1.152,1.474,2.175c-1.115,0.901-3.299,0.411-4.614,0.428C66.715,51.005,64.976,51.336,63.979,50.859z\r\n	 M64.192,57.189c0,0.064-0.003,0.129-0.008,0.193c-0.084,1.045-1.541,2.577-2.55,1.44c-0.798-0.898,0.293-2.292,1.064-2.798\r\n	C63.737,55.344,64.198,56.284,64.192,57.189z M59.435,52.849c-1.124,1.124-2.162,1.684-3.798,1.473\r\n	c-0.358,1.675,0.242,4.656-1.456,5.662c-0.815,0.483-2.304,0.545-3.048-0.135c-0.764-0.697-0.009-1.383,0.532-1.934\r\n	c0.625-0.637,1.442-1.439,1.047-2.418c-0.4-0.991-1.625-1.17-2.556-1.18c-0.901-0.01-2.106,0.246-2.818-0.476\r\n	c-0.657-0.665-0.436-1.69,0.314-2.172c1.9-1.222,4.536,0.82,5.016-2.286c0.294-1.9,0.34-3.608,1.032-5.448\r\n	c0.166-0.441,1.345,0.771,1.424,0.952c0.224,0.51,0.207,1.147,0.204,1.694c-0.005,1.157-0.693,3.447,0.231,4.358\r\n	c0.545,0.537,1.918,0.483,2.629,0.688c0.485,0.139,0.912,0.319,1.237,0.718c0.297-2.41-0.188-6.549,2.573-7.78\r\n	c0.549-0.245,1.091-0.121,0.845,0.608c1.28-0.53,2.584-0.809,3.954-1.007c0-0.749,0.108-1.502,0.077-2.246\r\n	c0.776-0.106,1.578-0.186,2.229,0.329c0.57,0.45,0.815,1.202,1.396,1.645c1.22,0.93,2.919,0.095,4.172,1.124\r\n	c1.17,0.961,1.979,2.629,2.145,4.115c0.156,1.403,0.339,3.333-0.2,4.663c-0.274,0.676-0.951,1.602-1.768,1.628\r\n	c-0.851,0.028-1.07-0.899-1.232-1.567c-0.811,0.801-1.625,0.792-2.7,0.855c-1.247,0.074-1.449,0.669-1.374,1.846\r\n	c0.072,1.127,0.197,2.135-0.449,3.126c-0.473,0.727-1.253,1.682-2.163,1.815c-1.067,0.157-2.401-0.879-2.613-1.926\r\n	c-0.226-1.123,0.856-1.062,1.577-1.436c0.798-0.413,1.121-1.486,0.883-2.341c-0.333-1.191-1.877-0.928-2.843-1.073\r\n	c-0.441-0.066-1.419-0.174-1.551-0.729c-0.165-0.696,1.021-1.165,1.484-1.354c2.571-1.046,5.694-1.028,8.328-0.239\r\n	c0.555,0.166,1.098,0.368,1.639,0.572c0.53-2.926-0.008-5.927-3.471-6.325c-2.425-0.279-6.74-0.218-7.966,2.348\r\n	c-0.354,0.738-0.456,1.579-0.499,2.387c-0.06,1.108,0.385,2.259-0.217,3.304c-0.612,1.063-1.455,0.547-1.89-0.383\r\n	C59.701,54.11,59.214,53.07,59.435,52.849z M58.608,56.075c0.565,1.015,0.354,3.051-1.068,2.222\r\n	c-0.666-0.388-0.993-1.911-0.369-2.445C57.817,55.298,58.316,55.55,58.608,56.075z M58.893,47.121\r\n	c-0.02,0.529,0.002,1.061,0.089,1.6c0.17,1.057-0.642,1.993-1.73,1.324c-2.003-1.229-1.581-5.83,1.109-5.957\r\n	C59.693,44.025,58.92,46.387,58.893,47.121z M50.054,55.719c0.812,0.836,0.385,2.513-0.857,2.666\r\n	c-1.519,0.187-1.376-2.797-0.028-2.937C49.574,55.407,49.859,55.519,50.054,55.719z M48.169,47.467c0.07-1.165-0.856-3.39,1-3.617\r\n	c3.427-0.418,2.703,4.95,0.386,5.949C47.267,50.786,48.106,48.514,48.169,47.467z M74.591,71.065\r\n	c0.053,0.633,0.258,1.258,0.721,1.683c0.435,0.399,1.157,0.414,1.708,0.328c0.532-0.084,0.719-0.555,0.949-0.983\r\n	c0.222-0.414,0.288-0.869,0.045-1.295c-0.294-0.515-0.716-0.452-0.947,0.041c-0.223,0.472-0.654,0.654-0.9,0.068\r\n	c-0.325-0.775-0.287-1.61-0.233-2.431c0.059-0.882,0.079-1.764,0.086-2.646c0.006-0.739,0.137-1.91-0.696-2.269\r\n	c-0.403-0.174-0.885-0.146-1.313-0.148c-0.442-0.002-0.884-0.018-1.326-0.029c-0.848-0.022-1.689,0.118-2.535,0.021\r\n	c-0.396-0.045-0.817-0.161-1.216-0.087c-1.695,0.315-1.362,2.97-1.4,4.215c-0.013,0.4-0.009,0.805-0.037,1.204\r\n	c-0.048,0.676-0.141,1.286-0.298,1.946c-0.062,0.257-0.213,0.519-0.391,0.712c-0.092,0.099-0.197,0.197-0.331,0.234\r\n	c-0.105,0.029-0.35,0.031-0.249-0.158c0.073-0.141,0.378-0.197,0.491-0.327c0.166-0.189,0.151-0.412,0.081-0.625\r\n	c-0.028-0.087-1.109-0.049-1.234-0.052c-0.401-0.011-0.801-0.039-1.201-0.068c-0.853-0.062-1.711-0.11-2.564-0.032\r\n	c-0.589,0.055-1.206,0.096-1.684,0.5c-0.271,0.229-0.209,0.438,0.113,0.536c0.386,0.118,0.527,0.128,0.523,0.574\r\n	c-0.002,0.289,0.001,0.578,0.001,0.866c0.402,0,1.258,0.069,1.214-0.565c-0.016-0.214-0.19-0.552,0.022-0.703\r\n	c0.341-0.242,1.055,0.086,1.022,0.518c-0.025,0.326-0.357,0.272-0.565,0.423c-0.426,0.309,0.273,1.039,0.652,1.036\r\n	c0.567-0.005,0.9-0.462,1.22-0.862c0.106-0.373,0.154-0.695,0.154-1.085c0.129-0.042,0.379-0.144,0.516-0.077\r\n	c0.154,0.075,0.104,0.27,0.104,0.422c0.001,0.272-0.076,0.793,0.218,0.962c0.12,0.068,1.06-0.109,1.023-0.222\r\n	c0.089,0.278,0.143,0.68,0.506,0.678c0.917-0.005,1.554-1.198,1.796-1.931c0.135-0.407,0.112-0.868,0.159-1.292\r\n	c0.023-0.209,0.076-0.437,0.131-0.637c-0.038,0.14,0.314,0.575,0.405,0.669c0.196,0.202,0.591,0.396,0.688,0.686\r\n	c0.066,0.197-0.133,0.562-0.143,0.783c-0.016,0.346,0.025,0.741,0.192,1.051c0.188,0.348,0.626,0.391,0.979,0.395\r\n	c0.51,0.006,1.021-0.01,1.532-0.011c0.414-0.001,0.724,0.08,0.903-0.358c0.167-0.408,0.216-0.86,0.264-1.295\r\n	c0.037-0.344,0.018-0.738,0.171-1.057c0.136-0.281,0.41-0.309,0.708-0.314C74.579,70.374,74.562,70.72,74.591,71.065z\r\n	 M69.648,65.066c0.063-0.077,0.123-0.155,0.157-0.184c0.135-0.113,0.285-0.172,0.456-0.207c0.382-0.079,0.775-0.035,1.162-0.074\r\n	c0.713-0.072,1.424-0.044,2.14-0.048c0.214-0.001,0.384,0.02,0.59,0.078c0.183,0.052,0.339,0.171,0.463,0.312\r\n	c-0.596,0.383-1.365,0.229-2.031,0.229c-0.664,0-1.327-0.019-1.988,0.042c-0.384,0.035-0.77,0.036-1.154,0.035\r\n	C69.49,65.25,69.572,65.159,69.648,65.066z M70.099,66.983c-0.278,0.066-0.54,0.162-0.733,0.426\r\n	c-0.125,0.173-0.084,0.33-0.089,0.554c-0.13-0.262-0.296-0.485-0.208-0.787c0.07-0.237,0.256-0.473,0.452-0.619\r\n	c0.319-0.241,0.647-0.254,1.038-0.227c0.2,0.014,0.388,0.097,0.578,0.16c0.034,0.012-0.435,0.345-0.505,0.366\r\n	C70.457,66.911,70.275,66.941,70.099,66.983z M71.059,69.512c0,0.029-0.384-0.16-0.417-0.201c-0.11-0.136-0.13-0.327-0.122-0.495\r\n	c0.016-0.343,0.158-0.458,0.385-0.699C71.357,68.245,71.058,69.167,71.059,69.512z M72.456,71.682\r\n	c0.002-0.044-1.81,0.342-1.231-0.499c0.104-0.151,0.29-0.202,0.461-0.237c0.288-0.058,0.566,0.044,0.748,0.279\r\n	C72.581,71.417,72.467,71.464,72.456,71.682z M73.38,68.735c-0.052,0.173-0.15,0.334-0.272,0.414\r\n	c-0.145,0.095-0.335,0.091-0.498,0.131c0-0.103-0.015-1.251,0.077-1.24c0.259,0.029,0.599-0.027,0.705,0.288\r\n	C73.431,68.444,73.422,68.593,73.38,68.735z M74.18,67.228c-0.238-0.141-0.497-0.274-0.56-0.306c-0.323-0.16-0.68-0.213-1.001-0.362\r\n	c-0.106-0.05,0.374-0.237,0.418-0.243c0.246-0.034,0.496,0.039,0.74,0.051c0.284,0.014,0.687-0.166,0.803,0.195\r\n	c0.095,0.291,0.043,0.704,0.043,1.011C74.624,67.508,74.411,67.365,74.18,67.228z M65.952,69.063\r\n	c0.234,0.026,0.457,0.079,0.584,0.212c0.293,0.306-0.068,0.497-0.329,0.592c-0.407,0.148-0.803,0.087-1.225,0.052\r\n	c-0.562-0.048-1.162,0.099-1.723,0.151c-0.634,0.061-1.272,0.1-1.908,0.059c-0.425-0.027-0.933-0.13-1.164-0.537\r\n	c-0.244-0.43,0.815-0.419,1.022-0.448c0.613-0.087,1.227-0.168,1.844-0.223c0.738-0.065,1.499-0.045,2.229,0.085\r\n	C65.458,69.037,65.711,69.036,65.952,69.063z M60.285,68.122c0.308,0.309,0.758,0.494,1.271,0.524\r\n	c0.559,0.033,1.12-0.044,1.679-0.062c0.542-0.016,1.077,0.035,1.618,0.067c1.091,0.063,2.052-0.308,2.313-1.475\r\n	c0.261-1.163-0.396-1.98-1.535-2.123c-0.127-0.017-0.256-0.027-0.384-0.038c0.017-0.383,0.12-0.464,0.501-0.463\r\n	c0.354,0,0.562,0.104,0.894-0.079c-0.256-0.648-0.69-0.868-1.362-0.966c-0.613-0.089-1.241-0.163-1.861-0.142\r\n	c-0.61,0.021-1.249,0.03-1.854,0.108c-0.354,0.046-1.513,0.355-1.259,0.926c0.224,0.501,1.285,0.418,1.725,0.511\r\n	c0.063,0.014,0.13,0.019,0.194,0.027c0.038,0.006-0.27,0.186-0.312,0.193c-0.166,0.031-0.339,0.007-0.504,0.049\r\n	c-0.241,0.062-0.477,0.149-0.687,0.284c-0.432,0.276-0.727,0.726-0.825,1.227C59.779,67.289,59.945,67.78,60.285,68.122z\r\n	 M65.326,66.567c0.288,0,0.435,0.026,0.696,0.154c0,0.13,0,0.259,0,0.389c-0.259,0.131-0.403,0.153-0.696,0.153\r\n	C65.326,67.205,65.326,66.568,65.326,66.567z M64.017,66.876c0.015,0.221-0.01,0.46-0.01,0.621\r\n	c-0.207,0.004-0.469,0.049-0.549-0.194c-0.028-0.083-0.016-0.966,0.005-0.97C63.884,66.244,63.995,66.539,64.017,66.876z\r\n	 M63.525,64.59c0.241-0.146,0.613,0.187,0.456,0.445c-0.081,0.132-0.289,0.162-0.41,0.076C63.416,65.001,63.333,64.733,63.525,64.59\r\n	z M61.335,66.971c0.041-0.105,0.09-0.199,0.115-0.228c0.153-0.167,0.4-0.185,0.612-0.172c0.033,0.283,0.1,0.674-0.07,0.926\r\n	c-0.207,0-0.522-0.035-0.699-0.155C61.233,67.301,61.277,67.124,61.335,66.971z M87.583,78.107c0.403-0.896,0.97-2.242,0.975-2.242\r\n	c-2.614-0.139-3.618,3.406-3.915,5.486c-0.258,1.814-0.333,3.752,0.296,5.496c0.229,0.631,0.538,1.335,1.202,1.606\r\n	c0.858,0.35,1.655-0.174,2.496-0.259c0.467-0.048,0.812,0.158,1.226,0.354c0.858,0.404,1.77,0.686,2.729,0.438\r\n	c1.914-0.494,2.646-3.116,2.919-4.806c0.364-2.255,0.3-7.115-2.72-7.691c-1.342-0.256-2.675,0.378-3.733,1.143\r\n	c-0.603,0.435-1.202,0.875-1.85,1.242C87.261,78.806,87.407,78.5,87.583,78.107z M91.365,84.444\r\n	c-0.189,0.591-0.502,1.366-1.008,1.421c-0.419,0.045,0.036-1.502,0.151-1.646c0.309-0.388,0.63-0.446,1.088-0.446\r\n	C91.555,83.772,91.484,84.072,91.365,84.444z M87.316,82.708c0.457-1.319,1.479-2.535,2.437-3.354\r\n	c0.596-0.509,0.93-0.587,1.686-0.619c0.242,0.611,0.824,1.771,0.337,2.399c-0.246,0.317-1.022,0.598-1.389,0.803\r\n	c-0.934,0.522-1.749,1.195-2.215,2.18c-0.254,0.536-0.38,1.099-0.527,1.669c0.009-0.033-0.506-0.978-0.54-1.193\r\n	C87.005,83.961,87.108,83.305,87.316,82.708z M84.855,70.209c-1.147,1.579-2.348,3.215-3.796,4.532\r\n	c-1.119,1.018-2.363,1.969-3.194,3.253c-0.455,0.704-0.728,1.459-0.838,2.29c1.686-0.431,2.753-1.877,3.926-3.074\r\n	c1.161-1.187,2.251-2.491,3.755-3.269c0.253-0.131,3.619-1.103,3.636-0.633c0.028,0.78,0.114,2.019,0.786,2.545\r\n	c0.725,0.566,1.334-0.1,1.654-0.742c0.146-0.291,0.738-2.424,0.891-2.423c1.801,0.01,3.579-0.367,5.37-0.35\r\n	c1.962,0.02,3.322,1.247,5.083,1.886c1.233,0.447,3.409,0.133,2.219-1.604c-0.996-1.452-3.19-2.079-4.832-2.362\r\n	c-2.055-0.354-4.188-0.079-6.243,0.116c-0.056,0.005-1.593,0.137-1.591,0.12c0.05-0.5,0.127-0.998,0.149-1.501\r\n	c0.062-1.469-0.702-3.52,0.946-4.383c0.919-0.48,2.369-0.653,2.338-1.982c-0.02-0.847-0.795-1.549-1.606-1.647\r\n	c-0.973-0.118-1.534,0.646-2.354,0.977c-1.007,0.407-1.672-0.311-2.269-1.05c1.195-1.466,5.117-4.465,1.893-6.23\r\n	c-1.015-0.555-2.038-0.384-2.43,0.644c-0.255,0.667-0.454,1.434-0.812,2.053c-0.571,0.989-1.231,1.93-1.668,2.991\r\n	c-0.218,0.532-0.38,1.079-0.549,1.628c0.781,0.225,2.858-0.402,2.79,0.931c-2.672,1.489-5.587,2.811-7.673,5.115\r\n	c2.03,0.696,3.513,0.122,5.392-0.714c0.493-0.22,1.006-0.404,1.507-0.604c-0.413,0.594-0.827,1.188-1.24,1.782\r\n	C86.095,68.503,84.901,70.147,84.855,70.209z M87.523,70.085c0.496-0.55,1.029-1.071,1.595-1.581\r\n	c0.525,0.46,0.159,1.902,0.231,2.558c0.019,0.166-2.884,0.877-3.254,0.853C86.53,71.262,87.006,70.659,87.523,70.085z\r\n	 M108.411,97.184c0.161,0.132,0.319,0.255,0.445,0.414c-1.8,0-3.71-0.521-5.521-0.678c-1.887-0.164-3.781-0.24-5.675-0.206\r\n	c-4.302,0.079-8.451,0.86-12.602,1.959c-4.854,1.285-9.646,2.806-14.546,3.916c-3.085,0.699-6.225,1.243-9.365,1.631\r\n	c-2.93,0.361-6.111,0.43-9.049,0.142c-3.123-0.307-6.18-0.97-9.209-1.776c-2.743-0.73-5.696-1.408-8.215-2.755\r\n	c-0.727-0.389-1.6-0.643-2.25-1.16c1.132-0.438,2.461-0.487,3.632-0.873c1.213-0.398,2.372-0.954,3.41-1.699\r\n	c0.429-0.309,0.797-0.771,1.267-1.016c0.751-0.392,1.782,1.09,2.355,1.53c1.105,0.848,2.315,1.553,3.593,2.106\r\n	c1.661,0.72,3.564,1.133,5.362,1.329s3.675,0.223,5.481,0.149c1.891-0.076,3.826-0.29,5.702-0.54\r\n	c4.974-0.663,9.808-1.942,14.701-3.007c2.65-0.577,5.31-1.157,7.981-1.625c2.448-0.429,4.901-0.69,7.379-0.867\r\n	c2.527-0.18,5.079-0.091,7.591,0.229c2.386,0.303,5.039,0.97,7.017,2.401C108.072,96.916,108.243,97.047,108.411,97.184z\r\n	 M111.182,97.468c0.082,0.093,0.157,0.189,0.225,0.29c-1.493-0.322-2.789-1.693-4.148-2.368c-1.555-0.771-3.188-1.406-4.891-1.762\r\n	c-2.172-0.453-4.288-0.535-6.502-0.547c-2.188-0.012-4.358,0.163-6.533,0.4c-2.088,0.229-4.164,0.562-6.22,1.001\r\n	c-2.096,0.448-4.194,0.948-6.278,1.447c-3.829,0.919-7.682,1.772-11.544,2.542c-1.889,0.377-3.803,0.596-5.717,0.799\r\n	c-1.938,0.205-4.032,0.324-5.973,0.094c-1.967-0.234-3.868-0.562-5.724-1.281c-1.812-0.701-3.734-1.65-5.061-3.105\r\n	c-0.357-0.393-0.878-0.684-0.745-1.285c0.209-0.943,1.152-1.867,1.709-2.637c-0.161,0.222,6.492,3.337,7.139,3.558\r\n	c2.125,0.726,4.419,1.215,6.666,1.325c2.342,0.116,4.583-0.185,6.883-0.572c2.35-0.396,4.642-0.868,6.957-1.44\r\n	c2.197-0.543,4.375-1.162,6.569-1.718c2.185-0.554,4.394-1.022,6.617-1.391c2.25-0.372,4.51-0.553,6.789-0.532\r\n	c2.322,0.021,4.608,0.239,6.868,0.8c2.218,0.55,4.423,1.271,6.499,2.228c1.291,0.596,2.472,1.396,3.628,2.217\r\n	C109.242,96.129,110.467,96.659,111.182,97.468z M33.095,97.886c-2.879,0.326-6.002-0.209-8.494-1.607\r\n	c-2.755-1.546-4.938-4.505-5.199-7.706c-0.311-3.802,2.821-6.426,6.295-7.144c1.283-0.266,3.218-0.45,4.229,0.607\r\n	c0.926,0.969,0.399,2.462-0.021,3.54c-0.271,0.696-0.345,1.15-1.177,1.062c-0.542-0.058-1.29-0.344-1.542-0.867\r\n	c-0.383-0.798,0.507-1.197,0.627-1.922c0.044-0.337-1.544,0.204-1.635,0.265c-0.549,0.363-1.111,1.022-1.247,1.681\r\n	c-0.22,1.069,0.364,2.222,1.188,2.881c1.666,1.333,4.609,0.79,6.177-0.472c1.753-1.41,2.351-4.098,1.741-6.163\r\n	c-0.578-1.957-2.185-3.129-4.103-3.686c-2.647-0.768-5.264,0.492-7.423,1.963c-1.806,1.23-3.401,2.916-4.926,4.384\r\n	c-2.292,2.207-4.436,4.876-7.299,6.467c-2.321,1.291-4.816,1.192-6.978-0.401c-0.772-0.57-1.42-1.29-1.998-2.053\r\n	C1.12,88.462,0.229,86.693,0,86.638c1.669,0.396,3.132,1.151,4.904,1.243c1.637,0.084,3.651-0.044,4.916-1.225\r\n	c1.299-1.214,1.427-3.367,0.534-4.854c-0.931-1.549-3.035-2.014-4.443-0.788c-1.544,1.343-0.301,2.817,1.001,3.691\r\n	c0.196,0.132,0.374,0.237,0.521,0.421c-1.219,0.622-3.195,0.095-3.948-1.051c-0.771-1.174-0.56-2.888-0.196-4.162\r\n	c0.772-2.698,3.163-4.492,6.013-4.252c1.128,0.095,2.19,0.579,3.104,1.229c2.115,1.504,1.424,3.12,0.607,5.177\r\n	c0.033-0.083,1.409-0.373,1.583-0.45c0.535-0.236,1.074-0.545,1.486-0.965c1.343-1.367,0.97-3.726,0.001-5.125\r\n	c-1.019-1.473-2.674-2.225-4.423-2.449c-0.73-0.094-2.211,0.384-2.194-0.596c0.013-0.74,0.735-1.621,1.271-2.066\r\n	c0.711-0.592,1.612-0.829,2.507-0.929c1.413-0.157,1.737,0.27,2.2,1.539c0.377,1.035,0.686,2.072,1.691,2.677\r\n	c1.091,0.654,2.523,0.556,3.733,0.382c2.517-0.361,4.817-2.215,4.434-5.037c-0.208-1.526-1.5-1.972-2.834-2.248\r\n	c0.377,1.568,0.546,3.389-1.401,3.861c-1.761,0.428-3.905-0.562-4.361-2.392c-0.458-1.835,0.748-3.797,2.199-4.833\r\n	c1.512-1.079,3.377-1.169,5.127-0.699c2.045,0.549,3.806,1.767,5.466,3.038c-0.905-2.649-1.794-5.676,1.102-7.373\r\n	c2.208-1.295,5.284-1.744,7.759-1.09c1.425,0.377,2.699,1.137,3.949,1.893c-1.647,1.353-3.903,3.578-3.228,5.968\r\n	c0.191,0.678,0.638,1.151,1.134,1.627c0.727-2.586,1.742-5.089,4.352-6.265c2.306-1.038,5.287-0.748,6.728,1.524\r\n	c0.804,1.269,1.02,2.819,1.244,4.274c-2.286,0.171-6.951,1.043-6.6,4.252c0.087,0.796,0.594,1.438,1.098,2.026\r\n	c1.875-2.179,4.423-4.116,7.474-3.573c2.354,0.42,4.896,2.029,5.293,4.557c0.215,1.372-0.21,2.753-0.6,4.054\r\n	c2.14-0.942,4.407-2.234,6.807-2.212c1.771,0.017,3.523,0.78,4.663,2.151c1.179,1.416,1.503,3.347,0.739,5.039\r\n	c-0.708,1.568-2.327,2.93-4.106,2.955c-1.779,0.024-2.856-1.396-3.672-2.79c-0.11-0.188-0.218-0.38-0.324-0.571\r\n	c-0.126-0.228-1.666,1.524-1.749,1.812c-0.238,0.828,0.128,1.707,0.571,2.396c1.221,1.899,3.558,2.766,5.751,2.147\r\n	c-1.186,1.258-2.466,2.005-4.244,1.713c-1.532-0.25-3.188-1.052-4.197-2.251c-0.589-0.7-0.9-1.545-1.169-2.407\r\n	c-1.343,1.537-2.781,3.556-4.859,4.099c-1.545,0.403-3.373-0.107-4.755-0.819c-2.311-1.19-5.279-6.468-1.305-7.597\r\n	c2.587-0.735,2.122,2.495,1.421,3.912c1.47-0.532,3.196-1.462,3.327-3.204c0.143-1.911-1.414-3.684-3.111-4.336\r\n	c-1.804-0.693-3.868-0.173-5.052,1.373c-1.127,1.471-1.137,3.36-1.036,5.124c0.111,1.931,0.155,3.818-0.008,5.75\r\n	c-0.322,3.816-5.085,7.017-8.482,7.74C33.98,97.764,33.541,97.835,33.095,97.886z M112.183,37.499\r\n	c0.791,1.95-4.498,3.068-5.611,3.268c-3.585,0.642-4.262,3.046-4.143,6.418c0.108,3.057,0.398,6.032,0.102,9.094\r\n	c-0.349,3.584-1.622,6.092-4.034,8.733c-0.835-2.273,0.143-5.537,0.076-7.979c-0.076-2.815-0.312-5.588-0.312-8.403\r\n	c0-1.483,0.068-2.902,0.233-4.382c-0.079,0.707-6.53,2.219-7.348,2.46c-2.81,0.829-5.644,1.572-8.469,2.347\r\n	c-1.299,0.356-2.502,0.681-3.867,0.46c0.317-1.627,3.344-2.098,4.639-2.747c1.971-0.989,3.873-2.107,5.854-3.079\r\n	c3.184-1.562,9.926-2.87,9.38-7.564c-0.152-1.31-0.529-3.192,0.692-4.15c1.103-0.864,2.337-0.203,2.939,0.887\r\n	c0.771,1.391,0.548,3.279,0.444,4.797c2.164-0.55,6.719-2.665,8.735-1.004C111.854,36.952,112.076,37.233,112.183,37.499z\r\n	 M83.567,44.198c2.29-2.329,4.755-4.473,7.132-6.723c1.516-1.434,2.974-2.927,4.464-4.387l1.086-1.164l1.085-1.161\r\n	c0.741-0.795,1.385-1.589,2.013-2.48c-1.717,0.525-3.192,1.26-4.622,2.349c-1.211,0.922-2.644,2.469-4.306,2.393\r\n	c-4.057-0.187-2.824-5.947-1.549-8.094c0.875-1.472,2.888-7.141,5.273-6.726c1.719,0.299,1.498,3.721,2.026,4.962\r\n	c2.841-1.443,6.4-3.21,9.693-2.598c3.896,0.725,1.681,4.314-0.188,6.046c-2.514,2.331-5.725,3.678-8.413,5.771\r\n	c-2.711,2.11-5.001,4.729-7.473,7.104c-2.654,2.55-5.504,4.844-8.422,7.083C82.076,45.754,82.812,44.966,83.567,44.198z\"></path>\r\n</svg></div></div><div we7-drag=\"\" we7-resize=\"\" we7-rotate=\"\"> </div></div></div><div type=\"purelink\" style=\"position: absolute; top: 277px; left: 113px; width: 85px; height: 35px; transform: translate3d(0px, 0px, 0px);\"><div style=\"transform: rotateZ(0deg);width:100%;height:100%\"><div class=\"app-pureLink\" style=\"width:100%;height:100%;background-color:#d9534f;color:#fff;opacity:1;padding-top:0px;line-height:33px;font-size:14px;font-size:14px;text-align:center;border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"><div style=\"width: 100%; height: 100%;\" class=\"ng-scope\"><div class=\"app-pureLink-basic animated\" style=\"width:100%;height:100%\"><a class=\"element-link\" href=\"https://www.baidu.com\"><div class=\"element-box\" style=\"line-height: 33px; color: rgb(255, 255, 255);\">百度url</div></a></div></div></div><div we7-drag=\"\" we7-resize=\"\" we7-rotate=\"\"> </div></div></div><div type=\"dial\" style=\"position: absolute; top: 333px; left: 76px; width: 163px; height: 35px; transform: translate3d(0px, 0px, 0px);\"><div style=\"transform: rotateZ(0deg);width:100%;height:100%\"><div class=\"app-dial\" style=\"width:100%;height:100%;background-color:#d9534f;color:#fff;opacity:1;padding-top:0px;line-height:33px;font-size:24px;font-size:24px;text-align:center;border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"><div style=\"width:100%;height:100%\" class=\"ng-scope\"><div class=\"app-dialphone animated\" style=\"width:100%;height:100%\"><a class=\"element-link\" href=\"tel:18656506404\"><div class=\"element-box\" style=\"line-height: 33px; color: rgb(255, 255, 255);\">一键拨号</div></a></div></div></div><div we7-drag=\"\" we7-resize=\"\" we7-rotate=\"\"> </div></div></div><div type=\"good\" style=\"position: absolute; top: 406px; left: 81px; width: 150px; height: 50px; transform: translate3d(0px, 0px, 0px);\"><div style=\"transform: rotateZ(0deg);width:100%;height:100%\"><div class=\"app-good\" style=\"width:100%;height:100%;background-color:#d15d82;color:#fff;opacity:1;padding-top:0px;line-height:48px;font-size:14px;font-size:14px;text-align:center;border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"><div class=\"element app-good-up\"><div class=\"counter-container\" style=\"width: 100%; height: 100%; line-height: 48px; overflow: hidden;\"><i class=\"fa fa-thumbs-o-up\"></i> <span class=\"counter-num\">0</span></div></div><script type=\"text/javascript\">$(document).ready(function() {\r\n					var patt = new RegExp(\'c=home&a=page\');\r\n					if (patt.exec(window.location.href)) {\r\n						$.post(window.location.href, {\'do\' : \'getnum\'}, function(data) {\r\n							if (data.message.errno == 0) {\r\n								$(\'.counter-num\').text(data.message.message.goodnum);\r\n							}\r\n						}, \'json\');\r\n						$(\".app-good .element\").click(function() {\r\n							var id=GetQueryString(\"id\");\r\n							if(id !=null && id.toString().length>1 && localStorage.havegood != id){\r\n								$.post(window.location.href, {\'do\': \'addnum\'}, function(data) {\r\n									if (data.message.errno == 0) {\r\n										var now = $(\'.counter-num\').text();\r\n										now = parseInt(now)+1;\r\n										$(\'.counter-num\').text(now);\r\n										localStorage.havegood = id;\r\n									}\r\n								}, \'json\');\r\n							}\r\n						});\r\n						function GetQueryString(name){\r\n							var reg = new RegExp(\"(^|&)\"+ name +\"=([^&]*)(&|$)\");\r\n							var r = window.location.search.substr(1).match(reg);\r\n							if(r!=null)return  unescape(r[2]); return null;\r\n						}						\r\n					};\r\n				});</script></div><div we7-drag=\"\" we7-resize=\"\" we7-rotate=\"\"> </div></div></div><div type=\"countdown\" style=\"position: absolute; top: 494px; left: 38px; width: 240px; height: 50px; transform: translate3d(0px, 0px, 0px);\"><div style=\"transform: rotateZ(0deg);width:100%;height:100%\"><div class=\"app-countDown\" style=\"width:100%;height:100%;overflow:hidden;background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:48px;font-size:14px;font-size:13px;text-align:center;border-width:1px;border-radius:4px;border-style:solid;border-color:#ccc;box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\"><div class=\"timer\" data=\"2016-10-11 10:0:55\"><span class=\"day\">0</span> <small style=\"vertical-align:middle;margin:3px\">天</small> <span class=\"hours\">0</span> <small style=\"vertical-align:middle;margin:3px\">时</small> <span class=\"minutes\">32</span> <small style=\"vertical-align:middle;margin:3px\">分</small> <span class=\"seconds\">32</span> <small style=\"vertical-align:middle;margin:3px\">秒</small></div><script type=\"text/javascript\">$(document).ready(function(){\r\n					setInterval(function(){\r\n						var timer = $(\'.timer\');\r\n						for (var i = 0; i < timer.length; i++) {\r\n							var dead = $(timer.get(i)).attr(\'data\');\r\n							var deadtime = Date.parse(new Date(dead));\r\n							var nowtime = Date.parse(new Date());\r\n							var diff = deadtime - nowtime > 0 ? deadtime - nowtime : 0;\r\n							var res = {};\r\n							res.day = parseInt(diff / (24 * 60 * 60 * 1000));\r\n							res.hour = parseInt(diff / (60 * 60 * 1000) % 24);\r\n							res.min = parseInt(diff / (60 * 1000) % 60);\r\n							res.sec = parseInt(diff / 1000 % 60);\r\n							$(\'.timer[data=\"\'+dead+\'\"] .day\').text(res.day);\r\n							$(\'.timer[data=\"\'+dead+\'\"] .hours\').text(res.hour);\r\n							$(\'.timer[data=\"\'+dead+\'\"] .minutes\').text(res.min);\r\n							$(\'.timer[data=\"\'+dead+\'\"] .seconds\').text(res.sec);\r\n						};\r\n					}, 1000);\r\n				});</script></div><div we7-drag=\"\" we7-resize=\"\" we7-rotate=\"\"> </div></div></div></div></div></div>','1','1','1476149494','0','[\"<div type=\\\"onlytext\\\" style=\\\"position: absolute; top: 123px; left: 62px; width: 200px; height: 30px; transform: translate3d(0px, 0px, 0px);\\\"><div style=\\\"transform: rotateZ(0deg);width:100%;height:100%\\\"><div class=\\\"app-onlyText\\\" style=\\\"width:100%;height:100%;background-color:rgba(0,0,0,0);color:#9900ff;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:center;border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\\\"><div class=\\\"element\\\" style=\\\"overflow:hidden\\\">测试做个专题页面</div></div><div we7-drag=\\\"\\\" we7-resize=\\\"\\\" we7-rotate=\\\"\\\"> </div></div></div><div type=\\\"image\\\" style=\\\"position: absolute; top: 6px; left: 107px; width: 100px; height: 100px; transform: translate3d(0px, 0px, 0px);\\\"><div style=\\\"transform: rotateZ(0deg);width:100%;height:100%\\\"><div class=\\\"app-image\\\" style=\\\"width:100%;height:100%;background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\\\"><img style=\\\"width:100%;height:100%\\\" alt=\\\"\\\" src=\\\"http://wx.purui.cn/km/attachment/images/3/2016/10/tgjb1jnM51kBMnpK6opbiX1JP13JEJ.jpg\\\"></div><div we7-drag=\\\"\\\" we7-resize=\\\"\\\" we7-rotate=\\\"\\\"> </div></div></div><div type=\\\"shape\\\" style=\\\"position: absolute; top: 165px; left: 103px; width: 100px; height: 93.1215px; transform: translate3d(0px, 0px, 0px);\\\"><div style=\\\"transform: rotateZ(0deg);width:100%;height:100%\\\"><div class=\\\"app-shape\\\" style=\\\"width:100%;height:100%;background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\\\"><div style=\\\"width:100%;height:100%\\\" class=\\\"element-scope\\\" we7-svger=\\\"\\\" we7-svg=\\\"module.params.svgValue\\\"><svg version=\\\"1.1\\\" id=\\\"图层_1\\\" xmlns=\\\"http://www.w3.org/2000/svg\\\" xmlns:xlink=\\\"http://www.w3.org/1999/xlink\\\" x=\\\"0px\\\" y=\\\"0px\\\" width=\\\"100%\\\" height=\\\"100%\\\" viewBox=\\\"0 0 112.263 104.541\\\" enable-background=\\\"new 0 0 112.263 104.541\\\" xml:space=\\\"preserve\\\" preserveAspectRatio=\\\"none\\\">\\n<path fill-rule=\\\"evenodd\\\" clip-rule=\\\"evenodd\\\" fill=\\\"#5FB63B\\\" d=\\\"M79.549,38.151c1.607-1.097,2.538-3.149,3.105-4.922\\n\\tc1.507-4.706,0.428-9.681-5.297-9.705c-2.671-0.011-5.267,0.873-7.762,1.73c1.159-1.281,2.191-2.69,3.516-3.81\\n\\tc1.136-0.959,3.323-2.064,2.839-3.894c-0.937-3.536-7.175,0.892-8.615,2.14c-1.511,1.309-1.914,3.235,0.63,2.888\\n\\tc0.041,0.019,0.066,0.048,0.076,0.088c0.753,3.226-14.027,11.487-6.859,14.454c1.464,0.606,1.788-0.418,1.52-1.667\\n\\tc-0.291-1.349-1.008-2.206-0.066-3.478c0.889-1.198,2.611-1.928,3.928-2.53c-0.212,1.493-1.241,4.627,0.633,5.52\\n\\tc2.049,0.975,2.104-2.722,2.718-3.839c0.539-0.978,1.42-1.783,2.154-2.612c-0.339,0.382-0.301,2.458-0.429,3.116\\n\\tc-0.217,1.118-0.5,2.221-0.819,3.314c-0.607,2.073-1.569,4.099-2.053,6.194c3.21-1.401,4.08-6.28,4.94-9.262\\n\\tc0.559-1.934,0.027-5.789,2.891-5.527c1.946,0.178,2.549,1.669,2.511,3.479c-0.051,2.43-0.942,5.171-3.009,6.625\\n\\tc-0.946,0.665-2.453,1.263-3.617,1.141c1.147,1.727,4.588,1.72,6.29,0.987C79.047,38.461,79.306,38.317,79.549,38.151z\\n\\t M70.462,28.331c-0.132,0.248-0.255,0.476-0.28,0.508c-0.345,0.428-0.795,0.752-1.283,0.999c0.038-0.019,0.026-1.365,0.249-1.625\\n\\tc0.417-0.487,1.091-0.549,1.68-0.549C70.817,27.663,70.632,28.012,70.462,28.331z M62.408,13.899\\n\\tc-0.136-0.778-0.146-1.589-0.075-2.265c0.154-1.489,0.422-2.922,0.439-4.428c1.457-0.4,1.775-1.785,2.012-3.101\\n\\tc1.755,1.601,1.823,3.911,2.018,6.118c3.122-1.485,4.104-2.716,4.817-6.063c0.523-2.459,1.261-6.124,3.516-2.886\\n\\tc2.453,3.523,3.473,1.939,7.232,2.264c3.984,0.345-0.042,3.722-1.57,4.87c-3.004,2.256-6.289,4.182-8.807,6.93l-0.853,0.931\\n\\tl-0.466,0.388l-0.541,0.388l0.154-0.465c0,0,0.301-0.453,0.31-0.465c0.636-0.958,1.613-1.636,2.228-2.633\\n\\tc-1.109-0.542-1.851-1.542-1.992-2.779c-1.338,1.745-2.646,5.46-4.974,6.027C63.68,17.259,62.717,15.664,62.408,13.899z\\n\\t M51.577,5.959c0.028-1.342,0.65-1.465,2.253-0.909c4.292,1.49,2.022,6.921-0.645,5.037c-0.593-0.419-1.585-3.128-1.607-3.864\\n\\tC51.576,6.13,51.575,6.042,51.577,5.959z M46.392,23.853c-0.023-0.133-0.037-0.255-0.039-0.364c-0.013-0.575,1.91-3.348,1.919-3.341\\n\\tc-3.708-2.876-0.068-3.521,2.562-4.642c1.227-0.523,2.286-1.424,3.696-0.998c1.355,0.409,2.258,1.696,1.452,2.972\\n\\tc-0.854,1.353-2.563,1.979-3.441,3.436c0.859,1.017,2.694,0.803,3.416,1.975c1.157,1.884-1.551,4.354-2.662,5.577\\n\\tc-1.735,1.911-3.71,3.685-6.258,4.387c1.434-2.783,3.618-4.943,4.563-7.979c-1.167,0.334-2.408,2.542-3.779,1.672\\n\\tC47.161,26.127,46.55,24.759,46.392,23.853z M44.561,36.807c-0.174-0.895,0.522-1.976,2.011-2.454\\n\\tc3.059-0.981,4.667-3.07,7.074-5.085c2.235-1.869,4.173-3.768,5.953-6.08c0.923-1.198,1.433-2.888,2.626-3.808\\n\\tc-0.916,4.119-2.243,8.465-4.572,12.019c-1.24,1.893-2.699,3.201-4.707,4.235c-1.77,0.912-3.85,2.536-5.901,2.566\\n\\tC45.523,38.223,44.712,37.585,44.561,36.807z M73.82,56.217c0.511,0.586,1.251,2.53,0.138,2.973\\n\\tc-1.432,0.567-2.293-0.708-2.751-1.852c-0.287-0.718-0.254-1.811,0.716-1.929C72.664,55.32,73.346,55.672,73.82,56.217z\\n\\t M63.979,50.859c-0.151-0.072-0.285-0.164-0.397-0.277c-1.348-1.372,1.631-2.328,2.564-2.274c1.532,0.088,3.158-0.124,4.669,0.083\\n\\tc0.953,0.131,2.738,1.152,1.474,2.175c-1.115,0.901-3.299,0.411-4.614,0.428C66.715,51.005,64.976,51.336,63.979,50.859z\\n\\t M64.192,57.189c0,0.064-0.003,0.129-0.008,0.193c-0.084,1.045-1.541,2.577-2.55,1.44c-0.798-0.898,0.293-2.292,1.064-2.798\\n\\tC63.737,55.344,64.198,56.284,64.192,57.189z M59.435,52.849c-1.124,1.124-2.162,1.684-3.798,1.473\\n\\tc-0.358,1.675,0.242,4.656-1.456,5.662c-0.815,0.483-2.304,0.545-3.048-0.135c-0.764-0.697-0.009-1.383,0.532-1.934\\n\\tc0.625-0.637,1.442-1.439,1.047-2.418c-0.4-0.991-1.625-1.17-2.556-1.18c-0.901-0.01-2.106,0.246-2.818-0.476\\n\\tc-0.657-0.665-0.436-1.69,0.314-2.172c1.9-1.222,4.536,0.82,5.016-2.286c0.294-1.9,0.34-3.608,1.032-5.448\\n\\tc0.166-0.441,1.345,0.771,1.424,0.952c0.224,0.51,0.207,1.147,0.204,1.694c-0.005,1.157-0.693,3.447,0.231,4.358\\n\\tc0.545,0.537,1.918,0.483,2.629,0.688c0.485,0.139,0.912,0.319,1.237,0.718c0.297-2.41-0.188-6.549,2.573-7.78\\n\\tc0.549-0.245,1.091-0.121,0.845,0.608c1.28-0.53,2.584-0.809,3.954-1.007c0-0.749,0.108-1.502,0.077-2.246\\n\\tc0.776-0.106,1.578-0.186,2.229,0.329c0.57,0.45,0.815,1.202,1.396,1.645c1.22,0.93,2.919,0.095,4.172,1.124\\n\\tc1.17,0.961,1.979,2.629,2.145,4.115c0.156,1.403,0.339,3.333-0.2,4.663c-0.274,0.676-0.951,1.602-1.768,1.628\\n\\tc-0.851,0.028-1.07-0.899-1.232-1.567c-0.811,0.801-1.625,0.792-2.7,0.855c-1.247,0.074-1.449,0.669-1.374,1.846\\n\\tc0.072,1.127,0.197,2.135-0.449,3.126c-0.473,0.727-1.253,1.682-2.163,1.815c-1.067,0.157-2.401-0.879-2.613-1.926\\n\\tc-0.226-1.123,0.856-1.062,1.577-1.436c0.798-0.413,1.121-1.486,0.883-2.341c-0.333-1.191-1.877-0.928-2.843-1.073\\n\\tc-0.441-0.066-1.419-0.174-1.551-0.729c-0.165-0.696,1.021-1.165,1.484-1.354c2.571-1.046,5.694-1.028,8.328-0.239\\n\\tc0.555,0.166,1.098,0.368,1.639,0.572c0.53-2.926-0.008-5.927-3.471-6.325c-2.425-0.279-6.74-0.218-7.966,2.348\\n\\tc-0.354,0.738-0.456,1.579-0.499,2.387c-0.06,1.108,0.385,2.259-0.217,3.304c-0.612,1.063-1.455,0.547-1.89-0.383\\n\\tC59.701,54.11,59.214,53.07,59.435,52.849z M58.608,56.075c0.565,1.015,0.354,3.051-1.068,2.222\\n\\tc-0.666-0.388-0.993-1.911-0.369-2.445C57.817,55.298,58.316,55.55,58.608,56.075z M58.893,47.121\\n\\tc-0.02,0.529,0.002,1.061,0.089,1.6c0.17,1.057-0.642,1.993-1.73,1.324c-2.003-1.229-1.581-5.83,1.109-5.957\\n\\tC59.693,44.025,58.92,46.387,58.893,47.121z M50.054,55.719c0.812,0.836,0.385,2.513-0.857,2.666\\n\\tc-1.519,0.187-1.376-2.797-0.028-2.937C49.574,55.407,49.859,55.519,50.054,55.719z M48.169,47.467c0.07-1.165-0.856-3.39,1-3.617\\n\\tc3.427-0.418,2.703,4.95,0.386,5.949C47.267,50.786,48.106,48.514,48.169,47.467z M74.591,71.065\\n\\tc0.053,0.633,0.258,1.258,0.721,1.683c0.435,0.399,1.157,0.414,1.708,0.328c0.532-0.084,0.719-0.555,0.949-0.983\\n\\tc0.222-0.414,0.288-0.869,0.045-1.295c-0.294-0.515-0.716-0.452-0.947,0.041c-0.223,0.472-0.654,0.654-0.9,0.068\\n\\tc-0.325-0.775-0.287-1.61-0.233-2.431c0.059-0.882,0.079-1.764,0.086-2.646c0.006-0.739,0.137-1.91-0.696-2.269\\n\\tc-0.403-0.174-0.885-0.146-1.313-0.148c-0.442-0.002-0.884-0.018-1.326-0.029c-0.848-0.022-1.689,0.118-2.535,0.021\\n\\tc-0.396-0.045-0.817-0.161-1.216-0.087c-1.695,0.315-1.362,2.97-1.4,4.215c-0.013,0.4-0.009,0.805-0.037,1.204\\n\\tc-0.048,0.676-0.141,1.286-0.298,1.946c-0.062,0.257-0.213,0.519-0.391,0.712c-0.092,0.099-0.197,0.197-0.331,0.234\\n\\tc-0.105,0.029-0.35,0.031-0.249-0.158c0.073-0.141,0.378-0.197,0.491-0.327c0.166-0.189,0.151-0.412,0.081-0.625\\n\\tc-0.028-0.087-1.109-0.049-1.234-0.052c-0.401-0.011-0.801-0.039-1.201-0.068c-0.853-0.062-1.711-0.11-2.564-0.032\\n\\tc-0.589,0.055-1.206,0.096-1.684,0.5c-0.271,0.229-0.209,0.438,0.113,0.536c0.386,0.118,0.527,0.128,0.523,0.574\\n\\tc-0.002,0.289,0.001,0.578,0.001,0.866c0.402,0,1.258,0.069,1.214-0.565c-0.016-0.214-0.19-0.552,0.022-0.703\\n\\tc0.341-0.242,1.055,0.086,1.022,0.518c-0.025,0.326-0.357,0.272-0.565,0.423c-0.426,0.309,0.273,1.039,0.652,1.036\\n\\tc0.567-0.005,0.9-0.462,1.22-0.862c0.106-0.373,0.154-0.695,0.154-1.085c0.129-0.042,0.379-0.144,0.516-0.077\\n\\tc0.154,0.075,0.104,0.27,0.104,0.422c0.001,0.272-0.076,0.793,0.218,0.962c0.12,0.068,1.06-0.109,1.023-0.222\\n\\tc0.089,0.278,0.143,0.68,0.506,0.678c0.917-0.005,1.554-1.198,1.796-1.931c0.135-0.407,0.112-0.868,0.159-1.292\\n\\tc0.023-0.209,0.076-0.437,0.131-0.637c-0.038,0.14,0.314,0.575,0.405,0.669c0.196,0.202,0.591,0.396,0.688,0.686\\n\\tc0.066,0.197-0.133,0.562-0.143,0.783c-0.016,0.346,0.025,0.741,0.192,1.051c0.188,0.348,0.626,0.391,0.979,0.395\\n\\tc0.51,0.006,1.021-0.01,1.532-0.011c0.414-0.001,0.724,0.08,0.903-0.358c0.167-0.408,0.216-0.86,0.264-1.295\\n\\tc0.037-0.344,0.018-0.738,0.171-1.057c0.136-0.281,0.41-0.309,0.708-0.314C74.579,70.374,74.562,70.72,74.591,71.065z\\n\\t M69.648,65.066c0.063-0.077,0.123-0.155,0.157-0.184c0.135-0.113,0.285-0.172,0.456-0.207c0.382-0.079,0.775-0.035,1.162-0.074\\n\\tc0.713-0.072,1.424-0.044,2.14-0.048c0.214-0.001,0.384,0.02,0.59,0.078c0.183,0.052,0.339,0.171,0.463,0.312\\n\\tc-0.596,0.383-1.365,0.229-2.031,0.229c-0.664,0-1.327-0.019-1.988,0.042c-0.384,0.035-0.77,0.036-1.154,0.035\\n\\tC69.49,65.25,69.572,65.159,69.648,65.066z M70.099,66.983c-0.278,0.066-0.54,0.162-0.733,0.426\\n\\tc-0.125,0.173-0.084,0.33-0.089,0.554c-0.13-0.262-0.296-0.485-0.208-0.787c0.07-0.237,0.256-0.473,0.452-0.619\\n\\tc0.319-0.241,0.647-0.254,1.038-0.227c0.2,0.014,0.388,0.097,0.578,0.16c0.034,0.012-0.435,0.345-0.505,0.366\\n\\tC70.457,66.911,70.275,66.941,70.099,66.983z M71.059,69.512c0,0.029-0.384-0.16-0.417-0.201c-0.11-0.136-0.13-0.327-0.122-0.495\\n\\tc0.016-0.343,0.158-0.458,0.385-0.699C71.357,68.245,71.058,69.167,71.059,69.512z M72.456,71.682\\n\\tc0.002-0.044-1.81,0.342-1.231-0.499c0.104-0.151,0.29-0.202,0.461-0.237c0.288-0.058,0.566,0.044,0.748,0.279\\n\\tC72.581,71.417,72.467,71.464,72.456,71.682z M73.38,68.735c-0.052,0.173-0.15,0.334-0.272,0.414\\n\\tc-0.145,0.095-0.335,0.091-0.498,0.131c0-0.103-0.015-1.251,0.077-1.24c0.259,0.029,0.599-0.027,0.705,0.288\\n\\tC73.431,68.444,73.422,68.593,73.38,68.735z M74.18,67.228c-0.238-0.141-0.497-0.274-0.56-0.306c-0.323-0.16-0.68-0.213-1.001-0.362\\n\\tc-0.106-0.05,0.374-0.237,0.418-0.243c0.246-0.034,0.496,0.039,0.74,0.051c0.284,0.014,0.687-0.166,0.803,0.195\\n\\tc0.095,0.291,0.043,0.704,0.043,1.011C74.624,67.508,74.411,67.365,74.18,67.228z M65.952,69.063\\n\\tc0.234,0.026,0.457,0.079,0.584,0.212c0.293,0.306-0.068,0.497-0.329,0.592c-0.407,0.148-0.803,0.087-1.225,0.052\\n\\tc-0.562-0.048-1.162,0.099-1.723,0.151c-0.634,0.061-1.272,0.1-1.908,0.059c-0.425-0.027-0.933-0.13-1.164-0.537\\n\\tc-0.244-0.43,0.815-0.419,1.022-0.448c0.613-0.087,1.227-0.168,1.844-0.223c0.738-0.065,1.499-0.045,2.229,0.085\\n\\tC65.458,69.037,65.711,69.036,65.952,69.063z M60.285,68.122c0.308,0.309,0.758,0.494,1.271,0.524\\n\\tc0.559,0.033,1.12-0.044,1.679-0.062c0.542-0.016,1.077,0.035,1.618,0.067c1.091,0.063,2.052-0.308,2.313-1.475\\n\\tc0.261-1.163-0.396-1.98-1.535-2.123c-0.127-0.017-0.256-0.027-0.384-0.038c0.017-0.383,0.12-0.464,0.501-0.463\\n\\tc0.354,0,0.562,0.104,0.894-0.079c-0.256-0.648-0.69-0.868-1.362-0.966c-0.613-0.089-1.241-0.163-1.861-0.142\\n\\tc-0.61,0.021-1.249,0.03-1.854,0.108c-0.354,0.046-1.513,0.355-1.259,0.926c0.224,0.501,1.285,0.418,1.725,0.511\\n\\tc0.063,0.014,0.13,0.019,0.194,0.027c0.038,0.006-0.27,0.186-0.312,0.193c-0.166,0.031-0.339,0.007-0.504,0.049\\n\\tc-0.241,0.062-0.477,0.149-0.687,0.284c-0.432,0.276-0.727,0.726-0.825,1.227C59.779,67.289,59.945,67.78,60.285,68.122z\\n\\t M65.326,66.567c0.288,0,0.435,0.026,0.696,0.154c0,0.13,0,0.259,0,0.389c-0.259,0.131-0.403,0.153-0.696,0.153\\n\\tC65.326,67.205,65.326,66.568,65.326,66.567z M64.017,66.876c0.015,0.221-0.01,0.46-0.01,0.621\\n\\tc-0.207,0.004-0.469,0.049-0.549-0.194c-0.028-0.083-0.016-0.966,0.005-0.97C63.884,66.244,63.995,66.539,64.017,66.876z\\n\\t M63.525,64.59c0.241-0.146,0.613,0.187,0.456,0.445c-0.081,0.132-0.289,0.162-0.41,0.076C63.416,65.001,63.333,64.733,63.525,64.59\\n\\tz M61.335,66.971c0.041-0.105,0.09-0.199,0.115-0.228c0.153-0.167,0.4-0.185,0.612-0.172c0.033,0.283,0.1,0.674-0.07,0.926\\n\\tc-0.207,0-0.522-0.035-0.699-0.155C61.233,67.301,61.277,67.124,61.335,66.971z M87.583,78.107c0.403-0.896,0.97-2.242,0.975-2.242\\n\\tc-2.614-0.139-3.618,3.406-3.915,5.486c-0.258,1.814-0.333,3.752,0.296,5.496c0.229,0.631,0.538,1.335,1.202,1.606\\n\\tc0.858,0.35,1.655-0.174,2.496-0.259c0.467-0.048,0.812,0.158,1.226,0.354c0.858,0.404,1.77,0.686,2.729,0.438\\n\\tc1.914-0.494,2.646-3.116,2.919-4.806c0.364-2.255,0.3-7.115-2.72-7.691c-1.342-0.256-2.675,0.378-3.733,1.143\\n\\tc-0.603,0.435-1.202,0.875-1.85,1.242C87.261,78.806,87.407,78.5,87.583,78.107z M91.365,84.444\\n\\tc-0.189,0.591-0.502,1.366-1.008,1.421c-0.419,0.045,0.036-1.502,0.151-1.646c0.309-0.388,0.63-0.446,1.088-0.446\\n\\tC91.555,83.772,91.484,84.072,91.365,84.444z M87.316,82.708c0.457-1.319,1.479-2.535,2.437-3.354\\n\\tc0.596-0.509,0.93-0.587,1.686-0.619c0.242,0.611,0.824,1.771,0.337,2.399c-0.246,0.317-1.022,0.598-1.389,0.803\\n\\tc-0.934,0.522-1.749,1.195-2.215,2.18c-0.254,0.536-0.38,1.099-0.527,1.669c0.009-0.033-0.506-0.978-0.54-1.193\\n\\tC87.005,83.961,87.108,83.305,87.316,82.708z M84.855,70.209c-1.147,1.579-2.348,3.215-3.796,4.532\\n\\tc-1.119,1.018-2.363,1.969-3.194,3.253c-0.455,0.704-0.728,1.459-0.838,2.29c1.686-0.431,2.753-1.877,3.926-3.074\\n\\tc1.161-1.187,2.251-2.491,3.755-3.269c0.253-0.131,3.619-1.103,3.636-0.633c0.028,0.78,0.114,2.019,0.786,2.545\\n\\tc0.725,0.566,1.334-0.1,1.654-0.742c0.146-0.291,0.738-2.424,0.891-2.423c1.801,0.01,3.579-0.367,5.37-0.35\\n\\tc1.962,0.02,3.322,1.247,5.083,1.886c1.233,0.447,3.409,0.133,2.219-1.604c-0.996-1.452-3.19-2.079-4.832-2.362\\n\\tc-2.055-0.354-4.188-0.079-6.243,0.116c-0.056,0.005-1.593,0.137-1.591,0.12c0.05-0.5,0.127-0.998,0.149-1.501\\n\\tc0.062-1.469-0.702-3.52,0.946-4.383c0.919-0.48,2.369-0.653,2.338-1.982c-0.02-0.847-0.795-1.549-1.606-1.647\\n\\tc-0.973-0.118-1.534,0.646-2.354,0.977c-1.007,0.407-1.672-0.311-2.269-1.05c1.195-1.466,5.117-4.465,1.893-6.23\\n\\tc-1.015-0.555-2.038-0.384-2.43,0.644c-0.255,0.667-0.454,1.434-0.812,2.053c-0.571,0.989-1.231,1.93-1.668,2.991\\n\\tc-0.218,0.532-0.38,1.079-0.549,1.628c0.781,0.225,2.858-0.402,2.79,0.931c-2.672,1.489-5.587,2.811-7.673,5.115\\n\\tc2.03,0.696,3.513,0.122,5.392-0.714c0.493-0.22,1.006-0.404,1.507-0.604c-0.413,0.594-0.827,1.188-1.24,1.782\\n\\tC86.095,68.503,84.901,70.147,84.855,70.209z M87.523,70.085c0.496-0.55,1.029-1.071,1.595-1.581\\n\\tc0.525,0.46,0.159,1.902,0.231,2.558c0.019,0.166-2.884,0.877-3.254,0.853C86.53,71.262,87.006,70.659,87.523,70.085z\\n\\t M108.411,97.184c0.161,0.132,0.319,0.255,0.445,0.414c-1.8,0-3.71-0.521-5.521-0.678c-1.887-0.164-3.781-0.24-5.675-0.206\\n\\tc-4.302,0.079-8.451,0.86-12.602,1.959c-4.854,1.285-9.646,2.806-14.546,3.916c-3.085,0.699-6.225,1.243-9.365,1.631\\n\\tc-2.93,0.361-6.111,0.43-9.049,0.142c-3.123-0.307-6.18-0.97-9.209-1.776c-2.743-0.73-5.696-1.408-8.215-2.755\\n\\tc-0.727-0.389-1.6-0.643-2.25-1.16c1.132-0.438,2.461-0.487,3.632-0.873c1.213-0.398,2.372-0.954,3.41-1.699\\n\\tc0.429-0.309,0.797-0.771,1.267-1.016c0.751-0.392,1.782,1.09,2.355,1.53c1.105,0.848,2.315,1.553,3.593,2.106\\n\\tc1.661,0.72,3.564,1.133,5.362,1.329s3.675,0.223,5.481,0.149c1.891-0.076,3.826-0.29,5.702-0.54\\n\\tc4.974-0.663,9.808-1.942,14.701-3.007c2.65-0.577,5.31-1.157,7.981-1.625c2.448-0.429,4.901-0.69,7.379-0.867\\n\\tc2.527-0.18,5.079-0.091,7.591,0.229c2.386,0.303,5.039,0.97,7.017,2.401C108.072,96.916,108.243,97.047,108.411,97.184z\\n\\t M111.182,97.468c0.082,0.093,0.157,0.189,0.225,0.29c-1.493-0.322-2.789-1.693-4.148-2.368c-1.555-0.771-3.188-1.406-4.891-1.762\\n\\tc-2.172-0.453-4.288-0.535-6.502-0.547c-2.188-0.012-4.358,0.163-6.533,0.4c-2.088,0.229-4.164,0.562-6.22,1.001\\n\\tc-2.096,0.448-4.194,0.948-6.278,1.447c-3.829,0.919-7.682,1.772-11.544,2.542c-1.889,0.377-3.803,0.596-5.717,0.799\\n\\tc-1.938,0.205-4.032,0.324-5.973,0.094c-1.967-0.234-3.868-0.562-5.724-1.281c-1.812-0.701-3.734-1.65-5.061-3.105\\n\\tc-0.357-0.393-0.878-0.684-0.745-1.285c0.209-0.943,1.152-1.867,1.709-2.637c-0.161,0.222,6.492,3.337,7.139,3.558\\n\\tc2.125,0.726,4.419,1.215,6.666,1.325c2.342,0.116,4.583-0.185,6.883-0.572c2.35-0.396,4.642-0.868,6.957-1.44\\n\\tc2.197-0.543,4.375-1.162,6.569-1.718c2.185-0.554,4.394-1.022,6.617-1.391c2.25-0.372,4.51-0.553,6.789-0.532\\n\\tc2.322,0.021,4.608,0.239,6.868,0.8c2.218,0.55,4.423,1.271,6.499,2.228c1.291,0.596,2.472,1.396,3.628,2.217\\n\\tC109.242,96.129,110.467,96.659,111.182,97.468z M33.095,97.886c-2.879,0.326-6.002-0.209-8.494-1.607\\n\\tc-2.755-1.546-4.938-4.505-5.199-7.706c-0.311-3.802,2.821-6.426,6.295-7.144c1.283-0.266,3.218-0.45,4.229,0.607\\n\\tc0.926,0.969,0.399,2.462-0.021,3.54c-0.271,0.696-0.345,1.15-1.177,1.062c-0.542-0.058-1.29-0.344-1.542-0.867\\n\\tc-0.383-0.798,0.507-1.197,0.627-1.922c0.044-0.337-1.544,0.204-1.635,0.265c-0.549,0.363-1.111,1.022-1.247,1.681\\n\\tc-0.22,1.069,0.364,2.222,1.188,2.881c1.666,1.333,4.609,0.79,6.177-0.472c1.753-1.41,2.351-4.098,1.741-6.163\\n\\tc-0.578-1.957-2.185-3.129-4.103-3.686c-2.647-0.768-5.264,0.492-7.423,1.963c-1.806,1.23-3.401,2.916-4.926,4.384\\n\\tc-2.292,2.207-4.436,4.876-7.299,6.467c-2.321,1.291-4.816,1.192-6.978-0.401c-0.772-0.57-1.42-1.29-1.998-2.053\\n\\tC1.12,88.462,0.229,86.693,0,86.638c1.669,0.396,3.132,1.151,4.904,1.243c1.637,0.084,3.651-0.044,4.916-1.225\\n\\tc1.299-1.214,1.427-3.367,0.534-4.854c-0.931-1.549-3.035-2.014-4.443-0.788c-1.544,1.343-0.301,2.817,1.001,3.691\\n\\tc0.196,0.132,0.374,0.237,0.521,0.421c-1.219,0.622-3.195,0.095-3.948-1.051c-0.771-1.174-0.56-2.888-0.196-4.162\\n\\tc0.772-2.698,3.163-4.492,6.013-4.252c1.128,0.095,2.19,0.579,3.104,1.229c2.115,1.504,1.424,3.12,0.607,5.177\\n\\tc0.033-0.083,1.409-0.373,1.583-0.45c0.535-0.236,1.074-0.545,1.486-0.965c1.343-1.367,0.97-3.726,0.001-5.125\\n\\tc-1.019-1.473-2.674-2.225-4.423-2.449c-0.73-0.094-2.211,0.384-2.194-0.596c0.013-0.74,0.735-1.621,1.271-2.066\\n\\tc0.711-0.592,1.612-0.829,2.507-0.929c1.413-0.157,1.737,0.27,2.2,1.539c0.377,1.035,0.686,2.072,1.691,2.677\\n\\tc1.091,0.654,2.523,0.556,3.733,0.382c2.517-0.361,4.817-2.215,4.434-5.037c-0.208-1.526-1.5-1.972-2.834-2.248\\n\\tc0.377,1.568,0.546,3.389-1.401,3.861c-1.761,0.428-3.905-0.562-4.361-2.392c-0.458-1.835,0.748-3.797,2.199-4.833\\n\\tc1.512-1.079,3.377-1.169,5.127-0.699c2.045,0.549,3.806,1.767,5.466,3.038c-0.905-2.649-1.794-5.676,1.102-7.373\\n\\tc2.208-1.295,5.284-1.744,7.759-1.09c1.425,0.377,2.699,1.137,3.949,1.893c-1.647,1.353-3.903,3.578-3.228,5.968\\n\\tc0.191,0.678,0.638,1.151,1.134,1.627c0.727-2.586,1.742-5.089,4.352-6.265c2.306-1.038,5.287-0.748,6.728,1.524\\n\\tc0.804,1.269,1.02,2.819,1.244,4.274c-2.286,0.171-6.951,1.043-6.6,4.252c0.087,0.796,0.594,1.438,1.098,2.026\\n\\tc1.875-2.179,4.423-4.116,7.474-3.573c2.354,0.42,4.896,2.029,5.293,4.557c0.215,1.372-0.21,2.753-0.6,4.054\\n\\tc2.14-0.942,4.407-2.234,6.807-2.212c1.771,0.017,3.523,0.78,4.663,2.151c1.179,1.416,1.503,3.347,0.739,5.039\\n\\tc-0.708,1.568-2.327,2.93-4.106,2.955c-1.779,0.024-2.856-1.396-3.672-2.79c-0.11-0.188-0.218-0.38-0.324-0.571\\n\\tc-0.126-0.228-1.666,1.524-1.749,1.812c-0.238,0.828,0.128,1.707,0.571,2.396c1.221,1.899,3.558,2.766,5.751,2.147\\n\\tc-1.186,1.258-2.466,2.005-4.244,1.713c-1.532-0.25-3.188-1.052-4.197-2.251c-0.589-0.7-0.9-1.545-1.169-2.407\\n\\tc-1.343,1.537-2.781,3.556-4.859,4.099c-1.545,0.403-3.373-0.107-4.755-0.819c-2.311-1.19-5.279-6.468-1.305-7.597\\n\\tc2.587-0.735,2.122,2.495,1.421,3.912c1.47-0.532,3.196-1.462,3.327-3.204c0.143-1.911-1.414-3.684-3.111-4.336\\n\\tc-1.804-0.693-3.868-0.173-5.052,1.373c-1.127,1.471-1.137,3.36-1.036,5.124c0.111,1.931,0.155,3.818-0.008,5.75\\n\\tc-0.322,3.816-5.085,7.017-8.482,7.74C33.98,97.764,33.541,97.835,33.095,97.886z M112.183,37.499\\n\\tc0.791,1.95-4.498,3.068-5.611,3.268c-3.585,0.642-4.262,3.046-4.143,6.418c0.108,3.057,0.398,6.032,0.102,9.094\\n\\tc-0.349,3.584-1.622,6.092-4.034,8.733c-0.835-2.273,0.143-5.537,0.076-7.979c-0.076-2.815-0.312-5.588-0.312-8.403\\n\\tc0-1.483,0.068-2.902,0.233-4.382c-0.079,0.707-6.53,2.219-7.348,2.46c-2.81,0.829-5.644,1.572-8.469,2.347\\n\\tc-1.299,0.356-2.502,0.681-3.867,0.46c0.317-1.627,3.344-2.098,4.639-2.747c1.971-0.989,3.873-2.107,5.854-3.079\\n\\tc3.184-1.562,9.926-2.87,9.38-7.564c-0.152-1.31-0.529-3.192,0.692-4.15c1.103-0.864,2.337-0.203,2.939,0.887\\n\\tc0.771,1.391,0.548,3.279,0.444,4.797c2.164-0.55,6.719-2.665,8.735-1.004C111.854,36.952,112.076,37.233,112.183,37.499z\\n\\t M83.567,44.198c2.29-2.329,4.755-4.473,7.132-6.723c1.516-1.434,2.974-2.927,4.464-4.387l1.086-1.164l1.085-1.161\\n\\tc0.741-0.795,1.385-1.589,2.013-2.48c-1.717,0.525-3.192,1.26-4.622,2.349c-1.211,0.922-2.644,2.469-4.306,2.393\\n\\tc-4.057-0.187-2.824-5.947-1.549-8.094c0.875-1.472,2.888-7.141,5.273-6.726c1.719,0.299,1.498,3.721,2.026,4.962\\n\\tc2.841-1.443,6.4-3.21,9.693-2.598c3.896,0.725,1.681,4.314-0.188,6.046c-2.514,2.331-5.725,3.678-8.413,5.771\\n\\tc-2.711,2.11-5.001,4.729-7.473,7.104c-2.654,2.55-5.504,4.844-8.422,7.083C82.076,45.754,82.812,44.966,83.567,44.198z\\\"></path>\\n</svg></div></div><div we7-drag=\\\"\\\" we7-resize=\\\"\\\" we7-rotate=\\\"\\\"> </div></div></div><div type=\\\"purelink\\\" style=\\\"position: absolute; top: 277px; left: 113px; width: 85px; height: 35px; transform: translate3d(0px, 0px, 0px);\\\"><div style=\\\"transform: rotateZ(0deg);width:100%;height:100%\\\"><div class=\\\"app-pureLink\\\" style=\\\"width:100%;height:100%;background-color:#d9534f;color:#fff;opacity:1;padding-top:0px;line-height:33px;font-size:14px;font-size:14px;text-align:center;border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\\\"><div style=\\\"width: 100%; height: 100%;\\\" class=\\\"ng-scope\\\"><div class=\\\"app-pureLink-basic animated\\\" style=\\\"width:100%;height:100%\\\"><a class=\\\"element-link\\\" href=\\\"https://www.baidu.com\\\"><div class=\\\"element-box\\\" style=\\\"line-height: 33px; color: rgb(255, 255, 255);\\\">百度url</div></a></div></div></div><div we7-drag=\\\"\\\" we7-resize=\\\"\\\" we7-rotate=\\\"\\\"> </div></div></div><div type=\\\"dial\\\" style=\\\"position: absolute; top: 333px; left: 76px; width: 163px; height: 35px; transform: translate3d(0px, 0px, 0px);\\\"><div style=\\\"transform: rotateZ(0deg);width:100%;height:100%\\\"><div class=\\\"app-dial\\\" style=\\\"width:100%;height:100%;background-color:#d9534f;color:#fff;opacity:1;padding-top:0px;line-height:33px;font-size:24px;font-size:24px;text-align:center;border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\\\"><div style=\\\"width:100%;height:100%\\\" class=\\\"ng-scope\\\"><div class=\\\"app-dialphone animated\\\" style=\\\"width:100%;height:100%\\\"><a class=\\\"element-link\\\" href=\\\"tel:18656506404\\\"><div class=\\\"element-box\\\" style=\\\"line-height: 33px; color: rgb(255, 255, 255);\\\">一键拨号</div></a></div></div></div><div we7-drag=\\\"\\\" we7-resize=\\\"\\\" we7-rotate=\\\"\\\"> </div></div></div><div type=\\\"good\\\" style=\\\"position: absolute; top: 406px; left: 81px; width: 150px; height: 50px; transform: translate3d(0px, 0px, 0px);\\\"><div style=\\\"transform: rotateZ(0deg);width:100%;height:100%\\\"><div class=\\\"app-good\\\" style=\\\"width:100%;height:100%;background-color:#d15d82;color:#fff;opacity:1;padding-top:0px;line-height:48px;font-size:14px;font-size:14px;text-align:center;border-width:1px;border-radius:4px;border-style:solid;border-color:#ADADAD;box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\\\"><div class=\\\"element app-good-up\\\"><div class=\\\"counter-container\\\" style=\\\"width: 100%; height: 100%; line-height: 48px; overflow: hidden;\\\"><i class=\\\"fa fa-thumbs-o-up\\\"></i> <span class=\\\"counter-num\\\">0</span></div></div><script type=\\\"text/javascript\\\">$(document).ready(function() {\\n\\t\\t\\t\\t\\tvar patt = new RegExp(\'c=home&a=page\');\\n\\t\\t\\t\\t\\tif (patt.exec(window.location.href)) {\\n\\t\\t\\t\\t\\t\\t$.post(window.location.href, {\'do\' : \'getnum\'}, function(data) {\\n\\t\\t\\t\\t\\t\\t\\tif (data.message.errno == 0) {\\n\\t\\t\\t\\t\\t\\t\\t\\t$(\'.counter-num\').text(data.message.message.goodnum);\\n\\t\\t\\t\\t\\t\\t\\t}\\n\\t\\t\\t\\t\\t\\t}, \'json\');\\n\\t\\t\\t\\t\\t\\t$(\\\".app-good .element\\\").click(function() {\\n\\t\\t\\t\\t\\t\\t\\tvar id=GetQueryString(\\\"id\\\");\\n\\t\\t\\t\\t\\t\\t\\tif(id !=null && id.toString().length>1 && localStorage.havegood != id){\\n\\t\\t\\t\\t\\t\\t\\t\\t$.post(window.location.href, {\'do\': \'addnum\'}, function(data) {\\n\\t\\t\\t\\t\\t\\t\\t\\t\\tif (data.message.errno == 0) {\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\tvar now = $(\'.counter-num\').text();\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\tnow = parseInt(now)+1;\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t$(\'.counter-num\').text(now);\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\tlocalStorage.havegood = id;\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t}\\n\\t\\t\\t\\t\\t\\t\\t\\t}, \'json\');\\n\\t\\t\\t\\t\\t\\t\\t}\\n\\t\\t\\t\\t\\t\\t});\\n\\t\\t\\t\\t\\t\\tfunction GetQueryString(name){\\n\\t\\t\\t\\t\\t\\t\\tvar reg = new RegExp(\\\"(^|&)\\\"+ name +\\\"=([^&]*)(&|$)\\\");\\n\\t\\t\\t\\t\\t\\t\\tvar r = window.location.search.substr(1).match(reg);\\n\\t\\t\\t\\t\\t\\t\\tif(r!=null)return  unescape(r[2]); return null;\\n\\t\\t\\t\\t\\t\\t}\\t\\t\\t\\t\\t\\t\\n\\t\\t\\t\\t\\t};\\n\\t\\t\\t\\t});</script></div><div we7-drag=\\\"\\\" we7-resize=\\\"\\\" we7-rotate=\\\"\\\"> </div></div></div><div type=\\\"countdown\\\" style=\\\"position: absolute; top: 494px; left: 38px; width: 240px; height: 50px; transform: translate3d(0px, 0px, 0px);\\\"><div style=\\\"transform: rotateZ(0deg);width:100%;height:100%\\\"><div class=\\\"app-countDown\\\" style=\\\"width:100%;height:100%;overflow:hidden;background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:48px;font-size:14px;font-size:13px;text-align:center;border-width:1px;border-radius:4px;border-style:solid;border-color:#ccc;box-shadow: 0px 0px 0px rgba(0,0,0,0.5);animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\\\"><div class=\\\"timer\\\" data=\\\"2016-10-11 10:0:55\\\"><span class=\\\"day\\\">0</span> <small style=\\\"vertical-align:middle;margin:3px\\\">天</small> <span class=\\\"hours\\\">0</span> <small style=\\\"vertical-align:middle;margin:3px\\\">时</small> <span class=\\\"minutes\\\">32</span> <small style=\\\"vertical-align:middle;margin:3px\\\">分</small> <span class=\\\"seconds\\\">32</span> <small style=\\\"vertical-align:middle;margin:3px\\\">秒</small></div><script type=\\\"text/javascript\\\">$(document).ready(function(){\\n\\t\\t\\t\\t\\tsetInterval(function(){\\n\\t\\t\\t\\t\\t\\tvar timer = $(\'.timer\');\\n\\t\\t\\t\\t\\t\\tfor (var i = 0; i < timer.length; i++) {\\n\\t\\t\\t\\t\\t\\t\\tvar dead = $(timer.get(i)).attr(\'data\');\\n\\t\\t\\t\\t\\t\\t\\tvar deadtime = Date.parse(new Date(dead));\\n\\t\\t\\t\\t\\t\\t\\tvar nowtime = Date.parse(new Date());\\n\\t\\t\\t\\t\\t\\t\\tvar diff = deadtime - nowtime > 0 ? deadtime - nowtime : 0;\\n\\t\\t\\t\\t\\t\\t\\tvar res = {};\\n\\t\\t\\t\\t\\t\\t\\tres.day = parseInt(diff / (24 * 60 * 60 * 1000));\\n\\t\\t\\t\\t\\t\\t\\tres.hour = parseInt(diff / (60 * 60 * 1000) % 24);\\n\\t\\t\\t\\t\\t\\t\\tres.min = parseInt(diff / (60 * 1000) % 60);\\n\\t\\t\\t\\t\\t\\t\\tres.sec = parseInt(diff / 1000 % 60);\\n\\t\\t\\t\\t\\t\\t\\t$(\'.timer[data=\\\"\'+dead+\'\\\"] .day\').text(res.day);\\n\\t\\t\\t\\t\\t\\t\\t$(\'.timer[data=\\\"\'+dead+\'\\\"] .hours\').text(res.hour);\\n\\t\\t\\t\\t\\t\\t\\t$(\'.timer[data=\\\"\'+dead+\'\\\"] .minutes\').text(res.min);\\n\\t\\t\\t\\t\\t\\t\\t$(\'.timer[data=\\\"\'+dead+\'\\\"] .seconds\').text(res.sec);\\n\\t\\t\\t\\t\\t\\t};\\n\\t\\t\\t\\t\\t}, 1000);\\n\\t\\t\\t\\t});</script></div><div we7-drag=\\\"\\\" we7-resize=\\\"\\\" we7-rotate=\\\"\\\"> </div></div></div>\"]'),
('3','3','0','快捷菜单','','{\"navStyle\":\"1\",\"bgColor\":\"#2B2D30\",\"menus\":[],\"extend\":[],\"position\":{\"homepage\":true,\"usercenter\":true,\"page\":true,\"article\":true},\"ignoreModules\":[]}','<div class=\"js-quickmenu nav-menu-wx clearfix  has-nav-0\"  ><div class=\"nav-home text-center\"><a href=\"http://wx.purui.cn/km/app/index.php?i=3&j=3\"><i class=\"fa fa-home\"></i></a></div><ul class=\"nav-group\"></ul></div>','4','1','1476841307','0',''),
('4','3','0','测试','测试测试测试测试测试测试测试测试','[{\"id\":\"UCheader\",\"name\":\"会员主页\",\"params\":{\"title\":\"测试\",\"cover\":\"\",\"bgImage\":\"http:\\/\\/wx.purui.cn\\/km\\/attachment\\/images\\/3\\/2016\\/10\\/Y4OgH3443o84k4W3g1G4HHhzTH4JZ8.jpg\",\"pageLength\":1,\"description\":\"测试测试测试测试测试测试测试测试\",\"contact\":\"18656506404\",\"animationStyle\":{\"animationName\":\"noEffect\",\"animationDuration\":1,\"animationTimingFunction\":\"ease\",\"animationDelay\":0.6,\"animationFillMode\":\"both\",\"name\":\"noEffect\",\"speed\":1,\"delay\":0.6},\"positionStyle\":{\"top\":259,\"left\":40,\"width\":240,\"height\":50},\"baseStyle\":{\"backgroundColor\":\"rgba(0,0,0,0)\",\"color\":\"#000\",\"opacity\":0,\"paddingTop\":0,\"lineHeight\":2,\"fontSize\":14,\"textAlign\":\"left\",\"lock\":false},\"borderStyle\":{\"borderWidth\":0,\"borderRadius\":2,\"borderStyle\":\"solid\",\"borderColor\":\"rgba(0,0,0,1)\",\"transform\":0},\"shadowStyle\":{\"shadowSize\":0,\"shadowBlur\":0,\"shadowColor\":\"rgba(0,0,0,0.5)\",\"shadowDirection\":1},\"isnew\":1},\"originParams\":{\"title\":\"测试\",\"cover\":\"http:\\/\\/wx.purui.cn\\/km\\/attachment\\/images\\/3\\/2016\\/10\\/Y4OgH3443o84k4W3g1G4HHhzTH4JZ8.jpg\",\"bgImage\":\"\",\"pageLength\":1,\"description\":\"测试测试测试测试测试测试测试测试\",\"contact\":\"18656506404\",\"animationStyle\":{\"animationName\":\"noEffect\",\"animationDuration\":1,\"animationTimingFunction\":\"ease\",\"animationDelay\":0.6,\"animationFillMode\":\"both\",\"name\":\"noEffect\",\"speed\":1,\"delay\":0.6},\"positionStyle\":{\"top\":259,\"left\":40,\"width\":240,\"height\":50},\"baseStyle\":{\"backgroundColor\":\"rgba(0,0,0,0)\",\"color\":\"#000\",\"opacity\":0,\"paddingTop\":0,\"lineHeight\":2,\"fontSize\":14,\"textAlign\":\"left\",\"lock\":false},\"borderStyle\":{\"borderWidth\":0,\"borderRadius\":2,\"borderStyle\":\"solid\",\"borderColor\":\"rgba(0,0,0,1)\",\"transform\":0},\"shadowStyle\":{\"shadowSize\":0,\"shadowBlur\":0,\"shadowColor\":\"rgba(0,0,0,0.5)\",\"shadowDirection\":1},\"isnew\":1},\"issystem\":1,\"index\":0,\"displayorder\":0,\"animationStyle\":\"animation: noEffect 1s ease 0.6s both;-webkit-animation: noEffect 1s ease 0.6s both;-moz-animation: noEffect 1s ease 0.6s both;-o-animation: noEffect 1s ease 0.6s both;-ms-animation: noEffect 1s ease 0.6s both;\",\"baseStyle\":\"background-color:rgba(0,0,0,0);color:#000;opacity:1;padding-top:0px;line-height:2;font-size:14px;font-size:14px;text-align:left;\",\"borderStyle\":\"border-width:0px;border-radius:2px;border-style:solid;border-color:rgba(0,0,0,1);\",\"shadowStyle\":\"box-shadow: 0px 0px 0px rgba(0,0,0,0.5);\",\"positionStyle\":\"position:absolute; top: 259px; left: 40px; width: 240px; height: 50px;\",\"marginTop\":0,\"transform\":\"transform: rotateZ(0deg);\"}]','<div class=\"js-design-page\" style=\"background-color:;height:45px;\"></div>','3','1','1476944300','0',''),
('5','3','5','快捷菜单','','{\"navStyle\":\"3\",\"bgColor\":\"#2B2D30\",\"menus\":[{\"title\":\"\\u680f\\u76ee1\",\"url\":\"https:\\/\\/www.baidu.com\",\"submenus\":[],\"icon\":{\"name\":\"fa-home\",\"color\":\"#00ffff\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":\"\"},{\"title\":\"\\u680f\\u76ee2\",\"url\":\"https:\\/\\/www.baidu.com\",\"submenus\":[],\"icon\":{\"name\":\"fa-home\",\"color\":\"#00ffff\"},\"image\":\"\",\"hoverimage\":\"\",\"hovericon\":\"\"}],\"extend\":[],\"position\":{\"homepage\":true,\"usercenter\":true,\"page\":true,\"article\":true},\"ignoreModules\":[]}','<div class=\"js-quickmenu nav-menu-cart  has-nav-2\"    style=\"background-color: rgb(43, 45, 48);\"><ul class=\"nav-group clearfix\"><li class=\"nav-group-item\"><a href=\"https://www.baidu.com\" ><i  class=\"fa fa-home\"   style=\"color: rgb(0, 255, 255);\"></i></a></li><li class=\"nav-home nav-group-item\"><a href=\"\" ><i  class=\"fa\"  ></i></a></li><li class=\"nav-group-item \" ><a  href=\"https://www.baidu.com\"  class=\"\"><i  class=\"fa fa-home\"   style=\"color: rgb(0, 255, 255);\"></i></a></li></ul></div>','2','0','1476158708','0','');


DROP TABLE IF EXISTS ims_site_slide;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO ims_site_slide VALUES 
('1','3','5','one','./index.php?i=3&c=home&t=5','images/3/2016/10/MRc0oOdczr3H463oC4I45257534R24.jpg','1'),
('2','3','5','two','./index.php?i=3&c=home&t=5','images/3/2016/10/UmLGgbkB74ii2I1G68oL87o7XlQEi4.jpg','2');


DROP TABLE IF EXISTS ims_site_styles;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO ims_site_styles VALUES 
('1','1','1','微站默认模板_gC5C'),
('2','2','1','微站默认模板_U4WZ'),
('6','4','1','微站默认模板_P4g8'),
('8','3','1','昆明微站');


DROP TABLE IF EXISTS ims_site_styles_vars;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_site_templates;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO ims_site_templates VALUES 
('1','default','微站默认模板','','由微擎提供默认微站模板套系','微擎团队','http://we7.cc','1','0'),
('2','hccc06','企业微网站Html5自适应','4.0','企业微网站Html5自适应','QQ1500158347','http://bbs.we7.cc','often','6');


DROP TABLE IF EXISTS ims_stat_fans;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

INSERT INTO ims_stat_fans VALUES 
('1','1','0','0','0','20161009'),
('2','1','0','0','0','20161008'),
('3','1','0','0','0','20161007'),
('4','1','0','0','0','20161006'),
('5','1','0','0','0','20161005'),
('6','1','0','0','0','20161004'),
('7','1','0','0','0','20161003'),
('8','2','1','0','974','20161009'),
('9','2','5','0','973','20161008'),
('10','2','0','1','968','20161007'),
('11','2','2','0','969','20161006'),
('12','2','2','1','967','20161005'),
('13','2','4','1','966','20161004'),
('14','2','2','1','963','20161003'),
('15','3','1','0','974','20161009'),
('16','3','5','0','973','20161008'),
('17','3','0','1','968','20161007'),
('18','3','2','0','969','20161006'),
('19','3','2','1','967','20161005'),
('20','3','4','1','966','20161004'),
('21','3','2','1','963','20161003'),
('22','3','4','2','976','20161010'),
('23','3','2','0','978','20161011'),
('24','3','3','0','981','20161012'),
('25','3','2','0','983','20161013'),
('26','3','4','0','987','20161015'),
('27','3','1','1','983','20161014'),
('28','3','6','0','993','20161016'),
('29','3','2','0','995','20161017'),
('30','3','1','1','995','20161018'),
('31','3','3','1','997','20161019'),
('32','3','2','0','999','20161020');


DROP TABLE IF EXISTS ims_stat_keyword;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ims_stat_keyword VALUES 
('1','3','11','21','2','1476084214','1476028800');


DROP TABLE IF EXISTS ims_stat_msg_history;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

INSERT INTO ims_stat_msg_history VALUES 
('1','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234247\";s:10:\"location_y\";s:10:\"121.477737\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083277'),
('2','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','','unsubscrib','1476083286'),
('3','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}','subscribe','1476083300'),
('4','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234247\";s:10:\"location_y\";s:10:\"121.477737\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083303'),
('5','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234121\";s:10:\"location_y\";s:10:\"121.477875\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083317'),
('6','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233902\";s:10:\"location_y\";s:10:\"121.477959\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083324'),
('7','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233902\";s:10:\"location_y\";s:10:\"121.477959\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083328'),
('8','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233902\";s:10:\"location_y\";s:10:\"121.477959\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083334'),
('9','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233902\";s:10:\"location_y\";s:10:\"121.477959\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083340'),
('10','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233902\";s:10:\"location_y\";s:10:\"121.477959\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083346'),
('11','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233902\";s:10:\"location_y\";s:10:\"121.477959\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083352'),
('12','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233902\";s:10:\"location_y\";s:10:\"121.477959\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083358'),
('13','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233902\";s:10:\"location_y\";s:10:\"121.477959\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083363'),
('14','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233902\";s:10:\"location_y\";s:10:\"121.477959\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083370'),
('15','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233902\";s:10:\"location_y\";s:10:\"121.477959\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083375'),
('16','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','','unsubscrib','1476083380'),
('17','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}','subscribe','1476083392'),
('18','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234196\";s:10:\"location_y\";s:10:\"121.477791\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083395'),
('19','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233721\";s:10:\"location_y\";s:10:\"121.478088\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083401'),
('20','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233721\";s:10:\"location_y\";s:10:\"121.478088\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083407'),
('21','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233721\";s:10:\"location_y\";s:10:\"121.478088\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083413'),
('22','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233721\";s:10:\"location_y\";s:10:\"121.478088\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083419'),
('23','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233721\";s:10:\"location_y\";s:10:\"121.478088\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083425'),
('24','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233721\";s:10:\"location_y\";s:10:\"121.478088\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083431'),
('25','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233721\";s:10:\"location_y\";s:10:\"121.478088\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083437'),
('26','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233721\";s:10:\"location_y\";s:10:\"121.478088\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083443'),
('27','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233721\";s:10:\"location_y\";s:10:\"121.478088\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083449'),
('28','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234627\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"30.000000\";}','trace','1476083455'),
('29','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234627\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"30.000000\";}','trace','1476083461'),
('30','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234627\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"30.000000\";}','trace','1476083467'),
('31','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234627\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"30.000000\";}','trace','1476083473'),
('32','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234627\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"30.000000\";}','trace','1476083479'),
('33','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234627\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"30.000000\";}','trace','1476083485'),
('34','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234627\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"30.000000\";}','trace','1476083491'),
('35','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234627\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"30.000000\";}','trace','1476083502'),
('36','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234138\";s:10:\"location_y\";s:10:\"121.477867\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083509'),
('37','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234138\";s:10:\"location_y\";s:10:\"121.477867\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083515'),
('38','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234138\";s:10:\"location_y\";s:10:\"121.477867\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083521'),
('39','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234138\";s:10:\"location_y\";s:10:\"121.477867\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083527'),
('40','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234138\";s:10:\"location_y\";s:10:\"121.477867\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083533'),
('41','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234138\";s:10:\"location_y\";s:10:\"121.477867\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083539'),
('42','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234138\";s:10:\"location_y\";s:10:\"121.477867\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083545'),
('43','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234138\";s:10:\"location_y\";s:10:\"121.477867\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083551'),
('44','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234138\";s:10:\"location_y\";s:10:\"121.477867\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083557'),
('45','3','11','21','oItv0twZifvHhKZwolVIbeG4NR6Q','basic','a:4:{s:7:\"content\";s:12:\"联系小编\";s:8:\"original\";N;s:11:\"redirection\";b:0;s:6:\"source\";N;}','text','1476083559'),
('46','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234646\";s:10:\"location_y\";s:10:\"121.477654\";s:9:\"precision\";s:9:\"30.000000\";}','trace','1476083563'),
('47','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234646\";s:10:\"location_y\";s:10:\"121.477654\";s:9:\"precision\";s:9:\"30.000000\";}','trace','1476083575'),
('48','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234119\";s:10:\"location_y\";s:10:\"121.477913\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083581'),
('49','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234119\";s:10:\"location_y\";s:10:\"121.477913\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083587'),
('50','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234119\";s:10:\"location_y\";s:10:\"121.477913\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083593'),
('51','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234119\";s:10:\"location_y\";s:10:\"121.477913\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083599'),
('52','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234119\";s:10:\"location_y\";s:10:\"121.477913\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083605'),
('53','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234119\";s:10:\"location_y\";s:10:\"121.477913\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083611'),
('54','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234119\";s:10:\"location_y\";s:10:\"121.477913\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083617'),
('55','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234119\";s:10:\"location_y\";s:10:\"121.477913\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083623'),
('56','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234119\";s:10:\"location_y\";s:10:\"121.477913\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083629'),
('57','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234184\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083635'),
('58','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234184\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083641'),
('59','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234184\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083647'),
('60','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234184\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083653'),
('61','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234184\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083659'),
('62','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234184\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083665'),
('63','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234184\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083671'),
('64','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234184\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083677'),
('65','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234184\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083683'),
('66','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234190\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083689'),
('67','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234190\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083695'),
('68','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234190\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083701'),
('69','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234190\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083707'),
('70','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234190\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083713'),
('71','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234190\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083719'),
('72','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','','unsubscrib','1476083725'),
('73','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}','subscribe','1476083746'),
('74','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234190\";s:10:\"location_y\";s:10:\"121.477852\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083748'),
('75','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233946\";s:10:\"location_y\";s:10:\"121.477829\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083755'),
('76','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233099\";s:10:\"location_y\";s:10:\"121.478416\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083761'),
('77','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233099\";s:10:\"location_y\";s:10:\"121.478416\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083767'),
('78','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233099\";s:10:\"location_y\";s:10:\"121.478416\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083773'),
('79','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233099\";s:10:\"location_y\";s:10:\"121.478416\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083779'),
('80','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233099\";s:10:\"location_y\";s:10:\"121.478416\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083785'),
('81','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233099\";s:10:\"location_y\";s:10:\"121.478416\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083791'),
('82','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233099\";s:10:\"location_y\";s:10:\"121.478416\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083797'),
('83','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233099\";s:10:\"location_y\";s:10:\"121.478416\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083803'),
('84','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234051\";s:10:\"location_y\";s:10:\"121.477951\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083809'),
('85','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234051\";s:10:\"location_y\";s:10:\"121.477951\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083815'),
('86','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234051\";s:10:\"location_y\";s:10:\"121.477951\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083821'),
('87','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234051\";s:10:\"location_y\";s:10:\"121.477951\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083827'),
('88','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234051\";s:10:\"location_y\";s:10:\"121.477951\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083833'),
('89','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234051\";s:10:\"location_y\";s:10:\"121.477951\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476083839'),
('90','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','','unsubscrib','1476084002'),
('91','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','a:2:{s:5:\"scene\";N;s:6:\"ticket\";N;}','subscribe','1476084017'),
('92','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234175\";s:10:\"location_y\";s:10:\"121.477798\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084020'),
('93','3','11','21','oItv0twZifvHhKZwolVIbeG4NR6Q','basic','','event','1476084023'),
('94','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234226\";s:10:\"location_y\";s:10:\"121.477760\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084026'),
('95','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','','event','1476084026'),
('96','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234226\";s:10:\"location_y\";s:10:\"121.477760\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084031'),
('97','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','','event','1476084032'),
('98','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','','','event','1476084036'),
('99','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234257\";s:10:\"location_y\";s:10:\"121.477760\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084056'),
('100','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233955\";s:10:\"location_y\";s:10:\"121.477905\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084062'),
('101','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233955\";s:10:\"location_y\";s:10:\"121.477905\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084068'),
('102','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233955\";s:10:\"location_y\";s:10:\"121.477905\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084074'),
('103','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233955\";s:10:\"location_y\";s:10:\"121.477905\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084080'),
('104','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233955\";s:10:\"location_y\";s:10:\"121.477905\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084086'),
('105','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233955\";s:10:\"location_y\";s:10:\"121.477905\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084092'),
('106','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.233955\";s:10:\"location_y\";s:10:\"121.477905\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084109'),
('107','3','0','0','oItv0twZifvHhKZwolVIbeG4NR6Q','default','a:3:{s:10:\"location_x\";s:9:\"31.234106\";s:10:\"location_y\";s:10:\"121.477882\";s:9:\"precision\";s:9:\"40.000000\";}','trace','1476084113');


DROP TABLE IF EXISTS ims_stat_rule;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

INSERT INTO ims_stat_rule VALUES 
('43','3','11','2','1476084214','1476028800');


DROP TABLE IF EXISTS ims_uni_account;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO ims_uni_account VALUES 
('1','-1','微擎团队','一个朝气蓬勃的团队','1',''),
('2','0','昆明普瑞眼科医院','关注昆明普瑞眼科医院，用爱传递光明','2',''),
('3','0','昆明普瑞眼科医院','关注昆明普瑞眼科医院，用爱传递光明','3','0'),
('4','0','11111111111','','4','');


DROP TABLE IF EXISTS ims_uni_account_group;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO ims_uni_account_group VALUES 
('1','2','-1'),
('2','2','1'),
('8','3','1'),
('7','3','-1'),
('5','4','-1'),
('6','4','1');


DROP TABLE IF EXISTS ims_uni_account_menus;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO ims_uni_account_menus VALUES 
('10','3','0','1','v1.0','0','-1','0','','YTozOntzOjY6ImJ1dHRvbiI7YTozOntpOjA7YTo0OntzOjQ6InR5cGUiO3M6NDoidmlldyI7czo0OiJuYW1lIjtzOjEyOiLnsr7ngbXnpL7ljLoiO3M6MzoidXJsIjtzOjE5ODoiaHR0cHM6Ly9vcGVuLndlaXhpbi5xcS5jb20vY29ubmVjdC9vYXV0aDIvYXV0aG9yaXplP2FwcGlkPXd4OTMyNGIyNjZhYTQ4MThkMCZyZWRpcmVjdF91cmk9aHR0cCUzQSUyRiUyRm0ud3NxLnFxLmNvbSUyRjI1MzA4MjQyMyUzRl93diUzRDEmcmVzcG9uc2VfdHlwZT1jb2RlJnNjb3BlPXNuc2FwaV9iYXNlJnN0YXRlPTEjd2VjaGF0X3JlZGlyZWN0IjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319aToxO2E6Mjp7czo0OiJuYW1lIjtzOjEyOiLlsLHljLvmjIfljZciO3M6MTA6InN1Yl9idXR0b24iO2E6MTp7aTowO2E6NDp7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6NDoibmFtZSI7czoxNToi5YWo6aOe56eS5ZKo6K+iIjtzOjM6InVybCI7czo0MzoiaHR0cDovL20ua21wcnlreXkuY29tL3podWFudGkvenRib3gvanN6bGZmLyI7czoxMDoic3ViX2J1dHRvbiI7YTowOnt9fX19aToyO2E6Mjp7czo0OiJuYW1lIjtzOjEyOiLlkbzlj6vlsI/nkZ4iO3M6MTA6InN1Yl9idXR0b24iO2E6NDp7aTowO2E6NDp7czo0OiJ0eXBlIjtzOjQ6InZpZXciO3M6NDoibmFtZSI7czoxMjoi5a6Y5pa55b6u56uZIjtzOjM6InVybCI7czoyMjoiaHR0cDovL20ua21wcnlreXkuY29tLyI7czoxMDoic3ViX2J1dHRvbiI7YTowOnt9fWk6MTthOjQ6e3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjQ6Im5hbWUiO3M6MTI6IumihOe6puaMguWPtyI7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9tLmttcHJ5a3l5LmNvbS9hYm91dC95eWdoLyI7czoxMDoic3ViX2J1dHRvbiI7YTowOnt9fWk6MjthOjQ6e3M6NDoidHlwZSI7czo0OiJ2aWV3IjtzOjQ6Im5hbWUiO3M6MTI6IuS6pOmAmui3r+e6vyI7czozOiJ1cmwiO3M6MjI1OiJodHRwOi8vbWFwLmJhaWR1LmNvbS9tb2JpbGUvd2ViYXBwL3BsYWNlL2RldGFpbC9xdD1pbmYmdWlkPTFiODdlMDRhZjVmYzE4ODI5N2VjODQ3Mi92dD1tYXAmYWN0PSZkZXRhaWxfZnJvbT0wLz9iZF9wYWdlX3R5cGU9MSZlbnRyeT0mZnJvbT0wJmxheW91dD0yJnB1PXN6JTQwMTUxNF8xNTE0JnNzaWQ9MCZ0aGlyZF9wYXJ0eT13YXBfcmVkaXJlY3QmdGhyb3VnaD1uJnVpZD0wJmZyb21oYXNoPTEiO3M6MTA6InN1Yl9idXR0b24iO2E6MDp7fX1pOjM7YTo0OntzOjQ6InR5cGUiO3M6NToiY2xpY2siO3M6NDoibmFtZSI7czoxMjoi6IGU57O75bCP57yWIjtzOjM6ImtleSI7czoxMjoi6IGU57O75bCP57yWIjtzOjEwOiJzdWJfYnV0dG9uIjthOjA6e319fX19czo0OiJ0eXBlIjtpOjE7czo5OiJtYXRjaHJ1bGUiO2E6MDp7fX0=','0','1476084162','0');


DROP TABLE IF EXISTS ims_uni_account_modules;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

INSERT INTO ims_uni_account_modules VALUES 
('1','1','basic','1',''),
('2','1','news','1',''),
('3','1','music','1',''),
('4','1','userapi','1',''),
('5','1','recharge','1',''),
('6','3','userapi','1','a:0:{}'),
('38','4','ewei_shopping','1',''),
('34','4','we7_doctor','1',''),
('33','3','we7_doctor','1',''),
('32','2','we7_doctor','1',''),
('31','1','we7_doctor','1',''),
('37','3','ewei_shopping','1',''),
('36','2','ewei_shopping','1',''),
('35','1','ewei_shopping','1','');


DROP TABLE IF EXISTS ims_uni_account_users;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_uni_group;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modules` varchar(15000) NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO ims_uni_group VALUES 
('1','体验套餐服务','a:2:{i:0;s:13:\"ewei_shopping\";i:1;s:10:\"we7_doctor\";}','N;','0'),
('2','','a:1:{i:0;s:13:\"ewei_shopping\";}','a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}','3');


DROP TABLE IF EXISTS ims_uni_settings;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `shortcuts` varchar(5000) NOT NULL,
  `payment` varchar(2000) NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO ims_uni_settings VALUES 
('1','a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}','a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}','0','a:1:{s:6:\"status\";i:0;}','a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}','a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}','a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}','','','','','a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}','','1','0','','','0','','0','0',''),
('2','','a:2:{s:7:\"account\";s:1:\"2\";s:4:\"host\";s:0:\"\";}','0','','','a:2:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}}','a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}','','','','','','','2','0','','','0','','0','0',''),
('3','a:4:{s:8:\"focusreg\";i:0;s:4:\"item\";s:6:\"random\";s:4:\"type\";s:8:\"password\";s:5:\"audit\";i:0;}','a:2:{s:4:\"host\";s:18:\"http://wx.purui.cn\";s:7:\"account\";i:3;}','3','','','a:2:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}}','a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}','','','','a:1:{s:13:\"ewei_shopping\";a:2:{s:4:\"name\";s:13:\"ewei_shopping\";s:4:\"link\";s:51:\"./index.php?c=home&a=welcome&do=ext&m=ewei_shopping\";}}','a:7:{s:6:\"credit\";a:1:{s:6:\"switch\";b:1;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:8:{s:6:\"switch\";b:1;s:7:\"account\";s:1:\"3\";s:7:\"signkey\";s:32:\"cvReaEuvuypRAe4zxicAIeEC5Z8VsDxP\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:7:\"version\";s:1:\"2\";s:5:\"mchid\";s:8:\"10037493\";s:6:\"apikey\";s:32:\"cvReaEuvuypRAe4zxicAIeEC5Z8VsDxP\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}s:8:\"unionpay\";a:3:{s:6:\"switch\";b:0;s:11:\"signcertpwd\";s:0:\"\";s:5:\"merid\";s:0:\"\";}s:8:\"baifubao\";a:3:{s:6:\"switch\";b:0;s:7:\"signkey\";s:0:\"\";s:5:\"mchid\";s:0:\"\";}s:4:\"line\";a:2:{s:6:\"switch\";b:0;s:7:\"message\";s:0:\"\";}}','','3','0','','','0','a:1:{s:18:\"wechat_card_manage\";s:18:\"wechat_card_manage\";}','0','2',''),
('4','','','0','','','a:2:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}}','a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}','','','','','','','8','0','','','0','','0','0','');


DROP TABLE IF EXISTS ims_uni_verifycode;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_userapi_cache;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_userapi_reply;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO ims_userapi_reply VALUES 
('1','1','\"城市名+天气\", 如: \"北京天气\"','weather.php','','','0'),
('2','2','\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"','baike.php','','','0'),
('3','3','\"@查询内容(中文或英文)\"','translate.php','','','0'),
('4','4','\"日历\", \"万年历\", \"黄历\"或\"几号\"','calendar.php','','','0'),
('5','5','\"新闻\"','news.php','','','0'),
('6','6','\"快递+单号\", 如: \"申通1200041125\"','express.php','','','0');


DROP TABLE IF EXISTS ims_users;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) unsigned NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ims_users VALUES 
('1','0','admin','e7a924962d3d182be15bb9d6e99f940feec4f407','09f23cd3','0','0','1476064450','','1477010361','124.74.40.222','','0','0');


DROP TABLE IF EXISTS ims_users_failed_login;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_users_group;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO ims_users_group VALUES 
('1','体验用户组','a:1:{i:0;i:1;}','1','1','0'),
('2','白金用户组','a:1:{i:0;i:1;}','2','2','0'),
('3','黄金用户组','a:1:{i:0;i:1;}','3','3','0');


DROP TABLE IF EXISTS ims_users_invitation;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_users_permission;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(30) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_users_profile;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_video_reply;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_voice_reply;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_wechat_attachment;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO ims_wechat_attachment VALUES 
('1','3','3','1','100.jpg','images/3/2016/10/FdD0fcf1AvDvHLTY17mPvYMDADCTdu.jpg','http://mmbiz.qpic.cn/mmbiz_jpg/Y6zu6dnaNevYE9WEoXOQnUEh4SnX6voFXLDZeXFRUmwRVicbdsav4otIr2rxRZxxAM7RuiczZ9Lx8iagvBl3ssCdA/0','100','100','image','file_upload','','1476841946');


DROP TABLE IF EXISTS ims_wechat_news;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ims_wxcard_reply;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



----WeEngine MySQL Dump End