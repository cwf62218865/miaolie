<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/header.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/control.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/resume.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/reguser1.css" rel="stylesheet">
    <title>简历填写-完善教育经历</title>
</head>
<body>
<?php  include wl_template('common/header');?>
<div class="resume_content">
    <div class="relative" style="width: 620px;margin: 0 auto">
        <?php  include wl_template('common/resume_reg_nav');?>

        <div class="resume_step_progress">
            <i class="resume_step_ready" style="width: 285px"></i>
        </div>


        <div class="register2_msg">
            <div class="msgreg2_zj">
                    <div class="title_zj font_zj1">教育经历</div>

                <div class="zjaddexp" id="eduexp" style="display: none">

                    <label class="general-input left_align school">
                        <input type="text" placeholder="学校名称" class="school_name" value="">
                    </label>
                    <div class=" relative general-select right_align education">
                        <label class="general-input relative general-select">
                            <input type="text" readonly="" placeholder="学历" class="edu_district">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options" style="height: 0px;">
                            <div class="select-option"><span>博士以上</span></div>
                            <div class="select-option"><span>博士</span></div>
                            <div class="select-option"><span>硕士</span> </div>
                            <div class="select-option"><span>本科</span> </div>
                            <div class="select-option"><span>专科</span> </div>
                            <div class="select-option"><span>专科以下</span> </div>
                        </div>
                    </div>
                    <div class="chec_tip1">
                        <div class="left_align"></div>
                        <div class="right_align" style="width: 160px;"></div>
                    </div>
                    <label class="general-input industry">
                        <input type="text" placeholder="所学专业" class="edu_major" value="">
                    </label>
                    <div class=" relative general-select right_align year">
                        <label class="general-input relative general-select" >
                            <input type="text" readonly="" value="" placeholder="毕业时间" class="edu_finish_time">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options" style="height: 0px;">
                            <div class="select-option"><span>计算机科学与技术</span></div>
                            <div class="select-option"><span>软件工程</span> </div>
                            <div class="select-option"><span>电子商务</span> </div>
                            <div class="select-option"><span>土木工程</span> </div>
                        </div>
                    </div>
                    <div class="chec_tip1">
                        <div class="left_align"></div>
                        <div class="right_align" style="width: 160px;"></div>
                    </div>
                </div>
                <?php  if(empty($edu_experience['0'])) { ?>
                <div class="zjaddexp"  >
                    <label class="general-input left_align school">
                        <input type="text" placeholder="学校名称" class="school_name" value="">
                    </label>
                    <div class=" relative general-select right_align education">
                        <label class="general-input relative general-select">
                            <input type="text" readonly="" placeholder="学历" class="edu_district">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options" style="height: 0px;">
                            <div class="select-option"><span>博士以上</span></div>
                            <div class="select-option"><span>博士</span></div>
                            <div class="select-option"><span>硕士</span> </div>
                            <div class="select-option"><span>本科</span> </div>
                            <div class="select-option"><span>专科</span> </div>
                            <div class="select-option"><span>专科以下</span> </div>
                        </div>
                    </div>
                    <div class="chec_tip1">
                        <div class="left_align"></div>
                        <div class="right_align" style="width: 160px;"></div>
                    </div>
                    <label class="general-input industry">
                        <input type="text" placeholder="所学专业" class="edu_major" value="">
                    </label>
                    <div class=" relative general-select right_align year">
                        <label class="general-input relative general-select" >
                            <input type="text" readonly="" value="" placeholder="毕业时间" class="edu_finish_time">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options" style="height: 0px;">
                            <div class="select-option"><span>计算机科学与技术</span></div>
                            <div class="select-option"><span>软件工程</span> </div>
                            <div class="select-option"><span>电子商务</span> </div>
                            <div class="select-option"><span>土木工程</span> </div>
                        </div>
                    </div>
                    <div class="chec_tip1">
                        <div class="left_align"></div>
                        <div class="right_align" style="width: 160px;"></div>
                    </div>
                </div>
                <?php  } ?>
                <?php  if(is_array($edu_experience)) { foreach($edu_experience as $id => $list) { ?>
                <div class="zjaddexp">
                    <?php  if($id) { ?>
                        <span class='cwfdashed460'></span>
                    <?php  } ?>
                    <label class="general-input left_align school">
                        <input type="text" placeholder="学校名称" class="school_name" value="<?php  echo $list['school_name']?>">
                    </label>
                    <div class=" relative general-select right_align education">
                        <label class="general-input relative general-select">
                            <input type="text" readonly="" value="<?php  if($list) { ?><?php  echo $list['edu_district']?><?php  } else { ?>本科<?php  } ?>" class="edu_district">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options" style="height: 0px;">
                            <div class="select-option"><span>博士以上</span></div>
                            <div class="select-option"><span>博士</span></div>
                            <div class="select-option"><span>硕士</span> </div>
                            <div class="select-option"><span>本科</span> </div>
                            <div class="select-option"><span>专科</span> </div>
                            <div class="select-option"><span>专科以下</span> </div>
                        </div>
                    </div>
                    <div class="chec_tip1">
                        <div class="left_align"></div>
                        <div class="right_align" style="width: 160px;"></div>
                    </div>
                <label class="general-input industry">
                    <input type="text" placeholder="所学专业" class="edu_major" value="<?php  echo $list['edu_major']?>">
                </label>
                    <div class=" relative general-select right_align year">
                        <label class="general-input relative general-select" >
                            <input type="text" readonly="" value="<?php  echo $list['edu_finish_time']?>" placeholder="毕业时间" class="edu_finish_time">
                            <svg class="icon inputicon" aria-hidden="true">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-xiala" class="colorbbb"></use>
                            </svg>
                        </label>
                        <div class="options" style="height: 0px;">
                            <div class="select-option"><span>计算机科学与技术</span></div>
                            <div class="select-option"><span>软件工程</span> </div>
                            <div class="select-option"><span>电子商务</span> </div>
                            <div class="select-option"><span>土木工程</span> </div>
                        </div>
                    </div>
                    <div class="chec_tip1">
                        <div class="left_align"></div>
                        <div class="right_align" style="width: 160px;"></div>
                    </div>
                </div>
                <?php  } } ?>
                <div class="cwfreg3content"   id="addexp">
                    <span class="cwfaddexp">添加更多经历</span>
                </div>
            </div>
            <div class="next_step">
                <div class="prev left_align font_2" style="cursor: pointer">上一步</div>
                <div class="next_btn left_align font_2" id="edu_submit_next_step">下一步，工作经历</div>
            </div>
        </div>
    </div>
    
