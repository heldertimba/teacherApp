<?php
include('conexao.php');
session_start();
error_reporting(0);
date_default_timezone_set('Africa/Harare');

$turma=$_POST['turma'];
$data= DATE('d-m-Y H:m');
$responsavel="UserTest";


$sql = "SELECT * FROM turma WHERE nome_turma LIKE '%$turma%'";
$teste="";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
		$teste=mysqli_num_rows($result);
		echo "<script>
	alert('Class alread exist');
	location.href='classes.php';
	</script>";
	mysqli_free_result($result);
}else{
     $codigo=md5($teste."".DATE('s')."".rand(1,999999999));
	 
mysqli_query($mysqli,"INSERT INTO turma (id_turma,id_curso_doc,nome_turma,data,responsavel) VALUES (md5('$codigo'),'0','$turma','$data','$responsavel')");

echo "<script>location.href='classes.php';</script>";   
		
    }
}
	mysqli_close($mysqli);
?>