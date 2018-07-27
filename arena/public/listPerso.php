<?php

include '../services/tools.php';
include '../services/functions.php';
$page = "listPerso";
$persos = getPersoList();
// pre($persos);
// exit;
// echo"<table>";
// foreach ($persos as $perso) {
// 	echo "<tr>";
// 	echo "<td>$perso[0]</td>";
// 	echo "<td>$perso[1]</td>";
// 	echo "<td>$perso[2]</td>";
// 	echo "<td>$perso[3]</td>";
// 	echo "<td><img src='$perso[4]'></td>";
// 	echo "</tr>";
// }
// echo "</table>";

include '../views/listPerso.phtml';