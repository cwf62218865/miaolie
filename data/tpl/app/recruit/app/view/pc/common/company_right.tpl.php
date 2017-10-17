<?php defined('IN_IA') or exit('Access Denied');?><div class="p1_right">
    <div class="tongjis tongjis1">
        <div class="items2">
            <a class="number" href=""><?php  echo $company_statistics['apply_num']?></a>
            <p class="font1_zj chengxian">收到申请</p>
        </div>
        <div class="items2">
            <a class="number" href=""><?php  echo $company_statistics['interview_num']?></a>
            <p class="font1_zj chengxian">等待面试</p>
        </div>
        <div class="items2">
            <a class="number" href="">9</a>
            <p class="font1_zj chengxian">收到评价</p>
        </div>
        <div class="items2">
            <a class="number" href=""><?php  echo $company_statistics['jobs_num']?></a>
            <p class="font1_zj chengxian">在招职位</p>
        </div>
    </div>
    <div class="resume_district">
        <div class="wanzhengdu">
            <div class="jianli"><span>资料完整度：</span><span class="color_main"><?php  echo $company_integrity?>%</span>
                <a class="color_main resume_view" href="">预览</a>
                <a class="color_main resume_edit" href="">修改</a></div>
            <div class="jindutiao">
                <div class="jindu_con"></div>
            </div>
            <div class="sousuo">
                <svg class="icon icon_sousuo" aria-hidden="true">
                    <use xlink:href="#icon-sousuo"></use>
                </svg>
                <input type="text" class="sousuo_content font1_zj" placeholder="输入职位" style="font-size: 12px;">
            </div>
            <input type="button" class="sousuo_btn" value="找人才">
        </div>
    </div>
    <div class="ads">
        <div class="ads_con">
            <a class="ads1" href="">
                <span class="topnum">Top1</span>
                <div class="title">
                    <p class="title_con">IOS11更新了，给你100+个IOS11实用技巧</p>
                </div>
                <img src="<?php echo WL_URL_ARES;?>images/ads1.png" class="ads_pic">
            </a>
            <a class="ads2" href="">
                <span class="topnum1">Top2</span>
                <div class="title">
                    <p class="title_con">IOS11更新了，给你100+个IOS11实用技巧</p>
                </div>
                <img src="<?php echo WL_URL_ARES;?>images/ads2.png" class="ads_pic">
            </a>
        </div>
    </div>
</div>