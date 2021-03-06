<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/header.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/control.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/reguser1.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/resume.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/personal.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/personal1.css" rel="stylesheet">
    <!--<script src="http://html5media.googlecode.com/svn/trunk/src/html5media.min.js"></script>-->
    <title>简历管理</title>
    <style>
        .abnormal .formtip{
            position: absolute;
            margin-top: 0;
            top: -30px;
        }
    </style>
</head>
<body bgcolor="#f4f4f4">
<?php  include wl_template('common/header');?>
<div class="width1200 p1content">
    <?php  include wl_template('common/person_nav');?>
    <div class="p1_left">

        <div class="con_list">

            <!--左侧菜单-->

            <div class="resume_left_menu">
                <a href="<?php  echo app_url('resume/index',array('uid'=>$resume['uid']))?>" class="menus">
                    <svg class="icon icon_item" aria-hidden="true">
                        <use xlink:href="#icon-genghuanmoban"></use>
                    </svg>
                    <div>
                        更换模板
                    </div>
                </a>
                <a href="<?php  echo app_url('resume/index',array('uid'=>$resume['uid']))?>" class="menus">
                    <svg class="icon icon_item" aria-hidden="true">
                        <use xlink:href="#icon-xiazaijianli"></use>
                    </svg>
                    <div>
                        下载简历
                    </div>
                </a>
                <a href="<?php  echo app_url('resume/index/print',array('uid'=>$_SESSION['uid']))?>" class="menus" target="_blank">
                    <svg class="icon icon_item" aria-hidden="true">
                        <use xlink:href="#icon-dayinjianli"></use>
                    </svg>
                    <div>
                        打印简历
                    </div>
                </a>

                <div class="menus" id="post_envelope">
                    <svg class="icon icon_item" aria-hidden="true">
                        <use xlink:href="#icon-fasongyouxiang"></use>
                    </svg>
                    <div>
                        发送邮箱
                    </div>
                </div>

                <div class="menus">
                    <svg class="icon icon_item" aria-hidden="true">
                        <use xlink:href="#icon-fanhuidingbu"></use>
                    </svg>
                    <div>
                        返回顶部
                    </div>
                </div>
            </div>


            <!--头像-->
            <div class="resume_header">
                <div class="resume_manage_header">
                    <span class="resume_manage_headerimg"><img  src="<?php  if($resume['headimgurl']) { ?><?php  echo $resume['headimgurl']?><?php  } else { ?><?php echo WL_URL_ARES;?>images/resume_head.png<?php  } ?>">
                    </span>
                    <div class="img_con">
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-xiangji"></use>
                        </svg>
                    </div>
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
                        <span class="basic_msg_contents"><?php  echo ceil(date('Y-m-d')-$resume['birthday'])?>岁</span>
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
                <span class="addandeditbtn" id="edit_person_msg">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xiugai"></use>
                    </svg>
                    修改
                </span>
            </div>


            <div  id="person_msgbox" class="width670 basic_msg" style="display: none">
                <div class="sexbox">
                    <span class="sexbox_span <?php  if($resume['sex']==1) { ?>radio_sec<?php  } ?>">男生</span>
                    <span class="sexbox_span <?php  if($resume['sex']==2) { ?>radio_sec<?php  } ?>">女生</span>
                    <input type="hidden" id="sex" name="sex" value="<?php  if($resume['sex']==2) { ?>女生<?php  } else { ?>男生<?php  } ?>">
                </div>


                <div class="person_changes" style="margin-top: 30px">
                    <div class="width300 person_changes_left">
                        <span class="font999 resume_msg_name">姓名</span>
                        <label class="general-input relative">
                            <input type="text" name="user_name"  data-error="请输入姓名"  placeholder="姓名" value="<?php  echo $resume['fullname']?>">
                        </label>
                    </div>
                    <div class="width300 person_changes_right">
                        <span class="font999 resume_msg_name">目前状态</span>
                        <div class=" relative general-select " style="float: none">
                            <label class="general-input relative general-select" style="float: none">
                                <input type="text" readonly=""  name="job_status" value="<?php  if($resume['work_status']) { ?><?php  echo $resume['work_status']?><?php  } else { ?>找工作中<?php  } ?>">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options noscend" style="width: 220px;top:48px">
                                <div class="select-option"><span>找工作中</span></div>
                                <div class="select-option"><span>在职</span> </div>
                                <div class="select-option"><span>离职中</span> </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="person_changes">
                    <div class="width300 person_changes_left">
                        <span class="font999 resume_msg_name">出生年月</span>
                        <div class=" relative general-select " style="float: none">
                            <label class="general-input relative general-select" style="float: none">
                                <input type="text" readonly="" data-error="请选择出生年月" name="birthday" value="<?php  echo $resume['birthday']?>">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 248px;top:48px">
                                <div class="cwftimeoptions">

                                </div>
                                <div class="cwfmonths">
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
                    </div>
                    <div class="width300 person_changes_right">
                        <span class="font999 resume_msg_name">民族</span>
                        <div class=" relative general-select " style="float: none">
                            <label class="general-input relative general-select" style="float: none">
                                <input type="text" readonly="" data-error="请选择民族" name="family_name" value="<?php  if($resume['nation']) { ?><?php  echo $resume['nation']?><?php  } else { ?>汉族<?php  } ?>">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options noscend" style="width: 220px;top:48px">
                                <div class="cwfnationaloptions" style="width: 214px">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="person_changes">
                    <div class="width300 person_changes_left">
                        <span class="font999 resume_msg_name">籍贯</span>
                        <div class=" relative general-select " style="float: none">
                            <label class="general-input relative general-select" style="float: none">
                                <input type="text" readonly="" data-error="请选择籍贯" name="placeoforigin" value="<?php  echo $resume['origin_place']?>">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 248px;top:48px">
                                <div class="cwfcityoptions">

                                </div>
                                <div class="cwfarea">
                                    <span>请先选择城市</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="width300 person_changes_right">
                        <span class="font999 resume_msg_name">政治面貌</span>
                        <div class=" relative general-select " style="float: none">
                            <label class="general-input relative general-select" style="float: none">
                                <input type="text" readonly  data-error="请选择政治面貌" name="identity" value="<?php  if($resume['political_status']) { ?><?php  echo $resume['political_status']?><?php  } else { ?>团员<?php  } ?>">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options noscend" style="width: 220px;top:48px">
                                <div class='select-option' ><span>团员</span></div>
                                <div class='select-option' ><span>党员</span></div>
                                <div class='select-option'><span>群众</span></div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="person_changes">
                    <div class="width300 person_changes_left">
                        <span class="font999 resume_msg_name">联系电话</span>
                        <label class="general-input">
                            <input type="text" data-warn="请输入11位手机号码" data-error="请输入联系电话" data-rg="^1[3|5|7|8][0-9]\d{8}$" name="moblie" placeholder="联系电话" value="<?php  echo $resume['telphone']?>">
                        </label>
                    </div>
                    <div class="width300 person_changes_right">
                        <span class="font999 resume_msg_name">电子邮箱</span>
                        <label class="general-input">
                            <input type="text" name="email" data-warn="请输入邮箱" data-error="输入邮箱有误" data-rg="^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$" value="<?php  echo $resume['email']?>" placeholder="请输入电子邮箱">
                        </label>
                    </div>
                </div>


                <div class="person_changes">
                    <div class=" person_changes_left">
                        <span class="font999 resume_msg_name">现居地址</span>
                        <div class=" relative general-select " style="float: none">
                            <label class="general-input relative general-select" style="width: 140px;float: none">
                                <input type="text" readonly="" data-error="请选择现居住地址" name="city" value="<?php  echo $resume['city']?>" placeholder="省/市" style="width: 120px">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 248px;top:48px">
                                <div class="cwfcityoptions1 cityoptions">

                                </div>
                            </div>
                        </div>
                        <label class="general-input relative" style="width: 256px;margin-left: 20px;float:right">
                            <input type="text" name="address_msg"   placeholder="详细地址（选填）" value="<?php  echo $resume['address']?>">
                        </label>
                        <div class=" relative general-select " style="float: right">
                            <label class="general-input relative general-select" style="width: 140px;float: none">
                                <input type="text" readonly="" id="area" name="area" value="<?php  echo $resume['city_area']?>" placeholder="区/县" style="width: 120px">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 248px;top:48px">
                                <div class="cwfcityoptions1 areaoptions" >
                                    <div class="select-option" style="width:140px;"><span></span></div>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>


                <div class="person_changes">
                    <div class=" person_changes_left">
                        <span class="font999 resume_msg_name" style="float: left">自我介绍</span>


                        <div class="cwfreg4content" style="display: inline-block;margin-left: 20px;height: 64px;border: 1px solid #f5f5f5;width: 589px;background-color: #f5f5f5">
                            <textarea style="width: 546px"  class="cwftextarea" name="introduce" placeholder="一句话介绍自己，告诉我为什么选择您而不是别人" ><?php  echo $resume['introduce']?></textarea>
                        </div>

                        <div  class="cwftextareatip" style="height: auto;margin-top: 10px;padding-bottom: 13px">
                            <label class="general-input relative" style="width: 260px;;margin-left: 80px;height: 0;border: none">
                                <input type="hidden" name="introduce" id="introduce" data-error="请输入自我介绍" value="<?php  echo $resume['introduce']?>">
                            </label>
                            <span class="cwftextareamsg">还可输入<span id="textareanum" style="color: #1aa9d2">60</span>字</span>
                        </div>
                    </div>
                </div>

                <div class="person_changes">
                    <div class=" person_changes_left">
                        <span class="font999 resume_msg_name" style="float: left;height: 1px"></span>
                        <div style="display: inline-block;margin-left: 20px">
                            <span class="savebtn public_bigbtn bg1aa" id="save_person_msg" style="padding: 0 30px 0 30px">保存</span>
                            <span class="cancelbtn">取消</span>
                        </div>
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
                <!--<span class="addandeditbtn" id="edit_wanted_job">-->
                    <!--<svg class="icon" aria-hidden="true">-->
                        <!--<use xlink:href="#icon-tianjia"></use>-->
                    <!--</svg>-->
                    <!--添加-->
                <!--</span>-->
                <span class="addandeditbtn" id="edit_wanted_job">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xiugai"></use>
                    </svg>
                    修改
                </span>
            </div>


            <div  id="wanted_jobbox" class="width670 basic_msg" style="display: none;margin-top: 58px">

                <div class="person_changes" style="margin-top: 0px">

                    <div class=" person_changes_left">
                        <span class="font999 resume_msg_name">期望职位</span>

                        <div class=" relative general-select " style="float: none;width: 480px">
                            <label class="general-input relative general-select" style="float: none;width: 460px">
                                <div class="want_jobbtns">
                                    <span>Java<svg class="icon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-shan" class="colorbbb"></use>
                                    </svg></span>
                                    <span>Java
                                    <svg class="icon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-shan" class="colorbbb"></use>
                                    </svg>
                                    </span>
                                    <span>Java
                                    <svg class="icon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-shan" class="colorbbb"></use>
                                    </svg>
                                    </span>
                                </div>
                                <input type="text" readonly="" data-error="请选择期望职位"  name="want_job" value="" style="width: 440px;opacity: 0;top: 0">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 242px;top:48px">
                                <div class="cwfcityoptions">

                                </div>
                                <div class="cwfarea">
                                    <span>请先选择城市</span>
                                </div>
                            </div>
                        </div>
                        <span class="wanted_tip">最多选3项</span>
                    </div>

                    <div class=" person_changes_left" style="margin-top: 20px">
                        <span class="font999 resume_msg_name">期望行业</span>

                        <div class=" relative general-select " style="float: none;width: 480px">
                            <label class="general-input relative general-select" style="float: none;width: 460px">
                                <div class="want_jobbtns">
                                    <span>Java<svg class="icon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-shan" class="colorbbb"></use>
                                    </svg></span>
                                    <span>Java
                                    <svg class="icon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-shan" class="colorbbb"></use>
                                    </svg>
                                    </span>
                                    <span>Java
                                    <svg class="icon" aria-hidden="true">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-shan" class="colorbbb"></use>
                                    </svg>
                                    </span>
                                </div>
                                <input type="text" readonly="" data-error="请选择期望行业"  name="want_job" value="" style="width: 440px;opacity: 0;top: 0">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 242px;top:48px">
                                <div class="cwfcityoptions">

                                </div>
                                <div class="cwfarea">
                                    <span>请先选择城市</span>
                                </div>
                            </div>
                        </div>
                        <span class="wanted_tip">最多选3项</span>
                    </div>


                    <div class=" person_changes_left" style="margin-top: 20px">
                        <span class="font999 resume_msg_name">期望薪资</span>
                        <div class=" relative general-select " style="float: none">
                            <label class="general-input relative general-select" style="float: none">
                                <input type="text" readonly  data-error="请选择期望薪资" style="width: 200px" name="identity" value="6k-8k">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options noscend" style="width: 220px;top:48px">
                                <div class='select-option'><span>2k-4k</span></div>
                                <div class='select-option'><span>4k-6k</span></div>
                                <div class='select-option'><span>6k-8k</span></div>
                                <div class='select-option'><span>8k-15k</span></div>
                                <div class='select-option'><span>15k以上</span></div>
                            </div>
                        </div>
                    </div>



                    <div class=" person_changes_left" style="margin-top: 20px">
                        <span class="font999 resume_msg_name">期望地点</span>
                        <div class=" relative general-select " style="float: none">
                            <label class="general-input relative general-select" style="float: none">
                                <input type="text" readonly="" data-error="请选择籍贯" name="city" value="">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 242px;top:48px">
                                <div class="cwfcityoptions">

                                </div>
                                <div class="cwfarea">
                                    <span>请先选择城市</span>
                                </div>
                            </div>
                        </div>
                    </div>


                <div class=" person_changes_left" style="margin-top: 20px">
                    <span class="font999 resume_msg_name">工作性质</span>
                    <div class=" relative general-select " style="float: none">
                        <label class="general-input  general-select" style="float: none">
                            <input type="text" readonly  data-error="请选择工作性质" name="identity" value="全职">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options noscend" style="width: 220px;top:48px">
                            <div class='select-option'><span>全职</span></div>
                            <div class='select-option'><span>兼职</span></div>
                        </div>
                    </div>
                </div>



                </div>

                <div class="person_changes">
                    <div class=" person_changes_left">
                        <span class="font999 resume_msg_name" style="float: left;height: 1px"></span>
                        <div style="display: inline-block;margin-left: 20px">
                            <span class="savebtn public_bigbtn bg1aa" id="save_wanted_job_msg" style="padding: 0 30px 0 30px">保存</span>
                            <span class="cancelbtn">取消</span>
                        </div>
                    </div>
                </div>
            </div>


