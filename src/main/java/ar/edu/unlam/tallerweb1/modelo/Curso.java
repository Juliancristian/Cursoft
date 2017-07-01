package ar.edu.unlam.tallerweb1.modelo;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;


@Entity
public class Curso {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	
	private long id;	
	private Integer cod;
	private Date fechaInicio;
	private String horaInicio;
	private String horaFin;
	
	@ManyToOne
	@JoinColumn(name = "catalogo_id", nullable = true)
	private Catalogo catalogo;
	
	@ManyToOne
	@JoinColumn(name = "profesor_id", nullable = true)
	private Profesor profesor;
	
	@ManyToMany(fetch = FetchType.EAGER, mappedBy="cursos")
	private Set<Usuario> usuarios = new HashSet<Usuario>();
	

	// GETTERS Y SETTERS
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}

	public Integer getCod() {
		return cod;
	}

	public void setCod(Integer cod) {
		this.cod = cod;
	}
	
	public Date getFechaInicio() {
		return fechaInicio;
	}
	
	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}
	

	public String getHoraInicio() {
		return horaInicio;
	}

	public void setHoraInicio(String horaInicio) {
		this.horaInicio = horaInicio;
	}

	public String getHoraFin() {
		return horaFin;
	}

	public void setHoraFin(String horaFin) {
		this.horaFin = horaFin;
	}

	public Catalogo getCatalogo() {
		return catalogo;
	}

	public void setCatalogo(Catalogo catalogo) {
		this.catalogo = catalogo;
	}

	public Profesor getProfesor() {
		return profesor;
	}

	public void setProfesor(Profesor profesor) {
		this.profesor = profesor;
	}

	public Set<Usuario> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(Set<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
}
