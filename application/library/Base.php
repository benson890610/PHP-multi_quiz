<?php

class Base implements BaseInterface {

	public function find($repository) {
		if(file_exists(APP_ROOT . "repository/" . ucfirst($repository) . ".php")) {
			$database = new Database;
			return new $repository($database);
		}

		die("<strong>Repository Error: </strong> Could not locate repository $repository");
	}

	protected function getUrl() {

		$url = $_GET["url"];
		$url = filter_var($url, FILTER_SANITIZE_URL);
		$url = rtrim($url, "/");
		$url = explode("/", $url);

		return $url;

	}
}