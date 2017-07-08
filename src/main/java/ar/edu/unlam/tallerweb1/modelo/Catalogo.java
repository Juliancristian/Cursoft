package ar.edu.unlam.tallerweb1.modelo;

import java.util.LinkedList;
import java.util.List;


import javax.persistence.*;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.OrderBy;

@Entity
public class Catalogo {

	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private long id;
	private Integer cod;
	private String nombre;
	
	@Column(name = "descripcion", nullable = false, length = 900)
	private String descripcion;
	private String imagen;
	private String duracion;
	private Integer precio;
	
    @OneToMany(mappedBy = "catalogo", fetch = FetchType.LAZY, orphanRemoval = true)
    @Cascade(value = CascadeType.ALL)
    @OrderBy(clause = "nombre")
	private List<Curso> cursos = new LinkedList<Curso>();
	

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
	
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getDescripcion() {
		return descripcion;
	}
	
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	public String getImagen() {
		return imagen;
	}
	
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
	public String getDuracion() {
		return duracion;
	}
	
	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}
	
	public Integer getPrecio() {
		return precio;
	}
	
	public void setPrecio(Integer precio) {
		this.precio = precio;
	}	
	
	public List<Curso> getCursos() {
		return cursos;
	}

	public void setCursos(List<Curso> cursos) {
		this.cursos = cursos;
	}
	
	public void addCurso(Curso curso)
	{
	    this.cursos.add(curso);
	}
	
}
