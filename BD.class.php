<?php
class BD{
	private static $conn;

	// Criando o contrutor da class - metodo
	public function __construct(){}

		// Inicializando metodo de connecaxao
	public static function conn(){

		if(is_null(self::$conn)){
			self::$conn = new PDO('mysql:host='.HOST.';dbname='.BD.'',''.USER.'', ''.PASS.'',
				array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")); // All the responses from database to UTF-8

		}
		// retornando a connexao da class - self call
		return self::$conn;


	}
}
?>
