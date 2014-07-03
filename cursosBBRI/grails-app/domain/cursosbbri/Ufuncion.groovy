package cursosbbri

class Ufuncion {

	String descripcion

	static hasMany = [alumnos: Alumno,
	                  contactos: Contacto,
	                  cursos: Curso,
	                  instructors: Instructor]

	static constraints = {
		descripcion maxSize: 128
	}
}
