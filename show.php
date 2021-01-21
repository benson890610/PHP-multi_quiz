<?php 
	session_start();

	require_once "application/autoload.php";

	if(is_set_session("answers") == false) redirect('index');
?>

<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatabile" content="IE=Edge">
		<meta name="author" content="Igor Djurdjic">
		<meta name="description" content="Multi advanced questioner">
		<title>Correct and Incorrect Answers</title>
		<!-- Default Css -->
		<link rel="stylesheet" type="text/css" href="http://localhost/advanced_questionare/public/style.css">
		<!-- Google Fonts -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
	</head>
	<body>
		
		<main>
			<div class="container">

				<h1 class="answersHeading">List of correct and incorrect answers</h1>

				<?php show_quiz_answers(); ?>

				<a href="http://localhost/advanced_questionare/" class="goBackBtn">Home</a>

				<div style="margin-bottom: 100px"></div>

			</div>
		</main>

		<footer>
			<p>Copyrights &copy; <a href="https://igordjurdjicsite.online">Igor Djurdjic</a></p>
		</footer>
		
	</body>
</html>