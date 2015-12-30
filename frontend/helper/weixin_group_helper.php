<?php

/**
 *
 */
class weixin_group_helper {
	function __construct() {
		# code...
	}

	public function create_new_group($name) {
		$url = 'https://api.weixin.qq.com/cgi-bin/groups/create?access_token=' . Yii::app()->weixin->getWeixin('weixin_accesstoken');
		$data = '{"group":{"name":"' . $name . '"}}';
		$result = curl_helper::post($url, $data);
		$json = json_decode($result);
		print_r($result);
		if (isset($json->{'group'})) {
			$json = $json->{'group'};
			$group = new WeixinGroupUnit();
			$group->store_new_group($json->{'id'}, $json->{'name'});
			return true;
		} else {
			return false;
		}
	}

	public function reload_all_group() {
		$url = 'https://api.weixin.qq.com/cgi-bin/groups/get?access_token=' . Yii::app()->weixin->getWeixin('weixin_accesstoken');
		$result = curl_helper::curl($url);
		$json = json_decode($result);
		if (isset($json->{'groups'})) {
			$groups = $json->{'groups'};
			$unit = new WeixinGroupUnit();
			foreach ($groups as $group) {
				$unit->reBuild($group);
			}
		}
	}
}

?>