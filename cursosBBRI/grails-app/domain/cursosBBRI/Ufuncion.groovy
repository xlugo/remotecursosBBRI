package cursosBBRI

class Ufuncion {

	String descripcion

	static hasMany = [alumnos: Alumno,
	                  contactos: Contacto,
	                  cursos: Curso,
	                  instructors: Instructor]
	static belongsTo = [Curso]

	static constraints = {
		descripcion maxSize: 128
	}
}