<!--工作经历-->

            <div class="basic_msg width670" style="margin-top: 50px">
                <div class="basic_msg_content">
                    <div class="resume_title">
                        <span>工作经历</span>
                    </div>

                    <div class="resume_exp" id="job_exp">
                        <div class="left_line">
                        </div>

                        <div class="resume_exp_content">
                            <?php  if(is_array(unserialize($resume['work_experience']))) { foreach(unserialize($resume['work_experience']) as $id => $list) { ?>
                            <div class="resume_exps" data-id="<?php  echo $id?>">
                                <div class="relative">
                                    <span class="exp_title"><?php  echo $list['company_name']?></span>
                                <span class="addandeditbtn" data-id="<?php  echo $id?>">
                                    <svg class="icon" aria-hidden="true">
                                        <use xlink:href="#icon-xiugai"></use>
                                    </svg>
                                    修改
                                </span>
                                </div>

                                <div class="exp_job">
                                    <span class="exp_jobleft"><?php  echo $list['job_name']?></span>
                                    <span class="exp_jobright"><?php  echo $list['job_starttime']?> — <?php  echo $list['job_endtime']?></span>
                                </div>

                                <div class="exp_content">
                                    <?php  echo $list['job_content']?>
                                </div>

                                <div class="exp_job">
                                    <span class="exp_jobleft">离职原因：<?php  echo $list['leave_reason']?></span>
                                </div>
                            </div>
                            <?php  } } ?>

                        </div>
                    </div>


                </div>
                <span class="addandeditbtn" id="addjobexp">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-tianjia"></use>
                    </svg>
                    添加
                </span>

            </div>


            <div  id="job_expbox" class="width670 basic_msg" style="display: none;margin-top: 58px">

                <div class="person_changes" style="margin-top: 0px">

                    <input type="hidden" name="exp_id" id="exp_id">
                    <div class=" person_changes_left">
                        <span class="font999 resume_msg_name">公司名称</span>
                        <label class="general-input relative" style="width: 460px;">
                            <input type="text" placeholder="公司名称" data-error="请输入公司名称" style="width: 420px;" name="company_name">
                        </label>
                    </div>
                    <div class=" person_changes_left"  style="margin-top: 20px">
                        <span class="font999 resume_msg_name">职位名称</span>
                        <label class="general-input relative" style="width: 220px;">
                            <input type="text" placeholder="职位名称" data-error="请输入职位名称" style="width: 180px;" name="job_name">
                        </label>
                    </div>



                    <div class=" person_changes_left" style="display: inline-block;width: 100%;margin-top: 20px">
                        <span class="font999 resume_msg_name">起止时间</span>
                        <div class=" relative general-select " >
                            <label class="general-input relative general-select" style="float: none;width: 220px;">
                                <input type="text" readonly="" data-error="请选择开始时间" placeholder="请选择开始时间" style="width: 200px" name="start_time" value="">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 242px;top:48px">
                                <div class="cwftimeoptions">

                                </div>
                                <div class="cwfmonths">
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

                        <div class=" relative general-select " style="float: none">
                            <label class="general-input relative general-select" style="float: none;width: 220px;margin-left: 15px">
                                <input type="text" readonly="" data-error="请选择结束时间" placeholder="请选择结束时间" style="width: 200px" name="end_time" value="">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 242px;top:48px;left: 15px">
                                <div class="cwftimeoptions">

                                </div>
                                <div class="cwfmonths">
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

                    </div>

                    <div class=" person_changes_left" style="margin-top: 20px">
                        <span class="font999 resume_msg_name">离职原因</span>
                        <label class="general-input relative" style="width: 460px;">
                            <input type="text" placeholder="请输入离职原因" data-error="请输入离职原因" style="width: 420px;" name="leave_reason">
                        </label>
                    </div>

                    <div class=" person_changes_left" style="margin-top: 20px">
                        <span class="font999 resume_msg_name" style="float: left">工作内容</span>
                        <div class="cwfreg4content" style="display: inline-block;margin-left: 20px;height: 64px;border: 1px solid #f5f5f5;width: 589px;background-color: #f5f5f5">
                            <textarea style="width: 546px"  class="cwftextarea" id="job_content"  placeholder="你在这个岗位的职责"></textarea>
                        </div>

                        <div  class="cwftextareatip" style="height: auto;margin-top: 10px;padding-bottom: 13px">
                            <label class="general-input relative" style="width: 260px;;margin-left: 80px;height: 0;border: none">
                                <input type="hidden" name="job_content" id="job_contentinput" data-error="请输入你的工作内容">
                            </label>
                        </div>

                    </div>


                </div>

                <div class="person_changes">
                    <div class=" person_changes_left">
                        <span class="font999 resume_msg_name" style="float: left;height: 1px"></span>
                        <div style="display: inline-block;margin-left: 20px">
                            <span class="savebtn public_bigbtn bg1aa" id="save_job_exp_msg" style="padding: 0 30px 0 30px">保存</span>
                            <span class="cancelbtn">取消</span>
                            <span class="delbtn">删除本条</span>
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

                    <div class="resume_exp" id="edutionexp">
                        <div class="left_line">
                        </div>

                        <?php  if(is_array($edu_experience)) { foreach($edu_experience as $id => $list) { ?>
                        <div class="resume_exp_content">

                            <div class="relative">
                                <span class="exp_title"><?php  echo $list['school_name']?></span>
                                <span class="addandeditbtn" data-id="<?php  echo $id?>">
                                    <svg class="icon" aria-hidden="true">
                                        <use xlink:href="#icon-xiugai"></use>
                                    </svg>
                                    修改
                                </span>
                            </div>

                            <div class="exp_job">
                                <span class="exp_jobleft"><?php  echo $list['edu_major']?></span>
                                <span class="exp_jobleft" style="margin-left: 8px"><?php  echo $list['edu_district']?></span>
                                <span class="exp_jobright"><?php  if($list['edu_finish_time']) { ?><?php  echo $list['edu_finish_time']?>届<?php  } ?></span>
                            </div>

                            <div class="exp_content">
                                <?php  echo $list['edu_content']?>
                            </div>

                        </div>
                        <?php  } } ?>
                    </div>


                </div>
                <span class="addandeditbtn" id="addedutionexp">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-tianjia"></use>
                    </svg>
                    添加
                </span>
            </div>

            <div  id="edutionbox" class="width670 basic_msg" style="display: none;margin-top: 58px">

                <div class="person_changes" style="margin-top: 0px">

                    <input type="hidden" name="edu_id" id="edu_id">
                    <div class=" person_changes_left" style="display: inline-block;width: 100%;">
                        <span class="font999 resume_msg_name">学校名称</span>
                        <label class="general-input relative" style="width: 430px;">
                            <input type="text" placeholder="学校名称" data-error="请输入学校名称" style="width: 390px;" name="school_name">
                        </label>
                        <div class=" relative general-select " style="float: right">
                            <label class="general-input relative general-select" style="float: none;width: 138px">
                                <input type="text" readonly  data-error="请选择学历" placeholder="学历" style="width: 118px" name="education" value="本科">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options noscend autooptions" style="width: 140px;height: 0">
                                <div class="select-option" style="width: 138px"><span>博士以上</span></div>
                                <div class="select-option" style="width: 138px"><span>博士</span></div>
                                <div class="select-option" style="width: 138px"><span>硕士</span> </div>
                                <div class="select-option" style="width: 138px"><span>本科</span> </div>
                                <div class="select-option" style="width: 138px"><span>专科</span> </div>
                                <div class="select-option" style="width: 138px"><span>专科以下</span> </div>
                            </div>
                        </div>
                    </div>


                    <div class=" person_changes_left" style="margin-top: 20px">
                        <span class="font999 resume_msg_name">所学专业</span>
                        <label class="general-input relative" style="width: 430px;">
                            <input type="text" placeholder="所学专业" data-error="请输入所学专业" style="width: 390px;" name="edu_major">
                        </label>
                        <div class=" relative general-select " style="float: right">
                            <label class="general-input relative general-select" style="float: none;width: 138px">
                                <input type="text" readonly   style="width: 118px" data-error="请选择毕业时间" placeholder="毕业时间"  name="identity" id="identity" value="">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options noscend autooptions" id="endstarttime_options" style="width: 140px;height: 0">

                            </div>
                        </div>
                    </div>



                </div>

                <div class="person_changes">
                    <div class=" person_changes_left">
                        <span class="font999 resume_msg_name" style="float: left;height: 1px"></span>
                        <div style="display: inline-block;margin-left: 20px">
                            <span class="savebtn public_bigbtn bg1aa" id="save_edu_exp_msg" style="padding: 0 30px 0 30px">保存</span>
                            <span class="cancelbtn">取消</span>
                            <span class="delbtn">删除本条</span>
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

                    <div class="resume_exp" id="person_works">

                        <div class="person_works">
                            <?php  if(is_array($personal_works)) { foreach($personal_works as $id => $list) { ?>
                            <div class="person_work">
                                <div class="img_box"><img src="<?php  echo $list['thumb']?>"></div>
                                <div class="person_workmsg relative">
                                    <span class="wrap" style="width: 70%"><?php  echo $list['person_workmsg']?></span>
                                    <span class="addandeditbtn" style="top: 0" data-id="<?php  echo $id?>">
                                        <svg class="icon" aria-hidden="true">
                                            <use xlink:href="#icon-xiugai"></use>
                                        </svg>
                                        修改
                                    </span>
                                </div>
                            </div>
                            <?php  } } ?>
                        </div>

                    </div>


                </div>
                <?php  if(count($personal_works)<2) { ?>
                <span class="addandeditbtn" id="addpersonworks">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-tianjia"></use>
                    </svg>
                    添加
                </span>
                <?php  } ?>
            </div>



            <div  id="person_worksbox" class="width670 basic_msg" style="display: none;margin-top: 58px">

                <div class="person_changes" style="margin-top: 0px">

                    <input type="hidden" name="works_url" id="works_id">

                    <div class="person_worksbox">




                        <div class="person_worksbtn1">
                            <span id="person_worksaddbtn">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-shangchuan"></use>
                                </svg>
                            </span>
                        </div>

                    </div>

                    <label class="general-input relative abnormal" style="width: 460px;height: 0;border: none;margin-left: 78px">
                        <input type="hidden"  data-error="请上传作品" style="width: 420px;" value="" id="person_worksinput" name="person_works">
                    </label>

                    <div class=" person_changes_left" style="display: inline-block;width: 100%;">
                        <span class="font999 resume_msg_name">描述作品</span>
                        <label class="general-input relative" style="width: 460px;">
                            <input type="text" placeholder="作品描述" data-error="请输入作品描述" style="width: 420px;" name="person_workmsg">
                        </label>
                    </div>

                </div>

                <div class="person_changes">
                    <div class=" person_changes_left">
                        <span class="font999 resume_msg_name" style="float: left;height: 1px"></span>
                        <div style="display: inline-block;margin-left: 20px">
                            <span class="savebtn public_bigbtn bg1aa" id="save_works_msg" style="padding: 0 30px 0 30px">保存</span>
                            <span class="cancelbtn">取消</span>
                            <span class="delbtn">删除本条</span>
                        </div>
                    </div>
                </div>
            </div>


            <!--30秒个人视频-->
            <div class="basic_msg width670" style="margin-top: 50px">
                <div class="basic_msg_content">
                    <div class="resume_title">
                        <span style="width: 150px;margin-left: 260px">30秒个人视频</span>
                    </div>
                    <div class="resume_exp">
                        <div class="person_works relative">
                            <video src="<?php  if($resume['person_video']) { ?><?php  echo $resume['person_video']?><?php  } else { ?>http://www.zhangxinxu.com/study/media/cat.mp4<?php  } ?>" width="500" height="300" controls autobuffer style="margin-left: 85px" class="person_video"></video>
                            <!--<span class="addandeditbtn" style="top: 0" data-id="2">-->
                                <!--<svg class="icon" aria-hidden="true">-->
                                    <!--<use xlink:href="#icon-xiugai"></use>-->
                                <!--</svg>-->
                                <!--修改-->
                            <!--</span>-->
                        </div>
                    </div>
                </div>
                <!--<span class="addandeditbtn">-->
                    <!--<svg class="icon" aria-hidden="true">-->
                        <!--<use xlink:href="#icon-tianjia"></use>-->
                    <!--</svg>-->
                    <!--添加-->
                <!--</span>-->


                <span class="addandeditbtn upload_video" id="upload_video">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xiugai"></use>
                    </svg>
                    修改
                </span>

            </div>



            <!--荣誉证书-->
            <div class="basic_msg width670" style="margin-top: 50px">
                <div class="basic_msg_content">
                    <div class="resume_title">
                        <span >荣誉证书</span>
                    </div>
                    <div class="resume_exp" id="certificate" style=";margin-bottom: 180px">
                        <div class="person_works">
                            <?php  if(is_array($honor)) { foreach($honor as $id => $list) { ?>
                            <div class="relative">
                                <span class="certificate " style="display: inline-block;width: 570px;white-space: nowrap;text-overflow: ellipsis;"><?php  echo $list['certificate_content'];?></span>
                                <span class="addandeditbtn" style="top: 0"  data-id="<?php  echo $id;?>">
                                    <svg class="icon" aria-hidden="true">
                                        <use xlink:href="#icon-xiugai"></use>
                                    </svg>
                                    修改
                                </span>
                            </div>
                            <?php  } } ?>
                        </div>
                    </div>


                </div>
                <span class="addandeditbtn" id="addcertificatebtn">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-tianjia"></use>
                    </svg>
                    添加
                </span>
            </div>


            <div  id="certificatebox" class="width670 basic_msg" style="display: none;margin-top: 58px;margin-bottom: 180px">

                <div class="person_changes" style="margin-top: 0px">

                    <input type="hidden" name="certificate_id" id="certificate_id">
                    <input type="hidden" name="certificate_img" id="certificate_img">





                    <div class=" person_changes_left" style="display: inline-block;width: 100%;margin-top: 20px;height: 52px">
                        <span class="font999 resume_msg_name">时间</span>
                        <div class=" relative general-select " >
                            <label class="general-input relative general-select" style="float: none;width: 220px;">
                                <input type="text" readonly="" data-error="请选择时间" placeholder="请选择时间" style="width: 200px" name="certificate_time" value="">
                                <svg class="icon inputicon" aria-hidden="true">
                                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                </svg>
                            </label>
                            <div class="options scend" style="width: 248px;top:48px">
                                <div class="cwftimeoptions">

                                </div>
                                <div class="cwfmonths">
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

                        <div class="honor_certificate" style="float: right;width: 120px;height: auto;cursor: pointer;overflow: hidden;font-size: 16px;color: #666;margin-left: 26px;position: relative;">
                            <span id="certificateaddbtn">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-shangchuan"></use>
                                </svg>
                            </span>
                            <div style="color: #999;text-align: center;line-height: 24px">上传荣誉照片（可不传）</div>
                        </div>


                    </div>



                    <div class=" person_changes_left" style="margin-top: 20px">
                        <span class="font999 resume_msg_name" style="float: left">获奖内容</span>
                        <div class="cwfreg4content" style="display: inline-block;margin-left: 20px;height: 64px;border: 1px solid #f5f5f5;width: 359px;background-color: #f5f5f5">
                            <textarea style="width: 316px"  class="cwftextarea" id="certificate_content" maxlength="60"  placeholder="请输入你的获奖内容"></textarea>
                        </div>

                        <div  class="cwftextareatip" style="height: auto;margin-top: 10px">
                            <label class="general-input relative" style="width: 260px;;margin-left: 80px;height: 0;border: none">
                                <input type="hidden" name="certificate_content" id="certificate_contentinput" data-error="请输入你的获奖内容">
                            </label>
                        </div>

                    </div>


                    <!--<div class=" person_changes_left" style="display: inline-block;width: 100%">-->
                        <!--<span class="font999 resume_msg_name"></span>-->
                        <!--<div class=" relative general-select font999" style="margin-left: 20px">-->
                            <!--80%的Java工程师都获得了SCAJ资格证书-->
                            <!--<a href="#" class="go_studetent">前往学习</a>-->
                        <!--</div>-->
                    <!--</div>-->



                </div>

                <div class="person_changes">
                    <div class=" person_changes_left">
                        <span class="font999 resume_msg_name" style="float: left;height: 1px"></span>
                        <div style="display: inline-block;margin-left: 20px">
                            <span class="savebtn public_bigbtn bg1aa" id="save_certificate_msg" style="padding: 0 30px 0 30px">保存</span>
                            <span class="cancelbtn">取消</span>
                            <span class="delbtn">删除本条</span>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <?php  include wl_template('common/person_right');?>
