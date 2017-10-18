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
    <link href="<?php echo WL_URL_ARES;?>css/personal.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/personal1.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/company_msg.css" rel="stylesheet">
    <script src="http://api.map.baidu.com/api?v=2.0&ak=YrLaqu3cNGX66NynxPIWR9sS7n5ASDd1"></script>

    <title>公司信息</title>
    <style>
        .swiper-container{
            width: 680px;
            height: 360px;
        }
        .swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet{
            margin: 0 10px;
        }
        .swiper-pagination-bullet{
            background-color: #eee;
            opacity: 1;

        }
        .swiper-pagination-bullet-active{
            background-color: #09c;
        }
        .swiper-button-prev, .swiper-container-rtl .swiper-button-next{
            background-image: url("<?php echo WL_URL_ARES;?>images/left.png");
        }
        .swiper-button-next, .swiper-container-rtl .swiper-button-prev{
            background-image: url("<?php echo WL_URL_ARES;?>images/next.png");
        }
        .swiper-button-next, .swiper-button-prev{
            width: 30px;
            height: 60px;
            background-size: 30px 60px;
            margin-top: -30px;
        }
        .abnormal .formtip{
            position: absolute;
            margin-top: 0;
        }
        .relative input{
            position: absolute;
        }
        #l-map{
            width: 582px;
            height: 320px;
            margin-left: 88px;
            margin-top: 20px;
        }

    </style>
