package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Usuario;

public interface ServicioUsuario {

	// REGISTRAR USUARIO
	void registrarUsuario (Usuario usuario);
	
	// TRAER UNA LISTA USUARIO
	List<Usuario> traerListaUsuarios();
	
	// TRAER UN USUARIO
	Usuario traerUnUsuario (Long id_usuario);
}