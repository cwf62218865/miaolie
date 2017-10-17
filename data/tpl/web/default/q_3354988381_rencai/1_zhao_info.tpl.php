<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li class="active"><a href="<?php  echo $this->createWebUrl('Zhaoinfo');?>">招聘信息管理</a></li>
    <li class=""><a href="<?php  echo $this->createWebUrl("ZhaoinfoEdit", array("id" => 0));?>">新增招聘信息</a></li>
    <li class=""><a href="<?php  echo $this->createWebUrl("ZhaoinfoEdit", array("import" => 1));?>">批量导入</a></li>
</ul>

<div class="panel panel-info">
    <div class="panel-heading">筛选</div>
    <div class="panel-body">
        <form action="./index.php" method="get" class="form-horizontal" role="form">
            <input type="hidden" name="c" value="site" />
            <input type="hidden" name="a" value="entry" />
            <input type="hidden" name="m" value="q_3354988381_rencai" />
            <input type="hidden" name="do" value="zhaoinfo" />
            <?php  if($_GET['id'] != '') { ?>
            <input type="hidden" name="id" value="<?php  echo $_GET['id'];?>" />
            <?php  } else { ?>
            <input type="hidden" name="id" value="<?php  echo $_GET['rid'];?>" />
            <?php  } ?>  
				<div class="form-group">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">职位名称</label>
					<div class="col-sm-9 col-md-8 col-lg-8 col-xs-12">
						<input type="text" class="form-control" name="title" value="<?php  echo $_GPC['title'];?>"/>
					</div>
				</div>                      
				<div class="form-group" style="display:none">
					<label class="col-xs-12 col-sm-3 col-md-2 control-label">截止日期</label>
					<div class="col-sm-9 col-md-8 col-lg-8 col-xs-12">
						<?php  load()->func('tpl');?>
						<?php  echo tpl_form_field_daterange('end_time', array('starttime'=>date('Y-m-d', $starttime),'endtime'=>date('Y-m-d', $endtime)));?>
					</div>
				</div>
				<div class="form-group">
					<div class="pull-right col-xs-12 col-sm-3 col-md-2 col-lg-4">
						<button class="btn btn-default"><i class="fa fa-search"></i> 搜索</button>
                        <button name="output" value="1" class="btn btn-default"><i class="fa fa-file"></i> 导出数据</button>
                        <button name="deleterec" value="1" onclick="if(!confirm('确定要删除所查询数据吗？')){return false;}" class="btn btn-default"><i class="fa fa-file"></i> 删除数据</button>
					</div>
				</div>                
                
        </form>
    </div>
  </div>

  <div class="panel panel-default">
    <div class="panel-body table-responsive">  
    <div id="show_msg" style="display:none">操作成功</div>
    <div style="padding:15px;">
        <table class="table table-hover">
            <thead class="navbar-inner">
                <tr>
                    <th>职位名称</th>
                    <th>职位分类</th>
                    <th>薪资</th>
                    <th>人数</th>
                    <th>热门</th>
                    <th>发布时间</th>
                    <th>截止日期</th>
                    <th>置顶</th>
                    <th>有效期</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <?php  if(is_array($lists)) { foreach($lists as $row) { ?>
                <tr>
                    <td><small><?php  echo $row['title'];?></small></td>
                    <td><small><?php  echo $row['cname'];?></small></td>
                    <td><small><?php  echo $config['payroll'][$row['payroll']];?></small></td>
                    <td><small><?php  echo $row['nums'];?></small></td>
                    <td><small>
                        <?php  if($row['ishot'] == 0) { ?>
                        <a class="btn btn-warning btn-xs" href="javascript:void(0);" onclick="change_hot_status(<?php  echo $row['id'];?>, 1)">否</a>
                        <?php  } else { ?>
                        <a class="btn btn-success btn-xs" href="javascript:void(0);" onclick="change_hot_status(<?php  echo $row['id'];?>, 0)">是</a>
                        <?php  } ?>
                    </small></td>
                    <td><small><?php  echo date('Y-m-d',$row['dateline'])?></small></td>
                    <td><small><?php  echo $row['end_time'];?></small></td>
                    <td><small>
                        <?php  if($row['istop'] == 0) { ?>
                        <!-- <a class="btn btn-warning btn-sm" href="javascript:void(0);" onclick="change_top_status(<?php  echo $row['id'];?>, 1)">否</a> -->
                        <a class="btn btn-warning btn-xs" href='<?php  echo $this->createWebUrl("AuditTopInfo", array("info_id" => $row['id']));?>'>否</a>
                        <?php  } else { ?>
                        <a class="btn btn-success btn-xs " href="javascript:void(0);" onclick="change_top_status(<?php  echo $row['id'];?>, 0)">是</a>
                        <?php  } ?>
                    </small></td>
                    <td><small><?php  if($row['expiration']) { ?> <?php  echo date('Y-m-d',$row['expiration'])?> <?php  } else { ?> —— <?php  } ?></small></td>
                    <td><small>
                        <a href='<?php  echo $this->createWebUrl("ZhaoinfoEdit", array("jobid" => $row['id']));?>' title="编辑" class="btn btn-primary btn-sm btn-xs">编辑</a>
                        <a href="javascript:void(0);" onclick="delete_company_job_info(<?php  echo $row['id'];?>)" title="删除" class="btn btn-danger btn-sm btn-xs">删除</a>
                    </small></td>
                </tr>
                <?php  } } ?>
            </tbody>
        </table>
        <?php  echo $pager;?>
    </div>
</div>        
    </div>
    
<script>
    /**
    *删除职位信息
    */
    function delete_company_job_info(id){
    	if(confirm('确定删除')){
	    	$.post(
	    			'<?php  echo $this->createWebUrl("ZhaoinfoDeleteAjax");?>',
	    	        {"info_id":id},
	    	        function (data){
	    	        	location.reload();
	    	        }
	    	);
    	}
    }
    
    /**
    * 置顶
    */
    function change_top_status(info_id, change_to){
    	$.post(
    			'<?php  echo $this->createWebUrl("AuditTopInfoStatusAjax")?>',
    	        {"info_id":info_id, "change_to":change_to},
    	        function (data){
    	        	location.reload();
    	        }
    	);
    }

    /**
     * 热门
     */
    function change_hot_status(info_id, change_to){
        $.post(
                '<?php  echo $this->createWebUrl("AuditHotInfoStatusAjax")?>',
                {"info_id":info_id, "change_to":change_to},
                function (data){
                    location.reload();
                }
        );
    }
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>