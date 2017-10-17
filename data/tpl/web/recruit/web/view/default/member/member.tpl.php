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
		<table class="table table-hover table-box">
			<thead class="navbar-inner">
				<tr>
					<th style="width:10px;"></th>
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
					<td><input type="checkbox" name="member[]" value="<?php  echo $li['id'];?>"></td>
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

		<div class="form-group col-sm-12">
			<button class="btn btn-sm btn-info" id='quanxuan' type='button'>全选/反选</button>
			<button class="btn btn-sm btn-success" id='do_delete' type="submit">批量删除</button>
		</div>
	</div>
</div>
<?php  echo $pager;?>
<?php  } ?>


<script>
	$(document).on('click','#quanxuan',function(){
		$(".table-box").find('input[type="checkbox"]').each(function(){
			if($(this).is(':checked')){

				$(this).prop('checked',false) ;
			}else{
				$(this).prop('checked',true) ;
			}
		});
	})
	$("#do_delete").on("click",function(){
		$('#batch_dopost').val("batch_delete")
	});
</script>
<?php  include wl_template('common/footer');?>
