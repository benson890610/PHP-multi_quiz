<?php

class Home extends Base {

	private $homeRepository;

	public function __construct() { 
		$this->homeRepository = $this->find("HomeRepository");
	}
	public function showCourses() {
		$category = $this->homeRepository->getCategories();
		$html = "";

		if(count($category) > 0) {
			foreach($category as $c) {
				$html .= "<a href=". APP_SRC ."quiz/{$c['name']}>{$c['title']}</a>";
			}
		}

		return $html;
	}
	public function getCourse() {
		$course = $this->getUrl();
		$course = strtolower(htmlspecialchars($course[0]));
		
		if($this->homeRepository->courseExists($course) === 0) redirect("index");

		return $course;
	}
}