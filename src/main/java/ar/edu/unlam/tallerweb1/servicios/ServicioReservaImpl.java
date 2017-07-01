package ar.edu.unlam.tallerweb1.servicios;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.ReservaDao;
import ar.edu.unlam.tallerweb1.modelo.Usuario;

@Service ("servicioReserva")
@Transactional
public class ServicioReservaImpl implements ServicioReserva {

	@Inject
	private ReservaDao servicioReservaDao;
	
	// REGISTRAR RESERVA
	@Override
	public void registrarReserva(Usuario usuario) {

		servicioReservaDao.registrarReserva(usuario);
	}
}
