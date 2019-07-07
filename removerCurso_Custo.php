<?php
include('conexao.php');
$id=$_GET['id_curso'];

mysqli_query($mysqli,"DELETE FROM curso_preco WHERE id_curso='$id'");
echo "<script>location.href='curso_custo.php';</script>";
mysqli_close($mysqli);
?>