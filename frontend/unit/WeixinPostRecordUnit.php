<?php

class WeixinPostRecordUnit extends BasicUnit {

	function __construct() {

		$this->basic_attributes = array(

			'post_user_group',

			'main_msg_id',

			'post_by',

			'post_time',

			'state',

			'details',

			'attributes',

		);

		$this->basic_data = array(

			'post_user_group' => "all",

			'main_msg_id' => "1",

			'post_by' => "1",

			'post_time' => time(),

			'state' => "finish",

			'details' => "data from tencent.",

			'attributes' => "none",

		);

		$this->basic_indentify = "weixin_post_msg_record_db";

	}

	public static function create($id, $group) {
		$obj = new self();
		$obj->store($id, $group);
		return $obj;
	}

	public function store($id, $group) {

		$this->setPar('post_user_group', $group);
		$this->setPar('main_msg_id', $id);
		$this->setPar('post_by', Yii::app()->user->getModel('id'));
		$this->setPar('post_time', time());
		$this->setPar('state', "sending");
		$this->setPar('details', "waiting");
		$this->setPar('attributes', "none");
		return $this->store_unit();
	}

}

?>