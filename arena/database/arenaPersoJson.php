<?php

$arenaPersoJson = 
[
    [ 'avatar' => '$perso[avatar]',       'nom' => '$perso[nom]' , 'hp' => '$perso[HP]' , 'armor' => '$perso[armor]', 'weapon' => '$perso[weapon_id'],
    [ 'firstName' => 'Joana',     'phone' => '0102233445' ],
    [ 'firstName' => 'Catherine', 'phone' => '0605455548' ]
];



// Sérialisation JSON de la liste des contacts et envoi dans la réponse HTTP. 
echo json_encode($contactList);