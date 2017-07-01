package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Profesor;


public interface ServicioProfesor {

	// REGISTRAR PROFESOR
	void registrarProfesor (Profesor profesor);
	
	// TRAER UNA LISTA PROFESOR
	List<Profesor> traerListaProfesor();
	
	//TRAER UN PROFESOR
	Profesor traerUnProfesor (Long id);
}
