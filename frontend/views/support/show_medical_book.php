<?php

// $card = MemberCardUnit::create(null);

// $card->getMemberCardById(Yii::app()->data->getValue('member_id'));

// echo "您的会员卡号为：" . $card->getValue("member_card_id");

Yii::app()->assets->registerGlobalCss('extensions/mobile/styles/swipebox.css');

?>


<div class="content">
                    <div class="container no-bottom">
                        <p>小贴士<br>您可以将您的病例拍照上传到这里，再也不怕丢了。</p>
                    </div>
                    <ul class="gallery square-thumb">
                        <li><a class="swipebox" href="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/gallery/full/1.jpg" title="加载中，请稍候"><img src="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/general/1s.jpg" alt="img"></a></li>
                        <li><a class="swipebox" href="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/gallery/full/2.jpg" title=""><img src="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/general/2s.jpg" alt="img"></a></li>
                        <li><a class="swipebox" href="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/gallery/full/3.jpg" title=""><img src="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/general/3s.jpg" alt="img"></a></li>
                        <li><a class="swipebox" href="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/gallery/full/1.jpg" title=""><img src="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/general/4s.jpg" alt="img"></a></li>
                        <li><a class="swipebox" href="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/gallery/full/2.jpg" title=""><img src="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/general/5s.jpg" alt="img"></a></li>
                        <li><a class="swipebox" href="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/gallery/full/3.jpg" title=""><img src="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/general/6s.jpg" alt="img"></a></li>
                        <li><a class="swipebox" href="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/gallery/full/1.jpg" title=""><img src="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/general/1s.jpg" alt="img"></a></li>
                        <li><a class="swipebox" href="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/gallery/full/2.jpg" title=""><img src="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/general/2s.jpg" alt="img"></a></li>
                        <li><a class="swipebox" href="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/gallery/full/3.jpg" title=""><img src="<?php echo Yii::app()->assets->getUrlPath('assets/extensions/mobile/');?>images/general/3s.jpg" alt="img"></a></li>
                    </ul>
                </div>