<?php

	function redirect(string $page = "") {
		if(empty($page)) die("<strong>Redirection Error:</strong> redirection route not provided");
		header("Location: " . APP_SRC . $page);
		exit;
	}

	function quiz_started() {
		return isset($_SESSION["quiz"]);
	}

	function is_set_session(string $index) {
		if(isset($_SESSION[$index])) return $_SESSION[$index];
	}

	function session_message(string $index, string $message = "") {
		if(empty($message)) {
			$tmp_msg = $_SESSION[$index];
			unset($_SESSION[$index]);

			return $tmp_msg;
		}

		$_SESSION[$index] = "<div class='message {$index}'>{$message}</div>";
	}

	function session_quiz_message(string $message = "") {
		if(!empty($message)) {
			$_SESSION["quiz_success_msg"] = $message;
		} else {
			$tmp_msg = $_SESSION["quiz_success_msg"];
			unset($_SESSION["quiz_success_msg"]);

			return $tmp_msg;
		}
	}

	function format_quiz_success_msg(array $questions, string $score) {
		if(isset($_SESSION["quiz"])) {
			$totalPoints      = $_SESSION["quiz"]["points"];
			$correctAnswers   = $_SESSION["quiz"]["points"] / 5;
			$incorrectAnswers = count($questions) - ($_SESSION["quiz"]["points"] / 5);

			$message  = "<div class='message {$score}'>Total Points Earned: <strong>" . $totalPoints . "</strong><br>";
			$message .= "Correct Answers: <strong>"     . $correctAnswers   . "</strong><br>";
			$message .= "Incorrect Answers: <strong>"   . $incorrectAnswers . "</strong><br>";
			$message .= "Your score: <strong>"          . ucfirst($score)   . "</strong><br>";
			$message .= "<a class='checkAnswersLink' href='http://localhost/advanced_questionare/user/answers'>Check your answers</a></div>";

			return $message;
		}
	}

	function show_quiz_answers() {
		if(isset($_SESSION["answers"])) {

			echo $_SESSION["answers"];
			unset($_SESSION["answers"]);

		}
	}