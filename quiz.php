<?php
	ini_set("display_errors", "on");
	session_start();

	require_once "application/autoload.php";

	$question = new Question;
	$quiz     = new Quiz;
	$quiz->load($question);
?>

<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatabile" content="IE=Edge">
		<meta name="author" content="Igor Djurdjic">
		<meta name="description" content="Multi advanced questioner">
		<title>Multi Questioner | Igor Djurdjic</title>
		<!-- Default Css -->
		<link rel="stylesheet" type="text/css" href="http://localhost/advanced_questionare/public/style.css">
		<!-- Google Fonts -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
	</head>
	<body>

		<main>
			<div class="container">
				
				<!-- ERROR AND SUCCESS MESSAGES FILE -->
				<?php include_once "application/messages.php"; ?>

				<!-- CONTENT OF QUIZ -->
				<?php if(quiz_started()): ?>

				<form class="submitForm" action="http://localhost/advanced_questionare/quiz/<?php echo $quiz->course; ?>" method="post">

					<h3><?php echo $question->currentQuestion; ?></h3>

					<div class="answers-content">

						<!-- FIRST ANSWER -->
						<div class="answer">
							<label for="answer1"><?php echo $question->answer1; ?></label>
							<input type="radio" name="answer" id="answer1" value="<?php echo $question->answer1; ?>">
						</div>

						<!-- SECOND ANSWER -->
						<div class="answer">
							<label for="answer2"><?php echo $question->answer2; ?></label>
							<input type="radio" name="answer" id="answer2" value="<?php echo $question->answer2; ?>">
						</div>

						<!-- THIRD OPTIONAL ANSWER -->
						<?php if(!is_null($question->answer3)): ?>
						<div class="answer">
							<label for="answer3"><?php echo $question->answer3; ?></label>
							<input type="radio" name="answer" id="answer3" value="<?php echo $question->answer3; ?>">
						</div>
						<?php endif; ?>

						<!-- FOURTH OPTIONAL ANSWER -->
						<?php if(!is_null($question->answer4)): ?>
						<div class="answer">
							<label for="answer4"><?php echo $question->answer4; ?></label>
							<input type="radio" name="answer" id="answer4" value="<?php echo $question->answer4; ?>">
						</div>
						<?php endif; ?>

					</div>

					<!-- DISPLAY FINISH BUTTON -->
					<?php if($question->last()): ?>

					<input type="hidden" name="finish" value="true">
					<div class="complete-question-area">
						<button class="left" type="submit">Finish</button>
						<p class="right"><?php echo $question->counter(); ?></p>
					</div>

					<!-- DISPLAY NEXT BUTTON -->
					<?php else: ?>

					<input type="hidden" name="next" value="true">
					<div class="complete-question-area">
						<button class="left" type="submit">Next Question</button>
						<p class="right"><?php echo $question->counter(); ?></p>
					</div>

					<?php endif; ?>
					
				</form>

				<!-- CONTENT BEFORE QUIZ STARTED -->
				<?php else: ?>

				<h1 class="course-heading">You have picked <?php echo ucfirst($quiz->course); ?> course</h1>

				<div class="quiz-introdution">
					<p>
						Before you start the course let us explain a little bit about course.<br>
						You will get 25 questions. Each questions carries 5 points, maximum number of points is 125.<br>
						After you finish picked course you will be grade as excellent, very good, good, bad or very bad based on your answers.
					</p>
					<ul>
						<li><span class="quiz-introdution-left-span">Very Bad</span>  <span class="quiz-introdution-right-span">(0 - 20) Points</span></li>
						<li><span class="quiz-introdution-left-span">Bad</span>       <span class="quiz-introdution-right-span">(20 - 55) Points</span></li>
						<li><span class="quiz-introdution-left-span">Good</span>      <span class="quiz-introdution-right-span">(45 - 85) Points</span></li>
						<li><span class="quiz-introdution-left-span">Very Good</span> <span class="quiz-introdution-right-span">(75 - 110) Points</span></li>
						<li><span class="quiz-introdution-left-span">Excellent</span> <span class="quiz-introdution-right-span">(110 - 125) Points</span></li>
					</ul>

					<form action="http://localhost/advanced_questionare/quiz/<?php echo $quiz->course; ?>" method="post">
						<input type="hidden" name="start" value="true">
						<button type="submit">Start Quiz</button>
						<a href="http://localhost/advanced_questionare/" class="backBtn">Back</a>
					</form>
				</div>

				<?php endif; ?>
			</div>
		</main>

		<footer>
			<p>Copyrights &copy; <a href="https://igordjurdjicsite.online">Igor Djurdjic</a></p>
		</footer>
		<script type="text/javascript" src="http://localhost/advanced_questionare/public/app.js"></script>
	</body>
</html>