<?php
include('conexao.php');
$id=$_GET['id_curso'];

mysqli_query($mysqli,"DELETE FROM curso WHERE id_curso='$id'");
echo "<script>location.href='curso.php';</script>";
mysqli_close($mysqli);
?>