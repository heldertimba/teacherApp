<?php

include('conexao.php');
//error_reporting(0);
date_default_timezone_set('Africa/Harare');

$nome=$_POST['nome'];
$apelido=$_POST['apelido'];
$dataNasc=$_POST['dataNasc'];
$sexo=$_POST['sexo'];
$filiacao=$_POST['filiacao'];
$tipoDoc=$_POST['tipoDoc'];
$numDoc=$_POST['numDoc'];
$residencia=$_POST['residencia'];
$estado_Civil=$_POST['estado'];
$contacto=$_POST['contacto'];
$email=$_POST['email'];
$curso=$_POST['curso'];
$turma=$_POST['turma'];
$turno=$_POST['turno'];
$anoIgresso = $_POST['anoIngresso'];


$username="".$nome{0}."".$apelido{0}."".$contacto;

$data= DATE('d-m-Y H:m');
$responsavel="User Test";


$sql = "SELECT * FROM estudante WHERE nome LIKE '%$nome%' AND apelido LIKE '%$apelido%'";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
		echo "<script>alert('Estudante ja Existente');location.href='student.php';</script>";
	mysqli_free_result($result);
}else{

$codigo=md5("".DATE('s')."".rand(1,999999999));
mysqli_query($mysqli,"INSERT INTO estudante (id_est,nome,apelido,data_nascimento,sexo,filiacao,tipo_doc,num_doc,local_residencia,estado_civil,username,password,categoria,contacto,email,estado,datal,responsavel,curso,turma,turno,ano_ingresso)
 VALUES (md5('$codigo'),'$nome','$apelido','$dataNasc','$sexo','$filiacao','$tipoDoc','$numDoc','$residencia','$estado_Civil','$username','123456','E','$contacto','$email','1','$data','$responsavel','$curso','$turma','$turno','$anoIgresso')");

echo "<script>location.href='student.php';</script>";

    }
}
	mysqli_close($mysqli);

?>
