<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('common/headers', TEMPLATE_INCLUDEPATH)) : (include template('common/headers', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('common/nav', TEMPLATE_INCLUDEPATH)) : (include template('common/nav', TEMPLATE_INCLUDEPATH));?>
<section class="sec-banner"><img src="themes/default/images/banner.jpg" alt=""></section>
<article class="center-container">
    <!--<section class="banner">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="images/adv.jpg" alt=""/></div>
                <div class="swiper-slide"><img src="images/adv.jpg" alt=""/></div>
            </div>
        </div>
    </section>-->

    <section class="items">
        <ul>
            <li>
                <a href="index.php?i=3&c=mc&a=home">
                    <i class="qb"></i>
                    <div class="">我的钱包</div>
                </a>
            </li>
            <li>
                <a href="index.php?i=3&c=entry&do=myorder&m=ewei_shopping">
                    <i class="dd"></i>
                    <div class="">我的订单</div>
                </a>
            </li>
            <li class="side">
                <a href="index.php?i=3&c=entry&do=list&m=ewei_shopping&sort=0&sortb0=desc">
                    <i class="sc"></i>
                    <div class="">护理商城</div>
                </a>
            </li>
            <li>
                <a href="index.php?c=home&a=doc">
                    <i class="ys"></i>
                    <div class="">我的医生</div>
                </a>
            </li>
            <li>
                <a href="index.php?c=home&a=welfare">
                    <i class="fl"></i>
                    <div class="">我的福利</div>
                </a>
            </li>
            <li class="side">
                <a href="index.php?c=home&a=pengyq">
                    <i class="pyq"></i>
                    <div class="">朋友圈</div>
                </a>
            </li>
            <li >
                <a href="#">
                    <i class="xms"></i>
                    <div class="">眼健康小秘书</div>
                </a>
            </li>
            <li >
                <a href="#">
                    <i class="bk"></i>
                    <div class="">眼健康百科</div>
                </a>
            </li>
            <li class="side">
                <a href="#">
                    <i class="sz"></i>
                    <div class="">设置</div>
                </a>
            </li>
        </ul>
    </section>
    <section class="sec-banner packet"><img src="themes/default/images/hb.jpg" alt=""></section>
    <section class="huodong">
        <h1>—— 活动推荐 ——</h1>
        <div class="adv">
            <a href="#">
                <img src="themes/default/images/adv-2.jpg" alt="">
            </a>
            <h2>全飞秒激光治近视，国庆黄金周百人团购会</h2>
            <p>普瑞眼科高端全飞秒，十分钟重获清晰视力。国庆黄金周期间，每天前10名预约患者，较高可享受9000元优惠。</p>
            <p>0元近视治疗，国庆七天不间断！低首付、低利息激光治近视，国庆期间每天限1名，先到先得！</p>
            <p>活动时间：2016年10月1日至7日</p>
            <p>报名条件：近视200度以上，年龄18-40岁之间。</p>
            <div class="detail">
                <a href="#">查看详情</a>
            </div>
        </div>
    </section>
</article>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('common/footers', TEMPLATE_INCLUDEPATH)) : (include template('common/footers', TEMPLATE_INCLUDEPATH));?>
<script>
    $(function(){
        var banner = new Swiper('.banner .swiper-container');
        $('.form-datatime').datetimepicker(
                {
                    minView: "month", //选择日期后，不会再跳转去选择时分秒
                    format: "yyyy-mm-dd", //选择日期后，文本框显示的日期格式
                    language: 'zh-CN', //汉化
                    autoclose:true //选择日期后自动关闭
                }
        );

        $('.form').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    message: 'The username is not valid',
                    validators: {
                        notEmpty: {
                            message: '姓名不能为空'
                        }
                    }
                },
                phone: {
                    message: 'The username is not valid',
                    validators: {
                        notEmpty: {
                            message: '手机号不能为空'
                        },
                        regexp: {/* 只需加此键值对，包含正则表达式，和提示 */
                            regexp: /^((\d3)|(\d{3}\-))?13[0-9]\d{8}|15[89]\d{8}/,
                            message: '手机号格式错误'
                        }
                    }
                }
            }
        });
    })


</script>
</body>
</html>