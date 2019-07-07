<?php

require_once  '/composer/vendor/autoload.php';

class Shift{ 

public $db;

public function __construct(){

	$db = new Database();
	$this->db = $db->instance();
	$this->sendShift();
}


public function sendShift(){

if($_POST){

try{
    
    $codigo=rand(1,999999999);;


$query =$this->db->prepare("INSERT INTO turno (id_turno,nome_turno,data,responsavel) VALUES (:id_turno, :nome_turno, :data, :responsavel)");


$data=date("d-m-Y H:i:s");


$query -> bindValue(":id_turno",$codigo, PDO::PARAM_STR);
$query -> bindValue(":nome_turno",$_POST['turno'], PDO::PARAM_STR);
$query -> bindValue(":data",$data, PDO::PARAM_STR);
$query -> bindValue(":responsavel","User Test", PDO::PARAM_STR);   


$query->execute();

echo "<script type='text/javascript'>window.onload=function(){setTimeout(showPopup,14000)};
function showPopup(){alert('Success');}
</script>";

//Prepare Send email from corrent Subscribe

}catch(PDOException $e){echo "Ocorreu um Erro, contacte o Admin do Sistema Interactive(827546234) ou helder.timba@interactive.co.mz";}

   }
 }
}

?>