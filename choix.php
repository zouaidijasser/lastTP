<?php
$lang = $_POST['lang'];
$ex = $_POST['ex'];
$c = mysqli_connect('localhost','root','') or die(mysqli_error($c));
mysqli_select_db($c,'exercices corrige');
$req = "SELECT * FROM exercices WHERE langage = '$lang'";
$res = mysqli_query($c,$req);
if (mysqli_num_rows($res)==0) {
    die ('pas exercice');
}
$t = mysqli_fetch_array($res);
$req1 = "SELECT `nom et prenom` FROM `profs` WHERE `matriculeP` ='" . $t['matriculeP'] . "' ;" ;
$res1 = mysqli_query($c,$req1);
$t1 = mysqli_fetch_array($res1);
echo "<table border='1' style='border-collapse: collapse;'>";
echo    "<tr><td> ex num : </td><td>". $t['num']."</td></tr>";
echo    "<tr><td> propsé par : </td><td>". $t1['nom et prenom'] ."</td></tr>";
echo    "<tr><td> enoncé : </td><td>". $t['enonce']."</td></tr>";
echo    "<tr><td> solution : </td><td>".$t['solution'] ."</td></tr>";
echo "</table>";
echo (string) checkdate(12,31,-400);

?>