</head>
<body bgcolor="#f4f4f4">
<?php  include wl_template('common/header');?>
<div class="width1200 p1content">
    <?php  include wl_template('common/company_nav');?>
    <div class="p1_left">
        <div class="con_list" style="padding-bottom: 100px">
           <div class="company_width770">


               <!--公司基本信息-->
               <div id="basic_msg">
                   <span class="company_logo"><img src="<?php  echo $company['headimgurl']?>"></span>
                   <div class="company_basacmsg">
                       <div class="relative">
                           <span class="company_name"><?php  echo $company['companyname']?></span>
                    <span class="addandeditbtn" >
                        <svg class="icon" aria-hidden="true" style="font-size: 20px">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiugai"></use>
                        </svg>
                        修改
                    </span>
                       </div>

                       <div class="font666 company_introduce wrap" ><?php  echo $company['introduce']?></div>

                       <div class="font999" style="margin-top: 10px">
                           <span class="basic_msg_contents1"><?php  echo $company['nature']?></span>
                           <span class="basic_msg_contents1"><?php  echo $company['number']?></span>
                           <span class="basic_msg_contents1"><?php  echo $company['industry']?></span>
                           <span class="basic_msg_contents1"><?php  echo $company['city']?></span>
                       </div>

                   </div>
               </div>




               <div class="width670" style="display: none" id="basic_msgbox">
                   <!--上传logo-->
                   <div style="margin-top: 80px;width: 100%;text-align: center">
                   <span class="company_logo_upload">
                       <!--<img src="<?php  echo $company['headimgurl']?>">-->
                       <span>
                           <svg class="icon" aria-hidden="true">
                               <use  xlink:href="#icon-xiangji"></use>
                           </svg>
                       </span>
                   </span>
                       <div class="fontbbb" style="margin-top: 16px">*Logo尺寸要求 200*200，图片大小在2M以内</div>
                       <input type="file" id="company_logo"  accept="image/*"  style="display: none">
                       <input type="text" name="company_logo" style="display: none">
                   </div>

                   <!--基本信息-->
                   <div class="person_changes" style="margin-top: 40px">
                       <div>
                           <span class="color666 companymsg_name">公司全称</span>
                           <span style="line-height: 48px;margin-left: 20px"><?php  echo $company['companyname']?></span>
                       <span class="relative change_company_name">
                           <span class="edit_company_name">修改公司名称</span>
                           <span class="edit_name_tips">
                               修改公司名称，需要重新上传营业执照和法人身份证，并提供法人签字、公司盖章的修改协议照片。
                               <a href="#" style="color: #09c">前往修改</a>
                           </span>
                       </span>

                       </div>
                   </div>

                   <div>
                       <div class="person_changes" style="margin-top: 20px">
                           <div class="width320 person_changes_left">
                               <span class="color666 redxing companymsg_name">公司性质</span>
                               <div class=" relative general-select " style="float: none">
                                   <label class="general-input relative general-select" style="float: none">
                                       <input type="text" readonly=""  name="company_nature" value="<?php  echo $company['nature']?>">
                                       <svg class="icon inputicon" aria-hidden="true">
                                           <use  xlink:href="#icon-xiala" class="colorbbb"></use>
                                       </svg>
                                   </label>
                                   <div class="options noscend" style="width: 220px;top:48px">
                                       <div class="select-option"><span>国营企业</span></div>
                                       <div class="select-option"><span>民营企业</span></div>
                                       <div class="select-option"><span>私有企业</span> </div>
                                       <div class="select-option"><span>创业型</span> </div>
                                   </div>
                               </div>
                           </div>
                           <div class="width320 person_changes_right">
                               <span class="color666 redxing companymsg_name">公司规模</span>
                               <div class=" relative general-select " style="float: none">
                                   <label class="general-input relative general-select" style="float: none">
                                       <input type="text" readonly=""  name="company_scale" value="<?php  echo $company['number']?>">
                                       <svg class="icon inputicon" aria-hidden="true">
                                           <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                       </svg>
                                   </label>
                                   <div class="options noscend" style="width: 220px;top:48px">
                                       <div class="select-option"><span>20人以下</span></div>
                                       <div class="select-option"><span>20-50人</span></div>
                                       <div class="select-option"><span>50-200人</span> </div>
                                       <div class="select-option"><span>200-500人</span> </div>
                                       <div class="select-option"><span>500-1000人</span> </div>
                                       <div class="select-option"><span>1000人以上</span> </div>
                                   </div>
                               </div>
                           </div>
                       </div>

                       <div class="person_changes" style="margin-top: 20px">
                           <div class="width320 person_changes_left">
                               <span class="color666 redxing companymsg_name">所处行业</span>
                               <div class=" relative general-select  " style="float: none">
                                   <label class="general-input relative general-select" style="float: none">
                                       <input type="text" readonly=""  name="company_industry" value="<?php  echo $company['industry']?>">
                                       <svg class="icon inputicon" aria-hidden="true">
                                           <use  xlink:href="#icon-xiala" class="colorbbb"></use>
                                       </svg>
                                   </label>
                                   <div class="options hangye" style="height: 0px;top: 48px">
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
                                           <div class="select-option" style="width:90px "><span>金融投资证券</span> </div>
                                           <div class="select-option"><span>其他</span> </div>
                                       </div>
                                   </div>
                               </div>
                           </div>
                           <div class="width320 person_changes_right">
                               <span class="color666 redxing companymsg_name">所在地区</span>
                               <div class=" relative general-select " style="float: none">
                                   <label class="general-input relative general-select" style="float: none">
                                       <input type="text" readonly=""  name="company_area" value="<?php  echo $company['city']?>">
                                       <svg class="icon inputicon" aria-hidden="true">
                                           <use  xlink:href="#icon-xiala" class="colorbbb"></use>
                                       </svg>
                                   </label>
                                   <div class="options" style="width: 220px;top:48px">
                                       <div class="areacity">

                                       </div>
                                   </div>
                               </div>
                           </div>
                       </div>



                       <div class=" person_changes_left" style="margin-top: 20px">
                           <span class="color666  companymsg_name" style="width: 78px;margin-left: -10px">公司slogan</span>
                           <label class="general-input relative" style="width: 580px;">
                               <input type="text" placeholder="请输入公司一句话广告语（30字以内）"  style="width: 540px;" name="slogan">
                           </label>
                       </div>

                       <div class="person_changes"  style="margin-top: 30px">
                           <div class=" person_changes_left" style="text-align: center">
                               <div style="display: inline-block">
                                   <span class="savebtn public_bigbtn bg1aa"  style="padding: 0 30px 0 30px">保存</span>
                                   <span class="cancelbtn">取消</span>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>



               <!--公司介绍-->
                <div style="margin-top: 50px">
                    <div class="company_title relative">
                        <span >公司介绍</span>
                        <span class="addandeditbtn" style="right: auto;top: 2px">
                            <svg class="icon" aria-hidden="true" style="font-size: 25px;margin-left: 10px">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiugai"></use>
                            </svg>
                        </span>
                    </div>

                    <div  id="introduces_msg">
                        <div class="introduces">
                           <?php  echo $company['introduce']?>
                        </div>
                        <span class="showoehideall">
                            <span>显示全部</span>
                            <svg class="icon" aria-hidden="true" style="font-size: 18px">
                                <use  xlink:href="#icon-xiajiantou"></use>
                            </svg>
                        </span>
                    </div>

                </div>


               <div class="width670" style="display: none" id="introduces_msgbox">
                       <div class=" person_changes_left" style="margin-top: 40px">
                           <span class="color666  redxing companymsg_name">公司介绍</span>
                           <div class="cwfreg4content" style="display: inline-block;margin-left: 20px;height: 174px;border: 1px solid #f5f5f5;width: 580px;background-color: #f5f5f5">
                               <textarea   class="cwftextarea" id="companymsg_introduce"  placeholder="请输入公司详细介绍"><?php  echo $company['introduce']?></textarea>
                           </div>

                           <div  class="cwftextareatip" style="height: auto;margin-top: 10px;padding-bottom: 13px">
                               <label class="general-input relative" style="width: 260px;;margin-left: 88px;height: 0;border: none">
                                   <input type="hidden" name="companymsg_introduce" id="companymsg_introduceinput" data-error="请输入公司详细介绍" value="<?php  echo $company['introduce']?>">
                               </label>
                           </div>

                       </div>

                       <div class="person_changes"  style="margin-top: 0">
                           <div class=" person_changes_left" style="text-align: center">
                               <div style="display: inline-block">
                                   <span class="savebtn public_bigbtn bg1aa"  style="padding: 0 30px 0 30px">保存</span>
                                   <span class="cancelbtn">取消</span>
                               </div>
                           </div>
                       </div>
               </div>

               <!--公司图集-->
               <div style="margin-top: 60px">
                   <div class="company_title relative">
                       <span >公司图集</span>
                        <span class="addandeditbtn" style="right: auto;top: 2px">
                            <svg class="icon" aria-hidden="true" style="font-size: 25px;margin-left: 10px">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiugai"></use>
                            </svg>
                        </span>
                   </div>
                   <div style="margin-top: 40px"  id="company_img">
                       <div class="swiper-container">
                           <div class="swiper-wrapper">
                               <div class="swiper-slide">
                                    <div class="company_img"><img src="<?php echo WL_URL_ARES;?>images/person_img.png"></div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="company_img"><img src="<?php echo WL_URL_ARES;?>images/person_img.png"></div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="company_img"><img src="<?php echo WL_URL_ARES;?>images/person_img.png"></div>
                               </div>
                               <div class="swiper-slide">
                                   <div class="company_img"><img src="<?php echo WL_URL_ARES;?>images/person_img.png"></div>
                               </div>
                           </div>
                           <div class="swiper-pagination" ></div>
                           <!-- 如果需要导航按钮 -->
                           <div class="swiper-button-prev"></div>
                           <div class="swiper-button-next"></div>

                       </div>
                   </div>
               </div>


               <div  class="width670" style="display: none" id="company_imgbox">
                   <div class="person_changes" style="margin-top: 60px">

                       <input type="hidden" name="works_url" id="works_id">
                       <span class="color666  redxing companymsg_name">公司图集</span>
                       <div class="person_worksbox" style="margin-left: 88px">
                           <div class="person_worksbtn">
                               <img src="<?php echo WL_URL_ARES;?>images/person_img.png">
                                    <span class="person_worksdelbtn">
                                        <svg class="icon" aria-hidden="true">
                                            <use xlink:href="#icon-shanchu"></use>
                                        </svg>
                                    </span>
                           </div>

                           <div class="person_worksbtn">
                               <img src="<?php echo WL_URL_ARES;?>images/person_img.png">
                                    <span class="person_worksdelbtn">
                                        <svg class="icon" aria-hidden="true">
                                            <use xlink:href="#icon-shanchu"></use>
                                        </svg>
                                    </span>
                           </div>

                           <div class="person_worksbtn1">
                                <span id="person_worksaddbtn">
                                    <svg class="icon" aria-hidden="true">
                                        <use xlink:href="#icon-shangchuan"></use>
                                    </svg>
                                </span>
                           </div>

                       </div>

                       <label class="general-input relative abnormal" style="width: 460px;height: 20px;border: none;margin-left: 88px;background:none">
                           <input type="hidden"  data-error="请上传公司图片" style="width: 420px;" value="" id="person_worksinput" name="person_works">
                       </label>

                       <div class="person_changes"  style="margin-top: 0">
                           <div class=" person_changes_left" style="text-align: center">
                               <div style="display: inline-block">
                                   <span class="savebtn public_bigbtn bg1aa"  style="padding: 0 30px 0 30px">保存</span>
                                   <span class="cancelbtn">取消</span>
                               </div>
                           </div>
                       </div>

                   </div>
               </div>


               <!--公司地址-->
               <div style="margin-top: 60px">
                   <div class="company_title relative">
                       <span >公司地址</span>
                        <span class="addandeditbtn" style="right: auto;top: 2px">
                            <svg class="icon" aria-hidden="true" style="font-size: 25px;margin-left: 10px">
                                <use  xlink:href="#icon-xiugai"></use>
                            </svg>
                        </span>
                   </div>

                   <div  id="company_address">
                       <div id="allmap" style="width: 640px;height: 320px;margin-top: 40px;margin-left: 65px"></div>
                       <div style="margin-top: 20px;text-align: center">
                           <span style="font-size: 16px;color: #333"><?php  echo $company['city'].$company['city_area']?></span>
                           <span style="font-size: 14px;color: #666"><?php  echo $company['address']?></span>
                       </div>
                   </div>

               </div>

               <div  class="width670" style="display: none" id="company_addressbox">
                   <div class="person_changes" style="margin-top: 60px">
                       <div class=" person_changes_left">
                           <span class="color666  redxing companymsg_name">详细地址</span>
                           <div class=" relative general-select " style="float: none">
                               <label class="general-input relative general-select" style="width: 140px;float: none">
                                   <input type="text" readonly="" data-error="请选择现居住地址" name="city" value="<?php  echo $company['city']?>" placeholder="省/市" style="width: 120px">
                                   <svg class="icon inputicon" aria-hidden="true">
                                       <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                                   </svg>
                               </label>
                               <div class="options scend" style="width: 242px;top:48px">
                                   <div class="cwfcityoptions1 cityoptions">

                                   </div>
                               </div>
                           </div>
                           <label class="general-input relative" style="width: 256px;margin-left: 20px;float:right">
                               <input type="text" name="address"   placeholder="详细地址（选填）" value="<?php  echo $company['address']?>">
                           </label>
                           <div class=" relative general-select " style="float: right">
                               <label class="general-input relative general-select" style="width: 140px;float: none">
                                   <input type="text" readonly="" id="area" name="area" value="<?php  echo $company['address']?>" placeholder="区/县" style="width: 120px">
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


                           <div id="l-map"></div>
                           <div id="r-result" class="person_changes_left" style="margin-top: 20px">
                               <span class="color666  redxing companymsg_name">地图定位</span>
                               <label class="general-input relative" style="width: 256px;margin-left: 20px">
                                   <input type="text" id="suggestId" style="width: 216px"  placeholder="请输入公司地址获取定位" value="<?php  echo $company['district']?>">
                                   <input type="hidden" id="coordinate"  name="coordinate" data-error="请输入公司地址获取定位"  value="<?php  echo $company['district']?>">
                               </label>
                           </div>
                           <div id="searchResultPanel" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;"></div>


                       </div>

                       <div class="person_changes"  style="margin-top: 30px">
                           <div class=" person_changes_left" style="text-align: center">
                               <div style="display: inline-block">
                                   <span class="savebtn public_bigbtn bg1aa"  style="padding: 0 30px 0 30px">保存</span>
                                   <span class="cancelbtn">取消</span>
                               </div>
                           </div>
                       </div>

                   </div>
               </div>

               <!--福利标签-->
               <div style="margin-top: 60px">
                   <div class="company_title relative">
                       <span >福利标签</span>
                        <span class="addandeditbtn" style="right: auto;top: 2px">
                            <svg class="icon" aria-hidden="true" style="font-size: 25px;margin-left: 10px">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiugai"></use>
                            </svg>
                        </span>
                   </div>

                   <div class="welfare" id="welfare_msg">
                       <?php  if(is_array(explode(',',$company['tag']))) { foreach(explode(',',$company['tag']) as $list) { ?>
                       <span><?php  echo $list?></span>
                        <?php  } } ?>
                   </div>

               </div>



               <div class=" person_changes_left" id="welfare_msgbox" style="margin-top: 40px;display: none">
                   <span class="color666  redxing companymsg_name">福利标签</span>
                   <div class="company_welfare">
                       <span>五险</span>
                       <span>住房公积金</span>
                       <span>带薪年假</span>
                       <span>绩效奖金</span>
                       <span>内部培训</span>
                       <span>年终奖</span>
                       <span>晋升平台</span>
                       <span>有偿加班</span>
                       <span>股权奖励</span>
                       <span>交通补贴</span>
                   </div>
                   <div style="margin-left: 58px">
                       <div class="chioce_template_job_search" style="margin-top: 0">
                           <div class="job_search_key">
                               <svg class="icon" style="color: #bbbbbb;margin-left: 10px">
                                   <use xlink:href="#icon-sousuo"></use>
                               </svg>
                               <input class="input_job" maxlength="5" id="welfare_key" style="width: 130px;outline: none" type="text" placeholder="输入5个字以内标签">
                           </div>
                           <span class="btn_sou" style="float: right;height: 37px">添加</span>
                       </div>
                   </div>

                   <label class="general-input relative abnormal" style="width: 460px;height: 20px;border: none;margin-left: 88px;background:none;margin-top: 10px">
                       <input type="hidden"  data-error="请选择福利标签" style="width: 420px;" value="" id="company_welfare" name="company_welfare">
                   </label>


                   <div class="person_changes"  style="margin-top: 0">
                       <div class=" person_changes_left" style="text-align: center">
                           <div style="display: inline-block">
                               <span class="savebtn public_bigbtn bg1aa"  style="padding: 0 30px 0 30px">保存</span>
                               <span class="cancelbtn">取消</span>
                           </div>
                       </div>
                   </div>

               </div>



               <!--公司网站-->
               <div style="margin-top: 60px">
                   <div class="company_title relative">
                       <span >公司网站</span>
                        <span class="addandeditbtn" style="right: auto;top: 2px">
                            <svg class="icon" aria-hidden="true" style="font-size: 25px;margin-left: 10px">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiugai"></use>
                            </svg>
                        </span>
                   </div>

                   <span class="website" id="website_msg">
                       <?php  echo $company['website']?>
                   </span>

               </div>


               <div class=" person_changes_left width670" id="website_msgbox" style="margin-top: 40px;display: none">
                   <span class="color666  companymsg_name" style="width: 78px;margin-left: -10px">公司网站</span>
                   <label class="general-input relative" style="width: 580px;">
                       <input type="text" placeholder="请输入公司网址"  style="width: 540px;" name="company_url" value="<?php  echo $company['website']?>">
                   </label>

                   <div class="person_changes"  style="margin-top: 20px">
                       <div class=" person_changes_left" style="text-align: center">
                           <div style="display: inline-block">
                               <span class="savebtn public_bigbtn bg1aa"  style="padding: 0 30px 0 30px">保存</span>
                               <span class="cancelbtn">取消</span>
                           </div>
                       </div>
                   </div>

               </div>




           </div>
        </div>
    </div>
    <?php  include wl_template('common/company_right');?>


    <!--弹框-->
    <div class="modalbox loginn_zj" id="modalbox" style="display: none;">
        <div class="modal">
            <p class="title_content">公司图集</p>
            <span class="modalclose">
                <img src="<?php echo WL_URL_ARES;?>images/close.png"/>
            </span>
            <div class="modal_con">
                <div class="one_btn">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-shangchuan"></use>
                    </svg>
                </div>
                <div class="erweima">
                    <img src="<?php echo WL_URL_ARES;?>images/erweima.png" class="pic"/>
                </div>
            </div>
            <div class="title">
                <span>电脑上传</span>
                <span>手机扫码上传</span>
            </div>
            <input type='file' name='file' id='file' accept='image/*' style="display: none">
            <span class="public_bigbtn bg1aa modalbtn">立即上传</span>
        </div>
    </div>
    <!--弹框end-->

