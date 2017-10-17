<?php defined('IN_IA') or exit('Access Denied');?><?php  include wl_template('common/header');?>
<ul class="nav nav-tabs">
	<li <?php  if($op=='display') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('member/member/display')?>">会员列表</a></li>
	<li <?php  if($op=='addmember') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('member/member/addmember')?>">新增会员</a></li>
</ul>
<div class="main">
	<form action="" method="post" class="form-horizontal form" id="setting-form">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="tab-content">
					<div class="tab-pane active" id="tab_basic">
						<div class="form-group">
							<label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">身份类型</label>
							<div class="col-xs-12 col-sm-8">
								<select name="utype" class="form-control">
									<option value="1" >求职者</option>
									<option value="2" >企业</option>
									<option value="3" >导师</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">用户名</label>
							<div class="col-sm-8">
								<input type="text" name="username" class="form-control" value="" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">手机号</label>
							<div class="col-xs-12 col-sm-8">
								<input type="text" name="mobile" class="form-control" value="" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">邮箱</label>
							<div class="col-xs-12 col-sm-8">
								<input type="text" name="email" class="form-control" value="" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">密码</label>
							<div class="col-xs-12 col-sm-8">
								<input type="text" name="password" class="form-control" value="" />
							</div>
						</div>
					</div>
				</div>
				<div class="form-group col-sm-10" >
					<input type="submit" name="submit" value="提交" class="btn btn-primary col-lg-1" style="float: right;margin-right: 400px;" />
					<input type="hidden" name="addmember" value="addmember" />
				</div>
			</div>

		</div>

	</form>
</div>



<script>
$(function () {
		window.optionchanged = false;
		$('#myTab a').click(function (e) {
			e.preventDefault();//阻止a链接的跳转行为
			$(this).tab('show');//显示当前选中的链接及关联的content
		})
	});
</script>
<?php  include wl_template('common/footer');?>