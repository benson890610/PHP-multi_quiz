<?php

class Database {

	private string $host = "__YOUR_DB_HOST__";
	private string $user = "__YOUR_DB_USER__";
	private string $pass = "__YOUR_DB_PASS__";
	private string $db   = "__YOUR_DB_NAME__";

	private  $pdo;
	private  $stmt;

	public function __construct() {

		$dsn = "mysql:host=" . $this->host . ";dbname=" . $this->db;
		$options = array(
			PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
			PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
			PDO::ATTR_EMULATE_PREPARES => false
		);

		try {
			$this->pdo = new PDO($dsn, $this->user, $this->pass, $options);
		} catch(PDOException $e) {
			$errorMessage = "<strong>Database connection error:</strong> $errorMessage";
			die($errorMessage);
		}

	}

	public function querySingle(string $sql, $fetchMode = null) {
		if($fetchMode === PDO::FETCH_CLASS) die("<strong>Database fetching error:</strong> Single row could not be fetched with PDO::FETCH_CLASS");
		return $this->pdo->query($sql)->fetch($fetchMode);
	}

	public function queryAll(string $sql, $fetchMode = null, string $class = "") {
		if(!empty($class) && $fetchMode === PDO::FETCH_CLASS) {
			return $this->pdo->query($sql)->fetchAll($fetchMode, $class);
		} elseif($fetchMode !== null) {
			return $this->pdo->query($sql)->fetchAll($fetchMode);
		}

		return $this->pdo->query($sql)->fetchAll();
	}

	public function queryObject(string $sql, string $class) {
		if(empty($class) || !is_string($class)) die("<strong>Database fetching error:</strong> Class was not supplied for given object");

		return $this->pdo->query($sql)->fetchObject($class);
	}

	public function prepare(string $sql) {
		$this->stmt = $this->pdo->prepare($sql);
	}

	public function execute() {
		return $this->stmt->execute();
	}

	public function bind(string $param, $value, $type = null) {
		if(is_null($type)) {
			switch($value) {
				case is_string($value):
				case is_float($value):
				case is_double($value):
					$type = PDO::PARAM_STR;
					break;
				case is_int($value):
					$type = PDO::PARAM_INT;
					break;
				case is_null($value):
					$type = PDO::PARAM_NULL;
					break;
				case is_bool($value):
					$type = PDO::PARAM_BOOL;
					break;
				default:
					$type = PDO::PARAM_LOB;
			}
		}

		$this->stmt->bindParam($param, $value, $type);
	}

	public function single($mode = null) {
		if($mode === PDO::FETCH_CLASS) die("<strong>Database fetching error:</strong> Single row could not be fetched with PDO::FETCH_CLASS");

		return $this->stmt->fetch($mode);
	}

	public function all($mode = null, string $class = "") {
		if(!empty($class) && $mode === PDO::FETCH_CLASS) {
			return $this->stmt->fetchAll($mode, $class);
		} elseif(!is_null($mode)) {
			return $this->stmt->fetchAll($mode);
		}

		return $this->stmt->fetchAll();
	}

	public function __destruct() {
		$this->pdo = null;
		$this->stmt = null;
	}

}
