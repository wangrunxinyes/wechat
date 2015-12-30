<?php

class wrx_view_date_export_center {

	private $format;
	private $option;

	function __construct() {
		$this->format = array();
	}

	public static function create($type) {
		$obj = new self();
		$obj->create_data($type);
		return $obj;
	}

	function create_data($type) {
		switch ($type) {
		case md5('user'):
			self::create_for_user();
			break;
		case md5('product'):
			self::create_for_product();
			break;
		default:
			# code...
			break;
		}
	}
	function create_time_option() {
		$year = date('Y');
		$month = date('m');
		$start = mktime(0, 0, 0, (int) $month, 1, (int) $year);
		$str = "";
		for ($i = 0; $i < 5; $i++) {
			$str .= '<option value="' . $start . '">' . date("Y-m", $start) . '</option>';
			$last_month = date('m', $start - 1);
			$last_year = date('Y', $start - 1);
			$start = mktime(0, 0, 0, (int) $last_month, 1, (int) $last_year);
		}
		$this->option = $str;
	}

	function create_for_user() {
		$this->create_time_option();
		$format = array();
		$format['a']['title'] = '关注用户列表';
		$format['a']['des'] = '导出关注此公众号的微信用户数据，包括微信用户名，注册时输入的姓名、手机号，绑定的会员卡，创建时间等信息。';
		$format['a']['link'] = '';
		$format['a']['extend'] = '';
		$format['b']['title'] = '用户操作记录';
		$format['b']['des'] = '导出关注此公众号的微信用户的操作，包括微信用户名，访问事件，访问时间，参考事件ID等信息。';
		$format['b']['link'] = '';
		$format['b']['extend'] = '<p>请选择时间：<select class="form-control">
											' . $this->option . '
										</select></p>';
		$format['c']['title'] = '用户信息记录';
		$format['c']['des'] = '导出用户发送至此公众号的信息，包括微信用户名，信息内容，发送时间，回复状态等信息。';
		$format['c']['link'] = Yii::app()->assets->getUrlPath('backend/export/type/' . md5('weixin_msg'));
		$format['c']['extend'] = '<p>请选择时间：<select class="form-control" name="date">
											' . $this->option . '
										</select></p>';
		$format['d']['title'] = '用户分组';
		$format['d']['des'] = '导出当前用户的分组报告，包括微信用户名，组别等信息。';
		$format['d']['link'] = '';
		$format['d']['extend'] = '';
		$this->format = $format;
	}

	function create_for_product() {
		$this->create_time_option();
		$format = array();
		$format['a']['title'] = '产品信息';
		$format['a']['des'] = '导出关注此公众号的微信用户数据，包括产品名称，类别、创建时间，价格，简介等信息。';
		$format['a']['link'] = '';
		$format['a']['extend'] = '';
		$format['b']['title'] = '产品点击记录';
		$format['b']['des'] = '导出用户浏览产品的统计报告，包括产品信息，类别，点击量等信息。';
		$format['b']['link'] = '';
		$format['b']['extend'] = '<p>请选择时间：<select class="form-control">
											' . $this->option . '
										</select></p>';
		$this->format = $format;
	}

	function get_data() {
		return $this->format;
	}
}

?>