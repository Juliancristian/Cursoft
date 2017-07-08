<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login</title>
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
                    <p class="activo navbar-text navbar-right"><a class="navbar-link login" href="#"><span class="glyphicon glyphicon-log-in"></span> Iniciar Sesion</a></p>
                    <p class="navbar-text navbar-right"><a class="navbar-link login" href="./form-altaUsuario"><span class="glyphicon glyphicon-user"></span> Registrarse</a></p>
                </div>
            </div>
        </nav>  
          	    
		<div class="container">
	
			<!-- COLUMNA -->
			<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			
				<div class="contenedor-login">
					
					<form:form action="validar-login" modelAttribute="usuario" method="POST" onsubmit="return validarLogin()">  
								
					<!-- CABECERA -->
					<h2 class="cabecera-formulario text-center">Cursoft</h2>
		
					<!-- INPUT EMAIL -->
					<div class="input-group">
		      			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
		      			<form:input type="text" path="email" id="email"  class="form-control input-lg"  placeholder="Correo Electronico" />
		    		</div>
		
		    		<!-- INPUT CONTRASEÑA -->
		    		<div class="input-group">
				      	<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				     	 <form:input type="password" path="password" id="pass"  class="form-control input-lg" placeholder="Contraseña" />
		   		 	</div>
					<br>
						
					<!-- BOTON INICIAR SESION -->
					<div class="form-group">	
						<button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Iniciar Sesion</button>  			
					</div>
		            
		            <!-- MENSAJE USUARIO Y CONTRASEÑA INCORRECTO -->
					<c:if test="${not empty error}">
		  					<p class="text-danger"><strong>${error}</strong></p>
				    </c:if>	
				    						
					</form:form>
				</div>	<!-- CIERRE CONTENEDOR LOGIN -->
				
			</div> <!-- CIERRE COLUMN -->	
		
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
