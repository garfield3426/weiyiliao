<?php defined('IN_IA') or exit('Access Denied');?><footer>
    <ul>

        <li <?php  if($_GPC["a"]!= 'hospital' && $_GPC["a"]!= 'doc' && $_GPC["a"]!= 'center') { ?> class="active" <?php  } ?>>
            <a href="<?php  echo $_W['siteroot'];?>app/index.php?c=home&a=home">
                <i class="home"></i>
                <div class="">首页</div>
            </a>
        </li>
        <li <?php  if($_GPC["a"]== 'hospital') { ?> class="active" <?php  } ?>>
            <a href="<?php  echo $_W['siteroot'];?>app/index.php?c=home&a=hospital">
                <i class="yy"></i>
                <div class="">我的医院</div>
            </a>
        </li>
        <li <?php  if($_GPC["a"]== 'doc') { ?> class="active" <?php  } ?>>
            <a href="<?php  echo $_W['siteroot'];?>app/index.php?c=home&a=doc">
                <i class="ys"></i>
                <div class="">我的医生</div>
            </a>
        </li>
        <li <?php  if($_GPC["a"]== 'center') { ?> class="active" <?php  } ?>>
            <a href="<?php  echo $_W['siteroot'];?>app/index.php?c=home&a=center">
                <i class="grzx"></i>
                <div class="">个人中心</div>
            </a>
        </li>
    </ul>
</footer>
<script type="text/javascript" src="http://abc.prykweb.com/js/public/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://abc.prykweb.com/js/public/swiper.min.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/themes/default/js/bootstrap.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/themes/default/js/bootstrapValidator.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/themes/default/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/themes/default/js/bootstrap-datetimepicker.zh-CN.js"></script>