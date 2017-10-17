<?php

class jobs{

    public function get_jobs($id){
        $jobs = pdo_fetch("select * from ".tablename(WL.'jobs')." where id=".$id);
        return $jobs;
    }
    
    public function getall_jobs($uid){
        $jobs = pdo_fetchall("select * from ".tablename(WL."jobs")." where uid=".$uid." order by open desc");
        $arr = "";
        foreach ($jobs as $list){
            $list['resume_count'] = pdo_fetchcolumn("select COUNT(*) from ".tablename(WL."jobs_apply")." where jobs_id=".$list['id']);
            $arr[] = $list;
        }
//     var_dump($arr);exit();
        return $arr;
    }

    //职位分页
    public function getall_jobs_page($page=1){
        $page = ($page -1)*4;
        $limit = " limit ".$page.",4";
        $jobs = pdo_fetchall("select * from ".tablename(WL."jobs")." order by open desc".$limit);
//        foreach ($jobs as $list){
//            $company = pdo_fetch("select * from ".tablename(WL."company_profile")." where uid=".$list['uid']);
//            $list['com']
//        }
        return $jobs;
    }

public function search_jobs(){

    }
}


