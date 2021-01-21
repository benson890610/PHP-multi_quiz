function answersStopPropagation() {
	if(document.getElementById("answer1") !== null) 
	document.getElementById("answer1").addEventListener("click", function(event){ event.stopPropagation(); });
	if(document.getElementById("answer2") !== null)
	document.getElementById("answer2").addEventListener("click", function(event){ event.stopPropagation(); });
	if(document.getElementById("answer3") !== null)
	document.getElementById("answer3").addEventListener("click", function(event){ event.stopPropagation(); });
	if(document.getElementById("answer4") !== null)
	document.getElementById("answer4").addEventListener("click", function(event){ event.stopPropagation(); });
}

function toggleCheck(element) {
	let totalAnswers = document.querySelectorAll(".answer");

	for(let i = 0; i < totalAnswers.length; i++) {
		totalAnswers[i].classList.remove("checked");
	}
	element.classList.add("checked");
}

function checkRadioBtn(element) {
	element.children[1].checked = true;
}

if(document.querySelector(".answers-content") !== null) {
	const answersContent = document.querySelector(".answers-content");

	answersStopPropagation();
	
	answersContent.addEventListener("click", function(event){
		let element = event.target;

		if(element.classList.contains("answer")) {
			toggleCheck(element);
			checkRadioBtn(element);
		}
		if(element.parentElement.classList.contains("answer")) {
			toggleCheck(element.parentElement);
		}
	});
}