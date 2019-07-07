<?php
include('conexao.php');
$id=$_GET['id_est'];

mysqli_query($mysqli,"DELETE FROM estudante WHERE id_est='$id' AND categoria='E' ");
mysqli_query($mysqli,"DELETE FROM notas WHERE id_util='$id'");
echo "<script>location.href='estudante.php';</script>";
mysqli_close($mysqli);
?>