<?php

/**
 *
 */
class backend_product_data_helper {

	function __construct() {
		# code...
	}

	public static function get_data_by_page_number($page, $ex_data) {
		$start_id = 10 * (-1 + $page);
		$sql = 'select * from wrx_model_product_db product order by p_time desc '
		. 'limit ' . $start_id . ', 10;';
		$data = R::getAll($sql);
		$sql = 'select COUNT(*) as num from wrx_model_product_db product ';
		$num = R::getAll($sql);
		$data['num'] = $num[0]['num'];
		return $data;
	}

	public function get_data_by_search($page) {

	}
}

?>