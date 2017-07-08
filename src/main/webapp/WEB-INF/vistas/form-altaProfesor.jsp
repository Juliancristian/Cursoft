<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Form Alta Profesor</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" >
	<link href="css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="css/estilo.css" rel="stylesheet">
	<script type="text/javascript" src="js/validar.js"></script>
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
	                    <li role="presentation"><a href="./administracion"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
						<li role="presentation"><a href="./tabla-catalogo"><span class="glyphicon glyphicon-list-alt"></span> Catálogo</a></li>
						<li role="presentation"><a href="./tabla-cursos"><span class="glyphicon glyphicon-list-alt"></span> Cursos</a></li>
						<li role="presentation"><a href="./tabla-usuarios"><span class="glyphicon glyphicon-user"></span> Usuarios</a></li>
						<li class="active" role="presentation"><a href="#"><span class="glyphicon glyphicon-user"></span> Profesores</a></li>
                    </ul>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./cerrar-sesion"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesion</a></p>
                </div>
            </div>
        </nav>
        
        <!-- CONTENEDOR --> 	    
		<div class="container">
	
			<form:form action="altaProfesor" modelAttribute="profesor" method="POST" onsubmit="return validarFormProfesor()">
			
			<!-- CONTENEDOR FORMULARIO COLUMN -->
			<div id="contenedor-formulario-profesor" class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			
			<!-- CABECERA -->
			<h2 class="text-center">Alta Profesor</h2>
			
			<!-- INPUT DNI -->
			<div class="form-group">	
				<label for="dni">Dni</label>
				<form:input  type="text" name="dni" id="dni" class ="form-control" path="dni" placeholder="Ingresar Dni" />
			</div>
			
			<!-- INPUT NOMBRE -->
			<div class="form-group">	
				<label for="nombre">Nombre</label>
				<form:input type="text" name="nombre" id="nombre" class ="form-control" path="nombre" placeholder="Ingresar Nombre" />
			</div>
			
			<!-- INPUT APELLIDO -->
			<div class="form-group">	
				<label for="apellido">Apellido</label>
				<form:input type="text" name="apellido" id="apellido" class ="form-control" path="apellido" placeholder="Ingresar Apellido" />
			</div>
						
			<!-- INPUT TELEFONO -->
			<div class="form-group">	
				<label for="telefono">Telefono</label>
				<form:input type="text" name="telefono" id="telefono" class ="form-control" path="telefono" placeholder="Ingresar Telefono" />
			</div>
			
			<!-- INPUT ESPECIALIDAD -->
			<div class="form-group">	
				<label for="especialidad">Especialidad</label>
				<form:input type="text" name="especialidad" id="especialidad" class ="form-control" path="especialidad" placeholder="Ingresar Especialidad" />
			</div>
			
			<!-- BOTON GUARDAR -->
			<div class="text-center">
				<button type="submit" class ="btn btn-success">Guardar</button>
				
				<!-- LINK SALIR -->
				<a href="./tabla-profesores" class="btn btn-default">Cancelar</a>
			</div>
				
			</div>
			
			</form:form>
			
		</div> <!-- CIERRE CONTENEDOR -->
	        
	</div> <!-- CIERRE HEADER -->
	
	<!-- Colocado al final del documento para que las páginas se carguen más rápido -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
	<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>	
</body>
</html>