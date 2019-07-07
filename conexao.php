<?php
$mysqli = mysqli_connect("localhost","root","","appTeacher") or die(mysql_error());
if ($mysqli->connect_errno) {
    echo "Falha ao conectar: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
?>
