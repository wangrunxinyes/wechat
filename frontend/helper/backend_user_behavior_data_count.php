<?php

class backend_user_behavior_data_count {

	private $time_array;
	private $data;

	function __construct() {
		$this->time_array = array();
	}

	public function get_data() {

		$result = array();
		self::create_time();
		foreach ($this->time_array as $key => $time) {

			$sql = 'select COUNT(*) as num from wrx_model_behavior be where '
			. 'time > "' . $time['s'] . '" AND '
			. 'time < "' . $time['e'] . '" AND user_type = "guest" AND target_id = "' . Yii::app()->weixin->getWeixin('weixin_app_key') . '"';
			$data = R::getAll($sql);
			if (isset($data[0])) {
				$total = $data[0]['num'];
			} else {
				$total = 0;
			}

			$sql = 'select COUNT(*) as num from wrx_model_behavior be where '
			. 'time > "' . $time['s'] . '" AND behavior_type = "weixin_event" AND '
			. 'time < "' . $time['e'] . '" AND user_type = "guest" AND target_id = "' . Yii::app()->weixin->getWeixin('weixin_app_key') . '"';
			$data = R::getAll($sql);
			if (isset($data[0])) {
				$result[$key]['e'] = $data[0]['num'];
			} else {
				$result[$key]['e'] = 0;
			}

			$sql = 'select COUNT(*) as num from wrx_model_behavior be where '
			. 'time > "' . $time['s'] . '" AND behavior_type = "weixin_msg" AND '
			. 'time < "' . $time['e'] . '" AND user_type = "guest" AND target_id = "' . Yii::app()->weixin->getWeixin('weixin_app_key') . '"';
			$data = R::getAll($sql);
			if (isset($data[0])) {
				$result[$key]['m'] = $data[0]['num'];
			} else {
				$result[$key]['m'] = 0;
			}

			$sql = 'select COUNT(*) as num from wrx_model_behavior be where '
			. 'time > "' . $time['s'] . '" AND behavior_type = "website" AND '
			. 'time < "' . $time['e'] . '" AND user_type = "guest" AND target_id = "' . Yii::app()->weixin->getWeixin('weixin_app_key') . '"';
			$data = R::getAll($sql);
			if (isset($data[0])) {
				$result[$key]['w'] = $data[0]['num'];
			} else {
				$result[$key]['w'] = 0;
			}

			$result[$key]['o'] = $total - $result[$key]['e'] - $result[$key]['m'] - $result[$key]['w'];
		}

		$this->data = $result;
		return $result;
	}

	public function create_time() {
		$time_array = array();
		$month = date("m", time());
		$year = date("Y", time());
		$date = date("d", time());
		$day = 3600 * 24;
		$end = mktime(23, 59, 59, $month, $date, $year);
		$start = mktime(0, 0, 0, $month, $date, $year);

		for ($i = 0; $i < 10; $i++) {
			$time_boundary = array();
			$index = 9 - $i;
			$time_boundary['s'] = $start - $i * $day;
			$time_boundary['e'] = $end - $i * $day;
			// $time_boundary['read-s'] = date("Y/m/d H:i:s", $start - $i * $day);
			// $time_boundary['read-e'] = date("Y/m/d H:i:s", $end - $i * $day);
			$time_array[$index] = $time_boundary;
		}
		$this->time_array = $time_array;
	}
}

?>