<?php

/**

 * image unit

 */

class WeixinReplyUnit extends BasicUnit {

	function __construct($msg = null, $indentify = null, $type = null) {

		$this->basic_attributes = array(

			'fromusername',

			'tousername',

			'content',

			'time',

			'messageid',

			'type',

			'idenitfyid',

			'attributes',

		);

		$this->basic_data = array(

			'fromusername' => 'gh_0ee0f56d87c9',

			'tousername' => 'oXSVyw2oToSVSWWKMfxvKdDsz8sU',

			'content' => "init",

			'time' => time(),

			'messageid' => '1',

			'type' => 'text',

			'idenitfyid' => '0',

			'attributes' => '',

		);

		$this->basic_indentify = "weixin_reply_db";

		//handle data;

		if ($msg != null) {

			$this->setPar('tousername', $msg->getValue('fromusername'));

			$this->setPar('fromusername', $msg->getValue('tousername'));

			$this->setPar('messageid', $msg->getValue('id'));

			$this->setPar('idenitfyid', $indentify);

			$this->setPar('type', $type);

		}

	}

	public static function create($msg = null, $indentify = null, $type = null) {

		$obj = new self($msg, $indentify, $type);

		return $obj;

	}

	public function getReplayXml() {

		$this->setPar('time', time());

		if (is_null($this->getValue('type'))) {

			$this->setPar('type', 'text');

		}

		switch ($this->getValue('type')) {

		case 'text':

			$textTpl = "<xml>

			<ToUserName><![CDATA[%s]]></ToUserName>

			<FromUserName><![CDATA[%s]]></FromUserName>

			<CreateTime>%s</CreateTime>

			<MsgType><![CDATA[%s]]></MsgType>

			<Content><![CDATA[%s]]></Content>

			<FuncFlag>0</FuncFlag>

			</xml>";

			$this->setPar('type', 'text');

			$resultStr = sprintf($textTpl,

				$this->getValue('tousername'),

				$this->getValue('fromusername'),

				$this->getValue('time'),

				$this->getValue('type'),

				$this->getValue('content')

			);

			break;

		case 'image':

			$textTpl = "<xml>

			<ToUserName><![CDATA[%s]]></ToUserName>

			<FromUserName><![CDATA[%s]]></FromUserName>

			<CreateTime>%s</CreateTime>

			<MsgType><![CDATA[%s]]></MsgType>

			<PicUrl><![CDATA[%s]]></PicUrl>

			<MsgId>%s</MsgId>

			<MediaId><![CDATA[%s]]></MediaId>

			</xml>";

			$resultStr = sprintf($textTpl,

				$this->getValue('tousername'),

				$this->getValue('fromusername'),

				$this->getValue('time'),

				$this->getValue('type'),

				$this->getValue('content')

			);

			break;

		case 'custom_service':

			$xmlTpl = "<xml>

			<ToUserName><![CDATA[%s]]></ToUserName>

			<FromUserName><![CDATA[%s]]></FromUserName>

			<CreateTime>%s</CreateTime>

			<MsgType><![CDATA[transfer_customer_service]]></MsgType>

			</xml>";

			$resultStr = sprintf(

				$xmlTpl,

				$this->getValue('tousername'),

				$this->getValue('fromusername'),

				$this->getValue('time')

			);

			break;

		case 'news':

			$itemTpl = "    <item>

			<Title><![CDATA[%s]]></Title>

			<Description><![CDATA[%s]]></Description>

			<PicUrl><![CDATA[%s]]></PicUrl>

			<Url><![CDATA[%s]]></Url>

			</item>

			";

			$saveTpl = "[%s][%s][%s][%s]";

			$item_str = "";

			$data = "";

			foreach ($this->getValue('content') as $item) {

				$item_str .= sprintf(

					$itemTpl,

					$item['Title'],

					$item['Description'],

					$item['PicUrl'],

					$item['Url']

				);

				$data .= sprintf(

					$saveTpl,

					$item['Title'],

					$item['Description'],

					$item['PicUrl'],

					$item['Url']

				);

			}

			$newsTpl = "<xml>

			<ToUserName><![CDATA[%s]]></ToUserName>

			<FromUserName><![CDATA[%s]]></FromUserName>

			<CreateTime>%s</CreateTime>

			<MsgType><![CDATA[news]]></MsgType>

			<ArticleCount>%s</ArticleCount>

			<Articles>

			" . $item_str . "</Articles>

			</xml>";

			$resultStr = sprintf(

				$newsTpl, $this->getValue('tousername'),

				$this->getValue('fromusername'),

				$this->getValue('time'),

				count($this->getValue('content'))

			);

			$this->setPar('content', $data);

			break;

		default:

			$textTpl = "<xml><ToUserName><![CDATA[%s]]></ToUserName>

                        <FromUserName><![CDATA[%s]]></FromUserName>

                        <CreateTime>%s</CreateTime>

                        <MsgType><![CDATA[%s]]></MsgType>

                        <Content><![CDATA[%s]]></Content>

                        <FuncFlag>0</FuncFlag>

                        </xml>";

			$this->setPar('type', 'text');

			break;

		}

		$reply_id = $this->store_unit();

		//change message state;

		if ($this->getValue('messageid') != null && $this->getValue('messageid') != "") {

			$msg = WeixinTextUnit::create();

			$msg->load_unit_by_id($this->getValue('messageid'));

			$msg->setPar('reply', 'yes');

			$msg->store();

		}

		return $resultStr;

	}

}

?>







