<?php
/**
 * 医生模块微站定义
 *
 * @author Garfield
 * @url http://bbs.we7.cc/
 */
defined('IN_IA') or exit('Access Denied');

class We7_doctorModuleSite extends WeModuleSite {
	public $weid;
    public function __construct() { 
        global $_W;
        $this->weid = IMS_VERSION<0.6?$_W['weid']:$_W['uniacid'];
    }

	public function doWebClassify(){
		global $_W,$_GPC;
		load()->func('tpl');
		$op = !empty($_GPC['op'])?$_GPC['op']:'display';
		$departments = pdo_fetchAll("SELECT * FROM".tablename('bmhospital_reply')." WHERE weid='{$_W['weid']}'");
		//print_r($departments);exit;
		if ($op == 'post') {
			if (!empty($_GPC['id'])) {
				$item = pdo_fetch("SELECT * FROM".tablename('bmhospital_classify')." WHERE id='{$_GPC['id']}'");
			}
			
			$data = array(
				'weid'          => $_W['weid'],
				'sort'          => intval($_GPC['sort']),
				'ser_window'    => $_GPC['ser_window'],
				'department_id' => $_GPC['department_id'],
				'phone'         => $_GPC['phone'],
				'ser_picurl'    => $_GPC['ser_picurl'],
				'ser_info'      => htmlspecialchars_decode($_GPC['ser_info']),
			);
			if ($_W['ispost']) {
				if (empty($_GPC['id'])) {
					pdo_insert('bmhospital_classify',$data);
				}else{
					//print_r($data);exit;
					pdo_update('bmhospital_classify',$data,array("id" => $_GPC['id']));
				}
				message("更新成功",referer(),'success');
			}
		}elseif( $op == 'display'){
			$classify = pdo_fetchAll("SELECT * FROM".tablename('bmhospital_classify')." WHERE weid='{$_W['weid']}'");
			$list = array();
			foreach ($classify as $key => $value) {
				$list[$key]['id'] = $value['id'];
				$list[$key]['sort'] = $value['sort'];
				$list[$key]['ser_window'] = $value['ser_window'];
				$departments = pdo_fetch("SELECT * FROM".tablename('bmhospital_reply')." WHERE id='{$value['department_id']}'");
				$list[$key]['department'] = $departments['department'];
			}
		}elseif( $op == 'delete'){
			pdo_delete("bmhospital_classify",array('id' => $_GPC['id'] ));
			message("删除成功",referer(),'success');
		}
		include $this->template('classify');
	}
	
	
	public function doWebGroup(){
		global $_W,$_GPC;
		load()->func('tpl');
		$op = !empty($_GPC['op'])?$_GPC['op']:'display';
		$departments = pdo_fetchAll("SELECT * FROM".tablename('bmhospital_reply')." WHERE weid='{$_W['weid']}'");
		//print_r($departments);exit;
		if ($op == 'post') {
			if (!empty($_GPC['id'])) {
				$item = pdo_fetch("SELECT * FROM".tablename('bmhospital_group')." WHERE id='{$_GPC['id']}'");
			}
			
			$data = array(
				'weid'          => $_W['weid'],
				'sort'          => intval($_GPC['sort']),
				'ser_window'    => $_GPC['ser_window'],
				'department_id' => $_GPC['department_id'],
				'phone'         => $_GPC['phone'],
				'ser_picurl'    => $_GPC['ser_picurl'],
				'ser_info'      => htmlspecialchars_decode($_GPC['ser_info']),
				'price'          => intval($_GPC['price']),
			);
			if ($_W['ispost']) {
				if (empty($_GPC['id'])) {
					pdo_insert('bmhospital_group',$data);
				}else{
					//print_r($data);exit;
					pdo_update('bmhospital_group',$data,array("id" => $_GPC['id']));
				}
				message("更新成功",referer(),'success');
			}
		}elseif( $op == 'display'){
			$classify = pdo_fetchAll("SELECT * FROM".tablename('bmhospital_group')." WHERE weid='{$_W['weid']}'");
			$list = array();
			foreach ($classify as $key => $value) {
				$list[$key]['id'] = $value['id'];
				$list[$key]['sort'] = $value['sort'];
				$list[$key]['ser_window'] = $value['ser_window'];
				$departments = pdo_fetch("SELECT * FROM".tablename('bmhospital_reply')." WHERE id='{$value['department_id']}'");
				$list[$key]['department'] = $departments['department'];
			}
		}elseif( $op == 'delete'){
			pdo_delete("bmhospital_group",array('id' => $_GPC['id'] ));
			message("删除成功",referer(),'success');
		}
		include $this->template('group');
	}
	