</div>

<!--弹框-->
<div class="modalbox loginn_zj" id="modalbox" style="display: none;">
    <div class="modal">
        <p class="title_content">标题内容</p>
            <span class="modalclose">
                <img src="<?php echo WL_URL_ARES;?>images/close.png"/>
            </span>
        <div class="modal_con">
            <div class="one_btn">
                <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-shangchuan"></use>
                </svg>
                <div class="upload" style="display: none">
                    <img src="<?php echo WL_URL_ARES;?>images/timg22.png" class="rzpic"/>
                    <div class="meng"><span>重新上传</span></div>
                </div>
            </div>
            <form id="choosefile1" enctype="multipart/form-data">
                <input type="file" name='file' id="choosefile" />
            </form>
            <div class="erweima">
                <!--<img src="<?php echo WL_URL_ARES;?>images/erweima.png" class="pic"/>-->
            </div>
        </div>
        <div class="title">
            <span>电脑上传</span>
            <span>手机扫码上传</span>
        </div>
        <span class="public_bigbtn bg1aa modalbtn"> 立即上传</span>
    </div>
</div>
<!--弹框end-->

<!--发送邮箱-->
<div class="modalbox" id="envelope_modal" style="display: none">
    <div class="envelope_modal">

        <div class="envelope">
            <div class="envelope_content">
                <span class="font666 resume_msg_name" style="font-size: 14px;width: auto">发送到邮箱:</span>
                <label class="general-input relative" style="width: 274px">
                    <input type="text"  name="email" style="width: 240px;position: absolute;z-index: 99"  placeholder="请输入对方的邮箱" data-error="请输入邮箱">
                </label>
                <span class="public_bigbtn bg1aa post_envelopebtn" style="float: right;margin-right: 30px">
                    点击发送
                </span>

                <div class="envelope_content_msg">
                    <textarea  class="envelope_content_textarea" id="envelope_content_msg"  placeholder="你想对hr说什么"> 尊敬的HR：
