<?php
include('conexao.php');
session_start();
error_reporting(0);
date_default_timezone_set('Africa/Harare');

$id=$_POST['id'];
$disc=$_POST['disciplina'];
$ano=$_POST['ano'];
$sem=$_POST['sem'];
$data= DATE('d-m-Y H:m');
$responsavel=$_SESSION['nome']." ".$_SESSION['apelido'];

if($disc==null){
echo "<script>
	alert('Erro na actualizacao');
	location.href='disciplina.php';
	</script>";
}
else{
 mysqli_query($mysqli,"UPDATE disciplina SET nome_disciplina='$disc',ano='$ano',semestre='$sem',data='$data', responsavel='$responsavel' WHERE id_disciplina='$id'");	  
echo "<script>
	alert('Actualizado Com sucesso');
	location.href='disciplina.php';
	</script>";
}
	mysqli_close($mysqli);

?>