<?php
/**
 * 微营销_摘镜模块微站定义
 *
 * @author Garfield
 * @url http://bbs.we7.cc/
 */
defined('IN_IA') or exit('Access Denied');

class We7_zhaijingModuleSite extends WeModuleSite {

	public function doMobileEnter() {
		//这个操作被定义用来呈现 功能封面
	}
	public function doWebRule() {
		//这个操作被定义用来呈现 规则列表
	}
	public function doWebCenter() {
		//这个操作被定义用来呈现 管理中心导航菜单
	}
	public function doMobileNav() {
		//这个操作被定义用来呈现 微站首页导航图标
	}
	public function doMobileProfile() {
		//这个操作被定义用来呈现 微站个人中心导航
	}
	public function doMobileShortcut() {
		//这个操作被定义用来呈现 微站快捷功能导航
	}

}