　　您好！
　　<?php  echo $resume['introduce']?>

    我是一名<?php  echo $resume['arr_education']['school_name']?><?php  echo $resume['arr_education']['edu_finish_time']?>届的<?php  echo $resume['arr_education']['edu_district']?>毕业生。所学专业：<?php  echo $resume['arr_education']['edu_major']?>。
　　<?php  if($work_experience) { ?>
大学期间实习经历：
    <?php  if(is_array($work_experience)) { foreach($work_experience as $list) { ?>
　　<?php  echo $list['job_starttime']?>-<?php  echo $list['job_endtime']?><?php  echo $list['job_content']?>

　　<?php  } } ?>
    <?php  } ?>

    怀着崇敬的心情给您发了这封邮件，希望您能在百忙之中抽空查看我的个人简历，谢谢。
恭祝商祺。</textarea>
                </div>

                <input type="hidden" name="envelope_content" id="envelope_content">

            </div>
        </div>

        <div class="envelope_enclosure">
            <div style="display: inline-block">
                <span class="font20666">附件:</span>

                <svg class="icon pdficon" aria-hidden="true">
                    <use xlink:href="#icon-file-pdf"></use>
                </svg>
                <a href="<?php  echo app_url('resume/index',array('uid'=>$_SESSION['uid']))?>" class="envelope_resume" target="_blank"><?php  echo $resume['fullname']?>的个人简历</a>
            </div>

            <div style="float: right;text-align: center;line-height: 24px;color: #666">
                <span><?php  echo $resume['fullname']?></span>
                <div><?php  echo date('Y年m月d日')?></div>
            </div>

        </div>

        <span class="close_envelopebtn">
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-shan"></use>
            </svg>
        </span>


    </div>
