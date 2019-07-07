<?php

require_once  '/composer/vendor/autoload.php';

class Subject{ 

public $db;

public function __construct(){

	$db = new Database();
	$this->db = $db->instance();
	$this->sendSubject();
}


public function sendSubject(){

if($_POST){

try{
    
  


$query =$this->db->prepare("INSERT INTO disciplina (id_disciplina,nome_disciplina,semestre,ano,data,responsavel) VALUES (:id_disciplina, :nome_disciplina, :semestre, :ano, :data, :responsavel)");


$data=date("d-m-Y H:i:s");
  $codigo=md5(DATE('s')."".rand(1,999999999));

$query -> bindValue(":id_disciplina",$codigo, PDO::PARAM_STR);
$query -> bindValue(":nome_disciplina",$_POST['disc'], PDO::PARAM_STR);
$query -> bindValue(":semestre",$_POST['ano'], PDO::PARAM_STR);
$query -> bindValue(":ano",$_POST['sem'], PDO::PARAM_STR);   
$query -> bindValue(":data",$data, PDO::PARAM_STR); 
$query -> bindValue(":responsavel","User Test", PDO::PARAM_STR); 


$query->execute();

echo "<script type='text/javascript'>window.onload=function(){setTimeout(showPopup,14000)};
function showPopup(){alert('Success');}
</script>";

//Prepare Send email from corrent Subscribe

}catch(PDOException $e){echo "Ocorreu um Erro, contacte o Admin do Sistema (827546234) ou helder.d.timba@gmail.co.mz";}

   }
 }
}

?>