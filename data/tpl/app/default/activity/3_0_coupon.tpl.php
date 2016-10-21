<?php defined('IN_IA') or exit('Access Denied');?><?php  define('MUI', true);?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php  if($do == 'display') { ?>
<div class="mui-content activity-exchange">
	<div class="mui-table nav">
		<a href="<?php  echo url('activity/coupon')?>" class="mui-table-cell mui-active">
			卡券
		</a>
		<a href="<?php  echo url('activity/goods')?>" class="mui-table-cell">
			实物
		</a>
	</div>
	<div class="discount-voucher mui-content-padded">
		<?php  if(!empty($exchange_lists)) { ?>
		<?php  if(is_array($exchange_lists)) { foreach($exchange_lists as $item) { ?>
		<?php  echo tpl_app_coupon_item($item);?>
		<?php  } } ?>
		<?php  } else { ?>
		<div class="mui-input-row mui-text-center">暂无可兑换卡券</div>
		<?php  } ?>
	</div>
</div>

<?php  } else if($do == 'mine') { ?>
<div class="mui-content pay-select-coupon">
	<div id="voucher" class="mui-control-content mui-active">
		<?php  if(!empty($coupon_records)) { ?>
		<?php  if(is_array($coupon_records)) { foreach($coupon_records as $row) { ?>
		<div class="mui-input-row">
			<?php  if(COUPON_TYPE == WECHAT_COUPON) { ?>
			<a href="javascript:;" class="js-coupon-info" data-ajax=<?php  echo $row['extra_ajax'];?> data-id="<?php  echo $row['id'];?>" data-code="<?php  echo $row['code'];?>">
			<?php  } else { ?>
			<a href="<?php  echo url('activity/coupon/use', array('recid' => $row['recid']))?>">
			<?php  } ?>
			<label>
				<div class="coupon-panel">
					<div class="mui-row">
						<div class="mui-col-xs-4 mui-text-center">
							<div class="coupon-panel-left">
								<?php  echo $row['icon'];?>
							</div>
						</div>
						<div class="mui-col-xs-8">
							<div class="store-title mui-ellipsis mui-mb10"><?php  echo $row['title'];?></div>
							<div class="date"><?php  echo $row['extra_date_info'];?></div>
							<span class="use-token" data-id="<?php  echo $row['id'];?>">
								<span class="mui-block icon-use-token">⇌</span>
								<span class="mui-block">使用</span>
							</span>
						</div>
					</div>
				</div>
			</label>
			</a>
			<ol class="coupon-rules" style="display:none;">
				<?php  echo $row['description'];?>
			</ol>
			<div class="scan-rules js-scan-rules"><?php  echo $type_names[$row['type']]['0'];?>使用规则<span class="fa fa-angle-up"></span></div>
		</div>
		<?php  } } ?>
		<?php  } else { ?>
		<div class="mui-input-row">
			<div class="mui-input-row mui-text-center">
				<div>暂无卡券
					<?php  if($exchange_enable['exchange_enable'] == 1) { ?>
					,<a href="<?php  echo url('activity/coupon')?>">点击兑换</a>
					<?php  } ?>
				</div>
			</div>
		</div>
		<?php  } ?>
	</div>
</div>
<script> 
<?php  if(COUPON_TYPE == WECHAT_COUPON) { ?>
$(document).on('click', '.js-coupon-info', function() {
	id = $(this).data('id');
	code = $(this).data('code');
	href = $(this).data('ajax');
	if (!code) {
		$.post(href, {'id' : id}, function(data){
			var data = $.parseJSON(data);
			if(data.message.errno < 0) {
				util.toast(data.message.error, '', 'error');
			} else {
				wx.ready(function(){
					wx.addCard({
						cardList:[
							{
								cardId : data.message.message.card_id,
								cardExt : data.message.message.card_ext
							}
						],
						success: function (res) {
						location.href = data.redirect;
						}
					});
				});
			}
			return false;
		});
	} else {
		$.post(href, {'id' : id, 'code' : code}, function(data) {
		var data = $.parseJSON(data);
		if(data.message.errno < 0) {
			u.message(data.message.error, '', 'error');
		} else {
			wx.ready(function(){
				wx.openCard({
					cardList:[
						{
							cardId : data.message.message.card_id,
							code : data.message.message.code
						}
					],
				});
			});
		}
		return false;
	});
	}
})
<?php  } ?>
	$(document).on('click', '.js-use-coupon-now', function() {
		code = $(this).data('code');
		url = "<?php  echo url('activity/coupon/use')?>";
		$.post(url, {code: code}, function(data) {
			data = $.parseJSON(data);
			$('.pay-select-coupon img').attr('src', data.thumb);
			$('.pay-select-coupon .js-use-code').html(data.code)
			qrcodeShow(data.code);
		});
	});
	var qrcodeShow = function(code) {
		require(['jquery.qrcode'], function(){
			url = "<?php  echo url('entry', array('i' => $_W['uniacid'],'do' => 'home', 'm' => 'paycenter'));?>";
			$('.js-qrcode-show').show();
			$('.qrcode-block').html('').qrcode({
				render: 'canvas',
				width: 150,
				height: 150,
				text: url
			});
		})
	};
	$(document).on('click', '.js-scan-rules', function() {
		$(this).prev().toggle();
		$(this).find('span').toggleClass('fa-angle-up');
		$(this).find('span').toggleClass('fa-angle-down');
	});
</script>
<?php  } ?>
<?php  if($do == 'use') { ?>
	<div class="mui-content activity-wx-card" style="background-color:<?php  echo $coupon_info['color'];?>">
		<div class="wx-card-panel">
			<img src="<?php  echo tomedia($coupon_info['logo_url'])?>" alt="" class="mui-img-circle"/>
			<div class="mui-text-muted mui-text-center"><?php  echo $_W['account']['name'];?></div>
			<div class="title mui-text-center"><?php  echo $coupon_info['title'];?></div>
			<div class="btn-used mui-text-center">
				<?php  if($starttime > strtotime(date('Ymd'))) { ?>
				<a href="javascript:;" class="mui-btn mui-btn-block mui-disabled" style="background-color:<?php  echo $coupon_info['color'];?>;color:#fff;border-color:<?php  echo $coupon_info['color'];?>">未到可用时间</a>
				<?php  } else { ?>
				<a href="<?php  echo url('activity/coupon/qrcode', array('couponid' => $coupon_info['id'], 'recid' => $recid))?>" class="mui-btn mui-btn-block" style="background-color:<?php  echo $coupon_info['color'];?>;color:#fff;border-color:<?php  echo $coupon_info['color'];?>">立即使用</a>
				<?php  } ?>
			</div>
			<div class="sub-title mui-text-center"><?php  echo $coupon_info['sub_title'];?></div>
			<div class="date mui-text-center"><?php  echo $coupon_info['exp_date'];?></div>
			<ul class="mui-table-view mui-table-view-chevron">
				<li class="mui-table-view-cell">
					<a href="<?php  echo url('activity/coupon/detail', array('couponid' => $coupon_info['id'], 'recid' => $recid))?>" class="mui-navigate-right"><?php  if($coupon_info['type'] == '1') { ?>折扣<?php  } else { ?>代金<?php  } ?>券详情</a>
				</li>
				<li class="mui-table-view-cell">
				<a href="<?php  echo url('entry', array('m' => 'paycenter', 'do' => 'consume', 'encrypt_code' => $coupon_record['code'], 'card_id' => $coupon_info['id'], 'openid' => $_W['openid'], 'source' => $coupon_info['source']))?>" class="mui-navigate-right">立即使用</a>
				</li>
				<li class="mui-table-view-cell">
					<a href="<?php  echo url('mc/home')?>" class="mui-navigate-right">
						个人中心
						<span class="mui-pull-right">点击进入</span>
					</a>
				</li>
			</ul>
		</div>
	</div>
<?php  } ?>
<?php  if($do == 'detail') { ?>
	<div class="mui-content">
		<div class="mui-pl10 mui-mt15"><?php  if($coupon_info['type'] == '1') { ?>折扣<?php  } else { ?>代金<?php  } ?>券详情</div>
		<hr />
		<div class="mui-content-padded">
			<dl class="mui-dl-horizontal">
				<dt>优惠说明</dt>
				<dd><?php  echo $coupon_info['discount_info'];?></dd>
				<dt>有效日期</dt>
				<dd><?php  echo $coupon_info['detail_date_info'];?></dd>
				<dt>使用须知</dt>
				<dd><?php  echo $coupon_info['description'];?></dd>
			</dl>
		</div>
	</div>
<?php  } ?>
<?php  if($do == 'qrcode') { ?>
	<div class="mui-content activity-wx-card-detail" style="background-color:<?php  echo $coupon_info['color']?>">
		<div class="mui-card mui-text-center">
			<a href="<?php  echo url('activity/coupon/use', array('couponid' => $coupon_info['couponid'], 'recid' => $recid))?>" class="cancel">取消</a>
			<div class="mui-text-muted"><?php  echo $_W['account']['name'];?></div>
			<div class="title"><?php  echo $coupon_info['title'];?></div>
			<div class="hr"></div>
			<div class="img">
				<div class="qrcode-block" data-url="<?php  echo murl('entry', array('m' => 'paycenter', 'do' => 'cardconsume', 'op' => 'consume', 'code' => $coupon_info['code']), true, true);?>" style="margin-top:20px"></div>
			</div>
			<div class="bar-code"><?php  echo $coupon_info['code'];?></div>
			<div class="mui-text-muted">请在付款时出示此券</div>
		</div>
	</div>
	<script>
	require(['jquery.qrcode'], function(){
		var url = $('.qrcode-block').data('url');
		$('.qrcode-block').html('').qrcode({
			render: 'canvas',
			width: 150,
			height: 150,
			text: url
		});
	})
	</script>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>
