package cursosbbri

class Ctipo {

	String descripcion

	static hasMany = [cursos: Curso]

	static constraints = {
		descripcion maxSize: 128
	}
	
	String toString(){
		descripcion
	}
}
