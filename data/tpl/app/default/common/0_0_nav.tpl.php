<?php defined('IN_IA') or exit('Access Denied');?><body <?php  if($_GPC["a"]== 'huli') { ?> class="hl-body" <?php  } ?>>
<header>
    <div class="lt">
        <div class="logo"></div>
        <div class="txt">
            <p>您的专业眼科医生 <br/>邀请朋友加入得10元</p>
        </div>
    </div>
    <div class="rt">
        <p><i></i>购买后获取档案号</p>
        <p><i></i>爱眼大使</p>
    </div>

</header>
<section class="hd-nav">
    <ul>
        <li <?php  if($_GPC["a"]== 'hospital') { ?> class="active" <?php  } ?>>
            <a href="<?php  echo $_W['siteroot'];?>app/index.php?c=home&a=hospital">
                <i class="yy "></i>
                <span class="">我的医院</span>
            </a>
        </li>
        <li <?php  if($_GPC["a"]== 'doc') { ?> class="active" <?php  } ?>>
            <a href="<?php  echo $_W['siteroot'];?>app/index.php?c=home&a=doc">
                <i class="ys"></i>
                <span class="">我的医生</span>
            </a>
        </li>
        <li <?php  if($_GPC["a"]== 'huli') { ?> class="active" <?php  } ?>>
            <a href="<?php  echo $_W['siteroot'];?>app/index.php?c=home&a=huli">
                <i class="hl"></i>
                <span class="">我的护理</span>
            </a>
        </li>
        <li  class='aside <?php  if($_GPC["a"]== "welfare") { ?> active  <?php  } ?>'>
            <a href="<?php  echo $_W['siteroot'];?>app/index.php?c=home&a=welfare">
                <i class="fl"></i>
                <span class="">我的福利</span>
            </a>
        </li>
    </ul>
</section>