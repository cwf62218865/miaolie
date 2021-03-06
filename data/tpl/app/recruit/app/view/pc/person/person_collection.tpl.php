<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/header.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/control.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/personal.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/personal1.css" rel="stylesheet">
    <title>投递简历</title>
</head>
<body bgcolor="#f4f4f4">
<?php  include wl_template('common/header');?>
<div class="width1200 p1content">
    <?php  include wl_template('common/person_nav');?>
    <div class="p1_left">
        <div class="con_list">
            <div class="list_top">
                <div class="list_item_btn select" id="favourite">收藏的职位</div>
                <div class="list_item_btn" style="margin-left: 2px" id="subscribe">订阅的职位</div>
            </div>
            <!--收藏职位-------------------------------->
            <div class="list_content">
                <?php  if(is_array($jobs)) { foreach($jobs as $list) { ?>
                <div class="list_item">
                    <div class="item_con">
                        <div class="hang1">
                            <a class="jobname nowrap"><?php  echo $list['jobs_name']?></a>
                            <a class="salary"><?php  echo $list['wage_min']?>-<?php  echo $list['wage_max']?></a>
                        </div>
                        <div class="hang2">
                            <a class="exptime nowrap">3-5年工作经验</a>
                            <span class="exptime nowrap">大专</span>
                            <span class="date"><?php  echo date('Y-m-d',$list['createtime'])?></span>
                        </div>
                        <div class="hang3">
                            <?php  if(is_array(explode(",",$list['tag']))) { foreach(explode(",",$list['tag']) as $value) { ?>
                            <span class="fuli"><?php  echo $value?></span>
                            <?php  } } ?>
                        </div>
                        <div class="xian1"></div>
                        <div class="status">
                            <div class="collection_logo"><img src="<?php echo WL_URL_ARES;?>images/logo.png"></div>
                            <div class="collection_companymsg">
                                <span class="nowrap company_name"><?php  echo $list['companyname']?></span>
                                <span class="nowrap company_address"><?php  echo $list['city']?></span>
                            </div>
                        </div>

                    </div>
                    <div class="collection_action" data-id="<?php  echo $list['uid']?>">
                        <span class="left_actionbtn post_action" data-id="<?php  echo $list['id']?>">投递简历</span>
                        <span class="right_actionbtn revoke_action" data-id="<?php  echo $list['id']?>">取消收藏</span>
                    </div>
                </div>
                <?php  } } ?>
            </div>
            <!--收藏职位end-------------------------------->
            <!--订阅职位-------------------------------->
            <div class="resume_content">
                <!--编辑订阅器-->
                <div class="edit_dingyue" <?php  if($order_jobs) { ?>flag="1"<?php  } else { ?>flag="0"<?php  } ?>>
                    <label class="general-input current">
                        <input type="text" id="job_name" style="" placeholder="请输入职位名称" value="<?php  echo $order_jobs['jobs_name']?>">
                    </label>
                    <div class="relative general-select input_wai city1">
                        <label class="general-input relative general-select current1">
                            <input type="text" readonly="" id="gz_address" placeholder="工作地点"  style="width: 80px;" value="<?php  echo $order_jobs['work_place']?>">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options scend" style="width: 272px;top:48px">
                            <div class="cwfcityoptions2">

                            </div>
                            <div class="cwfarea">
                                <span>请先选择城市</span>
                            </div>
                        </div>
                    </div>
                    <div class=" relative general-select input_wai statesinput">
                        <label class="current1 general-input relative general-select">
                            <input type="text" readonly="" placeholder="月薪" id="salery" style="width: 80px;" value="<?php  echo $order_jobs['wage_range']?>">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options" style="height: 0px;">
                            <div class="select-option"><span>2k以下</span></div>
                            <div class="select-option"><span>2k-4k</span></div>
                            <div class="select-option"><span>4k-6k</span></div>
                            <div class="select-option"><span>6k-10k</span> </div>
                            <div class="select-option"><span>10k以上</span> </div>
                        </div>
                    </div>
                    <div class="chec_tip1">
                        <div class="left_align" style="width: 320px;"></div>
                        <div class="center_align" style="width: 120px;margin-left: 340px;"></div>
                        <div class="right_align" style="width: 120px;float: right"></div>
                    </div>
                    <div class=" relative general-select p1content statesinput">
                        <label class="current1 general-input relative general-select current2" style="margin-left: 0">
                            <input type="text" id="hy_district" readonly="" placeholder="选择行业（最多三项）" class="" style="width: 420px;" value="<?php  echo $order_jobs['trade']?>">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options options1" style="height: 0px;">
                            <div class="select-option1" flag="0"><span>IT互联网</span></div>
                            <div class="select-option1" flag="0"><span>物流运输</span></div>
                            <div class="select-option1" flag="0"><span>制造加工</span> </div>
                            <div class="select-option1" flag="0"><span>房地产</span> </div>
                            <div class="select-option1" flag="0"><span>教育培训</span> </div>
                            <div class="select-option1" flag="0"><span>医疗医药</span> </div>
                            <div class="select-option1" flag="0"><span>能源化工</span> </div>
                            <div class="select-option1" flag="0"><span>餐饮百货</span> </div>
                            <div class="select-option1" flag="0"><span>人力资源</span> </div>
                            <div class="select-option1" flag="0"><span>金融投资证券</span> </div>
                            <div class="select-option1" flag="0"><span>其他</span> </div>
                            <div class="btns_d">
                                <div class="public_bigbtn bg1aa currntbtn" id="hy_preserve">保存</div><span class="color_main cur margin_l" id="hy_quxiao">取消</span>
                            </div>
                        </div>
                    </div>
                    <div class="relative general-select p1content statesinput">
                        <label class="current1 general-input relative general-select current1">
                            <input type="text" readonly="" id="dy_pinlv" placeholder="订阅频率" class="" style="width: 80px;" value="<?php  echo $order_jobs['order_time']?>">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options" style="height: 0px;">
                            <div class="select-option"><span>三天一次</span></div>
                            <div class="select-option"><span>一周一次</span></div>
                            <div class="select-option"><span>一个月一次</span> </div>
                            <div class="select-option"><span>半年一次</span> </div>
                            <div class="select-option"><span>一年一次</span> </div>
                        </div>
                    </div>
                    <div class="chec_tip1">
                        <div class="left_align" style="width: 460px;"></div>
                        <div class="right_align" style="width: 120px;float: right"></div>
                    </div>
                    <span class="public_bigbtn bg1aa wrap" id="dy_preserve">保存</span>
                    <span class="color_main cur margin_l quxiao_ico" id="dy_quxiao">取消</span>
                <div class="right_icos" >
                    <div class="checkbox ico_rightstatas" style="display: inline-block;margin-left: 60px;">
                        <label>
                            <input type="checkbox" name="like" value="">
                            <div class="checkboxbox">
                                <svg class="icon iconfont color1aa ico_right">
                                    <use xlink:href="#icon-zhengque1"></use>
                                </svg>
                            </div>
                        </label>
                    </div>
                    <div class="biezhu"> 同时发送到邮箱</div>
                    <span class="cur deletedyq" id="delete_dy">删除订阅器</span>
                </div>
                </div>
                <!--编辑订阅器end-->
                <!--第一次打开我的订阅-->
                <div class="no_dingyue_list" <?php  if($order_jobs) { ?>style="display:none;"<?php  } ?>>
                    您还没有订阅职位，请先<span class="color_main cur" id="edit_dytj">编辑条件</span>
                    <p class="why_zi">我们为什么强烈推荐您订阅</p>
                    <p class="font_grey margin_t">帮助您节省浏览和筛选时间，快速找到适合的职位信息。 </p>
                    <p  class="font_grey margin_t">我们会严格按照您订阅的频次和条件为您推送，并对您的个人信息绝对保密。</p>
                </div>
                <!--第一次打开我的订阅end-->
                <!--订阅编辑成功显示-->
                <div class="success_dingyue" <?php  if($order_jobs) { ?>style="display:block;"<?php  } ?>>
                    订阅成功，次日生效。<span class="color_main cur" id="alter_dy">修改订阅条件>></span>
                    <p class="why_zi" id="dy_job_name"><?php  echo $order_jobs['jobs_name']?></p>
                    <p class="font_grey margin_t">
                        <span class="dy_tiaojian" id="dy_dz"><?php  echo $order_jobs['work_place']?></span>|
                        <?php  if(is_array(explode(',',$order_jobs['trade']))) { foreach(explode(',',$order_jobs['trade']) as $id => $list) { ?>
                        <span class="dy_tiaojian" id="dy_hy<?php  echo $id+1;?>"><?php  echo $list?></span>|
                        <?php  } } ?>
                        <span  class="dy_tiaojian" id="dy_pl"><?php  echo $order_jobs['order_time']?></span>|
                        <span  class="dy_tiaojian" id="dy_gz"><?php  echo $order_jobs['wage_range']?></span>
                    </p>
                </div>
                <!--订阅编辑成功显示end-->
                <!--订阅生效之后，显示订阅职位-->
                <div class="dingyue_list" style="display: block;">
                <div class="dingyue_tishi">
                    <span class="grey">以下是您订阅的职位</span>
                    <span class="color_main cur" id="edit_dyq">修改订阅条件>></span>
                </div>
                <?php  if(is_array($order_jobs_list)) { foreach($order_jobs_list as $list) { ?>
                <div class="list_item">
                    <div class="item_con">
                        <div class="hang1">
                            <a class="jobname nowrap"><?php  echo $list['jobs_name']?></a>
                            <a class="salary"><?php  echo $list['wage_min']?>-<?php  echo $list['wage_max']?>K</a>
                        </div>
                        <div class="hang2">
                            <a class="exptime nowrap"><?php  echo $list['experience']?></a>
                            <span class="exptime nowrap"><?php  echo $list['education']?></span>
                            <span class="date"><?php  echo date('Y-m-d',$list['addtime'])?></span>
                        </div>
                        <div class="hang3">
                            <?php  if(is_array(explode(",",$list['tag']))) { foreach(explode(",",$list['tag']) as $li) { ?>
                            <span class="fuli"><?php  echo $li?></span>
                            <?php  } } ?>
                        </div>
                        <div class="xian1"></div>
                        <div class="status">
                            <div class="collection_logo"><img src="<?php echo WL_URL_ARES;?>images/qiyelogo.png"></div>
                            <div class="collection_companymsg">
                                <span class="nowrap company_name"><?php  echo $list['companyname']?></span>
                                <span class="nowrap company_address"><?php  echo $list['address']?></span>
                            </div>
                        </div>

                    </div>
                    <div class="collection_action"  data-id="<?php  echo $list['uid']?>">
                        <span class="left_actionbtn post_action" data-id="<?php  echo $list['id']?>">投递简历</span>
                        <span class="right_actionbtn revoke_action" data-id="<?php  echo $list['id']?>">收藏职位</span>
                    </div>
                </div>
                <?php  } } ?>
                <span class="find_morejob">发现更多好职位>></span>
                </div>
                <!--订阅生效之后，显示订阅职位end-->
            </div>
            <!--订阅职位end-------------------------------->
        </div>

    </div>
