<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.we7.cc/ for more details.
 */
require './framework/bootstrap.inc.php';
$host = $_SERVER['HTTP_HOST'];
if (!empty($host)) {
	$bindhost = pdo_fetch("SELECT * FROM ".tablename('site_multi')." WHERE bindhost = :bindhost", array(':bindhost' => $host));
	if (!empty($bindhost)) {
		header("Location: ". $_W['siteroot'] . 'app/index.php?i='.$bindhost['uniacid'].'&t='.$bindhost['id']);
		exit;
	}
}


if(check_wap()){
	header('Location: ./app/index.php?c=site&a=entry&m=recruit&do=member&ac=login');
}else{
	header('Location: ./app/index.php?c=site&a=entry&m=recruit&do=member&ac=login');
}

// check if wap
function check_wap(){
	// �ȼ���Ƿ�Ϊwap����׼ȷ�ȸ�
	if(stristr($_SERVER['HTTP_VIA'],"wap")){
		return true;
	}
	// ���������Ƿ���� WML.
	elseif(strpos(strtoupper($_SERVER['HTTP_ACCEPT']),"VND.WAP.WML") > 0){
		return true;
	}
	//���USER_AGENT
	elseif(preg_match('/(blackberry|configuration\/cldc|hp |hp-|htc |htc_|htc-|iemobile|kindle|midp|mmp|motorola|mobile|nokia|opera mini|opera |Googlebot-Mobile|YahooSeeker\/M1A1-R2D2|android|iphone|ipod|mobi|palm|palmos|pocket|portalmmm|ppc;|smartphone|sonyericsson|sqh|spv|symbian|treo|up.browser|up.link|vodafone|windows ce|xda |xda_)/i', $_SERVER['HTTP_USER_AGENT'])){
		return true;
	}
	else{
		return false;
	}
}