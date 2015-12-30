<?php

class weixin_oauth_helper {

	public static function get_oauth_url() {
		// $appid = Yii::app()->weixin->getId();
		$appid = 'wxeca0dc64dd540f5b';
		$redirect_uri = urlencode(Yii::app()->assets->getUrlPath('weixin/oauth'));
		$type = 'snsapi_userinfo';
		// $type = 'snsapi_base';

		$url = 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=' . $appid
		. '&redirect_uri='
		. $redirect_uri . '&response_type=code&scope=' . $type . '&state=STATE#wechat_redirect';
		return $url;
	}

	// https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxeca0dc64dd540f5b&redirect_uri=&response_type=code&scope=snsapi_base&state=1#wechat_redirect

	public static function exchange_code($code) {
		$appid = 'wxeca0dc64dd540f5b';
		$secret = 'fdc6f0cbb93555b68873d3fe05d70c56';
		$url = 'https://api.weixin.qq.com/sns/oauth2/access_token?appid=' . $appid
		. '&secret=' . $secret
		. '&code=' . $code . '&grant_type=authorization_code';
		// return '{"access_token":"OezXcEiiBSKSxW0eoylIePRCmftEw-1c-1C8Ele9zuNmn7cVIjBkMcLWK1_e0phCFfDwFyBuk0-_aRgtjRGCaENZRh5mdKy3KHhhnh9r-_krapJJwrIXL86wZWFwZ5EYYHXbE8hOr1QBI6Ou9KXdQw","expires_in":7200,"refresh_token":"OezXcEiiBSKSxW0eoylIePRCmftEw-1c-1C8Ele9zuNmn7cVIjBkMcLWK1_e0phCFfDwFyBuk0-_aRgtjRGCaBeWAhObm-GcPBXNBm4quAI7RAkKQMpGHpfz9VMYMzDi9yUfXfgvjn81rJzF7fYx_w","openid":"oXSVyw2oToSVSWWKMfxvKdDsz8sU","scope":"snsapi_userinfo","unionid":"okNlYwAj_AIWKCelFZSPwMZLhoFI"}';
		return curl_helper::curl($url);
	}

	public static function refresh_token($refresh_token) {
		$appid = 'wxeca0dc64dd540f5b';
		$url = 'https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=' . $appid
		. '&grant_type=refresh_token&refresh_token=' . $refresh_token;
		return curl_helper::curl($url);
	}
}

?>