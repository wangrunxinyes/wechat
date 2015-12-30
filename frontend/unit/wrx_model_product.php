<?php

class wrx_model_product extends BasicUnit {

	function __construct() {

		$this->basic_attributes = array(

			'p_id',

			'p_belong',

			'p_type',

			'p_photo',

			'p_bg',

			'p_state',

			'p_name',

			'p_des',

			'p_details',

			'p_image',

			'p_activity',

			'p_price',

			'p_off_price',

			'p_trigger_off_price',

			'p_time',

			'p_show_type',

			'p_custom_html',

			'p_attributes',

		);

		$this->basic_data = array(

			'p_id' => md5('1'),

			'p_belong' => 'wakljskdfjaskfd',

			'p_type' => 'd',

			'p_photo' => 'http://localhost/weixin/assets/extensions/mobile/images/general-nature/2w.jpg',

			'p_bg' => 'http://localhost/weixin/assets/extensions/mobile/images/general-nature/2w.jpg',

			'p_state' => '0',

			'p_name' => '百灵油',

			'p_des' => 'simple des',

			'p_details' => 'details description',

			'p_image' => 'image',

			'p_activity' => '现在买一送一',

			'p_price' => '682',

			'p_off_price' => '682',

			'p_trigger_off_price' => '0',

			'p_time' => time(),

			'p_show_type' => '0',

			'p_custom_html' => '<html><body><p>this is custom html</p></body></html>',

			'p_attributes' => 'none',

		);

		$this->basic_indentify = "wrx_model_product_db";

	}

	function store() {

	}

}

?>