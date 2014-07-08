package cursosbbri

class Ufuncion {

	String descripcion

	static hasMany = [alumnos: Alumno,
	                  contactos: Contacto,
	                  cursos: Curso,
	                  instructors: Instructor]
	static belongsTo = [Curso]

	static constraints = {
		descripcion maxSize: 128, blank : false, unique:true
		alumnos(display:false)
		contactos(display:false)
		cursos(display:false)
		instructors(display:false)
	}
	
	String toString(){
		descripcion
	}
}
