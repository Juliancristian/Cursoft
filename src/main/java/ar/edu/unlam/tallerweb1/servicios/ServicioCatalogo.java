package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Catalogo;

public interface ServicioCatalogo {

	// REGISTRAR CATALOGO
	void registrarCatalogo(Catalogo cat);
	
	// TRAER UNA LISTA DE CATALOGO
	List<Catalogo> traerListaCatalogo();
	
	// TRAER UN CATALOGO
	Catalogo traerUnCatalogo(Long id);
	
	// EDITAR CATALOGO
	void editarCatalogo(Catalogo cat);
}