	public function doWebProject(){
		global $_GPC,$_W;
		load()->func('tpl');
		$op = !empty($_GPC['op'])?$_GPC['op']:'display';
		// 医院  职务  职称
		$hosps=array(
			1=>"兰州普瑞眼科医院",
			2=>"成都普瑞眼科医院",
			3=>"合肥普瑞眼科医院",
			4=>"郑州普瑞眼科医院",
			5=>"昆明普瑞眼科医院",
			6=>"南昌普瑞眼科医院",
			7=>"上海普瑞眼科医院",
			8=>"重庆普瑞眼科医院",
			9=>"武汉普瑞眼科医院",
			10=>"哈尔滨普瑞眼科医院",
			11=>"北京华德医院",
			12=>"山东亮康眼科医院",
			13=>"西安普瑞眼科医院",
			14=>"乌鲁木齐普瑞眼科医院"
		);
		$titles=array(
			1=>"主任医师",
			2=>"副主任医师",
			3=>"主治医师",
			4=>"住院医师"
		);
		$dutys=array(
			1=>"院长",
			2=>"副院长",
			3=>"屈光专科主任",
			4=>"白内障专科主任",
			5=>"眼底病专科主任"
		);
		if ($op == 'post') {
			$classify = pdo_fetchAll("SELECT * FROM".tablename('bmhospital_classify')." WHERE weid='{$_W['weid']}'");
			if (!empty($_GPC['id'])) {
				$item = pdo_fetch("SELECT * FROM".tablename('bmhospital_project')." WHERE id='{$_GPC['id']}'");
			}

			$data = array(
				'weid'            => $_W['weid'],
				'sort'            => $_GPC['sort'],
				'ser_name'        => $_GPC['ser_name'],
				'srvtime'         => $_GPC['srvtime'],
				'classify_id'     => $_GPC['classify_id'],
				'kbox'            => $_GPC['kbox'],
				'price'           => $_GPC['price'],
				'classify_picurl' => $_GPC['classify_picurl'],
				'ishow'           => intval($_GPC['ishow']),
				'project_info'    => htmlspecialchars_decode($_GPC['project_info']),
				'total'           => intval($_GPC['total']),
				'content'		  =>$_GPC['content'],
				'titles'		  =>$_GPC['titles'],
				'duty'		      =>$_GPC['duty'],
				'hosp_id'		  =>$_GPC['hosp_id'],
			);
			if ($_W['ispost']) {
				if (empty($_GPC['id'])) {
					pdo_insert("bmhospital_project",$data);
				}else{
					pdo_update("bmhospital_project",$data,array('id' => $_GPC['id']));
				}
				message("更新成功",referer(),'success');
			}
		}elseif ($op == 'display') {
			$projects = pdo_fetchAll("SELECT * FROM".tablename('bmhospital_project')." WHERE weid='{$_W['weid']}'");
			//print_r($_W['weid']);exit;
			$list = array();
			foreach ($projects as $key => $value) {
				$list[$key]['id'] = $value['id'];
				$list[$key]['sort'] = $value['sort'];
				$list[$key]['ser_name'] = $value['ser_name'];
				$list[$key]['hosp_id'] = $value['hosp_id'];
				$list[$key]['titles'] = $value['titles'];
				$list[$key]['duty'] = $value['duty'];
				$classify = pdo_fetch("SELECT * FROM".tablename('bmhospital_classify')." WHERE id='{$value['classify_id']}'");
				$list[$key]['classify_name'] = $classify['ser_window'];
				$list[$key]['kbox'] = $value['kbox'];
				$list[$key]['srvtime'] = $value['srvtime'];
			}
			
		}elseif ($op == 'delete'){
			pdo_delete("bmhospital_project",array('id' => $_GPC['id']));
			message(" 删除成功",referer(),'success');
		}

		include $this->template('project');
	}

