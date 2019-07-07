<?php
include('conexao.php');
session_start();
//error_reporting(0);
date_default_timezone_set('Africa/Harare');

$id_discp=$_GET['id_disciplina'];
$id_util=$_GET['id_est'];
$id_curso=$_GET['id_curso'];

$data= DATE('d-m-Y H:m');
$responsavel=$_SESSION['nome']." ".$_SESSION['apelido'];

$sql = "SELECT * FROM notas WHERE id_util='$id_util' AND id_discp='$id_discp' AND id_curso='$id_curso'";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
       echo "<script>
	alert('Estudante já se encontra alocado nesse Curso e Disciplina');
	 location.href='javascript:window.history.go(-1)';
	</script>";
    } else{
         mysqli_query($mysqli,"INSERT INTO notas (id_notas,id_util,id_discp,id_curso,teste1,teste2,mini_teste1,mini_teste2,exame_normal,exame_recor)
 VALUES (null,'$id_util','$id_discp','$id_curso',' ',' ',' ',' ',' ',' ')");

 echo "<script>
 alert('Estudante alocado com sucesso');
 location.href='javascript:window.history.go(-1)';
 </script>";
 
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($mysqli);
}
mysqli_close($mysqli);

?>