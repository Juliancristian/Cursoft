<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Home Administrador</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" >
	<link href="css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="css/estilo.css" rel="stylesheet">
</head>
 <body>

    <!-- HEADER BLUE -->	
    <div class="header-blue">
    	<nav class="navbar navbar-default navigation-clean-search">
        	<div class="container">
            	<div class="navbar-header"><a class="navbar-brand navbar-link" href="#">Cursoft</a>
                	<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                	<ul class="nav navbar-nav">
	                    <li class="active" role="presentation"><a href="#"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
						<li role="presentation"><a href="./tabla-catalogo"><span class="glyphicon glyphicon-list-alt"></span> Catálogo</a></li>
						<li role="presentation"><a href="./tabla-cursos"><span class="glyphicon glyphicon-list-alt"></span> Cursos</a></li>
						<li role="presentation"><a href="./tabla-usuarios"><span class="glyphicon glyphicon-user"></span> Usuarios</a></li>
						<li role="presentation"><a href="./tabla-profesores"><span class="glyphicon glyphicon-user"></span> Profesores</a></li>
                    </ul>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./cerrar-sesion"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesion</a></p>
                </div>
            </div>
        </nav>
        
        <!-- CONTENEDOR HERO -->    
        <div class="container hero">
	        <div class="row">
		        <div class="col-lg-5 col-lg-offset-1 col-md-6 col-md-offset-0">
			        <h1>Bienvenido</h1>
			    </div>
		    </div>
		    
		    <!-- CONTENEDOR PANEL ADMINISTRACION -->
		    <div class="container text-center">  
				<h4 class="cabecera-catalogo">Panel de Administración</h4>

			<div class="container text-center">
			
				<!-- PANEL CATALOGO -->
			    <div class="container col-sm6 col-md-4">
			        <div class="panel panel-primary">
			            <div class="panel-heading">Catálogo</div>
			            <div class="panel-body"><a href="tabla-catalogo" class="btn btn-default"><span class="glyphicon glyphicon-list-alt"></span> Mostrar</a></div>
			        </div>
			    </div> 
			
				<!-- PANEL CURSOS-->
			    <div class="container col-sm6 col-md-4">
			        <div class="panel panel-primary">
			            <div class="panel-heading">Cursos</div>
			            <div class="panel-body"><a href="tabla-cursos" class="btn btn-default"><span class="glyphicon glyphicon-list-alt"></span> Mostrar</a></div>
			        </div>
			    </div> 
			    
				<!-- PANEL ESTUDIANTES -->
			    <div class="container col-sm6 col-md-4">
			        <div class="panel panel-primary">
			            <div class="panel-heading">Usuarios</div>
			            <div class="panel-body"><a href="tabla-usuarios" class="btn btn-default"><span class="glyphicon glyphicon-list-alt"></span> Mostrar</a></div>
			        </div>
			    </div> 
			    
			    <!-- PANEL PROFESORES -->
			    <div class="container col-sm6 col-md-4">
			        <div class="panel panel-primary">
			            <div class="panel-heading">Profesores</div>
			            <div class="panel-body"><a href="tabla-profesores" class="btn btn-default"><span class="glyphicon glyphicon-list-alt"></span> Mostrar</a></div>
			        </div>
			    </div> 
			    
			   	<!-- PANEL RESERVAS -->
			    <div class="container col-sm6 col-md-4">
			        <div class="panel panel-primary">
			            <div class="panel-heading">Reservas</div>
			            <div class="panel-body"><a href="./tabla-reservas" class="btn btn-default"><span class="glyphicon glyphicon-list-alt"></span> Mostrar</a></div>
			        </div>
			    </div> 
			    	 
			   </div>	<!-- CIERRE CONTENEDOR -->  
	  

	  
			</div>	<!-- CIERRE PANEL DE ADMISTRACION -->  
	    </div> <!-- CIERRE CONTENEDOR HERO -->
	        
	</div> <!-- CIERRE HEADER -->
   
	<!-- FOOTER -->
	<footer class="container-fluid text-center">
	  <small>Cursoft. Copyright 2005-2017</small>
	</footer>
	
	<!-- Colocado al final del documento para que las páginas se carguen más rápido -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
	<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>

 </body>
</html>