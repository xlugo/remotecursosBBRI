package cursosBBRI

class Utitulo {

	String descripcion

	static hasMany = [alumnos: Alumno,
	                  contactos: Contacto,
	                  instructors: Instructor]

	static constraints = {
		descripcion maxSize: 45
	}
}
