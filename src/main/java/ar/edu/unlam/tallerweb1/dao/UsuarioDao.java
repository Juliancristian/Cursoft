package ar.edu.unlam.tallerweb1.dao;

import ar.edu.unlam.tallerweb1.modelo.Usuario;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Administrador;

public interface UsuarioDao {
	
	// CONSULTAR USUARIO
	Usuario consultarUsuario(Usuario usuario);
	
	// CONSULTAR ADMINISTRADOR
	Administrador consultarAdministrador(Administrador administrador);
	
	// REGISTRAR USUARIO
	void registrarUsuario(Usuario usuario);
	
	// TRAER UNA LISTA USUARIO
	List<Usuario> traerListaUsuarios();
	
	// TRAER UN USUARIO
	Usuario traerUnUsuario (Long id_usuario);
}