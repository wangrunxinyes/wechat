<?php

Yii::app()->
	assets->registerGlobalCss("global.style/css/css.css");

Yii::app()->assets->registerGlobalCss("global.style/css/da84.css");

Yii::app()->assets->registerGlobalCss("global.style/css/normalize.css");

Yii::app()->assets->registerGlobalCss("global.style/css/default.css");

Yii::app()->assets->registerGlobalCss("global.style/css/fakeLoader.css");

Yii::app()->clientScript->registerMetaTag(' text/html;charset=utf-8', null, 'Content-Type');

$code = '*';

?>
<!DOCTYPE html>

<html style="" class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="en-US">

<head>

	<meta http-equiv="content-type" content="text/html; charset=UTF-8">

	<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>Alert|提示</title>

	<meta name="description" content="Our 404 page">

	<meta name="viewport" content="width=device-width, initial-scale=1">

<body class="error">

	<div class="fakeloader"></div>

	<main class="content-primary">

		<div class="container">

			<div class="dialog">

				<h1 class="mega" style="color:white">*

					</h1>

				<h2 class="subhead">请使用手机微信打开此页.</h2>

				<h3 class="subhead">Please use wechat to open this page.</h3>

			</div>

			<nav class="nav-choices">

				<ul>

					<li>


					</li>


				</ul>

			</nav>

		</div>

	</main>

	<script src="<?php echo Yii::app()->baseUrl;?>/assets/global.style/js/jquery.min.js"></script>

	<script src="<?php echo Yii::app()->baseUrl;?>/assets/global.style/js/fakeLoader.min.js"></script>

</body>

</html>