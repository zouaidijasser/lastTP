<?php
$c = mysqli_connect('localhost','root','') or die(mysqli_error($c));
mysqli_select_db($c,'exercices corrige');
$req = "SELECT `nom et prenom` FROM `profs` WHERE `matiereP` = 'js';";
$res = mysqli_query($c,$req);
if (mysqli_num_rows($res)==0) {
    die ('n est pas des ensaingt');
}
while ($t = mysqli_fetch_array($res)) {
    echo $t['nom et prenom'];
}

?>