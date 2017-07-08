<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Form Contacto</title>
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
	                    <li role="presentation"><a href="./home"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
						<li class="active" role="presentation"><a href="#"><span class="glyphicon glyphicon-earphone"></span> Contacto</a></li>
                    </ul>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./login"><span class="glyphicon glyphicon-log-in"></span> Iniciar Sesion</a></p>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./form-altaUsuario"><span class="glyphicon glyphicon-user"></span> Registrarse</a></p>
                </div>
            </div>
        </nav>
        
        <!-- CONTENEDOR --> 	    
		<div class="container">
	
			<form:form action="contactoMensajeExito" modelAttribute="mensaje" method="POST" >
			
			<!-- CONTENEDOR FORMULARIO COLUMN -->
			<div id="contenedor-formulario" class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			
			<!-- CABECERA -->
			<h2 class="text-center">Contacto</h2>
			
			<!-- INPUT DESTINO -->
			<div class="form-group">	
				<label for="nombre">Tu Email</label>
				<form:input  class ="form-control" type="text" path="nombreMail" />
			</div>
			
			<!-- INPUT ASUNTO -->
			<div class="form-group">	
				<label for="asunto">Asunto</label>
				<form:input  class ="form-control" type="text" path="asuntoMail" />
			</div>
			
			<!-- TEXTAREA -->
			<div class="form-group">
  				<label for="texto">Mensaje</label>
  				<form:textarea  rows="5" cols="30" id="texto" path="textoMail" class="form-control" />
			</div>
			
			<!-- BOTON GUARDAR -->
			<div class="text-center">
				<button type="submit" class ="btn btn-success">Enviar</button>
				
				<!-- LINK SALIR -->
				<a href="./home-usuario" class="btn btn-default">Cancelar</a>
			</div>
				
			</div>
			
			</form:form>
			
		</div> <!-- CIERRE CONTENEDOR -->
	        
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