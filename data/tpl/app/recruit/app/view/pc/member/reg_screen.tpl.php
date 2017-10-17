<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/header.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/control.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/resume.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/register.css" rel="stylesheet">
    <title>个人-企业注册筛选</title>
</head>
<body>

<?php  include wl_template('common/header');?>
<div class="resume_content">

    <div class="screen_content">
        <div class="screen_content_left">
            <div class="screen_title">个人通道</div>
            <div class="screen_title1">最安全的校园招聘平台</div>
            <div class="screen_pic">
                <img src="<?php echo WL_URL_ARES;?>images/student.png">
            </div>
            <div class="screen_btnbox">
                <a href="<?php  echo app_url('member/person_register')?>" class="screen_btn findjob">去找工作</a>
            </div>
        </div>
        <div class="screen_content_right">
            <div class="screen_title">企业通道</div>
            <div class="screen_title1">校园人才都在秒猎网</div>
            <div class="screen_pic">
                <img src="<?php echo WL_URL_ARES;?>images/HR.png">
            </div>
            <div class="screen_btnbox">
                <a href="<?php  echo app_url('member/company_register')?>" class="screen_btn findpersonnel">去搜人才</a>
            </div>
        </div>

        <div class="bottom_login">
            已有账户，<a href="<?php  echo app_url('member/index')?>" class="go_login">直接登录</a>
        </div>
    </div>

</div>


</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
</html>