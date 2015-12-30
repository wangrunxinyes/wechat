<?php

class wrx_view_user_list extends wrx_page_unit_models {

	function __construct() {
		$this->type = 'backend_member_data_helper';
	}

	function execute_view() {
		if ($this->total == 0) {
			$this->result .= "无搜索结果";
		} else {
			$this->result = "";
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

				if ($user['real_name'] == 'unknown') {
					$name = '
<span class="badge badge-roundless badge-danger">未知</span>
';
				} else {
					$name = $user['real_name'];
				}

				if ($user['phone'] == 'unknown') {
					$phone = '
<span class="badge badge-roundless badge-danger">未知</span>
';
				} else {
					$phone = $user['phone'];
				}

				if ($user['cid'] == '' || is_null($user['cid'])) {
					$cid = '
<span class="badge badge-roundless badge-danger">无会员卡</span>
';
					$ctime = '-';
				} else {
					$cid = $user['cid'];
					$ctime = date("Y/m/d H:i:s", $user['ctime']);
				}

				$this->result .= '
<tr class="odd" role="row">
	<td class="sorting_1">' . $index . '</td>
	<td>
		<img class="weixin_user_photo" src="' . $weixin_photo . '64"></td>
	<td>' . $weixin_name . '</td>
	<td>' . $name . '</td>
	<td>' . $phone . '</td>
	<td>' . $ctime . '</td>
	<td>' . $cid . '</td>
	<td>
		<a href="' . Yii::app()->assets->getUrlPath('backend/userdetails/id/' . $user['user_id']) . '" target="_blank" class="btn btn-xs default btn-editable"> <i class="fa fa-pencil"></i>
			查看详情
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