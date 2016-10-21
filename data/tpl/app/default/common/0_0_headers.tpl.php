<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title><?php  if(!empty($title)) { ?> <?php  echo $title;?> <?php  } else if(!empty($_W['page']['title'])) { ?> <?php  echo $_W['page']['title'];?><?php  } ?><?php  if(!empty($_W['page']['sitename'])) { ?> - <?php  echo $_W['page']['sitename'];?><?php  } else { ?> - <?php  echo $_W['account']['name'];?><?php  } ?><?php  if(IMS_FAMILY != 'x') { ?> - 昆明普瑞眼科医院<?php  } ?></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <link rel="stylesheet" href="http://abc.prykweb.com/css/public/swiper.min.css"/>
   <link rel="stylesheet" href="<?php  echo $_W['siteroot'];?>app/themes/default/css/bootstrap.css"/>
   <link rel="stylesheet" href="<?php  echo $_W['siteroot'];?>app/themes/default/css/bootstrapValidator.css"/>
   <link rel="stylesheet" href="<?php  echo $_W['siteroot'];?>app/themes/default/css/bootstrap-datetimepicker.css"/>
   <link rel="stylesheet" href="<?php  echo $_W['siteroot'];?>app/themes/default/css/index.css"/>
   <script type="text/javascript" src="http://abc.prykweb.com/js/public/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="http://abc.prykweb.com/js/public/swiper.min.js"></script>
    <script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/themes/default/js/bootstrap.js"></script>
    <script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/themes/default/js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/themes/default/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/themes/default/js/bootstrap-datetimepicker.zh-CN.js"></script>
</head>
<body <?php  if($_GPC["a"]== 'huli') { ?> class="hl-body" <?php  } ?>>