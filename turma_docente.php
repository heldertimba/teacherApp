
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

				
						<!-- Basic layout-->
						<form action="regturma_docente.php"  method="POST" class="form-horizontal">
							<div class="panel panel-flat">
								<div class="panel-heading">
									<h5 class="panel-title text-bold">Allocate Classes</h5>
								
								</div>

								<div class="panel-body">
								
								
								<div class="form-group">
											<label class="col-lg-3 control-label text-bold">Teachers: </label>
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group">										
										<select data-placeholder="Selecione o Docente" name="docente" class="select">				
<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

include('conexao.php');
// Attempt select query execution
$sql = "SELECT * FROM utilizador WHERE categoria LIKE '%D%' ORDER BY nome AND apelido";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){    
         	
			$id_docente=$row['id_util'];
			$nome=$row['nome']." ".$row['apelido'];
			echo "<option value='$id_docente' name='docente'>".$nome."</option>";
			
        }		
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
								
								

										<div class="form-group">
											<label class="col-lg-3 control-label text-bold">Class: </label>
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group">
<select data-placeholder="Selecione a Turma" name="turma" class="select">
																<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

include('conexao.php');
// Attempt select query execution
$sql = "SELECT * FROM turma ORDER BY nome_turma";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){    
         	
			$id_turma=$row['id_turma'];
			$descricao=$row['nome_turma'];
	
			echo "<option value='$id_turma' name='turma'> Turma ".$descricao."</option>";
				
        }		
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
										
											<div class="form-group">
											<label class="col-lg-3 control-label text-bold">Shift: </label>
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group">
<select data-placeholder="Selecione o Turno" name="turno" class="select">

<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

include('conexao.php');
// Attempt select query execution
$sql = "SELECT * FROM turno ORDER BY nome_turno";

if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){    
         	
			$id_turno=$row['id_turno'];
			$descricao=$row['nome_turno'];
			
			if($row['nome_turno']=='N'){$descricao2="NIGHT";}
			if($row['nome_turno']=='M'){$descricao2="MORNING";}
			if($row['nome_turno']=='T'){$descricao2="EVENING";}

			
		echo "<option value='$id_turno' name='turno'>".$descricao2."</option>";
				
        }		
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
										
		<div class="form-group">
											<label class="col-lg-3 control-label text-bold">Course: </label>
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group">
<select data-placeholder="Selecione o Curso" name="curso" class="select">
																			<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

include('conexao.php');
// Attempt select query execution
$sql = "SELECT * FROM curso ORDER BY nome_curso";

if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){    
         	
			$id_curso=$row['id_curso'];
			$descricao=$row['nome_curso'];

		echo "<option value='$id_curso' name='curso'>".$descricao."</option>";
				
        }		
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


											<div class="form-group">
											<label class="col-lg-3 control-label text-bold">Subject: </label>
												<div class="col-lg-9">
														<div class="row">
														
															<div class="input-group">
<select data-placeholder="Selecione o Disciplina" name="disciplina" class="select">

<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

include('conexao.php');
// Attempt select query execution
$sql = "SELECT * FROM disciplina ORDER BY nome_disciplina";

if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){    
         	
			$id_disciplina=$row['id_disciplina'];
			$disciplina=$row['nome_disciplina'];
		echo "<option value='$id_disciplina' name='disciplina'>".$disciplina."</option>";
				
        }		
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
		
									<div class="text-right">
										<button type="submit" class="btn btn-primary">Save <!--<i class="icon-arrow-right14 position-right">--></i></button>
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
													<h5 class="panel-title text-bold">List of Classes</h5>
												
												</div>

												<table class="table datatable-responsive">
													<thead>
														<tr>
															
															<th>Teacher</th>
															<th>Turma</th>
															<th>Shift</th>
															<th>Course</th>
															<th>Classes</th>
															<th>YEAR/SEM</th>
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

$sql = "SELECT * FROM curso c, turno tn, turma tm, curso_docente cd , utilizador u, disciplina d WHERE u.id_util=cd.id_util AND c.id_curso=cd.id_curso AND tn.id_turno=cd.id_turno AND tm.id_turma=cd.id_turma AND cd.id_disciplina=d.id_disciplina";
if($result = mysqli_query($mysqli, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){    
        		$id_curso_doc=$row['id_curso_doc']; 
			
				echo "<td>" . $row['nome'] . " ".$row['apelido']."</td>";
				echo "<td> Turma " . $row['nome_turma'] . "</td>";
				if($row['nome_turno']=='N'){$descricao2="NOITE";}
				if($row['nome_turno']=='M'){$descricao2="MANHÃ";}
				if($row['nome_turno']=='T'){$descricao2="TARDE";}
				
				echo "<td>" . $descricao2 . "</td>";
				echo "<td>" . $row['nome_curso'] . "</td>";
				echo "<td>" . $row['nome_disciplina'] . "</td>";
				echo "<td>" . $row['ano'] ."/".$row['semestre']. "</td>";
				echo "<td class='text-center'>";
				echo "<ul class='icons-list'>";
				echo "<li><a href='removerCurso_docente.php?id_curso_doc=$id_curso_doc'><i class='icon-cancel-circle2'></i></a></li>";
				
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
