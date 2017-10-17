<?php defined('IN_IA') or exit('Access Denied');?><?php  include wl_template('common/header');?>
<div class="main">
    <form action="" method="post" class="form-horizontal form" id="setting-form">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="tab-content">
                    <div class="tab-pane active" id="tab_basic">

                        <div class="form-group">
                            <label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">身份类型</label>
                            <div class="col-xs-12 col-sm-8">
                                <select name="utype" class="form-control">
                                    <option value="1" >求职者</option>
                                    <option value="2" >企业</option>
                                    <option value="3" >导师</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">用户名</label>
                            <div class="col-sm-8">
                                <input type="text" name="username" class="form-control" value="<?php  echo $member['username']?>" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">手机号</label>
                            <div class="col-xs-12 col-sm-8">
                                <input type="text" name="mobile" class="form-control" value="<?php  echo $member['mobile']?>" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">邮箱</label>
                            <div class="col-xs-12 col-sm-8">
                                <input type="text" name="email" class="form-control" value="<?php  echo $member['email']?>" />
                            </div>
                        </div>
                        <!--<div class="form-group">-->
                            <!--<label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">密码</label>-->
                            <!--<div class="col-xs-12 col-sm-8">-->
                                <!--<input type="text" name="password" class="form-control" value="" />-->
                            <!--</div>-->
                        <!--</div>-->

                        <?php  if($company_profile) { ?>
                        <div class="form-group">
                            <label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">企业名称</label>
                            <div class="col-sm-8">
                                <input type="text" name="companyname" class="form-control" value="" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">营业执照</label>
                            <div class="col-sm-8 col-xs-12">
                                <?php  echo tpl_form_field_image('indexbg', $settings['indexbg']);?>
                                <span class="help-block">为空则为默认背景图</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">身份证正面</label>
                            <div class="col-sm-8 col-xs-12">
                                <?php  echo tpl_form_field_image('indexbg', $settings['indexbg']);?>
                                <span class="help-block">为空则为默认背景图</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-xs-12 col-sm-3 col-md-2 col-lg-2 control-label">身份证反面</label>
                            <div class="col-sm-8 col-xs-12">
                                <?php  echo tpl_form_field_image('indexbg', $settings['indexbg']);?>
                                <span class="help-block">为空则为默认背景图</span>
                            </div>
                        </div>
                        <?php  } ?>

                    </div>
                </div>
                <div class="form-group col-sm-10" >
                    <input type="submit" name="submit" value="提交" class="btn btn-primary col-lg-1" style="float: right;margin-right: 400px;" />
                    <input type="hidden" name="editmember" value="editmember" />
                    <input type="hidden" name="uiser_id" value="<?php  echo $member['id']?>" />
                </div>
            </div>

        </div>

    </form>
</div>



<script>
    $(function () {
        window.optionchanged = false;
        $('#myTab a').click(function (e) {
            e.preventDefault();//阻止a链接的跳转行为
            $(this).tab('show');//显示当前选中的链接及关联的content
        })
    });
</script>
<?php  include wl_template('common/footer');?>