package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.ProfesorDao;
import ar.edu.unlam.tallerweb1.modelo.Profesor;



@Service ("servicioProfesor")
@Transactional
public class ServicioProfesorImpl implements ServicioProfesor {
	
	@Inject
	private ProfesorDao servicioProfesorDao;

	// REGISTRAR PROFESOR
	@Override
	public void registrarProfesor(Profesor profesor) {
		
		servicioProfesorDao.registrarProfesor(profesor);
	}
	
	// TRAER UNA LISTA PROFESOR
	@Override
	public List<Profesor> traerListaProfesor() {
		
		return servicioProfesorDao.traerListaProfesor();
	}
	
	// TRAER UN PROFESOR
	@Override
	public Profesor traerUnProfesor(Long id) {
		
		return servicioProfesorDao.traerUnProfesor(id);
	}
		
}
