<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo WL_URL_ARES;?>css/mobileuoload.css" rel="stylesheet">
    <title>手机照片上传</title>
</head>
<body>
<div class="mobilebox">
    <div class="top_structure">
        <img class="logo" src="<?php echo WL_URL_ARES;?>images/logo_1.png">
        <div class="file_name">
            <?php  echo $kind?>
        </div>

        <div class="imgbox">
            <svg class="icon icon1" aria-hidden="true" >
                <use xlink:href="#icon-shangchuan"></use>
            </svg>
        </div>
        <form id="choosefile1" enctype="multipart/form-data">
            <input type='file' name='file' id='file' accept='image/*' style="display: none">
            <input type="hidden" name="identity" value="<?php  echo $_GPC['identity']?>">
        </form>
        <span class="file_btn camera">选择文件</span>
        <span class="file_btn camera1">确定上传</span>
        <span class="file_btn Album1">更换照片</span>
    </div>
</div>
</body>
<script src="<?php echo WL_URL_ARES;?>js/jquery.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/ajaxfileupload.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/iconfont.js" rel="script"></script>
<script src="<?php echo WL_URL_ARES;?>js/mobileuoload.js" rel="script"></script>

<script>

    //上传文件
    $('.camera,.Album1').on('click',function(){
        var file=$("#file");
        file.click();
        file.on('change',function(e){
            var height=$(window).height();

            var imgfile=this.files[0];
            var src=URL.createObjectURL(imgfile);
            var uploadsuccesspic="<img style='height:"+height*20.5/100+"px;width:"+height*20.5/100+"px;margin-top:"+height*2/100+"px;margin-bottom:"+height*2/100+"px' src='"+src+"'>"
            $('.imgbox').html(uploadsuccesspic);
            $(".camera1").css("display","block");
            $(".Album1").css("display","block");
            $(".camera").css("display","none")
            //uploadFile(this,'file');
        });
    });
    
    var uploadurl = "<?php  if($kind=='简历头像上传') { ?><?php  echo app_url('member/index/headimgupload_deal')?><?php  } else if($kind=='个人作品上传') { ?><?php  echo app_url('member/index/worksupload_deal')?><?php  } ?>";


    //上传图片
    $(".camera1").on("click",function(){
        //uploadFile( $('#choosefile'),"choosefile",boxbum);

        var uploadFormData =new FormData($("#choosefile1")[0]);

        $.ajax({
            url:uploadurl,
            type:"post",
            processData: false,
            cache: false,
            contentType: false,
            async: false,
            data:uploadFormData,
            success:function (data) {
                var data=JSON.parse(data);
                if(data.status==1){
                    location = location;
                }
                $(".chec_tip1").eq(1).html("");
            }
        });
        $("#modalbox").animate({"opacity":0},300);
        setTimeout(function(){
            $("#modalbox").css("display","none");
        },300)
    })



    


</script>
</html>