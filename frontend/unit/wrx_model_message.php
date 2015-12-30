<?php

class wrx_model_message extends BasicUnit {

	function __construct() {

		$this->basic_attributes = array(

			'user_id',
			'message_id',
			'weixin_name',
			'weixin_photo',
			'time',
			'content',
			'state',
			'attributes',
		);

		$this->basic_indentify = "wrx_model_message";
	}

	public static function create() {
		$obj = new self();
		return $obj;
	}

	public function getMessage($msg_id) {
		$weixin_message = new WeixinTextUnit();
		$weixin_message->load_unit_by_id($msg_id);
		$this->setPar('user_id', $weixin_message->getValue('fromusername'));
		$this->setPar('content', $weixin_message->getValue('keyword'));
		$this->setPar('message_id', $weixin_message->getValue('id'));
		$this->setPar('time', $weixin_message->getValue('time'));
		$user = new WeixinUserUnit();
		$user->getUserByUserName($weixin_message->getValue('fromusername'));
		$this->setPar('weixin_name', $user->getValue('weixin_name'));
		$this->setPar('weixin_photo', $user->getValue('weixin_photo'));
	}

}

?>