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

import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioUsuario;

@Controller
public class ControladorUsuario {
	
	@Inject
	private ServicioUsuario servicioUsuario;
	
		// FORM ALTA USUARIO
		@RequestMapping("/form-altaUsuario")
		public String irAForm(Usuario usuario){
			
			return "form-altaUsuario";		
		}
				
		// POST ALTA USUARIO
		@RequestMapping(path = "/altaUsuario", method = RequestMethod.POST)
		public ModelAndView altaUsuario(@ModelAttribute("usuario") Usuario usuario){	 
			
			// REGISTRAR USUARIO EN LA BD
			servicioUsuario.registrarUsuario(usuario);
			
			// VISTA EN PANTALLA 
			ModelMap modelo = new ModelMap();
			
			modelo.put("dni", usuario.getDni());
			modelo.put("nombre", usuario.getNombre());
			modelo.put("apellido", usuario.getApellido());
			modelo.put("telefono", usuario.getTelefono());
			modelo.put("email", usuario.getEmail());
			modelo.put("password", usuario.getPassword());				
			return new ModelAndView("usuario-ok", modelo);	
		}
		
		// TABLA USUARIOS
		@RequestMapping("/tabla-usuarios")
		public ModelAndView listarUsuarios(HttpServletRequest request){
		
			if(request.getSession().getAttribute("idAdmin") != null){
				
				List<Usuario> listaUsuario = servicioUsuario.traerListaUsuarios();
				
				// VISTA EN PANTALLA
				ModelMap modelo = new ModelMap();	
	
				modelo.put("usuarios", listaUsuario);	
				return new ModelAndView("tabla-usuarios", modelo);
			}
			else {
				
				return new ModelAndView("redirect:/home");
			}
		}
						
	}