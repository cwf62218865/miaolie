<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
defined('IN_IA') or exit('Access Denied');

load()->model('mc');

uni_user_permission_check('mc_member');

$dos = array('display', 'post','del', 'add', 'group', 'credit_record', 'credit_stat', 'register_setting', 'credit_setting', 'save_credit_setting', 'save_tactics_setting');
$do = in_array($do, $dos) ? $do : 'display';

if ($do == 'save_tactics_setting') {
	$setting = $_GPC['setting'];
	if (empty($setting)) {
		iajax(1, '');
	}
	uni_setting_save('creditbehaviors', $setting);
	iajax(0, '');
}

if ($do == 'save_credit_setting') {
	$credit_setting = $_GPC['credit_setting'];
	if (empty($credit_setting)) {
		iajax(1, '');
	}
	uni_setting_save('creditnames', $credit_setting);
	iajax(0, '');
}

if ($do == 'register_setting') {
	$_W['page']['title'] = '注册设置';
	if (checksubmit('submit')) {
		$passport = $_GPC['passport'];
		if (!empty($passport)) {
			uni_setting_save('passport', $passport);
			itoast('设置成功', '', 'success');
		}
	}
	$setting = uni_setting_load('passport');
	$register_setting = $setting['passport'];
	template('mc/member');
}

if ($do == 'credit_setting') {
	$_W['page']['title'] = '积分设置';
	$credit_setting = uni_setting_load('creditnames');
	$credit_setting = $credit_setting['creditnames'];

	$credit_tactics = uni_setting_load('creditbehaviors');
	$credit_tactics = $credit_tactics['creditbehaviors'];

	$enable_credit = array();
	if (!empty($credit_setting)) {
		foreach ($credit_setting as $key => $credit) {
			if ($credit['enabled'] == 1) {
				$enable_credit[] = $key;
			}
		}
		unset($credit);
	}
	template('mc/member');
}

