<?php

class wrx_model_behavior extends BasicUnit {

	function __construct() {

		$this->basic_attributes = array(

			'user_id',

			'user_type',

			'target_id',

			'behavior_type',

			'ref_key',

			'time',

			'ip',

			'attributes',

		);

		$this->basic_data = array(

			'user_id' => 'oXSVyw2oToSVSWWKMfxvKdDsz8sU',

			'user_type' => 'guest',

			'target_id' => 'wxeca0dc64dd540f5b',

			'behavior_type' => 'init',

			'ref_key' => 'weixin',

			'time' => time(),

			'ip' => self::get_real_ip(),

			'attributes' => 'null',

		);

		$this->basic_indentify = "wrx_model_behavior";

	}

	public static function create($user_id = null, $b_type = null, $ref = null, $target_id = null) {

		$obj = new self();

		$obj->log($user_id, $b_type, $ref, $target_id);

		$obj->store_unit();

	}

	public function log($user_id = null, $b_type = null, $ref = null, $target_id = null) {

		if (Yii::app()->user->isGuest) {

			$type = "guest";

		} else {

			$type = "admin";

		}

		if (is_null($user_id)) {

			$this->setPar("user_id", Yii::app()->user->getModel("id"));

		} else {

			$this->setPar("user_id", $user_id);

		}

		if (is_null($b_type)) {

			$curClassId = Yii::app()->request->getUrl();

			if (strpos($curClassId, "support/") !== false) {
				$b_type = "website";
			} else {
				$b_type = "unknown";
			}

		}

		$this->setPar("behavior_type", $b_type);

		if (is_null($ref)) {

			$curClassId = Yii::app()->request->getUrl();

			$pos = strpos($curClassId, "support/") + strlen("support/");

			$curClassId = substr($curClassId, $pos);

			if (strpos($curClassId, "/") !== false) {

				$pos = strpos($curClassId, "/");

				$curClassId = substr($curClassId, 0, $pos);

			}

			$this->setPar("ref_key", $curClassId);

		} else {

			$this->setPar("ref_key", $ref);

		}

		$this->setPar("user_type", $type);

		$this->setPar("time", time());

		if (!is_null($target_id)) {
			$this->setPar("target_id", $target_id);
		} else if (is_null(Yii::app()->weixin->getId())) {
			$this->setPar("target_id", "unknown");
		} else {
			$this->setPar("target_id", Yii::app()->weixin->getId());
		}

		$this->setPar("ip", self::get_real_ip());

	}

	function get_real_ip() {

		return $_SERVER["REMOTE_ADDR"];

	}

}

?>