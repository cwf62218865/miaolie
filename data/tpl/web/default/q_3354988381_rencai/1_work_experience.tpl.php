<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li><a href="<?php  echo $this->createWebUrl('Resume');?>">简历管理</a></li>
    <li><a href="<?php  echo $this->createWebUrl("ResumeEdit", array("resumeid" => 0));?>">新增简历</a></li>
    <li class="active"><a href="<?php  echo $this->createWebUrl('work_experience');?>">工作经验</a></li>
    <li><a href="<?php  echo $this->createWebUrl('work_experience_set');?>">添加工作经验</a></li>
</ul>
<div class="panel panel-info">
    <div class="panel-heading">筛选</div>
    <div class="panel-body">
        <form action="./index.php" method="get" class="form-horizontal" role="form">
            <input type="hidden" name="c" value="site" />
            <input type="hidden" name="a" value="entry" />
            <input type="hidden" name="m" value="q_3354988381_rencai" />
            <input type="hidden" name="do" value="work_experience" />
            <?php  if($_GET['id'] != '') { ?>
            <input type="hidden" name="id" value="<?php  echo $_GET['id'];?>" />
            <?php  } else { ?>
            <input type="hidden" name="id" value="<?php  echo $_GET['rid'];?>" />
            <?php  } ?>
			<div class="form-group">
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">姓名</label>
				<div class="col-xs-12 col-sm-8 col-lg-4">
					<input class="form-control" name="username" id="" type="text" value="<?php  echo $_GPC['username'];?>">
				</div>			
				<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">公司名称</label>
				<div class="col-xs-12 col-sm-8 col-lg-4">
                	<input class="form-control" name="company_name" id="" type="text" value="<?php  echo $_GPC['company_name'];?>">
				</div>	
                
                <div class=" col-xs-12 col-sm-2 col-lg-2">
					<button class="btn btn-default"><i class="fa fa-search"></i> 搜索</button>
				</div>                
			</div>            

        </form>
    </div>
  </div>
  
  <div class="panel panel-default">
    <div class="panel-body table-responsive">
        <table class="table table-hover">
            <thead class="navbar-inner">
                <tr>
                    <th>ID</th>
                    <th>姓名</th>
                    <th>公司名称</th>
                    <th>开始时间</th>
                    <th>结束时间</th>
                    <th>工资</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <?php  if(is_array($lists)) { foreach($lists as $row) { ?>
                <tr>
                    <td><small><?php  echo $row['id'];?></small></td>
					<td><small><?php  echo $row['username'];?></small></td>
                    <td><small><?php  echo $row['company_name'];?></small></td>
                    <td><small><?php  echo $row['start_time'];?></small></td>
                    <td><small><?php  echo $row['end_time'];?></small></td>
					<td><small><?php  echo $row['wage'];?></small></td>
                    <td><small>
                        <a href='<?php  echo $this->createWebUrl("work_experience_set", array("id" => $row['id']));?>' title="编辑" class="btn btn-primary btn-sm btn-xs">编辑</a>
                        <a href="javascript:void(0);" onclick="delete_work_experience(<?php  echo $row['id'];?>)" title="删除" class="btn btn-danger btn-sm btn-xs">删除</a>
                    </small></td>
                </tr>
                <?php  } } ?>
            </tbody>
        </table>
</div>
</div>
    
<script>
    /**
    *删除职位信息
    */
    function delete_work_experience(id){
    	if(confirm('确定删除')){
	    	$.post(
	    			'<?php  echo $this->createWebUrl("work_experience_set");?>',
	    	        {"id":id, 'op':'delete'},
	    	        function (data){
	    	        	location.reload();
	    	        }
	    	);
    	}
    }
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>