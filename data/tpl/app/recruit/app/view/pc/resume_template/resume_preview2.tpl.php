<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/header.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/swiper-3.4.2.min.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/control.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/reguser1.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/resume.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/personal.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/personal1.css" rel="stylesheet">
    <title>简历预览2</title>
    <style>
        .swiper-container {
            width: 910px;
            height: 400px;margin-top: 50px;
        }

        .swiper-wrapper{
            padding-left: 10px;
        }
    </style>
</head>
<body bgcolor="#f4f4f4">
<div class="header" style="background: #ffffff">
    <div class="width1200 align_center" style="padding-top: 14px;justify-content: space-between">
        <div class="resume_btns" style="margin-left: 156px;" id="download_resume">
            <svg class="icon icon_resume" aria-hidden="true">
                <use xlink:href="#icon-xiazaijianli"></use>
            </svg>
            下载简历
        </div>
        <div class="resume_btns" id="print_resume" >
            <svg class="icon icon_resume" aria-hidden="true">
                <use xlink:href="#icon-dayinjianli"></use>
            </svg>
            打印简历
        </div>
        <div class="resume_btns" id="change_modal">
            <svg class="icon icon_resume" aria-hidden="true">
                <use xlink:href="#icon-genghuanmoban"></use>
            </svg>
            更换模板
        </div>
        <div class="resume_btns" id="exit_view">
            <svg class="icon icon_resume" aria-hidden="true">
                <use xlink:href="#icon-tuichuyulan"></use>
            </svg>
            退出预览
        </div>
        <div class="genghuanbeijing">
            <span class="wenzi">更换背景</span>
            <span class="color color1"></span>
            <span class="color color2"></span>
            <span class="color color3"></span>
            <span class="color color4"></span>
        </div>
    </div>
</div>
<!--startprint1-->
<div class="width1200 p1content preview">
    <div class="p1_left">

        <div class="con_list">
            <!--头像-->
            <div class="resume_header">
                <div class="resume_manage_header">
                    <span style="display: inline-block;position: absolute;left: 5px;top: 5px;width: 120px;height: 120px;border-radius: 60px;overflow: hidden">
                        <img  src="<?php  echo $resume['headimgurl']?>">
                    </span>
                </div>
            </div>


            <!--基本信息-->
            <div class="basic_msg width670" id="person_msg">
                <div class="basic_msg_content">
                    <span class="user_name"><?php  echo $resume['fullname']?></span>
                    <div class="font666" style="margin-top: 20px">
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-gerenxinxi"></use>
                        </svg>
                        <span class="basic_msg_contents"><?php  if($resume['sex']==1) { ?>男<?php  } else { ?>女<?php  } ?></span>
                        <span class="basic_msg_contents"><?php  echo date('Y-m-d')-$resume['birthday']?>岁</span>
                        <span class="basic_msg_contents"><?php  echo $resume['political_status']?></span>
                        <span class="basic_msg_contents"><?php  echo $resume['education']?></span>
                        <span class="basic_msg_contents"><?php  echo $resume['work_status']?></span>
                    </div>

                    <div class="font666" style="margin-top: 16px">
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-shouji"></use>
                        </svg>
                        <span class="basic_msg_contents"><?php  echo $resume['telphone']?></span>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-youxiang"></use>
                        </svg>
                        <span class="basic_msg_contents"><?php  echo $resume['email']?></span>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-didian"></use>
                        </svg>
                        <span class="basic_msg_contents"><?php  echo $resume['city']?><?php  echo $resume['city_area']?><?php  echo $resume['address']?></span>
                    </div>
                    <div class="font666" style="margin-top: 16px">
                        <span class="basic_msg_contents1"><?php  echo $resume['arr_education']['school_name']?></span>
                        <span class="basic_msg_contents1"><?php  echo $resume['arr_education']['edu_major']?></span>
                        <span class="basic_msg_contents1"><?php  if($resume['work_time']) { ?><?php  echo $resume['work_time']?>年工作经验<?php  } ?></span>
                        <span class="basic_msg_contents1" style="border-right: none"><?php  echo $resume['origin_place']?>（籍贯）</span>
                    </div>
                    <div class="personmsg">
                        <?php  echo $resume['introduce']?>
                    </div>
                </div>
            </div>


