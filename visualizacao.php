
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>TeacherApp</title>

    <!-- Page Description, Author and Keywords -->
    <meta name="description" content="Class Teacher App">
    <meta name="author" content="Helder Timba">
	<meta name="keywords" content="Escola, School" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="http://localhost:8081/suc/images/favicons/dc/favicon.png">
	
        <!-- Global stylesheets -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
        <link href="assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
        <link href="assets/css/minified/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/minified/core.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/minified/components.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/minified/colors.min.css" rel="stylesheet" type="text/css">
        <!-- /global stylesheets -->

        <!-- Core JS files -->
        <script type="text/javascript" src="assets/js/plugins/loaders/pace.min.js"></script>
        <script type="text/javascript" src="assets/js/core/libraries/jquery.min.js"></script>
        <script type="text/javascript" src="assets/js/core/libraries/bootstrap.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/loaders/blockui.min.js"></script>
        <!-- /core JS files -->

        <!-- Theme JS files -->
        <script type="text/javascript" src="assets/js/plugins/forms/styling/uniform.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/forms/styling/switchery.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/forms/styling/switch.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/tables/datatables/datatables.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/tables/datatables/extensions/responsive.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/forms/selects/select2.min.js"></script>
        <script type="text/javascript" src="assets/js/pages/form_layouts.js"></script>

        <script type="text/javascript" src="assets/js/core/app.js"></script>
        <!-- /theme JS files -->

        <!-- /theme JS files -->

        <!-- Velocity animation  menu -->
        <script type="text/javascript" src="assets/js/plugins/velocity/velocity.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/velocity/velocity.ui.min.js"></script>
        <script>

            $(function () {

                // Animated dropdowns
                // ------------------------------

                //
                // Velocity animations
                //

                // Open
                $('.dropdown-velocity, .btn-group-velocity').on('show.bs.dropdown', function (e) {
                    $(this).find('.dropdown-menu').velocity('transition.slideUpIn', {
                        duration: 200
                    });
                });

                // Close
                $('.dropdown-velocity, .btn-group-velocity').on('hide.bs.dropdown', function (e) {
                    $(this).find('.dropdown-menu').velocity('transition.slideLeftOut', {
                        duration: 200,
                        complete: function () {
                            $(this).removeAttr('style');
                        }
                    });
                });

            });

        </script>
 
        <script type="text/javascript" src="assets/js/pages/datatables_responsive.js"></script>
        <!-- /theme JS files -->

    </head>

    <body oncontextmenu="return false">





        <!-- Main navbar -->
        <div class="navbar navbar-inverse">
            <div class="navbar-header">
                <h5 class="text-semibold class text-uppercase" style="margin-left: 2em;">TeacherApp </h5>

                <ul class="nav navbar-nav visible-xs-block">
                    <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
                    <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
                </ul>
            </div>


        </div>
        <!-- /main navbar -->



        <!-- Page header -->
        <div class="page-header">
            


            <div class="page-header-content">
			<div class="page-title">
			
			<br>
				<br>

				
			</div>

                <div class="heading-elements">
                    <div class="heading-btn-group">
                        <form method="post" action="home.php">
                            <button type="submit" class="btn btn-labeled btn-labeled-left bg-danger-400 heading-btn">Main<b><i class="icon-chevron-left"></i></b></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page header -->



        <!-- Page container -->
        <div class="page-container">

            <!-- Page content -->
            <div class="page-content">

			<?php
include('conexao.php');


