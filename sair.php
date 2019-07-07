<?php
session_start();
include('conexao.php');
$emailUtil=$_SESSION['user'];
$query = mysqli_query($mysqli,"UPDATE utilizador SET estado=0 where username = '$emailUtil' ")or die(mysql_error());
if(isset($_SESSION['user'])){
	session_destroy();
	header('location:index.html');
}
?>