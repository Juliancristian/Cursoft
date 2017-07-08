<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Inscripcion Paso2</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" >
	<link href="css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="css/estilo.css" rel="stylesheet">
</head>
 <body>
 
	<!-- CONTENEDOR HERO --> 
    <div class="header-blue">   
    	<nav class="navbar navbar-default navigation-clean-search">
        	<div class="container">
            	<div class="navbar-header"><a class="navbar-brand navbar-link" href="#">Cursoft</a>
                	<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                	<ul class="nav navbar-nav">
	                    <li role="presentation"><a href="./home-usuario"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                    </ul>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./cerrar-sesion"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesion</a></p>
                </div>
            </div>
        </nav>
        
    	<!-- CONTENEDOR -->
    	<div class="container">
    	
        	<!-- COLUMNA-->
			<div id="contenedor-formaPago" class="col-md-6 col-md-offset-3">
			
				<div class="panel panel-primary">
					<div class="panel-heading">Reserva</div>
							  
					<div class="panel-body">
						<div class="row">
	  						<div class="col-xs-3 col-sm-2"><img src="images/${imagenCurso}" class="img-thumbnail"  width="80"></div>
	  						<div class="col-xs-6 col-sm-5">
	  							<small class="text-muted">Curso</small>
			  					<div class="text-panel">${nombreCurso}</div>
			  				</div>
	  					</div>	  					  					  				
					</div>
				  
				</div>
				
				<div class="panel panel-primary">
					<div class="panel-heading">Forma de Pago</div>
							  
					<div class="panel-body">
						<div class="row">
	  						<div class="col-xs-3 col-sm-2"><img src="images/mercado-pago.png" class="img-thumbnail"  width="80"></div>
	  						<div class="col-xs-4 col-sm-6">
	  							<small class="text-muted">Mercado Pago</small>
			  					<div class="text-panel">Monto a Pagar $ ${precioCurso}</div>
			  				</div>
			  				<div class="col-xs-5 col-sm-4 text-right"><a href="inscripcionPaso3" class="btn btn-success">Elegir</a></div>
	  					</div>	
	  					<hr>
	  					<div class="row">
	  						<div class="col-xs-3 col-sm-2"><img src="images/rapipago.jpg" class="img-thumbnail"  width="80"></div>
	  						<div class="col-xs-4 col-sm-6">
	  							<small class="text-muted">RapiPago</small>
			  					<div class="text-panel">Monto a Pagar $ ${precioCurso}</div>
			  				</div>
			  				<div class="col-xs-5 col-sm-4 text-right"><a href="inscripcionPaso3" class="btn btn-success">Elegir</a></div>
	  					</div>  					 				
					</div>
				  
				</div>
				
				<!-- LINK SALIR -->
				<div class="text-center">
					<a href="./home-usuario" class="btn btn-default">Salir</a>
				</div>
				
			 </div> <!-- CIERRE COLUMNA -->
			 
		</div> <!-- CIERRE CONTENEDOR -->
		
	</div>	<!-- CIERRE HEADER BLUE -->
	
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