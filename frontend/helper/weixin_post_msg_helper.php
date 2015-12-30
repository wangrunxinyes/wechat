<?php

class weixin_post_msg_helper {

	private $list;

	function __construct() {
		$this->list = array();
	}

	public function handleJson($json) {

		$main = new WeixinPostMsgUnit();
		if ($json->{'id'} != "new") {
			$main->setPar("id", $json->{'id'});
		}
		$main->setPar("title", $json->{'title'});
		$main->setPar("bg", $json->{'img'});
		$main->setPar("url", $json->{'link'});
		$main->setPar("belong_to_id", "none");
		$id = $main->store();
		$this->list[0] = $id;

		if ($json->{'num'} != 0 && $json->{'num'} != '0') {
			$sub_msg = $json->{'data'};
			foreach ($sub_msg as $msg) {
				$sub = new WeixinPostMsgUnit();
				if ($msg->{'id'} != "new") {
					$sub->setPar("id", $msg->{'id'});
				}
				$sub->setPar("title", $msg->{'title'});
				$sub->setPar("bg", $msg->{'img'});
				$sub->setPar("url", $msg->{'link'});
				$sub->setPar("belong_to_id", $id);
				$sub_id = $sub->store();
				array_push($this->list, $sub_id);
			}
		}

		return $this->list;

	}
}

?>