package cursosbbri

class Salon {

	String descripcion

	static hasMany = [grupos: Grupo]

	static constraints = {
		descripcion maxSize: 45
	}
	
	String toString(){
		descripcion
	}
}
