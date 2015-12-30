<?php

class auto_login {

	private $code;
	private $curl_data;
	private $error_code;
	private $openid;

	function __construct() {
		$this->code = Yii::app()->data->getValue('code');
	}

	function start() {
		if (!self::login_check()) {
			return false;
		}

		if (!self::start_login()) {
			return false;
		}

		if (!self::after_check()) {
			return false;
		}

		if (!self::finish_login()) {
			return false;
		}

		return true;
	}

	function login_check() {
		if (is_null($this->code)) {
			return false;
		} else {
			return true;
		}
	}

	function start_login() {
		try {
			$this->curl_data = weixin_oauth_helper::exchange_code($this->code);
			return true;
		} catch (Exception $e) {
			$this->error_code = $e->message;
			return false;
		}
	}

	function after_check() {
		$user = json_decode($this->curl_data);
		if (is_null($user)) {
			$this->error_code = $this->curl_data;
		} else {
			$names = array(
				'openid',
				'unionid',
				'access_token',
				'refresh_token',
				'scope',
				'expires_in',
			);
			if (isset($user->{'access_token'})) {
				foreach ($names as $name) {
					if (isset($user->{$name})) {
					} else {
						$this->error_code = "missing parameter: " . $name;
						return false;
					}
				}
				$this->openid = $user->{'openid'};
				return true;
			} else {
				if (isset($user->{'errcode'})) {
					$this->error_code = $user->{'errcode'};
				} else {
					$this->error_code = "unknown error";
				}
			}
		}
		return false;
	}

	function finish_login() {

		$user = new wrx_model_user();

		if ($user->init_for_weixin_user($this->openid)) {

			Yii::app()->user->setModel($user);

			return true;
		}
	}
}

?>