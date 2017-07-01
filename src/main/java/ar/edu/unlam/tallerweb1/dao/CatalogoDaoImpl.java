package ar.edu.unlam.tallerweb1.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.modelo.Catalogo;

@Service("catalogoDao")
public class CatalogoDaoImpl implements CatalogoDao {

	@Inject
	private SessionFactory session; //MANEJA TODA LA PARTE DE TRANSACCIONES

	// REGISTRAR CATALOGO
	@Override
	public void registrarCatalogo(Catalogo cat) {
	
		session.getCurrentSession().save(cat);	
	}

	// TRAER UNA LISTA DE CATALOGO
	@Override
	public List<Catalogo> traerListaCatalogo() {
		
		return( session.getCurrentSession()
				.createCriteria(Catalogo.class)
				.list());	
	}

	// TRAER UN CATALOGO
	@Override
	public Catalogo traerUnCatalogo(Long id) {
		
		return (Catalogo) ( session.getCurrentSession()
				.createCriteria(Catalogo.class)
				.add(Restrictions.eq("id", id))
				.uniqueResult());	// RETORNARA DIRECTAMENTE EL UNICO OBJETO QUE HA OBTENIDO LA CONSULTA
	}

	// EDITAR CATALOGO
	@Override
	public void editarCatalogo(Catalogo cat) {
		
		session.getCurrentSession().saveOrUpdate(cat);		
	}

}