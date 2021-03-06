<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/header.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/control.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/personal.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/job_apply.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/job_detail.css" rel="stylesheet">
    <title>职位详情</title>
</head>
<body bgcolor="#f4f4f4">
<?php  include wl_template('common/header');?>
<div class="width1200 p1content">

    <div class="p1_left" style="margin-top: 10px">
        <div class="con_list">

            <!--职位详情---------------------------------------------------------------------------->
                <div class="width730" style="margin-left: 70px">
                    <div style="margin-top: 70px">
                        <span class="font34 color333"><?php  echo $jobs['jobs_name']?></span>
                        <a href="#" class="company_msgbtn">该企业信用详情</a>


                        <span class="collections">
                            <svg class="icon">
                                <use xlink:href="#icon-tishi"></use>
                            </svg>
                            举报
                        </span>



                        <span class="collections ">
                            <svg class="icon">
                                <use xlink:href="#icon-fenxiang"></use>
                            </svg>
                            分享

                        </span>

                        <span class="collections collection" data-id="<?php  echo $jobs['id']?>">
                            <svg class="icon">
                                <use xlink:href="#icon-shoucangguanli"></use>
                            </svg>
                            收藏
                        </span>
                    </div>
                    <div class="relative" id="sharebox">
                        <div class="share">
                                <span class="sharebtn">
                                    <svg class="icon">
                                        <use xlink:href="#icon-qq"></use>
                                    </svg>
                                </span>
                                <span class="sharebtn">
                                    <svg class="icon">
                                        <use xlink:href="#icon-weixin"></use>
                                    </svg>
                                </span>
                                <span class="sharebtn">
                                    <svg class="icon">
                                        <use xlink:href="#icon-weibo"></use>
                                    </svg>
                                </span>
                                <span class="sharebtn">
                                    <svg class="icon">
                                        <use xlink:href="#icon-pengyouquan"></use>
                                    </svg>
                                </span>
                                <span class="sharebtn">
                                    <svg class="icon">
                                        <use xlink:href="#icon-QQkongjian"></use>
                                    </svg>
                                </span>
                            <em></em><i></i>
                        </div>
                    </div>

                    <div style="margin-top: 20px">
                        <span class="jobs_salary"><?php  echo $jobs['wage_min']?>K-<?php  echo $jobs['wage_max']?>K</span>
                        <span class="jobs_requirement"><?php  echo $jobs['education']?></span>
                        <span class="jobs_requirement"><?php  echo $jobs['experience']?></span>
                        <span class="jobs_requirement"><?php  echo $jobs['work_nature']?></span>
                        <span class="jobs_requirement"><?php  echo $jobs['number_range']?>人</span>
                        <span class="jobs_time">
                            <svg class="icon" style="font-size: 16px">
                                <use xlink:href="#icon-quanzhi"></use>
                            </svg>
                            刷新于：<?php  echo date('Y-m-d',$jobs['updatetime'])?>
                        </span>
                    </div>


                    <div class="color666" style="margin-top: 30px">
                        工作地点：<?php  echo $jobs['city'].$jobs['city_area'].$jobs['address']?>
                    </div>

                    <div style="margin-top: 20px" data-id="<?php  echo $jobs['uid']?>">
                        <?php  if(is_array(explode(',',$jobs['tag']))) { foreach(explode(',',$jobs['tag']) as $list) { ?>
                        <span class="welfare_label"><?php  echo $list;?></span>
                        <?php  } } ?>
                        <span class="<?php  if($jobs_apply) { ?>delivery_resume1<?php  } else { ?>delivery_resume<?php  } ?>" data-id="<?php  echo $jobs['id']?>"><?php  if($jobs_apply) { ?>已投递<?php  } else { ?>投递简历<?php  } ?></span>
                    </div>



                    <!--工作职责-->
                    <div class="jobs_detail_title">工作职责</div>

                    <div style="margin-top: 36px">
                        <?php  if(is_array(explode("\n",$jobs['duty']))) { foreach(explode("\n",$jobs['duty']) as $list) { ?>
                        <div class="jobs_content"><?php  echo $list;?></div>
                        <?php  } } ?>
                    </div>

                    <!--岗位要求-->
                    <div class="jobs_detail_title">岗位要求</div>

                    <div style="margin-top: 36px">
                        <?php  if(is_array(explode("\n",$jobs['require']))) { foreach(explode("\n",$jobs['require']) as $list) { ?>
                        <div class="jobs_content"><?php  echo $list;?></div>
                        <?php  } } ?>
                    </div>


                    <!--面试评价-->
                    <div class="jobs_detail_title1">面试评价（3）</div>

                    <div class="jobs_detail" style="margin-top: 36px">
                        <div class="interviewter_head">
                            <div class="interviewter_header">
                                <img src="<?php echo WL_URL_ARES;?>images/resume_tx.png">
                            </div>
                            <div style="margin-top: 12px">匿名</div>
                        </div>

                        <div class="interviewter_content">
                            <div class="comment_star">
                                <span class="color999">信息真实：</span>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorddd">
                                    <use xlink:href="#icon-pingfenbanfen"></use>
                                </svg>
                            </div>

                            <div class="comment_star">
                                <span class="color999">公司环境：</span>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorddd">
                                    <use xlink:href="#icon-pingfenbanfen"></use>
                                </svg>
                            </div>

                            <div class="comment_star">
                                <span class="color999">面试官：</span>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorffc549" >
                                    <use xlink:href="#icon-pingfen"></use>
                                </svg>
                                <svg class="icon colorddd">
                                    <use xlink:href="#icon-pingfenbanfen"></use>
                                </svg>
                            </div>


                            <div style="margin-top: 16px">
                                <span class="welfare_label">年终奖</span>
                                <span class="welfare_label">住房公积金</span>
                                <span class="welfare_label">带薪年假</span>
                            </div>
                            <div class="color666" style="margin-top: 20px;line-height: 24px">
                                <span class="colorbbb">[面试过程]</span>
                                两个面试官一起面的，他们技术还是很nice的，就是态度更好一点就好了，一个一直在皱眉头，一个面无表情。hr态度还是非常好的，很亲切，不过面试自己没有发挥好，下次还有机会再去。
                            </div>
                            <div style="margin-top: 16px">
                                <span class="good color09c" data-id="1">
                                    <svg class="icon">
                                        <use xlink:href="#icon-zan1"></use>
                                    </svg>
                                    （351）
                                </span>
                            </div>



                        </div>




                    </div>

                    <div id="page">

                    </div>
                    <!--<div class="pages_btn" style="float: none;margin-left: 0;text-align: center">-->
                        <!--<span class="pre_page no_page">上一页</span>-->
                        <!--<span class="page select">1</span>-->
                        <!--<span class="page">2</span>-->
                        <!--<span class="page">3</span>-->
                        <!--<span class="page">4</span>-->
                        <!--<span class="page">5</span>-->
                        <!--<span class="page1">…</span>-->
                        <!--<span class="page">15</span>-->
                        <!--<span class="next_page">下一页</span>-->
                    <!--</div>-->
                </div>
            <!--职位详情end---------------------------------------------------->


        </div>
    </div>


    <div class="p1_right"  style="margin-top: 20px">


        <div class="part_one">

            <div class="company_logo" style="float: none">
                <img src="<?php  echo $company['headimgurl']?>" >
            </div>

            <div class="company_recruit_msg">
                <div class="font18 color333" style="margin-top: 20px">
                    <?php  echo $company['companyname']?>
                    <svg class="icon" style="font-size: 22px;color: #09c">
                        <use xlink:href="#icon-renzheng"></use>
                    </svg>
                </div>
                <div style="margin-top: 14px"><img src="<?php echo WL_URL_ARES;?>images/surper_employer.png"></div>

                <div class="company_recruit">
                    <span class="colorbbb">公司信用</span>
                    <span class="company_recruit_result">750分</span>
                </div>

                <div class="company_recruit">
                    <span class="colorbbb">所属行业</span>
                    <span class="company_recruit_result"><?php  echo $company['industry']?></span>
                </div>

                <div class="company_recruit">
                    <span class="colorbbb">公司规模</span>
                    <span class="company_recruit_result"><?php  echo $company['number']?></span>
                </div>


                <div class="recruit_result">
                    <span>
                        <a href="#" class="results">5个</a>
                        <div class="color999">在招职位</div>
                    </span>

                    <span>
                        <a href="#" class="results">5条</a>
                        <div class="color999">面试评价</div>
                    </span>

                    <span>
                        <a href="#" class="results " style="color: #999">昨天</a>
                        <div class="color999">企业最近登录</div>
                    </span>
                </div>
            </div>

        </div>


        <div class="part_one">
            <div class="title-top">
                <label class="top_con">相似职位</label>
            </div>
            <div class="items_list">
                <div class="logo1">
                    <img src="<?php echo WL_URL_ARES;?>images/qiyelogo.png" class="logopic">
                </div>
                <div class="company_name">
                    <p class="job_n">Java工程师</p>
                    <p class="job_s">5-8K</p>
                    <p class="companyn nowrap">北京金三顺科技有限公司</p>
                </div>
            </div>
            <div class="items_list">
                <div class="logo1">
                    <img src="<?php echo WL_URL_ARES;?>images/qiyelogo.png" class="logopic">
                </div>
                <div class="company_name">
                    <p class="job_n">Java工程师</p>
                    <p class="job_s">5-8K</p>
                    <p class="companyn nowrap">北京金三顺科技有限公司</p>
                </div>
            </div>
        </div>
        <div class="part_one">
            <div class="title-top">
                <label class="top_con">职业导师推荐</label>
            </div>
            <div class="daoshi_list">
                <div class="img_pic">
                    <img src="<?php echo WL_URL_ARES;?>images/resume_tx.png" class="touxiang">
                </div>
                <p class="dsname">马化腾<label class="zhiwei">项目总监</label></p>
                <p class="miaoshu">高级营销总监</p>
                <p class="miaoshu">2015内地最佳CEO</p>
                <p class="miaoshu">全球30位最佳CEO上榜</p>
            </div>
            <div class="daoshi_list">
                <div class="img_pic">
                    <img src="<?php echo WL_URL_ARES;?>images/resume_tx.png" class="touxiang">
                </div>
                <p class="dsname">马化腾<label class="zhiwei">项目总监</label></p>
                <p class="miaoshu">高级营销总监</p>
                <p class="miaoshu">2015内地最佳CEO</p>
                <p class="miaoshu">全球30位最佳CEO上榜</p>
            </div>
            <div class="daoshi_list">
                <div class="img_pic">
                    <img src="<?php echo WL_URL_ARES;?>images/resume_tx.png" class="touxiang">
                </div>
                <p class="dsname">马化腾<label class="zhiwei">项目总监</label></p>
                <p class="miaoshu">高级营销总监</p>
                <p class="miaoshu">2015内地最佳CEO</p>
                <p class="miaoshu">全球30位最佳CEO上榜</p>
            </div>
        </div>

    </div>


    <!--举报-->
    <div class="modalbox" id="modalbox" style="display: none;">
        <div class="modal" style="width: 496px;margin-left: -248px;height: auto;padding-bottom: 20px">
            <span class="modalclose">
                <img src="<?php echo WL_URL_ARES;?>images/close.png"/>
            </span>
            <p class="title_content" style="margin-top: 34px">举报该职位</p>
            <p class="color666" style="margin-top: 34px;text-align: center">若你发现本职位存在违规现象，欢迎举报</p>

            <div style="margin-left: 40px;margin-top: 34px">
                <span class="color666">举报原因</span>
                <div class=" relative general-select " style="float: none">
                    <label class="general-input relative general-select" style="float: none;width: 330px">
                        <input class="relative" type="text" readonly=""  name="company_scale" value="实际与描述不符" style="width: 310px;z-index: 10">
                        <svg class="icon inputicon" aria-hidden="true">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                        </svg>
                    </label>
                    <div class="options" style="width: 332px;top:48px">
                        <div class="select-option" style="width: 330px"><span>培训机构</span></div>
                        <div class="select-option" style="width: 330px"><span>实际与描述不符</span></div>
                    </div>
                </div>
            </div>


            <div style="margin-left: 40px;margin-top: 34px">
                <span class="color666" style="float: left">详细描述</span>
                <div class="cwfreg4content" style="display: inline-block;margin-left: 24px;height: 120px;border: 1px solid #f5f5f5;width: 330px;background-color: #f5f5f5">
                    <textarea   class="cwftextarea" id="companymsg_introduce"  placeholder="请输入详细描述"></textarea>
                </div>
                <input type="hidden" name="report_content" id="companymsg_introduceinput">


            </div>


            <div class="person_changes"  style="margin-top: 30px;text-align: center">
                <span class="savebtn public_bigbtn bg1aa" id="save_company_nomsg" style="padding: 0 30px 0 30px">提交</span>
                <span class="cancelbtn" style="margin-left: 30px;color: #09c;cursor: pointer">取消</span>
            </div>


        </div>
    </div>
    <!--举报-->

