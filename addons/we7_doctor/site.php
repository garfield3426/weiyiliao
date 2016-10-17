<?php
/**
 * 医生模块微站定义
 *
 * @author Garfield
 * @url http://bbs.we7.cc/
 */
defined('IN_IA') or exit('Access Denied');

class We7_doctorModuleSite extends WeModuleSite {

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