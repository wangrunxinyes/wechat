<?php

Yii::app()->assets->registerGlobalScript("global.style/application.log/scripts/shCore.js");

Yii::app()->assets->registerGlobalScript("global.style/application.log/scripts/shBrushJScript.js");

Yii::app()->assets->registerGlobalCSS("global.style/application.log/styles/shCoreDefault.css");

$filename = Yii::app()->

	getRuntimePath() . "/application.log";

$handle = fopen($filename, "r"); //读取二进制文件时，需要将第二个参数设置成'rb'

//通过filesize获得文件大小，将整个文件一下子读到一个字符串中

$contents = fread($handle, filesize($filename));

$array = explode("---", $contents);

$id = count($array);

$contents = "";

$identify = 0;

for ($i = $id - 1; $i > $id - 30; $i--) {

	if ($i < 0) {

		break;

	}

	$contents .= '

    ' . $array[$i] . '----------------[id=>' . $identify . ']----------------';

	$identify++;

}

fclose($handle);

?>

	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">



	<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">



<head>



		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />



		<title>Admin|日志</title>



		<script type="text/javascript">SyntaxHighlighter.all();</script>



</head>



<body style="background: white; font-family: Helvetica">



		<h2>application.log</h2>



		<pre class="brush: js;">







<?php

// for($i = $id; $i < count($array)-1; $i++){

// 	echo $array[$i]."---------------------------------------------------------------------------------------";

// }

echo $contents;

?></pre>



</html>