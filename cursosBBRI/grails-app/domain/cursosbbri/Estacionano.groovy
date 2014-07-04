package cursosbbri

class Estacionano {

	String descripcion

	static hasMany = [pacademicos: Pacademico]

	static constraints = {
		descripcion maxSize: 45
	}
	
	String toString(){
		descripcion
	}
}
