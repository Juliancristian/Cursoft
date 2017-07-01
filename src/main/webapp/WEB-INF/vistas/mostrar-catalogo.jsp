<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Mostrar Catalogo</title>
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
						<li class="active" role="presentation"><a href="#"><span class="glyphicon glyphicon-list-alt"></span> Catálogo</a></li>
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
        	    
			<!-- COLUMNA-->
			<div class="col-md-8 col-md-offset-2">  
			
				<div class="panel panel-primary">
					<div class="panel-heading text-center lead">Catálogo</div>
							  
					<div class="panel-body">
						<img src="images/${imagen}" class="img-thumbnail"  width="180" align="right">
						
						<small class="text-muted">Código</small>
		  					<div class="text-panel">${cod}</div>	
		  					
						<small class="text-muted">Nombre</small>
		  					<div class="text-panel">${nombre}</div>
		  									
						<small class="text-muted">Descripción</small>
		  					<div class="text-panel">${descripcion}</div>
		  										
						<small class="text-muted">Duración</small>
		  					<div class="text-panel">${duracion}</div>
									
						<small class="text-muted">Precio</small>
		  					<div class="text-panel">$ ${precio}</div>
					
					</div> <!-- CIERRE PANEL BODY -->
				  
				</div> <!-- CIERRE PANEL PRIMARY -->
				
				<!-- LINK SALIR -->
				<div class=" margin-cata-salir text-center">
					<a href="./tabla-catalogo" class="btn btn-default">Salir</a>
				</div>
				
			</div>	<!-- CIERRE COLUMNA -->  
  
	    </div> <!-- CIERRE CONTENEDOR HERO -->
	        
	</div> <!-- CIERRE HEADER -->
	
	<!-- Colocado al final del documento para que las páginas se carguen más rápido -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
	<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	
</body>
</html>