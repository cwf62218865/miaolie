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
    <title>完善企业信息-第三步</title>
</head>
<body>
<?php  include wl_template('common/header');?>
<div class="resume_content loginn_zj">
    <div class="relative" style="width: 426px;margin: 0 auto">
        <div class="resume_step">
            <div class="resume_stepbox">
            <span class="resume_step_circular">
                <div class="resume_step_circular1 resume_step_ready">
                    <span>
                        <svg class="icon icon_right" aria-hidden="true">
                            <use xlink:href="#icon-zhengque1"></use>
                        </svg>
                    </span>
                </div>
            </span>
                <p>企业注册</p>
            </div>
            <div class="resume_stepbox">
            <span class="resume_step_circular">
                <div class="resume_step_circular1 resume_step_ready">
                    <span>
                        <svg class="icon icon_right" aria-hidden="true">
                            <use xlink:href="#icon-zhengque1"></use>
                        </svg>
                    </span>
                </div>
            </span>
                <p>认证信息</p>
            </div>
            <div class="resume_stepbox">
            <span class="resume_step_circular">
                <div class="resume_step_circular1 resume_step_ready"><span>3</span></div>
            </span>
                <p>完善信息</p>
            </div>
        </div>

        <div class="resume_step_progress">
            <i class="resume_step_ready" style="width: 360px;"></i>
        </div>

        <div class="register_msg" style="margin-bottom: 196px">
            <div class="reg3_zj">
                <div class="title_step2" style="margin-bottom: 20px;">完善信息</div>

                <div class=" relative general-select left_align">
                    <label class="general-input relative general-select">
                        <input type="text" readonly  id="company_property" placeholder="公司性质" value="<?php  echo $company['nature']?>">
                        <svg class="icon inputicon" aria-hidden="true">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                        </svg>
                    </label>
                    <div class="options" style="height: 0px;">
                        <div class="select-option"><span>国营企业</span></div>
                        <div class="select-option"><span>民营企业</span></div>
                        <div class="select-option"><span>私有企业</span> </div>
                        <div class="select-option"><span>创业型</span> </div>
                    </div>
                </div>
                <div class=" relative general-select right_align">
                    <label class="general-input relative general-select">
                        <input type="text" readonly id="company_scale"  placeholder="公司规模" value="<?php  echo $company['number']?>">
                        <svg class="icon inputicon" aria-hidden="true">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                        </svg>
                    </label>
                    <div class="options" style="height: 0px;">
                        <div class="select-option"><span>20人以下</span></div>
                        <div class="select-option"><span>20-50人</span></div>
                        <div class="select-option"><span>50-200人</span> </div>
                        <div class="select-option"><span>200-500人</span> </div>
                        <div class="select-option"><span>500-1000人</span> </div>
                        <div class="select-option"><span>1000人以上</span> </div>
                    </div>
                </div>
                <div class="chec_tip1">
                    <div class="left_align"></div>
                    <div class="right_align" style="width: 160px;"></div>
                </div>

                <div class=" relative general-select left_align">
                    <label class="general-input relative general-select">
                        <input type="text" readonly id="company_industry" placeholder="所处行业" value="<?php  echo $company['industry']?>">
                        <svg class="icon inputicon" aria-hidden="true">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                        </svg>
                    </label>
                    <div class="options hangye" style="height: 0px;">
                        <div class="hangye_con">
                        <div class="select-option"><span>IT互联网</span></div>
                        <div class="select-option"><span>物流运输</span></div>
                        <div class="select-option"><span>制造加工</span> </div>
                        <div class="select-option"><span>房地产</span> </div>
                        <div class="select-option"><span>教育培训</span> </div>
                        <div class="select-option"><span>医疗医药</span> </div>
                        <div class="select-option"><span>能源化工</span></div>
                        <div class="select-option"><span>餐饮百货</span></div>
                        <div class="select-option"><span>通信</span> </div>
                        <div class="select-option"><span>广告媒体</span> </div>
                        <div class="select-option"><span>旅游</span> </div>
                        <div class="select-option"><span>农林牧渔</span> </div>
                        <div class="select-option"><span>人力资源</span> </div>
                        <div class="select-option zjwidth_d1"><span>金融投资证券</span> </div>
                        <div class="select-option"><span>其他</span> </div>
                        </div>
                    </div>
                </div>
                <div class=" relative general-select right_align">
                    <label class="general-input relative general-select">
                        <input type="text" readonly id="company_city"  placeholder="所处地区" value="<?php  echo $company['district']?>">
                        <svg class="icon inputicon" aria-hidden="true">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                        </svg>
                    </label>
                    <div class="options"  style="height: 0px;">
                        <div id="city" style="height: 185px;overflow-y: auto;overflow-x: hidden">

                        </div>
                    </div>
                </div>
                <div class="chec_tip1">
                    <div class="left_align"></div>
                    <div class="right_align" style="width: 160px;"></div>
                </div>
                <label class="general-input" style="width: 360px;">
                    <input type="text" style="width: 320px" id="slogan" placeholder="请输入公司slogan(25字以内)" maxlength="25" value="<?php  echo $company['slogan']?>">
                </label>
                <div class="chec_tip1">
                    <div class="left_align"></div>
                </div>
                <div class="wrap zjfulibq">
                    <span class="zjbq">请选择5个以内福利标签</span>
                    <div class="zjbiaoqian">
                        <input type="text" id="zjtianjiainput" maxlength="5" placeholder="输入5字以内标签">
                        <div class="zjtianjia" id="zjtianjia">添加</div>
                    </div>
                </div>

                <div class="zjbiaoqian_wrap">
                    <span class="zjflbq zjwidth2 bqselect">五险</span>
                    <span class="zjflbq zjwidth5">住房公积金</span>
                    <span class="zjflbq zjwidth4">带薪年假</span>
                    <span class="zjflbq zjwidth4">绩效奖金</span>
                    <span class="zjflbq zjwidth4">内部培训</span>
                    <span class="zjflbq zjwidth3">年终奖</span>
                    <span class="zjflbq zjwidth4">晋升平台</span>
                    <span class="zjflbq zjwidth4">有偿加班</span>
                    <span class="zjflbq zjwidth4">股权激励</span>
                    <span class="zjflbq zjwidth4">补贴丰厚</span>
                    <div class="chec_tip1">
                        <div class="left_align"></div>
                    </div>
                </div>


                    <span class="public_bigbtn bg1aa wrap" id="upload_laststep">马上发布简历</span>
            </div>

        </div>
    </div>


