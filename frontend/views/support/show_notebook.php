<?php

Yii::app()->assets->registerGlobalCss("extensions/notebook.timeline/css/default.css");

Yii::app()->assets->registerGlobalCss("extensions/notebook.timeline/css/component.css");

Yii::app()->assets->registerGlobalScript("extensions/notebook.timeline/js/modernizr.custom.js");

?>

<!DOCTYPE html>

<html lang="en" class="no-js">

	<head>

		<meta charset="UTF-8" />

		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<meta name="viewport" content="width=device-width, initial-scale=1.0">

	</head>

	<body>

		<div class="container">

			<div class="main">

				<ul class="cbp_tmtimeline">

				<?php

$id = Yii::app()->user->getModel('id');
$key = ' identify = :identify';
$value = array(
	':identify' => $id,
);

$data = BasicUnit::load_unit_by_attribute('wrx_image_db', $key, $value);

foreach ($data as $key => $value) {
	echo '<li>

	<time class="cbp_tmtime" datetime=""><span>' . date("Y/m/d h:i", $value['date']) . '</span><span></span></time>

						<div class="cbp_tmlabel">

							<img style="width:40%; height:auto;" src="' . Yii::app()->assets->getUrlPath('files/' . $id . '/thumbnail/' . $value['link']) . '">

						</div>

					</li>
';
}

?>

				</ul>

			</div>

		</div>

	</body>

</html>