</div>



</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/swiper.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/area.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/formdata.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/company_msg.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/company_nomsg.js" rel="script"></script>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");
    var point = new BMap.Point("<?php  echo $company['retoate_x']?>","<?php  echo $company['retoate_y']?>");
//    map.enableScrollWheelZoom();   //启用滚轮放大缩小，默认禁用
//    map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
    map.centerAndZoom(point,12);
    // 创建地址解析器实例
    var myGeo = new BMap.Geocoder();
    // 将地址解析结果显示在地图上,并调整地图视野
    myGeo.getPoint("<?php  echo $company['city'].$company['city_area'].$company['district']?>", function(point){
        if (point) {
            map.centerAndZoom(point, 16);
            map.addOverlay(new BMap.Marker(point));
        }else{
            alert("您选择地址没有解析到结果!");
        }
    }, "<?php  echo $company['city']?>");


    $(".addandeditbtn").eq(3).on("click",function(){
        $("#company_address").hide();
        $("#company_addressbox").show();


        // 百度地图API功能
        function G(id) {
            return document.getElementById(id);
        }

        var map1 = new BMap.Map("l-map");
        map1.centerAndZoom("重庆市",18);                   // 初始化地图,设置城市和地图级别。

        var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
                {"input" : "suggestId"
                    ,"location" : map1
                });

        ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
            var str = "";
            var _value = e.fromitem.value;
            var value = "";
            if (e.fromitem.index > -1) {
                value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            }
            str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

            value = "";
            if (e.toitem.index > -1) {
                _value = e.toitem.value;
                value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            }
            str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
            G("searchResultPanel").innerHTML = str;
        });

        var myValue;
        ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
            var _value = e.item.value;
            myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;

            setPlace();
        });

        function setPlace(){
            map1.clearOverlays();    //清除地图上所有覆盖物
            function myFun(){
                var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
                console.log(pp);
                $("#coordinate").val(pp.lng+","+pp.lat);
                map1.centerAndZoom(pp, 18);
                map1.addOverlay(new BMap.Marker(pp));    //添加标注
            }
            var local = new BMap.LocalSearch(map1, { //智能搜索
                onSearchComplete: myFun
            });
            local.search(myValue);
        }



    });





    //    上传logo
    $(".company_logo_upload span").on("click",function(){
        $("#company_logo").click();
    });

    $("#company_logo").on("change",function(){
        var f=$(this).prop('files')[0];
        var reader = new FileReader();
        reader.onload = function (e) {
            var data = e.target.result;
            //加载图片获取图片真实宽度和高度
            var image = new Image();
            image.onload=function(){
                var width = image.width;
                var height = image.height;
                var size = f.size;
                if(width>200||height>200||size>2097152){
                    $("#company_logo").val("");
                    hint("error","Logo尺寸要求 200*200，图片大小在2M以内。");
                    setTimeout(function(){$(".promptbox").remove()},2000);
                }else{
                    var updatafile = new FormData();
                    updatafile.append('avatar', f);
                    $.ajax({
                        url:"",
                        type:"post",
                        data:updatafile,
                        success:function(data1){
                            var data1=JSON.parse(data1);
                            if(data1.status==1){
                                if($(".company_logo_upload img").length==0){
                                    $(".company_logo_upload span").before("<img src="+data1.content+">");
                                }else{
                                    $(".company_logo_upload img").attr("src",data1.content);
                                }
                                $("#company_logo").next().val(data1.content)
                                $(".company_logo_upload span").css("background-color","rgba(0,0,0,0.4)");
                            }
                        }
                    })
                }
            };
            image.src= data;
        };

        reader.readAsDataURL(f);
    })



    //修改公司基本信息
    $.fromdata("#basic_msgbox","test.php","#basic_msgbox .savebtn",function(data){
        //do something
    });


    //修改公司介绍
    $.fromdata("#introduces_msgbox","<?php  echo app_url('company/company_profile/save_introduce')?>","#introduces_msgbox .savebtn",function(data){
        //do something
    });

    //修改公司图集
    $.fromdata("#company_imgbox","test.php","#company_imgbox .savebtn",function(data){
        //do something
    });


    //修改公司地址
    $.fromdata("#company_addressbox","<?php  echo app_url('company/company_profile/save_address')?>","#company_addressbox .savebtn",function(data){
        //do something
    });

    //修改福利标签
    $.fromdata("#welfare_msgbox","<?php  echo app_url('company/company_profile/save_tag')?>","#welfare_msgbox .savebtn",function(data){
        //do something
    });

    //修改公司网站
    $.fromdata("#website_msgbox","<?php  echo app_url('company/company_profile/save_website')?>","#website_msgbox .savebtn",function(data){
        //do something
    });

</script>
</html>