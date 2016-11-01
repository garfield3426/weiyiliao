<?php

defined('IN_IA') or exit('Access Denied');
define("we7_weikanjia", "we7_weikanjia");
require_once IA_ROOT . "/addons/" . we7_weikanjia . "/dbutil.class.php";
require_once IA_ROOT . "/addons/" . we7_weikanjia . "/monUtil.class.php";
require_once IA_ROOT . "/addons/" . we7_weikanjia . "/value.class.php";

class we7_weikanjiaModuleProcessor extends WeModuleProcessor {

    private $sae=false;

    public function respond() {
        $rid = $this->rule;




        $xkwkj=pdo_fetch("select * from ".tablename(DBUtil::$TABLE_XKWKJ)." where rid=:rid",array(":rid"=>$rid));

        if(!empty($xkwkj)){

                $news = array ();
                $news [] = array ('title' => $xkwkj['new_title'], 'description' =>$xkwkj['new_content'], 'picurl' => MonUtil::getpicurl( $xkwkj ['new_icon'] ), 'url' => $this->createMobileUrl ( 'auth',array('kid'=>$xkwkj['id'],'au'=>Value::$REDIRECT_USER_INDEX))  );
                return $this->respNews ( $news );
        }else{

          return   $this->respText("炫酷砍价活动不存在或删除");

        }

        return null;


    }



}
