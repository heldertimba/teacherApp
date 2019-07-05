<?php
include('conexao.php');
session_start();
error_reporting(0);
date_default_timezone_set('Africa/Harare');

$disc=$_POST['disc'];
$ano=$_POST['ano'];
$sem=$_POST['sem'];
$data= DATE('d-m-Y H:m');
$responsavel="Test User";



$sql = "SELECT * FROM disciplina WHERE nome_disciplina LIKE '%$disc%'";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
		echo "<script>
	alert('Subject alread Exist');
	location.href='subjects.php';
	</script>";
	mysqli_free_result($result);
}else{
	
$codigo=md5($teste."".DATE('s')."".rand(1,999999999));      
mysqli_query($mysqli,"INSERT INTO disciplina (id_disciplina,nome_disciplina,semestre,ano,data,responsavel) VALUES (md5('$codigo'),'$disc','$sem','$ano','$data','$responsavel')");

echo "<script>
	location.href='subjects.php';
	</script>";  
		
    }
}
	
	mysqli_close($mysqli);
?>