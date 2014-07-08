package cursosbbri

class Utitulo {

	String descripcion

	static hasMany = [alumnos: Alumno,
	                  contactos: Contacto,
	                  instructors: Instructor]

	static constraints = {
		descripcion maxSize: 45,  blank : false, unique:true
		alumnos(display:false)
		contactos(display:false)
		instructors(display:false)
	}
	
	String toString(){
		descripcion
	}
}
