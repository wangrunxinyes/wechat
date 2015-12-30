<?php

Yii::app()->assets->registerGlobalCss("extensions/mobile/styles/framework.css");

?><div style="width:100px; height:100px; overflow:auto; border:1px solid #000000;">
<div class="container no-bottom" style="height:300px;">

        <em class="speach-left-title">专属顾问</em>
        <p class="speach-left">您好，有什么可以帮您?</p>

        <div class="clear"></div>

        <em class="speach-left-title">专属顾问</em>
        <p class="speach-left">小贴士：您可以输入您的问题留言给我们，我们会尽快和您联系，在用户资料中填写您的联系方式会更快收到回复哦。</p>

        <div class="clear"></div>

        <!-- <em class="speach-right-title">Jane Doe replied:</em>
        <p class="speach-right green-bubble">Yeap! It's awesome isn't it and it's not that hard to use! And they act like bubbles, only expanding to 75% of width!</p>

        <div class="clear"></div> -->

      <!--   <em class="speach-left-title">John Doe says:</em>
        <p class="speach-left">Awesome stuff!</p>

        <div class="clear"></div>

        <em class="speach-right-title">Jane Doe replied:</em>
        <p class="speach-right blue-bubble">Yeap! It's awesome isn't it and it's not that hard to use! And they act like bubbles, only expanding to 75% of width!</p> -->
    </div>
    <div class="formTextareaWrap">
                            <label class="field-title contactMessageTextarea" for="contactMessageTextarea">Message: <span>(required)</span></label>
                            <textarea name="contactMessageTextarea" class="contactTextarea requiredField" id="contactMessageTextarea"></textarea>
                        </div>

                        <input class="buttonWrap button button-green contactSubmitButton" id="contactSubmitButton" value="SUBMIT" data-formid="contactForm" type="submit">
                    </div>