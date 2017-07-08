<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Contacto OK</title>
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
        
        <!-- CONTENEDOR HERO -->    
        <div class="container hero">
        	    
			<!-- COLUMNA -->
			<div class="col-md-6 col-md-offset-3"> 
			
				<div class="panel panel-primary">
					<div class="panel-heading text-center lead">Contacto</div>
							  
					<div class="panel-body">
						
					<div class="text-panel">Gracias ${nombreMail}</div>
						
						<hr>
						<div class="alert alert-success">
    						Se ha enviado su mensaje EXITOSAMENTE!
  						</div>			
  						
					</div> <!-- CIERRE PANEL BODY -->
				  
				</div> <!-- CIERRE PANEL PRIMARY -->
				
				<!-- LINK SALIR -->
				<div class="margin-contacto-salirOk text-center">
					<a href="./" class="btn btn-default">Salir</a>
				</div>
				
			</div> <!-- CIERRE COLUMNA-->	  
  
	    </div> <!-- CIERRE CONTENEDOR HERO -->
	        
	</div> <!-- CIERRE HEADER BLUE -->	
	
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