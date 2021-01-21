<?php

class HomeRepository {
	
	private $db;

	public function __construct(Database $db) {
		$this->db = $db;
	}
	public function getCategories() {
		$sql = "SELECT * FROM quiz_category";

		return $this->db->queryAll($sql);
	}
	public function courseExists($course) {
		$sql = "SELECT COUNT(*) as 'course' FROM quiz_category WHERE name = ?";

		$this->db->prepare($sql);
		$this->db->bind(1, $course);
		$this->db->execute();

		$courseFound = $this->db->single()["course"];

		return $courseFound;
	}
}