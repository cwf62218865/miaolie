<?php defined('IN_IA') or exit('Access Denied');?><?php  include wl_template('common/header');?>
<ul class="nav nav-tabs">
	<li <?php  if($op=='display') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('member/member/display')?>">职位列表</a></li>
</ul>
<?php  if($op=='display') { ?>
<div class="panel panel-default">
	<div class="panel-heading">筛选</div>
	<div class="panel-body">
		<form action="./index.php" method="get" class="form-horizontal" role="form" id="form">
			<input type="hidden" name="c" value="site" />
            <input type="hidden" name="a" value="entry" />
            <input type="hidden" name="m" value="<?php echo WL_NAME;?>" />
            <input type="hidden" name="do" value="member" />
			<input type="hidden" name="ac" value="member" />
			<input type="hidden" name="op" value="display" />
			<div class="form-group">
				<label class="col-md-2 control-label">类型</label>
				<div class="col-sm-8 col-xs-12">
					<div class="btn-group">
						<a href="<?php  echo filter_url('status:-1');?>" class="btn <?php  if($_GPC['status'] == -1 || $_GPC['status'] == '') { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">不限</a>
						<a href="<?php  echo filter_url('status:1');?>" class="btn <?php  if($_GPC['status'] == 1) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">企业会员</a>
						<a href="<?php  echo filter_url('status:2');?>" class="btn <?php  if($_GPC['status'] == 2) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">求职者会员</a>
						<a href="<?php  echo filter_url('status:2');?>" class="btn <?php  if($_GPC['status'] == 2) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">导师会员</a>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">关键字类型</label>
				<div class="col-sm-8 col-xs-12">
					<select name="type" class="form-control">
						<option value="2" <?php  if($_GPC['type'] == 2) { ?>selected<?php  } ?>>手机号</option>
						<option value="3" <?php  if($_GPC['type'] == 3) { ?>selected<?php  } ?>>昵称</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label">关键字</label>
				<div class="col-md-8">
					<input type="text" class="form-control" name="keyword" id="keyword" value="<?php  echo $_GPC['keyword'];?>" />
				</div>
				<div class="pull-right col-md-2">
					<button class="btn btn-default"><i class="fa fa-search"></i> 搜索</button>
				</div>
			</div>
		</form>
	</div>
</div>
<div class="panel panel-default">
	<div class="table-responsive">
		<table class="table table-hover">
			<thead class="navbar-inner">
				<tr>
					<th style="width:60px;">id</th>
					<th style="width:120px;">公司名称</th>
					<th style="width:150px;">行业</th>
					<th style="width:100px;">企业性质</th>
					<th style="width:100px;">所在区域</th>

					<th style="width:210px;" class="text-center">操作</th>
				</tr>
			</thead>
			<tbody>
			<?php  if(is_array($list)) { foreach($list as $li) { ?>
				<tr>
					<td> <?php  echo $li['id']?></td>
					<td><?php  echo $li['companyname']?></td>
					<td><?php  echo $li['industry']?></td>
					<td><?php  echo $li['nature']?></td>
					<td><?php  echo $li['district']?></td>
					<td class="text-center" style="overflow:visible;">
						<a href="<?php  echo app_url('company/member/editmember',array('id'=>$li['id']))?>" class="btn btn-success btn-sm sms">修改信息</a>
						<a href="" class="btn  btn-info btn-sm">查看详情</a>
						<a href="" class="btn btn-warning btn-sm">停止招聘</a>
						<a href="" class="btn  btn-default btn-sm">删除职位</a>
					</td>
				</tr>
			<?php  } } ?>
			</tbody>
		</table>
	</div>
</div>
<?php  echo $pager;?>

<?php  } else if($op=='detail') { ?>
<div class="well" style="padding: 5px 0 0;background-color: white;">
	<div class="form-horizontal">
		<div class="form-group">
			<label class="col-md-1 control-label">uid</label>
			<div class="col-sm-2">
				<p class="form-control-static"><?php  echo $member['uid'];?></p>
			</div>
			<label class="col-md-1 control-label">昵称</label>
			<div class="col-sm-2">
				<p class="form-control-static"><?php  if($member['nickname']) { ?><?php  echo $member['nickname'];?><?php  } else { ?>-<?php  } ?></p>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-1 control-label">手机</label>
			<div class="col-sm-2">
				<p class="form-control-static"><?php  if($member['mobile']) { ?><?php  echo $member['mobile'];?><?php  } else { ?>-<?php  } ?></p>
			</div>
			<label class="col-md-1 control-label">姓名</label>
			<div class="col-sm-5">
				<p class="form-control-static"><?php  if($member['realname']) { ?><?php  echo $member['realname'];?><?php  } else { ?>-<?php  } ?></p>
			</div>
		</div>
	</div>
</div>
<style>
	table thead tr th {text-align: center;}
	table tbody tr td {text-align: center; height: 50px;}
	table tbody tr td:last-child {text-align: center;}
</style>
<div class="panel panel-default">
	<div class="table-responsive">
		<table class="table table-hover">
			<thead class="navbar-inner">
				<tr>
					<th style="width:100px;">发起人</th>
					<th style="width:100px;">车主</th>
					<th style="width:110px;">车牌</th>
					<th style="width:200px;">地点</th>
					<th style="width:140px;">发送时间</th>
				</tr>
			</thead>
			<tbody>
			<?php  if(is_array($list)) { foreach($list as $li) { ?>
				<tr>
					<td><img src="<?php  echo $li['favatar'];?>" width="40" onerror=""> <?php  echo $li['fnickname'];?></td>
					<td><img src="<?php  echo $li['javatar'];?>" width="40" onerror=""> <?php  echo $li['jnickname'];?></td>
					<td><span class="label label-success"><?php  echo $li['carcard'];?></span></td>
					<td><?php  echo $li['location'];?></td>
					<td class="text-right" style="overflow:visible;">
						<?php  echo date("Y-m-d H:i:s",$li['createtime'])?>
					</td>
				</tr>
			<?php  } } ?>
			</tbody>
		</table>
	</div>
</div>
<?php  echo $pager;?>
<?php  } ?>

<?php  include wl_template('common/footer');?>
