<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Form Alta Usuario</title>
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
	                    <li role="presentation"><a href="./home"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
						<li role="presentation"><a href="./contacto"><span class="glyphicon glyphicon-earphone"></span> Contacto</a></li>
                    </ul>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./login"><span class="glyphicon glyphicon-log-in"></span> Iniciar Sesion</a></p>
                    <p class="activo navbar-text navbar-right"><a class="navbar-link login" href="#"><span class="glyphicon glyphicon-user"></span> Registrarse</a></p>
                </div>
            </div>
        </nav>
        
        <!-- CONTENEDOR --> 	    
		<div class="container">
	
			<form:form action="altaUsuario" modelAttribute="usuario" method="POST" onsubmit="return validarFormUsuario()">
			
			<!-- CONTENEDOR FORMULARIO COLUMN -->
			<div id="contenedor-formulario-usuario" class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			
				<!-- CABECERA -->
				<h2 class="titulo-registrarse">Alta Usuario</h2>
				
				<!-- INPUT DNI -->
				<div class="input-group">
	      			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	      			<form:input type="text" path="dni" name="dni" id="dni"  class ="form-control"   placeholder="Ingresar dni"/>
	    		</div>
	    		<br>
	    		<!-- INPUT NOMBRE -->
				<div class="input-group">
	      			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
					<form:input type="text" name="nombre" id="nombre" class ="form-control"  path="nombre" placeholder="Ingresar Nombre" />
	    		</div>
	    		<br>
	    		<!-- INPUT APELLIDO -->
				<div class="input-group">
	      			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
					<form:input type="text" name="apellido" id="apellido" class ="form-control"  path="apellido" placeholder="Ingresar Apellido" />
	    		</div>
	    		<br>
	    		<!-- INPUT TELEFONO -->
				<div class="input-group">
	      			<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
					<form:input type="text" name="telefono" id="telefono" class ="form-control" path="telefono" placeholder="Ingresar Telefono" />
	    		</div>
	    		<br>
	    		<!-- INPUT EMAIL -->
				<div class="input-group">
	      			<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
					<form:input type="text" id="email" class ="form-control"  path="email" placeholder="Ingresar Email" />
	    		</div>			
				<br>
				<!-- INPUT PASSWORD -->
				<div class="input-group">
	      			<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
					<form:input type="password" id="pass" class ="form-control"  path="password" placeholder="Ingresar Password" />
	    		</div>
				<br>
				
				<!-- BOTON GUARDAR -->
				<div class="text-center">
					<button type="submit" class ="btn btn-success">Guardar</button>
					
					<!-- LINK SALIR -->
					<a href="./home" class="btn btn-default">Cancelar</a>
				</div>
				
			</div>
			
			</form:form>
			
		</div> <!-- CIERRE CONTENEDOR -->
	    
	</div> <!-- CIERRE CONTENEDOR HERO -->
	
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