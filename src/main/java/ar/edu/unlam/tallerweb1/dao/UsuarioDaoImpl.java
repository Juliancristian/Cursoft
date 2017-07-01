package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.modelo.Administrador;

@Service("usuarioDao")
public class UsuarioDaoImpl implements UsuarioDao {

	@Inject
    private SessionFactory sessionFactory; // MANEJA TODA LA PARTE DE TRANSACCIONES

	// CONSULTAR USUARIO
	@Override
	public Usuario consultarUsuario(Usuario usuario) {	

		final Session session = sessionFactory.openSession();
		return (Usuario) session.createCriteria(Usuario.class)
				.add(Restrictions.eq("email", usuario.getEmail()))
				.add(Restrictions.eq("password", usuario.getPassword()))
				.uniqueResult(); // RETORNA UN SOLO RESULTADO
	}

	// CONSULTAR ADMINISTRADOR
	@Override
	public Administrador consultarAdministrador(Administrador administrador) {	

		final Session session = sessionFactory.openSession();
		return (Administrador) session.createCriteria(Administrador.class)
				.add(Restrictions.eq("email", administrador.getEmail()))
				.add(Restrictions.eq("password", administrador.getPassword()))
				.uniqueResult(); // RETORNA UN SOLO RESULTADO
	}
	
	// REGISTRAR USUARIO
	@Override
	public void registrarUsuario(Usuario usuario) {	
		
		sessionFactory.getCurrentSession().save(usuario);
	}
	
	@Inject
	private SessionFactory session; 
	
	// TRAER UNA LISTA USUARIO
	@Override
	public List<Usuario> traerListaUsuarios() {
		
		return( session.getCurrentSession()
				.createCriteria(Usuario.class)
				.setFetchMode("Reservas", FetchMode.JOIN)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY)
				.list());	   
	}

	// TRAER UN USUARIO
	@Override
	public Usuario traerUnUsuario(Long id_usuario) {
		
		return (Usuario) ( session.getCurrentSession()
				.createCriteria(Usuario.class)
				.add(Restrictions.eq("id", id_usuario))
				.uniqueResult());	// RETORNARA DIRECTAMENTE EL UNICO OBJETO QUE HA OBTENIDO LA CONSULTA
	}
	
}
