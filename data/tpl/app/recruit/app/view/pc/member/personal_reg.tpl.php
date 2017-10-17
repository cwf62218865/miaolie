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
    <title>完善企业信息-手机号</title>
</head>
<body>
<?php  include wl_template('common/header');?>
<div class="resume_content loginn_zj">
    <div class="relative" style="width: 426px;margin: 0 auto">
        <div class="register_msg">
            <div class="msg_zj">
                    <div class="title_zj font_zj1" style="font-size: 16px">用户注册</div>
                    <label class="general-input detail_zj" >
                        <input type="text" placeholder="请输入手机号码" id="mobie" maxlength="16">
                    </label>
                    <div class="chec_tip"></div>
                    <label class="general-input chema left_align">
                        <input type="text" placeholder="请输入验证码" id="identify_code" onkeyup="value=value.replace(/[^\d]/g,'')">
                    </label>
                    <span class="code right_align">获取验证码</span>
                    <div class="chec_tip"></div>
                    <label class="general-input password">
                        <input type="password" placeholder="请输入6-15位密码" id="password" maxlength="15">
                    </label>
                    <div class="chec_tip"></div>
                    <span class="public_bigbtn bg1aa wrap" id="reg_one">提交</span>

                <div class="zhucexieyi">注册即代表你已同意<a href="" class="color">「秒猎用户协议」</a></div>
            </div>
            <div class="foot_btns">
                <div class="con">
                <a class="icons">
                    <svg class="icon" aria-hidden="true" style="color: #ffffff">
                        <use xlink:href="#icon-qq"></use>
                    </svg>
                </a>
                <a class="icons left">
                    <svg class="icon" aria-hidden="true" style="color: #ffffff">
                        <use xlink:href="#icon-weixin"></use>
                    </svg>
                </a>
                <a class="icons left">
                    <svg class="icon" aria-hidden="true" style="color: #ffffff">
                        <use xlink:href="#icon-weibo"></use>
                    </svg>
                </a>
                <a class="icons left">
                    <svg class="icon" aria-hidden="true" style="color: #ffffff">
                        <use xlink:href="#icon-baidu"></use>
                    </svg>
                </a>
                    <div class="register font_zj1">
                        已有账号：<a href="<?php  echo app_url('member/login')?>"><span class="color">立即登录</span>
                        <svg class="icon" aria-hidden="true" style="color: #ffffff;">
                            <use xlink:href="#icon-youjiantou"></use>
                        </svg></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</div>


</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script>
    $(document).ready(function(){
        var telphone_reg=/^1[3|5|7|8][0-9]\d{8}$/;
        $(".general-input input").focus(function(){
            var _this=$(this);
            if(_this.closest(".general-input").css("borderColor")=="rgb(226, 61, 70)"){
                _this.closest(".general-input").nextAll(".chec_tip").html("");
            }
        });
        $(".general-input #mobie").on("input",function(){
            var _this=$(this);
            var mobie=$("#mobie").val();
            if(telphone_reg.test(mobie)){
                $(".msg_zj .code").addClass("click");
            }else{
                $(".msg_zj .code").removeClass("click");
            }
            _this.closest(".general-input").nextAll(".chec_tip").html("");
        });

        $("body").on("click",".msg_zj .click",function(){
            var time=60;
            $(".msg_zj .code").html(time+"s后重新获取");
            $(".msg_zj .click").removeClass("click");
            var timer=setInterval(function(){
                time--;
                $(".msg_zj .code").html(time+"s后重新获取");
                if(time==0){
                    clearInterval(timer);
                    $(".msg_zj .code").addClass("click").html("获取验证码");
                }
            },1000)
            var mobie=$("#mobie").val();
            $.ajax({
                url:"<?php  echo app_url('member/person_register/send_code')?>",
                type:"post",
                data:{
                    mobie:mobie
                },
                success:function(data){
                    var data = JSON.parse(data);
                    console.log(data);
                    if(data.status==1){
                        console.log(1);
                    }else{
                        alert(data.content);
                    }
                }
            })
        })

        var mobie_input=$("#mobie").closest(".general-input");
        var code_input=$("#identify_code").closest(".general-input");
        var password_input=$("#password").closest(".general-input");

        $(".msg_zj .code").click(function () {
            var mobie=$("#mobie").val();

            if($.trim(mobie)==""){
                mobie_input.css("border-color","#e23d46");
                mobie_input.next().html(tipmsg("error","请输入手机号码"));
                return false;
            }
            else if(!(telphone_reg.test(mobie))){
                mobie_input.next().html(tipmsg("error","请输入正确的手机号码"));
                mobie_input.css("border-color","#e23d46");
                return false;
            }else{
                $(".chec_tip .left_align").html("");
            }
        });

        $("#reg_one").on("click",function(){

            var mobie=$("#mobie").val();
            var identify_code=$("#identify_code").val();
            var password=$("#password").val();


            if($.trim(mobie)==""){
                mobie_input.css("border-color","#e23d46");
                mobie_input.next().html(tipmsg("error","请输入手机号码"));
                return false;
            }
            else if(!(telphone_reg.test(mobie))){
                mobie_input.next().html(tipmsg("error","请输入正确的手机号码"));
                mobie_input.css("border-color","#e23d46");
                return false;
            }else{
                $(".chec_tip .left_align").html("");
            }
            if($.trim(identify_code)==""){
                code_input.css("border-color","#e23d46");
                code_input.nextAll(".chec_tip").eq(0).html(tipmsg("error","请输入验证码"));
                return false;
            }
            else if(identify_code.length>4){
                code_input.nextAll(".chec_tip").eq(0).html(tipmsg("error","请输入4位验证码"));
                code_input.css("border-color","#e23d46");
                return false;
            }else{
                $(".chec_tip .left_align").html("");
            }

            if($.trim(password)==""){
                password_input.css("border-color","#e23d46");
                password_input.next().html(tipmsg("error","请输入密码"));
                return false;
            }
            else if(password.length<6){
                password_input.next().html(tipmsg("error","请输入6-15位密码"));
                password_input.css("border-color","#e23d46");
                return false;
            }else{
                $(".chec_tip .left_align").html("");
            }
            $.ajax({
                url:"<?php  echo app_url('member/person_register/register')?>",
                type:"post",
                data:{
                    mobie:mobie,
                    identify_code:identify_code,
                    password:password
                },
                success:function(data){
                    var data = JSON.parse(data);
                    if(data.status==1){
//                        console.log(data.content);
                        window.location.href="<?php  echo app_url('member/person_register/feelings')?>";
                    }else{
                        console.log(1);
                        console.log(data.content);
                    }
                }
            })
        })
    })
</script>
</html>