<?php

/**



 * image unit



 */

class ImageUnit extends BasicUnit {

	function __construct($array = null) {

		$this->basic_attributes = array(

			'identify',

			'date',

			'type',

			'title',

			'des',

			'link',

			'value',

			'class',

		);

		$this->basic_data = array(

			'identify' => 'HJFHA18asFDF',

			'date' => time(),

			'type' => 'img',

			'title' => 'init',

			'des' => 'icon.png',

			'link' => 'icon.png',

			'value' => 'init',

			'class' => 'init',

		);

		$this->basic_indentify = "wrx_image_db";

	}

	public function build_img($name, $user, $des) {

		$this->basic_value = array(

			'identify' => $user,

			'date' => time(),

			'type' => 'img',

			'title' => 'init',

			'des' => $des,

			'link' => $name,

			'value' => 'init',

			'class' => 'init',

		);

		$this->store_unit();

	}

}

?>