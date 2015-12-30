<?php

class backend_image_data_helper {

	function __construct() {
		# code...
	}

	public static function get_data_by_page_number($page) {
		$des = Yii::app()->data->getValue("des");
		if (is_null($des)) {
			return array('num' => 0);
		}
		$identify = Yii::app()->weixin->getId();
		$sql = 'select image.* from wrx_image_db image where ' .
		' des in ("' . trim($des) . '", "all")';
		$data = R::getAll($sql);
		$sql = 'SELECT FOUND_ROWS() num;';
		$num = R::getAll($sql);
		$data['num'] = $num[0]['num'];

		return $data;
	}

	public function get_data_by_search($page) {

	}
}

?>