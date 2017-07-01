<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Form Alta Curso</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" >
	<link href="css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="css/estilo.css" rel="stylesheet">
	<link href="css/calendario.css" rel="stylesheet">
	<script src="js/calendar.js"></script>
	<script src="js/calendar-es.js"></script>
	<script src="js/calendar-setup.js"></script>
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
						<li class="active" role="presentation"><a href="#"><span class="glyphicon glyphicon-list-alt"></span> Cursos</a></li>
						<li role="presentation"><a href="./tabla-usuarios"><span class="glyphicon glyphicon-user"></span> Usuarios</a></li>
						<li role="presentation"><a href="./tabla-profesores"><span class="glyphicon glyphicon-user"></span> Profesores</a></li>
                    </ul>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./cerrar-sesion"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesion</a></p>
                </div>
            </div>
        </nav>
        
        <!-- CONTENEDOR --> 	    
		<div class="container">
	
		<form:form action="altaCurso" modelAttribute="curso" method="POST">
		
			<!-- CONTENEDOR FORMULARIO COLUMN -->
			<div id="contenedor-formulario-curso" class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2">	
						
			<!-- CABECERA -->
			<h2 class="text-center">Nuevo</h2>
		
			
			<!-- INPUT CODIGO -->
			<div class="form-group">	
				<label for="cod">Código</label>
				<form:input name="cod" id="cod" class ="form-control" type="text" path="cod" placeholder="Ingresar codigo" />
			</div>
						
			<!-- SELECT CURSO -->
			<div class="form-group">	
				<label for="curso">Curso</label>
				<form:select path="catalogo.id" id="Catalogo" class ="form-control">
					<option>Seleccionar</option>
					
					<!-- LISTA CATALOGO NOMBRE -->
					<c:forEach items="${catalogo}" var="cat">
						<option value="${cat.id}">${cat.nombre}</option>
					</c:forEach>
				</form:select>
			</div>
			
			<!-- SELECT PROFESOR -->
			<div class="form-group">	
				<label for="profesor">Profesor</label>
				<form:select path="profesor.id" id="Profesor" class ="form-control">
					<option>Seleccionar</option>
					
					<!-- LISTA PROFESORES -->
					<c:forEach items="${profesores}" var="p">
						<option value="${p.id}">${p.apellido}, ${p.nombre}</option>
					</c:forEach>
				</form:select>
			</div>
			
			<!-- INPUT FECHA INICIO-->		
			<label for="fechaInicio">Fecha Inicio</label>
			<div class="form-group">
				<div class="row">
				
					<!-- COLUMNA -->
	  				<div class="col-xs-6">
	    				<form:input type="text" id="ingreso" name="fechaInicio"  path="fechaInicio" placeholder="YYYY-MM-DD" class=" form-control" />
	  				</div>
	  				
	  				<!-- COLUMNA -->
	  				<div class="col-xs-6">
	    				<!-- CALENDARIO -->		
						<img src="images/calendario.png" id="lanzador" class="imagen-calendario">
	
						<!-- script que define y configura el calendario--> 
						<script type="text/javascript"> 
					 	Calendar.setup({ 
					  	inputField : "ingreso",  // id del campo de texto 
					  	ifFormat : "%Y-%m-%d", // formato de la fecha 
					  	button : "lanzador"  // el id del botón  
						}); 
						</script>
	  				</div>			
				</div>
			</div>
			
			<!-- HORARIO -->
			<label for="horario">Horario</label>
			<div class="form-group">
				<div class="row">
				
					<!-- COLUMNA -->
 					<div class="col-xs-6">
 						<!-- INPUT HORA INICIO -->
 						<small>Inicia</small>
    					<form:input type="text" id="horaInicio" name="horaInicio"  path="horaInicio" placeholder="HH:MM" class=" form-control" /> 						
  					</div>
  					
  					<!-- COLUMNA -->
  					<div class="col-xs-6">
  						<!-- INPUT HORA FIN -->
  						<small>Finaliza</small>
    					<form:input type="text" id="horaFin" name="horaFin"  path="horaFin" placeholder="HH:MM" class=" form-control" />				
  					</div>			
				</div>
			</div>
			
			<!-- BOTON GUARDAR -->
			<div class="text-center">
				<button type="submit" class ="btn btn-success">Guardar</button>
				
			<!-- LINK SALIR -->
				<a href="./tabla-cursos" class="btn btn-default">Cancelar</a>
			</div>
			
			</div> <!-- CIERRE CONTENEDOR FORMULARIO COLUMN -->
		</form:form>
			
		</div> <!-- CIERRE CONTENEDOR -->
	        
	</div> <!-- CIERRE HEADER -->
	
	<!-- Colocado al final del documento para que las páginas se carguen más rápido -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
	<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>	
</body>
</html>