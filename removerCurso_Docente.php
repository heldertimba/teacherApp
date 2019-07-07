<?php
include('conexao.php');
$id=$_GET['id_curso_doc'];

mysqli_query($mysqli,"DELETE FROM curso_docente WHERE id_curso_doc='$id'");
echo "<script>location.href='turma_docente.php.php';</script>";
mysqli_close($mysqli);
?>