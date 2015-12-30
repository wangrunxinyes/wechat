<?php

class weixin_message_reply_helper {

	private $msg;

	function __construct() {

	}

	function init() {

	}

	function execute($msg) {

		$this->msg = $msg;

		Yii::app()->weixin->reBuildForUser($this->msg->getValue('tousername'));

	}

	function check() {

		$keyword = $this->msg->getValue('keyword');

		if ($keyword == "?" || $keyword == "？") {

			$content = date("Y-m-d H:i:s", time());

			$this->auto_replay('text', $content);

		} elseif ($keyword == "加入会员") {

			$card = MemberCardUnit::create($this->msg);

			$content = $card->getIntroduction("join");

			$this->auto_replay('text', $content);

		} elseif ($keyword == "会员卡") {

			$card = MemberCardUnit::create($this->msg);

			$content = $card->getIntroduction("card");

			$this->auto_replay('text', $content);

		} elseif (strpos($keyword, "绑定") !== false) {
			$pos = strpos($keyword, "绑定");
			$word = str_replace("绑定", "", $keyword);
			$account = new WeixinBasicUnit();
			if ($account->reBuild($word)) {
				$account->setPar('weixin_open_id', $this->msg->getValue('tousername'));
				$account->store();
				return $this->auto_replay('text', '绑定' . $word . '成功');
			} else {
				return $this->auto_replay('text', '绑定' . $word . '失败');
			}
		}

		return true;

	}

	function auto_replay($type, $content = null) {

		$reply = WeixinReplyUnit::create($this->msg, "0", $type);

		$reply->setPar('type', $type);

		$reply->setPar('content', $content);

		echo $reply->getReplayXml();

	}

	public function execMsg($msg) {

		self::execute($msg);

		$keyword = $msg->getValue('keyword');

		if (!empty($keyword)) {

			//check auto reply
			wrx_model_behavior::create($msg->getValue("fromusername"), "weixin_msg", $msg->getValue('id'));
			$this->check();

		} else {

			return false;

		}

	}

	public function execEvent($event) {

		self::execute($event);

		wrx_model_behavior::create($event->getValue("fromusername"), "weixin_event", $event->getValue('id'));

		$contentStr = "";

		switch ($this->msg->getValue('eventkey')) {

		case "subscribe":

			$card = MemberCardUnit::create($event);

			$this->auto_replay('text', $card->getIntroduction('new'));

		case "unsubscribe":

			break;

		case "CLICK":

			switch ($this->msg->getValue('keyword')) {

			case "ruigule":

				$this->auto_replay('text', "瑞古乐是一种.......详细介绍：" . Yii::app()->request->hostInfo

					. Yii::app()->homeUrl . 'support/productlist/type/ruigule');

				break;

			case "MedicalRecordBook":

				$book = MedicalRecordUnit::create($this->msg);

				$contentStr = $book->getBriefDes();

				if (is_array($contentStr)) {

					$this->auto_replay('news', $contentStr);

				} else {

					$this->auto_replay('text', $contentStr);

				}

				break;

			case "BackUp":

				$this->auto_replay('text', "欢迎使用备忘提示：" . Yii::app()->request->hostInfo

					. Yii::app()->homeUrl . 'support/notebook');

				break;

			case "OnlineAsk":

				// $this->auto_replay('custom_service', "");

				$this->auto_replay('text', "您好，请问有什么可以帮你？");

				break;

			default:

				$contentStr[] = array("Title" => "默认菜单回复",

					"Description" => "您正在使用的是自定义菜单测试接口",

					"PicUrl" => "http://discuz.comli.com/weixin/weather/icon/cartoon.jpg",

					"Url" => "weixin://addfriend/pondbaystudio");

				break;

			}

			break;

		case "test":

			$this->auto_replay('custom_service', "");

			$this->auto_replay('text', '您好，请问有什么可以帮你？');

			break;

		default:

			break;

		}

	}

	public function sendMsg($id, $content) {
		$weixin_message = new WeixinTextUnit();
		$weixin_message->load_unit_by_id($id);
		$this->msg = $weixin_message;
		$uid = Yii::app()->user->getModel('id');
		$reply = WeixinReplyUnit::create($this->msg, $uid, 'text');
		$reply->setPar('type', 'text');
		$reply->setPar('content', $content);
		if ($content == "WRX_WEIXIN_READ") {
			$reply->getReplayXml();
			return '处理成功。';
		}
		$data = '{"touser":"' . $reply->getValue('tousername') . '", "msgtype":"text", "text": {"content":"' . $content . '"}}';
		$url = 'https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=' . Yii::app()->weixin->getAccessToken();
		$result = json_decode(curl_helper::post($url, $data));
		if (isset($result->{'errcode'})) {
			if ($result->{'errcode'} == 0) {
				$reply->getReplayXml();
				return '回复成功。';
			}
		}
		return '回复失败，请稍后重试。';
	}
}

?>