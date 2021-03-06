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
    <title>投递简历</title>
</head>
<body bgcolor="#f4f4f4">
<?php  include wl_template('common/header');?>
<div class="width1200 p1content">
    <?php  include wl_template('common/person_nav');?>
    <div class="p1_left">

        <div class="con_list">
            <div class="list_top">
                <div class="list_item_btn select" id="send_list">投递记录</div>
                <div class="list_item_btn" style="margin-left: 2px" id="review">面试邀请</div>
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
                <div class="biezhu"> 只看通过申请的记录</div>
            </div>
            <div class="list_content">
                <?php  if(is_array($apply_jobs)) { foreach($apply_jobs as $list) { ?>
                <?php  if($list['direction']==2) { ?>
                <div class="list_item <?php  if($list['status']<>3) { ?>pass<?php  } ?>" >
                    <div class="item_con">
                        <div class="hang1">
                            <a class="jobname nowrap" href="<?php  echo app_url('member/index/jobs_detail',array('jobs_id'=>$list['id']))?>"><?php  echo $list['jobs_name']?></a>
                            <a class="salary"><?php  echo $list['wage_min']?>-<?php  echo $list['wage_max']?>k</a>
                        </div>
                        <div class="hang2">
                            <a class="company nowrap" href="<?php  echo app_url('member/index/company_detail',array('company_id'=>$list['uid']))?>"><?php  echo $list['companyname']?></a>
                            <span class="address nowrap"><?php  echo $list['city']?></span>
                            <span class="date"><?php  echo date("Y-m-d",$list['createtime'])?></span>
                        </div>
                        <div class="hang3">
                            <?php  if(is_array(array_filter(explode(",",$list['tag'])))) { foreach(array_filter(explode(",",$list['tag'])) as $value) { ?>
                            <span class="fuli"><?php  echo $value?></span>
                            <?php  } } ?>
                        </div>
                        <div class="xian1"></div>
                        <div class="status">
                            <?php  if($list['status']==0) { ?>
                            <div class="status1">HR未查看/待沟通</div>
                            <?php  } else if($list['status']==1) { ?>
                            <div class="status2">HR已查看</div>
                            <?php  } else { ?>
                                <p class="time">
                                    <svg class="icon icon_time" aria-hidden="true">
                                        <use xlink:href="#icon-shijian"></use>
                                    </svg>
                                    <span>时间：<?php  echo $list['interview']['interview_time']?></span>
                                </p>
                                <p class="review_tel">
                                    <svg class="icon icon_tel" aria-hidden="true">
                                        <use xlink:href="#icon-lianxiren"></use>
                                    </svg>
                                    <span>联系人：<?php  echo $list['interview']['linker']?></span>
                                </p>
                                <p class="review_address">
                                    <svg class="icon icon_address" aria-hidden="true">
                                        <use xlink:href="#icon-didian"></use>
                                    </svg>
                                    <span>地址：<?php  echo $list['interview']['address']?></span>
                                </p>
                                <div class="btn_ditu" data-id="<?php  echo $list['retoate_x'].','.$list['retoate_y']?>" data-city="<?php  echo $list['city'];?>"></div>
                            <?php  } ?>
                        </div>
                    </div>
                </div>
                <?php  } ?>
                <?php  } } ?>
                <div class="morejob apply_more">发现更多好职位>></div>
            </div>
            <!--面试邀请start---------------------------------------------------------------------------->
            <div class="resume_content">
                <?php  if(is_array($apply_jobs)) { foreach($apply_jobs as $list) { ?>
                    <?php  if($list['status']==3 && $list['direction']==1) { ?>
                        <div class="list_item">
                    <div class="item_con">
                        <div class="hang1">
                            <a class="jobname nowrap"><?php  echo $list['jobs_name']?></a>
                            <a class="salary"><?php  echo $list['wage_min']?>-<?php  echo $list['wage_max']?></a>
                        </div>
                        <div class="hang2">
                            <a class="company nowrap"><?php  echo $list['companyname']?></a>
                            <span class="address nowrap"><?php  echo $list['city']?></span>
                            <span class="date"><?php  echo date('Y-m-d',$list['createtime'])?></span>
                        </div>
                        <div class="hang3">
                            <?php  if(is_array(explode(",",$list['tag']))) { foreach(explode(",",$list['tag']) as $value) { ?>
                            <span class="fuli"><?php  echo $value?></span>
                            <?php  } } ?>
                        </div>
                        <div class="xian1"></div>
                        <div class="status">
                            <p class="time">
                                <svg class="icon icon_time" aria-hidden="true">
                                    <use xlink:href="#icon-shijian"></use>
                                </svg>
                                <span>时间：<?php  echo $list['interview']['interview_time']?></span>
                            </p>
                            <p class="review_tel">
                                <svg class="icon icon_tel" aria-hidden="true">
                                    <use xlink:href="#icon-lianxiren"></use>
                                </svg>
                                <span>联系人：<?php  echo $list['interview']['linker']?></span>
                            </p>
                            <p class="review_address">
                                <svg class="icon icon_address" aria-hidden="true">
                                    <use xlink:href="#icon-didian"></use>
                                </svg>
                                <span>地址：<?php  echo $list['interview']['address']?></span>
                            </p>
                            <div class="btn_ditu"></div>
                        </div>
                    </div>
                    <?php  if($list['offer']==0) { ?>
                    <div class="review_statas">
                        <div class="tongyi" data-id="2">同意面试</div>
                        <div class="jujue"  data-id="2">拒绝面试</div>
                    </div>
                    <?php  } else if($list['offer']==1) { ?>
                    <div class="review_statas tongyi_statas">
                        已同意面试
                    </div>
                    <?php  } else { ?>
                    <div class="review_statas jujue_statas">已拒绝面试</div>
                    <?php  } ?>
                </div>
                    <?php  } ?>
                <?php  } } ?>
                <div class="morejob">发现更多好职位>></div>
            </div>
            <!--面试邀请end---------------------------------------------------->
        </div>
    </div>
    <?php  include wl_template('common/person_right');?>


    <!--地图弹框-->
    <div class="modalbox" id="modalbox" style="display: none;">
        <div class="modal" style="width: 650px;margin-left: -325px;height: auto">
            <p class="title_content">公司地址</p>
            <span class="modalclose">
                <img src="<?php echo WL_URL_ARES;?>images/close.png"/>
            </span>
            <iframe style="width: 550px;height: 430px;border: none;margin: 40px 50px"></iframe>
        </div>
    </div>
    <!--地图弹框end-->
    <!--拒绝理由弹框-->
    <div class="modalbox" id="refusebox" style="display: none">
        <div class="modal refusebox">
            <p class="title_content">拒绝理由</p>
            <span class="modalclose">
                <img src="<?php echo WL_URL_ARES;?>images/close.png"/>
            </span>
            <div class="jujue_lists">
                <div class="checkbox reasonlist" style="display: inline-block;">
                    <label class="float">
                        <input type="checkbox" name="like" value="职位不合适" checked="checked">
                        <div class="checkboxbox">
                            <svg class="icon iconfont color1aa ico_right">
                                <use xlink:href="#icon-zhengque1"></use>
                            </svg>
                        </div>
                    </label>
                    <span class="float lable">职位不合适</span>
                </div>
                <div class="checkbox reasonlist" style="display: inline-block;">
                    <label class="float">
                        <input type="checkbox" name="like" value="已找到工作">
                        <div class="checkboxbox">
                            <svg class="icon iconfont color1aa ico_right">
                                <use xlink:href=""></use>
                            </svg>
                        </div>
                    </label>
                    <span class="float lable">已找到工作</span>
                </div>
                <div class="checkbox reasonlist" style="display: inline-block;">
                    <label class="float">
                        <input type="checkbox" name="like" value="距离太远">
                        <div class="checkboxbox">
                            <svg class="icon iconfont color1aa ico_right">
                                <use xlink:href=""></use>
                            </svg>
                        </div>
                    </label>
                    <span class="float lable">距离太远</span>
                </div>
                <div class="checkbox reasonlist" style="display: inline-block;">
                    <label class="float">
                        <input type="checkbox" name="like" value="薪酬原因">
                        <div class="checkboxbox">
                            <svg class="icon iconfont color1aa ico_right">
                                <use xlink:href=""></use>
                            </svg>
                        </div>
                    </label>
                    <span class="float lable">薪酬原因</span>
                </div>
                <div class="checkbox reasonlist" style="display: inline-block;">
                    <label class="float">
                        <input type="checkbox" name="like" value="不符职业规划">
                        <div class="checkboxbox">
                            <svg class="icon iconfont color1aa ico_right">
                                <use xlink:href=""></use>
                            </svg>
                        </div>
                    </label>
                    <span class="float lable">不符职业规划</span>
                </div>
                <div class="checkbox reasonlist" style="display: inline-block;">
                    <label class="float">
                        <div class="checkboxbox reason_zidingyi">
                            <input type="text" class="reson_zidingyi" name="reason" id="reason" placeholder="自定义拒绝理由">
                        </div>
                    </label>
                </div>
            </div>
            <div class="btns">
                <button class="tijiao">确定</button>
                <span class="quxiao">取消</span>
            </div>
        </div>
    </div>
    <!--拒绝理由弹框end-->
