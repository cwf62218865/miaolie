-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 10 月 17 日 09:22
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `college`
--

-- --------------------------------------------------------

--
-- 表的结构 `ims_account`
--

CREATE TABLE IF NOT EXISTS `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_account`
--

INSERT INTO `ims_account` (`acid`, `uniacid`, `hash`, `type`, `isconnect`, `isdeleted`) VALUES
(1, 1, 'uRr8qvQV', 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_wechats`
--

CREATE TABLE IF NOT EXISTS `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_account_wechats`
--

INSERT INTO `ims_account_wechats` (`acid`, `uniacid`, `token`, `encodingaeskey`, `level`, `name`, `account`, `original`, `signature`, `country`, `province`, `city`, `username`, `password`, `lastupdate`, `key`, `secret`, `styleid`, `subscribeurl`, `auth_refresh_token`) VALUES
(1, 1, 'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP', '', 1, 'we7team', '', '', '', '', '', '', '', '', 0, '', '', 1, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_account_wxapp`
--

CREATE TABLE IF NOT EXISTS `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_category`
--

CREATE TABLE IF NOT EXISTS `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_news`
--

CREATE TABLE IF NOT EXISTS `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_notice`
--

CREATE TABLE IF NOT EXISTS `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_article_unread_notice`
--

CREATE TABLE IF NOT EXISTS `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_basic_reply`
--

CREATE TABLE IF NOT EXISTS `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_business`
--

CREATE TABLE IF NOT EXISTS `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_card`
--

CREATE TABLE IF NOT EXISTS `ims_card` (
  `id` int(111) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `tel` varchar(32) DEFAULT NULL,
  `youbian` varchar(32) DEFAULT NULL,
  `is_def` int(1) NOT NULL DEFAULT '0',
  `upbdate` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_attachment`
--

CREATE TABLE IF NOT EXISTS `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_core_attachment`
--

INSERT INTO `ims_core_attachment` (`id`, `uniacid`, `uid`, `filename`, `attachment`, `type`, `createtime`) VALUES
(1, 1, 1, 'u=1060387669,1498970204&fm=27&gp=0.jpg', 'images/1/2017/09/sceEreEtHZR9euGhRHTGetERTmYK7c.jpg', 1, 1506506650),
(2, 1, 1, 'u=4258410114,1864035878&fm=27&gp=0.jpg', 'images/1/2017/09/uOyqzBvazIBtnoKagJ1vNzY5kGiNVo.jpg', 1, 1506506656);

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cache`
--

CREATE TABLE IF NOT EXISTS `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_cache`
--

INSERT INTO `ims_core_cache` (`key`, `value`) VALUES
('account:ticket', 's:0:"";'),
('userbasefields', 'a:45:{s:7:"uniacid";s:17:"同一公众号id";s:7:"groupid";s:8:"分组id";s:7:"credit1";s:6:"积分";s:7:"credit2";s:6:"余额";s:7:"credit3";s:19:"预留积分类型3";s:7:"credit4";s:19:"预留积分类型4";s:7:"credit5";s:19:"预留积分类型5";s:7:"credit6";s:19:"预留积分类型6";s:10:"createtime";s:12:"加入时间";s:6:"mobile";s:12:"手机号码";s:5:"email";s:12:"电子邮箱";s:8:"realname";s:12:"真实姓名";s:8:"nickname";s:6:"昵称";s:6:"avatar";s:6:"头像";s:2:"qq";s:5:"QQ号";s:6:"gender";s:6:"性别";s:5:"birth";s:6:"生日";s:13:"constellation";s:6:"星座";s:6:"zodiac";s:6:"生肖";s:9:"telephone";s:12:"固定电话";s:6:"idcard";s:12:"证件号码";s:9:"studentid";s:6:"学号";s:5:"grade";s:6:"班级";s:7:"address";s:6:"地址";s:7:"zipcode";s:6:"邮编";s:11:"nationality";s:6:"国籍";s:6:"reside";s:9:"居住地";s:14:"graduateschool";s:12:"毕业学校";s:7:"company";s:6:"公司";s:9:"education";s:6:"学历";s:10:"occupation";s:6:"职业";s:8:"position";s:6:"职位";s:7:"revenue";s:9:"年收入";s:15:"affectivestatus";s:12:"情感状态";s:10:"lookingfor";s:13:" 交友目的";s:9:"bloodtype";s:6:"血型";s:6:"height";s:6:"身高";s:6:"weight";s:6:"体重";s:6:"alipay";s:15:"支付宝帐号";s:3:"msn";s:3:"MSN";s:6:"taobao";s:12:"阿里旺旺";s:4:"site";s:6:"主页";s:3:"bio";s:12:"自我介绍";s:8:"interest";s:12:"兴趣爱好";s:8:"password";s:6:"密码";}'),
('usersfields', 'a:46:{s:8:"realname";s:12:"真实姓名";s:8:"nickname";s:6:"昵称";s:6:"avatar";s:6:"头像";s:2:"qq";s:5:"QQ号";s:6:"mobile";s:12:"手机号码";s:3:"vip";s:9:"VIP级别";s:6:"gender";s:6:"性别";s:9:"birthyear";s:12:"出生生日";s:13:"constellation";s:6:"星座";s:6:"zodiac";s:6:"生肖";s:9:"telephone";s:12:"固定电话";s:6:"idcard";s:12:"证件号码";s:9:"studentid";s:6:"学号";s:5:"grade";s:6:"班级";s:7:"address";s:12:"邮寄地址";s:7:"zipcode";s:6:"邮编";s:11:"nationality";s:6:"国籍";s:14:"resideprovince";s:12:"居住地址";s:14:"graduateschool";s:12:"毕业学校";s:7:"company";s:6:"公司";s:9:"education";s:6:"学历";s:10:"occupation";s:6:"职业";s:8:"position";s:6:"职位";s:7:"revenue";s:9:"年收入";s:15:"affectivestatus";s:12:"情感状态";s:10:"lookingfor";s:13:" 交友目的";s:9:"bloodtype";s:6:"血型";s:6:"height";s:6:"身高";s:6:"weight";s:6:"体重";s:6:"alipay";s:15:"支付宝帐号";s:3:"msn";s:3:"MSN";s:5:"email";s:12:"电子邮箱";s:6:"taobao";s:12:"阿里旺旺";s:4:"site";s:6:"主页";s:3:"bio";s:12:"自我介绍";s:8:"interest";s:12:"兴趣爱好";s:7:"uniacid";s:17:"同一公众号id";s:7:"groupid";s:8:"分组id";s:7:"credit1";s:6:"积分";s:7:"credit2";s:6:"余额";s:7:"credit3";s:19:"预留积分类型3";s:7:"credit4";s:19:"预留积分类型4";s:7:"credit5";s:19:"预留积分类型5";s:7:"credit6";s:19:"预留积分类型6";s:10:"createtime";s:12:"加入时间";s:8:"password";s:12:"用户密码";}'),
('setting', 'a:7:{s:9:"copyright";a:1:{s:6:"slides";a:3:{i:0;s:58:"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg";i:1;s:58:"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg";i:2;s:58:"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg";}}s:8:"authmode";i:1;s:5:"close";a:2:{s:6:"status";s:1:"0";s:6:"reason";s:0:"";}s:8:"register";a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:1;s:7:"groupid";i:1;}s:10:"module_ban";a:0:{}s:14:"module_upgrade";a:0:{}s:7:"cloudip";a:0:{}}'),
('we7:module:all_uninstall', 'a:2:{s:6:"expire";i:1507608050;s:4:"data";a:4:{s:13:"cloud_m_count";N;s:7:"modules";a:2:{s:7:"recycle";a:0:{}s:11:"uninstalled";a:0:{}}s:9:"app_count";i:0;s:11:"wxapp_count";i:0;}}'),
('we7:user_modules:1', 'a:15:{i:0;s:19:"q_3354988381_rencai";i:1;s:15:"weliam_shiftcar";i:2;s:7:"recruit";i:3;s:7:"college";i:4;s:6:"wxcard";i:5;s:5:"chats";i:6;s:5:"voice";i:7;s:5:"video";i:8;s:6:"images";i:9;s:6:"custom";i:10;s:8:"recharge";i:11;s:7:"userapi";i:12;s:5:"music";i:13;s:4:"news";i:14;s:5:"basic";}'),
('system_frame', 'a:5:{s:7:"account";a:5:{s:5:"title";s:9:"公众号";s:3:"url";s:29:"./index.php?c=home&a=welcome&";s:7:"section";a:4:{s:13:"platform_plus";a:2:{s:5:"title";s:12:"增强功能";s:4:"menu";a:6:{s:14:"platform_reply";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"自动回复";s:3:"url";s:31:"./index.php?c=platform&a=reply&";s:15:"permission_name";s:14:"platform_reply";s:4:"icon";s:11:"wi wi-reply";s:12:"displayorder";i:6;s:2:"id";N;s:14:"sub_permission";a:3:{i:0;a:2:{s:5:"title";s:22:"关键字自动回复 ";s:15:"permission_name";s:14:"platform_reply";}i:1;a:2:{s:5:"title";s:25:"非关键字自动回复 ";s:15:"permission_name";s:22:"platform_reply_special";}i:2;a:2:{s:5:"title";s:19:"欢迎/默认回复";s:15:"permission_name";s:21:"platform_reply_system";}}}s:13:"platform_menu";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"自定义菜单";s:3:"url";s:30:"./index.php?c=platform&a=menu&";s:15:"permission_name";s:13:"platform_menu";s:4:"icon";s:16:"wi wi-custommenu";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:11:"platform_qr";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:22:"二维码/转化链接";s:3:"url";s:28:"./index.php?c=platform&a=qr&";s:15:"permission_name";s:11:"platform_qr";s:4:"icon";s:12:"wi wi-qrcode";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";a:2:{i:0;a:2:{s:5:"title";s:9:"二维码";s:15:"permission_name";s:11:"platform_qr";}i:1;a:2:{s:5:"title";s:12:"转化链接";s:15:"permission_name";s:15:"platform_url2qr";}}}s:18:"platform_mass_task";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"定时群发";s:3:"url";s:30:"./index.php?c=platform&a=mass&";s:15:"permission_name";s:18:"platform_mass_task";s:4:"icon";s:13:"wi wi-crontab";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:17:"platform_material";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:16:"素材/编辑器";s:3:"url";s:34:"./index.php?c=platform&a=material&";s:15:"permission_name";s:17:"platform_material";s:4:"icon";s:12:"wi wi-redact";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:13:"platform_site";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:16:"微官网-文章";s:3:"url";s:38:"./index.php?c=site&a=multi&do=display&";s:15:"permission_name";s:13:"platform_site";s:4:"icon";s:10:"wi wi-home";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:2:{i:0;a:2:{s:5:"title";s:13:"添加/编辑";s:15:"permission_name";s:18:"platform_site_post";}i:1;a:2:{s:5:"title";s:6:"删除";s:15:"permission_name";s:20:"platform_site_delete";}}}}}s:15:"platform_module";a:3:{s:5:"title";s:12:"应用模块";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:2:"mc";a:2:{s:5:"title";s:6:"粉丝";s:4:"menu";a:2:{s:7:"mc_fans";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"粉丝管理";s:3:"url";s:24:"./index.php?c=mc&a=fans&";s:15:"permission_name";s:7:"mc_fans";s:4:"icon";s:16:"wi wi-fansmanage";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:9:"mc_member";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"会员管理";s:3:"url";s:26:"./index.php?c=mc&a=member&";s:15:"permission_name";s:9:"mc_member";s:4:"icon";s:10:"wi wi-fans";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"profile";a:2:{s:5:"title";s:6:"配置";s:4:"menu";a:1:{s:7:"profile";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"参数配置";s:3:"url";s:33:"./index.php?c=profile&a=passport&";s:15:"permission_name";s:15:"profile_setting";s:4:"icon";s:22:"wi wi-parameter-stting";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:1;}s:5:"wxapp";a:5:{s:5:"title";s:9:"小程序";s:3:"url";s:38:"./index.php?c=wxapp&a=display&do=home&";s:7:"section";a:2:{s:12:"wxapp_module";a:3:{s:5:"title";s:6:"应用";s:4:"menu";a:0:{}s:10:"is_display";b:1;}s:20:"platform_manage_menu";a:2:{s:5:"title";s:6:"管理";s:4:"menu";a:2:{s:11:"module_link";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:21:"模块关联公众号";s:3:"url";s:53:"./index.php?c=wxapp&a=version&do=module_link_uniacid&";s:15:"permission_name";s:25:"wxapp_module_link_uniacid";s:4:"icon";s:16:"wi wi-appsetting";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:13:"wxapp_profile";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"支付参数";s:3:"url";s:30:"./index.php?c=wxapp&a=payment&";s:15:"permission_name";s:13:"wxapp_payment";s:4:"icon";s:16:"wi wi-appsetting";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:1;}s:6:"system";a:5:{s:5:"title";s:12:"系统管理";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=1";s:7:"section";a:6:{s:10:"wxplatform";a:2:{s:5:"title";s:9:"公众号";s:4:"menu";a:4:{s:14:"system_account";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:16:" 微信公众号";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=1";s:15:"permission_name";s:14:"system_account";s:4:"icon";s:12:"wi wi-wechat";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:21:"公众号管理设置";s:15:"permission_name";s:21:"system_account_manage";}i:1;a:2:{s:5:"title";s:15:"添加公众号";s:15:"permission_name";s:19:"system_account_post";}i:2;a:2:{s:5:"title";s:15:"公众号停用";s:15:"permission_name";s:19:"system_account_stop";}i:3;a:2:{s:5:"title";s:18:"公众号回收站";s:15:"permission_name";s:22:"system_account_recycle";}i:4;a:2:{s:5:"title";s:15:"公众号删除";s:15:"permission_name";s:21:"system_account_delete";}i:5;a:2:{s:5:"title";s:15:"公众号恢复";s:15:"permission_name";s:22:"system_account_recover";}}}s:13:"system_module";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"公众号应用";s:3:"url";s:44:"./index.php?c=system&a=module&account_type=1";s:15:"permission_name";s:13:"system_module";s:4:"icon";s:14:"wi wi-wx-apply";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:15:"system_template";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"微官网模板";s:3:"url";s:32:"./index.php?c=system&a=template&";s:15:"permission_name";s:15:"system_template";s:4:"icon";s:17:"wi wi-wx-template";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:15:"system_platform";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:19:" 微信开放平台";s:3:"url";s:32:"./index.php?c=system&a=platform&";s:15:"permission_name";s:15:"system_platform";s:4:"icon";s:20:"wi wi-exploitsetting";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:6:"module";a:2:{s:5:"title";s:9:"小程序";s:4:"menu";a:2:{s:12:"system_wxapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"微信小程序";s:3:"url";s:45:"./index.php?c=account&a=manage&account_type=4";s:15:"permission_name";s:12:"system_wxapp";s:4:"icon";s:11:"wi wi-wxapp";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_module_wxapp";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"小程序应用";s:3:"url";s:44:"./index.php?c=system&a=module&account_type=4";s:15:"permission_name";s:19:"system_module_wxapp";s:4:"icon";s:17:"wi wi-wxapp-apply";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:4:"user";a:2:{s:5:"title";s:13:"帐户/用户";s:4:"menu";a:2:{s:9:"system_my";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"我的帐户";s:3:"url";s:29:"./index.php?c=user&a=profile&";s:15:"permission_name";s:9:"system_my";s:4:"icon";s:10:"wi wi-user";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:11:"system_user";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"用户管理";s:3:"url";s:29:"./index.php?c=user&a=display&";s:15:"permission_name";s:11:"system_user";s:4:"icon";s:16:"wi wi-user-group";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:6:{i:0;a:2:{s:5:"title";s:12:"编辑用户";s:15:"permission_name";s:16:"system_user_post";}i:1;a:2:{s:5:"title";s:12:"审核用户";s:15:"permission_name";s:17:"system_user_check";}i:2;a:2:{s:5:"title";s:15:"用户回收站";s:15:"permission_name";s:19:"system_user_recycle";}i:3;a:2:{s:5:"title";s:18:"用户属性设置";s:15:"permission_name";s:18:"system_user_fields";}i:4;a:2:{s:5:"title";s:31:"用户属性设置-编辑字段";s:15:"permission_name";s:23:"system_user_fields_post";}i:5;a:2:{s:5:"title";s:18:"用户注册设置";s:15:"permission_name";s:23:"system_user_registerset";}}}}}s:10:"permission";a:2:{s:5:"title";s:12:"权限管理";s:4:"menu";a:2:{s:19:"system_module_group";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"应用权限组";s:3:"url";s:36:"./index.php?c=system&a=module-group&";s:15:"permission_name";s:19:"system_module_group";s:4:"icon";s:21:"wi wi-appjurisdiction";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:17:"system_user_group";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"用户权限组";s:3:"url";s:27:"./index.php?c=user&a=group&";s:15:"permission_name";s:17:"system_user_group";s:4:"icon";s:22:"wi wi-userjurisdiction";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";a:2:{i:0;a:2:{s:5:"title";s:15:"编辑用户组";s:15:"permission_name";s:22:"system_user_group_post";}i:1;a:2:{s:5:"title";s:15:"删除用户组";s:15:"permission_name";s:21:"system_user_group_del";}}}}}s:7:"acticle";a:2:{s:5:"title";s:13:"文章/公告";s:4:"menu";a:2:{s:14:"system_article";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"文章管理";s:3:"url";s:29:"./index.php?c=article&a=news&";s:15:"permission_name";s:19:"system_article_news";s:4:"icon";s:13:"wi wi-article";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:21:"system_article_notice";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"公告管理";s:3:"url";s:31:"./index.php?c=article&a=notice&";s:15:"permission_name";s:21:"system_article_notice";s:4:"icon";s:12:"wi wi-notice";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:5:"cache";a:2:{s:5:"title";s:6:"缓存";s:4:"menu";a:1:{s:26:"system_setting_updatecache";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"更新缓存";s:3:"url";s:35:"./index.php?c=system&a=updatecache&";s:15:"permission_name";s:26:"system_setting_updatecache";s:4:"icon";s:12:"wi wi-update";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:9:"is_system";b:1;s:10:"is_display";b:1;}s:4:"site";a:6:{s:5:"title";s:12:"站点管理";s:3:"url";s:30:"./index.php?c=cloud&a=upgrade&";s:7:"section";a:3:{s:5:"cloud";a:2:{s:5:"title";s:9:"云服务";s:4:"menu";a:4:{s:14:"system_profile";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"系统升级";s:3:"url";s:30:"./index.php?c=cloud&a=upgrade&";s:15:"permission_name";s:20:"system_cloud_upgrade";s:4:"icon";s:11:"wi wi-cache";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:21:"system_cloud_register";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"注册站点";s:3:"url";s:30:"./index.php?c=cloud&a=profile&";s:15:"permission_name";s:21:"system_cloud_register";s:4:"icon";s:18:"wi wi-registersite";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:21:"system_cloud_diagnose";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"云服务诊断";s:3:"url";s:31:"./index.php?c=cloud&a=diagnose&";s:15:"permission_name";s:21:"system_cloud_diagnose";s:4:"icon";s:14:"wi wi-diagnose";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:16:"system_cloud_sms";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"短信管理";s:3:"url";s:26:"./index.php?c=cloud&a=sms&";s:15:"permission_name";s:16:"system_cloud_sms";s:4:"icon";s:13:"wi wi-message";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"setting";a:2:{s:5:"title";s:6:"设置";s:4:"menu";a:5:{s:19:"system_setting_site";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"站点设置";s:3:"url";s:28:"./index.php?c=system&a=site&";s:15:"permission_name";s:19:"system_setting_site";s:4:"icon";s:18:"wi wi-site-setting";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_setting_menu";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"菜单设置";s:3:"url";s:28:"./index.php?c=system&a=menu&";s:15:"permission_name";s:19:"system_setting_menu";s:4:"icon";s:18:"wi wi-menu-setting";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_setting_attachment";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"附件设置";s:3:"url";s:34:"./index.php?c=system&a=attachment&";s:15:"permission_name";s:25:"system_setting_attachment";s:4:"icon";s:16:"wi wi-attachment";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:25:"system_setting_systeminfo";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"系统信息";s:3:"url";s:34:"./index.php?c=system&a=systeminfo&";s:15:"permission_name";s:25:"system_setting_systeminfo";s:4:"icon";s:17:"wi wi-system-info";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_setting_logs";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"查看日志";s:3:"url";s:28:"./index.php?c=system&a=logs&";s:15:"permission_name";s:19:"system_setting_logs";s:4:"icon";s:9:"wi wi-log";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}s:7:"utility";a:2:{s:5:"title";s:12:"常用工具";s:4:"menu";a:5:{s:24:"system_utility_filecheck";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:18:"系统文件校验";s:3:"url";s:33:"./index.php?c=system&a=filecheck&";s:15:"permission_name";s:24:"system_utility_filecheck";s:4:"icon";s:10:"wi wi-file";s:12:"displayorder";i:5;s:2:"id";N;s:14:"sub_permission";N;}s:23:"system_utility_optimize";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"性能优化";s:3:"url";s:32:"./index.php?c=system&a=optimize&";s:15:"permission_name";s:23:"system_utility_optimize";s:4:"icon";s:14:"wi wi-optimize";s:12:"displayorder";i:4;s:2:"id";N;s:14:"sub_permission";N;}s:23:"system_utility_database";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:9:"数据库";s:3:"url";s:32:"./index.php?c=system&a=database&";s:15:"permission_name";s:23:"system_utility_database";s:4:"icon";s:9:"wi wi-sql";s:12:"displayorder";i:3;s:2:"id";N;s:14:"sub_permission";N;}s:19:"system_utility_scan";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:12:"木马查杀";s:3:"url";s:28:"./index.php?c=system&a=scan&";s:15:"permission_name";s:19:"system_utility_scan";s:4:"icon";s:12:"wi wi-safety";s:12:"displayorder";i:2;s:2:"id";N;s:14:"sub_permission";N;}s:18:"system_utility_bom";a:9:{s:9:"is_system";i:1;s:10:"is_display";i:1;s:5:"title";s:15:"检测文件BOM";s:3:"url";s:27:"./index.php?c=system&a=bom&";s:15:"permission_name";s:18:"system_utility_bom";s:4:"icon";s:9:"wi wi-bom";s:12:"displayorder";i:1;s:2:"id";N;s:14:"sub_permission";N;}}}}s:7:"founder";b:1;s:9:"is_system";b:1;s:10:"is_display";b:1;}s:9:"appmarket";a:7:{s:5:"title";s:12:"应用市场";s:3:"url";s:13:"http://we7.cc";s:7:"section";a:0:{}s:5:"blank";b:1;s:7:"founder";b:1;s:9:"is_system";b:1;s:10:"is_display";b:1;}}'),
('module_receive_enable', 'a:0:{}'),
('uniaccount:1', 'a:28:{s:4:"acid";s:1:"1";s:7:"uniacid";s:1:"1";s:5:"token";s:32:"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP";s:14:"encodingaeskey";s:0:"";s:5:"level";s:1:"1";s:4:"name";s:7:"we7team";s:7:"account";s:0:"";s:8:"original";s:0:"";s:9:"signature";s:0:"";s:7:"country";s:0:"";s:8:"province";s:0:"";s:4:"city";s:0:"";s:8:"username";s:0:"";s:8:"password";s:0:"";s:10:"lastupdate";s:1:"0";s:3:"key";s:0:"";s:6:"secret";s:0:"";s:7:"styleid";s:1:"1";s:12:"subscribeurl";s:0:"";s:18:"auth_refresh_token";s:0:"";s:4:"type";s:1:"1";s:9:"isconnect";s:1:"1";s:9:"isdeleted";s:1:"0";s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:1:{i:1;a:5:{s:7:"groupid";s:1:"1";s:7:"uniacid";s:1:"1";s:5:"title";s:15:"默认会员组";s:6:"credit";s:1:"0";s:9:"isdefault";s:1:"1";}}s:10:"grouplevel";s:1:"0";}'),
('unisetting:1', 'a:22:{s:7:"uniacid";s:1:"1";s:8:"passport";a:3:{s:8:"focusreg";i:0;s:4:"item";s:5:"email";s:4:"type";s:8:"password";}s:5:"oauth";a:2:{s:6:"status";s:1:"0";s:7:"account";s:1:"0";}s:11:"jsauth_acid";s:1:"0";s:2:"uc";a:1:{s:6:"status";i:0;}s:6:"notify";a:1:{s:4:"mail";a:5:{s:8:"username";s:17:"1421514791@qq.com";s:8:"password";s:16:"jmxcaorzhestjgjb";s:4:"smtp";a:4:{s:4:"type";s:2:"qq";s:6:"server";s:0:"";s:4:"port";s:0:"";s:8:"authmode";s:1:"0";}s:6:"sender";s:9:"秒猎网";s:9:"signature";s:15:"大学生招聘";}}s:11:"creditnames";a:5:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}s:7:"credit3";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit4";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit5";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}}s:15:"creditbehaviors";a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}s:7:"welcome";s:0:"";s:7:"default";s:0:"";s:15:"default_message";s:0:"";s:7:"payment";a:4:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:0:"";s:7:"partner";s:0:"";s:6:"secret";s:0:"";}s:6:"wechat";a:5:{s:6:"switch";b:0;s:7:"account";b:0;s:7:"signkey";s:0:"";s:7:"partner";s:0:"";s:3:"key";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:0;}}s:4:"stat";s:0:"";s:12:"default_site";s:1:"1";s:4:"sync";s:1:"0";s:8:"recharge";s:0:"";s:9:"tplnotice";s:0:"";s:10:"grouplevel";s:1:"0";s:8:"mcplugin";s:0:"";s:15:"exchange_enable";s:1:"0";s:11:"coupon_type";s:1:"0";s:7:"menuset";s:0:"";}'),
('uniaccount:0', 'a:6:{s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:0:{}s:10:"grouplevel";b:0;s:9:"isconnect";b:0;}'),
('unisetting:0', 'b:0;'),
('we7:module_info:recruit', 'a:24:{s:3:"mid";s:2:"13";s:4:"name";s:7:"recruit";s:4:"type";s:8:"business";s:5:"title";s:6:"招聘";s:7:"version";s:5:"1.0.3";s:7:"ability";s:6:"招聘";s:11:"description";s:6:"招聘";s:6:"author";s:24:"折翼天使源码社区";s:3:"url";s:27:"http://www.zheyitianShi.Com";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:8:{i:0;s:4:"text";i:1;s:5:"image";i:2;s:5:"voice";i:3;s:8:"location";i:4;s:9:"subscribe";i:5;s:2:"qr";i:6;s:5:"trace";i:7;s:5:"click";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:53:"http://localhost/addons/recruit/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('unicount:0', 's:1:"0";'),
('we7:module_info:basic', 'a:24:{s:3:"mid";s:1:"1";s:4:"name";s:5:"basic";s:4:"type";s:6:"system";s:5:"title";s:18:"基本文字回复";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"和您进行简单对话";s:11:"description";s:201:"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:51:"http://localhost/addons/basic/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:news', 'a:24:{s:3:"mid";s:1:"2";s:4:"name";s:4:"news";s:4:"type";s:6:"system";s:5:"title";s:24:"基本混合图文回复";s:7:"version";s:3:"1.0";s:7:"ability";s:33:"为你提供生动的图文资讯";s:11:"description";s:272:"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:50:"http://localhost/addons/news/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:music', 'a:24:{s:3:"mid";s:1:"3";s:4:"name";s:5:"music";s:4:"type";s:6:"system";s:5:"title";s:18:"基本音乐回复";s:7:"version";s:3:"1.0";s:7:"ability";s:39:"提供语音、音乐等音频类回复";s:11:"description";s:183:"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:51:"http://localhost/addons/music/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:userapi', 'a:24:{s:3:"mid";s:1:"4";s:4:"name";s:7:"userapi";s:4:"type";s:6:"system";s:5:"title";s:21:"自定义接口回复";s:7:"version";s:3:"1.1";s:7:"ability";s:33:"更方便的第三方接口设置";s:11:"description";s:141:"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:53:"http://localhost/addons/userapi/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:recharge', 'a:24:{s:3:"mid";s:1:"5";s:4:"name";s:8:"recharge";s:4:"type";s:6:"system";s:5:"title";s:24:"会员中心充值模块";s:7:"version";s:3:"1.0";s:7:"ability";s:24:"提供会员充值功能";s:11:"description";s:0:"";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:54:"http://localhost/addons/recharge/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:custom', 'a:24:{s:3:"mid";s:1:"6";s:4:"name";s:6:"custom";s:4:"type";s:6:"system";s:5:"title";s:15:"多客服转接";s:7:"version";s:5:"1.0.0";s:7:"ability";s:36:"用来接入腾讯的多客服系统";s:11:"description";s:0:"";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:17:"http://bbs.we7.cc";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:52:"http://localhost/addons/custom/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:images', 'a:24:{s:3:"mid";s:1:"7";s:4:"name";s:6:"images";s:4:"type";s:6:"system";s:5:"title";s:18:"基本图片回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:11:"description";s:132:"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:52:"http://localhost/addons/images/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:video', 'a:24:{s:3:"mid";s:1:"8";s:4:"name";s:5:"video";s:4:"type";s:6:"system";s:5:"title";s:18:"基本视频回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供图片回复";s:11:"description";s:132:"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:51:"http://localhost/addons/video/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:voice', 'a:24:{s:3:"mid";s:1:"9";s:4:"name";s:5:"voice";s:4:"type";s:6:"system";s:5:"title";s:18:"基本语音回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"提供语音回复";s:11:"description";s:132:"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:51:"http://localhost/addons/voice/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:chats', 'a:24:{s:3:"mid";s:2:"10";s:4:"name";s:5:"chats";s:4:"type";s:6:"system";s:5:"title";s:18:"发送客服消息";s:7:"version";s:3:"1.0";s:7:"ability";s:77:"公众号可以在粉丝最后发送消息的48小时内无限制发送消息";s:11:"description";s:0:"";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:51:"http://localhost/addons/chats/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:wxcard', 'a:24:{s:3:"mid";s:2:"11";s:4:"name";s:6:"wxcard";s:4:"type";s:6:"system";s:5:"title";s:18:"微信卡券回复";s:7:"version";s:3:"1.0";s:7:"ability";s:18:"微信卡券回复";s:11:"description";s:18:"微信卡券回复";s:6:"author";s:13:"WeEngine Team";s:3:"url";s:18:"http://www.we7.cc/";s:8:"settings";s:1:"0";s:10:"subscribes";s:0:"";s:7:"handles";s:0:"";s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"1";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:0:"";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:52:"http://localhost/addons/wxcard/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:college', 'a:24:{s:3:"mid";s:2:"12";s:4:"name";s:7:"college";s:4:"type";s:8:"business";s:5:"title";s:15:"大学生招聘";s:7:"version";s:3:"9.1";s:7:"ability";s:7:"college";s:11:"description";s:13:"version debug";s:6:"author";s:5:"baocl";s:3:"url";s:0:"";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:1:{i:0;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:53:"http://localhost/addons/college/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:module_info:weliam_shiftcar', 'a:24:{s:3:"mid";s:2:"14";s:4:"name";s:15:"weliam_shiftcar";s:4:"type";s:8:"business";s:5:"title";s:12:"微信挪车";s:7:"version";s:5:"1.0.3";s:7:"ability";s:12:"微信挪车";s:11:"description";s:12:"微信挪车";s:6:"author";s:24:"折翼天使源码社区";s:3:"url";s:27:"http://www.zheyitianShi.Com";s:8:"settings";s:1:"0";s:10:"subscribes";a:0:{}s:7:"handles";a:8:{i:0;s:4:"text";i:1;s:5:"image";i:2;s:5:"voice";i:3;s:8:"location";i:4;s:9:"subscribe";i:5;s:2:"qr";i:6;s:5:"trace";i:7;s:5:"click";}s:12:"isrulefields";s:1:"0";s:8:"issystem";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:61:"http://localhost/addons/weliam_shiftcar/icon.jpg?v=1506649904";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('weliam_shiftcar_syssetting', 's:0:"";'),
('we7:unimodules::1', 'a:15:{s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:5:"video";a:1:{s:4:"name";s:5:"video";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:7:"college";a:1:{s:4:"name";s:7:"college";}s:7:"recruit";a:1:{s:4:"name";s:7:"recruit";}s:15:"weliam_shiftcar";a:1:{s:4:"name";s:15:"weliam_shiftcar";}s:19:"q_3354988381_rencai";a:1:{s:4:"name";s:19:"q_3354988381_rencai";}}'),
('we7:unimodules:1:1', 'a:15:{s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:5:"video";a:1:{s:4:"name";s:5:"video";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:7:"college";a:1:{s:4:"name";s:7:"college";}s:7:"recruit";a:1:{s:4:"name";s:7:"recruit";}s:15:"weliam_shiftcar";a:1:{s:4:"name";s:15:"weliam_shiftcar";}s:19:"q_3354988381_rencai";a:1:{s:4:"name";s:19:"q_3354988381_rencai";}}'),
('unicount:1', 's:1:"1";'),
('we7:lastaccount:eap78', 'a:1:{s:7:"account";i:1;}'),
('stat:todaylock:1', 'a:1:{s:6:"expire";i:1507885453;}'),
('uniaccount:', 'a:6:{s:3:"uid";N;s:9:"starttime";N;s:7:"endtime";N;s:6:"groups";a:0:{}s:10:"grouplevel";b:0;s:9:"isconnect";b:0;}'),
('unisetting:', 'b:0;'),
('unicount:', 's:1:"0";'),
('we7:module_info:q_3354988381_rencai', 'a:24:{s:3:"mid";s:2:"15";s:4:"name";s:19:"q_3354988381_rencai";s:4:"type";s:8:"business";s:5:"title";s:18:"微人才微招聘";s:7:"version";s:4:"7.57";s:7:"ability";s:120:"微人才，求职招聘，招人才，找企业，就来微人才。手机端也能发招聘，手机端也能找工作";s:11:"description";s:120:"微人才，求职招聘，招人才，找企业，就来微人才。手机端也能发招聘，手机端也能找工作";s:6:"author";s:18:"悟空源码论坛";s:3:"url";s:19:"http://www.5kym.com";s:8:"settings";s:1:"1";s:10:"subscribes";a:0:{}s:7:"handles";a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:9:"subscribe";i:3;s:2:"qr";i:4;s:5:"click";i:5;s:4:"text";}s:12:"isrulefields";s:1:"1";s:8:"issystem";s:1:"0";s:6:"target";s:1:"0";s:6:"iscard";s:1:"0";s:11:"permissions";s:6:"a:0:{}";s:13:"title_initial";s:0:"";s:13:"wxapp_support";s:1:"1";s:11:"app_support";s:1:"2";s:9:"isdisplay";i:1;s:4:"logo";s:65:"http://localhost/addons/q_3354988381_rencai/icon.jpg?v=1507536347";s:11:"main_module";b:0;s:11:"plugin_list";a:0:{}}'),
('we7:lastaccount:JZA4X', 'a:1:{s:7:"account";i:1;}'),
('we7:unimodules:1:', 'a:15:{s:5:"basic";a:1:{s:4:"name";s:5:"basic";}s:4:"news";a:1:{s:4:"name";s:4:"news";}s:5:"music";a:1:{s:4:"name";s:5:"music";}s:7:"userapi";a:1:{s:4:"name";s:7:"userapi";}s:8:"recharge";a:1:{s:4:"name";s:8:"recharge";}s:6:"custom";a:1:{s:4:"name";s:6:"custom";}s:6:"images";a:1:{s:4:"name";s:6:"images";}s:5:"video";a:1:{s:4:"name";s:5:"video";}s:5:"voice";a:1:{s:4:"name";s:5:"voice";}s:5:"chats";a:1:{s:4:"name";s:5:"chats";}s:6:"wxcard";a:1:{s:4:"name";s:6:"wxcard";}s:7:"college";a:1:{s:4:"name";s:7:"college";}s:7:"recruit";a:1:{s:4:"name";s:7:"recruit";}s:15:"weliam_shiftcar";a:1:{s:4:"name";s:15:"weliam_shiftcar";}s:19:"q_3354988381_rencai";a:1:{s:4:"name";s:19:"q_3354988381_rencai";}}'),
('we7:uni_group', 'a:1:{i:1;a:7:{s:2:"id";s:1:"1";s:9:"owner_uid";s:1:"0";s:4:"name";s:18:"体验套餐服务";s:7:"modules";s:2:"N;";s:9:"templates";s:2:"N;";s:7:"uniacid";s:1:"0";s:5:"wxapp";a:0:{}}}'),
('we7:lastaccount:DphGE', 'a:1:{s:7:"account";i:1;}'),
('we7:lastaccount:v2Swx', 'a:1:{s:7:"account";i:1;}');

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cron`
--

CREATE TABLE IF NOT EXISTS `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_cron_record`
--

CREATE TABLE IF NOT EXISTS `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_menu`
--

CREATE TABLE IF NOT EXISTS `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_paylog`
--

CREATE TABLE IF NOT EXISTS `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_performance`
--

CREATE TABLE IF NOT EXISTS `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_queue`
--

CREATE TABLE IF NOT EXISTS `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_refundlog`
--

CREATE TABLE IF NOT EXISTS `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_resource`
--

CREATE TABLE IF NOT EXISTS `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_sendsms_log`
--

CREATE TABLE IF NOT EXISTS `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_sessions`
--

CREATE TABLE IF NOT EXISTS `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_sessions`
--

INSERT INTO `ims_core_sessions` (`sid`, `uniacid`, `openid`, `data`, `expiretime`) VALUES
('fb9ae6eb8651480813af25e7db195b76', 1, '::1', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"A57k";i:1508202691;s:4:"nR4m";i:1508202691;s:4:"hybl";i:1508202694;s:4:"jU89";i:1508202704;s:4:"pmAN";i:1508202704;s:4:"xG8d";i:1508202705;}uid|s:3:"655";utype|s:1:"2";', 1508206305),
('d907b693f0c29088f9f71ab98739b380', 0, '::1', 'acid|N;uniacid|N;token|a:1:{s:4:"alS1";i:1508142677;}', 1508146277),
('3ff842d08bb7c047a4fef8a42c6bbc11', 0, '::1', 'acid|N;uniacid|N;token|a:1:{s:4:"vcz0";i:1508126402;}', 1508130002),
('f20fa0bb154a179cab9c605712e919d2', 0, '::1', 'acid|N;uniacid|N;token|a:1:{s:4:"asl7";i:1508116659;}', 1508120259),
('632dac0b1714410b777476fdaf07fc6d', 0, '::1', 'acid|N;uniacid|N;token|a:1:{s:4:"rV74";i:1508121722;}', 1508125322),
('24a03fddbcdb17366b33cdd6c94e3364', 0, '::1', 'acid|N;uniacid|N;token|a:1:{s:4:"e41z";i:1508116657;}', 1508120257),
('8e5df2e1469588041e0d194b068c674e', 0, '::1', 'acid|N;uniacid|N;token|a:1:{s:4:"xGST";i:1507878447;}', 1507882047),
('e60ca758dc28f266c1e805cacfacc89b', 0, '::1', 'acid|N;uniacid|N;token|a:4:{s:4:"e0Sr";i:1507874579;s:4:"Cl9M";i:1507874673;s:4:"x1kY";i:1507874801;s:4:"VXuE";i:1507874877;}uid|s:3:"663";utype|s:1:"2";', 1507878477),
('7f922d4502d30e964ca080a72dc7ce2a', 1, '::1', 'acid|s:1:"1";uniacid|i:1;token|a:2:{s:4:"DfvD";i:1507884577;s:4:"ID1A";i:1507884579;}uid|s:3:"662";utype|s:1:"1";', 1507888179),
('9952bc642742192972996ec3f2fe8999', 1, '::1', 'acid|s:1:"1";uniacid|i:1;token|a:6:{s:4:"h4PP";i:1508147021;s:4:"VVNC";i:1508147037;s:4:"t2F7";i:1508147038;s:4:"KGlq";i:1508147039;s:4:"WPVA";i:1508147063;s:4:"obA6";i:1508147073;}uid|s:3:"663";utype|s:1:"2";', 1508150673),
('e4c35b4242acd308be9614a4c97d3d66', 0, '::1', 'acid|N;uniacid|N;token|a:1:{s:4:"XKF9";i:1507859542;}', 1507863142);

-- --------------------------------------------------------

--
-- 表的结构 `ims_core_settings`
--

CREATE TABLE IF NOT EXISTS `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_core_settings`
--

INSERT INTO `ims_core_settings` (`key`, `value`) VALUES
('copyright', 'a:1:{s:6:"slides";a:3:{i:0;s:58:"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg";i:1;s:58:"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg";i:2;s:58:"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg";}}'),
('authmode', 'i:1;'),
('close', 'a:2:{s:6:"status";s:1:"0";s:6:"reason";s:0:"";}'),
('register', 'a:4:{s:4:"open";i:1;s:6:"verify";i:0;s:4:"code";i:1;s:7:"groupid";i:1;}'),
('module_ban', 'a:0:{}'),
('module_upgrade', 'a:0:{}'),
('cloudip', 'a:0:{}');

-- --------------------------------------------------------

--
-- 表的结构 `ims_coupon_location`
--

CREATE TABLE IF NOT EXISTS `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_cover_reply`
--

CREATE TABLE IF NOT EXISTS `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_cover_reply`
--

INSERT INTO `ims_cover_reply` (`id`, `uniacid`, `multiid`, `rid`, `module`, `do`, `title`, `description`, `thumb`, `url`) VALUES
(1, 1, 0, 7, 'mc', '', '进入个人中心', '', '', './index.php?c=mc&a=home&i=1'),
(2, 1, 1, 8, 'site', '', '进入首页', '', '', './index.php?c=home&i=1&t=1');

-- --------------------------------------------------------

--
-- 表的结构 `ims_custom_reply`
--

CREATE TABLE IF NOT EXISTS `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_images_reply`
--

CREATE TABLE IF NOT EXISTS `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_cash_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_chats_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_credits_recharge`
--

CREATE TABLE IF NOT EXISTS `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_credits_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_fans_groups`
--

CREATE TABLE IF NOT EXISTS `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_fans_tag_mapping`
--

CREATE TABLE IF NOT EXISTS `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_groups`
--

CREATE TABLE IF NOT EXISTS `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_mc_groups`
--

INSERT INTO `ims_mc_groups` (`groupid`, `uniacid`, `title`, `credit`, `isdefault`) VALUES
(1, 1, '默认会员组', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_handsel`
--

CREATE TABLE IF NOT EXISTS `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mapping_fans`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  UNIQUE KEY `openid_2` (`openid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mapping_ucenter`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_mass_record`
--

CREATE TABLE IF NOT EXISTS `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_members`
--

CREATE TABLE IF NOT EXISTS `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_address`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_fields`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_member_property`
--

CREATE TABLE IF NOT EXISTS `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mc_oauth_fans`
--

CREATE TABLE IF NOT EXISTS `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_menu_event`
--

CREATE TABLE IF NOT EXISTS `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_mobilenumber`
--

CREATE TABLE IF NOT EXISTS `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules`
--

CREATE TABLE IF NOT EXISTS `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `app_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `ims_modules`
--

INSERT INTO `ims_modules` (`mid`, `name`, `type`, `title`, `version`, `ability`, `description`, `author`, `url`, `settings`, `subscribes`, `handles`, `isrulefields`, `issystem`, `target`, `iscard`, `permissions`, `title_initial`, `wxapp_support`, `app_support`) VALUES
(1, 'basic', 'system', '基本文字回复', '1.0', '和您进行简单对话', '一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 2),
(2, 'news', 'system', '基本混合图文回复', '1.0', '为你提供生动的图文资讯', '一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 2),
(3, 'music', 'system', '基本音乐回复', '1.0', '提供语音、音乐等音频类回复', '在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 2),
(4, 'userapi', 'system', '自定义接口回复', '1.1', '更方便的第三方接口设置', '自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 2),
(5, 'recharge', 'system', '会员中心充值模块', '1.0', '提供会员充值功能', '', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 2),
(6, 'custom', 'system', '多客服转接', '1.0.0', '用来接入腾讯的多客服系统', '', 'WeEngine Team', 'http://bbs.we7.cc', 0, 'a:0:{}', 'a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:5:"video";i:3;s:8:"location";i:4;s:4:"link";i:5;s:4:"text";}', 1, 1, 0, 0, '', '', 1, 2),
(7, 'images', 'system', '基本图片回复', '1.0', '提供图片回复', '在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 2),
(8, 'video', 'system', '基本视频回复', '1.0', '提供图片回复', '在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 2),
(9, 'voice', 'system', '基本语音回复', '1.0', '提供语音回复', '在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 2),
(10, 'chats', 'system', '发送客服消息', '1.0', '公众号可以在粉丝最后发送消息的48小时内无限制发送消息', '', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 0, 1, 0, 0, '', '', 1, 2),
(11, 'wxcard', 'system', '微信卡券回复', '1.0', '微信卡券回复', '微信卡券回复', 'WeEngine Team', 'http://www.we7.cc/', 0, '', '', 1, 1, 0, 0, '', '', 1, 2),
(12, 'college', 'business', '大学生招聘', '9.1', 'college', 'version debug', 'baocl', '', 0, 'a:0:{}', 'a:1:{i:0;s:4:"text";}', 1, 0, 0, 0, 'a:0:{}', '', 1, 2),
(13, 'recruit', 'business', '招聘', '1.0.3', '招聘', '招聘', '折翼天使源码社区', 'http://www.zheyitianShi.Com', 0, 'a:0:{}', 'a:8:{i:0;s:4:"text";i:1;s:5:"image";i:2;s:5:"voice";i:3;s:8:"location";i:4;s:9:"subscribe";i:5;s:2:"qr";i:6;s:5:"trace";i:7;s:5:"click";}', 0, 0, 0, 0, 'a:0:{}', '', 1, 2),
(14, 'weliam_shiftcar', 'business', '微信挪车', '1.0.3', '微信挪车', '微信挪车', '折翼天使源码社区', 'http://www.zheyitianShi.Com', 0, 'a:0:{}', 'a:8:{i:0;s:4:"text";i:1;s:5:"image";i:2;s:5:"voice";i:3;s:8:"location";i:4;s:9:"subscribe";i:5;s:2:"qr";i:6;s:5:"trace";i:7;s:5:"click";}', 0, 0, 0, 0, 'a:0:{}', '', 1, 2),
(15, 'q_3354988381_rencai', 'business', '微人才微招聘', '7.57', '微人才，求职招聘，招人才，找企业，就来微人才。手机端也能发招聘，手机端也能找工作', '微人才，求职招聘，招人才，找企业，就来微人才。手机端也能发招聘，手机端也能找工作', '悟空源码论坛', 'http://www.5kym.com', 1, 'a:0:{}', 'a:6:{i:0;s:5:"image";i:1;s:5:"voice";i:2;s:9:"subscribe";i:3;s:2:"qr";i:4;s:5:"click";i:5;s:4:"text";}', 1, 0, 0, 0, 'a:0:{}', '', 1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_bindings`
--

CREATE TABLE IF NOT EXISTS `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(10) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(30) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- 转存表中的数据 `ims_modules_bindings`
--

INSERT INTO `ims_modules_bindings` (`eid`, `module`, `entry`, `call`, `title`, `do`, `state`, `direct`, `url`, `icon`, `displayorder`) VALUES
(45, 'college', 'menu', '', '提现管理6', 'withdraw', '', 0, '/web/index.php?c=site&a=entry&m=recruit&do=card&ac=qr&op=list', '', 0),
(44, 'college', 'menu', '', '平台设置5', 'setting', '', 0, '/web/index.php?c=site&a=entry&m=recruit&do=card&ac=qr&op=list', '', 0),
(43, 'college', 'menu', '', '网站项目设置4', 'project', '', 0, '', '', 0),
(42, 'college', 'menu', '', '筹款相关3', 'choukuan', '', 0, '', '', 0),
(41, 'college', 'menu', '', '系统消息2', 'sysmessage', '', 0, '', '', 0),
(40, 'college', 'menu', '', '用户管理1', 'member', '', 0, '/web/index.php?c=site&a=entry&m=recruit&do=card&ac=qr&op=list', '', 0),
(39, 'college', 'cover', '', '个人中心入口d', 'member', '', 0, '/web/index.php?c=site&a=entry&m=recruit&do=card&ac=qr&op=list', '', 0),
(38, 'college', 'cover', '', '发起入口s', 'project', '', 0, '/web/index.php?c=site&a=entry&m=recruit&do=card&ac=qr&op=list', '', 0),
(37, 'college', 'cover', '', '首页入口a', 'index', '', 0, '/web/index.php?c=site&a=entry&m=recruit&do=card&ac=qr&op=list', '', 0),
(49, 'weliam_shiftcar', 'menu', '', '后台管理', 'dashboard', '', 0, '/web/index.php?c=site&a=entry&m=recruit&do=card&ac=qr&op=list', '', 0),
(48, 'weliam_shiftcar', 'cover', '', '首页', 'index', '', 0, '/web/index.php?c=site&a=entry&m=recruit&do=card&ac=qr&op=list', '', 0),
(50, 'q_3354988381_rencai', 'menu', '', '使用说明必读', 'readme', '', 0, '', '', 0),
(51, 'q_3354988381_rencai', 'menu', '', '首页主题设置', 'index_theme', '', 0, '', '', 0),
(52, 'q_3354988381_rencai', 'menu', '', '行业分类管理', 'Industry', '', 0, '', '', 0),
(53, 'q_3354988381_rencai', 'menu', '', '职位分类管理', 'category', '', 0, '', '', 0),
(54, 'q_3354988381_rencai', 'menu', '', '分享设置管理', 'share', '', 0, '', '', 0),
(55, 'q_3354988381_rencai', 'menu', '', '招聘企业管理', 'zhaounit', '', 0, '', '', 0),
(56, 'q_3354988381_rencai', 'menu', '', '招聘信息管理', 'zhaoinfo', '', 0, '', '', 0),
(57, 'q_3354988381_rencai', 'menu', '', '求职简历管理', 'Resume', '', 0, '', '', 0),
(58, 'q_3354988381_rencai', 'menu', '', '幻灯图片广告', 'ADSlider', '', 0, '', '', 0),
(59, 'q_3354988381_rencai', 'menu', '', '广告浏览统计', 'adtj', '', 0, '', '', 0),
(60, 'q_3354988381_rencai', 'menu', '', '消息通知管理', 'notify', '', 0, '', '', 0),
(61, 'q_3354988381_rencai', 'menu', '', '表单管理', 'form', '', 0, '', '', 0),
(62, 'q_3354988381_rencai', 'menu', '', '评论管理', 'comments', '', 0, '', '', 0),
(63, 'q_3354988381_rencai', 'menu', '', '充值套餐', 'youhui_set', '', 0, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_plugin`
--

CREATE TABLE IF NOT EXISTS `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_modules_recycle`
--

CREATE TABLE IF NOT EXISTS `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modulename` (`modulename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_music_reply`
--

CREATE TABLE IF NOT EXISTS `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_news_reply`
--

CREATE TABLE IF NOT EXISTS `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_profile_fields`
--

CREATE TABLE IF NOT EXISTS `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `ims_profile_fields`
--

INSERT INTO `ims_profile_fields` (`id`, `field`, `available`, `title`, `description`, `displayorder`, `required`, `unchangeable`, `showinregister`, `field_length`) VALUES
(1, 'realname', 1, '真实姓名', '', 0, 1, 1, 1, 0),
(2, 'nickname', 1, '昵称', '', 1, 1, 0, 1, 0),
(3, 'avatar', 1, '头像', '', 1, 0, 0, 0, 0),
(4, 'qq', 1, 'QQ号', '', 0, 0, 0, 1, 0),
(5, 'mobile', 1, '手机号码', '', 0, 0, 0, 0, 0),
(6, 'vip', 1, 'VIP级别', '', 0, 0, 0, 0, 0),
(7, 'gender', 1, '性别', '', 0, 0, 0, 0, 0),
(8, 'birthyear', 1, '出生生日', '', 0, 0, 0, 0, 0),
(9, 'constellation', 1, '星座', '', 0, 0, 0, 0, 0),
(10, 'zodiac', 1, '生肖', '', 0, 0, 0, 0, 0),
(11, 'telephone', 1, '固定电话', '', 0, 0, 0, 0, 0),
(12, 'idcard', 1, '证件号码', '', 0, 0, 0, 0, 0),
(13, 'studentid', 1, '学号', '', 0, 0, 0, 0, 0),
(14, 'grade', 1, '班级', '', 0, 0, 0, 0, 0),
(15, 'address', 1, '邮寄地址', '', 0, 0, 0, 0, 0),
(16, 'zipcode', 1, '邮编', '', 0, 0, 0, 0, 0),
(17, 'nationality', 1, '国籍', '', 0, 0, 0, 0, 0),
(18, 'resideprovince', 1, '居住地址', '', 0, 0, 0, 0, 0),
(19, 'graduateschool', 1, '毕业学校', '', 0, 0, 0, 0, 0),
(20, 'company', 1, '公司', '', 0, 0, 0, 0, 0),
(21, 'education', 1, '学历', '', 0, 0, 0, 0, 0),
(22, 'occupation', 1, '职业', '', 0, 0, 0, 0, 0),
(23, 'position', 1, '职位', '', 0, 0, 0, 0, 0),
(24, 'revenue', 1, '年收入', '', 0, 0, 0, 0, 0),
(25, 'affectivestatus', 1, '情感状态', '', 0, 0, 0, 0, 0),
(26, 'lookingfor', 1, ' 交友目的', '', 0, 0, 0, 0, 0),
(27, 'bloodtype', 1, '血型', '', 0, 0, 0, 0, 0),
(28, 'height', 1, '身高', '', 0, 0, 0, 0, 0),
(29, 'weight', 1, '体重', '', 0, 0, 0, 0, 0),
(30, 'alipay', 1, '支付宝帐号', '', 0, 0, 0, 0, 0),
(31, 'msn', 1, 'MSN', '', 0, 0, 0, 0, 0),
(32, 'email', 1, '电子邮箱', '', 0, 0, 0, 0, 0),
(33, 'taobao', 1, '阿里旺旺', '', 0, 0, 0, 0, 0),
(34, 'site', 1, '主页', '', 0, 0, 0, 0, 0),
(35, 'bio', 1, '自我介绍', '', 0, 0, 0, 0, 0),
(36, 'interest', 1, '兴趣爱好', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_qrcode`
--

CREATE TABLE IF NOT EXISTS `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_qrcode_stat`
--

CREATE TABLE IF NOT EXISTS `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_answer`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `answer_uid` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `recommend` int(11) NOT NULL,
  `comment_num` int(11) NOT NULL,
  `zan` int(11) NOT NULL,
  `answer` text NOT NULL,
  `money` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_collect_jobs`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_collect_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '求职者id',
  `jobs_id` int(11) NOT NULL COMMENT '职位id',
  `company_id` int(11) NOT NULL COMMENT '公司id',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ims_recruit_collect_jobs`
--

INSERT INTO `ims_recruit_collect_jobs` (`id`, `uid`, `jobs_id`, `company_id`, `createtime`) VALUES
(4, 661, 2, 0, 1507520502),
(3, 661, 1, 0, 1507520378),
(5, 661, 3, 0, 1507520505),
(6, 663, 6, 0, 1508147063);

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_collect_resume`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_collect_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '公司id',
  `resume_id` int(11) NOT NULL COMMENT '简历id',
  `puid` int(11) NOT NULL COMMENT '求职者id',
  `jobs_id` int(11) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ims_recruit_collect_resume`
--

INSERT INTO `ims_recruit_collect_resume` (`id`, `uid`, `resume_id`, `puid`, `jobs_id`, `remark`, `createtime`) VALUES
(6, 655, 18, 661, 34, '1111', 1507712409);

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_comment`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '公司id',
  `puid` int(11) NOT NULL COMMENT '求职者id',
  `resume_id` int(11) NOT NULL COMMENT '简历id',
  `jobs_id` int(11) NOT NULL COMMENT '职位id',
  `content` text NOT NULL COMMENT '内容',
  `evaluate_information` int(11) NOT NULL COMMENT '评价信息真实',
  `evaluate_environment` int(11) NOT NULL COMMENT '评价公司环境',
  `evaluate_interviewer` int(11) NOT NULL COMMENT '评价面试官',
  `tag` varchar(255) NOT NULL COMMENT '标签',
  `zan` int(11) NOT NULL COMMENT '赞',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='面试评价表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_company_profile`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_company_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(1) unsigned NOT NULL,
  `nature` varchar(80) NOT NULL COMMENT '企业性质',
  `number` varchar(11) NOT NULL COMMENT '人数',
  `headimgurl` varchar(200) NOT NULL,
  `industry` varchar(100) NOT NULL DEFAULT '' COMMENT '行业',
  `city` varchar(200) NOT NULL,
  `city_area` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL COMMENT '地区',
  `slogan` varchar(200) NOT NULL COMMENT '公司口号',
  `tag` varchar(255) NOT NULL COMMENT '标签',
  `license` varchar(200) NOT NULL COMMENT '营业执照',
  `identity_aduit` int(11) NOT NULL COMMENT '身份认证|1通过|2未通过',
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `idcard1` varchar(200) NOT NULL,
  `idcard2` varchar(200) NOT NULL,
  `companyname` varchar(200) NOT NULL,
  `atlas` text NOT NULL COMMENT '公司图集',
  `introduce` varchar(255) NOT NULL COMMENT '公司介绍',
  `retoate_x` varchar(100) NOT NULL COMMENT '经度',
  `retoate_y` varchar(100) NOT NULL COMMENT '纬度',
  `website` varchar(200) NOT NULL COMMENT '公司网站',
  PRIMARY KEY (`id`),
  KEY `email` (`nature`),
  KEY `mobile` (`number`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `ims_recruit_company_profile`
--

INSERT INTO `ims_recruit_company_profile` (`id`, `uid`, `nature`, `number`, `headimgurl`, `industry`, `city`, `city_area`, `address`, `district`, `slogan`, `tag`, `license`, `identity_aduit`, `createtime`, `updatetime`, `idcard1`, `idcard2`, `companyname`, `atlas`, `introduce`, `retoate_x`, `retoate_y`, `website`) VALUES
(20, 658, '', '', '', '', '', '', '', '', '', '', 'http://localhost/addons/recruit/app/resource/file/2017-09-29/1506669300658.jpg', 0, 1506669311, 0, 'http://localhost/addons/recruit/app/resource/file/2017-09-29/1506669304658.jpg', 'http://localhost/addons/recruit/app/resource/file/2017-09-29/1506669308658.jpg', '小小', '', '', '', '', ''),
(21, 655, '国营企业', '20-50人', '', '教育培训', '', '', '', '三线城市', '举头望明月', '五险,住房公积金,', 'http://localhost/addons/recruit/app/resource/file/2017-10-09/1507538987655.png', 0, 1507539008, 0, 'http://localhost/addons/recruit/app/resource/file/2017-10-09/1507538992655.jpg', 'http://localhost/addons/recruit/app/resource/file/2017-10-09/1507538996655.jpg', '羽', '', '', '', '', ''),
(19, 653, '国营企业', '20-50人', '', 'IT互联网', '', '', '', '二线城市', 'asqwd', '五险,住房公积金,带薪年假,', 'http://localhost/addons/recruit/app/resource/file/2017-09-25/1506301255653.jpg', 0, 1506301266, 0, 'http://localhost/addons/recruit/app/resource/file/2017-09-25/1506301260653.jpg', 'http://localhost/addons/recruit/app/resource/file/2017-09-25/1506301264653.jpg', '大学生招聘', '', '', '', '', ''),
(22, 663, '国营企业', '200-500人', '', 'IT互联网', '重庆市', '渝中区', '东水门小学', '二线城市', 'hello world', '五险,晋升平台,有偿加班,美女多', 'http://localhost/addons/recruit/app/resource/file/2017-10-13/1507866735663.png', 0, 1507866759, 1508118942, 'http://localhost/addons/recruit/app/resource/file/2017-10-13/1507866740663.jpg', 'http://localhost/addons/recruit/app/resource/file/2017-10-13/1507866745663.jpg', '秒猎', '', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '106.594055', '29.565776', 'www.baidu.com');

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_interview`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_interview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apply_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `jobs_id` int(11) NOT NULL,
  `puid` int(11) NOT NULL,
  `city` varchar(200) NOT NULL,
  `city_area` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `interview_time` varchar(200) NOT NULL,
  `linker` varchar(200) NOT NULL,
  `link_phone` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `ims_recruit_interview`
--

INSERT INTO `ims_recruit_interview` (`id`, `apply_id`, `uid`, `resume_id`, `jobs_id`, `puid`, `city`, `city_area`, `address`, `interview_time`, `linker`, `link_phone`, `createtime`) VALUES
(1, 0, 653, 9, 2, 655, '', '', '北京朝阳市', '2017年9月25 上午9:50', '包崇林', 0, 1506330471),
(5, 8, 655, 18, 32, 661, '天津市', '和平区', '1111', '10月12日 星期四 14:00', '123', 2147483647, 1507690974),
(6, 7, 655, 18, 31, 661, '天津市', '和平区', '11', '10月12日 星期四 10:00', '张先生', 2147483647, 1507703783),
(9, 10, 655, 18, 35, 661, '天津市', '和平区', '小小小', '10月13日 星期五 10:00', '张先生', 2147483647, 1507778839);

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_jobs`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `jobs_name` varchar(30) NOT NULL,
  `companyname` varchar(50) NOT NULL DEFAULT '',
  `trade` varchar(30) NOT NULL,
  `city` varchar(200) NOT NULL,
  `city_area` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `department` varchar(15) NOT NULL DEFAULT '',
  `tag` varchar(160) NOT NULL,
  `education` varchar(200) NOT NULL,
  `language` varchar(100) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `wage_min` int(5) unsigned NOT NULL,
  `wage_max` int(5) unsigned NOT NULL,
  `duty` varchar(255) NOT NULL COMMENT '岗位职责',
  `require` varchar(255) NOT NULL COMMENT '任职要求',
  `number_range` varchar(100) NOT NULL COMMENT '招聘人数',
  `work_nature` varchar(20) NOT NULL COMMENT '工作性质',
  `addtime` int(10) unsigned NOT NULL,
  `updatetime` int(10) unsigned NOT NULL,
  `email` varchar(50) NOT NULL,
  `open` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '招聘开发1|结束0',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `click` int(10) unsigned NOT NULL DEFAULT '1',
  `tpl` varchar(60) NOT NULL,
  `begin_time` varchar(20) NOT NULL COMMENT '招聘时长',
  `close_time` int(11) NOT NULL COMMENT '招聘结束时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`updatetime`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `ims_recruit_jobs`
--

INSERT INTO `ims_recruit_jobs` (`id`, `uid`, `jobs_name`, `companyname`, `trade`, `city`, `city_area`, `address`, `department`, `tag`, `education`, `language`, `experience`, `wage_min`, `wage_max`, `duty`, `require`, `number_range`, `work_nature`, `addtime`, `updatetime`, `email`, `open`, `display`, `click`, `tpl`, `begin_time`, `close_time`) VALUES
(1, 653, '研发测试', '大学生招聘', '', '重庆', '渝中区', '', '', '五险一金,美女多,双休', '', '', '', 5000, 10000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(2, 653, 'php工程师', '大学生招聘', '', '重庆', '大渡口', '', '', '五险一金,美女多,双休', '', '', '', 4000, 60000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(3, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(4, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(5, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(6, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(7, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(8, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(9, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(10, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(11, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(12, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(13, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(14, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(15, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(16, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(17, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(18, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(19, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(20, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(21, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(22, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(23, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(24, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(25, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(26, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(27, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(28, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(29, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(30, 653, 'web前端', '大学生招聘', '', '北京', '朝阳区', '', '', '五险一金,美女多,双休', '', '', '', 4000, 6000, '', '', '', '', 0, 0, '', 1, 1, 1, '', '', 0),
(31, 655, '煎饼', '羽', '', '北京市', '东城区', '解放西路', '', '', '本科', '', '1到3年', 0, 0, '买煎饼', '卖小煎饼', '22', '全职', 1507541564, 1507711990, '', 1, 1, 1, '', '', 0),
(32, 655, '护士', '羽', '', '北京市', '东城区', '权威', '', '', '本科', '', '无', 0, 0, '照顾病人', '本科毕业\n1.护理相关专业', '2', '全职', 1507542374, 1507711979, '', 1, 1, 1, '', '', 0),
(35, 655, '中医大夫', '羽', '', '天津市', '和平区', '三峡广场', '', '', '硕士', '', '3到5年', 2, 4, '1.负责网站各文章编辑、网站日常文章添加\n2.负责网站各文章编辑、网站日常文章添加、内容更新、网站专题建设。', '1.负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加\n2.负责网站各文章编辑、网站日常文章添加、内容更新、网站专题建设。', '2', '全职', 1507777379, 0, '', 1, 1, 1, '', '', 0),
(34, 655, '大夫', '羽', '', '天津市', '和平区', '小小小', '', '', '本科', '', '1到3年', 3, 6, '1.负责网站各文章编辑、网站日常文章添加\n2.负责网站各文章编辑、网站日常文章添加、内容更新、网站专题建设。', '1.负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加\n2.负责网站各文章编辑、网站日常文章添加、内容更新、网站专题建设。', '2', '全职', 1507705132, 1507705152, '', 1, 1, 1, '', '', 0),
(36, 663, '研发测试', '秒猎', '', '天津市', '和平区', '阿萨德', '', '', '本科', '', '1到3年', 3, 6, '1.负责网站各文章编辑、网站日常文章添加\n2.负责网站各文章编辑、网站日常文章添加、内容更新、网站专题建设。', '1.负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加负责网站各文章编辑、网站日常文章添加\n2.负责网站各文章编辑、网站日常文章添加、内容更新、网站专题建设。', '20', '全职', 1508125566, 1508125579, '', 1, 1, 1, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_jobs_apply`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_jobs_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '企业id',
  `jobs_id` int(11) NOT NULL COMMENT '职位id',
  `resume_id` int(11) NOT NULL COMMENT '简历id',
  `puid` int(11) NOT NULL COMMENT '求职者id',
  `direction` int(11) NOT NULL DEFAULT '1' COMMENT '1表示企业主动找人才|2表示人才主动找企业',
  `createtime` int(11) NOT NULL,
  `offer` int(11) NOT NULL COMMENT '求职者操作面试邀请',
  `status` int(11) NOT NULL COMMENT '企业操作状态-1拒绝面试0没查看1已查看3面试邀请',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `ims_recruit_jobs_apply`
--

INSERT INTO `ims_recruit_jobs_apply` (`id`, `uid`, `jobs_id`, `resume_id`, `puid`, `direction`, `createtime`, `offer`, `status`) VALUES
(1, 653, 1, 9, 655, 2, 1506320111, 0, 0),
(2, 653, 2, 9, 655, 2, 1506320429, 0, 0),
(3, 653, 4, 9, 655, 2, 1506320434, 0, 0),
(4, 653, 1, 18, 661, 2, 1507520296, 0, 0),
(5, 653, 2, 18, 661, 2, 1507520336, 0, 0),
(6, 653, 3, 18, 661, 2, 1507520340, 0, 0),
(7, 655, 31, 18, 661, 1, 1507684162, 0, -1),
(8, 655, 32, 18, 661, 1, 1507684822, 0, 3),
(9, 655, 34, 18, 661, 1, 1507705336, 0, -1),
(10, 655, 35, 18, 661, 2, 1507778607, 0, 3),
(11, 655, 34, 9, 658, 2, 1507786436, 0, 0),
(12, 655, 35, 9, 658, 2, 1507786437, 0, 0),
(13, 655, 31, 9, 658, 2, 1507786439, 0, 0),
(14, 655, 32, 9, 658, 2, 1507786439, 0, 0),
(15, 655, 34, 18, 661, 2, 1507797398, 0, 0),
(16, 653, 1, 19, 662, 2, 1507864360, 0, 0),
(17, 655, 31, 19, 662, 2, 1507864367, 0, 0),
(18, 655, 35, 19, 662, 2, 1507864368, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_members`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `utype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '个人1|企业2|猎头3',
  `username` varchar(200) NOT NULL,
  `email` varchar(80) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL,
  `fullname` varchar(10) NOT NULL,
  `last_login_time` int(10) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `createtime` int(11) NOT NULL,
  `salt` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile_2` (`mobile`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=664 ;

--
-- 转存表中的数据 `ims_recruit_members`
--

INSERT INTO `ims_recruit_members` (`id`, `utype`, `username`, `email`, `mobile`, `password`, `sex`, `fullname`, `last_login_time`, `status`, `createtime`, `salt`) VALUES
(655, 2, '', '', '13271882226', '6c9e3d5f3350c7a2ee0a27b93d42ca63', 0, '', 0, 1, 0, '484'),
(661, 1, '', '', '15023726868', '4eb2fbbf33c2ec2cd225fd88c42e6099', 0, '', 0, 1, 1506737337, '183'),
(658, 1, '', '', '15823397423', 'd8b40dc22b6851147fe2d5ebbb478455', 0, '', 0, 1, 1506395886, '793'),
(659, 1, '晓晓', '1421514791@qq.com', '1', 'ee8133051cee074580c56e259deb1acd', 0, '', 0, 1, 0, '120'),
(662, 1, '', '1421514791@qq.com', '15023726666', '0b85b58a51b735e4b7b91b23d8742e3e', 0, '', 0, 1, 1507861935, '918'),
(663, 2, '', '1421514791@qq.com', '15023728888', '6869155f273f24ba6d5c920ce60af54f', 0, '', 0, 1, 1507866704, '583');

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_members_temp`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_members_temp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '个人1|企业2|猎头3',
  `password` varchar(32) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `license` varchar(200) NOT NULL COMMENT '营业执照',
  `headimgurl` varchar(200) NOT NULL,
  `works` varchar(200) NOT NULL,
  `createtime` int(11) NOT NULL,
  `idcard1` varchar(200) NOT NULL,
  `idcard2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `ims_recruit_members_temp`
--

INSERT INTO `ims_recruit_members_temp` (`id`, `uid`, `password`, `status`, `license`, `headimgurl`, `works`, `createtime`, `idcard1`, `idcard2`) VALUES
(31, 658, '', 0, '', '', '/addons/recruit/app/resource/file/2017-09-29/1506670539658.jpg', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_order_jobs`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_order_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `puid` int(11) NOT NULL COMMENT '求职者uid',
  `jobs_name` varchar(200) NOT NULL COMMENT '职位名称',
  `work_place` varchar(200) NOT NULL COMMENT '工作地点',
  `wage_range` varchar(200) NOT NULL COMMENT '月薪范围',
  `trade` varchar(255) NOT NULL COMMENT '所选行业',
  `order_time` varchar(200) NOT NULL COMMENT '订阅频率',
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_recruit_order_jobs`
--

INSERT INTO `ims_recruit_order_jobs` (`id`, `puid`, `jobs_name`, `work_place`, `wage_range`, `trade`, `order_time`, `createtime`, `updatetime`) VALUES
(1, 661, '大夫', '崇文区', '4k-6k', 'IT互联网,教育培训,人力资源', '一周一次', 1507773713, 1507777395);

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_position`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) NOT NULL,
  `duty` text NOT NULL COMMENT '岗位职责',
  `require` text NOT NULL COMMENT '任职要求',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='职位分类表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_recruit_position`
--

INSERT INTO `ims_recruit_position` (`id`, `position`, `duty`, `require`, `addtime`) VALUES
(1, '文编', 'a:2:{i:0;s:13:"网站编辑\r";i:1;s:12:"网站测试";}', 'a:3:{i:0;s:13:"大学本科\n";i:1;s:28:"具有一定的文学基础\n";i:2;s:24:"有1-3年的工作经验";}', 1507604423),
(2, '网络编辑', 'a:3:{i:0;s:19:"公司信息采集\r";i:1;s:19:"网站编辑维护\r";i:2;s:24:"公司形象包装美化";}', 'a:3:{i:0;s:13:"仅限女性\r";i:1;s:25:"有一定的网络基础\r";i:2;s:15:"形象气质佳";}', 1507605548);

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_problem`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '提问uid',
  `problem` varchar(255) NOT NULL,
  `money` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `comment_num` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='导师系统问题表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_resume`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_resume` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `title` varchar(80) NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `trade` varchar(60) NOT NULL,
  `hope_job` varchar(200) NOT NULL COMMENT '期望职位',
  `birthday` varchar(100) NOT NULL,
  `tag` varchar(160) NOT NULL,
  `telphone` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT '',
  `evaluation` text NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  `work_experience` text NOT NULL,
  `edu_experience` text NOT NULL,
  `personal_works` text NOT NULL,
  `city` varchar(200) NOT NULL,
  `city_area` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `nation` varchar(200) NOT NULL COMMENT '民族',
  `political_status` varchar(200) NOT NULL COMMENT '政治面貌',
  `origin_place` varchar(200) NOT NULL COMMENT '籍贯',
  `introduce` varchar(255) NOT NULL COMMENT '介绍',
  `work_status` varchar(200) NOT NULL COMMENT '状态',
  `person_video` text NOT NULL,
  `honor` text NOT NULL,
  `template_id` int(11) NOT NULL DEFAULT '1' COMMENT '模板id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `refreshtime` (`updatetime`),
  KEY `addtime` (`addtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `ims_recruit_resume`
--

INSERT INTO `ims_recruit_resume` (`id`, `uid`, `display`, `title`, `fullname`, `sex`, `trade`, `hope_job`, `birthday`, `tag`, `telphone`, `email`, `evaluation`, `headimgurl`, `addtime`, `updatetime`, `work_experience`, `edu_experience`, `personal_works`, `city`, `city_area`, `address`, `nation`, `political_status`, `origin_place`, `introduce`, `work_status`, `person_video`, `honor`, `template_id`) VALUES
(9, 658, 1, '', '包崇林', 1, '', '', '2016', '', '15023726868', '1421514791@qq.com', '', '/addons/recruit/app/resource/file/2017-09-29/1506679328658.jpg', 1506308432, 1506734583, 'a:1:{i:0;a:5:{s:12:"company_name";s:6:"最强";s:8:"job_name";s:6:"沉思";s:12:"leave_reason";s:3:"想";s:13:"job_starttime";s:11:"2015年5月";s:11:"job_endtime";s:11:"2015年6月";}}', 'a:1:{i:0;a:4:{s:11:"school_name";s:6:"天道";s:12:"edu_district";s:6:"博士";s:9:"edu_major";s:9:"图书馆";s:15:"edu_finish_time";s:4:"2016";}}', 'a:1:{i:1;a:3:{s:12:"person_works";s:125:"/addons/recruit/app/resource/file/2017-09-30/1506732076658.jpg,/addons/recruit/app/resource/file/2017-09-30/1506732081658.jpg";s:14:"person_workmsg";s:6:"大大";s:5:"thumb";s:62:"/addons/recruit/app/resource/file/2017-09-30/1506732076658.jpg";}}', '重庆市', '渝中区', '解放碑', '汉族', '团员', '西城区', '12333333333333', '', '', '', 1),
(18, 661, 1, '', '小明', 1, '', '', '1994.5', '', '15023726868', '1421514791@qq.com', '', '/addons/recruit/app/resource/file/2017-10-10/1507622457661.png', 1506741239, 1507622457, 'a:1:{i:0;a:6:{s:12:"company_name";s:12:"小小小小";s:8:"job_name";s:3:"小";s:13:"job_starttime";s:11:"2015年4月";s:11:"job_endtime";s:11:"2016年5月";s:12:"leave_reason";s:6:"太小";s:11:"job_content";s:6:"222555";}}', 'a:3:{i:1;a:4:{s:11:"school_name";s:12:"复旦中学";s:12:"edu_district";s:12:"专科以下";s:9:"edu_major";s:9:"语数外";s:15:"edu_finish_time";s:4:"2013";}i:2;a:4:{s:11:"school_name";s:12:"复旦大学";s:12:"edu_district";s:6:"本科";s:9:"edu_major";s:6:"金融";s:15:"edu_finish_time";s:4:"2015";}i:4;a:4:{s:11:"school_name";s:12:"复旦中学";s:12:"edu_district";s:12:"专科以下";s:9:"edu_major";s:12:"语数外111";s:15:"edu_finish_time";s:4:"2013";}}', 'a:2:{i:0;a:3:{s:12:"person_works";s:125:"/addons/recruit/app/resource/file/2017-09-30/1506741865661.jpg,/addons/recruit/app/resource/file/2017-09-30/1506741869661.jpg";s:14:"person_workmsg";s:9:"小小小";s:5:"thumb";s:62:"/addons/recruit/app/resource/file/2017-09-30/1506741865661.jpg";}i:1;a:2:{s:12:"person_works";s:62:"/addons/recruit/app/resource/file/2017-09-30/1506741889661.jpg";s:14:"person_workmsg";s:6:"夏夏";}}', '北京市', '东城区', '1区', '汉族', '团员', '渝中区', '喜洋洋，与灰太狼', '', '', '', 2),
(19, 662, 1, '', '灰太狼', 1, '', '', '1994.4', '', '15023726666', '1421514791@qq.com', '', '/addons/recruit/app/resource/file/2017-10-13/1507864867662.jpg', 1507862720, 1508124334, 'a:2:{i:0;a:5:{s:12:"company_name";s:6:"狼堡";s:8:"job_name";s:3:"ceo";s:12:"leave_reason";s:6:"暂无";s:13:"job_starttime";s:11:"2016年5月";s:11:"job_endtime";s:11:"2017年2月";}i:1;a:5:{s:12:"company_name";s:12:"小小狼村";s:8:"job_name";s:6:"保安";s:12:"leave_reason";s:30:"世界太大，我想去看看";s:13:"job_starttime";s:11:"2014年4月";s:11:"job_endtime";s:11:"2015年9月";}}', 'a:2:{i:0;a:4:{s:11:"school_name";s:12:"狼堡大学";s:12:"edu_district";s:12:"博士以上";s:9:"edu_major";s:12:"机械执照";s:15:"edu_finish_time";s:4:"2016";}i:1;a:4:{s:11:"school_name";s:12:"北京大学";s:12:"edu_district";s:6:"硕士";s:9:"edu_major";s:6:"会计";s:15:"edu_finish_time";s:4:"2013";}}', 'a:1:{i:0;a:2:{s:12:"person_works";s:62:"/addons/recruit/app/resource/file/2017-10-16/1508121803662.png";s:14:"person_workmsg";s:6:"还白";}}', '天津市', '和平区', '下上千万', '汉族', '团员', '河东区', '道可道，非常道', '', '/addons/recruit/app/resource/file/2017-10-16/1508124334662.mp4', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_resume_template`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_resume_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(200) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='简历模板' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ims_recruit_resume_template`
--

INSERT INTO `ims_recruit_resume_template` (`id`, `template`, `createtime`) VALUES
(1, '扁平化风格', 1507770198),
(2, '简约风格', 1507770209),
(3, '游戏风格', 1507770233),
(4, '水墨风格', 1507770240);

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_trade`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_trade` (
  `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_parentid` int(10) unsigned NOT NULL,
  `c_name` char(30) NOT NULL,
  `c_order` int(10) NOT NULL,
  `c_index` char(1) NOT NULL,
  `c_note` char(60) NOT NULL,
  `stat_jobs` char(15) NOT NULL,
  `stat_resume` char(15) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=217 ;

--
-- 转存表中的数据 `ims_recruit_trade`
--

INSERT INTO `ims_recruit_trade` (`c_id`, `c_parentid`, `c_name`, `c_order`, `c_index`, `c_note`, `stat_jobs`, `stat_resume`) VALUES
(1, 0, '互联网/移动互联网/电子商务', 0, '', '', '', ''),
(2, 0, '网络游戏', 0, '', '', '', ''),
(3, 0, '计算机软件', 0, '', '', '', ''),
(4, 0, 'IT服务/系统集成', 0, '', '', '', ''),
(5, 0, '电子技术/半导体/集成电路', 0, '', '', '', ''),
(6, 0, '通信(设备/运营/增值)', 0, '', '', '', ''),
(7, 0, '计算机硬件/网络设备', 0, '', '', '', ''),
(8, 0, '房地产开发/建筑/建材/工程', 0, '', '', '', ''),
(9, 0, '规划/设计/装潢', 0, '', '', '', ''),
(10, 0, '房地产服务(物业管理/地产经纪)', 0, '', '', '', ''),
(11, 0, '银行', 0, '', '', '', ''),
(12, 0, '保险', 0, '', '', '', ''),
(13, 0, '基金/证券/期货/投资', 0, '', '', '', ''),
(14, 0, '会计/审计', 0, '', '', '', ''),
(15, 0, '信托/担保/拍卖/典当', 0, '', '', '', ''),
(16, 0, '食品/饮料/烟酒/日化', 0, '', '', '', ''),
(17, 0, '百货/批发/零售', 0, '', '', '', ''),
(18, 0, '服装服饰/纺织/皮革', 0, '', '', '', ''),
(19, 0, '家具/家电', 0, '', '', '', ''),
(20, 0, '办公用品及设备', 0, '', '', '', ''),
(21, 0, '奢侈品/收藏品', 0, '', '', '', ''),
(22, 0, '工艺品/珠宝/玩具', 0, '', '', '', ''),
(23, 0, '汽车/摩托车', 0, '', '', '', ''),
(24, 0, '机械制造/机电/重工', 0, '', '', '', ''),
(25, 0, '印刷/包装/造纸', 0, '', '', '', ''),
(26, 0, '原材料及加工', 0, '', '', '', ''),
(27, 0, '仪器/仪表/工业自动化/电气', 0, '', '', '', ''),
(28, 0, '专业服务(咨询/财会/法律/翻译等)', 0, '', '', '', ''),
(29, 0, '中介服务', 0, '', '', '', ''),
(30, 0, '外包服务', 0, '', '', '', ''),
(31, 0, '检测/认证', 0, '', '', '', ''),
(32, 0, '旅游/酒店/餐饮服务/生活服务', 0, '', '', '', ''),
(33, 0, '娱乐/休闲/体育', 0, '', '', '', ''),
(34, 0, '租赁服务', 0, '', '', '', ''),
(35, 0, '广告/公关/市场推广/会展', 0, '', '', '', ''),
(36, 0, '影视/媒体/艺术/文化/出版', 0, '', '', '', ''),
(37, 0, '教育/培训/学术/科研/院校', 0, '', '', '', ''),
(38, 0, '交通/物流/运输', 0, '', '', '', ''),
(39, 0, '贸易/进出口', 0, '', '', '', ''),
(40, 0, '航空/航天', 0, '', '', '', ''),
(41, 0, '制药/生物工程', 0, '', '', '', ''),
(42, 0, '医疗/保健/美容/卫生服务', 0, '', '', '', ''),
(43, 0, '医疗设备/器械', 0, '', '', '', ''),
(44, 0, '能源(电力/水利)', 0, '', '', '', ''),
(45, 0, '石油/石化/化工', 0, '', '', '', ''),
(205, 0, '采掘/冶炼/矿产', 0, '', '', '', ''),
(206, 0, '环保', 0, '', '', '', ''),
(207, 0, '新能源', 0, '', '', '', ''),
(208, 0, '政府/公共事业/非营利机构', 0, '', '', '', ''),
(209, 0, '农/林/牧/渔', 0, '', '', '', ''),
(210, 0, '其他', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_recruit_tutor_profile`
--

CREATE TABLE IF NOT EXISTS `ims_recruit_tutor_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `experience` text NOT NULL,
  `read_num` int(11) NOT NULL,
  `comment_num` int(11) NOT NULL,
  `zan` int(11) NOT NULL,
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_rule`
--

CREATE TABLE IF NOT EXISTS `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `ims_rule`
--

INSERT INTO `ims_rule` (`id`, `uniacid`, `name`, `module`, `displayorder`, `status`, `containtype`) VALUES
(1, 0, '城市天气', 'userapi', 255, 1, ''),
(2, 0, '百度百科', 'userapi', 255, 1, ''),
(3, 0, '即时翻译', 'userapi', 255, 1, ''),
(4, 0, '今日老黄历', 'userapi', 255, 1, ''),
(5, 0, '看新闻', 'userapi', 255, 1, ''),
(6, 0, '快递查询', 'userapi', 255, 1, ''),
(7, 1, '个人中心入口设置', 'cover', 0, 1, ''),
(8, 1, '微擎团队入口设置', 'cover', 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_rule_keyword`
--

CREATE TABLE IF NOT EXISTS `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `ims_rule_keyword`
--

INSERT INTO `ims_rule_keyword` (`id`, `rid`, `uniacid`, `module`, `content`, `type`, `displayorder`, `status`) VALUES
(1, 1, 0, 'userapi', '^.+天气$', 3, 255, 1),
(2, 2, 0, 'userapi', '^百科.+$', 3, 255, 1),
(3, 2, 0, 'userapi', '^定义.+$', 3, 255, 1),
(4, 3, 0, 'userapi', '^@.+$', 3, 255, 1),
(5, 4, 0, 'userapi', '日历', 1, 255, 1),
(6, 4, 0, 'userapi', '万年历', 1, 255, 1),
(7, 4, 0, 'userapi', '黄历', 1, 255, 1),
(8, 4, 0, 'userapi', '几号', 1, 255, 1),
(9, 5, 0, 'userapi', '新闻', 1, 255, 1),
(10, 6, 0, 'userapi', '^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$', 3, 255, 1),
(11, 7, 1, 'cover', '个人中心', 1, 0, 1),
(12, 8, 1, 'cover', '首页', 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_article`
--

CREATE TABLE IF NOT EXISTS `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_category`
--

CREATE TABLE IF NOT EXISTS `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_multi`
--

CREATE TABLE IF NOT EXISTS `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_site_multi`
--

INSERT INTO `ims_site_multi` (`id`, `uniacid`, `title`, `styleid`, `site_info`, `status`, `bindhost`) VALUES
(1, 1, '微擎团队', 1, '', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_nav`
--

CREATE TABLE IF NOT EXISTS `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_page`
--

CREATE TABLE IF NOT EXISTS `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `multipage` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_slide`
--

CREATE TABLE IF NOT EXISTS `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_styles`
--

CREATE TABLE IF NOT EXISTS `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_site_styles`
--

INSERT INTO `ims_site_styles` (`id`, `uniacid`, `templateid`, `name`) VALUES
(1, 1, 1, '微站默认模板_gC5C');

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_styles_vars`
--

CREATE TABLE IF NOT EXISTS `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_site_templates`
--

CREATE TABLE IF NOT EXISTS `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_site_templates`
--

INSERT INTO `ims_site_templates` (`id`, `name`, `title`, `version`, `description`, `author`, `url`, `type`, `sections`) VALUES
(1, 'default', '微站默认模板', '', '由微擎提供默认微站模板套系', '微擎团队', 'http://we7.cc', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_fans`
--

CREATE TABLE IF NOT EXISTS `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- 转存表中的数据 `ims_stat_fans`
--

INSERT INTO `ims_stat_fans` (`id`, `uniacid`, `new`, `cancel`, `cumulate`, `date`) VALUES
(1, 1, 0, 0, 0, '20170903'),
(2, 1, 0, 0, 0, '20170902'),
(3, 1, 0, 0, 0, '20170901'),
(4, 1, 0, 0, 0, '20170831'),
(5, 1, 0, 0, 0, '20170830'),
(6, 1, 0, 0, 0, '20170829'),
(7, 1, 0, 0, 0, '20170828'),
(8, 1, 0, 0, 0, '20170912'),
(9, 1, 0, 0, 0, '20170911'),
(10, 1, 0, 0, 0, '20170910'),
(11, 1, 0, 0, 0, '20170909'),
(12, 1, 0, 0, 0, '20170908'),
(13, 1, 0, 0, 0, '20170907'),
(14, 1, 0, 0, 0, '20170906'),
(15, 1, 0, 0, 0, '20170920'),
(16, 1, 0, 0, 0, '20170919'),
(17, 1, 0, 0, 0, '20170918'),
(18, 1, 0, 0, 0, '20170917'),
(19, 1, 0, 0, 0, '20170916'),
(20, 1, 0, 0, 0, '20170915'),
(21, 1, 0, 0, 0, '20170914'),
(22, 1, 0, 0, 0, '20170921'),
(23, 1, 0, 0, 0, '20170926'),
(24, 1, 0, 0, 0, '20170925'),
(25, 1, 0, 0, 0, '20170924'),
(26, 1, 0, 0, 0, '20170923'),
(27, 1, 0, 0, 0, '20170922'),
(28, 1, 0, 0, 0, '20170927'),
(29, 1, 0, 0, 0, '20170929'),
(30, 1, 0, 0, 0, '20170928'),
(31, 1, 0, 0, 0, '20171008'),
(32, 1, 0, 0, 0, '20171007'),
(33, 1, 0, 0, 0, '20171006'),
(34, 1, 0, 0, 0, '20171005'),
(35, 1, 0, 0, 0, '20171004'),
(36, 1, 0, 0, 0, '20171003'),
(37, 1, 0, 0, 0, '20171002'),
(38, 1, 0, 0, 0, '20171009'),
(39, 1, 0, 0, 0, '20171012'),
(40, 1, 0, 0, 0, '20171011'),
(41, 1, 0, 0, 0, '20171010');

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_keyword`
--

CREATE TABLE IF NOT EXISTS `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_msg_history`
--

CREATE TABLE IF NOT EXISTS `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_rule`
--

CREATE TABLE IF NOT EXISTS `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_stat_visit`
--

CREATE TABLE IF NOT EXISTS `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `module` (`module`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_uni_account`
--

INSERT INTO `ims_uni_account` (`uniacid`, `groupid`, `name`, `description`, `default_acid`, `rank`, `title_initial`) VALUES
(1, -1, '微擎团队', '一个朝气蓬勃的团队', 1, NULL, 'W');

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_group`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_menus`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_modules`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_account_users`
--

CREATE TABLE IF NOT EXISTS `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_uni_account_users`
--

INSERT INTO `ims_uni_account_users` (`id`, `uniacid`, `uid`, `role`, `rank`) VALUES
(1, 1, 2, 'operator', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_group`
--

CREATE TABLE IF NOT EXISTS `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` varchar(15000) NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_uni_group`
--

INSERT INTO `ims_uni_group` (`id`, `owner_uid`, `name`, `modules`, `templates`, `uniacid`) VALUES
(1, 0, '体验套餐服务', 'N;', 'N;', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_settings`
--

CREATE TABLE IF NOT EXISTS `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `payment` text NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ims_uni_settings`
--

INSERT INTO `ims_uni_settings` (`uniacid`, `passport`, `oauth`, `jsauth_acid`, `uc`, `notify`, `creditnames`, `creditbehaviors`, `welcome`, `default`, `default_message`, `payment`, `stat`, `default_site`, `sync`, `recharge`, `tplnotice`, `grouplevel`, `mcplugin`, `exchange_enable`, `coupon_type`, `menuset`) VALUES
(1, 'a:3:{s:8:"focusreg";i:0;s:4:"item";s:5:"email";s:4:"type";s:8:"password";}', 'a:2:{s:6:"status";s:1:"0";s:7:"account";s:1:"0";}', 0, 'a:1:{s:6:"status";i:0;}', 'a:1:{s:4:"mail";a:5:{s:8:"username";s:17:"1421514791@qq.com";s:8:"password";s:16:"jmxcaorzhestjgjb";s:4:"smtp";a:4:{s:4:"type";s:2:"qq";s:6:"server";s:0:"";s:4:"port";s:0:"";s:8:"authmode";s:1:"0";}s:6:"sender";s:9:"秒猎网";s:9:"signature";s:15:"大学生招聘";}}', 'a:5:{s:7:"credit1";a:2:{s:5:"title";s:6:"积分";s:7:"enabled";i:1;}s:7:"credit2";a:2:{s:5:"title";s:6:"余额";s:7:"enabled";i:1;}s:7:"credit3";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit4";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}s:7:"credit5";a:2:{s:5:"title";s:0:"";s:7:"enabled";i:0;}}', 'a:2:{s:8:"activity";s:7:"credit1";s:8:"currency";s:7:"credit2";}', '', '', '', 'a:4:{s:6:"credit";a:1:{s:6:"switch";b:0;}s:6:"alipay";a:4:{s:6:"switch";b:0;s:7:"account";s:0:"";s:7:"partner";s:0:"";s:6:"secret";s:0:"";}s:6:"wechat";a:5:{s:6:"switch";b:0;s:7:"account";b:0;s:7:"signkey";s:0:"";s:7:"partner";s:0:"";s:3:"key";s:0:"";}s:8:"delivery";a:1:{s:6:"switch";b:0;}}', '', 1, 0, '', '', 0, '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_uni_verifycode`
--

CREATE TABLE IF NOT EXISTS `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_userapi_cache`
--

CREATE TABLE IF NOT EXISTS `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_userapi_reply`
--

CREATE TABLE IF NOT EXISTS `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ims_userapi_reply`
--

INSERT INTO `ims_userapi_reply` (`id`, `rid`, `description`, `apiurl`, `token`, `default_text`, `cachetime`) VALUES
(1, 1, '"城市名+天气", 如: "北京天气"', 'weather.php', '', '', 0),
(2, 2, '"百科+查询内容" 或 "定义+查询内容", 如: "百科姚明", "定义自行车"', 'baike.php', '', '', 0),
(3, 3, '"@查询内容(中文或英文)"', 'translate.php', '', '', 0),
(4, 4, '"日历", "万年历", "黄历"或"几号"', 'calendar.php', '', '', 0),
(5, 5, '"新闻"', 'news.php', '', '', 0),
(6, 6, '"快递+单号", 如: "申通1200041125"', 'express.php', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users`
--

CREATE TABLE IF NOT EXISTS `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ims_users`
--

INSERT INTO `ims_users` (`uid`, `owner_uid`, `groupid`, `founder_groupid`, `username`, `password`, `salt`, `type`, `status`, `joindate`, `joinip`, `lastvisit`, `lastip`, `remark`, `starttime`, `endtime`) VALUES
(1, 0, 1, 0, 'admin', '3cddc9fe753541808d2cdcfd134d7c5c522db6ca', '4d34b629', 0, 0, 1504505205, '', 1507861145, '::1', '', 0, 0),
(2, 0, 1, 0, 'baocl', '2350e0870b062a8fe6acc2dbbf29fccfd6648779', 'c2JM7sb7', 0, 2, 1506744012, '::1', 1506744026, '::1', '', 1506744012, 0);

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_failed_login`
--

CREATE TABLE IF NOT EXISTS `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_founder_group`
--

CREATE TABLE IF NOT EXISTS `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_group`
--

CREATE TABLE IF NOT EXISTS `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_invitation`
--

CREATE TABLE IF NOT EXISTS `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_permission`
--

CREATE TABLE IF NOT EXISTS `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_users_profile`
--

CREATE TABLE IF NOT EXISTS `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `ims_users_profile`
--

INSERT INTO `ims_users_profile` (`id`, `uid`, `createtime`, `edittime`, `realname`, `nickname`, `avatar`, `qq`, `mobile`, `fakeid`, `vip`, `gender`, `birthyear`, `birthmonth`, `birthday`, `constellation`, `zodiac`, `telephone`, `idcard`, `studentid`, `grade`, `address`, `zipcode`, `nationality`, `resideprovince`, `residecity`, `residedist`, `graduateschool`, `company`, `education`, `occupation`, `position`, `revenue`, `affectivestatus`, `lookingfor`, `bloodtype`, `height`, `weight`, `alipay`, `msn`, `email`, `taobao`, `site`, `bio`, `interest`, `workerid`) VALUES
(1, 2, 1506744012, 0, 'username', 'username', '', '1421514791', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `ims_video_reply`
--

CREATE TABLE IF NOT EXISTS `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_voice_reply`
--

CREATE TABLE IF NOT EXISTS `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wechat_attachment`
--

CREATE TABLE IF NOT EXISTS `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wechat_news`
--

CREATE TABLE IF NOT EXISTS `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_address`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL,
  `name` varchar(500) NOT NULL,
  `visible` tinyint(4) unsigned NOT NULL,
  `displayorder` tinyint(11) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `isShow` (`visible`),
  KEY `parentId` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=990101 ;

--
-- 转存表中的数据 `ims_weliam_shiftcar_address`
--

INSERT INTO `ims_weliam_shiftcar_address` (`id`, `pid`, `name`, `visible`, `displayorder`, `level`) VALUES
(110000, 0, '北京市', 2, 0, 1),
(110100, 110000, '北京市', 2, 0, 2),
(110101, 110100, '东城区', 2, 0, 3),
(110102, 110100, '西城区', 2, 0, 3),
(110103, 110100, '崇文区', 2, 0, 3),
(110104, 110100, '宣武区', 2, 0, 3),
(110105, 110100, '朝阳区', 2, 0, 3),
(110106, 110100, '丰台区', 2, 0, 3),
(110107, 110100, '石景山区', 2, 0, 3),
(110108, 110100, '海淀区', 2, 0, 3),
(110109, 110100, '门头沟区', 2, 0, 3),
(110111, 110100, '房山区', 2, 0, 3),
(110112, 110100, '通州区', 2, 0, 3),
(110113, 110100, '顺义区', 2, 0, 3),
(110114, 110100, '昌平区', 2, 0, 3),
(110115, 110100, '大兴区', 2, 0, 3),
(110116, 110100, '怀柔区', 2, 0, 3),
(110117, 110100, '平谷区', 2, 0, 3),
(110228, 110200, '密云县', 2, 0, 3),
(110229, 110200, '延庆县', 2, 0, 3),
(110230, 110100, '其它区', 2, 0, 3),
(120000, 0, '天津市', 2, 0, 1),
(120100, 120000, '天津市', 2, 0, 2),
(120101, 120100, '和平区', 2, 0, 3),
(120102, 120100, '河东区', 2, 0, 3),
(120103, 120100, '河西区', 2, 0, 3),
(120104, 120100, '南开区', 2, 0, 3),
(120105, 120100, '河北区', 2, 0, 3),
(120106, 120100, '红桥区', 2, 0, 3),
(120107, 120100, '塘沽区', 2, 0, 3),
(120108, 120100, '汉沽区', 2, 0, 3),
(120109, 120100, '大港区', 2, 0, 3),
(120110, 120100, '东丽区', 2, 0, 3),
(120111, 120100, '西青区', 2, 0, 3),
(120112, 120100, '津南区', 2, 0, 3),
(120113, 120100, '北辰区', 2, 0, 3),
(120114, 120100, '武清区', 2, 0, 3),
(120115, 120100, '宝坻区', 2, 0, 3),
(120116, 120100, '滨海新区', 2, 0, 3),
(120221, 120200, '宁河县', 2, 0, 3),
(120223, 120200, '静海县', 2, 0, 3),
(120225, 120200, '蓟县', 2, 0, 3),
(120226, 120100, '其它区', 2, 0, 3),
(130000, 0, '河北省', 2, 0, 1),
(130100, 130000, '石家庄市', 2, 0, 2),
(130102, 130100, '长安区', 2, 0, 3),
(130103, 130100, '桥东区', 2, 0, 3),
(130104, 130100, '桥西区', 2, 0, 3),
(130105, 130100, '新华区', 2, 0, 3),
(130107, 130100, '井陉矿区', 2, 0, 3),
(130108, 130100, '裕华区', 2, 0, 3),
(130109, 130100, '藁城区', 2, 0, 3),
(130110, 130100, '鹿泉区', 2, 0, 3),
(130111, 130100, '栾城区', 2, 0, 3),
(130121, 130100, '井陉县', 2, 0, 3),
(130123, 130100, '正定县', 2, 0, 3),
(130124, 130100, '栾城县', 2, 0, 3),
(130125, 130100, '行唐县', 2, 0, 3),
(130126, 130100, '灵寿县', 2, 0, 3),
(130127, 130100, '高邑县', 2, 0, 3),
(130128, 130100, '深泽县', 2, 0, 3),
(130129, 130100, '赞皇县', 2, 0, 3),
(130130, 130100, '无极县', 2, 0, 3),
(130131, 130100, '平山县', 2, 0, 3),
(130132, 130100, '元氏县', 2, 0, 3),
(130133, 130100, '赵县', 2, 0, 3),
(130181, 130100, '辛集市', 2, 0, 3),
(130182, 130100, '藁城市', 2, 0, 3),
(130183, 130100, '晋州市', 2, 0, 3),
(130184, 130100, '新乐市', 2, 0, 3),
(130185, 130100, '鹿泉市', 2, 0, 3),
(130186, 130100, '其它区', 2, 0, 3),
(130200, 130000, '唐山市', 2, 0, 2),
(130202, 130200, '路南区', 2, 0, 3),
(130203, 130200, '路北区', 2, 0, 3),
(130204, 130200, '古冶区', 2, 0, 3),
(130205, 130200, '开平区', 2, 0, 3),
(130207, 130200, '丰南区', 2, 0, 3),
(130208, 130200, '丰润区', 2, 0, 3),
(130209, 130200, '曹妃甸区', 2, 0, 3),
(130223, 130200, '滦县', 2, 0, 3),
(130224, 130200, '滦南县', 2, 0, 3),
(130225, 130200, '乐亭县', 2, 0, 3),
(130227, 130200, '迁西县', 2, 0, 3),
(130229, 130200, '玉田县', 2, 0, 3),
(130230, 130200, '唐海县', 2, 0, 3),
(130281, 130200, '遵化市', 2, 0, 3),
(130283, 130200, '迁安市', 2, 0, 3),
(130284, 130200, '其它区', 2, 0, 3),
(130300, 130000, '秦皇岛市', 2, 0, 2),
(130302, 130300, '海港区', 2, 0, 3),
(130303, 130300, '山海关区', 2, 0, 3),
(130304, 130300, '北戴河区', 2, 0, 3),
(130321, 130300, '青龙满族自治县', 2, 0, 3),
(130322, 130300, '昌黎县', 2, 0, 3),
(130323, 130300, '抚宁县', 2, 0, 3),
(130324, 130300, '卢龙县', 2, 0, 3),
(130398, 130300, '其它区', 2, 0, 3),
(130399, 130300, '经济技术开发区', 2, 0, 3),
(130400, 130000, '邯郸市', 2, 0, 2),
(130402, 130400, '邯山区', 2, 0, 3),
(130403, 130400, '丛台区', 2, 0, 3),
(130404, 130400, '复兴区', 2, 0, 3),
(130406, 130400, '峰峰矿区', 2, 0, 3),
(130421, 130400, '邯郸县', 2, 0, 3),
(130423, 130400, '临漳县', 2, 0, 3),
(130424, 130400, '成安县', 2, 0, 3),
(130425, 130400, '大名县', 2, 0, 3),
(130426, 130400, '涉县', 2, 0, 3),
(130427, 130400, '磁县', 2, 0, 3),
(130428, 130400, '肥乡县', 2, 0, 3),
(130429, 130400, '永年县', 2, 0, 3),
(130430, 130400, '邱县', 2, 0, 3),
(130431, 130400, '鸡泽县', 2, 0, 3),
(130432, 130400, '广平县', 2, 0, 3),
(130433, 130400, '馆陶县', 2, 0, 3),
(130434, 130400, '魏县', 2, 0, 3),
(130435, 130400, '曲周县', 2, 0, 3),
(130481, 130400, '武安市', 2, 0, 3),
(130482, 130400, '其它区', 2, 0, 3),
(130500, 130000, '邢台市', 2, 0, 2),
(130502, 130500, '桥东区', 2, 0, 3),
(130503, 130500, '桥西区', 2, 0, 3),
(130521, 130500, '邢台县', 2, 0, 3),
(130522, 130500, '临城县', 2, 0, 3),
(130523, 130500, '内丘县', 2, 0, 3),
(130524, 130500, '柏乡县', 2, 0, 3),
(130525, 130500, '隆尧县', 2, 0, 3),
(130526, 130500, '任县', 2, 0, 3),
(130527, 130500, '南和县', 2, 0, 3),
(130528, 130500, '宁晋县', 2, 0, 3),
(130529, 130500, '巨鹿县', 2, 0, 3),
(130530, 130500, '新河县', 2, 0, 3),
(130531, 130500, '广宗县', 2, 0, 3),
(130532, 130500, '平乡县', 2, 0, 3),
(130533, 130500, '威县', 2, 0, 3),
(130534, 130500, '清河县', 2, 0, 3),
(130535, 130500, '临西县', 2, 0, 3),
(130581, 130500, '南宫市', 2, 0, 3),
(130582, 130500, '沙河市', 2, 0, 3),
(130583, 130500, '其它区', 2, 0, 3),
(130600, 130000, '保定市', 2, 0, 2),
(130602, 130600, '新市区', 2, 0, 3),
(130603, 130600, '北市区', 2, 0, 3),
(130604, 130600, '南市区', 2, 0, 3),
(130621, 130600, '满城县', 2, 0, 3),
(130622, 130600, '清苑县', 2, 0, 3),
(130623, 130600, '涞水县', 2, 0, 3),
(130624, 130600, '阜平县', 2, 0, 3),
(130625, 130600, '徐水县', 2, 0, 3),
(130626, 130600, '定兴县', 2, 0, 3),
(130627, 130600, '唐县', 2, 0, 3),
(130628, 130600, '高阳县', 2, 0, 3),
(130629, 130600, '容城县', 2, 0, 3),
(130630, 130600, '涞源县', 2, 0, 3),
(130631, 130600, '望都县', 2, 0, 3),
(130632, 130600, '安新县', 2, 0, 3),
(130633, 130600, '易县', 2, 0, 3),
(130634, 130600, '曲阳县', 2, 0, 3),
(130635, 130600, '蠡县', 2, 0, 3),
(130636, 130600, '顺平县', 2, 0, 3),
(130637, 130600, '博野县', 2, 0, 3),
(130638, 130600, '雄县', 2, 0, 3),
(130681, 130600, '涿州市', 2, 0, 3),
(130682, 130600, '定州市', 2, 0, 3),
(130683, 130600, '安国市', 2, 0, 3),
(130684, 130600, '高碑店市', 2, 0, 3),
(130698, 130600, '高开区', 2, 0, 3),
(130699, 130600, '其它区', 2, 0, 3),
(130700, 130000, '张家口市', 2, 0, 2),
(130702, 130700, '桥东区', 2, 0, 3),
(130703, 130700, '桥西区', 2, 0, 3),
(130705, 130700, '宣化区', 2, 0, 3),
(130706, 130700, '下花园区', 2, 0, 3),
(130721, 130700, '宣化县', 2, 0, 3),
(130722, 130700, '张北县', 2, 0, 3),
(130723, 130700, '康保县', 2, 0, 3),
(130724, 130700, '沽源县', 2, 0, 3),
(130725, 130700, '尚义县', 2, 0, 3),
(130726, 130700, '蔚县', 2, 0, 3),
(130727, 130700, '阳原县', 2, 0, 3),
(130728, 130700, '怀安县', 2, 0, 3),
(130729, 130700, '万全县', 2, 0, 3),
(130730, 130700, '怀来县', 2, 0, 3),
(130731, 130700, '涿鹿县', 2, 0, 3),
(130732, 130700, '赤城县', 2, 0, 3),
(130733, 130700, '崇礼县', 2, 0, 3),
(130734, 130700, '其它区', 2, 0, 3),
(130800, 130000, '承德市', 2, 0, 2),
(130802, 130800, '双桥区', 2, 0, 3),
(130803, 130800, '双滦区', 2, 0, 3),
(130804, 130800, '鹰手营子矿区', 2, 0, 3),
(130821, 130800, '承德县', 2, 0, 3),
(130822, 130800, '兴隆县', 2, 0, 3),
(130823, 130800, '平泉县', 2, 0, 3),
(130824, 130800, '滦平县', 2, 0, 3),
(130825, 130800, '隆化县', 2, 0, 3),
(130826, 130800, '丰宁满族自治县', 2, 0, 3),
(130827, 130800, '宽城满族自治县', 2, 0, 3),
(130828, 130800, '围场满族蒙古族自治县', 2, 0, 3),
(130829, 130800, '其它区', 2, 0, 3),
(130900, 130000, '沧州市', 2, 0, 2),
(130902, 130900, '新华区', 2, 0, 3),
(130903, 130900, '运河区', 2, 0, 3),
(130921, 130900, '沧县', 2, 0, 3),
(130922, 130900, '青县', 2, 0, 3),
(130923, 130900, '东光县', 2, 0, 3),
(130924, 130900, '海兴县', 2, 0, 3),
(130925, 130900, '盐山县', 2, 0, 3),
(130926, 130900, '肃宁县', 2, 0, 3),
(130927, 130900, '南皮县', 2, 0, 3),
(130928, 130900, '吴桥县', 2, 0, 3),
(130929, 130900, '献县', 2, 0, 3),
(130930, 130900, '孟村回族自治县', 2, 0, 3),
(130981, 130900, '泊头市', 2, 0, 3),
(130982, 130900, '任丘市', 2, 0, 3),
(130983, 130900, '黄骅市', 2, 0, 3),
(130984, 130900, '河间市', 2, 0, 3),
(130985, 130900, '其它区', 2, 0, 3),
(131000, 130000, '廊坊市', 2, 0, 2),
(131002, 131000, '安次区', 2, 0, 3),
(131003, 131000, '广阳区', 2, 0, 3),
(131022, 131000, '固安县', 2, 0, 3),
(131023, 131000, '永清县', 2, 0, 3),
(131024, 131000, '香河县', 2, 0, 3),
(131025, 131000, '大城县', 2, 0, 3),
(131026, 131000, '文安县', 2, 0, 3),
(131028, 131000, '大厂回族自治县', 2, 0, 3),
(131051, 131000, '开发区', 2, 0, 3),
(131052, 131000, '燕郊经济技术开发区', 2, 0, 3),
(131081, 131000, '霸州市', 2, 0, 3),
(131082, 131000, '三河市', 2, 0, 3),
(131083, 131000, '其它区', 2, 0, 3),
(131100, 130000, '衡水市', 2, 0, 2),
(131102, 131100, '桃城区', 2, 0, 3),
(131121, 131100, '枣强县', 2, 0, 3),
(131122, 131100, '武邑县', 2, 0, 3),
(131123, 131100, '武强县', 2, 0, 3),
(131124, 131100, '饶阳县', 2, 0, 3),
(131125, 131100, '安平县', 2, 0, 3),
(131126, 131100, '故城县', 2, 0, 3),
(131127, 131100, '景县', 2, 0, 3),
(131128, 131100, '阜城县', 2, 0, 3),
(131181, 131100, '冀州市', 2, 0, 3),
(131182, 131100, '深州市', 2, 0, 3),
(131183, 131100, '其它区', 2, 0, 3),
(140000, 0, '山西省', 2, 0, 1),
(140100, 140000, '太原市', 2, 0, 2),
(140105, 140100, '小店区', 2, 0, 3),
(140106, 140100, '迎泽区', 2, 0, 3),
(140107, 140100, '杏花岭区', 2, 0, 3),
(140108, 140100, '尖草坪区', 2, 0, 3),
(140109, 140100, '万柏林区', 2, 0, 3),
(140110, 140100, '晋源区', 2, 0, 3),
(140121, 140100, '清徐县', 2, 0, 3),
(140122, 140100, '阳曲县', 2, 0, 3),
(140123, 140100, '娄烦县', 2, 0, 3),
(140181, 140100, '古交市', 2, 0, 3),
(140182, 140100, '其它区', 2, 0, 3),
(140200, 140000, '大同市', 2, 0, 2),
(140202, 140200, '城区', 2, 0, 3),
(140203, 140200, '矿区', 2, 0, 3),
(140211, 140200, '南郊区', 2, 0, 3),
(140212, 140200, '新荣区', 2, 0, 3),
(140221, 140200, '阳高县', 2, 0, 3),
(140222, 140200, '天镇县', 2, 0, 3),
(140223, 140200, '广灵县', 2, 0, 3),
(140224, 140200, '灵丘县', 2, 0, 3),
(140225, 140200, '浑源县', 2, 0, 3),
(140226, 140200, '左云县', 2, 0, 3),
(140227, 140200, '大同县', 2, 0, 3),
(140228, 140200, '其它区', 2, 0, 3),
(140300, 140000, '阳泉市', 2, 0, 2),
(140302, 140300, '城区', 2, 0, 3),
(140303, 140300, '矿区', 2, 0, 3),
(140311, 140300, '郊区', 2, 0, 3),
(140321, 140300, '平定县', 2, 0, 3),
(140322, 140300, '盂县', 2, 0, 3),
(140323, 140300, '其它区', 2, 0, 3),
(140400, 140000, '长治市', 2, 0, 2),
(140402, 140400, '城区', 2, 0, 3),
(140411, 140400, '郊区', 2, 0, 3),
(140421, 140400, '长治县', 2, 0, 3),
(140423, 140400, '襄垣县', 2, 0, 3),
(140424, 140400, '屯留县', 2, 0, 3),
(140425, 140400, '平顺县', 2, 0, 3),
(140426, 140400, '黎城县', 2, 0, 3),
(140427, 140400, '壶关县', 2, 0, 3),
(140428, 140400, '长子县', 2, 0, 3),
(140429, 140400, '武乡县', 2, 0, 3),
(140430, 140400, '沁县', 2, 0, 3),
(140431, 140400, '沁源县', 2, 0, 3),
(140481, 140400, '潞城市', 2, 0, 3),
(140482, 140400, '城区', 2, 0, 3),
(140483, 140400, '郊区', 2, 0, 3),
(140484, 140400, '高新区', 2, 0, 3),
(140485, 140400, '其它区', 2, 0, 3),
(140500, 140000, '晋城市', 2, 0, 2),
(140502, 140500, '城区', 2, 0, 3),
(140521, 140500, '沁水县', 2, 0, 3),
(140522, 140500, '阳城县', 2, 0, 3),
(140524, 140500, '陵川县', 2, 0, 3),
(140525, 140500, '泽州县', 2, 0, 3),
(140581, 140500, '高平市', 2, 0, 3),
(140582, 140500, '其它区', 2, 0, 3),
(140600, 140000, '朔州市', 2, 0, 2),
(140602, 140600, '朔城区', 2, 0, 3),
(140603, 140600, '平鲁区', 2, 0, 3),
(140621, 140600, '山阴县', 2, 0, 3),
(140622, 140600, '应县', 2, 0, 3),
(140623, 140600, '右玉县', 2, 0, 3),
(140624, 140600, '怀仁县', 2, 0, 3),
(140625, 140600, '其它区', 2, 0, 3),
(140700, 140000, '晋中市', 2, 0, 2),
(140702, 140700, '榆次区', 2, 0, 3),
(140721, 140700, '榆社县', 2, 0, 3),
(140722, 140700, '左权县', 2, 0, 3),
(140723, 140700, '和顺县', 2, 0, 3),
(140724, 140700, '昔阳县', 2, 0, 3),
(140725, 140700, '寿阳县', 2, 0, 3),
(140726, 140700, '太谷县', 2, 0, 3),
(140727, 140700, '祁县', 2, 0, 3),
(140728, 140700, '平遥县', 2, 0, 3),
(140729, 140700, '灵石县', 2, 0, 3),
(140781, 140700, '介休市', 2, 0, 3),
(140782, 140700, '其它区', 2, 0, 3),
(140800, 140000, '运城市', 2, 0, 2),
(140802, 140800, '盐湖区', 2, 0, 3),
(140821, 140800, '临猗县', 2, 0, 3),
(140822, 140800, '万荣县', 2, 0, 3),
(140823, 140800, '闻喜县', 2, 0, 3),
(140824, 140800, '稷山县', 2, 0, 3),
(140825, 140800, '新绛县', 2, 0, 3),
(140826, 140800, '绛县', 2, 0, 3),
(140827, 140800, '垣曲县', 2, 0, 3),
(140828, 140800, '夏县', 2, 0, 3),
(140829, 140800, '平陆县', 2, 0, 3),
(140830, 140800, '芮城县', 2, 0, 3),
(140881, 140800, '永济市', 2, 0, 3),
(140882, 140800, '河津市', 2, 0, 3),
(140883, 140800, '其它区', 2, 0, 3),
(140900, 140000, '忻州市', 2, 0, 2),
(140902, 140900, '忻府区', 2, 0, 3),
(140921, 140900, '定襄县', 2, 0, 3),
(140922, 140900, '五台县', 2, 0, 3),
(140923, 140900, '代县', 2, 0, 3),
(140924, 140900, '繁峙县', 2, 0, 3),
(140925, 140900, '宁武县', 2, 0, 3),
(140926, 140900, '静乐县', 2, 0, 3),
(140927, 140900, '神池县', 2, 0, 3),
(140928, 140900, '五寨县', 2, 0, 3),
(140929, 140900, '岢岚县', 2, 0, 3),
(140930, 140900, '河曲县', 2, 0, 3),
(140931, 140900, '保德县', 2, 0, 3),
(140932, 140900, '偏关县', 2, 0, 3),
(140981, 140900, '原平市', 2, 0, 3),
(140982, 140900, '其它区', 2, 0, 3),
(141000, 140000, '临汾市', 2, 0, 2),
(141002, 141000, '尧都区', 2, 0, 3),
(141021, 141000, '曲沃县', 2, 0, 3),
(141022, 141000, '翼城县', 2, 0, 3),
(141023, 141000, '襄汾县', 2, 0, 3),
(141024, 141000, '洪洞县', 2, 0, 3),
(141025, 141000, '古县', 2, 0, 3),
(141026, 141000, '安泽县', 2, 0, 3),
(141027, 141000, '浮山县', 2, 0, 3),
(141028, 141000, '吉县', 2, 0, 3),
(141029, 141000, '乡宁县', 2, 0, 3),
(141030, 141000, '大宁县', 2, 0, 3),
(141031, 141000, '隰县', 2, 0, 3),
(141032, 141000, '永和县', 2, 0, 3),
(141033, 141000, '蒲县', 2, 0, 3),
(141034, 141000, '汾西县', 2, 0, 3),
(141081, 141000, '侯马市', 2, 0, 3),
(141082, 141000, '霍州市', 2, 0, 3),
(141083, 141000, '其它区', 2, 0, 3),
(141100, 140000, '吕梁市', 2, 0, 2),
(141102, 141100, '离石区', 2, 0, 3),
(141121, 141100, '文水县', 2, 0, 3),
(141122, 141100, '交城县', 2, 0, 3),
(141123, 141100, '兴县', 2, 0, 3),
(141124, 141100, '临县', 2, 0, 3),
(141125, 141100, '柳林县', 2, 0, 3),
(141126, 141100, '石楼县', 2, 0, 3),
(141127, 141100, '岚县', 2, 0, 3),
(141128, 141100, '方山县', 2, 0, 3),
(141129, 141100, '中阳县', 2, 0, 3),
(141130, 141100, '交口县', 2, 0, 3),
(141181, 141100, '孝义市', 2, 0, 3),
(141182, 141100, '汾阳市', 2, 0, 3),
(141183, 141100, '其它区', 2, 0, 3),
(150000, 0, '内蒙古自治区', 2, 0, 1),
(150100, 150000, '呼和浩特市', 2, 0, 2),
(150102, 150100, '新城区', 2, 0, 3),
(150103, 150100, '回民区', 2, 0, 3),
(150104, 150100, '玉泉区', 2, 0, 3),
(150105, 150100, '赛罕区', 2, 0, 3),
(150121, 150100, '土默特左旗', 2, 0, 3),
(150122, 150100, '托克托县', 2, 0, 3),
(150123, 150100, '和林格尔县', 2, 0, 3),
(150124, 150100, '清水河县', 2, 0, 3),
(150125, 150100, '武川县', 2, 0, 3),
(150126, 150100, '其它区', 2, 0, 3),
(150200, 150000, '包头市', 2, 0, 2),
(150202, 150200, '东河区', 2, 0, 3),
(150203, 150200, '昆都仑区', 2, 0, 3),
(150204, 150200, '青山区', 2, 0, 3),
(150205, 150200, '石拐区', 2, 0, 3),
(150206, 150200, '白云鄂博矿区', 2, 0, 3),
(150207, 150200, '九原区', 2, 0, 3),
(150221, 150200, '土默特右旗', 2, 0, 3),
(150222, 150200, '固阳县', 2, 0, 3),
(150223, 150200, '达尔罕茂明安联合旗', 2, 0, 3),
(150224, 150200, '其它区', 2, 0, 3),
(150300, 150000, '乌海市', 2, 0, 2),
(150302, 150300, '海勃湾区', 2, 0, 3),
(150303, 150300, '海南区', 2, 0, 3),
(150304, 150300, '乌达区', 2, 0, 3),
(150305, 150300, '其它区', 2, 0, 3),
(150400, 150000, '赤峰市', 2, 0, 2),
(150402, 150400, '红山区', 2, 0, 3),
(150403, 150400, '元宝山区', 2, 0, 3),
(150404, 150400, '松山区', 2, 0, 3),
(150421, 150400, '阿鲁科尔沁旗', 2, 0, 3),
(150422, 150400, '巴林左旗', 2, 0, 3),
(150423, 150400, '巴林右旗', 2, 0, 3),
(150424, 150400, '林西县', 2, 0, 3),
(150425, 150400, '克什克腾旗', 2, 0, 3),
(150426, 150400, '翁牛特旗', 2, 0, 3),
(150428, 150400, '喀喇沁旗', 2, 0, 3),
(150429, 150400, '宁城县', 2, 0, 3),
(150430, 150400, '敖汉旗', 2, 0, 3),
(150431, 150400, '其它区', 2, 0, 3),
(150500, 150000, '通辽市', 2, 0, 2),
(150502, 150500, '科尔沁区', 2, 0, 3),
(150521, 150500, '科尔沁左翼中旗', 2, 0, 3),
(150522, 150500, '科尔沁左翼后旗', 2, 0, 3),
(150523, 150500, '开鲁县', 2, 0, 3),
(150524, 150500, '库伦旗', 2, 0, 3),
(150525, 150500, '奈曼旗', 2, 0, 3),
(150526, 150500, '扎鲁特旗', 2, 0, 3),
(150581, 150500, '霍林郭勒市', 2, 0, 3),
(150582, 150500, '其它区', 2, 0, 3),
(150600, 150000, '鄂尔多斯市', 2, 0, 2),
(150602, 150600, '东胜区', 2, 0, 3),
(150621, 150600, '达拉特旗', 2, 0, 3),
(150622, 150600, '准格尔旗', 2, 0, 3),
(150623, 150600, '鄂托克前旗', 2, 0, 3),
(150624, 150600, '鄂托克旗', 2, 0, 3),
(150625, 150600, '杭锦旗', 2, 0, 3),
(150626, 150600, '乌审旗', 2, 0, 3),
(150627, 150600, '伊金霍洛旗', 2, 0, 3),
(150628, 150600, '其它区', 2, 0, 3),
(150700, 150000, '呼伦贝尔市', 2, 0, 2),
(150702, 150700, '海拉尔区', 2, 0, 3),
(150703, 150700, '扎赉诺尔区', 2, 0, 3),
(150721, 150700, '阿荣旗', 2, 0, 3),
(150722, 150700, '莫力达瓦达斡尔族自治旗', 2, 0, 3),
(150723, 150700, '鄂伦春自治旗', 2, 0, 3),
(150724, 150700, '鄂温克族自治旗', 2, 0, 3),
(150725, 150700, '陈巴尔虎旗', 2, 0, 3),
(150726, 150700, '新巴尔虎左旗', 2, 0, 3),
(150727, 150700, '新巴尔虎右旗', 2, 0, 3),
(150781, 150700, '满洲里市', 2, 0, 3),
(150782, 150700, '牙克石市', 2, 0, 3),
(150783, 150700, '扎兰屯市', 2, 0, 3),
(150784, 150700, '额尔古纳市', 2, 0, 3),
(150785, 150700, '根河市', 2, 0, 3),
(150786, 150700, '其它区', 2, 0, 3),
(150800, 150000, '巴彦淖尔市', 2, 0, 2),
(150802, 150800, '临河区', 2, 0, 3),
(150821, 150800, '五原县', 2, 0, 3),
(150822, 150800, '磴口县', 2, 0, 3),
(150823, 150800, '乌拉特前旗', 2, 0, 3),
(150824, 150800, '乌拉特中旗', 2, 0, 3),
(150825, 150800, '乌拉特后旗', 2, 0, 3),
(150826, 150800, '杭锦后旗', 2, 0, 3),
(150827, 150800, '其它区', 2, 0, 3),
(150900, 150000, '乌兰察布市', 2, 0, 2),
(150902, 150900, '集宁区', 2, 0, 3),
(150921, 150900, '卓资县', 2, 0, 3),
(150922, 150900, '化德县', 2, 0, 3),
(150923, 150900, '商都县', 2, 0, 3),
(150924, 150900, '兴和县', 2, 0, 3),
(150925, 150900, '凉城县', 2, 0, 3),
(150926, 150900, '察哈尔右翼前旗', 2, 0, 3),
(150927, 150900, '察哈尔右翼中旗', 2, 0, 3),
(150928, 150900, '察哈尔右翼后旗', 2, 0, 3),
(150929, 150900, '四子王旗', 2, 0, 3),
(150981, 150900, '丰镇市', 2, 0, 3),
(150982, 150900, '其它区', 2, 0, 3),
(152200, 150000, '兴安盟', 2, 0, 2),
(152201, 152200, '乌兰浩特市', 2, 0, 3),
(152202, 152200, '阿尔山市', 2, 0, 3),
(152221, 152200, '科尔沁右翼前旗', 2, 0, 3),
(152222, 152200, '科尔沁右翼中旗', 2, 0, 3),
(152223, 152200, '扎赉特旗', 2, 0, 3),
(152224, 152200, '突泉县', 2, 0, 3),
(152225, 152200, '其它区', 2, 0, 3),
(152500, 150000, '锡林郭勒盟', 2, 0, 2),
(152501, 152500, '二连浩特市', 2, 0, 3),
(152502, 152500, '锡林浩特市', 2, 0, 3),
(152522, 152500, '阿巴嘎旗', 2, 0, 3),
(152523, 152500, '苏尼特左旗', 2, 0, 3),
(152524, 152500, '苏尼特右旗', 2, 0, 3),
(152525, 152500, '东乌珠穆沁旗', 2, 0, 3),
(152526, 152500, '西乌珠穆沁旗', 2, 0, 3),
(152527, 152500, '太仆寺旗', 2, 0, 3),
(152528, 152500, '镶黄旗', 2, 0, 3),
(152529, 152500, '正镶白旗', 2, 0, 3),
(152530, 152500, '正蓝旗', 2, 0, 3),
(152531, 152500, '多伦县', 2, 0, 3),
(152532, 152500, '其它区', 2, 0, 3),
(152900, 150000, '阿拉善盟', 2, 0, 2),
(152921, 152900, '阿拉善左旗', 2, 0, 3),
(152922, 152900, '阿拉善右旗', 2, 0, 3),
(152923, 152900, '额济纳旗', 2, 0, 3),
(152924, 152900, '其它区', 2, 0, 3),
(210000, 0, '辽宁省', 2, 0, 1),
(210100, 210000, '沈阳市', 2, 0, 2),
(210102, 210100, '和平区', 2, 0, 3),
(210103, 210100, '沈河区', 2, 0, 3),
(210104, 210100, '大东区', 2, 0, 3),
(210105, 210100, '皇姑区', 2, 0, 3),
(210106, 210100, '铁西区', 2, 0, 3),
(210111, 210100, '苏家屯区', 2, 0, 3),
(210112, 210100, '浑南区', 2, 0, 3),
(210113, 210100, '沈北新区', 2, 0, 3),
(210114, 210100, '于洪区', 2, 0, 3),
(210122, 210100, '辽中县', 2, 0, 3),
(210123, 210100, '康平县', 2, 0, 3),
(210124, 210100, '法库县', 2, 0, 3),
(210181, 210100, '新民市', 2, 0, 3),
(210182, 210100, '浑南新区', 2, 0, 3),
(210183, 210100, '张士开发区', 2, 0, 3),
(210184, 210100, '沈北新区', 2, 0, 3),
(210185, 210100, '其它区', 2, 0, 3),
(210200, 210000, '大连市', 2, 0, 2),
(210202, 210200, '中山区', 2, 0, 3),
(210203, 210200, '西岗区', 2, 0, 3),
(210204, 210200, '沙河口区', 2, 0, 3),
(210211, 210200, '甘井子区', 2, 0, 3),
(210212, 210200, '旅顺口区', 2, 0, 3),
(210213, 210200, '金州区', 2, 0, 3),
(210224, 210200, '长海县', 2, 0, 3),
(210251, 210200, '开发区', 2, 0, 3),
(210281, 210200, '瓦房店市', 2, 0, 3),
(210282, 210200, '普兰店市', 2, 0, 3),
(210283, 210200, '庄河市', 2, 0, 3),
(210297, 210200, '岭前区', 2, 0, 3),
(210298, 210200, '其它区', 2, 0, 3),
(210300, 210000, '鞍山市', 2, 0, 2),
(210302, 210300, '铁东区', 2, 0, 3),
(210303, 210300, '铁西区', 2, 0, 3),
(210304, 210300, '立山区', 2, 0, 3),
(210311, 210300, '千山区', 2, 0, 3),
(210321, 210300, '台安县', 2, 0, 3),
(210323, 210300, '岫岩满族自治县', 2, 0, 3),
(210351, 210300, '高新区', 2, 0, 3),
(210381, 210300, '海城市', 2, 0, 3),
(210382, 210300, '其它区', 2, 0, 3),
(210400, 210000, '抚顺市', 2, 0, 2),
(210402, 210400, '新抚区', 2, 0, 3),
(210403, 210400, '东洲区', 2, 0, 3),
(210404, 210400, '望花区', 2, 0, 3),
(210411, 210400, '顺城区', 2, 0, 3),
(210421, 210400, '抚顺县', 2, 0, 3),
(210422, 210400, '新宾满族自治县', 2, 0, 3),
(210423, 210400, '清原满族自治县', 2, 0, 3),
(210424, 210400, '其它区', 2, 0, 3),
(210500, 210000, '本溪市', 2, 0, 2),
(210502, 210500, '平山区', 2, 0, 3),
(210503, 210500, '溪湖区', 2, 0, 3),
(210504, 210500, '明山区', 2, 0, 3),
(210505, 210500, '南芬区', 2, 0, 3),
(210521, 210500, '本溪满族自治县', 2, 0, 3),
(210522, 210500, '桓仁满族自治县', 2, 0, 3),
(210523, 210500, '其它区', 2, 0, 3),
(210600, 210000, '丹东市', 2, 0, 2),
(210602, 210600, '元宝区', 2, 0, 3),
(210603, 210600, '振兴区', 2, 0, 3),
(210604, 210600, '振安区', 2, 0, 3),
(210624, 210600, '宽甸满族自治县', 2, 0, 3),
(210681, 210600, '东港市', 2, 0, 3),
(210682, 210600, '凤城市', 2, 0, 3),
(210683, 210600, '其它区', 2, 0, 3),
(210700, 210000, '锦州市', 2, 0, 2),
(210702, 210700, '古塔区', 2, 0, 3),
(210703, 210700, '凌河区', 2, 0, 3),
(210711, 210700, '太和区', 2, 0, 3),
(210726, 210700, '黑山县', 2, 0, 3),
(210727, 210700, '义县', 2, 0, 3),
(210781, 210700, '凌海市', 2, 0, 3),
(210782, 210700, '北镇市', 2, 0, 3),
(210783, 210700, '其它区', 2, 0, 3),
(210800, 210000, '营口市', 2, 0, 2),
(210802, 210800, '站前区', 2, 0, 3),
(210803, 210800, '西市区', 2, 0, 3),
(210804, 210800, '鲅鱼圈区', 2, 0, 3),
(210811, 210800, '老边区', 2, 0, 3),
(210881, 210800, '盖州市', 2, 0, 3),
(210882, 210800, '大石桥市', 2, 0, 3),
(210883, 210800, '其它区', 2, 0, 3),
(210900, 210000, '阜新市', 2, 0, 2),
(210902, 210900, '海州区', 2, 0, 3),
(210903, 210900, '新邱区', 2, 0, 3),
(210904, 210900, '太平区', 2, 0, 3),
(210905, 210900, '清河门区', 2, 0, 3),
(210911, 210900, '细河区', 2, 0, 3),
(210921, 210900, '阜新蒙古族自治县', 2, 0, 3),
(210922, 210900, '彰武县', 2, 0, 3),
(210923, 210900, '其它区', 2, 0, 3),
(211000, 210000, '辽阳市', 2, 0, 2),
(211002, 211000, '白塔区', 2, 0, 3),
(211003, 211000, '文圣区', 2, 0, 3),
(211004, 211000, '宏伟区', 2, 0, 3),
(211005, 211000, '弓长岭区', 2, 0, 3),
(211011, 211000, '太子河区', 2, 0, 3),
(211021, 211000, '辽阳县', 2, 0, 3),
(211081, 211000, '灯塔市', 2, 0, 3),
(211082, 211000, '其它区', 2, 0, 3),
(211100, 210000, '盘锦市', 2, 0, 2),
(211102, 211100, '双台子区', 2, 0, 3),
(211103, 211100, '兴隆台区', 2, 0, 3),
(211121, 211100, '大洼县', 2, 0, 3),
(211122, 211100, '盘山县', 2, 0, 3),
(211123, 211100, '其它区', 2, 0, 3),
(211200, 210000, '铁岭市', 2, 0, 2),
(211202, 211200, '银州区', 2, 0, 3),
(211204, 211200, '清河区', 2, 0, 3),
(211221, 211200, '铁岭县', 2, 0, 3),
(211223, 211200, '西丰县', 2, 0, 3),
(211224, 211200, '昌图县', 2, 0, 3),
(211281, 211200, '调兵山市', 2, 0, 3),
(211282, 211200, '开原市', 2, 0, 3),
(211283, 211200, '其它区', 2, 0, 3),
(211300, 210000, '朝阳市', 2, 0, 2),
(211302, 211300, '双塔区', 2, 0, 3),
(211303, 211300, '龙城区', 2, 0, 3),
(211321, 211300, '朝阳县', 2, 0, 3),
(211322, 211300, '建平县', 2, 0, 3),
(211324, 211300, '喀喇沁左翼蒙古族自治县', 2, 0, 3),
(211381, 211300, '北票市', 2, 0, 3),
(211382, 211300, '凌源市', 2, 0, 3),
(211383, 211300, '其它区', 2, 0, 3),
(211400, 210000, '葫芦岛市', 2, 0, 2),
(211402, 211400, '连山区', 2, 0, 3),
(211403, 211400, '龙港区', 2, 0, 3),
(211404, 211400, '南票区', 2, 0, 3),
(211421, 211400, '绥中县', 2, 0, 3),
(211422, 211400, '建昌县', 2, 0, 3),
(211481, 211400, '兴城市', 2, 0, 3),
(211482, 211400, '其它区', 2, 0, 3),
(220000, 0, '吉林省', 2, 0, 1),
(220100, 220000, '长春市', 2, 0, 2),
(220102, 220100, '南关区', 2, 0, 3),
(220103, 220100, '宽城区', 2, 0, 3),
(220104, 220100, '朝阳区', 2, 0, 3),
(220105, 220100, '二道区', 2, 0, 3),
(220106, 220100, '绿园区', 2, 0, 3),
(220112, 220100, '双阳区', 2, 0, 3),
(220113, 220100, '九台区', 2, 0, 3),
(220122, 220100, '农安县', 2, 0, 3),
(220181, 220100, '九台市', 2, 0, 3),
(220182, 220100, '榆树市', 2, 0, 3),
(220183, 220100, '德惠市', 2, 0, 3),
(220184, 220100, '高新技术产业开发区', 2, 0, 3),
(220185, 220100, '汽车产业开发区', 2, 0, 3),
(220186, 220100, '经济技术开发区', 2, 0, 3),
(220187, 220100, '净月旅游开发区', 2, 0, 3),
(220188, 220100, '其它区', 2, 0, 3),
(220200, 220000, '吉林市', 2, 0, 2),
(220202, 220200, '昌邑区', 2, 0, 3),
(220203, 220200, '龙潭区', 2, 0, 3),
(220204, 220200, '船营区', 2, 0, 3),
(220211, 220200, '丰满区', 2, 0, 3),
(220221, 220200, '永吉县', 2, 0, 3),
(220281, 220200, '蛟河市', 2, 0, 3),
(220282, 220200, '桦甸市', 2, 0, 3),
(220283, 220200, '舒兰市', 2, 0, 3),
(220284, 220200, '磐石市', 2, 0, 3),
(220285, 220200, '其它区', 2, 0, 3),
(220300, 220000, '四平市', 2, 0, 2),
(220302, 220300, '铁西区', 2, 0, 3),
(220303, 220300, '铁东区', 2, 0, 3),
(220322, 220300, '梨树县', 2, 0, 3),
(220323, 220300, '伊通满族自治县', 2, 0, 3),
(220381, 220300, '公主岭市', 2, 0, 3),
(220382, 220300, '双辽市', 2, 0, 3),
(220383, 220300, '其它区', 2, 0, 3),
(220400, 220000, '辽源市', 2, 0, 2),
(220402, 220400, '龙山区', 2, 0, 3),
(220403, 220400, '西安区', 2, 0, 3),
(220421, 220400, '东丰县', 2, 0, 3),
(220422, 220400, '东辽县', 2, 0, 3),
(220423, 220400, '其它区', 2, 0, 3),
(220500, 220000, '通化市', 2, 0, 2),
(220502, 220500, '东昌区', 2, 0, 3),
(220503, 220500, '二道江区', 2, 0, 3),
(220521, 220500, '通化县', 2, 0, 3),
(220523, 220500, '辉南县', 2, 0, 3),
(220524, 220500, '柳河县', 2, 0, 3),
(220581, 220500, '梅河口市', 2, 0, 3),
(220582, 220500, '集安市', 2, 0, 3),
(220583, 220500, '其它区', 2, 0, 3),
(220600, 220000, '白山市', 2, 0, 2),
(220602, 220600, '浑江区', 2, 0, 3),
(220605, 220600, '江源区', 2, 0, 3),
(220621, 220600, '抚松县', 2, 0, 3),
(220622, 220600, '靖宇县', 2, 0, 3),
(220623, 220600, '长白朝鲜族自治县', 2, 0, 3),
(220625, 220600, '江源县', 2, 0, 3),
(220681, 220600, '临江市', 2, 0, 3),
(220682, 220600, '其它区', 2, 0, 3),
(220700, 220000, '松原市', 2, 0, 2),
(220702, 220700, '宁江区', 2, 0, 3),
(220721, 220700, '前郭尔罗斯蒙古族自治县', 2, 0, 3),
(220722, 220700, '长岭县', 2, 0, 3),
(220723, 220700, '乾安县', 2, 0, 3),
(220724, 220700, '扶余县', 2, 0, 3),
(220725, 220700, '其它区', 2, 0, 3),
(220781, 220700, '扶余市', 2, 0, 3),
(220800, 220000, '白城市', 2, 0, 2),
(220802, 220800, '洮北区', 2, 0, 3),
(220821, 220800, '镇赉县', 2, 0, 3),
(220822, 220800, '通榆县', 2, 0, 3),
(220881, 220800, '洮南市', 2, 0, 3),
(220882, 220800, '大安市', 2, 0, 3),
(220883, 220800, '其它区', 2, 0, 3),
(222400, 220000, '延边朝鲜族自治州', 2, 0, 2),
(222401, 222400, '延吉市', 2, 0, 3),
(222402, 222400, '图们市', 2, 0, 3),
(222403, 222400, '敦化市', 2, 0, 3),
(222404, 222400, '珲春市', 2, 0, 3),
(222405, 222400, '龙井市', 2, 0, 3),
(222406, 222400, '和龙市', 2, 0, 3),
(222424, 222400, '汪清县', 2, 0, 3),
(222426, 222400, '安图县', 2, 0, 3),
(222427, 222400, '其它区', 2, 0, 3),
(230000, 0, '黑龙江省', 2, 0, 1),
(230100, 230000, '哈尔滨市', 2, 0, 2),
(230102, 230100, '道里区', 2, 0, 3),
(230103, 230100, '南岗区', 2, 0, 3),
(230104, 230100, '道外区', 2, 0, 3),
(230106, 230100, '香坊区', 2, 0, 3),
(230107, 230100, '动力区', 2, 0, 3),
(230108, 230100, '平房区', 2, 0, 3),
(230109, 230100, '松北区', 2, 0, 3),
(230110, 230100, '香坊区', 2, 0, 3),
(230111, 230100, '呼兰区', 2, 0, 3),
(230112, 230100, '阿城区', 2, 0, 3),
(230113, 230100, '双城区', 2, 0, 3),
(230123, 230100, '依兰县', 2, 0, 3),
(230124, 230100, '方正县', 2, 0, 3),
(230125, 230100, '宾县', 2, 0, 3),
(230126, 230100, '巴彦县', 2, 0, 3),
(230127, 230100, '木兰县', 2, 0, 3),
(230128, 230100, '通河县', 2, 0, 3),
(230129, 230100, '延寿县', 2, 0, 3),
(230181, 230100, '阿城市', 2, 0, 3),
(230182, 230100, '双城市', 2, 0, 3),
(230183, 230100, '尚志市', 2, 0, 3),
(230184, 230100, '五常市', 2, 0, 3),
(230185, 230100, '阿城市', 2, 0, 3),
(230186, 230100, '其它区', 2, 0, 3),
(230200, 230000, '齐齐哈尔市', 2, 0, 2),
(230202, 230200, '龙沙区', 2, 0, 3),
(230203, 230200, '建华区', 2, 0, 3),
(230204, 230200, '铁锋区', 2, 0, 3),
(230205, 230200, '昂昂溪区', 2, 0, 3),
(230206, 230200, '富拉尔基区', 2, 0, 3),
(230207, 230200, '碾子山区', 2, 0, 3),
(230208, 230200, '梅里斯达斡尔族区', 2, 0, 3),
(230221, 230200, '龙江县', 2, 0, 3),
(230223, 230200, '依安县', 2, 0, 3),
(230224, 230200, '泰来县', 2, 0, 3),
(230225, 230200, '甘南县', 2, 0, 3),
(230227, 230200, '富裕县', 2, 0, 3),
(230229, 230200, '克山县', 2, 0, 3),
(230230, 230200, '克东县', 2, 0, 3),
(230231, 230200, '拜泉县', 2, 0, 3),
(230281, 230200, '讷河市', 2, 0, 3),
(230282, 230200, '其它区', 2, 0, 3),
(230300, 230000, '鸡西市', 2, 0, 2),
(230302, 230300, '鸡冠区', 2, 0, 3),
(230303, 230300, '恒山区', 2, 0, 3),
(230304, 230300, '滴道区', 2, 0, 3),
(230305, 230300, '梨树区', 2, 0, 3),
(230306, 230300, '城子河区', 2, 0, 3),
(230307, 230300, '麻山区', 2, 0, 3),
(230321, 230300, '鸡东县', 2, 0, 3),
(230381, 230300, '虎林市', 2, 0, 3),
(230382, 230300, '密山市', 2, 0, 3),
(230383, 230300, '其它区', 2, 0, 3),
(230400, 230000, '鹤岗市', 2, 0, 2),
(230402, 230400, '向阳区', 2, 0, 3),
(230403, 230400, '工农区', 2, 0, 3),
(230404, 230400, '南山区', 2, 0, 3),
(230405, 230400, '兴安区', 2, 0, 3),
(230406, 230400, '东山区', 2, 0, 3),
(230407, 230400, '兴山区', 2, 0, 3),
(230421, 230400, '萝北县', 2, 0, 3),
(230422, 230400, '绥滨县', 2, 0, 3),
(230423, 230400, '其它区', 2, 0, 3),
(230500, 230000, '双鸭山市', 2, 0, 2),
(230502, 230500, '尖山区', 2, 0, 3),
(230503, 230500, '岭东区', 2, 0, 3),
(230505, 230500, '四方台区', 2, 0, 3),
(230506, 230500, '宝山区', 2, 0, 3),
(230521, 230500, '集贤县', 2, 0, 3),
(230522, 230500, '友谊县', 2, 0, 3),
(230523, 230500, '宝清县', 2, 0, 3),
(230524, 230500, '饶河县', 2, 0, 3),
(230525, 230500, '其它区', 2, 0, 3),
(230600, 230000, '大庆市', 2, 0, 2),
(230602, 230600, '萨尔图区', 2, 0, 3),
(230603, 230600, '龙凤区', 2, 0, 3),
(230604, 230600, '让胡路区', 2, 0, 3),
(230605, 230600, '红岗区', 2, 0, 3),
(230606, 230600, '大同区', 2, 0, 3),
(230621, 230600, '肇州县', 2, 0, 3),
(230622, 230600, '肇源县', 2, 0, 3),
(230623, 230600, '林甸县', 2, 0, 3),
(230624, 230600, '杜尔伯特蒙古族自治县', 2, 0, 3),
(230625, 230600, '其它区', 2, 0, 3),
(230700, 230000, '伊春市', 2, 0, 2),
(230702, 230700, '伊春区', 2, 0, 3),
(230703, 230700, '南岔区', 2, 0, 3),
(230704, 230700, '友好区', 2, 0, 3),
(230705, 230700, '西林区', 2, 0, 3),
(230706, 230700, '翠峦区', 2, 0, 3),
(230707, 230700, '新青区', 2, 0, 3),
(230708, 230700, '美溪区', 2, 0, 3),
(230709, 230700, '金山屯区', 2, 0, 3),
(230710, 230700, '五营区', 2, 0, 3),
(230711, 230700, '乌马河区', 2, 0, 3),
(230712, 230700, '汤旺河区', 2, 0, 3),
(230713, 230700, '带岭区', 2, 0, 3),
(230714, 230700, '乌伊岭区', 2, 0, 3),
(230715, 230700, '红星区', 2, 0, 3),
(230716, 230700, '上甘岭区', 2, 0, 3),
(230722, 230700, '嘉荫县', 2, 0, 3),
(230781, 230700, '铁力市', 2, 0, 3),
(230782, 230700, '其它区', 2, 0, 3),
(230800, 230000, '佳木斯市', 2, 0, 2),
(230802, 230800, '永红区', 2, 0, 3),
(230803, 230800, '向阳区', 2, 0, 3),
(230804, 230800, '前进区', 2, 0, 3),
(230805, 230800, '东风区', 2, 0, 3),
(230811, 230800, '郊区', 2, 0, 3),
(230822, 230800, '桦南县', 2, 0, 3),
(230826, 230800, '桦川县', 2, 0, 3),
(230828, 230800, '汤原县', 2, 0, 3),
(230833, 230800, '抚远县', 2, 0, 3),
(230881, 230800, '同江市', 2, 0, 3),
(230882, 230800, '富锦市', 2, 0, 3),
(230883, 230800, '其它区', 2, 0, 3),
(230900, 230000, '七台河市', 2, 0, 2),
(230902, 230900, '新兴区', 2, 0, 3),
(230903, 230900, '桃山区', 2, 0, 3),
(230904, 230900, '茄子河区', 2, 0, 3),
(230921, 230900, '勃利县', 2, 0, 3),
(230922, 230900, '其它区', 2, 0, 3),
(231000, 230000, '牡丹江市', 2, 0, 2),
(231002, 231000, '东安区', 2, 0, 3),
(231003, 231000, '阳明区', 2, 0, 3),
(231004, 231000, '爱民区', 2, 0, 3),
(231005, 231000, '西安区', 2, 0, 3),
(231024, 231000, '东宁县', 2, 0, 3),
(231025, 231000, '林口县', 2, 0, 3),
(231081, 231000, '绥芬河市', 2, 0, 3),
(231083, 231000, '海林市', 2, 0, 3),
(231084, 231000, '宁安市', 2, 0, 3),
(231085, 231000, '穆棱市', 2, 0, 3),
(231086, 231000, '其它区', 2, 0, 3),
(231100, 230000, '黑河市', 2, 0, 2),
(231102, 231100, '爱辉区', 2, 0, 3),
(231121, 231100, '嫩江县', 2, 0, 3),
(231123, 231100, '逊克县', 2, 0, 3),
(231124, 231100, '孙吴县', 2, 0, 3),
(231181, 231100, '北安市', 2, 0, 3),
(231182, 231100, '五大连池市', 2, 0, 3),
(231183, 231100, '其它区', 2, 0, 3),
(231200, 230000, '绥化市', 2, 0, 2),
(231202, 231200, '北林区', 2, 0, 3),
(231221, 231200, '望奎县', 2, 0, 3),
(231222, 231200, '兰西县', 2, 0, 3),
(231223, 231200, '青冈县', 2, 0, 3),
(231224, 231200, '庆安县', 2, 0, 3),
(231225, 231200, '明水县', 2, 0, 3),
(231226, 231200, '绥棱县', 2, 0, 3),
(231281, 231200, '安达市', 2, 0, 3),
(231282, 231200, '肇东市', 2, 0, 3),
(231283, 231200, '海伦市', 2, 0, 3),
(231284, 231200, '其它区', 2, 0, 3),
(232700, 230000, '大兴安岭地区', 2, 0, 2),
(232721, 232700, '呼玛县', 2, 0, 3),
(232722, 232700, '塔河县', 2, 0, 3),
(232723, 232700, '漠河县', 2, 0, 3),
(232724, 232700, '加格达奇区', 2, 0, 3),
(232725, 232700, '其它区', 2, 0, 3),
(310000, 0, '上海市', 2, 0, 1),
(310100, 310000, '上海市', 2, 0, 2),
(310101, 310100, '黄浦区', 2, 0, 3),
(310103, 310100, '卢湾区', 2, 0, 3),
(310104, 310100, '徐汇区', 2, 0, 3),
(310105, 310100, '长宁区', 2, 0, 3),
(310106, 310100, '静安区', 2, 0, 3),
(310107, 310100, '普陀区', 2, 0, 3),
(310108, 310100, '闸北区', 2, 0, 3),
(310109, 310100, '虹口区', 2, 0, 3),
(310110, 310100, '杨浦区', 2, 0, 3),
(310112, 310100, '闵行区', 2, 0, 3),
(310113, 310100, '宝山区', 2, 0, 3),
(310114, 310100, '嘉定区', 2, 0, 3),
(310115, 310100, '浦东新区', 2, 0, 3),
(310116, 310100, '金山区', 2, 0, 3),
(310117, 310100, '松江区', 2, 0, 3),
(310118, 310100, '青浦区', 2, 0, 3),
(310119, 310100, '南汇区', 2, 0, 3),
(310120, 310100, '奉贤区', 2, 0, 3),
(310152, 310100, '川沙区', 2, 0, 3),
(310230, 310200, '崇明县', 2, 0, 3),
(310231, 310100, '其它区', 2, 0, 3),
(320000, 0, '江苏省', 2, 0, 1),
(320100, 320000, '南京市', 2, 0, 2),
(320102, 320100, '玄武区', 2, 0, 3),
(320103, 320100, '白下区', 2, 0, 3),
(320104, 320100, '秦淮区', 2, 0, 3),
(320105, 320100, '建邺区', 2, 0, 3),
(320106, 320100, '鼓楼区', 2, 0, 3),
(320107, 320100, '下关区', 2, 0, 3),
(320111, 320100, '浦口区', 2, 0, 3),
(320113, 320100, '栖霞区', 2, 0, 3),
(320114, 320100, '雨花台区', 2, 0, 3),
(320115, 320100, '江宁区', 2, 0, 3),
(320116, 320100, '六合区', 2, 0, 3),
(320117, 320100, '溧水区', 2, 0, 3),
(320118, 320100, '高淳区', 2, 0, 3),
(320124, 320100, '溧水县', 2, 0, 3),
(320125, 320100, '高淳县', 2, 0, 3),
(320126, 320100, '其它区', 2, 0, 3),
(320200, 320000, '无锡市', 2, 0, 2),
(320202, 320200, '崇安区', 2, 0, 3),
(320203, 320200, '南长区', 2, 0, 3),
(320204, 320200, '北塘区', 2, 0, 3),
(320205, 320200, '锡山区', 2, 0, 3),
(320206, 320200, '惠山区', 2, 0, 3),
(320211, 320200, '滨湖区', 2, 0, 3),
(320281, 320200, '江阴市', 2, 0, 3),
(320282, 320200, '宜兴市', 2, 0, 3),
(320296, 320200, '新区', 2, 0, 3),
(320297, 320200, '其它区', 2, 0, 3),
(320300, 320000, '徐州市', 2, 0, 2),
(320302, 320300, '鼓楼区', 2, 0, 3),
(320303, 320300, '云龙区', 2, 0, 3),
(320304, 320300, '九里区', 2, 0, 3),
(320305, 320300, '贾汪区', 2, 0, 3),
(320311, 320300, '泉山区', 2, 0, 3),
(320312, 320300, '铜山区', 2, 0, 3),
(320321, 320300, '丰县', 2, 0, 3),
(320322, 320300, '沛县', 2, 0, 3),
(320323, 320300, '铜山县', 2, 0, 3),
(320324, 320300, '睢宁县', 2, 0, 3),
(320381, 320300, '新沂市', 2, 0, 3),
(320382, 320300, '邳州市', 2, 0, 3),
(320383, 320300, '其它区', 2, 0, 3),
(320400, 320000, '常州市', 2, 0, 2),
(320402, 320400, '天宁区', 2, 0, 3),
(320404, 320400, '钟楼区', 2, 0, 3),
(320405, 320400, '戚墅堰区', 2, 0, 3),
(320411, 320400, '新北区', 2, 0, 3),
(320412, 320400, '武进区', 2, 0, 3),
(320481, 320400, '溧阳市', 2, 0, 3),
(320482, 320400, '金坛市', 2, 0, 3),
(320483, 320400, '其它区', 2, 0, 3),
(320500, 320000, '苏州市', 2, 0, 2),
(320502, 320500, '沧浪区', 2, 0, 3),
(320503, 320500, '平江区', 2, 0, 3),
(320504, 320500, '金阊区', 2, 0, 3),
(320505, 320500, '虎丘区', 2, 0, 3),
(320506, 320500, '吴中区', 2, 0, 3),
(320507, 320500, '相城区', 2, 0, 3),
(320508, 320500, '姑苏区', 2, 0, 3),
(320509, 320500, '吴江区', 2, 0, 3),
(320581, 320500, '常熟市', 2, 0, 3),
(320582, 320500, '张家港市', 2, 0, 3),
(320583, 320500, '昆山市', 2, 0, 3),
(320584, 320500, '吴江市', 2, 0, 3),
(320585, 320500, '太仓市', 2, 0, 3),
(320594, 320500, '新区', 2, 0, 3),
(320595, 320500, '园区', 2, 0, 3),
(320596, 320500, '其它区', 2, 0, 3),
(320600, 320000, '南通市', 2, 0, 2),
(320602, 320600, '崇川区', 2, 0, 3),
(320611, 320600, '港闸区', 2, 0, 3),
(320612, 320600, '通州区', 2, 0, 3),
(320621, 320600, '海安县', 2, 0, 3),
(320623, 320600, '如东县', 2, 0, 3),
(320681, 320600, '启东市', 2, 0, 3),
(320682, 320600, '如皋市', 2, 0, 3),
(320683, 320600, '通州市', 2, 0, 3),
(320684, 320600, '海门市', 2, 0, 3),
(320693, 320600, '开发区', 2, 0, 3),
(320694, 320600, '其它区', 2, 0, 3),
(320700, 320000, '连云港市', 2, 0, 2),
(320703, 320700, '连云区', 2, 0, 3),
(320705, 320700, '新浦区', 2, 0, 3),
(320706, 320700, '海州区', 2, 0, 3),
(320707, 320700, '赣榆区', 2, 0, 3),
(320721, 320700, '赣榆县', 2, 0, 3),
(320722, 320700, '东海县', 2, 0, 3),
(320723, 320700, '灌云县', 2, 0, 3),
(320724, 320700, '灌南县', 2, 0, 3),
(320725, 320700, '其它区', 2, 0, 3),
(320800, 320000, '淮安市', 2, 0, 2),
(320802, 320800, '清河区', 2, 0, 3),
(320803, 320800, '淮安区', 2, 0, 3),
(320804, 320800, '淮阴区', 2, 0, 3),
(320811, 320800, '清浦区', 2, 0, 3),
(320826, 320800, '涟水县', 2, 0, 3),
(320829, 320800, '洪泽县', 2, 0, 3),
(320830, 320800, '盱眙县', 2, 0, 3),
(320831, 320800, '金湖县', 2, 0, 3),
(320832, 320800, '其它区', 2, 0, 3),
(320900, 320000, '盐城市', 2, 0, 2),
(320902, 320900, '亭湖区', 2, 0, 3),
(320903, 320900, '盐都区', 2, 0, 3),
(320921, 320900, '响水县', 2, 0, 3),
(320922, 320900, '滨海县', 2, 0, 3),
(320923, 320900, '阜宁县', 2, 0, 3),
(320924, 320900, '射阳县', 2, 0, 3),
(320925, 320900, '建湖县', 2, 0, 3),
(320981, 320900, '东台市', 2, 0, 3),
(320982, 320900, '大丰市', 2, 0, 3),
(320983, 320900, '其它区', 2, 0, 3),
(321000, 320000, '扬州市', 2, 0, 2),
(321002, 321000, '广陵区', 2, 0, 3),
(321003, 321000, '邗江区', 2, 0, 3),
(321011, 321000, '维扬区', 2, 0, 3),
(321012, 321000, '江都区', 2, 0, 3),
(321023, 321000, '宝应县', 2, 0, 3),
(321081, 321000, '仪征市', 2, 0, 3),
(321084, 321000, '高邮市', 2, 0, 3),
(321088, 321000, '江都市', 2, 0, 3),
(321092, 321000, '经济开发区', 2, 0, 3),
(321093, 321000, '其它区', 2, 0, 3),
(321100, 320000, '镇江市', 2, 0, 2),
(321102, 321100, '京口区', 2, 0, 3),
(321111, 321100, '润州区', 2, 0, 3),
(321112, 321100, '丹徒区', 2, 0, 3),
(321181, 321100, '丹阳市', 2, 0, 3),
(321182, 321100, '扬中市', 2, 0, 3),
(321183, 321100, '句容市', 2, 0, 3),
(321184, 321100, '其它区', 2, 0, 3),
(321200, 320000, '泰州市', 2, 0, 2),
(321202, 321200, '海陵区', 2, 0, 3),
(321203, 321200, '高港区', 2, 0, 3),
(321204, 321200, '姜堰区', 2, 0, 3),
(321281, 321200, '兴化市', 2, 0, 3),
(321282, 321200, '靖江市', 2, 0, 3),
(321283, 321200, '泰兴市', 2, 0, 3),
(321284, 321200, '姜堰市', 2, 0, 3),
(321285, 321200, '其它区', 2, 0, 3),
(321300, 320000, '宿迁市', 2, 0, 2),
(321302, 321300, '宿城区', 2, 0, 3),
(321311, 321300, '宿豫区', 2, 0, 3),
(321322, 321300, '沭阳县', 2, 0, 3),
(321323, 321300, '泗阳县', 2, 0, 3),
(321324, 321300, '泗洪县', 2, 0, 3),
(321325, 321300, '其它区', 2, 0, 3),
(330000, 0, '浙江省', 2, 0, 1),
(330100, 330000, '杭州市', 2, 0, 2),
(330102, 330100, '上城区', 2, 0, 3),
(330103, 330100, '下城区', 2, 0, 3),
(330104, 330100, '江干区', 2, 0, 3),
(330105, 330100, '拱墅区', 2, 0, 3),
(330106, 330100, '西湖区', 2, 0, 3),
(330108, 330100, '滨江区', 2, 0, 3),
(330109, 330100, '萧山区', 2, 0, 3),
(330110, 330100, '余杭区', 2, 0, 3),
(330111, 330100, '富阳区', 2, 0, 3),
(330122, 330100, '桐庐县', 2, 0, 3),
(330127, 330100, '淳安县', 2, 0, 3),
(330182, 330100, '建德市', 2, 0, 3),
(330183, 330100, '富阳市', 2, 0, 3),
(330185, 330100, '临安市', 2, 0, 3),
(330186, 330100, '其它区', 2, 0, 3),
(330200, 330000, '宁波市', 2, 0, 2),
(330203, 330200, '海曙区', 2, 0, 3),
(330204, 330200, '江东区', 2, 0, 3),
(330205, 330200, '江北区', 2, 0, 3),
(330206, 330200, '北仑区', 2, 0, 3),
(330211, 330200, '镇海区', 2, 0, 3),
(330212, 330200, '鄞州区', 2, 0, 3),
(330225, 330200, '象山县', 2, 0, 3),
(330226, 330200, '宁海县', 2, 0, 3),
(330281, 330200, '余姚市', 2, 0, 3),
(330282, 330200, '慈溪市', 2, 0, 3),
(330283, 330200, '奉化市', 2, 0, 3),
(330284, 330200, '其它区', 2, 0, 3),
(330300, 330000, '温州市', 2, 0, 2),
(330302, 330300, '鹿城区', 2, 0, 3),
(330303, 330300, '龙湾区', 2, 0, 3),
(330304, 330300, '瓯海区', 2, 0, 3),
(330322, 330300, '洞头县', 2, 0, 3),
(330324, 330300, '永嘉县', 2, 0, 3),
(330326, 330300, '平阳县', 2, 0, 3),
(330327, 330300, '苍南县', 2, 0, 3),
(330328, 330300, '文成县', 2, 0, 3),
(330329, 330300, '泰顺县', 2, 0, 3),
(330381, 330300, '瑞安市', 2, 0, 3),
(330382, 330300, '乐清市', 2, 0, 3),
(330383, 330300, '其它区', 2, 0, 3),
(330400, 330000, '嘉兴市', 2, 0, 2),
(330402, 330400, '南湖区', 2, 0, 3),
(330411, 330400, '秀洲区', 2, 0, 3),
(330421, 330400, '嘉善县', 2, 0, 3),
(330424, 330400, '海盐县', 2, 0, 3),
(330481, 330400, '海宁市', 2, 0, 3),
(330482, 330400, '平湖市', 2, 0, 3),
(330483, 330400, '桐乡市', 2, 0, 3),
(330484, 330400, '其它区', 2, 0, 3),
(330500, 330000, '湖州市', 2, 0, 2),
(330502, 330500, '吴兴区', 2, 0, 3),
(330503, 330500, '南浔区', 2, 0, 3),
(330521, 330500, '德清县', 2, 0, 3),
(330522, 330500, '长兴县', 2, 0, 3),
(330523, 330500, '安吉县', 2, 0, 3),
(330524, 330500, '其它区', 2, 0, 3),
(330600, 330000, '绍兴市', 2, 0, 2),
(330602, 330600, '越城区', 2, 0, 3),
(330603, 330600, '柯桥区', 2, 0, 3),
(330604, 330600, '上虞区', 2, 0, 3),
(330621, 330600, '绍兴县', 2, 0, 3),
(330624, 330600, '新昌县', 2, 0, 3),
(330681, 330600, '诸暨市', 2, 0, 3),
(330682, 330600, '上虞市', 2, 0, 3),
(330683, 330600, '嵊州市', 2, 0, 3),
(330684, 330600, '其它区', 2, 0, 3),
(330700, 330000, '金华市', 2, 0, 2),
(330702, 330700, '婺城区', 2, 0, 3),
(330703, 330700, '金东区', 2, 0, 3),
(330723, 330700, '武义县', 2, 0, 3),
(330726, 330700, '浦江县', 2, 0, 3),
(330727, 330700, '磐安县', 2, 0, 3),
(330781, 330700, '兰溪市', 2, 0, 3),
(330782, 330700, '义乌市', 2, 0, 3),
(330783, 330700, '东阳市', 2, 0, 3),
(330784, 330700, '永康市', 2, 0, 3),
(330785, 330700, '其它区', 2, 0, 3),
(330800, 330000, '衢州市', 2, 0, 2),
(330802, 330800, '柯城区', 2, 0, 3),
(330803, 330800, '衢江区', 2, 0, 3),
(330822, 330800, '常山县', 2, 0, 3),
(330824, 330800, '开化县', 2, 0, 3),
(330825, 330800, '龙游县', 2, 0, 3),
(330881, 330800, '江山市', 2, 0, 3),
(330882, 330800, '其它区', 2, 0, 3),
(330900, 330000, '舟山市', 2, 0, 2),
(330902, 330900, '定海区', 2, 0, 3),
(330903, 330900, '普陀区', 2, 0, 3),
(330921, 330900, '岱山县', 2, 0, 3),
(330922, 330900, '嵊泗县', 2, 0, 3),
(330923, 330900, '其它区', 2, 0, 3),
(331000, 330000, '台州市', 2, 0, 2),
(331002, 331000, '椒江区', 2, 0, 3),
(331003, 331000, '黄岩区', 2, 0, 3),
(331004, 331000, '路桥区', 2, 0, 3),
(331021, 331000, '玉环县', 2, 0, 3),
(331022, 331000, '三门县', 2, 0, 3),
(331023, 331000, '天台县', 2, 0, 3),
(331024, 331000, '仙居县', 2, 0, 3),
(331081, 331000, '温岭市', 2, 0, 3),
(331082, 331000, '临海市', 2, 0, 3),
(331083, 331000, '其它区', 2, 0, 3),
(331100, 330000, '丽水市', 2, 0, 2),
(331102, 331100, '莲都区', 2, 0, 3),
(331121, 331100, '青田县', 2, 0, 3),
(331122, 331100, '缙云县', 2, 0, 3),
(331123, 331100, '遂昌县', 2, 0, 3),
(331124, 331100, '松阳县', 2, 0, 3),
(331125, 331100, '云和县', 2, 0, 3),
(331126, 331100, '庆元县', 2, 0, 3),
(331127, 331100, '景宁畲族自治县', 2, 0, 3),
(331181, 331100, '龙泉市', 2, 0, 3),
(331182, 331100, '其它区', 2, 0, 3),
(340000, 0, '安徽省', 2, 0, 1),
(340100, 340000, '合肥市', 2, 0, 2),
(340102, 340100, '瑶海区', 2, 0, 3),
(340103, 340100, '庐阳区', 2, 0, 3),
(340104, 340100, '蜀山区', 2, 0, 3),
(340111, 340100, '包河区', 2, 0, 3),
(340121, 340100, '长丰县', 2, 0, 3),
(340122, 340100, '肥东县', 2, 0, 3),
(340123, 340100, '肥西县', 2, 0, 3),
(340124, 340100, '庐江县', 2, 0, 3),
(340151, 340100, '高新区', 2, 0, 3),
(340181, 340100, '巢湖市', 2, 0, 3),
(340191, 340100, '中区', 2, 0, 3),
(340192, 340100, '其它区', 2, 0, 3),
(340200, 340000, '芜湖市', 2, 0, 2),
(340202, 340200, '镜湖区', 2, 0, 3),
(340203, 340200, '弋江区', 2, 0, 3),
(340207, 340200, '鸠江区', 2, 0, 3),
(340208, 340200, '三山区', 2, 0, 3),
(340221, 340200, '芜湖县', 2, 0, 3),
(340222, 340200, '繁昌县', 2, 0, 3),
(340223, 340200, '南陵县', 2, 0, 3),
(340224, 340200, '其它区', 2, 0, 3),
(340225, 340200, '无为县', 2, 0, 3),
(340300, 340000, '蚌埠市', 2, 0, 2),
(340302, 340300, '龙子湖区', 2, 0, 3),
(340303, 340300, '蚌山区', 2, 0, 3),
(340304, 340300, '禹会区', 2, 0, 3),
(340311, 340300, '淮上区', 2, 0, 3),
(340321, 340300, '怀远县', 2, 0, 3),
(340322, 340300, '五河县', 2, 0, 3),
(340323, 340300, '固镇县', 2, 0, 3),
(340324, 340300, '其它区', 2, 0, 3),
(340400, 340000, '淮南市', 2, 0, 2),
(340402, 340400, '大通区', 2, 0, 3),
(340403, 340400, '田家庵区', 2, 0, 3),
(340404, 340400, '谢家集区', 2, 0, 3),
(340405, 340400, '八公山区', 2, 0, 3),
(340406, 340400, '潘集区', 2, 0, 3),
(340421, 340400, '凤台县', 2, 0, 3),
(340422, 340400, '其它区', 2, 0, 3),
(340500, 340000, '马鞍山市', 2, 0, 2),
(340502, 340500, '金家庄区', 2, 0, 3),
(340503, 340500, '花山区', 2, 0, 3),
(340504, 340500, '雨山区', 2, 0, 3),
(340506, 340500, '博望区', 2, 0, 3),
(340521, 340500, '当涂县', 2, 0, 3),
(340522, 340500, '含山县', 2, 0, 3),
(340523, 340500, '和县', 2, 0, 3),
(340600, 340000, '淮北市', 2, 0, 2),
(340602, 340600, '杜集区', 2, 0, 3),
(340603, 340600, '相山区', 2, 0, 3),
(340604, 340600, '烈山区', 2, 0, 3),
(340621, 340600, '濉溪县', 2, 0, 3),
(340622, 340600, '其它区', 2, 0, 3),
(340700, 340000, '铜陵市', 2, 0, 2),
(340702, 340700, '铜官山区', 2, 0, 3),
(340703, 340700, '狮子山区', 2, 0, 3),
(340711, 340700, '郊区', 2, 0, 3),
(340721, 340700, '铜陵县', 2, 0, 3),
(340722, 340700, '其它区', 2, 0, 3),
(340800, 340000, '安庆市', 2, 0, 2),
(340802, 340800, '迎江区', 2, 0, 3),
(340803, 340800, '大观区', 2, 0, 3),
(340811, 340800, '宜秀区', 2, 0, 3),
(340822, 340800, '怀宁县', 2, 0, 3),
(340823, 340800, '枞阳县', 2, 0, 3),
(340824, 340800, '潜山县', 2, 0, 3),
(340825, 340800, '太湖县', 2, 0, 3),
(340826, 340800, '宿松县', 2, 0, 3),
(340827, 340800, '望江县', 2, 0, 3),
(340828, 340800, '岳西县', 2, 0, 3),
(340881, 340800, '桐城市', 2, 0, 3),
(340882, 340800, '其它区', 2, 0, 3),
(341000, 340000, '黄山市', 2, 0, 2),
(341002, 341000, '屯溪区', 2, 0, 3),
(341003, 341000, '黄山区', 2, 0, 3),
(341004, 341000, '徽州区', 2, 0, 3),
(341021, 341000, '歙县', 2, 0, 3),
(341022, 341000, '休宁县', 2, 0, 3),
(341023, 341000, '黟县', 2, 0, 3),
(341024, 341000, '祁门县', 2, 0, 3),
(341025, 341000, '其它区', 2, 0, 3),
(341100, 340000, '滁州市', 2, 0, 2),
(341102, 341100, '琅琊区', 2, 0, 3),
(341103, 341100, '南谯区', 2, 0, 3),
(341122, 341100, '来安县', 2, 0, 3),
(341124, 341100, '全椒县', 2, 0, 3),
(341125, 341100, '定远县', 2, 0, 3),
(341126, 341100, '凤阳县', 2, 0, 3),
(341181, 341100, '天长市', 2, 0, 3),
(341182, 341100, '明光市', 2, 0, 3),
(341183, 341100, '其它区', 2, 0, 3),
(341200, 340000, '阜阳市', 2, 0, 2),
(341202, 341200, '颍州区', 2, 0, 3),
(341203, 341200, '颍东区', 2, 0, 3),
(341204, 341200, '颍泉区', 2, 0, 3),
(341221, 341200, '临泉县', 2, 0, 3),
(341222, 341200, '太和县', 2, 0, 3),
(341225, 341200, '阜南县', 2, 0, 3),
(341226, 341200, '颍上县', 2, 0, 3),
(341282, 341200, '界首市', 2, 0, 3),
(341283, 341200, '其它区', 2, 0, 3);
INSERT INTO `ims_weliam_shiftcar_address` (`id`, `pid`, `name`, `visible`, `displayorder`, `level`) VALUES
(341300, 340000, '宿州市', 2, 0, 2),
(341302, 341300, '埇桥区', 2, 0, 3),
(341321, 341300, '砀山县', 2, 0, 3),
(341322, 341300, '萧县', 2, 0, 3),
(341323, 341300, '灵璧县', 2, 0, 3),
(341324, 341300, '泗县', 2, 0, 3),
(341325, 341300, '其它区', 2, 0, 3),
(341400, 340100, '巢湖市', 2, 0, 3),
(341402, 340100, '居巢区', 2, 0, 3),
(341421, 340100, '庐江县', 2, 0, 3),
(341422, 340200, '无为县', 2, 0, 3),
(341423, 340500, '含山县', 2, 0, 3),
(341424, 340500, '和县', 2, 0, 3),
(341500, 340000, '六安市', 2, 0, 2),
(341502, 341500, '金安区', 2, 0, 3),
(341503, 341500, '裕安区', 2, 0, 3),
(341521, 341500, '寿县', 2, 0, 3),
(341522, 341500, '霍邱县', 2, 0, 3),
(341523, 341500, '舒城县', 2, 0, 3),
(341524, 341500, '金寨县', 2, 0, 3),
(341525, 341500, '霍山县', 2, 0, 3),
(341526, 341500, '其它区', 2, 0, 3),
(341600, 340000, '亳州市', 2, 0, 2),
(341602, 341600, '谯城区', 2, 0, 3),
(341621, 341600, '涡阳县', 2, 0, 3),
(341622, 341600, '蒙城县', 2, 0, 3),
(341623, 341600, '利辛县', 2, 0, 3),
(341624, 341600, '其它区', 2, 0, 3),
(341700, 340000, '池州市', 2, 0, 2),
(341702, 341700, '贵池区', 2, 0, 3),
(341721, 341700, '东至县', 2, 0, 3),
(341722, 341700, '石台县', 2, 0, 3),
(341723, 341700, '青阳县', 2, 0, 3),
(341724, 341700, '其它区', 2, 0, 3),
(341800, 340000, '宣城市', 2, 0, 2),
(341802, 341800, '宣州区', 2, 0, 3),
(341821, 341800, '郎溪县', 2, 0, 3),
(341822, 341800, '广德县', 2, 0, 3),
(341823, 341800, '泾县', 2, 0, 3),
(341824, 341800, '绩溪县', 2, 0, 3),
(341825, 341800, '旌德县', 2, 0, 3),
(341881, 341800, '宁国市', 2, 0, 3),
(341882, 341800, '其它区', 2, 0, 3),
(350000, 0, '福建省', 2, 0, 1),
(350100, 350000, '福州市', 2, 0, 2),
(350102, 350100, '鼓楼区', 2, 0, 3),
(350103, 350100, '台江区', 2, 0, 3),
(350104, 350100, '仓山区', 2, 0, 3),
(350105, 350100, '马尾区', 2, 0, 3),
(350111, 350100, '晋安区', 2, 0, 3),
(350121, 350100, '闽侯县', 2, 0, 3),
(350122, 350100, '连江县', 2, 0, 3),
(350123, 350100, '罗源县', 2, 0, 3),
(350124, 350100, '闽清县', 2, 0, 3),
(350125, 350100, '永泰县', 2, 0, 3),
(350128, 350100, '平潭县', 2, 0, 3),
(350181, 350100, '福清市', 2, 0, 3),
(350182, 350100, '长乐市', 2, 0, 3),
(350183, 350100, '其它区', 2, 0, 3),
(350200, 350000, '厦门市', 2, 0, 2),
(350203, 350200, '思明区', 2, 0, 3),
(350205, 350200, '海沧区', 2, 0, 3),
(350206, 350200, '湖里区', 2, 0, 3),
(350211, 350200, '集美区', 2, 0, 3),
(350212, 350200, '同安区', 2, 0, 3),
(350213, 350200, '翔安区', 2, 0, 3),
(350214, 350200, '其它区', 2, 0, 3),
(350300, 350000, '莆田市', 2, 0, 2),
(350302, 350300, '城厢区', 2, 0, 3),
(350303, 350300, '涵江区', 2, 0, 3),
(350304, 350300, '荔城区', 2, 0, 3),
(350305, 350300, '秀屿区', 2, 0, 3),
(350322, 350300, '仙游县', 2, 0, 3),
(350323, 350300, '其它区', 2, 0, 3),
(350400, 350000, '三明市', 2, 0, 2),
(350402, 350400, '梅列区', 2, 0, 3),
(350403, 350400, '三元区', 2, 0, 3),
(350421, 350400, '明溪县', 2, 0, 3),
(350423, 350400, '清流县', 2, 0, 3),
(350424, 350400, '宁化县', 2, 0, 3),
(350425, 350400, '大田县', 2, 0, 3),
(350426, 350400, '尤溪县', 2, 0, 3),
(350427, 350400, '沙县', 2, 0, 3),
(350428, 350400, '将乐县', 2, 0, 3),
(350429, 350400, '泰宁县', 2, 0, 3),
(350430, 350400, '建宁县', 2, 0, 3),
(350481, 350400, '永安市', 2, 0, 3),
(350482, 350400, '其它区', 2, 0, 3),
(350500, 350000, '泉州市', 2, 0, 2),
(350502, 350500, '鲤城区', 2, 0, 3),
(350503, 350500, '丰泽区', 2, 0, 3),
(350504, 350500, '洛江区', 2, 0, 3),
(350505, 350500, '泉港区', 2, 0, 3),
(350521, 350500, '惠安县', 2, 0, 3),
(350524, 350500, '安溪县', 2, 0, 3),
(350525, 350500, '永春县', 2, 0, 3),
(350526, 350500, '德化县', 2, 0, 3),
(350527, 350500, '金门县', 2, 0, 3),
(350581, 350500, '石狮市', 2, 0, 3),
(350582, 350500, '晋江市', 2, 0, 3),
(350583, 350500, '南安市', 2, 0, 3),
(350584, 350500, '其它区', 2, 0, 3),
(350600, 350000, '漳州市', 2, 0, 2),
(350602, 350600, '芗城区', 2, 0, 3),
(350603, 350600, '龙文区', 2, 0, 3),
(350622, 350600, '云霄县', 2, 0, 3),
(350623, 350600, '漳浦县', 2, 0, 3),
(350624, 350600, '诏安县', 2, 0, 3),
(350625, 350600, '长泰县', 2, 0, 3),
(350626, 350600, '东山县', 2, 0, 3),
(350627, 350600, '南靖县', 2, 0, 3),
(350628, 350600, '平和县', 2, 0, 3),
(350629, 350600, '华安县', 2, 0, 3),
(350681, 350600, '龙海市', 2, 0, 3),
(350682, 350600, '其它区', 2, 0, 3),
(350700, 350000, '南平市', 2, 0, 2),
(350702, 350700, '延平区', 2, 0, 3),
(350703, 350700, '建阳区', 2, 0, 3),
(350721, 350700, '顺昌县', 2, 0, 3),
(350722, 350700, '浦城县', 2, 0, 3),
(350723, 350700, '光泽县', 2, 0, 3),
(350724, 350700, '松溪县', 2, 0, 3),
(350725, 350700, '政和县', 2, 0, 3),
(350781, 350700, '邵武市', 2, 0, 3),
(350782, 350700, '武夷山市', 2, 0, 3),
(350783, 350700, '建瓯市', 2, 0, 3),
(350784, 350700, '建阳市', 2, 0, 3),
(350785, 350700, '其它区', 2, 0, 3),
(350800, 350000, '龙岩市', 2, 0, 2),
(350802, 350800, '新罗区', 2, 0, 3),
(350803, 350800, '永定区', 2, 0, 3),
(350821, 350800, '长汀县', 2, 0, 3),
(350822, 350800, '永定县', 2, 0, 3),
(350823, 350800, '上杭县', 2, 0, 3),
(350824, 350800, '武平县', 2, 0, 3),
(350825, 350800, '连城县', 2, 0, 3),
(350881, 350800, '漳平市', 2, 0, 3),
(350882, 350800, '其它区', 2, 0, 3),
(350900, 350000, '宁德市', 2, 0, 2),
(350902, 350900, '蕉城区', 2, 0, 3),
(350921, 350900, '霞浦县', 2, 0, 3),
(350922, 350900, '古田县', 2, 0, 3),
(350923, 350900, '屏南县', 2, 0, 3),
(350924, 350900, '寿宁县', 2, 0, 3),
(350925, 350900, '周宁县', 2, 0, 3),
(350926, 350900, '柘荣县', 2, 0, 3),
(350981, 350900, '福安市', 2, 0, 3),
(350982, 350900, '福鼎市', 2, 0, 3),
(350983, 350900, '其它区', 2, 0, 3),
(360000, 0, '江西省', 2, 0, 1),
(360100, 360000, '南昌市', 2, 0, 2),
(360102, 360100, '东湖区', 2, 0, 3),
(360103, 360100, '西湖区', 2, 0, 3),
(360104, 360100, '青云谱区', 2, 0, 3),
(360105, 360100, '湾里区', 2, 0, 3),
(360111, 360100, '青山湖区', 2, 0, 3),
(360121, 360100, '南昌县', 2, 0, 3),
(360122, 360100, '新建县', 2, 0, 3),
(360123, 360100, '安义县', 2, 0, 3),
(360124, 360100, '进贤县', 2, 0, 3),
(360125, 360100, '红谷滩新区', 2, 0, 3),
(360126, 360100, '经济技术开发区', 2, 0, 3),
(360127, 360100, '昌北区', 2, 0, 3),
(360128, 360100, '其它区', 2, 0, 3),
(360200, 360000, '景德镇市', 2, 0, 2),
(360202, 360200, '昌江区', 2, 0, 3),
(360203, 360200, '珠山区', 2, 0, 3),
(360222, 360200, '浮梁县', 2, 0, 3),
(360281, 360200, '乐平市', 2, 0, 3),
(360282, 360200, '其它区', 2, 0, 3),
(360300, 360000, '萍乡市', 2, 0, 2),
(360302, 360300, '安源区', 2, 0, 3),
(360313, 360300, '湘东区', 2, 0, 3),
(360321, 360300, '莲花县', 2, 0, 3),
(360322, 360300, '上栗县', 2, 0, 3),
(360323, 360300, '芦溪县', 2, 0, 3),
(360324, 360300, '其它区', 2, 0, 3),
(360400, 360000, '九江市', 2, 0, 2),
(360402, 360400, '庐山区', 2, 0, 3),
(360403, 360400, '浔阳区', 2, 0, 3),
(360421, 360400, '九江县', 2, 0, 3),
(360423, 360400, '武宁县', 2, 0, 3),
(360424, 360400, '修水县', 2, 0, 3),
(360425, 360400, '永修县', 2, 0, 3),
(360426, 360400, '德安县', 2, 0, 3),
(360427, 360400, '星子县', 2, 0, 3),
(360428, 360400, '都昌县', 2, 0, 3),
(360429, 360400, '湖口县', 2, 0, 3),
(360430, 360400, '彭泽县', 2, 0, 3),
(360481, 360400, '瑞昌市', 2, 0, 3),
(360482, 360400, '共青城市', 2, 0, 3),
(360500, 360000, '新余市', 2, 0, 2),
(360502, 360500, '渝水区', 2, 0, 3),
(360521, 360500, '分宜县', 2, 0, 3),
(360522, 360500, '其它区', 2, 0, 3),
(360600, 360000, '鹰潭市', 2, 0, 2),
(360602, 360600, '月湖区', 2, 0, 3),
(360622, 360600, '余江县', 2, 0, 3),
(360681, 360600, '贵溪市', 2, 0, 3),
(360682, 360600, '其它区', 2, 0, 3),
(360700, 360000, '赣州市', 2, 0, 2),
(360702, 360700, '章贡区', 2, 0, 3),
(360703, 360700, '南康区', 2, 0, 3),
(360721, 360700, '赣县', 2, 0, 3),
(360722, 360700, '信丰县', 2, 0, 3),
(360723, 360700, '大余县', 2, 0, 3),
(360724, 360700, '上犹县', 2, 0, 3),
(360725, 360700, '崇义县', 2, 0, 3),
(360726, 360700, '安远县', 2, 0, 3),
(360727, 360700, '龙南县', 2, 0, 3),
(360728, 360700, '定南县', 2, 0, 3),
(360729, 360700, '全南县', 2, 0, 3),
(360730, 360700, '宁都县', 2, 0, 3),
(360731, 360700, '于都县', 2, 0, 3),
(360732, 360700, '兴国县', 2, 0, 3),
(360733, 360700, '会昌县', 2, 0, 3),
(360734, 360700, '寻乌县', 2, 0, 3),
(360735, 360700, '石城县', 2, 0, 3),
(360751, 360700, '黄金区', 2, 0, 3),
(360781, 360700, '瑞金市', 2, 0, 3),
(360782, 360700, '南康市', 2, 0, 3),
(360783, 360700, '其它区', 2, 0, 3),
(360800, 360000, '吉安市', 2, 0, 2),
(360802, 360800, '吉州区', 2, 0, 3),
(360803, 360800, '青原区', 2, 0, 3),
(360821, 360800, '吉安县', 2, 0, 3),
(360822, 360800, '吉水县', 2, 0, 3),
(360823, 360800, '峡江县', 2, 0, 3),
(360824, 360800, '新干县', 2, 0, 3),
(360825, 360800, '永丰县', 2, 0, 3),
(360826, 360800, '泰和县', 2, 0, 3),
(360827, 360800, '遂川县', 2, 0, 3),
(360828, 360800, '万安县', 2, 0, 3),
(360829, 360800, '安福县', 2, 0, 3),
(360830, 360800, '永新县', 2, 0, 3),
(360881, 360800, '井冈山市', 2, 0, 3),
(360882, 360800, '其它区', 2, 0, 3),
(360900, 360000, '宜春市', 2, 0, 2),
(360902, 360900, '袁州区', 2, 0, 3),
(360921, 360900, '奉新县', 2, 0, 3),
(360922, 360900, '万载县', 2, 0, 3),
(360923, 360900, '上高县', 2, 0, 3),
(360924, 360900, '宜丰县', 2, 0, 3),
(360925, 360900, '靖安县', 2, 0, 3),
(360926, 360900, '铜鼓县', 2, 0, 3),
(360981, 360900, '丰城市', 2, 0, 3),
(360982, 360900, '樟树市', 2, 0, 3),
(360983, 360900, '高安市', 2, 0, 3),
(360984, 360900, '其它区', 2, 0, 3),
(361000, 360000, '抚州市', 2, 0, 2),
(361002, 361000, '临川区', 2, 0, 3),
(361021, 361000, '南城县', 2, 0, 3),
(361022, 361000, '黎川县', 2, 0, 3),
(361023, 361000, '南丰县', 2, 0, 3),
(361024, 361000, '崇仁县', 2, 0, 3),
(361025, 361000, '乐安县', 2, 0, 3),
(361026, 361000, '宜黄县', 2, 0, 3),
(361027, 361000, '金溪县', 2, 0, 3),
(361028, 361000, '资溪县', 2, 0, 3),
(361029, 361000, '东乡县', 2, 0, 3),
(361030, 361000, '广昌县', 2, 0, 3),
(361031, 361000, '其它区', 2, 0, 3),
(361100, 360000, '上饶市', 2, 0, 2),
(361102, 361100, '信州区', 2, 0, 3),
(361103, 361100, '广丰区', 2, 0, 3),
(361121, 361100, '上饶县', 2, 0, 3),
(361122, 361100, '广丰县', 2, 0, 3),
(361123, 361100, '玉山县', 2, 0, 3),
(361124, 361100, '铅山县', 2, 0, 3),
(361125, 361100, '横峰县', 2, 0, 3),
(361126, 361100, '弋阳县', 2, 0, 3),
(361127, 361100, '余干县', 2, 0, 3),
(361128, 361100, '鄱阳县', 2, 0, 3),
(361129, 361100, '万年县', 2, 0, 3),
(361130, 361100, '婺源县', 2, 0, 3),
(361181, 361100, '德兴市', 2, 0, 3),
(361182, 361100, '其它区', 2, 0, 3),
(370000, 0, '山东省', 2, 0, 1),
(370100, 370000, '济南市', 2, 0, 2),
(370102, 370100, '历下区', 2, 0, 3),
(370103, 370100, '市中区', 2, 0, 3),
(370104, 370100, '槐荫区', 2, 0, 3),
(370105, 370100, '天桥区', 2, 0, 3),
(370112, 370100, '历城区', 2, 0, 3),
(370113, 370100, '长清区', 2, 0, 3),
(370124, 370100, '平阴县', 2, 0, 3),
(370125, 370100, '济阳县', 2, 0, 3),
(370126, 370100, '商河县', 2, 0, 3),
(370181, 370100, '章丘市', 2, 0, 3),
(370182, 370100, '其它区', 2, 0, 3),
(370200, 370000, '青岛市', 2, 0, 2),
(370202, 370200, '市南区', 2, 0, 3),
(370203, 370200, '市北区', 2, 0, 3),
(370205, 370200, '四方区', 2, 0, 3),
(370211, 370200, '黄岛区', 2, 0, 3),
(370212, 370200, '崂山区', 2, 0, 3),
(370213, 370200, '李沧区', 2, 0, 3),
(370214, 370200, '城阳区', 2, 0, 3),
(370251, 370200, '开发区', 2, 0, 3),
(370281, 370200, '胶州市', 2, 0, 3),
(370282, 370200, '即墨市', 2, 0, 3),
(370283, 370200, '平度市', 2, 0, 3),
(370284, 370200, '胶南市', 2, 0, 3),
(370285, 370200, '莱西市', 2, 0, 3),
(370286, 370200, '其它区', 2, 0, 3),
(370300, 370000, '淄博市', 2, 0, 2),
(370302, 370300, '淄川区', 2, 0, 3),
(370303, 370300, '张店区', 2, 0, 3),
(370304, 370300, '博山区', 2, 0, 3),
(370305, 370300, '临淄区', 2, 0, 3),
(370306, 370300, '周村区', 2, 0, 3),
(370321, 370300, '桓台县', 2, 0, 3),
(370322, 370300, '高青县', 2, 0, 3),
(370323, 370300, '沂源县', 2, 0, 3),
(370324, 370300, '其它区', 2, 0, 3),
(370400, 370000, '枣庄市', 2, 0, 2),
(370402, 370400, '市中区', 2, 0, 3),
(370403, 370400, '薛城区', 2, 0, 3),
(370404, 370400, '峄城区', 2, 0, 3),
(370405, 370400, '台儿庄区', 2, 0, 3),
(370406, 370400, '山亭区', 2, 0, 3),
(370481, 370400, '滕州市', 2, 0, 3),
(370482, 370400, '其它区', 2, 0, 3),
(370500, 370000, '东营市', 2, 0, 2),
(370502, 370500, '东营区', 2, 0, 3),
(370503, 370500, '河口区', 2, 0, 3),
(370521, 370500, '垦利县', 2, 0, 3),
(370522, 370500, '利津县', 2, 0, 3),
(370523, 370500, '广饶县', 2, 0, 3),
(370589, 370500, '西城区', 2, 0, 3),
(370590, 370500, '东城区', 2, 0, 3),
(370591, 370500, '其它区', 2, 0, 3),
(370600, 370000, '烟台市', 2, 0, 2),
(370602, 370600, '芝罘区', 2, 0, 3),
(370611, 370600, '福山区', 2, 0, 3),
(370612, 370600, '牟平区', 2, 0, 3),
(370613, 370600, '莱山区', 2, 0, 3),
(370634, 370600, '长岛县', 2, 0, 3),
(370681, 370600, '龙口市', 2, 0, 3),
(370682, 370600, '莱阳市', 2, 0, 3),
(370683, 370600, '莱州市', 2, 0, 3),
(370684, 370600, '蓬莱市', 2, 0, 3),
(370685, 370600, '招远市', 2, 0, 3),
(370686, 370600, '栖霞市', 2, 0, 3),
(370687, 370600, '海阳市', 2, 0, 3),
(370688, 370600, '其它区', 2, 0, 3),
(370700, 370000, '潍坊市', 2, 0, 2),
(370702, 370700, '潍城区', 2, 0, 3),
(370703, 370700, '寒亭区', 2, 0, 3),
(370704, 370700, '坊子区', 2, 0, 3),
(370705, 370700, '奎文区', 2, 0, 3),
(370724, 370700, '临朐县', 2, 0, 3),
(370725, 370700, '昌乐县', 2, 0, 3),
(370751, 370700, '开发区', 2, 0, 3),
(370781, 370700, '青州市', 2, 0, 3),
(370782, 370700, '诸城市', 2, 0, 3),
(370783, 370700, '寿光市', 2, 0, 3),
(370784, 370700, '安丘市', 2, 0, 3),
(370785, 370700, '高密市', 2, 0, 3),
(370786, 370700, '昌邑市', 2, 0, 3),
(370787, 370700, '其它区', 2, 0, 3),
(370800, 370000, '济宁市', 2, 0, 2),
(370802, 370800, '市中区', 2, 0, 3),
(370811, 370800, '任城区', 2, 0, 3),
(370812, 370800, '兖州区', 2, 0, 3),
(370826, 370800, '微山县', 2, 0, 3),
(370827, 370800, '鱼台县', 2, 0, 3),
(370828, 370800, '金乡县', 2, 0, 3),
(370829, 370800, '嘉祥县', 2, 0, 3),
(370830, 370800, '汶上县', 2, 0, 3),
(370831, 370800, '泗水县', 2, 0, 3),
(370832, 370800, '梁山县', 2, 0, 3),
(370881, 370800, '曲阜市', 2, 0, 3),
(370882, 370800, '兖州市', 2, 0, 3),
(370883, 370800, '邹城市', 2, 0, 3),
(370884, 370800, '其它区', 2, 0, 3),
(370900, 370000, '泰安市', 2, 0, 2),
(370902, 370900, '泰山区', 2, 0, 3),
(370903, 370900, '岱岳区', 2, 0, 3),
(370911, 370900, '岱岳区', 2, 0, 3),
(370921, 370900, '宁阳县', 2, 0, 3),
(370923, 370900, '东平县', 2, 0, 3),
(370982, 370900, '新泰市', 2, 0, 3),
(370983, 370900, '肥城市', 2, 0, 3),
(370984, 370900, '其它区', 2, 0, 3),
(371000, 370000, '威海市', 2, 0, 2),
(371002, 371000, '环翠区', 2, 0, 3),
(371081, 371000, '文登市', 2, 0, 3),
(371082, 371000, '荣成市', 2, 0, 3),
(371083, 371000, '乳山市', 2, 0, 3),
(371084, 371000, '其它区', 2, 0, 3),
(371100, 370000, '日照市', 2, 0, 2),
(371102, 371100, '东港区', 2, 0, 3),
(371103, 371100, '岚山区', 2, 0, 3),
(371121, 371100, '五莲县', 2, 0, 3),
(371122, 371100, '莒县', 2, 0, 3),
(371123, 371100, '其它区', 2, 0, 3),
(371200, 370000, '莱芜市', 2, 0, 2),
(371202, 371200, '莱城区', 2, 0, 3),
(371203, 371200, '钢城区', 2, 0, 3),
(371204, 371200, '其它区', 2, 0, 3),
(371300, 370000, '临沂市', 2, 0, 2),
(371302, 371300, '兰山区', 2, 0, 3),
(371311, 371300, '罗庄区', 2, 0, 3),
(371312, 371300, '河东区', 2, 0, 3),
(371321, 371300, '沂南县', 2, 0, 3),
(371322, 371300, '郯城县', 2, 0, 3),
(371323, 371300, '沂水县', 2, 0, 3),
(371324, 371300, '兰陵县', 2, 0, 3),
(371325, 371300, '费县', 2, 0, 3),
(371326, 371300, '平邑县', 2, 0, 3),
(371327, 371300, '莒南县', 2, 0, 3),
(371328, 371300, '蒙阴县', 2, 0, 3),
(371329, 371300, '临沭县', 2, 0, 3),
(371330, 371300, '其它区', 2, 0, 3),
(371400, 370000, '德州市', 2, 0, 2),
(371402, 371400, '德城区', 2, 0, 3),
(371403, 371400, '陵城区', 2, 0, 3),
(371421, 371400, '陵县', 2, 0, 3),
(371422, 371400, '宁津县', 2, 0, 3),
(371423, 371400, '庆云县', 2, 0, 3),
(371424, 371400, '临邑县', 2, 0, 3),
(371425, 371400, '齐河县', 2, 0, 3),
(371426, 371400, '平原县', 2, 0, 3),
(371427, 371400, '夏津县', 2, 0, 3),
(371428, 371400, '武城县', 2, 0, 3),
(371451, 371400, '开发区', 2, 0, 3),
(371481, 371400, '乐陵市', 2, 0, 3),
(371482, 371400, '禹城市', 2, 0, 3),
(371483, 371400, '其它区', 2, 0, 3),
(371500, 370000, '聊城市', 2, 0, 2),
(371502, 371500, '东昌府区', 2, 0, 3),
(371521, 371500, '阳谷县', 2, 0, 3),
(371522, 371500, '莘县', 2, 0, 3),
(371523, 371500, '茌平县', 2, 0, 3),
(371524, 371500, '东阿县', 2, 0, 3),
(371525, 371500, '冠县', 2, 0, 3),
(371526, 371500, '高唐县', 2, 0, 3),
(371581, 371500, '临清市', 2, 0, 3),
(371582, 371500, '其它区', 2, 0, 3),
(371600, 370000, '滨州市', 2, 0, 2),
(371602, 371600, '滨城区', 2, 0, 3),
(371603, 371600, '沾化区', 2, 0, 3),
(371621, 371600, '惠民县', 2, 0, 3),
(371622, 371600, '阳信县', 2, 0, 3),
(371623, 371600, '无棣县', 2, 0, 3),
(371624, 371600, '沾化县', 2, 0, 3),
(371625, 371600, '博兴县', 2, 0, 3),
(371626, 371600, '邹平县', 2, 0, 3),
(371627, 371600, '其它区', 2, 0, 3),
(371700, 370000, '菏泽市', 2, 0, 2),
(371702, 371700, '牡丹区', 2, 0, 3),
(371721, 371700, '曹县', 2, 0, 3),
(371722, 371700, '单县', 2, 0, 3),
(371723, 371700, '成武县', 2, 0, 3),
(371724, 371700, '巨野县', 2, 0, 3),
(371725, 371700, '郓城县', 2, 0, 3),
(371726, 371700, '鄄城县', 2, 0, 3),
(371727, 371700, '定陶县', 2, 0, 3),
(371728, 371700, '东明县', 2, 0, 3),
(371729, 371700, '其它区', 2, 0, 3),
(410000, 0, '河南省', 2, 0, 1),
(410100, 410000, '郑州市', 2, 0, 2),
(410102, 410100, '中原区', 2, 0, 3),
(410103, 410100, '二七区', 2, 0, 3),
(410104, 410100, '管城回族区', 2, 0, 3),
(410105, 410100, '金水区', 2, 0, 3),
(410106, 410100, '上街区', 2, 0, 3),
(410108, 410100, '惠济区', 2, 0, 3),
(410122, 410100, '中牟县', 2, 0, 3),
(410181, 410100, '巩义市', 2, 0, 3),
(410182, 410100, '荥阳市', 2, 0, 3),
(410183, 410100, '新密市', 2, 0, 3),
(410184, 410100, '新郑市', 2, 0, 3),
(410185, 410100, '登封市', 2, 0, 3),
(410186, 410100, '郑东新区', 2, 0, 3),
(410187, 410100, '高新区', 2, 0, 3),
(410188, 410100, '其它区', 2, 0, 3),
(410200, 410000, '开封市', 2, 0, 2),
(410202, 410200, '龙亭区', 2, 0, 3),
(410203, 410200, '顺河回族区', 2, 0, 3),
(410204, 410200, '鼓楼区', 2, 0, 3),
(410205, 410200, '禹王台区', 2, 0, 3),
(410211, 410200, '金明区', 2, 0, 3),
(410212, 410200, '祥符区', 2, 0, 3),
(410221, 410200, '杞县', 2, 0, 3),
(410222, 410200, '通许县', 2, 0, 3),
(410223, 410200, '尉氏县', 2, 0, 3),
(410224, 410200, '开封县', 2, 0, 3),
(410225, 410200, '兰考县', 2, 0, 3),
(410226, 410200, '其它区', 2, 0, 3),
(410300, 410000, '洛阳市', 2, 0, 2),
(410302, 410300, '老城区', 2, 0, 3),
(410303, 410300, '西工区', 2, 0, 3),
(410304, 410300, '瀍河回族区', 2, 0, 3),
(410305, 410300, '涧西区', 2, 0, 3),
(410306, 410300, '吉利区', 2, 0, 3),
(410307, 410300, '洛龙区', 2, 0, 3),
(410311, 410300, '洛龙区', 2, 0, 3),
(410322, 410300, '孟津县', 2, 0, 3),
(410323, 410300, '新安县', 2, 0, 3),
(410324, 410300, '栾川县', 2, 0, 3),
(410325, 410300, '嵩县', 2, 0, 3),
(410326, 410300, '汝阳县', 2, 0, 3),
(410327, 410300, '宜阳县', 2, 0, 3),
(410328, 410300, '洛宁县', 2, 0, 3),
(410329, 410300, '伊川县', 2, 0, 3),
(410381, 410300, '偃师市', 2, 0, 3),
(410400, 410000, '平顶山市', 2, 0, 2),
(410402, 410400, '新华区', 2, 0, 3),
(410403, 410400, '卫东区', 2, 0, 3),
(410404, 410400, '石龙区', 2, 0, 3),
(410411, 410400, '湛河区', 2, 0, 3),
(410421, 410400, '宝丰县', 2, 0, 3),
(410422, 410400, '叶县', 2, 0, 3),
(410423, 410400, '鲁山县', 2, 0, 3),
(410425, 410400, '郏县', 2, 0, 3),
(410481, 410400, '舞钢市', 2, 0, 3),
(410482, 410400, '汝州市', 2, 0, 3),
(410483, 410400, '其它区', 2, 0, 3),
(410500, 410000, '安阳市', 2, 0, 2),
(410502, 410500, '文峰区', 2, 0, 3),
(410503, 410500, '北关区', 2, 0, 3),
(410505, 410500, '殷都区', 2, 0, 3),
(410506, 410500, '龙安区', 2, 0, 3),
(410522, 410500, '安阳县', 2, 0, 3),
(410523, 410500, '汤阴县', 2, 0, 3),
(410526, 410500, '滑县', 2, 0, 3),
(410527, 410500, '内黄县', 2, 0, 3),
(410581, 410500, '林州市', 2, 0, 3),
(410582, 410500, '其它区', 2, 0, 3),
(410600, 410000, '鹤壁市', 2, 0, 2),
(410602, 410600, '鹤山区', 2, 0, 3),
(410603, 410600, '山城区', 2, 0, 3),
(410611, 410600, '淇滨区', 2, 0, 3),
(410621, 410600, '浚县', 2, 0, 3),
(410622, 410600, '淇县', 2, 0, 3),
(410623, 410600, '其它区', 2, 0, 3),
(410700, 410000, '新乡市', 2, 0, 2),
(410702, 410700, '红旗区', 2, 0, 3),
(410703, 410700, '卫滨区', 2, 0, 3),
(410704, 410700, '凤泉区', 2, 0, 3),
(410711, 410700, '牧野区', 2, 0, 3),
(410721, 410700, '新乡县', 2, 0, 3),
(410724, 410700, '获嘉县', 2, 0, 3),
(410725, 410700, '原阳县', 2, 0, 3),
(410726, 410700, '延津县', 2, 0, 3),
(410727, 410700, '封丘县', 2, 0, 3),
(410728, 410700, '长垣县', 2, 0, 3),
(410781, 410700, '卫辉市', 2, 0, 3),
(410782, 410700, '辉县市', 2, 0, 3),
(410783, 410700, '其它区', 2, 0, 3),
(410800, 410000, '焦作市', 2, 0, 2),
(410802, 410800, '解放区', 2, 0, 3),
(410803, 410800, '中站区', 2, 0, 3),
(410804, 410800, '马村区', 2, 0, 3),
(410811, 410800, '山阳区', 2, 0, 3),
(410821, 410800, '修武县', 2, 0, 3),
(410822, 410800, '博爱县', 2, 0, 3),
(410823, 410800, '武陟县', 2, 0, 3),
(410825, 410800, '温县', 2, 0, 3),
(410881, 410000, '济源市', 2, 0, 2),
(410882, 410800, '沁阳市', 2, 0, 3),
(410883, 410800, '孟州市', 2, 0, 3),
(410884, 410800, '其它区', 2, 0, 3),
(410900, 410000, '濮阳市', 2, 0, 2),
(410902, 410900, '华龙区', 2, 0, 3),
(410922, 410900, '清丰县', 2, 0, 3),
(410923, 410900, '南乐县', 2, 0, 3),
(410926, 410900, '范县', 2, 0, 3),
(410927, 410900, '台前县', 2, 0, 3),
(410928, 410900, '濮阳县', 2, 0, 3),
(410929, 410900, '其它区', 2, 0, 3),
(411000, 410000, '许昌市', 2, 0, 2),
(411002, 411000, '魏都区', 2, 0, 3),
(411023, 411000, '许昌县', 2, 0, 3),
(411024, 411000, '鄢陵县', 2, 0, 3),
(411025, 411000, '襄城县', 2, 0, 3),
(411081, 411000, '禹州市', 2, 0, 3),
(411082, 411000, '长葛市', 2, 0, 3),
(411083, 411000, '其它区', 2, 0, 3),
(411100, 410000, '漯河市', 2, 0, 2),
(411102, 411100, '源汇区', 2, 0, 3),
(411103, 411100, '郾城区', 2, 0, 3),
(411104, 411100, '召陵区', 2, 0, 3),
(411121, 411100, '舞阳县', 2, 0, 3),
(411122, 411100, '临颍县', 2, 0, 3),
(411123, 411100, '其它区', 2, 0, 3),
(411200, 410000, '三门峡市', 2, 0, 2),
(411202, 411200, '湖滨区', 2, 0, 3),
(411203, 411200, '陕州区', 2, 0, 3),
(411221, 411200, '渑池县', 2, 0, 3),
(411222, 411200, '陕县', 2, 0, 3),
(411224, 411200, '卢氏县', 2, 0, 3),
(411281, 411200, '义马市', 2, 0, 3),
(411282, 411200, '灵宝市', 2, 0, 3),
(411283, 411200, '其它区', 2, 0, 3),
(411300, 410000, '南阳市', 2, 0, 2),
(411302, 411300, '宛城区', 2, 0, 3),
(411303, 411300, '卧龙区', 2, 0, 3),
(411321, 411300, '南召县', 2, 0, 3),
(411322, 411300, '方城县', 2, 0, 3),
(411323, 411300, '西峡县', 2, 0, 3),
(411324, 411300, '镇平县', 2, 0, 3),
(411325, 411300, '内乡县', 2, 0, 3),
(411326, 411300, '淅川县', 2, 0, 3),
(411327, 411300, '社旗县', 2, 0, 3),
(411328, 411300, '唐河县', 2, 0, 3),
(411329, 411300, '新野县', 2, 0, 3),
(411330, 411300, '桐柏县', 2, 0, 3),
(411381, 411300, '邓州市', 2, 0, 3),
(411382, 411300, '其它区', 2, 0, 3),
(411400, 410000, '商丘市', 2, 0, 2),
(411402, 411400, '梁园区', 2, 0, 3),
(411403, 411400, '睢阳区', 2, 0, 3),
(411421, 411400, '民权县', 2, 0, 3),
(411422, 411400, '睢县', 2, 0, 3),
(411423, 411400, '宁陵县', 2, 0, 3),
(411424, 411400, '柘城县', 2, 0, 3),
(411425, 411400, '虞城县', 2, 0, 3),
(411426, 411400, '夏邑县', 2, 0, 3),
(411481, 411400, '永城市', 2, 0, 3),
(411482, 411400, '其它区', 2, 0, 3),
(411500, 410000, '信阳市', 2, 0, 2),
(411502, 411500, '浉河区', 2, 0, 3),
(411503, 411500, '平桥区', 2, 0, 3),
(411521, 411500, '罗山县', 2, 0, 3),
(411522, 411500, '光山县', 2, 0, 3),
(411523, 411500, '新县', 2, 0, 3),
(411524, 411500, '商城县', 2, 0, 3),
(411525, 411500, '固始县', 2, 0, 3),
(411526, 411500, '潢川县', 2, 0, 3),
(411527, 411500, '淮滨县', 2, 0, 3),
(411528, 411500, '息县', 2, 0, 3),
(411529, 411500, '其它区', 2, 0, 3),
(411600, 410000, '周口市', 2, 0, 2),
(411602, 411600, '川汇区', 2, 0, 3),
(411621, 411600, '扶沟县', 2, 0, 3),
(411622, 411600, '西华县', 2, 0, 3),
(411623, 411600, '商水县', 2, 0, 3),
(411624, 411600, '沈丘县', 2, 0, 3),
(411625, 411600, '郸城县', 2, 0, 3),
(411626, 411600, '淮阳县', 2, 0, 3),
(411627, 411600, '太康县', 2, 0, 3),
(411628, 411600, '鹿邑县', 2, 0, 3),
(411681, 411600, '项城市', 2, 0, 3),
(411682, 411600, '其它区', 2, 0, 3),
(411700, 410000, '驻马店市', 2, 0, 2),
(411702, 411700, '驿城区', 2, 0, 3),
(411721, 411700, '西平县', 2, 0, 3),
(411722, 411700, '上蔡县', 2, 0, 3),
(411723, 411700, '平舆县', 2, 0, 3),
(411724, 411700, '正阳县', 2, 0, 3),
(411725, 411700, '确山县', 2, 0, 3),
(411726, 411700, '泌阳县', 2, 0, 3),
(411727, 411700, '汝南县', 2, 0, 3),
(411728, 411700, '遂平县', 2, 0, 3),
(411729, 411700, '新蔡县', 2, 0, 3),
(411730, 411700, '其它区', 2, 0, 3),
(419000, 410000, '省直辖县级行政区划', 2, 0, 2),
(419001, 419000, '济源市', 2, 0, 3),
(420000, 0, '湖北省', 2, 0, 1),
(420100, 420000, '武汉市', 2, 0, 2),
(420102, 420100, '江岸区', 2, 0, 3),
(420103, 420100, '江汉区', 2, 0, 3),
(420104, 420100, '硚口区', 2, 0, 3),
(420105, 420100, '汉阳区', 2, 0, 3),
(420106, 420100, '武昌区', 2, 0, 3),
(420107, 420100, '青山区', 2, 0, 3),
(420111, 420100, '洪山区', 2, 0, 3),
(420112, 420100, '东西湖区', 2, 0, 3),
(420113, 420100, '汉南区', 2, 0, 3),
(420114, 420100, '蔡甸区', 2, 0, 3),
(420115, 420100, '江夏区', 2, 0, 3),
(420116, 420100, '黄陂区', 2, 0, 3),
(420117, 420100, '新洲区', 2, 0, 3),
(420118, 420100, '其它区', 2, 0, 3),
(420200, 420000, '黄石市', 2, 0, 2),
(420202, 420200, '黄石港区', 2, 0, 3),
(420203, 420200, '西塞山区', 2, 0, 3),
(420204, 420200, '下陆区', 2, 0, 3),
(420205, 420200, '铁山区', 2, 0, 3),
(420222, 420200, '阳新县', 2, 0, 3),
(420281, 420200, '大冶市', 2, 0, 3),
(420282, 420200, '其它区', 2, 0, 3),
(420300, 420000, '十堰市', 2, 0, 2),
(420302, 420300, '茅箭区', 2, 0, 3),
(420303, 420300, '张湾区', 2, 0, 3),
(420304, 420300, '郧阳区', 2, 0, 3),
(420321, 420300, '郧县', 2, 0, 3),
(420322, 420300, '郧西县', 2, 0, 3),
(420323, 420300, '竹山县', 2, 0, 3),
(420324, 420300, '竹溪县', 2, 0, 3),
(420325, 420300, '房县', 2, 0, 3),
(420381, 420300, '丹江口市', 2, 0, 3),
(420382, 420300, '城区', 2, 0, 3),
(420383, 420300, '其它区', 2, 0, 3),
(420500, 420000, '宜昌市', 2, 0, 2),
(420502, 420500, '西陵区', 2, 0, 3),
(420503, 420500, '伍家岗区', 2, 0, 3),
(420504, 420500, '点军区', 2, 0, 3),
(420505, 420500, '猇亭区', 2, 0, 3),
(420506, 420500, '夷陵区', 2, 0, 3),
(420525, 420500, '远安县', 2, 0, 3),
(420526, 420500, '兴山县', 2, 0, 3),
(420527, 420500, '秭归县', 2, 0, 3),
(420528, 420500, '长阳土家族自治县', 2, 0, 3),
(420529, 420500, '五峰土家族自治县', 2, 0, 3),
(420551, 420500, '葛洲坝区', 2, 0, 3),
(420552, 420500, '开发区', 2, 0, 3),
(420581, 420500, '宜都市', 2, 0, 3),
(420582, 420500, '当阳市', 2, 0, 3),
(420583, 420500, '枝江市', 2, 0, 3),
(420584, 420500, '其它区', 2, 0, 3),
(420600, 420000, '襄阳市', 2, 0, 2),
(420602, 420600, '襄城区', 2, 0, 3),
(420606, 420600, '樊城区', 2, 0, 3),
(420607, 420600, '襄州区', 2, 0, 3),
(420624, 420600, '南漳县', 2, 0, 3),
(420625, 420600, '谷城县', 2, 0, 3),
(420626, 420600, '保康县', 2, 0, 3),
(420682, 420600, '老河口市', 2, 0, 3),
(420683, 420600, '枣阳市', 2, 0, 3),
(420684, 420600, '宜城市', 2, 0, 3),
(420685, 420600, '其它区', 2, 0, 3),
(420700, 420000, '鄂州市', 2, 0, 2),
(420702, 420700, '梁子湖区', 2, 0, 3),
(420703, 420700, '华容区', 2, 0, 3),
(420704, 420700, '鄂城区', 2, 0, 3),
(420705, 420700, '其它区', 2, 0, 3),
(420800, 420000, '荆门市', 2, 0, 2),
(420802, 420800, '东宝区', 2, 0, 3),
(420804, 420800, '掇刀区', 2, 0, 3),
(420821, 420800, '京山县', 2, 0, 3),
(420822, 420800, '沙洋县', 2, 0, 3),
(420881, 420800, '钟祥市', 2, 0, 3),
(420882, 420800, '其它区', 2, 0, 3),
(420900, 420000, '孝感市', 2, 0, 2),
(420902, 420900, '孝南区', 2, 0, 3),
(420921, 420900, '孝昌县', 2, 0, 3),
(420922, 420900, '大悟县', 2, 0, 3),
(420923, 420900, '云梦县', 2, 0, 3),
(420981, 420900, '应城市', 2, 0, 3),
(420982, 420900, '安陆市', 2, 0, 3),
(420984, 420900, '汉川市', 2, 0, 3),
(420985, 420900, '其它区', 2, 0, 3),
(421000, 420000, '荆州市', 2, 0, 2),
(421002, 421000, '沙市区', 2, 0, 3),
(421003, 421000, '荆州区', 2, 0, 3),
(421022, 421000, '公安县', 2, 0, 3),
(421023, 421000, '监利县', 2, 0, 3),
(421024, 421000, '江陵县', 2, 0, 3),
(421081, 421000, '石首市', 2, 0, 3),
(421083, 421000, '洪湖市', 2, 0, 3),
(421087, 421000, '松滋市', 2, 0, 3),
(421088, 421000, '其它区', 2, 0, 3),
(421100, 420000, '黄冈市', 2, 0, 2),
(421102, 421100, '黄州区', 2, 0, 3),
(421121, 421100, '团风县', 2, 0, 3),
(421122, 421100, '红安县', 2, 0, 3),
(421123, 421100, '罗田县', 2, 0, 3),
(421124, 421100, '英山县', 2, 0, 3),
(421125, 421100, '浠水县', 2, 0, 3),
(421126, 421100, '蕲春县', 2, 0, 3),
(421127, 421100, '黄梅县', 2, 0, 3),
(421181, 421100, '麻城市', 2, 0, 3),
(421182, 421100, '武穴市', 2, 0, 3),
(421183, 421100, '其它区', 2, 0, 3),
(421200, 420000, '咸宁市', 2, 0, 2),
(421202, 421200, '咸安区', 2, 0, 3),
(421221, 421200, '嘉鱼县', 2, 0, 3),
(421222, 421200, '通城县', 2, 0, 3),
(421223, 421200, '崇阳县', 2, 0, 3),
(421224, 421200, '通山县', 2, 0, 3),
(421281, 421200, '赤壁市', 2, 0, 3),
(421282, 421200, '温泉城区', 2, 0, 3),
(421283, 421200, '其它区', 2, 0, 3),
(421300, 420000, '随州市', 2, 0, 2),
(421302, 421300, '曾都区', 2, 0, 3),
(421303, 421300, '曾都区', 2, 0, 3),
(421321, 421300, '随县', 2, 0, 3),
(421381, 421300, '广水市', 2, 0, 3),
(421382, 421300, '其它区', 2, 0, 3),
(422800, 420000, '恩施土家族苗族自治州', 2, 0, 2),
(422801, 422800, '恩施市', 2, 0, 3),
(422802, 422800, '利川市', 2, 0, 3),
(422822, 422800, '建始县', 2, 0, 3),
(422823, 422800, '巴东县', 2, 0, 3),
(422825, 422800, '宣恩县', 2, 0, 3),
(422826, 422800, '咸丰县', 2, 0, 3),
(422827, 422800, '来凤县', 2, 0, 3),
(422828, 422800, '鹤峰县', 2, 0, 3),
(422829, 422800, '其它区', 2, 0, 3),
(429000, 420000, '省直辖县级行政区划', 2, 0, 2),
(429004, 429000, '仙桃市', 2, 0, 3),
(429005, 429000, '潜江市', 2, 0, 3),
(429006, 429000, '天门市', 2, 0, 3),
(429021, 429000, '神农架林区', 2, 0, 3),
(430000, 0, '湖南省', 2, 0, 1),
(430100, 430000, '长沙市', 2, 0, 2),
(430102, 430100, '芙蓉区', 2, 0, 3),
(430103, 430100, '天心区', 2, 0, 3),
(430104, 430100, '岳麓区', 2, 0, 3),
(430105, 430100, '开福区', 2, 0, 3),
(430111, 430100, '雨花区', 2, 0, 3),
(430112, 430100, '望城区', 2, 0, 3),
(430121, 430100, '长沙县', 2, 0, 3),
(430122, 430100, '望城县', 2, 0, 3),
(430124, 430100, '宁乡县', 2, 0, 3),
(430181, 430100, '浏阳市', 2, 0, 3),
(430182, 430100, '其它区', 2, 0, 3),
(430200, 430000, '株洲市', 2, 0, 2),
(430202, 430200, '荷塘区', 2, 0, 3),
(430203, 430200, '芦淞区', 2, 0, 3),
(430204, 430200, '石峰区', 2, 0, 3),
(430211, 430200, '天元区', 2, 0, 3),
(430221, 430200, '株洲县', 2, 0, 3),
(430223, 430200, '攸县', 2, 0, 3),
(430224, 430200, '茶陵县', 2, 0, 3),
(430225, 430200, '炎陵县', 2, 0, 3),
(430281, 430200, '醴陵市', 2, 0, 3),
(430282, 430200, '其它区', 2, 0, 3),
(430300, 430000, '湘潭市', 2, 0, 2),
(430302, 430300, '雨湖区', 2, 0, 3),
(430304, 430300, '岳塘区', 2, 0, 3),
(430321, 430300, '湘潭县', 2, 0, 3),
(430381, 430300, '湘乡市', 2, 0, 3),
(430382, 430300, '韶山市', 2, 0, 3),
(430383, 430300, '其它区', 2, 0, 3),
(430400, 430000, '衡阳市', 2, 0, 2),
(430405, 430400, '珠晖区', 2, 0, 3),
(430406, 430400, '雁峰区', 2, 0, 3),
(430407, 430400, '石鼓区', 2, 0, 3),
(430408, 430400, '蒸湘区', 2, 0, 3),
(430412, 430400, '南岳区', 2, 0, 3),
(430421, 430400, '衡阳县', 2, 0, 3),
(430422, 430400, '衡南县', 2, 0, 3),
(430423, 430400, '衡山县', 2, 0, 3),
(430424, 430400, '衡东县', 2, 0, 3),
(430426, 430400, '祁东县', 2, 0, 3),
(430481, 430400, '耒阳市', 2, 0, 3),
(430482, 430400, '常宁市', 2, 0, 3),
(430483, 430400, '其它区', 2, 0, 3),
(430500, 430000, '邵阳市', 2, 0, 2),
(430502, 430500, '双清区', 2, 0, 3),
(430503, 430500, '大祥区', 2, 0, 3),
(430511, 430500, '北塔区', 2, 0, 3),
(430521, 430500, '邵东县', 2, 0, 3),
(430522, 430500, '新邵县', 2, 0, 3),
(430523, 430500, '邵阳县', 2, 0, 3),
(430524, 430500, '隆回县', 2, 0, 3),
(430525, 430500, '洞口县', 2, 0, 3),
(430527, 430500, '绥宁县', 2, 0, 3),
(430528, 430500, '新宁县', 2, 0, 3),
(430529, 430500, '城步苗族自治县', 2, 0, 3),
(430581, 430500, '武冈市', 2, 0, 3),
(430582, 430500, '其它区', 2, 0, 3),
(430600, 430000, '岳阳市', 2, 0, 2),
(430602, 430600, '岳阳楼区', 2, 0, 3),
(430603, 430600, '云溪区', 2, 0, 3),
(430611, 430600, '君山区', 2, 0, 3),
(430621, 430600, '岳阳县', 2, 0, 3),
(430623, 430600, '华容县', 2, 0, 3),
(430624, 430600, '湘阴县', 2, 0, 3),
(430626, 430600, '平江县', 2, 0, 3),
(430681, 430600, '汨罗市', 2, 0, 3),
(430682, 430600, '临湘市', 2, 0, 3),
(430683, 430600, '其它区', 2, 0, 3),
(430700, 430000, '常德市', 2, 0, 2),
(430702, 430700, '武陵区', 2, 0, 3),
(430703, 430700, '鼎城区', 2, 0, 3),
(430721, 430700, '安乡县', 2, 0, 3),
(430722, 430700, '汉寿县', 2, 0, 3),
(430723, 430700, '澧县', 2, 0, 3),
(430724, 430700, '临澧县', 2, 0, 3),
(430725, 430700, '桃源县', 2, 0, 3),
(430726, 430700, '石门县', 2, 0, 3),
(430781, 430700, '津市市', 2, 0, 3),
(430782, 430700, '其它区', 2, 0, 3),
(430800, 430000, '张家界市', 2, 0, 2),
(430802, 430800, '永定区', 2, 0, 3),
(430811, 430800, '武陵源区', 2, 0, 3),
(430821, 430800, '慈利县', 2, 0, 3),
(430822, 430800, '桑植县', 2, 0, 3),
(430823, 430800, '其它区', 2, 0, 3),
(430900, 430000, '益阳市', 2, 0, 2),
(430902, 430900, '资阳区', 2, 0, 3),
(430903, 430900, '赫山区', 2, 0, 3),
(430921, 430900, '南县', 2, 0, 3),
(430922, 430900, '桃江县', 2, 0, 3),
(430923, 430900, '安化县', 2, 0, 3),
(430981, 430900, '沅江市', 2, 0, 3),
(430982, 430900, '其它区', 2, 0, 3),
(431000, 430000, '郴州市', 2, 0, 2),
(431002, 431000, '北湖区', 2, 0, 3),
(431003, 431000, '苏仙区', 2, 0, 3),
(431021, 431000, '桂阳县', 2, 0, 3),
(431022, 431000, '宜章县', 2, 0, 3),
(431023, 431000, '永兴县', 2, 0, 3),
(431024, 431000, '嘉禾县', 2, 0, 3),
(431025, 431000, '临武县', 2, 0, 3),
(431026, 431000, '汝城县', 2, 0, 3),
(431027, 431000, '桂东县', 2, 0, 3),
(431028, 431000, '安仁县', 2, 0, 3),
(431081, 431000, '资兴市', 2, 0, 3),
(431082, 431000, '其它区', 2, 0, 3),
(431100, 430000, '永州市', 2, 0, 2),
(431102, 431100, '零陵区', 2, 0, 3),
(431103, 431100, '冷水滩区', 2, 0, 3),
(431121, 431100, '祁阳县', 2, 0, 3),
(431122, 431100, '东安县', 2, 0, 3),
(431123, 431100, '双牌县', 2, 0, 3),
(431124, 431100, '道县', 2, 0, 3),
(431125, 431100, '江永县', 2, 0, 3),
(431126, 431100, '宁远县', 2, 0, 3),
(431127, 431100, '蓝山县', 2, 0, 3),
(431128, 431100, '新田县', 2, 0, 3),
(431129, 431100, '江华瑶族自治县', 2, 0, 3),
(431130, 431100, '其它区', 2, 0, 3),
(431200, 430000, '怀化市', 2, 0, 2),
(431202, 431200, '鹤城区', 2, 0, 3),
(431221, 431200, '中方县', 2, 0, 3),
(431222, 431200, '沅陵县', 2, 0, 3),
(431223, 431200, '辰溪县', 2, 0, 3),
(431224, 431200, '溆浦县', 2, 0, 3),
(431225, 431200, '会同县', 2, 0, 3),
(431226, 431200, '麻阳苗族自治县', 2, 0, 3),
(431227, 431200, '新晃侗族自治县', 2, 0, 3),
(431228, 431200, '芷江侗族自治县', 2, 0, 3),
(431229, 431200, '靖州苗族侗族自治县', 2, 0, 3),
(431230, 431200, '通道侗族自治县', 2, 0, 3),
(431281, 431200, '洪江市', 2, 0, 3),
(431282, 431200, '其它区', 2, 0, 3),
(431300, 430000, '娄底市', 2, 0, 2),
(431302, 431300, '娄星区', 2, 0, 3),
(431321, 431300, '双峰县', 2, 0, 3),
(431322, 431300, '新化县', 2, 0, 3),
(431381, 431300, '冷水江市', 2, 0, 3),
(431382, 431300, '涟源市', 2, 0, 3),
(431383, 431300, '其它区', 2, 0, 3),
(433100, 430000, '湘西土家族苗族自治州', 2, 0, 2),
(433101, 433100, '吉首市', 2, 0, 3),
(433122, 433100, '泸溪县', 2, 0, 3),
(433123, 433100, '凤凰县', 2, 0, 3),
(433124, 433100, '花垣县', 2, 0, 3),
(433125, 433100, '保靖县', 2, 0, 3),
(433126, 433100, '古丈县', 2, 0, 3),
(433127, 433100, '永顺县', 2, 0, 3),
(433130, 433100, '龙山县', 2, 0, 3),
(433131, 433100, '其它区', 2, 0, 3),
(440000, 0, '广东省', 2, 0, 1),
(440100, 440000, '广州市', 2, 0, 2),
(440103, 440100, '荔湾区', 2, 1, 3),
(440104, 440100, '越秀区', 2, 2, 3),
(440105, 440100, '海珠区', 2, 3, 3),
(440106, 440100, '天河区', 2, 0, 3),
(440111, 440100, '白云区', 2, 0, 3),
(440112, 440100, '黄埔区', 2, 4, 3),
(440113, 440100, '番禺区', 2, 5, 3),
(440114, 440100, '花都区', 2, 6, 3),
(440115, 440100, '南沙区', 2, 7, 3),
(440116, 440100, '萝岗区', 2, 0, 3),
(440117, 440100, '从化区', 2, 8, 3),
(440118, 440100, '增城区', 2, 9, 3),
(440183, 440100, '增城市', 2, 0, 3),
(440184, 440100, '从化市', 2, 0, 3),
(440188, 440100, '东山区', 2, 0, 3),
(440189, 440100, '其它区', 2, 0, 3),
(440200, 440000, '韶关市', 2, 0, 2),
(440203, 440200, '武江区', 2, 0, 3),
(440204, 440200, '浈江区', 2, 0, 3),
(440205, 440200, '曲江区', 2, 0, 3),
(440222, 440200, '始兴县', 2, 0, 3),
(440224, 440200, '仁化县', 2, 0, 3),
(440229, 440200, '翁源县', 2, 0, 3),
(440232, 440200, '乳源瑶族自治县', 2, 0, 3),
(440233, 440200, '新丰县', 2, 0, 3),
(440281, 440200, '乐昌市', 2, 0, 3),
(440282, 440200, '南雄市', 2, 0, 3),
(440283, 440200, '其它区', 2, 0, 3),
(440300, 440000, '深圳市', 2, 0, 2),
(440303, 440300, '罗湖区', 2, 0, 3),
(440304, 440300, '福田区', 2, 0, 3),
(440305, 440300, '南山区', 2, 0, 3),
(440306, 440300, '宝安区', 2, 0, 3),
(440307, 440300, '龙岗区', 2, 0, 3),
(440308, 440300, '盐田区', 2, 0, 3),
(440309, 440300, '其它区', 2, 0, 3),
(440400, 440000, '珠海市', 2, 0, 2),
(440402, 440400, '香洲区', 2, 0, 3),
(440403, 440400, '斗门区', 2, 0, 3),
(440404, 440400, '金湾区', 2, 0, 3),
(440486, 440400, '金唐区', 2, 0, 3),
(440487, 440400, '南湾区', 2, 0, 3),
(440488, 440400, '其它区', 2, 0, 3),
(440500, 440000, '汕头市', 2, 0, 2),
(440507, 440500, '龙湖区', 2, 0, 3),
(440511, 440500, '金平区', 2, 0, 3),
(440512, 440500, '濠江区', 2, 0, 3),
(440513, 440500, '潮阳区', 2, 0, 3),
(440514, 440500, '潮南区', 2, 0, 3),
(440515, 440500, '澄海区', 2, 0, 3),
(440523, 440500, '南澳县', 2, 0, 3),
(440524, 440500, '其它区', 2, 0, 3),
(440600, 440000, '佛山市', 2, 0, 2),
(440604, 440600, '禅城区', 2, 0, 3),
(440605, 440600, '南海区', 2, 0, 3),
(440606, 440600, '顺德区', 2, 0, 3),
(440607, 440600, '三水区', 2, 0, 3),
(440608, 440600, '高明区', 2, 0, 3),
(440609, 440600, '其它区', 2, 0, 3),
(440700, 440000, '江门市', 2, 0, 2),
(440703, 440700, '蓬江区', 2, 0, 3),
(440704, 440700, '江海区', 2, 0, 3),
(440705, 440700, '新会区', 2, 0, 3),
(440781, 440700, '台山市', 2, 0, 3),
(440783, 440700, '开平市', 2, 0, 3),
(440784, 440700, '鹤山市', 2, 0, 3),
(440785, 440700, '恩平市', 2, 0, 3),
(440786, 440700, '其它区', 2, 0, 3),
(440800, 440000, '湛江市', 2, 0, 2),
(440802, 440800, '赤坎区', 2, 0, 3),
(440803, 440800, '霞山区', 2, 0, 3),
(440804, 440800, '坡头区', 2, 0, 3),
(440811, 440800, '麻章区', 2, 0, 3),
(440823, 440800, '遂溪县', 2, 0, 3),
(440825, 440800, '徐闻县', 2, 0, 3),
(440881, 440800, '廉江市', 2, 0, 3),
(440882, 440800, '雷州市', 2, 0, 3),
(440883, 440800, '吴川市', 2, 0, 3),
(440884, 440800, '其它区', 2, 0, 3),
(440900, 440000, '茂名市', 2, 0, 2),
(440902, 440900, '茂南区', 2, 0, 3),
(440903, 440900, '茂港区', 2, 0, 3),
(440904, 440900, '电白区', 2, 0, 3),
(440923, 440900, '电白县', 2, 0, 3),
(440981, 440900, '高州市', 2, 0, 3),
(440982, 440900, '化州市', 2, 0, 3),
(440983, 440900, '信宜市', 2, 0, 3),
(440984, 440900, '其它区', 2, 0, 3),
(441200, 440000, '肇庆市', 2, 0, 2),
(441202, 441200, '端州区', 2, 0, 3),
(441203, 441200, '鼎湖区', 2, 0, 3),
(441223, 441200, '广宁县', 2, 0, 3),
(441224, 441200, '怀集县', 2, 0, 3),
(441225, 441200, '封开县', 2, 0, 3),
(441226, 441200, '德庆县', 2, 0, 3),
(441283, 441200, '高要市', 2, 0, 3),
(441284, 441200, '四会市', 2, 0, 3),
(441285, 441200, '其它区', 2, 0, 3),
(441300, 440000, '惠州市', 2, 0, 2),
(441302, 441300, '惠城区', 2, 0, 3),
(441303, 441300, '惠阳区', 2, 0, 3),
(441322, 441300, '博罗县', 2, 0, 3),
(441323, 441300, '惠东县', 2, 0, 3),
(441324, 441300, '龙门县', 2, 0, 3),
(441325, 441300, '其它区', 2, 0, 3),
(441400, 440000, '梅州市', 2, 0, 2),
(441402, 441400, '梅江区', 2, 0, 3),
(441403, 441400, '梅县区', 2, 0, 3),
(441421, 441400, '梅县', 2, 0, 3),
(441422, 441400, '大埔县', 2, 0, 3),
(441423, 441400, '丰顺县', 2, 0, 3),
(441424, 441400, '五华县', 2, 0, 3),
(441426, 441400, '平远县', 2, 0, 3),
(441427, 441400, '蕉岭县', 2, 0, 3),
(441481, 441400, '兴宁市', 2, 0, 3),
(441482, 441400, '其它区', 2, 0, 3),
(441500, 440000, '汕尾市', 2, 0, 2),
(441502, 441500, '城区', 2, 0, 3),
(441521, 441500, '海丰县', 2, 0, 3),
(441523, 441500, '陆河县', 2, 0, 3),
(441581, 441500, '陆丰市', 2, 0, 3),
(441582, 441500, '其它区', 2, 0, 3),
(441600, 440000, '河源市', 2, 0, 2),
(441602, 441600, '源城区', 2, 0, 3),
(441621, 441600, '紫金县', 2, 0, 3),
(441622, 441600, '龙川县', 2, 0, 3),
(441623, 441600, '连平县', 2, 0, 3),
(441624, 441600, '和平县', 2, 0, 3),
(441625, 441600, '东源县', 2, 0, 3),
(441626, 441600, '其它区', 2, 0, 3),
(441700, 440000, '阳江市', 2, 0, 2),
(441702, 441700, '江城区', 2, 0, 3),
(441704, 441700, '阳东区', 2, 0, 3),
(441721, 441700, '阳西县', 2, 0, 3),
(441723, 441700, '阳东县', 2, 0, 3),
(441781, 441700, '阳春市', 2, 0, 3),
(441782, 441700, '其它区', 2, 0, 3),
(441800, 440000, '清远市', 2, 0, 2),
(441802, 441800, '清城区', 2, 0, 3),
(441803, 441800, '清新区', 2, 0, 3),
(441821, 441800, '佛冈县', 2, 0, 3),
(441823, 441800, '阳山县', 2, 0, 3),
(441825, 441800, '连山壮族瑶族自治县', 2, 0, 3),
(441826, 441800, '连南瑶族自治县', 2, 0, 3),
(441827, 441800, '清新县', 2, 0, 3),
(441881, 441800, '英德市', 2, 0, 3),
(441882, 441800, '连州市', 2, 0, 3),
(441883, 441800, '其它区', 2, 0, 3),
(441900, 440000, '东莞市', 2, 0, 2),
(442000, 440000, '中山市', 2, 0, 2),
(445100, 440000, '潮州市', 2, 0, 2),
(445102, 445100, '湘桥区', 2, 0, 3),
(445103, 445100, '潮安区', 2, 0, 3),
(445121, 445100, '潮安县', 2, 0, 3),
(445122, 445100, '饶平县', 2, 0, 3),
(445185, 445100, '枫溪区', 2, 0, 3),
(445186, 445100, '其它区', 2, 0, 3),
(445200, 440000, '揭阳市', 2, 0, 2),
(445202, 445200, '榕城区', 2, 0, 3),
(445203, 445200, '揭东区', 2, 0, 3),
(445221, 445200, '揭东县', 2, 0, 3),
(445222, 445200, '揭西县', 2, 0, 3),
(445224, 445200, '惠来县', 2, 0, 3),
(445281, 445200, '普宁市', 2, 0, 3),
(445284, 445200, '东山区', 2, 0, 3),
(445285, 445200, '其它区', 2, 0, 3),
(445300, 440000, '云浮市', 2, 0, 2),
(445302, 445300, '云城区', 2, 0, 3),
(445303, 445300, '云安区', 2, 0, 3),
(445321, 445300, '新兴县', 2, 0, 3),
(445322, 445300, '郁南县', 2, 0, 3),
(445323, 445300, '云安县', 2, 0, 3),
(445381, 445300, '罗定市', 2, 0, 3),
(445382, 445300, '其它区', 2, 0, 3),
(450000, 0, '广西壮族自治区', 2, 0, 1),
(450100, 450000, '南宁市', 2, 0, 2),
(450102, 450100, '兴宁区', 2, 0, 3),
(450103, 450100, '青秀区', 2, 0, 3),
(450105, 450100, '江南区', 2, 0, 3),
(450107, 450100, '西乡塘区', 2, 0, 3),
(450108, 450100, '良庆区', 2, 0, 3),
(450109, 450100, '邕宁区', 2, 0, 3),
(450110, 450100, '武鸣区', 2, 0, 3),
(450122, 450100, '武鸣县', 2, 0, 3),
(450123, 450100, '隆安县', 2, 0, 3),
(450124, 450100, '马山县', 2, 0, 3),
(450125, 450100, '上林县', 2, 0, 3),
(450126, 450100, '宾阳县', 2, 0, 3),
(450127, 450100, '横县', 2, 0, 3),
(450128, 450100, '其它区', 2, 0, 3),
(450200, 450000, '柳州市', 2, 0, 2),
(450202, 450200, '城中区', 2, 0, 3),
(450203, 450200, '鱼峰区', 2, 0, 3),
(450204, 450200, '柳南区', 2, 0, 3),
(450205, 450200, '柳北区', 2, 0, 3),
(450221, 450200, '柳江县', 2, 0, 3),
(450222, 450200, '柳城县', 2, 0, 3),
(450223, 450200, '鹿寨县', 2, 0, 3),
(450224, 450200, '融安县', 2, 0, 3),
(450225, 450200, '融水苗族自治县', 2, 0, 3),
(450226, 450200, '三江侗族自治县', 2, 0, 3),
(450227, 450200, '其它区', 2, 0, 3),
(450300, 450000, '桂林市', 2, 0, 2),
(450302, 450300, '秀峰区', 2, 0, 3),
(450303, 450300, '叠彩区', 2, 0, 3),
(450304, 450300, '象山区', 2, 0, 3),
(450305, 450300, '七星区', 2, 0, 3),
(450311, 450300, '雁山区', 2, 0, 3),
(450312, 450300, '临桂区', 2, 0, 3),
(450321, 450300, '阳朔县', 2, 0, 3),
(450322, 450300, '临桂县', 2, 0, 3),
(450323, 450300, '灵川县', 2, 0, 3),
(450324, 450300, '全州县', 2, 0, 3),
(450325, 450300, '兴安县', 2, 0, 3),
(450326, 450300, '永福县', 2, 0, 3),
(450327, 450300, '灌阳县', 2, 0, 3),
(450328, 450300, '龙胜各族自治县', 2, 0, 3),
(450329, 450300, '资源县', 2, 0, 3),
(450330, 450300, '平乐县', 2, 0, 3),
(450331, 450300, '荔浦县', 2, 0, 3),
(450332, 450300, '恭城瑶族自治县', 2, 0, 3),
(450333, 450300, '其它区', 2, 0, 3),
(450400, 450000, '梧州市', 2, 0, 2),
(450403, 450400, '万秀区', 2, 0, 3),
(450404, 450400, '蝶山区', 2, 0, 3),
(450405, 450400, '长洲区', 2, 0, 3),
(450406, 450400, '龙圩区', 2, 0, 3),
(450421, 450400, '苍梧县', 2, 0, 3),
(450422, 450400, '藤县', 2, 0, 3),
(450423, 450400, '蒙山县', 2, 0, 3),
(450481, 450400, '岑溪市', 2, 0, 3),
(450482, 450400, '其它区', 2, 0, 3),
(450500, 450000, '北海市', 2, 0, 2),
(450502, 450500, '海城区', 2, 0, 3),
(450503, 450500, '银海区', 2, 0, 3),
(450512, 450500, '铁山港区', 2, 0, 3),
(450521, 450500, '合浦县', 2, 0, 3),
(450522, 450500, '其它区', 2, 0, 3),
(450600, 450000, '防城港市', 2, 0, 2),
(450602, 450600, '港口区', 2, 0, 3),
(450603, 450600, '防城区', 2, 0, 3),
(450621, 450600, '上思县', 2, 0, 3),
(450681, 450600, '东兴市', 2, 0, 3),
(450682, 450600, '其它区', 2, 0, 3),
(450700, 450000, '钦州市', 2, 0, 2),
(450702, 450700, '钦南区', 2, 0, 3),
(450703, 450700, '钦北区', 2, 0, 3),
(450721, 450700, '灵山县', 2, 0, 3),
(450722, 450700, '浦北县', 2, 0, 3),
(450723, 450700, '其它区', 2, 0, 3),
(450800, 450000, '贵港市', 2, 0, 2),
(450802, 450800, '港北区', 2, 0, 3),
(450803, 450800, '港南区', 2, 0, 3),
(450804, 450800, '覃塘区', 2, 0, 3),
(450821, 450800, '平南县', 2, 0, 3),
(450881, 450800, '桂平市', 2, 0, 3),
(450882, 450800, '其它区', 2, 0, 3),
(450900, 450000, '玉林市', 2, 0, 2),
(450902, 450900, '玉州区', 2, 0, 3),
(450903, 450900, '福绵区', 2, 0, 3),
(450921, 450900, '容县', 2, 0, 3),
(450922, 450900, '陆川县', 2, 0, 3),
(450923, 450900, '博白县', 2, 0, 3),
(450924, 450900, '兴业县', 2, 0, 3),
(450981, 450900, '北流市', 2, 0, 3),
(450982, 450900, '其它区', 2, 0, 3),
(451000, 450000, '百色市', 2, 0, 2),
(451002, 451000, '右江区', 2, 0, 3),
(451021, 451000, '田阳县', 2, 0, 3),
(451022, 451000, '田东县', 2, 0, 3),
(451023, 451000, '平果县', 2, 0, 3),
(451024, 451000, '德保县', 2, 0, 3),
(451025, 451000, '靖西县', 2, 0, 3),
(451026, 451000, '那坡县', 2, 0, 3),
(451027, 451000, '凌云县', 2, 0, 3),
(451028, 451000, '乐业县', 2, 0, 3),
(451029, 451000, '田林县', 2, 0, 3),
(451030, 451000, '西林县', 2, 0, 3),
(451031, 451000, '隆林各族自治县', 2, 0, 3),
(451032, 451000, '其它区', 2, 0, 3),
(451100, 450000, '贺州市', 2, 0, 2),
(451102, 451100, '八步区', 2, 0, 3),
(451119, 451100, '平桂管理区', 2, 0, 3),
(451121, 451100, '昭平县', 2, 0, 3),
(451122, 451100, '钟山县', 2, 0, 3),
(451123, 451100, '富川瑶族自治县', 2, 0, 3),
(451124, 451100, '其它区', 2, 0, 3),
(451200, 450000, '河池市', 2, 0, 2),
(451202, 451200, '金城江区', 2, 0, 3),
(451221, 451200, '南丹县', 2, 0, 3),
(451222, 451200, '天峨县', 2, 0, 3),
(451223, 451200, '凤山县', 2, 0, 3),
(451224, 451200, '东兰县', 2, 0, 3),
(451225, 451200, '罗城仫佬族自治县', 2, 0, 3),
(451226, 451200, '环江毛南族自治县', 2, 0, 3),
(451227, 451200, '巴马瑶族自治县', 2, 0, 3),
(451228, 451200, '都安瑶族自治县', 2, 0, 3),
(451229, 451200, '大化瑶族自治县', 2, 0, 3),
(451281, 451200, '宜州市', 2, 0, 3),
(451282, 451200, '其它区', 2, 0, 3),
(451300, 450000, '来宾市', 2, 0, 2),
(451302, 451300, '兴宾区', 2, 0, 3),
(451321, 451300, '忻城县', 2, 0, 3),
(451322, 451300, '象州县', 2, 0, 3),
(451323, 451300, '武宣县', 2, 0, 3),
(451324, 451300, '金秀瑶族自治县', 2, 0, 3),
(451381, 451300, '合山市', 2, 0, 3),
(451382, 451300, '其它区', 2, 0, 3),
(451400, 450000, '崇左市', 2, 0, 2),
(451402, 451400, '江州区', 2, 0, 3),
(451421, 451400, '扶绥县', 2, 0, 3),
(451422, 451400, '宁明县', 2, 0, 3),
(451423, 451400, '龙州县', 2, 0, 3),
(451424, 451400, '大新县', 2, 0, 3),
(451425, 451400, '天等县', 2, 0, 3),
(451481, 451400, '凭祥市', 2, 0, 3),
(451482, 451400, '其它区', 2, 0, 3),
(460000, 0, '海南省', 2, 0, 1),
(460100, 460000, '海口市', 2, 0, 2),
(460105, 460100, '秀英区', 2, 0, 3),
(460106, 460100, '龙华区', 2, 0, 3),
(460107, 460100, '琼山区', 2, 0, 3),
(460108, 460100, '美兰区', 2, 0, 3),
(460109, 460100, '其它区', 2, 0, 3),
(460200, 460000, '三亚市', 2, 0, 2),
(460202, 460200, '海棠区', 2, 0, 3),
(460203, 460200, '吉阳区', 2, 0, 3),
(460204, 460200, '天涯区', 2, 0, 3),
(460205, 460200, '崖州区', 2, 0, 3),
(460300, 460000, '三沙市', 2, 0, 2),
(460400, 460000, '儋州市', 2, 0, 2),
(469000, 460000, '省直辖县级行政区划', 2, 0, 2),
(469001, 469000, '五指山市', 2, 0, 3),
(469002, 469000, '琼海市', 2, 0, 3),
(469003, 460000, '儋州市', 2, 0, 2),
(469005, 469000, '文昌市', 2, 0, 3),
(469006, 469000, '万宁市', 2, 0, 3),
(469007, 469000, '东方市', 2, 0, 3),
(469021, 469000, '定安县', 2, 0, 3),
(469022, 469000, '屯昌县', 2, 0, 3),
(469023, 469000, '澄迈县', 2, 0, 3),
(469024, 469000, '临高县', 2, 0, 3),
(469025, 469000, '白沙黎族自治县', 2, 0, 3),
(469026, 469000, '昌江黎族自治县', 2, 0, 3),
(469027, 469000, '乐东黎族自治县', 2, 0, 3),
(469028, 469000, '陵水黎族自治县', 2, 0, 3),
(469029, 469000, '保亭黎族苗族自治县', 2, 0, 3),
(469030, 469000, '琼中黎族苗族自治县', 2, 0, 3);
INSERT INTO `ims_weliam_shiftcar_address` (`id`, `pid`, `name`, `visible`, `displayorder`, `level`) VALUES
(469031, 460000, '昌江黎族自治县', 2, 0, 2),
(469033, 460000, '乐东黎族自治县', 2, 0, 2),
(469034, 460000, '陵水黎族自治县', 2, 0, 2),
(469035, 460000, '保亭黎族苗族自治县', 2, 0, 2),
(469036, 460000, '琼中黎族苗族自治县', 2, 0, 2),
(469037, 460000, '西沙群岛', 2, 0, 2),
(469038, 460000, '南沙群岛', 2, 0, 2),
(469039, 460000, '中沙群岛的岛礁及其海域', 2, 0, 2),
(471004, 410300, '高新区', 2, 0, 3),
(471005, 410300, '其它区', 2, 0, 3),
(500000, 0, '重庆市', 2, 0, 1),
(500100, 500000, '重庆市', 2, 0, 2),
(500101, 500100, '万州区', 2, 0, 3),
(500102, 500100, '涪陵区', 2, 0, 3),
(500103, 500100, '渝中区', 2, 0, 3),
(500104, 500100, '大渡口区', 2, 0, 3),
(500105, 500100, '江北区', 2, 0, 3),
(500106, 500100, '沙坪坝区', 2, 0, 3),
(500107, 500100, '九龙坡区', 2, 0, 3),
(500108, 500100, '南岸区', 2, 0, 3),
(500109, 500100, '北碚区', 2, 0, 3),
(500110, 500100, '綦江区', 2, 0, 3),
(500111, 500100, '大足区', 2, 0, 3),
(500112, 500100, '渝北区', 2, 0, 3),
(500113, 500100, '巴南区', 2, 0, 3),
(500114, 500100, '黔江区', 2, 0, 3),
(500115, 500100, '长寿区', 2, 0, 3),
(500116, 500100, '江津区', 2, 0, 3),
(500117, 500100, '合川区', 2, 0, 3),
(500118, 500100, '永川区', 2, 0, 3),
(500119, 500100, '南川区', 2, 0, 3),
(500120, 500100, '璧山区', 2, 0, 3),
(500151, 500100, '铜梁区', 2, 0, 3),
(500222, 500100, '綦江县', 2, 0, 3),
(500223, 500200, '潼南县', 2, 0, 3),
(500224, 500100, '铜梁县', 2, 0, 3),
(500225, 500100, '大足县', 2, 0, 3),
(500226, 500200, '荣昌县', 2, 0, 3),
(500227, 500100, '璧山县', 2, 0, 3),
(500228, 500200, '梁平县', 2, 0, 3),
(500229, 500200, '城口县', 2, 0, 3),
(500230, 500200, '丰都县', 2, 0, 3),
(500231, 500200, '垫江县', 2, 0, 3),
(500232, 500200, '武隆县', 2, 0, 3),
(500233, 500200, '忠县', 2, 0, 3),
(500234, 500200, '开县', 2, 0, 3),
(500235, 500200, '云阳县', 2, 0, 3),
(500236, 500200, '奉节县', 2, 0, 3),
(500237, 500200, '巫山县', 2, 0, 3),
(500238, 500200, '巫溪县', 2, 0, 3),
(500240, 500200, '石柱土家族自治县', 2, 0, 3),
(500241, 500200, '秀山土家族苗族自治县', 2, 0, 3),
(500242, 500200, '酉阳土家族苗族自治县', 2, 0, 3),
(500243, 500200, '彭水苗族土家族自治县', 2, 0, 3),
(500381, 500100, '江津区', 2, 0, 3),
(500382, 500100, '合川区', 2, 0, 3),
(500383, 500100, '永川区', 2, 0, 3),
(500384, 500100, '南川区', 2, 0, 3),
(500385, 500100, '其它区', 2, 0, 3),
(510000, 0, '四川省', 2, 0, 1),
(510100, 510000, '成都市', 2, 0, 2),
(510104, 510100, '锦江区', 2, 0, 3),
(510105, 510100, '青羊区', 2, 0, 3),
(510106, 510100, '金牛区', 2, 0, 3),
(510107, 510100, '武侯区', 2, 0, 3),
(510108, 510100, '成华区', 2, 0, 3),
(510112, 510100, '龙泉驿区', 2, 0, 3),
(510113, 510100, '青白江区', 2, 0, 3),
(510114, 510100, '新都区', 2, 0, 3),
(510115, 510100, '温江区', 2, 0, 3),
(510121, 510100, '金堂县', 2, 0, 3),
(510122, 510100, '双流县', 2, 0, 3),
(510124, 510100, '郫县', 2, 0, 3),
(510129, 510100, '大邑县', 2, 0, 3),
(510131, 510100, '蒲江县', 2, 0, 3),
(510132, 510100, '新津县', 2, 0, 3),
(510181, 510100, '都江堰市', 2, 0, 3),
(510182, 510100, '彭州市', 2, 0, 3),
(510183, 510100, '邛崃市', 2, 0, 3),
(510184, 510100, '崇州市', 2, 0, 3),
(510185, 510100, '其它区', 2, 0, 3),
(510300, 510000, '自贡市', 2, 0, 2),
(510302, 510300, '自流井区', 2, 0, 3),
(510303, 510300, '贡井区', 2, 0, 3),
(510304, 510300, '大安区', 2, 0, 3),
(510311, 510300, '沿滩区', 2, 0, 3),
(510321, 510300, '荣县', 2, 0, 3),
(510322, 510300, '富顺县', 2, 0, 3),
(510323, 510300, '其它区', 2, 0, 3),
(510400, 510000, '攀枝花市', 2, 0, 2),
(510402, 510400, '东区', 2, 0, 3),
(510403, 510400, '西区', 2, 0, 3),
(510411, 510400, '仁和区', 2, 0, 3),
(510421, 510400, '米易县', 2, 0, 3),
(510422, 510400, '盐边县', 2, 0, 3),
(510423, 510400, '其它区', 2, 0, 3),
(510500, 510000, '泸州市', 2, 0, 2),
(510502, 510500, '江阳区', 2, 0, 3),
(510503, 510500, '纳溪区', 2, 0, 3),
(510504, 510500, '龙马潭区', 2, 0, 3),
(510521, 510500, '泸县', 2, 0, 3),
(510522, 510500, '合江县', 2, 0, 3),
(510524, 510500, '叙永县', 2, 0, 3),
(510525, 510500, '古蔺县', 2, 0, 3),
(510526, 510500, '其它区', 2, 0, 3),
(510600, 510000, '德阳市', 2, 0, 2),
(510603, 510600, '旌阳区', 2, 0, 3),
(510623, 510600, '中江县', 2, 0, 3),
(510626, 510600, '罗江县', 2, 0, 3),
(510681, 510600, '广汉市', 2, 0, 3),
(510682, 510600, '什邡市', 2, 0, 3),
(510683, 510600, '绵竹市', 2, 0, 3),
(510684, 510600, '其它区', 2, 0, 3),
(510700, 510000, '绵阳市', 2, 0, 2),
(510703, 510700, '涪城区', 2, 0, 3),
(510704, 510700, '游仙区', 2, 0, 3),
(510722, 510700, '三台县', 2, 0, 3),
(510723, 510700, '盐亭县', 2, 0, 3),
(510724, 510700, '安县', 2, 0, 3),
(510725, 510700, '梓潼县', 2, 0, 3),
(510726, 510700, '北川羌族自治县', 2, 0, 3),
(510727, 510700, '平武县', 2, 0, 3),
(510751, 510700, '高新区', 2, 0, 3),
(510781, 510700, '江油市', 2, 0, 3),
(510782, 510700, '其它区', 2, 0, 3),
(510800, 510000, '广元市', 2, 0, 2),
(510802, 510800, '利州区', 2, 0, 3),
(510811, 510800, '昭化区', 2, 0, 3),
(510812, 510800, '朝天区', 2, 0, 3),
(510821, 510800, '旺苍县', 2, 0, 3),
(510822, 510800, '青川县', 2, 0, 3),
(510823, 510800, '剑阁县', 2, 0, 3),
(510824, 510800, '苍溪县', 2, 0, 3),
(510825, 510800, '其它区', 2, 0, 3),
(510900, 510000, '遂宁市', 2, 0, 2),
(510903, 510900, '船山区', 2, 0, 3),
(510904, 510900, '安居区', 2, 0, 3),
(510921, 510900, '蓬溪县', 2, 0, 3),
(510922, 510900, '射洪县', 2, 0, 3),
(510923, 510900, '大英县', 2, 0, 3),
(510924, 510900, '其它区', 2, 0, 3),
(511000, 510000, '内江市', 2, 0, 2),
(511002, 511000, '市中区', 2, 0, 3),
(511011, 511000, '东兴区', 2, 0, 3),
(511024, 511000, '威远县', 2, 0, 3),
(511025, 511000, '资中县', 2, 0, 3),
(511028, 511000, '隆昌县', 2, 0, 3),
(511029, 511000, '其它区', 2, 0, 3),
(511100, 510000, '乐山市', 2, 0, 2),
(511102, 511100, '市中区', 2, 0, 3),
(511111, 511100, '沙湾区', 2, 0, 3),
(511112, 511100, '五通桥区', 2, 0, 3),
(511113, 511100, '金口河区', 2, 0, 3),
(511123, 511100, '犍为县', 2, 0, 3),
(511124, 511100, '井研县', 2, 0, 3),
(511126, 511100, '夹江县', 2, 0, 3),
(511129, 511100, '沐川县', 2, 0, 3),
(511132, 511100, '峨边彝族自治县', 2, 0, 3),
(511133, 511100, '马边彝族自治县', 2, 0, 3),
(511181, 511100, '峨眉山市', 2, 0, 3),
(511182, 511100, '其它区', 2, 0, 3),
(511300, 510000, '南充市', 2, 0, 2),
(511302, 511300, '顺庆区', 2, 0, 3),
(511303, 511300, '高坪区', 2, 0, 3),
(511304, 511300, '嘉陵区', 2, 0, 3),
(511321, 511300, '南部县', 2, 0, 3),
(511322, 511300, '营山县', 2, 0, 3),
(511323, 511300, '蓬安县', 2, 0, 3),
(511324, 511300, '仪陇县', 2, 0, 3),
(511325, 511300, '西充县', 2, 0, 3),
(511381, 511300, '阆中市', 2, 0, 3),
(511382, 511300, '其它区', 2, 0, 3),
(511400, 510000, '眉山市', 2, 0, 2),
(511402, 511400, '东坡区', 2, 0, 3),
(511403, 511400, '彭山区', 2, 0, 3),
(511421, 511400, '仁寿县', 2, 0, 3),
(511422, 511400, '彭山县', 2, 0, 3),
(511423, 511400, '洪雅县', 2, 0, 3),
(511424, 511400, '丹棱县', 2, 0, 3),
(511425, 511400, '青神县', 2, 0, 3),
(511426, 511400, '其它区', 2, 0, 3),
(511500, 510000, '宜宾市', 2, 0, 2),
(511502, 511500, '翠屏区', 2, 0, 3),
(511503, 511500, '南溪区', 2, 0, 3),
(511521, 511500, '宜宾县', 2, 0, 3),
(511522, 511500, '南溪县', 2, 0, 3),
(511523, 511500, '江安县', 2, 0, 3),
(511524, 511500, '长宁县', 2, 0, 3),
(511525, 511500, '高县', 2, 0, 3),
(511526, 511500, '珙县', 2, 0, 3),
(511527, 511500, '筠连县', 2, 0, 3),
(511528, 511500, '兴文县', 2, 0, 3),
(511529, 511500, '屏山县', 2, 0, 3),
(511530, 511500, '其它区', 2, 0, 3),
(511600, 510000, '广安市', 2, 0, 2),
(511602, 511600, '广安区', 2, 0, 3),
(511603, 511600, '前锋区', 2, 0, 3),
(511621, 511600, '岳池县', 2, 0, 3),
(511622, 511600, '武胜县', 2, 0, 3),
(511623, 511600, '邻水县', 2, 0, 3),
(511681, 511600, '华蓥市', 2, 0, 3),
(511682, 511600, '市辖区', 2, 0, 3),
(511683, 511600, '其它区', 2, 0, 3),
(511700, 510000, '达州市', 2, 0, 2),
(511702, 511700, '通川区', 2, 0, 3),
(511703, 511700, '达川区', 2, 0, 3),
(511721, 511700, '达县', 2, 0, 3),
(511722, 511700, '宣汉县', 2, 0, 3),
(511723, 511700, '开江县', 2, 0, 3),
(511724, 511700, '大竹县', 2, 0, 3),
(511725, 511700, '渠县', 2, 0, 3),
(511781, 511700, '万源市', 2, 0, 3),
(511782, 511700, '其它区', 2, 0, 3),
(511800, 510000, '雅安市', 2, 0, 2),
(511802, 511800, '雨城区', 2, 0, 3),
(511803, 511800, '名山区', 2, 0, 3),
(511821, 511800, '名山县', 2, 0, 3),
(511822, 511800, '荥经县', 2, 0, 3),
(511823, 511800, '汉源县', 2, 0, 3),
(511824, 511800, '石棉县', 2, 0, 3),
(511825, 511800, '天全县', 2, 0, 3),
(511826, 511800, '芦山县', 2, 0, 3),
(511827, 511800, '宝兴县', 2, 0, 3),
(511828, 511800, '其它区', 2, 0, 3),
(511900, 510000, '巴中市', 2, 0, 2),
(511902, 511900, '巴州区', 2, 0, 3),
(511903, 511900, '恩阳区', 2, 0, 3),
(511921, 511900, '通江县', 2, 0, 3),
(511922, 511900, '南江县', 2, 0, 3),
(511923, 511900, '平昌县', 2, 0, 3),
(511924, 511900, '其它区', 2, 0, 3),
(512000, 510000, '资阳市', 2, 0, 2),
(512002, 512000, '雁江区', 2, 0, 3),
(512021, 512000, '安岳县', 2, 0, 3),
(512022, 512000, '乐至县', 2, 0, 3),
(512081, 512000, '简阳市', 2, 0, 3),
(512082, 512000, '其它区', 2, 0, 3),
(513200, 510000, '阿坝藏族羌族自治州', 2, 0, 2),
(513221, 513200, '汶川县', 2, 0, 3),
(513222, 513200, '理县', 2, 0, 3),
(513223, 513200, '茂县', 2, 0, 3),
(513224, 513200, '松潘县', 2, 0, 3),
(513225, 513200, '九寨沟县', 2, 0, 3),
(513226, 513200, '金川县', 2, 0, 3),
(513227, 513200, '小金县', 2, 0, 3),
(513228, 513200, '黑水县', 2, 0, 3),
(513229, 513200, '马尔康县', 2, 0, 3),
(513230, 513200, '壤塘县', 2, 0, 3),
(513231, 513200, '阿坝县', 2, 0, 3),
(513232, 513200, '若尔盖县', 2, 0, 3),
(513233, 513200, '红原县', 2, 0, 3),
(513234, 513200, '其它区', 2, 0, 3),
(513300, 510000, '甘孜藏族自治州', 2, 0, 2),
(513301, 513300, '康定市', 2, 0, 3),
(513321, 513300, '康定县', 2, 0, 3),
(513322, 513300, '泸定县', 2, 0, 3),
(513323, 513300, '丹巴县', 2, 0, 3),
(513324, 513300, '九龙县', 2, 0, 3),
(513325, 513300, '雅江县', 2, 0, 3),
(513326, 513300, '道孚县', 2, 0, 3),
(513327, 513300, '炉霍县', 2, 0, 3),
(513328, 513300, '甘孜县', 2, 0, 3),
(513329, 513300, '新龙县', 2, 0, 3),
(513330, 513300, '德格县', 2, 0, 3),
(513331, 513300, '白玉县', 2, 0, 3),
(513332, 513300, '石渠县', 2, 0, 3),
(513333, 513300, '色达县', 2, 0, 3),
(513334, 513300, '理塘县', 2, 0, 3),
(513335, 513300, '巴塘县', 2, 0, 3),
(513336, 513300, '乡城县', 2, 0, 3),
(513337, 513300, '稻城县', 2, 0, 3),
(513338, 513300, '得荣县', 2, 0, 3),
(513339, 513300, '其它区', 2, 0, 3),
(513400, 510000, '凉山彝族自治州', 2, 0, 2),
(513401, 513400, '西昌市', 2, 0, 3),
(513422, 513400, '木里藏族自治县', 2, 0, 3),
(513423, 513400, '盐源县', 2, 0, 3),
(513424, 513400, '德昌县', 2, 0, 3),
(513425, 513400, '会理县', 2, 0, 3),
(513426, 513400, '会东县', 2, 0, 3),
(513427, 513400, '宁南县', 2, 0, 3),
(513428, 513400, '普格县', 2, 0, 3),
(513429, 513400, '布拖县', 2, 0, 3),
(513430, 513400, '金阳县', 2, 0, 3),
(513431, 513400, '昭觉县', 2, 0, 3),
(513432, 513400, '喜德县', 2, 0, 3),
(513433, 513400, '冕宁县', 2, 0, 3),
(513434, 513400, '越西县', 2, 0, 3),
(513435, 513400, '甘洛县', 2, 0, 3),
(513436, 513400, '美姑县', 2, 0, 3),
(513437, 513400, '雷波县', 2, 0, 3),
(513438, 513400, '其它区', 2, 0, 3),
(520000, 0, '贵州省', 2, 0, 1),
(520100, 520000, '贵阳市', 2, 0, 2),
(520102, 520100, '南明区', 2, 0, 3),
(520103, 520100, '云岩区', 2, 0, 3),
(520111, 520100, '花溪区', 2, 0, 3),
(520112, 520100, '乌当区', 2, 0, 3),
(520113, 520100, '白云区', 2, 0, 3),
(520114, 520100, '小河区', 2, 0, 3),
(520115, 520100, '观山湖区', 2, 0, 3),
(520121, 520100, '开阳县', 2, 0, 3),
(520122, 520100, '息烽县', 2, 0, 3),
(520123, 520100, '修文县', 2, 0, 3),
(520151, 520100, '金阳开发区', 2, 0, 3),
(520181, 520100, '清镇市', 2, 0, 3),
(520182, 520100, '其它区', 2, 0, 3),
(520200, 520000, '六盘水市', 2, 0, 2),
(520201, 520200, '钟山区', 2, 0, 3),
(520203, 520200, '六枝特区', 2, 0, 3),
(520221, 520200, '水城县', 2, 0, 3),
(520222, 520200, '盘县', 2, 0, 3),
(520223, 520200, '其它区', 2, 0, 3),
(520300, 520000, '遵义市', 2, 0, 2),
(520302, 520300, '红花岗区', 2, 0, 3),
(520303, 520300, '汇川区', 2, 0, 3),
(520321, 520300, '遵义县', 2, 0, 3),
(520322, 520300, '桐梓县', 2, 0, 3),
(520323, 520300, '绥阳县', 2, 0, 3),
(520324, 520300, '正安县', 2, 0, 3),
(520325, 520300, '道真仡佬族苗族自治县', 2, 0, 3),
(520326, 520300, '务川仡佬族苗族自治县', 2, 0, 3),
(520327, 520300, '凤冈县', 2, 0, 3),
(520328, 520300, '湄潭县', 2, 0, 3),
(520329, 520300, '余庆县', 2, 0, 3),
(520330, 520300, '习水县', 2, 0, 3),
(520381, 520300, '赤水市', 2, 0, 3),
(520382, 520300, '仁怀市', 2, 0, 3),
(520383, 520300, '其它区', 2, 0, 3),
(520400, 520000, '安顺市', 2, 0, 2),
(520402, 520400, '西秀区', 2, 0, 3),
(520403, 520400, '平坝区', 2, 0, 3),
(520421, 520400, '平坝县', 2, 0, 3),
(520422, 520400, '普定县', 2, 0, 3),
(520423, 520400, '镇宁布依族苗族自治县', 2, 0, 3),
(520424, 520400, '关岭布依族苗族自治县', 2, 0, 3),
(520425, 520400, '紫云苗族布依族自治县', 2, 0, 3),
(520426, 520400, '其它区', 2, 0, 3),
(520500, 520000, '毕节市', 2, 0, 2),
(520502, 520500, '七星关区', 2, 0, 3),
(520521, 520500, '大方县', 2, 0, 3),
(520522, 520500, '黔西县', 2, 0, 3),
(520523, 520500, '金沙县', 2, 0, 3),
(520524, 520500, '织金县', 2, 0, 3),
(520525, 520500, '纳雍县', 2, 0, 3),
(520526, 520500, '威宁彝族回族苗族自治县', 2, 0, 3),
(520527, 520500, '赫章县', 2, 0, 3),
(520600, 520000, '铜仁市', 2, 0, 2),
(520602, 520600, '碧江区', 2, 0, 3),
(520603, 520600, '万山区', 2, 0, 3),
(520621, 520600, '江口县', 2, 0, 3),
(520622, 520600, '玉屏侗族自治县', 2, 0, 3),
(520623, 520600, '石阡县', 2, 0, 3),
(520624, 520600, '思南县', 2, 0, 3),
(520625, 520600, '印江土家族苗族自治县', 2, 0, 3),
(520626, 520600, '德江县', 2, 0, 3),
(520627, 520600, '沿河土家族自治县', 2, 0, 3),
(520628, 520600, '松桃苗族自治县', 2, 0, 3),
(522200, 520000, '铜仁地区', 2, 0, 2),
(522201, 522200, '铜仁市', 2, 0, 3),
(522222, 522200, '江口县', 2, 0, 3),
(522223, 522200, '玉屏侗族自治县', 2, 0, 3),
(522224, 522200, '石阡县', 2, 0, 3),
(522225, 522200, '思南县', 2, 0, 3),
(522226, 522200, '印江土家族苗族自治县', 2, 0, 3),
(522227, 522200, '德江县', 2, 0, 3),
(522228, 522200, '沿河土家族自治县', 2, 0, 3),
(522229, 522200, '松桃苗族自治县', 2, 0, 3),
(522230, 522200, '万山特区', 2, 0, 3),
(522231, 522200, '其它区', 2, 0, 3),
(522300, 520000, '黔西南布依族苗族自治州', 2, 0, 2),
(522301, 522300, '兴义市', 2, 0, 3),
(522322, 522300, '兴仁县', 2, 0, 3),
(522323, 522300, '普安县', 2, 0, 3),
(522324, 522300, '晴隆县', 2, 0, 3),
(522325, 522300, '贞丰县', 2, 0, 3),
(522326, 522300, '望谟县', 2, 0, 3),
(522327, 522300, '册亨县', 2, 0, 3),
(522328, 522300, '安龙县', 2, 0, 3),
(522329, 522300, '其它区', 2, 0, 3),
(522400, 520000, '毕节地区', 2, 0, 2),
(522401, 522400, '毕节市', 2, 0, 3),
(522422, 522400, '大方县', 2, 0, 3),
(522423, 522400, '黔西县', 2, 0, 3),
(522424, 522400, '金沙县', 2, 0, 3),
(522425, 522400, '织金县', 2, 0, 3),
(522426, 522400, '纳雍县', 2, 0, 3),
(522427, 522400, '威宁彝族回族苗族自治县', 2, 0, 3),
(522428, 522400, '赫章县', 2, 0, 3),
(522429, 522400, '其它区', 2, 0, 3),
(522600, 520000, '黔东南苗族侗族自治州', 2, 0, 2),
(522601, 522600, '凯里市', 2, 0, 3),
(522622, 522600, '黄平县', 2, 0, 3),
(522623, 522600, '施秉县', 2, 0, 3),
(522624, 522600, '三穗县', 2, 0, 3),
(522625, 522600, '镇远县', 2, 0, 3),
(522626, 522600, '岑巩县', 2, 0, 3),
(522627, 522600, '天柱县', 2, 0, 3),
(522628, 522600, '锦屏县', 2, 0, 3),
(522629, 522600, '剑河县', 2, 0, 3),
(522630, 522600, '台江县', 2, 0, 3),
(522631, 522600, '黎平县', 2, 0, 3),
(522632, 522600, '榕江县', 2, 0, 3),
(522633, 522600, '从江县', 2, 0, 3),
(522634, 522600, '雷山县', 2, 0, 3),
(522635, 522600, '麻江县', 2, 0, 3),
(522636, 522600, '丹寨县', 2, 0, 3),
(522637, 522600, '其它区', 2, 0, 3),
(522700, 520000, '黔南布依族苗族自治州', 2, 0, 2),
(522701, 522700, '都匀市', 2, 0, 3),
(522702, 522700, '福泉市', 2, 0, 3),
(522722, 522700, '荔波县', 2, 0, 3),
(522723, 522700, '贵定县', 2, 0, 3),
(522725, 522700, '瓮安县', 2, 0, 3),
(522726, 522700, '独山县', 2, 0, 3),
(522727, 522700, '平塘县', 2, 0, 3),
(522728, 522700, '罗甸县', 2, 0, 3),
(522729, 522700, '长顺县', 2, 0, 3),
(522730, 522700, '龙里县', 2, 0, 3),
(522731, 522700, '惠水县', 2, 0, 3),
(522732, 522700, '三都水族自治县', 2, 0, 3),
(522733, 522700, '其它区', 2, 0, 3),
(530000, 0, '云南省', 2, 0, 1),
(530100, 530000, '昆明市', 2, 0, 2),
(530102, 530100, '五华区', 2, 0, 3),
(530103, 530100, '盘龙区', 2, 0, 3),
(530111, 530100, '官渡区', 2, 0, 3),
(530112, 530100, '西山区', 2, 0, 3),
(530113, 530100, '东川区', 2, 0, 3),
(530114, 530100, '呈贡区', 2, 0, 3),
(530121, 530100, '呈贡县', 2, 0, 3),
(530122, 530100, '晋宁县', 2, 0, 3),
(530124, 530100, '富民县', 2, 0, 3),
(530125, 530100, '宜良县', 2, 0, 3),
(530126, 530100, '石林彝族自治县', 2, 0, 3),
(530127, 530100, '嵩明县', 2, 0, 3),
(530128, 530100, '禄劝彝族苗族自治县', 2, 0, 3),
(530129, 530100, '寻甸回族彝族自治县', 2, 0, 3),
(530181, 530100, '安宁市', 2, 0, 3),
(530182, 530100, '其它区', 2, 0, 3),
(530300, 530000, '曲靖市', 2, 0, 2),
(530302, 530300, '麒麟区', 2, 0, 3),
(530321, 530300, '马龙县', 2, 0, 3),
(530322, 530300, '陆良县', 2, 0, 3),
(530323, 530300, '师宗县', 2, 0, 3),
(530324, 530300, '罗平县', 2, 0, 3),
(530325, 530300, '富源县', 2, 0, 3),
(530326, 530300, '会泽县', 2, 0, 3),
(530328, 530300, '沾益县', 2, 0, 3),
(530381, 530300, '宣威市', 2, 0, 3),
(530382, 530300, '其它区', 2, 0, 3),
(530400, 530000, '玉溪市', 2, 0, 2),
(530402, 530400, '红塔区', 2, 0, 3),
(530421, 530400, '江川县', 2, 0, 3),
(530422, 530400, '澄江县', 2, 0, 3),
(530423, 530400, '通海县', 2, 0, 3),
(530424, 530400, '华宁县', 2, 0, 3),
(530425, 530400, '易门县', 2, 0, 3),
(530426, 530400, '峨山彝族自治县', 2, 0, 3),
(530427, 530400, '新平彝族傣族自治县', 2, 0, 3),
(530428, 530400, '元江哈尼族彝族傣族自治县', 2, 0, 3),
(530429, 530400, '其它区', 2, 0, 3),
(530500, 530000, '保山市', 2, 0, 2),
(530502, 530500, '隆阳区', 2, 0, 3),
(530521, 530500, '施甸县', 2, 0, 3),
(530522, 530500, '腾冲县', 2, 0, 3),
(530523, 530500, '龙陵县', 2, 0, 3),
(530524, 530500, '昌宁县', 2, 0, 3),
(530525, 530500, '其它区', 2, 0, 3),
(530600, 530000, '昭通市', 2, 0, 2),
(530602, 530600, '昭阳区', 2, 0, 3),
(530621, 530600, '鲁甸县', 2, 0, 3),
(530622, 530600, '巧家县', 2, 0, 3),
(530623, 530600, '盐津县', 2, 0, 3),
(530624, 530600, '大关县', 2, 0, 3),
(530625, 530600, '永善县', 2, 0, 3),
(530626, 530600, '绥江县', 2, 0, 3),
(530627, 530600, '镇雄县', 2, 0, 3),
(530628, 530600, '彝良县', 2, 0, 3),
(530629, 530600, '威信县', 2, 0, 3),
(530630, 530600, '水富县', 2, 0, 3),
(530631, 530600, '其它区', 2, 0, 3),
(530700, 530000, '丽江市', 2, 0, 2),
(530702, 530700, '古城区', 2, 0, 3),
(530721, 530700, '玉龙纳西族自治县', 2, 0, 3),
(530722, 530700, '永胜县', 2, 0, 3),
(530723, 530700, '华坪县', 2, 0, 3),
(530724, 530700, '宁蒗彝族自治县', 2, 0, 3),
(530725, 530700, '其它区', 2, 0, 3),
(530800, 530000, '普洱市', 2, 0, 2),
(530802, 530800, '思茅区', 2, 0, 3),
(530821, 530800, '宁洱哈尼族彝族自治县', 2, 0, 3),
(530822, 530800, '墨江哈尼族自治县', 2, 0, 3),
(530823, 530800, '景东彝族自治县', 2, 0, 3),
(530824, 530800, '景谷傣族彝族自治县', 2, 0, 3),
(530825, 530800, '镇沅彝族哈尼族拉祜族自治县', 2, 0, 3),
(530826, 530800, '江城哈尼族彝族自治县', 2, 0, 3),
(530827, 530800, '孟连傣族拉祜族佤族自治县', 2, 0, 3),
(530828, 530800, '澜沧拉祜族自治县', 2, 0, 3),
(530829, 530800, '西盟佤族自治县', 2, 0, 3),
(530830, 530800, '其它区', 2, 0, 3),
(530900, 530000, '临沧市', 2, 0, 2),
(530902, 530900, '临翔区', 2, 0, 3),
(530921, 530900, '凤庆县', 2, 0, 3),
(530922, 530900, '云县', 2, 0, 3),
(530923, 530900, '永德县', 2, 0, 3),
(530924, 530900, '镇康县', 2, 0, 3),
(530925, 530900, '双江拉祜族佤族布朗族傣族自治县', 2, 0, 3),
(530926, 530900, '耿马傣族佤族自治县', 2, 0, 3),
(530927, 530900, '沧源佤族自治县', 2, 0, 3),
(530928, 530900, '其它区', 2, 0, 3),
(532300, 530000, '楚雄彝族自治州', 2, 0, 2),
(532301, 532300, '楚雄市', 2, 0, 3),
(532322, 532300, '双柏县', 2, 0, 3),
(532323, 532300, '牟定县', 2, 0, 3),
(532324, 532300, '南华县', 2, 0, 3),
(532325, 532300, '姚安县', 2, 0, 3),
(532326, 532300, '大姚县', 2, 0, 3),
(532327, 532300, '永仁县', 2, 0, 3),
(532328, 532300, '元谋县', 2, 0, 3),
(532329, 532300, '武定县', 2, 0, 3),
(532331, 532300, '禄丰县', 2, 0, 3),
(532332, 532300, '其它区', 2, 0, 3),
(532500, 530000, '红河哈尼族彝族自治州', 2, 0, 2),
(532501, 532500, '个旧市', 2, 0, 3),
(532502, 532500, '开远市', 2, 0, 3),
(532503, 532500, '蒙自市', 2, 0, 3),
(532504, 532500, '弥勒市', 2, 0, 3),
(532522, 532500, '蒙自县', 2, 0, 3),
(532523, 532500, '屏边苗族自治县', 2, 0, 3),
(532524, 532500, '建水县', 2, 0, 3),
(532525, 532500, '石屏县', 2, 0, 3),
(532526, 532500, '弥勒县', 2, 0, 3),
(532527, 532500, '泸西县', 2, 0, 3),
(532528, 532500, '元阳县', 2, 0, 3),
(532529, 532500, '红河县', 2, 0, 3),
(532530, 532500, '金平苗族瑶族傣族自治县', 2, 0, 3),
(532531, 532500, '绿春县', 2, 0, 3),
(532532, 532500, '河口瑶族自治县', 2, 0, 3),
(532533, 532500, '其它区', 2, 0, 3),
(532600, 530000, '文山壮族苗族自治州', 2, 0, 2),
(532601, 532600, '文山市', 2, 0, 3),
(532621, 532600, '文山县', 2, 0, 3),
(532622, 532600, '砚山县', 2, 0, 3),
(532623, 532600, '西畴县', 2, 0, 3),
(532624, 532600, '麻栗坡县', 2, 0, 3),
(532625, 532600, '马关县', 2, 0, 3),
(532626, 532600, '丘北县', 2, 0, 3),
(532627, 532600, '广南县', 2, 0, 3),
(532628, 532600, '富宁县', 2, 0, 3),
(532629, 532600, '其它区', 2, 0, 3),
(532800, 530000, '西双版纳傣族自治州', 2, 0, 2),
(532801, 532800, '景洪市', 2, 0, 3),
(532822, 532800, '勐海县', 2, 0, 3),
(532823, 532800, '勐腊县', 2, 0, 3),
(532824, 532800, '其它区', 2, 0, 3),
(532900, 530000, '大理白族自治州', 2, 0, 2),
(532901, 532900, '大理市', 2, 0, 3),
(532922, 532900, '漾濞彝族自治县', 2, 0, 3),
(532923, 532900, '祥云县', 2, 0, 3),
(532924, 532900, '宾川县', 2, 0, 3),
(532925, 532900, '弥渡县', 2, 0, 3),
(532926, 532900, '南涧彝族自治县', 2, 0, 3),
(532927, 532900, '巍山彝族回族自治县', 2, 0, 3),
(532928, 532900, '永平县', 2, 0, 3),
(532929, 532900, '云龙县', 2, 0, 3),
(532930, 532900, '洱源县', 2, 0, 3),
(532931, 532900, '剑川县', 2, 0, 3),
(532932, 532900, '鹤庆县', 2, 0, 3),
(532933, 532900, '其它区', 2, 0, 3),
(533100, 530000, '德宏傣族景颇族自治州', 2, 0, 2),
(533102, 533100, '瑞丽市', 2, 0, 3),
(533103, 533100, '芒市', 2, 0, 3),
(533122, 533100, '梁河县', 2, 0, 3),
(533123, 533100, '盈江县', 2, 0, 3),
(533124, 533100, '陇川县', 2, 0, 3),
(533125, 533100, '其它区', 2, 0, 3),
(533300, 530000, '怒江傈僳族自治州', 2, 0, 2),
(533321, 533300, '泸水县', 2, 0, 3),
(533323, 533300, '福贡县', 2, 0, 3),
(533324, 533300, '贡山独龙族怒族自治县', 2, 0, 3),
(533325, 533300, '兰坪白族普米族自治县', 2, 0, 3),
(533326, 533300, '其它区', 2, 0, 3),
(533400, 530000, '迪庆藏族自治州', 2, 0, 2),
(533401, 533400, '香格里拉市', 2, 0, 3),
(533421, 533400, '香格里拉县', 2, 0, 3),
(533422, 533400, '德钦县', 2, 0, 3),
(533423, 533400, '维西傈僳族自治县', 2, 0, 3),
(533424, 533400, '其它区', 2, 0, 3),
(540000, 0, '西藏自治区', 2, 0, 1),
(540100, 540000, '拉萨市', 2, 0, 2),
(540102, 540100, '城关区', 2, 0, 3),
(540121, 540100, '林周县', 2, 0, 3),
(540122, 540100, '当雄县', 2, 0, 3),
(540123, 540100, '尼木县', 2, 0, 3),
(540124, 540100, '曲水县', 2, 0, 3),
(540125, 540100, '堆龙德庆县', 2, 0, 3),
(540126, 540100, '达孜县', 2, 0, 3),
(540127, 540100, '墨竹工卡县', 2, 0, 3),
(540128, 540100, '其它区', 2, 0, 3),
(540200, 540000, '日喀则市', 2, 0, 2),
(540202, 540200, '桑珠孜区', 2, 0, 3),
(540221, 540200, '南木林县', 2, 0, 3),
(540222, 540200, '江孜县', 2, 0, 3),
(540223, 540200, '定日县', 2, 0, 3),
(540224, 540200, '萨迦县', 2, 0, 3),
(540225, 540200, '拉孜县', 2, 0, 3),
(540226, 540200, '昂仁县', 2, 0, 3),
(540227, 540200, '谢通门县', 2, 0, 3),
(540228, 540200, '白朗县', 2, 0, 3),
(540229, 540200, '仁布县', 2, 0, 3),
(540230, 540200, '康马县', 2, 0, 3),
(540231, 540200, '定结县', 2, 0, 3),
(540232, 540200, '仲巴县', 2, 0, 3),
(540233, 540200, '亚东县', 2, 0, 3),
(540234, 540200, '吉隆县', 2, 0, 3),
(540235, 540200, '聂拉木县', 2, 0, 3),
(540236, 540200, '萨嘎县', 2, 0, 3),
(540237, 540200, '岗巴县', 2, 0, 3),
(540300, 540000, '昌都市', 2, 0, 2),
(540302, 540300, '卡若区', 2, 0, 3),
(540321, 540300, '江达县', 2, 0, 3),
(540322, 540300, '贡觉县', 2, 0, 3),
(540323, 540300, '类乌齐县', 2, 0, 3),
(540324, 540300, '丁青县', 2, 0, 3),
(540325, 540300, '察雅县', 2, 0, 3),
(540326, 540300, '八宿县', 2, 0, 3),
(540327, 540300, '左贡县', 2, 0, 3),
(540328, 540300, '芒康县', 2, 0, 3),
(540329, 540300, '洛隆县', 2, 0, 3),
(540330, 540300, '边坝县', 2, 0, 3),
(540400, 540000, '林芝市', 2, 0, 2),
(540402, 540400, '巴宜区', 2, 0, 3),
(540421, 540400, '工布江达县', 2, 0, 3),
(540422, 540400, '米林县', 2, 0, 3),
(540423, 540400, '墨脱县', 2, 0, 3),
(540424, 540400, '波密县', 2, 0, 3),
(540425, 540400, '察隅县', 2, 0, 3),
(540426, 540400, '朗县', 2, 0, 3),
(542100, 540000, '昌都地区', 2, 0, 2),
(542121, 542100, '昌都县', 2, 0, 3),
(542122, 542100, '江达县', 2, 0, 3),
(542123, 542100, '贡觉县', 2, 0, 3),
(542124, 542100, '类乌齐县', 2, 0, 3),
(542125, 542100, '丁青县', 2, 0, 3),
(542126, 542100, '察雅县', 2, 0, 3),
(542127, 542100, '八宿县', 2, 0, 3),
(542128, 542100, '左贡县', 2, 0, 3),
(542129, 542100, '芒康县', 2, 0, 3),
(542132, 542100, '洛隆县', 2, 0, 3),
(542133, 542100, '边坝县', 2, 0, 3),
(542134, 542100, '其它区', 2, 0, 3),
(542200, 540000, '山南地区', 2, 0, 2),
(542221, 542200, '乃东县', 2, 0, 3),
(542222, 542200, '扎囊县', 2, 0, 3),
(542223, 542200, '贡嘎县', 2, 0, 3),
(542224, 542200, '桑日县', 2, 0, 3),
(542225, 542200, '琼结县', 2, 0, 3),
(542226, 542200, '曲松县', 2, 0, 3),
(542227, 542200, '措美县', 2, 0, 3),
(542228, 542200, '洛扎县', 2, 0, 3),
(542229, 542200, '加查县', 2, 0, 3),
(542231, 542200, '隆子县', 2, 0, 3),
(542232, 542200, '错那县', 2, 0, 3),
(542233, 542200, '浪卡子县', 2, 0, 3),
(542234, 542200, '其它区', 2, 0, 3),
(542300, 540000, '日喀则地区', 2, 0, 2),
(542301, 542300, '日喀则市', 2, 0, 3),
(542322, 542300, '南木林县', 2, 0, 3),
(542323, 542300, '江孜县', 2, 0, 3),
(542324, 542300, '定日县', 2, 0, 3),
(542325, 542300, '萨迦县', 2, 0, 3),
(542326, 542300, '拉孜县', 2, 0, 3),
(542327, 542300, '昂仁县', 2, 0, 3),
(542328, 542300, '谢通门县', 2, 0, 3),
(542329, 542300, '白朗县', 2, 0, 3),
(542330, 542300, '仁布县', 2, 0, 3),
(542331, 542300, '康马县', 2, 0, 3),
(542332, 542300, '定结县', 2, 0, 3),
(542333, 542300, '仲巴县', 2, 0, 3),
(542334, 542300, '亚东县', 2, 0, 3),
(542335, 542300, '吉隆县', 2, 0, 3),
(542336, 542300, '聂拉木县', 2, 0, 3),
(542337, 542300, '萨嘎县', 2, 0, 3),
(542338, 542300, '岗巴县', 2, 0, 3),
(542339, 542300, '其它区', 2, 0, 3),
(542400, 540000, '那曲地区', 2, 0, 2),
(542421, 542400, '那曲县', 2, 0, 3),
(542422, 542400, '嘉黎县', 2, 0, 3),
(542423, 542400, '比如县', 2, 0, 3),
(542424, 542400, '聂荣县', 2, 0, 3),
(542425, 542400, '安多县', 2, 0, 3),
(542426, 542400, '申扎县', 2, 0, 3),
(542427, 542400, '索县', 2, 0, 3),
(542428, 542400, '班戈县', 2, 0, 3),
(542429, 542400, '巴青县', 2, 0, 3),
(542430, 542400, '尼玛县', 2, 0, 3),
(542431, 542400, '双湖县', 2, 0, 3),
(542500, 540000, '阿里地区', 2, 0, 2),
(542521, 542500, '普兰县', 2, 0, 3),
(542522, 542500, '札达县', 2, 0, 3),
(542523, 542500, '噶尔县', 2, 0, 3),
(542524, 542500, '日土县', 2, 0, 3),
(542525, 542500, '革吉县', 2, 0, 3),
(542526, 542500, '改则县', 2, 0, 3),
(542527, 542500, '措勤县', 2, 0, 3),
(542528, 542500, '其它区', 2, 0, 3),
(542600, 540000, '林芝地区', 2, 0, 2),
(542621, 542600, '林芝县', 2, 0, 3),
(542622, 542600, '工布江达县', 2, 0, 3),
(542623, 542600, '米林县', 2, 0, 3),
(542624, 542600, '墨脱县', 2, 0, 3),
(542625, 542600, '波密县', 2, 0, 3),
(542626, 542600, '察隅县', 2, 0, 3),
(542627, 542600, '朗县', 2, 0, 3),
(542628, 542600, '其它区', 2, 0, 3),
(610000, 0, '陕西省', 2, 0, 1),
(610100, 610000, '西安市', 2, 0, 2),
(610102, 610100, '新城区', 2, 0, 3),
(610103, 610100, '碑林区', 2, 0, 3),
(610104, 610100, '莲湖区', 2, 0, 3),
(610111, 610100, '灞桥区', 2, 0, 3),
(610112, 610100, '未央区', 2, 0, 3),
(610113, 610100, '雁塔区', 2, 0, 3),
(610114, 610100, '阎良区', 2, 0, 3),
(610115, 610100, '临潼区', 2, 0, 3),
(610116, 610100, '长安区', 2, 0, 3),
(610117, 610100, '高陵区', 2, 0, 3),
(610122, 610100, '蓝田县', 2, 0, 3),
(610124, 610100, '周至县', 2, 0, 3),
(610125, 610100, '户县', 2, 0, 3),
(610126, 610100, '高陵县', 2, 0, 3),
(610127, 610100, '其它区', 2, 0, 3),
(610200, 610000, '铜川市', 2, 0, 2),
(610202, 610200, '王益区', 2, 0, 3),
(610203, 610200, '印台区', 2, 0, 3),
(610204, 610200, '耀州区', 2, 0, 3),
(610222, 610200, '宜君县', 2, 0, 3),
(610223, 610200, '其它区', 2, 0, 3),
(610300, 610000, '宝鸡市', 2, 0, 2),
(610302, 610300, '渭滨区', 2, 0, 3),
(610303, 610300, '金台区', 2, 0, 3),
(610304, 610300, '陈仓区', 2, 0, 3),
(610322, 610300, '凤翔县', 2, 0, 3),
(610323, 610300, '岐山县', 2, 0, 3),
(610324, 610300, '扶风县', 2, 0, 3),
(610326, 610300, '眉县', 2, 0, 3),
(610327, 610300, '陇县', 2, 0, 3),
(610328, 610300, '千阳县', 2, 0, 3),
(610329, 610300, '麟游县', 2, 0, 3),
(610330, 610300, '凤县', 2, 0, 3),
(610331, 610300, '太白县', 2, 0, 3),
(610332, 610300, '其它区', 2, 0, 3),
(610400, 610000, '咸阳市', 2, 0, 2),
(610402, 610400, '秦都区', 2, 0, 3),
(610403, 610400, '杨陵区', 2, 0, 3),
(610404, 610400, '渭城区', 2, 0, 3),
(610422, 610400, '三原县', 2, 0, 3),
(610423, 610400, '泾阳县', 2, 0, 3),
(610424, 610400, '乾县', 2, 0, 3),
(610425, 610400, '礼泉县', 2, 0, 3),
(610426, 610400, '永寿县', 2, 0, 3),
(610427, 610400, '彬县', 2, 0, 3),
(610428, 610400, '长武县', 2, 0, 3),
(610429, 610400, '旬邑县', 2, 0, 3),
(610430, 610400, '淳化县', 2, 0, 3),
(610431, 610400, '武功县', 2, 0, 3),
(610481, 610400, '兴平市', 2, 0, 3),
(610482, 610400, '其它区', 2, 0, 3),
(610500, 610000, '渭南市', 2, 0, 2),
(610502, 610500, '临渭区', 2, 0, 3),
(610521, 610500, '华县', 2, 0, 3),
(610522, 610500, '潼关县', 2, 0, 3),
(610523, 610500, '大荔县', 2, 0, 3),
(610524, 610500, '合阳县', 2, 0, 3),
(610525, 610500, '澄城县', 2, 0, 3),
(610526, 610500, '蒲城县', 2, 0, 3),
(610527, 610500, '白水县', 2, 0, 3),
(610528, 610500, '富平县', 2, 0, 3),
(610581, 610500, '韩城市', 2, 0, 3),
(610582, 610500, '华阴市', 2, 0, 3),
(610583, 610500, '其它区', 2, 0, 3),
(610600, 610000, '延安市', 2, 0, 2),
(610602, 610600, '宝塔区', 2, 0, 3),
(610621, 610600, '延长县', 2, 0, 3),
(610622, 610600, '延川县', 2, 0, 3),
(610623, 610600, '子长县', 2, 0, 3),
(610624, 610600, '安塞县', 2, 0, 3),
(610625, 610600, '志丹县', 2, 0, 3),
(610626, 610600, '吴起县', 2, 0, 3),
(610627, 610600, '甘泉县', 2, 0, 3),
(610628, 610600, '富县', 2, 0, 3),
(610629, 610600, '洛川县', 2, 0, 3),
(610630, 610600, '宜川县', 2, 0, 3),
(610631, 610600, '黄龙县', 2, 0, 3),
(610632, 610600, '黄陵县', 2, 0, 3),
(610633, 610600, '其它区', 2, 0, 3),
(610700, 610000, '汉中市', 2, 0, 2),
(610702, 610700, '汉台区', 2, 0, 3),
(610721, 610700, '南郑县', 2, 0, 3),
(610722, 610700, '城固县', 2, 0, 3),
(610723, 610700, '洋县', 2, 0, 3),
(610724, 610700, '西乡县', 2, 0, 3),
(610725, 610700, '勉县', 2, 0, 3),
(610726, 610700, '宁强县', 2, 0, 3),
(610727, 610700, '略阳县', 2, 0, 3),
(610728, 610700, '镇巴县', 2, 0, 3),
(610729, 610700, '留坝县', 2, 0, 3),
(610730, 610700, '佛坪县', 2, 0, 3),
(610731, 610700, '其它区', 2, 0, 3),
(610800, 610000, '榆林市', 2, 0, 2),
(610802, 610800, '榆阳区', 2, 0, 3),
(610821, 610800, '神木县', 2, 0, 3),
(610822, 610800, '府谷县', 2, 0, 3),
(610823, 610800, '横山县', 2, 0, 3),
(610824, 610800, '靖边县', 2, 0, 3),
(610825, 610800, '定边县', 2, 0, 3),
(610826, 610800, '绥德县', 2, 0, 3),
(610827, 610800, '米脂县', 2, 0, 3),
(610828, 610800, '佳县', 2, 0, 3),
(610829, 610800, '吴堡县', 2, 0, 3),
(610830, 610800, '清涧县', 2, 0, 3),
(610831, 610800, '子洲县', 2, 0, 3),
(610832, 610800, '其它区', 2, 0, 3),
(610900, 610000, '安康市', 2, 0, 2),
(610902, 610900, '汉滨区', 2, 0, 3),
(610921, 610900, '汉阴县', 2, 0, 3),
(610922, 610900, '石泉县', 2, 0, 3),
(610923, 610900, '宁陕县', 2, 0, 3),
(610924, 610900, '紫阳县', 2, 0, 3),
(610925, 610900, '岚皋县', 2, 0, 3),
(610926, 610900, '平利县', 2, 0, 3),
(610927, 610900, '镇坪县', 2, 0, 3),
(610928, 610900, '旬阳县', 2, 0, 3),
(610929, 610900, '白河县', 2, 0, 3),
(610930, 610900, '其它区', 2, 0, 3),
(611000, 610000, '商洛市', 2, 0, 2),
(611002, 611000, '商州区', 2, 0, 3),
(611021, 611000, '洛南县', 2, 0, 3),
(611022, 611000, '丹凤县', 2, 0, 3),
(611023, 611000, '商南县', 2, 0, 3),
(611024, 611000, '山阳县', 2, 0, 3),
(611025, 611000, '镇安县', 2, 0, 3),
(611026, 611000, '柞水县', 2, 0, 3),
(611027, 611000, '其它区', 2, 0, 3),
(620000, 0, '甘肃省', 2, 0, 1),
(620100, 620000, '兰州市', 2, 0, 2),
(620102, 620100, '城关区', 2, 0, 3),
(620103, 620100, '七里河区', 2, 0, 3),
(620104, 620100, '西固区', 2, 0, 3),
(620105, 620100, '安宁区', 2, 0, 3),
(620111, 620100, '红古区', 2, 0, 3),
(620121, 620100, '永登县', 2, 0, 3),
(620122, 620100, '皋兰县', 2, 0, 3),
(620123, 620100, '榆中县', 2, 0, 3),
(620124, 620100, '其它区', 2, 0, 3),
(620200, 620000, '嘉峪关市', 2, 0, 2),
(620300, 620000, '金昌市', 2, 0, 2),
(620302, 620300, '金川区', 2, 0, 3),
(620321, 620300, '永昌县', 2, 0, 3),
(620322, 620300, '其它区', 2, 0, 3),
(620400, 620000, '白银市', 2, 0, 2),
(620402, 620400, '白银区', 2, 0, 3),
(620403, 620400, '平川区', 2, 0, 3),
(620421, 620400, '靖远县', 2, 0, 3),
(620422, 620400, '会宁县', 2, 0, 3),
(620423, 620400, '景泰县', 2, 0, 3),
(620424, 620400, '其它区', 2, 0, 3),
(620500, 620000, '天水市', 2, 0, 2),
(620502, 620500, '秦州区', 2, 0, 3),
(620503, 620500, '麦积区', 2, 0, 3),
(620521, 620500, '清水县', 2, 0, 3),
(620522, 620500, '秦安县', 2, 0, 3),
(620523, 620500, '甘谷县', 2, 0, 3),
(620524, 620500, '武山县', 2, 0, 3),
(620525, 620500, '张家川回族自治县', 2, 0, 3),
(620526, 620500, '其它区', 2, 0, 3),
(620600, 620000, '武威市', 2, 0, 2),
(620602, 620600, '凉州区', 2, 0, 3),
(620621, 620600, '民勤县', 2, 0, 3),
(620622, 620600, '古浪县', 2, 0, 3),
(620623, 620600, '天祝藏族自治县', 2, 0, 3),
(620624, 620600, '其它区', 2, 0, 3),
(620700, 620000, '张掖市', 2, 0, 2),
(620702, 620700, '甘州区', 2, 0, 3),
(620721, 620700, '肃南裕固族自治县', 2, 0, 3),
(620722, 620700, '民乐县', 2, 0, 3),
(620723, 620700, '临泽县', 2, 0, 3),
(620724, 620700, '高台县', 2, 0, 3),
(620725, 620700, '山丹县', 2, 0, 3),
(620726, 620700, '其它区', 2, 0, 3),
(620800, 620000, '平凉市', 2, 0, 2),
(620802, 620800, '崆峒区', 2, 0, 3),
(620821, 620800, '泾川县', 2, 0, 3),
(620822, 620800, '灵台县', 2, 0, 3),
(620823, 620800, '崇信县', 2, 0, 3),
(620824, 620800, '华亭县', 2, 0, 3),
(620825, 620800, '庄浪县', 2, 0, 3),
(620826, 620800, '静宁县', 2, 0, 3),
(620827, 620800, '其它区', 2, 0, 3),
(620900, 620000, '酒泉市', 2, 0, 2),
(620902, 620900, '肃州区', 2, 0, 3),
(620921, 620900, '金塔县', 2, 0, 3),
(620922, 620900, '瓜州县', 2, 0, 3),
(620923, 620900, '肃北蒙古族自治县', 2, 0, 3),
(620924, 620900, '阿克塞哈萨克族自治县', 2, 0, 3),
(620981, 620900, '玉门市', 2, 0, 3),
(620982, 620900, '敦煌市', 2, 0, 3),
(620983, 620900, '其它区', 2, 0, 3),
(621000, 620000, '庆阳市', 2, 0, 2),
(621002, 621000, '西峰区', 2, 0, 3),
(621021, 621000, '庆城县', 2, 0, 3),
(621022, 621000, '环县', 2, 0, 3),
(621023, 621000, '华池县', 2, 0, 3),
(621024, 621000, '合水县', 2, 0, 3),
(621025, 621000, '正宁县', 2, 0, 3),
(621026, 621000, '宁县', 2, 0, 3),
(621027, 621000, '镇原县', 2, 0, 3),
(621028, 621000, '其它区', 2, 0, 3),
(621100, 620000, '定西市', 2, 0, 2),
(621102, 621100, '安定区', 2, 0, 3),
(621121, 621100, '通渭县', 2, 0, 3),
(621122, 621100, '陇西县', 2, 0, 3),
(621123, 621100, '渭源县', 2, 0, 3),
(621124, 621100, '临洮县', 2, 0, 3),
(621125, 621100, '漳县', 2, 0, 3),
(621126, 621100, '岷县', 2, 0, 3),
(621127, 621100, '其它区', 2, 0, 3),
(621200, 620000, '陇南市', 2, 0, 2),
(621202, 621200, '武都区', 2, 0, 3),
(621221, 621200, '成县', 2, 0, 3),
(621222, 621200, '文县', 2, 0, 3),
(621223, 621200, '宕昌县', 2, 0, 3),
(621224, 621200, '康县', 2, 0, 3),
(621225, 621200, '西和县', 2, 0, 3),
(621226, 621200, '礼县', 2, 0, 3),
(621227, 621200, '徽县', 2, 0, 3),
(621228, 621200, '两当县', 2, 0, 3),
(621229, 621200, '其它区', 2, 0, 3),
(622900, 620000, '临夏回族自治州', 2, 0, 2),
(622901, 622900, '临夏市', 2, 0, 3),
(622921, 622900, '临夏县', 2, 0, 3),
(622922, 622900, '康乐县', 2, 0, 3),
(622923, 622900, '永靖县', 2, 0, 3),
(622924, 622900, '广河县', 2, 0, 3),
(622925, 622900, '和政县', 2, 0, 3),
(622926, 622900, '东乡族自治县', 2, 0, 3),
(622927, 622900, '积石山保安族东乡族撒拉族自治县', 2, 0, 3),
(622928, 622900, '其它区', 2, 0, 3),
(623000, 620000, '甘南藏族自治州', 2, 0, 2),
(623001, 623000, '合作市', 2, 0, 3),
(623021, 623000, '临潭县', 2, 0, 3),
(623022, 623000, '卓尼县', 2, 0, 3),
(623023, 623000, '舟曲县', 2, 0, 3),
(623024, 623000, '迭部县', 2, 0, 3),
(623025, 623000, '玛曲县', 2, 0, 3),
(623026, 623000, '碌曲县', 2, 0, 3),
(623027, 623000, '夏河县', 2, 0, 3),
(623028, 623000, '其它区', 2, 0, 3),
(630000, 0, '青海省', 2, 0, 1),
(630100, 630000, '西宁市', 2, 0, 2),
(630102, 630100, '城东区', 2, 0, 3),
(630103, 630100, '城中区', 2, 0, 3),
(630104, 630100, '城西区', 2, 0, 3),
(630105, 630100, '城北区', 2, 0, 3),
(630121, 630100, '大通回族土族自治县', 2, 0, 3),
(630122, 630100, '湟中县', 2, 0, 3),
(630123, 630100, '湟源县', 2, 0, 3),
(630124, 630100, '其它区', 2, 0, 3),
(630200, 630000, '海东市', 2, 0, 2),
(630202, 630200, '乐都区', 2, 0, 3),
(630203, 630200, '平安区', 2, 0, 3),
(630222, 630200, '民和回族土族自治县', 2, 0, 3),
(630223, 630200, '互助土族自治县', 2, 0, 3),
(630224, 630200, '化隆回族自治县', 2, 0, 3),
(630225, 630200, '循化撒拉族自治县', 2, 0, 3),
(632100, 630000, '海东地区', 2, 0, 2),
(632121, 632100, '平安县', 2, 0, 3),
(632122, 632100, '民和回族土族自治县', 2, 0, 3),
(632123, 632100, '乐都县', 2, 0, 3),
(632126, 632100, '互助土族自治县', 2, 0, 3),
(632127, 632100, '化隆回族自治县', 2, 0, 3),
(632128, 632100, '循化撒拉族自治县', 2, 0, 3),
(632129, 632100, '其它区', 2, 0, 3),
(632200, 630000, '海北藏族自治州', 2, 0, 2),
(632221, 632200, '门源回族自治县', 2, 0, 3),
(632222, 632200, '祁连县', 2, 0, 3),
(632223, 632200, '海晏县', 2, 0, 3),
(632224, 632200, '刚察县', 2, 0, 3),
(632225, 632200, '其它区', 2, 0, 3),
(632300, 630000, '黄南藏族自治州', 2, 0, 2),
(632321, 632300, '同仁县', 2, 0, 3),
(632322, 632300, '尖扎县', 2, 0, 3),
(632323, 632300, '泽库县', 2, 0, 3),
(632324, 632300, '河南蒙古族自治县', 2, 0, 3),
(632325, 632300, '其它区', 2, 0, 3),
(632500, 630000, '海南藏族自治州', 2, 0, 2),
(632521, 632500, '共和县', 2, 0, 3),
(632522, 632500, '同德县', 2, 0, 3),
(632523, 632500, '贵德县', 2, 0, 3),
(632524, 632500, '兴海县', 2, 0, 3),
(632525, 632500, '贵南县', 2, 0, 3),
(632526, 632500, '其它区', 2, 0, 3),
(632600, 630000, '果洛藏族自治州', 2, 0, 2),
(632621, 632600, '玛沁县', 2, 0, 3),
(632622, 632600, '班玛县', 2, 0, 3),
(632623, 632600, '甘德县', 2, 0, 3),
(632624, 632600, '达日县', 2, 0, 3),
(632625, 632600, '久治县', 2, 0, 3),
(632626, 632600, '玛多县', 2, 0, 3),
(632627, 632600, '其它区', 2, 0, 3),
(632700, 630000, '玉树藏族自治州', 2, 0, 2),
(632701, 632700, '玉树市', 2, 0, 3),
(632721, 632700, '玉树县', 2, 0, 3),
(632722, 632700, '杂多县', 2, 0, 3),
(632723, 632700, '称多县', 2, 0, 3),
(632724, 632700, '治多县', 2, 0, 3),
(632725, 632700, '囊谦县', 2, 0, 3),
(632726, 632700, '曲麻莱县', 2, 0, 3),
(632727, 632700, '其它区', 2, 0, 3),
(632800, 630000, '海西蒙古族藏族自治州', 2, 0, 2),
(632801, 632800, '格尔木市', 2, 0, 3),
(632802, 632800, '德令哈市', 2, 0, 3),
(632821, 632800, '乌兰县', 2, 0, 3),
(632822, 632800, '都兰县', 2, 0, 3),
(632823, 632800, '天峻县', 2, 0, 3),
(632824, 632800, '其它区', 2, 0, 3),
(640000, 0, '宁夏回族自治区', 2, 0, 1),
(640100, 640000, '银川市', 2, 0, 2),
(640104, 640100, '兴庆区', 2, 0, 3),
(640105, 640100, '西夏区', 2, 0, 3),
(640106, 640100, '金凤区', 2, 0, 3),
(640121, 640100, '永宁县', 2, 0, 3),
(640122, 640100, '贺兰县', 2, 0, 3),
(640181, 640100, '灵武市', 2, 0, 3),
(640182, 640100, '其它区', 2, 0, 3),
(640200, 640000, '石嘴山市', 2, 0, 2),
(640202, 640200, '大武口区', 2, 0, 3),
(640205, 640200, '惠农区', 2, 0, 3),
(640221, 640200, '平罗县', 2, 0, 3),
(640222, 640200, '其它区', 2, 0, 3),
(640300, 640000, '吴忠市', 2, 0, 2),
(640302, 640300, '利通区', 2, 0, 3),
(640303, 640300, '红寺堡区', 2, 0, 3),
(640323, 640300, '盐池县', 2, 0, 3),
(640324, 640300, '同心县', 2, 0, 3),
(640381, 640300, '青铜峡市', 2, 0, 3),
(640382, 640300, '其它区', 2, 0, 3),
(640400, 640000, '固原市', 2, 0, 2),
(640402, 640400, '原州区', 2, 0, 3),
(640422, 640400, '西吉县', 2, 0, 3),
(640423, 640400, '隆德县', 2, 0, 3),
(640424, 640400, '泾源县', 2, 0, 3),
(640425, 640400, '彭阳县', 2, 0, 3),
(640426, 640400, '其它区', 2, 0, 3),
(640500, 640000, '中卫市', 2, 0, 2),
(640502, 640500, '沙坡头区', 2, 0, 3),
(640521, 640500, '中宁县', 2, 0, 3),
(640522, 640500, '海原县', 2, 0, 3),
(640523, 640500, '其它区', 2, 0, 3),
(650000, 0, '新疆维吾尔自治区', 2, 0, 1),
(650100, 650000, '乌鲁木齐市', 2, 0, 2),
(650102, 650100, '天山区', 2, 0, 3),
(650103, 650100, '沙依巴克区', 2, 0, 3),
(650104, 650100, '新市区', 2, 0, 3),
(650105, 650100, '水磨沟区', 2, 0, 3),
(650106, 650100, '头屯河区', 2, 0, 3),
(650107, 650100, '达坂城区', 2, 0, 3),
(650108, 650100, '东山区', 2, 0, 3),
(650109, 650100, '米东区', 2, 0, 3),
(650121, 650100, '乌鲁木齐县', 2, 0, 3),
(650122, 650100, '其它区', 2, 0, 3),
(650200, 650000, '克拉玛依市', 2, 0, 2),
(650202, 650200, '独山子区', 2, 0, 3),
(650203, 650200, '克拉玛依区', 2, 0, 3),
(650204, 650200, '白碱滩区', 2, 0, 3),
(650205, 650200, '乌尔禾区', 2, 0, 3),
(650206, 650200, '其它区', 2, 0, 3),
(650400, 650000, '吐鲁番市', 2, 0, 2),
(650402, 650400, '高昌区', 2, 0, 3),
(650421, 650400, '鄯善县', 2, 0, 3),
(650422, 650400, '托克逊县', 2, 0, 3),
(652100, 650000, '吐鲁番地区', 2, 0, 2),
(652101, 652100, '吐鲁番市', 2, 0, 3),
(652122, 652100, '鄯善县', 2, 0, 3),
(652123, 652100, '托克逊县', 2, 0, 3),
(652124, 652100, '其它区', 2, 0, 3),
(652200, 650000, '哈密地区', 2, 0, 2),
(652201, 652200, '哈密市', 2, 0, 3),
(652222, 652200, '巴里坤哈萨克自治县', 2, 0, 3),
(652223, 652200, '伊吾县', 2, 0, 3),
(652224, 652200, '其它区', 2, 0, 3),
(652300, 650000, '昌吉回族自治州', 2, 0, 2),
(652301, 652300, '昌吉市', 2, 0, 3),
(652302, 652300, '阜康市', 2, 0, 3),
(652303, 652300, '米泉市', 2, 0, 3),
(652323, 652300, '呼图壁县', 2, 0, 3),
(652324, 652300, '玛纳斯县', 2, 0, 3),
(652325, 652300, '奇台县', 2, 0, 3),
(652327, 652300, '吉木萨尔县', 2, 0, 3),
(652328, 652300, '木垒哈萨克自治县', 2, 0, 3),
(652329, 652300, '其它区', 2, 0, 3),
(652700, 650000, '博尔塔拉蒙古自治州', 2, 0, 2),
(652701, 652700, '博乐市', 2, 0, 3),
(652702, 652700, '阿拉山口市', 2, 0, 3),
(652722, 652700, '精河县', 2, 0, 3),
(652723, 652700, '温泉县', 2, 0, 3),
(652724, 652700, '其它区', 2, 0, 3),
(652800, 650000, '巴音郭楞蒙古自治州', 2, 0, 2),
(652801, 652800, '库尔勒市', 2, 0, 3),
(652822, 652800, '轮台县', 2, 0, 3),
(652823, 652800, '尉犁县', 2, 0, 3),
(652824, 652800, '若羌县', 2, 0, 3),
(652825, 652800, '且末县', 2, 0, 3),
(652826, 652800, '焉耆回族自治县', 2, 0, 3),
(652827, 652800, '和静县', 2, 0, 3),
(652828, 652800, '和硕县', 2, 0, 3),
(652829, 652800, '博湖县', 2, 0, 3),
(652830, 652800, '其它区', 2, 0, 3),
(652900, 650000, '阿克苏地区', 2, 0, 2),
(652901, 652900, '阿克苏市', 2, 0, 3),
(652922, 652900, '温宿县', 2, 0, 3),
(652923, 652900, '库车县', 2, 0, 3),
(652924, 652900, '沙雅县', 2, 0, 3),
(652925, 652900, '新和县', 2, 0, 3),
(652926, 652900, '拜城县', 2, 0, 3),
(652927, 652900, '乌什县', 2, 0, 3),
(652928, 652900, '阿瓦提县', 2, 0, 3),
(652929, 652900, '柯坪县', 2, 0, 3),
(652930, 652900, '其它区', 2, 0, 3),
(653000, 650000, '克孜勒苏柯尔克孜自治州', 2, 0, 2),
(653001, 653000, '阿图什市', 2, 0, 3),
(653022, 653000, '阿克陶县', 2, 0, 3),
(653023, 653000, '阿合奇县', 2, 0, 3),
(653024, 653000, '乌恰县', 2, 0, 3),
(653025, 653000, '其它区', 2, 0, 3),
(653100, 650000, '喀什地区', 2, 0, 2),
(653101, 653100, '喀什市', 2, 0, 3),
(653121, 653100, '疏附县', 2, 0, 3),
(653122, 653100, '疏勒县', 2, 0, 3),
(653123, 653100, '英吉沙县', 2, 0, 3),
(653124, 653100, '泽普县', 2, 0, 3),
(653125, 653100, '莎车县', 2, 0, 3),
(653126, 653100, '叶城县', 2, 0, 3),
(653127, 653100, '麦盖提县', 2, 0, 3),
(653128, 653100, '岳普湖县', 2, 0, 3),
(653129, 653100, '伽师县', 2, 0, 3),
(653130, 653100, '巴楚县', 2, 0, 3),
(653131, 653100, '塔什库尔干塔吉克自治县', 2, 0, 3),
(653132, 653100, '其它区', 2, 0, 3),
(653200, 650000, '和田地区', 2, 0, 2),
(653201, 653200, '和田市', 2, 0, 3),
(653221, 653200, '和田县', 2, 0, 3),
(653222, 653200, '墨玉县', 2, 0, 3),
(653223, 653200, '皮山县', 2, 0, 3),
(653224, 653200, '洛浦县', 2, 0, 3),
(653225, 653200, '策勒县', 2, 0, 3),
(653226, 653200, '于田县', 2, 0, 3),
(653227, 653200, '民丰县', 2, 0, 3),
(653228, 653200, '其它区', 2, 0, 3),
(654000, 650000, '伊犁哈萨克自治州', 2, 0, 2),
(654002, 654000, '伊宁市', 2, 0, 3),
(654003, 654000, '奎屯市', 2, 0, 3),
(654004, 654000, '霍尔果斯市', 2, 0, 3),
(654005, 654000, '(新源市)', 2, 0, 3),
(654021, 654000, '伊宁县', 2, 0, 3),
(654022, 654000, '察布查尔锡伯自治县', 2, 0, 3),
(654023, 654000, '霍城县', 2, 0, 3),
(654024, 654000, '巩留县', 2, 0, 3),
(654025, 654000, '新源县', 2, 0, 3),
(654026, 654000, '昭苏县', 2, 0, 3),
(654027, 654000, '特克斯县', 2, 0, 3),
(654028, 654000, '尼勒克县', 2, 0, 3),
(654029, 654000, '其它区', 2, 0, 3),
(654200, 650000, '塔城地区', 2, 0, 2),
(654201, 654200, '塔城市', 2, 0, 3),
(654202, 654200, '乌苏市', 2, 0, 3),
(654221, 654200, '额敏县', 2, 0, 3),
(654223, 654200, '沙湾县', 2, 0, 3),
(654224, 654200, '托里县', 2, 0, 3),
(654225, 654200, '裕民县', 2, 0, 3),
(654226, 654200, '和布克赛尔蒙古自治县', 2, 0, 3),
(654227, 654200, '其它区', 2, 0, 3),
(654300, 650000, '阿勒泰地区', 2, 0, 2),
(654301, 654300, '阿勒泰市', 2, 0, 3),
(654321, 654300, '布尔津县', 2, 0, 3),
(654322, 654300, '富蕴县', 2, 0, 3),
(654323, 654300, '福海县', 2, 0, 3),
(654324, 654300, '哈巴河县', 2, 0, 3),
(654325, 654300, '青河县', 2, 0, 3),
(654326, 654300, '吉木乃县', 2, 0, 3),
(654327, 654300, '其它区', 2, 0, 3),
(659000, 650000, '自治区直辖县级行政区划', 2, 0, 2),
(659001, 659000, '石河子市', 2, 0, 3),
(659002, 659000, '阿拉尔市', 2, 0, 3),
(659003, 659000, '图木舒克市', 2, 0, 3),
(659004, 659000, '五家渠市', 2, 0, 3),
(659005, 659000, '北屯市', 2, 0, 3),
(659006, 659000, '铁门关市', 2, 0, 3),
(659007, 659000, '双河市', 2, 0, 3),
(659008, 659000, '可克达拉市', 2, 0, 3),
(659009, 659000, '(胡杨河市)', 2, 0, 3),
(710000, 0, '台湾省', 2, 0, 1),
(710100, 710000, '台北市', 2, 0, 2),
(710101, 710100, '松山区', 2, 0, 3),
(710102, 710100, '信义区', 2, 0, 3),
(710103, 710100, '大安区', 2, 0, 3),
(710104, 710100, '中山区', 2, 0, 3),
(710105, 710100, '中正区', 2, 0, 3),
(710106, 710100, '大同区', 2, 0, 3),
(710107, 710100, '万华区', 2, 0, 3),
(710108, 710100, '文山区', 2, 0, 3),
(710109, 710100, '南港区', 2, 0, 3),
(710110, 710100, '内湖区', 2, 0, 3),
(710111, 710100, '士林区', 2, 0, 3),
(710112, 710100, '北投区', 2, 0, 3),
(710113, 710100, '其它区', 2, 0, 3),
(710200, 710000, '高雄市', 2, 0, 2),
(710201, 710200, '盐埕区', 2, 0, 3),
(710202, 710200, '鼓山区', 2, 0, 3),
(710203, 710200, '左营区', 2, 0, 3),
(710204, 710200, '楠梓区', 2, 0, 3),
(710205, 710200, '三民区', 2, 0, 3),
(710206, 710200, '新兴区', 2, 0, 3),
(710207, 710200, '前金区', 2, 0, 3),
(710208, 710200, '苓雅区', 2, 0, 3),
(710209, 710200, '前镇区', 2, 0, 3),
(710210, 710200, '旗津区', 2, 0, 3),
(710211, 710200, '小港区', 2, 0, 3),
(710212, 710200, '凤山区', 2, 0, 3),
(710213, 710200, '林园区', 2, 0, 3),
(710214, 710200, '大寮区', 2, 0, 3),
(710215, 710200, '大树区', 2, 0, 3),
(710216, 710200, '大社区', 2, 0, 3),
(710217, 710200, '仁武区', 2, 0, 3),
(710218, 710200, '鸟松区', 2, 0, 3),
(710219, 710200, '冈山区', 2, 0, 3),
(710220, 710200, '桥头区', 2, 0, 3),
(710221, 710200, '燕巢区', 2, 0, 3),
(710222, 710200, '田寮区', 2, 0, 3),
(710223, 710200, '阿莲区', 2, 0, 3),
(710224, 710200, '路竹区', 2, 0, 3),
(710225, 710200, '湖内区', 2, 0, 3),
(710226, 710200, '茄萣区', 2, 0, 3),
(710227, 710200, '永安区', 2, 0, 3),
(710228, 710200, '弥陀区', 2, 0, 3),
(710229, 710200, '梓官区', 2, 0, 3),
(710230, 710200, '旗山区', 2, 0, 3),
(710231, 710200, '美浓区', 2, 0, 3),
(710232, 710200, '六龟区', 2, 0, 3),
(710233, 710200, '甲仙区', 2, 0, 3),
(710234, 710200, '杉林区', 2, 0, 3),
(710235, 710200, '内门区', 2, 0, 3),
(710236, 710200, '茂林区', 2, 0, 3),
(710237, 710200, '桃源区', 2, 0, 3),
(710238, 710200, '那玛夏区', 2, 0, 3),
(710300, 710000, '基隆市', 2, 0, 2);
INSERT INTO `ims_weliam_shiftcar_address` (`id`, `pid`, `name`, `visible`, `displayorder`, `level`) VALUES
(710301, 710300, '中正区', 2, 0, 3),
(710302, 710300, '七堵区', 2, 0, 3),
(710303, 710300, '暖暖区', 2, 0, 3),
(710304, 710300, '仁爱区', 2, 0, 3),
(710305, 710300, '中山区', 2, 0, 3),
(710306, 710300, '安乐区', 2, 0, 3),
(710307, 710300, '信义区', 2, 0, 3),
(710400, 710000, '台中市', 2, 0, 2),
(710401, 710400, '中区', 2, 0, 3),
(710402, 710400, '东区', 2, 0, 3),
(710403, 710400, '南区', 2, 0, 3),
(710404, 710400, '西区', 2, 0, 3),
(710405, 710400, '北区', 2, 0, 3),
(710406, 710400, '西屯区', 2, 0, 3),
(710407, 710400, '南屯区', 2, 0, 3),
(710408, 710400, '北屯区', 2, 0, 3),
(710409, 710400, '丰原区', 2, 0, 3),
(710410, 710400, '东势区', 2, 0, 3),
(710411, 710400, '大甲区', 2, 0, 3),
(710412, 710400, '清水区', 2, 0, 3),
(710413, 710400, '沙鹿区', 2, 0, 3),
(710414, 710400, '梧栖区', 2, 0, 3),
(710415, 710400, '后里区', 2, 0, 3),
(710416, 710400, '神冈区', 2, 0, 3),
(710417, 710400, '潭子区', 2, 0, 3),
(710418, 710400, '大雅区', 2, 0, 3),
(710419, 710400, '新社区', 2, 0, 3),
(710420, 710400, '石冈区', 2, 0, 3),
(710421, 710400, '外埔区', 2, 0, 3),
(710422, 710400, '大安区', 2, 0, 3),
(710423, 710400, '乌日区', 2, 0, 3),
(710424, 710400, '大肚区', 2, 0, 3),
(710425, 710400, '龙井区', 2, 0, 3),
(710426, 710400, '雾峰区', 2, 0, 3),
(710427, 710400, '太平区', 2, 0, 3),
(710428, 710400, '大里区', 2, 0, 3),
(710429, 710400, '和平区', 2, 0, 3),
(710500, 710000, '台南市', 2, 0, 2),
(710501, 710500, '东区', 2, 0, 3),
(710502, 710500, '南区', 2, 0, 3),
(710504, 710500, '北区', 2, 0, 3),
(710506, 710500, '安南区', 2, 0, 3),
(710507, 710500, '安平区', 2, 0, 3),
(710508, 710500, '中西区', 2, 0, 3),
(710509, 710500, '新营区', 2, 0, 3),
(710510, 710500, '盐水区', 2, 0, 3),
(710511, 710500, '白河区', 2, 0, 3),
(710512, 710500, '柳营区', 2, 0, 3),
(710513, 710500, '后壁区', 2, 0, 3),
(710514, 710500, '东山区', 2, 0, 3),
(710515, 710500, '麻豆区', 2, 0, 3),
(710516, 710500, '下营区', 2, 0, 3),
(710517, 710500, '六甲区', 2, 0, 3),
(710518, 710500, '官田区', 2, 0, 3),
(710519, 710500, '大内区', 2, 0, 3),
(710520, 710500, '佳里区', 2, 0, 3),
(710521, 710500, '学甲区', 2, 0, 3),
(710522, 710500, '西港区', 2, 0, 3),
(710523, 710500, '七股区', 2, 0, 3),
(710524, 710500, '将军区', 2, 0, 3),
(710525, 710500, '北门区', 2, 0, 3),
(710526, 710500, '新化区', 2, 0, 3),
(710527, 710500, '善化区', 2, 0, 3),
(710528, 710500, '新市区', 2, 0, 3),
(710529, 710500, '安定区', 2, 0, 3),
(710530, 710500, '山上区', 2, 0, 3),
(710531, 710500, '玉井区', 2, 0, 3),
(710532, 710500, '楠西区', 2, 0, 3),
(710533, 710500, '南化区', 2, 0, 3),
(710534, 710500, '左镇区', 2, 0, 3),
(710535, 710500, '仁德区', 2, 0, 3),
(710536, 710500, '归仁区', 2, 0, 3),
(710537, 710500, '关庙区', 2, 0, 3),
(710538, 710500, '龙崎区', 2, 0, 3),
(710539, 710500, '永康区', 2, 0, 3),
(710600, 710000, '新竹市', 2, 0, 2),
(710601, 710600, '东区', 2, 0, 3),
(710602, 710600, '北区', 2, 0, 3),
(710603, 710600, '香山区', 2, 0, 3),
(710700, 710000, '嘉义市', 2, 0, 2),
(710701, 710700, '东区', 2, 0, 3),
(710702, 710700, '西区', 2, 0, 3),
(710703, 710700, '中正区', 2, 0, 3),
(710704, 710700, '中山区', 2, 0, 3),
(710705, 710700, '安乐区', 2, 0, 3),
(710706, 710700, '暖暖区', 2, 0, 3),
(710707, 710700, '七堵区', 2, 0, 3),
(710708, 710700, '其它区', 2, 0, 3),
(710800, 710000, '新北市', 2, 0, 2),
(710801, 710800, '板桥区', 2, 0, 3),
(710802, 710800, '三重区', 2, 0, 3),
(710803, 710800, '中和区', 2, 0, 3),
(710804, 710800, '永和区', 2, 0, 3),
(710805, 710800, '新庄区', 2, 0, 3),
(710806, 710800, '新店区', 2, 0, 3),
(710807, 710800, '树林区', 2, 0, 3),
(710808, 710800, '莺歌区', 2, 0, 3),
(710809, 710800, '三峡区', 2, 0, 3),
(710810, 710800, '淡水区', 2, 0, 3),
(710811, 710800, '汐止区', 2, 0, 3),
(710812, 710800, '瑞芳区', 2, 0, 3),
(710813, 710800, '土城区', 2, 0, 3),
(710814, 710800, '芦洲区', 2, 0, 3),
(710815, 710800, '五股区', 2, 0, 3),
(710816, 710800, '泰山区', 2, 0, 3),
(710817, 710800, '林口区', 2, 0, 3),
(710818, 710800, '深坑区', 2, 0, 3),
(710819, 710800, '石碇区', 2, 0, 3),
(710820, 710800, '坪林区', 2, 0, 3),
(710821, 710800, '三芝区', 2, 0, 3),
(710822, 710800, '石门区', 2, 0, 3),
(710823, 710800, '八里区', 2, 0, 3),
(710824, 710800, '平溪区', 2, 0, 3),
(710825, 710800, '双溪区', 2, 0, 3),
(710826, 710800, '贡寮区', 2, 0, 3),
(710827, 710800, '金山区', 2, 0, 3),
(710828, 710800, '万里区', 2, 0, 3),
(710829, 710800, '乌来区', 2, 0, 3),
(710900, 710000, '桃园市', 2, 0, 2),
(710901, 710900, '桃园区', 2, 0, 3),
(710902, 710900, '中坜区', 2, 0, 3),
(710903, 710900, '平镇区', 2, 0, 3),
(710904, 710900, '八德区', 2, 0, 3),
(710905, 710900, '杨梅区', 2, 0, 3),
(710906, 710900, '大溪区', 2, 0, 3),
(710907, 710900, '芦竹区', 2, 0, 3),
(710908, 710900, '大园区', 2, 0, 3),
(710909, 710900, '龟山区', 2, 0, 3),
(710910, 710900, '龙潭区', 2, 0, 3),
(710911, 710900, '新屋区', 2, 0, 3),
(710912, 710900, '观音区', 2, 0, 3),
(710913, 710900, '复兴区', 2, 0, 3),
(711100, 710000, '新北市', 2, 0, 2),
(711200, 710000, '宜兰县', 2, 0, 2),
(711300, 710000, '新竹县', 2, 0, 2),
(711400, 710000, '桃园县', 2, 0, 2),
(711500, 710000, '苗栗县', 2, 0, 2),
(711700, 710000, '彰化县', 2, 0, 2),
(711900, 710000, '嘉义县', 2, 0, 2),
(712100, 710000, '云林县', 2, 0, 2),
(712200, 710000, '宜兰县', 2, 0, 2),
(712201, 712200, '宜兰市', 2, 0, 3),
(712221, 712200, '罗东镇', 2, 0, 3),
(712222, 712200, '苏澳镇', 2, 0, 3),
(712223, 712200, '头城镇', 2, 0, 3),
(712224, 712200, '礁溪乡', 2, 0, 3),
(712225, 712200, '壮围乡', 2, 0, 3),
(712226, 712200, '员山乡', 2, 0, 3),
(712227, 712200, '冬山乡', 2, 0, 3),
(712228, 712200, '五结乡', 2, 0, 3),
(712229, 712200, '三星乡', 2, 0, 3),
(712230, 712200, '大同乡', 2, 0, 3),
(712231, 712200, '南澳乡', 2, 0, 3),
(712400, 710000, '新竹县', 2, 0, 2),
(712401, 712400, '竹北市', 2, 0, 3),
(712421, 712400, '竹东镇', 2, 0, 3),
(712422, 712400, '新埔镇', 2, 0, 3),
(712423, 712400, '关西镇', 2, 0, 3),
(712424, 712400, '湖口乡', 2, 0, 3),
(712425, 712400, '新丰乡', 2, 0, 3),
(712426, 712400, '芎林乡', 2, 0, 3),
(712427, 712400, '橫山乡', 2, 0, 3),
(712428, 712400, '北埔乡', 2, 0, 3),
(712429, 712400, '宝山乡', 2, 0, 3),
(712430, 712400, '峨眉乡', 2, 0, 3),
(712431, 712400, '尖石乡', 2, 0, 3),
(712432, 712400, '五峰乡', 2, 0, 3),
(712500, 710000, '苗栗县', 2, 0, 2),
(712501, 712500, '苗栗市', 2, 0, 3),
(712521, 712500, '苑里镇', 2, 0, 3),
(712522, 712500, '通霄镇', 2, 0, 3),
(712523, 712500, '竹南镇', 2, 0, 3),
(712524, 712500, '头份镇', 2, 0, 3),
(712525, 712500, '后龙镇', 2, 0, 3),
(712526, 712500, '卓兰镇', 2, 0, 3),
(712527, 712500, '大湖乡', 2, 0, 3),
(712528, 712500, '公馆乡', 2, 0, 3),
(712529, 712500, '铜锣乡', 2, 0, 3),
(712530, 712500, '南庄乡', 2, 0, 3),
(712531, 712500, '头屋乡', 2, 0, 3),
(712532, 712500, '三义乡', 2, 0, 3),
(712533, 712500, '西湖乡', 2, 0, 3),
(712534, 712500, '造桥乡', 2, 0, 3),
(712535, 712500, '三湾乡', 2, 0, 3),
(712536, 712500, '狮潭乡', 2, 0, 3),
(712537, 712500, '泰安乡', 2, 0, 3),
(712600, 710000, '花莲县', 2, 0, 2),
(712700, 710000, '彰化县', 2, 0, 2),
(712701, 712700, '彰化市', 2, 0, 3),
(712721, 712700, '鹿港镇', 2, 0, 3),
(712722, 712700, '和美镇', 2, 0, 3),
(712723, 712700, '线西乡', 2, 0, 3),
(712724, 712700, '伸港乡', 2, 0, 3),
(712725, 712700, '福兴乡', 2, 0, 3),
(712726, 712700, '秀水乡', 2, 0, 3),
(712727, 712700, '花坛乡', 2, 0, 3),
(712728, 712700, '芬园乡', 2, 0, 3),
(712729, 712700, '员林镇', 2, 0, 3),
(712730, 712700, '溪湖镇', 2, 0, 3),
(712731, 712700, '田中镇', 2, 0, 3),
(712732, 712700, '大村乡', 2, 0, 3),
(712733, 712700, '埔盐乡', 2, 0, 3),
(712734, 712700, '埔心乡', 2, 0, 3),
(712735, 712700, '永靖乡', 2, 0, 3),
(712736, 712700, '社头乡', 2, 0, 3),
(712737, 712700, '二水乡', 2, 0, 3),
(712738, 712700, '北斗镇', 2, 0, 3),
(712739, 712700, '二林镇', 2, 0, 3),
(712740, 712700, '田尾乡', 2, 0, 3),
(712741, 712700, '埤头乡', 2, 0, 3),
(712742, 712700, '芳苑乡', 2, 0, 3),
(712743, 712700, '大城乡', 2, 0, 3),
(712744, 712700, '竹塘乡', 2, 0, 3),
(712745, 712700, '溪州乡', 2, 0, 3),
(712800, 710000, '南投县', 2, 0, 2),
(712801, 712800, '南投市', 2, 0, 3),
(712821, 712800, '埔里镇', 2, 0, 3),
(712822, 712800, '草屯镇', 2, 0, 3),
(712823, 712800, '竹山镇', 2, 0, 3),
(712824, 712800, '集集镇', 2, 0, 3),
(712825, 712800, '名间乡', 2, 0, 3),
(712826, 712800, '鹿谷乡', 2, 0, 3),
(712827, 712800, '中寮乡', 2, 0, 3),
(712828, 712800, '鱼池乡', 2, 0, 3),
(712829, 712800, '国姓乡', 2, 0, 3),
(712830, 712800, '水里乡', 2, 0, 3),
(712831, 712800, '信义乡', 2, 0, 3),
(712832, 712800, '仁爱乡', 2, 0, 3),
(712900, 710000, '云林县', 2, 0, 2),
(712901, 712900, '斗六市', 2, 0, 3),
(712921, 712900, '斗南镇', 2, 0, 3),
(712922, 712900, '虎尾镇', 2, 0, 3),
(712923, 712900, '西螺镇', 2, 0, 3),
(712924, 712900, '土库镇', 2, 0, 3),
(712925, 712900, '北港镇', 2, 0, 3),
(712926, 712900, '古坑乡', 2, 0, 3),
(712927, 712900, '大埤乡', 2, 0, 3),
(712928, 712900, '莿桐乡', 2, 0, 3),
(712929, 712900, '林内乡', 2, 0, 3),
(712930, 712900, '二仑乡', 2, 0, 3),
(712931, 712900, '仑背乡', 2, 0, 3),
(712932, 712900, '麦寮乡', 2, 0, 3),
(712933, 712900, '东势乡', 2, 0, 3),
(712934, 712900, '褒忠乡', 2, 0, 3),
(712935, 712900, '台西乡', 2, 0, 3),
(712936, 712900, '元长乡', 2, 0, 3),
(712937, 712900, '四湖乡', 2, 0, 3),
(712938, 712900, '口湖乡', 2, 0, 3),
(712939, 712900, '水林乡', 2, 0, 3),
(713000, 710000, '嘉义县', 2, 0, 2),
(713001, 713000, '太保市', 2, 0, 3),
(713002, 713000, '朴子市', 2, 0, 3),
(713023, 713000, '布袋镇', 2, 0, 3),
(713024, 713000, '大林镇', 2, 0, 3),
(713025, 713000, '民雄乡', 2, 0, 3),
(713026, 713000, '溪口乡', 2, 0, 3),
(713027, 713000, '新港乡', 2, 0, 3),
(713028, 713000, '六脚乡', 2, 0, 3),
(713029, 713000, '东石乡', 2, 0, 3),
(713030, 713000, '义竹乡', 2, 0, 3),
(713031, 713000, '鹿草乡', 2, 0, 3),
(713032, 713000, '水上乡', 2, 0, 3),
(713033, 713000, '中埔乡', 2, 0, 3),
(713034, 713000, '竹崎乡', 2, 0, 3),
(713035, 713000, '梅山乡', 2, 0, 3),
(713036, 713000, '番路乡', 2, 0, 3),
(713037, 713000, '大埔乡', 2, 0, 3),
(713038, 713000, '阿里山乡', 2, 0, 3),
(713300, 710000, '屏东县', 2, 0, 2),
(713301, 713300, '屏东市', 2, 0, 3),
(713321, 713300, '潮州镇', 2, 0, 3),
(713322, 713300, '东港镇', 2, 0, 3),
(713323, 713300, '恒春镇', 2, 0, 3),
(713324, 713300, '万丹乡', 2, 0, 3),
(713325, 713300, '长治乡', 2, 0, 3),
(713326, 713300, '麟洛乡', 2, 0, 3),
(713327, 713300, '九如乡', 2, 0, 3),
(713328, 713300, '里港乡', 2, 0, 3),
(713329, 713300, '盐埔乡', 2, 0, 3),
(713330, 713300, '高树乡', 2, 0, 3),
(713331, 713300, '万峦乡', 2, 0, 3),
(713332, 713300, '内埔乡', 2, 0, 3),
(713333, 713300, '竹田乡', 2, 0, 3),
(713334, 713300, '新埤乡', 2, 0, 3),
(713335, 713300, '枋寮乡', 2, 0, 3),
(713336, 713300, '新园乡', 2, 0, 3),
(713337, 713300, '崁顶乡', 2, 0, 3),
(713338, 713300, '林边乡', 2, 0, 3),
(713339, 713300, '南州乡', 2, 0, 3),
(713340, 713300, '佳冬乡', 2, 0, 3),
(713341, 713300, '琉球乡', 2, 0, 3),
(713342, 713300, '车城乡', 2, 0, 3),
(713343, 713300, '满州乡', 2, 0, 3),
(713344, 713300, '枋山乡', 2, 0, 3),
(713345, 713300, '三地门乡', 2, 0, 3),
(713346, 713300, '雾台乡', 2, 0, 3),
(713347, 713300, '玛家乡', 2, 0, 3),
(713348, 713300, '泰武乡', 2, 0, 3),
(713349, 713300, '来义乡', 2, 0, 3),
(713350, 713300, '春日乡', 2, 0, 3),
(713351, 713300, '狮子乡', 2, 0, 3),
(713352, 713300, '牡丹乡', 2, 0, 3),
(713400, 710000, '台东县', 2, 0, 2),
(713401, 713400, '台东市', 2, 0, 3),
(713421, 713400, '成功镇', 2, 0, 3),
(713422, 713400, '关山镇', 2, 0, 3),
(713423, 713400, '卑南乡', 2, 0, 3),
(713424, 713400, '鹿野乡', 2, 0, 3),
(713425, 713400, '池上乡', 2, 0, 3),
(713426, 713400, '东河乡', 2, 0, 3),
(713427, 713400, '长滨乡', 2, 0, 3),
(713428, 713400, '太麻里乡', 2, 0, 3),
(713429, 713400, '大武乡', 2, 0, 3),
(713430, 713400, '绿岛乡', 2, 0, 3),
(713431, 713400, '海端乡', 2, 0, 3),
(713432, 713400, '延平乡', 2, 0, 3),
(713433, 713400, '金峰乡', 2, 0, 3),
(713434, 713400, '达仁乡', 2, 0, 3),
(713435, 713400, '兰屿乡', 2, 0, 3),
(713500, 710000, '花莲县', 2, 0, 2),
(713501, 713500, '花莲市', 2, 0, 3),
(713521, 713500, '凤林镇', 2, 0, 3),
(713522, 713500, '玉里镇', 2, 0, 3),
(713523, 713500, '新城乡', 2, 0, 3),
(713524, 713500, '吉安乡', 2, 0, 3),
(713525, 713500, '寿丰乡', 2, 0, 3),
(713526, 713500, '光复乡', 2, 0, 3),
(713527, 713500, '丰滨乡', 2, 0, 3),
(713528, 713500, '瑞穗乡', 2, 0, 3),
(713529, 713500, '富里乡', 2, 0, 3),
(713530, 713500, '秀林乡', 2, 0, 3),
(713531, 713500, '万荣乡', 2, 0, 3),
(713532, 713500, '卓溪乡', 2, 0, 3),
(713600, 710000, '澎湖县', 2, 0, 2),
(713601, 713600, '马公市', 2, 0, 3),
(713621, 713600, '湖西乡', 2, 0, 3),
(713622, 713600, '白沙乡', 2, 0, 3),
(713623, 713600, '西屿乡', 2, 0, 3),
(713624, 713600, '望安乡', 2, 0, 3),
(713625, 713600, '七美乡', 2, 0, 3),
(810000, 0, '香港特别行政区', 2, 0, 1),
(810100, 810000, '香港岛', 2, 0, 2),
(810101, 810100, '中西区', 2, 0, 3),
(810102, 810100, '湾仔区', 2, 0, 3),
(810103, 810100, '东区', 2, 0, 3),
(810104, 810100, '南区', 2, 0, 3),
(810200, 810000, '九龙', 2, 0, 2),
(810201, 810200, '油尖旺区', 2, 0, 3),
(810202, 810200, '深水埗区', 2, 0, 3),
(810203, 810200, '九龙城区', 2, 0, 3),
(810204, 810200, '黄大仙区', 2, 0, 3),
(810205, 810200, '观塘区', 2, 0, 3),
(810300, 810000, '新界', 2, 0, 2),
(810301, 810300, '荃湾区', 2, 0, 3),
(810302, 810300, '屯门区', 2, 0, 3),
(810303, 810300, '元朗区', 2, 0, 3),
(810304, 810300, '北区', 2, 0, 3),
(810305, 810300, '大埔区', 2, 0, 3),
(810306, 810300, '西贡区', 2, 0, 3),
(810307, 810300, '沙田区', 2, 0, 3),
(810308, 810300, '葵青区', 2, 0, 3),
(810309, 810300, '离岛区', 2, 0, 3),
(820000, 0, '澳门特别行政区', 2, 0, 1),
(820100, 820000, '澳门半岛', 2, 0, 2),
(820101, 820100, '花地玛堂区', 2, 0, 3),
(820102, 820100, '圣安多尼堂区', 2, 0, 3),
(820103, 820100, '大堂区', 2, 0, 3),
(820104, 820100, '望德堂区', 2, 0, 3),
(820105, 820100, '风顺堂区', 2, 0, 3),
(820200, 820000, '氹仔岛', 2, 0, 2),
(820201, 820200, '嘉模堂区', 2, 0, 3),
(820300, 820000, '路环岛', 2, 0, 2),
(820301, 820300, '圣方济各堂区 ', 2, 0, 3),
(990000, 0, '海外', 2, 0, 1),
(990100, 990000, '海外', 2, 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_apirecord`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_apirecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `sendmid` int(11) NOT NULL,
  `sendmobile` varchar(15) DEFAULT NULL,
  `takemid` int(11) NOT NULL,
  `takemobile` varchar(15) DEFAULT NULL,
  `type` smallint(2) NOT NULL,
  `remark` varchar(32) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=313 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_apply`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `ordersn` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `area` varchar(32) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` smallint(2) NOT NULL,
  `express` varchar(32) DEFAULT NULL,
  `expresssn` varchar(32) DEFAULT NULL,
  `sendtime` int(11) DEFAULT NULL,
  `signtime` int(11) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_brand`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) NOT NULL,
  `imgs` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=172 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_class`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandid` int(11) NOT NULL COMMENT '品牌id',
  `name` varchar(50) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=227 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_member`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员ID',
  `uid` int(11) NOT NULL,
  `invid` int(11) NOT NULL COMMENT '邀请人id',
  `uniacid` int(11) NOT NULL COMMENT '公众号ID',
  `openid` varchar(100) NOT NULL,
  `unionid` varchar(100) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `realname` varchar(50) NOT NULL,
  `credit1` decimal(10,2) NOT NULL,
  `credit2` decimal(10,2) NOT NULL,
  `gender` int(11) NOT NULL,
  `avatar` varchar(300) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL COMMENT '市',
  `province` varchar(50) NOT NULL COMMENT '省',
  `plate1` varchar(5) NOT NULL,
  `plate2` varchar(5) NOT NULL,
  `plate_number` varchar(20) NOT NULL COMMENT '车牌号',
  `engine_number` varchar(50) NOT NULL COMMENT '发动机号',
  `frame_number` varchar(50) NOT NULL COMMENT '车架号',
  `brand` varchar(50) NOT NULL COMMENT '品牌',
  `brandimg` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1粉丝2车主',
  `mstatus` int(3) NOT NULL COMMENT '挪车状态0关闭1打开',
  `userstatus` int(2) NOT NULL COMMENT '用户状态（1：正常状态；-1：被拉黑）',
  `ncnumber` varchar(30) NOT NULL COMMENT '挪车卡编号',
  `message` varchar(200) NOT NULL COMMENT '留言',
  `harrystatus` int(11) NOT NULL COMMENT '1开启防骚扰',
  `harrytime1` int(11) NOT NULL,
  `harrytime2` int(11) NOT NULL,
  `acttime` int(11) NOT NULL COMMENT '激活时间',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=355 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_oplog`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_oplog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `describe` varchar(225) DEFAULT NULL COMMENT '操作描述',
  `view_url` varchar(225) DEFAULT NULL COMMENT '操作界面url',
  `ip` varchar(32) DEFAULT NULL COMMENT 'IP',
  `data` varchar(1024) DEFAULT NULL COMMENT '操作数据',
  `createtime` varchar(32) DEFAULT NULL COMMENT '操作时间',
  `user` varchar(32) DEFAULT NULL COMMENT '操作员',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_puv`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_puv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `pv` int(11) NOT NULL,
  `uv` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_puvrecord`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_puvrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `pv` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=468 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_qrcode`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) DEFAULT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `qrid` int(10) unsigned NOT NULL,
  `model` tinyint(1) NOT NULL,
  `cardsn` varchar(64) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(50) NOT NULL COMMENT '场景备注',
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `qrid` (`qrid`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1710 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_record`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `sendmid` int(11) NOT NULL,
  `takemid` int(11) NOT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `sendmid` (`sendmid`),
  KEY `takemid` (`takemid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_sclass`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_sclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL COMMENT '大类id',
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1733 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_setting`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_srecord`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_srecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_sug`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_sug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL COMMENT '公众号id',
  `mid` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_weliam_shiftcar_wechataddr`
--

CREATE TABLE IF NOT EXISTS `ims_weliam_shiftcar_wechataddr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `addressid` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `acid` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxapp_general_analysis`
--

CREATE TABLE IF NOT EXISTS `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxapp_versions`
--

CREATE TABLE IF NOT EXISTS `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `ims_wxcard_reply`
--

CREATE TABLE IF NOT EXISTS `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tbhash`
--

CREATE TABLE IF NOT EXISTS `tbhash` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  KEY `ix_store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
/*!50100 PARTITION BY HASH (store_id)
PARTITIONS 4 */;

--
-- 转存表中的数据 `tbhash`
--

INSERT INTO `tbhash` (`id`, `store_id`) VALUES
(1, 100),
(4, 104),
(1, 101),
(2, 102),
(3, 103);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
