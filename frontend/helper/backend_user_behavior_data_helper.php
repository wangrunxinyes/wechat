<?php

/**
 *
 */
class backend_user_behavior_data_helper {

	function __construct() {
		# code...
	}

	public static function get_data_by_page_number($page) {
		$start_id = 10 * (-1 + $page);
		$sql = 'select be.*, user.weixin_name, user.weixin_photo from wrx_model_behavior be '
		. 'left join weixin_user_db user '
		. 'on be.user_id = user.user_id where user_type = "guest" AND target_id = "' . Yii::app()->weixin->getWeixin('weixin_app_key') . '" '
		. 'limit ' . $start_id . ', 10;';
		$data = R::getAll($sql);
		$sql = 'select COUNT(*) as num from wrx_model_behavior be '
		. 'left join weixin_user_db user '
		. 'on be.user_id = user.user_id where user_type = "guest" AND target_id = "' . Yii::app()->weixin->getWeixin('weixin_app_key') . '" ';
		$num = R::getAll($sql);
		if (isset($num[0])) {
			$data['num'] = $num[0]['num'];
		} else {
			$data['num'] = 0;
		}

		return $data;
	}

	public function get_data_by_search($page) {

	}
}

?>