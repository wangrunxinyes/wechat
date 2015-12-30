<?php

class WeixinGroupUnit extends BasicUnit {

	function __construct() {

		$this->basic_attributes = array(

			'weixin_app_key',

			'group_id',

			'title',

			'num',

			'create_by',

			'create_time',

			'state',

			'attributes',

		);

		$this->basic_data = array(

			'weixin_app_key' => 'wxeca0dc64dd540f5b',

			'group_id' => '0',

			'title' => '默认组',

			'num' => '0',

			'create_by' => "user_id",

			'create_time' => time(),

			'state' => "0",

			'attributes' => "none",

		);

		$this->basic_indentify = "weixin_group_db";

	}

	public static function create() {

		$obj = new self();

		return $obj;

	}

	public static function load_all_group() {

		$key = Yii::app()->weixin->getWeixin("weixin_app_key");
		$search = ' weixin_app_key = :weixin_app_key';
		$searchValue = array(
			':weixin_app_key' => $key,
		);

		$beans = BasicUnit::load_unit_by_attribute("weixin_group_db", $search, $searchValue);

		if (count($beans) == 0) {
			return null;
		} else {
			return $beans[0];
		}
	}

	public static function load_all_group_for_option() {

		$key = Yii::app()->weixin->getWeixin("weixin_app_key");
		$search = ' weixin_app_key = :weixin_app_key';
		$searchValue = array(
			':weixin_app_key' => $key,
		);

		$beans = BasicUnit::load_unit_by_attribute("weixin_group_db", $search, $searchValue);
		$option = array();
		if (count($beans) != 0) {

			foreach ($beans as $bean) {
				$option[$bean['group_id']] = $bean['title'];
			}
		}
		return $option;
	}

	public function store_new_group($key, $name, $count = 0) {
		$this->basic_value = array(

			'weixin_app_key' => Yii::app()->weixin->getWeixin("weixin_app_key"),

			'group_id' => $key,

			'title' => $name,

			'num' => $count,

			'create_by' => Yii::app()->user->getModel('id'),

			'create_time' => time(),

			'state' => "0",

			'attributes' => "none",

		);

		$this->store_unit();
	}

	public function reBuild($json) {

		$key = Yii::app()->weixin->getWeixin("weixin_app_key");
		$search = ' weixin_app_key = :weixin_app_key AND group_id = :group_id';
		$searchValue = array(
			':weixin_app_key' => $key,
			':group_id' => '' . $json->{'id'} . '',
		);

		$beans = BasicUnit::load_unit_by_attribute("weixin_group_db", $search, $searchValue);
		if (count($beans) == 0) {
			$this->store_new_group($json->{'id'}, $json->{'name'}, $json->{'count'});
		} else {
			$this->basic_value = $beans[0];
			if ($json->{'id'} != 0) {
				$this->setPar('title', $json->{'name'});
			}
			$this->setPar('num', $json->{'count'});
			$this->store_unit();
		}
	}

}

?>