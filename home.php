<!DOCTYPE html>

<?php 

require_once 'app/config/config.php';
require_once 'app/modules/hg-api.php';

$hg = new HG_API(HG_API_KEY);
$dolar = $hg->dolar_quotation();



?>

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
    <link rel="shortcut icon" href="http://appserver:8081/suc/images/favicons/dc/favicon.png">

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
	<script type="text/javascript" src="assets/js/plugins/forms/selects/select2.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/forms/styling/uniform.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/tables/datatables/datatables.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/tables/datatables/extensions/responsive.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/media/fancybox.min.js"></script>

	<script type="text/javascript" src="assets/js/core/libraries/jquery_ui/datepicker.min.js"></script>
	<script type="text/javascript" src="assets/js/core/libraries/jquery_ui/effects.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/ui/moment/moment.min.js"></script>
	<script type="text/javascript" src="assets/js/plugins/pickers/daterangepicker.js"></script>
	<script type="text/javascript" src="assets/js/plugins/pickers/pickadate/picker.js"></script>
	<script type="text/javascript" src="assets/js/plugins/pickers/pickadate/picker.date.js"></script>


	<script type="text/javascript" src="assets/js/plugins/visualization/echarts/echarts.js"></script>

	<script type="text/javascript" src="assets/js/core/app.js"></script>
	<script type="text/javascript" src="assets/js/pages/form_layouts.js"></script>
	<script type="text/javascript" src="assets/js/pages/datatables_responsive.js"></script>
	<script type="text/javascript" src="assets/js/pages/gallery.js"></script>

	<!-- /theme JS files -->

</head>

