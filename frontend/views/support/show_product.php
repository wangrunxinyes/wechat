<?php

$type = Yii::app()->data->getValue("type");
if (is_null($type)) {
	$this->redirect(array('/support/error'));
} else {
	$prodcuts = new product_list_helper();
	$result = $prodcuts->getProductList($type);
	if (!$result) {
		$this->redirect(array('/support/error'));
	}
	$product_list = $prodcuts->getList();
}

/**
 *
 */
class product_list_helper {

	private $list;
	private $title;

	function __construct() {
	}

	function getProductList($type) {
		if ($type == 'd') {
			$type = 1;
			$this->title = "德风生活馆";
		} elseif ($type == 't') {
			$type = 2;
			$this->title = "台湾生活馆";
		} else {
			return false;
		}

		$key = 'p_type = :p_type';

		$value = array(
			':p_type' => $type,
		);
		$this->list = BasicUnit::load_unit_by_attribute("wrx_model_product_db", $key, $value);

		return true;
	}

	function getList() {
		return $this->list;
	}

	function getTitle() {
		return $this->title;
	}
}

?>
<div class="content">
	<div class="container no-bottom">
		<?php
$left = true;
foreach ($product_list as $key =>
	$item) {
	if ($left) {
		$attribute = "left";
		$atr = "last-column";
		$box = "twitter-box";
		$margin = "float:left";
		$left = false;
	} else {
		$attribute = "right";
		$atr = "";
		$box = "google-box";
		$margin = "";
		$left = true;
	}
	echo '
		<div class="one-half-responsive">
			<p class="thumb-' . $attribute . ' no-bottom" ">
				<img src="' . urldecode(Yii::app()->
			assets->getUrlPath($item['p_photo'])) . '" alt="img">
		<label style="width: 40%;word-break: break-all;' . $margin . '"><strong style="word-break: break-all;">' . urldecode($item['p_name']) . '</strong>
		<br>' . urldecode($item['p_des']) . '</label>
			</p>
			<div class="thumb-clear"></div>
		</div>
		<div class="one-half">
            <a href="' . Yii::app()->
		assets->getUrlPath('support/item/id/' . base64_encode($item['id'])) . '" class="' . $box . ' social-box">
                了解更多
            </a>
       </div>
		<div class="decoration hide-if-responsive"></div>
		';
}
?>
	</div>
	<a href="<?php echo Yii::app()->
	assets->getUrlPath('support/productlist');?>" class="left-list facebook-box social-box">
	 <em></em>
            返回全部产品
        </a>
</div>

