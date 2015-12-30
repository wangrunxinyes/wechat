<?php

/**
 * image unit
 */
class WeixinTextUnit extends BasicUnit {

	function __construct($postStr = null) {

		$this->basic_attributes = array(
			'return_type',
			'type',
			'keyword',
			'time',
			'identify',
			'attributes',
		);

		$this->basic_indentify = "weixin_message_db";

		//handle data;
		if ($postStr != null) {
			$obj_array = array();
			$postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
			$obj_array['fromusername'] = "" . $postObj->FromUserName;
			$obj_array['tousername'] = "" . $postObj->ToUserName;
			$obj_array['keyword'] = trim($postObj->Content);
			$obj_array['time'] = time();
		}

		$this->setValue($obj_array);
	}

	public function store() {
		$this->setPar('id', $this->store_unit());
		return $this->basic_value['id'];
	}

	public static function create($postStr = null) {
		$obj = new self($postStr);
		return $obj;
	}

}

?>