package ar.edu.unlam.tallerweb1.servicios;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.dao.CursoDao;
import ar.edu.unlam.tallerweb1.modelo.Catalogo;
import ar.edu.unlam.tallerweb1.modelo.Curso;

@Service ("servicioCurso")
@Transactional
public class ServicioCursolmpl implements ServicioCurso {
	
	@Inject
	private CursoDao servicioCursoDao;
	
	// REGISTRAR CURSO
	@Override
	public void registrarCurso(Curso curso) {
		
		servicioCursoDao.registrarCurso(curso);
	}
	
	// TRAER UNA LISTA DE CURSOS
	@Override
	public List<Curso> traerListaCursos() {
		
		return servicioCursoDao.traerListaCursos();
	}
	
	// TRAER UNA LISTA DE CURSOS
	@Override
	public List<Curso> traerListaCursos(Catalogo cat) {
		
		return servicioCursoDao.traerListaCursos(cat);
	}
	
	// TRAER UN CURSO
	@Override
	public Curso traerUnCurso(Long id) {
		
		return servicioCursoDao.traerUnCurso(id);
	}
	
	// EDITAR CURSO
	@Override
	public void editarCurso(Curso curso) {
		
		servicioCursoDao.editarCurso(curso);
		
	}

	 
}	