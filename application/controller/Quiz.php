<?php

class Quiz extends Base {

	private $quizRepository;
	private const VERY_BAD_SCORE   = 20;
	private const BAD_SCORE        = 55;
	private const GOOD_SCORE       = 85;
	private const VERY_GOOD_SCORE  = 110;
	private const EXCELLENT_SCORE  = 125;

	public $course;

	public function __construct() {
		$this->quizRepository = $this->find("QuizRepository");
	}

	public function load(Question $questionObj) {
		$this->course = $this->getCourse();

		if($this->course === false) redirect("index");
		if($_SERVER["REQUEST_METHOD"] === "POST") {

			if(isset($_POST["start"]))    $this->start($questionObj);
			elseif(isset($_POST["next"])) $this->next($questionObj);
			else 						  $this->finish($questionObj);

		} else {
			// If client did not picked any answer show error and remember question
			if(is_set_session("error")) {
				$this->rememberQuestion($questionObj);
			} else {
				// Cancel quiz on every GET request
				$this->cancel();
			}
		}
	}

	private function start(Question $questionObj) {
		if(isset($_SESSION["quiz"])) redirect("quiz/" . $this->course);

		$questions = $this->quizRepository->getQuestions($this->course);
		$questions = $this->shuffleQuestions($questions);

		$_SESSION["quiz"] = array();
		$_SESSION["quiz"]["current"] = 0;
		$_SESSION["quiz"]["points"]  = 0;
		$_SESSION["answers"]		 = "";

		$questionObj->format($questions[0], count($questions));
	}

	private function next(Question $questionObj) {
		if(!isset($_SESSION["quiz"])) redirect("quiz/" . $this->course);
		if(!isset($_POST["answer"])) {
			session_message("error", "Please choose a correct answer to get next question");
			redirect("quiz/" . $this->course);
		}
		$questions = $this->quizRepository->getQuestions($this->course);
		$questions = $this->shuffleQuestions($questions);

		$questionObj->calculate($questions);
		$i = ++$_SESSION["quiz"]["current"];
		$questionObj->format($questions[$i], count($questions));
	}

	private function finish(Question $questionObj) {
		if(!isset($_SESSION["quiz"])) redirect("quiz/" . $this->course);
		if(!isset($_POST["answer"])) {
			session_message("error", "Please choose a correct answer to get next question");
			redirect("quiz/" . $this->course);
		}

		$questions = $this->quizRepository->getQuestions($this->course);
		$questionObj->calculate($questions);

		$score   = $this->calcScore();
		$message = format_quiz_success_msg($questions, $score);

		unset($_SESSION["quiz"]);
		session_quiz_message($message);
		redirect("index/" . $this->course);
	}

	private function cancel() {
		if(isset($_SESSION["quiz"])) unset($_SESSION["quiz"]);
	}

	private function getCourse() {
		$url = $this->getUrl();
		if(!isset($url[0])) return false;

		$course = htmlspecialchars(strtolower($url[0]));

		return $this->quizRepository->find($course);
	}

	private function rememberQuestion(Question $q) {
		$questions = $this->quizRepository->getQuestions($this->course);
		$questions = $this->shuffleQuestions($questions);
		
		$i = $_SESSION["quiz"]["current"];
		$q->format($questions[$i], count($questions));
	}

	private function calcScore() {
		if(!isset($_SESSION["quiz"])) return false;

		$points = $_SESSION["quiz"]["points"];
		$score  = "";

		if($points >= 0 && $points < self::VERY_BAD_SCORE)                         $score = "verybad";
		elseif($points >= self::VERY_BAD_SCORE && $points < self::BAD_SCORE)       $score = "bad";
		elseif($points >= self::BAD_SCORE      && $points < self::GOOD_SCORE)      $score = "good";
		elseif($points >= self::GOOD_SCORE     && $points < self::VERY_GOOD_SCORE) $score = "verygood";
		else $score = "excellent";

		return $score;
	}

	private function shuffleQuestions(array $questions) {
		$shuffled_questions = array_map(function($item){

			$q = array_shift($item);
			$a = array_pop($item);

			if(is_null($item["answer3"])) unset($item["answer3"]);
			if(is_null($item["answer4"])) unset($item["answer4"]);

			$keys = array_keys($item);
			shuffle($keys);

			$new_item = array();
			$new_item["question"] = $q;

			foreach($keys as $key) {
				$new_item[$key] = $item[$key];
			}
			
			$new_item["correct_answer"] = $a;

			return $new_item;

		}, $questions);

		return $shuffled_questions;
	}
}