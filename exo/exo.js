"use strict";
setInterval(function(){
	console.log("execute");
},5000);




function hello() {
	console.log('Hello');
}

setInterval(hello, 1000);




setInterval(function () {

	console.log('hello');
    
}, 1000);



setTimeout(function () {
	console.log('settimeout exécuté');
}, 3000);

// $('button'.on('click',function(hello){
// 	clearInternal(8000);
// });