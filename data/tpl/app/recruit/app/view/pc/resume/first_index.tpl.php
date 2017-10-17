<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/header.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/control.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/resume.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/reguser1.css" rel="stylesheet">
    <title>秒猎网</title>
</head>
<body class="rout">
<?php  include wl_template('common/header');?>
<div class="resume_content routzj">
    <div class="rout_con">
        <div class="icos">
            <a href="<?php  echo $url?>"><img src="<?php echo WL_URL_ARES;?>images/button-ico.png" class="btn_start"/></a>
            <div class="time font_zj1"><span class="num">5</span>s后自动跳转…</div>
        </div>
    </div>

    <img src="<?php echo WL_URL_ARES;?>images/logo_r.png" class="logo_r">
    
</div>


</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script>
    $(document).ready(function () {
        var i=5;
        var timer=setInterval(function () {
           $(".icos .num").html(i--);
            if(i==-1){
                clearInterval(timer);
                window.location.href="<?php  echo $url?>";
//                $.ajax({
//                    url:"",
//                    type:"post",
//                    success:function (data) {
//                        var data = JSON.parse(data);
//                        if(data.status==1){
//                            window.location.href=data.content;
//                        }else {
//                            console.log(data);
//                        }
//                    }
//                })
            }
        },1000)
    })

</script>
</html>