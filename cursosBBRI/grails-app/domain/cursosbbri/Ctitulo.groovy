package cursosbbri

class Ctitulo {

	String descripcion

	static hasMany = [cursos: Curso]

	static constraints = {
		descripcion maxSize: 128, blank : false, unique:true
		cursos(display:false)
	}
	
	String toString(){
		descripcion
	}
}
