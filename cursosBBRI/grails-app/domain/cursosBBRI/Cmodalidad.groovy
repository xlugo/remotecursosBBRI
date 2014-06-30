package cursosBBRI

class Cmodalidad {

	String descripcion

	static hasMany = [cursos: Curso]

	static constraints = {
		descripcion maxSize: 128
	}
}
