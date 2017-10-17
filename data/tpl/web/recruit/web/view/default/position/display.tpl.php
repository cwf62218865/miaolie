<?php defined('IN_IA') or exit('Access Denied');?><?php  include wl_template('common/header');?>
<ul class="nav nav-tabs">
	<li <?php  if($op=='display') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('position/position/display')?>">职位列表</a></li>
	<li <?php  if($op=='add') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('position/position/add')?>">新增职位</a></li>
</ul>
<?php  if($op=='display') { ?>

<div class="panel panel-default">
	<div class="table-responsive">
		<table class="table table-hover table-box">
			<thead class="navbar-inner">
				<tr>
					<th style="width:10px;"></th>
					<th style="width:60px;">id</th>
					<th style="width:120px;">职位名称</th>
					<th style="width:100px;">添加时间</th>
					<th style="width:150px;" class="text-center">操作</th>
				</tr>
			</thead>
			<tbody>
			<?php  if(is_array($list)) { foreach($list as $li) { ?>
				<tr>
					<td><input type="checkbox" name="member[]" value="<?php  echo $li['id'];?>"></td>
					<td> <?php  echo $li['id'];?></td>
					<td><?php  echo $li['position'];?></td>
					<td><?php  echo date('Y-m-d',$li['addtime'])?></td>
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
