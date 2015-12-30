<?php

class WeixinBasicUnit extends BasicUnit {

	function __construct() {

		$this->basic_attributes = array(

			'weixin_app_key',

			'weixin_app_secret',

			'weixin_open_id',

			'weixin_name',

			'weixin_photo',

			'weixin_accesstoken',

			'weixin_experid_time',

			'attributes',

		);

		$this->basic_data = array(

			'weixin_app_key' => 'wxeca0dc64dd540f5b',

			'weixin_app_secret' => 'fdc6f0cbb93555b68873d3fe05d70c56',

			'weixin_open_id' => 'unknown',

			'weixin_name' => '测试号',

			'weixin_photo' => 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJKawKEtTuyDOtFiaREhPPoMUq3GlCPdDIJZSt5DIiatlibMrAeS4dZ62lN0r8INJnkaW8ohESNKvNMw/64',

			'weixin_accesstoken' => 'unknown',

			'weixin_experid_time' => time(),

			'attributes' => 'wxeca0dc64dd540f5b',

		);

		$this->basic_indentify = "weixin_basic_db";

		if (!is_null(Yii::app()->user->getModel('wrx_weixin_json'))) {

			$weixin_account = json_decode(Yii::app()->user->getModel('wrx_weixin_json'));

		}

	}

	public static function create() {

		$obj = new self();

		return $obj;

	}

	public function Build($appid) {

		$search = ' weixin_app_key = :weixin_app_key';

		$searchValue = array(

			':weixin_app_key' => $appid,

		);

		$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);

		if (count($beans) == 0) {

			return false;

		} else {

			$this->setValue($beans[0]);

		}

		$this->setPar("id", $beans[0]['id']);

		return true;

	}

	public function reBuild($appid) {

		$search = ' weixin_app_key = :weixin_app_key';

		$searchValue = array(

			':weixin_app_key' => $appid,

		);

		$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);

		if (count($beans) == 0) {

			return false;

		} else {

			$this->setValue($beans[0]);

		}

		$this->setPar("id", $beans[0]['id']);

		$this->create_session();

		return true;

	}

	public function reBuildForUser($open_id) {

		$search = ' weixin_open_id = :weixin_open_id';

		$searchValue = array(

			':weixin_open_id' => $open_id,

		);

		$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);

		if (count($beans) == 0) {

			return false;

		} else {

			$this->setValue($beans[0]);

		}

		$this->setPar("id", $beans[0]['id']);

		$this->create_session();

		return true;

	}

	public function store() {

		$this->setPar('id', $this->store_unit());

		return $this->basic_value['id'];

	}

}

?>