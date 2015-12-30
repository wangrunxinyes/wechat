<?php

/**
 *
 */
class backend_index_page_helper {
	private $id;

	function __construct() {
		$this->id = Yii::app()->weixin->getId();
	}

	public function getNewUserNum() {
		$time = date("Y:m:d", time());
		$time = strtotime($time . " 00:00:00");
		$sql = 'select COUNT(*) as Num from weixin_user_db user where create_time > "'
		. $time . '" AND belong_id = "' . $this->id . '";';
		$data = R::getAll($sql);
		if (isset($data[0])) {
			if (isset($data[0]['Num'])) {
				return $data[0]['Num'];
			}
		}
		return 0;
	}

	public function getUnreadNum() {
		$sql = 'select COUNT(*) as Num from weixin_message_db msg '
		. 'where isnull(reply) AND tousername = "' . Yii::app()->weixin->getWeixin('weixin_open_id') . '";';
		$data = R::getAll($sql);
		if (isset($data[0])) {
			if (isset($data[0]['Num'])) {
				return $data[0]['Num'];
			}
		}
		return 0;
	}

	public function getVisitNum() {
		$time = time() - 3600 * 24;
		$sql = 'select COUNT(*) as Num from wrx_model_behavior where time > "'
		. $time . '" AND user_type = "guest" AND target_id = "' . $this->id . '";';
		$data = R::getAll($sql);
		if (isset($data[0])) {
			if (isset($data[0]['Num'])) {
				return $data[0]['Num'];
			}
		}
		return 0;
	}
}

?>