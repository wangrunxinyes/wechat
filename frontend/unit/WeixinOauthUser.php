<?php

class WeixinOauthUser extends BasicUnit {

	function __construct($postStr = null) {

		$this->basic_attributes = array(

			'access_token',
			'expires_time',
			'refresh_token',
			'openid',
			'scope',
			'attributes',

		);

		$this->basic_data = array(

			'access_token' => 'init',
			'expires_time' => time() + 7200,
			'refresh_token' => 'init',
			'openid' => 'init',
			'scope' => 'init',
			'attributes',

		);

		$this->basic_indentify = "weixin_oauth_user_db";

		//handle data;

	}

	public function createUserByJson($json) {

		$id = $json->{'openid'};
		self::load_open_id($id);

		foreach ($this->basic_attributes as $value) {
			if (isset($json->{$value})) {
				$this->setPar($value, $json->{$value});
			}
		}

		self::createNormalUserByOpenIdAndToken();

		//$this->store();
	}

	public function createNormalUserByOpenIdAndToken() {
		$array = weixin_user_info_helper::getOauthUserInfo($this->basic_value['openid'], $this->basic_value['access_token']);
		if (isset($array['errcode'])) {
			if ($array['errcode'] == 42001) {
				self::refresh_accesstoken();
			} else {
				return false;
			}
		} else {
			$normal_user = new WeixinUserUnit();
			$normal_user->createUserByJsonArray($array);
			$this->store();
		}
	}

	public function refresh_accesstoken() {
		$json = weixin_oauth_helper::refresh_token($this->basic_value['refresh_token']);
		self::createUserByJson($json);
	}

	public function store() {
		$this->setPar('id', $this->store_unit());
		return $this->basic_value['id'];
	}

	public function load_open_id($openid) {
		$search = 'openid = :openid';
		$searchValue = array(
			':openid' => $openid,
		);

		$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);

		if (count($beans) != 0) {
			$this->setValue($beans[0]);
		}

		if (isset($beans[0]['id'])) {
			$this->setPar("id", $beans[0]['id']);
		}
	}

}

?>