<?php
if (isset($_GET['code'])) {
	$this->redirect(array("support/oauthlogin/code/" . $_GET['code']));
} else {
	$this->redirect(array("support/error"));
}
?>