<!--求职意向-->

            <div class="basic_msg width670"  style="margin-top: 50px">
                <div class="basic_msg_content">
                    <div class="resume_title">
                        <span>求职意向</span>
                    </div>

                    <div class="font999" id="wanted_job" style=";margin-top: 58px;line-height: 2">
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-zhiwei"></use>
                        </svg>
                        <span class="basic_msg_contents1" style="padding-left: 0">Java工程师</span>
                        <span class="basic_msg_contents1">技术经理</span>
                        <span class="basic_msg_contents1" style="border-right: none">Java程序员</span>

                        <svg class="icon" aria-hidden="true" style="margin-left: 20px">
                            <use xlink:href="#icon-hangye"></use>
                        </svg>
                        <span class="basic_msg_contents1" style="padding-left: 0">Java工程师</span>
                        <span class="basic_msg_contents1">技术经理</span>
                        <span class="basic_msg_contents1" style="border-right: none">Java程序员</span>

                        <br/>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-xinzi"></use>
                        </svg>
                        <span class="basic_msg_contents2">5K-6K</span>

                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-quanzhi"></use>
                        </svg>
                        <span class="basic_msg_contents2">全职</span>

                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-didian"></use>
                        </svg>
                        <span class="basic_msg_contents2">北京</span>
                    </div>
                </div>
            </div>

<!--工作经历-->

            <div class="basic_msg width670" style="margin-top: 50px">
                <div class="basic_msg_content">
                    <div class="resume_title">
                        <span>工作经历</span>
                    </div>

                    <div class="resume_exp">
                        <div class="left_line">
                        </div>
                        <div class="resume_exp_content">
                            <?php  if(is_array(unserialize($resume['work_experience']))) { foreach(unserialize($resume['work_experience']) as $id => $list) { ?>
                            <div class="relative">
                                <span class="exp_title"><?php  echo $list['company_name']?></span>
                            </div>

                            <div class="exp_job">
                                <span class="exp_jobleft"><?php  echo $list['job_name']?></span>
                                <span class="exp_jobright"><?php  echo $list['job_starttime']?> — <?php  echo $list['job_endtime']?></span>
                            </div>

                            <div class="exp_content">
                                <?php  echo $list['job_content']?>
                            </div>

                            <div class="exp_job">
                                <span class="exp_jobleft">离职原因：<?php  echo  $list['leave_reason']?></span>
                            </div>
                            <?php  } } ?>
                        </div>
                    </div>
                </div>
            </div>

<!--教育经历-->
            <div class="basic_msg width670" style="margin-top: 50px">
                <div class="basic_msg_content">
                    <div class="resume_title">
                        <span>教育经历</span>
                    </div>
                    <div class="resume_exp">
                        <div class="left_line">
                        </div>
                        <div class="resume_exp_content">
                            <?php  if(is_array($edu_experience)) { foreach($edu_experience as $id => $list) { ?>
                            <div class="relative">
                                <span class="exp_title"><?php  echo $list['school_name']?></span>
                            </div>
                            <div class="exp_job">
                                <span class="exp_jobleft"><?php  echo $list['edu_major']?></span>
                                <span class="exp_jobleft" style="margin-left: 8px"><?php  echo $list['edu_district']?></span>
                                <span class="exp_jobright"><?php  if($list['edu_finish_time']) { ?><?php  echo $list['edu_finish_time']?>届<?php  } ?></span>
                            </div>
                            <div class="exp_content">
                                <?php  echo $list['edu_content']?>
                            </div>
                            <?php  } } ?>
                        </div>
                    </div>
                </div>
            </div>

<!--个人作品-->
            <div class="basic_msg width670" style="margin-top: 50px">
                <div class="basic_msg_content">
                    <div class="resume_title">
                        <span>个人作品</span>
                    </div>

                    <div class="resume_exp">

                        <div class="person_works">
                            <?php  if(is_array($personal_works)) { foreach($personal_works as $id => $list) { ?>
                            <div class="person_work">
                                <div class="img_box"><img src="<?php  echo $list['thumb']?>"></div>
                                <div class="person_workmsg relative">
                                    <span><?php  echo $list['person_workmsg']?></span>
                                </div>
                            </div>
                            <?php  } } ?>

                        </div>
                    </div>
                </div>
            </div>
            <!--endprint1-->
<!--30秒个人视频-->
            <div class="basic_msg width670" style="margin-top: 50px">
                <div class="basic_msg_content">
                    <div class="resume_title">
                        <span style="width: 150px;margin-left: 260px">30秒个人视频</span>
                    </div>
                    <div class="resume_exp">
                        <div class="person_works relative">
                            <video src="http://www.zhangxinxu.com/study/media/cat.mp4" width="500" height="300" controls autobuffer style="margin-left: 85px"></video>
                        </div>
                    </div>
                </div>
            </div>

            <!--startprint2-->

            <!--荣誉证书-->
            <div class="basic_msg width670" style="margin-top: 50px;margin-bottom: 180px">
                <div class="basic_msg_content">
                    <div class="resume_title">
                        <span >荣誉证书</span>
                    </div>
                    <div class="resume_exp">
                        <div class="person_works">
                            <div class="relative">
                                <span class="certificate">2013年3月获得全国中小学生数学竞赛一等奖</span>
                            </div>

                            <div class="relative">
                                <span class="certificate">2013年3月获得全国中小学生数学竞赛一等奖</span>
                            </div>

                            <div class="relative">
                                <span class="certificate">2013年3月获得全国中小学生数学竞赛一等奖</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--endprint2-->
        </div>
    </div>

