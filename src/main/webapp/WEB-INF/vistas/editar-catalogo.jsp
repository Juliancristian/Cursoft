<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Editar Catalogo</title>
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
						<li class="active" role="presentation"><a href="#"><span class="glyphicon glyphicon-list-alt"></span> Cat�logo</a></li>
						<li role="presentation"><a href="./tabla-cursos"><span class="glyphicon glyphicon-list-alt"></span> Cursos</a></li>
						<li role="presentation"><a href="./tabla-usuarios"><span class="glyphicon glyphicon-user"></span> Usuarios</a></li>
						<li role="presentation"><a href="./tabla-profesores"><span class="glyphicon glyphicon-user"></span> Profesores</a></li>
                    </ul>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./cerrar-sesion"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesion</a></p>
                </div>
            </div>
        </nav>
        
        <!-- CONTENEDOR --> 	    
		<div class="container">
	
			<form:form action="editar-catalogoOk" modelAttribute="catalogo" method="POST" onsubmit="return validarFormCatalogo()">
			
			<!-- CONTENEDOR FORMULARIO COLUMN -->
			<div id="contenedor-formulario" class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			
			<!-- CABECERA -->
			<h2 class="text-center">Editar Cat�logo</h2>
			
			<!-- INPUT ID OCULTO -->		
			<form:input type="hidden" name="id" id="id"  path="id" value="${id}" />
			
			<!-- INPUT CODIGO -->
			<div class="form-group">	
				<label for="cod">C�digo</label>
				<form:input type="text" name="cod" id="cod" class ="form-control"  path="cod" placeholder="Ingresar codigo" value="${cod}"/>
			</div>
			
			<!-- INPUT NOMBRE -->
			<div class="form-group">	
				<label for="nombre">Nombre</label>
				<form:input type="text" name="nombre" id="nombre" class ="form-control"  path="nombre" placeholder="Ingresar Nombre" value="${nombre}"/>
			</div>
			
			<!-- TEXTAREA DESCRIPCION -->
			<div class="form-group">
  				<label for="comment">Descripci�n</label>
  				<form:textarea  rows="5" cols="30" id="descripcion" path="descripcion" class="form-control" value="${descripcion}"/>
			</div>
			
			<!-- INPUT IMAGEN -->
			<img src="images/${imagen}"  class="center-block img-thumbnail" width="150">
			
			<div class="form-group">	
				<label for="imagen">Imagen</label>
				<form:input type="file" name="imagen" id="imagen"  path="imagen" />
			</div>
			
			<!-- INPUT DURACION -->
			<div class="form-group">	
				<label for="duracion">Duraci�n Aproximada</label>			
				<form:select path="duracion" id="duracion" class ="form-control">
					<option value="${duracion}">${duracion}</option>
					
					<option value="1 Mes">1 Mes</option>
					<option value="2 Meses">2 Meses</option>
					<option value="3 Meses">3 Meses</option>
					<option value="4 Meses">4 Meses</option>
					<option value="5 Meses">5 Meses</option>
					<option value="6 Meses">6 Meses</option>
					<option value="7 Meses">7 Meses</option>
					<option value="8 Meses">8 Meses</option>
					<option value="9 Meses">9 Meses</option>
					<option value="10 Meses">10 Meses</option>
					<option value="11 Meses">11 Meses</option>
					<option value="12 Meses">12 Meses</option>
				</form:select>
			</div>
			
			<!-- INPUT PRECIO -->
			<div class="form-group">	
				<label for="precio">Precio</label>
				<form:input type="text" name="precio" id="precio" class ="form-control"  path="precio" placeholder="Ingresar Precio" value="${precio}"/>
			</div>
			
			<!-- BOTON GUARDAR -->
			<div class="text-center">
				<button type="submit" class ="btn btn-success">Actualizar</button>
				
			<!-- LINK SALIR -->
				<a href="./tabla-catalogo" class="btn btn-default">Cancelar</a>
			</div>
				
			</div>
			
			</form:form>
			
		</div> <!-- CIERRE CONTENEDOR -->
	        
	</div> <!-- CIERRE HEADER -->
	
	<!-- Colocado al final del documento para que las p�ginas se carguen m�s r�pido -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
	<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>