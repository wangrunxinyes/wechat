<?php

class backend_post_msg_data_helper {

	function __construct() {
		# code...
	}

	public static function get_data_by_page_number($page) {
		$start_id = 10 * (-1 + $page);
		$sql = 'select msg.*,msg.id as mid, msg.state as msg_state, msg.attributes as msg_attributes, '
		. 'record.*, record.state as post_state, record.attributes as post_attributes '
		. 'from weixin_post_msg_db msg left join weixin_post_msg_record_db record '
		. 'on msg.id = record.main_msg_id '
		. 'where belong_to_id = "none" order by create_time DESC'
		. ' limit ' . $start_id . ', 10;';
		$data = R::getAll($sql);
		$sql = 'select COUNT(*) as num '
		. 'from weixin_post_msg_db msg left join weixin_post_msg_record_db record '
		. 'on msg.id = record.main_msg_id '
		. 'where belong_to_id = "none" order by create_time DESC';
		$num = R::getAll($sql);
		$data['num'] = $num[0]['num'];

		return $data;
	}

	public function get_data_by_search($page) {

	}
}

?>