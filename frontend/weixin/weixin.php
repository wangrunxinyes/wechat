<?php

/**

 *

 */

class weixin {

	protected $access_token;

	protected $total;

	protected $start;

	protected $end;

	function __construct() {

		$total = 0;

		$start = 0;

		$end = 0;

	}

	public function create() {

		$this->getToken();

	}

	public function curl($url) {

		return curl_helper::curl($url);

	}

	public function getToken() {
		$this->access_token = Yii::app()->weixin->getAccessToken();
	}

}

?>