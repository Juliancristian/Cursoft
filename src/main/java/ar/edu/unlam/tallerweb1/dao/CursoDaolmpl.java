package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.modelo.Catalogo;
import ar.edu.unlam.tallerweb1.modelo.Curso;


@Service("cursoDao")
public class CursoDaolmpl implements CursoDao {

	@Inject
	private SessionFactory session; //MANEJA TODA LA PARTE DE TRANSACCIONES
	
	
	// REGISTRAR CURSO
	@Override
	public void registrarCurso(Curso curso) {
		
		session.getCurrentSession().save(curso);
	}
	
	// TRAER UNA LISTA DE CURSOS
	@Override
	public List<Curso> traerListaCursos() {

		return( session.getCurrentSession()
				.createCriteria(Curso.class)
				.setFetchMode("Reservas", FetchMode.JOIN)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY) //ESTAMOS INDICANDO QUE QUEREMOS QUE NOS DEVUELVA SOLO LAS ENTIDADES DIFERENTES DE LA ENTIDAD RAIZ
				.list());	    
	}
	
	// TRAER UNA LISTA DE CURSOS
	@Override
	public List<Curso> traerListaCursos(Catalogo cat) {

		return( session.getCurrentSession()
				.createCriteria(Curso.class)
				.add(Restrictions.eq("catalogo", cat))
				.setFetchMode("Reservas", FetchMode.JOIN)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY) //ESTAMOS INDICANDO QUE QUEREMOS QUE NOS DEVUELVA SOLO LAS ENTIDADES DIFERENTES DE LA ENTIDAD RAIZ
				.list());	    									
	}
	
	//  TRAER UN CURSO
	@Override
	public Curso traerUnCurso(Long id) {

		return (Curso) ( session.getCurrentSession()
				.createCriteria(Curso.class)
				.add(Restrictions.eq("id", id))
				.uniqueResult());	// RETORNARA DIRECTAMENTE EL UNICO OBJETO QUE HA OBTENIDO LA CONSULTA		
	}

	// EDITAR CURSO
	@Override
	public void editarCurso(Curso curso) {
		
		session.getCurrentSession().saveOrUpdate(curso);		
	}

}