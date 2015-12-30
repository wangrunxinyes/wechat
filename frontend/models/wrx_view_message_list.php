<?php

class wrx_view_message_list {

	private $ids;
	private $list;

	function __construct() {

	}

	public static function create() {
		$obj = new self();
		return $obj;
	}

	public function execute() {
		if (self::createDataSource()) {
			if (self::formatData()) {
				self::echoFormat();
			} else {
				echo "System Error | 系统忙，请稍后再试";
			}
		} else {
			echo "System Error | 系统忙，请稍后再试";
		}
	}

	function createDataSource() {
		//find unhandled data;
		$id = Yii::app()->weixin->getWeixin('weixin_open_id');
		$id = trim($id);
		$this->ids = R::getAll('select id from weixin_message_db where isnull(reply) AND tousername = "' . $id . '" order by time asc');
		return true;
	}

	function formatData() {
		$this->list = array();
		//exchange to wrx_model_message type;
		foreach ($this->ids as $key => $id) {
			$msg = new wrx_model_message();
			$msg->getMessage($id['id']);
			if (isset($this->list[$msg->getValue('user_id')])) {
				$msg->setPar('state', $this->list[$msg->getValue('user_id')]->getValue('state') + 1);
			} else {
				$msg->setPar('state', 1);
			}
			$this->list[$msg->getValue('user_id')] = $msg;
		}
		return true;
	}

	function echoFormat() {
		if (count($this->list) == 0) {
			echo "太棒了，所有消息都已处理。";
		} else {
			foreach ($this->list as $key => $message) {
				$content = $message->getValue('content');
				if (strlen($content) > 100) {
					$content = mb_substr($content, 0, 100, 'utf-8');
				}
				echo '
<div class="todo-tasklist-item todo-tasklist-item-border-green">
	<a class="weixin-check-user" type="weixin_load_message" data="' . $key . '" style=" text-decoration:none;">
		<img class="todo-userpic pull-left" src="' . $message->getValue('weixin_photo') . '" height="27px" width="27px">
		<div class="todo-tasklist-item-title">' . $message->getValue('weixin_name')
				. '<span class="badge badge-roundless badge-danger" style="margin-left: 10px;">' . $message->getValue('state') . '条新信息</span></div>
		<div class="todo-tasklist-item-text">' . $content . '</div>
		<div class="todo-tasklist-controls pull-left">
			<span class="todo-tasklist-date"> <i class="fa fa-calendar"></i>
				' . date('m-d H:i:s', $message->getValue('time')) . '
			</span>
		</div>
	</a>
</div>
';
			}
		}
	}
}
?>