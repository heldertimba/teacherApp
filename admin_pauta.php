<?php

class AdminController{

    private $disciplinas = array();
    private $estudantes = array();
    private $notas = array();
    private $curso = array();

    function __construct($conn){
        $this->conn = $conn;
    }

    // Get
    function getCursos(){
        // Pegar cursos
        $getCursos = $this->conn->prepare('SELECT id_curso, nome_curso FROM curso ORDER BY nome_curso');
        $getCursos->execute(array());

        while ($cursos = $getCursos->fetchObject()) {
            $curso['id_curso'][] = $cursos->id_curso;
            $curso['nome_curso'][] = $cursos->nome_curso;
        }
        return $curso;
    }

    function getDiscplinas($curso, $ano, $semestre){

        $getDsisciplinas = $this->conn->prepare("SELECT Distinct
                curso.id_curso, curso.nome_curso, disciplina.id_disciplina, disciplina.nome_disciplina, semestre, ano
            FROM
                curso_disciplina
                    INNER JOIN
                curso ON (curso.id_curso = curso_disciplina.id_curso)
                    INNER JOIN
                disciplina ON (disciplina.id_disciplina = curso_disciplina.id_disciplina)
            WHERE
                curso.id_curso = ?
                    AND ano = ?
                    AND semestre = ?
            ORDER BY curso.nome_curso");

        $getDsisciplinas->execute(array($curso, $ano, $semestre));

        $disciplinas['rows'] = $getDsisciplinas->rowCount();
        while ($_disciplinas = $getDsisciplinas->fetchObject()) {
            $disciplinas['curso'] = $_disciplinas->nome_curso;
            $disciplinas['id_disc'][] = $_disciplinas->id_disciplina;
            $disciplinas['nome_disc'][] = $_disciplinas->nome_disciplina;
        }

        return $disciplinas;
    }

    function getEstudantes($curso, $ano){
        $getEstudante = $this->conn->prepare('SELECT id_est, nome, apelido FROM estudante WHERE curso = ?');
        $getEstudante->execute(array($curso));

        while ($estudante = $getEstudante->fetchObject()) {
            $estudantes['id_est'][] = $estudante->id_est;
            $estudantes['nome_estudante'][] = $estudante->nome." ".$estudante->apelido;
        }

        return $estudantes;
    }
    private $i = 0;
    function getNotas($id_disc, $id_est){
        $get_notas = $this->conn->prepare("SELECT
             disciplina.id_disciplina, disciplina.nome_disciplina, disciplina.ano as ano_letivo, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma, e.turno, e.nome
            FROM
                notas as nota
                INNER JOIN disciplina ON (nota.id_discp = disciplina.id_disciplina)
                INNER JOIN estudante as e on (e.id_est = id_util)
                INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
            WHERE
                e.id_est = ?
                and e.categoria = 'E'
                and disciplina.id_disciplina = ?");
        $get_notas->execute(array($id_est, $id_disc));


        $e_notas = $get_notas->fetchObject();

            //return "count_rows: ".$get_notas->rowCount()."-- Dis_id: ".$id_disc." -- Est_id: ".$id_est."<br>";
            // Calcular a notas final;
            // Calculo da media dos Avaliacaoes
            $media_testes = ($e_notas->teste1 + $e_notas->teste2) / 2;
            $media_miniTeste = ($e_notas->mini_teste1 + $e_notas->mini_teste2) / 2;

            $exame_normal = $e_notas->exame_normal;
            $exame_recorrencia = $e_notas->exame_recor;

            // Calculo da Nota Final do Estudante
            $nota_final = number_format((($media_testes + $media_miniTeste) / 2), 2, '.', '');
            $media = $nota_final;

            $situacao_est = "Rep";
            $sit_i = "CC";
            if($nota_final <= 13.49 && $nota_final >= 9.5){
                $sit_i = "D";
                $nota = $nota_final;
                // Checar nota depois do exame
                if($exame_normal != 0 || $exame_normal != " "){
                    $nota_dExame = $exame_normal;
                    if($exame_normal < 10){
                        $sit_i = "APE";
                        $situacao_est = "RE";
                        $nota_final = "--";
                    }else{
                        $situacao_est = "AE";
                        $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                    }
                }

                if($exame_recorrencia != 0 || $exame_recorrencia != " "){
                    $nota_Examerec =  $exame_recorrencia;
                    if($exame_recorrencia < 10){
                        $sit_i = "APE";
                        $situacao_est = "RR";
                        $nota_final = "--";
                    }else{
                        $situacao_est = "AR";
                        $nota_final = number_format((($nota + $nota_Examerec) / 2), 2, '.', '');
                    }
                }
            }else if($nota_final >= 13.5){
                $situacao_est = "D";
            }else if($nota_final < 9.5){
                $situacao_est = "R";
            }

            //$dir = $i." - Dis: ".$e_notas->nome_disciplina." -- STI: ".$sit_i." -- MA".$media." --NF: ".$nota_final."</br>";

        //return "Dis: ".$e_notas->nome_disciplina." --Nota: ".$nota_final." --ST: ".$situacao_est." -- Est: ".$e_notas->nome."<br>";

        if($get_notas->rowCount() > 0){
            $RF = $nota_final;
            $mediasArt = $media;

            $respose_notas['resulFinal'] = $RF;
            $respose_notas['mediasArt'] = $mediasArt;
            $respose_notas['notas'] = "<th style='background:#e9ecef73!important'>".$media."</th><td>".$sit_i."</td> <td>".$nota_dExame."</td> <td>".$nota_dExame."</td> <td>".$nota_final."</td> <td>".$situacao_est."</th>";

        }else{
            $RF = $nota_final;
            $respose_notas['resulFinal'] = $RF;
            $respose_notas['mediasArt'] = $mediasArt;
            $respose_notas['notas'] ="<th style='background:#e9ecef73!important'>NAD</th> <td>CC</td><td>--</td> <td>--</td><td>NAD</td> <td>NAD</td>";
        }
        return $respose_notas;
    }

// End Class
}
