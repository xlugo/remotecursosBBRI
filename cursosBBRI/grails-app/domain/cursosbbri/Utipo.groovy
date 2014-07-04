package cursosbbri

class Utipo {

	String descripcion

	static hasMany = [alumnos: Alumno,
	                  contactos: Contacto,
	                  instructors: Instructor]

	static constraints = {
		descripcion maxSize: 128
	}
	
	String toString(){
		descripcion
	}
}
