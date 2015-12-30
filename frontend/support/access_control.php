<?php

class access_control {

	function __construct() {
		# code...
	}

	public static function if_need_check() {

		$curClassId = Yii::app()->request->getUrl();

		$pos = strpos($curClassId, "support/") + strlen("support/");

		$curClassId = substr($curClassId, $pos);

		if (strpos($curClassId, "/") !== false) {
			$pos = strpos($curClassId, "/");
			$curClassId = substr($curClassId, 0, $pos);
		} elseif (strpos($curClassId, "?") !== false) {
			$pos = strpos($curClassId, "?");
			$curClassId = substr($curClassId, 0, $pos);
		}

		$access = false;

		switch ($curClassId) {
		case 'notebook':
			$access = true;
			break;
		case 'medicalbook':
			$access = true;
			break;
		case 'upload':
			$access = true;
			break;
		case 'productlist':
			break;
		case 'producttype':
			break;
		case 'alert':
			$access = true;
			break;
		case 'item':
			break;
		case 'about':
			break;
		case 'membercenter':
			$access = true;
			break;
		case 'assistant':
			$access = true;
			break;
		case 'tips':
			break;
		case 'account':
			$access = true;
			break;
		default:
			break;
		}

		return $access;
	}
}

?>