<?php

class backend_export_helper {
	private $url;
	private $path;

	function __construct() {
		# code...
	}

	public function get_size() {
		$filesizeHelper = new backend_count_file_size();
		$filesize = $filesizeHelper->getFileSize($this->path);
		return $filesize;
	}

	public function export($data, $data_title, $description, $identity, $reload = false) {

		if (self::find_file(md5($identity)) && !$reload) {
			return $this->url;
		}

		Yii::import('ext.phpexcel.XPHPExcel');
		$phpExcel = XPHPExcel::createPHPExcel();
		$phpExcel->getProperties()->setCreator("WRX_WEIXIN")
			->setLastModifiedBy("WRX_WEIXIN")
			->setTitle("数据报告")
			->setSubject("Report")
			->setDescription("Report")
			->setKeywords("report")
			->setCategory("Report");

		//SUMMARY tab
		$phpExcel->setActiveSheetIndex(0);
		$phpExcel->getActiveSheet()->setTitle('统计');
		$activeSheet = $phpExcel->getActiveSheet();
		$boldStyle = array(
			'font' => array('bold' => true),
		);

		//ExtraColumn Headers
		if (is_null($data) || !isset($data[0])) {
			$activeSheet->mergeCells('A1:S1');
			$activeSheet->setCellValueExplicit('A1', '报告类型：' . $data_title);
			$activeSheet->mergeCells('A2:S2');
			$activeSheet->setCellValueExplicit('A2', '报告内容：' . $description);
			$activeSheet->mergeCells('A3:S3');
			$activeSheet->setCellValueExplicit('A3', '生成时间：' . date("Y/m/d H:i:s") . ', 识别码：' . $identity);
			$activeSheet->mergeCells('A4:S4');
			$activeSheet->setCellValueExplicit('A5', '无数据');
		} else if (count($data[0]) == 0) {
			$activeSheet->mergeCells('A1:S1');
			$activeSheet->setCellValueExplicit('A1', '报告类型：' . $data_title);
			$activeSheet->mergeCells('A2:S2');
			$activeSheet->setCellValueExplicit('A2', '报告内容：' . $description);
			$activeSheet->mergeCells('A3:S3');
			$activeSheet->setCellValueExplicit('A3', '生成时间：' . date("Y/m/d H:i:s") . ', 识别码：' . $identity);
			$activeSheet->mergeCells('A4:S4');
			$activeSheet->setCellValueExplicit('A5', '无数据');
		} else {
			$activeSheet->mergeCells('A1:S1');
			$activeSheet->setCellValueExplicit('A1', '报告类型：' . $data_title);
			$activeSheet->mergeCells('A2:S2');
			$activeSheet->setCellValueExplicit('A2', '报告内容：' . $description);
			$activeSheet->mergeCells('A3:S3');
			$activeSheet->setCellValueExplicit('A3', '生成时间：' . date("Y/m/d H:i:s") . ', 识别码：' . $identity);
			$activeSheet->mergeCells('A4:S4');
			$activeSheet->setCellValueExplicit('A5', '标题\\序号');
			$dataRowIndex = 5;
			$headerFieldsMappingArr = array();
			$headerColumnCharIndex = 'B';
			foreach ($data[0] as $key => $val) {
				$activeSheet->setCellValueExplicit($headerColumnCharIndex . $dataRowIndex, self::replace_key($key));
				$activeSheet->getStyle($headerColumnCharIndex . $dataRowIndex)->applyFromArray($boldStyle);
				$headerFieldsMappingArr[$key] = $headerColumnCharIndex;
				$headerColumnCharIndex++;
			}
			$dataRowIndex++;
			$index_id = 1;
			foreach ($data as $val) {
				foreach ($headerFieldsMappingArr as $title => $index) {
					$activeSheet->setCellValueExplicit("A" . $dataRowIndex, $index_id);
					if (isset($val[$title])) {
						$activeSheet->setCellValueExplicit($index . $dataRowIndex, self::replace_value($title, $val));
					} else {
						$activeSheet->setCellValueExplicit($index . $dataRowIndex, "");
					}
				}
				$index_id++;
				$dataRowIndex++;
			}
			//filename is the name which used in the url transfer.
			$fileName = md5($identity);
			$realName = $fileName . ".xlsx";
			$fileName = urlencode($fileName) . ".xlsx";
			$zipfilename = $fileName . ".zip";

			$writer = PHPExcel_IOFactory::createWriter($phpExcel, 'Excel2007');
			$writer->setPreCalculateFormulas(false);
			ob_end_clean();

			$main_url = Yii::app()->assets->getUrlPath('');

			try {
				$file_path = $_SERVER['DOCUMENT_ROOT'] . "/files/reports/";
				if (!file_exists($_SERVER['DOCUMENT_ROOT'] . "/files")) {
					mkdir($_SERVER['DOCUMENT_ROOT'] . "/files", true);

				}

				if (!file_exists($_SERVER['DOCUMENT_ROOT'] . "/files/reports/")) {
					mkdir($_SERVER['DOCUMENT_ROOT'] . "/files/reports/", true);
				}

				if (!file_exists($file_path)) {
					mkdir($file_path, true);
				}
				$this->path = $file_path . $realName;
				$writer->save($file_path . $realName);
				$file_url = $main_url . 'files/reports/' . $fileName;
			} catch (Exception $e) {
				$file_url = null;
				echo $e->getMessage();
			}

			return $file_url;

		}
	}

	function find_file($indentify) {
		$file_path = $_SERVER['DOCUMENT_ROOT'] . "/files/reports/" . $indentify . ".xlsx";
		if (file_exists($file_path)) {
			$this->path = $file_path;
			$this->url = Yii::app()->assets->getUrlPath('files/reports/' . $indentify . ".xlsx");
			return true;
		} else {
			return false;
		}
	}

	function replace_key($str) {
		$result = $str;
		switch ($str) {
		case 'title1':
			$result = "测试";
			break;
		case 'id':
			$result = "编号";
			break;
		case 'post_user_group':
			$result = "推送组别";
			break;
		case 'state':
			$result = "状态";
			break;
		case 'attributes':
			$result = "备注";
			break;
		case 'title':
			$result = "标题";
			break;
		case 'post_time':
			$result = "推送时间";
			break;
		case 'keyword':
			$result = "内容";
			break;
		case 'reply':
			$result = "回复状态";
			break;
		case 'weixin_name':
			$result = "微信用户名";
			break;
		default:
			# code...
			break;
		}

		return $result;
	}

	function replace_value($key, $str) {
		$result = $str[$key];
		if (strpos($key, "time") !== false) {
			$result = date("Y/m/d H:i:s", $result);
		} elseif ($result == 'finish') {
			$result = "完成";
		} elseif ($result == 'none' || $result == 'null' || $result == '') {
			$result = "无";
		}
		return $result;
	}
}

?>