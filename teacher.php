<!DOCTYPE html>

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
	<link href="assets/css/minified/bg.css" rel="stylesheet" type="text/css">
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script type="text/javascript" src="assets/js/plugins/loaders/pace.min.js"></script>
	<script type="text/javascript" src="assets/js/core/libraries/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/core/libraries/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/loaders/blockui.min.js"></script>
	<!-- /core JS files -->

	<!-- Theme JS files -->

	<!-- Theme JS files -->
	<script type="text/javascript" src="assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/forms/styling/switchery.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/forms/styling/switch.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/tables/datatables/datatables.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/tables/datatables/extensions/responsive.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/forms/selects/select2.min.js"></script>

	
	
	<script type="text/javascript" src="assets/js/core/libraries/jquery_ui/datepicker.min.js"></script>
	<script type="text/javascript" src="assets/js/core/libraries/jquery_ui/effects.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/ui/moment/moment.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/pickers/daterangepicker.js"></script>
	<script type="text/javascript" src="assets/js/plugins/pickers/pickadate/picker.js"></script>
	<script type="text/javascript" src="assets/js/plugins/pickers/pickadate/picker.date.js"></script>
	
	<script type="text/javascript" src="assets/js/pages/form_layouts.js"></script>

	<script type="text/javascript" src="assets/js/core/app.js"></script>
	<!-- /theme JS files -->
	
	
	<!-- Velocity animation  menu -->
	<script type="text/javascript" src="assets/js/plugins/velocity/velocity.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/velocity/velocity.ui.min.js"></script>
	<script>
	
		$(function() {

			// Animated dropdowns
			// ------------------------------

			//
			// Velocity animations
			//

			// Open
			$('.dropdown-velocity, .btn-group-velocity').on('show.bs.dropdown', function(e){
				$(this).find('.dropdown-menu').velocity('transition.slideUpIn', {
					duration: 200
				})
			});

			// Close
			$('.dropdown-velocity, .btn-group-velocity').on('hide.bs.dropdown', function(e){
				$(this).find('.dropdown-menu').velocity('transition.slideLeftOut', {
					duration: 200,
					complete: function() {
						$(this).removeAttr('style');
					}
				})
			});

		});

	</script>
	<!-- velocity animation menu -->

	<script type="text/javascript" src="assets/js/pages/datatables_responsive.js"></script>
	<!-- /theme JS files -->

</head>

<body oncontextmenu="return false">




        <!-- Main navbar -->
        <div class="navbar navbar-inverse">
            <div class="navbar-header">
                <h5 class="text-semibold class text-uppercase" style="margin-left: 2em;"> TeacherApp </h5>

                <ul class="nav navbar-nav visible-xs-block">
                    <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
                    <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
                </ul>
            </div>

            <div class="navbar-collapse collapse" id="navbar-mobile">


                <ul class="nav navbar-nav navbar-right">
                   

                    <li class="dropdown dropdown-user">
                        <a class="dropdown-toggle" data-toggle="dropdown">
                         
                            <span></span>
                            <i class="caret"></i>
                        </a>

                    </li>
                </ul>
            </div>
        </div>
        <!-- /main navbar -->



        <!-- Page header -->
        <div class="page-header">
         


            <div class="page-header-content">
			<div class="page-title">
			
			</br></br>
	       
				
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



			<!-- Main content -->
			<div class="content-wrapper">

			
			<div class = "row">
			
			<div class = "col-md-10 col-md-offset-1">
			
									<div class="content-group tab-content-bordered navbar-component">
										<div class="navbar navbar-inverse bg-sucess-400" style="position: relative; z-index: 99;">
											<div class="navbar-header">
												<h6 class="text-semibold class text-uppercase" style="margin-left: 2em;">  <a href="#" class="text-success-300">Class Teacher App</a> </h6>

												<ul class="nav navbar-nav pull-right visible-xs-block">
													<li><a data-toggle="collapse" data-target="#demo1"><i class="icon-tree5"></i></a></li>
												</ul>
											</div>

											<div class="navbar-collapse collapse" id="demo1">
												<ul class="nav navbar-nav">
													<li class="active">
														<a href="#tab-demo1" data-toggle="tab">
															<i class="icon-file-plus position-left"></i>
															New Record
														</a>
													</li>

													<li>
														<a href="#tab-demo2" data-toggle="tab"><i class="icon-files-empty position-left"></i>
															List of records
															
																														<?php
