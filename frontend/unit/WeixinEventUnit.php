<?php

/**



 * image unit



 */

class WeixinEventUnit extends BasicUnit {

	function __construct($postStr = null) {

		$this->basic_attributes = array(

			'fromusername',

			'tousername',

			'keyword',

			'eventkey',

			'time',

			'reply',

			'attributes',

		);

		$this->basic_indentify = "weixin_event_db";

		//handle data;

		if ($postStr != null) {

			Logger::log("handle event ", print_r($postStr, true));

			$obj_array = array();

			$postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);

			$obj_array['fromusername'] = "" . $postObj->FromUserName;

			$obj_array['tousername'] = "" . $postObj->ToUserName;

			$obj_array['keyword'] = trim($postObj->EventKey);

			$obj_array['eventkey'] = trim($postObj->Event);

			$obj_array['time'] = time();

		}

		Logger::log("handle event ", print_r($obj_array, true));

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