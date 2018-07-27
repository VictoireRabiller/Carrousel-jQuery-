'use strict';   

var app = {}; //app pour application

app.intervalID = null ;
app.counter = 0;

 //variable globale à déclarer en dehors de toutes les fonctions afin d'etre partagée avec tous les fichiers js
 //on les déclare dans un objet 


function main () {

	var buttonDown = $("#down");

	var buttonRight = $('#right');

	
	$( buttonDown ).click(function() {
	 
	  $( "#barreOutils" ).toggle() && buttonDown.toggle();
	
	});


	$( buttonRight ).click(function() {

	  $( "#barreOutils" ).toggle() && buttonDown.toggle();

	});


	

	$('#forward').on('click', function(){
		
		playNextImage();
	
	});
	
	
	displayImage();



	$('#backward').on('click', function(){
		
		playPreviousImage();

	});
	



	var buttonPlay = $("#play");

	var buttonPause = $('#pause');

	var buttonRandom = $('#random');
	
	$( buttonPlay ).click(function() {
	 
	  	$( "#pause" ).toggle() && buttonPlay.toggle() ;
	  	// console.log(imageList);
		playImages();
	
	});


	$( buttonPause ).click(function() {

	  	$( "#play" ).toggle() && buttonPause.toggle() ;

	  	pauseImages(app.intervalID);

	});


	$('#random').on('click', function(){
		
		app.counter = getRandomNumberExcludedNumberCounter(0, imageList.length, app.counter);

		displayImage();
	
	});
	

// ******VERSION JS**********
	// addEventListener("keydown", function (event) {
	// 	console.log("keydown");

	//   if (event.defaultPrevented) {
	//     return; // Ne devrait rien faire si l'événement de la touche était déjà consommé.
	//   }

	//   switch (event.key) {
	//     case "ArrowLeft":
	//     	playPreviousImage();
	//       	break;

	//     case "ArrowRight":
	//     	playNextImage();
	//     	break;

	//     default:
	//       	return; // Quitter lorsque cela ne gère pas l'événement touche.
	//   }

	//   // Annuler l'action par défaut pour éviter qu'elle ne soit traitée deux fois.
	//   event.preventDefault();
	// }, true);



//******VERSION JQUERY


$(document).on('keydown', function (event) {

	console.log(event.which);

	if (event.which == 39) { // arrow right
		playNextImage();
	}

	if (event.which == 37) { // arrow left
		playPreviousImage();
	}

	if (event.which == 32) { // space
		playImages();
	}

});

displayImage();


};
$(main);