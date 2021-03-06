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
    <title>完善企业信息-第二步</title>
</head>
<body>
<?php  include wl_template('common/header');?>
<div class="resume_content loginn_zj">
    <div class="relative" style="width: 426px;margin: 0 auto">
        <div class="resume_step">
            <div class="resume_stepbox">
            <span class="resume_step_circular">
                <div class="resume_step_circular1 resume_step_ready">
                    <span>
                        <svg class="icon icon_right" aria-hidden="true">
                            <use xlink:href="#icon-zhengque1"></use>
                        </svg>
                    </span>
                </div>
            </span>
                <p>企业注册</p>
            </div>
            <div class="resume_stepbox">
            <span class="resume_step_circular">
                <div class="resume_step_circular1 resume_step_ready"><span>2</span></div>
            </span>
                <p>认证信息</p>
            </div>
            <div class="resume_stepbox">
            <span class="resume_step_circular">
                <div class="resume_step_circular1 resume_step_no"><span>3</span></div>
            </span>
                <p>完善信息</p>
            </div>
        </div>

        <div class="resume_step_progress">
            <i class="resume_step_ready" style="width: 290px;"></i>
        </div>

        <div class="register_msg" style="height: 438px;margin-bottom: 196px">
            <div class="msg_zj">
                <div class="title_step2">认证信息</div>
                <label class="general-input detail_zj" >
                    <input type="text" placeholder="请输入公司名称" value="<?php  echo $company['companyname']?>" id="company_name">
                </label>
                <div class="step2_btns">
                    <div class="one_btn btn1 license">
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-shangchuan"></use>
                        </svg>
                        <?php  if($company['license']) { ?>
                        <div class="upload" style="display: block">
                            <img src="<?php  echo $company['license']?>" class="rzpic"/>
                            <div class="meng btn1"><span>重新上传</span></div>
                        </div>
                        <?php  } else { ?>
                        <div class="upload" style="display: none">
                            <img src="" class="rzpic"/>
                            <div class="meng btn1"><span>重新上传</span></div>
                        </div>
                        <?php  } ?>
                    </div>
                    <div class="one_btn btn2 idcard1">
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-shangchuan"></use>
                        </svg>
                        <?php  if($company['idcard1']) { ?>
                        <div class="upload" style="display: block">
                            <img src="<?php  echo $company['idcard1']?>" class="rzpic"/>
                            <div class="meng btn2"><span>重新上传</span></div>
                        </div>
                        <?php  } else { ?>
                        <div class="upload" style="display: none">
                            <img src="" class="rzpic"/>
                            <div class="meng btn2"><span>重新上传</span></div>
                        </div>
                        <?php  } ?>
                    </div>
                    <div class="one_btn btn3 idcard2">
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-shangchuan"></use>
                        </svg>
                        <?php  if($company['idcard2']) { ?>
                        <div class="upload" style="display: block">
                            <img src="<?php  echo $company['idcard2']?>" class="rzpic" id="upload_pic"/>
                            <div class="meng btn3"><span>重新上传</span></div>
                        </div>
                        <?php  } else { ?>
                        <div class="upload" style="display: none">
                            <img src="" class="rzpic"/>
                            <div class="meng btn3"><span>重新上传</span></div>
                        </div>
                        <?php  } ?>
                    </div>
                    <p class="pro1" style="width: 100px;">营业执照</p>
                    <p class="pro1" style="margin-left: 20px;">法人身份证(正面)</p>
                    <p class="pro1" style="text-align: right;">法人身份证(反面)</p>
                </div>
                    <span class="public_bigbtn bg1aa wrap" id="uploadcompany_pic">最后一步：补全资料</span>
            </div>

        </div>
    </div>

    <!--弹框-->
    <div class="modalbox" id="modalbox" style="display: none;">
        <div class="modal">
            <p class="title_content">标题内容</p>
            <span class="modalclose">
                <img src="<?php echo WL_URL_ARES;?>images/close.png"/>
            </span>
            <div class="modal_con">
                <div class="one_btn">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-shangchuan"></use>
                    </svg>
                    <div class="upload" style="display: none">
                    <img src="<?php echo WL_URL_ARES;?>images/timg22.png" class="rzpic"/>
                    <div class="meng"><span>重新上传</span></div>
                    </div>
                </div>
                <form id="choosefile1" enctype="multipart/form-data">
                    <input type="file" name='file' id="choosefile"   accept='image/*'/>
                </form>
                <div class="erweima">
                    <!--<img src="<?php echo WL_URL_ARES;?>images/erweima.png" class="pic"/>-->
                </div>
            </div>
            <div class="title">
                <span>电脑上传</span>
                <span>手机扫码上传</span>
            </div>
            <span class="public_bigbtn bg1aa modalbtn"> 立即上传</span>
        </div>
    </div>
    <!--弹框end-->
</div>

