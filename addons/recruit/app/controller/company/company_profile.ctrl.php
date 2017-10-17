<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/22 0022
 * Time: 17:23
 */
defined('IN_IA') or exit('Access Denied');

if($op=="index"){
    $company = m('company')->get_profile($_SESSION['uid']);
//    include wl_template("company/company_message");exit();
    if(!$company['atlas'] ||!$company['introduce']){
        include wl_template("company/company_nomessage");
    }else{
        include wl_template("company/company_message");
    }
}


elseif ($op=="first_index"){

    include wl_template("company/company_nomessage");
}

//跟换头像
elseif ($op=="change_headimgurl"){
    var_dump($_FILES);exit();
    $worksurl = upload_img($_FILES);
    call_back(1,$worksurl);
}

//跟换添加公司图集
elseif ($op=="change_company_atlas"){
    $atlas = upload_img($_FILES);
    call_back(1,$atlas);
}

//保存公司介绍
elseif ($op=="save_introduce"){
//    var_dump($_POST);exit();
    if($_POST['data']['companymsg_introduce']){
        $introduce = $_POST['data']['companymsg_introduce'];
        $r = pdo_update(WL."company_profile",array('introduce'=>$introduce,'updatetime'=>time()),array('uid'=>$_SESSION['uid']));
        if($r){
            call_back(1,"ok");
        }else{
            call_back(2,"no");
        }
    }
}

//保存公司地址
elseif ($op=="save_address"){
//    var_dump($_POST);exit();
    $data['city'] = check_pasre($_POST['data']['city'],"请输入城市");
    $data['city_area'] = check_pasre($_POST['data']['area'],"请输入城市区域");
    $data['address'] = $_POST['data']['address'];
    $data['district'] = $_POST['data']['undefined'];
    $coordinate = explode(",",$_POST['data']['coordinate']);
    $data['retoate_x'] = $coordinate[0];
    $data['retoate_y'] = $coordinate[1];
    $data['updatetime'] = time();
    $r = pdo_update(WL."company_profile",$data,array('uid'=>$_SESSION['uid']));
    if($r){
        call_back(1,"ok");
    }else{
        call_back(2,"no");
    }
}

//保存福利标签
elseif ($op=="save_tag"){
    $data['tag'] = check_pasre($_POST['data']['company_welfare'],"参数错误");
    $data['updatetime'] = time();
    $r = pdo_update(WL.'company_profile',$data,array('uid'=>$_SESSION['uid']));
    if($r){
        call_back(1,"ok");
    }else{
        call_back(2,"no");
    }
}

//保存公司网站
elseif ($op=="save_website"){
//    var_dump($_POST);exit();
    $data['website'] = check_pasre($_POST['data']['company_url'],"请输入公司网址");
    $data['updatetime'] = time();
    $r = pdo_update(WL.'company_profile',$data,array('uid'=>$_SESSION['uid']));
    if($r){
        call_back(1,"ok");
    }else{
        call_back(2,"no");
    }
}




