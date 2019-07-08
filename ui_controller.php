<?php

 header('Content-Type:'. "application/json");

error_reporting();
//Start Session and get info
session_start();

// Conexao com a base de dados
include("../sys_files/config.php");
require_once("../sys_files/BD.class.php");

//  Call for connection
 $db = BD::conn(); //Done

if(isset($_GET['task'], $_SESSION['id_util']) && $_GET['task'] == "getEinfo"){

    /**
     * Get Info
     */

    $get_info = $db->prepare("");

    /**
     * Starting info query
     */

     // Global
     $nome_estudate = null;
     $curso_estudante = null;
     $preco_curso = null;
     $mensalidade_status = false;

    $get_infoP = $db->prepare("SELECT
            nome as est_nome, apelido as est_apelido, filiacao, contacto, email, curso, turma, estudante.turno, custo as mensalidade
        FROM estudante
            inner join curso_preco
        Where id_est = ?
            and curso_preco.nome_curso = ?
        "
        );
    $get_infoP->execute(array($_SESSION['id_util'], $_GET['curso']));

    while ($infoEstudante = $get_infoP->fetchObject()) {

        if($infoEstudante->turno=="M"){
			$turno="Manhã";
		}
		if($infoEstudante->turno=="N"){
			$turno="Tarde";
		}
		if($infoEstudante->turno=="T"){
            $turno="Noite";
		}

        $json_infoPessoal = array(
            'estudante_nome' => $infoEstudante->est_nome,
            'estudante_apelido' => $infoEstudante->est_apelido,
            'estudante_contacto' => $infoEstudante->contacto,
            'estudante_email' => $infoEstudante->email,
            'estudante_filiacao' => $infoEstudante->filiacao,
        );

        $json_infoAcademica = array(
            'estudante_curso' => $infoEstudante->curso,
            'estudante_codigo' => "#254687",
            'estudante_anoCurricular' => '2 Ano',
            'estudante_turno' => $turno,
            'estudante_turma' => $infoEstudante->turma,
        );

        $nome_estudate = $infoEstudante->est_nome. " ". $infoEstudante->est_apelido;
        $curso_estudante = $infoEstudante->curso;
        $preco_curso = $infoEstudante->mensalidade;
    }

/**
 * ===================================================
 *              End informcao academica e pessoal
 * ===================================================
 * **/




    $get_infoF = $db->prepare("SELECT
            id_mensalidade, estudante.codigo as codigo_estudante, mensalidade.ano, taxa.taxa_multa, mensalidade.semestre, mes1, mes2, mes3, mes4, mes5, mes6, mes7, mes8, mes9, mes10, mes11, custo as mensalidade, data_pagamento, status_pag
        FROM
            mensalidade
            inner join estudante on (estudante.id_est = mensalidade.id_util)
            inner join curso_preco
            inner join taxas as taxa on (mensalidade.taxa_multa = taxa.id)
        WHERE mensalidade.id_util = ?
            and curso_preco.turno = estudante.turno
            and curso_preco.nome_curso = ?
        ");
    $get_infoF->execute(array($_SESSION['id_util'], $_GET['curso']));

    while ($infoFinancas = $get_infoF->fetchObject()) {

        if($infoFinancas->status_pag == false){
            $mensalidade_status = false;
            $infoFinanceira[] = array(
                'estudante_nome' =>  $nome_estudate,
                'estundate_curso' => $curso_estudante,
                'f_valor' => number_format(($infoFinancas->mensalidade),2).' Mts',
                'f_multa' => $infoFinancas->taxa_multa,
                'f_mes' => "Fevereiro",
                'f_valorPagar' => number_format(($infoFinancas->mensalidade * (1 + $infoFinancas->taxa_multa)), 2).' Mts',
                'f_estado' => 'Pagamento Pedente'
            );
        }else{
            $mensalidade_status = true;
            $infoFinanceira[] = array(
                'estudante_nome' =>  $nome_estudate,
                'estundate_curso' => $curso_estudante,
                'f_valor' => number_format(($infoFinancas->mensalidade),2).' Mts',
                'f_multa' => $infoFinancas->taxa_multa,
                'f_mes' => "Fevereiro",
                'f_valorPagar' => number_format(($infoFinancas->mensalidade * (1 + $infoFinancas->taxa_multa)), 2).' Mts',
                'f_estado' => 'Pago'
            );
        }


    }

    if($infoFinanceira == null){
        $mensalidade_status = false;
        $json_infoFinanceira = array(
           "Success" => true,
            'response' => [
                [
                    'estudante_nome' =>  $nome_estudate,
                    'estundate_curso' => $curso_estudante,
                    'f_valor' =>  number_format(($preco_curso), 2).' Mts',
                    'f_multa' => '--',
                    'f_mes' => "Fevereiro",
                    'f_valorPagar' => number_format(($preco_curso), 2).' Mts',
                    'f_estado' => 'Pagamento Pedente'
                ]
            ]
        );
    }else{
        $json_infoFinanceira = array(
           "Success" => true,
            'response' => $infoFinanceira
        );
    }

    $situacao_fin = array(
        'status' => $mensalidade_status,
        'num_meses' => '2',
        'divida' => 'valor',
        'multa' => 'X%'
    );

    $response = array(
        'informacaoPessoal' => $json_infoPessoal,
        'informacaoAcademica' => $json_infoAcademica,
        'infoFinanceira' => $json_infoFinanceira,
        "mensalidade" => $situacao_fin
    );

    echo json_encode($response);

}else{
    $response = json_encode([
        "Success" => false,
        "report" => "Não está autorizado a ver essa pagina!"
    ]);

    echo $response;
}