if($do == 'display') {
	$_W['page']['title'] = '会员列表';
	$groups = mc_groups();
	$search_mod = intval($_GPC['search_mod']) == 1 ? '1' : '2';
	$pindex = max(1, intval($_GPC['page']));
	$psize = 25;

	$condition = '';
	$params = array(':uniacid' => $_W['uniacid']);
	$starttime = empty($_GPC['createtime']['start']) ? strtotime('-90 days') : strtotime($_GPC['createtime']['start']);
	$endtime = empty($_GPC['createtime']['end']) ? TIMESTAMP + 86399 : strtotime($_GPC['createtime']['end']) + 86399;
	$condition .= " AND createtime >= {$starttime} AND createtime <= {$endtime}";
	if (!empty($_GPC['username'])) {
		if ($search_mod == 1) {
			$condition .= " AND ((`uid` = :openid) OR ( `realname` = :username ) OR ( `nickname` = :username ) OR ( `mobile` = :username ))";
			$params[':username'] = trim($_GPC['username']);
			if (!is_numeric(trim($_GPC['username']))) {
				$uid = pdo_fetchcolumn('SELECT `uid` FROM'. tablename('mc_mapping_fans')." WHERE openid = :openid", array(':openid' => trim($_GPC['username'])));
				$uid = empty($uid) ? $uid : '';
				$params[':openid'] = $uid;
			} else {
				$params[':openid'] =  trim($_GPC['username']);
			}
		} else {
			$condition .= " AND ((`uid` = :openid) OR ( `realname` LIKE :username ) OR ( `nickname` LIKE :username ) OR ( `mobile` LIKE :username ))";
			$params[':username'] =  '%'.trim($_GPC['username']).'%';
			if (!is_numeric(trim($_GPC['username']))) {
				$uid = pdo_fetchcolumn('SELECT `uid` FROM'. tablename('mc_mapping_fans')." WHERE openid = :openid", array(':openid' => trim($_GPC['username'])));
				$params[':openid'] =  empty($uid) ? "" : $uid;
			} else {
				$params[':openid'] =  "%". $_GPC['username']. "%";
			}
		}
	}
	if (!empty($_GPC['uid'])) {
		$condition .= " AND uid = :uid";
		$params[':uid'] = $_GPC['uid'];
	}
	$condition .= intval($_GPC['groupid']) > 0 ?  " AND `groupid` = '".intval($_GPC['groupid'])."'" : '';

	if(checksubmit('export_submit', true)) {
		$count = pdo_fetchcolumn("SELECT COUNT(*) FROM". tablename('mc_members')." WHERE uniacid = :uniacid ".$condition, $params);
		$pagesize = ceil($count/5000);
		$header = array(
			'uid' => 'UID', 'nickname' => '昵称', 'realname' => '姓名', 'groupid' => '会员组', 'mobile' => '手机', 'email' => '邮箱',
			'credit1' => '积分', 'credit2' => '余额', 'createtime' => '注册时间',
		);
		$keys = array_keys($header);
		$html = "\xEF\xBB\xBF";
		foreach ($header as $li) {
			$html .= $li . "\t ,";
		}
		$html .= "\n";
		for ($j = 1; $j <= $pagesize; $j++) {
			$sql = "SELECT uid, uniacid, groupid, realname, nickname, email, mobile, credit1, credit2, credit6, createtime  FROM " . tablename('mc_members') . " WHERE uniacid = :uniacid " . $condition . " ORDER BY createtime limit " . ($j - 1) * 5000 . ",5000 ";
			$list = pdo_fetchall($sql, $params);
			if (!empty($list)) {
				$size = ceil(count($list) / 500);
				for ($i = 0; $i < $size; $i++) {
					$buffer = array_slice($list, $i * 500, 500);
					$user = array();
					foreach ($buffer as $row) {
						if (strexists($row['email'], 'we7.cc')) {
							$row['email'] = '';
						}
						$row['createtime'] = date('Y-m-d H:i:s', $row['createtime']);
						$row['groupid'] = $groups[$row['groupid']]['title'];
						foreach ($keys as $key) {
							$data[] = $row[$key];
						}
						$user[] = implode("\t ,", $data) . "\t ,";
						unset($data);
					}
					$html .= implode("\n", $user) . "\n";
				}
			}
		}
		header("Content-type:text/csv");
		header("Content-Disposition:attachment; filename=会员数据.csv");
		echo $html;
		exit();
	}
	$sql = "SELECT uid, uniacid, groupid, realname, nickname, email, mobile, credit1, credit2, credit6, createtime  FROM ".tablename('mc_members')." WHERE uniacid = :uniacid ".$condition." ORDER BY createtime DESC LIMIT " . ($pindex - 1) * $psize . ',' . $psize;
	$list = pdo_fetchall($sql, $params);
	if(!empty($list)) {
		foreach($list as &$li) {
			if(empty($li['email']) || (!empty($li['email']) && substr($li['email'], -6) == 'we7.cc' && strlen($li['email']) == 39)) {
				$li['email_effective'] = 0;
			} else {
				$li['email_effective'] = 1;
			}
		}
	}
	$total = pdo_fetchcolumn("SELECT COUNT(*) FROM ".tablename('mc_members')." WHERE uniacid = :uniacid ".$condition, $params);
	$pager = pagination($total, $pindex, $psize);
	$stat['total'] = pdo_fetchcolumn('SELECT COUNT(*) FROM ' . tablename('mc_members') . ' WHERE uniacid = :uniacid', array(':uniacid' => $_W['uniacid']));
	$stat['today'] = pdo_fetchcolumn('SELECT COUNT(*) FROM ' . tablename('mc_members') . ' WHERE uniacid = :uniacid AND createtime >= :starttime AND createtime <= :endtime', array(':uniacid' => $_W['uniacid'], ':starttime' => strtotime('today'), ':endtime' => strtotime('today') + 86399));
	$stat['yesterday'] = pdo_fetchcolumn('SELECT COUNT(*) FROM ' . tablename('mc_members') . ' WHERE uniacid = :uniacid AND createtime >= :starttime AND createtime <= :endtime', array(':uniacid' => $_W['uniacid'], ':starttime' => strtotime('today')-86399, ':endtime' => strtotime('today')));
	template('mc/member');
}

