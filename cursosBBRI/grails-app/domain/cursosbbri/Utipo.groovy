package cursosbbri

class Utipo {

	String descripcion

	static hasMany = [alumnos: Alumno,
	                  contactos: Contacto,
	                  instructors: Instructor]

	static constraints = {
		descripcion maxSize: 128, blank : false, unique:true
		alumnos(display:false)
		contactos(display:false)
		instructors(display:false)
	}
	
	String toString(){
		descripcion
	}
}
