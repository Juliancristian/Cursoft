package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.CatalogoDao;
import ar.edu.unlam.tallerweb1.modelo.Catalogo;

@Service ("servicioCatalogo")
@Transactional
public class ServicioCatalogoImpl implements ServicioCatalogo {
	
	@Inject
	private CatalogoDao servicioCatalogoDao;

	// REGISTRAR CATALOGO
	@Override
	public void registrarCatalogo(Catalogo cat) {
		
		servicioCatalogoDao.registrarCatalogo(cat);	
	}
	
	// TRAER UNA LISTA DE CATALOGO
	@Override
	public List<Catalogo> traerListaCatalogo() {

		return servicioCatalogoDao.traerListaCatalogo();
	}

	// TRAER UN CATALOGO
	@Override
	public Catalogo traerUnCatalogo(Long id) {
		
		return servicioCatalogoDao.traerUnCatalogo(id);
	}

	// EDITAR CATALOGO
	@Override
	public void editarCatalogo(Catalogo cat) {
		
		servicioCatalogoDao.editarCatalogo(cat);
		
	}
	

}