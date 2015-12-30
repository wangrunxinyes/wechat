<?php

class WeixinUserUnit extends BasicUnit {

	function __construct($postStr = null) {

		$this->basic_attributes = array(

			'user_id',

			'user_type',

			'belong_id',

			'phone',

			'real_name',

			'weixin_name',

			'weixin_photo',

			'weixin_group',

			'create_time',

			'country',

			'province',

			'city',

			'sex',

			'weixin_id',

			'attributes',

		);

		$this->basic_data = array(

			'user_id' => 'oXSVyw2oToSVSWWKMfxvKdDsz8sU',

			'user_type' => '0',

			'belong_id' => Yii::app()->weixin->getWeixin("weixin_app_key"),

			'phone' => 'unknown',

			'real_name' => 'unknown',

			'weixin_name' => 'unknown',

			'weixin_photo' => 'unknown',

			'weixin_group' => '0',

			'create_time' => time(),

			'country' => 'unknown',

			'province' => 'unknown',

			'city' => 'unknown',

			'sex' => '1',

			'weixin_id' => 'asdkjajcke',

			'attributes' => 'null',

		);

		$this->basic_indentify = "weixin_user_db";

		//handle data;

		if ($postStr != null) {

			$search = ' user_id = :user_id';

			$searchValue = array(

				':user_id' => $postStr->getValue('fromusername'),

			);

			$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);

			if (count($beans) == 0) {

				$this->createUser($postStr);

			} else {

				$this->setValue($beans[0]);

			}

		}

	}

	public static function create($postStr = null) {

		$obj = new self($postStr);

		return $obj;

	}

	public function createUser($msg) {
		$this->getUserDataNow($msg->getValue('fromusername'));
		$this->store();
	}

	public function createUserByOpenId($open_id) {
		self::getUserDataNow($open_id);
		$this->store();
	}

	public function createUserByJsonArray($json) {
		self::getUserByUserName($json['openid']);
		self::setUserByJsonArray($json, 'o');
		$this->store();
	}

	public function getUserDataNow($open_id) {

		$json = weixin_user_info_helper::getInfoByOpenId($open_id);
		self::setUserByJsonArray($json, null, $open_id);
	}

	public function setUserByJsonArray($json, $type = null, $open_id = null) {
		if (isset($json['openid'])) {

			$open_id = $json['openid'];

			$this->setPar('phone', "unknown");

			$this->setPar('real_name', "unknown");

			$this->setPar('attributes', "unknown");

			$this->setPar('user_type', $type);

			$this->setPar('belong_id', Yii::app()->weixin->getWeixin("weixin_app_key"));

			$names = array(
				'weixin_name' => 'nickname',
				'country' => 'country',
				'province' => 'province',
				'city' => 'city',
				'sex' => 'sex',
				'weixin_id' => 'unionid',
				'weixin_group' => 'groupid',
				'create_time' => 'subscribe_time',
			);

			foreach ($names as $key => $value) {
				if (isset($json[$value])) {
					$this->setPar($key, $json[$value]);
				}
			}

			if (isset($json['headimgurl'])) {
				$this->setPar('weixin_photo', substr($json['headimgurl'], 0, strlen($json['headimgurl']) - 1));

			}

		} else {

			foreach ($this->basic_attributes as $key) {

				$this->setPar($key, "unknown");

			}

			$this->setPar('create_time', time());

		}

		$this->setPar('user_id', $open_id);
	}

	public function createUserById($id) {

		$this->getUserDataNow($id);

	}

	public function getUserByUserName($user_indentify) {

		$search = ' user_id = :user_id';

		$searchValue = array(

			':user_id' => $user_indentify,

		);

		$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);

		if (count($beans) == 0) {

			$this->createUserByOpenId($user_indentify);

		} else {

			$this->setValue($beans[0]);

		}

		if (isset($beans[0]['id'])) {

			$this->setPar("id", $beans[0]['id']);

		}

		return $this->basic_value['id'];

	}

	public function updateOrCreateUser($open_id) {

		$search = ' user_id = :user_id';

		$searchValue = array(

			':user_id' => $open_id,

		);

		$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);

		if (count($beans) != 0) {

			$this->setValue($beans[0]);

			if (isset($beans[0]['id'])) {

				$this->setPar("id", $beans[0]['id']);

			}

		}

		$this->createUserByOpenId($open_id);

		$this->store();

	}

	public function store() {

		$this->setPar('id', $this->store_unit());

		return $this->basic_value['id'];

	}

	public function load_user_by_group($id, $page) {
		$start_id = 10 * (-1 + $page);
		$sql = 'select * from weixin_user_db where belong_id = "' . Yii::app()->weixin->getWeixin('weixin_app_key') . '"'
		. ' AND weixin_group = "' . $id . '" limit ' . $start_id . ', 10;';
		$data = R::getAll($sql);
		return $data;
	}

}

?>