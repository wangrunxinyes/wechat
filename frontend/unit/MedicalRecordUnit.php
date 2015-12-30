<?php

/**

 * MemberCardUnit

 * create by WANG Runxin

 * 2015/09/04 15:19

 */

class MedicalRecordUnit extends BasicUnit {

	private $msg;

	function __construct($msg) {

		$this->msg = $msg;

	}

	public static function create($msg) {

		$obj = new self($msg);

		return $obj;

	}

	public function getBriefDes() {

		$card = MemberCardUnit::create($this->msg);

		if ($card->getMemberCard()) {

			//handle data;

			$content[] = array(

				"Title" => "在线病历本",

				"Description" => "欢迎使用在线病历本，您可以把病例拍照上传到这里，方便日后查看使用，您的会员编号为： " . $card->getValue('member_card_id'),

				"PicUrl" => "http://i1.tietuku.com/769c2b3156959377s.jpg",

				"Url" => "http://www.tongchengchina.com/support/medicalbook/openid/" . $this->msg->getValue('fromusername'),

			);

		} else {

			$content[] = array(

				"Title" => "病历本",

				"Description" => "您还不是会员，点击注册",

				"PicUrl" => "http://i1.tietuku.com/769c2b3156959377s.jpg",

				"Url" => "http://www.tongchengchina.com/support/medicalbook/user_name/" . $this->msg->getValue('fromusername'),

			);

		}

		return $content;

	}

}

?>