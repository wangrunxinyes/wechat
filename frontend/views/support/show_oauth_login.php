<?php

Yii::app()->assets->registerGlobalScript('custom.files/js/handle.register.oauth.user.js');

if (isset($_GET['code'])) {
	echo '<input id="code" type="hidden" value="' . $_GET['code'] . '">';
	echo '<input id="url" type="hidden" value="' . Yii::app()->assets->getUrlPath('support/registeroauth') . '">';
}

?>



<div id="preloader">
	<div id="status">
		<p class="center-text" id="line1">
		      数据处理中
			<em>请稍候</em>
		</p>
	</div>
</div>
