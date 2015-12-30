<?php

class oauth_user_register extends BasicApi {
	private $curl_data;
	private $error_code;
	private $code;

	function __construct() {
		$this->data = array(
			"api_key" => "oauth register",
			"ps" => "json format",
		);
		$this->error_code = "";
		self::init();
	}

	function execute() {
		if (!self::check_before()) {
			self::print_error("1", "no code found.");
		}

		if (!self::exchange()) {
			self::print_error("2", "curl error, msg: " . $this->error_code);
		}

		if (!self::check_after()) {
			self::print_error("3", "exchange code for token error, code: " . $this->error_code);
		}

		if (!self::register()) {
			self::print_error("4", "register error, code: " . $this->error_code);
		}

		self::print_result("0", "success");
	}

	function exchange() {
		try {
			$this->curl_data = weixin_oauth_helper::exchange_code($this->code);
			return true;
		} catch (Exception $e) {
			$this->error_code = $e->message;
			return false;
		}

	}

	function check_before() {
		$this->code = Yii::app()->data->getValue('code');
		if (!is_null($this->code)) {
			return true;
		} else {
			return false;
		}
	}

	function check_after() {
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

	function register() {
		$user = json_decode($this->curl_data);
		$oauth_user = new WeixinOauthUser();
		$oauth_user->createUserByJson($user);
		return true;
	}

}

$register_helper = new oauth_user_register();
$register_helper->execute();

?>