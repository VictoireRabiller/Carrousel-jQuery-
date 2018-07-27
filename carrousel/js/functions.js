'use strict';   



function displayImage() {
	console.log('displayImage',app.counter);
	var image = imageList[app.counter];

	$('#carrousel img').attr('src', image.file);
	$('#carrousel figcaption').html(image.figcaption);

}

function playNextImage() {
	
	app.counter++;
		
	if (app.counter == imageList.length){

		app.counter = 0 ;
	}

	displayImage();

}


function playPreviousImage() {
	
	app.counter--;
		
	if (app.counter < 0 ){

		app.counter = imageList.length - 1 ;
	}

	displayImage();

}



function playImages(){
	
	app.intervalID = setInterval(playNextImage, 2000);

}





function pauseImages() {
  
  	clearInterval(app.intervalID);

}


function getRandomNumberExcludedNumberCounter(min, max, excludedNumber) {

	while (true){

		//ou var num = Math.floor(Math.random() * (max - min)) + min;
	 	var num = Math.floor(Math.random() * max);

		if (num != excludedNumber){

			break;

		}
	}
	
  return num;
}







