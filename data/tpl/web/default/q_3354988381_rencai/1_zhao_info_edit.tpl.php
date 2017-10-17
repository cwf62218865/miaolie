<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
    <li class="active"><a href="<?php  echo $this->createWebUrl('Zhaoinfo');?>"><?php echo $row['id']>0 ? '招聘信息编辑' : '招聘信息添加';?></a></li>
</ul>
<div class="main">
    <form class="form-horizontal" action="" role="form" method="post" <?php  if($import) { ?>enctype="multipart/form-data"<?php  } ?>>
    <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
    <input type="hidden" name="cid" value="<?php  echo $row['id'];?>" />
<?php  if($import) { ?>
      <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">上传模板</label>
            <div class="col-sm-4">
            <a href="<?php echo MODULE_URL;?>template/upFile/job_tpl.xlsx"  class="form-control" >【下载】</a>
            </div>
      </div>
      <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">上传说明</label>
            <div class="col-sm-4">
            模板中涉及到 id 号的，可以在对应模块的列表中查找或在“参数设置”中的大文本框中查找（第1行为0，第2行为1，依此类推）。
            </div>
      </div>      
      <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">上传文件</label>
            <div class="col-sm-4">
            <input type="file" name="file_import"  class="form-control" />
            </div>
      </div>
<?php  } else { ?>
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">招聘企业</label>
        <div class="col-sm-4">
            <select class="form-control" name="data[mid]">
                <?php  if(is_array($company_arr)) { foreach($company_arr as $key => $company) { ?>
                    <option value="<?php  echo $company['id'];?>" <?php  if($row['mid'] == $company['id']) { ?> selected <?php  } ?>><?php  echo $company['name'];?></option>
                <?php  } } ?>
            </select>
        </div>
    </div>
    
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">职位名称</label>
        <div class="col-sm-4">
            <input type="text" name="data[title]" value="<?php  echo $row['title'];?>" class="form-control">
        </div>
    </div>

    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">职位类型</label>
        <div class="col-sm-4">
            <select class="form-control" name="data[positiontype]">
                <?php  if(is_array($config['positiontype'])) { foreach($config['positiontype'] as $key => $type) { ?>
                <option value="<?php  echo $key;?>" <?php  if(intval($row['positiontype']) == intval($key)) { ?> selected <?php  } ?>><?php  echo $type;?></option>
                <?php  } } ?>
            </select>
        </div>
    </div>
    
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">职位分类</label>
        <div class="col-sm-4">
            <select class="form-control" name="data[cid]">
                <?php  if(is_array($offices)) { foreach($offices as $key => $parent) { ?>
                    <option value="<?php  echo $parent['id'];?>" <?php  if($row['cid'] == $parent['id']) { ?> selected <?php  } ?>><?php  echo $parent['name'];?></option>
                    <?php  if(is_array($parent['sub'])) { foreach($parent['sub'] as $sub) { ?>
                    <option value="<?php  echo $sub['id'];?>" <?php  if($row['cid'] == $sub['id']) { ?> selected <?php  } ?>>&nbsp;&nbsp;|—<?php  echo $sub['name'];?></option>
                    <?php  } } ?>
                <?php  } } ?>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">薪资</label>
        <div class="col-sm-4">
            <select class="form-control" name="data[payroll]">
                <?php  if(is_array($config['payroll'])) { foreach($config['payroll'] as $key => $payroll) { ?>
                <option value="<?php  echo $key;?>" <?php  if(intval($row['payroll']) == intval($key)) { ?> selected <?php  } ?>><?php  echo $payroll;?></option>
                <?php  } } ?>
            </select>
        </div>
    </div>


    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">学历</label>
        <div class="col-sm-4">
            <select class="form-control" name="data[educational]">
                <?php  if(is_array($config['educational'])) { foreach($config['educational'] as $key => $payroll) { ?>
            <option value="<?php  echo $key;?>" <?php  if(intval($row['educational']) == intval($key)) { ?> selected <?php  } ?>><?php  echo $payroll;?></option>
            <?php  } } ?>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">工作经验</label>
        <div class="col-sm-4">
            <select class="form-control" name="data[workexperience]">
                <?php  if(is_array($config['workexperience'])) { foreach($config['workexperience'] as $key => $payroll) { ?>
                <option value="<?php  echo $key;?>" <?php  if(intval($row['workexperience']) == intval($key)) { ?> selected <?php  } ?>><?php  echo $payroll;?></option>
                <?php  } } ?>
            </select>
        </div>
    </div>


    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">招聘人数</label>
        <div class="col-sm-4">
            <input type="text" name="data[nums]" value="<?php  echo $row['nums'];?>" class="form-control">
        </div>
    </div>

    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">工作地点</label>
        <div class="col-sm-4">
            <input type="text" name="data[workaddress]" value="<?php  echo $row['workaddress'];?>" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">职位描述</label>
        <div class="col-sm-8">
        	<?php  echo tpl_ueditor('data[description]', $row['description']);?>
        </div>
    </div>
    
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">福利</label>
        <div class="col-sm-4">
            <?php  if(is_array($config['welfare'])) { foreach($config['welfare'] as $key => $welfare) { ?>
            <label class="checkbox-inline">
                <input type="checkbox" value="<?php  echo $key;?>"  name="welfare[]" <?php  if(in_array(intval($key), $welfare_array)) { ?> checked <?php  } ?>> <?php  echo $welfare;?>
            </label>
            <?php  } } ?>
        </div>
    </div>

    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">截止日期</label>
        <div class="col-sm-4">
            <?php  echo tpl_form_field_date('data[end_time]', $value = $row['end_time'], $withtime = false);?>
        </div>
    </div>
<?php  } ?>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <input type="submit" class="btn btn-primary" name="save_info" value="保存">
        </div>
    </div>
</form>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>