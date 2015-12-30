<?php

/**



 *



 */

class weixin_setting_helper {

	function __construct() {

	}

	public function setMenu() {

		$appid = "wxeca0dc64dd540f5b";

		$appsecret = "fdc6f0cbb93555b68873d3fe05d70c56";

		$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$appsecret";

		$ch = curl_init();

		curl_setopt($ch, CURLOPT_URL, $url);

		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);

		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

		$output = curl_exec($ch);

		curl_close($ch);

		$jsoninfo = json_decode($output, true);

		$access_token = $jsoninfo["access_token"];

		$basic_url = 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=' . $appid
		. '&redirect_uri=' . urlencode('http://www.tongchengchina.com/');
		$end_url = '&response_type=code&scope=snsapi_base&state=1#wechat_redirect';

		$jsonmenu = '{
      "button":[
      {
        "name":"我们的产品",
        "sub_button":[
        {
          "type":"view",
          "name":"德风生活馆",
          "url":"' . $basic_url . urlencode('support/producttype/type/d') . $end_url . '"
        },{
          "type":"view",
          "name":"台湾生活馆",
          "url":"' . $basic_url . urlencode('support/producttype/type/t') . $end_url . '"
        }]
      },{
        "name":"会员中心",
        "sub_button":[
        {
          "type":"view",
          "name":"专属顾问",
          "url":"' . $basic_url . urlencode('support/assistant') . $end_url . '"
        },{
          "type":"view",
          "name":"病历本",
          "url":"' . $basic_url . urlencode('support/medicalbook') . $end_url . '"
        },
        {
          "type":"view",
          "name":"备忘提示",
          "url":"' . $basic_url . urlencode('support/alert') . $end_url . '"
        },
        {
          "type":"click",
          "name":"家庭小药箱",
          "key":"MagicBox"
        }]
      },{
        "name":"我们的服务",
        "sub_button":[
        {
          "type":"view",
          "name":"生活健康小贴士",
          "url":"' . $basic_url . urlencode('support/tips') . $end_url . '"
        },
        {
          "type":"click",
          "name":"健康评估",
          "key":"healthsupport"
        },
        {
          "type":"view",
          "name":"机构介绍",
          "url":"' . $basic_url . urlencode('support/about') . $end_url . '"
        },
        {
          "type":"view",
          "name":"个人中心",
          "url":"' . $basic_url . urlencode('support/membercenter') . $end_url . '"
        },
        {
          "type":"click",
          "name":"线上咨询",
          "key":"onlineask"
        }]
      }]
    }';

		// print_r(json_decode($jsonmenu));
		// exit;

		$url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=" . $access_token;

		$result = $this->
			https_request($url, $jsonmenu);

		var_dump($result);

	}

	function https_request($url, $data = null) {

		$curl = curl_init();

		curl_setopt($curl, CURLOPT_URL, $url);

		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);

		curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);

		if (!empty($data)) {

			curl_setopt($curl, CURLOPT_POST, 1);

			curl_setopt($curl, CURLOPT_POSTFIELDS, $data);

		}

		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

		$output = curl_exec($curl);

		curl_close($curl);

		return $output;

	}

}

?>