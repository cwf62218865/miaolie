<?php
defined('IN_IA') or exit('Access Denied');
set_time_limit(0);
if (!$_W['isfounder']) {
	message('无权访问!');
}
$op = !empty($_GPC['op']) ? $_GPC['op'] : 'display';
load()->func('file');
wl_load()->model('auth');
require WL_CORE .'common/version.php'; 

if ($op == 'display') {
	$domain = $_W['siteroot']; 
	$siteid = $_W['setting']['site']['key'];
	
	$resp = auth_user($siteid, $domain);
	$ip = $resp['ip'];
	
	$result = auth_checkauth($auth);
	
	if (checksubmit()) {
		$data = array('ip' => $_GPC['ip'],'domain' => $_GPC['domain'],'siteid' => $_GPC['siteid'],'code' => $_GPC['code']);
		$resp = auth_grant($data);
		if($resp['errno'] == 1){
			message($resp['message']);
		}else{
			$data['family'] = $resp['family'];
			$tmpdir = IA_ROOT . '/addons/weliam_shiftcar1123/core/common';
            if (!is_dir($tmpdir)) {
                mkdirs($tmpdir);
            }
            file_put_contents($tmpdir . '/common.log', json_encode($data));
			wl_syssetting_save($data,'auth');
			message($resp['message']);
		}
	}
	
	include wl_template('system/auth');
}

if ($op == 'process') {
	include wl_template('system/process');
}

if ($op == 'upgrade') {
	$result = auth_checkauth($auth);
	if($result['status'] != 1){
		message('您还未授权，请授权后再试！',web_url('system/auth/display'),'warning');
	}
    $version = WELIAM_SHIFTCAR_VERSION;
	$versionfile = WL_CORE . 'common/version.php';
	$release = date('YmdHis', filemtime($versionfile));
    $upgrade = auth_check($auth,$version);
    if (is_array($upgrade)) {
        if ($upgrade['result'] == 1) {
            $files = array();
            if (!empty($upgrade['files'])) {
                foreach ($upgrade['files'] as $file) {
                    $entry = IA_ROOT . '/addons/weliam_shiftcar1123/' . $file['path'];
                    if (!is_file($entry) || md5_file($entry) != $file['md5']) {
                        $files[] = array(
                            'path' => $file['path'],
                            'download' => 0,
                            'entry'=>$entry
                        );
                    }
                }
            }
			if(!empty($files)){
				$upgrade['files'] = $files;
	            $tmpdir = IA_ROOT . '/addons/weliam_shiftcar1123/temp';
	            if (!is_dir($tmpdir)) {
	                mkdirs($tmpdir);
	            }
	            file_put_contents($tmpdir . '/file.txt', json_encode($upgrade));
			}else{
				unset($upgrade);
			}
        }else{
        	message($upgrade['message']);
        }
    }else{
    	message('服务器错误:' . $resp['content'] . '. ');
    }
	include wl_template('system/upgrade');
}

if ($op == 'download') {
    $tmpdir = IA_ROOT . '/addons/weliam_shiftcar1123/temp';
    $f = file_get_contents($tmpdir . '/file.txt');
    $upgrade = json_decode($f, true);
    $files = $upgrade['files'];
	
	//判断是否存在需要更新的文件
    $path = "";
    foreach ($files as $f) {
        if (empty($f['download'])) {
            $path = $f['path'];
            break;
        }
    }
	
    if (!empty($path)) {
        $ret = auth_download($auth,$path);
        if (is_array($ret)) {
        	//检查路径
            $path = $ret['path'];
            $dirpath = dirname($path);
            if (!is_dir(IA_ROOT . '/addons/weliam_shiftcar1123/' . $dirpath)) {
                mkdirs(IA_ROOT . '/addons/weliam_shiftcar1123/' . $dirpath, '0777');
            }
			//获取更新文件
            $content = base64_decode($ret['content']);
            file_put_contents(IA_ROOT . '/addons/weliam_shiftcar1123/' . $path, $content);
            $success = 1;
            foreach ($files as & $f) {
                if ($f['path'] == $path) {
                    $f['download'] = 1;
                    break;
                }
                if ($f['download']) {
                    $success++;
                }
            }
            unset($f);
            $upgrade['files'] = $files;
            $tmpdir = IA_ROOT . '/addons/weliam_shiftcar1123/temp';
            if (!is_dir($tmpdir)) {
                mkdirs($tmpdir);
            }
            file_put_contents($tmpdir . '/file.txt', json_encode($upgrade));
            die(json_encode(array(
                'result' => 1,
                'total' => count($files) ,
                'success' => $success,
                'path' => $path
            )));
        }
    } else {
        $updatefile = IA_ROOT . '/addons/weliam_shiftcar1123/upgrade.php';
        require $updatefile;
        $tmpdir = IA_ROOT . '/addons/weliam_shiftcar1123/temp';
        @rmdirs($tmpdir);
        message('恭喜您，系统更新成功！',web_url('system/auth/upgrade'),'success');
    }
}