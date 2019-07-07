<?php
include('conexao.php');
$id=$_GET['id_turno'];

mysqli_query($mysqli,"DELETE FROM turno WHERE id_turno='$id'");
echo "<script>location.href='shifts.php';</script>";
mysqli_close($mysqli);
?>