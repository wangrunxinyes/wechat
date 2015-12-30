<?php

Yii::app()->assets->registerGlobalCss("global.style/css/da85.css");

?>

	<main class="content-primary">

		<div class="container content" style="text-align:center">

			<div class="dialog">

				<h1 class="mega" >

					</h1>

				<h2 class="subhead">您还没有登录 <br> Login Request</h2>

				<h3 class="subhead"></h3>

			</div>

			<div style="font-size:0.8rem;">这项功能会员才可以用哦 <br> Member Only</div><br>

			<div class="nav-choices" style="list-style:none;">

				<div style="list-style:none;padding-left: 0px;">

					<div style="list-style:none; font-size:1.25rem;">

					<a class="btn btn-primary" style="background-color: rgba(211, 87, 0, 0.85);" href="<?php
echo weixin_oauth_helper::get_oauth_url();
?>"> 登录 | Bind wechat

						</a>
					</div>


				</div>

			</div>

		</div>

	</main>
