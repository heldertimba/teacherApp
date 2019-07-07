<?php
include('conexao.php');
$id=$_GET['id_livro'];

mysqli_query($mysqli,"DELETE FROM livro WHERE id_livro='$id'");
echo "<script>location.href='livro.php';</script>";
mysqli_close($mysqli);
?>