	public function doWebOrders(){
		global $_GPC,$_W;
		load()->func('tpl');
		$orders = pdo_fetchAll("SELECT * FROM".tablename('bmhospital_reservation')." order by id desc");
		$total = count($orders);
		if ($_GPC['op'] == 'delete') {
			pdo_delete("bmhospital_reservation",array('id' => $_GPC['id']));
			message('删除成功',referer(),'success');
		}
		include $this->template('orders');
	}
	public function doWebDetail(){
		global $_GPC,$_W;
		load()->func('tpl');
		$userinfo = pdo_fetch("SELECT * FROM".tablename('bmhospital_reservation')."WHERE id='{$_GPC['id']}'");
		if ($_W['ispost']) {
			$data = array(
				'remate' => intval($_GPC['remate']),
				'kfinfo' => $_GPC['kfinfo'],
			);
			pdo_update('bmhospital_reservation',$data,array('id' => $_GPC['id']));
			message('修改成功',referer(),'success');
		}
		include $this->template('detail');
	}
	public function doMobileIndex(){
		global $_W,$_GPC;
		$id = intval($_GPC['id']);
		$posters = pdo_fetch("SELECT * FROM".tablename('bmhospital_poster')."WHERE weid='{$_W['weid']}' AND department_id='{$id}'");
		$thumbs = unserialize($posters['thumb']);
		$item = pdo_fetch("SELECT * FROM ".tablename('bmhospital_slide')." WHERE weid = :weid", array(':weid' => $_W['weid']));	
		$hslists=unserialize($item['hs_pic']);	
		$title = pdo_fetchcolumn("SELECT department FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}' and id={$id}");
		$reply = pdo_fetch("SELECT * FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}' and id={$id}");
		//print_r($reply);exit;
		$info_picurl = pdo_fetchcolumn("SELECT info_picurl FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}' and id={$id}");
		include $this->template('index');
	}
	public function doMobileDepartment(){
		global $_GPC,$_W;
		$id = intval($_GPC['id']);
		$item = pdo_fetch("SELECT * FROM ".tablename('bmhospital_slide')." WHERE weid = :weid", array(':weid' => $_W['weid']));	
		$hslists=unserialize($item['hs_pic']);			
		$detail = pdo_fetch("SELECT * FROM".tablename('bmhospital_reply')."WHERE id='{$_GPC['id']}'");
		$info_picurl = pdo_fetchcolumn("SELECT info_picurl FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}' and id={$id}");		
		include $this->template('department');
	}
	public function doMobileClassify(){
		global $_GPC,$_W;
		$title = '科室介绍';
		$classify = pdo_fetchAll("SELECT * FROM ".tablename('bmhospital_classify')." WHERE weid='{$_W['weid']}' AND department_id='{$_GPC['id']}' order by sort desc");
		//print_r($classify);exit;
		$item = pdo_fetch("SELECT * FROM ".tablename('bmhospital_slide')." WHERE weid = :weid", array(':weid' => $_W['weid']));	
		$hslists=unserialize($item['hs_pic']);		
		$info_picurl = pdo_fetchcolumn("SELECT info_picurl FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}' and id={$id}");		
		include $this->template('classify');
	}
	public function doMobileGroup(){
		global $_GPC,$_W;
		$id = intval($_GPC['id']);
		$title = '体检服务介绍';
		$classify = pdo_fetchAll("SELECT * FROM ".tablename('bmhospital_group')." WHERE weid='{$_W['weid']}' AND department_id='{$_GPC['id']}' order by sort desc");
		$item = pdo_fetch("SELECT * FROM ".tablename('bmhospital_slide')." WHERE weid = :weid", array(':weid' => $_W['weid']));	
		$hslists=unserialize($item['hs_pic']);		
		$info_picurl = pdo_fetchcolumn("SELECT info_picurl FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}' and id={$id}");		
		include $this->template('group');
	}
	public function doMobileprofession(){
		global $_GPC,$_W;
		$title = '专家介绍';
		$id = intval($_GPC['id']);
		$sql="SELECT a.* FROM ".tablename('bmhospital_project')." a inner join ".tablename('bmhospital_classify'). " b on a.classify_id=b.id WHERE b.weid='{$_W['weid']}' AND b.department_id='{$_GPC['id']}' order by a.sort desc";
		$classify = pdo_fetchAll($sql);
		$item = pdo_fetch("SELECT * FROM ".tablename('bmhospital_slide')." WHERE weid = :weid", array(':weid' => $_W['weid']));	
		$hslists=unserialize($item['hs_pic']);			
		$info_picurl = pdo_fetchcolumn("SELECT info_picurl FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}' and id={$id}");
		//print_r('<pre>');print_r($classify);exit;
		include $this->template('profession');
	}	
	public function doMobileCdetail(){
		global $_GPC,$_W;
		$id = intval($_GPC['id']);
		$classify = pdo_fetch("SELECT * FROM".tablename('bmhospital_classify')."WHERE id='{$id}'");
		$projects = pdo_fetchAll("SELECT * FROM".tablename('bmhospital_project')."WHERE classify_id='{$id}' order by sort desc");
		//print_r($projects);exit;
		$item = pdo_fetch("SELECT * FROM ".tablename('bmhospital_slide')." WHERE weid = :weid", array(':weid' => $_W['weid']));	
		$hslists=unserialize($item['hs_pic']);		
		$info_picurl = pdo_fetchcolumn("SELECT info_picurl FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}'");		
		include $this->template('cdetail');
	}
	public function doMobileGroup_detail(){
		global $_GPC,$_W;
		$id = intval($_GPC['id']);
		$classify = pdo_fetch("SELECT * FROM".tablename('bmhospital_group')."WHERE id='{$id}'");
		//print_r($projects);exit;
		$item = pdo_fetch("SELECT * FROM ".tablename('bmhospital_slide')." WHERE weid = :weid", array(':weid' => $_W['weid']));	
		$hslists=unserialize($item['hs_pic']);		
		$info_picurl = pdo_fetchcolumn("SELECT info_picurl FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}'");		
		include $this->template('group_detail');
	}
	public function doMobileReservation(){
		global $_GPC,$_W;
		$id = intval($_GPC['id']);
		$sql="SELECT a.*,b.ser_window,b.id as classify_id FROM ".tablename('bmhospital_project')." a inner join ".tablename('bmhospital_classify'). " b on a.classify_id=b.id WHERE a.weid='{$_W['weid']}' AND a.id='{$_GPC['id']}'";		
		$project = pdo_fetch($sql);		
		//$project = pdo_fetch("SELECT * FROM".tablename('bmhospital_project')."WHERE id='{$id}'");
		//print_r('<pre>');print_r($project);exit;
		$item = pdo_fetch("SELECT * FROM ".tablename('bmhospital_slide')." WHERE weid = :weid", array(':weid' => $_W['weid']));	
		$hslists=unserialize($item['hs_pic']);			
		$info_picurl = pdo_fetchcolumn("SELECT info_picurl FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}'");		
		include $this->template('reservation');
	}
	public function doMobileyysave(){
		global $_GPC,$_W;	
		if ($_W['ispost']) {

			$data = array(
				'truename'   => $_GPC['username'],
				'mobile'     => $_GPC['phone'],
				'age'        => $_GPC['age'],
				'restime'     => strtotime($_GPC['date']),
				'createtime' => time(),
			);
			pdo_insert('bmhospital_reservation',$data);
			echo "<script>location.replace(document.referrer);alert('预约成功')</script>";
		}
	}
	public function doMobileMylist(){
		global $_GPC,$_W;
		$item = pdo_fetch("SELECT * FROM ".tablename('bmhospital_slide')." WHERE weid = :weid", array(':weid' => $_W['weid']));	
		$hslists=unserialize($item['hs_pic']);			
		$rebs = pdo_fetchAll("SELECT * FROM".tablename('bmhospital_reservation')."WHERE openid='{$_W['fans']['from_user']}'");
		if ($_GPC['op'] == 'delete') {
			pdo_delete("bmhospital_reservation",array('id' => $_GPC['id']));
			message('删除成功',referer(),'success');
		}
		$info_picurl = pdo_fetchcolumn("SELECT info_picurl FROM".tablename('bmhospital_reply')."WHERE weid='{$_W['weid']}'");		
		include $this->template('mylist');
	}
	public  function  doMobileAjaxdelete()
	{
		global $_GPC;
		$delurl = $_GPC['pic'];
		if(file_delete($delurl))
		{echo 1;}
		else 
		{echo 0;}
	}	
	
	public function doMobileFun1() {
		//这个操作被定义用来呈现 功能封面
	}
	public function doWebRule1() {
		//这个操作被定义用来呈现 规则列表
	}
	public function doWebRule2() {
		//这个操作被定义用来呈现 规则列表
	}
	public function doWebLists() {
		echo 'This is doctor lists';
		//这个操作被定义用来呈现 管理中心导航菜单
	}
	public function doMobileNevindex1() {
		//这个操作被定义用来呈现 微站首页导航图标
	}
	public function doMobileUser1() {
		//这个操作被定义用来呈现 微站个人中心导航
	}
	public function doMobileShortcut1() {
		//这个操作被定义用来呈现 微站快捷功能导航
	}
	
	

}