<?php

class LoginForm extends CFormModel {

	public $username;

	public $password;

	public $rememberMe;

	public $userModel;

	public $result;

	private $_identity;

	public function rules() {

		return array(

			// username and password are required

			array('username, password', 'required'),

			// rememberMe needs to be a boolean

			array('rememberMe', 'boolean'),

			// password needs to be authenticated

			array('password', 'authenticate'),

		);

	}

	public function attributeLabels() {

		return array(

			'rememberMe' => 'Remember me next time',

		);

	}

	public function authenticate($attribute, $params) {

		$this->_identity = new UserIdentity($this->username, $this->password);

		if (!$this->_identity->authenticateWithUser($this->userModel)) {

			$this->addError('password', 'Incorrect username or password.');

		}

	}

	public function login() {

		if ($this->_identity === null) {

			$this->_identity = new UserIdentity($this->username, $this->password);

			$this->_identity->authenticateWithUser($this->userModel);

		}

		if ($this->_identity->errorCode === UserIdentity::ERROR_NONE) {

			$duration = $this->rememberMe ? 3600 * 24 * 30 : 0; // 30 days

			Yii::app()->user->login($this->_identity, $duration);

			return true;

		} else {

			return false;

		}

	}

}

?>