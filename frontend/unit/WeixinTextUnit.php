<?php

class WeixinTextUnit extends BasicUnit {

	function __construct($postStr = null) {

		$this->basic_attributes = array(

			'fromusername',

			'tousername',

			'keyword',

			'time',

			'reply',

			'attributes',

		);

		$this->basic_data = array(

			'fromusername' => 'oXSVyw2oToSVSWWKMfxvKdDsz8sU',

			'tousername' => 'gh_0ee0f56d87c9',

			'keyword' => 'init_message',

			'time' => time(),

			'reply' => null,

			'attributes' => '',

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

			$this->setValue($obj_array);

		}

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