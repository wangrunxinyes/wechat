<?php
// change the following paths if necessary
if (session_id() == "") {
	session_start();
}

//include db;
$redBean = dirname(__FILE__) . '/assets/rb.php';
require_once $redBean;
// R::setup('mysql:host=58.64.182.3:3306;dbname=wangrunxin', 'wangrunxin', 'wrx52691000');
R::setup('mysql:host=localhost;dbname=wangrunxin', 'wangrunxin', 'wrx52691000');

//include visitor;
$visitor = dirname(__FILE__) . '/visitor_helper.php';
require_once $visitor;

//include yii;
$yii = dirname(__FILE__) . '/framework/yii.php';
defined('YII_DEBUG') or define('YII_DEBUG', true);
require_once $yii;

//set general setting;
date_default_timezone_set("PRC");

//control client;
$config = dirname(__FILE__) . '/frontend/config/main.php';

//start service;
Yii::createWebApplication($config)->run();
Yii::app()->clientScript->registerMetaTag(' text/html;charset=utf-8', null, 'Content-Type');

?>