</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/ajaxfileupload.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/control.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/jquery.qrcode.min.js" rel="script"></script>
<script>
   $(function () {
       var boxbum="";
        $(".btn1").click(function () {
            boxbum=1;
            $(".title_content").html("上传营业执照");
            $("#modalbox").animate({"opacity":1},300);
            $(".erweima").attr("id","code1").children().remove();
            $('#code1').qrcode({
                width: 100, //宽度
                height:100, //高度
                text: "<?php  echo app_url('member/company_register/mobileupload',array('identity'=>$identity,'kind'=>1))?>" //任意内容
            });
            setTimeout(function(){
                $("#modalbox").css("display","block");
            },300)
        });
       $(".btn2").click(function () {
           boxbum=2;
           $(".title_content").html("上传身份证正面照");
           $(".erweima").attr("id","code2").children().remove();
           $('#code2').qrcode({
               width: 100, //宽度
               height:100, //高度
               text: "<?php  echo app_url('member/company_register/mobileupload',array('identity'=>$identity,'kind'=>2))?>" //任意内容
           });
           $("#modalbox").animate({"opacity":1},300);
           setTimeout(function(){
               $("#modalbox").css("display","block");
           },300)
       });
       $(".btn3").click(function () {
           boxbum=3;
           $(".title_content").html("上传身份证反面照");
           $(".erweima").attr("id","code3").children().remove();
           $('#code3').qrcode({
               width: 100, //宽度
               height:100, //高度
               text: "<?php  echo app_url('member/company_register/mobileupload',array('identity'=>$identity,'kind'=>3))?>" //任意内容
           });
           $("#modalbox").animate({"opacity":1},300);
           setTimeout(function(){
               $("#modalbox").css("display","block");
           },300)
       });

       $(".modalclose").on("click",function(){
           $("#modalbox").animate({"opacity":0},300);
           setTimeout(function(){
               $("#modalbox").css("display","none");
           },300)
       });


       $('#choosefile').on('change',function(e){
           var imgfile=this.files[0];
           var src=URL.createObjectURL(imgfile);
           var uploadimg="<img style='width:100%' src='"+src+"' id='upload_pic'>";
           $(this).parent().prev().html(uploadimg);

           //uploadFile(this,'choosefile',boxbum);
       });

       $(".modalbtn").on("click",function(){
           //uploadFile( $('#choosefile'),"choosefile",boxbum);

           var uploadFormData =new FormData($("#choosefile1")[0]);

           $.ajax({
               url:"<?php  echo app_url('member/company_register/upload')?>kind="+boxbum,
               type:"post",
               processData: false,
               cache: false,
               contentType: false,
               async: false,
               data:uploadFormData,
               success:function (data) {
                   var data=JSON.parse(data);
                   if (boxbum == 1) {
                       $(".license").find(".rzpic").attr("src", data.content).parent().css("display","block");
                   } else if (boxbum == 2) {
                       $(".idcard1").find(".rzpic").attr("src", data.content).parent().css("display","block");
                   } else if (boxbum == 3) {
                       $(".idcard2").find(".rzpic").attr("src", data.content).parent().css("display","block");
                   }
                   $(".chec_tip1").eq(1).html("");
               }
           });
           $("#modalbox").animate({"opacity":0},300);
           setTimeout(function(){
               $("#modalbox").css("display","none");
           },300)
       })


       window.setInterval(
           function(){
               $.ajax({
                   url:"<?php  echo app_url('member/company_register/upload_refresh')?>",
                   type:"post",
                   data:{
                       companyname:$(".detail_zj input").val()
                   },
                   success:function(data){
                       if(data){
                           var data = JSON.parse(data);
                           if(data.status==1){
                              location = location;
                           }
                       }
                   }
               })
           },5000
       );

       //提交申请
       $("#uploadcompany_pic").on("click",function(){
           var company_name=$("#company_name").val();//公司名称
           var license=$(".license").find("img").eq(0).attr("src");//营业执照
           var identity_card1=$(".idcard1").find("img").eq(0).attr("src");//身份证正面
           var identity_card2=$(".idcard2").find("img").eq(0).attr("src");//身份证反面

           var company_name_input=$("#company_name").closest(".general-input");

           if($.trim(company_name)==""){
               alert(1);return;
               company_name_input.css("border-color","#e23d46");
               company_name_input.next().html(tipmsg("error","请输入公司名称"));
               return false;
           }
           if(!license||!identity_card1||!identity_card2){
               alert(2);return;
               $(".chec_tip1").eq(1).html(tipmsg("error","请上传营业执照和身份证正反面照片"));
               return false;
           }

           $.ajax({
               url:"<?php  echo app_url('member/company_register/step2_save')?>",
               type:"post",
               data:{
                   companyname:company_name,
                   license:license,
                   idcard1:identity_card1,
                   idcard2:identity_card2
               },
               success:function(data){
                   var data=JSON.parse(data);
                   if(data.status==1){
                       $("#modalbox").css("display","none");
                       window.location.href = "<?php  echo app_url('member/company_register/step3')?>";
                   }

               }
           })

       })

   }) 
</script>
</html>