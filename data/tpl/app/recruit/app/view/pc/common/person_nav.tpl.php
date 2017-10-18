<?php defined('IN_IA') or exit('Access Denied');?><div class="con_top">
    <div class="items">
        <a class="items_yuan itemm1" href="<?php  echo app_url('person/index/send_resume')?>">
            <svg class="icon icon_item" aria-hidden="true">
                <use xlink:href="#icon-toudiguanli"></use>
            </svg>
        </a>
        <a class="title_items" href="<?php  echo app_url('person/index/send_resume')?>">
            <p class="span">投递管理</p>
            <p class="item_beizhu">投递记录、面试邀请</p>
        </a>
    </div>
    <div class="items">
        <a class="items_yuan itemm2" href="<?php  echo app_url('person/resume/manage_resume')?>">
            <svg class="icon icon_item" aria-hidden="true">
                <use xlink:href="#icon-jianliguanli"></use>
            </svg>
        </a>
        <a class="title_items" href="<?php  echo app_url('person/resume/manage_resume')?>">
            <p class="span">简历管理</p>
            <p class="item_beizhu">编辑、修改简历信息</p>
        </a>
    </div>
    <div class="items">
        <a class="items_yuan itemm3" href="<?php  echo app_url('person/index/collection_jobs_list')?>">
            <svg class="icon icon_item" aria-hidden="true">
                <use xlink:href="#icon-shoucangguanli"></use>
            </svg>
        </a>
        <a class="title_items" href="<?php  echo app_url('person/index/collection_jobs_list')?>">
            <p class="span">收藏订阅</p>
            <p class="item_beizhu">收藏、订阅的职位</p>
        </a>
    </div>
    <div class="items">
        <a class="items_yuan itemm4" href="<?php  echo app_url('person/index/collection_jobs_list')?>">
            <svg class="icon icon_item" aria-hidden="true">
                <use xlink:href="#icon-zhichangxinyong"></use>
            </svg>
        </a>
        <a class="title_items" href="<?php  echo app_url('person/index/collection_jobs_list')?>">
            <p class="span">职场信用</p>
            <p class="item_beizhu">面试评价、举报反馈</p>
        </a>
    </div>
</div>