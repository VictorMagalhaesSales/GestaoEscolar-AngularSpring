package com.escola.api.model;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "notas")
public class Notas implements Serializable{
	
	@EmbeddedId
	private NotasId notasid;

	@NotNull(message= "O campo nota não pode estar vazio!")
	private Float nota;

	public NotasId getNotasid() {
		return notasid;
	}

	public void setNotasid(NotasId notasid) {
		this.notasid = notasid;
	}

	public Float getNota() {
		return nota;
	}

	public void setNota(Float nota) {
		this.nota = nota;
	}

	
	
	
}