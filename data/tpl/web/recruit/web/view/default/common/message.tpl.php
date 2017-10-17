<?php defined('IN_IA') or exit('Access Denied');?><?php  include wl_template('common/header');?>
<div class="page-group">
    <div class="page page-current">
		<div class="content" style="background-color: #fff;">
			<div class="msg">
			<div class="weui_msg">
			    <div class="weui_icon_area"><i class="<?php  if($label=='success') { ?>weui_icon_success<?php  } else { ?>weui_icon_warn<?php  } ?> weui_icon_msg"></i></div>
			    <div class="weui_text_area">
			    	<?php  if(is_array($msg)) { ?>
						<h2 class="weui_msg_title">MYSQL 错误：</h2>
						<p><?php  echo cutstr($msg['sql'], 300, 1);?></p>
						<p><b><?php  echo $msg['error']['0'];?> <?php  echo $msg['error']['1'];?>：</b><?php  echo $msg['error']['2'];?></p>
					<?php  } else { ?>
			        	<h2 class="weui_msg_title"><?php  echo $msg;?></h2>
			       	<?php  } ?>
			    </div>
			    <div class="weui_opr_area">
			        <p class="weui_btn_area">
			        	<?php  if($redirect) { ?>
			            <a href="<?php  echo $redirect;?>" class="weui_btn weui_btn_primary">点击跳转</a>
						<script type="text/javascript">
							setTimeout(function () {
								location.href = "<?php  echo $redirect;?>";
							}, 3000);
						</script>
						<?php  } else { ?>
						<a href="javascript:history.go(-1);" class="weui_btn weui_btn_primary">返回上一页</a>
						<?php  } ?>
			        </p>
			    </div>
			    <div class="weui_extra_area">
			        <a href="<?php  echo app_url('home/index')?>">返回首页</a>
			    </div>
			</div>
			</div>			
		</div>
	</div>
</div>
<?php  include wl_template('common/footer');?>