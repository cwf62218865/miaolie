<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<div class="page-header">
    <h4>手机端相关设置</h4>
</div>

<div class="main">
    <form class="form-horizontal form" id="form2" action="" method="post">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="form-group">
                    <div class="col-sm-2">标题(title)</div>
                    <div class="col-sm-4">
                        <input type="text" name="data[mobile_title]" class="form-control" value="<?php  echo $share['mobile_title'];?>" />
                    </div>
                </div>
            </div>
        </div>

        <div class="panel panel-success">
            <div class="panel-heading">首页</div>
            <div class="panel-body">
                <div class="form-group">
                    <div class="col-sm-2">标题(title)</div>
                    <div class="col-sm-4">
                        <input type="text" name="data[index_title]" class="form-control" value="<?php  echo $share['index_title'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">描述(Description)</div>
                    <div class="col-sm-4">
                        <input type="text" name="data[index_desc]" class="form-control" value="<?php  echo $share['index_desc'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">图(Pic)</div>
                    <div class="col-sm-4">
                        <?php  echo tpl_form_field_image('data[index_pic]', $share['index_pic']);?>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">分享一次赠送</div>
                    <div class="col-sm-2">
                    	<div class="input-group">
                            <input type="text" name="data[share_index_award_score]" value="<?php  echo $share['share_index_award_score'];?>" class="form-control"/>
                            <span class="input-group-addon">积分</span>
                        </div>
                    </div>
                </div>                
 
                              
            </div>
        </div>
        
        <div class="panel panel-success">
            <div class="panel-heading">招聘列表页</div>
            <div class="panel-body">
                <div class="form-group">
                    <div class="col-sm-2">标题(title)</div>
                    <div class="col-sm-4">
                        <input type="text" name="data[zhao_title]" class="form-control" value="<?php  echo $share['zhao_title'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">描述(Description)</div>
                    <div class="col-sm-4">
                        <input type="text" name="data[zhao_desc]" class="form-control" value="<?php  echo $share['zhao_desc'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">图(Pic)</div>
                    <div class="col-sm-4">
                        <?php  echo tpl_form_field_image('data[zhao_pic]', $share['zhao_pic']);?>
                    </div>
                </div>  
                <div class="form-group">
                    <div class="col-sm-2">分享一次赠送</div>
                    <div class="col-sm-2">
                    	<div class="input-group">
                            <input type="text" name="data[share_zhao_award_score]" value="<?php  echo $share['share_zhao_award_score'];?>" class="form-control"/>
                            <span class="input-group-addon">积分</span>
                        </div>
                    </div>
                </div>                   
                
                              
            </div>
        </div>

        <div class="panel panel-danger">
            <div class="panel-heading">求职列表页</div>
            <div class="panel-body">
                <div class="form-group">
                    <div class="col-sm-2">标题(title)</div>
                    <div class="col-sm-4">
                        <input type="text" name="data[qiu_title]" class="form-control" value="<?php  echo $share['qiu_title'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">描述(Description)</div>
                    <div class="col-sm-4">
                        <input type="text" name="data[qiu_desc]" class="form-control" value="<?php  echo $share['qiu_desc'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">图(Pic)</div>
                    <div class="col-sm-4">
                        <?php  echo tpl_form_field_image('data[qiu_pic]', $share['qiu_pic']);?>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">分享一次赠送</div>
                    <div class="col-sm-2">
                    	<div class="input-group">
                            <input type="text" name="data[share_qiu_award_score]" value="<?php  echo $share['share_qiu_award_score'];?>" class="form-control"/>
                            <span class="input-group-addon">积分</span>
                        </div>
                    </div>
                </div>                 
                
                
            </div>
        </div>
        
		<div class="panel panel-danger">
            <div class="panel-heading">个人中心页</div>
            <div class="panel-body">
                <div class="form-group">
                    <div class="col-sm-2">标题(title)</div>
                    <div class="col-sm-4">
                        <input type="text" name="data[my_title]" class="form-control" value="<?php  echo $share['my_title'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">描述(Description)</div>
                    <div class="col-sm-4">
                        <input type="text" name="data[my_desc]" class="form-control" value="<?php  echo $share['my_desc'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">图(Pic)</div>
                    <div class="col-sm-4">
                        <?php  echo tpl_form_field_image('data[my_pic]', $share['my_pic']);?>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2">分享一次赠送</div>
                    <div class="col-sm-2">
                    	<div class="input-group">
                            <input type="text" name="data[share_my_award_score]" value="<?php  echo $share['share_my_award_score'];?>" class="form-control"/>
                            <span class="input-group-addon">积分</span>
                        </div>
                    </div>
                </div>                 
                
                
            </div>
        </div>
        
        <div class="form-group col-sm-12">
            <input name="token" type="hidden" value="<?php  echo $_W['token'];?>" />
            <input type="hidden" name="shareid" value="<?php  echo $share['id'];?>" />
            <input type="submit" class="btn btn-primary col-lg-1" name="save_shareinfo_submit" value="提交" />
        </div>
</form>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>