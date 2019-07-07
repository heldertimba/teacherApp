<?php
include('conexao.php');
session_start();
error_reporting(0);
date_default_timezone_set('Africa/Harare');

$id=$_POST['id_estudante'];
$curso=$_POST['curso'];

$data= DATE('d-m-Y H:m');
$responsavel=$_SESSION['nome']." ".$_SESSION['apelido'];

if($curso==null){
echo "<script>
	alert('Erro na actualizacao');
	location.href='estudante.php';
	</script>";
}
else{
	
	//echo "ID ".$id;
	
 mysqli_query($mysqli,"UPDATE estudante SET curso='$curso' WHERE id_est='$id'");	  

 echo "<script>
	alert('Actualizado Com sucesso');
	location.href='estudante.php';
	</script>";
	
}
	mysqli_close($mysqli);

?>