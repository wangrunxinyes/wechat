<?php
Yii::app()->assets->registerGlobalCss("extensions/input.html5/css/default.css");
Yii::app()->assets->registerGlobalCss("extensions/input.html5/css/component.css");
//Yii::app()->assets->registerGlobalScript("extensions/input.html5/js/modernizr.js");
?>
<!DOCTYPE html>
<html lang="zh" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>
	<body>
		<div class="container">
			<header class="clearfix">
				<h1>会员注册</h1>
			</header>
			<div class="main">
				<form class="cbp-mc-form" action="<?php
echo Yii::app()->
	request->hostInfo . Yii::app()->homeUrl . 'support/register';
?>">
					<div class="cbp-mc-column">
						<label for="first_name">姓名</label>
	  					<input type="text" id="username" name="username" placeholder="姓名">
	  					<label for="email">手机号</label>
	  					<input type="text" id="phone" name="phone" placeholder="手机号">
	  					<input type="hidden" id="register" name="register" value="<?echo Yii::app()->data->getValue('user_name');?>">
	  					<!-- <label for="country">Country</label>
	  					<select id="country" name="country">
	  						<option>Choose a country</option>
	  						<option>France</option>
	  						<option>Italy</option>
	  						<option>Portugal</option>
	  					</select>
	  					<label for="bio">Biography</label>
	  					<textarea id="bio" name="bio"></textarea> -->
	  				</div>
	  				<!-- <div class="cbp-mc-column">
	  					<label for="phone">Phone Number</label>
	  					<input type="text" id="phone" name="phone" placeholder="+351 999 999">
						<label for="affiliations">Affiliations</label>
	  					<textarea id="affiliations" name="affiliations"></textarea>
	  					<label>Occupation</label>
	  					<select id="occupation" name="occupation">
	  						<option>Choose an occupation</option>
	  						<option>Web Designer</option>
	  						<option>Web Developer</option>
	  						<option>Hybrid</option>
	  					</select>
	  					<label for="cat_name">Cat's name</label>
	  					<input type="text" id="cat_name" name="cat_name" placeholder="Kitty">
	  					<label for="gagdet">Favorite Gadget</label>
	  					<input type="text" id="gagdet" name="gagdet" placeholder="Annoy-a-tron">
	  				</div>
	  				<div class="cbp-mc-column">
	  					<label>Type of Talent</label>
	  					<select id="talent" name="talent">
	  						<option>Choose a talent</option>
	  						<option>Ninja silence</option>
	  						<option>Sumo power</option>
	  						<option>Samurai precision</option>
	  					</select>
						<label for="drink">Favorite Drink</label>
	  					<input type="text" id="drink" name="drink" placeholder="Green Tea">
	  					<label for="power">Special power</label>
	  					<input type="text" id="power" name="power" placeholder="Anti-gravity">
	  					<label for="weapon">Weapon of choice</label>
	  					<input type="weapon" id="weapon" name="weapon" placeholder="Lightsaber">
	  					<label for="comments">Comments</label>
	  					<textarea id="comments" name="comments"></textarea>
	  				</div> -->
	  				<div class="cbp-mc-submit-wrap"><input class="cbp-mc-submit" type="submit" value="注册会员" /></div>
				</form>
			</div>
		</div>
	</body>
</html>
