package cursosbbri

class Pacademico {

	String descripcion
	Date ano
	Estacionano estacionano

	static hasMany = [cursos: Curso]
	static belongsTo = [Estacionano]

	static constraints = {
		descripcion maxSize: 128
	}
	
	String toString(){
		"$estacionano - $ano"
	}
}
