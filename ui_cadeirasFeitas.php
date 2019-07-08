<?php

error_reporting();
session_start();
 // Conexao com a base de dados
 include("../sys_files/config.php");
 require_once("../sys_files/BD.class.php");

    // DateTime para Portugues.
	setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
	// Variaveis Globais
	date_default_timezone_set("Africa/Maputo");
	$mes_actual = strftime('%B');
	$num_mes = strftime(intval(date('M')));
	$semestre_actual = 1;
	if($num_mes <= 6){
		$semestre_actual = 2; // Primeiro Semestre
	}else{
		$semestre_actual = 2; // Segundo Semetre
	}
//  Call for connection
    //Start Session and get info
 $db = BD::conn(); //Done



 if(isset($_GET['task'], $_SESSION['id_util']) && $_GET['task'] == "getNotas"){
	// Get Table Body -> Cadeiras Feitas
			$dir_cadeiras = "";
			$get_cadeirasFeitas = $db->prepare("SELECT
				disciplina.id_disciplina, disciplina.nome_disciplina, disciplina.ano as ano_letivo, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma, e.turno
			FROM
				notas as nota
				INNER JOIN disciplina ON (nota.id_discp = disciplina.id_disciplina)
				INNER JOIN estudante as e on (e.id_est = id_util)
				INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
			WHERE
				e.id_est = ?
				and e.categoria = 'E'
			Order by disciplina.ano desc");
			$get_cadeirasFeitas->execute(array($_SESSION['id_util']));

			while ($cadeiras = $get_cadeirasFeitas->fetchObject()) {
				// Pegar turno do estudante
				if($cadeiras->turno=="M"){
					$turno="Manhã";
				}
				if($cadeiras->turno=="N"){
					$turno="Tarde";
				}
				if($cadeiras->turno=="T"){
					 $turno="Noite";
				}
				// Calcular a notas final;
				// Calculo da media dos Avaliacaoes
                $media_testes = ($cadeiras->teste1 + $cadeiras->teste2) / 2;
                $media_miniTeste = ($cadeiras->mini_teste1 + $cadeiras->mini_teste2) / 2;

                $exame_normal = $cadeiras->exame_normal;
				$exame_recorrencia = $cadeiras->exame_recor;

				// Verificar a nato do ultimo teste realizado
				//$situacao_est = null;
				if($cadeiras->teste1 != ' ' && $cadeiras->teste2 != ' ' && $cadeiras->mini_teste1 != ' ' && $cadeiras->mini_teste2 != ' '){
					$situacao_est = null;
				}

				if($situacao_est == null){
						// Calculo da Nota Final do Estudante
					$nota_final = number_format((($media_testes + $media_miniTeste) / 2), 2, '.', '');
					if($nota_final >= 9.5){
						if($nota_final <= 13.4){

							$nota = $nota_final;
							// Checar nota depois do exame
							if($exame_normal != 0 || $exame_normal != " "){
								if($exame_normal >= 10){
									$situacao_est = "Aprovado no exame";
									$nota_final = number_format((($nota + $exame_normal) / 2), 2, '.', '');

								}
							}
							if($exame_recorrencia != 0 || $exame_recorrencia != " "){
								if($exame_recorrencia >= 10){
									$situacao_est = "Aprovado na Recorrência";
									$nota_final = number_format((($nota + $exame_recorrencia) / 2), 2, '.', '');
								}
                   			}
						}else if($nota_final >= 13.5){
							$situacao_est = "Dispensado";
                        }

						$dir_cadeiras .= "
							<tr>
								<td>2019</td>
								<td>".$cadeiras->nome_disciplina."</td>
								<td>".$cadeiras->ano_letivo."º Ano</td>
								<td>".$cadeiras->semestre."º Semestre</td>
								<td style='text-align:center'>".$cadeiras->turma." / ".$turno."</td>
								<td>".$nota_final."</td>
								<td>".$situacao_est."</td>
								<td><a href='#notas/disciplina/".$cadeiras->nome_disciplina."'><i class='icon-eye position-left'></i> Notas</a></td>
							</tr>";
					}
				}
			}

			if($dir_cadeiras == null){
				$dir_cadeiras = "<tr><td colspan='16' style='text-align:center'>Não foram encontrados resultados</td></tr>";
			}else{
				echo $dir_cadeiras;
			}

 }
