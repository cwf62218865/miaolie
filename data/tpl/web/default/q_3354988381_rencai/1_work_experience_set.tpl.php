<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
    <li class="active"><a href="<?php  echo $this->createWebUrl('work_experience_set');?>">工作经验<?php echo $id > 1 ? '编辑' : '添加'?></a></li>
</ul>
<div class="main">
    <form class="form-horizontal" action="" role="form" method="post" enctype="multipart/form-data">
        <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
        <input type="hidden" name="id" value="<?php  echo $row['id'];?>" />              
        
    
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
            <div class="col-sm-4">
                  <select name="data[person_id]" class="form-control">
                    <?php  if(is_array($persons)) { foreach($persons as $key => $person) { ?>
                    <option value="<?php  echo $person['id'];?>" <?php  if($person['id'] == $row['person_id']) { ?>selected<?php  } ?>><?php  echo $person['username'];?></option>
                    <?php  } } ?>
                  </select>  
            </div>            
        </div>
        

        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">公司名称</label>
            <div class="col-sm-4">
                <input type="text" name="data[company_name]" value="<?php  echo $row['company_name'];?>" class="form-control">
            </div>
        </div>


        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">工资</label>
            <div class="col-sm-4">
                <input type="text" name="data[wage]" value="<?php  echo $row['wage'];?>" class="form-control">
            </div>
        </div>        

        <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">工作时间</label>
                <div class="col-sm-8">
                    <?php  echo tpl_form_field_daterange('datelimit', array('start'=>$row['start_time'],'end'=>$row['end_time']), false);?>
                </div>
            </div> 
                    
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">工作描述</label>
            <div class="col-sm-8">
                <textarea name="data[work_description]" rows="5" class="form-control"><?php  echo $row['work_description'];?></textarea>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-primary" name="save_info" value="保存">
            </div>
        </div>
    </form>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>