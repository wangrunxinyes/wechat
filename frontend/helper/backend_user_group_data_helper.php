<?php

/**
 *
 */
class backend_user_group_data_helper {

	function __construct() {
		# code...
	}

	public static function get_data_by_page_number($page, $ex_data) {
		$start_id = 10 * (-1 + $page);
		$sql = 'select * from weixin_user_db user '
		. 'where weixin_group = "' . $ex_data . '" '
		. 'limit ' . $start_id . ', 10;';
		$data = R::getAll($sql);
		$sql = 'select COUNT(*) as num from weixin_user_db user '
		. 'where weixin_group = "' . $ex_data . '"';
		$num = R::getAll($sql);
		$data['num'] = $num[0]['num'];
		return $data;
	}

	public function get_data_by_search($page) {

	}
}

?>