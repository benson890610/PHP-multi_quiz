<?php

	if(is_set_session("error")) {
		echo session_message("error");
	}

	if(is_set_session("success")) {
		echo session_message("success");
	}

	if(is_set_session("quiz_success_msg")) {
		echo session_quiz_message();
	}

?>