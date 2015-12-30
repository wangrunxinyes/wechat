<?php
$list = new wrx_view_message_list();
$list->execute();
echo '<input type="hidden" value="'
. yii::app()->assets->getUrlPath('backend/ajax')
. '" id="reply_url">';
echo '<input type="hidden" value="weixin_reply_message" id="reply_type">';
?>