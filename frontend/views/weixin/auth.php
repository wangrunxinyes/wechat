<?php

define("TOKEN", "wangrunxinyes");

Logger::log("wexin auth", "\n\nREMOTE_ADDR:" . $_SERVER["REMOTE_ADDR"] . (strstr($_SERVER["REMOTE_ADDR"], '101.226') ? " FROM WeiXin" : "Unknown IP"));
Logger::log("wexin auth", "QUERY_STRING:" . $_SERVER["QUERY_STRING"]);

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