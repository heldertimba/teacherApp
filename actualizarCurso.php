<?php
include('conexao.php');
session_start();
error_reporting(0);
date_default_timezone_set('Africa/Harare');

$id=$_POST['id'];
$curso=$_POST['curso'];
$duracao=$_POST['duracao'];
$data= DATE('d-m-Y H:m');
$responsavel=$_SESSION['nome']." ".$_SESSION['apelido'];

if($curso==null && $duracao==null){
echo "<script>
	alert('Erro na actualizacao');
	location.href='curso.php';
	</script>";
}
else{
 mysqli_query($mysqli,"UPDATE curso SET nome_curso='$curso',duracao='$duracao',data='$data', responsavel='$responsavel' WHERE id_curso='$id'");	  
echo "<script>
	alert('Actualizado Com sucesso');
	location.href='curso.php';
	</script>";
}
	mysqli_close($mysqli);

?>