<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/header.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/control.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/personal.css" rel="stylesheet">
    <script src="http://api.map.baidu.com/api?v=2.0&ak=YrLaqu3cNGX66NynxPIWR9sS7n5ASDd1"></script>
    <title>收到简历</title>
</head>
<body bgcolor="#f4f4f4">
<?php  include wl_template('common/header');?>
<div class="width1200 p1content">
    <?php  include wl_template('common/company_nav');?>
    <div class="p1_left">
        <div class="con_list">
            <div class="list_top">
                <div class="list_item_btn select" id="send_list">收到的简历</div>
                <div class="list_item_btn" style="margin-left: 2px" id="review">收藏的简历</div>
                <div class="checkbox ico_rightstatas" style="display: inline-block;margin-left: 120px;">
                    <label>
                        <input type="checkbox" name="like" value="">
                        <div class="checkboxbox">
                            <svg class="icon iconfont color1aa ico_right">
                                <use xlink:href=""></use>
                            </svg>
                        </div>
                    </label>
                </div>
                <div class="biezhu">不看已拒绝的简历</div>
                <div class="job_send">
                        <span class="wenzi">发布的职位</span>
                        <svg class="icon ico_xiala" style="margin-top: 22px;color: #bbbbbb;margin-left: 10px">
                            <use xlink:href="#icon-xiala"></use>
                        </svg>
                    <div class="my_joblist">
                        <?php  if(is_array($job)) { foreach($job as $list) { ?>
                        <p class="option_select"><?php  echo $list['jobs_name']?></p>
                        <?php  } } ?>
                    </div>
                </div>
                <div class="shoucanginput">
                    <div class="inputcon">
                        <svg class="icon" style="color: #bbbbbb;margin-left: 20px">
                            <use xlink:href="#icon-sousuo"></use>
                        </svg>
                        <input type="text" id="job_name_sou" placeholder="搜索期望职位">
                    </div>
                    <div class="btn_sou cur">搜索</div>
                </div>
            </div>
            <!--收到的简历start------------------------------------------------------------------------------->
            <div class="list_content">
                <?php  if(is_array($received_resume)) { foreach($received_resume as $list) { ?>
                <?php  if($list['status']<1) { ?>
                <div class="list_item <?php  if($list['status']==-1) { ?>refuse<?php  } ?>" data-id="<?php  echo $list['apply_id']?>" >
                    <div class="item_con">
                        <a class="touxiang_pic"  href="<?php  echo app_url('resume/index',array('uid'=>$list['uid']))?>" target="_blank">
                            <img src="<?php  echo $list['headimgurl']?>" style="width: 100px;"/>
                        </a>
                        <div class="basic_massage">
                            <div class="bm_hang1">
                                <span class="name"><?php  echo $list['fullname']?></span>
                                <a class="view_i" href="<?php  echo app_url('resume/index',array('uid'=>$list['uid']))?>" target="_blank">查看</a>
                                <span class="hope_job"><?php  echo $list['jobs_name']?></span>
                            </div>
                            <div class="bm_hang2">
                                <span class="basic_xx"><?php  if($list['sex']==2) { ?>女生<?php  } else { ?>男生<?php  } ?></span>
                                <span class="basic_xx" style="margin-left: 10px;"><?php  echo ceil(date('Y-m-d')-$list['birthday'])?>岁</span>
                                <span class="basic_xx" style="margin-left: 26px;"><?php  echo $list['education']?></span>
                            </div>
                            <div class="bm_hang3">
                                <span class="basic_xx"><?php  echo $list['school_name']?></span>
                                <span class="basic_xx"  style="margin-left: 16px;"><?php  echo $list['edu_major']?></span>
                            </div>
                            <div class="bm_hang4">
                                <span class="basic_xx">工作经验<span><?php  echo $list['work_time']?>年</span></span>
                                <span class="basic_xx" style="margin-left: 16px;"><?php  echo $list['telphone']?></span>
                            </div>
                        </div>
                        <div class="xian1"></div>
                        <div class="status">
                            <p class="time">
                                <span>期望职位：<label class="job_hope">播音</label><label  class="job_hope">编导</label><label  class="job_hope">记者</label></span>
                            </p>
                            <p class="review_tel">
                                <span>期望薪资：<label>5k-8k</label></span>
                            </p>
                            <p class="review_address">
                                <span>期望工作地点：<label>重庆</label></span>
                            </p>
                        </div>
                    </div>
                    <div class="review_statas">
                        <?php  if($list['status']==-1) { ?>
                            <div class="jujuestatus">已拒绝面试</div>
                        <?php  } else { ?>
                            <div class="tongyi1 agree_review" data-id="<?php  echo $list['apply_id']?>">同意面试</div>
                            <div class="jujue1 refuse_review" data-id="<?php  echo $list['apply_id']?>">拒绝面试</div>
                            <?php  if($list['collect_resume']) { ?>
                            <div class="jujue1 shoucangbtn shoucang_resume" data-id="<?php  echo $list['apply_id']?>">已收藏</div>
                            <?php  } else { ?>
                            <div class="jujue1 shoucangbtn shoucang_resume" data-id="<?php  echo $list['apply_id']?>">收藏简历</div>
                            <?php  } ?>
                        <?php  } ?>
                    </div>
                </div>
                <?php  } ?>
                <?php  } } ?>
                <div class="morejob received_resume_page" >更多简历信息>></div>
            </div>
            <!--收到的简历end-------------------------------------------------------------------------->
            <!--收藏简历start---------------------------------------------------------------------------->
            <div class="resume_content">
                <?php  if(is_array($collect_resume)) { foreach($collect_resume as $list) { ?>
                <div class="list_item">
                    <div class="item_con">
                        <div class="touxiang_pic">
                            <img src="<?php  echo $list['headimgurl']?>" style="width: 100px;"/>
                        </div>
                        <div class="basic_massage">
                            <div class="bm_hang1">
                                <span class="name"><?php  echo $list['fullname']?></span>
                                <span class="view_i">查看</span>
                                <span class="hope_job"><?php  echo $list['jobs_name']?></span>
                            </div>
                            <div class="bm_hang2">
                                <span class="basic_xx"><?php  if($list['sex']==2) { ?>女生<?php  } else { ?>男生<?php  } ?></span>
                                <span class="basic_xx" style="margin-left: 10px;"><?php  echo ceil(date('Y-m-d')-$list['birthday'])?>岁</span>
                                <span class="basic_xx" style="margin-left: 26px;"><?php  echo $list['education']?></span>
                            </div>
                            <div class="bm_hang3">
                                <span class="basic_xx"><?php  echo $list['school_name']?></span>
                                <span class="basic_xx"  style="margin-left: 16px;"><?php  echo $list['edu_major']?></span>
                            </div>
                            <div class="bm_hang4">
                                <span class="basic_xx">工作经验<span><?php  echo $list['work_time']?>年</span></span>
                                <span class="basic_xx" style="margin-left: 16px;"><?php  echo $list['telphone']?></span>
                            </div>
                        </div>
                        <div class="xian1"></div>
                        <div class="status">
                            <p class="time">
                                <span>期望职位：<label class="job_hope">播音</label><label  class="job_hope">编导</label><label  class="job_hope">记者</label></span>
                            </p>
                            <p class="review_tel">
                                <span>期望薪资：<label>5k-8k</label></span>
                            </p>
                            <p class="">
                                <span>期望工作地点：<label>重庆</label></span>
                            </p>
                            <p class="shoucang_beizhu">
                                <span>备注：</span>
                                <span style="margin-left: 18px"><?php  echo $list['remark']?></span>
                                <svg class="icon edit_ico cur">
                                    <use xlink:href="#icon-xiugai"></use>
                                </svg>
                            </p>
                        </div>
                    </div>
                    <div class="review_statas">
                        <div class="tongyi yaoqing_interview" data-id="<?php  echo $list['collect_id']?>">邀请面试</div>
                        <div class="jujue" data-id="<?php  echo $list['collect_id']?>">取消收藏</div>
                    </div>
                </div>
                <?php  } } ?>

                <div class="morejob collect_resume_page">更多简历信息>></div>
            </div>
            <!--收藏简历end---------------------------------------------------->
        </div>
    </div>
    <?php  include wl_template('common/company_right');?>


    <!--收藏备注弹框--------->
    <div class="modalbox" id="beizhubox" style="display: none;">
        <div class="modal" style="width: 430px;margin-left: -215px;">
            <p class="title_content">收藏备注</p>
            <span class="modalclose">
                <img src="<?php echo WL_URL_ARES;?>images/close.png"/>
            </span>
            <textarea class="scbz_input" placeholder="自定义备注，15字以内。"></textarea>
            <div class="btns" style="margin-bottom: 22px">
                <button class="tijiao1" id="shoucang">确定</button>
                <span class="quxiao">取消</span>
            </div>
        </div>
    </div>
    <!--收藏备注弹框end-->
    <!--面试邀请弹框-->
    <div class="modalbox" id="invite_box" style="display: none">
        <div class="modal" style="width: 620px;margin-left: -310px;">
            <p class="title_content">面试邀请</p>
            <span class="modalclose">
                <img src="<?php echo WL_URL_ARES;?>images/close.png"/>
            </span>
            <div class="invite_con">
                <div class="in_hang">
                    <span class="biaoti">面试时间</span>
                    <label class="general-input relative review_input">
                        <input type="text" readonly="" id="review_time" placeholder="选择时间">
                        <svg class="icon inputicon" aria-hidden="true">
                            <use xlink:href="#icon-xiala" class="colorbbb"></use>
                        </svg>
                    </label>
                    <div class="review_time">
                        <lable class="time_hour slect" data-id="1">明天10点</lable>
                        <lable class="time_hour" data-id="2">明天14点</lable>
                        <lable class="time_hour" data-id="3">后天10点</lable>
                        <lable class="time_hour" data-id="4">后天14点</lable>
                        <p class="select_date">选择日期</p>
                    </div>
                    <div class="review_date">
                        <span class="items_dateweek">
                        </span>
                        <div class="hours_edit">
                            <label class="hour_btn cur" id="minus">-</label>
                            <label class="hour_num"><span class="number_hour">10</span>点</label>
                            <label class="hour_btn cur" id="plus">+</label>
                        </div>
                        <div class="btns" style="margin-bottom: 22px;margin-top: 10px;">
                            <button class="tijiao" style="margin-left: 160px" id="reviewtime">确认</button>
                            <span class="quxiao1">取消</span>
                        </div>
                    </div>
                </div>
                <div class="in_hang">
                    <span class="biaoti">联系人</span>
                    <label class="general-input" >
                        <input type="text" id="contacts_name"  value="">
                    </label>
                </div>
                <div class="in_hang">
                    <span class="biaoti">联系电话</span>
                    <label class="general-input" >
                        <input type="text" id="contacts_tel" value="">
                    </label>
                </div>
                <div class="in_hang">
                    <span class="biaoti">面试地点</span>
                    <div class=" relative general-select left_align city1 ">
                        <label class="general-input relative general-select review_city" style="border-color: rgb(245, 245, 245);">
                            <input type="text" readonly="" id="city" placeholder="选择城市">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options cityoption" style="height: 185px;"></div>
                    </div>
                    <div class=" relative general-select district1" style="float: right;">
                        <label class="general-input relative general-select review_district">
                            <input type="text" readonly="" id="city_area" placeholder="区县">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options districtoption" style="height: 185px;"></div>
                    </div>
                    <label class="general-input" >
                        <input type="text" id="detail_address" placeholder="详细地址">
                    </label>
                </div>
            </div>
            <div class="btns" style="margin-bottom: 22px;margin-top: 10px;">
                <button class="tijiao" id="send_review" style="margin-left: 210px">发送邀请</button>
                <span class="quxiao">取消</span>
            </div>
        </div>
    </div>
    <!--面试邀请弹框end-->
