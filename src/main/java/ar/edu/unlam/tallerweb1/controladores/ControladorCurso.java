package ar.edu.unlam.tallerweb1.controladores;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Catalogo;
import ar.edu.unlam.tallerweb1.modelo.Curso;
import ar.edu.unlam.tallerweb1.modelo.Profesor;
import ar.edu.unlam.tallerweb1.servicios.ServicioCatalogo;
import ar.edu.unlam.tallerweb1.servicios.ServicioCurso;
import ar.edu.unlam.tallerweb1.servicios.ServicioProfesor;


@Controller
public class ControladorCurso {
	
	@Inject
	private ServicioCurso servicioCurso; 
	
	@Inject
	private ServicioCatalogo servicioCatalogo; 
	
	@Inject
	private ServicioProfesor servicioProfesor; 
	
	// FORM ALTA CURSO
	@RequestMapping("/form-altaCurso")
	public ModelAndView altaCurso(HttpServletRequest request){	
		
		List<Catalogo> listaCatalogo = servicioCatalogo.traerListaCatalogo();
		List<Profesor> listaProfesor = servicioProfesor.traerListaProfesor();
		
		// INSTANCIAMOS
		Curso curso = new Curso();
		ModelMap modelo = new ModelMap();
		
		//	 	        CLAVE | VALOR
		modelo.put("catalogo", listaCatalogo);
		modelo.put("profesores", listaProfesor);
		modelo.put("curso", curso);	// ModelAttribute	
		return new ModelAndView("form-altaCurso", modelo);			
	}	

	// POST ALTA CURSO
	@RequestMapping(path = "/altaCurso", method = RequestMethod.POST)
	public ModelAndView altaCursoOk(@ModelAttribute("curso") Curso curso, HttpServletRequest request){	 
			
		// REGISTRA CURSO EN LA BD
		servicioCurso.registrarCurso(curso);		
		
		Long id = curso.getCatalogo().getId(); 	// GUARDO EL CATALOGO_ID EN UNA VARIABLE
		Catalogo catalogo = servicioCatalogo.traerUnCatalogo(id);		
		Profesor profesor = servicioProfesor.traerUnProfesor(curso.getProfesor().getId());
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();
		
		modelo.put("cod", curso.getCod());
		modelo.put("catalogo_nombre", catalogo.getNombre()); /* * */
		modelo.put("profesor_apellido", profesor.getApellido()); /* * */
		modelo.put("profesor_nombre", profesor.getNombre()); /* * */
		modelo.put("fechaInicio", curso.getFechaInicio());
		modelo.put("horaInicio", curso.getHoraInicio());
		modelo.put("horaFin", curso.getHoraFin());
		return new ModelAndView("curso-ok", modelo);		
	}
	
	// TABLA CURSOS
	@RequestMapping("/tabla-cursos")
	public ModelAndView listarCursos(HttpServletRequest request){
		
		List<Curso> listaCursos = servicioCurso.traerListaCursos();
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();
		
		modelo.put("cursos", listaCursos);		
		return new ModelAndView("tabla-cursos", modelo);
	}
			
	// MOSTRAR CURSO
	@RequestMapping(value="/mostrar-curso")
	public ModelAndView mostrarCur(@RequestParam("id") Long id, HttpServletRequest request){
		
		Curso curso = servicioCurso.traerUnCurso(id);
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();
				
		modelo.put("cod", curso.getCod());
		modelo.put("catalogo_nombre", curso.getCatalogo().getNombre());
		modelo.put("profesor_apellido", curso.getProfesor().getApellido()); 
		modelo.put("profesor_nombre", curso.getProfesor().getNombre()); 
		modelo.put("fechaInicio", curso.getFechaInicio());
		modelo.put("horaInicio", curso.getHoraInicio());
		modelo.put("horaFin", curso.getHoraFin());
		return  new ModelAndView("mostrar-curso", modelo);
	}
	
	// EDITAR CURSO
	@RequestMapping(value="/editar-curso")
	public ModelAndView editarCurso(@RequestParam("id") Long id, HttpServletRequest request){
		
		Curso curso = servicioCurso.traerUnCurso(id);
		List<Catalogo> listaCatalogo = servicioCatalogo.traerListaCatalogo();
		List<Profesor> listaProfesor = servicioProfesor.traerListaProfesor();
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();
		
		modelo.put("curso", curso);	// ModelAttribute
		modelo.put("catalogo", listaCatalogo);   /* LISTA CATALOGO */
		modelo.put("profesores", listaProfesor); /* LISTA PROFESOR */
		
		modelo.put("cod", curso.getCod());
		modelo.put("catalogo_id", curso.getCatalogo().getId());
		modelo.put("catalogo_nombre", curso.getCatalogo().getNombre());
		modelo.put("profesor_id", curso.getProfesor().getId());
		modelo.put("profesor_apellido", curso.getProfesor().getApellido()); 
		modelo.put("profesor_nombre", curso.getProfesor().getNombre()); 
		modelo.put("fechaInicio", curso.getFechaInicio());
		modelo.put("horaInicio", curso.getHoraInicio());
		modelo.put("horaFin", curso.getHoraFin());
		return  new ModelAndView("editar-curso", modelo);
	}
	
	// EDITAR CURSO OK
	@RequestMapping(path = "/editar-cursoOk", method = RequestMethod.POST)
	public ModelAndView editarCursoOk(@ModelAttribute("curso") Curso curso, HttpServletRequest request){	 
			
		// ACTUALIZA CURSO EN LA BD
		servicioCurso.editarCurso(curso);
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();
		
		Long id = curso.getCatalogo().getId(); 	// GUARDO EL CATALOGO_ID EN UNA VARIABLE
		Catalogo catalogo = servicioCatalogo.traerUnCatalogo(id);
		Profesor profesor = servicioProfesor.traerUnProfesor(curso.getProfesor().getId());
			
		modelo.put("cod", curso.getCod());
		modelo.put("catalogo_nombre", catalogo.getNombre()); /* * */
		modelo.put("profesor_apellido", profesor.getApellido()); /* * */
		modelo.put("profesor_nombre", profesor.getNombre()); /* * */
		modelo.put("fechaInicio", curso.getFechaInicio());
		modelo.put("horaInicio", curso.getHoraInicio());
		modelo.put("horaFin", curso.getHoraFin());					
		return new ModelAndView("curso-ok", modelo);	
	}

}