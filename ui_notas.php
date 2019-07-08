<?php

	error_reporting();
    //Start Session and get info
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
 $db = BD::conn(); //Done



 if(isset($_GET['task'], $_SESSION['id_util']) && $_GET['task'] == "getNotas"){

	// Get Table Body -> Notas
            $get_notas = $db->prepare("SELECT
				disciplina.id_disciplina, disciplina.nome_disciplina, disciplina.ano as ano_letivo, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma, e.turno
                FROM
                    notas as nota
                    INNER JOIN disciplina ON (nota.id_discp = disciplina.id_disciplina)
                    INNER JOIN estudante as e on (e.id_est = id_util)
                    INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
                WHERE
                    e.id_est = ?
                    and e.categoria = 'E'
                    and disciplina.semestre = ?
                    ");

			$get_notas->execute(array($_SESSION['id_util'], $semestre_actual));

			$dir_notas = "";

			while ($e_notas = $get_notas->fetchObject()) {
				// Pegar turno do estudante

				if($e_notas->turno=="M"){
					$turno="Manhã";
				}
				if($e_notas->turno=="N"){
					$turno="Tarde";
				}
				if($e_notas->turno=="T"){
					 $turno="Noite";
				}


				// Calcular a notas final;
				// Calculo da media dos Avaliacaoes
                $media_testes = ($e_notas->teste1 + $e_notas->teste2) / 2;
                $media_miniTeste = ($e_notas->mini_teste1 + $e_notas->mini_teste2) / 2;

                $exame_normal = $e_notas->exame_normal;
				$exame_recorrencia = $e_notas->exame_recor;

                // Calculo da Nota Final do Estudante
				$nota_final = number_format((($media_testes + $media_miniTeste) / 2), 2, '.', '');

				// Verificar a nato do ultimo teste realizado
				$situacao_est = "Cadeira em Curso";

				if($e_notas->teste1 == null){
					$situacao_est = "Cadeira em Curso";
				}


				if($e_notas->teste1 != null || $e_notas->teste2 != null || $e_notas->mini_teste1 != null || $e_notas->mini_teste2 != null){
					$nota_final = $e_notas->mini_teste2." (Mini Teste 2)";
					$situacao_est = "Cadeira em Curso";
					$isDone =false;

				}if($e_notas->teste1 != null && $e_notas->teste2 != null && $e_notas->mini_teste1 != null && $e_notas->mini_teste2 != null && $e_notas->exame_normal != null && $e_notas->exame_recor != null){
					$situacao_est = false;
					$nota_final = number_format((($media_testes + $media_miniTeste) / 2), 2, '.', '');
				}

				if($situacao_est == false){
					// Calculo de Notas
					if($nota_final <= 13.49 && $nota_final >= 9.5){
						$situacao_est = "Aprovado ao Exame";
						$nota = $nota_final;
						// Checar nota depois do exame
						if($exame_normal != 0 || $exame_normal != " "){
							if($exame_normal < 10){
								$situacao_est = "Reprovado no exame";
								$nota_final = $exame_normal;
							}else{
								$situacao_est = "Aprovado no exame";
								$nota_final = number_format((($nota + $exame_normal) / 2), 2, '.', '');

							}
						}

						if($exame_recorrencia != 0 || $exame_recorrencia != " "){
							if($exame_recorrencia < 10){
								$situacao_est = "Reprovado na Recorrência";
								$nota_final = $exame_recorrencia;
							}else{
								$situacao_est = "Aprovado na Recorrência";
								$nota_final = number_format((($nota + $exame_recorrencia) / 2), 2, '.', '');

							}
						}

					}else if($nota_final >= 13.5){
						$situacao_est = "Dispensado";
					}else if($nota_final < 9.5){
						//$situacao_est = "Reprovado";
						if(!$isDone){
							$situacao_est = "Cadeira em Curso";
						}
					}

					$dir_notas .= "
						<tr>
							<td>2019</td>
							<td>".$e_notas->nome_disciplina."</td>
							<td>".$e_notas->ano_letivo."º Ano</td>
							<td>".$e_notas->semestre."º Semestre</td>
							<td style='text-align:center'>".$e_notas->turma." / ".$turno."</td>
							<td>".$nota_final."</td>
							<td>".$situacao_est."</td>
							<td><a href='#notas/disciplina/".$e_notas->nome_disciplina."'><i class='icon-eye position-left'></i> Notas</a></td>
						</tr>";
				}
			}


			if($dir_notas == null){
				$dir_notas = "<tr><td colspan='16' style='text-align:center'>Não foram encontrados resultados</td></tr>";
			}else{
				echo $dir_notas;
			}
 }


 if(isset($_GET['task'], $_SESSION['id_util'], $_GET['nome_disciplina']) && $_GET['task'] == "getNotaDisc"){
		 header('Content-Type:'. "application/json");
		// Get Table Body -> Notas
            $get_notas = $db->prepare("SELECT
				disciplina.id_disciplina, disciplina.nome_disciplina, disciplina.ano as ano_letivo, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma, e.turno
                FROM
                    notas as nota
                    INNER JOIN disciplina ON (nota.id_discp = disciplina.id_disciplina)
                    INNER JOIN estudante as e on (e.id_est = id_util)
                    INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
                WHERE
                    e.id_est = ?
                    and e.categoria = 'E'
                    and disciplina.nome_disciplina = ?
                    ");

			$get_notas->execute(array($_SESSION['id_util'], $_GET['nome_disciplina']));



			while ($e_notas = $get_notas->fetchObject()) {
				// Calcular a notas final;
				// Calculo da media dos Avaliacaoes
                $media_testes = ($e_notas->teste1 + $e_notas->teste2) / 2;
                $media_miniTeste = ($e_notas->mini_teste1 + $e_notas->mini_teste2) / 2;

                $exame_normal = $e_notas->exame_normal;
				$exame_recorrencia = $e_notas->exame_recor;

                // Calculo da Nota Final do Estudante
				$nota_final = number_format((($media_testes + $media_miniTeste) / 2), 2, '.', '');

				// Verificar a nato do ultimo teste realizado
				$situacao_est = "Cadeira em Curso";

				if($e_notas->teste1 == null){
					$situacao_est = "Cadeira em Curso";
				}


				if($e_notas->teste1 != null || $e_notas->teste2 != null || $e_notas->mini_teste1 != null || $e_notas->mini_teste2 != null){
					$nota_final = $e_notas->mini_teste2." (Mini Teste 2)";
					$situacao_est = "Cadeira em Curso";
					$isDone =false;

				}if($e_notas->teste1 != null && $e_notas->teste2 != null && $e_notas->mini_teste1 != null && $e_notas->mini_teste2 != null && $e_notas->exame_normal != null && $e_notas->exame_recor != null){
					$situacao_est = false;
					$nota_final = number_format((($media_testes + $media_miniTeste) / 2), 2, '.', '');
				}

				if($situacao_est == false){
					// Calculo de Notas
					if($nota_final <= 13.49 && $nota_final >= 9.5){
						$situacao_est = "Aprovado ao Exame";
						$nota = $nota_final;
						// Checar nota depois do exame
						if($exame_normal != 0 || $exame_normal != " "){
							if($exame_normal < 10){
								$situacao_est = "Reprovado no exame";
								$nota_final = $exame_normal;
							}else{
								$situacao_est = "Aprovado no exame";
								$nota_final = number_format((($nota + $exame_normal) / 2), 2, '.', '');

							}
						}

						if($exame_recorrencia != 0 || $exame_recorrencia != " "){
							if($exame_recorrencia < 10){
								$situacao_est = "Reprovado na Recorrência";
								$nota_final = $exame_recorrencia;
							}else{
								$situacao_est = "Aprovado na Recorrência";
								$nota_final = number_format((($nota + $exame_recorrencia) / 2), 2, '.', '');

							}
						}

					}else if($nota_final >= 13.5){
						$situacao_est = "Dispensado";
					}else if($nota_final < 9.5){
						//$situacao_est = "Reprovado";
						if(!$isDone){
							$situacao_est = "Cadeira em Curso";
						}
					}

					$json_notas = array(
						'teste1' => $e_notas->teste1,
						'teste2' => $e_notas->teste2,
						'miniTeste1' => $e_notas->mini_teste1,
						'miniTeste2' => $e_notas->mini_teste2,
						'exame_normal' => $e_notas->exame_normal,
						'exame_recor' => $e_notas->exame_recor,
						'nota_final' => $nota_final,
						'observacao' => $situacao_est
					);
				}
			}
		if($json_notas != null){
			echo json_encode($json_notas);
		}else{
			echo json_encode([
			'response' => false,
			'msg' => "Nenhuma Informação por apresentar!"
			]);
		}

	}


