package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.UsuarioDao;
import ar.edu.unlam.tallerweb1.modelo.Usuario;



@Service ("servicioUsuario")
@Transactional
public class ServicioUsuarioImpl implements ServicioUsuario {

	@Inject
	private UsuarioDao servicioUsuarioDao;
	
	// REGISTRAR USUARIO
	@Override
	public void registrarUsuario (Usuario usuario) {
		
		servicioUsuarioDao.registrarUsuario(usuario);
	}

	// TRAER UNA LISTA USUARIO
	@Override
	public List<Usuario> traerListaUsuarios() {
		
		return servicioUsuarioDao.traerListaUsuarios();
	}

	// TRAER UN USUARIO
	@Override
	public Usuario traerUnUsuario(Long id_usuario) {

		return servicioUsuarioDao.traerUnUsuario(id_usuario);
	}
	
}