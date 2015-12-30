<?php

class wrx_view_product_list extends wrx_page_unit_models {

	function __construct() {
		$this->type = 'backend_product_data_helper';
	}

	function setType($type) {
		$this->ex_data = $type;
	}

	function execute_view() {
		if ($this->total == 0) {
			$this->result .= "无搜索结果";
		} else {
			$index = $this->start_id;
			foreach ($this->list as $key => $item) {

				if ($item['p_type'] == '1') {
					$type = "德风生活馆";
				} else {
					$type = "台湾生活馆";
				}

				if ($item['p_show_type'] == 'd') {
					$display = "默认";
				} else {
					$display = "自定义HTML";
				}

				if ($item['p_trigger_off_price'] != "on") {
					$price = $item['p_price'];
				} else {
					$price = $item['p_off_price'];
				}

				$this->result .= '<tr class="unread" data-messageid="1">
				     <td class="inbox-small-cells">
						' . $index . '
						</td>
						<td class="inbox-small-cells">
						' . urldecode($item['p_name']) . '
						</td>
						<td class="view-message ">' . urldecode($item['p_des']) . '</td>
						<td class="inbox-small-cells">' . $type . '
						</td>
						<td class="view-message hidden-xs">' . $price . '</td>
						<td class="view-message inbox-small-cells">
							' . date("Y/m/d H:i:s", $item['p_time']) . '
						</td>
						<td class="view-message text-right" style="text-align:center">
						<a href="' . Yii::app()->assets->getUrlPath('backend/editproduct/id/' . base64_encode($item['id'])) . '" target="_blank"
						' . 'class="btn default btn-xs blue"> <i class="fa "></i>
						编辑
						</a></td>
					</tr>
';
				$index++;
			}
		}
	}
}
?>