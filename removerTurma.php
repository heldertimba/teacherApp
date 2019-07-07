<?php
include('conexao.php');
$id=$_GET['id_turma'];

mysqli_query($mysqli,"DELETE FROM turma WHERE id_turma='$id'");
echo "<script>location.href='turma.php';</script>";
mysqli_close($mysqli);
?>