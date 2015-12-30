<?php

/**
 *
 */
class wrx_view_product {

	function __construct() {
		# code...
	}

	function create_view() {
		//check params
		$id = base64_decode(Yii::app()->data->getValue('id'));
		if (!is_null($id) && is_int(0 + $id)) {
			$product = new wrx_model_product();
			$product->load_unit_by_id($id);

			if ($product->getValue('p_show_type') == "d") {
				return self::create_default_view($product);
			} else if ($product->getValue('p_show_type') == "c") {
				print_r($product->getValue('p_custom_html'));
				return true;
			}
		} else {
			return false;
		}
	}

	function create_default_view($product) {

		Yii::app()->assets->registerGlobalCss("extensions/product/css/reset.css");
		Yii::app()->assets->registerGlobalCss("extensions/product/css/default.css");
		Yii::app()->assets->registerGlobalCss("extensions/product/css/style.css");

		$type = $product->getValue('p_type');
		if ($type == '1') {
			$product_type = "德风生活馆";
		} elseif ($type == '2') {
			$product_type = "台湾生活馆";
		}

		echo '<div class="content">
	<section class="parallax parallax-1" style="background-image: url(\'' . Yii::app()->assets->getUrlPath(urldecode($product->getValue('p_bg'))) . '\');">
		<div class="htmleaf-header">
			<h1>
				' . urldecode($product->getValue('p_name')) . '
				<span>' . urldecode($product->getValue('p_des')) . '</span>
			</h1>
		</div>
	</section>
	</div>
<div class="content"><h3>产品信息</h3>';

		if ($product->getValue('p_trigger_off_price') == "on") {
			echo '

			<h4>优惠活动</h4>

			<p>
				<small class="wrx-word" style="color:gray">' . urldecode($product->getValue('p_activity')) . '</small>
			</p>';
		}

		echo '<table class="table" cellspacing="0">
            <tbody><tr>
                <th><img style="height:90px; width:auto" src="' . Yii::app()->assets->getUrlPath(urldecode($product->getValue('p_photo'))) . '"></th>
                <th class="table-title">' . urldecode($product->getValue('p_name')) . '</th>
            </tr>
            <tr>
                <td class="table-sub-title"> 产品类别</td>
                <td>' . $product_type . '</td>
            </tr>
            <tr class="even">
                <td class="table-sub-title"> 市场价</td>
                <td>' . $product->getValue('p_price') . '</td>
            </tr>';
		if ($product->getValue('p_trigger_off_price') == "on") {
			echo '
			  <tr>
                <td class="table-sub-title"> 限时优惠价</td>
                <td>' . $product->getValue('p_off_price') . '</td>
            </tr>
			';
		}
		echo '
        </tbody></table>

			<p>
				<small class="wrx-word" style="color:gray">' . urldecode($product->getValue('p_details')) . '</small>
			</p></div>';

		$des = $product->getValue('p_image');
		$json = json_decode($des);
		$index = 1;

		if (!is_null($json)) {
			if (count($json) > 0) {
				foreach ($json as $key => $item) {
					$title = $item->{'title'};
					$img = $item->{'img'};
					$des = $item->{'des'};
					$index++;
					echo '<div class="content"><div class="portfolio-item-full-width">
					<img class="responsive-image" src="' . Yii::app()->assets->getUrlPath(urldecode($img)) . '" alt="img">
                            <br><h4>' . urldecode($title) . '</h4>
                            </div>
	<p class="wrx-word" style="color:gray">' . urldecode($des) . '</p>
	</div>

';
				}
			}
		}
		return true;
	}
}

?>