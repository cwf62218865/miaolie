<?php defined('IN_IA') or exit('Access Denied');?><?php  include wl_template('common/header');?>
<ul class="nav nav-tabs">
    <li <?php  if($op=='display') { ?>class="active"<?php  } ?>><a href="<?php  echo web_url('member/member/display')?>">简历列表</a></li>
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
                <label class="col-md-2 control-label">类型</label>
                <div class="col-sm-8 col-xs-12">
                    <div class="btn-group">
                        <a href="<?php  echo filter_url('status:-1');?>" class="btn <?php  if($_GPC['status'] == -1 || $_GPC['status'] == '') { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">不限</a>
                        <a href="<?php  echo filter_url('status:1');?>" class="btn <?php  if($_GPC['status'] == 1) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">企业会员</a>
                        <a href="<?php  echo filter_url('status:2');?>" class="btn <?php  if($_GPC['status'] == 2) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">求职者会员</a>
                        <a href="<?php  echo filter_url('status:2');?>" class="btn <?php  if($_GPC['status'] == 2) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">导师会员</a>
                    </div>
                </div>
            </div>
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
        <table class="table table-hover">
            <thead class="navbar-inner">
            <tr>
                <th style="width:60px;">简历id</th>
                <th style="width:100px;">姓名</th>
                <th style="width:40px;">性别</th>
                <th style="width:50px;">学历</th>
                <th style="width:50px;">年龄</th>
                <th style="width:80px;">电话</th>
                <th style="width:140px;">邮箱</th>
                <th style="width:140px;">工作经验</th>
                <th style="width:180px;">居住地</th>
                <th style="width:220px;" class="text-center">操作</th>
            </tr>
            </thead>
            <tbody>
            <?php  if(is_array($lists)) { foreach($lists as $li) { ?>
            <tr>
                <td> <?php  echo $li['id'];?></td>
                <td><?php  echo $li['fullname'];?></td>
                <td><?php  if($li['sex']==1) { ?>男<?php  } else { ?>女<?php  } ?></td>
                <td><?php  echo $li['education']?></td>
                <td><?php  echo date('Y-m-d')-$resume['birthday']?>岁</td>
                <td><?php  echo $li['telphone']?></td>
                <td><?php  echo $li['email']?></td>
                <td><?php  echo $li['work_time']?>年工作经验</td>
                <td><?php  echo $li['city']?><?php  echo $li['city_area']?><?php  echo $li['address']?></td>
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
<?php  } ?>

<?php  include wl_template('common/footer');?>
