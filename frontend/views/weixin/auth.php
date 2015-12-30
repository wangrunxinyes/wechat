<?php

/*

方倍工作室 http://www.cnblogs.com/txw1958/

CopyRight 2013 www.doucube.com  All Rights Reserved

 */

define("TOKEN", "wangrunxinyes");

$wechatObj = new wechatCallbackapiTest();

if (isset($_GET['echostr'])) {

	$wechatObj->valid();

} else {

	$wechatObj->responseMsg();

}

class wechatCallbackapiTest {

	public function valid() {

		$echoStr = $_GET["echostr"];

		if ($this->checkSignature()) {

			echo $echoStr;

			exit;

		}

	}

	private function checkSignature() {

		$signature = $_GET["signature"];

		$timestamp = $_GET["timestamp"];

		$nonce = $_GET["nonce"];

		$token = TOKEN;

		$tmpArr = array($token, $timestamp, $nonce);

		sort($tmpArr, SORT_STRING);

		$tmpStr = implode($tmpArr);

		$tmpStr = sha1($tmpStr);

		if ($tmpStr == $signature) {

			return true;

		} else {

			return false;

		}

	}

	public function responseMsg() {

		$postStr = $GLOBALS["HTTP_RAW_POST_DATA"];

		if (!empty($postStr)) {

			$postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);

			$RX_TYPE = trim($postObj->MsgType);

			switch ($RX_TYPE) {

			case "text":

				Yii::app()->weixin->handleMsg($postStr);

				break;

			case "event":

				Yii::app()->weixin->handleEvent($postStr);

				break;

			default:

				$resultStr = "";

				break;

			}

		}

	}

}

?>