<?php defined('IN_IA') or exit('Access Denied');?><div class="header">
    <div class="width1200 align_center" style="padding-top: 14px;justify-content: space-between">
        <img src="<?php echo WL_URL_ARES;?>images/logo.png"/>
        <div style="height: 52px;line-height: 52px"><span class="city">全国</span><span class="changecity">[切换]</span></div>
        <div class="menu">
            <a href="#">首页</a>
            <a  href="<?php  echo app_url('member/index/search_jobs')?>" <?php  if($_GPC['op']=="search_jobs") { ?>class="menuactive"<?php  } ?>>找工作</a>
            <a  href="#">实习/兼职</a>
            <a  href="#">求职保镖</a>
            <a  href="#">职场信用</a>
            <a  href="#">就业大数据</a>
        </div>
        <div class="login">
            <a href="<?php  echo app_url('member/index')?>">登陆</a>
            <a href="<?php  echo app_url('member/index/register')?>">注册</a>
            <a href="#">企业入口</a>
        </div>
    </div>
</div>