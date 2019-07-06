<?php
include("resize-class.php");
include('conexao.php');
session_start();
error_reporting(0);
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

$foto=$_POST['foto'];
$anexo1=$_POST['anexo1'];
$anexo2=$_POST['anexo2'];
$anexo3=$_POST['anexo3'];


$area=$_POST['area'];
$experiencia=$_POST['experiencia'];
$nivel=$_POST['nivel'];
$formacao=$_POST['formacao'];
$formacao2=$_POST['formacao2'];
$regime=$_POST['regime'];
$disciplinas=$_POST['disciplinas'];


$uploaddir = 'C:/wamp/www/appTeacher/uploads/fotos/';
$uploaddirF = '/appTeacher/uploads/fotos/';
$uploadfileF = $uploaddirF . basename($_FILES['foto']['name']);
$uploadefault = '/appTeacher/uploads/fotos/logo.png';
$uploadfile = $uploaddir . basename($_FILES['foto']['name']);


$uploaddir_anexos1 = 'C:/wamp/www/appTeacher/uploads/anexos/';
$uploaddirF1 = '/appTeacher/uploads/anexos/';
$uploadfileF1 = $uploaddirF1 . basename($_FILES['anexo1']['name']);
$uploadfile1 = $uploaddir_anexos1 . basename($_FILES['anexo1']['name']);


$uploaddir_anexos2 = 'C:/wamp/www/appTeacher/uploads/anexos/';
$uploaddirF2 = '/appTeacher/uploads/anexos/';
$uploadfileF2 = $uploaddirF2 . basename($_FILES['anexo2']['name']);
$uploadfile2 = $uploaddir_anexos2 . basename($_FILES['anexo2']['name']);


$uploaddir_anexos3 = 'C:/wamp/www/appTeacher/uploads/anexos/';
$uploaddirF3 = '/appTeacher/uploads/anexos/';
$uploadfileF3 = $uploaddirF3 . basename($_FILES['anexo3']['name']);
$uploadfile3 = $uploaddir_anexos3 . basename($_FILES['anexo3']['name']);


$string = $nome;
$string2 = $apelido; 

$username="".$string{0}."".$string2{0}."".$contacto;

$data= DATE('d-m-Y H:m');
$responsavel=$_SESSION['nome']." ".$_SESSION['apelido'];


$sql = "SELECT * FROM utilizador WHERE nome LIKE '%$nome%' AND apelido LIKE '%$apelido%'";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
		echo "<script>
	alert('Teacher Alread Exist');
	location.href='teacher.php';
	</script>";
	mysqli_free_result($result);
}else{
	
echo '<pre>';
move_uploaded_file($_FILES['foto']['tmp_name'],$uploadfile);
move_uploaded_file($_FILES['anexo1']['tmp_name'],$uploadfile1);
move_uploaded_file($_FILES['anexo2']['tmp_name'],$uploadfile2);
move_uploaded_file($_FILES['anexo3']['tmp_name'],$uploadfile3);

$codigo=md5($teste."".DATE('s')."".rand(1,999999999));    
mysqli_query($mysqli,"INSERT INTO utilizador (id_util,nome,apelido,data_nascimento,sexo,filiacao,tipo_doc,num_doc,local_residencia,estado_civil,username,password,categoria,contacto,email,estado,datal,responsavel,curso,turma,turno,foto,area,experiencia,nivel,formacao,formacao2,regime,disciplinas,anexo1,anexo2,anexo3)
 VALUES (md5('$codigo'),'$nome','$apelido','$dataNasc','$sexo','$filiacao','$tipoDoc','$numDoc','$residencia','$estado_Civil','$username','123456','D','$contacto','$email','1','$data','$responsavel','-','-','-','$uploadfileF','$area','$experiencia','$nivel','$formacao','$formacao2','$regime','$disciplinas','$uploadfileF1','$uploadfileF2','$uploadfileF3')");

echo "<script>location.href='teacher.php';</script>";   

}	
	mysqli_close($mysqli);
	
}
?>