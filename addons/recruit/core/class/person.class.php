<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/9/21 0021
 * Time: 14:08
 */

class person{

    private $resume;
    public function __construct()
    {
        if($_SESSION['utype']==1){
            $this->resume = m('resume');
        }else{
//            header("location:".app_url("member/index/index"));
            die("只有求职者用户才能访问");
        }
    }

    public function get_profile(){

    }


    /*
     * 投递简历
     */
    public function send_resume($uid,$jobs_id){
        $resume = $this->get_resume($uid);
        $jobs = m("jobs")->get_jobs($jobs_id);
        $data['resume_id'] = $resume['id'];
        $data['puid'] = $resume['uid'];
        $data['uid'] = $jobs['uid'];
        $data['jobs_id'] = $jobs['id'];
        $data['creatime'] = time();
        $resume_jobs = pdo_fetch("select * from ".tablename(WL.'jobs_apply')." where puid=".$uid." and jobs_id=".$jobs_id);
        if($resume_jobs){
            return true;
        }else{
            pdo_insert(WL."resume_jobs",$data);
        }
    }
    
    /*
     * 查看投递的简历
     */
    public function check_send_resume(){
        
    }

    /*
     * 收藏职位
     */
    public function collect_jobs($uid,$jobs_id){
        $jobs = m("jobs")->get_jobs($jobs_id);
        
    }

    /*
     * 评价面试职位
     */
    public function comment_jobs($uid,$jobs_id,$content){
        $resume_jobs = pdo_fetch("select * from ".tablename(WL.'resume_jobs')." where offer=1 and puid=".$uid." and jobs_id=".$jobs_id);
        if($resume_jobs){
            $data['uid'] = $resume_jobs['uid'];
            $data['puid'] = $resume_jobs['puid'];
            $data['resume_id'] = $resume_jobs['resume_id'];
            $data['jobs_id'] = $resume_jobs['jobs_id'];
            $data['content'] = $content;
            $data['createtime'] = time();
            return pdo_insert(WL."comment",$data);
        }else{
           call_back(2,"还没有面试邀请");
        }
    }
}