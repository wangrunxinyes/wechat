<?php

// use
// $dir = $SERVER['DOCUMENT_ROOT'] . '/files/report/';
// $filename = "filename" . ".xls";
// $helper = new excel_helper();
// $helper->set_filename($filename);
// $helper->set_data($data);
// $helper->set_path($dir);
// $helper->build();

class excel_helper {

	private $filename;
	private $title_array;
	private $data_array;
	private $path;
	private $file;

	function __construct() {
		$file = "";
	}

	function set_filename($filename) {
		$this->filename = $filename;
	}

	function set_title($title_array) {
		$this->title_array = $title_array;
	}

	function set_data($data_array) {
		$this->data_array = $data_array;
		foreach ($this->data_array as $key => $value) {
			self::set_title($value);
			break;
		}
	}

	function set_path($path) {
		$this->path = $path;
	}

	function xlsBOF() {
		$this->file .= pack("ssssss", 0x809, 0x8, 0x0, 0x10, 0x0, 0x0);
	}

	function xlsEOF() {
		$this->file .= pack("ss", 0x0A, 0x00);
	}

	function xlsWriteNumber($Row, $Col, $Value) {
		$this->file .= pack("sssss", 0x203, 14, $Row, $Col, 0x0);
		$this->file .= pack("d", $Value);
		return;
	}

	function xlsWriteLabel($Row, $Col, $Value) {
		$Value = iconv("UTF-8", "GBK", $Value);
		$L = strlen($Value);
		$this->file .= pack("ssssss", 0x204, 8 + $L, $Row, $Col, 0x0, $L);
		$this->file .= $Value;
		return;
	}

	function check() {
		if (!is_null($this->title_array)) {
			if (is_array($this->title_array)) {
				if (count($this->title_array) != 0) {
					if (!is_null($this->data_array)) {
						if (is_array($this->data_array)) {
							if (count($this->data_array) != 0) {
								return true;
							}
						}
					}
				}
			}
		}
		return false;
	}

	function build() {

		if (!self::check()) {
			return false;
		}

		self::xlsBOF();

		$title = array();
		$index = 0;

		if (is_array($this->title_array)) {
			foreach ($this->title_array as $key => $value) {
				self::xlsWriteLabel(0, $index, backend_export_helper::replace_key($key));
				$title[$key] = $index;
				$index++;
			}
		}

		$xlsRow = 1;

		if (is_array($this->data_array)) {
			foreach ($this->data_array as $id => $item) {
				if (is_array($item)) {
					foreach ($item as $key => $value) {
						self::xlsWriteLabel($xlsRow, $title[$key], backend_export_helper::replace_value($key, $value));
					}
				}
				unset($this->data_array[$id]);
				$xlsRow++;
			}
		}

		self::xlsEOF();

		if (is_null($this->path) || is_null($this->filename)) {
			return false;
		} elseif (!file_exists($this->path) && !mkdir($this->path, 0777, true)) {
			return false;
		} elseif (file_exists($this->path . $this->filename)) {
			@unlink($this->path . $this->filename);
		}

		try {
			unset($this->data_array);
			$fp2 = @fopen($this->path . $this->filename, 'w');
			fwrite($fp2, $this->file);
			fclose($fp2);
			return true;
		} catch (Exception $e) {
			return false;
		}

	}

}

?>