</div>



</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/login_reg_account.js"></script>

<script>
    $(function () {
        var send_resume_page = 1;
        var invite_page = 1;
        send_resume();
        $("body").on("click",".btn_ditu",function () {
            var points=$(this).attr("data-id").split(",");
            $("iframe").attr("src","<?php  echo app_url('member/index/show_map')?>retoate_x="+points[0]+"&retoate_y="+points[1]);
//            $.ajax({
//                url:"<?php  echo app_url('member/index/show_map')?>",
//                type:"data",
//                data:{
//                    retoate_x:points[0],
//                    retoate_y:points[1]
//                },
//                success:function (data) {
//                    $("iframe").attr("src","<?php  echo app_url('member/index/show_map')?>");
//                }
//            })
        });

        var dataid="";
        $(".jujue").click(function () {
            dataid=$(this).attr("data-id");
            $("#refusebox").animate({"opacity":1},300);
            setTimeout(function(){
                $("#refusebox").css("display","block");
            },300)
        })

        $(".tijiao").click(function(){
           var div=$("input[name='like']:checkbox");
            var reason="";
            div.each(function() {
                if ($(this).attr('checked')) {
                    reason += $(this).val() + ',';
                }
            })
            reason+=$("#reason").val();
            console.log(reason);
            $("#refusebox").css("display","none");
            $.ajax({
                url:"",
                post:"post",
                data:{
                    reason:reason,
                    dataid:dataid
                },
                success:function(data){
                    var data=JSON.parse(data);
                    if(data.status==1){
                        $(".jujue").each(function(){
                            if($(this).attr("data-id")==dataid){
                                $(this).parent().addClass("jujue_statas");
                                $(this).parent().html("已拒绝面试");
                            }
                        })
                    }
                }
            })
        })

        $(".tongyi").click(function(){
            var dataid=$(this).attr("data-id");
            $(this).parent().addClass("tongyi_statas");
            $(this).parent().html("已同意面试");
            $.ajax({
                url:"",
                post:post,
                data:{
                    dataid:dataid
                },
                success:function(data){
                    if(data.status==1){

                    }
                }
            })
        })

        //多选
        $(".checkbox input[type=checkbox]").on("click",function(){
            var _this=$(this);
            if(_this.attr("checked")){
                $(".pass").hide();
                _this.next().find(".iconfont use").attr("xlink:href","#icon-zhengque1");
            }else{
                $(".pass").show();
                _this.next().find(".iconfont use").attr("xlink:href","");
            }
        })

        $(".apply_more").click(function () {
            var _this = $(this);
            $.ajax({
                type:"post",
                url:"<?php  echo app_url('person/index/send_resume_ajax')?>",
                data:{
                    page:send_resume_page
                },
                success:function (data) {
                    var data = JSON.parse(data);
                    if(data.status==1){
                        send_resume_page +=1;
                        _this.before(data.content);
                    }
                }
            })
        })
    })
</script>
</html>