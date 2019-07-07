<?php
include('conexao.php');
$id=$_GET['id_util'];

mysqli_query($mysqli,"DELETE FROM utilizador WHERE id_util='$id' AND categoria='D' ");
echo "<script>location.href='docente.php';</script>";
mysqli_close($mysqli);
?>