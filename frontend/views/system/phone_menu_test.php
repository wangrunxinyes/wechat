<?php


// Yii::app()->
// assets->registerGlobalScript('extensions/menu.bar/gtm.js');
// Yii::app()->assets->registerGlobalScript('extensions/menu.bar/jquery.fs.naver.js');
// Yii::app()->assets->registerGlobalScript('extensions/menu.bar/modernizr.js');
Yii::app()->assets->registerGlobalScript('extensions/menu.bar/navigation.js');


// Yii::app()->assets->registerGlobalCss('extensions/menu.bar/css.css');
Yii::app()->assets->registerGlobalCss('extensions/menu.bar/navigation.css');
?>
<!DOCTYPE html>
<html style="" class="js canvas no-touch opacity csstransforms svg" temp-debug="true" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<!-- <script type="text/javascript" src="https://getfirebug.com/firebug-lite.js"></script>
-->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<!-- Page Attributes -->
<title>Navigation · Formstone</title>
<meta name="description" content=""></head>
<body class="fs-grid fs-grid-sm-fluid">
<header class="header">
	<a href="https://formstone.it/" class="logo header_logo" data-analytics-event="Header, Click, logo">Formstone</a>
	<button data-swap-group="fs-navigation" data-swap-linked="fs-navigation-handle__0" data-swap-target=".fs-navigation__0" class="header_button js-nav_handle fs-navigation-handle fs-navigation-overlay-handle fs-navigation-overlay-right-handle fs-navigation-handle__0 fs-navigation__0 fs-swap-element fs-navigation-enabled">Menu</button>
</header>
<div class="wrapper">
	<div class="page js-nav_move fs-navigation-overlay-content fs-navigation__0 fs-navigation-enabled fs-navigation-animated">
		<div class="fs-row page_row">
			<div class="fs-cell-centered fs-lg-10 fs-xl-8">
				<article class="content demo">

					<aside class="sidebar">
						<nav class="main_nav sidebar_content js-navigation fs-navigation-element fs-navigation-overlay-nav fs-navigation-overlay-right-nav fs-navigation__0 fs-navigation-enabled fs-navigation-animated" data-navigation-handle=".js-nav_handle" data-navigation-content=".js-nav_move" data-navigation-options="{&quot;type&quot;:&quot;overlay&quot;,&quot;gravity&quot;:&quot;right&quot;,&quot;maxWidth&quot;:&quot;10000px&quot;}">
							<h5>About</h5>
							<ul>
								<li>
									<a href="https://formstone.it/start/" data-analytics-event="MainNav, Click, start">Getting Started</a>
								</li>
								<li>
									<a href="https://formstone.it/upgrade/" data-analytics-event="MainNav, Click, upgrade">Upgrade Guide</a>
								</li>
								<li>
									<a href="https://formstone.it/contribute/" data-analytics-event="MainNav, Click, contribute">Contributing</a>
								</li>
							</ul>
						</nav>
					</aside>
				</article>
			</div>
		</div>
	</div>
</div>
</body>
</html>