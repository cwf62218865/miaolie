<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/header.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/control.css" rel="stylesheet">
    <link href="<?php echo WL_URL_ARES;?>css/resume.css" rel="stylesheet">
    <title>简历填写</title>
</head>

<body>
<?php  include wl_template('common/header');?>
<div class="resume_content">
    <div class="relative" style="width: 620px;margin: 0 auto">
        <?php  include wl_template('common/resume_reg_nav');?>

        <div class="resume_step_progress">
            <i class="resume_step_ready" style="width: 560px"></i>
        </div>
    </div>


    <!--操作-->
    <div class="cwfresume_reg4">
        <p class="cwftitle">自我介绍</p>



        <div class="cwfreg4content">

            <!--名族-->
            <div class=" relative general-select cwfre3inputleft" style="height: 46px;width: 110px;float: left;border: none">
                <label class="general-input relative general-select" style="margin-left: 0;width: 108px">
                    <input type="text" readonly id="family_name" value="<?php  if($resume['nation']) { ?><?php  echo $resume['nation']?><?php  } else { ?>汉族<?php  } ?>" style="width: 90px;padding-left: 20px;margin: 0;background-color: rgba(0,0,0,0);position: absolute;z-index: 10;top: 0px">
                    <svg class="icon inputicon colorbbb" aria-hidden="true">
                        <use xlink:href="#icon-xiala"></use>
                    </svg>
                </label>
                <div class="options" style="left: 0;width: 110px;top: 48px">
                    <div class="cwfnationaloptions">

                    </div>
                </div>
            </div>

            <!--党籍-->
            <div class=" relative general-select cwfre3inputleft" style="height: 46px;width: 110px;float: left;margin-left: 10px;border: none">
                <label class="general-input relative general-select" style="margin-left: 0;width: 108px">
                    <input type="text" readonly id="identity" value="<?php  if($resume['political_status']) { ?><?php  echo $resume['political_status']?><?php  } else { ?>团员<?php  } ?>" style="width: 90px;padding-left: 20px;margin: 0;background-color: rgba(0,0,0,0);position: absolute;z-index: 10;top: 0px">
                    <svg class="icon inputicon colorbbb" aria-hidden="true">
                        <use xlink:href="#icon-xiala"></use>
                    </svg>
                </label>
                <div class="options" style="left: 0;width: 110px;top: 48px">
                    <div class="cwfoptions_reg4" >
                        <div class='select-option' style='width: 108px'><span>团员</span></div>
                        <div class='select-option' style='width: 108px'><span>党员</span></div>
                        <div class='select-option' style='width: 108px'><span>群众</span></div>
                    </div>
                </div>
            </div>


            <!--籍贯-->
            <div class=" relative general-select cwfre3inputleft" style="height: 46px;width: 110px;float: left;margin-left: 10px;border: none">
                <label class="general-input relative general-select" style="margin-left: 0;width: 108px">
                    <input type="text" readonly id="place" placeholder="籍贯" style="width: 90px;padding-left: 20px;margin: 0;background-color: rgba(0,0,0,0);position: absolute;z-index: 10;top: 0px" value="<?php  if($resume['origin_place']) { ?><?php  echo $resume['origin_place']?><?php  } ?>">
                    <svg class="icon inputicon colorbbb" aria-hidden="true">
                        <use xlink:href="#icon-xiala"></use>
                    </svg>
                </label>

                <div class="options" style="left: 0;width: 242px;top: 48px">
                    <div class="cwfcityoptions">

                    </div>
                    <div class="cwfarea">
                        <span>请先选择城市</span>
                    </div>

                </div>
            </div>


            <!--出生年月-->
            <div class=" relative general-select cwfre3inputleft" style="height: 46px;width: 110px;display: inline-block;margin-left: 10px;border: none">
                <label class="general-input relative general-select" style="margin-left: 0;width: 108px;">
                    <input type="text" readonly id="birthday" placeholder="出生年月" style="width: 90px;padding-left: 20px;margin: 0;background-color: rgba(0,0,0,0);position: absolute;z-index: 10;top: 0px"  value="<?php  if($resume['birthday']) { ?><?php  echo $resume['birthday']?><?php  } ?>">
                    <svg class="icon inputicon colorbbb" aria-hidden="true">
                        <use xlink:href="#icon-xiala"></use>
                    </svg>
                </label>
                <div class="options" style="left: 0;width: 242px;top: 48px">
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

            <div class="cwf_tip">
            </div>
        </div>


        <div class="cwfreg4content" style="height: 64px;border: 1px solid #f5f5f5;width: 468px;background-color: #f5f5f5">
            <textarea class="cwftextarea" id="introduce" placeholder="一句话介绍自己，告诉我为什么选择您而不是别人"><?php  echo $resume['introduce']?></textarea>
        </div>
        <div class="cwf_tip1">
        </div>

        <div class="cwfreg4content " style="height: auto;margin-top: 20px;padding-bottom: 13px">
            <span class="cwfseeexample">查看示例</span>
            <span class="cwftextareamsg">还可输入<span id="textareanum" style="color: #1aa9d2">60</span>字</span>
        </div>

        <div class="cwfreg4content examplebox" style="height: 0;padding: 0;background-color: #fffdee;overflow: hidden">
            <div class="cwfexamples">
                <span class="cwfexamplenum">[示例一]</span>
                <div>大学三年兼职设计公司，具有丰富的平面设计能力</div>
            </div>
            <div class="cwfexamples">
                <span class="cwfexamplenum">[示例二]</span>
                <div>大学三年兼职设计公司，具有丰富的平面设计能力</div>
            </div>
        </div>

        <div class="cwfgoing">
            <span class="cwfgoingleft">上一步</span>
            <span class="cwfgoingright" id="finished">创建完成！</span>
        </div>

    </div>
</div>


</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/area.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/resume_reg4.js" rel="script"></script>
<script>
    $(document).ready(function(){
        $(".cwfgoingleft").on("click",function () {
            window.location.href = "<?php  echo app_url('resume/resume_reg/3')?>";
        })

        $("#finished").on("click",function(){
            var family_name=$("#family_name").val();//名族
            var identity=$("#identity").val();//身份
            var place=$("#place").val();//籍贯
            var birthday=$("#birthday").val();//出生日期
            var introduce=$("#introduce").val();//介绍


            if($.trim(place)==""){
                var input_box=$("#place").closest(".general-input");
                input_box.css("border-color","#e23d46");
                $(".cwf_tip").eq(0).html(tipmsg("error","请选择籍贯"));
                return false;
            }
            if($.trim(birthday)==""){
                var input_box=$("#birthday").closest(".general-input");
                input_box.css("border-color","#e23d46");
                $(".cwf_tip").eq(0).html(tipmsg("error","请选择生日"));
                return false;
            }

            if($.trim(introduce)==""){
                var input_box=$("#introduce").closest(".cwfreg4content");
                input_box.css("border-color","#e23d46");
                $(".cwf_tip1").eq(0).html(tipmsg("error","请介绍下自己"));
                return false;
            }


            $.ajax({
                url:"<?php  echo app_url('resume/resume_reg/step4_save')?>",
                type:"post",
                data:{
                    family_name:family_name,
                    identity:identity,
                    place:place,
                    birthday:birthday,
                    introduce:introduce
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