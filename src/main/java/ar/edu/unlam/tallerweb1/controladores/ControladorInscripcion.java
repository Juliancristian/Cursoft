package ar.edu.unlam.tallerweb1.controladores;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Catalogo;
import ar.edu.unlam.tallerweb1.modelo.Curso;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioCatalogo;
import ar.edu.unlam.tallerweb1.servicios.ServicioCurso;
import ar.edu.unlam.tallerweb1.servicios.ServicioReserva;
import ar.edu.unlam.tallerweb1.servicios.ServicioUsuario;

@Controller
public class ControladorInscripcion {
	
	@Inject
	private ServicioCatalogo servicioCatalogo; 
	
	@Inject
	private ServicioCurso servicioCurso;
	
	@Inject
	private ServicioReserva servicioReserva;
	
	@Inject
	private ServicioUsuario servicioUsuario;
	

	// LISTA FECHAS INSCRIPCION
	@RequestMapping(value="/inscripcion")
	public ModelAndView listarFechas(@RequestParam("id") Long id, HttpServletRequest request){
	
	  if(request.getSession().getAttribute("idSesion") != null){
		
		Catalogo catalogo = servicioCatalogo.traerUnCatalogo(id);
		List<Curso> listaCursos = servicioCurso.traerListaCursos(catalogo);
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();	
		
		//	 	   CLAVE | VALOR
		modelo.put("cursos", listaCursos);
		return new ModelAndView("inscripcionPaso1", modelo);
	  }
	  else{
		  
		return new ModelAndView("redirect:/home");
	  }
	}
	
	// REGISTRAR INSCRIPCION
	@RequestMapping(value="/registrarInscripcion", method = RequestMethod.GET)
	public ModelAndView registrarInscripcion(@RequestParam("id_usuario") Long id_usuario ,
											 @RequestParam("id_curso") Long id, HttpServletRequest request){
	
	  if(request.getSession().getAttribute("idSesion") != null){		
		
		Curso curso = servicioCurso.traerUnCurso(id);
		Usuario usuario = servicioUsuario.traerUnUsuario(id_usuario);
		
		curso.getUsuarios().add(usuario);
		usuario.getCursos().add(curso);

		
		// REGISTRA RESERVA EN LA BD
		servicioReserva.registrarReserva(usuario);
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();
		
		modelo.put("imagenCurso", curso.getCatalogo().getImagen());
		modelo.put("nombreCurso", curso.getCatalogo().getNombre());
		modelo.put("precioCurso", curso.getCatalogo().getPrecio());
		
		return new ModelAndView("inscripcionPaso2", modelo);
	  }
	  else {
		
		return new ModelAndView("redirect:/home");
		}
	}
	
	// FIN INSCRIPCION
	@RequestMapping(value="/inscripcionPaso3")
	public ModelAndView finalizarInscripcion(HttpServletRequest request){
		
		if(request.getSession().getAttribute("idSesion") != null){
			
			return new ModelAndView("inscripcionPaso3");
		}
		else {
			
			return new ModelAndView("redirect:/home");
		}
	}	
	
	// TABLA RESERVAS
	@RequestMapping("/tabla-reservas")
	public ModelAndView listarReservas(HttpServletRequest request){
		if(request.getSession().getAttribute("idAdmin") != null){
		
			List<Curso> listaCursos = servicioCurso.traerListaCursos();
			
			// VISTA EN PANTALLA
			ModelMap modelo = new ModelMap();
			
			modelo.put("cursos", listaCursos);;
			return new ModelAndView("tabla-reservas", modelo);
		}
		else {
			
			return new ModelAndView("redirect:/home");
		}
	}
	
	
	// CONSULTAR RESERVA
	@RequestMapping("/consultar-reserva")
	public ModelAndView consultarReserva(@RequestParam("id_curso") Long id, HttpServletRequest request){
		
		if(request.getSession().getAttribute("idAdmin") != null){

			Curso curso = servicioCurso.traerUnCurso(id);
		
			
			// VISTA EN PANTALLA
			ModelMap modelo = new ModelMap();
			
			modelo.put("inscriptos", curso.getUsuarios());
			return new ModelAndView("consultar-reserva", modelo);
		}
		else {
			
			return new ModelAndView("redirect:/home");
		}
	}

}
