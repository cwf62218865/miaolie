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


public function search_jobs(){

    }
}


