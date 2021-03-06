package com.escola.api.model;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "notas")
public class Notas implements Serializable{
	private static final long serialVersionUID = 6304686800122468355L;

	@EmbeddedId
	private NotasId notasid;

	private Float nota1;
	
	private Float nota2;
	
	private Float nota3;
	
	private Float nota4;
	
	private Float media;
	
	

	public Float getMedia() {
		return media;
	}

	public void setMedia(Float media) {
		this.media = media;
	}

	public NotasId getNotasid() {
		return notasid;
	}

	public void setNotasid(NotasId notasid) {
		this.notasid = notasid;
	}

	public Float getNota1() {
		return nota1;
	}

	public void setNota1(Float nota1) {
		this.nota1 = nota1;
	}

	public Float getNota2() {
		return nota2;
	}

	public void setNota2(Float nota2) {
		this.nota2 = nota2;
	}

	public Float getNota3() {
		return nota3;
	}

	public void setNota3(Float nota3) {
		this.nota3 = nota3;
	}

	public Float getNota4() {
		return nota4;
	}

	public void setNota4(Float nota4) {
		this.nota4 = nota4;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Float.floatToIntBits(media);
		result = prime * result + ((nota1 == null) ? 0 : nota1.hashCode());
		result = prime * result + ((nota2 == null) ? 0 : nota2.hashCode());
		result = prime * result + ((nota3 == null) ? 0 : nota3.hashCode());
		result = prime * result + ((nota4 == null) ? 0 : nota4.hashCode());
		result = prime * result + ((notasid == null) ? 0 : notasid.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Notas other = (Notas) obj;
		if (Float.floatToIntBits(media) != Float.floatToIntBits(other.media))
			return false;
		if (nota1 == null) {
			if (other.nota1 != null)
				return false;
		} else if (!nota1.equals(other.nota1))
			return false;
		if (nota2 == null) {
			if (other.nota2 != null)
				return false;
		} else if (!nota2.equals(other.nota2))
			return false;
		if (nota3 == null) {
			if (other.nota3 != null)
				return false;
		} else if (!nota3.equals(other.nota3))
			return false;
		if (nota4 == null) {
			if (other.nota4 != null)
				return false;
		} else if (!nota4.equals(other.nota4))
			return false;
		if (notasid == null) {
			if (other.notasid != null)
				return false;
		} else if (!notasid.equals(other.notasid))
			return false;
		return true;
	}

	
	
	
	
}
