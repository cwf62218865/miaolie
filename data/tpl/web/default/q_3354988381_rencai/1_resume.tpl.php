<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
	<li class="active"><a href="<?php  echo $this->createWebUrl('Resume');?>">简历管理</a></li>
    <li><a href="<?php  echo $this->createWebUrl("ResumeEdit", array("resumeid" => 0));?>">新增简历</a></li>
    <li class=""><a href="<?php  echo $this->createWebUrl("ResumeEdit", array("import" => 1));?>">批量导入</a></li>
    
    <li><a href="<?php  echo $this->createWebUrl('work_experience');?>">工作经验</a></li>
    <li><a href="<?php  echo $this->createWebUrl('work_experience_set');?>">添加工作经验</a></li>
</ul>

<div class="panel panel-info">
    <div class="panel-heading">筛选</div>
    <div class="panel-body">
        <form action="./index.php" method="get" class="form-horizontal" role="form">
            <input type="hidden" name="c" value="site" />
            <input type="hidden" name="a" value="entry" />
            <input type="hidden" name="m" value="q_3354988381_rencai" />
            <input type="hidden" name="do" value="resume" />
            <?php  if($_GET['id'] != '') { ?>
            <input type="hidden" name="id" value="<?php  echo $_GET['id'];?>" />
            <?php  } else { ?>
            <input type="hidden" name="id" value="<?php  echo $_GET['rid'];?>" />
            <?php  } ?>  
                <?php  if($this->getFieldsShowFlag('person_username')) { ?>
                    <div class="form-group">
                        <label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  echo $this->getFieldsArr('person', 'person_username');?></label>
                        <div class="col-sm-9 col-md-8 col-lg-8 col-xs-12">
                            <input type="text" class="form-control" name="username" value="<?php  echo $_GPC['username'];?>"/>
                        </div>
                    </div>                
                <?php  } ?>            
                      
				<div class="form-group">
                
                	<?php  if($this->getFieldsShowFlag('person_mobile')) { ?>
                        <label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  echo $this->getFieldsArr('person', 'person_mobile');?></label>
                        <div class="col-sm-9 col-md-8 col-lg-8 col-xs-12">
                            <input type="text" class="form-control" name="mobile" value="<?php  echo $_GPC['mobile'];?>"/>
                        </div>
                    <?php  } ?>
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
                	<?php  if($this->getFieldsShowFlag('person_username')) { ?>
                    	<th><?php  echo $this->getFieldsArr('person', 'person_username');?></th>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_sex')) { ?>
                    	<th><?php  echo $this->getFieldsArr('person', 'person_sex');?></th>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_age')) { ?>
                    	<th><?php  echo $this->getFieldsArr('person', 'person_age');?></th>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_mobile')) { ?>
                    	<th><?php  echo $this->getFieldsArr('person', 'person_mobile');?></th>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_qq')) { ?>
                    	<th><?php  echo $this->getFieldsArr('person', 'person_qq');?></th>
                    <?php  } ?>
                    
                                                                                                    
                	<?php  if($this->getFieldsShowFlag('person_educational')) { ?>
                    	<th><?php  echo $this->getFieldsArr('person', 'person_educational');?></th>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_professional')) { ?>
                    	<th><?php  echo $this->getFieldsArr('person', 'person_professional');?></th>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_outline')) { ?>
                    	<th><?php  echo $this->getFieldsArr('person', 'person_outline');?></th>
                    <?php  } ?>                    
                    <th>浏览数</th>
                    
                    <th>置顶</th>
                    <th>置顶有效期</th>
                    <th>更新时间</th>
                     <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <?php  if(is_array($persons)) { foreach($persons as $row) { ?>
                <tr>
					<?php  if($this->getFieldsShowFlag('person_username')) { ?>
                    	<td><small><?php  echo $row['username'];?></small></td>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_sex')) { ?>
                    	<td><small><?php  if($row['sex'] == 1) { ?>男<?php  } else { ?>女<?php  } ?></small></td>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_age')) { ?>
                    	<td><small><?php  echo $row['age'];?></small></td>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_mobile')) { ?>
                    	<td><small><?php  echo $row['mobile'];?></small></td>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_qq')) { ?>
                    	<td><small><?php  echo $row['qq'];?></small></td>
                    <?php  } ?>
                    
                                                                                                    
                	<?php  if($this->getFieldsShowFlag('person_educational')) { ?>
                    	<td><small><?php  echo $config['educational'][$row['educational']];?></small></td>
                    <?php  } ?>
                	<?php  if($this->getFieldsShowFlag('person_professional')) { ?>
                    	<td><small><?php  echo $row['professional'];?></small></td>
                    <?php  } ?>                
                	<?php  if($this->getFieldsShowFlag('person_outline')) { ?>
                    	<td><small><?php echo $row['outline']?'否':'是';?></small></td>
                    <?php  } ?>
                                        
                    <td><small><?php  echo $row['views'];?></small></td>
                    
                    <td><small>
                    <?php  if($row['istop'] == 0) { ?>
                    	<a class="btn btn-warning btn-xs" href='<?php  echo $this->createWebUrl("AuditResumeTopInfo", array("person_id" => $row['id']));?>'>否</a>
                    <?php  } else { ?>
                    	<a class="btn btn-success btn-xs" href="javascript:void(0);" onclick="change_resume_top_status(<?php  echo $row['id'];?>, 0)">是</a>
                    <?php  } ?>
                    </small></td>
                    <td><small><?php  if($row['expiration']) { ?> <?php  echo date('Y-m-d',$row['expiration'])?> <?php  } else { ?> —— <?php  } ?></small></td>
                    <td><small><?php  echo date('Y-m-d',$row['updatetime'])?></small></td>
                     <td><small>
                         <a class="btn btn-primary btn-xs" href='<?php  echo $this->createWebUrl("ResumeEdit", array("resumeid" => $row['id']));?>'>编辑</a>
                         <a href="javascript:void(0);" onclick="delete_person_info(<?php  echo $row['id'];?>)" title="删除" class="btn btn-danger btn-sm btn-xs">删除</a>
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
    function delete_person_info(id){
    	if(confirm('确定删除?')){
	    	$.post(
	    			'<?php  echo $this->createWebUrl("ResumeDeleteAjax");?>',
	    	        {"personid":id},
	    	        function (data){
	    	        	location.reload();
	    	        }
	    	);
    	}
    }
    
    /**
    * 置顶
    */
    function change_resume_top_status(person_id, change_to){
    	$.post(
    			'<?php  echo $this->createWebUrl("AuditResumeTopInfoAjax")?>',
    	        {"person_id":person_id, "change_to":change_to},
    	        function (data){
    	        	location.reload();
    	        }
    	);
    }
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>