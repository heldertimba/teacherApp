<?php
include('conexao.php');
session_start();
//error_reporting(0);
date_default_timezone_set('Africa/Harare');

$codigo=$_POST['codigo'];
$username=$_POST['username'];
$data= DATE('d-m-Y H:m');
$responsavel=$_SESSION['nome']." ".$_SESSION['apelido'];




	$nome = $_POST['nome'];
	$apelido = $_POST['apelido'];
	$filiacao = $_POST['filiacao'];
	$tipodoc = $_POST['tipoDoc'];
	$numdoc = $_POST['numDoc'];
	$estado_civil = $_POST['estado_civil'];
	$ano_ingresso = $_POST['anoIngresso'];
	$ano_letivo = $_POST['anoLetivo'];
	$turma = $_POST['turma'];
	$datanasc = $_POST['dataNasc'];
	$sexo = $_POST['sexo'];
	$contacto = $_POST['contacto'];
	$residencia = $_POST['residencia'];




if($username==null){
echo "<script>
	alert('Erro na actualizacao');
	location.href='estudante.php';
	</script>";
}
else{
 mysqli_query($mysqli,"UPDATE estudante
 	SET
		username='$username',
		nome = '$nome',
		apelido = '$apelido',
		filiacao = '$filiacao',
		tipo_doc = '$tipodoc',
		num_doc = '$numdoc',
		sexo = '$sexo',
		local_residencia = '$residencia',
		estado_civil = '$estado_civil',
		contacto = '$contacto',
		ano_ingresso = '$ano_ingresso',
		ano_letivo = '$ano_letivo',
		turma = '$turma',
		data_nascimento = '$datanasc'
	WHERE id_est='$codigo'");
echo "<script>alert('Actualizado Com sucesso');location.href='estudante.php';</script>";
}
	mysqli_close($mysqli);

?>


