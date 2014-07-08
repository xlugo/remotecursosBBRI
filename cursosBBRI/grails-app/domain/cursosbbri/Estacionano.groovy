package cursosbbri

class Estacionano {

	String descripcion

	static hasMany = [pacademicos: Pacademico]

	static constraints = {
		descripcion maxSize: 45, blank : false, unique:true
		pacademicos(display:false)
	}
	
	String toString(){
		descripcion
	}
}
