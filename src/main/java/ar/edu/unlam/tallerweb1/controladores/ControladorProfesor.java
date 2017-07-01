package ar.edu.unlam.tallerweb1.controladores;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Profesor;
import ar.edu.unlam.tallerweb1.servicios.ServicioProfesor;



@Controller
public class ControladorProfesor {

	@Inject
	private ServicioProfesor servicioProfesor;
	
	// FORM ALTA PROFESOR
	@RequestMapping("/form-altaProfesor")
	public String altaProfesor(Profesor profesor, HttpServletRequest request){
		
		return "form-altaProfesor";		
	}
	
	// POST ALTA PROFESOR
	@RequestMapping(path = "/altaProfesor", method = RequestMethod.POST)
	public ModelAndView altaProfesorOk(@ModelAttribute("profesor") Profesor profesor, HttpServletRequest request){	 
		
		// REGISTRA PROFESOR EN LA BD
		servicioProfesor.registrarProfesor(profesor);
				
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();
		
		modelo.put("dni", profesor.getDni());
		modelo.put("nombre", profesor.getNombre());
		modelo.put("apellido", profesor.getApellido());
		modelo.put("telefono", profesor.getTelefono());
		modelo.put("especialidad", profesor.getEspecialidad());		
		return new ModelAndView("profesor-ok", modelo);	
	}
	
	// TABLA PROFESOR
	@RequestMapping("/tabla-profesores")
	public ModelAndView listarProfesores(HttpServletRequest request){
		
		List<Profesor> listaProfesor = servicioProfesor.traerListaProfesor();
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();	

		modelo.put("profesores", listaProfesor);	
		return new ModelAndView("tabla-profesores", modelo);
	}
}
