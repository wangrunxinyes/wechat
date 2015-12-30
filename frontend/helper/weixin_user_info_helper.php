<?php

/**

 *

 */

class weixin_user_info_helper {

	function __construct() {

	}

	public static function getInfoByOpenId($id) {

		$url = 'https://api.weixin.qq.com/cgi-bin/user/info?access_token=' . Yii::app()->weixin->getWeixin('weixin_accesstoken') . '&openid=' . $id . '&lang=zh_CN';

		$output = curl_helper::curl($url);

		return Json_decode($output, true);

	}

	public static function getOauthUserInfo($open_id, $token) {
		$url = 'https://api.weixin.qq.com/sns/userinfo?access_token=' . $token
		. '&openid=' . $open_id;
		$output = curl_helper::curl($url);
		return Json_decode($output, true);
	}

	public static function create() {

		$obj = new self();

		return $obj;

	}

}

?>