if($do == 'post') {
	$_W['page']['title'] = '编辑会员资料 - 会员 - 会员中心';
	$uid = intval($_GPC['uid']);
	if ($_W['ispost'] && $_W['isajax']) {
		if ($_GPC['op'] == 'addaddress' || $_GPC['op'] == 'editaddress') {
			$post = array(
				'uniacid' => $_W['uniacid'],
				'province' => trim($_GPC['province']),
				'city' => trim($_GPC['city']),
				'district' => trim($_GPC['district']),
				'address' => trim($_GPC['detail']),
				'uid' => intval($_GPC['uid']),
				'username' => trim($_GPC['name']),
				'mobile' => trim($_GPC['phone']),
				'zipcode' => trim($_GPC['code'])
			);
			if ($_GPC['op'] == 'addaddress') {
				$sql = "SELECT COUNT(*) FROM ". tablename('mc_member_address'). " WHERE uniacid = :uniacid AND uid = :uid";
				$exist_address = pdo_fetchcolumn($sql, array(':uniacid' => $post['uniacid'], ':uid' => $uid));
				if (!$exist_address) {
					$post['isdefault'] = 1;
				}
				pdo_insert('mc_member_address', $post);
				$post['id'] = pdo_insertid();
				iajax(1, $post, '');
			} else {
				pdo_update('mc_member_address', $post, array('id' => intval($_GPC['id']), 'uniacid' => $_W['uniacid']));
				$post['id'] = intval($_GPC['id']);
				iajax(1, $post, '');
			}
		}
		if ($_GPC['op'] == 'del') {
			$id = intval($_GPC['id']);
			pdo_delete('mc_member_address', array('id' => $id, 'uniacid' => $_W['uniacid']));
			iajax(1, '');
		}
		if ($_GPC['op'] == 'isdefault') {
			$id = intval($_GPC['id']);
			$uid = intval($_GPC['uid']);
			pdo_update('mc_member_address', array('isdefault' => 0), array('uid' => $uid, 'uniacid' => $_W['uniacid']));
			pdo_update('mc_member_address', array('isdefault' => 1), array('id' => $id, 'uniacid' => $_W['uniacid']));
			iajax(1, '');
		}
		$password = $_GPC['password'];
		$sql = 'SELECT `uid`, `salt` FROM ' . tablename('mc_members') . " WHERE `uniacid`=:uniacid AND `uid` = :uid";
		$user = pdo_fetch($sql, array(':uniacid' => $_W['uniacid'], ':uid' => $uid));
		if(empty($user) || $user['uid'] != $uid) {
			exit('error');
		}
		$password = md5($password . $user['salt'] . $_W['config']['setting']['authkey']);
		if (mc_update($uid, array('password' => $password))) {
			exit('success');
		}
		exit('othererror');
	}
	if (checksubmit('submit')) {
		$uid = intval($_GPC['uid']);
		if (!empty($_GPC)) {
			if (!empty($_GPC['birth'])) {
				$_GPC['birthyear'] = $_GPC['birth']['year'];
				$_GPC['birthmonth'] = $_GPC['birth']['month'];
				$_GPC['birthday'] = $_GPC['birth']['day'];
			}
			if (!empty($_GPC['reside'])) {
				$_GPC['resideprovince'] = $_GPC['reside']['province'];
				$_GPC['residecity'] = $_GPC['reside']['city'];
				$_GPC['residedist'] = $_GPC['reside']['district'];
			}
			unset($_GPC['uid']);
			if(!empty($_GPC['fanid'])) {
								if(empty($_GPC['email']) && empty($_GPC['mobile'])) {
					$_GPC['email'] = md5($_GPC['openid']) . '@we7.cc';
				}
				$fanid = intval($_GPC['fanid']);
				$fan_info = pdo_get('mc_mapping_fans', array('fanid' => $fanid), 'openid');
								$struct = array_keys(mc_fields());
				$struct[] = 'birthyear';
				$struct[] = 'birthmonth';
				$struct[] = 'birthday';
				$struct[] = 'resideprovince';
				$struct[] = 'residecity';
				$struct[] = 'residedist';
				$struct[] = 'groupid';
				unset($_GPC['reside'], $_GPC['birth']);
				foreach ($_GPC as $field => $value) {
					if(!in_array($field, $struct)) {
						unset($_GPC[$field]);
					}
				}

				if(!empty($_GPC['avatar'])) {
					if(strexists($_GPC['avatar'], 'attachment/images/global/avatars/avatar_')) {
						$_GPC['avatar'] = str_replace($_W['attachurl'], '', $_GPC['avatar']);
					}
				}
				$condition = '';
								if(!empty($_GPC['email'])) {
					$emailexists = pdo_fetchcolumn("SELECT email FROM ".tablename('mc_members')." WHERE uniacid = :uniacid AND email = :email " . $condition, array(':uniacid' => $_W['uniacid'], ':email' => trim($_GPC['email'])));
					if($emailexists) {
						unset($_GPC['email']);
					}
				}
				if(!empty($_GPC['mobile'])) {
					$mobilexists = pdo_fetchcolumn("SELECT mobile FROM ".tablename('mc_members')." WHERE uniacid = :uniacid AND mobile = :mobile " . $condition, array(':uniacid' => $_W['uniacid'], ':mobile' => trim($_GPC['mobile'])));
					if($mobilexists) {
						unset($_GPC['mobile']);
					}
				}
				$_GPC['uniacid'] = $_W['uniacid'];
				$_GPC['createtime'] = TIMESTAMP;
				pdo_insert('mc_members', $_GPC);
				$uid = pdo_insertid();
				pdo_update('mc_mapping_fans', array('uid' => $uid), array('fanid' => $fanid, 'uniacid' => $_W['uniacid']));
				itoast('更新资料成功！', url('mc/member'), 'success');
			} else {
				$email_effective = intval($_GPC['email_effective']);
				if(($email_effective == 1 && empty($_GPC['email']))) {
					unset($_GPC['email']);
				}
				unset($_GPC['addresss']);
				$uid = mc_update($uid, $_GPC);
			}
		}
		itoast('更新资料成功！', url('mc/member'), 'success');
	}
	$groups = mc_groups($_W['uniacid']);
	$profile = pdo_get('mc_members', array('uniacid' => $_W['uniacid'], 'uid' => $uid));
	if(!empty($profile)) {
		if(empty($profile['email']) || (!empty($profile['email']) && substr($profile['email'], -6) == 'we7.cc' && strlen($profile['email']) == 39)) {
						$profile['email_effective'] = 1;
			$profile['email'] = '';
		} else {
						$profile['email_effective'] = 2;
		}
	}
	$all_fields = mc_fields();
	$custom_fields = array();
	$base_fields = cache_load('userbasefields');
	$base_fields = array_keys($base_fields);
	foreach ($all_fields as $field => $title) {
		if (!in_array($field, $base_fields)) {
			$custom_fields[] = $field;
		}
	}
	if(empty($uid)) {
		$fanid = intval($_GPC['fanid']);
		$tag = pdo_fetchcolumn('SELECT tag FROM ' . tablename('mc_mapping_fans') . ' WHERE uniacid = :uniacid AND fanid = :fanid', array(':uniacid' => $_W['uniacid'], ':fanid' => $fanid));
		if(is_base64($tag)){
			$tag = base64_decode($tag);
		}
		if(is_serialized($tag)){
			$fan = iunserializer($tag);
		}
		if(!empty($tag)) {
			if(!empty($fan['nickname'])) {
				$profile['nickname'] = $fan['nickname'];
			}
			if(!empty($fan['sex'])) {
				$profile['gender'] = $fan['sex'];
			}
			if(!empty($fan['city'])) {
				$profile['residecity'] = $fan['city'] . '市';
			}
			if(!empty($fan['province'])) {
				$profile['resideprovince'] = $fan['province'] . '省';
			}
			if(!empty($fan['country'])) {
				$profile['nationality'] = $fan['country'];
			}
			if(!empty($fan['headimgurl'])) {
				$profile['avatar'] = rtrim($fan['headimgurl'], '0') . 132;
			}
		}
	}
	$addresss = pdo_getall('mc_member_address', array('uid' => $uid, 'uniacid' => $_W['uniacid']));
	template('mc/member-post');
}

