<?php defined('IN_IA') or exit('Access Denied');?><?php  include wl_template('common/header');?>
<ul class="nav nav-tabs">
	<li <?php  if($op=='display') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('member/member/display')?>">会员列表</a></li>
	<li <?php  if($op=='person') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('member/member/person')?>">求职者</a></li>
	<li <?php  if($op=='company') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('member/member/company')?>">企业</a></li>
	<li <?php  if($op=='teacher') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('member/member/teacher')?>">导师</a></li>
	<li <?php  if($op=='detail') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('member/member/addmember')?>">新增会员</a></li>
</ul>
<?php  if($op=='display') { ?>

<div class="panel panel-default">
	<div class="table-responsive">
		<table class="table table-hover">
			<thead class="navbar-inner">
				<tr>
					<th style="width:60px;">会员id</th>
					<th style="width:120px;">手机号</th>
					<th style="width:150px;">类型</th>
					<th style="width:100px;">状态</th>
					<th style="width:100px;">注册时间</th>
					<th style="width:100px;">用户名</th>
					<th style="width:60px;">邮箱</th>
					<th style="width:190px;" class="text-center">操作</th>
				</tr>
			</thead>
			<tbody>
			<?php  if(is_array($list)) { foreach($list as $li) { ?>
				<tr>
					<td> <?php  echo $li['id'];?></td>
					<td><?php  echo $li['mobile'];?></td>
					<td><?php  if($li['utype']==1) { ?><span class="label label-success">求职者</span><?php  } else if($li['utype']==2) { ?><span class="label label-primary">企业</span><?php  } else { ?><span class="label label-inverse">导师</span><?php  } ?></td>
					<td>待绑定</td>
					<td><?php  echo date('Y-m-d',$li['createtime'])?></td>
					<td><?php  if($li['username']) { ?><?php  echo $li['username']?><?php  } ?></td>
					<td><?php  echo $li['email']?></td>
					<td class="text-center" style="overflow:visible;">
						<a href="<?php  echo web_url('member/member/editmember',array('id'=>$li['id']))?>" class="btn btn-success btn-sm sms">修改信息</a>
						<a href="" class="btn btn-default btn-sm">查看详情</a>
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