</div>


</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script>
    $(document).ready(function(){
        $(".prev").on("click",function () {
            window.location.href = "<?php  echo app_url('resume/resume_reg/1')?>";
        })
        var date=new Date();
        var year=date.getFullYear();
        var end=year-15;
        var html="";
        for(var i=year;i>=end;i--){
            html+="<div class='select-option'><span>"+i+"</span></div>";
        }
        $(".year .options").html(html);


        //设置下拉选择框
        $("body").on("mousedown",".general-select input",function(){
            var _this=$(this);
            if(_this.closest(".general-select").next().height()=="0"){
                $(".options").css("height","0px");
                _this.closest(".general-select").next().css("height","185px");
            }else {
                _this.closest(".general-select").next().css("height","0px");
            }
        });
        $("body").on("mousedown",".select-option",function(){
                var _this=$(this);
                var optionhtml=_this.find("span").eq(0).html();
                _this.closest(".options").prev().find("input").val(optionhtml);
                _this.closest(".options").css("height","0");
        });

        $(".cwfaddexp").on('click',function(){
            var addexp=$("#eduexp").html();
            var addexpcontent="<div class='zjaddexp'><span class='cwfdashed460'></span>"+addexp+"</div>";
            $("#addexp").before(addexpcontent);
            $(".msgreg2_zj .cwfaddexp").css("width","218px");
            if($("#addexp .cwfdelexp").length==0){
                $("#addexp").append("<span class='cwfdelexp'>删除</span>")
            };
        });

        //删除操作
        $('body').on("click",".cwfdelexp",function(){
            var exps=$(".zjaddexp");
            if(exps.length>2){
                exps.eq(exps.length-1).remove();
            }else if(exps.length==2){
                exps.eq(exps.length-1).remove();
                $(".msgreg2_zj .cwfaddexp").css("width","100%");
                $(".cwfdelexp").remove();
            }
        })


        $(".edu_finish_time").on("click",function(){
            $(this).closest(".year").next().find(".right_align").html("");
        })

        $("body").on("click",".edu_finish_time",function(){
            $(this).closest(".year").next().find(".right_align").html("");
        })

        $("#edu_submit_next_step").click(function(){
            var explength=$(".zjaddexp").length;
            var eud_data=[];
            for(var i=1;i<explength;i++){
                eud_data[i-1]={};
                var school_name=$(".school_name").eq(i).val();
                var edu_district=$(".edu_district").eq(i).val();
                var edu_major=$(".edu_major").eq(i).val();
                var edu_finish_time=$(".edu_finish_time").eq(i).val();

                var school_input=$(".school_name").eq(i).closest(".general-input");
                var major_input=$(".edu_major").eq(i).closest(".general-input");
                var finish_input=$(".edu_finish_time").eq(i).closest(".general-input");
                var finish_border=$(".edu_finish_time").eq(i).closest(".year");

                if(school_name==""){
                    school_input.css("border-color","#e23d46");
                    school_input.next().next().find(".left_align").html(tipmsg("error","请输入学校名称"));
                    return false;
                }else{
                    school_input.next().next().find(".left_align").html("");
                }
                if(edu_major==""){
                    major_input.css("border-color","#e23d46");
                    major_input.next().next().find(".left_align").html(tipmsg("error","请输入所学专业"));
                    return false;
                }else{
                    major_input.next().next().find(".left_align").html("");
                }

                if(edu_finish_time==""){
                    finish_input.css("border-color","#e23d46");
                    finish_border.next().find(".right_align").html(tipmsg("error","请选择毕业时间"));
                    return false;
                }

                eud_data[i-1]["school_name"]=school_name;
                eud_data[i-1]["edu_district"]=edu_district;
                eud_data[i-1]["edu_major"]=edu_major;
                eud_data[i-1]["edu_finish_time"]=edu_finish_time;

            }

            $.ajax({
                url:"<?php  echo app_url('resume/resume_reg/step2_save')?>",
                type:"post",
                cache: false,
                data:{
                    data:eud_data
                },
                success:function(data){
                    var data=JSON.parse(data);
                    if(data.status==1){
                        window.location.href=data.content;
                    }else{
                        console.log(data.content);
                    }
                }
            })

        })
    })
</script>
</html>