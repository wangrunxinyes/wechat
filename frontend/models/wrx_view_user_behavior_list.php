<?php

class wrx_view_user_behavior_list extends wrx_page_unit_models {

	function __construct() {
		$this->type = 'backend_user_behavior_data_helper';
	}

	function execute_view() {
		if ($this->total == 0) {
			$this->result .= "无搜索结果";
		} else {
			$index = $this->start_id;
			foreach ($this->list as $key => $user) {
				if ($user['weixin_name'] == 'unknown') {
					$unit = new WeixinUserUnit();
					$unit->getUserByUserName($user['user_id']);
					$unit->getUserDataNow($user['user_id']);
					$unit->store();
					$weixin_name = $unit->getValue('weixin_name');
					$weixin_photo = $unit->getValue('weixin_photo');
				} else {
					$weixin_name = $user['weixin_name'];
					$weixin_photo = $user['weixin_photo'];
				}

				$event = "";
				switch ($user['behavior_type']) {
				case 'weixin_event':
					$event = "微信事件";
					break;
				case 'weixin_msg':
					$event = "微信消息";
					break;
				case 'website':
					$event = "访问网站";
					break;
				default:
					$event = $user['behavior_type'];
					break;
				}

				$ref = $user['ref_key'];

				$ctime = date("Y/m/d H:i:s", $user['time']);

				$this->result .= '
<tr class="odd" role="row">
	<td class="sorting_1">' . $index . '</td>
	<td>
		<img class="weixin_user_photo" src="' . $weixin_photo . '64"></td>
	<td>' . $weixin_name . '</td>
	<td>' . $event . '</td>
	<td>' . $ref . '</td>
	<td>' . $ctime . '</td>
	<td style="display:none;">
		<a href="ecommerce_products_edit.html" class="btn btn-xs default btn-editable"> <i class="fa fa-pencil"></i>
			编辑
		</a>
	</td>
</tr>
';
				$index++;
			}
		}
	}
}
?>