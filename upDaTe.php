<?php
//inicio de sessao
session_start();
include('conexao.php');
$user=$_SESSION['user'];
$pass=$_POST["pass"];
$pass2=$_POST["pass2"];

$status=0;
$data=date("y-m-d h:i:s");


if($pass!=$pass2){
	    echo "<script>
	alert('Ocorreu um Erro!');
	 location.href='login.html';
	</script>";
}
else{

$query = mysqli_query($mysqli,"SELECT * from utilizador where username = '$user' ")or die(mysql_error());
$numrow = mysqli_num_rows($query);
if($numrow > 0)
{	
	
while($row=mysqli_fetch_array($query))
 {
	
	if($row['username']==$user){
	
	mysqli_query($mysqli,"UPDATE utilizador SET password='$pass' where username = '$user'")or die(mysql_error());
	
	 $status=1;
       echo"<script>
	   location.href='login.html';
	   </script>";   
	}	
 }
}


$query = mysqli_query($mysqli,"SELECT * from estudante where username = '$user'")or die(mysql_error());
$numrow = mysqli_num_rows($query);
if($numrow > 0)
{	
	
while($row=mysqli_fetch_array($query))
 {
	
	if($row['username']==$user){
	mysqli_query($mysqli,"UPDATE estudante SET password='$pass' where username ='$user' ")or die(mysql_error());
	
	 $status=1;
       echo"<script>
	   location.href='login.html';
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
}
?>