</div>



</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/formdata.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/job_detail.js" rel="script"></script>

<script>
$(function () {

    //举报提交
    $.fromdata("#modalbox","test.php","#save_company_nomsg",function(data){
        //do something
    })
    $(".collections").eq(2).on("click",function(){
        hint("success","收藏成功。");
        setTimeout(function(){$(".promptbox").remove()},2000);
    })


    $("#page").html(pages(1,7));

    $(".delivery_resume").click(function () {
        var data_id = $(this).attr('data-id');
        var uid = $(this).parent().attr('data-id');
        $.ajax({
            type:"post",
            url:"<?php  echo app_url('person/index/post_resume')?>",
            data:{
                data_id:data_id,
                uid:uid
            },
            success:function (data) {
                var data=JSON.parse(data);
                if(data.status==1){
                    $(".delivery_resume").html("已投递").removeClass("delivery_resume").addClass("delivery_resume1").unbind("click");
                }
            }
        })
    })

    $(".collection").click(function () {
        var data_id = $(this).attr("data-id");
        $.ajax({
            type:"post",
            url:"<?php  echo app_url('person/collection/collection_jobs')?>",
            data:{
                jobs_id:data_id
            },
            success:function (data) {
                var data = JSON.parse(data);
                console.log(data.content);
                if(data.status==1){
                    console.log(data.content);
                }
            }
        })
    })
})
</script>
</html>