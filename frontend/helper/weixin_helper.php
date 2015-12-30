<?php

class weixin_helper {

	private $postObj;

	private $basic;

	private $reply_helper;

	function __construct() {

		$this->init();
	}

	function init() {

		$this->reply_helper = new weixin_message_reply_helper();
		$this->basic = new WeixinBasicUnit();
		if (!$this->basic->create_from_session()) {
			$this->basic = null;
		} else {

		}
	}

	public function handleMsg($postStr) {

		//create and save message;

		$message = WeixinTextUnit::create($postStr);

		$message->store();

		//use reply helper;

		$this->reply_helper->execMsg($message);

	}

	public function handleEvent($postStr) {

		//create and save message;

		$message = WeixinEventUnit::create($postStr);

		Logger::log("event", print_r($message, true));

		$message->store();

		//use reply helper;

		$this->reply_helper->execEvent($message);

	}

	public function getAccessToken() {

		if (is_null($this->basic)) {
			return null;
		} else {
			$expires = $this->basic->getValue('weixin_experid_time');
			if (time() >= $expires) {
				return self::curlAccessToken();
			} else {
				return $this->basic->getValue('weixin_accesstoken');
			}
		}
	}

	public function curlAccessToken() {
		$appid = $this->basic->getValue('weixin_app_key');
		$appsecret = $this->basic->getValue('weixin_app_secret');
		$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$appsecret";
		$output = curl_helper::curl($url);
		$jsoninfo = json_decode($output, true);
		if (isset($jsoninfo["access_token"]) && isset($jsoninfo['expires_in'])) {
			$this->basic->setPar('weixin_accesstoken', $jsoninfo["access_token"]);
			$this->basic->setPar('weixin_experid_time', time() + $jsoninfo["expires_in"]);
			$this->basic->store();
			self::reBuild($this->basic->getValue('weixin_app_key'));
			return $jsoninfo["access_token"];
		} else {
			return null;
		}
	}

	public function checkWeixin() {
		if (is_null(self::getAccessToken())) {
			return false;
		} else {
			if ($this->basic->getValue('weixin_open_id') == 'unknown' || strlen($this->basic->getValue('weixin_open_id')) < 10) {
				return false;
			} else {
				return true;
			}

		}
	}

	public function reBuild($appid) {
		$weixin = new WeixinBasicUnit();
		if ($weixin->reBuild($appid)) {
			$this->basic = $weixin;
		}
	}

	public function getId() {
		return $this->getWeixin('weixin_app_key');
	}

	public function reBuildForUser($open_id) {
		$weixin = new WeixinBasicUnit();
		if ($weixin->reBuildForUser($open_id)) {
			$this->basic = $weixin;
		}
	}

	public function getWeixin($key) {
		if (!is_null(self::getAccessToken())) {
			return $this->basic->getValue($key);
		} else {
			return null;
		}
	}
}

?>