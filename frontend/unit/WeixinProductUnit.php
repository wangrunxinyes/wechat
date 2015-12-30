<?php



/**







 * image unit







 */



class WeixinProductUnit extends BasicUnit {



	function __construct($postStr = null) {



		$this->basic_attributes = array(



			'original_price',



			'off_price',



			'name',



			'photo',



			'key',



			'interduction',



			'createtime',



			'attributes',



		);

		$this->basic_value = array(



			'original_price' => '1',



			'off_price'=>'1',



			'name' =>'test',



			'photo'=>'test',



			'key'=>'key',



			'interduction' =>'product introduction',



			'createtime' => time(),



			'attributes'=>'none',



		);



		$this->basic_indentify = "weixin_user_db";



		//handle data;



		if ($postStr != null) {



			$search = ' user_id = :user_id';



			$searchValue = array(



				':user_id' => $postStr->getValue('fromusername'),



			);



			$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);



			if (count($beans) == 0) {



				$this->createUser($postStr);



			} else {



				$this->setValue($beans[0]);



			}



		}



	}



	public static function create($postStr = null) {



		$obj = new self($postStr);



		return $obj;



	}



	public function createUser($msg) {



		$info = weixin_user_info_helper::create();



		$json = $info->getInfoByOpenId($msg->getValue('fromusername'));



		if (isset($json['openid'])) {



			$this->setPar('phone', "unknown");



			$this->setPar('real_name', "unknown");



			$this->setPar('attributes', "unknown");



			$this->setPar('weixin_name', $json['nickname']);



			$this->setPar('weixin_photo', substr($json['headimgurl'], 0, strlen($json['headimgurl']) - 1));



		} else {



			foreach ($this->basic_attributes as $key) {



				$this->setPar($key, "unknown");



			}



		}



		$this->setPar('user_id', $msg->getValue('fromusername'));



		$this->store();



	}



	public function getUserByUserName($user_indentify) {



		$search = ' user_id = :user_id';



		$searchValue = array(



			':user_id' => $user_indentify,



		);



		$beans = BasicUnit::load_unit_by_attribute($this->basic_indentify, $search, $searchValue);



		if (count($beans) == 0) {



			$this->setPar('user_id', $user_indentify);



			$this->store();



		} else {



			$this->setValue($beans[0]);



		}



		$this->setPar("id", $beans[0]['id']);



		return $this->basic_value['id'];



	}



	public function store() {



		$this->setPar('id', $this->store_unit());



		return $this->basic_value['id'];



	}



}



?>