$id=$_GET['id_util'];
$sql = "SELECT * FROM utilizador WHERE id_util='$id'";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){   
				$id=$row['id_util'];
				
                $nome=utf8_encode($row['nome']." ".$row['apelido']);
				$data_nascimento = $row['data_nascimento'];
				$sexo= $row['sexo'];
				$filiacao= utf8_encode($row['filiacao']);
				$tipo_doc= $row['tipo_doc'];
				$num_doc= $row['num_doc'];
				$local_residencia= $row['local_residencia'];
				$estado_civil= $row['estado_civil'];
				$contacto= $row['contacto'];
				$email= $row['email'];
				$curso= $row['curso'];
				$turma= $row['turma'];
				$turno= $row['turno'];
				$foto= $row['foto'];
				$area= $row['area'];
				$categoria= $row['categoria'];
				$experiencia= $row['experiencia'];
				$nivel= $row['nivel'];
				$formacao= $row['formacao'];
				$formacao2= $row['formacao2'];
				$regime= $row['regime'];
				$disciplinas= $row['disciplinas'];
				$datal= $row['datal'];
				$anexo1= $row['anexo1'];	
				$anexo2= $row['anexo2'];	
				$anexo3= $row['anexo3'];					
        }		
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($mysqli);
}
mysqli_close($mysqli);
?>



                <!-- Main content -->
                <div class="content-wrapper">


                    <div class = "row">

                        <div class = "col-md-10 col-md-offset-1">

                            <!-- User profile -->
                            <div class="row">


                                <div class="col-lg-3">

                                    <!-- User thumbnail -->
                                    <div class="thumbnail">
                                        <div class="thumb thumb-rounded thumb-slide">
                                            
                                        </div>

                                        <div class="caption text-center">
                                            <h6 class="text-semibold no-margin"><?php echo  $nome;?> <small class="display-block"><?php echo $nivel; ?></small></h6>
                                            <ul class="icons-list mt-15">
                                                <li><a href="<?php echo $anexo1;?>" data-popup="tooltip" title="Anexo 1"><i class="icon-attachment"></i></a></li>
                                                <li><a href="<?php echo $anexo2;?>" data-popup="tooltip" title="Anexo 2"><i class="icon-attachment"></i></a></li>
                                                <li><a href="<?php echo $anexo3;?>" data-popup="tooltip" title="Anexo 3"><i class="icon-attachment"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /user thumbnail -->
									
									
                                    <!-- Navigation -->
                                    <div class="panel panel-flat">
                                        <div class="panel-heading">
                                            <h6 class="panel-title text-blue-800 text-bold">Resumo do usuário</h6>
                                        </div>

                                        <div class="list-group list-group-borderless no-padding-top">

                                            <a href="#" class="list-group-item"><i class="icon-users4"></i> <strong>Grupo</strong> <span class="badge bg-gray pull-right"><?php if($categoria=='D'){ echo "Docente";}  if($categoria=='E'){ echo "Estudante";}?></span></a>
                                            <a href="#" class="list-group-item"><i class="icon-info22"></i> <strong>Estado</strong> <span class="badge bg-success pull-right">Activo</span></a>
                                            <a href="#" class="list-group-item"><i class="icon-calendar2"></i> <strong>Data de Criação</strong>  <span class="badge bg-success pull-right"><?php echo $datal; ?></span></a>
                                            <a href="#" class="list-group-item"><i class="icon-calendar52"></i>  <strong>Data do Últ. Login</strong>  <span class="badge bg-danger pull-right">2017-01-29</span></a>
                                            <a href="#" class="list-group-item"><i class="icon-info22"></i>  <strong>Nº Logins</strong>  <span class="badge bg-teal gray pull-right">36</span></a>

                                        </div>
                                    </div>
                                    <!-- /navigation -->

<?php
                               
