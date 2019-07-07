
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



			<!-- Main content -->
			<div class="content-wrapper">


			<div class = "row">

			<div class = "col-md-10 col-md-offset-1">

									<div class="content-group tab-content-bordered navbar-component">
										<div class="navbar navbar-inverse bg-sucess-400" style="position: relative; z-index: 99;">
											<div class="navbar-header">
												<h6 class="text-semibold class text-uppercase" style="margin-left: 2em;"> TeacherApp </h6>

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
$sql = "SELECT * FROM estudante Where categoria='E'";
$cont=0;
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
												<form class="form-horizontal" method="POST" action="regStudent.php">
													<div class="panel panel-flat">
														<div class="panel-heading">
															<h5 class="panel-title text-bold">Students Data</h5>

														</div>

														<div class="panel-body">
															<div class="row">

																<div class="col-md-6">
																	<fieldset>
																		<legend class="text-semibold"><i class="icon-reading position-left"></i> Students Data</legend>

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
																						Male
																					</label>

																					<label class="radio-inline">
																						<input type="radio" name="sexo" value="F" class="styled">
																						Female
																					</label>
																				</div>
																			</div>
																		</div>

																								<div class="form-group">
																			<label class="col-lg-3 control-label">Marital status:</label>
																			<div class="col-lg-9">
																				<div class="row">

																					<label class="radio-inline">
																						<input type="radio" name="estado"  value="Not married" class="styled" checked="checked">
																						Not married
																					</label>

																					<label class="radio-inline">
																						<input type="radio" name="estado" value="Married" class="styled">
																						Married
																					</label>

																					<label class="radio-inline">
																						<input type="radio" name="estado" value="Divorced" class="styled">
																						Divorced
																					</label>
																				</div>
																			</div>
																		</div>


																		<div class="form-group">
																			<label class="col-lg-3 control-label">Affiliation:</label>
																			<div class="col-lg-9">

																				<div class="row">
																					<div class="col-md-15">
																						<input type="text" name="filiacao" placeholder="Affiliation" class="form-control" required>
																					</div>


																				</div>

																			</div>
																		</div>

																				<div class="form-group">
																			<label class="col-lg-3 control-label">Document Type:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-8">
																						<div class="mb-15">
																							<select data-placeholder="Selecione o tipo de documento" name="tipoDoc" class="select">
																								<option></option>
																								<option value="BI" name="tipoDoc">BI</option>
																								<option value="PASSAPORTE" name="tipoDoc">PASSAPORT</option>
																								<option value="DIRE" name="tipoDoc">DIRE</option>
																								<option value="CARTA DE CONDUÇÃO" name="tipoDoc">DRIVING LICENSE</option>

																							</select>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>

																		<div class="form-group">
																			<label class="col-lg-3 control-label">N. Document:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-30">
																						<input type="text" name="numDoc" placeholder="Document Number" class="form-control mb-15">

																					</div></br>

																				</div>
																			</div>
																		</div>


																	</fieldset>

																	<fieldset>
																		<legend class="text-semibold"><i class="icon-home5 position-left"></i> ADDRESS</legend>


																		<div class="form-group">
																			<label class="col-lg-3 control-label">Place of Residence:</label>
																			<div class="col-lg-9">
																				<div class="row">
																					<div class="col-md-30">
																						<input type="text" name="residencia" placeholder="Place of Residence" class="form-control mb-15">

																					</div></br>

																				</div>
																			</div>
																		</div>
																	</fieldset>

																</div>

																<div class="col-md-6">

																	<fieldset>
																		<legend class="text-semibold"><i class="icon-briefcase position-left"></i> Contact</legend>


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
																		<legend class="text-semibold"><i class="icon-briefcase position-left"></i> Allocation</legend>


																		<div class="form-group">
																			<label class="col-lg-3 control-label">Course:</label>
																			<div class="col-lg-9">

																				<div class="row">
																					<div class="col-md-8">
																						<div class="mb-15">
																							<select data-placeholder="Selecione o Curso" name="curso" class="select">
																							<option></option>
																								<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

