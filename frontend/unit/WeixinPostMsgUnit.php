<?php

class WeixinPostMsgUnit extends BasicUnit {

	function __construct() {

		$this->basic_attributes = array(

			'belong_to_id',

			'title',

			'bg',

			'url',

			'create_by',

			'create_time',

			'state',

			'attributes',

		);

		$this->basic_data = array(

			'belong_to_id' => "none",

			'title' => "test post msg",

			'bg' => "http://www.tongchengchina.com/files/wxeca0dc64dd540f5b/thumbnail/4a43510a0830d4d1c60cdf72abc2a193.jpg",

			'url' => "www.baidu.com",

			'create_by' => "user_id",

			'create_time' => time(),

			'state' => "edit",

			'attributes' => "none",

		);

		$this->basic_indentify = "weixin_post_msg_db";

	}

	public static function create() {

		$obj = new self();

		return $obj;

	}

	public function store() {

		$this->setPar('post_user_group', 'tester');

		$this->setPar('create_by', Yii::app()->user->getModel('id'));

		$this->setPar('create_time', time());

		$this->setPar('state', "new");

		$this->setPar('attributes', "none");

		return $this->store_unit();

	}

	public function get_msg_by_id($id) {
		self::load_unit_by_id($id);

		$search = ' belong_to_id = :belong_to_id';
		$searchValue = array(
			':belong_to_id' => $id,
		);

		$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);
		return $beans;
	}
}

?>