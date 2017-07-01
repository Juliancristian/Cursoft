package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.modelo.Profesor;

@Service("profesorDao")
public class ProfesorDaoImpl implements ProfesorDao {

	@Inject
	private SessionFactory session; 
	
	// REGISTRAR PROFESOR
	@Override
	public void registrarProfesor(Profesor profesor) {
		
		session.getCurrentSession().save(profesor);
	}
	
	// TRAER UNA LISTA PROFESOR
	@Override
	public List<Profesor> traerListaProfesor() {
		
		return( session.getCurrentSession()
				.createCriteria(Profesor.class)
				.list());	 
	}

	// TRAER UN PROFESOR
	@Override
	public Profesor traerUnProfesor(Long id) {
		return (Profesor) ( session.getCurrentSession()
				.createCriteria(Profesor.class)
				.add(Restrictions.eq("id", id))
				.uniqueResult());	// RETORNARA DIRECTAMENTE EL UNICO OBJETO QUE HA OBTENIDO LA CONSULTA	
	}

	
}
