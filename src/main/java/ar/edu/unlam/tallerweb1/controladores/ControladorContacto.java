package ar.edu.unlam.tallerweb1.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.JavaMail;


import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ControladorContacto {
	
	@RequestMapping ("/contacto")
	public ModelAndView formContacto(){
		
		JavaMail msj = new JavaMail();
		ModelMap modelo = new ModelMap();
		
		modelo.put("mensaje", msj);
		return new ModelAndView ("form-contacto", modelo);
	}
	
	@RequestMapping (path = "/contactoMensajeExito", method = RequestMethod.POST)
	public ModelAndView enviarMensaje(@ModelAttribute("mensaje")JavaMail msj){
		
		ModelMap modelo = new ModelMap();
		
		//	DESTINO - ASUNTO - TEXTO
		msj.send("cursoft@educacion.com", msj.getAsuntoMail(), msj.getTextoMail());
		
		modelo.put("nombreMail", msj.getNombreMail());
		return new ModelAndView ("contacto-ok", modelo);
	}	
}