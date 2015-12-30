<?php
/*
 * jQuery File Upload Plugin PHP Example
 * https://github.com/blueimp/jQuery-File-Upload
 *
 * Copyright 2010, Sebastian Tschan
 * https://blueimp.net
 *
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/MIT
 */

if (Yii::app()->data->getValue("data") != Yii::app()->user->getModel('id')) {
	header('HTTP/1.1 405 Ref.431.6.31');
} else {
	$upload_handler = new UploadHandler();
}

?>