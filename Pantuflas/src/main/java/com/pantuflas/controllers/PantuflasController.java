package com.pantuflas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.generation.models.Pantuflas;
import com.pantuflas.service.PantuflasService;



@Controller
@RequestMapping ("/Pantuflas")
public class PantuflasController {

	public class Pantuflas {

	}

	//inyeccion de dependecia 
	@Autowired
	PantuflasService pantuflasService;
	
	@RequestMapping("")
	public String inicio(@ModelAttribute("pantuflas") Pantuflas pantuflas){
	      return "pantuflas.jsp";
		}
	
	@PostMapping("/guardar")
	public String guardarPantuflas(@Valid@ModelAttribute("pantuflas") Pantuflas pantuflas, 
			BindingResult resultado, Model model){
		
		if(resultado.hasErrors())  {
			model.addAttribute("msgError", "Debes ingesar los datos correctos");
			return "Pantuflas.jsp";
		} else { 
			pantuflasService.guardarPantuflas(pantuflas);
			List<Pantuflas> listaPantuflas = pantuflasService.findAll();
			model.addAttribute("pantuflascapturadas", (listaPantuflas);
			return "disenoTablas.jsp";
			  
		}
	






	}





	
