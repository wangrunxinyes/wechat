<?php

class wrx_view_post_msg_list extends wrx_page_unit_models {

	function __construct() {
		$this->type = 'backend_post_msg_data_helper';
	}

	function execute_view() {
		if ($this->total == 0) {
			$this->result .= "无搜索结果";
		} else {
			$index = $this->start_id;
			foreach ($this->list as $key => $unit) {

				if ($unit['post_state'] == 'finish') {
					$post_state = '
<span class="badge badge-roundless badge-success">完结</span>
';
				} elseif ($unit['msg_state'] == 'new') {
					$post_state = '-';
				} else {
					$post_state = '
<span class="badge badge-roundless badge-danger">完结</span>
';
				}

				$post_time = date("Y/m/d H:i:s", $unit['post_time']);

				if (isset($unit['post_by'])) {
					$user = new wrx_model_user();
					$user->load_unit_by_id($unit['post_by']);
					$name = $user->getValue("wrx_username");
				}

				if (isset($unit['post_user_group'])) {
					$group = $unit['post_user_group'];
				}
				if (!isset($unit['main_msg_id'])) {
					$msg_state = '
<span class="badge badge-roundless badge-danger">新消息</span>
';
					$post_time = "-";
					$post_state = "-";
					$name = "-";
					$group = "-";
				} else {
					$msg_state = '
<span class="badge badge-roundless badge-success">已推送</span>
';
				}

				$this->result .= '
<tr class="odd" role="row">
	<td class="sorting_1">' . $index . '</td>
	<td>' . $unit['title'] . '</td>
	<td>' . date("Y/m/d H:i:s", $unit['create_time']) . '</td>
	<td>' . $msg_state . '</td>
	<td>' . $name . '</td>
	<td>' . $post_time . '</td>
	<td>' . $group . '</td>
	<td>' . $post_state . '</td>
	<td>
		<a href="' . Yii::app()->assets->getUrlPath("backend/subview/type/weixin_edit_post_msg/id/" . $unit['mid']) . '" target="_blank" class="btn btn-xs default btn-editable"> <i class="fa "></i>
		   查看
		</a>
		<a href="' . Yii::app()->assets->getUrlPath("backend/subview/type/weixin_post_msg_preview_and_send/id/" . $unit['mid']) . '" target="_blank" class="btn default btn-xs blue"> <i class="fa "></i>
		   推送
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