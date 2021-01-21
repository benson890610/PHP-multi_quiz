<?php

class Question {

	public $currentQuestion;
	public $totalQuestions;
	public $current;
	public $answer1;
	public $answer2;
	public $answer3;
	public $answer4;
	public $correct_answer;
	public $error;

	private const QUESTION_POINTS = 5;

	public function calculate($questions) {
		$i = $_SESSION["quiz"]["current"];

		$answeredQuestion = $questions[$i]["question"];
		$userAnswer       = htmlentities($_POST["answer"]);
		$correctAnswer    = $questions[$i]["correct_answer"];
		$data             = compact("answeredQuestion", "userAnswer", "correctAnswer");

		if($userAnswer === $correctAnswer) {
			$_SESSION["quiz"]["points"] += self::QUESTION_POINTS;
			$this->remember($data, true);
		} else {
			$this->remember($data, false);
		}
	}

	public function format($questionData, int $total) {
		$this->currentQuestion = array_shift($questionData);
		$this->correct_answer  = array_pop($questionData);
		$this->totalQuestions  = $total;
		$this->current         = $_SESSION["quiz"]["current"];

		$counter = 0;

		foreach($questionData as $key => $value) {
			$counter++;
			$answer = "answer" . $counter;
			$this->$answer = $value; 
		}
	}

	public function counter() {
		$counter = ($this->current + 1) . "/" . $this->totalQuestions;

		return $counter;
	}

	public function last() {
		return (($this->totalQuestions - 1) === $this->current);
	}

	private function remember(array $data, bool $correct) {
		extract($data);
		$i = $_SESSION["quiz"]["current"] + 1;
		if($correct) {
			$answer = "<div class='client-answer correct'>
						{$i}. {$answeredQuestion} <br><br>
						<strong>Correct Answer:</strong> {$correctAnswer}
					   </div><hr>";
			$_SESSION["answers"] .= $answer;
		} else {
			$answer = "<div class='client-answer incorrect'>
						{$i}. {$answeredQuestion} <br><br>
						<strong>Your answer:</strong> {$userAnswer} <br>
						<strong>Correct answer:</strong> {$correctAnswer} 
					   </div><hr>";
			$_SESSION["answers"] .= $answer;
		}
	}
}