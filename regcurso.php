<?php
include('conexao.php');
session_start();
error_reporting(0);
date_default_timezone_set('Africa/Harare');

$curso=$_POST['curso'];
$duracao=$_POST['duracao'];
$data= DATE('d-m-Y H:m');
$responsavel="UserTester";



$sql = "SELECT * FROM curso WHERE nome_curso LIKE '%$curso%'";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
		echo "<script>
	alert('Curso ja Existente');
	location.href='curso.php';
	</script>";
	mysqli_free_result($result);
}else{

$codigo=md5($teste."".DATE('s')."".rand(1,999999999));      
mysqli_query($mysqli,"INSERT INTO curso (id_curso,nome_curso,duracao,data,responsavel) VALUES (md5('$codigo'),'$curso','$duracao','$data','$responsavel')");

echo "<script>
	location.href='course.php';
	</script>";  
		
    }
}
	
	mysqli_close($mysqli);
?>