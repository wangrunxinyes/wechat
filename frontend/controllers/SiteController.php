<?php

class Sitecontroller extends Controller {

	public $layout = 'clean';

	public function actions() {

		return array(

			// captcha action renders the CAPTCHA image displayed on the contact page

			'captcha' => array(

				'class' => 'CCaptchaAction',

				'backColor' => 0xFFFFFF,

			),

			// page action renders "static" pages stored under 'protected/views/site/pages'

			// They can be accessed via: index.php?r=site/page&view=FileName

			'page' => array(

				'class' => 'CViewAction',

			),

		);

	}

	public function actionIndex() {

		$this->layout = "clean";

		$this->render('index');

	}

	public function actionError() {

		if ($error = Yii::app()->errorHandler->error) {

			if (Yii::app()->request->isAjaxRequest) {

				echo json_encode($error);

			} else {

				$this->layout = "clean";

				$this->render('error', $error);

			}

		}

	}

	public function actionLogin() {

		$this->layout = "clean";

		$this->render('login');

	}

	public function actionAjax() {

		$this->layout = "clean";

		$this->render('ajax');

	}

}

?>