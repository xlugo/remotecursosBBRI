package cursosbbri


class Pacademico {

	String descripcion
	Date ano
	Estacionano estacionano

	static hasMany = [cursos: Curso]
	static belongsTo = [Estacionano]

	static constraints = {
		ano()
		estacionano()
		descripcion maxSize: 128, blank : false
		cursos(display:false)
	}
	
	
	String toString(){
		
		String g = ano.format('yyyy')
		"$estacionano - $g"
		
	}
}