include('conexao.php');
// Attempt select query execution
$sql = "SELECT * FROM curso ORDER BY nome_curso";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){
				echo "<option value=".$row['nome_curso']." name='curso' >".$row['nome_curso']."</option>";
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


																							</select>
																						</div>
																					</div>
																				</div>

																			</div>
																		</div>

																			<div class="form-group">
																			<label class="col-lg-3 control-label">Class:</label>
																			<div class="col-lg-9">

																				<div class="row">
																					<div class="col-md-8">
																						<div class="mb-15">
																							<select data-placeholder="Selecione a Turma" name="turma" class="select">
																								<option></option>
																								<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

include('conexao.php');
// Attempt select query execution
$sql = "SELECT * FROM turma ORDER BY nome_turma";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){

				echo "<option value=".$row['nome_turma']." name='turma' >".$row['nome_turma']."</option>";
        }
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

																							</select>
																						</div>
																					</div>
																				</div>

																			</div>
																		</div>


																		<div class="form-group">
																			<label class="col-lg-3 control-label">Shift:</label>
																			<div class="col-lg-9">

																				<div class="row">
																					<div class="col-md-8">
																						<div class="mb-15">
																							<select data-placeholder="Selecione o Turno" name="turno" class="select">
																								<option></option>
																								<?php
			/* Attempt MySQL server connection. Assuming you are running MySQL
			server with default setting (user 'root' with no password) */

			include('conexao.php');
			// Attempt select query execution
			$sql = "SELECT * FROM turno ORDER BY nome_turno";
			$turno="";
			if($result = mysqli_query($mysqli, $sql)){
				if(mysqli_num_rows($result) > 0){
					while($row = mysqli_fetch_array($result)){

							//echo "<td><input type='checkbox' name='info[]' value='$id'/></td>";
							if($row['nome_turno']=="M"){$turno="Morning";}
							if($row['nome_turno']=="T"){$turno="Evening";}
							if($row['nome_turno']=="N"){$turno="Night";}

							echo "<option value=".$row['nome_turno']." name='turno' >".$turno."</option>";
					}
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



																							</select>
																						</div>
																					</div>
																				</div>

																			</div>
																		</div>

																		<div class='form-group'>
																			<label class="col-lg-3 control-label">Year of Entry:</label>
																			<div class="col-lg-3">
																				<div class="row">
																					<div class="col-md-30">
																						<input type="text" name="anoIngresso" placeholder="Year of Entry" class="form-control mb-15">

																					</div></br>

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
													<h5 class="panel-title text-bold">List of Students</h5>

												</div>
<form action=>
												<table class="table datatable-responsive">
													<thead>
														<tr>
															<th>Code</th>
															<th>Name</th>
															<th>Birthday</th>
															<th>Gender</th>

															<th>Document</th>
															<th>N.Document</th>
															<th>Residence</th>

															<th>Contact</th>
															<th>E-mail</th>
															<th>Course</th>
															<th>Class</th>
															<th>Shift</th>
															<th>Date Registration</th>

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
$turno="";
$sql = "SELECT * FROM estudante Where categoria='E' ORDER BY nome AND apelido ASC";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){
        		$id=$row['id_est'];
				$curso=$row['curso'];
				$turma="";
                //echo "<td><input type='checkbox' name='info[]' value='$id'/></td>";
				echo "<td>" . $row['username'] . "</td>";
				echo "<td>" . utf8_encode($row['nome'] ." ". $row['apelido']) . "</td>";
				echo "<td>" . $row['data_nascimento'] . "</td>";
				echo "<td>" . $row['sexo'] . "</td>";
			//	echo "<td>" . utf8_encode($row['filiacao']) . "</td>";
				echo "<td>" . $row['tipo_doc'] . "</td>";
				echo "<td>" . $row['num_doc'] . "</td>";
				echo "<td>" . $row['local_residencia'] . "</td>";
				//echo "<td>" . $row['estado_civil'] . "</td>";
				echo "<td>" . $row['contacto'] . "</td>";
				echo "<td>" . $row['email'] . "</td>";
				echo "<td>" . $row['curso'] . "</td>";
				echo "<td>" . $row['turma'] . "</td>";

				if($row['turno']=="M"){$turno="Manhã";}
				if($row['turno']=="T"){$turno="Tarde";}
				if($row['turno']=="N"){$turno="Noite";}
				echo "<td>" . $turno . "</td>";
				echo "<td>" . $row['data'] . "</td>";
				echo "<td class='text-center'>";
				echo "<ul class='icons-list'>";
				echo "<li><a href='removerEstudante.php?id_est=$id'><i class='icon-cancel-circle2'></i></a></li>";
				echo "<li><a href='visualizacaoE.php?id_est=$id'><i class='icon-eye'></i></a></li>";
				echo "<li><a href='editarE.php?id_est=$id&curso=$curso'><i class='icon-pencil'></i></a></li>";
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