if($do == 'del') {
	if(!empty($_GPC['uid'])) {
		if (is_array($_GPC['uid'])) {
			$delete_uids = array();
			foreach ($_GPC['uid'] as $uid) {
				$uid = intval($uid);
				if (!empty($uid)) {
					$delete_uids[] = intval($uid);
				}
			}
		} else {
			$delete_uids = $_GPC['uid'];
		}
		if (!empty($delete_uids)) {
			$tables = array('mc_members', 'mc_card_members', 'mc_card_notices', 'mc_card_notices_unread', 'mc_card_record', 'mc_card_sign_record', 'mc_cash_record', 'mc_credits_recharge', 'mc_credits_record', 'mc_mapping_fans', 'mc_member_address', 'mc_mapping_ucenter');
			foreach ($tables as $key => $value) {
				pdo_delete($value, array('uniacid' => $_W['uniacid'], 'uid' => $delete_uids));
			}
			itoast('删除成功！', referer(), 'success');
		}
		itoast('请选择要删除的项目！', referer(), 'error');
	}
}

if($do == 'add') {
	if($_W['isajax']) {
		$type = trim($_GPC['type']);
		$type_list = array('mobile', 'email');
		$data = trim($_GPC['data']);
		if(empty($data) || empty($type) || !in_array($type, $type_list)) {
			exit(json_encode(array('valid' => false)));
		}
		$user = pdo_get('mc_members', array('uniacid' => $_W['uniacid'], $type => $data));
		if(empty($user)) {
			exit(json_encode(array('valid' => true)));
		} else {
			exit(json_encode(array('valid' => false)));
		}
	}
	if(checksubmit('form')) {
		$realname = trim($_GPC['realname']) ? trim($_GPC['realname']) : itoast('姓名不能为空', '', '');
		$mobile = trim($_GPC['mobile']) ? trim($_GPC['mobile']) : itoast('手机不能为空', '', '');
		$user = pdo_get('mc_members', array('uniacid' => $_W['uniacid'], 'mobile' => $mobile));
		if(!empty($user)) {
			itoast('手机号被占用', '', '');
		}
		$email = trim($_GPC['email']);
		if(!empty($email)) {
			$user = pdo_get('mc_members', array('uniacid' => $_W['uniacid'], 'email' => $email));
			if(!empty($user)) {
				itoast('邮箱被占用', '', '');
			}
		}
		$salt = random(8);
		$data = array(
			'uniacid' => $_W['uniacid'],
			'realname' => $realname,
			'mobile' => $mobile,
			'email' => $email,
			'salt' => $salt,
			'password' => md5(trim($_GPC['password']) . $salt . $_W['config']['setting']['authkey']),
			'credit1' => intval($_GPC['credit1']),
			'credit2' => intval($_GPC['credit2']),
			'groupid' => intval($_GPC['groupid']),
			'createtime' => TIMESTAMP,
		);
		pdo_insert('mc_members', $data);
		$uid = pdo_insertid();
		itoast('添加会员成功,将进入编辑页面', url('mc/member/post', array('uid' => $uid)), 'success');
	}
	template('mc/member-add');
}

