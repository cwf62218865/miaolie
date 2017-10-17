<?php
defined('IN_IA') or exit('Access Denied');
wl_load()->model('api');
if($_SESSION['uid']){
    $resume = m("resume")->get_resume($_SESSION['uid']);
}

if($op=="index"){

    if(!$resume['fullname']){
        $url = app_url('resume/resume_reg/1');

    }elseif (!$resume['edu_experience']){
        $url = app_url('resume/resume_reg/2');

    }elseif (!$resume['work_experience']){
        $url = app_url('resume/resume_reg/3');

    }elseif (!$resume['introduce']){
        $url = app_url('resume/resume_reg/4');
    }
    include wl_template("resume/first_index");exit();
}elseif($op=="home"){
    include wl_template("resume/first_index");exit();
}

//已投递职位列表
elseif ($op=="send_resume"){
    $apply_jobs = m("resume")->jobs_apply($_SESSION['uid']);
//    var_dump($apply_jobs);exit();
    include wl_template("person/send_resume");exit();
}

//收藏职位列表
elseif ($op=="collection_jobs_list"){
    $collect_jobs = pdo_fetchall("select jobs_id,createtime from ".tablename(WL."collect_jobs")." where uid=".$_SESSION['uid']);
    $jobs = "";
    foreach ($collect_jobs as $key=>$list){
        $jobs[$key] = pdo_fetch("select * from ".tablename(WL."jobs")." where id=".$list['jobs_id']);
        $jobs[$key]['createtime'] = $list['createtime'];
    }

    $order_jobs = pdo_fetch("select * from ".tablename(WL."order_jobs")." where puid=".$_SESSION['uid']);
//    var_dump($order_jobs);exit();
    $order_jobs_lists = pdo_fetchall("select * from ".tablename(WL."jobs")." where jobs_name like '%".$order_jobs['jobs_name']."%'");
    $order_jobs_list = "";
    foreach ($order_jobs_lists as $list){
        $company_profile = pdo_fetch("select * from ".tablename(WL."company_profile")." where uid=".$list['uid']);
        $list['headimgurl'] = $company_profile['headimgurl'];
        $list['companyname'] = $company_profile['companyname'];
        $list['tag'] = $company_profile['tag'];
        $list['address'] = $company_profile['city'].$company_profile['city_erea'].$company_profile['district'];
        $order_jobs_list[] = $list;
    }

    include wl_template("person/person_collection");exit();
}


//简历管理
elseif ($op=="resume_center"){
    include wl_template("person/person_collection");exit();
}


elseif ($op=="post_resume"){

    $data['jobs_id'] = check_pasre($_POST['data_id'],"参数错误");
    $data['uid'] = check_pasre($_POST['uid'],"参数错误");
    $data['resume_id'] = $resume['id'];
    $data['puid'] = $resume['uid'];
    $data['direction'] = 2;
    $data['createtime'] = time();
    $r = insert_table($data,WL."jobs_apply");
    if($r){
        call_back(1,"ok");
    }else{
        call_back(2,"no");
    }
//    var_dump($_POST);exit();
}