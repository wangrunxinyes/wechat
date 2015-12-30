<?php

Yii::app()->
	assets->registerGlobalCss('extensions/phone.upload/css/style.css');
Yii::app()->assets->registerGlobalCss('extensions/phone.upload/css/jquery.fileupload.css');
Yii::app()->assets->registerGlobalCss('extensions/phone.upload/css/jquery.fileupload-ui.css');
// Yii::app()->assets->registerGlobalCss('extensions/phone.upload/css/jquery.fileupload-ui-noscript.css');
// Yii::app()->assets->registerGlobalCss('extensions/phone.upload/css/jquery.fileupload-noscript.css');
Yii::app()->assets->registerGlobalCss('extensions/phone.upload/css/blueimp-gallery.min.css');
Yii::app()->assets->registerGlobalCss('extensions/phone.upload/css/bootstrap.min.css');
//引入js
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/tmpl.min.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/load-image.all.min.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/canvas-to-blob.min.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/bootstrap.min.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/jquery.blueimp-gallery.min.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/vendor/jquery.ui.widget.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/jquery.iframe-transport.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/jquery.fileupload.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/jquery.fileupload-process.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/jquery.fileupload-image.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/jquery.fileupload-audio.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/jquery.fileupload-validate.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/jquery.fileupload-video.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/jquery.fileupload-ui.js');
Yii::app()->assets->registerGlobalScript('extensions/phone.upload/js/main.js');

?>
<div style="text-align: center;">
	<br>
	<h3 style="font-size:25px;">图片上传</h3>
	<br>
	<small style="font-size:12px;margin-top:10px;">您可以将病历本拍照上传，方便以后查询使用</small>
	<br>
	<br>
	<!-- The file upload form used as target for the file upload widget -->
	<form id="fileupload" action="" method="POST" enctype="multipart/form-data">
		<!-- Redirect browsers with JavaScript disabled to the origin page -->
		<!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
		<div class="row fileupload-buttonbar">
			<div class="col-lg-7">
				<!-- The fileinput-button span is used to style the file input field as button -->
				<span class="btn btn-success fileinput-button">
					<span>选择文件</span>
					<input type="file" name="files[]" multiple>
					<input type="hidden" id="indentify" value="<?php echo Yii::app()->
	user->getModel('id');?>">
					<input type="hidden" id="uploadUrl" value="<?php echo Yii::app()->assets->getUrlPath('support/receive');?>"></span>
				<button type="submit" class="btn btn-primary start">
					<span>全部上传</span>
				</button>
				<button type="reset" class="btn btn-warning cancel">
					<span>取消上传</span>
				</button>
				<!-- The global file processing state -->
				<span class="fileupload-process"></span>
			</div>
			<!-- The global progress state -->
			<div class="col-lg-5 fileupload-progress fade">
				<!-- The global progress bar -->
				<div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
					<div class="progress-bar progress-bar-success" style="width:0%;"></div>
				</div>
				<!-- The extended global progress state -->
				<div class="progress-extended">&nbsp;</div>
			</div>
		</div>
		<!-- The table listing the files available for upload/download -->
		<table role="presentation" class="table table-striped">
			<tbody class="files"></tbody>
		</table>
	</form>
</div>
<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled>
                    <span>上传</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel">
                    <span>取消</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            {% if (file.error) { %}
                <div><span class="label label-danger">系统异常</span> {%=file.error%}</div>
            {% }  else { %}
                <div><span class="label label-success">上传成功</span></div>
             {% } %}
        </td>
        <td>
            {% if (file.deleteUrl) { %}
            {% } else { %}
                <button class="btn btn-warning cancel">
                    <span>移除图片</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>