if($do == 'group') {
	if($_W['isajax']) {
		$id = intval($_GPC['id']);
		$group = $_W['account']['groups'][$id];
		if(empty($group)) {
			exit('会员组信息不存在');
		}
		$uid = intval($_GPC['uid']);
		$member = mc_fetch($uid);
		if(empty($member)) {
			exit('会员信息不存在');
		}
		$credit = intval($group['credit']);
		$credit6 = $credit - $member['credit1'];
		$status_update_groupid = mc_update($uid, array('groupid' => $id));
		$status_update_credit6 = mc_credit_update($uid, 'credit6', $credit6);
		if($status_update_groupid && !is_error($status_update_credit6)) {
			$openid = pdo_fetchcolumn('SELECT openid FROM ' . tablename('mc_mapping_fans') . ' WHERE acid = :acid AND uid = :uid', array(':acid' => $_W['acid'], ':uid' => $uid));
			if(!empty($openid)) {
				mc_notice_group($openid, $_W['account']['groups'][$member['groupid']]['title'], $_W['account']['groups'][$id]['title']);
			}
			exit('success');
		} else {
			exit('更新会员信息出错');
		}
	}
	exit('error');
}

if($do == 'credit_record') {
	$_W['page']['title'] = '积分日志-会员管理';
	$uid = intval($_GPC['uid']);
	$credits = array(
		'credit1' => '积分',
		'credit2' => '余额'
	);
	$type = trim($_GPC['type']) ? trim($_GPC['type']) : 'credit1';
	$pindex = max(1, intval($_GPC['page']));
	$psize = 50;
	$total = pdo_fetchcolumn("SELECT COUNT(*) FROM " . tablename('mc_credits_record') . ' WHERE uid = :uid AND uniacid = :uniacid AND credittype = :credittype ', array(':uniacid' => $_W['uniacid'], ':uid' => $uid, ':credittype' => $type));
	$data = pdo_fetchall("SELECT r.*, u.username FROM " . tablename('mc_credits_record') . ' AS r LEFT JOIN ' .tablename('users') . ' AS u ON r.operator = u.uid ' . ' WHERE r.uid = :uid AND r.uniacid = :uniacid AND r.credittype = :credittype ORDER BY id DESC LIMIT ' . ($pindex - 1) * $psize .',' . $psize, array(':uniacid' => $_W['uniacid'], ':uid' => $uid, ':credittype' => $type));
	$pager = pagination($total, $pindex, $psize);
	$modules = pdo_getall('modules', array('issystem' => 0), array('title', 'name'), 'name');
	$modules['card'] = array('title' => '会员卡', 'name' => 'card');
	template('mc/member');
}

