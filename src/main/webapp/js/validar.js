function validarLogin(){
	
	var email = document.getElementById('email').value;
	var emailReg = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
		
	if(!emailReg.test(email)) {
		alert("Correo Electronico Invalido");
		return false;
	} 
	var pass = document.getElementById("pass");
	if( pass.value == ""){
		alert("Ingrese la contrasena");
		return false;
	}
}

function validarFormUsuario(){
		
	var dni = document.getElementById("dni");
	var expresionRegularDni  =/\s/;  // no tenga espacios en blanco
	if( dni.value == ""){
		alert("Ingrese el dni");
		return false;
	}
	else if(expresionRegularDni.test(dni.value)){
		  alert("Existen espacios en blanco en dni");  
		  return false;
	  }
	
	var nombre = document.getElementById("nombre");
	if( nombre.value == ""){
		alert("Ingrese el nombre");
		return false;
	}
	
	var apellido = document.getElementById("apellido");
	if( apellido.value == ""){
		alert("Ingrese el apellido");
		return false;
	}
	
	var numeroTelefono = document.getElementById("telefono");
	var expresionRegular1 = /^([0-8]+){8}$/;	// validar el numero
	var expresionRegular2  =/\s/;	// no tenga espacios en blanco
	 
	if(numeroTelefono.value==""){
		alert("Ingrese el telefono");
		return false;
	}
	else if(expresionRegular2.test(numeroTelefono.value)){
		alert("Existen espacios en blanco en telefono");  
		return false;
	}
	else if(!expresionRegular1.test(numeroTelefono.value)){
		alert("Numero de telefono incorrecto");
		return false;
	}
	    	
	var email = document.getElementById('email').value;
	var emailReg = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
		
	if(!emailReg.test( email)) {
		alert("Correo Electronico Invalido");
		return false;
	} 
	
	var pass = document.getElementById("pass");
	if( pass.value == ""){
		alert("Ingrese la contrasena");
		return false;
	}
}

function validarFormCatalogo(){
	
	var cod = document.getElementById("cod");
	var expresionRegularCod  =/\s/;  // no tenga espacios en blanco
	if( cod.value == ""){
		alert("Ingrese el codigo");
		return false;
	}
	else if(expresionRegularCod.test(cod.value)){
		  alert("Existen espacios en blanco en codigo");  
		  return false;
	}
	
	var nombre = document.getElementById("nombre");
	if( nombre.value == ""){
		alert("Ingrese el nombre");
		return false;
	}
	
	var imagen = document.getElementById("imagen");
	if( imagen.value == ""){
		alert("Seleccione una imagen");
		return false;
	}
	
	var duracion = document.getElementById("duracion");
	if( duracion.value == ""){
		alert("Seleccione la duracion");
		return false;
	}
	
	var precio = document.getElementById("precio");
	if( precio.value == ""){
		alert("Ingrese el precio");
		return false;
	}
}

function validarFormCurso(){
	
	var cod = document.getElementById("cod");
	var expresionRegularCod  =/\s/;  // no tenga espacios en blanco
	if( cod.value == ""){
		alert("Ingrese el codigo");
		return false;
	}
	else if(expresionRegularCod.test(cod.value)){
		  alert("Existen espacios en blanco en codigo");  
		  return false;
	}
	
	var catalogo = document.getElementById("catalogo");
	if( catalogo.value == ""){
		alert("Seleccione el curso");
		return false;
	}
	
	var profesor = document.getElementById("profesor");
	if( profesor.value == ""){
		alert("Seleccione el profesor");
		return false;
	}
	
	var fechaInicio = document.getElementById("fechaInicio");
	if( fechaInicio.value == ""){
		alert("Seleccione una fecha en el calendario");
		return false;
	}
	
	var horaInicio = document.getElementById("horaInicio");
	if( horaInicio.value == ""){
		alert("Ingrese hora inicia");
		return false;
	}
	
	var horaFin = document.getElementById("horaFin");
	if( horaFin.value == ""){
		alert("Ingrese hora finaliza");
		return false;
	}
}

function FormatoHora(evt,str) { 
	var nav4 = window.Event ? true : false; 
	var key = nav4 ? evt.which : evt.keyCode; 
	hora=str.value 
	
	if(hora.length==0) { 
		return ((key >= 48 && key <= 50)); 
	} 
	
	if(hora.length==1) { 
		if(hora.charAt(0)==2) {
			return ((key >= 48 && key <= 51));	
		} 
		else{
			return ((key >= 48 && key <= 57));
		} 
	} 
	
	if(hora.length==2) { 
		return ((key == 58)); 
	} 
	
	if(hora.length==3) { 
		return ((key >= 48 && key <= 53)); 
	} 
	
	if(hora.length==4) { 
		return ((key >= 48 && key <= 57)); 
	} 
	if(hora.length>4) { 
		return false; 
	} 
} 

function validarFormProfesor(){
	
	var dni = document.getElementById("dni");
	var expresionRegularDni  =/\s/;  // no tenga espacios en blanco
	if( dni.value == ""){
		alert("Ingrese el dni");
		return false;
	}
	else if(expresionRegularDni.test(dni.value)){
		  alert("Existen espacios en blanco en dni");  
		  return false;
	  }
	
	var nombre = document.getElementById("nombre");
	if( nombre.value == ""){
		alert("Ingrese el nombre");
		return false;
	}
	
	var apellido = document.getElementById("apellido");
	if( apellido.value == ""){
		alert("Ingrese el apellido");
		return false;
	}
	
	var numeroTelefono = document.getElementById("telefono");
	var expresionRegular1 = /^([0-8]+){8}$/;	// validar el numero
	var expresionRegular2  =/\s/;	// no tenga espacios en blanco
	 
	if(numeroTelefono.value==""){
		alert("Ingrese el telefono");
		return false;
	}
	else if(expresionRegular2.test(numeroTelefono.value)){
		alert("Existen espacios en blanco en telefono");  
		return false;
	}
	else if(!expresionRegular1.test(numeroTelefono.value)){
		alert("Numero de telefono incorrecto");
		return false;
	}
	
	var especialidad = document.getElementById("especialidad");
	if( especialidad.value == ""){
		alert("Ingrese la especialidad");
		return false;
	}
	    	
}