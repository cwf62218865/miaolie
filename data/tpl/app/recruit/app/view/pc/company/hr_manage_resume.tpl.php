<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/header.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/control.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/personal.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/resume.css" rel="stylesheet">
    <title>HR工作</title>
</head>
<body bgcolor="#f4f4f4">
<?php  include wl_template('common/header');?>
<div class="width1200 p1content">
    <?php  include wl_template('common/company_nav');?>
    <div class="p1_left">
        <div class="con_list">
            <div class="list_top">
                <div class="list_item_btn select" >等待面试</div>
                <div class="list_item_btn" style="margin-left: 2px">人才搜索</div>
                <div class="list_item_btn"  style="margin-left: 2px">面试评价</div>
                <div class="list_item_btn" style="margin-left: 2px">工作评价</div>
            </div>
            <!--等待面试start------------------------------------------------------------------------------->
            <div class="list_content" style="display: block;">
                <div class="time_selecter">
                    <div class="checkbox ico_rightstatas" style="display: inline-block;">
                        <label class="right_ico">
                            <input type="checkbox" name="like" value="">
                            <div class="checkboxbox">
                                <svg class="icon iconfont color1aa ico_right">
                                    <use xlink:href="#icon-zhengque1"></use>
                                </svg>
                            </div>
                        </label>
                    </div>
                    <div class="biezhu"> 今天</div>
                    <div class="checkbox ico_rightstatas" style="display: inline-block;">
                        <label class="right_ico1">
                            <input type="checkbox" name="like" value="">
                            <div class="checkboxbox">
                                <svg class="icon iconfont color1aa ico_right">
                                    <use xlink:href="#icon-zhengque1"></use>
                                </svg>
                            </div>
                        </label>
                    </div>
                    <div class="biezhu"> 明天</div>
                    <div class="select_date_option">
                        <div class="selectinput">
                            <input class="date_num" value="选择日期"  />
                        <svg class="icon ico66">
                            <use xlink:href="#icon-xiala"></use>
                        </svg>
                        </div>
                        <div class="datalist date_list">
                            <div class="option_date">日期不限</div>
                        </div>
                    </div>
                </div>

                <?php  if(is_array($resume)) { foreach($resume as $list) { ?>
                <?php  if($list['status']==3) { ?>
                <div class="list_item">
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
                            <div class="status1">
                                <div class="status_con">
                                    <p><span class="resume_name"><?php  echo $list['linker']?></span><span class="resume_tel"><?php  echo $list['link_phone']?></span></p>
                                    <p>面试时间：<span><?php  echo $list['interview_time']?></span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="review_statas" href="<?php  echo app_url('resume/index/print',array('uid'=>$list['uid']))?>" target="_blank">
                        <div class="tongyi2" data-id="1">打印简历</div>
                    </a>
                </div>
                <?php  } ?>
                <?php  } } ?>

                <div class="morejob">更多简历信息>></div>
            </div>
            <!--等待面试end-------------------------------------------------------------------------->
            <!--职位搜索start---------------------------------------------------------------------------->
            <div class="resume_content" style="display: none;background: none;">
                <div class="job_selecter">
                    <div class="job_secon">
                        <div class="inputcon">
                            <svg class="icon" style="color: #bbbbbb;margin-left: 20px">
                                <use xlink:href="#icon-sousuo"></use>
                            </svg>
                            <input class="input_job" type="text" placeholder="输入关键字">
                        </div>
                        <div class="btn_sou cur">搜索</div>
                    </div>
                    <div class="selecter_list">
                        <div class="select_option" style="margin-left: 30px;">
                            <div class="selectinput cur">
                                <input class="date_num" id="major_select" value="专业不限" readonly="readonly"/>
                                <svg class="icon ico66">
                                    <use xlink:href="#icon-xiala"></use>
                                </svg>
                            </div>
                            <div class="datalist  professional_list">
                                <div class="zimu_top">
                                    <div class="zimu_list">
                                        <label class="letters"></label>
                                        <label class="cur allmajor">不限</label>
                                    </div>
                                    <div class="job_secon">
                                        <div class="inputcon">
                                            <svg class="icon" style="color: #bbbbbb;margin-left: 20px">
                                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-sousuo"></use>
                                            </svg>
                                            <input class="input_job" type="text" placeholder="输入专业">
                                        </div>
                                        <div class="btn_sou cur">查找</div>
                                    </div>
                                </div>
                                <div class="major_con">
                                </div>
                            </div>
                        </div>
                        <div class="select_option" style="margin-left: 10px;">
                            <div class=" relative general-select selectinput" style="">
                                <label class="general-input relative " style="float: none">
                                    <input type="text" class="date_num" readonly="" id="salarychoice"  name="salary" value="工资面谈">
                                    <svg class="icon inputicon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                    </svg>
                                </label>
                            </div>
                        </div>
                        <div class="select_option" style="margin-left: 10px;">
                            <div class="selectinput cur">
                                <input class="date_num" id="apperience_select" value="经验不限"/>
                                <svg class="icon ico66">
                                    <use xlink:href="#icon-xiala"></use>
                                </svg>
                            </div>
                            <div class="datalist expirence" style="width: 120px;">
                            </div>
                        </div>
                        <div class="select_option" style="margin-left: 10px;">
                            <div class="selectinput cur">
                                <input class="date_num" id="didian_select" value="地点不限"/>
                                <svg class="icon ico66">
                                    <use xlink:href="#icon-xiala"></use>
                                </svg>
                            </div>
                            <div class="datalist cityitem" style="width: 120px;">
                                <div class="option_date">互联网/IT</div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php  if(is_array($resume1)) { foreach($resume1 as $list) { ?>
                <div class="list_item">
                    <div class="item_con">
                        <div class="touxiang_pic">
                            <img src="<?php  echo $list['headimgurl']?>" style="width: 100px;"/>
                        </div>
                        <div class="basic_massage">
                            <div class="bm_hang1">
                                <span class="name"><?php  echo $list['fullname']?></span>
                                <span class="view_i">查看</span>
                                <span class="basic_xx"><?php  if($list['sex']==1) { ?>男<?php  } else { ?>女<?php  } ?></span>
                                <span class="basic_xx" style="margin-left: 5px;"><?php  echo ceil(date('Y-m-d')-$resume['birthday'])?>岁</span>
                                <span class="basic_xx" style="margin-left: 25px;"><?php  echo $resume['education']?></span>
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
                            <p class="" style="margin-bottom: 20px;">
                                <span>期望工作地点：<label>重庆</label></span>
                            </p>
                        </div>
                    </div>
                    <div class="review_statas">
                        <div class="tongyi yaoqing_interview" data-id="1">邀请面试</div>
                        <div class="jujue shoucang_resume" data-id="1">收藏简历</div>
                    </div>
                </div>
                <?php  } } ?>
                <div class="morejob">更多简历信息>></div>
            </div>
            <!--职位搜索end---------------------------------------------------->
            <!--面试评价start---------------------------------------------------------------------------->
            <div class="pingjia_content" style="display: none;">
                <div class="list_item">
                    <div class="item_con">
                        <div class="pj_hang1">
                            <span class="job_name">Java工程师</span>
                            <span class="name_resume">张三/匿名</span>
                        </div>
                        <div class="pj_content">
                            <div class="content">公司环境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈吐得当，问题很有两分境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈</div>
                            <span class="icon_all cur">
                                <span class="ico_biaozhu">显示全部</span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-xiajiantou"></use>
                                </svg>
                            </span>
                        </div>
                        <div class="huifupinglun">
                            请输入回复评论内容
                            <textarea class="shurupl"></textarea>
                        </div>
                        <div class="pjxingxing">
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="1">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href="#icon-zhengque1"></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico red_i">
                                    <use xlink:href="#icon-haoping"></use>
                                </svg>
                                <label>好评</label>
                            </div>
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="2">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href=""></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico gree_i">
                                    <use xlink:href="#icon-zhongping"></use>
                                </svg>
                                <label>中评</label>
                            </div>
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="3">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href=""></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico grey_i">
                                    <use xlink:href="#icon-zhongping"></use>
                                </svg>
                                <label>差评</label>
                            </div>
                        </div>
                        <div class="pjbtn cur mspjbtn">回复评价</div>
                    </div>
                </div>
                <div class="list_item">
                    <div class="item_con">
                        <div class="pj_hang1">
                            <span class="job_name">Java工程师</span>
                            <span class="name_resume">张三/匿名</span>
                        </div>
                        <div class="pj_content">
                            <div class="content">公司环境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈吐得当，问题很有两分境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈</div>
                            <span class="icon_all cur">
                                <span style="float: left;">显示全部</span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-xiajiantou"></use>
                                </svg>
                            </span>
                        </div>
                        <div class="huifupinglun">
                            请输入回复评论内容
                            <textarea class="shurupl"></textarea>
                        </div>
                        <div class="pjxingxing">
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="1">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href="#icon-zhengque1"></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico red_i">
                                    <use xlink:href="#icon-haoping"></use>
                                </svg>
                                <label>好评</label>
                            </div>
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="2">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href=""></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico gree_i">
                                    <use xlink:href="#icon-zhongping"></use>
                                </svg>
                                <label>中评</label>
                            </div>
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="3">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href=""></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico grey_i">
                                    <use xlink:href="#icon-zhongping"></use>
                                </svg>
                                <label>差评</label>
                            </div>
                        </div>
                        <div class="pjbtn cur mspjbtn">回复评价</div>
                    </div>
                </div>
                <div class="list_item">
                    <div class="item_con">
                        <div class="pj_hang1">
                            <span class="job_name">Java工程师</span>
                            <span class="name_resume">张三/匿名</span>
                        </div>
                        <div class="pj_content">
                            <div class="content">公司环境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈吐得当，问题很有两分境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈</div>
                            <span class="icon_all cur">
                                <span style="float: left;">显示全部</span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-xiajiantou"></use>
                                </svg>
                            </span>
                        </div>
                        <div class="huifupinglun">
                            请输入回复评论内容
                            <textarea class="shurupl"></textarea>
                        </div>
                        <div class="pjxingxing">
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="1">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href="#icon-zhengque1"></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico red_i">
                                    <use xlink:href="#icon-haoping"></use>
                                </svg>
                                <label>好评</label>
                            </div>
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="2">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href=""></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico gree_i">
                                    <use xlink:href="#icon-zhongping"></use>
                                </svg>
                                <label>中评</label>
                            </div>
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="3">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href=""></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico grey_i">
                                    <use xlink:href="#icon-zhongping"></use>
                                </svg>
                                <label>差评</label>
                            </div>
                        </div>
                        <div class="pjbtn cur mspjbtn">回复评价</div>
                    </div>
                </div>
                <div class="list_item">
                    <div class="item_con">
                        <div class="pj_hang1">
                            <span class="job_name">Java工程师</span>
                            <span class="name_resume">张三/匿名</span>
                        </div>
                        <div class="pj_content">
                            <div class="content">公司环境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈吐得当，问题很有两分境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈境高大上，面试效率非常高，填写了简历之后等了两分钟后，HR就开
                                始面谈，HR谈吐得当，问题很有深度HR谈</div>
                            <span class="icon_all cur">
                                <span style="float: left;">显示全部</span>
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-xiajiantou"></use>
                                </svg>
                            </span>
                        </div>
                        <div class="huifupinglun">
                            请输入回复评论内容
                            <textarea class="shurupl"></textarea>
                        </div>
                        <div class="pjxingxing">
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="1">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href="#icon-zhengque1"></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico red_i">
                                    <use xlink:href="#icon-haoping"></use>
                                </svg>
                                <label>好评</label>
                            </div>
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="2">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href=""></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico gree_i">
                                    <use xlink:href="#icon-zhongping"></use>
                                </svg>
                                <label>中评</label>
                            </div>
                            <div class="one_pj">
                                <div class="checkbox" style="display: inline-block;float: left">
                                    <label class="">
                                        <input type="checkbox" name="like" value="3">
                                        <div class="checkboxbox">
                                            <svg class="icon iconfont color1aa ico_right">
                                                <use xlink:href=""></use>
                                            </svg>
                                        </div>
                                    </label>
                                </div>
                                <svg class="icon flover_ico grey_i">
                                    <use xlink:href="#icon-zhongping"></use>
                                </svg>
                                <label>差评</label>
                            </div>
                        </div>
                        <div class="pjbtn cur mspjbtn">回复评价</div>
                    </div>
                </div>
                <div class="morejob">更多简历信息>></div>
            </div>
            <!--面试评价end---------------------------------------------------->
            <!--工作评价start---------------------------------------------------------------------------->
            <div class="gzpj_content" style="display: none;">
                <div class="list_item gzpj">
                    <div class="item_con">
                        <div class="touxiang_pic">
                            <img src="<?php echo WL_URL_ARES;?>images/resume_tx.png" style="width: 100px;"/>
                        </div>
                        <div class="basic_massage">
                            <div class="bm_hang1">
                                <span class="name">张雪茹</span>
                                <span class="basic_xx" style="float: right">本科</span>
                            </div>
                            <div class="bm_hang2">
                                <span class="basic_xx">女</span>
                                <span class="basic_xx" style="margin-left: 10px;">22岁</span>
                            </div>
                            <div class="bm_hang3">
                                <span class="basic_xx">重庆大学</span>
                                <span class="basic_xx"  style="margin-left: 16px;">广播电视新闻学</span>
                            </div>
                        </div>
                        <div class="relative general-select pj_hang">
                            <div class="tit_gzpj">离职时间</div>
                            <label class="general-input relative general-select">
                                <input type="text" readonly=""  value="2017.06" class="time_zaizhi">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use  xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options" style="left: 80px;width: 242px;top: 48px">
                                <div class="cwftimeoptions" style="height: 148px;overflow-y: auto;width: 90px;overflow-x: hidden;"></div>
                                <div class="cwfmonths" style="height: 147px;">
                                    <span>1月</span>
                                    <span>2月</span>
                                    <span>3月</span>
                                    <span>4月</span>
                                    <span>5月</span>
                                    <span>6月</span>
                                    <span>7月</span>
                                    <span>8月</span>
                                    <span>9月</span>
                                    <span>10月</span>
                                    <span>11月</span>
                                    <span>12月</span>
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <div class="tit_gzpj">任职岗位</div>
                            <label class="general-input">
                                <input type="text" style="width: 224px" placeholder="请输入任职岗位"  class="gangwei">
                            </label>
                        </div>
                        <div class="title_bx">任职期间工作表现</div>
                        <div class="huifupinglun" style="margin-top: 16px;">
                            请输入职员工作表现
                            <textarea class="shurupl biaoxian"></textarea>
                        </div>
                        <div class="pjbtn cur pjmargin send_value">发布评价</div>
                    </div>
                </div>
                <div class="list_item gzpj">
                    <div class="item_con">
                        <div class="touxiang_pic">
                            <img src="<?php echo WL_URL_ARES;?>images/resume_tx.png" style="width: 100px;"/>
                        </div>
                        <div class="basic_massage">
                            <div class="bm_hang1">
                                <span class="name">张雪茹</span>
                                <span class="basic_xx" style="float: right">本科</span>
                            </div>
                            <div class="bm_hang2">
                                <span class="basic_xx">女</span>
                                <span class="basic_xx" style="margin-left: 10px;">22岁</span>
                            </div>
                            <div class="bm_hang3">
                                <span class="basic_xx">重庆大学</span>
                                <span class="basic_xx"  style="margin-left: 16px;">广播电视新闻学</span>
                            </div>
                        </div>
                        <div class="relative general-select pj_hang">
                            <div class="tit_gzpj">离职时间</div>
                            <label class="general-input relative general-select">
                                <input type="text" readonly=""  value="2017.06" class="time_zaizhi">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use  xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options" style="left: 80px;width: 242px;top: 48px">
                                <div class="cwftimeoptions" style="height: 148px;overflow-y: auto;width: 90px;overflow-x: hidden;"></div>
                                <div class="cwfmonths" style="height: 147px;">
                                    <span>1月</span>
                                    <span>2月</span>
                                    <span>3月</span>
                                    <span>4月</span>
                                    <span>5月</span>
                                    <span>6月</span>
                                    <span>7月</span>
                                    <span>8月</span>
                                    <span>9月</span>
                                    <span>10月</span>
                                    <span>11月</span>
                                    <span>12月</span>
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <div class="tit_gzpj">任职岗位</div>
                            <label class="general-input">
                                <input type="text" style="width: 224px" placeholder="请输入任职岗位"   class="gangwei">
                            </label>
                            <div class="options" style="height: 0px;"></div>
                        </div>
                        <p class="title_bx">任职期间工作表现</p>
                        <div class="huifupinglun" style="margin-top: 16px;">
                            请输入职员工作表现
                            <textarea class="shurupl biaoxian"></textarea>
                        </div>
                        <div class="pjbtn cur pjmargin send_value">发布评价</div>
                    </div>
                </div>
            </div>
            <!--工作评价end---------------------------------------------------->
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
                <button class="tijiao1"  id="shoucang">确定</button>
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
                        <input type="text" id="contacts_name"  value="默认注册联系人">
                    </label>
                </div>
                <div class="in_hang">
                    <span class="biaoti">联系电话</span>
                    <label class="general-input" >
                        <input type="text" id="contacts_tel" value="默认注册电话">
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
                        <div class="options cityoption" style="height: 185px;overflow-y: auto;"></div>
                    </div>
                    <div class=" relative general-select district1" style="float: right;">
                        <label class="general-input relative general-select review_district">
                            <input type="text" readonly="" id="city_area" placeholder="区县">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options districtoption" style="height: 185px;overflow-y: auto;"></div>
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
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/jquery.mousewheel.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/login_reg_account.js"></script>
<script src="<?php echo WL_URL_ARES;?>js/resume_reg3.js"  rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/area.js"></script>
<script src="<?php echo WL_URL_ARES;?>js/zimu.js"></script>
<script src="<?php echo WL_URL_ARES;?>js/hr_manage_resume.js"></script>
<script src="<?php echo WL_URL_ARES;?>js/formdata.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/resume_reg1.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/job_manage_release.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/resume_picker.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/date_list.js" rel="script"></script>

