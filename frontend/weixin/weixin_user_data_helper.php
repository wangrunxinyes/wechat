<?php

/**

 *

 */

class weixin_user_data_helper extends weixin {

	private $next_openid;

	function __construct($start, $open_id) {

		parent::create();

		$this->start = $start;

		$this->next_openid = $open_id;

	}

	function getdata() {

		$url = 'https://api.weixin.qq.com/cgi-bin/user/get?access_token=' . $this->access_token . '&next_openid=';

		return $this->curl($url);

	}

	function transferData() {

		$json = self::getdata();

		$json = json_decode($json);

		$this->total = $json->{'total'};

		$this->end = 0 + $this->start + 0 + $json->{'count'};

		$user = $json->{'data'}->{'openid'};

		$user_array = array();

		$index = 1;

		foreach ($user as $value) {

			$this->next_openid = $value;

			$weixin_user = new WeixinUserUnit(null);

			$weixin_user->createUserById($value);

			$user_array[$index] = $weixin_user;

			$index++;

		}

		return $user_array;

	}

	function echoFormat() {

		$users = self::transferData();

		foreach ($users as $key => $user) {

			$card = MemberCardUnit::create();

			if ($card->getMemberCardById($user->getValue('user_id'))) {

				$member_card = $card->getValue('member_card_id');

			} else {

				$member_card = '<span class="label label-sm label-danger">未加入会员</span>';

			}

			echo '<tr><td>' . $key . '</td>' //编号

			. '<td><img class="weixin_user_photo" src="' . $user->getValue('weixin_photo') . '64"</td>' //头像

			. '<td>' . $user->getValue('weixin_name') . '</td>' //用户名

			. '<td>' . $member_card . '</td>' //会员卡号

			. '<td>' . $user->getValue('user_id') . '</td>' //微信Open_ID

			. '<td><a class="btn default btn-xs purple"><i class="fa fa-edit"></i>'

			. '查看</a></td>' //操作

			. '</tr>';

		}

	}

}

?>