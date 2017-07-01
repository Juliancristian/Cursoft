<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Catalogo Ver Mas</title>
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
	                    <li role="presentation"><a href="./home-usuario"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
						<li role="presentation"><a href="#"><span class="glyphicon glyphicon-earphone"></span> Contacto</a></li>
                    </ul>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./cerrar-sesion"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesion</a></p>
                </div>
            </div>
        </nav>	
        
        <div class="container hero">
        	
        	<!-- COLUMNA -->
 			<div class="col-md-8">			
				<!-- TITULO -->
				<h1>Curso de ${nombre}</h1>
		
					<!-- DURACION -->
					<p>Duración Aproximada ${duracion}</p>
			
					<!-- BOTON INSCRIPCION -->
					<div class="contenedor-margin">
						<a href="inscripcion?id=${id}" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-shopping-cart"></span> Inscribirse</a>
					</div>
			</div>
			
			<!-- COLUMNA -->
			<div class="col-md-4 text-center">
					<!-- IMAGEN -->
					<div class="contenedor-imagen">
						<img src="images/${imagen}" class="img-thumbnail">
						
						<!-- PRECIO -->
						<div class="precio-curso">$ ${precio}</div>
					</div>
			</div>	
					         
        </div> <!-- CIERRE CONTENEDOR HERO-->
        
        
	</div> <!-- CIERRE HEADER BLUE -->

	<!-- CONTENEDOR DESCRIPCION -->
	<div class="container">
	
		<!-- DESCRIPCION -->
		<div class="descripcion-curso">
			<h2>Descripción</h2>
				<p class="text-muted">${descripcion}</p>
		</div>
	
	</div>
	
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