include('conexao.php');
// Attempt select query execution
$cont=0;
$sql = "SELECT * FROM utilizador Where categoria='D'";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
		$cont=mysqli_num_rows($result);
    		echo "<span class='badge bg-danger-800 badge-inline position-right'> $cont</span>";
        mysqli_free_result($result);
    } else{
       echo "<span class='badge bg-danger-800 badge-inline position-right'>$cont</span>";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($mysqli);
}
mysqli_close($mysqli);
?>
															
															
															
														</a>
													</li>
												</ul>

											</div>
										</div>

										<div class="tab-content">
											<div class="tab-pane fade active in has-padding" id="tab-demo1">
											
											

												<!-- 2 columns form -->
												<form class="form-horizontal" method="POST" action="regTeacher.php" enctype="multipart/form-data">
													<div class="panel panel-flat">
														<div class="panel-heading">
															<h5 class="panel-title text-bold">Insert new Teacher</h5>
													
														</div>

														<div class="panel-body">
															<div class="row">

																<div class="col-md-6">
																	<fieldset>
																		<legend class="text-semibold"><i class="icon-reading position-left"></i> Dados do Docente</legend>

																		<div class="form-group">
																			<label class="col-lg-3 control-label">Name:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-10">
																						<input type="text" name="nome" placeholder="Name" class="form-control" required>
																					</div>
																				</div>
																			</div>
																		</div>
																		
																			<div class="form-group">
																			<label class="col-lg-3 control-label">Surname:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-10">
																						<input type="text" name="apelido" placeholder="Surname" class="form-control" required>
																					</div>
																				</div>
																			</div>
																		</div>

																		<div class="form-group">
																			<label class="col-lg-3 control-label">Birthday:</label>
																			<div class="col-lg-9">
																				
																				<div class="row">
																					<div class="col-md-7">
																						<input type="text" name="dataNasc" placeholder="DD/MM/YYYY" class="form-control" required>
																					</div>

																					
																				</div>
																				
																			</div>
																		</div>
																		
																		<div class="form-group">
																			<label class="col-lg-3 control-label">Gender:</label>
																			<div class="col-lg-9">
																				<div class="row">
																																	
																					<label class="radio-inline">
																						<input type="radio" name="sexo" value="M" class="styled" checked="checked">
																						Masculino
																					</label>

																					<label class="radio-inline">
																						<input type="radio" name="sexo" value="F" class="styled">
																						Femenino
																					</label>
																				</div>
																			</div>
																		</div>
																		
																								<div class="form-group">
																			<label class="col-lg-3 control-label">Estado Civil:</label>
																			<div class="col-lg-9">
																				<div class="row">
																																	
																					<label class="radio-inline">
																						<input type="radio" name="estado"  value="Solteiro" class="styled" checked="checked">
																						Solteiro
																					</label>

																					<label class="radio-inline">
																						<input type="radio" name="estado" value="Casado" class="styled">
																						Casado
																					</label>
																					
																					<label class="radio-inline">
																						<input type="radio" name="estado" value="Divorciado" class="styled">
																						Divorciado
																					</label>
																				</div>
																			</div>
																		</div>
																		

																		<div class="form-group">
																			<label class="col-lg-3 control-label">Filiaçã:</label>
																			<div class="col-lg-9">
																				
																				<div class="row">
																					<div class="col-md-30">
																						<input type="text" name="filiacao" placeholder="Filiaçã" class="form-control" required>
																					</div>
																					
													
																				</div>
																				
																			</div>
																		</div>
																		
																				<div class="form-group">
																			<label class="col-lg-3 control-label">Tipo de Documento:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-8">
																						<div class="mb-15">
																							<select data-placeholder="Selecione o tipo de documento" name="tipoDoc" class="select">
																								<option></option>
																								<option value="BI" name="tipoDoc">BI</option> 
																								<option value="PASSAPORTE" name="tipoDoc">PASSAPORTE</option>
																								<option value="DIRE" name="tipoDoc">DIRE</option>
																								<option value="CARTA DE CONDUÇÃO" name="tipoDoc">CARTA DE CONDUÇÃO</option>
																								
																							</select>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																		
																		<div class="form-group">
																			<label class="col-lg-3 control-label">N. Documento:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-30">
																						<input type="text" name="numDoc" placeholder="Numero do Documento" class="form-control mb-15">
																					
																					</div></br>
																					
																				</div>
																			</div>
																		</div>
																
																					
																		<div class="form-group">
																			<label class="col-lg-3 control-label">Foto:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-7">
																						<input type="file" accept="*" name="foto" id="foto" class="file-styled">
																					
																					</div></br>
																					
																				</div>
																			</div>
																		</div>
																		
																	</fieldset>
																	
																	<fieldset>
																		<legend class="text-semibold"><i class="icon-home5 position-left"></i> ENDEREÇO</legend>
 

																		<div class="form-group">
																			<label class="col-lg-3 control-label">Local de Residência:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-30">
																						<input type="text" name="residencia" placeholder="Local de Residência" class="form-control mb-15">
																					
																					</div></br>
																					
																				</div>
																			</div>
																		</div>
																	</fieldset>
																	
																	<fieldset>
																		<legend class="text-semibold"><i class="icon-archive position-left"></i> Anexos</legend>
 

																		<div class="form-group">
																			<label class="col-lg-3 control-label">Anexo 1:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-30">
																						<input type="file" accept="*" name="anexo1" id="anexo1" class="file-styled">
																					
																					</div></br>
																					
																				</div>
																			</div>
																		</div>
																		
																			<div class="form-group">
																			<label class="col-lg-3 control-label">Anexo 2:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-30">
																						<input type="file" accept="*" name="anexo2" id="anexo2" class="file-styled">
																					
																					</div></br>
																					
																				</div>
																			</div>
																		</div>
																		
																			<div class="form-group">
																			<label class="col-lg-3 control-label">Anexo 3:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-30">
																						<input type="file" accept="*" name="anexo3" id="anexo3" class="file-styled">
																					
																					</div></br>
																					
																				</div>
																			</div>
																		</div>
																	</fieldset>
																	
																</div>
																
																<div class="col-md-6">
																	
																	<fieldset>
																		<legend class="text-semibold"><i class="icon-phone position-left"></i> Contacto</legend>
																		

																		<div class="form-group">
																			<label class="col-lg-3 control-label">Cell/Tel:</label>
																			<div class="col-lg-9">
																				
																				<div class="row">
																					<div class="col-md-5">
																						<input type="text"  name="contacto" class="form-control" placeholder="Celular / Telefone ..."> 
																					</div>
																				</div>
																				
																			</div>
																		</div>
																		
																			<div class="form-group">
																			<label class="col-lg-3 control-label">E-mail:</label>
																			<div class="col-lg-9">
																				
																				<div class="row">
																					<div class="col-md-5">
																						<input type="email" name="email" class="form-control" placeholder="E-mail ..."> 
																					</div>
																				</div>
																				
																			</div>
																		</div>
																		
																	</fieldset>
																	
																</div>
																
																<div class="col-md-6">
																	
																	<fieldset>
																		<legend class="text-semibold"><i class="icon-book position-left"></i> Habilitações</legend>
																		

																		<div class="form-group">
																			<label class="col-lg-3 control-label">Are de Formação:</label>
																			<div class="col-lg-9">
																				
																				<div class="row">
																					<div class="col-md-10">
																						<input type="text"  name="area" class="form-control" placeholder="Are de Formação ..."> 
																					</div>
																				</div>
																				
																			</div>
																		</div>
																		
																		<div class="form-group">
																			<label class="col-lg-3 control-label">Anos de experiência:</label>
																			<div class="col-lg-9">
																				
																				<div class="row">
																					<div class="col-md-10">
																						<input type="text"  name="experiencia" class="form-control" placeholder="Anos de experiência ..."> 
																					</div>
																				</div>
																				
																			</div>
																		</div>
																		
																			<div class="form-group">
																			<label class="col-lg-3 control-label">Nivel de Formação:</label>
																			<div class="col-lg-6">
																				
																				<select data-placeholder="Selecione o Nivel de Formacao" name="nivel" class="select">
																								<option></option>
																								<option value="Medio" name="nivel">Médio</option> 
																								<option value="Tecnico" name="nivel">Técnico</option>
																								<option value="Bacharel" name="nivel">Bacharel</option>
																								<option value="Licenciado" name="nivel">Licenciado</option>
																								
																							</select>
																			</div>
																		</div>
																		
																		<div class="form-group">
																			<label class="col-lg-3 control-label">Formação Pedagógica:</label>
																			<div class="col-lg-6">
																				
																				<select data-placeholder="Formação Pedagógica" name="formacao" class="select">
																								<option></option>
																								<option value="SIM" name="formacao">SIM</option> 
																								<option value="NAO" name="formacao">NÃO</option>
																							</select>
																			</div>
																		</div>
																		
																		
																		<div class="form-group">
																			<label class="col-lg-3 control-label">Se SIM, informe qual?:</label>
																			<div class="col-lg-9">
																				
																				<div class="row">
																					<div class="col-md-10">
																						<input type="text"  name="formacao2" class="form-control" placeholder="Formação Pedagógica..."> 
																					</div>
																				</div>
																				
																			</div>
																		</div>
																		
																	</fieldset>
																	
																</div>
																
																
																<div class="col-md-6">
																	
																	<fieldset>
																		<legend class="text-semibold"><i class="icon-pencil position-left"></i> Informaçãa Contratual</legend>
																		

																		<div class="form-group">
																			<label class="col-lg-3 control-label">Regime de Contrato:</label>
																			<div class="col-lg-9">
																				
																				<div class="row">
																					<div class="col-md-7">
																						<select data-placeholder="Formação Pedagógica" name="regime" class="select">
																								<option></option>
																								<option value="Pemanente" name="regime">Pemanente</option> 
																								<option value="Parcial" name="regime">Parcial</option>
																							</select>
																					</div>
																				</div>
																				
																			</div>
																		</div>
																		
																		
																		
																			<div class="form-group">
																			<label class="col-lg-3 control-label">Disciplinas que pode lecionar:</label>
																			<div class="col-lg-9">
																				
																				<div class="row">
																					<div class="col-md-5">
																						<textarea name="disciplinas" cols="55" rows="5"></textarea>
																					</div>
																				</div>
																				
																			</div>
																		</div>
																		
																	</fieldset>
																	
																</div>
																
																

															</div>

															<div class="text-right">
																<button type="submit" class="btn btn-primary">Save <i class="icon-arrow-right14 position-right"></i></button>
															</div>
														</div>
													</div>
												</form>
												<!-- /2 columns form -->
											
											
											</div>
											
											<div class="tab-pane fade has-padding" id="tab-demo2">
											
											


					
											

											<!-- Basic responsive configuration -->
											<div class="panel panel-flat">
												<div class="panel-heading">
													<h5 class="panel-title text-bold">List of teacher</h5>
												
												</div>

												<table class="table datatable-responsive">
													<thead>
														<tr>
															<th>Name</th>
															<th>Birthday</th>
															<th>Gender</th>
															<th>Filiação</th>
															<th>Document</th>
															<th>N. of Document</th>
															<th>Residência</th>
															<th>Estado Civil</th>
															<th>Contact</th>
															<th>E-mail</th>
															<th>Data Registo</th>
															
															<th class="text-center">Actions</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															
															<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

