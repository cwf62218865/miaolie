<?php defined('IN_IA') or exit('Access Denied');?><?php  include wl_template('common/header');?>
<ul class="nav nav-tabs">
	<li <?php  if($op=='display') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('position/position/display')?>">职位列表</a></li>
	<li <?php  if($op=='add') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('position/position/add')?>">新增职位</a></li>
</ul>
<div class="main">
	<form action="" method="post" class="form-horizontal form" id="setting-form">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="tab-content">
					<div class="tab-pane active" id="tab_basic">

						<div class="form-group">
							<label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">职位名称</label>
							<div class="col-sm-8">
								<input type="text" name="position" class="form-control" value="" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">岗位职责</label>
						</div>
						<div class="form-group">
							<div class="col-xs-12 col-sm-8  col-md-offset-2 col-lg-offset-2">
								<textarea type="text" name="duty" class="form-control"  placeholder="示例:
希尔瓦拉斯
游学者" style="height: 150px;"></textarea>
							</div>

						</div>
						<div class="form-group">
							<label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">任职要求</label>
						</div>
						<div class="form-group">
							<div class="col-xs-12 col-sm-8 col-md-offset-2 col-lg-offset-2">
								<textarea name="require" class="form-control" placeholder="示例:
希尔瓦拉斯
游学者" style="height: 150px;"></textarea>
							</div>

						</div>
					</div>
				</div>
				<div class="form-group col-sm-10" >
					<input type="submit" name="submit" value="提交" class="btn btn-primary col-lg-1" style="float: right;margin-right: 400px;" />
					<input type="hidden" name="add" value="add" />
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