<?php  include wl_template('common/person_right');?>


    <!--弹框-->
    <div class="modalbox" id="deletebox" style="display: none;">
        <div class="modal" style="width: 430px;margin-left: -215px;height: auto">
            <p class="title_content">删除订阅器</p>
            <span class="modalclose">
                <img src="<?php echo WL_URL_ARES;?>images/close.png"/>
            </span>
            <div class="delete_tips">删除订阅器后将无法继续收到职位推送，确定要删除吗？</div>
            <div class="btns_tk">
                <div class="public_bigbtn bg1aa currntbtn" id="nodelete">再考虑下</div>
                <span class="color_main cur margin_l" id="sure_delete">确定删除</span>
            </div>
        </div>
    </div>
    <!--弹框end-->
</div>



</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/login_reg_account.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/area.js" rel="script"></script>
<script>
    $(function (){
        person_collection();
        //订阅保存
        $("#dy_preserve").click(function () {
            var job_name=$("#job_name").val();
            var gz_address=$("#gz_address").val();
            var salery=$("#salery").val();
            var hy_district=$("#hy_district").val();
            var dy_pinlv=$("#dy_pinlv").val();

            var job_input=$("#job_name").closest(".general-input");
            var address_input=$("#gz_address").closest(".input_wai");
            var salery_input=$("#salery").closest(".input_wai");
            var district_input=$("#hy_district").closest(".p1content");
            var pinlv_input=$("#dy_pinlv").closest(".p1content");

            if($.trim(job_name)==""){
                $("#job_name").closest(".general-input").css("border-color","#e23d46");
                job_input.nextAll(".chec_tip1").eq(0).find(".left_align").html(tipmsg("error","请输入职位名称"))
                return;
            }
            if($.trim(gz_address)==""){
                $("#gz_address").closest(".general-input").css("border-color","#e23d46");
                address_input.nextAll(".chec_tip1").eq(0).find(".center_align").html(tipmsg("error","请输入工作地点"))
                return;
            }
            if($.trim(salery)==""){
                $("#salery").closest(".general-input").css("border-color","#e23d46");
                salery_input.nextAll(".chec_tip1").eq(0).find(".right_align").html(tipmsg("error","请输入月薪"))
                return;
            }
            if($.trim(hy_district)==""){
                $("#hy_district").closest(".general-input").css("border-color","#e23d46");
                district_input.nextAll(".chec_tip1").eq(0).find(".left_align").html(tipmsg("error","请输入行业"))
                return;
            }
            if($.trim(dy_pinlv)==""){
                $("#dy_pinlv").closest(".general-input").css("border-color","#e23d46");
                pinlv_input.nextAll(".chec_tip1").eq(0).find(".right_align").html(tipmsg("error","请输入订阅频率"))
                return;
            }
            //订阅设置之后，保存的效果，写入ajax中
            $("#dy_hy1").html("");
            $("#dy_hy2").html("");
            $("#dy_hy3").html("");
            $(".edit_dingyue").hide();
            $(".success_dingyue").show();
            var flag=$(".edit_dingyue").attr("flag","1");
            var arr=hy_district.split(",");
            $("#dy_job_name").html(job_name);
            $("#dy_dz").html(gz_address);
            $("#dy_hy1").html(arr[0]);
            $("#dy_hy2").html(arr[1]);
            $("#dy_hy3").html(arr[2]);
            $("#dy_pl").html(dy_pinlv);
            $("#dy_gz").html(salery);
            $.ajax({
                url:"<?php  echo app_url('person/jobs/save_order_jobs')?>",
                type:"post",
                data:{
                    job_name:job_name,
                    gz_address:gz_address,
                    salery:salery,
                    hy_district:hy_district,
                    dy_pinlv:dy_pinlv
                },
                success:function(data){
                    var data=JSON.parse(data);
                    if(data.status==1){
                        $(".edit_dingyue").hide();
                        $(".success_dingyue").show();
                    }
                }
            })
        })
        $("#dy_quxiao").click(function () {
            var flag=$(".edit_dingyue").attr("flag");
            $(".edit_dingyue").hide();
            if(flag==0){
                $(".no_dingyue_list").show();
            }else if(flag==1){
                $(".success_dingyue").show();
            }
        })
        //订阅修改
        $("#alter_dy,#edit_dyq").click(function () {
            $(".edit_dingyue").show();
            $(".success_dingyue").hide();
        })
        
        //删除订阅
        $("#delete_dy").click(function () {
            $("#deletebox").animate({"opacity":1},300);
            setTimeout(function(){
                $("#deletebox").css("display","block");
            },300)
        })
        $(".modalclose,#nodelete,#sure_delete").on("click",function(){
            $("#deletebox").animate({"opacity":0},300);
            setTimeout(function(){
                $("#deletebox").css("display","none");
            },300)
        });
        $("#sure_delete").click(function(){
            $(".no_dingyue_list").show();
            $(".edit_dingyue").hide();
            var job_name=$("#job_name").val("");
            var gz_address=$("#gz_address").val("");
            var salery=$("#salery").val("");
            var hy_district=$("#hy_district").val("");
            var dy_pinlv=$("#dy_pinlv").val("");
            $(".edit_dingyue").attr("flag","0");
            $.ajax({
                url:"<?php  echo app_url('person/jobs/reomve_order_jobs')?>",
                post:"post",
                data:{

                },
                success:function(data){
                    var data=JSON.parse(data);
                    if(data.status==1){
                        //删除的效果--隐藏弹框
                    }
                }
            });
        });

        //简历投递
        $("body").on("click",".post_action",function () {
            var _this = $(this);
            $.ajax({
                type:"post",
                url:"<?php  echo app_url('person/index/post_resume')?>",
                data:{
                    data_id:_this.attr("data-id"),
                    uid:_this.parent().attr('data-id')
                },
                success:function (data) {
                    var data = JSON.parse(data);
                    if(data.status==1){
                        _this.html("已投递");
                    }
                }
            })
        })
        
        //收藏职位
        $("body").on("click",".revoke_action",function () {
           var _this=$(this);
           $.ajax({
               type:"post",
               url:"<?php  echo app_url('person/index/post_resume')?>",
               data:{
                   data_id:_this.attr("data-id"),
                    uid:_this.parent().attr('data-id')
               },
                success:function (data) {
                    var data = JSON.parse(data);
                    if(data.status==1){
                        _this.html("已收藏");
                    }
                }
           })
        })
    })
</script>
</html>