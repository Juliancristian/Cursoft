package ar.edu.unlam.tallerweb1.dao;



import javax.inject.Inject;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import ar.edu.unlam.tallerweb1.modelo.Usuario;

@Service("reservaDao")
public class ReservaDaoImpl implements ReservaDao {

	@Inject
	private SessionFactory session; //MANEJA TODA LA PARTE DE TRANSACCIONES
	
	// REGISTRAR RESERVA
	@Override
	public void registrarReserva(Usuario usuario) {
		
		session.getCurrentSession().update(usuario);		
	}	
}
