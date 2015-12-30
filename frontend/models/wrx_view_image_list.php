<?php
/**
 *
 */
class wrx_view_image_list extends wrx_page_unit_models {

	function __construct() {
		$this->type = 'backend_image_data_helper';
	}

	public function execute_view() {
		if ($this->total == 0) {
			$this->result .= "无搜索结果";
		} else {
			$this->result .= '
<div class="row mix-grid">
	';
			$index = $this->start_id;
			foreach ($this->list as $key => $image) {
				$this->result .= '
	<div style="display: block;  opacity: 1; height:80px;" class="col-md-3 col-sm-4 mix category_1 mix_all">
		<div class="mix-inner">
		<a class="wrx-item-choose" name="files/' . $image['identify']
				. "/" . $image['link'] . '" data="' . Yii::app()->
					assets->getUrlPath("files/" . $image['identify']
					. "/" . $image['link']) . '">
			<img style="width:auto; height:70px;" class="img-responsive" src="' . Yii::app()->
					assets->getUrlPath("files/" . $image['identify']
					. "/thumbnail/" . $image['link']) . '" alt=""></a>
		</div>
	</div>
	';
			}
			$this->result .= '</div>';
		}

	}
}

?>