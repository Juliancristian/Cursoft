<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Tabla Cursos</title>
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
        
        <!-- CONTENEDOR HERO -->    
        <div class="container hero">
        	    
				<h4 class="cabecera-tabla">Cursos</h4>
				<a href="form-altaCurso" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Nuevo</a>	  
  
	    </div> <!-- CIERRE CONTENEDOR HERO -->
	        
	</div> <!-- CIERRE HEADER -->

	<!-- CONTENEDOR TABLA-->
	<div class="contenedor-tabla">			
					
		<!-- TABLA -->	
		<table class="table table-striped">
		<thead>
			<tr>
				<th>Código</th>
				<th>Nombre</th>
				<th>Profesor</th>
				<th>Fecha Inicio</th>
				<th>Horario</th>
				<th colspan="2" class="text-center">Operaciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${cursos}" var="c">
			<tr>
				<td>${c.cod}</td>
				<td>${c.catalogo.nombre}</td>
				<td>${c.profesor.apellido}, ${c.profesor.nombre}</td>
				<td>${c.fechaInicio}</td>
				<td>${c.horaInicio}hs - ${c.horaFin}hs</td>
				<td class="text-center"><a href="mostrar-curso?id=${c.id}" class="btn btn-info"><span class="glyphicon glyphicon-picture"></span> Mostrar</a></td>
				<td class="text-center"><a href="editar-curso?id=${c.id}" class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span> Editar</a></td>	
			</tr>
			</c:forEach>
		</tbody>
		</table>
					
		<!-- LINK SALIR -->
		<div class="text-center">
			<a href="./administracion" class="btn btn-default">Salir</a>
		</div>	
						
	</div> <!-- CIERRE CONTENEDOR TABLA -->
	
	<!-- Colocado al final del documento para que las páginas se carguen más rápido -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
	<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>	
</body>
</html>