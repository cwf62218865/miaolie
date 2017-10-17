<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('account/account-header', TEMPLATE_INCLUDEPATH)) : (include template('account/account-header', TEMPLATE_INCLUDEPATH));?>
<div class="alert alert-info">
	<p><i class="fa fa-exclamation-circle"></i> 无主管理员时，创始人为默认主管理员</p>
	<p><i class="fa fa-exclamation-circle"></i> 主管理员拥有公众号的所有权限，并且公众号的权限（模块、模板）根据主管理员来获取</p>
	<p><i class="fa fa-exclamation-circle"></i> 操作员不允许删除公众号和编辑公众号资料，管理员无此限制</p>
</div>
<div id="js-account-manage-users" ng-controller="AccountManageUsers" ng-cloak>
	<table class="table we7-table table-hover">
		<col width="230px" />
		<col />
		<col />
		<tr>
			<th class="text-left">用户名</th>
			<th>权限身份</th>
			<th class="text-right">
				<?php  if($_W['isfounder'] && empty($owner['uid'])) { ?><span class="btn btn-link color-default" data-toggle="modal" data-target="#owner-modal">添加主管理员</span><?php  } ?>
				<span class="btn btn-link color-default" data-toggle="modal" data-target="#user-modal">添加使用者</span>
			</th>
		</tr>
		<tr ng-repeat="permission in permissions" ng-if="permission.uid">
			<td class="text-left" ng-bind="permission.username"></td>
			<td ng-if="permission.isfounder == 1">创始人</td>
			<td ng-if="permission.role == 'owner' && permission.isfounder == 0">主管理员</td>
			<td ng-if="permission.role == 'manager' && permission.isfounder == 0">管理员</td>
			<td ng-if="permission.role == 'operator' && permission.isfounder == 0">操作员</td>
			<td  class="we7-padding-right text-right">
				<div class="link-group">
					<a href="javascript:;" ng-if="permission.isfounder == 1">创始人拥有系统最高权限 </a>
					<?php  if($_W['isfounder']) { ?><a href="javascript:;" ng-if="permission.role == 'owner' && permission.isfounder == 0" ng-click="changeOwner(permission.username)">修改</a><?php  } ?>
					<a href="javascript:;" ng-if="permission.isfounder == 0 && (((state == 'founder' || state == 'owner') && (permission.role == 'manager' || permission.role == 'operator')) || (state == 'manager' && permission.role == 'operator'))" ng-click="setPermission(permission.uid)">权限设置  </a>
					<a href="javascript:;" ng-if="permission.isfounder == 0 && (((state == 'founder' || state == 'owner') && (permission.role == 'manager' || permission.role == 'operator')) || (state == 'manager' && permission.role == 'operator'))" ng-click="delPermission(permission.uid)">删除 </a>
				</div>
			</td>
		</tr>
			
	</table>
	<!-- 添加主管理员模态框 -->
	<div class="modal" id="owner-modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h3 class="modal-title">添加账号主管理员</h3>
				</div>
				<div class="modal-body we7-form">
					<div class="form-group">
						<label class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-10">
							<input id="add-owner-username" type="text" class="form-control">
							<span class="help-block">请输入完整的用户名。</span>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" ng-click="addOwner()">确认</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 添加账号操作员/管理模态框 -->
	<div class="modal" id="user-modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h3 class="modal-title">添加账号操作员/管理员</h3>
				</div>
				<div class="modal-body we7-form">
					<div class="form-group" ng-show="state == 'founder' || state == 'owner'">
						<label class="control-label col-sm-2"></label>
						<div class="col-sm-10">
							<input type="radio" id="addtype-1" name="addtype" value="<?php echo ACCOUNT_MANAGE_TYPE_OPERATOR;?>" checked>
							<label for="addtype-1" class="radio-inline">操作员</label>
							<input class="addtype2" type="radio" id="addtype-2" name="addtype" value="<?php echo ACCOUNT_MANAGE_TYPE_MANAGER;?>">
							<label class="radio-inline" for="addtype-2">管理员</label>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-10">
							<input id="add-username" type="text" class="form-control">
							<span class="help-block">请输入完整的用户名。</span>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" ng-click="addUsername()">确认</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	angular.module('accountApp').value('config', {
		permissions: <?php echo !empty($permissions) ? json_encode($permissions) : 'null'?>,
		state: <?php echo !empty($state) ? json_encode($state) : 'null'?>,
		links: {
			delete: "<?php  echo url('account/post-user/delete', array('acid' => $acid, 'uniacid' => $uniacid))?>",
			setPermission: "<?php  echo url('account/post-user/set_permission', array('acid' => $acid, 'uniacid' => $uniacid));?>",
			addUser: "<?php  echo url('account/post-user/set_manager', array('acid' => $acid, 'uniacid' => $uniacid))?>"
		}
	});
	angular.bootstrap($('#js-account-manage-users'), ['accountApp']);
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>