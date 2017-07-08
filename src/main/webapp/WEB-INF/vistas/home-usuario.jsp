<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Home Usuario</title>
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
	                    <li class="active" role="presentation"><a href="#"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                    </ul>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./cerrar-sesion"><span class="glyphicon glyphicon-log-out"></span> Cerrar Sesion</a></p>
                </div>
            </div>
        </nav>
        
        <!-- CONTENEDOR HERO -->    
        <div class="container hero">
	        <div class="row">
		        <div class="col-lg-5 col-lg-offset-1 col-md-6 col-md-offset-0">
			        <h1>Bienvenido</h1>
			        <p>${nombreSesion}</p>
			    </div>
		    </div>
		    
		    <!-- CONTENEDOR CATALOGO -->
		    <div class="container text-center">  
				<h4 class="cabecera-catalogo">Catálogo de Cursos</h4>

	  
	  
			  <c:forEach items="${catalogo}" var="cat">
			  <div class="col-sm6 col-md-3">
		 	  	<div class="thumbnail">
		   			<img src="images/${cat.imagen}"  id="imagen-principal-curso" width="150">
		 			<div class="caption">
		 				<h4>${cat.nombre}</h4>
		 				<p><a  href="inscripcion?id=${cat.id}" class="btn btn-success" role="button"><span class="glyphicon glyphicon-shopping-cart"></span> Inscribirse</a><a href="catalogo-verMas?id=${cat.id}" class="btn btn-default" role="button">Ver mas..</a></p>
					</div>
				</div>
			  </div>	   
			  </c:forEach>
	  
			</div>	<!-- CIERRE CONTENEDOR CATALOGO-->  
	    </div> <!-- CIERRE CONTENEDOR HERO -->
	        
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