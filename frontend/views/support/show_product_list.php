<?php

Yii::app()->
	assets->registerGlobalCss("extensions/product.list/css/reset.css");

Yii::app()->assets->registerGlobalCss("extensions/product.list/css/default.css");

Yii::app()->assets->registerGlobalCss("extensions/product.list/css/style.css");

Yii::app()->assets->registerGlobalScript("extensions/product.list/js/modernizr.js");

// Yii::app()->assets->registerGlobalScript("extensions/product.list/js/main.js");

?>
<div class="content">

	<div>
		<a href="<?php echo

Yii::app()->
	request->hostInfo . Yii::app()->homeUrl . "support/producttype/type/d";?>">
			<div class="overlay"></div>
			<div class="homepage-slider-caption">
				<h3>德风生活馆</h3>
			</div>
			<img src="<?php echo Yii::app()->
	assets->getUrlPath('assets/extensions/mobile/')?>images/general/d.jpg" class="responsive-image" alt="img">
		</a>
	</div>

	<div style="margin-top: 5px;">
		<a href="<?php echo

Yii::app()->
	request->hostInfo . Yii::app()->homeUrl . "support/producttype/type/t";?>">
			<div class="overlay"></div>
			<div class="homepage-slider-caption">
				<h3>台湾生活馆</h3>
			</div>
			<img src="<?php echo Yii::app()->
	assets->getUrlPath('assets/extensions/mobile/')?>images/general/t.jpg" class="responsive-image" alt="img">
		</a>
	</div>

	</div>