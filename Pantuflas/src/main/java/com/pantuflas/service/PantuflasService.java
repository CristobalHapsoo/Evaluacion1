package com.pantuflas.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.pantuflas.models.Pantuflas;
import com.pantuflas.repositories.PantuflasRepository;

@Service
public class PantuflasService {

	@Autowired
	PantuflasRepository pantuflasRepositorty;
	public void guardarPantuflas (@Valid Pantuflas pantuflas) {
		pantuflasRepositorty.save(pantuflas);
		
	}
	
	
	public List<Pantuflas> findAll() {
		return PantuflasRepository.findAll();
		
	}
	
      public Pantuflas buscarId(Long id) {
			return pantuflasRepository.findById(id).get();
	}
	
}
