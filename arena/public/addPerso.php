<?php

include '../services/tools.php';
include '../services/functions.php';

// $perso = $_POST[""];
// pre($_POST);
// exit;
// pre(addPerso($perso));

$perso = [];
$perso[] = $_POST["nom"] ;
$perso[] = $_POST["HP"] ;
$perso[] = $_POST["armor"] ;
$perso[] = $_POST["weapon"] ;
$perso[] = $_POST["avatar"] ;
// pre($perso);

addPerso($perso);
// pre(getPersoList);



header('Location: listPerso.php');
exit;