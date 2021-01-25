<?php 
	session_start();

	require_once "application/autoload.php";

	$home = new Home;
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
		<link rel="stylesheet" type="text/css" href="<?php echo APP_SRC; ?>public/style.css">
		<!-- Google Fonts -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
	</head>
	<body>
		
		<header>
			<h1>Quiz for multiple programming languages</h1>
			<p>Choose a subject where you want to test your knowledge</p>
		</header>

		<main>
			<div class="container">

				<?php include_once "application/messages.php"; ?>

				
				<div class="quiz-content-links">
					<div class="flex-1">
						<?php echo $home->showCourses(); ?>
					</div>
				</div>
			</div>
		</main>

		<footer>
			<p>Copyrights &copy; <a href="<?php echo APP_SRC; ?>">Igor Djurdjic</a></p>
		</footer>
		<script type="text/javascript" src="<?php echo APP_SRC; ?>public/app.js"></script>
	</body>
</html>
