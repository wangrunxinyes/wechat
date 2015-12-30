<?php

$img = new ImageUnit();
$img->build_img("test", 'test', 'test');

// ob_start();
// print "Hello First!\n";
// sleep(5);
// ob_end_flush();

// ob_start();
// print "Hello Second!\n";
// sleep(5);
// ob_end_flush();

// ob_start();
// sleep(5);
// print "Hello Third!\n";

// $group = new WeixinGroupUnit();

// $group = new weixin_group_helper();
// $group->reload_all_group();

// $user = new WeixinUserUnit();
// print_r($user->load_user_by_group(0, 1));

// $group = new WeixinGroupUnit();
// print_r(WeixinGroupUnit::load_all_group_for_option());

// $users = new weixin_reload_all_fans_helper();
// $users->execute();
// if ($users->get_result() == 0) {
// 	$this->print_result(0, "success");
// } else {
// 	$this->print_error(1, $users->get_result());
// }

// $scan = new backend_system_restore_helper();
// $scan->list_backup_files();
// print_r($scan);
// $data = new MysqlDump();
// $data->dbDump("localhost", "wangrunxin", "wrx52691000", "wangrunxin");
// print_r($data);

// // time check;

// $data = new backend_user_behavior_data_count();
// print_r($data->get_data());
// print_r($data);
// // check get all user
// class reload extends BasicApi {

// 	function __construct() {
// 		$this->data = array(
// 			"api_key" => "reload_all_user_info",
// 		);
// 	}

// 	public static function create() {
// 		$obj = new self();
// 		$obj->init();
// 		return $obj;
// 	}

// 	public function start() {
// 		$users = new weixin_reload_all_fans();
// 		$users->execute();
// 		if ($users->get_result() == 0) {
// 			$this->print_result(0, "success");
// 		} else {
// 			$this->print_error(1, $users->get_result());
// 		}
// 	}
// }

// $execute = reload::create();
// $execute->start();

// // test time check

// $data = new wrx_system_export_helper();

// $result = $data->period_check(array("Y" => '2015', "M" => '09'));

// print_r($result);

// $result = $data->create("post_msg_history", array("Y" => '2015', "M" => '09'));

// print_r($data->get_data());

// //test index page data;

// $data = new backend_index_page_helper();

// print_r($data->getNewUserNum());

// print_r($data->getUnreadNum());

// print_r($data->getVisitNum());

// //get images from db test;

// $images = new wrx_view_image_list();

// $images->execute(1);

// $images->echoFormat();

// //image list test;

// Yii::app()->assets->registerGlobalCss('global/plugins/bootstrap/css/bootstrap.min.css');

// $list = new wrx_view_image_list();

// $list->echoFormat();

// init test

// $System = new SystemInit();

// // $System->init_per('MemberCardUnit');

// $System->init_all();

// echo Yii::app()->user->getModel('wrx_username');

// print_r($_SESSION);

// $user = new wrx_model_user();

// $user->getUserByName('init_database');

// print_r($user);

// //test reply;

// $reply = new weixin_message_reply_helper();

// echo $reply->sendMsg(1, "testing");

// //test user select;

// $user = backend_member_data_helper::get_data_by_page_number(1);

// print_r($user);

//test msg record select;

// $user = backend_post_msg_data_helper::get_data_by_page_number(1);

// print_r($user);

?>

<!--



<form action="http://localhost/cms/backend/upload/data/wxeca0dc64dd540f5b" method="POST">



<input name="files[]" type="file" multiple>

<button type="submit"></button>



</form> -->