<?php

class MemberCardUnit extends BasicUnit {

	private $id;

	function __construct($msg = null) {

		$this->basic_attributes = array(

			'user_id',

			'member_card_id',

			'type',

			'create_time',

			'start_time',

			'end_time',

			'score',

			'state',

			'attributes',

		);

		$this->basic_data = array(

			'user_id' => 'test_123456789',

			'member_card_id' => 'test_123456789',

			'type' => 'init_user',

			'create_time' => time(),

			'start_time' => time(),

			'end_time' => time(),

			'score' => 0,

			'state' => 0,

			'attributes' => null,

		);

		$this->basic_indentify = "weixin_membercard_db";

		$this->basic_value = null;

		if (!is_null($msg)) {
			$this->id = $msg->getValue('fromusername');
		}

	}

	public function setId($id) {
		$this->id = $id;
	}

	public function store() {

		$this->setPar('id', $this->store_unit());

		return $this->basic_value['id'];

	}

	public static function create($msg = null) {

		$obj = new self($msg);

		return $obj;

	}

	public function getMemberCard() {

		$user = new WeixinUserUnit();
		$user->getUserByUserName($this->id);

		$search = 'user_id = :user_id';

		$searchValue = array(

			':user_id' => $user->getValue('user_id'),

		);

		$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);

		if (count($beans) == 0) {

			return false;

		} else {

			$this->setValue($beans[0]);

		}

		return true;

	}

	public function getMemberCardById($id) {

		$search = 'user_id = :user_id';

		$searchValue = array(

			':user_id' => $id,

		);

		$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);

		if (count($beans) == 0) {

			return false;

		} else {

			$this->setValue($beans[0]);

		}

		return true;

	}

	public function createNewMemberCard() {

		if ($this->getMemberCard()) {

			return;

		}

		$user = new WeixinUserUnit();
		$user->getUserByUserName($this->id);

		$this->setPar('user_id', $user->getValue('user_id'));

		$this->setPar('member_card_id', $this->createNewMemberCardId());

		$this->setPar('type', "1");

		$this->setPar('create_time', time());

		$this->setPar('start_time', time());

		$this->setPar('end_time', "unset");

		$this->setPar('score', "0");

		$this->setPar('state', "1");

		$this->setPar('attributes', "unset");

		$this->store();

	}

	public function createNewMemberCardId() {

		$exist = true;

		while ($exist) {

			$number = "M" . rand(10000000, 99999999);

			$search = 'member_card_id = :member_card_id';

			$searchValue = array(

				':member_card_id' => $number,

			);

			$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);

			if (count($beans) == 0) {

				$exist = false;

			}

		}

		return $number;

	}

	public function getIntroduction($type) {

		$content = "";

		switch ($type) {

		case 'join':

			$this->createNewMemberCard();

			$content = "感谢您加入我们的会员，您的会员卡号为： " . $this->getValue('member_card_id');

			break;

		case 'card':

			if ($this->getMemberCard()) {

				$content = "您的会员卡号为： " . $this->getValue('member_card_id');

			} else {

				$content = "您还不是我们的会员，赶快回复【加入会员】，享受会员优惠吧。";

			}

			break;

		case 'new':

			if ($this->getMemberCard()) {

			} else {

				$this->createNewMemberCard();

			}

			$content = "感谢您关注我们的微信账号，我们已经为您创建了会员卡： " . $this->getValue('member_card_id') . "，您可以凭借会员卡享受更优惠的服务。";

			break;

		default:

			# code...

			break;

		}

		return $content;

	}

}

?>