<?php

error_reporting(0);
session_start();
 // Conexao com a base de dados
 include("sys_files/config.php");
 require_once("sys_files/BD.class.php");

//  Call for connection
    //Start Session and get info
 $db = BD::conn(); //Done
 // Controlador de lacamentos de notas

 if(isset($_GET['p'], $_GET['id_disciplina'])){
    // Get Table Body -> Lancamentos
    $get_tbody = $db->prepare("SELECT
                e.id_est, e.nome as nome_estudante, disciplina.id_disciplina, e.apelido, disciplina.nome_disciplina, disciplina.ano, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma
            FROM
                notas as nota
                INNER JOIN disciplina ON (id_discp = disciplina.id_disciplina)
                INNER JOIN estudante as e on (e.id_est = id_util)
                INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
            WHERE
                curso.nome_curso = ?
                and nome_disciplina = ?
                and e.turma = ?
                and e.turno = ?
                and e.categoria = 'E'
        order by e.nome;");

    $get_tbody->execute(array($_GET['curso'],$_GET['disciplina'],$_GET['turma'],$_GET['turno']));

    $dir_tbody = "";

    while ($tbody = $get_tbody->fetchObject()) {

        // Calculo da media dos Avaliacaoes
                $media_testes = ($tbody->teste1 + $tbody->teste2) / 2;
                $media_miniTeste = ($tbody->mini_teste1 + $tbody->mini_teste2) / 2;

                $exame_normal = $tbody->exame_normal;
                $exame_recorrencia = $tbody->exame_recor;

                // Calculo da Media do Estudante
                $nota_final = ($media_testes + $media_miniTeste) / 2;

                $situacao_est = "Reprovado";
                if($nota_final <= 13 && $nota_final >= 9.5){
                    $situacao_est = "Aprovado ao Exame";

                    // Checar nota depois do exame
                    if($exame_normal != 0 || $exame_normal != " "){
                        $nota_dExame = $exame_normal;
                        if($exame_normal < 10){
                            $situacao_est = "Reprovado no exame";
                        }else{
                            $situacao_est = "Aprovado no exame";
                            $nota_final = number_format((($nota_final + $nota_dExame) / 2), 2, '.', '');

                        }
                    }

                    if($exame_recorrencia != 0 || $exame_recorrencia != " "){
                        $nota_dExame = $exame_recorrencia;
                        if($exame_recorrencia < 10){
                            $situacao_est = "Reprovado no exame";
                        }else{
                            $situacao_est = "Aprovado No Exame";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                }else if($nota_final >= 13.5){
                    $situacao_est = "Dispensado";
                }else if($nota_final < 9.5){
                    $situacao_est = "Reprovado";
                }

        if($tbody->mini_teste1>0){
            $isReadOnly="readonly='readonly'";
        }else{
			$isReadOnly=" ";
        }

        $dir_tbody .=
        '<tr>
            <td class="sorting_1"><input type="hidden" name="q" value="task"><input type="hidden" name="id_disc" value="'.$tbody->id_disciplina.'"></td>
            <td><input type="hidden" size="1" name="id_estudante[]" value="'.$tbody->id_est.'" bgcolor="white"></td>
            <td>'.$tbody->nome_estudante.' '.$tbody->apelido.'</td>
            <td>'.$tbody->nome_disciplina.'</td>
            <td>'.$tbody->ano.'/'.$tbody->semestre.'</td>
            <td>'.$tbody->turma.'</td>
            <td> <input type="text" readonly="readonly" maxlength="3" size="5" name="teste1" placeholder="'.$tbody->teste1.'" required></td>
            <td> <input type="text" readonly="readonly" maxlength="3" size="5" name="teste2" placeholder="'.$tbody->teste2.'"></td>
            <td> <input type="text" readonly="readonly" maxlength="3" size="5" name="media_test" disabled placeholder="'.$media_testes.'"></td>
            <td> <input type="text" readonly="readonly" size="3" name="mini_teste1" maxlength="5" placeholder="'.$tbody->mini_teste1.'"></td>
            <td> <input type="text" readonly="readonly" size="3" maxlength="5" name="mini_teste2" placeholder="'.$tbody->mini_teste2.'"></td>
            <td> <input type="text" readonly="readonly" size="3" maxlength="5" name="media_test" disabled placeholder="'. $media_miniTeste.'"></td>
            <td> <input type="text" readonly="readonly" size="3" maxlength="5" name="exame_normal" placeholder="'.$tbody->exame_normal.'"></td>
            <td> <input type="text" readonly="readonly" size="3" maxlength="5" name="exame_recorrencia" placeholder="'.$tbody->exame_recor.'"></td>
            <td style="text-align: center">'.$nota_final.'</td>
            <td>'.$situacao_est.'</td>
        </tr>
        ';
    }

    if($dir_tbody == null){
        echo "<tr><td colspan='16' style='text-align:center'>Não foram encontrados resultados</td></tr>";
    }else{
        echo $dir_tbody;
    }
 }

 // Lacamento de dados
  if(isset($_GET['task'], $_GET['id_disciplina'], $_GET['teste'])){

    switch ($_GET['teste']) {
        case "teste1":
            // Get Table Body -> Lancamentos
            $get_tbody = $db->prepare("SELECT
                        e.id_est, e.nome as nome_estudante, disciplina.id_disciplina, e.apelido, disciplina.nome_disciplina, disciplina.ano, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma
                    FROM
                        notas as nota
                        INNER JOIN disciplina ON (id_discp = disciplina.id_disciplina)
                        INNER JOIN estudante as e on (e.id_est = id_util)
                        INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
                    WHERE
                        curso.nome_curso = ?
                        and nome_disciplina = ?
                        and e.turma = ?
                        and e.turno = ?
                        and e.categoria = 'E'
                order by e.nome;");

            $get_tbody->execute(array($_GET['curso'],$_GET['disciplina'],$_GET['turma'],$_GET['turno']));

            $dir_tbody = "";

            while ($tbody = $get_tbody->fetchObject()) {

                // Calculo da media dos Avaliacaoes
                $media_testes = ($tbody->teste1 + $tbody->teste2) / 2;
                $media_miniTeste = ($tbody->mini_teste1 + $tbody->mini_teste2) / 2;

                $exame_normal = $tbody->exame_normal;
                $exame_recorrencia = $tbody->exame_recor;

                // Calculo da Media do Estudante
                $nota_final = ($media_testes + $media_miniTeste) / 2;

                $situacao_est = "Reprovado";
                if($nota_final <= 13 && $nota_final >= 9.5){
                    $situacao_est = "Aprovado ao Exame";
                    $nota = $nota_final;
                    // Checar nota depois do exame
                    if($exame_normal != 0 || $exame_normal != " "){
                        $nota_dExame = $exame_normal;
                        if($exame_normal < 10){
                            $situacao_est = "Reprovado no exame";
                            $nota_final = $nota_dExame;
                        }else{
                             $situacao_est = "Aprovado no exame";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');

                        }
                    }

                    if($exame_recorrencia != 0 || $exame_recorrencia != " "){
                        $nota_dExame = $exame_recorrencia;
                        if($exame_recorrencia < 10){
                            $situacao_est = "Reprovado na Recorrência";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado na Recorrência";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                }else if($nota_final >= 13.5){
                    $situacao_est = "Dispensado";
                }else if($nota_final < 9.5){
                    $situacao_est = "Reprovado";
                }

                if($tbody->teste1>0){
                    $isReadOnly="readonly='readonly'";
                }else{
                    $isReadOnly=" ";
                }

                $dir_tbody .=
                '<tr>
                    <td class="sorting_1">
                    <input type="hidden" name="q" value="task">
                    <input type="hidden" name="id_disc" value="'.$tbody->id_disciplina.'">
                    <input type="hidden" name="type_teste" value="teste1">
                    </td>
                    <td><input type="hidden" size="1" name="id_estudante[]" value="'.$tbody->id_est.'" bgcolor="white"></td>
                    <td>'.$tbody->nome_estudante.' '.$tbody->apelido.'</td>
                    <td>'.$tbody->nome_disciplina.'</td>
                    <td>'.$tbody->ano.'/'.$tbody->semestre.'</td>
                    <td>'.$tbody->turma.'</td>
                    <td class="insert"> <input type="text" '.$isReadOnly.' onkeypress="return Onlynumbers(event)" maxlength="5" size="5" name="notas[]" value="'.$tbody->teste1.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="teste2" placeholder="'.$tbody->teste2.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="media_test" disabled placeholder="'.$media_testes.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="mini_teste1" placeholder="'.$tbody->mini_teste1.'"></td>
                    <td> <input type="text" readonly="readonly" size="3" maxlength="5" name="mini_teste2" placeholder="'.$tbody->mini_teste2.'"></td>
                    <td> <input type="text" readonly="readonly" size="3" maxlength="5" name="media_test" disabled placeholder="'. $media_miniTeste.'"></td>
                    <td> <input type="text" readonly="readonly" size="3" maxlength="5" name="exame_normal" placeholder="'.$tbody->exame_normal.'"></td>
                    <td> <input type="text" readonly="readonly" size="3" maxlength="5" name="exame_recorrencia" placeholder="'.$tbody->exame_recor.'"></td>
                    <td style="text-align: center">'.$nota_final.'</td>
                    <td>'.$situacao_est.'</td>
                </tr>
                ';
            }
                if($dir_tbody == null){
                    echo "<tr><td colspan='16' style='text-align:center'>Não foram encontrados resultados</td></tr>";
                }else{
                    echo $dir_tbody;
                }
            break;
        case "teste2":
            // Get Table Body -> Lancamentos
            $get_tbody = $db->prepare("SELECT
                        e.id_est, e.nome as nome_estudante, disciplina.id_disciplina, e.apelido, disciplina.nome_disciplina, disciplina.ano, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma
                    FROM
                        notas as nota
                        INNER JOIN disciplina ON (id_discp = disciplina.id_disciplina)
                        INNER JOIN estudante as e on (e.id_est = id_util)
                        INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
                    WHERE
                        curso.nome_curso = ?
                        and nome_disciplina = ?
                        and e.turma = ?
                        and e.turno = ?
                        and e.categoria = 'E'
                order by e.nome;");

            $get_tbody->execute(array($_GET['curso'],$_GET['disciplina'],$_GET['turma'],$_GET['turno']));

            $dir_tbody = "";

            while ($tbody = $get_tbody->fetchObject()) {

                // Calculo da media dos Avaliacaoes
                $media_testes = ($tbody->teste1 + $tbody->teste2) / 2;
                $media_miniTeste = ($tbody->mini_teste1 + $tbody->mini_teste2) / 2;

                $exame_normal = $tbody->exame_normal;
                $exame_recorrencia = $tbody->exame_recor;

                // Calculo da Media do Estudante
                $nota_final = ($media_testes + $media_miniTeste) / 2;

                $situacao_est = "Reprovado";
                if($nota_final <= 13 && $nota_final >= 9.5){
                    $situacao_est = "Aprovado ao Exame";
                    $nota = $nota_final;
                    // Checar nota depois do exame
                    if($exame_normal != 0 || $exame_normal != " "){
                        $nota_dExame = $exame_normal;
                        if($exame_normal < 10){
                            $situacao_est = "Reprovado no exame";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado no exame";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                    if($exame_recorrencia != 0 || $exame_recorrencia != " "){
                        $nota_dExame = $exame_recorrencia;
                        if($exame_recorrencia < 10){
                            $situacao_est = "Reprovado na Recorrência";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado na Recorrência";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                }else if($nota_final >= 13.5){
                    $situacao_est = "Dispensado";
                }else if($nota_final < 9.5){
                    $situacao_est = "Reprovado";
                }

                if($tbody->teste2>0){
                    $isReadOnly="readonly='readonly'";
                }else{
                    $isReadOnly=" ";
                }

                $dir_tbody .=
                '<tr>
                    <td class="sorting_1">
                    <input type="hidden" name="q" value="task">
                    <input type="hidden" name="id_disc" value="'.$tbody->id_disciplina.'">
                    <input type="hidden" name="type_teste" value="teste2">
                    </td>
                    <td><input type="hidden" size="1" name="id_estudante[]" value="'.$tbody->id_est.'" bgcolor="white"></td>
                    <td>'.$tbody->nome_estudante.' '.$tbody->apelido.'</td>
                    <td>'.$tbody->nome_disciplina.'</td>
                    <td>'.$tbody->ano.'/'.$tbody->semestre.'</td>
                    <td>'.$tbody->turma.'</td>
                    <td> <input type="text" readonly="readonly" id="teste_1" maxlength="5" size="5" name="teste1" placeholder="'.$tbody->teste1.'"></td>
                    <td class="insert"> <input type="text" '.$isReadOnly.' onkeypress="return Onlynumbers(event)" maxlength="5" size="5" name="notas[]" value="'.$tbody->teste2.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="media_test" disabled placeholder="'.$media_testes.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="mini_teste1" placeholder="'.$tbody->mini_teste1.'" required></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="mini_teste2" placeholder="'.$tbody->mini_teste2.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="media_test" disabled placeholder="'. $media_miniTeste.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="exame_normal" placeholder="'.$tbody->exame_normal.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="exame_recorrencia" placeholder="'.$tbody->exame_recor.'"></td>
                     <td style="text-align: center">'.$nota_final.'</td>
                    <td>'.$situacao_est.'</td>
                </tr>
                ';
            }
                if($dir_tbody == null){
                    echo "<tr><td colspan='16' style='text-align:center'>Não foram encontrados resultados</td></tr>";
                }else{
                    echo $dir_tbody;
                }
                break;
        case "minTeste_1":
            // Get Table Body -> Lancamentos
            $get_tbody = $db->prepare("SELECT
                        e.id_est, e.nome as nome_estudante, disciplina.id_disciplina, e.apelido, disciplina.nome_disciplina, disciplina.ano, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma
                    FROM
                        notas as nota
                        INNER JOIN disciplina ON (id_discp = disciplina.id_disciplina)
                        INNER JOIN estudante as e on (e.id_est = id_util)
                        INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
                    WHERE
                        curso.nome_curso = ?
                        and nome_disciplina = ?
                        and e.turma = ?
                        and e.turno = ?
                        and e.categoria = 'E'
                order by e.nome;");

            $get_tbody->execute(array($_GET['curso'],$_GET['disciplina'],$_GET['turma'],$_GET['turno']));

            $dir_tbody = "";

            while ($tbody = $get_tbody->fetchObject()) {

                // Calculo da media dos Avaliacaoes
                $media_testes = ($tbody->teste1 + $tbody->teste2) / 2;
                $media_miniTeste = ($tbody->mini_teste1 + $tbody->mini_teste2) / 2;

                $exame_normal = $tbody->exame_normal;
                $exame_recorrencia = $tbody->exame_recor;

                // Calculo da Media do Estudante
                $nota_final = ($media_testes + $media_miniTeste) / 2;

                $situacao_est = "Reprovado";
                if($nota_final <= 13 && $nota_final >= 9.5){
                    $situacao_est = "Aprovado ao Exame";
                    $nota = $nota_final;
                    // Checar nota depois do exame
                    if($exame_normal != 0 || $exame_normal != " "){
                        $nota_dExame = $exame_normal;
                        if($exame_normal < 10){
                            $situacao_est = "Reprovado no exame";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado no exame";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                    if($exame_recorrencia != 0 || $exame_recorrencia != " "){
                        $nota_dExame = $exame_recorrencia;
                        if($exame_recorrencia < 10){
                            $situacao_est = "Reprovado na Recorrência";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado na Recorrência";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                }else if($nota_final >= 13.5){
                    $situacao_est = "Dispensado";
                }else if($nota_final < 9.5){
                    $situacao_est = "Reprovado";
                }

                if($tbody->mini_teste1>0){
                    $isReadOnly="readonly='readonly'";
                }else{
                    $isReadOnly=" ";
                }

                $dir_tbody .=
                '<tr>
                    <td class="sorting_1">
                    <input type="hidden" name="q" value="task">
                    <input type="hidden" name="id_disc" value="'.$tbody->id_disciplina.'">
                    <input type="hidden" name="type_teste" value="mini_teste1">
                    </td>
                    <td><input type="hidden" size="1" name="id_estudante[]" value="'.$tbody->id_est.'" bgcolor="white"></td>
                    <td>'.$tbody->nome_estudante.' '.$tbody->apelido.'</td>
                    <td>'.$tbody->nome_disciplina.'</td>
                    <td>'.$tbody->ano.'/'.$tbody->semestre.'</td>
                    <td>'.$tbody->turma.'</td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="teste1" placeholder="'.$tbody->teste1.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="teste2" placeholder="'.$tbody->teste2.'"></td>
                    <td> <input type="text" readonly="readonly" maxlength="3" size="5" name="media_test" disabled placeholder="'.$media_testes.'"></td>
                    <td class="insert"> <input type="text" '.$isReadOnly.' onkeypress="return Onlynumbers(event)"  size="5" name="notas[]" maxlength="5" value="'.$tbody->mini_teste1.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="mini_teste2" placeholder="'.$tbody->mini_teste2.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="media_test" disabled placeholder="'. $media_miniTeste.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="exame_normal" placeholder="'.$tbody->exame_normal.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="exame_recorrencia" placeholder="'.$tbody->exame_recor.'" ></td>
                    <td style="text-align: center">'.$nota_final.'</td>
                    <td>'.$situacao_est.'</td>
                </tr>
                ';
            }
                if($dir_tbody == null){
                    echo "<tr><td colspan='16' style='text-align:center'>Não foram encontrados resultados</td></tr>";
                }else{
                    echo $dir_tbody;
                }
            break;
        case "minTeste_2":
            // Get Table Body -> Lancamentos
            $get_tbody = $db->prepare("SELECT
                        e.id_est, e.nome as nome_estudante, disciplina.id_disciplina, e.apelido, disciplina.nome_disciplina, disciplina.ano, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma
                    FROM
                        notas as nota
                        INNER JOIN disciplina ON (id_discp = disciplina.id_disciplina)
                        INNER JOIN estudante as e on (e.id_est = id_util)
                        INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
                    WHERE
                        curso.nome_curso = ?
                        and nome_disciplina = ?
                        and e.turma = ?
                        and e.turno = ?
                        and e.categoria = 'E'
                order by e.nome;");

            $get_tbody->execute(array($_GET['curso'],$_GET['disciplina'],$_GET['turma'],$_GET['turno']));

            $dir_tbody = "";

            while ($tbody = $get_tbody->fetchObject()) {

               // Calculo da media dos Avaliacaoes
                $media_testes = ($tbody->teste1 + $tbody->teste2) / 2;
                $media_miniTeste = ($tbody->mini_teste1 + $tbody->mini_teste2) / 2;

                $exame_normal = $tbody->exame_normal;
                $exame_recorrencia = $tbody->exame_recor;

                // Calculo da Media do Estudante
                $nota_final = ($media_testes + $media_miniTeste) / 2;

                $situacao_est = "Reprovado";
                if($nota_final <= 13 && $nota_final >= 9.5){
                    $situacao_est = "Aprovado ao Exame";
                    $nota = $nota_final;
                    // Checar nota depois do exame
                    if($exame_normal != 0 || $exame_normal != " "){
                        $nota_dExame = $exame_normal;
                        if($exame_normal < 10){
                            $situacao_est = "Reprovado no exame";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado no exame";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                    if($exame_recorrencia != 0 || $exame_recorrencia != " "){
                        $nota_dExame = $exame_recorrencia;
                        if($exame_recorrencia < 10){
                            $situacao_est = "Reprovado na Recorrência";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado na Recorrência";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                }else if($nota_final >= 13.5){
                    $situacao_est = "Dispensado";
                }else if($nota_final < 9.5){
                    $situacao_est = "Reprovado";
                }
                if($tbody->mini_teste2>0){
                    $isReadOnly="readonly='readonly'";
                }else{
                    $isReadOnly=" ";
                }

                $dir_tbody .=
                '<tr>
                    <td class="sorting_1">
                    <input type="hidden" name="q" value="task">
                    <input type="hidden" name="id_disc" value="'.$tbody->id_disciplina.'">
                    <input type="hidden" name="type_teste" value="mini_teste2">
                    </td>
                    <td><input type="hidden" size="1" name="id_estudante[]" value="'.$tbody->id_est.'" bgcolor="white"></td>
                    <td>'.$tbody->nome_estudante.' '.$tbody->apelido.'</td>
                    <td>'.$tbody->nome_disciplina.'</td>
                    <td>'.$tbody->ano.'/'.$tbody->semestre.'</td>
                    <td>'.$tbody->turma.'</td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="teste1" placeholder="'.$tbody->teste1.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="teste2" placeholder="'.$tbody->teste2.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="3" name="media_test" disabled placeholder="'.$media_testes.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" name="mini_teste1" maxlength="5" placeholder="'.$tbody->mini_teste1.'"></td>
                    <td class="insert"> <input type="text" '.$isReadOnly.' onkeypress="return Onlynumbers(event)"  size="5" maxlength="5" name="notas[]" value="'.$tbody->mini_teste2.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="media_test" disabled placeholder="'. $media_miniTeste.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="exame_normal" placeholder="'.$tbody->exame_normal.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="exame_recorrencia" placeholder="'.$tbody->exame_recor.'"></td>
                     <td style="text-align: center">'.$nota_final.'</td>
                    <td>'.$situacao_est.'</td>
                </tr>
                ';
            }
                if($dir_tbody == null){
                    echo "<tr><td colspan='16' style='text-align:center'>Não foram encontrados resultados</td></tr>";
                }else{
                    echo $dir_tbody;
                }
            break;
        case "exame_normal":
            // Get Table Body -> Lancamentos
            $get_tbody = $db->prepare("SELECT
                        e.id_est, e.nome as nome_estudante, disciplina.id_disciplina, e.apelido, disciplina.nome_disciplina, disciplina.ano, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma
                    FROM
                        notas as nota
                        INNER JOIN disciplina ON (id_discp = disciplina.id_disciplina)
                        INNER JOIN estudante as e on (e.id_est = id_util)
                        INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
                    WHERE
                        curso.nome_curso = ?
                        and nome_disciplina = ?
                        and e.turma = ?
                        and e.turno = ?
                        and e.categoria = 'E'
                order by e.nome;");

            $get_tbody->execute(array($_GET['curso'],$_GET['disciplina'],$_GET['turma'],$_GET['turno']));

            $dir_tbody = "";

            while ($tbody = $get_tbody->fetchObject()) {

                // Calculo da media dos Avaliacaoes
                $media_testes = ($tbody->teste1 + $tbody->teste2) / 2;
                $media_miniTeste = ($tbody->mini_teste1 + $tbody->mini_teste2) / 2;

                $exame_normal = $tbody->exame_normal;
                $exame_recorrencia = $tbody->exame_recor;

                // Calculo da Media do Estudante
                $nota_final = ($media_testes + $media_miniTeste) / 2;

                $situacao_est = "Reprovado";
                if($nota_final <= 13 && $nota_final >= 9.5){
                    $situacao_est = "Aprovado ao Exame";
                    $nota = $nota_final;
                    // Checar nota depois do exame
                    if($exame_normal != 0 || $exame_normal != " "){
                        $nota_dExame = $exame_normal;
                        if($exame_normal < 10){
                            $situacao_est = "Reprovado no exame";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado no exame";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                    if($exame_recorrencia != 0 || $exame_recorrencia != " "){
                        $nota_dExame = $exame_recorrencia;
                        if($exame_recorrencia < 10){
                            $situacao_est = "Reprovado na Recorrência";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado na Recorrência";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                }else if($nota_final >= 13.5){
                    $situacao_est = "Dispensado";
                }else if($nota_final < 9.5){
                    $situacao_est = "Reprovado";
                }

                if($tbody->exame_normal>0){
                    $isReadOnly="readonly='readonly'";
                }else{
                    $isReadOnly=" ";
                }

                $dir_tbody .=
                '<tr>
                    <td class="sorting_1">
                    <input type="hidden" name="q" value="task">
                    <input type="hidden" name="id_disc" value="'.$tbody->id_disciplina.'">
                    <input type="hidden" name="type_teste" value="exame_normal">
                    </td>
                    <td><input type="hidden" size="1" name="id_estudante[]" value="'.$tbody->id_est.'" bgcolor="white"></td>
                    <td>'.$tbody->nome_estudante.' '.$tbody->apelido.'</td>
                    <td>'.$tbody->nome_disciplina.'</td>
                    <td>'.$tbody->ano.'/'.$tbody->semestre.'</td>
                    <td>'.$tbody->turma.'</td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="teste1" placeholder="'.$tbody->teste1.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="teste2" placeholder="'.$tbody->teste2.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="3" name="media_test" disabled placeholder="'.$media_testes.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="mini_teste1" placeholder="'.$tbody->mini_teste1.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="mini_teste2" placeholder="'.$tbody->mini_teste2.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="media_test" disabled placeholder="'. $media_miniTeste.'"></td>
                    <td class="insert"> <input type="text" '.$isReadOnly.' onkeypress="return Onlynumbers(event)" size="5" maxlength="5" name="notas[]" value="'.$tbody->exame_normal.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="exame_recorrencia" placeholder="'.$tbody->exame_recor.'"></td>
                     <td style="text-align: center">'.$nota_final.'</td>
                    <td>'.$situacao_est.'</td>
                </tr>
                ';
            }
                if($dir_tbody == null){
                    echo "<tr><td colspan='16' style='text-align:center'>Não foram encontrados resultados</td></tr>";
                }else{
                    echo $dir_tbody;
                }
            break;
        case "exame_rec":
            // Get Table Body -> Lancamentos
            $get_tbody = $db->prepare("SELECT
                        e.id_est, e.nome as nome_estudante, disciplina.id_disciplina, e.apelido, disciplina.nome_disciplina, disciplina.ano, disciplina.semestre, nota.teste1, nota.teste2, nota.mini_teste1, nota.mini_teste2, nota.exame_normal, nota.exame_recor, e.turma
                    FROM
                        notas as nota
                        INNER JOIN disciplina ON (id_discp = disciplina.id_disciplina)
                        INNER JOIN estudante as e on (e.id_est = id_util)
                        INNER JOIN curso as curso on (curso.id_curso = nota.id_curso)
                    WHERE
                        curso.nome_curso = ?
                        and nome_disciplina = ?
                        and e.turma = ?
                        and e.turno = ?
                        and e.categoria = 'E'
                order by e.nome;");

            $get_tbody->execute(array($_GET['curso'],$_GET['disciplina'],$_GET['turma'],$_GET['turno']));

            $dir_tbody = "";

            while ($tbody = $get_tbody->fetchObject()) {

                // Calculo da media dos Avaliacaoes
                $media_testes = ($tbody->teste1 + $tbody->teste2) / 2;
                $media_miniTeste = ($tbody->mini_teste1 + $tbody->mini_teste2) / 2;

                $exame_normal = $tbody->exame_normal;
                $exame_recorrencia = $tbody->exame_recor;

                // Calculo da Media do Estudante
                $nota_final = ($media_testes + $media_miniTeste) / 2;

                $situacao_est = "Reprovado";
                if($nota_final <= 13 && $nota_final >= 9.5){
                    $situacao_est = "Aprovado ao Exame";
                    $nota = $nota_final;
                    // Checar nota depois do exame
                    if($exame_normal != 0 || $exame_normal != " "){
                        $nota_dExame = $exame_normal;
                        if($exame_normal < 10 ){
                            $situacao_est = "Reprovado no exame";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado no exame";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                    if($exame_recorrencia != 0 || $exame_recorrencia != " "){
                        $nota_dExame = $exame_recorrencia;
                        $nota_final = $nota_final;
                        if($exame_recorrencia < 10){
                            $situacao_est = "Reprovado na Recorrência";
                            $nota_final = $nota_dExame;
                        }else{
                            $situacao_est = "Aprovado na Recorrência";
                            $nota_final = number_format((($nota + $nota_dExame) / 2), 2, '.', '');
                        }
                    }

                }else if($nota_final >= 13.5){
                    $situacao_est = "Dispensado";
                }else if($nota_final < 9.5){
                    $situacao_est = "Reprovado";
                }

                if($tbody->exame_recor>0){
                    $isReadOnly="readonly='readonly'";
                }else{
                    $isReadOnly=" ";
                }

                $dir_tbody .=
                '<tr>
                    <td class="sorting_1">
                    <input type="hidden" name="q" value="task">
                    <input type="hidden" name="id_disc" value="'.$tbody->id_disciplina.'">
                    <input type="hidden" name="type_teste" value="exame_recor">
                    </td>
                    <td><input type="hidden" size="1" name="id_estudante[]" value="'.$tbody->id_est.'" bgcolor="white"></td>
                    <td>'.$tbody->nome_estudante.' '.$tbody->apelido.'</td>
                    <td>'.$tbody->nome_disciplina.'</td>
                    <td>'.$tbody->ano.'/'.$tbody->semestre.'</td>
                    <td>'.$tbody->turma.'</td>
                    <td> <input type="text"  readonly="readonly" id="teste_1" maxlength="5" size="5" name="teste1" placeholder="'.$tbody->teste1.'"></td>
                    <td> <input type="text" readonly="readonly" maxlength="5" size="5" name="teste2" placeholder="'.$tbody->teste2.'"></td>
                    <td> <input type="text" readonly="readonly" maxlength="3" size="5" name="media_Testes" disabled placeholder="'.$media_testes.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" name="mini_teste1" maxlength="5" placeholder="'.$tbody->mini_teste1.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="mini_teste2" placeholder="'.$tbody->mini_teste2.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="media_miniTestes" disabled placeholder="'. $media_miniTeste.'"></td>
                    <td> <input type="text" readonly="readonly" size="5" maxlength="5" name="exame_normal" placeholder="'.$tbody->exame_normal.'"></td>
                    <td class="insert"> <input type="text" '.$isReadOnly.' onkeypress="return Onlynumbers(event)" size="5" maxlength="5" name="notas[]" value="'.$tbody->exame_recor.'"></td>
                    <td style="text-align: center">'.$nota_final.'</td>
                    <td>'.$situacao_est.'</td>
                </tr>
                ';
            }
                if($dir_tbody == null){
                    echo "<tr><td colspan='16' style='text-align:center'>Não foram encontrados resultados</td></tr>";
                }else{
                    echo $dir_tbody;
                }
            break;
        default:
            break;
    }
  }



 //indetify_type de Test
 if(isset($_POST['q'])){

    $id_estudante=$_POST['id_estudante'];
    $notas=$_POST['notas'];
    $teste_type = $_POST['type_teste'];
    $id_disciplina=$_POST['id_disc'];

    $success = false;
    $index = 0;
    foreach ($id_estudante as $id_estudante) {

        // Check user

        $check_user = $db->prepare("SELECT * FROM estudante WHERE id_est = ?");
        $check_user->execute(array($id_estudante));

        while ($get_user = $check_user->fetchObject()) {

            // Gravar Nota -> User
            $postNotas = $db->prepare("UPDATE notas set ".$teste_type." = ? where id_util = ? and id_discp = ?");
            if($postNotas->execute(array($notas[$index], $id_estudante, $id_disciplina))){
                $success = true;

            }else{
                $success = false;
            }
        }

        $index++;
    }

    if($success){
        echo "<script>alert('DADOS GRAVADOS COM SUCESSO!')</script>";
    }else{
        echo "<script>alert('ERRO AO SALVAR OS DADOS')</script>";
    }
     // save Notas

 }


/*


*/

?>
