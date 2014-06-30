package cursosBBRI

class Academico {

	String descripcion

	static hasMany = [cursos: Curso]

	static constraints = {
		descripcion maxSize: 128
	}
}