</div>



</body>
<!--<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>-->
<!--<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>-->
<!--<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>-->
<!--<script src="<?php echo WL_URL_ARES;?>js/login_reg_account.js"></script>-->
<!--<script src="<?php echo WL_URL_ARES;?>js/area.js" rel="script"></script>-->
<!--<script src="<?php echo WL_URL_ARES;?>js/resume_reg1.js" rel="script"></script>-->


<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/login_reg_account.js"></script>
<script src="<?php echo WL_URL_ARES;?>js/area.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/resume_reg1.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/resume_picker.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/date_list.js" rel="script"></script>


<script>

    var received_resume_page = 1;
    var collect_resume_page = 1;
    $(function () {
        send_resume();
    })

    //取消收藏
    $("body").on("click",".jujue",function () {
        var _this = $(this);
        $.ajax({
            type:"post",
            url:"<?php  echo app_url('company/resume/remove_collect')?>",
            data:{
                data_id:$(this).attr('data-id')
            },
            success:function (data) {
                var data = JSON.parse(data);
                if(data.status==1){
                    _this.parent().parent().hide();
                }else{
                    console.log(data);
                }
            }
        })
    })

    //面试邀请
    $("body").on("click","#send_review",function () {
        var reviewtime=$("#review_time").val();
        var contacts_name=$("#contacts_name").val();
        var contacts_tel=$("#contacts_tel").val();
        var city=$("#city").val();
        var city_area=$("#city_area").val();
        var detail_address=$("#detail_address").val();
        var data_id=$(this).closest("#invite_box").attr("data-id");

        var telphone_reg=/^1[3|5|7|8][0-9]\d{8}$/;
        if(reviewtime==""){
            alert("请输入面试日期")
            return;
        }
        if(contacts_name==""){
            alert("请输入联系人")
            return;
        }
        if(contacts_tel==""){
            alert("请输入联系电话")
            return;
        }
        if(!telphone_reg.test(contacts_tel)){
            alert("请输入可联系的电话")
            return;
        }
        if(city==""){
            alert("请输入城市")
            return;
        }
        if(city_area==""){
            alert("请输入区县")
            return;
        }
        if(detail_address==""){
            alert("请输入详细地址")
            return;
        }

        $("#invite_box").hide();
        var lists=$(".list_content .list_item");
        lists.each(function () {
            if($(this).attr("data-id")==data_id){
                $(this).hide();
            }
        })

        $.ajax({
            url:"<?php  echo app_url('company/resume/send_review')?>",
            type:"post",
            data:{
                data_id:data_id,
                reviewtime:reviewtime,
                contacts_name:contacts_name,
                contacts_tel:contacts_tel,
                city:city,
                city_area:city_area,
                detail_address:detail_address
            },
            success:function(data){
                if(data.status==1){
                    window.location.href="";
                }else{
                    console.log(data.content);
                }
            }
        })
    })


    //拒绝面试

    $("body").on("click",".refuse_review",function () {
        var _this = $(this);
        $.ajax({
            type:"post",
            url:"<?php  echo app_url('company/resume/refuse_review')?>",
            data:{
                apply_id:$(this).attr('data-id')
            },
            success:function (data) {
                var data = JSON.parse(data);
                if(data.status==1){
                    _this.closest(".review_statas").html("<div class='jujuestatus cur' data-id='1'>已拒绝面试</div>");

                }
            }
        })
    })


    //收藏备注
    $("body").on("click","#shoucang",function () {
        var item=$(this).closest("#beizhubox");
        var beizhu=item.find(".scbz_input").val();
        var data_flag=item.attr("data-id");
        if(beizhu==""){
            alert("请填写备注！")
            return;
        }
        $("#beizhubox").hide();
        var lists=$(".list_content .list_item");

        lists.each(function () {
            if($(this).attr("data-id")==data_flag){
//               $(this).find(".beizhu_content").val(beizhu);
                var states=$(this).find(".shoucangbtn");
                states.html("已收藏");
                states.removeClass("shoucang_resume");
                states.addClass("statussc");
            }
        })

        $.ajax({
            url:"<?php  echo app_url('company/resume/collect')?>",
            type:"post",
            data:{
                beizhu:beizhu,
                data_id:data_flag
            },
            success:function (data) {
                if(data.status==1){
                    window.location.href="";
                }else{
                    console.log(data.content);
                }
            }
        })
    })


    //多选
    $(".checkbox input[type=checkbox]").on("click",function(){
        var _this=$(this);
        if(_this.attr("checked")){
           $(".refuse").hide();
            _this.next().find(".iconfont use").attr("xlink:href","#icon-zhengque1");
        }else{
            $(".refuse").show();
            _this.next().find(".iconfont use").attr("xlink:href","");
        }
    })
    
    $(".job_send").on("mouseleave",function () {
        var joblist=$(this).find(".my_joblist");
        if(joblist.attr("height")!=0){
            joblist.attr("height","0px");
            joblist.hide();
        }
    })

    //搜索职位
    $(".btn_sou").click(function () {
        var job_name_sou = $("#job_name_sou").val();

        $.ajax({
            type:"post",
            url:"<?php  echo app_url('company/index/job_name_search')?>",
            data:{
                keyword:job_name_sou
            },
            success:function (data) {
                var data = JSON.parse(data);
                var html = "";
                if(data.status==1){

                }
            }
        })
    })

    //收到简历分页
    $(".received_resume_page").click(function () {
        var _this = $(this);
        var morejob = _this.clone(true);
        $.ajax({
            type:"post",
            url:"<?php  echo app_url('company/resume/received_resume_page')?>",
            data:{
                page:received_resume_page
            },
            success:function (data) {
                var data = JSON.parse(data);
                var html = "";
                if(data.status==1){
                    $(".list_content").append(data.content);
                    _this.remove();
                    $(".list_content").append(morejob);
                    received_resume_page+=1;
                }
            }
        })
    })

    //收藏简历分页
    $(".collect_resume_page").click(function () {
        var _this = $(this);
        var morejob = _this.clone(true);
        $.ajax({
            type:"post",
            url:"<?php  echo app_url('company/resume/collect_resume_page')?>",
            data:{
                page:collect_resume_page
            },
            success:function (data) {
                var data = JSON.parse(data);
                var html = "";
                if(data.status==1){
                    $(".list_content").append(data.content);
                    _this.remove();
                    $(".list_content").append(morejob);
                    collect_resume_page+=1;
                }
            }
        })
    })

</script>


</html>