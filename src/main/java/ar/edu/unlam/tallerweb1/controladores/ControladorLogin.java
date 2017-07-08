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

import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.modelo.Administrador;
import ar.edu.unlam.tallerweb1.modelo.Catalogo;
import ar.edu.unlam.tallerweb1.servicios.ServicioCatalogo;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;

@Controller
public class ControladorLogin {

	@Inject
	private ServicioLogin servicioLogin;
	
	@Inject
	private ServicioCatalogo servicioCatalogo;
	
	// HOME
	@RequestMapping(path = "/home", method = RequestMethod.GET)
	public ModelAndView irAHome() {

		List<Catalogo> listaCatalogo =  servicioCatalogo.traerListaCatalogo();
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();	
		
		modelo.put("catalogo", listaCatalogo);
		return new ModelAndView("home", modelo); 
	}
	
	// HOME CATALOGO VER MAS
	@RequestMapping(value="/homeCatalogo-verMas")
	public ModelAndView detalleCat(@RequestParam("id") Long id){
		
		Catalogo catalogo = servicioCatalogo.traerUnCatalogo(id);
		
		// VISTA EN PANTALLA
		ModelMap modelo = new ModelMap();
			
		modelo.put("id", catalogo.getId());
		modelo.put("nombre", catalogo.getNombre());	
		modelo.put("descripcion", catalogo.getDescripcion());
		modelo.put("imagen", catalogo.getImagen());
		modelo.put("duracion", catalogo.getDuracion());
		modelo.put("precio", catalogo.getPrecio());		
		return new ModelAndView("homeCatalogo-verMas", modelo);	
	}
	
	// FORM LOGIN
	@RequestMapping("/login")
	public ModelAndView irALogin() {

		// INSTANCIAMOS
		Usuario usuario = new Usuario();
		ModelMap modelo = new ModelMap();
		
		modelo.put("usuario", usuario); // ModelAttribute
		return new ModelAndView("login", modelo);
	}

	// POST VALIDAR LOGIN
	@RequestMapping(path = "/validar-login", method = RequestMethod.POST)
	public ModelAndView validarLogin(@ModelAttribute("usuario") Usuario usuario, Administrador administrador, HttpServletRequest request) {
		
		// USUARIO VALIDADO
		Usuario usuarioValidado = servicioLogin.consultarUsuario(usuario);	
		
		// ADMINISTRADOR VALIDADO
		Administrador administradorValidado = servicioLogin.consultarAdministrador(administrador);	
		
		ModelMap modelo = new ModelMap();
		
		// SI EL USUARIO ES DISTINTO DE NULL, REDIRECCIONA A: 
		if (servicioLogin.consultarUsuario(usuario) != null) {
		
			request.getSession().setAttribute("idSesion", usuarioValidado.getId());
			request.getSession().setAttribute("nombreSesion", usuarioValidado.getNombre());		
			return new ModelAndView("redirect:/home-usuario");
		} 
		
		// SI EL ADMINISTRADOR ES DISTINTO DE NULL, REDIRECCIONA A: 
		else if (servicioLogin.consultarAdministrador(administrador) != null) {
			
			request.getSession().setAttribute("idAdmin", administradorValidado.getId());			
			return new ModelAndView("redirect:/administracion");
		} 
		
		else {
			
			modelo.put("error", "Introduce un Correo Electronico y Contraseña Válido");
		}
		
		return new ModelAndView("login", modelo);
	}
	
	// HOME USUARIO
	@RequestMapping(path = "/home-usuario", method = RequestMethod.GET)
	public ModelAndView irAHomeUsuario(HttpServletRequest request) {
		
		if(request.getSession().getAttribute("idSesion") != null){
			
			List<Catalogo> listaCatalogo =  servicioCatalogo.traerListaCatalogo();
		
			ModelMap modelo = new ModelMap();	
		
			modelo.put("catalogo", listaCatalogo);
			return new ModelAndView("home-usuario", modelo); 		
		}
		
		else{
			
			return new ModelAndView("redirect:/home");
		}
	}

		
	// HOME ADMINISTRACION
	@RequestMapping(path = "/administracion", method = RequestMethod.GET)
	public ModelAndView irAdministracion(HttpServletRequest request) {

		if(request.getSession().getAttribute("idAdmin") != null){
						
			return new ModelAndView("home-administrador");
		}
		
		else{
			
			return new ModelAndView("redirect:/home");
		}			
	}
		
	// CERRAR SESION
	@RequestMapping(path = "/cerrar-sesion", method = RequestMethod.GET)
	public ModelAndView cerrarSesion(HttpServletRequest request) {

		if(request.getSession().getAttribute("idAdmin") != null){
			
			// DESTRUYE LA SESION
			request.getSession().invalidate();
			return new ModelAndView("redirect:/home");
		}
		
		else if(request.getSession().getAttribute("idSesion") != null){
			
			// DESTRUYE LA SESION
			request.getSession().invalidate();
			return new ModelAndView("redirect:/home");
		}
		
		else{	
			
			return new ModelAndView("redirect:/home");
		}			
	}
	
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public ModelAndView inicio() {
		
		return new ModelAndView("redirect:/home");
	}
	
}