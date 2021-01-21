<?php

// Load config data
require_once "app.php";

// Load helpers data
require_once "helpers.php";

// Load interface files
require_once "class_interface/BaseInterface.php";

// Load library files
require_once "library/Database.php";
require_once "library/Base.php";

// Load controllers and repositories
spl_autoload_register(function($className){

	if(file_exists("application/controller/$className" . ".php")) {
		require_once "controller/$className" . ".php";
	}

	if(file_exists("application/repository/$className" . ".php")) {
		require_once "repository/$className" . ".php";
	}

});