<?php
include('conexao.php');
$id=$_GET['id_disciplina'];

mysqli_query($mysqli,"DELETE FROM disciplina WHERE id_disciplina='$id'");
echo "<script>location.href='disciplina.php';</script>";
mysqli_close($mysqli);
?>