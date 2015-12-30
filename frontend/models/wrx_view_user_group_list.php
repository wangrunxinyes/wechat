<?php

class wrx_view_user_group_list extends wrx_page_unit_models {

	function __construct() {
		$this->type = 'backend_user_group_data_helper';
	}

	function setType($type) {
		$this->ex_data = $type;
	}

	function execute_view() {
		$data = "";
		if ($this->total == 0) {
			$this->result .= "无搜索结果";
		} else {
			$index = $this->start_id;
			foreach ($this->list as $key => $user) {

				$this->result .= '<tr class="unread" data-messageid="1">
						<td class="inbox-small-cells">
								<span>
									<input id="' . $user['user_id'] . '" class="mail-checkbox" type="checkbox"></span>
						</td>
						<td class="inbox-small-cells">
							<img style="width:32px;" src="' . $user['weixin_photo'] . '64">
						</td>
						<td class="view-message hidden-xs">' . $user['weixin_name'] . '</td>
						<td class="view-message "></td>
						<td class="view-message inbox-small-cells">
							' . date("Y/m/d H:i:s", $user['create_time']) . '
						</td>
						<td class="view-message text-right"></td>
					</tr>
';
				$index++;
			}
		}
	}
}
?>