</div>

<!--发送邮箱-->



</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/area.js" rel="script"></script>
<script>
    var identity = "<?php  echo $identity?>";
    //二维码生成
    function code_url(id,url) {
        $(id).qrcode({
            width: 100, //宽度
            height:100, //高度
            text: url //任意内容
        });
    }
</script>
<script src="<?php echo WL_URL_ARES;?>js/resume_manager.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/formdata.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/jquery.qrcode.min.js" rel="script"></script>


<script>

    //打开邮箱
    $("#post_envelope").on("click",function(){
        $("#envelope_modal").show();
    })
    //关闭邮箱
    $("#envelope_modal .close_envelopebtn").on("click",function(){
        $("#envelope_modal").hide();
    })

    $(".post_envelopebtn").click(function () {
        $("#envelope_content").val($("#envelope_content_msg").val());
    })

    //发送邮件
    $.fromdata("#envelope_modal","<?php  echo app_url('person/resume/send_email')?>",".post_envelopebtn",function(data){
        var data = JSON.parse(data);
        if(data.status==1){
            location = location;
        }
    })



</script>
<script>
    //上传图片
    $(".modalbtn").on("click",function(){
        var uploadFormData =new FormData($("#choosefile1")[0]);
        var id = $(this).parent().find(".erweima").attr("id");
        if(id=="code1"){
            var uploadurl = "<?php  echo app_url('person/resume/headimg_upload')?>";
        }else if(id=="code2"){
            var uploadurl = "<?php  echo app_url('person/resume/works_upload')?>";
        }else if(id=="code3"){
            var uploadurl = "<?php  echo app_url('person/resume/certificate_upload')?>";
        }else if(id=="code4"){
            var uploadurl = "<?php  echo app_url('person/resume/video_upload')?>";
        }
        $.ajax({
            url: uploadurl,
            type:"post",
            processData: false,
            cache: false,
            contentType: false,
            async: false,
            data:uploadFormData,
            success:function (data) {
                var data=JSON.parse(data);
                if(data.status==1){
                    //location = location;
                    if(id=="code2"){
                        var imgbox='<div class="person_worksbtn">'+
                                '<img src="'+data.content+'">'+
                                '<span class="person_worksdelbtn">'+
                                '<svg class="icon" aria-hidden="true">'+
                                '<use xlink:href="#icon-shanchu"></use>'+
                                '</svg></span></div>'

                        $(".person_worksbtn1").before(imgbox);
                        $("#modalbox").css("display","none");
                        $("#person_worksinput").val($("#person_worksinput").val()+","+data.content);

                        var images="";
                        $(".person_worksbox img").each(function(){
                            images+=$(this).attr("src")+",";
                        });
                        $("#person_worksinput").val(images.substring(0,images.length-1));
                        if($(".person_worksbox img").length>5){
                            $(".person_worksbtn1").remove();
                        }

                    }else if(id=="code1"){
//                        var uploadurl = "<?php  echo app_url('person/resume/headimg_upload')?>";
                        location = location;
                    }else if(id=="code3"){
                        $("#certificateaddbtn").html("<img style='width: 100%' src='"+data.content+"'>");
                        $("#certificate_img").val(data.content);
                    }else if(id=="code4"){
                        $(".person_video").attr("src",data.others);
                    }

                }
                $(".chec_tip1").eq(1).html("");
            }
        });
        $("#modalbox").css("display","none");

    })

    //上传视频弹框显示

