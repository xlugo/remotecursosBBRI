package cursosBBRI

class Salon {

	String descripcion

	static hasMany = [grupos: Grupo]

	static constraints = {
		descripcion maxSize: 45
	}
}
