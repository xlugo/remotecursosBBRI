package cursosbbri

class Ctitulo {

	String descripcion

	static hasMany = [cursos: Curso]

	static constraints = {
		descripcion maxSize: 128
	}
}