</div>
<!--更换模板弹框-->
<div class="modalbox" id="modal_box" style="display: block;opacity: 0">
    <div class="modal" style="width: 980px;margin-left: -490px;top:10%;">
        <p class="title_content">选择简历模板</p>
        <span class="modalclose">
                <img src="<?php echo WL_URL_ARES;?>images/close.png"/>
            </span>
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide" data-id="1">
                    <div class="modal_item cur">
                    <div class="modal_title">扁平化风格</div>
                    <div class="modal_style">
                    <img src="<?php echo WL_URL_ARES;?>images/modal.png" style="width:200px; "/>
                    </div>
                    </div>
                </div>
                <div class="swiper-slide" data-id="2">
                    <div class="modal_item cur">
                        <div class="modal_title">简约风格</div>
                        <div class="modal_style">
                            <img src="<?php echo WL_URL_ARES;?>images/modal.png" style="width:200px; "/>
                        </div>
                        <label class="using">使用中</label>
                    </div>
                </div>
                <div class="swiper-slide" data-id="3">
                    <div class="modal_item cur">
                        <div class="modal_title">游戏风格</div>
                        <div class="modal_style">
                            <img src="<?php echo WL_URL_ARES;?>images/modal.png" style="width:200px; "/>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" data-id="4">
                    <div class="modal_item cur">
                        <div class="modal_title">水墨风格</div>
                        <div class="modal_style">
                            <img src="<?php echo WL_URL_ARES;?>images/modal.png" style="width:200px; "/>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" data-id="5">
                    <div class="modal_item cur">
                        <div class="modal_title">扁平化风格</div>
                        <div class="modal_style">
                            <img src="<?php echo WL_URL_ARES;?>images/modal.png" style="width:200px; "/>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" data-id="6">
                    <div class="modal_item cur">
                        <div class="modal_title">古典风格</div>
                        <div class="modal_style">
                            <img src="<?php echo WL_URL_ARES;?>images/modal.png" style="width:200px; "/>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 如果需要导航按钮 -->
            <div class="swiper-button-prev" id="previous">
                <svg class="icon jiantou" aria-hidden="true">
                <use xlink:href="#icon-zuojiantouxi"></use>
                </svg>
            </div>

            <div class="swiper-button-next" id="next">
                <svg class="icon jiantou" aria-hidden="true">
                <use xlink:href="#icon-youjiantouxi"></use>
                </svg>
            </div>
        </div>


        <div class="btns" style="margin-bottom: 50px;margin-top: 60px;">
            <button class="tijiao" style="margin-left: 410px">确定使用</button>
            <span class="quxiao color_main">取消</span>
        </div>
    </div>
</div>
<!--弹框end-->


</body>
<script src="<?php echo WL_URL_ARES;?>js/swiper.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>

<script src="<?php echo WL_URL_ARES;?>js/formdata.js" rel="script"></script>
<script>
    $(document).ready(function () {

        var mySwiper = new Swiper ('.swiper-container', {
            direction: 'horizontal',
            slidesPerView: 4,
            roundLengths : true,
            // 如果需要前进后退按钮
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
        })
        $("#modal_box").hide().css("opacity",1);

        $("#print_resume").click(function () {
            bdhtml=window.document.body.innerHTML;//获取当前页的html代码
            sprnstr="<!--startprint1-->";//设置打印开始区域
            eprnstr="<!--endprint1-->";//设置打印结束区域
            prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+18); //从开始代码向后取html
            prnhtmlprnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//从结束代码向前取html
            window.document.body.innerHTML=prnhtml;
            window.print();
            window.document.body.innerHTML=bdhtml;
        })

    })
$(function () {
    $(".color").click(function () {
        var html="<i class='select'></i>";
        var color=$(this).css("background-color");
        $("body").css("background-color",color);
        $(".color").html("");
        $(this).append(html);
    })

    $(".modal_item").click(function () {
        $(".biankuang").remove();
        $(this).append("<div class='biankuang'></div>");
    })

})




    $("#change_modal").click(function () {
        $("#modal_box").show();
    })
    $(".modalclose,.quxiao").on("click",function(){
        $("#modal_box").hide();
    });

    $(".tijiao").click(function () {
        var template_id = $(".biankuang").parent().parent().attr('data-id');
        $.ajax({
            type:"post",
            data:{
                template_id:template_id
            },
            success:function (data) {
                var data =JSON.parse(data);
                if(data.status==1){
                    location = location;
                }
            }
        })
    })
</script>
</html>