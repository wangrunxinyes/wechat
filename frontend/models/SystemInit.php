<?php

class SystemInit {

	private $para_array;

	public function init_all() {

		$this->para_array = array(
			//system unit
			'ImageUnit',
			//weixin unit
			'WeixinBasicUnit',
			'MemberCardUnit',
			'WeixinUserUnit',
			'WeixinTextUnit',
			'WeixinPostMsgUnit',
			'WeixinPostRecordUnit',
			'WeixinGroupUnit',
			'WeixinOauthUser',
			//models
			'wrx_model_behavior',
			'wrx_model_user',
			'wrx_model_system_basic',
			'wrx_model_product',
		);

		self::start();

	}

	public function init_par($par) {

		$this->para_array = array($par);
		self::start();

	}

	public function init_per($obj) {
		echo '<br>####------processing: <label style="color:blue;">' . $obj . "</label>";
		$unit = new $obj();
		$unit->load_unit_by_id(1);
		if ($unit->check_state()) {
			echo '<br>####------end with error: <label style="color:red;">exist, data: '
			. print_r($unit->getValue(), true) . '</label>';
		} else {
			$id = $unit->init_unit();
			echo '<br>####------end with <label style="color:green;">init success with data id: ' . $id . '</label>';
			echo '<br>####------processing: <label style="color:blue;">load ' . $obj . " test</label>";
			$unit->load_unit_by_id($id);
			echo '<br>####------end with data :' . print_r($unit->getValue(), true);
		}
	}

	public function start() {

		foreach ($this->para_array as $value) {

			try {

				$this->init_per($value);

			} catch (Exception $e) {

				echo '<br>####------end with error: <label style="color:red;">' . print_r($e, true) . '</label>';

			}

		}

	}

}

?>