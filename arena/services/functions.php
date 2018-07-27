<?php

define('PERSO_FILE_NAME', '../database/perso.csv');

function getDb (){
	$user = 'root';
	$password = 'troiswa';
	$db =new PDO(
		'mysql:host=localhost;dbname=arena', 
		$user, 
		$password,
		array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING)
		);
	$db->exec('SET NAMES UTF8');
	return $db;
}

// function getPersoList(){
	// $handle = fopen('../database/perso.csv','r');
	
	// $persosList = [];
	
	// while (true){

	// 	$perso = fgetcsv($handle, 0, ',');
		
	// 	if ($perso == false){
	// 		break;
	// 	}

	// 	$persosList[] = $perso;
	// }

	// fclose($handle);

	// return $persosList;

	
// }


function getPersoList(){
	$db = getDb();
	$sql = "SELECT * 
	FROM perso";

	$statement = $db->prepare($sql);

	$statement->execute();
	$persosList = $statement->fetchAll(\PDO::FETCH_ASSOC);
	return $persosList; 

}


define('perso_FILE_NAME', '../database/perso');


function addperso($perso) {

	file_put_contents(perso_FILE_NAME, $perso . "\n", FILE_APPEND);

}

function removeperso($id) {

	$persos = getpersoList();

	unset($persos[$id]);

	file_put_contents(perso_FILE_NAME, $persos);
}


// function addPerso($perso){
	// $handle = fopen('../database/perso.csv','a');

	// fputcsv($handle,$perso,',');

	// fclose($handle);

// }