//    window.setInterval(
//        function(){
//            $.ajax({
//                url:"<?php  echo app_url('person/resume/headimgupload_deal')?>",
//                type:"post",
//                success:function(data){
//                    if(data){
//                        var data = JSON.parse(data);
//                        if(data.status==1){
//                            location = location;
//                        }
//                    }
//                }
//            })
//        },5000
//    );


    $(".left_line").each(function(){
        $(this).css("height",$(this).parent().height()-48+"px")
    })
    $.fromdata("#person_msgbox","<?php  echo app_url('person/resume/manage_resume_deal')?>","#save_person_msg",function(data){
        var data =JSON.parse(data);
        if(data.status==1){
            location =location;
        }
        console.log(data.content);
    })

    //工作经历
    $.fromdata("#job_expbox","<?php  echo app_url('person/resume/save_work_exp')?>","#save_job_exp_msg",function(data){
        var data = JSON.parse(data);
        if(data.status==1){
            location = location;
        }
        //do something
    })

    //修改工作经历
    $("#job_exp .addandeditbtn").on("click",function(){
        $("#job_exp").hide();
        $("#job_expbox").show();
        $("#job_expbox label").css("border-color","#f5f5f5");
        $(".formtip").remove();

        $("#job_expbox .delbtn").show();
        var data_id=$(this).attr("data-id");
        $("#job_expbox .delbtn").attr("data-id",data_id);
        $("#exp_id").val(data_id);
        $.ajax({
            url:"<?php  echo app_url('person/resume/work_exp')?>",
            type:"post",
            data:{
                data_id:data_id
            },
            success:function(data){
                var data=JSON.parse(data);
                $("#job_expbox input[name=company_name]").val(data.company_name);
                $("#job_expbox input[name=job_name]").val(data.job_name);
                $("#job_expbox input[name=start_time]").val(data.job_starttime);
                $("#job_expbox input[name=end_time]").val(data.job_endtime);
                $("#job_expbox input[name=leave_reason]").val(data.leave_reason);
                $("#job_content").val(data.job_content);
               $("#job_expbox input[name=job_content]").val(data.job_content);
            }
        })
    });

    //删除工作经历
    $("#job_expbox .delbtn").on("click",function(){

        var _this=$(this);
        var data_id=_this.attr("data-id");
        $.ajax({
            url:"<?php  echo app_url('person/resume/work_exp_delete')?>",
            type:"post",
            data:{
                data_id:data_id
            },
            success: function (data) {
                var data=JSON.parse(data);
                if(data.status==1){
                        location =location;
//                    window.location.href="";
//                    $("#job_expbox").hide();
//                    $(".resume_exps[data-id="+data_id+"]").remove();
                }
            }
        })
    })



    //教育经历
    $.fromdata("#edutionbox","<?php  echo app_url('person/resume/save_edu_exp')?>","#save_edu_exp_msg",function(data){
        var data = JSON.parse(data);
        if(data.status==1){
            location = location;
        }
    })


    //修改教育经历
    $("#edutionexp .addandeditbtn").on("click",function(){
        $("#edutionexp").hide();
        $("#addedutionexp").show();
        $("#edutionbox").show();

        $("#edutionbox label").css("border-color","#f5f5f5");
        $(".formtip").remove();

        $("#edutionbox .delbtn").show();
        var data_id=$(this).attr("data-id");
        $("#edutionbox .delbtn").attr("data-id",data_id);
        $("#edu_id").val(data_id);
        $.ajax({
            url:"<?php  echo app_url('person/resume/edu_exp')?>",
            type:"post",
            data:{
                data_id:data_id
            },
            success:function(data){
                var data=JSON.parse(data);
                $("#edutionbox input[name=school_name]").val(data.school_name);
                $("#edutionbox input[name=education]").val(data.edu_district);
                $("#edutionbox input[name=edu_major]").val(data.edu_major);
                $("#edutionbox input[name=identity]").val(data.edu_finish_time);
            }
        })
    });


    //删除教育经历
    $("#edutionbox .delbtn").on("click",function(){
        var _this=$(this);
        var data_id=_this.attr("data-id");
        $.ajax({
            url:"<?php  echo app_url('person/resume/edu_exp_delete')?>",
            type:"post",
            data:{
                data_id:data_id
            },
            success: function (data) {
                var data=JSON.parse(data);
                if(data.status==1){
                    location = location;
                }
            }
        })
    })


    //个人作品
    $.fromdata("#person_worksbox","<?php  echo app_url('person/resume/save_personal_works')?>","#save_works_msg",function(data){
       var data = JSON.parse(data);
        if(data.status==1){
            location = location;
        }
    })

    //修改个人作品
    $(".person_work .addandeditbtn").on("click",function(){
        $("#upload_pic").remove();

        $("#person_works").hide();
        $("#addpersonworks").show();
        $("#person_worksbox").show();

        $("#person_worksbox label").css("border-color","#f5f5f5");
        $(".formtip").remove();

        $("#person_worksbox .delbtn").show();
        var data_id=$(this).attr("data-id");
        $("#person_worksbox .delbtn").attr("data-id",data_id);
        $("#works_id").val(data_id);
        $.ajax({
            url:"<?php  echo app_url('person/resume/personal_work')?>",
            type:"post",
            data:{
                data_id:data_id
            },
            success:function(data){
                var data=JSON.parse(data);
               // console.log(data);return;
//                $("#person_worksbox input[name=works_url]").val(data.person_works);
                $("#person_worksbox input[name=person_workmsg]").val(data.person_workmsg);
                var imagebox="";

                var works_url = data.person_works;
                works_url = works_url.split(",");
                $(".person_worksbtn").remove();
                $.each(works_url,function(){
                    imagebox+="<div class='person_worksbtn'>"+
                                "<img src='"+this+"'>"+
                            "<span class='person_worksdelbtn'>"+
                            "<svg class='icon' aria-hidden='true'>"+
                            "<use xlink:href='#icon-shanchu'></use>"+
                            "</svg>"+
                            "</span>"+
                            "</div>"
                });

                $(".person_worksbtn1").before(imagebox);
                if(works_url.length>5){
                    $(".person_worksbtn1").hide();
                }
                var images="";
                $(".person_worksbox img").each(function(){
                    images+=$(this).attr("src")+",";
                });
                $("#person_worksinput").val(images.substring(0,images.length-1));

            }
        })
    });


    //删除个人作品
    $("#person_worksbox .delbtn").on("click",function(){

        var _this=$(this);
        var data_id=_this.attr("data-id");
        $.ajax({
            url:"<?php  echo app_url('person/resume/personal_work_delete')?>",
            type:"post",
            data:{
                data_id:data_id
            },
            success: function (data) {
                var data=JSON.parse(data);
                if(data.status==1){
                        location = location;
//                    window.location.href="";
                }
            }
        })
    })


    //荣誉证书
    $.fromdata("#certificatebox","<?php  echo app_url('person/resume/save_certificate')?>","#save_certificate_msg",function(data){
        var data = JSON.parse(data);
        if(data.status==1){
            location = location;
        }
    })

    //修改荣誉证书
    $("#certificate .addandeditbtn").on("click",function(){

        $("#certificate").hide();
        $("#addcertificatebtn").show();
        $("#certificatebox").show();

        $("#certificatebox label").css("border-color","#f5f5f5");
        $(".formtip").remove();
        $(".person_worksdelbtn").remove();
        $("#certificatebox .delbtn").show();
        var data_id=$(this).attr("data-id");
        $("#certificatebox .delbtn").attr("data-id",data_id);
        $("#certificate_id").val(data_id);
        $.ajax({
            url:"<?php  echo app_url('person/resume/show_honor')?>",
            type:"post",
            data:{
                data_id:data_id
            },
            success:function(data){
                var data=JSON.parse(data);
                console.log(data);
                $("#certificatebox input[name=certificate_time]").val(data.certificate_time);
                $("#certificatebox input[name=certificate_content]").val(data.certificate_content);
                $("#certificate_content").val(data.certificate_content);
                $("#certificateaddbtn").html("<img style='width: 100%' src='"+data.certificate_img+"'>");
                $("#certificate_img").val(data.certificate_img);
//                var imagebox="";
//                imagebox+="<div id='certificateaddbtn'>"+
//                        "<img src='"+data.src+"'>"+
//                        "<span class='person_worksdelbtn' style='width: 120px;height: 120px;'>"+
//                        "<svg class='icon' aria-hidden='true'>"+
//                        "<use xlink:href='#icon-shanchu'></use>"+
//                        "</svg>"+
//                        "</span>"+
//                        "</div>";
//
//                $("#certificatebox .person_worksbtn1").html(imagebox);
            }
        })
    });

    //删除荣誉证书
    $("#certificatebox .delbtn").on("click",function(){

        var _this=$(this);
        var data_id=_this.attr("data-id");
        $.ajax({
            url:"<?php  echo app_url('person/resume/honor_delete')?>",
            type:"post",
            data:{
                data_id:data_id
            },
            success: function (data) {
                var data=JSON.parse(data);
                if(data.status==1){
                    window.location.href="";
//                    $("#job_expbox").hide();
//                    $(".resume_exps[data-id="+data_id+"]").remove();
                }
            }
        })
    })

    $(".honor_certificate").click(function () {
        $(".title_content").html("个人作品");
        $(".erweima").attr("id","code3").children().remove();
        code_url("#code3","/app/index.php?c=site&a=entry&m=recruit&do=member&ac=index&op=resume_worksupload&identity="+identity);
        $("#modalbox").animate({"opacity":1},300);
        setTimeout(function(){
            $("#modalbox").css("display","block");
        },0)
    });


    //选择文件
    $('#choosefile').on('change',function(e){


        var imgfile=this.files[0];
        var src=URL.createObjectURL(imgfile);
        var uploadimg="<img style='width:100%' src='"+src+"' id='upload_pic'>";
        $(this).parent().prev().html(uploadimg);

        //uploadFile(this,'choosefile',boxbum);
    });


    $(".upload_video").click(function () {
        $(".title_content").html("上传个人视频");
        $("#modalbox").animate({"opacity":1},300);
        $(".erweima").attr("id","code4").children().remove();
        code_url("#code1","/app/index.php?c=site&a=entry&m=recruit&do=person&ac=resume&op=manage_resume&");
        setTimeout(function(){
            $("#modalbox").css("display","block");
        },0)
    });
</script>
</html>