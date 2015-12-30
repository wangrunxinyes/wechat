<?php

class Error {

	public static function log($module = "Logger", $info = "no info", $back = "log") {

		try

		{

			$log = fopen(Yii::app()->basePath . "/runtime/error.log", "a+");

			// if (isset(Yii::app()->params['tenant']['id']))

			// 	$log = fopen(Yii::app()->basePath."/runtime/".$name.Yii::app()->params['tenant']['id'].".".$back, "a+");

			// else $log = fopen(Yii::app()->basePath."/runtime/logger.log", "a+");

			fwrite($log, date("d/m/Y H:i:s") . ": [" . $module . "] \r\n");

			fwrite($log, $info . "\r\n");

			fclose($log);

		} catch (Exception $e) {

			Yii::log("Error class error: " . $e);

		}

	}

}

?>