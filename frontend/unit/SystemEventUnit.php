<?php

class SystemEventUnit extends BasicUnit {

	function __construct($attribute, $motified) {

		$this->basic_attributes = array(

			'attribute',

			'motified',

			'operator',

			'time',

			'attributes',

		);

		$this->basic_indentify = "system_event_db";

		//handle data;

		$this->setPar('time', time());

		$this->setPar('operator', Yii::app()->user->getModel("wrx_id"));

		$this->setPar('time', time());

		$this->setPar('attribute', $attribute);

		$this->setPar('motified', $motified);

	}

	public static function create($attribute, $motified) {

		$obj = new self($attribute, $motified);

		return $obj;

	}

	public function store() {

		$unit = R::dispense($this->basic_indentify);

		foreach ($this->getAttribute() as $value) {

			$unit->$value = $this->getValue($value);

		}

		return R::store($unit);

	}

}

?>