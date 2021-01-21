<?php

class QuizRepository {
	
	private $db;

	public function __construct(Database $db) {
		$this->db = $db;
	}
	public function find(string $data) {
		$sql = "SELECT name FROM quiz_category WHERE name = ? LIMIT 1";

		$this->db->prepare($sql);
		$this->db->bind(1, $data);
		$this->db->execute();

		$course = $this->db->single();

		if($course === false) {
			return false;
		} else {
			return $course["name"];
		}
	}
	public function getQuestions($course) {
		$sql = "SELECT 
					quiz_questions_{$course}.question,
					quiz_questions_{$course}.answer1,
					quiz_questions_{$course}.answer2,
					quiz_questions_{$course}.answer3,
					quiz_questions_{$course}.answer4,
					quiz_answers_{$course}.correct_answer
		FROM quiz_questions_{$course} 
		INNER JOIN quiz_answers_{$course} 
		ON quiz_questions_{$course}.correct_answer_id = quiz_answers_{$course}.id";

		$questions = $this->db->queryAll($sql);

		return $questions;
	}
}