include('conexao.php');
// Attempt select query execution

$sql = "SELECT * FROM utilizador Where categoria='D' ORDER BY nome AND apelido ASC";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){    
        		$id=$row['id_util']; 
				$turma="";
                //echo "<td><input type='checkbox' name='info[]' value='$id'/></td>";

				echo "<td>" . $row['nome'] ." ". $row['apelido'] . "</td>";
				echo "<td>" . $row['data_nascimento'] . "</td>";
				echo "<td>" . $row['sexo'] . "</td>";
				echo "<td>" . utf8_encode($row['filiacao']) . "</td>";
				echo "<td>" . $row['tipo_doc'] . "</td>";
				echo "<td>" . $row['num_doc'] . "</td>";
				echo "<td>" . $row['local_residencia'] . "</td>";
				echo "<td>" . $row['estado_civil'] . "</td>";
				echo "<td>" . $row['contacto'] . "</td>";
				echo "<td>" . $row['email'] . "</td>";
				echo "<td>" . $row['datal'] . "</td>";
				echo "<td class='text-center'>";
				echo "<ul class='icons-list'>";
				echo "<li><a href='removerDocente.php?id_util=$id'><i class='icon-cancel-circle2'></i></a></li>";
				echo "<li><a href='visualizacao.php?id_util=$id'><i class='icon-eye'></i></a></li>";
				echo "</ul>";
				echo "</td>";
				echo "</tr>";	
        }		
		//<td><span class="label label-success">Disponivel</span></td>	
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($mysqli);
}
// Close connection
mysqli_close($mysqli);
?>
															
															
														
														</tr>
														
														
														
													</tbody>
												</table>
											</div>
											<!-- /basic responsive configuration -->
																		
											
											</div>
										</div>
									</div>
									
					</div>
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
	<script type="text/javascript" src="assets/js/pages/picker_date.js"></script>
</html>
