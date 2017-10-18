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
    <link href="<?php echo WL_URL_ARES;?>css/job_manage.css" rel="stylesheet">
    <!--<script src="http://api.map.baidu.com/api?v=2.0&ak=YrLaqu3cNGX66NynxPIWR9sS7n5ASDd1"></script>-->
    <title>收到简历</title>
</head>
<body bgcolor="#f4f4f4">
<?php  include wl_template('common/header');?>
<div class="width1200 p1content">
    <?php  include wl_template('common/company_nav');?>
    <div class="p1_left">

        <div class="con_list">
            <div class="list_top">
                <div class="job_send job_manage_send">
                    <span class="wenzi">发布的职位</span>
                    <svg class="icon ico_xiala" style="padding-top: 22px;color: #bbbbbb;padding-left: 10px">
                        <use xlink:href="#icon-xiala"></use>
                    </svg>
                    <div class="my_joblist">
                        <?php  if(is_array($jobs)) { foreach($jobs as $list) { ?>
                        <p class="option_select"><?php  echo $list['jobs_name'];?></p>
                        <?php  } } ?>
                    </div>
                </div>

                <div style="text-align: center">
                    <a class="release_new_jobbtn" href="<?php  echo app_url('company/index/job_manage')?>">取消发布</a>
                </div>
            </div>
            <!--收到的简历start------------------------------------------------------------------------------->
            <div class="list_content">

                <div class="release_job_content" id="release_jobbox">

                    <div class="release_list">
                        <span class="font999 resume_msg_name">职位名称</span>
                        <label class="general-input relative lable590">
                            <input type="text"  data-error="请输入职位名称"  name="job_name" placeholder="请输入职位名称" value="<?php  echo $jobs['jobs_name']?>">
                        </label>
                    </div>

                    <div class="release_list">
                        <span class="release_choice">选择模板</span>
                        <div class="chioce_template" style="display: none;">

                            <div class="chioce_template_search">
                                <span class="chioce_template_job job_chioced">网络编辑</span>
                                <span class="chioce_template_job">新媒体编辑</span>
                                <span class="chioce_template_job">文案编辑</span>
                                <div class="chioce_template_job_search">
                                    <div class="job_search_key">
                                        <svg class="icon" style="color: #bbbbbb;margin-left: 10px">
                                            <use xlink:href="#icon-sousuo"></use>
                                        </svg>
                                        <input class="input_job" id="job_key" style="width: 130px;outline: none" type="text" placeholder="输入关键字">
                                    </div>
                                    <span class="btn_sou" style="float: right;height: 40px;line-height: 40px">搜索</span>
                                </div>

                                <span class="close_template">
                                    收起模板
                                     <svg class="icon">
                                         <use xlink:href="#icon-shangjiantou"></use>
                                     </svg>
                                </span>
                            </div>

                            <div class="template_name">
                                <span class="template_names template_name_choiced">岗位职责</span>
                                <span class="template_names">任职要求</span>

                                <span class="new_template">
                                    <svg class="icon">
                                        <use xlink:href="#icon-huanyipi"></use>
                                    </svg>
                                    下一批
                                </span>
                            </div>


                            <div class="job_template_msg">
                                <div class="job_template_msgs">
                                    <span class="job_template_msgscontent">负责网站各文章编辑、网站日常文章添加</span>
                                    <span class="job_template_msgbtn">
                                        <svg class="icon">
                                            <use xlink:href="#icon-kongxingou"></use>
                                        </svg>
                                    </span>
                                    <div style="clear:both"></div>
                                </div>
                                <div class="job_template_msgs">
                                    <span class="job_template_msgscontent">负责网站各文章编辑、网站日常文章添加、内容更新、网站专题建设。</span>
                                    <span class="job_template_msgbtn">
                                        <svg class="icon">
                                            <use xlink:href="#icon-kongxingou"></use>
                                        </svg>
                                    </span>
                                    <div style="clear:both"></div>
                                </div>
                            </div>


                            <div class="do_job_template_msg">
                                <div class="job_template_msgs">
                                    <span class="job_template_msgscontent">负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加</span>
                                    <span class="job_template_msgbtn">
                                        <svg class="icon">
                                            <use xlink:href="#icon-kongxingou"></use>
                                        </svg>
                                    </span>
                                    <div style="clear:both"></div>
                                </div>
                                <div class="job_template_msgs">
                                    <span class="job_template_msgscontent">负责网站各文章编辑、网站日常文章添加、内容更新、网站专题建设。</span>
                                    <span class="job_template_msgbtn">
                                        <svg class="icon">
                                            <use xlink:href="#icon-kongxingou"></use>
                                        </svg>
                                    </span>
                                    <div style="clear:both"></div>
                                </div>
                            </div>



                        </div>
                    </div>

                    <div class="release_list">
                        <span class="font999 resume_msg_name">岗位职责</span>

                        <div class="lable590 job_duty">
                            <textarea  id="job_duty_textarea"   placeholder=""><?php  echo $jobs['duty']?></textarea>
                        </div>
                        <label class="general-input lable590 hiddenlable" style="height: 0;border: none;margin-left: 78px">
                            <input type="hidden"  id="job_duty_input"   data-error="请输入岗位职责"  name="job_duty" value="<?php  echo $jobs['duty']?>">
                        </label>

                    </div>

                    <div class="release_list">
                        <span class="font999 resume_msg_name">任职要求</span>

                        <div class="lable590 job_duty">
                            <textarea  id="do_job_duty_textarea"   placeholder=""><?php  echo $jobs['require']?></textarea>
                        </div>
                        <label class="general-input lable590 hiddenlable" style="height: 0;border: none;margin-left: 78px">
                            <input type="hidden"  id="do_job_duty_input" data-error="请输入岗位职责"  name="job_requirement" value="<?php  echo $jobs['require']?>">
                        </label>

                    </div>

                    <div class="release_list">
                        <span class="font999 resume_msg_name">招聘人数</span>
                        <label class="general-input relative lable590" style="width: 218px;">
                            <input type="text" maxlength="4" style="width: 180px" data-rg="^\+?[1-9][0-9]*$" data-warn="请输入大于0的整数"  data-error="请输入招聘人数"  name="job_persons" placeholder="请输入招聘人数" value="<?php  echo $jobs['number_range']?>">
                        </label>
                    </div>

                    <div class="person_changes">
                        <div class="width300 person_changes_left">
                            <span class="font999 resume_msg_name">工作性质</span>
                            <div class=" relative general-select " style="float: none">
                                <label class="general-input relative general-select" style="float: none">
                                    <input type="text" readonly="" data-error="请选择工作性质" name="job_nature" value="<?php  if($jobs['work_nature']) { ?><?php  echo $jobs['work_nature']?><?php  } else { ?>全职<?php  } ?>">
                                    <svg class="icon inputicon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                    </svg>
                                </label>
                                <div class="options noscend" style="width: 220px;top:48px">
                                    <div class="select-option" style="width: 217px"><span>全职</span></div>
                                    <div class="select-option" style="width: 217px"><span>兼职</span></div>
                                </div>
                            </div>
                        </div>
                        <div class="width300 person_changes_right">
                            <span class="font999 resume_msg_name">薪资待遇</span>
                            <div class=" relative general-select " style="float: none">
                                <label class="general-input relative " style="float: none">
                                    <input type="text"  id="salarychoice"  name="salary" value="<?php  if($jobs['wage_min'] && $jobs['wage_max']) { ?><?php  echo $jobs['wage_min']?>-<?php  echo $jobs['wage_max']?><?php  } else { ?>面谈<?php  } ?>">
                                    <svg class="icon inputicon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                    </svg>
                                </label>

                            </div>
                        </div>
                    </div>


                    <div class="person_changes">
                        <div class="width300 person_changes_left">
                            <span class="font999 resume_msg_name">工作经验</span>
                            <div class=" relative general-select " style="float: none">
                                <label class="general-input relative general-select" style="float: none">
                                    <input type="text" readonly="" data-error="请选择工作经验" name="job_exp" value="<?php  if($jobs['experience']) { ?><?php  echo $jobs['experience']?><?php  } else { ?>无<?php  } ?>">
                                    <svg class="icon inputicon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                    </svg>
                                </label>
                                <div class="options noscend" style="width: 220px;top:48px">
                                    <div class="select-option" style="width: 217px"><span>无</span></div>
                                    <div class="select-option" style="width: 217px"><span>1到3年</span></div>
                                    <div class="select-option" style="width: 217px"><span>3到5年</span></div>
                                    <div class="select-option" style="width: 217px"><span>5到10年</span></div>
                                    <div class="select-option" style="width: 217px"><span>10年以上</span></div>
                                </div>
                            </div>
                        </div>
                        <div class="width300 person_changes_right">
                            <span class="font999 resume_msg_name">学历要求</span>
                            <div class=" relative general-select " style="float: none">
                                <label class="general-input relative  general-select" style="float: none">
                                    <input type="text" readonly=""  name="education" value="<?php  if($jobs['education']) { ?><?php  echo $jobs['education']?><?php  } else { ?>本科<?php  } ?>">
                                    <svg class="icon inputicon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                    </svg>
                                </label>
                                <div class="options noscend" style="width: 220px;top:48px">
                                    <div class="select-option" style="width: 217px"><span>博士以上</span></div>
                                    <div class="select-option" style="width: 217px"><span>博士</span></div>
                                    <div class="select-option" style="width: 217px"><span>硕士</span> </div>
                                    <div class="select-option" style="width: 217px"><span>本科</span> </div>
                                    <div class="select-option" style="width: 217px"><span>专科</span> </div>
                                    <div class="select-option" style="width: 217px"><span>专科以下</span> </div>
                                </div>

                            </div>
                        </div>
                    </div>


                    <div class=" person_changes_left person_changes">
                        <span class="font999 resume_msg_name">现居地址</span>
                        <div class=" relative general-select " style="float: none">
                            <label class="general-input relative general-select" style="width: 140px;float: none">
                                <input type="text" readonly="" data-error="请选择现居住地址" name="city" value="<?php  echo $jobs['city']?>" placeholder="省/市" style="width: 120px">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 242px;top:48px">
                                <div class="cwfcityoptions1 cityoptions">

                                </div>
                            </div>
                        </div>
                        <label class="general-input relative" style="width: 266px;margin-left: 20px;float:right">
                            <input type="text" name="address"   placeholder="详细地址（选填）" value="<?php  echo $jobs['address']?>">
                        </label>
                        <div class=" relative general-select " style="float: right">
                            <label class="general-input relative general-select" style="width: 140px;float: none">
                                <input type="text" readonly="" id="area" name="area" value="<?php  echo $jobs['city_area']?>" placeholder="区/县" style="width: 120px">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 242px;top:48px">
                                <div class="cwfcityoptions1 areaoptions" >
                                    <div class="select-option" style="width:140px;"><span></span></div>
                                </div>
                            </div>
                        </div>



                    </div>

                    <input type="hidden"  id="job_id"  name="job_id" value="<?php  echo $jobs['id']?>">
                    <div class="release_list" style="text-align: center;margin-bottom: 80px">
                        <span class="savebtn public_bigbtn bg1aa" id="save_release" style="padding: 0 22px">确认发布</span>
                        <a class="cancelbtn" href="<?php  echo app_url('company/index/job_manage')?>">取消</a>
                    </div>

                </div>

            </div>
            <!--收到的简历end-------------------------------------------------------------------------->
        </div>
    </div>
    <?php  include wl_template('common/company_right');?>

</div>



</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/jquery.mousewheel.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>

<script src="<?php echo WL_URL_ARES;?>js/formdata.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/area.js" rel="script"></script>

<script src="<?php echo WL_URL_ARES;?>js/resume_manager.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/job_manage_release.js" rel="script"></script>
<script>
    $(function () {
        $(".wenzi,.ico_xiala").click(function () {
            if( $(".my_joblist").css("display")=="none"){
                $(".my_joblist").show();
            }else{
                $(".my_joblist").hide();
            }


        });
        $(".option_select").click(function () {
            $(".wenzi").html($(this).html());
            $(".my_joblist").hide();
        })


        $.fromdata("#release_jobbox","<?php  echo app_url('company/jobs/send_jobs')?>","#save_release",function(data){
            //do something
            var data = JSON.parse(data);
            if(data.status==1){
                window.location.href = "<?php  echo app_url('company/index/job_manage')?>";
            }
            console.log(data.content);
        })
        


    })
</script>
</html>