</div>


</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/area.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/company_reg3.js" rel="script"></script>
<script>
$(document).ready(function(){


    $("#upload_laststep").on("click",function(){
        var company_property=$("#company_property").val();//公司性质
        var company_scale=$("#company_scale").val();//公司规模
        var company_industry=$("#company_industry").val();//所处行业
        var company_city=$("#company_city").val();//所处地区
        var slogan=$("#slogan").val();//slogan
        //福利标签
        var welfare="";
        var welfarespan=$(".bqselect");
        welfarespan.each(function(){
            welfare+=$(this).html()+",";
        });


        var property_input=$("#company_property").closest(".left_align");
        var scale_input=$("#company_scale").closest(".right_align");
        var industry_input=$("#company_industry").closest(".left_align");
        var city_input=$("#company_city").closest(".right_align");
        var slogan_input=$("#slogan").closest(".general-input");


        if($.trim(company_property)==""){
            $("#company_property").closest(".general-input").css("border-color","#e23d46");
            property_input.nextAll(".chec_tip1").eq(0).find(".left_align").html(tipmsg("error","请选择公司性质"))
            return;
        }

        if($.trim(company_scale)==""){
            $("#company_scale").closest(".general-input").css("border-color","#e23d46");
            scale_input.nextAll(".chec_tip1").eq(0).find(".right_align").html(tipmsg("error","请选择公司规模"))
            return;
        }

        if($.trim(company_industry)==""){
            $("#company_industry").closest(".general-input").css("border-color","#e23d46");
            industry_input.nextAll(".chec_tip1").eq(0).find(".left_align").html(tipmsg("error","请选择所处行业"))
            return;
        }

        if($.trim(company_city)==""){
            $("#company_city").closest(".general-input").css("border-color","#e23d46");
            city_input.nextAll(".chec_tip1").eq(0).find(".right_align").html(tipmsg("error","请选择所处地区"))
            return;
        }


        if($.trim(slogan)==""){
            $("#slogan").closest(".general-input").css("border-color","#e23d46");
            slogan_input.nextAll(".chec_tip1").eq(0).find(".left_align").html(tipmsg("error","slogan不能为空"))
            return;
        }


        if(welfare==""){
            $(".zjbiaoqian_wrap").find(".chec_tip1  .left_align").html(tipmsg("error","请至少选择一个福利标签"))
            return;
        }

        $.ajax({
            url:"<?php  echo app_url('member/company_register/step3_save')?>",
            type:"post",
            data:{
                company_property:company_property,
                company_scale:company_scale,
                company_industry:company_industry,
                company_city:company_city,
                slogan:slogan,
                welfare:welfare
            },
            success:function(data){
                if(data){
                    var data=JSON.parse(data);
                    if(data.status==1){
                        window.location.href=data.content;
                    }
                }

            }
        })
    })
})
</script>
</html>