package cursosbbri

class Salon {

	String descripcion

	static hasMany = [grupos: Grupo]

	static constraints = {
		descripcion maxSize: 45, blank : false, unique:true
		grupos(display:false)
		
	}
	
	String toString(){
		descripcion
	}
}
