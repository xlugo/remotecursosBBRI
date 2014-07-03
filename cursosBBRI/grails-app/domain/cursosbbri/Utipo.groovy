package cursosbbri

class Utipo {

	String descripcion

	static hasMany = [alumnos: Alumno,
	                  contactos: Contacto,
	                  instructors: Instructor]

	static mapping = {
		id generator: "assigned"
	}

	static constraints = {
		descripcion maxSize: 128
	}
}
