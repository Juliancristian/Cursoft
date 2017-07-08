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
import ar.edu.unlam.tallerweb1.servicios.ServicioCatalogo;

@Controller
public class ControladorCatalogo {

	@Inject
	private ServicioCatalogo servicioCatalogo; 
	
	// FORM ALTA CATALOGO
	@RequestMapping("/form-altaCatalogo")
	public ModelAndView altaCatalogo(HttpServletRequest request){
			
		if(request.getSession().getAttribute("idAdmin") != null){
			
			// INSTANCIAMOS
			Catalogo cat = new Catalogo();
			ModelMap modelo = new ModelMap();
	
			// 	 	       CLAVE | VALOR
			modelo.put("catalogo", cat); // ModelAttribute		
			return new ModelAndView("form-altaCatalogo", modelo);
		}
		else {
			
			return new ModelAndView("redirect:/home");
		}
	}
	
	// POST ALTA CATALOGO
	@RequestMapping(path = "/altaCatalogo", method = RequestMethod.POST)
	public ModelAndView altaCatalogoOk(@ModelAttribute("catalogo") Catalogo cat, HttpServletRequest request){	 			
		
		if(request.getSession().getAttribute("idAdmin") != null){
				
			// REGISTRA CATALOGO EN LA BD
			servicioCatalogo.registrarCatalogo(cat);	
				
			// VISTA EN PANTALLA
			ModelMap modelo = new ModelMap();
				
			modelo.put("cod", cat.getCod());
			modelo.put("nombre", cat.getNombre());
			modelo.put("descripcion", cat.getDescripcion());
			modelo.put("imagen", cat.getImagen());
			modelo.put("duracion", cat.getDuracion());
			modelo.put("precio", cat.getPrecio());					
			return new ModelAndView("catalogo-ok", modelo);	
		}
		else {
			
			return new ModelAndView("redirect:/home");
		}
	}
	
	// TABLA CATALOGO
	@RequestMapping("/tabla-catalogo")
	public ModelAndView listarCatalogo(HttpServletRequest request){
	
		if(request.getSession().getAttribute("idAdmin") != null){
				
			List<Catalogo> listaCatalogo = servicioCatalogo.traerListaCatalogo();	
			
			// VISTA EN PANTALLA
			ModelMap modelo = new ModelMap();
			
			modelo.put("catalogo", listaCatalogo);	
			return new ModelAndView("tabla-catalogo", modelo);
		}
		else {
			
			return new ModelAndView("redirect:/home");
		}
	}
	
	// CATALOGO VER MAS
	@RequestMapping(value="/catalogo-verMas")
	public ModelAndView detalleCat(@RequestParam("id") Long id, HttpServletRequest request){
		
		 if(request.getSession().getAttribute("idSesion") != null){
			
		Catalogo catalogo = servicioCatalogo.traerUnCatalogo(id);
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();
			
		modelo.put("id", catalogo.getId());
		modelo.put("nombre", catalogo.getNombre());	
		modelo.put("descripcion", catalogo.getDescripcion());
		modelo.put("imagen", catalogo.getImagen());
		modelo.put("duracion", catalogo.getDuracion());
		modelo.put("precio", catalogo.getPrecio());		
		return new ModelAndView("catalogo-verMas", modelo);
		}
		else {
			
			return new ModelAndView("redirect:/home");
		}
	}
	
	// MOSTRAR CATALOGO
	@RequestMapping(value="/mostrar-catalogo")
	public ModelAndView mostrarCat(@RequestParam("id") Long id, HttpServletRequest request){
		
		if(request.getSession().getAttribute("idAdmin") != null){
			
			Catalogo catalogo = servicioCatalogo.traerUnCatalogo(id);
			
			// VISTA EN PANTALLA
			ModelMap modelo = new ModelMap();
			
			modelo.put("cod", catalogo.getCod());
			modelo.put("nombre", catalogo.getNombre());
			modelo.put("descripcion", catalogo.getDescripcion());
			modelo.put("imagen", catalogo.getImagen());
			modelo.put("duracion", catalogo.getDuracion());
			modelo.put("precio", catalogo.getPrecio());
			return  new ModelAndView("mostrar-catalogo", modelo);
		}
		else {
			
			return new ModelAndView("redirect:/home");
		}
	}
	
	// EDITAR CATALOGO
	@RequestMapping(value="/editar-catalogo")
	public ModelAndView editarCatalogo(@RequestParam("id") Long id, HttpServletRequest request){
		
		if(request.getSession().getAttribute("idAdmin") != null){
			
			Catalogo catalogo = servicioCatalogo.traerUnCatalogo(id);
			
			// VISTA EN PANTALLA
			ModelMap modelo = new ModelMap();
			
			modelo.put("catalogo", catalogo); // ModelAttribute	
			modelo.put("cod", catalogo.getCod());
			modelo.put("nombre", catalogo.getNombre());
			modelo.put("descripcion", catalogo.getDescripcion());
			modelo.put("imagen", catalogo.getImagen());
			modelo.put("duracion", catalogo.getDuracion());
			modelo.put("precio", catalogo.getPrecio());
			return  new ModelAndView("editar-catalogo", modelo);
		}
		else {
			
			return new ModelAndView("redirect:/home");
		}
	}
	
	// EDITAR CATALOGO OK
	@RequestMapping(path = "/editar-catalogoOk", method = RequestMethod.POST)
	public ModelAndView editarCatalogoOk(@ModelAttribute("catalogo") Catalogo cat, HttpServletRequest request){	 
			
		if(request.getSession().getAttribute("idAdmin") != null){
		
			// ACTUALIZA CATALOGO EN LA BD
			servicioCatalogo.editarCatalogo(cat);
			
			// VISTA EN PANTALLA
			ModelMap modelo = new ModelMap();
			
			modelo.put("cod", cat.getCod());
			modelo.put("nombre", cat.getNombre());
			modelo.put("descripcion", cat.getDescripcion());
			modelo.put("imagen", cat.getImagen());
			modelo.put("duracion", cat.getDuracion());
			modelo.put("precio", cat.getPrecio());		
			return new ModelAndView("catalogo-ok", modelo);	
		}
		else {
			
			return new ModelAndView("redirect:/home");
		}
	}
}