<body oncontextmenu="return false" class="layout-boxed">


	<!-- Main navbar -->
	<div class="navbar navbar-inverse">
            <div class="navbar-header">
                <h5 class="text-semibold class text-uppercase" style="margin-left: 2em;"> TeacherApp</h5>
            </div>


	</div>
	<!-- /main navbar -->


	<!-- Page header -->

	<!-- /page header -->

	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">


			<!-- Main content -->
			<div class="content-wrapper">

			    <div class="row">
				    <div class="">
						<!-- Submit a ticket -->



						 <center>	<img src="#" alt="TeacherApp" width="10%"></center>





						<!-- /submit a ticket -->
					</div>
				</div>

				<!-- Info blocks -->
				<div class="row">

					<div class="col-md-3">
						<div class="panel">
							<div class="panel-body text-center">
								<div class="icon-object border-teal-400 text-teal">
								    <i class="icon-cash3"></i></div>
								
								<h5 class="text-semibold">USD</h5>
								<p class="mb-15">API quotations $USD</p>
								
								<!--data-toggle="modal" data-target="#modal_usuarios" -->
								
								<?php if($hg->is_error() == false): ?>
								<a href="#"   class="btn bg-purple-400"><?php echo "BUY: ".$dolar['buy']."</br>SELL: ".$dolar['sell']."</br>VARIATION: ".$dolar['variation']; ?></a>
								<?php else:  ?>
								<a href="#"   class="btn bg-purple-400"><?php echo "Service unavalible"; ?></a>
								<?php endif;  ?>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="panel">
							<div class="panel-body text-center">
								<div class="icon-object border-danger-400 text-danger"><i class="icon-books"></i></div>
								<h5 class="text-semibold">Academic Registration</h5>
								<p class="mb-15">It allows to manage the courses, classes, shifts, teachers.</p>
								<a  href="#" data-toggle="modal" data-target="#modal_dividas" class="btn bg-danger-400">Select module</a>
							</div>
						</div>
					</div>




					<div class="col-md-3">
						<div class="panel">
							<div class="panel-body text-center">
								<div class="icon-object border-orange-400 text-orange"><i class="icon-stats-growth"></i></div>
								<h5 class="text-semibold">Estatísticas</h5>
								<p class="mb-15">Permite visualizar as estatisticas gerais e por curso.</p>
								<a  href="#" data-toggle="modal" data-target="#modal_obras" class="btn bg-orange-400">Selecionar módulo</a>
							</div>
						</div>
					</div>

					<div class="col-md-3">
						<div class="panel">
							<div class="panel-body text-center">
								<div class="icon-object border-purple-400 text-purple"><i class="icon-users2"></i></div>
								<h5 class="text-semibold">Helder Timba</h5>
								<p class="mb-15">E-mail: helder.d.timba@gmail.com</p>
								<p class="mb-15">Cellphone 1: +258 827 546 234</p>
								<p class="mb-15">Cellphone 2: +258 849 694 515</p>
								
							</div>
						</div>
					</div>

				</div>
				<!-- /info blocks -->


			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->



                    <!-- modal GESTAO -->
                    <div id="modal_gestao" class="modal fade" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h5 class="modal-title text-bold">Selecione um módulo</h5>
                                </div>

                                <div class="modal-body text-center">

                                    <div class="row">
                                        <div class="col-xs-6">

                                            <form method="post" action = "dc-inefp-student">
                                                <button class="btn bg-teal-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Disciplina 1</span></button>

											<br>

                                                <button class="btn bg-teal-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Disciplina 2</span></button>

											<br>


                                                <button class="btn bg-teal-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Disciplina 3</span></button>
                                            </form>

                                        </div>

                                        <div class="col-xs-6">
                                            <form method="post" action = "dc-inefp-teacher">
                                                <button class="btn bg-teal-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Disciplina 4</span></button>
                                            </form>
											<br>
                                            <form method="post" action = "dc-inefp-inscriptions">
                                                <button class="btn bg-teal-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Disciplina 5</span></button>
                                            </form>
											<br>

                                            <form method="post" action = "dc-inefp-partners">
                                                <button class="btn bg-teal-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Disciplina 6</span></button>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-chevron-down"></i>  Fechar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /modal gestao -->




            <!-- modal DIVIDAS -->
            <div id="modal_dividas" class="modal fade" >
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h5 class="modal-title text-bold">Select module</h5>
                        </div>

                        <div class="modal-body text-center">

                            <div class="row">
                                <div class="col-xs-6">
                                    <form method="post" action = "course.php">
                                        <button class="btn bg-danger-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book"></i> <span class="text-bold text-uppercase">Courses</span></button>
                                    </form>
                                    <br>

                                    <form method="post" action = "classes.php">
                                        <button class="btn bg-danger-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-archive"></i> <span class="text-bold text-uppercase">Classes</span></button>
                                    </form>

									 <br>
                                    <form method="post" action = "teacher.php">
                                        <button class="btn bg-danger-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-user"></i> <span class="text-bold text-uppercase">Teacher</span></button>
                                    </form>

									<br>
									 <form method="post" action = "curso_custo.php">
                                        <button class="btn bg-danger-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-stack"></i> <span class="text-bold text-uppercase">Finanças</span></button>
                                    </form>


                                </div>

                                <div class="col-xs-6">
                                    <form method="post" action = "shifts.php">
                                        <button class="btn bg-danger-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-archive"></i> <span class="text-bold text-uppercase">Shifts</span></button>
                                    </form>
                                    <br>
                                    <form method="post" action = "subjects.php">
                                        <button class="btn bg-danger-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-stack"></i> <span class="text-bold text-uppercase">Subjects</span></button>
                                    </form>

									 <br>
                                    <form method="post" action = "student.php">
                                        <button class="btn bg-danger-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-graduation2"></i> <span class="text-bold text-uppercase">Student</span></button>
                                    </form>

									 <br>
                                    <form method="post" action = "turma_docente.php">
                                        <button class="btn bg-danger-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-archive"></i> <span class="text-bold text-uppercase">Alocar Turmas</span></button>
                                    </form>

                                </div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-chevron-down"></i>  Fechar</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /modal dividas -->


                    <!-- modal OBRAS -->
                    <div id="modal_obras" class="modal fade" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h5 class="modal-title text-bold">Selecione um módulo</h5>
                                </div>

                                <div class="modal-body text-center">

                                    <div class="row">
                                        <div class="col-xs-6">
                                            <form method="post" action = "gerais.php">
                                                <button class="btn bg-orange-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-statistics"></i> <span class="text-bold text-uppercase">Gerais</span></button>
                                            </form>
                                        </div>


                                        <div class="col-xs-6">
                                            <form method="post" action = "cursoE.php">
                                                <button class="btn bg-orange-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Por Curso</span></button>
                                            </form>
                                        </div>

                                           <div class="col-xs-6">  </br>
                                            <form method="post" action = "turnoE.php">
                                                <button class="btn bg-orange-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Por Turno</span></button>
                                            </form>
                                        </div>

                                        <div class="col-xs-6">  </br>
                                            <form method="post" action = "disciplinaE.php">
                                                <button class="btn bg-orange-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Por Disciplina</span></button>
                                            </form>
                                        </div>

                                           <div class="col-xs-6">  </br>
                                            <form method="post" action = "docenteE.php">
                                                <button class="btn bg-orange-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Por Docente</span></button>
                                            </form>
                                        </div>

                                           <div class="col-xs-6">  </br>
                                            <form method="post" action = "estudanteE.php">
                                                <button class="btn bg-orange-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-book3"></i> <span class="text-bold text-uppercase">Por Estudante</span></button>
                                            </form>
                                        </div>

                                    </div>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-chevron-down"></i>  Fechar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /modal obras -->

            <!-- modal usuarios -->
            <div id="modal_usuarios" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h5 class="modal-title">Selecione um módulo</h5>
                        </div>

                        <div class="modal-body text-center">

                            <div class="row">
                                <div class="col-xs-6">
                                    <form method = "post" action = "contabilidade.php">
                                        <button class="btn bg-purple-400 btn-block btn-float btn-float-lg" type="submit"><i class="icon-user-plus"></i> <span class="text-bold text-uppercase">Novo Usuário</span></button>
                                    </form>
                                    <br>
       
                                </div>

                            </div>

                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-chevron-down"></i>  Fechar</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /modal usuarios -->




				<!-- Footer -->
            <div class="footer text-bold text-grey-300">

                &copy; 2019 <a href="#" class="text-success-300">TeacherApp</a>
            </div>
            <!-- /footer -->

	</div>
	<!-- /page container -->

</body>
</html>
