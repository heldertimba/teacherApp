<?php
//$mysqli = mysqli_connect("www.wowpoint.me","wowpoint","2mLhFt23v4","wowpoint_ifoptec") or die(mysql_error());
$mysqli = mysqli_connect("localhost","root","","ifopetec2") or die(mysql_error());
if ($mysqli->connect_errno) {
    echo "Falha ao conectar: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
?>