if($categoria=='E'){						   
                                    echo  "<div class='panel panel-flat'>";
                                     echo "<div class='panel-heading'>";
                                     echo "<h6 class='panel-title text-bold text-blue-800'>Resumo da Inscrição</h6>";
                                     echo "</div>";

                                     echo "<div class'list-group list-group-borderless no-padding-top'>";

                                     echo "<a href='#' class='list-group-item'> <strong>Curso</strong> <span class='badge bg-slate-800'>$curso</span></a><br>";
                                     echo "<a href='#' class='list-group-item'><i class='icon-sort-time-asc'></i>  <strong>Data de inscrição</strong>  <span class='badge bg-teal pull-right'>$datal</span></a>";
                                    // echo "<a href='#' class='list-group-item'><i class='icon-watch2'></i> <strong>Horário</strong>  <span class='badge bg-blue-700 pull-right'>13:00 - 18:00</span></a>";
                                     echo "<a href='#' class='list-group-item'><i class='icon-calendar22'></i> <strong>Último Pagamento</strong>  <span class='badge bg-brown pull-right'>2017-01-30</span></a>";
                                     echo "<a href='#' class='list-group-item'><i class='icon-exclamation'></i>  <strong>Dias Prox. Pagamento</strong>  <span class='badge bg-danger gray pull-right'>3</span></a>";

                                     echo   "</div>";
                                   echo "</div>";
                                  
}	
									?>

                                </div>


                                <div class="col-lg-9">
                                    <div class="tabbable">
                                        <div class="tab-content">


                                            <div class="tab-pane fade active in" id="settings">

                                                <!-- Profile info -->
                                                <div class="panel panel-flat">
                                                    <div class="panel-heading">
                                                        <h6 class="panel-title text-bold">Informações do Registo</h6>
                                                        <div class="heading-elements">
                                                            <ul class="icons-list">
                                                                <li><a data-action="collapse"></a></li>
                                                                <li><a data-action="reload"></a></li>
                                                                <li><a data-action="close"></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

        
                                                    <div class="panel-body">
                                                        <br>
                                                        <form >
                                                            <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <label>Nome</label>
                                                                        <input type="text" class="form-control" placeholder="<?php echo  $nome; ?>" class="form-control" disabled>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label>Data de Nascimento</label>
                                                                        <input type="text" placeholder="<?php echo $data_nascimento; ?>" class="form-control" disabled>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <label>Filiação</label>
                                                                        <input type="text" class="form-control daterange-single" placeholder="<?php echo $filiacao; ?>" disabled>
                                                                    </div>
                                                                     <div class="col-md-6">
                                                                        <label>Sexo</label>
                                                                        <input type="text" class="form-control daterange-single" placeholder="<?php if($sexo=='F'){ echo "Femenino";} if($sexo=='M'){ echo "Masculino";} ?>" disabled>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <label>Tipo de Documento</label>
                                                                        <input type="text" placeholder="<?php echo  $tipo_doc;?>" class="form-control"  disabled>
                                                                    </div>
																	<div class="col-md-3">
                                                                        <label>Nº Documento</label>
                                                                        <input type="text" placeholder="<?php echo $num_doc;?>" class="form-control"  disabled>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label>Contacto</label>
                                                                        <input type="text" placeholder="<?php echo  $contacto;?>" class="form-control" disabled>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <label>Estado Civil</label>
                                                                        <input type="text" placeholder="<?php echo $estado_civil;?>"class="form-control" disabled>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <label>Data e Hora de Registo</label>
                                                                        <input type="text" placeholder="<?php echo  $datal;?>"class="form-control" disabled>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label>Local de Residência</label>
                                                                        <input type="text" placeholder="<?php echo  $local_residencia;?>" class="form-control" disabled>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <label>Email</label>
                                                                        <input type="text" readonly="readonly" placeholder="<?php echo $email; ?>" class="form-control" disabled>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label>Nacionalidade</label><input type="text" placeholder="<?php echo $nome; ?>" class="form-control"  disabled>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <label>Area</label>
                                                                        <input type="text" placeholder="<?php echo  $area;?>" class="form-control"  disabled>
                                                                    </div>
                                                                    <div class="col-md-2">
                                                                        <label>Experiência</label>
                                                                        <input type="text" placeholder="<?php echo  $experiencia;?>" class="form-control" disabled>
                                                                    </div>
																	
																	      <div class="col-md-2">
                                                                        <label>F. Pedagógica</label>
                                                                        <input type="text" placeholder="<?php echo  $formacao;?>" class="form-control"  disabled>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <label>Tipo de Formação</label>
                                                                        <input type="text" placeholder="<?php echo  $formacao2;?>" class="form-control" disabled>
                                                                    </div>
                                                                </div>
																
                                                            </div>
															
															<div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <label>Regime</label>
                                                                        <input type="text" placeholder="<?php echo  $regime;?>" class="form-control"  disabled>
                                                                    </div>
                                                                    <div class="col-md-2">
                                                                        <label>Experiência</label>
                                                                        <input type="text" placeholder="<?php echo  $experiencia;?>" class="form-control" disabled>
                                                                    </div>
                                                                </div>
                                                            </div>
															
																	<div class="form-group">
                                                                <div class="row">
                                                                   
                                                                    <div class="col-md-6">
                                                                        <label>Disciplinas que Leciona</label>
                                                                       <textarea placeholder="<?php echo $disciplinas; ?>" cols="55" rows="5" disabled></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
															
                                                        </form>
                                                    </div>
                                                </div>
                                                <!-- /profile info -->
												
												<?php

												if($categoria=='E'){
													
												echo " <div class ='row'>";
                                                echo "    <div class='col-md-4'>";

                                                echo "        <div class='panel panel-body border-top-blue text-center'>";
                                                echo "            <div class='text-center'>";
                                                echo "                <div class='icon-object border-blue text-blue-600'><i class='icon-list3'></i></div>";
                                                echo "                <p class='content-group-sm text-muted text-uppercase text-bold'>Histórico de Pagamentos</p>";
                                                echo "            </div>";
                                                echo "            <br>";
                                                echo "            <button type='button' class='btn bg-blue-600 btn-labeled btn-rounded' data-toggle='modal' data-target='#modal_pagamentos'><b><i class='icon-list3'></i></b> Ver histórico</button>";
                                                echo "        </div>";
                                                echo "    </div>";

                                                echo "    <div class='col-md-4'>";

                                                echo "        <div class='panel panel-body border-top-danger text-center'>";
                                                echo "            <div class='text-center'>";
                                                echo "                <div class='icon-object border-danger text-danger-600'><i class='icon-book2'></i></div>";
                                                echo "                <p class='content-group-sm text-muted text-uppercase text-bold'>Alterar Curso</p>";
                                                echo "            </div>";
                                                echo "            <br>";
                                                echo "            <button type='button' class='btn bg-danger-600 btn-labeled btn-rounded' data-toggle='modal' data-target='#modal_plano_treino'><b><i class='icon-accessibility'></i></b> Alterar plano</button>";
                                                echo "        </div>";
                                                echo "    </div>";

                                                echo "    <div class='col-md-4'>";

                                                echo "        <div class='panel panel-body border-top-teal text-center'>";
                                                echo "            <div class='text-center'>";
                                                echo "                <div class='icon-object border-teal text-teal-600'><i class='icon-plus-circle2'></i></div>";
                                                echo "                <p class='content-group-sm text-muted text-uppercase text-bold'>Nova Mensalidade</p>";
                                                echo "            </div>";
                                                echo "            <br>";
                                                echo "            <button type='button' class='btn bg-teal-600 btn-labeled btn-rounded' data-toggle='modal' data-target='#modal_indisponivel'><b><i class='icon-plus-circle2'></i></b> Adicionar mensalidade</button>";
                                                echo "        </div";
                                                echo "    </div>";
                                                echo "</div>";
												}
												?>

                                            </div>


                                        </div>
                                    </div>
                                </div>


                            </div>
                            <!-- /user profile -->

                            <!-- Modal Pagamentos -->
							
                            <div id="modal_pagamentos" class="modal fade">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">

                                        <div class="modal-body">



                                            <!-- Basic responsive configuration -->
                                            <div class="panel panel-flat">
                                                <div class="panel-heading">
                                                    <h5 class="panel-title text-bold">Histórico de pagamentos</h5>
                                                    <div class="heading-elements">
                                                        <ul class="icons-list">
                                                            <li><a data-action="collapse"></a></li>
                                                            <li><a data-action="reload"></a></li>
                                                            <li><a data-action="close"></a></li>
                                                        </ul>
                                                    </div>
                                                </div>


                                                <table class="table datatable-responsive">
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Descrição</th>
                                                            <th>Status</th>
                                                            <th>Data</th>
                                                            <th>Valor</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                   
                                                        <tr>
                                                            <td><a href="#">001</a></td>
                                                            <td><a href="#">Pagamento da inscrição</a></td>
                                                            <td><span class="label bg-success-600">Confirmado</span></td>
                                                            <td>2017-01-01</td>
                                                            <td>2.500,00</td>
                                                        </tr>
                                                   
                                                        <tr>
                                                            <td><a href="#">002</a></td>
                                                            <td><a href="#">Pagamento da mensalidade de JAN 2017</a></td>
                                                            <td><span class="label bg-success-600">Confirmado</span></td>
                                                            <td>2017-01-01</td>
                                                            <td>7.500,00</td>
                                                        </tr>
                                                   
                                                        <tr>
                                                            <td><a href="#">003</a></td>
                                                            <td><a href="#">Pagamento da mensalidade de FEV 2017</a></td>
                                                            <td><span class="label bg-warning-600">Por Confirmar</span></td>
                                                            <td>2017-01-01</td>
                                                            <td>7.500,00</td>
                                                        </tr>
                                                   
                                                        <tr>
                                                            <td><a href="#">004</a></td>
                                                            <td><a href="#">Pagamento da cadeira em atraso</a></td>
                                                            <td><span class="label bg-danger-600">Cancelado</span></td>
                                                            <td>2017-01-01</td>
                                                            <td>3.000,00</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- /basic responsive configuration -->
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-chevron-down"></i>  Fechar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /modal pagamentos -->

                            <!-- Alterar plano -->
                            <div id="modal_plano_treino" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <div class="modal-body">


                                            <!-- 2 columns form -->
                                          
                                            <form action="#" method="post" accept-charset="ISO-8859-1" class="form-horizontal">
                                                <div class="panel panel-flat">
                                                    <div class="panel-heading">
                                                        <h5 class="panel-title text-bold">Actualizar informação do formado</h5>

                                                    </div>

                                                    <div class="panel-body">
                                                        <div class="row">


                                                            <div class="col-md-12">


																	
																	<fieldset>
																		<legend class="text-semibold"><i class="icon-clipboard2 position-left"></i> Inscrição</legend>

																		<div class="form-group">
																			<label class="col-lg-3 control-label">Horário & Curso:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-5">
																							<select data-placeholder="Selecione o horário" class="select">
																								<option></option>
																								<option value="Doméstica">07:00 - 12:00</option> 
																								<option value="Industrial" selected>13:00 - 18:00</option> 
																								<option value="Comercial">18:30 - 21:30</option> 
																							</select>
																					</div>

																					<div class="col-md-7">
																							<select data-placeholder="Selecione a área de inscrição" class="select">
																								<option></option>
																								<option value="Doméstica" selected>Engenharia Informática</option> 
																								<option value="Industrial">Contabilidade e Auditoria</option> 
																								<option value="Comercial">Direito</option> 
																							</select>
																					</div>
																				</div>
																			</div>
																		</div>
													
																		
																	</fieldset>
                                                            </div>

                                                        </div>

                                                        <div class="text-right">
                                                            <button type="submit" class="btn btn-primary">Actualizar Info <i class="icon-reload-alt position-right"></i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            <!-- /2 columns form -->
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-chevron-down"></i>  Fechar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /alterar plano -->





                            <!-- Recurso Indisponivel -->
                            <div id="modal_indisponivel" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h5 class="modal-title text-bold">Notificação do Sistema</h5>
                                        </div>

                                        <div class="modal-body text-center">
                                            <h1 class="error-title"><i class="icon-spinner2 spinner text-teal-400" style="font-size:200px"></i></h1>
                                            <h5 class="text-bold content-group text-teal-400">Módulo indisponível !</h5>
                                            <h6 class="text-semibold text-justify">A nossa equipe de desenvolvimento encontra-se no momento a trabalhar para disponibilizar o recurso solicitado, em breve irá notifica-lo para a utilização do mesmo !</h6>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-chevron-down"></i>  Fechar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /recurso indisponivel -->

                        </div>
                        <!-- /vertical form options -->
                    </div>					



                </div>
                <!-- /main content -->


            </div>
            <!-- /page content -->

				<!-- Footer -->
            <div class="footer text-bold text-grey-300">
               
              &copy; 2019 <a href="#" class="text-success-300">TeacherApp</a>
              </div>
            <!-- /footer -->

        </div>
        <!-- /page container -->

    </body>
</html>
