
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
			
				<div class = "col-md-9 col-md-offset-2">
				<!-- Vertical form options -->
					<div class="col-md-5">
													
<?php
include('conexao.php');


$id=$_GET['id_curso'];
$sql = "SELECT * FROM curso WHERE id_curso='$id'";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){   
				$id=$row['id_curso'];
                $curso=$row['nome_curso'];
				$duracao=$row['duracao'];	
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

				
						<!-- Basic layout-->
						<form action="actualizarCurso.php"  method="POST" class="form-horizontal">
							<div class="panel panel-flat">
								<div class="panel-heading">
									<h5 class="panel-title text-bold">Actualizar curso</h5>
								
								</div>

								<div class="panel-body">
								
								<!--
									
										<div class="form-group">
											<label class="col-lg-3 control-label text-bold">Área: </label>
											
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group">
																	<select data-placeholder="Selecione a área de formação" class="select">
																		<option></option>
																		<option value="AK">Tecnologias de Informação</option>
																		<option value="HI">Formação Júridica</option>
																</select>
															</div>
														
														</div>
												</div>
										
										</div>
								-->

									<div class="form-group">
											<label class="col-lg-3 control-label text-bold">#ID: </label>
											
												<div class="col-lg-4">
														<div class="row">
														
															<div class="input-group col-md-10">
																<span class="input-group-addon"><i class="icon-key"></i></span>
																<input type="text" name="id" class="form-control" value="<?php echo  $id;?>">
															</div>
														
														</div>
												</div>
										
										</div>
								
									
										<div class="form-group">
											<label class="col-lg-3 control-label text-bold">Curso: </label>
											
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group col-md-10">
																<span class="input-group-addon"><i class="icon-file-text"></i></span>
																<input type="text" name="curso" class="form-control" value="<?php echo  $curso;?>">
															</div>
														
														</div>
												</div>
										
										</div>
								
								
							
								
								
									
										<div class="form-group">
											<label class="col-lg-3 control-label text-bold">Duração: </label>
											
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group col-md-7">
																<span class="input-group-addon"><i class="icon-sort-time-desc"></i></span>
																<input type="text" class="form-control" name="duracao" value="<?php echo  $duracao;?>">
															</div>
														
														</div>
												</div>
										
										</div>
										
										
										

									<div class="text-right">
										<button type="submit" class="btn btn-primary">Actualizar Registo <i class="icon-arrow-right14 position-right"></i></button>
									</div>
								</div>
							</div>
						</form>
						<!-- /basic layout -->

					</div>

					<div class="col-md-7">

					
											

											<!-- Basic responsive configuration -->
											<div class="panel panel-flat">
												<div class="panel-heading">
													<h5 class="panel-title text-bold">Lista dos cursos</h5>
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
															<th>Nome do Curso</th>
															<th>Duração</th>
															<th>Data</th>
															<th>Responsavel</th>
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
	$sql = "SELECT * FROM curso ORDER BY nome_curso";
	if($result = mysqli_query($mysqli, $sql)){
		if(mysqli_num_rows($result) > 0){
			while($row = mysqli_fetch_array($result)){    
					$id=$row['id_curso']; 
					echo "<td>" . $row['nome_curso'] ."</td>";
					echo "<td>" . $row['duracao'] . "</td>";
					echo "<td>" . $row['data'] . "</td>";
					echo "<td>" . $row['responsavel'] . "</td>";
					echo "<td class='text-center'>";
					echo "<ul class='icons-list'>";
					echo "<li><a href='cursoAct.php?id_curso=$id'><i class='icon-pencil'></i></a></li>";
					echo "<li><a href='removerCurso.php?id_curso=$id'><i class='icon-cancel-circle2'></i></a></li>";
					echo "</ul>";
					echo "</td>";
					echo "</tr>";	
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
													
														</tr>
														
													</tbody>
												</table>
											</div>
											<!-- /basic responsive configuration -->

					</div>
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
	<script type="text/javascript" src="assets/js/pages/picker_date.js"></script>
</html>
