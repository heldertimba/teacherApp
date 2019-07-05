<?php
include('conexao.php');
session_start();
error_reporting(0);
date_default_timezone_set('Africa/Harare');

$turno=$_POST['turno'];
$data= DATE('d-m-Y H:m');
$responsavel="User Test";


$sql = "SELECT * FROM turno WHERE nome_turno LIKE '%$turno%'";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
		echo "<script>
	alert('Shift alread exist');
	location.href='shifts.php';
	</script>";
	mysqli_free_result($result);
}else{
 
$codigo=md5($teste."".DATE('s')."".rand(1,999999999)); 
mysqli_query($mysqli,"INSERT INTO turno (id_turno,nome_turno,data,responsavel) VALUES (md5('$codigo'),'$turno','$data','$responsavel')");

echo "<script>location.href='shifts.php';</script>";   
		
    }
}
	mysqli_close($mysqli);
?>