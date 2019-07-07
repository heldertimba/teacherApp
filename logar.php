<?php
//inicio de sessao
session_start();
include('conexao.php');
$user=$_POST["user"];
$pass=$_POST["pass"];
$status=0;
$data=date("y-m-d h:i:s");

$query = mysqli_query($mysqli,"SELECT * from utilizador where username = '$user' and password = '$pass'")or die(mysql_error());
$numrow = mysqli_num_rows($query);
if($numrow > 0)
{
$_SESSION['user']=$user;
$_SESSION['pass']=$pass;

while($row=mysqli_fetch_array($query))
 {
	$_SESSION['nome']=$row['nome'];
	$_SESSION['apelido']=$row['apelido'];
	$_SESSION['user']=$row['username'];
	$_SESSION['id_util']=$row['id_util'];
	$_SESSION['categoria']=$row['categoria'];
	$user=$row['username'];

	if($row['categoria']=='D' and $row['password']=='123456'){
	$status=1;
       echo"<script>
	   location.href='update.html';
	   </script>";

	}
	if($row['categoria']=='D'){
		mysqli_query($mysqli,"UPDATE utilizador SET estado=1, datal='$data' where username ='$user' ")or die(mysql_error());

	 $status=1;
       echo"<script>
	   location.href='painel';
	   </script>";

	}

		if($row['categoria']=='A' and $row['password']=='admin'){

       echo"<script>
	   location.href='update.html';
	   </script>";

		}


		if($row['categoria']=='A'){

			mysqli_query($mysqli,"UPDATE utilizador SET estado=1, datal='$data' where username ='$user' ")or die(mysql_error());

	 $status=1;
       echo"<script>
	   location.href='home.php';
	   </script>";
		}
 }
}


$query = mysqli_query($mysqli,"SELECT * from estudante where username = '$user' and password = '$pass' and categoria='E'")or die(mysql_error());
$numrow = mysqli_num_rows($query);
if($numrow > 0)
{
$_SESSION['user']=$user;
$_SESSION['pass']=$pass;

while($row=mysqli_fetch_array($query))
 {
	$_SESSION['nome']=$row['nome'];
	$_SESSION['apelido']=$row['apelido'];
	$_SESSION['user']=$row['username'];
	$_SESSION['id_util']=$row['id_est'];
	$user=$row['username'];

	if($row['categoria']=='E' and $row['password']=='123456'){

		$status=1;
       echo"<script>
	   location.href='update.html';
	   </script>";

	}

	else{

		mysqli_query($mysqli,"UPDATE estudante SET estado=1, data='$data' where username ='$user' ")or die(mysql_error());
		$status=1;

		echo"<script>
	   location.href='portal/#estudante/".$_SESSION['nome']." ".$_SESSION['apelido']."/".$row['curso']."';
	   </script>";
 	}

 }
}


if($status==0)
{
	unset($_SESSION['user']);
	unset($_SESSION['pass']);
    echo "<script>
	alert('Verifique as suas credências ou certifique que não se esqueceu de terminar a sessão em algum computador');
	 location.href='login.html';
	</script>";
}
?>
