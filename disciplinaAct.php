
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
            <div class="breadcrumb-line breadcrumb-line-wide">
              

            </div>


            <div class="page-header-content">
			<div class="page-title">
			
			 <h6 class="label bg-primary-700"><i class="icon-paragraph-justify3 position-left"></i> <span class="text-semibold text-uppercase">Menu</span></h6>
				<br>
				<br>
	     
				
			</div>

                <div class="heading-elements">
                    <div class="heading-btn-group">
                        <form method="post" action="index2.php">
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


$id=$_GET['id_disciplina'];
$sql = "SELECT * FROM disciplina WHERE id_disciplina='$id'";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){   
				$id=$row['id_disciplina'];
                $disciplina=$row['nome_disciplina'];
				$ano=$row['ano'];
				$sem=$row['semestre'];
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
						<form action="actualizarDisciplina.php"  method="POST" class="form-horizontal">
							<div class="panel panel-flat">
								<div class="panel-heading">
									<h5 class="panel-title text-bold">Actualizar Disciplina</h5>
								
								</div>

								<div class="panel-body">
								
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
											<label class="col-lg-3 control-label text-bold">Disciplina: </label>
											
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group col-md-7">
																<span class="input-group-addon"><i class="icon-sort-time-desc"></i></span>
																<input type="text" class="form-control" name="disciplina" value="<?php echo  $disciplina;?>">
															</div>
														
														</div>
												</div>
										
										</div>
										
								
							
									
										<div class="form-group">
											<label class="col-lg-3 control-label text-bold">Ano: </label>
											
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group">
																	<select data-placeholder="Selecione a área de formação" name="ano" class="select">
																	
																	<?php
																	$ano1="";
																	$ano2="";
																	$ano3="";
																	$ano4="";
																	$ano5="";
																	
																	if($ano=='1'){$ano1="Selected";}
																	if($ano=='2'){$ano2="Selected";}
																	if($ano=='3'){$ano3="Selected";}
																	if($ano=='4'){$ano4="Selected";}
																	if($ano=='5'){$ano5="Selected";}
																	
																	echo "<option value='1' name='ano' $ano1>1º</option>";
																	echo "<option value='2' name='ano' $ano2>2º</option>";
																	echo "<option value='3' name='ano' $ano3>3º</option>";
																	echo "<option value='4' name='ano' $ano4>4º</option>";
																	echo "<option value='5' name='ano' $ano5>5º</option>";
																	?>
																		
																</select>
															</div>
														
														</div>
												</div>
										
										</div>
										
										
										
										<div class="form-group">
											<label class="col-lg-3 control-label text-bold">Semestre: </label>
											
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group">
																	<select data-placeholder="Selecione a área de formação" name="sem" class="select">
																	
																	<?php
																	$sem1="";
																	$sem2="";
																	
																	
																	if($sem=='1'){$sem1="Selected";}
																	if($sem=='2'){$sem2="Selected";}
																
																	
																	echo "<option value='1' name='sem' $sem1>1º</option>";
																	echo "<option value='2' name='sem' $sem2>2º</option>";
																
																	?>
																		
																</select>
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
													<h5 class="panel-title text-bold">Lista das Disciplinas</h5>
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
															<th>Disciplina</th>
															<th>Ano/Sem</th>
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
$sql = "SELECT * FROM disciplina ORDER BY nome_disciplina";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){    
        		$id=$row['id_disciplina']; 
                //echo "<td><input type='checkbox' name='info[]' value='$id'/></td>";
					echo "<td>" . $row['nome_disciplina'] . "</td>";
                echo "<td>" . $row['ano'] ."º/". $row['semestre'] . "º</td>";
				echo "<td>" . $row['data'] . "</td>";
				echo "<td>" . $row['responsavel'] . "</td>";
				echo "<td class='text-center'>";
				echo "<ul class='icons-list'>";
				echo "<li><a href='disciplinaAct.php?id_disciplina=$id'><i class='icon-pencil'></i></a></li>";
				echo "<li><a href='removerDisciplina.php?id_disciplina=$id'><i class='icon-cancel-circle2'></i></a></li>";
				
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