<script>
    $(function () {
        send_resume();
    })

    $('body').on("mousedown",".general-select input",function(){
        var _this=$(this);
        year="";
        if(_this.closest(".general-select").next().height()=="0"){
            $(".options").css("height","0px");
            _this.closest(".general-select").next().css("height","180px");
        }else {
            _this.closest(".general-select").next().css("height","0px");
        }

    });

    //面试邀请
    $("#send_review").click(function () {
        var reviewtime=$("#review_time").val();
        var contacts_name=$("#contacts_name").val();
        var contacts_tel=$("#contacts_tel").val();
        var city=$("#city").val();
        var city_area=$("#city_area").val();
        var detail_address=$("#detail_address").val();

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

        $.ajax({
            url:"",
            type:"post",
            data:{
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


    //收藏备注
    $("#shoucang").click(function () {
        var item=$(this).closest("#beizhubox");
        var beizhu=item.find(".scbz_input").val();
        var data_flag=item.attr("data-id");

        var item=$(this).closest("")
        if(beizhu==""){
            alert("请填写备注！")
            return;
        }
        $("#beizhubox").hide();
        var lists=$(".resume_content .list_item");
        lists.each(function () {
            if($(this).attr("data-id")==data_flag){
                $(this).find(".beizhu_content").val(beizhu);
            }
        })

        $.ajax({
            url:"",
            type:"post",
            data:{
                beizhu:beizhu
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
</script>
</html>