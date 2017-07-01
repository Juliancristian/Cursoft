package ar.edu.unlam.tallerweb1.servicios;

import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.modelo.Administrador;

public interface ServicioLogin {

	// CONSULTAR USUARIO
	Usuario consultarUsuario(Usuario usuario);
	
	// CONSULTAR ADMINISTRADOR
	Administrador consultarAdministrador(Administrador administrador);
	
}
