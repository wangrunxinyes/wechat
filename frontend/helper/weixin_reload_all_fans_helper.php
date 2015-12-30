<?php

class weixin_reload_all_fans_helper {

	private $data;

	private $user_array;

	private $total;

	private $now;

	private $next_open_id;

	private $function_result;

	function __construct() {

		$data = null;

	}

	function execute() {

		if (!self::check_access()) {
			$this->function_result = md5('access_error') . '1';
			return;
		}

		$system = wrx_model_system_basic::load();
		$system->reload_user();

		if (!self::post_request_to_tencent()) {
			$this->function_result = md5('request_tencent_error') . '2';
			$system->reload_user_finish(2);
			return;
		}

		if (!self::handle_receive_data()) {
			$this->function_result = md5('access_error') . '3';
			$system->reload_user_finish(3);
			return;
		}

		if (!self::handle_result_data()) {

			$this->function_result = md5('access_error') . '4';
			$system->reload_user_finish(4);
			return;
		}

		$this->function_result = 0;
		$system->reload_user_finish(0);
	}

	function check_access() {
		$result = false;
		if (!Yii::app()->user->isGuest) {
			if (!is_null(Yii::app()->weixin->getWeixin('weixin_app_key'))) {
				$result = true;
			}
		}
		return $result;

	}

	function post_request_to_tencent() {

		$result = true;

		try {

			$url = 'https://api.weixin.qq.com/cgi-bin/user/get?access_token=' . Yii::app()->weixin->getAccessToken() . '&next_openid=';

			$this->data = curl_helper::curl($url);

			$group = new weixin_group_helper();

			$group->reload_all_group();

		} catch (Exception $e) {

			$result = false;

		}

		return $result;

	}

	function handle_receive_data() {

		$result = false;

		if (!is_null($this->data) && $this->data != "") {

			$this->data = json_decode($this->data);

			if (!is_null($this->data) && $this->data != "") {

				if (isset($this->data->{'total'})) {

					$this->total = $this->data->{'total'};

					$this->now = $this->data->{'count'};

					$data = $this->data->{'data'};

					$this->user_array = $data->{'openid'};

					$this->next_open_id = $this->data->{'next_openid'};

					$result = true;

				}

			}

		}

		return $result;

	}

	function handle_result_data() {

		$result = false;

		try {

			foreach ($this->user_array as $value) {

				$user = new WeixinUserUnit();

				$user->updateOrCreateUser($value);

			}

			$result = true;

		} catch (Exception $e) {

		}

		return $result;

	}

	function get_result() {
		return $this->function_result;
	}

}

?>