if($do == 'credit_stat') {
	$_W['page']['title'] = '积分日志-会员管理';
	$uid = intval($_GPC['uid']);
	$credits = array(
		'credit1' => '积分',
		'credit2' => '余额'
	);
	$type = intval($_GPC['type']);
	$starttime = strtotime('-7 day');
	$endtime = strtotime('7 day');
	if($type == 1) {
		$starttime = strtotime(date('Y-m-d'));
		$endtime = TIMESTAMP;
	} elseif($type == -1) {
		$starttime = strtotime('-1 day');
		$endtime = strtotime(date('Y-m-d'));
	} else{
		$starttime = strtotime($_GPC['datelimit']['start']);
		$endtime = strtotime($_GPC['datelimit']['end']) + 86399;
	}
	if(!empty($credits)) {
		$data = array();
		foreach($credits as $key => $li) {
			$data[$key]['add'] = round(pdo_fetchcolumn('SELECT SUM(num) FROM ' . tablename('mc_credits_record') . ' WHERE uniacid = :id AND uid = :uid AND createtime > :start AND createtime < :end AND credittype = :type AND num > 0', array(':id' => $_W['uniacid'], ':uid' => $uid, ':start' => $starttime, ':end' => $endtime, ':type' => $key)),2);
			$data[$key]['del'] = abs(round(pdo_fetchcolumn('SELECT SUM(num) FROM ' . tablename('mc_credits_record') . ' WHERE uniacid = :id AND uid = :uid AND createtime > :start AND createtime < :end AND credittype = :type AND num < 0', array(':id' => $_W['uniacid'], ':uid' => $uid, ':start' => $starttime, ':end' => $endtime, ':type' => $key)),2));
			$data[$key]['end'] = $data[$key]['add'] - $data[$key]['del'];
		}
	}
	template('mc/member');
}