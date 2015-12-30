<?php

/**
 *
 */
class wrx_view_model_table {
	private $view_attributes;
	private $data_sources;

	function __construct($view_attributes, $data_sources) {
		$this->view_attributes = $view_attributes;
		$this->data_sources = $data_sources;
	}

	public function create_view() {
		echo '<table class="table table-striped table-bordered table-hover dataTable no-footer"'
		. ' id="sample_1" role="grid" aria-describedby="sample_1_info">';
		self::create_title();
		self::create_body();
		echo '</table>';
	}

	public function create_title() {
		echo '<thead><tr>';
		foreach ($this->view_attributes as $key => $value) {
			echo '<th>' . $value . '</th>';
		}
		echo '</thead></tr>';
	}

	public function create_body() {
		echo '<tbody>';
		foreach ($this->data_sources as $key => $each_data) {
			echo '<tr>';
			foreach ($this->view_attributes as $key => $value) {
				echo '<td>' . $each_data[$key] . '</td>';
			}
			echo '</tr>';
		}
		echo '</tbody>';
	}
}

?>