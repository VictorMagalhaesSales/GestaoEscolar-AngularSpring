package com.escola.api.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.escola.api.model.Professor;
import com.escola.api.repository.ProfessorRepository;

@RestController
@RequestMapping("/professor")
public class ProfessorController {

	@Autowired
	private ProfessorRepository professorRepository;
	
	@GetMapping
	public List<Professor> listarProfessores(){
		return this.professorRepository.findAll();
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Professor> listarProfessorPorId(@Valid @PathVariable Long id){
		Optional<Professor> professor = this.professorRepository.findById(id);
		return professor.isPresent() ? ResponseEntity.ok(professor.get()) : ResponseEntity.notFound().build();
	}
	
	@PostMapping
	public ResponseEntity<Professor> salvarProfessor(@Valid @RequestBody Professor professor){
		Professor professorSalvo = this.professorRepository.save(professor);
		return ResponseEntity.status(HttpStatus.CREATED).body(professorSalvo);
	}
	
	@DeleteMapping("/{id}")
	public void deletarAluno(@Valid @PathVariable Long id) {
		this.professorRepository.deleteById(id);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<Professor> atualizarProfessor(@PathVariable Long id, @Valid @RequestBody Professor professorReq){
		Optional<Professor> professorOpt = this.professorRepository.findById(id);		
		BeanUtils.copyProperties(professorReq, professorOpt.get(), "id");
		Professor professorDepois =  professorRepository.save(professorOpt.get());
		
		return ResponseEntity.ok(professorDepois);
	}

}
